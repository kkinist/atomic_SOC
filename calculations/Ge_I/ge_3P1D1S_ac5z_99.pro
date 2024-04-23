
 Working directory              : /wrk/irikura/molpro.Vsc3y6jZZt/
 Global scratch directory       : /wrk/irikura/molpro.Vsc3y6jZZt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Vsc3y6jZZt/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ge SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCV5Z-DK
 
 set,dkho=101
 
                                                                                 ! spherical anion (4S) orbitals
 {rhf;wf,nelec=33,sym=2,spin=3}
 
 NTRIP=3
 NSING=6
 
 {multi
     wf,nelec=32,sym=1,spin=2;state,NTRIP;
 weight,all,99
     wf,nelec=32,sym=1,spin=0;state,NSING;
 weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! free KL shells
 core,2,3
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 17:34:10  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry GE     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     H aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry GE     I aug-cc-pwCV5Z-DK     selected for orbital group  1


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

   1  GE     32.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   32
 NUMBER OF PRIMITIVE AOS:         475
 NUMBER OF SYMMETRY AOS:          342
 NUMBER OF CONTRACTIONS:          263   (  130Ag  +  133Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     471.859 MB (compressed) written to integral file ( 11.9%)

     Node minimum: 27.263 MB, node maximum: 50.856 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   25282566.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15984186      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   497186979. AND WROTE     4168668. INTEGRALS IN     13 RECORDS. CPU TIME:     2.14 SEC, REAL TIME:     2.23 SEC
 SORT2 READ    51756118. AND WROTE   303595781. INTEGRALS IN   1752 RECORDS. CPU TIME:     0.50 SEC, REAL TIME:     0.55 SEC

 Node minimum:    25276762.  Node maximum:    25318282. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415161718
                                       19202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 91011  12131415161718192021  11121314151617181920  21111213141516171819
                                       20211112131415161718  192021

 Eigenvalues of metric

         1 0.112E-05 0.509E-04 0.355E-03 0.111E-02 0.111E-02 0.111E-02 0.111E-02 0.111E-02
         2 0.109E-04 0.109E-04 0.109E-04 0.315E-02 0.315E-02 0.315E-02 0.144E-01 0.144E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         9.20      9.00
 REAL TIME  *        10.23 SEC
 DISK USED  *        31.64 MB (local),        1.37 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   8  10
 Initial beta  occupancy:   6   9

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2019.91545886   -2019.91545886     0.00D+00     0.26D+00     0     0       0.15      0.30    start
   2    -2066.90014201     -46.98468315     0.19D+00     0.38D+00     1     0       0.15      0.45    diag2
   3    -2085.24509717     -18.34495516     0.27D+00     0.30D+00     2     0       0.15      0.60    diag2
   4    -2095.74326903     -10.49817187     0.14D+00     0.63D-01     3     0       0.16      0.76    diag2
   5    -2095.99487269      -0.25160365     0.30D-01     0.54D-01     4     0       0.15      0.91    diag2
   6    -2096.98609555      -0.99122287     0.11D-01     0.49D-01     5     0       0.15      1.06    diag2
   7    -2097.08199406      -0.09589850     0.40D-02     0.37D-02     6     0       0.15      1.21    diag2
   8    -2097.10401058      -0.02201652     0.15D-02     0.26D-02     7     0       0.15      1.36    fixocc
   9    -2097.10613482      -0.00212424     0.40D-03     0.12D-02     8     0       0.14      1.50    diag2
  10    -2097.10645217      -0.00031736     0.16D-03     0.44D-03     9     0       0.16      1.66    diag2/orth
  11    -2097.10646512      -0.00001295     0.37D-04     0.88D-04     9     0       0.14      1.80    diag2
  12    -2097.10646725      -0.00000213     0.21D-04     0.35D-04     9     0       0.15      1.95    diag2
  13    -2097.10646757      -0.00000033     0.45D-05     0.14D-04     9     0       0.16      2.11    diag2
  14    -2097.10646768      -0.00000011     0.15D-05     0.87D-05     9     0       0.15      2.26    diag2
  15    -2097.10646772      -0.00000003     0.66D-06     0.54D-05     9     0       0.15      2.41    diag2
  16    -2097.10646772      -0.00000000     0.21D-06     0.94D-06     9     0       0.14      2.55    diag2
  17    -2097.10646772      -0.00000000     0.11D-06     0.31D-06     0     0       0.15      2.70    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2097.106467719204
  RHF One-electron energy           -2930.694949078822
  RHF Two-electron energy             833.588481359619
  RHF Kinetic energy                 2223.270063787494
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.943253139543

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.58417     1  1  s    0.96910    1  3  s   -0.56261    1  4  s   -0.73305    1  6  s    0.35420
                                    1  7  s    0.40902
    2.1     2.00000   -53.17965     1  2  s    1.08137    1  4  s    0.27139
    3.1     2.00000    -7.15127     1  3  s    0.91600
    4.1     2.00000    -1.34710     1  1  d2+  0.99972
    5.1     2.00000    -1.34710     1  1  d2-  0.99992
    6.1     2.00000    -1.34710     1  1  d0   0.99972
    7.1     2.00000    -1.34710     1  1  d1-  0.99992
    8.1     2.00000    -1.34710     1  1  d1+  0.99992
    9.1     2.00000    -0.33250     1  4  s    0.98723
    1.2     2.00000   -46.27284     1  1  pz   0.99701
    2.2     2.00000   -46.27284     1  1  px   0.99701
    3.2     2.00000   -46.27284     1  1  py   0.99701
    4.2     2.00000    -4.95687     1  2  pz   1.00320
    5.2     2.00000    -4.95687     1  2  px   1.00320
    6.2     2.00000    -4.95687     1  2  py   1.00320
    7.2     1.00000    -0.05789     1  8  py   0.30439    1  9  py   0.42618    1 10  py   0.32166
    8.2     1.00000    -0.05789     1  8  px   0.30439    1  9  px   0.42618    1 10  px   0.32166
    9.2     1.00000    -0.05788     1  8  pz   0.30437    1  9  pz   0.42616    1 10  pz   0.32163


 HOMO      9.2    -0.057881 =      -1.5750eV
 LUMO     10.2     0.153292 =       4.1713eV
 LUMO-HOMO         0.211174 =       5.7463eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.49       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        11.90      2.70      9.00
 REAL TIME  *        13.07 SEC
 DISK USED  *        37.63 MB (local),        1.44 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:     245 (  121  124)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.195D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.745D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.196D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.822D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.650D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 6 4 1 1   2 6 4 5 3 1 5 3 6 4   2 711 912 814151013   5 3 6 4 2 1 711 912
                                        814151310 2 6 4 5 3   1 711 912 814151310   2 6 4 5 3 1 711 912   814151310 2 6 4 5 3
                                       25272821172326241918  201622 1 7 91112 815  141310 2 6 5 3 4 1 7   911 81214151310 4 2
                                        6 3 5 1 2 4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.252D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.250D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.750D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.670D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.120D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 1 3 2   1 3 2 1 3 6 5 410 8   7 9 6 5 410 8 7 9 2   1 3 6 5 4 810 9 719
                                       12111321141615171820   3 2 1 6 4 5 810 9 7  19121113211416171518  20 6 5 410 8 7 9 3 2
                                        1191211132114161517  2018 6 5 410 8 9 7 3   1 2 6 4 510 8 9 719  11122113141615171820
                                        3 1 2 6 4 5 810 7 9   1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  2231  ( 26 closed/active, 1712 closed/virtual, 0 active/active, 493 active/virtual )
 Total number of variables:    2357
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   17   26    0  -2097.05364942   -2097.08337659   -0.02972718    0.13206081 0.00054363 0.00000000  0.44E+00      2.16
   2    8   14    0  -2097.07259081   -2097.08073929   -0.00814848    0.45720570 0.00003627 0.00000000  0.48E-01      4.35
   3    6   10    0  -2097.08080589   -2097.08080758   -0.00000169    0.00385072 0.00000009 0.00000000  0.14E-02      6.38
   4    3    6    0  -2097.08080758   -2097.08080758    0.00000000    0.00000093 0.00000000 0.00000000  0.70E-06      8.10

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.51E-10)
                       Final energy:  -2097.08080758
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2097.081703658787
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.25114373
 One electron energy                         -2922.78205517
 Two electron energy                           825.70035151
 Virial ratio                                    1.94325003
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2097.081703651616
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.25114377
 One electron energy                         -2922.78205518
 Two electron energy                           825.70035153
 Virial ratio                                    1.94325003
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2097.081703648841
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.25114378
 One electron energy                         -2922.78205519
 Two electron energy                           825.70035154
 Virial ratio                                    1.94325003
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2097.042177544153
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.25114373
 One electron energy                         -2922.78205517
 Two electron energy                           825.73987763
 Virial ratio                                    1.94323225
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2097.042177543950
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.25114373
 One electron energy                         -2922.78205517
 Two electron energy                           825.73987763
 Virial ratio                                    1.94323225
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2097.042177536956
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.25114377
 One electron energy                         -2922.78205518
 Two electron energy                           825.73987765
 Virial ratio                                    1.94323225
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2097.042177534250
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.25114378
 One electron energy                         -2922.78205519
 Two electron energy                           825.73987765
 Virial ratio                                    1.94323225
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2097.042177532593
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.25114379
 One electron energy                         -2922.78205519
 Two electron energy                           825.73987766
 Virial ratio                                    1.94323225
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2097.007824023095
 Nuclear energy                                  0.00000000
 Kinetic energy                               2223.19333372
 One electron energy                         -2922.54260541
 Two electron energy                           825.53478138
 Virial ratio                                    1.94324132
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000001
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000008
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.505498803639
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000005
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999999
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000002
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.494501121287
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000003
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000004
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000007
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.568977251832
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000000006
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000005
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     4.000000000002
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.431022802309
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000004
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000002
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.925523944537
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999999996
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000002
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000003
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.074476076411
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000007
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000007
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000007
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000007
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000007
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000007
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000007
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000006
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000007
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 6 4 1 1   5 3 6 2 4 1 5 3 2 6   41013141512 811 7 9   5 3 2 6 4 110131415
                                       12 811 7 9 5 3 2 6 4   11310141512 811 7 9   5 3 2 6 4 113101514  1211 8 7 9 5 3 2 6 4
                                       16222018241927262321  172528 1 9 71112 814  151310 5 3 2 6 4 1 9   711 81214151310 4 6
                                        2 3 5 1 4 2 6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 1 3 2   1 3 2 1 3 9 710 8 5   6 4 9 710 8 5 4 6 2   1 3 9 7 810 5 4 620
                                       18151714161213211911   2 1 3 810 4 7 9 5 6  18201517141612132119  11 7 9 510 8 6 4 2 1
                                        3201815171416121321  1911 7 9 5 610 4 8 3   1 2 6 4 510 8 7 911  19211312141617152018
                                        3 1 2 4 6 5 810 7 9   1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.83332     1  1  s    0.96910    1  3  s   -0.56256    1  4  s   -0.73299    1  6  s    0.35417
                                    1  7  s    0.40898
    2.1     2.00000   -53.42892     1  2  s    1.08128    1  4  s    0.27114
    3.1     2.00000    -7.40096     1  3  s    0.91656
    4.1     2.00000    -1.59638     1  1  d2+  0.99994
    5.1     2.00000    -1.59638     1  1  d2-  0.99994
    6.1     2.00000    -1.59638     1  1  d0   0.99994
    7.1     2.00000    -1.59638     1  1  d1-  0.99994
    8.1     2.00000    -1.59637     1  1  d1+  0.99994
    9.1     1.97372    -0.56057     1  4  s    1.02278
    1.2     2.00000   -46.52182     1  1  pz   0.99699
    2.2     2.00000   -46.52182     1  1  px   0.99699
    3.2     2.00000   -46.52182     1  1  py   0.99699
    4.2     2.00000    -5.20592     1  2  pz   1.00305
    5.2     2.00000    -5.20592     1  2  px   1.00305
    6.2     2.00000    -5.20592     1  2  py   1.00305
    7.2     0.67543    -0.06242     1  8  py   0.38304    1  9  py   0.51132
    8.2     0.67543    -0.06242     1  8  px   0.38304    1  9  px   0.51132
    9.2     0.67543    -0.06242     1  8  pz   0.38304    1  9  pz   0.51132
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0          0.99346376     -0.00000098      0.00000071
 2 a0a          0.00000097      0.99346376      0.00000161
 2 0aa         -0.00000061     -0.00000209      0.99346376
 0 2aa          0.00000007      0.00000024     -0.11414798
 0 a2a         -0.00000011     -0.11414798     -0.00000019
 0 aa2         -0.11414797      0.00000011     -0.00000008
 
 Energy:    -2097.08170366  -2097.08170365  -2097.08170365
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 002         -0.11068392      0.00000012      0.00000113      0.00000095      0.80357266      0.56369384
 2 200          0.75125648     -0.00000010     -0.00000097      0.00000021     -0.30593137      0.56369351
 2 ab0         -0.00000071      0.70248496     -0.00000071     -0.00000052     -0.00000009      0.00000000
 2 ba0          0.00000071     -0.70248496      0.00000071      0.00000052      0.00000009     -0.00000000
 2 a0b          0.00000058      0.00000070      0.70248496      0.00000030     -0.00000085     -0.00000000
 2 b0a         -0.00000058     -0.00000070     -0.70248496     -0.00000030      0.00000085      0.00000000
 2 0ba          0.00000059     -0.00000052     -0.00000009     -0.70248496      0.00000066      0.00000000
 2 0ab         -0.00000059      0.00000052      0.00000009      0.70248496     -0.00000066     -0.00000000
 2 020         -0.64057240     -0.00000002     -0.00000016     -0.00000116     -0.49764166      0.56369360
 0 022          0.08631859     -0.00000001     -0.00000011      0.00000002     -0.03515116     -0.12483111
 0 202         -0.07360113     -0.00000000     -0.00000002     -0.00000013     -0.05717848     -0.12483110
 0 220         -0.01271749      0.00000001      0.00000013      0.00000011      0.09232973     -0.12483107
 0 2ba         -0.00000007      0.00000006      0.00000001      0.08071481     -0.00000008     -0.00000000
 0 2ab          0.00000007     -0.00000006     -0.00000001     -0.08071481      0.00000008      0.00000000
 0 a2b         -0.00000007     -0.00000008     -0.08071481     -0.00000003      0.00000010      0.00000000
 0 b2a          0.00000007      0.00000008      0.08071481      0.00000003     -0.00000010     -0.00000000
 0 ab2          0.00000008     -0.08071481      0.00000008      0.00000006      0.00000001     -0.00000000
 0 ba2         -0.00000008      0.08071481     -0.00000008     -0.00000006     -0.00000001      0.00000000
 
 Energy:    -2097.04217754  -2097.04217754  -2097.04217754  -2097.04217753  -2097.04217753  -2097.00782402
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      100.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        20.17      8.26      2.70      9.00
 REAL TIME  *        22.81 SEC
 DISK USED  *       103.24 MB (local),        2.21 GB (total)
 SF USED    *       167.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2097.081704   2.0
    -2097.081704   2.0
    -2097.081704   2.0
    -2097.042178   6.0
    -2097.042178   6.0
    -2097.042178   6.0
    -2097.042178   6.0
    -2097.042178   6.0
    -2097.007824   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 32
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     245 ( 121 124 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.73 sec, npass=  1  Memory used:   4.09 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.08170366
     2     -2097.08170365
     3     -2097.08170365

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        360204
 Number of doubly external configurations:       7160547
 Total number of contracted configurations:      7521288
 Total number of uncontracted configurations:   40744710

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1896751 words, CPU-time:      0.75 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.08170366     0.00000000    -1.10914505  0.35D-01  0.74D-01     1.80
    1     2     2     1.00000000     0.00000000 -2097.08170365    -0.00000000    -1.10892402  0.35D-01  0.74D-01     1.80
    1     3     3     1.00000000     0.00000000 -2097.08170365    -0.00000000    -1.10875880  0.34D-01  0.74D-01     1.80
    2     1     1     1.07259434    -0.90739137 -2097.98909502    -0.90739137    -0.02698074  0.33D-02  0.14D-02    26.94
    2     2     2     1.07276302    -0.90725546 -2097.98895911    -0.90725546    -0.02711333  0.34D-02  0.14D-02    26.94
    2     3     3     1.07299734    -0.90706888 -2097.98877253    -0.90706888    -0.02729312  0.35D-02  0.14D-02    26.94
    3     1     1     1.06010162    -0.93218697 -2098.01389063    -0.02479560    -0.00059148  0.98D-04  0.40D-04    52.62
    3     2     2     1.06009493    -0.93218551 -2098.01388917    -0.02493006    -0.00059305  0.98D-04  0.41D-04    52.62
    3     3     3     1.06008580    -0.93218359 -2098.01388723    -0.02511471    -0.00059519  0.98D-04  0.41D-04    52.62
    4     1     1     1.05896131    -0.93274593 -2098.01444959    -0.00055896    -0.00002721  0.39D-05  0.20D-05    78.45
    4     2     2     1.05895804    -0.93274591 -2098.01444956    -0.00056040    -0.00002726  0.39D-05  0.20D-05    78.45
    4     3     3     1.05895342    -0.93274588 -2098.01444953    -0.00056230    -0.00002732  0.39D-05  0.20D-05    78.45
    5     1     1     1.05898123    -0.93277185 -2098.01447551    -0.00002592    -0.00000100  0.91D-07  0.86D-07   104.20
    5     2     2     1.05898165    -0.93277185 -2098.01447550    -0.00002594    -0.00000100  0.91D-07  0.86D-07   104.20
    5     3     3     1.05898197    -0.93277185 -2098.01447550    -0.00002596    -0.00000100  0.91D-07  0.85D-07   104.20
    6     1     1     1.05901112    -0.93277283 -2098.01447649    -0.00000098    -0.00000004  0.21D-08  0.43D-08   129.98
    6     2     2     1.05901122    -0.93277283 -2098.01447648    -0.00000098    -0.00000004  0.21D-08  0.43D-08   129.98
    6     3     3     1.05901132    -0.93277283 -2098.01447648    -0.00000098    -0.00000004  0.21D-08  0.43D-08   129.98


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   1.6%
 P   0.5%   8.7%  25.2%

 Initialization:   1.3%
 Other:           62.6%

 Total CPU:      130.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.9660776   0.0000000  -0.0000000
 2222222222/0/          -0.0000000   0.9660776  -0.0000000
 22222222220//           0.0000000   0.0000000   0.9660775
 2222220222//2          -0.1037272  -0.0000000   0.0000000
 2222220222/2/           0.0000000  -0.1037270   0.0000000
 22222202222//          -0.0000000  -0.0000000  -0.1037269

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971603   -0.000000    0.000000
 2           0.000000    0.971603    0.000000
 3          -0.000000   -0.000000    0.971603

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971603    0.000000    0.000000
 2           0.000000    0.971603   -0.000000
 3           0.000000   -0.000000    0.971603


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97160332 (fixed)   0.97163019 (relaxed)   0.97160332 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027980   -0.00060869   -0.84087456
 Singles      0.01158920   -0.04228915   -0.05012348
 Pairs        0.04743843   -0.00000000   -0.04177479
 Total        1.05930743   -0.04289784   -0.93277283
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.08170366
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.12644641
 One electron energy                -2921.70051459
 Two electron energy                  823.68603810
 Virial quotient                       -0.94329820
 Correlation energy                    -0.93277283
 !MRCI STATE 1.1 Energy             -2098.014476491167

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.06979685 (Davidson, fixed reference)
 Cluster corrected energies         -2098.06974219 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.06979685 (Davidson, rotated reference)

 Cluster corrected energies         -2098.06672651 (Pople, fixed reference)
 Cluster corrected energies         -2098.06667235 (Pople, relaxed reference)
 Cluster corrected energies         -2098.06672651 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97160327 (fixed)   0.97163015 (relaxed)   0.97160327 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027980   -0.00060869   -0.84087438
 Singles      0.01158930   -0.04228925   -0.05012357
 Pairs        0.04743843   -0.00000000   -0.04177488
 Total        1.05930753   -0.04289795   -0.93277283
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.08170365
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.12643589
 One electron energy                -2921.70050490
 Two electron energy                  823.68602842
 Virial quotient                       -0.94329821
 Correlation energy                    -0.93277283
 !MRCI STATE 2.1 Energy             -2098.014476482917

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.06979694 (Davidson, fixed reference)
 Cluster corrected energies         -2098.06974228 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.06979694 (Davidson, rotated reference)

 Cluster corrected energies         -2098.06672660 (Pople, fixed reference)
 Cluster corrected energies         -2098.06667244 (Pople, relaxed reference)
 Cluster corrected energies         -2098.06672660 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97160323 (fixed)   0.97163011 (relaxed)   0.97160323 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027980   -0.00060869   -0.00082099
 Singles      0.01158938   -0.04228934   -0.05012365
 Pairs        0.04743845   -0.88987480   -0.88182819
 Total        1.05930763   -0.93277283   -0.93277283
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.08170365
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.12643022
 One electron energy                -2921.70049884
 Two electron energy                  823.68602236
 Virial quotient                       -0.94329821
 Correlation energy                    -0.93277283
 !MRCI STATE 3.1 Energy             -2098.014476479843

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.06979703 (Davidson, fixed reference)
 Cluster corrected energies         -2098.06974236 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.06979703 (Davidson, rotated reference)

 Cluster corrected energies         -2098.06672668 (Pople, fixed reference)
 Cluster corrected energies         -2098.06667252 (Pople, relaxed reference)
 Cluster corrected energies         -2098.06672668 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      100.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      178.29       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       152.62    132.44      8.26      2.70      9.00
 REAL TIME  *       163.76 SEC
 DISK USED  *       278.74 MB (local),        4.26 GB (total)
 SF USED    *         1.70 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2098.06979685  AU                              
 SETTING HLSDIAG(2)     =     -2098.06979694  AU                              
 SETTING HLSDIAG(3)     =     -2098.06979703  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 32
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:     245 ( 121 124 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.04217754
     2     -2097.04217754
     3     -2097.04217754
     4     -2097.04217753
     5     -2097.04217753
     6     -2097.00782402

 Number of blocks in overlap matrix:   643   Smallest eigenvalue:  0.26D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:        257153
 Number of doubly external configurations:      12132218
 Total number of contracted configurations:     12389821
 Total number of uncontracted configurations:   31552303

 Diagonal Coupling coefficients finished.               Storage:    700785 words, CPU-Time:      0.09 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2005076 words, CPU-time:      1.27 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.04217754    -0.00000000    -1.11978630  0.40D-01  0.78D-01     1.83
    1     2     2     1.00000000     0.00000000 -2097.04217754    -0.00000000    -1.12028762  0.40D-01  0.78D-01     1.83
    1     3     3     1.00000000     0.00000000 -2097.04217754     0.00000000    -1.12065641  0.41D-01  0.78D-01     1.83
    1     4     4     1.00000000     0.00000000 -2097.04217753    -0.00000000    -1.12081239  0.41D-01  0.78D-01     1.83
    1     5     5     1.00000000     0.00000000 -2097.04217753    -0.00000000    -1.12000049  0.40D-01  0.78D-01     1.83
    1     6     6     1.00000000     0.00000000 -2097.00782402     0.00000000    -1.10631718  0.16D-01  0.92D-01     1.83
    2     1     1     1.07803534    -0.91250983 -2097.95468737    -0.91250983    -0.02901147  0.39D-02  0.18D-02    95.55
    2     2     2     1.07812130    -0.91249254 -2097.95467008    -0.91249254    -0.02901833  0.39D-02  0.18D-02    95.55
    2     3     3     1.07837506    -0.91219923 -2097.95437677    -0.91219923    -0.02935553  0.41D-02  0.18D-02    95.55
    2     4     4     1.07863256    -0.91198366 -2097.95416120    -0.91198366    -0.02958340  0.42D-02  0.18D-02    95.55
    2     5     5     1.07873532    -0.91193905 -2097.95411659    -0.91193905    -0.02961937  0.42D-02  0.18D-02    95.55
    2     6     6     1.07333952    -0.90862652 -2097.91645054    -0.90862652    -0.02726455  0.33D-02  0.22D-02    95.55
    3     1     1     1.06340206    -0.93915518 -2097.98133272    -0.02664535    -0.00062216  0.90D-04  0.56D-04   189.47
    3     2     2     1.06341550    -0.93915384 -2097.98133139    -0.02666131    -0.00062385  0.90D-04  0.57D-04   189.47
    3     3     3     1.06342575    -0.93914422 -2097.98132176    -0.02694499    -0.00063637  0.93D-04  0.58D-04   189.47
    3     4     4     1.06342457    -0.93914202 -2097.98131956    -0.02715836    -0.00063847  0.92D-04  0.59D-04   189.47
    3     5     5     1.06343351    -0.93913971 -2097.98131725    -0.02720066    -0.00064092  0.92D-04  0.59D-04   189.47
    3     6     6     1.06126175    -0.93358946 -2097.94141348    -0.02496294    -0.00063856  0.74D-04  0.91D-04   189.47
    4     1     1     1.06206790    -0.93977158 -2097.98194912    -0.00061640    -0.00003310  0.49D-05  0.28D-05   284.43
    4     2     2     1.06206783    -0.93977156 -2097.98194910    -0.00061772    -0.00003313  0.49D-05  0.28D-05   284.43
    4     3     3     1.06207197    -0.93977075 -2097.98194829    -0.00062653    -0.00003430  0.51D-05  0.28D-05   284.43
    4     4     4     1.06207119    -0.93977073 -2097.98194827    -0.00062871    -0.00003435  0.50D-05  0.29D-05   284.43
    4     5     5     1.06207337    -0.93977067 -2097.98194820    -0.00063096    -0.00003437  0.51D-05  0.29D-05   284.43
    4     6     6     1.05996646    -0.93422967 -2097.94205369    -0.00064021    -0.00003384  0.51D-05  0.33D-05   284.43
    5     1     1     1.06203515    -0.93980363 -2097.98198118    -0.00003205    -0.00000140  0.16D-06  0.12D-06   378.92
    5     2     2     1.06203527    -0.93980363 -2097.98198117    -0.00003207    -0.00000140  0.16D-06  0.12D-06   378.92
    5     3     3     1.06203626    -0.93980359 -2097.98198113    -0.00003284    -0.00000146  0.17D-06  0.12D-06   378.92
    5     4     4     1.06203586    -0.93980359 -2097.98198113    -0.00003286    -0.00000146  0.17D-06  0.12D-06   378.92
    5     5     5     1.06203633    -0.93980359 -2097.98198112    -0.00003292    -0.00000146  0.17D-06  0.12D-06   378.92
    5     6     6     1.05992529    -0.93426298 -2097.94208700    -0.00003331    -0.00000168  0.20D-06  0.15D-06   378.92
    6     1     1     1.06204012    -0.93980502 -2097.98198256    -0.00000139    -0.00000005  0.40D-08  0.50D-08   474.25
    6     2     2     1.06204031    -0.93980502 -2097.98198256    -0.00000139    -0.00000005  0.38D-08  0.52D-08   474.25
    6     3     3     1.06204012    -0.93980502 -2097.98198255    -0.00000143    -0.00000005  0.39D-08  0.52D-08   474.25
    6     4     4     1.06203998    -0.93980502 -2097.98198255    -0.00000142    -0.00000005  0.39D-08  0.52D-08   474.25
    6     5     5     1.06204007    -0.93980502 -2097.98198255    -0.00000142    -0.00000005  0.39D-08  0.49D-08   474.25
    6     6     6     1.05993575    -0.93426461 -2097.94208863    -0.00000163    -0.00000006  0.56D-08  0.70D-08   474.25
    7     1     1     1.06203934    -0.93980507 -2097.98198261    -0.00000005    -0.00000000  0.38D-09  0.16D-09   568.26
    7     2     2     1.06203939    -0.93980507 -2097.98198261    -0.00000005    -0.00000000  0.40D-09  0.17D-09   568.26
    7     3     3     1.06203938    -0.93980507 -2097.98198260    -0.00000005    -0.00000000  0.39D-09  0.17D-09   568.26
    7     4     4     1.06203936    -0.93980507 -2097.98198260    -0.00000005    -0.00000000  0.39D-09  0.16D-09   568.26
    7     5     5     1.06203929    -0.93980506 -2097.98198260    -0.00000005    -0.00000000  0.38D-09  0.16D-09   568.26
    7     6     6     1.05993325    -0.93426467 -2097.94208869    -0.00000006    -0.00000000  0.46D-09  0.23D-09   568.26


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.6%
 P   0.4%   6.6%  29.7%

 Initialization:   0.2%
 Other:           62.3%

 Total CPU:      568.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\           0.0000000   0.0000000   0.0000000   0.9646473  -0.0000000  -0.0000000
 2222222222/0\          -0.0000000   0.0000000   0.9646473  -0.0000000   0.0000000  -0.0000000
 2222222222/\0          -0.0000000   0.9646473  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2222222222002          -0.1136771   0.0000000  -0.0000000   0.0000000   0.7793846   0.5489837
 2222222222200           0.7318056   0.0000000   0.0000000  -0.0000000  -0.2912452   0.5489834
 2222222222020          -0.6181284  -0.0000000  -0.0000000  -0.0000000  -0.4881398   0.5489835
 2222220222202          -0.0663598  -0.0000000  -0.0000000  -0.0000000  -0.0524047  -0.1141000
 2222220222022           0.0785637   0.0000000   0.0000000  -0.0000000  -0.0312668  -0.1141000
 2222220222220          -0.0122040   0.0000000  -0.0000000   0.0000000   0.0836716  -0.1140999
 2222220222/\2           0.0000000  -0.1035607   0.0000000   0.0000000   0.0000000  -0.0000000
 22222202222/\          -0.0000000  -0.0000000  -0.0000000  -0.1035607   0.0000000   0.0000000
 2222220222/2\           0.0000000  -0.0000000  -0.1035607   0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970133   -0.000000   -0.000000    0.000000   -0.007719   -0.000000
 2           0.000000    0.970163    0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.970163    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.970163    0.000000    0.000000
 5           0.007719   -0.000000    0.000000   -0.000000    0.970133    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.971105

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970163   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.970163   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.970163    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.970163    0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.970163    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.971105


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97013272 (fixed)   0.97019036 (relaxed)   0.97016343 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039059   -0.00088732   -0.84156369
 Singles      0.01337340   -0.04604935   -0.05517317
 Pairs        0.04869016    0.00000005   -0.04306821
 Total        1.06245415   -0.04693662   -0.93980507
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04217754
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.12267081
 One electron energy                -2921.63639405
 Two electron energy                  823.65441144
 Virial quotient                       -0.94328519
 Correlation energy                    -0.93980507
 !MRCI STATE 1.1 Energy             -2097.981982611007

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04067734 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04062191 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04067734 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03819474 (Pople, fixed reference)
 Cluster corrected energies         -2098.03813884 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03819474 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97016340 (fixed)   0.97019033 (relaxed)   0.97016340 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039059   -0.00088732   -0.84156354
 Singles      0.01337345   -0.04604942   -0.05517324
 Pairs        0.04869018    0.00000000   -0.04306829
 Total        1.06245421   -0.04693674   -0.93980507
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04217754
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.12268975
 One electron energy                -2921.63642331
 Two electron energy                  823.65444070
 Virial quotient                       -0.94328518
 Correlation energy                    -0.93980507
 !MRCI STATE 2.1 Energy             -2097.981982610836

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04067740 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04062196 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04067740 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03819480 (Pople, fixed reference)
 Cluster corrected energies         -2098.03813890 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03819480 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97016341 (fixed)   0.97019034 (relaxed)   0.97016341 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039059   -0.00088732   -0.84156354
 Singles      0.01337345   -0.04604942   -0.05517323
 Pairs        0.04869016   -0.00000000   -0.04306830
 Total        1.06245420   -0.04693675   -0.93980507
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04217754
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.12268813
 One electron energy                -2921.63641878
 Two electron energy                  823.65443618
 Virial quotient                       -0.94328519
 Correlation energy                    -0.93980507
 !MRCI STATE 3.1 Energy             -2097.981982603038

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04067738 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04062195 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04067738 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03819478 (Pople, fixed reference)
 Cluster corrected energies         -2098.03813888 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03819478 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97016342 (fixed)   0.97019035 (relaxed)   0.97016342 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039059   -0.00088732   -0.84156356
 Singles      0.01337345   -0.04604943   -0.05517323
 Pairs        0.04869014   -0.00000000   -0.04306828
 Total        1.06245418   -0.04693675   -0.93980507
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04217753
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.12268481
 One electron energy                -2921.63641581
 Two electron energy                  823.65443321
 Virial quotient                       -0.94328519
 Correlation energy                    -0.93980507
 !MRCI STATE 4.1 Energy             -2097.981982600604

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04067735 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04062192 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04067735 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03819476 (Pople, fixed reference)
 Cluster corrected energies         -2098.03813885 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03819476 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.97013274 (fixed)   0.97019038 (relaxed)   0.97016345 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00039059   -0.00088732   -0.84156367
 Singles      0.01337339   -0.04604932   -0.05517315
 Pairs        0.04869013   -0.00000004   -0.04306824
 Total        1.06245411   -0.04693668   -0.93980506
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.04217753
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.12266555
 One electron energy                -2921.63638828
 Two electron energy                  823.65440568
 Virial quotient                       -0.94328520
 Correlation energy                    -0.93980506
 !MRCI STATE 5.1 Energy             -2097.981982596953

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2098.04067728 (Davidson, fixed reference)
 Cluster corrected energies         -2098.04062185 (Davidson, relaxed reference)
 Cluster corrected energies         -2098.04067728 (Davidson, rotated reference)

 Cluster corrected energies         -2098.03819468 (Pople, fixed reference)
 Cluster corrected energies         -2098.03813878 (Pople, relaxed reference)
 Cluster corrected energies         -2098.03819468 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97110527 (fixed)   0.97118751 (relaxed)   0.97110527 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043496   -0.00070941   -0.00105223
 Singles      0.00566941   -0.02849677   -0.03186923
 Pairs        0.05428991   -0.90505848   -0.90134321
 Total        1.06039428   -0.93426467   -0.93426467
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.00782402
 Nuclear energy                         0.00000000
 Kinetic energy                      2224.09166491
 One electron energy                -2921.40813134
 Two electron energy                  823.46604264
 Virial quotient                       -0.94328041
 Correlation energy                    -0.93426467
 !MRCI STATE 6.1 Energy             -2097.942088693154

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.99851293 (Davidson, fixed reference)
 Cluster corrected energies         -2097.99834516 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.99851293 (Davidson, rotated reference)

 Cluster corrected energies         -2097.99603188 (Pople, fixed reference)
 Cluster corrected energies         -2097.99586329 (Pople, relaxed reference)
 Cluster corrected energies         -2097.99603188 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      100.33       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      750.01       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       736.01    583.38    132.44      8.26      2.70      9.00
 REAL TIME  *       782.17 SEC
 DISK USED  *       850.46 MB (local),       10.96 GB (total)
 SF USED    *         5.37 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2098.04067734  AU                              
 SETTING HLSDIAG(5)     =     -2098.04067740  AU                              
 SETTING HLSDIAG(6)     =     -2098.04067738  AU                              
 SETTING HLSDIAG(7)     =     -2098.04067735  AU                              
 SETTING HLSDIAG(8)     =     -2098.04067728  AU                              
 SETTING HLSDIAG(9)     =     -2097.99851293  AU                              


         HLSDIAG
    -2098.069797
    -2098.069797
    -2098.069797
    -2098.040677
    -2098.040677
    -2098.040677
    -2098.040677
    -2098.040677
    -2097.998513
                                                  

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:      42.00 sec

      292781670. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    86852 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     42.00 sec, REAL time:     43.42 sec


 SORTLS1 read   355580014. and wrote   355580014. SO integrals in  1370 records. CPU time:      3.20 sec, REAL time:      5.57 sec
 SORTLS2 read   355580014. and wrote  1807811302. SO integrals in    36 records. CPU time:      2.22 sec, REAL time:      3.01 sec

 FILE SIZES: FILE 1:  5797.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  5797.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     5528.98       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      750.01       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       784.12     48.09    583.38    132.44      8.26      2.70      9.00
 REAL TIME  *       834.92 SEC
 DISK USED  *       850.85 MB (local),       29.04 GB (total)
 SF USED    *         5.37 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:  -2098.014476  -2098.014476  -2098.014476
 Replaced energies:  -2098.069797  -2098.069797  -2098.069797

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2097.981983  -2097.981983  -2097.981983  -2097.981983  -2097.981983  -2097.942089
 Replaced energies:  -2098.040677  -2098.040677  -2098.040677  -2098.040677  -2098.040677  -2097.998513



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2098.06979703

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.04       0.00       0.00      -0.00     328.93      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     328.93       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.02       0.00    -328.93       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     465.17      -0.00      -0.00       0.00       0.00       0.00       0.00     297.28

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     351.95
                            0.00    -465.17       0.00    -328.93      -0.00      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00    -328.93       0.00       0.04       0.00       0.00      -0.00     328.93      -0.00       0.00
                            0.00       0.00     328.93       0.00       0.00       0.00      -0.00       0.00     328.93      77.32

    5   2.1  1.0  0.0     328.93       0.00      -0.00       0.00       0.02       0.00    -328.93       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    6   3.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                         -328.93      -0.00       0.00      -0.00      -0.00       0.00    -328.93      -0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00    -328.93       0.00       0.04       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     328.93       0.00       0.00       0.00      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00     328.93       0.00      -0.00       0.00       0.02       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -465.17    -297.28

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     351.95
                           -0.00      -0.00      -0.00    -328.93      -0.00       0.00      -0.00     465.17      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00     351.95       0.00       0.00       0.00       0.00       0.00     351.95    6391.03
                           -0.00    -297.28       0.00     -77.32      -0.00      -0.00       0.00     297.28      -0.00       0.00

   11   2.1  0.0  0.0       0.00    -328.04       0.00       0.00       0.00       0.00       0.00    -328.04       0.00       0.00
                           -0.00      -0.00    -328.04       0.00      -0.00       0.00       0.00       0.00     328.04      -0.00

   12   3.1  0.0  0.0     328.04       0.00      -0.00       0.00       0.00       0.00     328.04       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00     463.92       0.00       0.00      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                         -328.04      -0.00       0.00       0.00    -463.92      -0.00     328.04       0.00      -0.00      -0.00

   14   5.1  0.0  0.0      -0.00      -0.00    -140.07       0.00       0.00       0.00      -0.00      -0.00    -140.07       0.00
                            0.00    -234.76       0.00     530.09       0.00      -0.00      -0.00     234.76      -0.00      -0.00

   15   6.1  0.0  0.0      -0.00      -0.00    -546.24       0.00       0.00       0.00      -0.00      -0.00    -546.24       0.00
                            0.00    -546.24       0.00    -772.50      -0.00       0.00      -0.00     546.24      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00     328.04      -0.00      -0.00      -0.00
                            0.00       0.00     328.04      -0.00      -0.00

    2   2.1  1.0  1.0    -328.04       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00     234.76     546.24

    3   3.1  1.0  1.0       0.00      -0.00      -0.00    -140.07    -546.24
                          328.04      -0.00      -0.00      -0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -530.09     772.50

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     463.92      -0.00       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00    -463.92       0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00     328.04      -0.00      -0.00      -0.00
                           -0.00      -0.00    -328.04       0.00       0.00

    8   2.1  1.0 -1.0    -328.04       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00    -234.76    -546.24

    9   3.1  1.0 -1.0       0.00      -0.00      -0.00    -140.07    -546.24
                         -328.04       0.00       0.00       0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6391.02       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6391.02       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6391.03       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6391.04       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15645.05
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -2098.06979703 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.038       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     465.172      -0.000      -0.000

    2    1  |1 1>+              0.000       0.019       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000    -465.172      -0.000       0.000       0.000    -465.172

    1    1  |1 0>              -0.000       0.000      -0.000       0.038       0.000       0.000       0.000    -465.173
                                0.000       0.000     465.172       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.019       0.000     465.173       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                             -465.172      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000     465.173      -0.000       0.038       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    -465.173       0.000       0.000       0.000       0.019
                                0.000       0.000     465.172       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000    -465.172       0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>               0.000       0.000     497.730       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -77.317      -0.000      -0.000      -0.000    -420.417

    2    1  |0 0>               0.000    -463.921       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |0 0>             463.919       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     463.917      -0.000      -0.000

    4    1  |0 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -463.918      -0.000    -463.921      -0.000

    5    1  |0 0>              -0.000      -0.000    -198.087       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     530.087       0.000      -0.000       0.000    -332.005

    6    1  |0 0>              -0.000      -0.000    -772.502       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -772.498      -0.000       0.000       0.000    -772.505

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000       0.000       0.000     463.919      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000    -463.921       0.000       0.000      -0.000      -0.000
                              465.172       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000     497.730       0.000      -0.000      -0.000    -198.087    -772.502
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      77.317      -0.000      -0.000      -0.000    -530.087     772.498

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000     463.918      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -463.917       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     463.921      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     420.417       0.000       0.000       0.000     332.005     772.505

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     463.922      -0.000      -0.000      -0.000      -0.000

    1    1  |0 0>               0.000    6391.032       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6391.020       0.000       0.000       0.000       0.000
                             -463.922      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6391.024       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6391.029       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6391.045       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15645.050
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2098.07452486    -0.00472783    -1037.64      0.00000000        0.00      0.0000
    2 -2098.07191646    -0.00211944     -465.16      0.00260840      572.48      0.0710
    3 -2098.07191642    -0.00211940     -465.15      0.00260844      572.49      0.0710
    4 -2098.07191638    -0.00211935     -465.14      0.00260848      572.50      0.0710
    5 -2098.06800453     0.00179250      393.41      0.00652033     1431.05      0.1774
    6 -2098.06800451     0.00179252      393.41      0.00652035     1431.05      0.1774
    7 -2098.06800446     0.00179257      393.42      0.00652040     1431.06      0.1774
    8 -2098.06800442     0.00179260      393.43      0.00652044     1431.07      0.1774
    9 -2098.06800442     0.00179261      393.43      0.00652044     1431.07      0.1774
   10 -2098.04035039     0.02944664     6462.79      0.03417447     7500.43      0.9299
   11 -2098.04035038     0.02944665     6462.79      0.03417448     7500.43      0.9299
   12 -2098.04035035     0.02944668     6462.80      0.03417451     7500.44      0.9299
   13 -2098.04035032     0.02944670     6462.80      0.03417454     7500.44      0.9299
   14 -2098.04035027     0.02944676     6462.82      0.03417459     7500.46      0.9299
   15 -2097.99802398     0.07177305    15752.36      0.07650088    16790.00      2.0817

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000  0.00000001  0.70709148  0.00000000  0.00000000 -0.00000000  0.70292904 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.70709903 -0.00000001 -0.00000000 -0.00000000  0.70292142  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.57550966 -0.00000000 -0.00000000  0.00000000  0.77957180  0.00000000 -0.00000000  0.22592584
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.57549445  0.00000000  0.00000000 -0.00000000  0.19413051  0.00000000  0.00000000  0.78810251

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00337029 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.70710630 -0.00000000 -0.00000000 -0.00000000 -0.00000001

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000001  0.70712209  0.00000000 -0.00000000  0.00000000 -0.70289831  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00337022 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.70709120 -0.00000000 -0.00000000 -0.00000000 -0.00000001

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.57550261  0.00000000  0.00000000 -0.00000000  0.58545356  0.00000000 -0.00000000 -0.56216256

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.70711453 -0.00000001 -0.00000000  0.00000000 -0.70290583 -0.00000000  0.00000000

   1    1  |0 0>          -0.00000027  0.00000000  0.00000000  0.00000000 -0.10823633 -0.00000000  0.00000000  0.01049744
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000113  0.00000000 -0.00000000 -0.00000000  0.10874225  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000193  0.00000000 -0.00000000  0.00000000 -0.10874159  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000080  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000117  0.00000000 -0.00000000  0.00000000  0.01049674  0.00000000  0.00000000  0.10823588
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.07994691  0.00000000  0.00000000 -0.00000000 -0.00000071  0.00000000  0.00000000 -0.00000038
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000  0.07689223  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.07689243  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.08355655 -0.03002934 -0.04615732
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000 -0.00000000 -0.00000000  0.01577199 -0.08737663  0.04615718

   2    1  |1 0>           0.00510760 -0.00000000 -0.00000000  0.00001384  0.00000000 -0.00000000 -0.00000000
                           0.70288752 -0.00000000 -0.00000000  0.07689192  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.07689161 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-          0.00510771 -0.00000000 -0.00000000  0.00001384  0.00000000 -0.00000000 -0.00000000
                           0.70290266 -0.00000000 -0.00000000  0.07689245  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.06778526  0.05734767  0.04615761

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.07689234 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99350372  0.03354184  0.00000003
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.99406998 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000001  0.99407005  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.10873910 -0.00000000 -0.00000000  0.99406999  0.00000000 -0.00000000  0.00000000
                           0.00079016  0.00000000  0.00000000 -0.00017887 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.03354192  0.99350378  0.00000004
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000009  0.99679912
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2098.07452486     -0.00472783    -1037.64      0.00000000        0.00      0.0000
     2   1  -2098.07191646     -0.00211944     -465.16      0.00260840      572.48      0.0710
     3   1  -2098.07191642     -0.00211940     -465.15      0.00260844      572.49      0.0710
     4   1  -2098.07191638     -0.00211935     -465.14      0.00260848      572.50      0.0710
     5   1  -2098.06800453      0.00179250      393.41      0.00652033     1431.05      0.1774
     6   1  -2098.06800451      0.00179252      393.41      0.00652035     1431.05      0.1774
     7   1  -2098.06800446      0.00179257      393.42      0.00652040     1431.06      0.1774
     8   1  -2098.06800442      0.00179260      393.43      0.00652044     1431.07      0.1774
     9   1  -2098.06800442      0.00179261      393.43      0.00652044     1431.07      0.1774
    10   1  -2098.04035039      0.02944664     6462.79      0.03417447     7500.43      0.9299
    11   1  -2098.04035038      0.02944665     6462.79      0.03417448     7500.43      0.9299
    12   1  -2098.04035035      0.02944668     6462.80      0.03417451     7500.44      0.9299
    13   1  -2098.04035032      0.02944670     6462.80      0.03417454     7500.44      0.9299
    14   1  -2098.04035027      0.02944676     6462.82      0.03417459     7500.46      0.9299
    15   1  -2097.99802398      0.07177305    15752.36      0.07650088    16790.00      2.0817

 E0 =  -2098.06979703 is the energy of the lowest zeroth-order state
 E1 =  -2098.07452486 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000  0.00000001  0.70709148  0.00000000  0.00000000 -0.00000000  0.70292904 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.70709903 -0.00000001 -0.00000000 -0.00000000  0.70292142  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.57550966 -0.00000000 -0.00000000  0.00000000  0.77957180  0.00000000 -0.00000000  0.22592584
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.57549445  0.00000000  0.00000000 -0.00000000  0.19413051  0.00000000  0.00000000  0.78810251

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00337029 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.70710630 -0.00000000 -0.00000000 -0.00000000 -0.00000001

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000001  0.70712209  0.00000000 -0.00000000  0.00000000 -0.70289831  0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00337022 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.70709120 -0.00000000 -0.00000000 -0.00000000 -0.00000001

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.57550261  0.00000000  0.00000000 -0.00000000  0.58545356  0.00000000 -0.00000000 -0.56216256

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.70711453 -0.00000001 -0.00000000  0.00000000 -0.70290583 -0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000027  0.00000000  0.00000000  0.00000000 -0.10823633 -0.00000000  0.00000000  0.01049744
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000113  0.00000000 -0.00000000 -0.00000000  0.10874225  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000  0.00000193  0.00000000 -0.00000000  0.00000000 -0.10874159  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000080  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000117  0.00000000 -0.00000000  0.00000000  0.01049674  0.00000000  0.00000000  0.10823588
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.07994691  0.00000000  0.00000000 -0.00000000 -0.00000071  0.00000000  0.00000000 -0.00000038
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000  0.07689223  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.07689243  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.08355655 -0.03002934 -0.04615732
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000 -0.00000000 -0.00000000  0.01577199 -0.08737663  0.04615718

  5  1     2    1  |1 0>        0.00510760 -0.00000000 -0.00000000  0.00001384  0.00000000 -0.00000000 -0.00000000
                                0.70288752 -0.00000000 -0.00000000  0.07689192  0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.07689161 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00510771 -0.00000000 -0.00000000  0.00001384  0.00000000 -0.00000000 -0.00000000
                                0.70290266 -0.00000000 -0.00000000  0.07689245  0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.06778526  0.05734767  0.04615761

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.07689234 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99350372  0.03354184  0.00000003
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.99406998 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000001  0.99407005  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.10873910 -0.00000000 -0.00000000  0.99406999  0.00000000 -0.00000000  0.00000000
                                0.00079016  0.00000000  0.00000000 -0.00017887 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.03354192  0.99350378  0.00000004
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000009  0.99679912
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.41%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   49.41%    0.00%    0.00%
  3  1     3    1  |1 1>+        33.12%    0.00%    0.00%    0.00%   60.77%    0.00%    0.00%    5.10%
  4  1     1    1  |1 0>         33.12%    0.00%    0.00%    0.00%    3.77%    0.00%    0.00%   62.11%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.41%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.12%    0.00%    0.00%    0.00%   34.28%    0.00%    0.00%   31.60%
  9  1     3    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   49.41%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.17%    0.00%    0.00%    0.01%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.18%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.18%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    1.17%
 15  1     6    1  |0 0>          0.64%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.59%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.59%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.70%    0.09%    0.21%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.76%    0.21%
  5  1     2    1  |1 0>         49.41%    0.00%    0.00%    0.59%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.59%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        49.41%    0.00%    0.00%    0.59%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.46%    0.33%    0.21%
  9  1     3    1  |1 1>-         0.00%    0.59%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.70%    0.11%    0.00%
 11  1     2    1  |0 0>          0.00%   98.82%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%   98.82%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          1.18%    0.00%    0.00%   98.82%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.11%   98.70%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.36%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     5528.98       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      750.01       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1021.43    237.31     48.09    583.38    132.44      8.26      2.70      9.00
 REAL TIME  *      1101.40 SEC
 DISK USED  *       850.85 MB (local),       29.04 GB (total)
 SF USED    *         7.55 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=  -2097.998023978866

              CI              CI           MULTI         RHF-SCF
  -2097.94208869  -2098.01447648  -2097.00782402  -2097.10646772
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
