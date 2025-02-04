
 Working directory              : /wrk/irikura/molpro.kDLe8a4OYV/
 Global scratch directory       : /wrk/irikura/molpro.kDLe8a4OYV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.kDLe8a4OYV/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Te SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Te};
 
 basis={
 ecp,te,ECP28MDF;
 spdfgh,te,aug-cc-pwCVQZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
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
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Jan-25          TIME: 10:50:15  
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
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Te   ECP ECP28MDF                 selected for group  1
 Library entry TE     S AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Te S diffuse               selected for group 1    nprim= 1    centre=  0.010    ratio= 3.000    dratio= 1.000
 Library entry TE     P AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Te P diffuse               selected for group 1    nprim= 1    centre=  0.008    ratio= 3.000    dratio= 1.000
 Library entry TE     D AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Te D diffuse               selected for group 1    nprim= 1    centre=  0.018    ratio= 3.000    dratio= 1.000
 Library entry TE     F AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Even tempered Te F diffuse               selected for group 1    nprim= 1    centre=  0.031    ratio= 3.000    dratio= 1.000
 Library entry TE     G AUG-CC-PWCVQZ-PP     selected for orbital group  1
 Library entry TE     H AUG-CC-PWCVQZ-PP     selected for orbital group  1


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

         1 0.109E-05 0.490E-04 0.490E-04 0.490E-04 0.490E-04 0.490E-04 0.508E-03 0.130E-02
         2 0.155E-03 0.155E-03 0.155E-03 0.134E-02 0.134E-02 0.134E-02 0.991E-02 0.991E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     159.384 MB (compressed) written to integral file ( 14.9%)

     Node minimum: 1.573 MB, node maximum: 8.389 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2670576.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2670576      RECORD LENGTH: 524288

 Memory used in sort:       3.23 MW

 SORT1 READ   134353782. AND WROTE      520152. INTEGRALS IN      2 RECORDS. CPU TIME:     0.90 SEC, REAL TIME:     0.93 SEC
 SORT2 READ    13879740. AND WROTE    74805201. INTEGRALS IN    896 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.07 SEC

 Node minimum:     2667444.  Node maximum:     2684340. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.55      3.22
 REAL TIME  *         5.16 SEC
 DISK USED  *        29.89 MB (local),        1.13 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -266.67491685    -266.67491685     0.00D+00     0.69D-01     0     0       0.02      0.04    start
   2     -266.71779789      -0.04288104     0.34D-02     0.44D-02     1     0       0.02      0.06    diag2
   3     -266.72022732      -0.00242942     0.19D-02     0.12D-02     2     0       0.03      0.09    diag2
   4     -266.72066845      -0.00044113     0.35D-03     0.82D-03     3     0       0.02      0.11    diag2
   5     -266.72069314      -0.00002469     0.76D-04     0.23D-03     4     0       0.02      0.13    diag2
   6     -266.72069329      -0.00000015     0.79D-05     0.36D-04     5     0       0.03      0.16    diag2
   7     -266.72069329      -0.00000000     0.96D-06     0.25D-05     6     0       0.02      0.18    diag2
   8     -266.72069329      -0.00000000     0.66D-07     0.53D-06     0     0       0.02      0.20    fixocc

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720693294140
  RHF One-electron energy            -459.057994623491
  RHF Two-electron energy             192.337301329351
  RHF Kinetic energy                  102.493265788551
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602324077022

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45865     1  1  s    1.00152
    2.1     2.00000    -2.27829     1  1  d2-  0.27420    1  1  d1+  0.73881    1  1  d1-  0.58107
    3.1     2.00000    -2.27829     1  1  d0   0.99930
    4.1     2.00000    -2.27829     1  1  d2-  0.89905    1  1  d1- -0.43403
    5.1     2.00000    -2.27829     1  1  d1+  0.31439    1  1  d2+  0.94667
    6.1     2.00000    -2.27829     1  1  d2-  0.34098    1  1  d1+ -0.59631    1  1  d1-  0.68569
    7.1     2.00000    -1.03505     1  2  s    1.01391
    1.2     2.00000    -5.42339     1  1  pz   0.99802
    2.2     2.00000    -5.42339     1  1  py   0.99965
    3.2     2.00000    -5.42339     1  1  px   0.99804
    4.2     1.00000    -0.69091     1  1  px  -0.34669    1  4  px   0.52198    1  5  px   0.54631
    5.2     1.00000    -0.69091     1  1  py  -0.34669    1  4  py   0.52197    1  5  py   0.54631
    6.2     1.00000    -0.69091     1  1  pz  -0.34669    1  4  pz   0.52197    1  5  pz   0.54631


 HOMO      6.2    -0.690911 =     -18.8006eV
 LUMO      8.1    -0.116645 =      -3.1741eV
 LUMO-HOMO         0.574266 =      15.6266eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.52       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.93       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.77      0.22      3.22
 REAL TIME  *         5.42 SEC
 DISK USED  *        32.53 MB (local),        1.20 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     172 (   85   87)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.596D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.910D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.378D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.318D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.639D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 6 4   5 3 2 1 2 4 6 5 3 1   4 6 5 3 2 3 5 4 6 2   8121310 7 9111415 1
                                        3 5 6 4 2 81211 914  151310 7 1 5 3 6 4 2   812151411 9 71310 1   4 6 5 3 2 8121514 7
                                        9111310 1 2 4 6 5 3   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.752D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.392D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.748D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.564D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.564D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 1 2 1   2 3 6 4 5 9 7 810 3   2 110 8 5 4 7 9 6 8  10 5 4 7 9 6 2 1 3 5
                                        4 810 9 7 6 2 1 3 7   9 5 4 6 81016141915  17211312112018 5 4 6   810 7 9 2 3 1 3 2 1
                                        7 9 6 4 510 8 1 3 2   1 3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  1132  ( 15 closed/active, 771 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    1201
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -266.93135433    -266.96475229   -0.03339796    0.22524211 0.00001575 0.00000000  0.19E+00      0.56
   2    8   14    0   -266.96588452    -266.96600031   -0.00011579    0.01258652 0.00000013 0.00000000  0.12E-01      1.26
   3   16   32    0   -266.96600058    -266.96600058   -0.00000000    0.00004794 0.00000001 0.00000000  0.40E-04      1.98

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.39E-08)
                       Final energy:   -266.96600058
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.999084527978
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67474213
 One electron energy                          -466.60003244
 Two electron energy                           199.60094791
 Virial ratio                                    3.60043589
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.999084527871
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67474213
 One electron energy                          -466.60003245
 Two electron energy                           199.60094792
 Virial ratio                                    3.60043589
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.999084527838
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67474213
 One electron energy                          -466.60003245
 Two electron energy                           199.60094793
 Virial ratio                                    3.60043589
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.956154311487
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67474213
 One electron energy                          -466.60003244
 Two electron energy                           199.64387813
 Virial ratio                                    3.60001777
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.956154311485
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67474213
 One electron energy                          -466.60003244
 Two electron energy                           199.64387813
 Virial ratio                                    3.60001777
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.956154311425
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67474213
 One electron energy                          -466.60003245
 Two electron energy                           199.64387814
 Virial ratio                                    3.60001777
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.956154311408
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67474213
 One electron energy                          -466.60003245
 Two electron energy                           199.64387814
 Virial ratio                                    3.60001777
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.956154311393
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67474213
 One electron energy                          -466.60003246
 Two electron energy                           199.64387815
 Virial ratio                                    3.60001777
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.915980099673
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66447226
 One electron energy                          -466.47506381
 Two electron energy                           199.55908371
 Virial ratio                                    3.59988655
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     3.955852960404
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     0.044147039596
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.660162760135
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.339837239865
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.383984279461
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.616015720539
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 5 3 2 6 1 1 6 2   4 3 5 1 4 2 3 5 6 1   6 4 3 5 2 3 5 6 4 2   812131011 7 91415 1
                                        3 5 4 6 2 91310 812  1415 711 1 5 3 4 2 6   913101415 812 711 1   4 2 5 3 6 913101415
                                        812 711 1 2 4 6 3 5   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 2 3 1 2   3 1 5 6 810 7 9 4 2   3 1 5 810 4 6 9 7 4   810 9 7 5 6 2 3 1 4
                                        9 7 810 6 5 1 3 2 4   9 7 810 6 511201815  17141621131912 4 9 7   810 6 5 1 3 2 1 3 2
                                        5 9 7 4 6 810 3 2 1   3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.13714     1  1  s    1.00238
    2.1     2.00000    -1.95761     1  1  d1+  1.00011
    3.1     2.00000    -1.95761     1  1  d2+  1.00011
    4.1     2.00000    -1.95761     1  1  d2-  1.00011
    5.1     2.00000    -1.95761     1  1  d0   1.00011
    6.1     2.00000    -1.95761     1  1  d1-  1.00011
    7.1     1.99350    -0.74952     1  2  s    1.00092
    1.2     2.00000    -5.10253     1  1  px   0.99974
    2.2     2.00000    -5.10253     1  1  pz   0.99974
    3.2     2.00000    -5.10253     1  1  py   0.99974
    4.2     1.33550    -0.24256     1  1  py  -0.32164    1  4  py   0.42158    1  5  py   0.52073
    5.2     1.33550    -0.24256     1  1  pz  -0.32164    1  4  pz   0.42158    1  5  pz   0.52073
    6.2     1.33550    -0.24256     1  1  px  -0.32164    1  4  px   0.42158    1  5  px   0.52073
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa         -0.00000000      0.00000000      1.00000000
 2 a2a          0.00000000      1.00000000      0.00000000
 2 aa2          1.00000000      0.00000000      0.00000000
 
 Energy:     -266.99908453   -266.99908453   -266.99908453
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 220         -0.08577785      0.00000000      0.00000000     -0.00000000      0.81197834      0.56884555
 2 022          0.74608280     -0.00000000      0.00000000      0.00000000     -0.33170337      0.56884555
 2 2ba          0.00000000     -0.00000000      0.00000000     -0.70710678      0.00000000     -0.00000000
 2 2ab         -0.00000000      0.00000000     -0.00000000      0.70710678     -0.00000000      0.00000000
 2 a2b         -0.00000000      0.00000000      0.70710678      0.00000000     -0.00000000     -0.00000000
 2 ba2         -0.00000000     -0.70710678     -0.00000000      0.00000000     -0.00000000      0.00000000
 2 b2a          0.00000000     -0.00000000     -0.70710678     -0.00000000      0.00000000      0.00000000
 2 ab2          0.00000000      0.70710678      0.00000000     -0.00000000      0.00000000     -0.00000000
 2 202         -0.66030494      0.00000000     -0.00000000     -0.00000000     -0.48027497      0.56884555
 0 222         -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.17100944
 
 Energy:     -266.95615431   -266.95615431   -266.95615431   -266.95615431   -266.95615431   -266.91598010
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.23       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.63       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         5.56      1.78      0.22      3.22
 REAL TIME  *         7.91 SEC
 DISK USED  *        49.96 MB (local),        1.67 GB (total)
 SF USED    *        45.86 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9990845   2.0
    -266.9990845   2.0
    -266.9990845   2.0
    -266.9561543   6.0
    -266.9561543   6.0
    -266.9561543   6.0
    -266.9561543   6.0
    -266.9561543   6.0
    -266.9159801   0.0
                                                  


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
 Number of external orbitals:     172 (  85  87 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99908453
     2      -266.99908453
     3      -266.99908453

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         48522
 Number of doubly external configurations:       3640884
 Total number of contracted configurations:      3689442
 Total number of uncontracted configurations:   11762091

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1071149 words, CPU-time:      0.63 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99908453     0.00000000    -1.09684508  0.35D-01  0.14D+00     0.78
    1     2     2     1.00000000     0.00000000  -266.99908453     0.00000000    -1.09681660  0.34D-01  0.14D+00     0.78
    1     3     3     1.00000000     0.00000000  -266.99908453     0.00000000    -1.09664455  0.34D-01  0.14D+00     0.78
    2     1     1     1.11031382    -0.86824069  -267.86732522    -0.86824069    -0.02704725  0.30D-02  0.27D-02    10.10
    2     2     2     1.11042420    -0.86812750  -267.86721203    -0.86812750    -0.02717674  0.30D-02  0.27D-02    10.10
    2     3     3     1.11045966    -0.86811534  -267.86719986    -0.86811534    -0.02717393  0.30D-02  0.27D-02    10.10
    3     1     1     1.09490870    -0.89367640  -267.89276093    -0.02543571    -0.00040055  0.39D-04  0.48D-04    19.30
    3     2     2     1.09490654    -0.89367426  -267.89275879    -0.02554676    -0.00040268  0.40D-04  0.48D-04    19.30
    3     3     3     1.09491515    -0.89367195  -267.89275648    -0.02555661    -0.00040542  0.40D-04  0.48D-04    19.30
    4     1     1     1.09395158    -0.89408326  -267.89316778    -0.00040685    -0.00001018  0.17D-05  0.10D-05    28.43
    4     2     2     1.09395030    -0.89408325  -267.89316778    -0.00040899    -0.00001019  0.17D-05  0.10D-05    28.43
    4     3     3     1.09395157    -0.89408313  -267.89316765    -0.00041118    -0.00001031  0.17D-05  0.10D-05    28.43
    5     1     1     1.09391602    -0.89409401  -267.89317854    -0.00001075    -0.00000029  0.25D-07  0.39D-07    37.52
    5     2     2     1.09391596    -0.89409401  -267.89317854    -0.00001076    -0.00000029  0.25D-07  0.40D-07    37.52
    5     3     3     1.09391607    -0.89409401  -267.89317853    -0.00001088    -0.00000030  0.25D-07  0.40D-07    37.52
    6     1     1     1.09391004    -0.89409432  -267.89317885    -0.00000031    -0.00000001  0.12D-08  0.11D-08    46.59
    6     2     2     1.09391005    -0.89409432  -267.89317885    -0.00000031    -0.00000001  0.12D-08  0.11D-08    46.59
    6     3     3     1.09391002    -0.89409432  -267.89317885    -0.00000031    -0.00000001  0.12D-08  0.11D-08    46.59


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.2%
 P   0.6%  14.5%  14.0%

 Initialization:   1.5%
 Other:           69.2%

 Total CPU:       46.6 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/          -0.0000000   0.0000000   0.9561108
 2222222222//2           0.9561108   0.0000000  -0.0000000
 22222222222//           0.0000000   0.9561108   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.956111   -0.000000    0.000000
 2           0.000000    0.000000    0.956111
 3          -0.000000    0.956111    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956111    0.000000   -0.000000
 2           0.000000    0.956111   -0.000000
 3          -0.000000   -0.000000    0.956111


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95611084 (fixed)   0.95611084 (relaxed)   0.95611084 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00002651   -0.78273864
 Singles      0.01133957   -0.03784883   -0.04386925
 Pairs        0.08257088   -0.00000000   -0.06748643
 Total        1.09391485   -0.03787534   -0.89409432
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99908453
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51280496
 One electron energy                 -466.28075417
 Two electron energy                  198.38757532
 Virial quotient                       -2.58801970
 Correlation energy                    -0.89409432
 !MRCI STATE 1.1 Energy              -267.893178846025

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97714758 (Davidson, fixed reference)
 Cluster corrected energies          -267.97714758 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97714758 (Davidson, rotated reference)

 Cluster corrected energies          -267.97579722 (Pople, fixed reference)
 Cluster corrected energies          -267.97579722 (Pople, relaxed reference)
 Cluster corrected energies          -267.97579722 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95611084 (fixed)   0.95611084 (relaxed)   0.95611084 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00002651   -0.00002782
 Singles      0.01133963   -0.03784888   -0.04386930
 Pairs        0.08257083   -0.85621893   -0.85019720
 Total        1.09391486   -0.89409432   -0.89409432
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99908453
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51280390
 One electron energy                 -466.28075403
 Two electron energy                  198.38757519
 Virial quotient                       -2.58801973
 Correlation energy                    -0.89409432
 !MRCI STATE 2.1 Energy              -267.893178845995

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97714758 (Davidson, fixed reference)
 Cluster corrected energies          -267.97714758 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97714758 (Davidson, rotated reference)

 Cluster corrected energies          -267.97579723 (Pople, fixed reference)
 Cluster corrected energies          -267.97579723 (Pople, relaxed reference)
 Cluster corrected energies          -267.97579723 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95611085 (fixed)   0.95611085 (relaxed)   0.95611085 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00002651   -0.78273869
 Singles      0.01133957   -0.03784879   -0.04386924
 Pairs        0.08257086   -0.00000000   -0.06748639
 Total        1.09391482   -0.03787530   -0.89409432
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99908453
 Nuclear energy                         0.00000000
 Kinetic energy                       103.51280549
 One electron energy                 -466.28075582
 Two electron energy                  198.38757698
 Virial quotient                       -2.58801969
 Correlation energy                    -0.89409432
 !MRCI STATE 3.1 Energy              -267.893178845954

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.97714756 (Davidson, fixed reference)
 Cluster corrected energies          -267.97714756 (Davidson, relaxed reference)
 Cluster corrected energies          -267.97714756 (Davidson, rotated reference)

 Cluster corrected energies          -267.97579720 (Pople, fixed reference)
 Cluster corrected energies          -267.97579720 (Pople, relaxed reference)
 Cluster corrected energies          -267.97579720 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.23       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       87.54       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        53.46     47.87      1.78      0.22      3.22
 REAL TIME  *        61.61 SEC
 DISK USED  *       135.87 MB (local),        4.02 GB (total)
 SF USED    *       858.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -267.97714758  AU                              
 SETTING HLSDIAG(2)     =      -267.97714758  AU                              
 SETTING HLSDIAG(3)     =      -267.97714756  AU                              


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
 Number of external orbitals:     172 (  85  87 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95615431
     2      -266.95615431
     3      -266.95615431
     4      -266.95615431
     5      -266.95615431
     6      -266.91598010

 Number of blocks in overlap matrix:   684   Smallest eigenvalue:  0.21D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         41976
 Number of doubly external configurations:       6114282
 Total number of contracted configurations:      6156307
 Total number of uncontracted configurations:   10016476

 Diagonal Coupling coefficients finished.               Storage:    441505 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1161781 words, CPU-time:      1.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95615431     0.00000000    -1.09880371  0.37D-01  0.14D+00     1.30
    1     2     2     1.00000000     0.00000000  -266.95615431    -0.00000000    -1.09968032  0.37D-01  0.14D+00     1.30
    1     3     3     1.00000000     0.00000000  -266.95615431     0.00000000    -1.10052718  0.37D-01  0.14D+00     1.30
    1     4     4     1.00000000     0.00000000  -266.95615431     0.00000000    -1.10029804  0.37D-01  0.14D+00     1.30
    1     5     5     1.00000000     0.00000000  -266.95615431     0.00000000    -1.09691467  0.37D-01  0.14D+00     1.30
    1     6     6     1.00000000     0.00000000  -266.91598010    -0.00000000    -1.07386628  0.80D-02  0.15D+00     1.30
    2     1     1     1.11144481    -0.87617002  -267.83232433    -0.87617002    -0.02592474  0.31D-02  0.23D-02    31.84
    2     2     2     1.11139600    -0.87591995  -267.83207426    -0.87591995    -0.02624903  0.30D-02  0.24D-02    31.84
    2     3     3     1.11161771    -0.87579158  -267.83194589    -0.87579158    -0.02637364  0.29D-02  0.24D-02    31.84
    2     4     4     1.11172091    -0.87549126  -267.83164557    -0.87549126    -0.02675928  0.30D-02  0.25D-02    31.84
    2     5     5     1.11185272    -0.87544368  -267.83159799    -0.87544368    -0.02678801  0.31D-02  0.25D-02    31.84
    2     6     6     1.10416882    -0.87432003  -267.79030013    -0.87432003    -0.01990108  0.13D-02  0.23D-02    31.84
    3     1     1     1.09804873    -0.90019671  -267.85635102    -0.02402669    -0.00053459  0.50D-04  0.70D-04    61.74
    3     2     2     1.09802362    -0.90019234  -267.85634665    -0.02427238    -0.00053947  0.51D-04  0.70D-04    61.74
    3     3     3     1.09806336    -0.90018605  -267.85634037    -0.02439447    -0.00054700  0.50D-04  0.72D-04    61.74
    3     4     4     1.09805871    -0.90018341  -267.85633772    -0.02469215    -0.00054950  0.51D-04  0.72D-04    61.74
    3     5     5     1.09801039    -0.90018084  -267.85633515    -0.02473716    -0.00055329  0.54D-04  0.72D-04    61.74
    3     6     6     1.09468975    -0.89345153  -267.80943163    -0.01913150    -0.00030975  0.20D-04  0.48D-04    61.74
    4     1     1     1.09697207    -0.90070867  -267.85686298    -0.00051196    -0.00002072  0.30D-05  0.25D-05    91.72
    4     2     2     1.09697364    -0.90070833  -267.85686264    -0.00051599    -0.00002107  0.31D-05  0.25D-05    91.72
    4     3     3     1.09696989    -0.90070816  -267.85686248    -0.00052211    -0.00002112  0.31D-05  0.25D-05    91.72
    4     4     4     1.09697166    -0.90070816  -267.85686247    -0.00052475    -0.00002121  0.31D-05  0.25D-05    91.72
    4     5     5     1.09696413    -0.90070712  -267.85686143    -0.00052628    -0.00002202  0.31D-05  0.26D-05    91.72
    4     6     6     1.09398588    -0.89376514  -267.80974524    -0.00031361    -0.00001280  0.19D-05  0.16D-05    91.72
    5     1     1     1.09684867    -0.90072995  -267.85688426    -0.00002128    -0.00000070  0.74D-07  0.98D-07   121.74
    5     2     2     1.09684802    -0.90072993  -267.85688424    -0.00002160    -0.00000071  0.76D-07  0.98D-07   121.74
    5     3     3     1.09684926    -0.90072993  -267.85688424    -0.00002177    -0.00000071  0.76D-07  0.10D-06   121.74
    5     4     4     1.09684901    -0.90072993  -267.85688424    -0.00002177    -0.00000072  0.77D-07  0.10D-06   121.74
    5     5     5     1.09684838    -0.90072993  -267.85688424    -0.00002281    -0.00000072  0.78D-07  0.97D-07   121.74
    5     6     6     1.09397625    -0.89377818  -267.80975828    -0.00001304    -0.00000043  0.42D-07  0.55D-07   121.74
    6     1     1     1.09682905    -0.90073067  -267.85688498    -0.00000072    -0.00000002  0.14D-08  0.34D-08   151.78
    6     2     2     1.09682884    -0.90073067  -267.85688498    -0.00000074    -0.00000002  0.15D-08  0.34D-08   151.78
    6     3     3     1.09682906    -0.90073067  -267.85688498    -0.00000074    -0.00000002  0.14D-08  0.35D-08   151.78
    6     4     4     1.09682902    -0.90073067  -267.85688498    -0.00000074    -0.00000002  0.14D-08  0.36D-08   151.78
    6     5     5     1.09682892    -0.90073067  -267.85688498    -0.00000074    -0.00000002  0.16D-08  0.35D-08   151.78
    6     6     6     1.09396742    -0.89377863  -267.80975873    -0.00000045    -0.00000001  0.13D-08  0.18D-08   151.78


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.5%  12.8%  19.3%

 Initialization:   0.7%
 Other:           66.5%

 Total CPU:      151.8 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2\           0.0000000   0.0000000   0.0000000   0.9547814   0.0000000  -0.0000000
 2222222222/\2           0.9547814  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 22222222222/\           0.0000000   0.0000000   0.9547813  -0.0000000   0.0000000  -0.0000000
 2222222222202          -0.0000000   0.7747339   0.0000000  -0.0000000  -0.0867515   0.5449815
 2222222222220          -0.0000000  -0.3122379   0.0000000  -0.0000000   0.7143150   0.5449815
 2222222222022          -0.0000000  -0.4624959   0.0000000   0.0000000  -0.6275634   0.5449815
 2222220222222           0.0000000   0.0000006  -0.0000000  -0.0000000  -0.0000006  -0.1518444

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.954781    0.000000    0.000000   -0.000000   -0.000000
 2          -0.829763   -0.000000    0.000000    0.000000   -0.472335    0.000000
 3          -0.000000   -0.000000    0.000000    0.954781   -0.000000    0.000000
 4           0.000000   -0.000000    0.954781   -0.000000   -0.000000    0.000000
 5          -0.472335    0.000000    0.000000    0.000000    0.829763    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.955998

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954781    0.000000   -0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.954781    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.954781    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.954781    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.954781    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.955998


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95478135 (fixed)   0.95478135 (relaxed)   0.95478135 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012250   -0.00038855   -0.78324903
 Singles      0.01322937   -0.04164548   -0.04882930
 Pairs        0.08361154    0.00000000   -0.06865233
 Total        1.09696342   -0.04203403   -0.90073067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615431
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50891539
 One electron energy                 -466.24248716
 Two electron energy                  198.38560217
 Virial quotient                       -2.58776632
 Correlation energy                    -0.90073067
 !MRCI STATE 1.1 Energy              -267.856884984136

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94422291 (Davidson, fixed reference)
 Cluster corrected energies          -267.94422291 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94422291 (Davidson, rotated reference)

 Cluster corrected energies          -267.94390857 (Pople, fixed reference)
 Cluster corrected energies          -267.94390857 (Pople, relaxed reference)
 Cluster corrected energies          -267.94390857 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.82976309 (fixed)   0.95478144 (relaxed)   0.95478144 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012250   -0.00038855   -0.78324965
 Singles      0.01322899   -0.04164495   -0.04882892
 Pairs        0.08361171   -0.00000002   -0.06865210
 Total        1.09696321   -0.04203352   -0.90073067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615431
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50892298
 One electron energy                 -466.24247093
 Two electron energy                  198.38558594
 Virial quotient                       -2.58776613
 Correlation energy                    -0.90073067
 !MRCI STATE 2.1 Energy              -267.856884983671

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94422272 (Davidson, fixed reference)
 Cluster corrected energies          -267.94422272 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94422272 (Davidson, rotated reference)

 Cluster corrected energies          -267.94390836 (Pople, fixed reference)
 Cluster corrected energies          -267.94390836 (Pople, relaxed reference)
 Cluster corrected energies          -267.94390836 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95478135 (fixed)   0.95478135 (relaxed)   0.95478135 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012250   -0.00038855   -0.78324896
 Singles      0.01322950   -0.04164555   -0.04882938
 Pairs        0.08361142   -0.00000000   -0.06865233
 Total        1.09696343   -0.04203410   -0.90073067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615431
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50891813
 One electron energy                 -466.24249617
 Two electron energy                  198.38561118
 Virial quotient                       -2.58776625
 Correlation energy                    -0.90073067
 !MRCI STATE 3.1 Energy              -267.856884983667

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94422292 (Davidson, fixed reference)
 Cluster corrected energies          -267.94422292 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94422292 (Davidson, rotated reference)

 Cluster corrected energies          -267.94390857 (Pople, fixed reference)
 Cluster corrected energies          -267.94390857 (Pople, relaxed reference)
 Cluster corrected energies          -267.94390857 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95478136 (fixed)   0.95478136 (relaxed)   0.95478136 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012250   -0.00038855   -0.78324890
 Singles      0.01322957   -0.04164565   -0.04882948
 Pairs        0.08361131   -0.00000000   -0.06865229
 Total        1.09696339   -0.04203419   -0.90073067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615431
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50891529
 One electron energy                 -466.24249638
 Two electron energy                  198.38561140
 Virial quotient                       -2.58776632
 Correlation energy                    -0.90073067
 !MRCI STATE 4.1 Energy              -267.856884983315

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94422288 (Davidson, fixed reference)
 Cluster corrected energies          -267.94422288 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94422288 (Davidson, rotated reference)

 Cluster corrected energies          -267.94390853 (Pople, fixed reference)
 Cluster corrected energies          -267.94390853 (Pople, relaxed reference)
 Cluster corrected energies          -267.94390853 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.82976307 (fixed)   0.95478141 (relaxed)   0.95478141 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012250   -0.00038855   -0.78325004
 Singles      0.01322870   -0.04164449   -0.04882866
 Pairs        0.08361208    0.00000001   -0.06865197
 Total        1.09696329   -0.04203303   -0.90073067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95615431
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50893302
 One electron energy                 -466.24247059
 Two electron energy                  198.38558561
 Virial quotient                       -2.58776588
 Correlation energy                    -0.90073067
 !MRCI STATE 5.1 Energy              -267.856884983167

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.94422279 (Davidson, fixed reference)
 Cluster corrected energies          -267.94422279 (Davidson, relaxed reference)
 Cluster corrected energies          -267.94422279 (Davidson, rotated reference)

 Cluster corrected energies          -267.94390844 (Pople, fixed reference)
 Cluster corrected energies          -267.94390844 (Pople, relaxed reference)
 Cluster corrected energies          -267.94390844 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95599771 (fixed)   0.95607071 (relaxed)   0.95599771 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00018862   -0.00016402   -0.00030398
 Singles      0.00453027   -0.02117591   -0.02305361
 Pairs        0.08945488   -0.87243870   -0.87042104
 Total        1.09417376   -0.89377864   -0.89377863
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.91598010
 Nuclear energy                         0.00000000
 Kinetic energy                       103.50997123
 One electron energy                 -466.10960522
 Two electron energy                  198.29984649
 Virial quotient                       -2.58728464
 Correlation energy                    -0.89377863
 !MRCI STATE 6.1 Energy              -267.809758732491

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.89392923 (Davidson, fixed reference)
 Cluster corrected energies          -267.89377990 (Davidson, relaxed reference)
 Cluster corrected energies          -267.89392923 (Davidson, rotated reference)

 Cluster corrected energies          -267.89341908 (Pople, fixed reference)
 Cluster corrected energies          -267.89325829 (Pople, relaxed reference)
 Cluster corrected energies          -267.89341908 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.23       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      371.00       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       212.66    159.19     47.87      1.78      0.22      3.22
 REAL TIME  *       240.70 SEC
 DISK USED  *       419.34 MB (local),       11.77 GB (total)
 SF USED    *         2.70 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -267.94422291  AU                              
 SETTING HLSDIAG(5)     =      -267.94422272  AU                              
 SETTING HLSDIAG(6)     =      -267.94422292  AU                              
 SETTING HLSDIAG(7)     =      -267.94422288  AU                              
 SETTING HLSDIAG(8)     =      -267.94422279  AU                              
 SETTING HLSDIAG(9)     =      -267.89392923  AU                              


         HLSDIAG
    -267.9771476
    -267.9771476
    -267.9771476
    -267.9442229
    -267.9442227
    -267.9442229
    -267.9442229
    -267.9442228
    -267.8939292
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -267.893179   -267.893179   -267.893179
 Replaced energies:   -267.977148   -267.977148   -267.977148

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.856885   -267.856885   -267.856885   -267.856885   -267.856885   -267.809759
 Replaced energies:   -267.944223   -267.944223   -267.944223   -267.944223   -267.944223   -267.893929



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -267.97714758

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00    1365.98       0.00       0.00       0.00      -0.00
                           -0.00    1931.78      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                        -1931.78      -0.00      -0.00      -0.00      -0.00   -1365.97       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01   -1365.98       0.00       0.00       0.00       0.00       0.00   -1372.00
                            0.00       0.00       0.00      -0.00    1365.97       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00   -1365.98       0.00       0.00       0.00       0.00      -0.00    1365.98       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    5   2.1  1.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00   -1365.97      -0.00       0.00       0.00      -0.00      -0.00   -1365.97   -1940.30

    6   3.1  1.0  0.0    1365.98      -0.00       0.00       0.00       0.00       0.01   -1365.98       0.00       0.00       0.00
                           -0.00    1365.97      -0.00      -0.00      -0.00       0.00      -0.00    1365.97       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   -1365.98       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   -1931.78       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00   -1365.97    1931.78       0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00    1365.98      -0.00       0.00       0.00       0.00       0.01   -1372.00
                           -0.00      -0.00      -0.00      -0.00    1365.97      -0.00      -0.00      -0.00      -0.00       0.00

   10   1.1  0.0  0.0      -0.00      -0.00   -1372.00       0.00       0.00       0.00      -0.00      -0.00   -1372.00    7226.13
                            0.00      -0.00       0.00       0.00    1940.30       0.00      -0.00       0.00      -0.00       0.00

   11   2.1  0.0  0.0       0.00     939.88      -0.00       0.00       0.00       0.00       0.00     939.88      -0.00       0.00
                         -634.52      -0.00      -0.00       0.00       0.00    2226.54     634.52       0.00       0.00      -0.00

   12   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    1372.01    1940.30      -0.00      -0.00       0.00       0.00   -1372.01      -0.00

   13   4.1  0.0  0.0    1372.00      -0.00       0.00       0.00       0.00       0.00    1372.00      -0.00       0.00       0.00
                            0.00   -1372.01      -0.00      -0.00      -0.00       0.00      -0.00    1372.01       0.00      -0.00

   14   5.1  0.0  0.0       0.00    1275.32      -0.00       0.00       0.00       0.00       0.00    1275.32      -0.00       0.00
                         1451.61      -0.00       0.00      -0.00       0.00    -249.31   -1451.61       0.00      -0.00      -0.00

   15   6.1  0.0  0.0      -0.00    2223.92      -0.00       0.00       0.00       0.00      -0.00    2223.92      -0.00       0.00
                        -2223.93       0.00      -0.00      -0.00       0.00   -3145.10    2223.93      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00       0.00    1372.00       0.00      -0.00
                          634.52       0.00      -0.00   -1451.61    2223.93

    2   2.1  1.0  1.0     939.88       0.00      -0.00    1275.32    2223.92
                            0.00       0.00    1372.01       0.00      -0.00

    3   3.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.00
                            0.00   -1372.01       0.00      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1940.30       0.00       0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -2226.54       0.00      -0.00     249.31    3145.10

    7   1.1  1.0 -1.0       0.00       0.00    1372.00       0.00      -0.00
                         -634.52      -0.00       0.00    1451.61   -2223.93

    8   2.1  1.0 -1.0     939.88       0.00      -0.00    1275.32    2223.92
                           -0.00      -0.00   -1372.01      -0.00       0.00

    9   3.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00    1372.01      -0.00       0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    7226.17       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    7226.13       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    7226.14       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    7226.16       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   18264.32
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -267.97714758 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.002       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    1931.780

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000   -1931.779   -1931.780      -0.000

    3    1  |1 1>+              0.000       0.000       0.006       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    1931.779       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000   -1931.779      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.006    1931.781      -0.000
                               -0.000    1931.779       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000    1931.781       0.002       0.000
                               -0.000    1931.780      -0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                            -1931.780      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   -1931.781       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000   -1940.299       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1940.298       0.000       0.000      -0.000

    2    1  |0 0>               0.000    1329.186      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000    2226.541    -897.350      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1940.301      -0.000      -0.000      -0.000      -0.000

    4    1  |0 0>            1940.299      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000   -1940.319

    5    1  |0 0>               0.000    1803.577      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -249.315    2052.889      -0.000

    6    1  |0 0>              -0.000    3145.101      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000   -3145.104   -3145.108       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000       0.000       0.000    1940.299       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000    1329.186       0.000      -0.000    1803.577    3145.101
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -1940.299      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>           -1931.781       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000   -1940.301       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1940.298      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000   -2226.541       0.000      -0.000     249.315    3145.104

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     897.350       0.000      -0.000   -2052.889    3145.108

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1940.319       0.000      -0.000

    3    1  |1 1>-              0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000   -1940.318       0.000      -0.000       0.000

    1    1  |0 0>               0.000    7226.131       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    7226.173       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    7226.129       0.000       0.000       0.000
                             1940.318      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    7226.137       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    7226.157       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   18264.318
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -267.98940881    -0.01226123    -2691.03      0.00000000        0.00      0.0000
    2  -267.98940880    -0.01226122    -2691.03      0.00000001        0.00      0.0000
    3  -267.98940877    -0.01226118    -2691.02      0.00000004        0.01      0.0000
    4  -267.98940873    -0.01226115    -2691.01      0.00000008        0.02      0.0000
    5  -267.98940871    -0.01226113    -2691.01      0.00000010        0.02      0.0000
    6  -267.96834574     0.00880184     1931.78      0.02106307     4622.81      0.5732
    7  -267.96834574     0.00880185     1931.78      0.02106307     4622.81      0.5732
    8  -267.96834573     0.00880186     1931.78      0.02106308     4622.81      0.5732
    9  -267.96787512     0.00927246     2035.07      0.02153369     4726.10      0.5860
   10  -267.94076355     0.03638404     7985.37      0.04864526    10676.40      1.3237
   11  -267.94076352     0.03638407     7985.38      0.04864529    10676.41      1.3237
   12  -267.94076349     0.03638410     7985.39      0.04864532    10676.41      1.3237
   13  -267.94076349     0.03638410     7985.39      0.04864532    10676.41      1.3237
   14  -267.94076339     0.03638419     7985.41      0.04864542    10676.43      1.3237
   15  -267.88559801     0.09154958    20092.81      0.10381080    22783.84      2.8248

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.68149962  0.00000000 -0.00000012  0.00000000  0.00000000  0.70710787  0.00000072 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000011 -0.00000003  0.75648520 -0.21674811  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00272468 -0.00105480  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000012 -0.00000001  0.68150008  0.00000003  0.00000000 -0.00000072  0.70710716  0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.68150008  0.00000001  0.00000010 -0.00000002  0.00000000 -0.00000001  0.70710735

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000012 -0.00000001  0.68150094  0.00000003  0.00000000  0.00000072 -0.70710641 -0.00000001

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00203842  0.00266080 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000006  0.00000003 -0.56595270 -0.54675767  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00068625 -0.00371560 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000005  0.00000001 -0.19053200  0.76350604  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.68150103  0.00000000 -0.00000012  0.00000000  0.00000000 -0.70710570 -0.00000072  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.68150046  0.00000001  0.00000010 -0.00000002 -0.00000000  0.00000001 -0.70710622

   1    1  |0 0>           0.00000005 -0.00000000  0.26667231  0.00000001  0.00000000 -0.00000000  0.00000037  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000002  0.00000001 -0.21121445 -0.16278944 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00076074 -0.00079221 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.26667350  0.00000000  0.00000004 -0.00000001 -0.00000000  0.00000000 -0.00000188
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.26667324 -0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000181  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000003  0.00000001 -0.16279042  0.21121259  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00058633  0.00102787  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000020 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000001  0.18856494  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.54141374 -0.00000000 -0.00000002  0.16322830 -0.00000001  0.14409778  0.18371887
                          -0.08032240  0.00000000  0.00000000  0.00006247 -0.00000000  0.00102761  0.00009290

   3    1  |1 1>+         -0.00000000 -0.18856595  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.18856521 -0.00000002 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.18856565  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>           0.08032243 -0.00000000 -0.00000000 -0.00001653  0.00000000  0.00152186 -0.00009290
                           0.54141398  0.00000000  0.00000000  0.04318130 -0.00000000 -0.21340557  0.18371905

   1    1  |1 1>-          0.08032241  0.00000000  0.00000000  0.00007899 -0.00000000 -0.00049425 -0.00009290
                           0.54141382  0.00000000  0.00000002 -0.20640916  0.00000001  0.06930694  0.18371917

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001  0.18856798  0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.18856808 -0.00000002 -0.00000000 -0.00000000  0.00000000

   1    1  |0 0>           0.00000000  0.96378726 -0.00000000  0.00000001 -0.00000002  0.00000001 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000063 -0.00000001 -0.00000001 -0.08483184  0.00000000  0.96002267 -0.00000009
                          -0.00000009 -0.00000000 -0.00000000 -0.00003246  0.00000000  0.00684621 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.96378693  0.00000008  0.00000000  0.00000002  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000002 -0.00000000  0.00000005  0.96378700  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000019 -0.00000001 -0.00000008  0.96004717 -0.00000005  0.08482955 -0.00000002
                           0.00000003  0.00000000  0.00000000  0.00036740 -0.00000000  0.00060495 -0.00000000

   6    1  |0 0>          -0.31476564  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000027  0.94801988
                           0.04669762 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00047940


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -267.98940881     -0.01226123    -2691.03      0.00000000        0.00      0.0000
     2   1   -267.98940880     -0.01226122    -2691.03      0.00000001        0.00      0.0000
     3   1   -267.98940877     -0.01226118    -2691.02      0.00000004        0.01      0.0000
     4   1   -267.98940873     -0.01226115    -2691.01      0.00000008        0.02      0.0000
     5   1   -267.98940871     -0.01226113    -2691.01      0.00000010        0.02      0.0000
     6   1   -267.96834574      0.00880184     1931.78      0.02106307     4622.81      0.5732
     7   1   -267.96834574      0.00880185     1931.78      0.02106307     4622.81      0.5732
     8   1   -267.96834573      0.00880186     1931.78      0.02106308     4622.81      0.5732
     9   1   -267.96787512      0.00927246     2035.07      0.02153369     4726.10      0.5860
    10   1   -267.94076355      0.03638404     7985.37      0.04864526    10676.40      1.3237
    11   1   -267.94076352      0.03638407     7985.38      0.04864529    10676.41      1.3237
    12   1   -267.94076349      0.03638410     7985.39      0.04864532    10676.41      1.3237
    13   1   -267.94076349      0.03638410     7985.39      0.04864532    10676.41      1.3237
    14   1   -267.94076339      0.03638419     7985.41      0.04864542    10676.43      1.3237
    15   1   -267.88559801      0.09154958    20092.81      0.10381080    22783.84      2.8248

 E0 =   -267.97714758 is the energy of the lowest zeroth-order state
 E1 =   -267.98940881 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.68149962  0.00000000 -0.00000012  0.00000000  0.00000000  0.70710787  0.00000072 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000011 -0.00000003  0.75648520 -0.21674811  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00272468 -0.00105480  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000012 -0.00000001  0.68150008  0.00000003  0.00000000 -0.00000072  0.70710716  0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.68150008  0.00000001  0.00000010 -0.00000002  0.00000000 -0.00000001  0.70710735

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000012 -0.00000001  0.68150094  0.00000003  0.00000000  0.00000072 -0.70710641 -0.00000001

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00203842  0.00266080 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000006  0.00000003 -0.56595270 -0.54675767  0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00068625 -0.00371560 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000005  0.00000001 -0.19053200  0.76350604  0.00000000  0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.68150103  0.00000000 -0.00000012  0.00000000  0.00000000 -0.70710570 -0.00000072  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.68150046  0.00000001  0.00000010 -0.00000002 -0.00000000  0.00000001 -0.70710622

 10  1     1    1  |0 0>        0.00000005 -0.00000000  0.26667231  0.00000001  0.00000000 -0.00000000  0.00000037  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000002  0.00000001 -0.21121445 -0.16278944 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00076074 -0.00079221 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.26667350  0.00000000  0.00000004 -0.00000001 -0.00000000  0.00000000 -0.00000188
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.26667324 -0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000181  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000003  0.00000001 -0.16279042  0.21121259  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00058633  0.00102787  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000005 -0.00000020 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000001  0.18856494  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.54141374 -0.00000000 -0.00000002  0.16322830 -0.00000001  0.14409778  0.18371887
                               -0.08032240  0.00000000  0.00000000  0.00006247 -0.00000000  0.00102761  0.00009290

  3  1     3    1  |1 1>+      -0.00000000 -0.18856595  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.18856521 -0.00000002 -0.00000000 -0.00000000  0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.18856565  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.08032243 -0.00000000 -0.00000000 -0.00001653  0.00000000  0.00152186 -0.00009290
                                0.54141398  0.00000000  0.00000000  0.04318130 -0.00000000 -0.21340557  0.18371905

  7  1     1    1  |1 1>-       0.08032241  0.00000000  0.00000000  0.00007899 -0.00000000 -0.00049425 -0.00009290
                                0.54141382  0.00000000  0.00000002 -0.20640916  0.00000001  0.06930694  0.18371917

  8  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001  0.18856798  0.00000000 -0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.18856808 -0.00000002 -0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.96378726 -0.00000000  0.00000001 -0.00000002  0.00000001 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000063 -0.00000001 -0.00000001 -0.08483184  0.00000000  0.96002267 -0.00000009
                               -0.00000009 -0.00000000 -0.00000000 -0.00003246  0.00000000  0.00684621 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.96378693  0.00000008  0.00000000  0.00000002  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000002 -0.00000000  0.00000005  0.96378700  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000019 -0.00000001 -0.00000008  0.96004717 -0.00000005  0.08482955 -0.00000002
                                0.00000003  0.00000000  0.00000000  0.00036740 -0.00000000  0.00060495 -0.00000000

 15  1     6    1  |0 0>       -0.31476564  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000027  0.94801988
                                0.04669762 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00047940



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        46.44%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   57.23%    4.70%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   46.44%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%   46.44%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    0.00%   46.44%    0.00%    0.00%    0.00%   50.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%   32.03%   29.90%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    3.63%   58.30%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        46.44%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   46.44%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    7.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    4.46%    2.65%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    7.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          7.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    2.65%    4.46%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    3.56%    0.00%    0.00%
  2  1     2    1  |1 1>+        29.96%    0.00%    0.00%    2.66%    0.00%    2.08%    3.38%
  3  1     3    1  |1 1>+         0.00%    3.56%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    3.56%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    3.56%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         29.96%    0.00%    0.00%    0.19%    0.00%    4.55%    3.38%
  7  1     1    1  |1 1>-        29.96%    0.00%    0.00%    4.26%    0.00%    0.48%    3.38%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.56%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    3.56%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   92.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.72%    0.00%   92.17%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%   92.89%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   92.89%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%   92.17%    0.00%    0.72%    0.00%
 15  1     6    1  |0 0>         10.13%    0.00%    0.00%    0.00%    0.00%    0.00%   89.87%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       48.23       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7      371.00       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       370.25    157.59    159.19     47.87      1.78      0.22      3.22
 REAL TIME  *       415.09 SEC
 DISK USED  *       419.34 MB (local),       11.77 GB (total)
 SF USED    *         2.70 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -267.885598008882

              CI              CI           MULTI         RHF-SCF
   -267.80975873   -267.89317885   -266.91598010   -266.72069329
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
