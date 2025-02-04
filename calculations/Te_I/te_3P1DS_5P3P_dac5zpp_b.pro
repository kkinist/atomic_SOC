
 Working directory              : /wrk/irikura/molpro.FdRf2Uq00m/
 Global scratch directory       : /wrk/irikura/molpro.FdRf2Uq00m/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FdRf2Uq00m/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.03 sec
 ***,Te SO-CI
                                                                                 ! add some Rydberg states
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
     closed,7,3
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
  (64 PROC) 64 bit mpp version                                                           DATE: 27-Jan-25          TIME: 09:45:12  
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

     910.688 MB (compressed) written to integral file ( 17.6%)

     Node minimum: 19.137 MB, node maximum: 54.002 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   14108412.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   14108412      RECORD LENGTH: 524288

 Memory used in sort:      14.67 MW

 SORT1 READ   646821870. AND WROTE     2419204. INTEGRALS IN      7 RECORDS. CPU TIME:     4.41 SEC, REAL TIME:     4.57 SEC
 SORT2 READ    68066261. AND WROTE   395255076. INTEGRALS IN   2044 RECORDS. CPU TIME:     0.23 SEC, REAL TIME:     0.30 SEC

 Node minimum:    14103376.  Node maximum:    14140936. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.69       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        10.67     10.34
 REAL TIME  *        12.09 SEC
 DISK USED  *        31.11 MB (local),        2.43 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -266.67494472    -266.67494472     0.00D+00     0.45D-01     0     0       0.09      0.19    start
   2     -266.71783667      -0.04289196     0.27D-02     0.27D-02     1     0       0.10      0.29    diag2
   3     -266.72026872      -0.00243204     0.15D-02     0.58D-03     2     0       0.11      0.40    diag2
   4     -266.72071079      -0.00044207     0.28D-03     0.37D-03     3     0       0.10      0.50    diag2
   5     -266.72073556      -0.00002477     0.61D-04     0.14D-03     4     0       0.10      0.60    diag2
   6     -266.72073571      -0.00000015     0.64D-05     0.22D-04     5     0       0.10      0.70    diag2
   7     -266.72073571      -0.00000000     0.78D-06     0.22D-05     6     0       0.10      0.80    diag2
   8     -266.72073571      -0.00000000     0.54D-07     0.20D-06     0     0       0.10      0.90    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720735711542
  RHF One-electron energy            -459.058938876947
  RHF Two-electron energy             192.338203165405
  RHF Kinetic energy                  102.493374858592
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602321721570

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45861     1  1  s    1.00014
    2.1     2.00000    -2.27825     1  1  d0  -0.25812    1  1  d2-  0.27480    1  1  d1+ -0.35894    1  1  d2+  0.55439
                                    1  1  d1-  0.65055
    3.1     2.00000    -2.27825     1  1  d0   0.39453    1  1  d2-  0.69857    1  1  d1+ -0.49751    1  1  d2+ -0.28570
    4.1     2.00000    -2.27825     1  1  d0   0.78732    1  1  d2+  0.56972
    5.1     2.00000    -2.27825     1  1  d0  -0.28532    1  1  d2-  0.65462    1  1  d1+  0.65181
    6.1     2.00000    -2.27825     1  1  d0   0.27927    1  1  d1+  0.38273    1  1  d2+ -0.50519    1  1  d1-  0.71767
    7.1     2.00000    -1.03500     1  1  s   -0.44110    1  5  s    0.66288    1  6  s    0.50394
    1.2     2.00000    -5.42335     1  1  py  -0.67355    1  1  pz   0.73235
    2.2     2.00000    -5.42335     1  1  px   0.99104
    3.2     2.00000    -5.42335     1  1  py   0.73958    1  1  pz   0.66771
    4.2     1.00000    -0.69090     1  5  py  -0.37404    1  5  pz   0.42236
    5.2     1.00000    -0.69090     1  1  px  -0.32301    1  4  px   0.26189    1  5  px   0.55511    1  6  px   0.31345
    6.2     1.00000    -0.69090     1  1  py  -0.25238    1  5  py   0.43371    1  5  pz   0.36040


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
 CPU TIMES  *        11.57      0.90     10.34
 REAL TIME  *        13.11 SEC
 DISK USED  *        37.02 MB (local),        2.59 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        6 (    0    6)
 Number of external orbitals:     265 (  128  137)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             105   (120 determinants, 120 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             105   (225 determinants, 225 intermediate states)

 State symmetry 3

 Number of active electrons:   4    Spin symmetry=Quintet   Space symmetry=1
 Number of states:             3
 Number of CSFs:              15   (15 determinants, 15 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.690D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.659D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.527D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.667D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.743D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 2 4 5 1 1 3 5   6 2 4 1 5 3 4 2 6 1   6 4 3 2 512141011 7   91315 8 6 4 2 3 5 1
                                       1211 9 715 8131014 3   6 2 4 5 11411 9 8 7  12151013 3 5 4 6 2 1   9151412 7131110 8 3
                                        6 4 5 2242321272618  222528201617191415 9  11 71310 812 1 3 6 4   5 21415 9131110 8 7
                                       12 1 3 6 4 2 5 5 3 4   2 6 1 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.515D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.124D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.506D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.528D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.216D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.515D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.117D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.117D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 3   1 2 7 5 9 6 4 810 3   1 2 810 9 4 7 6 5 3   1 210 6 7 5 8 4 910
                                        8 4 6 5 7 917141216  20191121131518 3 1 2   810 9 4 5 7 6181216  1419201115211317 8 9
                                        6 5 410 7 2 1 3 810   6 7 4 8 91521161312  201819111417 2 1 3 8  10 4 6 5 7 515171321
                                       11191220181416 2 1 3   9 7 4 610 5 9 1 2 3   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06667   0.06667   0.06667   0.06667   0.06667   0.06667
 Weight factors for state symmetry  2:    0.06667   0.06667   0.06667   0.06667   0.06667   0.06667
 Weight factors for state symmetry  3:    0.06667   0.06667   0.06667
 
 Number of orbital rotations:  2147  ( 18 closed/active, 1307 closed/virtual, 0 active/active, 822 active/virtual )
 Total number of variables:    4262
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   12    0   -266.88165716    -266.89114190   -0.00948474    0.11505642 0.00003636 0.00000000  0.15E+00      2.99
   2    7   18    0   -266.89125829    -266.89126281   -0.00000452    0.00267548 0.00000190 0.00000000  0.59E-02      6.25
   3    5   15    0   -266.89126281    -266.89126281   -0.00000000    0.00000204 0.00000001 0.00000000  0.17E-04      9.19

 CONVERGENCE REACHED!  Final gradient:    0.00000011 ( 0.11E-06)
                       Final energy:   -266.89126281
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.997894663103
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.89739902
 One electron energy                          -467.24259087
 Two electron energy                           200.24469620
 Virial ratio                                    3.59479731
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.997894663088
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.89739902
 One electron energy                          -467.24259087
 Two electron energy                           200.24469620
 Virial ratio                                    3.59479731
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.997894663066
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.89739903
 One electron energy                          -467.24259088
 Two electron energy                           200.24469621
 Virial ratio                                    3.59479731
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -266.781411348664
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.27092325
 One electron energy                          -461.41324789
 Two electron energy                           194.63183655
 Virial ratio                                    3.60857537
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -266.781411348648
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.27092325
 One electron energy                          -461.41324790
 Two electron energy                           194.63183655
 Virial ratio                                    3.60857537
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -266.781411348644
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.27092325
 One electron energy                          -461.41324790
 Two electron energy                           194.63183655
 Virial ratio                                    3.60857537
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.953721870695
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87613775
 One electron energy                          -467.15189409
 Two electron energy                           200.19817222
 Virial ratio                                    3.59490420
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.953721870672
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87613775
 One electron energy                          -467.15189410
 Two electron energy                           200.19817223
 Virial ratio                                    3.59490420
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.953721870672
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87613775
 One electron energy                          -467.15189410
 Two electron energy                           200.19817223
 Virial ratio                                    3.59490420
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.953721870604
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87613776
 One electron energy                          -467.15189411
 Two electron energy                           200.19817224
 Virial ratio                                    3.59490420
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.953721870604
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.87613776
 One electron energy                          -467.15189411
 Two electron energy                           200.19817224
 Virial ratio                                    3.59490420
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.888927910615
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.82583275
 One electron energy                          -466.91357151
 Two electron energy                           200.02464360
 Virial ratio                                    3.59554356
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Quintet
 =============================
 !MCSCF STATE 1.1 Quintet Energy              -266.791162272679
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.20556269
 One electron energy                          -461.13128281
 Two electron energy                           194.34012054
 Virial ratio                                    3.61033896
 
 !MCSCF STATE 1.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quintet
 =============================
 !MCSCF STATE 2.1 Quintet Energy              -266.791162272673
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.20556269
 One electron energy                          -461.13128282
 Two electron energy                           194.34012054
 Virial ratio                                    3.61033896
 
 !MCSCF STATE 2.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quintet
 =============================
 !MCSCF STATE 3.1 Quintet Energy              -266.791162272672
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.20556269
 One electron energy                          -461.13128282
 Two electron energy                           194.34012054
 Virial ratio                                    3.61033896
 
 !MCSCF STATE 3.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999981
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999993
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>    -0.000000000000
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999999983
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.999999999979
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.993488278846
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999975589
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.006428333237
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000030
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Quintet|LXLX|1.1 Quintet>    -0.000000000000
 !MCSCF expec      <2.1 Quintet|LXLX|2.1 Quintet>     0.999999999990
 !MCSCF expec      <3.1 Quintet|LXLX|3.1 Quintet>     0.999999999990
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999999993065
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000009060
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999999999991
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.000000479296
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.999999692701
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000014103630
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000515
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999986244212
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999999952
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Quintet|LYLY|1.1 Quintet>     0.999999999990
 !MCSCF expec      <2.1 Quintet|LYLY|2.1 Quintet>     0.000009484977
 !MCSCF expec      <3.1 Quintet|LYLY|3.1 Quintet>     0.999990521170
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000006954
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999990947
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999999999991
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.999999520704
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000000307303
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.006497617524
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999999999
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000023895
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.993585422551
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000018
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000001
 !MCSCF expec      <1.1 Quintet|LZLZ|1.1 Quintet>     0.999999999990
 !MCSCF expec      <2.1 Quintet|LZLZ|2.1 Quintet>     0.999990515013
 !MCSCF expec      <3.1 Quintet|LZLZ|3.1 Quintet>     0.000009478820
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     1.999999999983
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     1.999999999983
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     1.999999999983
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     5.999999999999
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     5.999999999999
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     5.999999999999
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     5.999999999999
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     5.999999999999
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000002
 !MCSCF expec      <1.1 Quintet|L**2|1.1 Quintet>     1.999999999980
 !MCSCF expec      <2.1 Quintet|L**2|2.1 Quintet>     1.999999999980
 !MCSCF expec      <3.1 Quintet|L**2|3.1 Quintet>     1.999999999980
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 4 2 6 1 1 3 5   4 6 2 1 3 5 4 6 2 1   3 5 4 6 210131415 9   812 711 3 5 4 2 6 1
                                       10131415 9 812 711 3   5 4 2 6 113101415 9   812 711 3 5 4 2 6 1  13101415 9 812 711 3
                                        5 4 2 6221618202419  23262817212527131014  15 9 812 711 1 3 5 4   2 613101415 9 812 7
                                       11 1 3 5 4 6 2 3 5 4   6 2 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 1 2 1   2 3 7 9 810 4 6 5 1   2 3 7 9 810 4 6 5 1   2 3 7 9 810 4 6 5 7
                                        9 810 4 6 518201517  14161121131912 1 2 3   9 7 810 4 6 5201817  1514161121131912 7 9
                                        810 4 6 5 1 2 3 9 7  10 8 4 6 52018151714  161121131912 1 2 3 9   710 8 4 6 520181517
                                       14161121131912 1 2 3   7 9 810 4 6 5 1 2 3   1 2 3 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.21376     1  1  s    1.00004
    2.1     2.00000    -2.03389     1  1  d2-  1.00036
    3.1     2.00000    -2.03389     1  1  d2+ -1.00036
    4.1     2.00000    -2.03389     1  1  d1+  1.00036
    5.1     2.00000    -2.03389     1  1  d0   1.00036
    6.1     2.00000    -2.03389     1  1  d1-  1.00036
    7.1     2.00000    -0.81253     1  1  s   -0.43173    1  5  s    0.61242    1  6  s    0.51149
    1.2     2.00000    -5.17887     1  1  px   1.00030
    2.2     2.00000    -5.17887     1  1  py   1.00030
    3.2     2.00000    -5.17887     1  1  pz   1.00030
    4.2     1.19780    -0.28170     1  1  pz  -0.31612    1  5  pz   0.49648    1  6  pz   0.37332
    5.2     1.19780    -0.28170     1  1  py  -0.31612    1  5  py   0.49648    1  6  py   0.37332
    6.2     1.19779    -0.28170     1  1  px  -0.31612    1  5  px   0.49648    1  6  px   0.37332
    7.2     0.13554     0.03655     1 12  pz   0.79847    1 13  pz   0.28299
    8.2     0.13554     0.03655     1 12  px   0.79847    1 13  px   0.28299
    9.2     0.13554     0.03655     1 12  py   0.79847    1 13  py   0.28299
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2aa000         0.99732649     -0.00000436     -0.00008306     -0.00000000     -0.00004622     -0.06676852
 a2a000         0.00008306     -0.00000000      0.99732648     -0.00000000      0.06676862     -0.00004622
 aa2000         0.00000436      0.99732648      0.00000000     -0.06676874     -0.00000000      0.00000000
 aaa0b0         0.00000025      0.05793632     -0.00000000      0.85125864      0.00000000     -0.00000000
 aaab00         0.05793614     -0.00000025     -0.00000482      0.00000000      0.00058933      0.85125844
 aaa00b        -0.00000482      0.00000000     -0.05793623     -0.00000000      0.85125844     -0.00058933
 aba0a0        -0.00000007     -0.01583102      0.00000000     -0.31698619     -0.00000000      0.00000000
 baa0a0        -0.00000007     -0.01583102     -0.00000000     -0.31698619     -0.00000000      0.00000000
 abaa00        -0.01583102      0.00000007      0.00000132     -0.00000000     -0.00021945     -0.31698612
 aaba00        -0.01583102      0.00000007      0.00000132     -0.00000000     -0.00021945     -0.31698612
 aab00a         0.00000132     -0.00000000      0.01583102      0.00000000     -0.31698611      0.00021945
 baa00a         0.00000132     -0.00000000      0.01583102      0.00000000     -0.31698611      0.00021945
 aab0a0        -0.00000011     -0.02627427      0.00000000     -0.21728626     -0.00000000      0.00000000
 baaa00        -0.02627410      0.00000011      0.00000219     -0.00000000     -0.00015043     -0.21728621
 aba00a         0.00000219     -0.00000000      0.02627418      0.00000000     -0.21728621      0.00015043
 a0200a         0.00000000      0.00069845     -0.00000000     -0.07338475     -0.00000000      0.00000000
 2a00a0         0.00069853     -0.00000000     -0.00000006     -0.00000000     -0.00005080     -0.07338475
 0a2a00        -0.00000000     -0.00069836     -0.00000000      0.07338474      0.00000000     -0.00000000
 20a00a        -0.00069845      0.00000000      0.00000006      0.00000000      0.00005080      0.07338474
 a200a0         0.00000006     -0.00000000      0.00069854     -0.00000000      0.07338474     -0.00005080
 02aa00        -0.00000006      0.00000000     -0.00069836      0.00000000     -0.07338473      0.00005080
 0aa200        -0.01430249      0.00000006      0.00000119     -0.00000000     -0.00004583     -0.06619808
 a0a002        -0.00000119      0.00000000     -0.01430249     -0.00000000      0.06619798     -0.00004583
 aa0020        -0.00000006     -0.01430248      0.00000000     -0.06619790     -0.00000000      0.00000000
 
 Energy:     -266.99789466   -266.99789466   -266.99789466   -266.78141135   -266.78141135   -266.78141135
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 202000         0.81438294     -0.00000005     -0.00000168     -0.00152860     -0.00004292      0.57382500
 022000        -0.40586714      0.00000003     -0.00000818      0.70576600      0.01970082      0.57382500
 2ab000         0.00000005      0.70527756      0.00000000      0.00000000      0.00000000      0.00000000
 2ba000        -0.00000005     -0.70527756     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 ba2000        -0.00000147      0.00000000     -0.70527755     -0.00000895     -0.00000249     -0.00000000
 ab2000         0.00000147     -0.00000000      0.70527755      0.00000895      0.00000249      0.00000000
 a2b000         0.00000022     -0.00000000     -0.00000223     -0.01967940      0.70500294      0.00000000
 b2a000        -0.00000022      0.00000000      0.00000223      0.01967940     -0.70500294     -0.00000000
 220000        -0.40851580      0.00000003      0.00000986     -0.70423740     -0.01965790      0.57382501
 
 Energy:     -266.95372187   -266.95372187   -266.95372187   -266.95372187   -266.95372187   -266.88892791
 
 
 CI Coefficients of symmetry 1 (Quintet)
 =======================================
 
 aaa0a0         0.99656929      0.00000000     -0.00000000
 aaaa00        -0.00000000     -0.00306920      0.99656458
 aaa00a        -0.00000000      0.99656457      0.00306920
 0aaaa0        -0.05851511     -0.00000000     -0.00000000
 a0a0aa        -0.05851503      0.00000000      0.00000000
 0aaa0a         0.00000000     -0.05851483     -0.00018021
 a0aa0a         0.00000000      0.00018021     -0.05851475
 aa0aa0        -0.00000000     -0.00018021      0.05851466
 aa00aa        -0.00000000     -0.05851466     -0.00018021
 
 Energy:     -266.79116227   -266.79116227   -266.79116227
 


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
 CPU TIMES  *        21.89     10.31      0.90     10.34
 REAL TIME  *        25.52 SEC
 DISK USED  *        97.43 MB (local),        4.24 GB (total)
 SF USED    *       162.43 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9978947   2.0
    -266.9978947   2.0
    -266.9978947   2.0
    -266.7814113   2.0
    -266.7814113   2.0
    -266.7814113   2.0
    -266.9537219   6.0
    -266.9537219   6.0
    -266.9537219   6.0
    -266.9537219   6.0
    -266.9537219   6.0
    -266.8889279   0.0
    -266.7911623   2.0
    -266.7911623   2.0
    -266.7911623   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 24
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:       75 conf      105 CSFs
 N elec internal:     8890 conf    31395 CSFs
 N-1 el internal:     7880 conf    46290 CSFs
 N-2 el internal:     4646 conf    49101 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99789466
     2      -266.99789466
     3      -266.99789466
     4      -266.78141135
     5      -266.78141135
     6      -266.78141135

 Number of blocks in overlap matrix:   642   Smallest eigenvalue:  0.78D-05
 Number of N-2 electron functions:    1371
 Number of N-1 electron functions:   46290

 Number of internal configurations:                16989
 Number of singly external configurations:       6153108
 Number of doubly external configurations:      24071931
 Total number of contracted configurations:     30242028
 Total number of uncontracted configurations:  867073716

 Diagonal Coupling coefficients finished.               Storage:   8651505 words, CPU-Time:      2.32 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3636461 words, CPU-time:      7.16 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99789466     0.00000000    -1.16039446  0.43D-01  0.13D+00    13.00
    1     2     2     1.00000000     0.00000000  -266.99789466     0.00000000    -1.16059929  0.44D-01  0.13D+00    13.00
    1     3     3     1.00000000     0.00000000  -266.99789466     0.00000000    -1.16043763  0.43D-01  0.13D+00    13.00
    1     4     4     1.00000000     0.00000000  -266.78141135     0.00000000    -1.11903662  0.50D-01  0.11D+00    13.00
    1     5     5     1.00000000     0.00000000  -266.78141135    -0.00000000    -1.11903657  0.50D-01  0.11D+00    13.00
    1     6     6     1.00000000     0.00000000  -266.78141135    -0.00000000    -1.11905431  0.50D-01  0.11D+00    13.00
    2     1     1     1.10980390    -0.93294626  -267.93084092    -0.93294626    -0.03003749  0.49D-02  0.18D-02   297.52
    2     2     2     1.10986566    -0.93289665  -267.93079131    -0.93289665    -0.03007321  0.49D-02  0.18D-02   297.52
    2     3     3     1.10997636    -0.93279089  -267.93068555    -0.93279089    -0.03018097  0.50D-02  0.18D-02   297.52
    2     4     4     1.10835321    -0.91449279  -267.69590414    -0.91449279    -0.02643151  0.45D-02  0.17D-02   297.52
    2     5     5     1.10835142    -0.91449230  -267.69590365    -0.91449230    -0.02643289  0.45D-02  0.17D-02   297.52
    2     6     6     1.10836344    -0.91449083  -267.69590217    -0.91449083    -0.02643214  0.45D-02  0.17D-02   297.52
    3     1     1     1.09390381    -0.96143817  -267.95933284    -0.02849192    -0.00044903  0.66D-04  0.35D-04   580.31
    3     2     2     1.09391551    -0.96143720  -267.95933186    -0.02854055    -0.00045038  0.66D-04  0.35D-04   580.31
    3     3     3     1.09390117    -0.96143660  -267.95933127    -0.02864572    -0.00045067  0.66D-04  0.35D-04   580.31
    3     4     4     1.09063845    -0.94006858  -267.72147993    -0.02557579    -0.00036516  0.52D-04  0.33D-04   580.31
    3     5     5     1.09063812    -0.94006794  -267.72147929    -0.02557564    -0.00036576  0.52D-04  0.33D-04   580.31
    3     6     6     1.09063810    -0.94006785  -267.72147920    -0.02557702    -0.00036585  0.52D-04  0.33D-04   580.31
    4     1     1     1.09318910    -0.96189707  -267.95979173    -0.00045889    -0.00001250  0.16D-05  0.12D-05   862.17
    4     2     2     1.09318997    -0.96189706  -267.95979173    -0.00045986    -0.00001250  0.16D-05  0.12D-05   862.17
    4     3     3     1.09319255    -0.96189701  -267.95979167    -0.00046040    -0.00001256  0.16D-05  0.12D-05   862.17
    4     4     4     1.08992966    -0.94045502  -267.72186637    -0.00038644    -0.00001192  0.26D-05  0.13D-05   862.17
    4     5     5     1.08992929    -0.94045495  -267.72186630    -0.00038701    -0.00001198  0.26D-05  0.13D-05   862.17
    4     6     6     1.08992932    -0.94045495  -267.72186629    -0.00038710    -0.00001198  0.26D-05  0.13D-05   862.17
    5     1     1     1.09321544    -0.96191030  -267.95980497    -0.00001324    -0.00000036  0.20D-07  0.52D-07  1145.68
    5     2     2     1.09321503    -0.96191030  -267.95980497    -0.00001324    -0.00000036  0.20D-07  0.52D-07  1145.68
    5     3     3     1.09321506    -0.96191030  -267.95980497    -0.00001330    -0.00000036  0.20D-07  0.52D-07  1145.68
    5     4     4     1.08995360    -0.94046834  -267.72187969    -0.00001332    -0.00000062  0.42D-07  0.11D-06  1145.68
    5     5     5     1.08995337    -0.94046834  -267.72187969    -0.00001339    -0.00000063  0.42D-07  0.11D-06  1145.68
    5     6     6     1.08995335    -0.94046834  -267.72187969    -0.00001339    -0.00000063  0.42D-07  0.12D-06  1145.68
    6     1     1     1.09321193    -0.96191069  -267.95980535    -0.00000039    -0.00000001  0.86D-09  0.21D-08  1429.69
    6     2     2     1.09321189    -0.96191069  -267.95980535    -0.00000039    -0.00000001  0.87D-09  0.21D-08  1429.69
    6     3     3     1.09321188    -0.96191069  -267.95980535    -0.00000039    -0.00000001  0.87D-09  0.21D-08  1429.69
    6     4     4     1.08996062    -0.94046906  -267.72188040    -0.00000071    -0.00000004  0.39D-08  0.53D-08  1429.69
    6     5     5     1.08996059    -0.94046906  -267.72188040    -0.00000072    -0.00000004  0.39D-08  0.54D-08  1429.69
    6     6     6     1.08996059    -0.94046906  -267.72188040    -0.00000072    -0.00000004  0.39D-08  0.54D-08  1429.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   5.6%
 P   0.4%  25.1%  29.5%

 Initialization:   0.7%
 Other:           38.0%

 Total CPU:     1429.7 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222//000           0.9514013  -0.0864079  -0.0111368  -0.0353105  -0.0000013  -0.0006461
 2222222222/2/000           0.0206907   0.1054632   0.9493178  -0.0000012   0.0353165  -0.0000065
 2222222222//2000           0.0846301   0.9456035  -0.1068951   0.0006461  -0.0000065  -0.0353107
 2222222222///00\          -0.0007697  -0.0039230  -0.0353127  -0.0000328   0.9427129  -0.0001730
 2222222222///\00           0.0353901  -0.0032142  -0.0004143   0.9425551   0.0000359   0.0172456
 2222222222///0\0           0.0031481   0.0351746  -0.0039763  -0.0172456   0.0001724   0.9425551
 2222222222//\0/0          -0.0005714  -0.0063844   0.0007217  -0.0014143   0.0000141   0.0773004
 222222222202//00           0.0000309   0.0001576   0.0014191   0.0000024  -0.0699034   0.0000128
 2222222222/200/0          -0.0000309  -0.0001576  -0.0014189  -0.0000024   0.0699034  -0.0000128
 22222222222/00/0          -0.0014220   0.0001291   0.0000166  -0.0698917  -0.0000027  -0.0012788
 222222222220/00/           0.0014221  -0.0001292  -0.0000166   0.0698917   0.0000027   0.0012788
 22222222220/2/00           0.0001265   0.0014135  -0.0001598  -0.0012788   0.0000128   0.0698917
 2222222222/0200/          -0.0001265  -0.0014134   0.0001598   0.0012788  -0.0000128  -0.0698917
 2222222222/\/00/           0.0001210   0.0006167   0.0055508  -0.0000023   0.0669553  -0.0000123
 2222222222/\//00           0.0055629  -0.0005052  -0.0000651  -0.0669441  -0.0000026  -0.0012249
 2222222222/0/002          -0.0002493  -0.0012707  -0.0114382  -0.0000023   0.0657788  -0.0000121
 22222222220//200          -0.0114633   0.0010411   0.0001342  -0.0657679  -0.0000025  -0.0012033
 2222222222//0020          -0.0010197  -0.0113935   0.0012880   0.0012033  -0.0000120  -0.0657677
 22222222220///0\           0.0002137   0.0010890   0.0098026   0.0000019  -0.0543408   0.0000100
 2222222222//00/\           0.0002137   0.0010890   0.0098026   0.0000019  -0.0543406   0.0000100
 22222222220///\0          -0.0008739  -0.0097643   0.0011038   0.0009941  -0.0000099  -0.0543317

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.951955    0.084679    0.020703   -0.002476    0.000605   -0.027836
 2          -0.086458    0.946154    0.105525   -0.027666    0.003086    0.002528
 3          -0.011143   -0.106957    0.949870    0.003127    0.027775    0.000326
 4           0.028735   -0.000526    0.000001   -0.017514   -0.000033    0.957203
 5           0.000001    0.000005   -0.028740    0.000175    0.957363    0.000037
 6           0.000526    0.028735    0.000005    0.957203   -0.000176    0.017514

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956346    0.000000    0.000000    0.000370   -0.000008    0.000040
 2           0.000000    0.956346    0.000000   -0.000040   -0.000041    0.000368
 3           0.000000    0.000000    0.956346   -0.000004   -0.000370   -0.000042
 4           0.000370   -0.000040   -0.000004    0.957794   -0.000000   -0.000000
 5          -0.000008   -0.000041   -0.000370   -0.000000    0.957794   -0.000000
 6           0.000040    0.000368   -0.000042   -0.000000   -0.000000    0.957794


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95195491 (fixed)   0.95637408 (relaxed)   0.95634644 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015001   -0.00031501   -0.87141993
 Singles      0.01183549   -0.04521119   -0.05176552
 Pairs        0.08139043    0.03594577   -0.03872524
 Total        1.09337593   -0.00958043   -0.96191069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99770477
 Nuclear energy                         0.00000000
 Kinetic energy                       103.71882110
 One electron energy                 -466.64411919
 Two electron energy                  198.68431384
 Virial quotient                       -2.58352151
 Correlation energy                    -0.96210059
 !MRCI STATE 1.1 Energy              -267.959805354299

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04964239 (Davidson, fixed reference)
 Cluster corrected energies          -268.04958158 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04964239 (Davidson, rotated reference)

 Cluster corrected energies          -268.04815640 (Pople, fixed reference)
 Cluster corrected energies          -268.04809176 (Pople, relaxed reference)
 Cluster corrected energies          -268.04815640 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.94615375 (fixed)   0.95637410 (relaxed)   0.95634646 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015001   -0.00031501   -0.83555815
 Singles      0.01183547   -0.04521120   -0.05176551
 Pairs        0.08139040   -0.00326466   -0.07458703
 Total        1.09337589   -0.04879087   -0.96191069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99770477
 Nuclear energy                         0.00000000
 Kinetic energy                       103.71881746
 One electron energy                 -466.64411636
 Two electron energy                  198.68431101
 Virial quotient                       -2.58352160
 Correlation energy                    -0.96210059
 !MRCI STATE 2.1 Energy              -267.959805354066

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04964235 (Davidson, fixed reference)
 Cluster corrected energies          -268.04958154 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04964235 (Davidson, rotated reference)

 Cluster corrected energies          -268.04815636 (Pople, fixed reference)
 Cluster corrected energies          -268.04809172 (Pople, relaxed reference)
 Cluster corrected energies          -268.04815636 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.94987017 (fixed)   0.95637411 (relaxed)   0.95634646 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015001   -0.00031501   -0.83815916
 Singles      0.01183549   -0.04521121   -0.05176553
 Pairs        0.08139037   -0.00042077   -0.07198600
 Total        1.09337588   -0.04594699   -0.96191069
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99770477
 Nuclear energy                         0.00000000
 Kinetic energy                       103.71881673
 One electron energy                 -466.64411676
 Two electron energy                  198.68431141
 Virial quotient                       -2.58352162
 Correlation energy                    -0.96210059
 !MRCI STATE 3.1 Energy              -267.959805354023

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.04964234 (Davidson, fixed reference)
 Cluster corrected energies          -268.04958153 (Davidson, relaxed reference)
 Cluster corrected energies          -268.04964234 (Davidson, rotated reference)

 Cluster corrected energies          -268.04815635 (Pople, fixed reference)
 Cluster corrected energies          -268.04809171 (Pople, relaxed reference)
 Cluster corrected energies          -268.04815635 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95720263 (fixed)   0.95779964 (relaxed)   0.95779404 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010346   -0.00034123   -0.00081309
 Singles      0.01656247   -0.05744171   -0.06698872
 Pairs        0.07340746   -0.88223831   -0.87266724
 Total        1.09007339   -0.94002125   -0.94046906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.78160124
 Nuclear energy                         0.00000000
 Kinetic energy                       103.37730756
 One electron energy                 -461.38270480
 Two electron energy                  193.66082440
 Virial quotient                       -2.58975482
 Correlation energy                    -0.94027916
 !MRCI STATE 4.1 Energy              -267.721880404495

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.80657454 (Davidson, fixed reference)
 Cluster corrected energies          -267.80656256 (Davidson, relaxed reference)
 Cluster corrected energies          -267.80657454 (Davidson, rotated reference)

 Cluster corrected energies          -267.80493589 (Pople, fixed reference)
 Cluster corrected energies          -267.80492323 (Pople, relaxed reference)
 Cluster corrected energies          -267.80493589 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95736283 (fixed)   0.95779965 (relaxed)   0.95779406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010346   -0.00034123   -0.81012075
 Singles      0.01656246   -0.05744166   -0.06698870
 Pairs        0.07340744   -0.00003364   -0.06335960
 Total        1.09007336   -0.05781653   -0.94046906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.78160124
 Nuclear energy                         0.00000000
 Kinetic energy                       103.37730458
 One electron energy                 -461.38270442
 Two electron energy                  193.66082401
 Virial quotient                       -2.58975489
 Correlation energy                    -0.94027916
 !MRCI STATE 5.1 Energy              -267.721880404028

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.80657450 (Davidson, fixed reference)
 Cluster corrected energies          -267.80656253 (Davidson, relaxed reference)
 Cluster corrected energies          -267.80657450 (Davidson, rotated reference)

 Cluster corrected energies          -267.80493585 (Pople, fixed reference)
 Cluster corrected energies          -267.80492320 (Pople, relaxed reference)
 Cluster corrected energies          -267.80493585 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95720263 (fixed)   0.95779965 (relaxed)   0.95779406 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010346   -0.00034123   -0.79534342
 Singles      0.01656246   -0.05744166   -0.06698870
 Pairs        0.07340744   -0.01614203   -0.07813693
 Total        1.09007335   -0.07392491   -0.94046906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.78160124
 Nuclear energy                         0.00000000
 Kinetic energy                       103.37730377
 One electron energy                 -461.38270374
 Two electron energy                  193.66082334
 Virial quotient                       -2.58975491
 Correlation energy                    -0.94027916
 !MRCI STATE 6.1 Energy              -267.721880404009

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.80657450 (Davidson, fixed reference)
 Cluster corrected energies          -267.80656253 (Davidson, relaxed reference)
 Cluster corrected energies          -267.80657450 (Davidson, rotated reference)

 Cluster corrected energies          -267.80493585 (Pople, fixed reference)
 Cluster corrected energies          -267.80492320 (Pople, relaxed reference)
 Cluster corrected energies          -267.80493585 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1395.98       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1541.69   1519.79     10.31      0.90     10.34
 REAL TIME  *      1633.84 SEC
 DISK USED  *         1.46 GB (local),       42.33 GB (total)
 SF USED    *        13.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -268.04964239  AU                              
 SETTING HLSDIAG(2)     =      -268.04964235  AU                              
 SETTING HLSDIAG(3)     =      -268.04964234  AU                              
 SETTING HLSDIAG(4)     =      -267.80657454  AU                              
 SETTING HLSDIAG(5)     =      -267.80657450  AU                              
 SETTING HLSDIAG(6)     =      -267.80657450  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:       90 conf      105 CSFs
 N elec internal:     9105 conf    20335 CSFs
 N-1 el internal:     7880 conf    26950 CSFs
 N-2 el internal:     5471 conf    28036 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95372187
     2      -266.95372187
     3      -266.95372187
     4      -266.95372187
     5      -266.95372187
     6      -266.88892791

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2021D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2220D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2019D-06

 Number of blocks in overlap matrix:   685   Smallest eigenvalue:  0.20D-06
 Number of N-2 electron functions:    1216
 Number of N-1 electron functions:   26950

 Number of internal configurations:                11221
 Number of singly external configurations:       3583664
 Number of doubly external configurations:      21355120
 Total number of contracted configurations:     24950005
 Total number of uncontracted configurations:  495476254

 Diagonal Coupling coefficients finished.               Storage:   6797469 words, CPU-Time:      1.36 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3484737 words, CPU-time:      6.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95372187     0.00000000    -1.16967167  0.48D-01  0.13D+00     9.95
    1     2     2     1.00000000     0.00000000  -266.95372187     0.00000000    -1.17184488  0.48D-01  0.13D+00     9.95
    1     3     3     1.00000000     0.00000000  -266.95372187    -0.00000000    -1.17187885  0.48D-01  0.13D+00     9.95
    1     4     4     1.00000000     0.00000000  -266.95372187     0.00000000    -1.17189586  0.48D-01  0.13D+00     9.95
    1     5     5     1.00000000     0.00000000  -266.95372187     0.00000000    -1.17101773  0.48D-01  0.13D+00     9.95
    1     6     6     1.00000000     0.00000000  -266.88892791     0.00000000    -1.15830402  0.23D-01  0.14D+00     9.95
    2     1     1     1.11314211    -0.93953045  -267.89325232    -0.93953045    -0.03039053  0.49D-02  0.18D-02   212.68
    2     2     2     1.11316168    -0.93925093  -267.89297280    -0.93925093    -0.03074466  0.49D-02  0.19D-02   212.68
    2     3     3     1.11345183    -0.93907354  -267.89279541    -0.93907354    -0.03090137  0.49D-02  0.19D-02   212.68
    2     4     4     1.11352259    -0.93892140  -267.89264327    -0.93892140    -0.03108211  0.50D-02  0.19D-02   212.68
    2     5     5     1.11343850    -0.93886903  -267.89259090    -0.93886903    -0.03117652  0.51D-02  0.19D-02   212.68
    2     6     6     1.10473223    -0.94754502  -267.83647293    -0.94754502    -0.02926699  0.46D-02  0.20D-02   212.68
    3     1     1     1.09705570    -0.96812038  -267.92184225    -0.02858993    -0.00051393  0.79D-04  0.41D-04   416.16
    3     2     2     1.09705986    -0.96811673  -267.92183860    -0.02886579    -0.00051707  0.78D-04  0.42D-04   416.16
    3     3     3     1.09705533    -0.96811084  -267.92183271    -0.02903729    -0.00052325  0.79D-04  0.43D-04   416.16
    3     4     4     1.09700976    -0.96810831  -267.92183018    -0.02918691    -0.00052633  0.81D-04  0.42D-04   416.16
    3     5     5     1.09705486    -0.96810463  -267.92182650    -0.02923560    -0.00053019  0.80D-04  0.43D-04   416.16
    3     6     6     1.09353708    -0.97496253  -267.86389044    -0.02741751    -0.00045956  0.41D-04  0.51D-04   416.16
    4     1     1     1.09603876    -0.96863865  -267.92236052    -0.00051827    -0.00001784  0.25D-05  0.18D-05   618.51
    4     2     2     1.09604577    -0.96863852  -267.92236039    -0.00052179    -0.00001796  0.25D-05  0.17D-05   618.51
    4     3     3     1.09603742    -0.96863837  -267.92236024    -0.00052753    -0.00001807  0.25D-05  0.18D-05   618.51
    4     4     4     1.09603786    -0.96863804  -267.92235991    -0.00052973    -0.00001837  0.26D-05  0.18D-05   618.51
    4     5     5     1.09603439    -0.96863776  -267.92235963    -0.00053313    -0.00001861  0.26D-05  0.18D-05   618.51
    4     6     6     1.09316599    -0.97542180  -267.86434971    -0.00045928    -0.00001555  0.22D-05  0.17D-05   618.51
    5     1     1     1.09598263    -0.96865757  -267.92237944    -0.00001892    -0.00000057  0.41D-07  0.76D-07   821.88
    5     2     2     1.09598031    -0.96865756  -267.92237943    -0.00001904    -0.00000057  0.40D-07  0.79D-07   821.88
    5     3     3     1.09597980    -0.96865754  -267.92237941    -0.00001917    -0.00000058  0.41D-07  0.82D-07   821.88
    5     4     4     1.09597960    -0.96865753  -267.92237940    -0.00001949    -0.00000060  0.42D-07  0.84D-07   821.88
    5     5     5     1.09597898    -0.96865753  -267.92237940    -0.00001977    -0.00000060  0.42D-07  0.83D-07   821.88
    5     6     6     1.09328940    -0.97543849  -267.86436640    -0.00001668    -0.00000054  0.33D-07  0.86D-07   821.88
    6     1     1     1.09596447    -0.96865818  -267.92238005    -0.00000060    -0.00000002  0.11D-08  0.31D-08  1025.64
    6     2     2     1.09596384    -0.96865817  -267.92238004    -0.00000061    -0.00000002  0.11D-08  0.32D-08  1025.64
    6     3     3     1.09596354    -0.96865817  -267.92238004    -0.00000063    -0.00000002  0.12D-08  0.35D-08  1025.64
    6     4     4     1.09596390    -0.96865816  -267.92238003    -0.00000063    -0.00000002  0.11D-08  0.33D-08  1025.64
    6     5     5     1.09596356    -0.96865816  -267.92238003    -0.00000064    -0.00000002  0.11D-08  0.34D-08  1025.64
    6     6     6     1.09329565    -0.97543909  -267.86436700    -0.00000060    -0.00000003  0.17D-08  0.45D-08  1025.64


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   4.4%
 P   0.5%  20.2%  28.0%

 Initialization:   0.7%
 Other:           45.4%

 Total CPU:     1025.6 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2\000          -0.0002991  -0.0009797   0.0028369  -0.0000343   0.9533290  -0.0000000
 2222222222/\2000          -0.0012610   0.9515528   0.0582156  -0.0009669   0.0008042   0.0000000
 22222222222/\000          -0.0003581  -0.0582134   0.9515503   0.0000261  -0.0028915   0.0000000
 2222222222202000           0.7783899   0.0010073   0.0003554  -0.0021806   0.0002441   0.5481928
 2222222222220000          -0.3873072   0.0001823  -0.0001534   0.6751962  -0.0000966   0.5481937
 2222222222022000          -0.3910818  -0.0011896  -0.0002019  -0.6730152  -0.0001476   0.5481931

  Internal coefficients greater than 0.0500000
 =============================================
 2222220222222000           0.0000000  -0.0000000   0.0000000  -0.0000002   0.0000000  -0.0678141

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955033   -0.000359   -0.001263   -0.000300   -0.004048    0.000000
 2           0.001235   -0.058318    0.953259   -0.000981   -0.000974    0.000000
 3           0.000436    0.953256    0.058320    0.002842   -0.000035    0.000000
 4          -0.004050    0.000026   -0.000969   -0.000034   -0.955034    0.000000
 5           0.000299   -0.002897    0.000806    0.955038   -0.000037    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.953820

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.955042   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.955043   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.955043   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.955043   -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.955043   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.953820


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95503286 (fixed)   0.95510837 (relaxed)   0.95504239 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036441   -0.00074809   -0.83843620
 Singles      0.01387588   -0.04977959   -0.05766640
 Pairs        0.08212355   -0.00000044   -0.07255558
 Total        1.09636385   -0.05052812   -0.96865818
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95372187
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69485249
 One electron energy                 -466.49973016
 Two electron energy                  198.57735012
 Virial quotient                       -2.58375776
 Correlation energy                    -0.96865818
 !MRCI STATE 1.1 Energy              -267.922380046991

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01572367 (Davidson, fixed reference)
 Cluster corrected energies          -268.01557695 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01572367 (Davidson, rotated reference)

 Cluster corrected energies          -268.01533824 (Pople, fixed reference)
 Cluster corrected energies          -268.01517965 (Pople, relaxed reference)
 Cluster corrected energies          -268.01533824 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95325866 (fixed)   0.95510864 (relaxed)   0.95504266 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036442   -0.00074809   -0.83843679
 Singles      0.01387594   -0.04977991   -0.05766649
 Pairs        0.08212287   -0.00000000   -0.07255489
 Total        1.09636323   -0.05052800   -0.96865817
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95372187
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69481803
 One electron energy                 -466.49971114
 Two electron energy                  198.57733110
 Virial quotient                       -2.58375862
 Correlation energy                    -0.96865817
 !MRCI STATE 2.1 Energy              -267.922380039854

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01572307 (Davidson, fixed reference)
 Cluster corrected energies          -268.01557633 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01572307 (Davidson, rotated reference)

 Cluster corrected energies          -268.01533759 (Pople, fixed reference)
 Cluster corrected energies          -268.01517898 (Pople, relaxed reference)
 Cluster corrected energies          -268.01533759 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95325612 (fixed)   0.95510877 (relaxed)   0.95504278 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036442   -0.00074809   -0.83843720
 Singles      0.01387588   -0.04977970   -0.05766637
 Pairs        0.08212263   -0.00000000   -0.07255459
 Total        1.09636293   -0.05052779   -0.96865817
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95372187
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69482600
 One electron energy                 -466.49973378
 Two electron energy                  198.57735374
 Virial quotient                       -2.58375842
 Correlation energy                    -0.96865817
 !MRCI STATE 3.1 Energy              -267.922380039443

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01572278 (Davidson, fixed reference)
 Cluster corrected energies          -268.01557604 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01572278 (Davidson, rotated reference)

 Cluster corrected energies          -268.01533728 (Pople, fixed reference)
 Cluster corrected energies          -268.01517867 (Pople, relaxed reference)
 Cluster corrected energies          -268.01533728 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95503355 (fixed)   0.95510861 (relaxed)   0.95504263 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036442   -0.00074809   -0.83843674
 Singles      0.01387580   -0.04977961   -0.05766629
 Pairs        0.08212308   -0.00000028   -0.07255514
 Total        1.09636330   -0.05052799   -0.96865816
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95372187
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69484559
 One electron energy                 -466.49973589
 Two electron energy                  198.57735586
 Virial quotient                       -2.58375793
 Correlation energy                    -0.96865816
 !MRCI STATE 4.1 Energy              -267.922380033737

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01572313 (Davidson, fixed reference)
 Cluster corrected energies          -268.01557639 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01572313 (Davidson, rotated reference)

 Cluster corrected energies          -268.01533765 (Pople, fixed reference)
 Cluster corrected energies          -268.01517905 (Pople, relaxed reference)
 Cluster corrected energies          -268.01533765 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95503800 (fixed)   0.95510876 (relaxed)   0.95504278 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00036442   -0.00074809   -0.83843719
 Singles      0.01387580   -0.04977969   -0.05766632
 Pairs        0.08212273   -0.00000000   -0.07255466
 Total        1.09636295   -0.05052779   -0.96865816
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95372187
 Nuclear energy                         0.00000000
 Kinetic energy                       103.69481867
 One electron energy                 -466.49972029
 Two electron energy                  198.57734026
 Virial quotient                       -2.58375860
 Correlation energy                    -0.96865816
 !MRCI STATE 5.1 Energy              -267.922380033517

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -268.01572279 (Davidson, fixed reference)
 Cluster corrected energies          -268.01557605 (Davidson, relaxed reference)
 Cluster corrected energies          -268.01572279 (Davidson, rotated reference)

 Cluster corrected energies          -268.01533729 (Pople, fixed reference)
 Cluster corrected energies          -268.01517869 (Pople, relaxed reference)
 Cluster corrected energies          -268.01533729 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95381960 (fixed)   0.95392001 (relaxed)   0.95381960 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00537919   -0.01061208   -0.01442823
 Singles      0.00639047   -0.03377482   -0.03640053
 Pairs        0.08740703   -0.93105218   -0.92461033
 Total        1.09917670   -0.97543908   -0.97543909
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.88892791
 Nuclear energy                         0.00000000
 Kinetic energy                       103.66188529
 One electron energy                 -466.28377649
 Two electron energy                  198.41940949
 Virial quotient                       -2.58401983
 Correlation energy                    -0.97543909
 !MRCI STATE 6.1 Energy              -267.864366999379

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.96110783 (Davidson, fixed reference)
 Cluster corrected energies          -267.96088214 (Davidson, relaxed reference)
 Cluster corrected energies          -267.96110783 (Davidson, rotated reference)

 Cluster corrected energies          -267.96094932 (Pople, fixed reference)
 Cluster corrected energies          -267.96070418 (Pople, relaxed reference)
 Cluster corrected energies          -267.96094932 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     2542.55       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2625.87   1084.16   1519.79     10.31      0.90     10.34
 REAL TIME  *      2788.86 SEC
 DISK USED  *         2.58 GB (local),       73.68 GB (total)
 SF USED    *        13.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =      -268.01572367  AU                              
 SETTING HLSDIAG(8)     =      -268.01572307  AU                              
 SETTING HLSDIAG(9)     =      -268.01572278  AU                              
 SETTING HLSDIAG(10)    =      -268.01572313  AU                              
 SETTING HLSDIAG(11)    =      -268.01572279  AU                              
 SETTING HLSDIAG(12)    =      -267.96110783  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Quintet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:    75

 Reference space:       15 conf       15 CSFs
 N elec internal:     6430 conf    12965 CSFs
 N-1 el internal:     4400 conf    21170 CSFs
 N-2 el internal:     1040 conf    15265 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        6 (   0   6 )
 Number of external orbitals:     265 ( 128 137 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  12

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.79116227
     2      -266.79116227
     3      -266.79116227

 Number of blocks in overlap matrix:   446   Smallest eigenvalue:  0.46D-05
 Number of N-2 electron functions:     675
 Number of N-1 electron functions:   21170

 Number of internal configurations:                 6875
 Number of singly external configurations:       2812405
 Number of doubly external configurations:      11850816
 Total number of contracted configurations:     14670096
 Total number of uncontracted configurations:  270278590

 Diagonal Coupling coefficients finished.               Storage:   3432080 words, CPU-Time:      0.19 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3272790 words, CPU-time:      3.33 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.79116227     0.00000000    -1.11136854  0.46D-01  0.11D+00     4.17
    1     2     2     1.00000000     0.00000000  -266.79116227     0.00000000    -1.11209693  0.46D-01  0.11D+00     4.17
    1     3     3     1.00000000     0.00000000  -266.79116227     0.00000000    -1.11282392  0.46D-01  0.11D+00     4.17
    2     1     1     1.10624372    -0.91392201  -267.70508428    -0.91392201    -0.02446149  0.34D-02  0.17D-02    51.83
    2     2     2     1.10656468    -0.91363960  -267.70480188    -0.91363960    -0.02475749  0.34D-02  0.18D-02    51.83
    2     3     3     1.10689165    -0.91336813  -267.70453040    -0.91336813    -0.02503672  0.34D-02  0.19D-02    51.83
    3     1     1     1.08979334    -0.93777646  -267.72893873    -0.02385445    -0.00027134  0.38D-04  0.20D-04    99.58
    3     2     2     1.08977861    -0.93777625  -267.72893852    -0.02413664    -0.00027265  0.36D-04  0.21D-04    99.58
    3     3     3     1.08978634    -0.93777589  -267.72893817    -0.02440777    -0.00027247  0.37D-04  0.20D-04    99.58
    4     1     1     1.08926178    -0.93806068  -267.72922295    -0.00028423    -0.00000526  0.70D-06  0.42D-06   147.13
    4     2     2     1.08926154    -0.93806050  -267.72922277    -0.00028425    -0.00000540  0.73D-06  0.44D-06   147.13
    4     3     3     1.08926146    -0.93806038  -267.72922265    -0.00028449    -0.00000549  0.75D-06  0.45D-06   147.13
    5     1     1     1.08928405    -0.93806627  -267.72922854    -0.00000558    -0.00000012  0.68D-08  0.14D-07   194.94
    5     2     2     1.08928355    -0.93806625  -267.72922853    -0.00000575    -0.00000013  0.70D-08  0.17D-07   194.94
    5     3     3     1.08928314    -0.93806624  -267.72922852    -0.00000586    -0.00000014  0.70D-08  0.19D-07   194.94
    6     1     1     1.08928750    -0.93806640  -267.72922867    -0.00000013    -0.00000000  0.35D-09  0.48D-09   242.80
    6     2     2     1.08928746    -0.93806640  -267.72922867    -0.00000014    -0.00000000  0.36D-09  0.61D-09   242.80
    6     3     3     1.08928742    -0.93806640  -267.72922867    -0.00000015    -0.00000000  0.38D-09  0.67D-09   242.80


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.6%   9.0%
 P   0.6%  22.6%  14.6%

 Initialization:   1.5%
 Other:           50.6%

 Total CPU:      242.8 seconds
 =====================================



 Wavefunction saved on  5502.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///0/0          -0.0000000  -0.0000000   0.9545995
 2222222222///00/          -0.0000000   0.9545995   0.0000000
 2222222222////00           0.9545995   0.0000000   0.0000000
 22222222220////0          -0.0000000  -0.0000000  -0.0579395
 2222222222/0/0//          -0.0000000  -0.0000000  -0.0579394
 22222222220///0/           0.0000000  -0.0579394   0.0000000
 2222222222//00//          -0.0000000  -0.0579394   0.0000000
 2222222222/0//0/          -0.0579393  -0.0000000   0.0000000
 2222222222//0//0           0.0579393  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.958107
 2          -0.000000    0.958107    0.000000
 3           0.958107   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958107   -0.000000    0.000000
 2          -0.000000    0.958107   -0.000000
 3           0.000000   -0.000000    0.958107


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95810683 (fixed)   0.95811053 (relaxed)   0.95810683 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006817   -0.00024525   -0.00028384
 Singles      0.01644403   -0.05745902   -0.06690705
 Pairs        0.07284956   -0.88036213   -0.87087550
 Total        1.08936176   -0.93806640   -0.93806640
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.79116227
 Nuclear energy                         0.00000000
 Kinetic energy                       103.35224528
 One electron energy                 -461.25635132
 Two electron energy                  193.52712265
 Virial quotient                       -2.59045392
 Correlation energy                    -0.93806640
 !MRCI STATE 1.1 Energy              -267.729228670204

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81305594 (Davidson, fixed reference)
 Cluster corrected energies          -267.81304804 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81305594 (Davidson, rotated reference)

 Cluster corrected energies          -267.81041434 (Pople, fixed reference)
 Cluster corrected energies          -267.81040612 (Pople, relaxed reference)
 Cluster corrected energies          -267.81041434 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95810685 (fixed)   0.95811055 (relaxed)   0.95810685 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006817   -0.00024525   -0.80842865
 Singles      0.01644433   -0.05745913   -0.06690728
 Pairs        0.07284921    0.00000000   -0.06273047
 Total        1.08936172   -0.05770438   -0.93806640
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.79116227
 Nuclear energy                         0.00000000
 Kinetic energy                       103.35223792
 One electron energy                 -461.25635642
 Two electron energy                  193.52712775
 Virial quotient                       -2.59045410
 Correlation energy                    -0.93806640
 !MRCI STATE 2.1 Energy              -267.729228669534

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81305589 (Davidson, fixed reference)
 Cluster corrected energies          -267.81304800 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81305589 (Davidson, rotated reference)

 Cluster corrected energies          -267.81041429 (Pople, fixed reference)
 Cluster corrected energies          -267.81040607 (Pople, relaxed reference)
 Cluster corrected energies          -267.81041429 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95810687 (fixed)   0.95811057 (relaxed)   0.95810687 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006817   -0.00024525   -0.80842857
 Singles      0.01644458   -0.05745925   -0.06690749
 Pairs        0.07284893    0.00000000   -0.06273034
 Total        1.08936168   -0.05770450   -0.93806640
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.79116227
 Nuclear energy                         0.00000000
 Kinetic energy                       103.35223356
 One electron energy                 -461.25636139
 Two electron energy                  193.52713272
 Virial quotient                       -2.59045421
 Correlation energy                    -0.93806640
 !MRCI STATE 3.1 Energy              -267.729228669146

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81305585 (Davidson, fixed reference)
 Cluster corrected energies          -267.81304796 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81305585 (Davidson, rotated reference)

 Cluster corrected energies          -267.81041425 (Pople, fixed reference)
 Cluster corrected energies          -267.81040603 (Pople, relaxed reference)
 Cluster corrected energies          -267.81041425 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       94.20       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       8     2879.85       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2875.82    249.94   1084.16   1519.79     10.31      0.90     10.34
 REAL TIME  *      3057.52 SEC
 DISK USED  *         2.90 GB (local),       82.90 GB (total)
 SF USED    *        13.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =      -267.81305594  AU                              
 SETTING HLSDIAG(14)    =      -267.81305589  AU                              
 SETTING HLSDIAG(15)    =      -267.81305585  AU                              


         HLSDIAG
    -268.0496424
    -268.0496424
    -268.0496423
    -267.8065745
    -267.8065745
    -267.8065745
    -268.0157237
    -268.0157231
    -268.0157228
    -268.0157231
    -268.0157228
    -267.9611078
    -267.8130559
    -267.8130559
    -267.8130559
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   6

 Original energies:   -267.959805   -267.959805   -267.959805   -267.721880   -267.721880   -267.721880
 Replaced energies:   -268.049642   -268.049642   -268.049642   -267.806575   -267.806575   -267.806575

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.922380   -267.922380   -267.922380   -267.922380   -267.922380   -267.864367
 Replaced energies:   -268.015724   -268.015723   -268.015723   -268.015723   -268.015723   -267.961108

 Wavefunction restored from record  5502.2  Symmetry=1  S= 2.0  NSTATE=   3

 Original energies:   -267.729229   -267.729229   -267.729229
 Replaced energies:   -267.813056   -267.813056   -267.813056



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -268.04964239

 Wigner-Eckart theorem used for 40 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1373.33    -152.57      26.88
                           -0.00      22.78    -176.78       0.14     -31.54      -7.70      -0.00     154.64    1367.96       5.44

    2   2.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00       0.00   -1373.33       0.00      29.93     248.72
                          -22.78       0.00   -1946.44       0.73    -352.40     -39.23    -154.64      -0.00    -122.43      27.79

    3   3.1  1.0  1.0       0.00       0.00       0.01       0.00       0.00       0.00     152.57     -29.93       0.00     -28.22
                          176.78    1946.44       0.00       6.47      39.77    -353.72   -1367.96     122.43      -0.00     250.11

    4   4.1  1.0  1.0       0.00       0.00       0.00   53347.23       0.00       0.00     -26.88    -248.72      28.22      -0.00
                           -0.14      -0.73      -6.47      -0.00      -0.06       0.00      -5.44     -27.79    -250.11      -0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   53347.23       0.00       0.05      -0.01       0.00      -0.00
                           31.54     352.40     -39.77       0.06      -0.00      -3.37    -250.70      22.77       2.93       2.38

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   53347.24     250.25     -27.32      -2.42      -2.38
                            7.70      39.23     353.72      -0.00       3.37       0.00      -0.05      -0.51      -4.58      -0.00

    7   1.1  1.0  0.0       0.00   -1373.33     152.57     -26.88       0.05     250.25       0.00       0.00       0.00       0.00
                            0.00     154.64    1367.96       5.44     250.70       0.05       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0    1373.33       0.00     -29.93    -248.72      -0.01     -27.32       0.00       0.01       0.00       0.00
                         -154.64       0.00    -122.43      27.79     -22.77       0.51      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0    -152.57      29.93       0.00      28.22       0.00      -2.42       0.00       0.00       0.01       0.00
                        -1367.96     122.43       0.00     250.11      -2.93       4.58      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0      26.88     248.72     -28.22      -0.00      -0.00      -2.38       0.00       0.00       0.00   53347.23
                           -5.44     -27.79    -250.11       0.00      -2.38       0.00      -0.00      -0.00      -0.00       0.00

   11   5.1  1.0  0.0      -0.05       0.01      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                         -250.70      22.77       2.93       2.38       0.00       0.04      -0.00      -0.00      -0.00      -0.00

   12   6.1  1.0  0.0    -250.25      27.32       2.42       2.38       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.05      -0.51      -4.58      -0.00      -0.04      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1373.33     152.57     -26.88
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     154.64    1367.96       5.44

   14   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    1373.33       0.00     -29.93    -248.72
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -154.64       0.00    -122.43      27.79

   15   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -152.57      29.93       0.00      28.22
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1367.96     122.43       0.00     250.11

   16   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      26.88     248.72     -28.22      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -5.44     -27.79    -250.11       0.00

   17   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.05       0.01      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -250.70      22.77       2.93       2.38

   18   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -250.25      27.32       2.42       2.38
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.05      -0.51      -4.58      -0.00

   19   1.1  0.0  0.0     -32.87    -176.73   -1594.09       0.04      38.58       0.01       0.00       0.00       0.00       0.00
                           70.28     790.14     -88.79      -0.36      -0.01      19.19   -1135.09     103.41      10.64     -27.41

   20   2.1  0.0  0.0   -1373.45     209.15       4.61     -33.38       0.05       1.43       0.00       0.00       0.00       0.00
                            0.38       9.12      84.35      -0.03      -2.04      -0.01      39.20     218.79    1948.45      -0.08

   21   3.1  0.0  0.0    -207.34   -1364.91     155.41      -1.43       0.01     -33.38       0.00       0.00       0.00       0.00
                          -25.89    -153.14   -1377.97       0.10      33.35       0.00       1.49       7.51     119.88      -0.01

   22   4.1  0.0  0.0       1.50       0.33       4.46       0.03      -0.11      -0.00       0.00       0.00       0.00       0.00
                         -123.32   -1377.28     155.66       0.61      -0.01     -33.46   -1953.42     177.26      20.88     -47.17

   23   5.1  0.0  0.0      -0.80       4.22      -0.96      -0.03       0.01       0.10       0.00       0.00       0.00       0.00
                         1383.60    -124.99     -12.03      33.40      -0.10       0.62    -174.43   -1944.41     221.48       0.85

   24   6.1  0.0  0.0      49.77     253.68    2283.49       0.00     -89.66       0.02       0.00       0.00       0.00       0.00
                          203.57    2274.54    -257.12      -1.64       0.02      89.64   -3236.43     293.94      37.88    -126.78

   25   1.1  2.0  2.0      51.18     571.82     -64.64       2.46      -0.02    -134.56       0.00       0.00       0.00       0.00
                           12.51      63.76     573.94      -0.00     133.06      -0.02      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          575.28     -52.25      -6.73    -133.07      -0.01      -2.43      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0    -575.44      52.26       6.74     133.14       0.01       2.44       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      36.19     404.34     -45.71       1.74
                            0.00       0.00      -0.00       0.00      -0.00       0.00       8.85      45.09     405.83      -0.00

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           51.19     571.97     -64.66       2.46      -0.02    -134.66     406.79     -36.95      -4.76     -94.10

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -406.90      36.95       4.76      94.14
                           12.51      63.78     574.15      -0.00     133.15      -0.02       0.00      -0.00       0.00       0.00

   31   1.1  2.0  0.0      20.89     233.44     -26.39       1.01      -0.01     -54.93       0.00       0.00       0.00       0.00
                           -5.11     -26.03    -234.31       0.00     -54.32       0.01       0.00       0.00      -0.00       0.00

   32   2.1  2.0  0.0      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -234.86      21.33       2.75      54.33       0.00       0.99      59.11     660.45     -74.66       2.84

   33   3.1  2.0  0.0    -234.92      21.34       2.75      54.35       0.00       0.99       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      14.45      73.65     662.97      -0.01

   34   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      36.19     404.34     -45.71       1.74
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -8.85     -45.09    -405.83       0.00

   35   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -406.79      36.95       4.76      94.10

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -406.90      36.95       4.76      94.14
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      -0.05    -250.25       0.00       0.00       0.00       0.00       0.00       0.00     -32.87   -1373.45
                          250.70       0.05       0.00       0.00       0.00       0.00       0.00       0.00     -70.28      -0.38

    2   2.1  1.0  1.0       0.01      27.32       0.00       0.00       0.00       0.00       0.00       0.00    -176.73     209.15
                          -22.77       0.51       0.00       0.00       0.00       0.00       0.00       0.00    -790.14      -9.12

    3   3.1  1.0  1.0      -0.00       2.42       0.00       0.00       0.00       0.00       0.00       0.00   -1594.09       4.61
                           -2.93       4.58       0.00       0.00       0.00       0.00       0.00       0.00      88.79     -84.35

    4   4.1  1.0  1.0       0.00       2.38       0.00       0.00       0.00       0.00       0.00       0.00       0.04     -33.38
                           -2.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.36       0.03

    5   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      38.58       0.05
                           -0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.01       2.04

    6   6.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       1.43
                           -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -19.19       0.01

    7   1.1  1.0  0.0       0.00       0.00       0.00    1373.33    -152.57      26.88      -0.05    -250.25       0.00       0.00
                            0.00       0.00      -0.00     154.64    1367.96       5.44     250.70       0.05    1135.09     -39.20

    8   2.1  1.0  0.0       0.00       0.00   -1373.33       0.00      29.93     248.72       0.01      27.32       0.00       0.00
                            0.00       0.00    -154.64      -0.00    -122.43      27.79     -22.77       0.51    -103.41    -218.79

    9   3.1  1.0  0.0       0.00       0.00     152.57     -29.93       0.00     -28.22      -0.00       2.42       0.00       0.00
                            0.00       0.00   -1367.96     122.43      -0.00     250.11      -2.93       4.58     -10.64   -1948.45

   10   4.1  1.0  0.0       0.00       0.00     -26.88    -248.72      28.22      -0.00       0.00       2.38       0.00       0.00
                            0.00       0.00      -5.44     -27.79    -250.11      -0.00      -2.38       0.00      27.41       0.08

   11   5.1  1.0  0.0   53347.23       0.00       0.05      -0.01       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00    -250.70      22.77       2.93       2.38      -0.00       0.04      -0.06      47.17

   12   6.1  1.0  0.0       0.00   53347.24     250.25     -27.32      -2.42      -2.38      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.05      -0.51      -4.58      -0.00      -0.04       0.00       0.49      -0.06

   13   1.1  1.0 -1.0       0.05     250.25       0.00       0.00       0.00       0.00       0.00       0.00     -32.87   -1373.45
                          250.70       0.05       0.00     -22.78     176.78      -0.14      31.54       7.70      70.28       0.38

   14   2.1  1.0 -1.0      -0.01     -27.32       0.00       0.01       0.00       0.00       0.00       0.00    -176.73     209.15
                          -22.77       0.51      22.78      -0.00    1946.44      -0.73     352.40      39.23     790.14       9.12

   15   3.1  1.0 -1.0       0.00      -2.42       0.00       0.00       0.01       0.00       0.00       0.00   -1594.09       4.61
                           -2.93       4.58    -176.78   -1946.44      -0.00      -6.47     -39.77     353.72     -88.79      84.35

   16   4.1  1.0 -1.0      -0.00      -2.38       0.00       0.00       0.00   53347.23       0.00       0.00       0.04     -33.38
                           -2.38       0.00       0.14       0.73       6.47       0.00       0.06      -0.00      -0.36      -0.03

   17   5.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00   53347.23       0.00      38.58       0.05
                            0.00       0.04     -31.54    -352.40      39.77      -0.06       0.00       3.37      -0.01      -2.04

   18   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   53347.24       0.01       1.43
                           -0.04      -0.00      -7.70     -39.23    -353.72       0.00      -3.37      -0.00      19.19      -0.01

   19   1.1  0.0  0.0       0.00       0.00     -32.87    -176.73   -1594.09       0.04      38.58       0.01    7444.30       0.00
                            0.06      -0.49     -70.28    -790.14      88.79       0.36       0.01     -19.19       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00   -1373.45     209.15       4.61     -33.38       0.05       1.43       0.00    7444.43
                          -47.17       0.06      -0.38      -9.12     -84.35       0.03       2.04       0.01      -0.00       0.00

   21   3.1  0.0  0.0       0.00       0.00    -207.34   -1364.91     155.41      -1.43       0.01     -33.38       0.00       0.00
                           -2.89      -0.14      25.89     153.14    1377.97      -0.10     -33.35      -0.00      -0.00      -0.00

   22   4.1  0.0  0.0       0.00       0.00       1.50       0.33       4.46       0.03      -0.11      -0.00       0.00       0.00
                            0.05      -0.86     123.32    1377.28    -155.66      -0.61       0.01      33.46      -0.00      -0.00

   23   5.1  0.0  0.0       0.00       0.00      -0.80       4.22      -0.96      -0.03       0.01       0.10       0.00       0.00
                           -0.05     -47.24   -1383.60     124.99      12.03     -33.40       0.10      -0.62      -0.00      -0.00

   24   6.1  0.0  0.0       0.00       0.00      49.77     253.68    2283.49       0.00     -89.66       0.02       0.00       0.00
                           -0.00      -2.32    -203.57   -2274.54     257.12       1.64      -0.02     -89.64      -0.00      -0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0      -0.02     -95.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           94.09      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   2.1  2.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.72      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   3.1  2.0  1.0       0.00       1.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00      20.89     233.44     -26.39       1.01      -0.01     -54.93       0.00       0.00
                           -0.00       0.00       5.11      26.03     234.31      -0.00      54.32      -0.01      -0.00      -0.00

   32   2.1  2.0  0.0       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.03    -155.49     234.86     -21.33      -2.75     -54.33      -0.00      -0.99      -0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00    -234.92      21.34       2.75      54.35       0.00       0.99       0.00       0.00
                          153.75      -0.03       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   34   1.1  2.0 -1.0      -0.02     -95.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -94.09       0.02       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   35   2.1  2.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.72      51.19     571.97     -64.66       2.46      -0.02    -134.66      -0.00      -0.00

   36   3.1  2.0 -1.0       0.00       1.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      12.51      63.78     574.15      -0.00     133.15      -0.02      -0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00      51.18     571.82     -64.64       2.46      -0.02    -134.56       0.00       0.00
                           -0.00      -0.00     -12.51     -63.76    -573.94       0.00    -133.06       0.02      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00    -575.28      52.25       6.73     133.07       0.01       2.43      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00    -575.44      52.26       6.74     133.14       0.01       2.44       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0    -207.34       1.50      -0.80      49.77      51.18      -0.00    -575.44       0.00       0.00       0.00
                           25.89     123.32   -1383.60    -203.57     -12.51    -575.28      -0.00      -0.00     -51.19     -12.51

    2   2.1  1.0  1.0   -1364.91       0.33       4.22     253.68     571.82       0.00      52.26       0.00       0.00       0.00
                          153.14    1377.28     124.99   -2274.54     -63.76      52.25       0.00      -0.00    -571.97     -63.78

    3   3.1  1.0  1.0     155.41       4.46      -0.96    2283.49     -64.64      -0.00       6.74       0.00       0.00       0.00
                         1377.97    -155.66      12.03     257.12    -573.94       6.73      -0.00       0.00      64.66    -574.15

    4   4.1  1.0  1.0      -1.43       0.03      -0.03       0.00       2.46      -0.00     133.14       0.00       0.00       0.00
                           -0.10      -0.61     -33.40       1.64       0.00     133.07      -0.00      -0.00      -2.46       0.00

    5   5.1  1.0  1.0       0.01      -0.11       0.01     -89.66      -0.02      -0.00       0.01       0.00       0.00       0.00
                          -33.35       0.01       0.10      -0.02    -133.06       0.01       0.00       0.00       0.02    -133.15

    6   6.1  1.0  1.0     -33.38      -0.00       0.10       0.02    -134.56       0.00       2.44       0.00       0.00       0.00
                           -0.00      33.46      -0.62     -89.64       0.02       2.43       0.00      -0.00     134.66       0.02

    7   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      36.19      -0.00    -406.90
                           -1.49    1953.42     174.43    3236.43       0.00       0.00       0.00      -8.85    -406.79      -0.00

    8   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     404.34       0.00      36.95
                           -7.51    -177.26    1944.41    -293.94       0.00       0.00       0.00     -45.09      36.95       0.00

    9   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -45.71      -0.00       4.76
                         -119.88     -20.88    -221.48     -37.88       0.00       0.00       0.00    -405.83       4.76      -0.00

   10   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.74      -0.00      94.14
                            0.01      47.17      -0.85     126.78       0.00       0.00       0.00       0.00      94.10      -0.00

   11   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02      -0.00       0.00
                            2.89      -0.05       0.05       0.00       0.00       0.00       0.00     -94.09       0.00       0.00

   12   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -95.15       0.00       1.72
                            0.14       0.86      47.24       2.32       0.00       0.00       0.00       0.02       1.72       0.00

   13   1.1  1.0 -1.0    -207.34       1.50      -0.80      49.77       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.89    -123.32    1383.60     203.57       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0 -1.0   -1364.91       0.33       4.22     253.68       0.00       0.00       0.00       0.00       0.00       0.00
                         -153.14   -1377.28    -124.99    2274.54       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0 -1.0     155.41       4.46      -0.96    2283.49       0.00       0.00       0.00       0.00       0.00       0.00
                        -1377.97     155.66     -12.03    -257.12       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0 -1.0      -1.43       0.03      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.10       0.61      33.40      -1.64       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0 -1.0       0.01      -0.11       0.01     -89.66       0.00       0.00       0.00       0.00       0.00       0.00
                           33.35      -0.01      -0.10       0.02       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0 -1.0     -33.38      -0.00       0.10       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -33.46       0.62      89.64       0.00       0.00       0.00       0.00       0.00       0.00

   19   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   3.1  0.0  0.0    7444.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   4.1  0.0  0.0       0.00    7444.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   5.1  0.0  0.0       0.00       0.00    7444.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   6.1  0.0  0.0       0.00       0.00       0.00   19431.09       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00   51924.72       0.00       0.00      -0.00       0.00     -58.90
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      58.90       0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00   51924.73       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     117.79     -58.90       0.00      -0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00   51924.74      58.90       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    -117.79       0.00      -0.00       0.00      -0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00      58.90   51924.72       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      58.90       0.00      -0.00       0.00      -0.00

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00   51924.73       0.00
                           -0.00      -0.00      -0.00      -0.00     -58.90      -0.00      -0.00      -0.00       0.00      58.90

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00     -58.90      -0.00      -0.00       0.00       0.00   51924.74
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -58.90       0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      72.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      72.13       0.00

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -72.13      -0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -72.13      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

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

    1   1.1  1.0  1.0      20.89      -0.00    -234.92       0.00       0.00       0.00       0.00       0.00       0.00
                            5.11     234.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0     233.44       0.00      21.34       0.00       0.00       0.00       0.00       0.00       0.00
                           26.03     -21.33      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     -26.39      -0.00       2.75       0.00       0.00       0.00       0.00       0.00       0.00
                          234.31      -2.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0       1.01      -0.00      54.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -54.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           54.32      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0     -54.93       0.00       0.99       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.99      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0       0.00       0.00       0.00      36.19      -0.00    -406.90       0.00       0.00       0.00
                           -0.00     -59.11     -14.45       8.85     406.79       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00       0.00     404.34       0.00      36.95       0.00       0.00       0.00
                           -0.00    -660.45     -73.65      45.09     -36.95      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00       0.00     -45.71      -0.00       4.76       0.00       0.00       0.00
                            0.00      74.66    -662.97     405.83      -4.76       0.00       0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00       0.00       1.74      -0.00      94.14       0.00       0.00       0.00
                           -0.00      -2.84       0.01      -0.00     -94.10       0.00       0.00       0.00       0.00

   11   5.1  1.0  0.0       0.00       0.00       0.00      -0.02      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.03    -153.75      94.09      -0.00      -0.00       0.00       0.00       0.00

   12   6.1  1.0  0.0       0.00       0.00       0.00     -95.15       0.00       1.72       0.00       0.00       0.00
                           -0.00     155.49       0.03      -0.02      -1.72      -0.00       0.00       0.00       0.00

   13   1.1  1.0 -1.0      20.89      -0.00    -234.92       0.00       0.00       0.00      51.18      -0.00    -575.44
                           -5.11    -234.86      -0.00      -0.00     -51.19     -12.51      12.51     575.28       0.00

   14   2.1  1.0 -1.0     233.44       0.00      21.34       0.00       0.00       0.00     571.82       0.00      52.26
                          -26.03      21.33       0.00      -0.00    -571.97     -63.78      63.76     -52.25      -0.00

   15   3.1  1.0 -1.0     -26.39      -0.00       2.75       0.00       0.00       0.00     -64.64      -0.00       6.74
                         -234.31       2.75      -0.00       0.00      64.66    -574.15     573.94      -6.73       0.00

   16   4.1  1.0 -1.0       1.01      -0.00      54.35       0.00       0.00       0.00       2.46      -0.00     133.14
                            0.00      54.33      -0.00      -0.00      -2.46       0.00      -0.00    -133.07       0.00

   17   5.1  1.0 -1.0      -0.01      -0.00       0.00       0.00       0.00       0.00      -0.02      -0.00       0.01
                          -54.32       0.00       0.00       0.00       0.02    -133.15     133.06      -0.01      -0.00

   18   6.1  1.0 -1.0     -54.93       0.00       0.99       0.00       0.00       0.00    -134.56       0.00       2.44
                            0.01       0.99       0.00      -0.00     134.66       0.02      -0.02      -2.43      -0.00

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

   28   1.1  2.0  1.0      -0.00       0.00     -72.13       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      72.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   2.1  2.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -72.13       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   3.1  2.0  1.0      72.13       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  2.0  0.0   51924.72       0.00       0.00      -0.00       0.00     -72.13       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      72.13       0.00       0.00       0.00       0.00

   32   2.1  2.0  0.0       0.00   51924.73       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -72.13       0.00      -0.00       0.00       0.00       0.00

   33   3.1  2.0  0.0       0.00       0.00   51924.74      72.13       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   34   1.1  2.0 -1.0      -0.00      -0.00      72.13   51924.72       0.00       0.00      -0.00       0.00     -58.90
                            0.00      72.13       0.00       0.00      -0.00       0.00      -0.00      58.90       0.00

   35   2.1  2.0 -1.0       0.00      -0.00       0.00       0.00   51924.73       0.00      -0.00      -0.00      -0.00
                          -72.13      -0.00      -0.00       0.00      -0.00     -58.90     -58.90       0.00      -0.00

   36   3.1  2.0 -1.0     -72.13      -0.00      -0.00       0.00       0.00   51924.74      58.90       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      58.90      -0.00      -0.00       0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00       0.00      -0.00      -0.00      58.90   51924.72       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      58.90       0.00       0.00      -0.00       0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00   51924.73       0.00
                           -0.00      -0.00      -0.00     -58.90      -0.00      -0.00       0.00      -0.00    -117.79

   39   3.1  2.0 -2.0       0.00       0.00       0.00     -58.90      -0.00      -0.00       0.00       0.00   51924.74
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00     117.79      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -268.06209740    -0.01245501    -2733.56      0.00000000        0.00      0.0000
     2  -268.06209739    -0.01245500    -2733.56      0.00000001        0.00      0.0000
     3  -268.06209739    -0.01245500    -2733.56      0.00000001        0.00      0.0000
     4  -268.06209738    -0.01245499    -2733.55      0.00000002        0.00      0.0000
     5  -268.06209737    -0.01245498    -2733.55      0.00000003        0.01      0.0000
     6  -268.04079859     0.00884380     1940.99      0.02129881     4674.55      0.5796
     7  -268.04079857     0.00884382     1940.99      0.02129883     4674.55      0.5796
     8  -268.04079856     0.00884383     1941.00      0.02129884     4674.56      0.5796
     9  -268.04020231     0.00944008     2071.86      0.02189509     4805.42      0.5958
    10  -268.01227083     0.03737156     8202.11      0.04982657    10935.67      1.3559
    11  -268.01227031     0.03737208     8202.22      0.04982709    10935.78      1.3559
    12  -268.01227022     0.03737217     8202.24      0.04982718    10935.80      1.3559
    13  -268.01226997     0.03737242     8202.30      0.04982743    10935.86      1.3559
    14  -268.01226995     0.03737244     8202.30      0.04982745    10935.86      1.3559
    15  -267.95278571     0.09685668    21257.58      0.10931169    23991.14      2.9745
    16  -267.81389969     0.23574270    51739.54      0.24819771    54473.10      6.7538
    17  -267.81389968     0.23574271    51739.54      0.24819772    54473.10      6.7538
    18  -267.81389870     0.23574369    51739.76      0.24819870    54473.32      6.7538
    19  -267.81339418     0.23624821    51850.49      0.24870322    54584.05      6.7676
    20  -267.81339361     0.23624878    51850.61      0.24870379    54584.17      6.7676
    21  -267.81339358     0.23624881    51850.62      0.24870382    54584.18      6.7676
    22  -267.81339186     0.23625053    51851.00      0.24870554    54584.56      6.7676
    23  -267.81339186     0.23625053    51851.00      0.24870554    54584.56      6.7676
    24  -267.81251921     0.23712318    52042.52      0.24957819    54776.08      6.7914
    25  -267.81251921     0.23712318    52042.52      0.24957819    54776.08      6.7914
    26  -267.81251919     0.23712320    52042.53      0.24957821    54776.09      6.7914
    27  -267.81251918     0.23712321    52042.53      0.24957822    54776.09      6.7914
    28  -267.81251918     0.23712321    52042.53      0.24957822    54776.09      6.7914
    29  -267.81251916     0.23712323    52042.53      0.24957824    54776.09      6.7914
    30  -267.81251916     0.23712323    52042.53      0.24957824    54776.09      6.7914
    31  -267.80649448     0.24314791    53364.80      0.25560292    56098.36      6.9553
    32  -267.80645947     0.24318292    53372.48      0.25563793    56106.04      6.9563
    33  -267.80645853     0.24318386    53372.69      0.25563887    56106.25      6.9563
    34  -267.80645852     0.24318387    53372.69      0.25563888    56106.25      6.9563
    35  -267.80642580     0.24321659    53379.87      0.25567160    56113.43      6.9572
    36  -267.80642580     0.24321659    53379.87      0.25567160    56113.43      6.9572
    37  -267.80642406     0.24321833    53380.25      0.25567334    56113.81      6.9572
    38  -267.80642400     0.24321839    53380.27      0.25567340    56113.82      6.9572
    39  -267.80642350     0.24321889    53380.38      0.25567390    56113.93      6.9572


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.0  1.0   0.480412536  -0.478801612   0.058556248   0.031744087  -0.036469168   0.497927618  -0.499769682  -0.009152340
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.0  1.0  -0.038597828   0.011248522   0.414964893  -0.340524790  -0.477725178  -0.044707250  -0.008196615   0.474850851
                         0.015891137  -0.000936333  -0.102888211   0.111224726   0.029337931  -0.006904564  -0.003908063   0.156090175

    3    3.1  1.0  1.0  -0.005223594  -0.004202130  -0.007633589   0.111996512   0.046910402   0.001048709   0.009685935  -0.154854099
                        -0.008110735   0.074831437   0.092094550   0.530628388   0.481792543   0.000506113  -0.053374825   0.472274133

    4    4.1  1.0  1.0  -0.002938523   0.002910101  -0.000080772  -0.000411334  -0.000092390   0.003436374  -0.003410200  -0.000406685
                         0.000010046   0.000003750  -0.000062731   0.000104609   0.000047552   0.000005119   0.000006429  -0.000147559

    5    5.1  1.0  1.0   0.000005695  -0.000080992   0.000240393   0.000454043  -0.000041624  -0.000047245   0.000014268   0.000699493
                        -0.000038474   0.000452890   0.000489002   0.003290647   0.002939632   0.000001774   0.000367613  -0.003344815

    6    6.1  1.0  1.0  -0.000083891   0.000241227  -0.002544189   0.002107951   0.002934826   0.000061101  -0.000430039   0.003337648
                        -0.000101306   0.000056722   0.000682931  -0.000308103   0.000152058  -0.000047286   0.000014517   0.000696865

    7    1.1  1.0  0.0  -0.003672715   0.119227011   0.697300240   0.263972931   0.000882253   0.063125440   0.000506698  -0.000104514
                         0.042124462   0.010987907  -0.212777341  -0.032407703  -0.024039877  -0.002375485   0.012876986   0.000500209

    8    2.1  1.0  0.0  -0.011586178   0.650977337  -0.089151358  -0.110323540  -0.000555025   0.701714775   0.002026955   0.000857393
                         0.132888520   0.059993773   0.027204048   0.013544316   0.015123458  -0.026406352   0.051512096  -0.004103514

    9    3.1  1.0  0.0  -0.057973276  -0.135946266  -0.024303736   0.018761921  -0.000272607  -0.051717534   0.027559975  -0.015580991
                         0.664928707  -0.012528747   0.007416153  -0.002303382   0.007428084   0.001946190   0.700397231   0.074571212

   10    4.1  1.0  0.0   0.000011212  -0.000299868  -0.004288025  -0.001672357  -0.000005732  -0.000088772   0.000000136  -0.000000328
                        -0.000128601  -0.000027636   0.001308467   0.000205314   0.000156193   0.000003341   0.000003468   0.000001572

   11    5.1  1.0  0.0  -0.000359621  -0.000370618  -0.000115345   0.000074329  -0.000001909  -0.000187768  -0.000189899   0.000105814
                         0.004124704  -0.000034156   0.000035197  -0.000009125   0.000052016   0.000007066  -0.004826002  -0.000506430

   12    6.1  1.0  0.0   0.000032646  -0.004093636   0.000066472   0.000505730   0.000002584   0.004852247  -0.000007062   0.000017733
                        -0.000374433  -0.000377268  -0.000020283  -0.000062088  -0.000070413  -0.000182596  -0.000179479  -0.000084871

   13    1.1  1.0 -1.0   0.473163823   0.470736819  -0.048580412  -0.030801386  -0.036371064  -0.496519374  -0.498224442  -0.008386652
                         0.083139658   0.087509027   0.032692164   0.007678649  -0.002673203   0.037422209   0.039270135  -0.003664616

   14    2.1  1.0 -1.0  -0.035265341  -0.010887926  -0.401712972   0.357316667  -0.474289572   0.044061890  -0.007864190   0.497623446
                        -0.022331060  -0.002976417   0.146316558   0.025551396  -0.064276424  -0.010245051   0.004540041   0.047099680

   15    3.1  1.0 -1.0  -0.006548413  -0.009545350   0.057749823   0.019684320   0.082099763  -0.001007706   0.013849992   0.047200622
                         0.007084366   0.074339008   0.072143160   0.541961471  -0.477057926   0.000583498   0.052448708  -0.494767369

   16    4.1  1.0 -1.0  -0.002892447  -0.002861770   0.000031988   0.000424423  -0.000088656  -0.003426271  -0.003400161  -0.000431744
                        -0.000518432  -0.000528183  -0.000097139   0.000002004  -0.000054196   0.000263368   0.000261552  -0.000027624

   17    5.1  1.0 -1.0  -0.000001050  -0.000003145   0.000073573   0.000355423   0.000173964   0.000047244  -0.000014662  -0.000698298
                         0.000038879   0.000460064   0.000539906   0.003302754  -0.002934775  -0.000001782  -0.000367598   0.003345065

   18    6.1  1.0 -1.0  -0.000100157  -0.000247531   0.002492035  -0.002119879   0.002938077  -0.000064482  -0.000429850   0.003337445
                         0.000085260   0.000011678  -0.000853845   0.000210944   0.000063475  -0.000042560   0.000019319   0.000697836

   19    1.1  0.0  0.0  -0.000174242  -0.003251654   0.012377773   0.031360786   0.005202744   0.000000000   0.000000019  -0.000000018
                        -0.000015192   0.035282878   0.040563644   0.255445384   0.000190939   0.000000000  -0.000000001  -0.000000004

   20    2.1  0.0  0.0   0.260379831  -0.002153021   0.002176694  -0.000569450   0.019358488  -0.000000001   0.000000693   0.000000046
                         0.022701790   0.023361881   0.007133319  -0.004638382   0.000710447  -0.000000014  -0.000000027   0.000000010

   21    3.1  0.0  0.0   0.019326296   0.000117497   0.002422368   0.000503235  -0.262219585  -0.000000000   0.000000094  -0.000000129
                         0.001685006  -0.001274937   0.007938428   0.004099032  -0.009623335  -0.000000011  -0.000000004  -0.000000027

   22    4.1  0.0  0.0  -0.008935169  -0.000290760   0.075715210  -0.005280118   0.006840628  -0.000000003   0.000000004   0.000000010
                        -0.000779033   0.003154965   0.248129025  -0.043008539   0.000251048  -0.000000073  -0.000000000   0.000000002

   23    5.1  0.0  0.0  -0.023284689  -0.023842343  -0.002796070  -0.004158638  -0.003833303   0.000000018   0.000000031   0.000000002
                        -0.002030127   0.258707270  -0.009163101  -0.033873664  -0.000140681   0.000000488  -0.000000001   0.000000000

   24    6.1  0.0  0.0  -0.000000049  -0.000000004   0.000000334  -0.000000026   0.000000039  -0.000000000   0.000000006   0.000000003
                        -0.000000004   0.000000040   0.000001095  -0.000000215   0.000000001  -0.000000013  -0.000000000   0.000000001

   25    1.1  2.0  2.0  -0.000119117   0.001113093  -0.003566994   0.009390122   0.010206090   0.000000001   0.000000125  -0.000001148
                        -0.000186377   0.000239471   0.000769912  -0.001325400   0.000336748   0.000000017  -0.000000005  -0.000000239

   26    2.1  2.0  2.0  -0.000014226  -0.000008345   0.000087221  -0.000172122  -0.000087620   0.000007163   0.000011298  -0.000227233
                        -0.005106581   0.005062210  -0.000221130  -0.000647426  -0.000067207  -0.005788752   0.005756033   0.000581976

   27    3.1  2.0  2.0   0.005107951  -0.005063568   0.000221190   0.000647599   0.000067225   0.005790296  -0.005757569  -0.000582131
                        -0.000014230  -0.000008347   0.000087245  -0.000172168  -0.000087643   0.000007165   0.000011301  -0.000227293

   28    1.1  2.0  1.0   0.005105808  -0.005062645   0.000221138   0.000647485   0.000067198  -0.005789078   0.005755188   0.000581885
                        -0.000014334  -0.000008456   0.000087195  -0.000172116  -0.000087628  -0.000007117  -0.000011252   0.000227220

   29    2.1  2.0  1.0   0.000342493  -0.000056144  -0.002795153   0.000286774  -0.000453840  -0.000079818   0.000024371   0.001177506
                        -0.000037848  -0.000133745  -0.009682238   0.001632732   0.005094503   0.000003005   0.000619354  -0.005635588

   30    3.1  2.0  1.0  -0.000081310   0.001247334   0.006115828   0.007760975   0.005114772  -0.000003004  -0.000619296   0.005635048
                         0.000156111   0.000183415  -0.002025519  -0.001039120  -0.000117049  -0.000079810   0.000024368   0.001177393

   31    1.1  2.0  0.0  -0.000000014  -0.000000001  -0.000000009  -0.000000002   0.000001006   0.000004903   0.001011040  -0.009199587
                        -0.000000001   0.000000013  -0.000000029  -0.000000017   0.000000037   0.000130296  -0.000039783  -0.001922172

   32    2.1  2.0  0.0   0.001117197   0.001133572   0.000133035   0.000198110   0.000220420  -0.000177715  -0.000175546  -0.000082693
                         0.000097405  -0.012300105   0.000435975   0.001613679   0.000008089  -0.004722541   0.000006908  -0.000017278

   33    3.1  2.0  0.0   0.012414001  -0.000102585   0.000105804  -0.000027451   0.000156572  -0.000006905   0.004693660   0.000492529
                         0.001082342   0.001113126   0.000346733  -0.000223599   0.000005746  -0.000183483  -0.000184691   0.000102910

   34    1.1  2.0 -1.0  -0.005026288  -0.004978917   0.000134783   0.000669891  -0.000060594  -0.005772170  -0.005738278  -0.000624184
                        -0.000897724  -0.000916970  -0.000195802   0.000010383  -0.000092318   0.000442181   0.000441005  -0.000024778

   35    2.1  2.0 -1.0  -0.000330775  -0.000079643   0.003086667  -0.000116688   0.000079191  -0.000079818   0.000024371   0.001177506
                        -0.000096549   0.000121231   0.009593285  -0.001653613   0.005114065   0.000003002   0.000619354  -0.005635588

   36    3.1  2.0 -1.0   0.000053067   0.001259846   0.006204770   0.007781853  -0.005092433   0.000003003   0.000619295  -0.005635048
                         0.000167827   0.000047646  -0.001734044  -0.000869058  -0.000491649   0.000079811  -0.000024369  -0.001177393

   37    1.1  2.0 -2.0  -0.000149574  -0.001138112   0.003389154  -0.009431868   0.010203319  -0.000000000   0.000000125  -0.000001148
                         0.000162951   0.000032001  -0.001352718   0.000985358   0.000412268   0.000000017  -0.000000005  -0.000000240

   38    2.1  2.0 -2.0  -0.000897751  -0.000916999  -0.000195820   0.000010403  -0.000092310  -0.000442202  -0.000441026   0.000024802
                         0.005027069   0.004978469  -0.000134762  -0.000669834   0.000060603  -0.005771841  -0.005739124  -0.000624272

   39    3.1  2.0 -2.0   0.005028417   0.004979804  -0.000134798  -0.000670014   0.000060619  -0.005773381  -0.005740655  -0.000624438
                         0.000897992   0.000917245   0.000195873  -0.000010406   0.000092335   0.000442320   0.000441143  -0.000024809


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.0  1.0  -0.035407628   0.007106112  -0.011849450  -0.130153116   0.131056979  -0.019416466   0.011489524   0.000645325
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.0  1.0  -0.383489067   0.071558966  -0.132321295   0.019437500  -0.011853705  -0.130139019   0.124439210   0.006992430
                         0.049633041   0.016410545  -0.001773369  -0.000837098   0.000394970  -0.001963019  -0.016105645  -0.000899627

    3    3.1  1.0  1.0  -0.049426077   0.059178180   0.014869601   0.000496930  -0.001139096  -0.001887592   0.016038741   0.000877425
                        -0.385093257  -0.139085645   0.004534751  -0.007609534  -0.000062481   0.131363539   0.124960427   0.006971154

    4    4.1  1.0  1.0   0.000105343   0.000017046  -0.000032769   0.001765950  -0.001767059   0.000069279  -0.000002454  -0.000983569
                        -0.000025967   0.000006038  -0.000002002  -0.000002198   0.000000568   0.000014028   0.000000605   0.000241534

    5    5.1  1.0  1.0   0.001407463   0.000897761  -0.000000855  -0.000002359   0.000005277  -0.000223460  -0.000032775  -0.012823909
                         0.005761442  -0.001831910   0.000057872  -0.000102795  -0.000000249   0.001750253  -0.000134163  -0.052860478

    6    6.1  1.0  1.0  -0.005760457  -0.000870850   0.001795299  -0.000070504  -0.000032392   0.001751924   0.000134188   0.053778945
                         0.001407218  -0.000426820   0.000030349  -0.000000329  -0.000005335   0.000223484  -0.000032781  -0.013047036

    7    1.1  1.0  0.0   0.531174081  -0.100777754  -0.182198756  -0.000000248  -0.016501394   0.000019667  -0.172363722   0.000000003
                        -0.129863476  -0.049364974  -0.003062382  -0.003758502  -0.000012264  -0.000154361   0.042140421   0.000000013

    8    2.1  1.0  0.0  -0.048242199   0.009150613   0.016536239  -0.000001370  -0.184178275   0.000082455   0.015654378   0.000000034
                         0.011794438   0.004482336   0.000277940  -0.020753170  -0.000136883  -0.000647172  -0.003827268   0.000000140

    9    3.1  1.0  0.0  -0.006217737   0.000974585   0.001980886  -0.000012184   0.021009697   0.001367205   0.002017630   0.000000008
                         0.001520136   0.000477391   0.000033295  -0.184591639   0.000015615  -0.010730923  -0.000493281   0.000000031

   10    4.1  1.0  0.0   0.008146197   0.001358896   0.002456804  -0.000000000  -0.000045463   0.000000033  -0.000189705  -0.000000005
                        -0.001991614   0.000665641   0.000041294  -0.000003806  -0.000000034  -0.000000262   0.000046380  -0.000000020

   11    5.1  1.0  0.0   0.000000310  -0.000002689  -0.000001950  -0.000000165   0.000002979   0.000018374  -0.000000007  -0.000000088
                        -0.000000076  -0.000001317  -0.000000033  -0.002495338   0.000000002  -0.000144216   0.000000002  -0.000000360

   12    6.1  1.0  0.0   0.000149049   0.000024585   0.000044875   0.000000000   0.002499325   0.000000933  -0.000003471   0.000000258
                        -0.000036440   0.000012043   0.000000754   0.000003345   0.000001858  -0.000007319   0.000000849   0.000001062

   13    1.1  1.0 -1.0   0.031413569  -0.004355884   0.011842757  -0.130153115  -0.131056834  -0.018796168  -0.010193464   0.000573477
                        -0.016336702  -0.005614544   0.000398217   0.000017182  -0.000194805  -0.004868593   0.005301175  -0.000295921

   14    2.1  1.0 -1.0   0.363130799  -0.056829989   0.132306150   0.019437610   0.011853105  -0.126473690  -0.117833031   0.006626449
                        -0.132903447  -0.046479500   0.002674468   0.000834532   0.000412589  -0.030731476   0.043126391  -0.002406986

   15    3.1  1.0 -1.0  -0.133827221   0.073616795  -0.015013598   0.000497935   0.001139187   0.031111537   0.043426234  -0.002416960
                        -0.364458542  -0.132013033   0.004032477   0.007609469  -0.000060787  -0.127640177   0.118264583  -0.006597361

   16    4.1  1.0 -1.0  -0.000105441  -0.000015220   0.000032818   0.001765950   0.001767056   0.000070583   0.000002456  -0.000984819
                         0.000025566  -0.000009767  -0.000000899   0.000001965   0.000003194   0.000003791  -0.000000596   0.000236383

   17    5.1  1.0 -1.0   0.001409570   0.000897087  -0.000001090  -0.000002346  -0.000005277   0.000222547  -0.000032823   0.012843583
                         0.005760927  -0.001832241   0.000057868   0.000102795  -0.000000257  -0.001750370  -0.000134151   0.052855701

   18    6.1  1.0 -1.0   0.005759940   0.000871041  -0.001795304  -0.000070504   0.000032400   0.001751993  -0.000134176   0.053774226
                        -0.001409333   0.000426429  -0.000030001   0.000000338  -0.000005287   0.000222943   0.000032830  -0.013066471

   19    1.1  0.0  0.0   0.000000045  -0.424239492   0.000414499  -0.000115126   0.000000136  -0.000064618   0.000000006   0.000000002
                         0.000000186   0.866077691  -0.024660953   0.000000008  -0.000183573  -0.000008233   0.000000023  -0.000000000

   20    2.1  0.0  0.0   0.000000004  -0.000052295  -0.000002546   0.964712939  -0.000000118  -0.002783205   0.000000000   0.000000285
                         0.000000015   0.000106760   0.000151479  -0.000063678   0.000158594  -0.000354602   0.000000001  -0.000000069

   21    3.1  0.0  0.0   0.000000005  -0.000029814  -0.000001494   0.002805698  -0.000000014   0.956977298   0.000000000  -0.000004658
                         0.000000018   0.000060866   0.000088881  -0.000000185   0.000018630   0.121926501   0.000000001   0.000001131

   22    4.1  0.0  0.0   0.000000101  -0.010849981  -0.016207298  -0.000154754   0.000000001  -0.000089423   0.000000080  -0.000000000
                         0.000000411   0.022150050   0.964265697   0.000000010  -0.000001960  -0.000011394   0.000000328   0.000000000

   23    5.1  0.0  0.0  -0.000000013  -0.000080743   0.000000046  -0.000158672  -0.000716984  -0.000018036  -0.000000000   0.000000014
                        -0.000000055   0.000164835  -0.000002760   0.000000011   0.964717138  -0.000002298  -0.000000002  -0.000000003

   24    6.1  0.0  0.0   0.073287495   0.000000044   0.000000013  -0.000000004  -0.000000000  -0.000000004   0.225897584   0.000000000
                         0.299764177  -0.000000089  -0.000000784   0.000000000   0.000000012  -0.000000000   0.923971505  -0.000000000

   25    1.1  2.0  2.0   0.000000808  -0.002670365   0.001831510  -0.000203145  -0.000000304   0.003458842  -0.000000500   0.001383418
                        -0.000000198  -0.001309268   0.000031201   0.000002075  -0.000010562   0.000441966   0.000000122  -0.000335886

   26    2.1  2.0  2.0   0.000000000   0.000001819   0.000001427   0.000002182  -0.000000464  -0.000017966   0.000000000  -0.000005655
                        -0.000000001   0.000001133   0.000000077   0.001743527  -0.001746470   0.000100111   0.000000000  -0.000000537

   27    3.1  2.0  2.0   0.000000001  -0.000001133  -0.000000077  -0.001743994   0.001746939  -0.000100138  -0.000000000   0.000000538
                         0.000000000   0.000001820   0.000001427   0.000002183  -0.000000465  -0.000017971   0.000000000  -0.000005655

   28    1.1  2.0  1.0   0.000000000  -0.000001133  -0.000000078  -0.001743269   0.001746664  -0.000100096  -0.000000000  -0.000000527
                        -0.000000000   0.000001819   0.000001427   0.000002182  -0.000000464  -0.000017965  -0.000000000   0.000005673

   29    2.1  2.0  1.0   0.000000315  -0.000042937  -0.000058897   0.000002987   0.000005283  -0.000220648  -0.000000182   0.090987461
                         0.000001289   0.000088898   0.003491711  -0.000101612   0.000000128   0.001730146  -0.000000744   0.374748213

   30    3.1  2.0  1.0   0.000000209  -0.002760403  -0.001660182  -0.000101596  -0.000000432   0.001729776  -0.000000123  -0.373351128
                        -0.000000051  -0.001352764  -0.000027696   0.000005063  -0.000005282   0.000221456   0.000000030   0.090648256

   31    1.1  2.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000000022   0.000000000   0.000000366  -0.000000000   0.610828613
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000047  -0.000000000  -0.148306899

   32    2.1  2.0  0.0   0.000000000   0.000000234   0.000000002  -0.000005064  -0.000003180   0.000012564  -0.000000000  -0.000004291
                         0.000000001  -0.000000478  -0.000000132   0.000000000   0.004279010   0.000001601  -0.000000000   0.000001042

   33    3.1  2.0  0.0   0.000000000  -0.000002298  -0.000000059  -0.004271753   0.000000003  -0.000246880  -0.000000000  -0.000001464
                         0.000000000   0.000004691   0.000003498   0.000000282  -0.000004318  -0.000031454  -0.000000000   0.000000355

   34    1.1  2.0 -1.0   0.000000000   0.000000743  -0.000000030   0.001743269   0.001746661   0.000101403  -0.000000000   0.000003071
                        -0.000000000  -0.000002010  -0.000001429   0.000001952   0.000003060   0.000007708   0.000000000   0.000004799

   35    2.1  2.0 -1.0  -0.000000315   0.000043919   0.000058480  -0.000003000   0.000005283  -0.000220228   0.000000182   0.090987464
                        -0.000001289  -0.000088418  -0.003491718  -0.000101612  -0.000000120   0.001730199   0.000000744   0.374748213

   36    3.1  2.0 -1.0   0.000000209  -0.002760883  -0.001660175   0.000101597  -0.000000440  -0.001730044  -0.000000123   0.373351128
                        -0.000000051  -0.001351783  -0.000028113   0.000005050   0.000005282  -0.000219352   0.000000030  -0.090648255

   37    1.1  2.0 -2.0  -0.000000808   0.002671326  -0.001831524  -0.000203146   0.000000320   0.003459164   0.000000500   0.001383416
                         0.000000197   0.001307306  -0.000030367  -0.000002048  -0.000010561   0.000439443  -0.000000122  -0.000335891

   38    2.1  2.0 -2.0  -0.000000000  -0.000002010  -0.000001429   0.000001952   0.000003060   0.000007710   0.000000000  -0.000004778
                        -0.000000001  -0.000000743   0.000000029  -0.001743527  -0.001746468  -0.000101418   0.000000000   0.000003072

   39    3.1  2.0 -2.0  -0.000000001  -0.000000743   0.000000029  -0.001743995  -0.001746936  -0.000101445   0.000000000   0.000003072
                         0.000000000   0.000002011   0.000001429  -0.000001952  -0.000003061  -0.000007712  -0.000000000   0.000004778


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.0  1.0   0.006997287   0.007025734   0.001001448  -0.009704603   0.000884910  -0.009681993   0.000211648  -0.000000093
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.0  1.0  -0.000635517  -0.000638056   0.011102721   0.000881289   0.009582237   0.000879311   0.001078801  -0.000001038
                         0.000000099   0.000000004   0.000725734  -0.000000011   0.001245270   0.000000007   0.000038521   0.000000060

    3    3.1  1.0  1.0  -0.000082005  -0.000082244  -0.000583845   0.000113599   0.001254567   0.000113564   0.009691243   0.000000068
                        -0.000000011   0.000000034  -0.005629926   0.000000001  -0.009661674   0.000000049  -0.000302498  -0.000000465

    4    4.1  1.0  1.0   0.054391246   0.054570829  -0.001569739  -0.074125170  -0.001326448  -0.074006860   0.000004000   0.000000597
                        -0.000000082  -0.000000006  -0.000191403   0.000000009  -0.000328267  -0.000000010  -0.000009675  -0.000000064

    5    5.1  1.0  1.0   0.000002833   0.000002080  -0.005054636  -0.000002744  -0.017662311  -0.000004537  -0.074251215   0.000001030
                        -0.000000000  -0.000000263   0.041908049  -0.000000000   0.071989168  -0.000000379   0.002255985   0.000009700

    6    6.1  1.0  1.0   0.000995171   0.000998725   0.085768077  -0.001357001   0.072511904  -0.001354455   0.000030091  -0.000032640
                         0.000000772  -0.000000000   0.010369404  -0.000000082   0.017790720   0.000000014   0.000541627   0.000003484

    7    1.1  1.0  0.0   0.000886871  -0.000000000   0.007943129   0.001215378   0.000000001  -0.000000000  -0.000414252   0.000000000
                        -0.000000002  -0.000216056   0.000961045  -0.000000001  -0.000000003  -0.000298069  -0.013634628   0.000000000

    8    2.1  1.0  0.0   0.009909347  -0.000000001  -0.000721288   0.013581448   0.000000005  -0.000000001   0.000037622  -0.000000000
                        -0.000000022  -0.001101258  -0.000087269  -0.000000009  -0.000000022  -0.001517655   0.001238287  -0.000000000

    9    3.1  1.0  0.0  -0.001120185  -0.000000011  -0.000092993  -0.001535294   0.000000016  -0.000000006   0.000004859   0.000000000
                         0.000000003  -0.009912973  -0.000011251   0.000000001  -0.000000067  -0.013661369   0.000159925   0.000000000

   10    4.1  1.0  0.0  -0.001431745  -0.000000000   0.060615844  -0.001933457  -0.000000001  -0.000000000  -0.003166421  -0.000000000
                         0.000000003  -0.000002683   0.007333953   0.000000001   0.000000004  -0.000006047  -0.104219115  -0.000000000

   11    5.1  1.0  0.0   0.000014238   0.000000085   0.000002309   0.000019264  -0.000000128   0.000000043  -0.000000194  -0.000000000
                        -0.000000000   0.077175318   0.000000279  -0.000000000   0.000000521   0.104665664  -0.000006389  -0.000000000

   12    6.1  1.0  0.0   0.078251125  -0.000000000   0.001109995   0.105613568   0.000000028  -0.000000000  -0.000057951   0.000000000
                        -0.000000176  -0.000014091   0.000134299  -0.000000068  -0.000000112  -0.000019202  -0.001907386   0.000000000

   13    1.1  1.0 -1.0  -0.006997287   0.007025734  -0.000972551   0.009704603   0.000784274  -0.009681993   0.000211257  -0.000000091
                         0.000000031  -0.000000015  -0.000238835  -0.000000012   0.000409853   0.000000008  -0.000012849   0.000000020

   14    2.1  1.0 -1.0   0.000635517  -0.000638056  -0.010955431  -0.000881289   0.009069261   0.000879311   0.001074473  -0.000001027
                         0.000000096  -0.000000002  -0.001943097  -0.000000009   0.003334438  -0.000000008  -0.000103942   0.000000161

   15    3.1  1.0 -1.0   0.000082005  -0.000082244   0.001909680  -0.000113599  -0.003362990   0.000113564   0.009691732   0.000000165
                        -0.000000011  -0.000000034  -0.005328232   0.000000001   0.009143970  -0.000000049  -0.000286402   0.000000440

   16    4.1  1.0 -1.0  -0.054391246   0.054570829   0.001570092   0.074125170  -0.001327639  -0.074006860   0.000004580   0.000000597
                         0.000000162  -0.000000114   0.000188487  -0.000000086  -0.000323420   0.000000071   0.000009415  -0.000000063

   17    5.1  1.0 -1.0  -0.000002833   0.000002080  -0.005085874   0.000002744   0.017688683  -0.000004537  -0.074251219  -0.000001041
                        -0.000000001   0.000000263   0.041904270  -0.000000000  -0.071982692   0.000000379   0.002255867  -0.000009699

   18    6.1  1.0 -1.0  -0.000995171   0.000998725  -0.085766232   0.001357001   0.072505454  -0.001354455  -0.000002846  -0.000032640
                         0.000000776  -0.000000002  -0.010384649  -0.000000083   0.017816987  -0.000000012  -0.000542455   0.000003487

   19    1.1  0.0  0.0   0.000000000   0.000000000  -0.000085156   0.000000000   0.000000524  -0.000001933  -0.001252557  -0.000000000
                         0.000000001   0.000000000   0.000703825   0.000000452   0.000000129   0.000000000   0.000038056   0.000000000

   20    2.1  0.0  0.0   0.000000000  -0.000000052   0.000000042   0.000000000   0.000085443   0.001436723  -0.000002376  -0.000000004
                         0.000000005   0.000000000  -0.000000350   0.000001481   0.000020980  -0.000000001   0.000000072   0.000000000

   21    3.1  0.0  0.0  -0.000000000  -0.000000003  -0.000000033  -0.000000000  -0.001396521   0.000087906  -0.000000598   0.000000071
                        -0.000000014   0.000000000   0.000000277  -0.000004286  -0.000342903  -0.000000000   0.000000018  -0.000000008

   22    4.1  0.0  0.0   0.000000000   0.000000000   0.000150723   0.000000000  -0.000000037  -0.000001476  -0.000707872   0.000000000
                         0.000000000   0.000000000  -0.001245740   0.000000067  -0.000000009   0.000000000   0.000021507  -0.000000000

   23    5.1  0.0  0.0  -0.000000000  -0.000000000  -0.000000020  -0.000000001   0.000004242   0.000001215  -0.000000426  -0.000000000
                        -0.000004742   0.000000000   0.000000162  -0.001440855   0.000001042  -0.000000000   0.000000013   0.000000000

   24    6.1  0.0  0.0   0.000000000   0.000000000  -0.000000481   0.000000000  -0.000000000   0.000000000   0.000000007  -0.000000000
                         0.000000000  -0.000000000   0.000003975   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   25    1.1  2.0  2.0  -0.000000008  -0.000000001   0.488884854  -0.000002916   0.554339466  -0.000002925   0.008765251   0.167871454
                         0.000000020  -0.000000000   0.059151070  -0.000000625   0.136113720   0.000006677   0.288508428  -0.017926876

   26    2.1  2.0  2.0   0.000000482   0.000000041   0.000000308  -0.000000027   0.000000042   0.000000037  -0.000001241  -0.000000003
                         0.384203600   0.384944925  -0.000002515  -0.286433864  -0.000001489  -0.285436335   0.000006637   0.000000030

   27    3.1  2.0  2.0  -0.384201431  -0.384942759   0.000002515   0.286439028   0.000001489   0.285441529  -0.000006637  -0.000000010
                         0.000000482   0.000000041   0.000000308  -0.000000027   0.000000043   0.000000037  -0.000001241  -0.000000002

   28    1.1  2.0  1.0   0.385634866   0.384951806   0.000002515   0.284360662   0.000001500   0.285441579  -0.000006638  -0.000000078
                        -0.000000484  -0.000000041   0.000000308  -0.000000027   0.000000048   0.000000038  -0.000001239  -0.000000011

   29    2.1  2.0  1.0  -0.000005388   0.000000000  -0.059596572   0.000000312  -0.067813116   0.000006516   0.282094137  -0.048498430
                        -0.000000014   0.000001854   0.492569274  -0.000005829   0.276177019  -0.000001464  -0.008570836  -0.454150790

   30    3.1  2.0  1.0   0.000000007  -0.000001855  -0.003671305   0.000002912   0.278174022  -0.000001462   0.017336122   0.118441276
                        -0.000005368   0.000000000  -0.000443919  -0.000000314   0.068303443   0.000013193   0.570603722  -0.012648245

   31    1.1  2.0  0.0  -0.000000001   0.000003028  -0.000000000  -0.000000000  -0.001646609   0.000000001  -0.000000001   0.701284842
                         0.000008783  -0.000000000   0.000000000   0.000000001  -0.000404310   0.000000000   0.000000000  -0.074889680

   32    2.1  2.0  0.0   0.000000711  -0.000000313  -0.000000746   0.000000447   0.000000743  -0.000000380   0.000003526  -0.000000013
                         0.316041362  -0.000000000   0.000006162   0.698257577   0.000000182  -0.000000000  -0.000000107   0.000000093

   33    3.1  2.0  0.0   0.000000000   0.314299407  -0.000000001   0.000000000   0.000003484   0.699179463  -0.000016151   0.000000002
                         0.000000313  -0.000000346   0.000000009   0.000000378   0.000000855  -0.000000289   0.000000488   0.000000000

   34    1.1  2.0 -1.0   0.385634866  -0.384951806   0.000002516   0.284360662  -0.000001352  -0.285441579   0.000006550  -0.000000074
                        -0.000001251   0.000000807   0.000000301  -0.000000337  -0.000000653   0.000000273  -0.000001638  -0.000000011

   35    2.1  2.0 -1.0  -0.000005388  -0.000000000   0.059596026   0.000000312  -0.067812486  -0.000006516  -0.282094146  -0.048498411
                         0.000000013   0.000001854  -0.492569340   0.000005830   0.276177174  -0.000001462   0.008570526  -0.454150796

   36    3.1  2.0 -1.0   0.000000005   0.000001855  -0.003671240   0.000002912  -0.278174168   0.000001466   0.017336432  -0.118441270
                         0.000005368   0.000000000  -0.000444461   0.000000314  -0.068302849   0.000013193   0.570603712   0.012648265

   37    1.1  2.0 -2.0   0.000000008  -0.000000001  -0.488884987   0.000002917   0.554339767  -0.000002927  -0.008765872   0.167871461
                         0.000000020   0.000000000  -0.059149975  -0.000000625   0.136112491  -0.000006677  -0.288508409  -0.017926856

   38    2.1  2.0 -2.0   0.000001246  -0.000000806   0.000000301  -0.000000339  -0.000000652   0.000000273  -0.000001639  -0.000000004
                         0.384203600  -0.384944925  -0.000002516  -0.286433864   0.000001340   0.285436335  -0.000006550   0.000000025

   39    3.1  2.0 -2.0   0.384201431  -0.384942759  -0.000002516  -0.286439028   0.000001340   0.285441529  -0.000006550   0.000000011
                        -0.000001246   0.000000806  -0.000000300   0.000000340   0.000000652  -0.000000273   0.000001640   0.000000001


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.0  1.0   0.000000156  -0.000000693  -0.000000098   0.000000074   0.000001419  -0.000001290   0.000521280  -0.004214668
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.0  1.0  -0.000000014   0.000000063  -0.000001000   0.000000658  -0.000000129   0.000000117   0.005648746   0.000384088
                         0.000000000   0.000000000  -0.000000212   0.000000219  -0.000000000   0.000000000  -0.000724663   0.000000145

    3    3.1  1.0  1.0  -0.000000002   0.000000008  -0.000000573   0.000001233  -0.000000017   0.000000015   0.000703568   0.000049191
                        -0.000000000  -0.000000000   0.000001648  -0.000001698   0.000000000  -0.000000000   0.005622804   0.000001285

    4    4.1  1.0  1.0   0.000005251  -0.000009408   0.000000491  -0.000000231   0.000025303  -0.000023244   0.007131068   0.496897214
                         0.000000000  -0.000000000   0.000000208  -0.000000182  -0.000000001   0.000000001  -0.001742063   0.000003031

    5    5.1  1.0  1.0   0.000000000  -0.000000000   0.000009987  -0.000020728   0.000000001  -0.000000001   0.096817195   0.000018961
                         0.000000000   0.000000000  -0.000023648   0.000026538   0.000000000  -0.000000000   0.400015042   0.000153828

    6    6.1  1.0  1.0   0.000000096  -0.000000172  -0.000026860   0.000012661   0.000000463  -0.000000425  -0.389782090   0.008940331
                        -0.000000000   0.000000000  -0.000011346   0.000009885   0.000000000  -0.000000000   0.094336325  -0.000000014

    7    1.1  1.0  0.0   0.000000150   0.000000000   0.000001551   0.000000000   0.000000012   0.000000000  -0.007754094  -0.000000001
                         0.000000000  -0.000000065   0.000000655  -0.000000000  -0.000000000   0.000000010   0.001878214   0.000129615

    8    2.1  1.0  0.0   0.000001677   0.000000000  -0.000000141  -0.000000000   0.000000138   0.000000000   0.000704226  -0.000000003
                         0.000000000  -0.000000333  -0.000000060   0.000000000  -0.000000000   0.000000053  -0.000170579   0.000660660

    9    3.1  1.0  0.0  -0.000000190   0.000000000  -0.000000018  -0.000000000  -0.000000016   0.000000000   0.000090769  -0.000000031
                        -0.000000000  -0.000002996  -0.000000008   0.000000000   0.000000000   0.000000477  -0.000021986   0.005946935

   10    4.1  1.0  0.0  -0.000000949  -0.000000000   0.000026874  -0.000000000  -0.000000137   0.000000000   0.565987312   0.000000000
                        -0.000000000  -0.000000002   0.000011355   0.000000000   0.000000000   0.000000000  -0.137094718  -0.000024561

   11    5.1  1.0  0.0   0.000000009  -0.000000000   0.000000001   0.000000000   0.000000001  -0.000000000   0.000021620  -0.000003662
                         0.000000000   0.000048731   0.000000000  -0.000000000  -0.000000000  -0.000010182  -0.000005237   0.702897687

   12    6.1  1.0  0.0   0.000051931  -0.000000000   0.000000491   0.000000000   0.000007503  -0.000000000   0.010350505   0.000000001
                         0.000000001  -0.000000007   0.000000208  -0.000000000  -0.000000000   0.000000002  -0.002507122  -0.000127880

   13    1.1  1.0 -1.0  -0.000000156  -0.000000693   0.000000068   0.000000018  -0.000001419  -0.000001290  -0.000463501  -0.004214668
                        -0.000000000  -0.000000000   0.000000070   0.000000072   0.000000000   0.000000000   0.000238536  -0.000000044

   14    2.1  1.0 -1.0   0.000000014   0.000000063   0.000000849   0.000000372   0.000000129   0.000000117  -0.005354242   0.000384088
                         0.000000000  -0.000000000   0.000000569   0.000000586  -0.000000000  -0.000000000   0.001940506  -0.000000141

   15    3.1  1.0 -1.0   0.000000002   0.000000008  -0.000000782  -0.000001349   0.000000017   0.000000015   0.001947391   0.000049191
                        -0.000000000   0.000000000   0.000001560   0.000001607   0.000000000   0.000000000   0.005321522  -0.000001284

   16    4.1  1.0 -1.0  -0.000005251  -0.000009408  -0.000000491  -0.000000232  -0.000025303  -0.000023244  -0.007137821   0.496897213
                        -0.000000000  -0.000000000  -0.000000206  -0.000000180   0.000000000   0.000000000   0.001714180   0.000002146

   17    5.1  1.0 -1.0  -0.000000000  -0.000000000   0.000009996   0.000020732  -0.000000001  -0.000000001   0.096959537   0.000018963
                         0.000000000  -0.000000000  -0.000023644  -0.000026534   0.000000000   0.000000000   0.399980564  -0.000153828

   18    6.1  1.0 -1.0  -0.000000096  -0.000000172   0.000026858   0.000012656  -0.000000463  -0.000000425   0.389746595   0.008940331
                        -0.000000000  -0.000000000   0.000011352   0.000009893   0.000000000   0.000000000  -0.094482864   0.000000107

   19    1.1  0.0  0.0  -0.000000000  -0.000000000   0.000000114   0.000000000  -0.000000000  -0.000000000   0.000002427  -0.000000000
                         0.000000000  -0.000000000  -0.000000270   0.000000000  -0.000000000   0.000000000   0.000010021  -0.000000000

   20    2.1  0.0  0.0  -0.000000000   0.000000241   0.000000000   0.000000012   0.000000000   0.000000083  -0.000000001   0.000000207
                         0.000000000   0.000000000  -0.000000000   0.000000009  -0.000000000  -0.000000000  -0.000000006   0.000000000

   21    3.1  0.0  0.0  -0.000000000   0.000000015   0.000000000  -0.000000194   0.000000000   0.000000005   0.000000001   0.000000008
                        -0.000000000   0.000000000  -0.000000000  -0.000000152   0.000000000  -0.000000000   0.000000004   0.000000000

   22    4.1  0.0  0.0  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000004456  -0.000000000
                         0.000000000  -0.000000000   0.000000002  -0.000000000  -0.000000000   0.000000000  -0.000018396  -0.000000000

   23    5.1  0.0  0.0   0.000000000   0.000000000   0.000000000   0.000000001   0.000000000   0.000000000   0.000000003   0.000000001
                        -0.000000112   0.000000000  -0.000000000   0.000000000   0.000000113  -0.000000000   0.000000014   0.000000000

   24    6.1  0.0  0.0  -0.000000000  -0.000000000   0.000000077  -0.000000000   0.000000000  -0.000000000  -0.000979657  -0.000000000
                        -0.000000000   0.000000000  -0.000000182  -0.000000000  -0.000000000  -0.000000000  -0.004044456  -0.000000000

   25    1.1  2.0  2.0  -0.000000023  -0.000000000   0.376065521  -0.292926393   0.000000005  -0.000000001  -0.000488835  -0.000000072
                         0.000000004  -0.000000007   0.158902397  -0.228838741   0.000000005  -0.000000003   0.000118405   0.000000008

   26    2.1  2.0  2.0  -0.000004722  -0.000001636   0.000000007  -0.000000004  -0.000006525   0.000007568  -0.000000068   0.000000257
                         0.185573635   0.214653398   0.000000007  -0.000000006  -0.481905256   0.469674915  -0.000000267  -0.042222555

   27    3.1  2.0  2.0  -0.070929945  -0.039566516   0.000000005  -0.000000006  -0.511501329   0.514878162   0.000000267   0.042248052
                        -0.000001806  -0.000000301  -0.000000003   0.000000003   0.000006925  -0.000008296  -0.000000068   0.000000258

   28    1.1  2.0  1.0  -0.513001450  -0.508418945  -0.000000003  -0.000000001  -0.059200424   0.090411798   0.000000324  -0.042215066
                        -0.000013056  -0.000003875   0.000000008  -0.000000003   0.000000801  -0.000001457  -0.000000075  -0.000000291

   29    2.1  2.0  1.0   0.000000016  -0.000000008   0.158895982  -0.148328613   0.000000004  -0.000000004  -0.000119617  -0.000000011
                         0.000000065   0.000000002  -0.376050346   0.189868939  -0.000000005   0.000000001  -0.000493890   0.000013000

   30    3.1  2.0  1.0  -0.000000018  -0.000000001  -0.376051648   0.395968611  -0.000000005   0.000000001   0.000027955  -0.000013072
                         0.000000007   0.000000007  -0.158896533   0.309336962  -0.000000007   0.000000003  -0.000006760  -0.000000003

   31    1.1  2.0  0.0  -0.000000102  -0.000000004   0.000000006   0.252405501   0.000000000  -0.000000000  -0.000000005   0.000021271
                         0.000000027   0.000000000   0.000000002   0.197183199  -0.000000004  -0.000000001  -0.000000021   0.000000000

   32    2.1  2.0  0.0  -0.000016012   0.000000025   0.000000001  -0.000000001   0.000000982  -0.000000001   0.000000181   0.000000084
                         0.628268860  -0.000000001  -0.000000002  -0.000000000   0.072511141  -0.000000006   0.000000746   0.000000000

   33    3.1  2.0  0.0   0.000000001   0.622685448   0.000000006   0.000000002  -0.000000010  -0.110740681   0.000000001  -0.034497547
                        -0.000000023   0.000004767  -0.000000009   0.000000002   0.000000001   0.000001785   0.000000002  -0.000000180

   34    1.1  2.0 -1.0  -0.513001449   0.508418946   0.000000006   0.000000002  -0.059200441  -0.090411788   0.000000323   0.042215066
                        -0.000013092   0.000003909  -0.000000006   0.000000000   0.000000803   0.000001457  -0.000000082   0.000000149

   35    2.1  2.0 -1.0   0.000000016   0.000000008  -0.158896027  -0.148328645   0.000000003   0.000000004   0.000119644   0.000000011
                         0.000000067   0.000000000   0.376050325   0.189868907   0.000000004   0.000000004   0.000493883   0.000013000

   36    3.1  2.0 -1.0   0.000000017   0.000000003  -0.376051638  -0.395968581  -0.000000004  -0.000000004   0.000027950   0.000013072
                        -0.000000006   0.000000007  -0.158896580  -0.309336991   0.000000006   0.000000004  -0.000006782  -0.000000002

   37    1.1  2.0 -2.0  -0.000000025   0.000000001  -0.376065507  -0.292926364  -0.000000004  -0.000000004   0.000488834  -0.000000072
                         0.000000005   0.000000008  -0.158902439  -0.228838768   0.000000005   0.000000004  -0.000118408  -0.000000008

   38    2.1  2.0 -2.0  -0.000004737   0.000001650  -0.000000009  -0.000000007  -0.000006526  -0.000007569  -0.000000062  -0.000000182
                         0.185573635  -0.214653399   0.000000003  -0.000000003  -0.481905342  -0.469674826  -0.000000269   0.042222555

   39    3.1  2.0 -2.0   0.070929944  -0.039566516  -0.000000005   0.000000002   0.511501423   0.514878068  -0.000000269   0.042248052
                         0.000001809  -0.000000304  -0.000000006  -0.000000007  -0.000006928  -0.000008298   0.000000062   0.000000182


   Nr   State  S   Sz       33            34            35            36            37            38            39

    1    1.1  1.0  1.0  -0.004132204   0.000393997  -0.000041231  -0.001875751   0.000157409  -0.002039632   0.000187587
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.0  1.0   0.000375267   0.004263274  -0.000210601   0.000170696   0.001679545   0.000185904   0.002070605
                        -0.000000026  -0.000528603  -0.000016967  -0.000000036   0.000258189   0.000000044   0.000146349

    3    3.1  1.0  1.0   0.000048399   0.000470699  -0.001881956   0.000022011   0.000391404   0.000023851  -0.000086318
                         0.000000008   0.004124881   0.000104282  -0.000000320  -0.002006108   0.000000020  -0.001141717

    4    4.1  1.0  1.0   0.516378888   0.008342192  -0.000029575  -0.494420380  -0.008923750  -0.474037994  -0.010295018
                        -0.000000645  -0.001976807   0.000217635   0.000002422  -0.002652979  -0.000000597  -0.001361366

    5    5.1  1.0  1.0   0.000022944   0.117737371   0.497406743  -0.000042739  -0.133678972  -0.000029525  -0.035587076
                        -0.000000338   0.502779017  -0.026720744   0.000085994   0.454977361   0.000000171   0.271789304

    6    6.1  1.0  1.0   0.009438976  -0.464135424  -0.000477685  -0.008961108   0.492915796  -0.008506250   0.570813237
                         0.000002912   0.108673420  -0.007182738   0.000000012   0.144840850   0.000012309   0.074912302

    7    1.1  1.0  0.0  -0.000540734  -0.000000007   0.000141315  -0.000000000  -0.000000004   0.000213914   0.001640862
                         0.000000001  -0.000000031   0.002630724  -0.000057839   0.000000015   0.000000000   0.000215490

    8    2.1  1.0  0.0  -0.006041284  -0.000000037  -0.000012859  -0.000000001  -0.000000032   0.002380220  -0.000149827
                         0.000000012  -0.000000158  -0.000239392  -0.000294147   0.000000111   0.000000003  -0.000019676

    9    3.1  1.0  0.0   0.000682927  -0.000000413  -0.000001658  -0.000000012  -0.000000143  -0.000269093  -0.000019119
                        -0.000000001  -0.000001760  -0.000030872  -0.002647823   0.000000488  -0.000000000  -0.000002511

   10    4.1  1.0  0.0  -0.012343416   0.000000068   0.037221596   0.000000018   0.000000134  -0.013054018   0.401900581
                         0.000000025   0.000000289   0.692919934  -0.000058111  -0.000000456  -0.000000017   0.052780602

   11    5.1  1.0  0.0   0.000122148  -0.000050441   0.000003250   0.000003094   0.000032189   0.000132714   0.000015804
                        -0.000000000  -0.000215236   0.000060165   0.699268637  -0.000109475   0.000000000   0.000002075

   12    6.1  1.0  0.0   0.674005176  -0.000000928   0.000674718  -0.000000000  -0.000004925   0.726679975   0.007149713
                        -0.000001340  -0.000003959   0.012560605  -0.000128787   0.000016750   0.000000965   0.000938954

   13    1.1  1.0 -1.0   0.004132204   0.000352973  -0.000040994  -0.001875751   0.000132358   0.002039632  -0.000181226
                        -0.000000016  -0.000175053   0.000004417   0.000000017   0.000085200   0.000000005  -0.000048435

   14    2.1  1.0 -1.0  -0.000375267   0.004054231  -0.000207571   0.000170696   0.001551997  -0.000185904  -0.002038180
                        -0.000000025  -0.001420612   0.000039430   0.000000035   0.000691981   0.000000044  -0.000393247

   15    3.1  1.0 -1.0  -0.000048399  -0.001410999  -0.001882298   0.000022011  -0.000756725  -0.000023851   0.000378185
                         0.000000008  -0.003904521   0.000097923   0.000000320   0.001898692   0.000000020  -0.001080715

   16    4.1  1.0 -1.0  -0.516378888   0.008351882  -0.000052718  -0.494420380  -0.008939515   0.474037994   0.010297431
                         0.000001409  -0.001935464  -0.000213189   0.000001953  -0.002599361   0.000000662   0.001342989

   17    5.1  1.0 -1.0  -0.000022944  -0.117906735   0.497406908  -0.000042740   0.133859620   0.000029525  -0.035796142
                        -0.000000339  -0.502739326  -0.026717684  -0.000086020  -0.454924245   0.000000171   0.271761848

   18    6.1  1.0 -1.0  -0.009438977  -0.464092272   0.000294515  -0.008961107   0.492866378   0.008506250  -0.570800023
                         0.000002950   0.108857555   0.007192578   0.000000067   0.145008923   0.000012331  -0.075012923

   19    1.1  0.0  0.0  -0.000000000   0.000000025   0.001454031  -0.000002274   0.000000600  -0.000000000  -0.000105484
                        -0.000000023  -0.000000006  -0.000078106  -0.000000000   0.000000177   0.000000517   0.000803214

   20    2.1  0.0  0.0  -0.000000000   0.000004017   0.000002787   0.001663498   0.000097215  -0.000000000   0.000000055
                        -0.000000069  -0.000000941  -0.000000150  -0.000000007   0.000028584   0.000001712  -0.000000422

   21    3.1  0.0  0.0   0.000000000  -0.000065869   0.000000696   0.000101483  -0.001593605   0.000000000  -0.000000042
                         0.000000203   0.000015436  -0.000000037  -0.000000000  -0.000468568  -0.000004992   0.000000319

   22    4.1  0.0  0.0   0.000000000  -0.000000001   0.000809655  -0.000001730  -0.000000044   0.000000000   0.000189414
                         0.000000026   0.000000000  -0.000043492  -0.000000000  -0.000000013  -0.000000510  -0.001442301

   23    5.1  0.0  0.0   0.000000000   0.000000201   0.000000205   0.000001406   0.000004881   0.000000002  -0.000000091
                         0.000067913  -0.000000047  -0.000000011  -0.000000000   0.000001435  -0.001664039   0.000000690

   24    6.1  0.0  0.0  -0.000000000  -0.000000002  -0.000000579   0.000000000   0.000000000   0.000000000  -0.000006629
                        -0.000000002   0.000000000   0.000000031   0.000000000   0.000000000  -0.000000014   0.000050475

   25    1.1  2.0  2.0   0.000000825  -0.002876478   0.002343088  -0.000014877  -0.082407960  -0.000014618  -0.073387166
                         0.000000027   0.000674101   0.043619011  -0.000002066  -0.024230390  -0.000002070  -0.009637709

   26    2.1  2.0  2.0  -0.000000051   0.000002607   0.000007367   0.000000209   0.000001246  -0.000000033   0.000001697
                        -0.043892014   0.000012346   0.000001673   0.042749465  -0.000007757   0.041033620  -0.000012756

   27    3.1  2.0  2.0   0.043918478  -0.000012353  -0.000001674  -0.042773996   0.000007762  -0.041057105   0.000012763
                        -0.000000051   0.000002608   0.000007371   0.000000209   0.000001246  -0.000000033   0.000001698

   28    1.1  2.0  1.0  -0.040909286   0.000012989  -0.000001674  -0.042735533   0.000007001  -0.044870136   0.000012585
                         0.000000010  -0.000002788   0.000007376   0.000000177   0.000000936  -0.000000075   0.000001685

   29    2.1  2.0  1.0   0.000000251   0.009344405   0.041735430  -0.000002068   0.012666175   0.000001077   0.009785260
                         0.000001493   0.039873396  -0.002241917  -0.000007448  -0.043077934  -0.000029390  -0.074510648

   30    3.1  2.0  1.0  -0.000000669  -0.042749169   0.004588122  -0.000007440  -0.039397017   0.000014768   0.001077002
                         0.000000278   0.010018339   0.085412478  -0.000004137  -0.011583910  -0.000000995   0.000141450

   31    1.1  2.0  0.0   0.000000000   0.067403880  -0.000000027  -0.000000005  -0.003000254   0.000000000  -0.000000003
                        -0.000000432  -0.015796158   0.000000001   0.000000000  -0.000882166  -0.000000066   0.000000024

   32    2.1  2.0  0.0  -0.000000062  -0.000000175  -0.000017794   0.000000002   0.000002467   0.000000142  -0.000004070
                        -0.031026209   0.000000041   0.000000956  -0.000000000   0.000000725  -0.106838871   0.000030992

   33    3.1  2.0  0.0   0.000000000   0.000011101  -0.000005059  -0.104765534   0.000017054   0.000000000  -0.000000009
                        -0.000000084  -0.000002602   0.000000274   0.000000463   0.000005014  -0.000000004   0.000000070

   34    1.1  2.0 -1.0  -0.040909286  -0.000012875   0.000002455   0.042735533  -0.000006394  -0.044870136   0.000012593
                         0.000000152   0.000003273   0.000007152  -0.000000201  -0.000003003  -0.000000044   0.000001621

   35    2.1  2.0 -1.0   0.000000251   0.009344330  -0.041735432   0.000002068   0.012666250   0.000001076  -0.009785334
                        -0.000001493   0.039873413   0.002241890  -0.000007446  -0.043077912   0.000029390   0.074510638

   36    3.1  2.0 -1.0  -0.000000669   0.042749184   0.004588086   0.000007444   0.039397014   0.000014768   0.001077005
                        -0.000000278  -0.010018275   0.085412480  -0.000004137   0.011583918   0.000000995   0.000141430

   37    1.1  2.0 -2.0  -0.000000825  -0.002876476  -0.002343079  -0.000014879  -0.082407937   0.000014618   0.073387154
                         0.000000027   0.000674109  -0.043619012   0.000002066  -0.024230468  -0.000002070   0.009637797

   38    2.1  2.0 -2.0  -0.000000124  -0.000003150   0.000007143  -0.000000169  -0.000003151  -0.000000076   0.000001654
                        -0.043892014  -0.000012219  -0.000002453  -0.042749465   0.000007197   0.041033620  -0.000012761

   39    3.1  2.0 -2.0  -0.043918478  -0.000012226  -0.000002454  -0.042773996   0.000007201   0.041057105  -0.000012768
                         0.000000124   0.000003152  -0.000007147   0.000000169   0.000003153   0.000000076  -0.000001655


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.0  1.0  23.080%  22.925%   0.343%   0.101%   0.133%  24.793%  24.977%   0.008%   0.125%   0.005%
    2    2.1  1.0  1.0   0.174%   0.013%  18.278%  12.833%  22.908%   0.205%   0.008%  24.985%  14.953%   0.539%
    3    3.1  1.0  1.0   0.009%   0.562%   0.854%  29.411%  23.432%   0.000%   0.294%  24.702%  15.074%   2.285%
    4    4.1  1.0  1.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
    5    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.001%   0.004%   0.000%
    6    6.1  1.0  1.0   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.004%   0.000%
    7    1.1  1.0  0.0   0.179%   1.434%  53.150%   7.073%   0.058%   0.399%   0.017%   0.000%  29.901%   1.259%
    8    2.1  1.0  0.0   1.779%  42.737%   0.869%   1.235%   0.023%  49.310%   0.266%   0.002%   0.247%   0.010%
    9    3.1  1.0  0.0  44.549%   1.864%   0.065%   0.036%   0.006%   0.268%  49.132%   0.580%   0.004%   0.000%
   10    4.1  1.0  0.0   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%
   11    5.1  1.0  0.0   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   12    6.1  1.0  0.0   0.000%   0.002%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0  23.080%  22.925%   0.343%   0.101%   0.133%  24.793%  24.977%   0.008%   0.125%   0.005%
   14    2.1  1.0 -1.0   0.174%   0.013%  18.278%  12.833%  22.908%   0.205%   0.008%  24.985%  14.953%   0.539%
   15    3.1  1.0 -1.0   0.009%   0.562%   0.854%  29.411%  23.432%   0.000%   0.294%  24.702%  15.074%   2.285%
   16    4.1  1.0 -1.0   0.001%   0.001%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%
   17    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.001%   0.004%   0.000%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.001%   0.004%   0.000%
   19    1.1  0.0  0.0   0.000%   0.126%   0.180%   6.624%   0.003%   0.000%   0.000%   0.000%   0.000%  93.007%
   20    2.1  0.0  0.0   6.831%   0.055%   0.006%   0.002%   0.038%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.038%   0.000%   0.007%   0.002%   6.885%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.008%   0.001%   6.730%   0.188%   0.005%   0.000%   0.000%   0.000%   0.000%   0.061%
   23    5.1  0.0  0.0   0.055%   6.750%   0.009%   0.116%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.523%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.001%   0.009%   0.010%   0.000%   0.000%   0.000%   0.000%   0.001%
   26    2.1  2.0  2.0   0.003%   0.003%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   27    3.1  2.0  2.0   0.003%   0.003%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   28    1.1  2.0  1.0   0.003%   0.003%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   29    2.1  2.0  1.0   0.000%   0.000%   0.010%   0.000%   0.003%   0.000%   0.000%   0.003%   0.000%   0.000%
   30    3.1  2.0  1.0   0.000%   0.000%   0.004%   0.006%   0.003%   0.000%   0.000%   0.003%   0.000%   0.001%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.015%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.016%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.003%   0.003%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   35    2.1  2.0 -1.0   0.000%   0.000%   0.010%   0.000%   0.003%   0.000%   0.000%   0.003%   0.000%   0.000%
   36    3.1  2.0 -1.0   0.000%   0.000%   0.004%   0.006%   0.003%   0.000%   0.000%   0.003%   0.000%   0.001%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.001%   0.009%   0.010%   0.000%   0.000%   0.000%   0.000%   0.001%
   38    2.1  2.0 -2.0   0.003%   0.003%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%
   39    3.1  2.0 -2.0   0.003%   0.003%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.0  1.0   0.014%   1.694%   1.718%   0.038%   0.013%   0.000%   0.005%   0.005%   0.000%   0.009%
    2    2.1  1.0  1.0   1.751%   0.038%   0.014%   1.694%   1.574%   0.005%   0.000%   0.000%   0.012%   0.000%
    3    3.1  1.0  1.0   0.024%   0.006%   0.000%   1.726%   1.587%   0.005%   0.000%   0.000%   0.003%   0.000%
    4    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.296%   0.298%   0.000%   0.549%
    5    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.296%   0.000%   0.000%   0.178%   0.000%
    6    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.306%   0.000%   0.000%   0.746%   0.000%
    7    1.1  1.0  0.0   3.321%   0.001%   0.027%   0.000%   3.149%   0.000%   0.000%   0.000%   0.006%   0.000%
    8    2.1  1.0  0.0   0.027%   0.043%   3.392%   0.000%   0.026%   0.000%   0.010%   0.000%   0.000%   0.018%
    9    3.1  1.0  0.0   0.000%   3.407%   0.044%   0.012%   0.000%   0.000%   0.000%   0.010%   0.000%   0.000%
   10    4.1  1.0  0.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.373%   0.000%
   11    5.1  1.0  0.0   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.596%   0.000%   0.000%
   12    6.1  1.0  0.0   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.612%   0.000%   0.000%   1.115%
   13    1.1  1.0 -1.0   0.014%   1.694%   1.718%   0.038%   0.013%   0.000%   0.005%   0.005%   0.000%   0.009%
   14    2.1  1.0 -1.0   1.751%   0.038%   0.014%   1.694%   1.574%   0.005%   0.000%   0.000%   0.012%   0.000%
   15    3.1  1.0 -1.0   0.024%   0.006%   0.000%   1.726%   1.587%   0.005%   0.000%   0.000%   0.003%   0.000%
   16    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.296%   0.298%   0.000%   0.549%
   17    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.296%   0.000%   0.000%   0.178%   0.000%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.306%   0.000%   0.000%   0.746%   0.000%
   19    1.1  0.0  0.0   0.061%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%  93.067%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.001%   0.000%  93.067%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0  93.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%  93.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%  90.475%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%  24.251%   0.000%
   26    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.761%  14.818%   0.000%   8.204%
   27    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.761%  14.818%   0.000%   8.205%
   28    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.871%  14.819%   0.000%   8.086%
   29    2.1  2.0  1.0   0.001%   0.000%   0.000%   0.000%   0.000%  14.871%   0.000%   0.000%  24.618%   0.000%
   30    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.761%   0.000%   0.000%   0.001%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  39.511%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   9.988%   0.000%   0.000%  48.756%
   33    3.1  2.0  0.0   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   9.878%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.871%  14.819%   0.000%   8.086%
   35    2.1  2.0 -1.0   0.001%   0.000%   0.000%   0.000%   0.000%  14.871%   0.000%   0.000%  24.618%   0.000%
   36    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.761%   0.000%   0.000%   0.001%   0.000%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%  24.251%   0.000%
   38    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.761%  14.818%   0.000%   8.204%
   39    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.761%  14.818%   0.000%   8.205%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.0  1.0   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.0  1.0   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.0  1.0   0.009%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0   0.000%   0.548%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.0  1.0   0.549%   0.000%   0.552%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.0  1.0   0.557%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.1  1.0  0.0   0.000%   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0   0.000%   0.000%   1.087%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0   0.000%   1.095%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.1  1.0 -1.0   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.009%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0   0.000%   0.548%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    5.1  1.0 -1.0   0.549%   0.000%   0.552%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    6.1  1.0 -1.0   0.557%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0  32.582%   0.000%   8.331%   2.850%   0.000%   0.000%  16.668%  13.817%   0.000%   0.000%
   26    2.1  2.0  2.0   0.000%   8.147%   0.000%   0.000%   3.444%   4.608%   0.000%   0.000%  23.223%  22.059%
   27    3.1  2.0  2.0   0.000%   8.148%   0.000%   0.000%   0.503%   0.157%   0.000%   0.000%  26.163%  26.510%
   28    1.1  2.0  1.0   0.000%   8.148%   0.000%   0.000%  26.317%  25.849%   0.000%   0.000%   0.350%   0.817%
   29    2.1  2.0  1.0   8.087%   0.000%   7.965%  20.861%   0.000%   0.000%  16.666%   5.805%   0.000%   0.000%
   30    3.1  2.0  1.0   8.205%   0.000%  32.589%   1.419%   0.000%   0.000%  16.666%  25.248%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%  49.741%   0.000%   0.000%   0.000%  10.259%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%  39.472%   0.000%   0.000%   0.000%   0.526%   0.000%
   33    3.1  2.0  0.0   0.000%  48.885%   0.000%   0.000%   0.000%  38.774%   0.000%   0.000%   0.000%   1.226%
   34    1.1  2.0 -1.0   0.000%   8.148%   0.000%   0.000%  26.317%  25.849%   0.000%   0.000%   0.350%   0.817%
   35    2.1  2.0 -1.0   8.087%   0.000%   7.965%  20.861%   0.000%   0.000%  16.666%   5.805%   0.000%   0.000%
   36    3.1  2.0 -1.0   8.205%   0.000%  32.589%   1.419%   0.000%   0.000%  16.666%  25.248%   0.000%   0.000%
   37    1.1  2.0 -2.0  32.582%   0.000%   8.331%   2.850%   0.000%   0.000%  16.668%  13.817%   0.000%   0.000%
   38    2.1  2.0 -2.0   0.000%   8.147%   0.000%   0.000%   3.444%   4.608%   0.000%   0.000%  23.223%  22.059%
   39    3.1  2.0 -2.0   0.000%   8.148%   0.000%   0.000%   0.503%   0.157%   0.000%   0.000%  26.163%  26.510%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39

    1    1.1  1.0  1.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.0  1.0   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.0  1.0   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0   0.005%  24.691%  26.665%   0.007%   0.000%  24.445%   0.009%  22.471%   0.011%
    5    5.1  1.0  1.0  16.939%   0.000%   0.000%  26.665%  24.813%   0.000%  22.487%   0.000%   7.514%
    6    6.1  1.0  1.0  16.083%   0.008%   0.009%  22.723%   0.005%   0.008%  26.394%   0.007%  33.144%
    7    1.1  1.0  0.0   0.006%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    9    3.1  1.0  0.0   0.000%   0.004%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0  33.914%   0.000%   0.015%   0.000%  48.152%   0.000%   0.000%   0.017%  16.431%
   11    5.1  1.0  0.0   0.000%  49.407%   0.000%   0.000%   0.000%  48.898%   0.000%   0.000%   0.000%
   12    6.1  1.0  0.0   0.011%   0.000%  45.428%   0.000%   0.016%   0.000%   0.000%  52.806%   0.005%
   13    1.1  1.0 -1.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.1  1.0 -1.0   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.003%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0   0.005%  24.691%  26.665%   0.007%   0.000%  24.445%   0.009%  22.471%   0.011%
   17    5.1  1.0 -1.0  16.939%   0.000%   0.000%  26.665%  24.813%   0.000%  22.487%   0.000%   7.514%
   18    6.1  1.0 -1.0  16.083%   0.008%   0.009%  22.723%   0.005%   0.008%  26.394%   0.007%  33.144%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.001%   0.191%   0.000%   0.738%   0.000%   0.548%
   26    2.1  2.0  2.0   0.000%   0.178%   0.193%   0.000%   0.000%   0.183%   0.000%   0.168%   0.000%
   27    3.1  2.0  2.0   0.000%   0.178%   0.193%   0.000%   0.000%   0.183%   0.000%   0.169%   0.000%
   28    1.1  2.0  1.0   0.000%   0.178%   0.167%   0.000%   0.000%   0.183%   0.000%   0.201%   0.000%
   29    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.168%   0.175%   0.000%   0.202%   0.000%   0.565%
   30    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.193%   0.732%   0.000%   0.169%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.479%   0.000%   0.000%   0.001%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.096%   0.000%   0.000%   0.000%   0.000%   1.141%   0.000%
   33    3.1  2.0  0.0   0.000%   0.119%   0.000%   0.000%   0.000%   1.098%   0.000%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.178%   0.167%   0.000%   0.000%   0.183%   0.000%   0.201%   0.000%
   35    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.168%   0.175%   0.000%   0.202%   0.000%   0.565%
   36    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.193%   0.732%   0.000%   0.169%   0.000%   0.000%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.001%   0.191%   0.000%   0.738%   0.000%   0.548%
   38    2.1  2.0 -2.0   0.000%   0.178%   0.193%   0.000%   0.000%   0.183%   0.000%   0.168%   0.000%
   39    3.1  2.0 -2.0   0.000%   0.178%   0.193%   0.000%   0.000%   0.183%   0.000%   0.169%   0.000%


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

              2       8     2879.85       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     19659.25  16783.41    249.94   1084.16   1519.79     10.31      0.90     10.34
 REAL TIME  *     20149.69 SEC
 DISK USED  *         2.90 GB (local),       82.90 GB (total)
 SF USED    *        13.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -267.806423502253

              CI              CI              CI           MULTI         RHF-SCF
   -267.72922867   -267.86436700   -267.72188040   -266.79116227   -266.72073571
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
