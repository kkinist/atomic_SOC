
 Working directory              : /wrk/irikura/molpro.x6toDGP34H/
 Global scratch directory       : /wrk/irikura/molpro.x6toDGP34H/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.x6toDGP34H/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ga SO-CI
 memory,2000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ga};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=30,sym=1,spin=0}
 
 {multi
     closed,8,6
     occ,10,12
     wf,nelec=31,sym=2,spin=1;state,6;
     wf,nelec=31,sym=2,spin=3;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,3; save,5203.2}
 hlsdiag(7) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.21 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ga SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 07-Mar-24          TIME: 10:21:11  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  24000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry GA     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     F aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GA     G aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  GA     31.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   31
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          100   (   48Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     15.991 MB (compressed) written to integral file ( 15.3%)

     Node minimum: 0.524 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107427. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1292626. AND WROTE     6503791. INTEGRALS IN     60 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      538852.  Node maximum:      543546. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.460E-03 0.307E-02 0.356E-01 0.609E-01 0.609E-01 0.609E-01 0.609E-01 0.609E-01
         2 0.776E-05 0.776E-05 0.776E-05 0.134E-01 0.134E-01 0.134E-01 0.108E+00 0.108E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.18      0.85
 REAL TIME  *         2.31 SEC
 DISK USED  *        29.42 MB (local),      408.88 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial occupancy:   9   6

 NELEC=   30   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -1941.97525469   -1941.97525469     0.00D+00     0.15D+00     0     0       0.00      0.01    start
   2    -1941.98162498      -0.00637029     0.21D-02     0.17D-01     1     0       0.00      0.01    diag
   3    -1941.98223825      -0.00061327     0.18D-02     0.30D-02     2     0       0.00      0.01    diag
   4    -1941.98237219      -0.00013394     0.38D-03     0.19D-02     3     0       0.01      0.02    diag
   5    -1941.98237921      -0.00000702     0.14D-03     0.40D-03     4     0       0.00      0.02    diag
   6    -1941.98237927      -0.00000005     0.85D-05     0.33D-04     5     0       0.01      0.03    diag
   7    -1941.98237927      -0.00000000     0.75D-06     0.55D-05     6     0       0.00      0.03    diag
   8    -1941.98237927      -0.00000000     0.45D-07     0.90D-06     7     0       0.00      0.03    fixocc
   9    -1941.98237927       0.00000000     0.23D-08     0.49D-07     0     0       0.01      0.04    diag

 Final occupancy:   9   6

 !RHF STATE 1.1 Energy              -1941.982379266484
  RHF One-electron energy           -2699.736527245130
  RHF Two-electron energy             757.754147978646
  RHF Kinetic energy                 2055.623564537090
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.944716928123

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -383.99844     1  1  s    0.99988
    2.1     2.00000   -49.58668     1  2  s    1.00104
    3.1     2.00000    -6.88211     1  3  s    0.99885
    4.1     2.00000    -1.46778     1  1  d0   1.00008
    5.1     2.00000    -1.46778     1  1  d1+  1.00012
    6.1     2.00000    -1.46778     1  1  d2-  0.95722    1  1  d1-  0.28425
    7.1     2.00000    -1.46778     1  1  d2- -0.28082    1  1  d1-  0.95792
    8.1     2.00000    -1.46778     1  1  d2+  0.99621
    9.1     2.00000    -0.69950     1  4  s    1.19415
    1.2     2.00000   -43.04408     1  1  py   0.99979
    2.2     2.00000   -43.04408     1  1  px   0.99979
    3.2     2.00000   -43.04408     1  1  pz   1.00002
    4.2     2.00000    -4.82541     1  2  py   0.99960
    5.2     2.00000    -4.82541     1  2  px   0.99960
    6.2     2.00000    -4.82541     1  2  pz   0.99960


 HOMO      9.1    -0.699498 =     -19.0343eV
 LUMO      7.2    -0.193518 =      -5.2659eV
 LUMO-HOMO         0.505980 =      13.7684eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.28      0.09      0.85
 REAL TIME  *         3.17 SEC
 DISK USED  *        29.94 MB (local),      415.11 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      78 (   38   40)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 State symmetry 2

 Number of active electrons:   3    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             3
 Number of CSFs:              26   (26 determinants, 56 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.546D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.530D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.277D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.290D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 3 6 5 1 1   2 5 3 4 6 1 5 3 4 6   2 1 2 6 4 3 5 1 3 5   6 4 2 71415 81211 9
                                       1310 1 2 5 3 4 6
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.212D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.210D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.712D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.134D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.134D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.232D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.105D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.824D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.662D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.662D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 2   1 3 3 2 110 8 5 4 7   9 6 810 6 9 7 5 4 3   1 2 4 5 6 810 7 9 3
                                        1 2 4 5 9 710 8 6 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111
 
 Number of orbital rotations:  912  ( 52 closed/active, 544 closed/virtual, 0 active/active, 316 active/virtual )
 Total number of variables:    1710
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -1942.05245942   -1942.05993191   -0.00747249    0.03842199 0.00001792 0.00000000  0.29E+00      0.41
   2    7   12    0  -1942.05983995   -1942.05984443   -0.00000447    0.00171659 0.00000016 0.00000000  0.89E-02      0.90
   3    7   14    0  -1942.05984443   -1942.05984443   -0.00000000    0.00000180 0.00000001 0.00000000  0.66E-05      1.40

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.31E-09)
                       Final energy:  -1942.05984443
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -1942.197019389510
 Nuclear energy                                  0.00000000
 Kinetic energy                               2056.24244685
 One electron energy                         -2709.90037218
 Two electron energy                           767.70335279
 Virial ratio                                    1.94453697
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -1942.197019389468
 Nuclear energy                                  0.00000000
 Kinetic energy                               2056.24244685
 One electron energy                         -2709.90037218
 Two electron energy                           767.70335279
 Virial ratio                                    1.94453697
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -1942.197019389427
 Nuclear energy                                  0.00000000
 Kinetic energy                               2056.24244685
 One electron energy                         -2709.90037218
 Two electron energy                           767.70335279
 Virial ratio                                    1.94453697
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -1942.068485028183
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.73975815
 One electron energy                         -2704.17565596
 Two electron energy                           762.10717093
 Virial ratio                                    1.94470542
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -1942.068485028178
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.73975815
 One electron energy                         -2704.17565596
 Two electron energy                           762.10717094
 Virial ratio                                    1.94470542
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy             -1942.068485028175
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.73975815
 One electron energy                         -2704.17565596
 Two electron energy                           762.10717093
 Virial ratio                                    1.94470542
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -1941.914028875683
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.12002739
 One electron energy                         -2701.73874017
 Two electron energy                           759.82471130
 Virial ratio                                    1.94491514
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -1941.914028875629
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.12002738
 One electron energy                         -2701.73874017
 Two electron energy                           759.82471130
 Virial ratio                                    1.94491514
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -1941.914028875620
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.12002738
 One electron energy                         -2701.73874017
 Two electron energy                           759.82471129
 Virial ratio                                    1.94491514
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999999989
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999939288
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000061152
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.999999856091
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.000000186892
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.999999873864
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999998942
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.000000976587
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999024044
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999162672
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000000899088
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999938851
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.000000580266
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999849101
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999545180
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999564718
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999024514
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.000001406617
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000000837339
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999161624
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999999997
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999563643
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.999999964007
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.000000580957
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000436340
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999998899
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999569339
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     2.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     2.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 4 3 5 1 1   2 6 4 5 3 1 6 2 4 5   3 1 2 6 4 3 5 1 6 4   3 5 2 711 812 91415
                                       1310 1 2 5 3 6 4
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 1   2 3 3 1 2 510 8 4 6   7 910 8 6 5 4 9 7 3   1 2 5 4 6 810 7 9 3
                                        1 2 5 4 9 7 610 8 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -383.81280     1  1  s    0.99988
    2.1     2.00000   -49.40111     1  2  s    1.00111
    3.1     2.00000    -6.69655     1  3  s    0.99765
    4.1     2.00000    -1.28429     1  1  d1-  1.00075
    5.1     2.00000    -1.28429     1  1  d0   1.00075
    6.1     2.00000    -1.28429     1  1  d1+  1.00075
    7.1     2.00000    -1.28429     1  1  d2-  1.00075
    8.1     2.00000    -1.28429     1  1  d2+  1.00075
    9.1     1.60968    -0.46367     1  4  s    1.09200
   10.1     0.33610     0.00796     1  4  s    0.40312    1  5  s   -0.40894    1  6  s    0.29378    1  9  s    1.04286
    1.2     2.00000   -42.85960     1  1  py   1.00002
    2.2     2.00000   -42.85960     1  1  px   1.00002
    3.2     2.00000   -42.85960     1  1  pz   1.00002
    4.2     2.00000    -4.64270     1  2  py   0.99527
    5.2     2.00000    -4.64270     1  2  px   0.99527
    6.2     2.00000    -4.64270     1  2  pz   0.99527
    7.2     0.24025    -0.03291     1  3  py   2.28816    1  4  py  -0.47484    1  5  py  -0.93277
    8.2     0.24025    -0.03291     1  3  px   2.28816    1  4  px  -0.47484    1  5  px  -0.93277
    9.2     0.24025    -0.03291     1  3  pz   2.28816    1  4  pz  -0.47484    1  5  pz  -0.93277
   10.2     0.11116     0.04013     1  3  px  -0.76656    1  8  px   1.23487
   11.2     0.11116     0.04013     1  3  py  -0.76656    1  8  py   1.23487
   12.2     0.11116     0.04013     1  3  pz  -0.76656    1  8  pz   1.23487
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 0a0000     -0.00000324      0.00023605      0.95800321     -0.00007953     -0.20965346     -0.00003972
 20 00a000      0.95800285     -0.00087663      0.00000346     -0.00013849      0.00003977     -0.20965340
 20 a00000      0.00087663      0.95800281     -0.00023605     -0.20965341      0.00007951      0.00013851
 20 000a00     -0.00000071      0.00005171      0.20985757      0.00036085      0.95122098      0.00018022
 20 00000a      0.20985746     -0.00019203      0.00000076      0.00062835     -0.00018046      0.95122085
 20 0000a0      0.00019203      0.20985747     -0.00005171      0.95122079     -0.00036073     -0.00062842
 00 2a0000      0.00000043     -0.00003121     -0.12666757      0.00001162      0.03063591      0.00000580
 00 0a2000      0.00000043     -0.00003121     -0.12666757      0.00001162      0.03063591      0.00000580
 00 02a000     -0.12666753      0.00011591     -0.00000046      0.00002024     -0.00000581      0.03063590
 00 20a000     -0.12666753      0.00011591     -0.00000046      0.00002024     -0.00000581      0.03063590
 00 a20000     -0.00011591     -0.12666752      0.00003121      0.03063590     -0.00001162     -0.00002024
 00 a02000     -0.00011591     -0.12666752      0.00003121      0.03063590     -0.00001162     -0.00002024
 00 200a00      0.00000008     -0.00000609     -0.02470116     -0.00004438     -0.11699914     -0.00002217
 00 002a00      0.00000008     -0.00000609     -0.02470116     -0.00004438     -0.11699914     -0.00002217
 00 02000a     -0.02470115      0.00002260     -0.00000009     -0.00007729      0.00002220     -0.11699912
 00 20000a     -0.02470115      0.00002260     -0.00000009     -0.00007729      0.00002220     -0.11699912
 00 0200a0     -0.00002260     -0.02470115      0.00000609     -0.11699911      0.00004437      0.00007729
 00 0020a0     -0.00002260     -0.02470115      0.00000609     -0.11699911      0.00004437      0.00007729
 00 020a00      0.00000012     -0.00000893     -0.03625835     -0.00004200     -0.11072604     -0.00002098
 00 00200a     -0.03625834      0.00003318     -0.00000013     -0.00007314      0.00002101     -0.11072603
 00 2000a0     -0.00003318     -0.03625834      0.00000893     -0.11072602      0.00004199      0.00007315
 aa 0b0000     -0.00000002      0.00000111      0.00451975     -0.00002214     -0.05837257     -0.00001106
 aa 00b000      0.00451975     -0.00000414      0.00000002     -0.00003856      0.00001107     -0.05837257
 aa b00000      0.00000414      0.00451975     -0.00000111     -0.05837256      0.00002214      0.00003856
 ab 0a0000      0.00000012     -0.00000876     -0.03556498      0.00002011      0.05300993      0.00001004
 ab 00a000     -0.03556496      0.00003254     -0.00000013      0.00003502     -0.00001006      0.05300992
 ab a00000     -0.00003254     -0.03556496      0.00000876      0.05300992     -0.00002010     -0.00003502
 
 Energy:    -1942.19701939  -1942.19701939  -1942.19701939  -1942.06848503  -1942.06848503  -1942.06848503
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 aa 00a000      0.99810258     -0.00003312     -0.00065847
 aa 0a0000      0.00003247      0.99810231     -0.00098581
 aa a00000      0.00065851      0.00098579      0.99810210
 
 Energy:    -1941.91402888  -1941.91402888  -1941.91402888
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.76       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.61      1.33      0.09      0.85
 REAL TIME  *         4.90 SEC
 DISK USED  *        44.65 MB (local),      591.63 MB (total)
 SF USED    *        37.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -1942.197019   2.0
    -1942.197019   2.0
    -1942.197019   2.0
    -1942.068485   2.0
    -1942.068485   2.0
    -1942.068485   2.0
    -1941.914029   2.0
    -1941.914029   2.0
    -1941.914029   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 31
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.07 sec, npass=  1  Memory used:   0.99 MW


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1942.19701939
     2     -1942.19701939
     3     -1942.19701939
     4     -1942.06848503
     5     -1942.06848503
     6     -1942.06848503

 Number of blocks in overlap matrix:   598   Smallest eigenvalue:  0.82D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3021580
 Number of doubly external configurations:       2024966
 Total number of contracted configurations:      5099818
 Total number of uncontracted configurations:   39479590

 Diagonal Coupling coefficients finished.               Storage:  22122804 words, CPU-Time:     26.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1105157 words, CPU-time:      0.10 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1942.19701939     0.00000000    -0.87505123  0.40D-01  0.72D-01    37.76
    1     2     2     1.00000000     0.00000000 -1942.19701939    -0.00000000    -0.87483624  0.40D-01  0.72D-01    37.76
    1     3     3     1.00000000     0.00000000 -1942.19701939    -0.00000000    -0.87510943  0.40D-01  0.72D-01    37.76
    1     4     4     1.00000000     0.00000000 -1942.06848503    -0.00000000    -0.84686963  0.21D-01  0.68D-01    37.76
    1     5     5     1.00000000     0.00000000 -1942.06848503     0.00000000    -0.84681937  0.21D-01  0.68D-01    37.76
    1     6     6     1.00000000     0.00000000 -1942.06848503     0.00000000    -0.84680570  0.20D-01  0.68D-01    37.76
    2     1     1     1.06741704    -0.67920869 -1942.87622808    -0.67920869    -0.02384324  0.33D-02  0.15D-02   258.79
    2     2     2     1.06736525    -0.67917239 -1942.87619178    -0.67917239    -0.02388818  0.33D-02  0.15D-02   258.79
    2     3     3     1.06748523    -0.67916963 -1942.87618902    -0.67916963    -0.02388094  0.33D-02  0.15D-02   258.79
    2     4     4     1.05357303    -0.66619762 -1942.73468265    -0.66619762    -0.02244721  0.24D-02  0.14D-02   258.79
    2     5     5     1.05358977    -0.66618935 -1942.73467438    -0.66618935    -0.02245557  0.24D-02  0.14D-02   258.79
    2     6     6     1.05362368    -0.66618912 -1942.73467414    -0.66618912    -0.02245070  0.24D-02  0.14D-02   258.79
    3     1     1     1.06092608    -0.70056691 -1942.89758630    -0.02135822    -0.00071355  0.11D-03  0.56D-04   480.48
    3     2     2     1.06095649    -0.70056499 -1942.89758438    -0.02139260    -0.00071498  0.11D-03  0.57D-04   480.48
    3     3     3     1.06095441    -0.70056420 -1942.89758358    -0.02139457    -0.00071580  0.11D-03  0.57D-04   480.48
    3     4     4     1.05223070    -0.68570334 -1942.75418836    -0.01950571    -0.00068438  0.73D-04  0.50D-04   480.48
    3     5     5     1.05223096    -0.68570314 -1942.75418817    -0.01951379    -0.00068460  0.73D-04  0.50D-04   480.48
    3     6     6     1.05223844    -0.68570187 -1942.75418689    -0.01951275    -0.00068586  0.73D-04  0.50D-04   480.48
    4     1     1     1.06021842    -0.70124767 -1942.89826706    -0.00068076    -0.00004196  0.92D-05  0.25D-05   700.50
    4     2     2     1.06021923    -0.70124758 -1942.89826697    -0.00068259    -0.00004205  0.92D-05  0.25D-05   700.50
    4     3     3     1.06021762    -0.70124757 -1942.89826695    -0.00068337    -0.00004208  0.92D-05  0.25D-05   700.50
    4     4     4     1.05269316    -0.68633883 -1942.75482385    -0.00063549    -0.00003669  0.72D-05  0.17D-05   700.50
    4     5     5     1.05269325    -0.68633881 -1942.75482384    -0.00063567    -0.00003668  0.72D-05  0.17D-05   700.50
    4     6     6     1.05269220    -0.68633880 -1942.75482383    -0.00063693    -0.00003672  0.72D-05  0.17D-05   700.50
    5     1     1     1.06035484    -0.70128691 -1942.89830630    -0.00003924    -0.00000212  0.31D-06  0.16D-06   919.23
    5     2     2     1.06035321    -0.70128691 -1942.89830630    -0.00003933    -0.00000213  0.32D-06  0.16D-06   919.23
    5     3     3     1.06035333    -0.70128690 -1942.89830629    -0.00003934    -0.00000213  0.31D-06  0.16D-06   919.23
    5     4     4     1.05294649    -0.68637406 -1942.75485909    -0.00003524    -0.00000170  0.24D-06  0.10D-06   919.23
    5     5     5     1.05294567    -0.68637406 -1942.75485909    -0.00003525    -0.00000170  0.24D-06  0.11D-06   919.23
    5     6     6     1.05294649    -0.68637404 -1942.75485907    -0.00003524    -0.00000170  0.24D-06  0.10D-06   919.23
    6     1     1     1.06035862    -0.70128903 -1942.89830842    -0.00000212    -0.00000011  0.12D-07  0.11D-07  1137.78
    6     2     2     1.06035830    -0.70128903 -1942.89830842    -0.00000213    -0.00000011  0.12D-07  0.11D-07  1137.78
    6     3     3     1.06035835    -0.70128903 -1942.89830842    -0.00000213    -0.00000011  0.12D-07  0.11D-07  1137.78
    6     4     4     1.05299022    -0.68637583 -1942.75486086    -0.00000177    -0.00000009  0.87D-08  0.86D-08  1137.78
    6     5     5     1.05299021    -0.68637583 -1942.75486086    -0.00000177    -0.00000009  0.86D-08  0.86D-08  1137.78
    6     6     6     1.05299022    -0.68637581 -1942.75486084    -0.00000177    -0.00000009  0.87D-08  0.86D-08  1137.78
    7     1     1     1.06035866    -0.70128914 -1942.89830853    -0.00000011    -0.00000001  0.15D-08  0.43D-09  1356.38
    7     2     2     1.06035861    -0.70128914 -1942.89830853    -0.00000011    -0.00000001  0.15D-08  0.43D-09  1356.38
    7     3     3     1.06035860    -0.70128914 -1942.89830853    -0.00000011    -0.00000001  0.15D-08  0.43D-09  1356.38
    7     4     4     1.05299585    -0.68637592 -1942.75486095    -0.00000009    -0.00000001  0.14D-08  0.33D-09  1356.38
    7     5     5     1.05299587    -0.68637592 -1942.75486095    -0.00000009    -0.00000001  0.14D-08  0.33D-09  1356.38
    7     6     6     1.05299583    -0.68637590 -1942.75486092    -0.00000009    -0.00000001  0.14D-08  0.33D-09  1356.38


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.8%
 S   1.3%  52.4%
 P   0.5%  28.2%  10.1%

 Initialization:   1.9%
 Other:            2.7%

 Total CPU:     1356.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022200/000          -0.0059158  -0.0011472   0.9424390  -0.0000218   0.0000001  -0.1532058
 2222222022200000/          -0.0009725  -0.0001886   0.1549336   0.0001336  -0.0000003   0.9389258
 222222202220000/0           0.1451449   0.0541981   0.0009771  -0.0005568   0.9389256   0.0000004
 22222220222000/00          -0.0541982   0.1451480  -0.0001635   0.9389256   0.0005568  -0.0001336
 222222202220/0000          -0.3296799   0.8829144  -0.0009947  -0.1532059  -0.0000909   0.0000218
 22222220222/00000           0.8828951   0.3296794   0.0059433   0.0000909  -0.1532059  -0.0000001
 2222220022220/000           0.0007199   0.0001396  -0.1146798   0.0000030  -0.0000000   0.0213684
 2222220022202/000           0.0007199   0.0001396  -0.1146798   0.0000030  -0.0000000   0.0213683
 222222002222/0000           0.0401168  -0.1074366   0.0001210   0.0213683   0.0000127  -0.0000030
 222222002220/2000           0.0401168  -0.1074366   0.0001210   0.0213683   0.0000127  -0.0000030
 22222200222/20000          -0.1074343  -0.0401167  -0.0007232  -0.0000127   0.0213683   0.0000000
 22222200222/02000          -0.1074343  -0.0401167  -0.0007232  -0.0000127   0.0213683   0.0000000
 2222220022220000/           0.0001036   0.0000201  -0.0165061  -0.0000151   0.0000000  -0.1061090
 2222220022202000/           0.0001036   0.0000201  -0.0165061  -0.0000151   0.0000000  -0.1061090
 22222200222200/00           0.0057741  -0.0154636   0.0000174  -0.1061090  -0.0000629   0.0000151
 22222200222002/00           0.0057741  -0.0154636   0.0000174  -0.1061090  -0.0000629   0.0000151
 222222002220200/0          -0.0154633  -0.0057741  -0.0001041   0.0000629  -0.1061089  -0.0000000
 222222002220020/0          -0.0154633  -0.0057741  -0.0001041   0.0000629  -0.1061089  -0.0000000
 2222220022200200/           0.0001689   0.0000328  -0.0269126  -0.0000144   0.0000000  -0.1009412
 22222200222020/00           0.0094144  -0.0252126   0.0000284  -0.1009412  -0.0000599   0.0000144
 222222002222000/0          -0.0252121  -0.0094144  -0.0001697   0.0000599  -0.1009412  -0.0000000
 222222//22200\000          -0.0000341  -0.0000066   0.0054297  -0.0000095   0.0000000  -0.0668988
 222222//222\00000           0.0050867   0.0018994   0.0000342   0.0000397  -0.0668982  -0.0000000
 222222//2220\0000          -0.0018994   0.0050868  -0.0000057  -0.0668982  -0.0000397   0.0000095
 222222/\2220000/0           0.0188159   0.0070260   0.0001267  -0.0000352   0.0592818   0.0000000
 222222/\22200000/          -0.0001261  -0.0000244   0.0200848   0.0000084  -0.0000000   0.0592818
 222222/\222000/00          -0.0070260   0.0188163  -0.0000212   0.0592818   0.0000352  -0.0000084

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.006082    0.907735   -0.338955   -0.047644    0.017791    0.000319
 2          -0.001179    0.338955    0.907754   -0.017791   -0.047646    0.000062
 3           0.968954    0.006111   -0.001023   -0.000321    0.000054   -0.050858
 4           0.000008   -0.000032    0.053601   -0.000576    0.972076    0.000138
 5          -0.000000    0.053601    0.000032    0.972076    0.000576   -0.000000
 6           0.053601    0.000000   -0.000008    0.000000   -0.000138    0.972076

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970306   -0.000000   -0.000000   -0.000451    0.001204   -0.000008
 2          -0.000000    0.970307   -0.000000    0.001204    0.000451   -0.000002
 3          -0.000000   -0.000000    0.970307   -0.000001    0.000008    0.001286
 4          -0.000451    0.001204   -0.000001    0.973552    0.000000   -0.000000
 5           0.001204    0.000451    0.000008    0.000000    0.973552   -0.000000
 6          -0.000008   -0.000002    0.001286   -0.000000   -0.000000    0.973552


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.90773461 (fixed)   0.97053818 (relaxed)   0.97030649 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00168079   -0.00234047   -0.61224295
 Singles      0.01585946   -0.05193361   -0.05936912
 Pairs        0.04460064   -0.00024597   -0.02967706
 Total        1.06214090   -0.05452005   -0.70128914
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.19664821
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.15841422
 One electron energy                -2707.84537649
 Two electron energy                  764.94706797
 Virial quotient                       -0.94491664
 Correlation energy                    -0.70166032
 !MRCI STATE 1.2 Energy             -1942.898308529386

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94191033 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94155454 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94191033 (Davidson, rotated reference)

 Cluster corrected energies         -1942.93958713 (Pople, fixed reference)
 Cluster corrected energies         -1942.93923310 (Pople, relaxed reference)
 Cluster corrected energies         -1942.93958713 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.90775444 (fixed)   0.97053821 (relaxed)   0.97030651 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00168079   -0.00234047   -0.61242965
 Singles      0.01585944   -0.05193361   -0.05936911
 Pairs        0.04460062   -0.00004770   -0.02949038
 Total        1.06214085   -0.05432178   -0.70128914
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.19664820
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.15841198
 One electron energy                -2707.84537543
 Two electron energy                  764.94706690
 Virial quotient                       -0.94491665
 Correlation energy                    -0.70166032
 !MRCI STATE 2.2 Energy             -1942.898308529325

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94191030 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94155450 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94191030 (Davidson, rotated reference)

 Cluster corrected energies         -1942.93958710 (Pople, fixed reference)
 Cluster corrected energies         -1942.93923306 (Pople, relaxed reference)
 Cluster corrected energies         -1942.93958710 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96895375 (fixed)   0.97053821 (relaxed)   0.97030651 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00168079   -0.00234047   -0.64936691
 Singles      0.01585944   -0.05193361   -0.05936911
 Pairs        0.04460061    0.03918487    0.00744688
 Total        1.06214084   -0.01508921   -0.70128914
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.19664820
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.15841207
 One electron energy                -2707.84537632
 Two electron energy                  764.94706779
 Virial quotient                       -0.94491665
 Correlation energy                    -0.70166032
 !MRCI STATE 3.2 Energy             -1942.898308526551

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94191029 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94155450 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94191029 (Davidson, rotated reference)

 Cluster corrected energies         -1942.93958709 (Pople, fixed reference)
 Cluster corrected energies         -1942.93923305 (Pople, relaxed reference)
 Cluster corrected energies         -1942.93958709 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97207581 (fixed)   0.97374818 (relaxed)   0.97355183 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00197108   -0.00301072   -0.60827238
 Singles      0.01095617   -0.04586745   -0.05060280
 Pairs        0.04214414   -0.00009058   -0.02750074
 Total        1.05507139   -0.04896876   -0.68637592
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.06885621
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.88657301
 One electron energy                -2702.33313508
 Two electron energy                  759.57827413
 Virial quotient                       -0.94497181
 Correlation energy                    -0.68600473
 !MRCI STATE 4.2 Energy             -1942.754860946231

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.79264018 (Davidson, fixed reference)
 Cluster corrected energies         -1942.79234832 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.79264018 (Davidson, rotated reference)

 Cluster corrected energies         -1942.79041868 (Pople, fixed reference)
 Cluster corrected energies         -1942.79013159 (Pople, relaxed reference)
 Cluster corrected energies         -1942.79041868 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97207581 (fixed)   0.97374817 (relaxed)   0.97355182 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00197108   -0.00301072   -0.60835844
 Singles      0.01095618   -0.04586746   -0.05060280
 Pairs        0.04214415    0.00000023   -0.02741468
 Total        1.05507141   -0.04887795   -0.68637592
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.06885621
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.88657252
 One electron energy                -2702.33313664
 Two electron energy                  759.57827569
 Virial quotient                       -0.94497181
 Correlation energy                    -0.68600473
 !MRCI STATE 5.2 Energy             -1942.754860946100

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.79264019 (Davidson, fixed reference)
 Cluster corrected energies         -1942.79234833 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.79264019 (Davidson, rotated reference)

 Cluster corrected energies         -1942.79041869 (Pople, fixed reference)
 Cluster corrected energies         -1942.79013160 (Pople, relaxed reference)
 Cluster corrected energies         -1942.79041869 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.97207598 (fixed)   0.97374819 (relaxed)   0.97355184 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00197108   -0.00301072   -0.00512495
 Singles      0.01095616   -0.04586743   -0.05060278
 Pairs        0.04214413   -0.63645418   -0.63064817
 Total        1.05507137   -0.68533233   -0.68637590
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.06885621
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.88657340
 One electron energy                -2702.33313566
 Two electron energy                  759.57827473
 Virial quotient                       -0.94497181
 Correlation energy                    -0.68600471
 !MRCI STATE 6.2 Energy             -1942.754860924583

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.79264014 (Davidson, fixed reference)
 Cluster corrected energies         -1942.79234828 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.79264014 (Davidson, rotated reference)

 Cluster corrected energies         -1942.79041864 (Pople, fixed reference)
 Cluster corrected energies         -1942.79013155 (Pople, relaxed reference)
 Cluster corrected energies         -1942.79041864 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      241.78       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1511.93   1509.30      1.33      0.09      0.85
 REAL TIME  *      1539.62 SEC
 DISK USED  *       285.68 MB (local),        3.40 GB (total)
 SF USED    *         2.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1942.94191033  AU                              
 SETTING HLSDIAG(2)     =     -1942.94191030  AU                              
 SETTING HLSDIAG(3)     =     -1942.94191029  AU                              
 SETTING HLSDIAG(4)     =     -1942.79264018  AU                              
 SETTING HLSDIAG(5)     =     -1942.79264019  AU                              
 SETTING HLSDIAG(6)     =     -1942.79264014  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 31
 Maximum number of shells:             4
 Maximum number of spin couplings:    48

 Reference space:       26 conf       26 CSFs
 N elec internal:    20126 conf    79976 CSFs
 N-1 el internal:     7696 conf    52282 CSFs
 N-2 el internal:     1430 conf    15056 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      78 (  38  40 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  16

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1941.91402888
     2     -1941.91402888
     3     -1941.91402888

 Number of blocks in overlap matrix:   431   Smallest eigenvalue:  0.73D-03
 Number of N-2 electron functions:     593
 Number of N-1 electron functions:   52282

 Number of internal configurations:                39848
 Number of singly external configurations:       2039092
 Number of doubly external configurations:        902761
 Total number of contracted configurations:      2981701
 Total number of uncontracted configurations:   24842650

 Diagonal Coupling coefficients finished.               Storage:  12205284 words, CPU-Time:      3.19 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    878211 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1941.91402888    -0.00000000    -0.82624229  0.17D-01  0.67D-01     5.29
    1     2     2     1.00000000     0.00000000 -1941.91402888     0.00000000    -0.82623667  0.17D-01  0.67D-01     5.29
    1     3     3     1.00000000     0.00000000 -1941.91402888    -0.00000000    -0.82623782  0.17D-01  0.67D-01     5.29
    2     1     1     1.05224935    -0.65246361 -1942.56649249    -0.65246361    -0.02207808  0.24D-02  0.14D-02    62.56
    2     2     2     1.05225018    -0.65246276 -1942.56649163    -0.65246276    -0.02207883  0.24D-02  0.14D-02    62.56
    2     3     3     1.05224978    -0.65246273 -1942.56649160    -0.65246273    -0.02207878  0.24D-02  0.14D-02    62.56
    3     1     1     1.05039162    -0.67145155 -1942.58548043    -0.01898794    -0.00072812  0.91D-04  0.53D-04   119.14
    3     2     2     1.05039137    -0.67145121 -1942.58548009    -0.01898845    -0.00072839  0.91D-04  0.53D-04   119.14
    3     3     3     1.05039135    -0.67145120 -1942.58548007    -0.01898847    -0.00072840  0.91D-04  0.53D-04   119.14
    4     1     1     1.05061217    -0.67211654 -1942.58614541    -0.00066498    -0.00003599  0.64D-05  0.19D-05   175.66
    4     2     2     1.05061200    -0.67211651 -1942.58614539    -0.00066530    -0.00003602  0.64D-05  0.19D-05   175.66
    4     3     3     1.05061201    -0.67211651 -1942.58614539    -0.00066531    -0.00003602  0.64D-05  0.19D-05   175.66
    5     1     1     1.05076485    -0.67215140 -1942.58618028    -0.00003487    -0.00000138  0.16D-06  0.99D-07   231.72
    5     2     2     1.05076475    -0.67215140 -1942.58618028    -0.00003489    -0.00000138  0.16D-06  0.99D-07   231.72
    5     3     3     1.05076476    -0.67215140 -1942.58618028    -0.00003489    -0.00000138  0.16D-06  0.99D-07   231.72
    6     1     1     1.05080089    -0.67215286 -1942.58618174    -0.00000146    -0.00000006  0.53D-08  0.69D-08   287.82
    6     2     2     1.05080089    -0.67215286 -1942.58618174    -0.00000146    -0.00000006  0.53D-08  0.69D-08   287.82
    6     3     3     1.05080091    -0.67215286 -1942.58618174    -0.00000146    -0.00000006  0.53D-08  0.69D-08   287.82
    7     1     1     1.05080589    -0.67215292 -1942.58618180    -0.00000006    -0.00000001  0.12D-08  0.23D-09   343.82
    7     2     2     1.05080589    -0.67215292 -1942.58618180    -0.00000006    -0.00000001  0.12D-08  0.23D-09   343.82
    7     3     3     1.05080589    -0.67215292 -1942.58618180    -0.00000006    -0.00000001  0.12D-08  0.23D-09   343.82


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.6%
 S   2.0%  58.4%
 P   0.6%  27.3%   4.8%

 Initialization:   1.0%
 Other:            2.3%

 Total CPU:      343.8 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222//222/00000           0.0000000   0.9734961  -0.0000000
 222222//2220/0000           0.9734961  -0.0000000   0.0000000
 222222//22200/000          -0.0000000   0.0000000   0.9734961

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.975159    0.000000
 2           0.000000   -0.000000    0.975159
 3           0.975159    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.975159    0.000000    0.000000
 2           0.000000    0.975159   -0.000000
 3           0.000000   -0.000000    0.975159


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97515938 (fixed)   0.97516544 (relaxed)   0.97515938 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00075161   -0.00162297   -0.60352335
 Singles      0.00898885   -0.03799556   -0.04187810
 Pairs        0.04185522   -0.00000000   -0.02675147
 Total        1.05159568   -0.03961854   -0.67215292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.91402888
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.54240832
 One electron energy                -2700.64432211
 Two electron energy                  758.05814032
 Virial quotient                       -0.94504797
 Correlation energy                    -0.67215292
 !MRCI STATE 1.2 Energy             -1942.586181798195

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.62086198 (Davidson, fixed reference)
 Cluster corrected energies         -1942.62085320 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.62086198 (Davidson, rotated reference)

 Cluster corrected energies         -1942.61828827 (Pople, fixed reference)
 Cluster corrected energies         -1942.61827980 (Pople, relaxed reference)
 Cluster corrected energies         -1942.61828827 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97515938 (fixed)   0.97516544 (relaxed)   0.97515938 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00075161   -0.00162297   -0.00202375
 Singles      0.00898885   -0.03799556   -0.04187810
 Pairs        0.04185522   -0.63253439   -0.62825107
 Total        1.05159568   -0.67215292   -0.67215292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.91402888
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.54240831
 One electron energy                -2700.64432210
 Two electron energy                  758.05814030
 Virial quotient                       -0.94504797
 Correlation energy                    -0.67215292
 !MRCI STATE 2.2 Energy             -1942.586181798188

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.62086198 (Davidson, fixed reference)
 Cluster corrected energies         -1942.62085320 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.62086198 (Davidson, rotated reference)

 Cluster corrected energies         -1942.61828827 (Pople, fixed reference)
 Cluster corrected energies         -1942.61827980 (Pople, relaxed reference)
 Cluster corrected energies         -1942.61828827 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97515938 (fixed)   0.97516544 (relaxed)   0.97515938 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00075161   -0.00162297   -0.60352335
 Singles      0.00898886   -0.03799556   -0.04187810
 Pairs        0.04185522    0.00000000   -0.02675146
 Total        1.05159568   -0.03961853   -0.67215292
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.91402888
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.54240786
 One electron energy                -2700.64432162
 Two electron energy                  758.05813982
 Virial quotient                       -0.94504797
 Correlation energy                    -0.67215292
 !MRCI STATE 3.2 Energy             -1942.586181798075

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.62086199 (Davidson, fixed reference)
 Cluster corrected energies         -1942.62085320 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.62086199 (Davidson, rotated reference)

 Cluster corrected energies         -1942.61828827 (Pople, fixed reference)
 Cluster corrected energies         -1942.61827981 (Pople, relaxed reference)
 Cluster corrected energies         -1942.61828827 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      312.45       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1865.11    353.17   1509.30      1.33      0.09      0.85
 REAL TIME  *      1898.80 SEC
 DISK USED  *       356.34 MB (local),        4.23 GB (total)
 SF USED    *         2.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =     -1942.62086198  AU                              
 SETTING HLSDIAG(8)     =     -1942.62086198  AU                              
 SETTING HLSDIAG(9)     =     -1942.62086199  AU                              


         HLSDIAG
    -1942.941910
    -1942.941910
    -1942.941910
    -1942.792640
    -1942.792640
    -1942.792640
    -1942.620862
    -1942.620862
    -1942.620862
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

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

 Time for Seward_LS:       4.38 sec

        6950436. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1914 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.38 sec, REAL time:      4.49 sec


 SORTLS1 read     7821185. and wrote     7821185. SO integrals in    36 records. CPU time:      0.08 sec, REAL time:      0.11 sec
 SORTLS2 read     7821185. and wrote    38256242. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:   171.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:  -1942.898309  -1942.898309  -1942.898309  -1942.754861  -1942.754861  -1942.754861
 Replaced energies:  -1942.941910  -1942.941910  -1942.941910  -1942.792640  -1942.792640  -1942.792640

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   3

 Original energies:  -1942.586182  -1942.586182  -1942.586182
 Replaced energies:  -1942.620862  -1942.620862  -1942.620862

 >>> Fock matrix approximation error in all internal so: 
   4.1797476200072887E-003  (exact)    2.1250770191696524E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.1051348192843413E-004  (exact)    4.1207358364779605E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.66586898759046631       (exact)  -0.33854049343485437       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3162652614058152E-004  (exact)   -6.0551420724822972E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0827393982085654E-006  (exact)    1.5172910936663783E-007  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.0325383037687810       (exact)  -0.42545768744426399       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.62380344144127720       (exact)   0.31568555372512508       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.23293269547908985       (exact)   0.11787925433380456       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.1992298425076059E-003  (exact)    2.1250956127067794E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.7983761666264806E-003  (exact)   -2.4723727606310275E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.0325067481884123       (exact)   0.41690459400852481       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.3385770052867227E-006  (exact)    1.8411527459525234E-007  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.1797477458514571E-003  (exact)    2.1250776572410363E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.1051377968512019E-004  (exact)    4.1207377969271902E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.66586893020598326       (exact)  -0.33854043844905740       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3162662089333420E-004  (exact)   -6.0551403190145946E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0827736129921704E-006  (exact)    1.5168637059271082E-007  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.0325383069555722       (exact)  -0.42545768229853481       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.23293274856295829       (exact)  -0.11760549020163874       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.62381626881467389       (exact)   0.31495880179349628       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.0281786561401309E-004  (exact)   -3.5485990190950244E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.0325065096483610       (exact)   0.41259283778178824       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7983763242388582E-003  (exact)    2.4468031756980465E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3161659404877611E-004  (exact)   -5.8721524970807936E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.72030635924314423       (exact)   0.36543140613672292       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.26896758342996635       (exact)   0.13645471698529127       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.8488573672097893E-003  (exact)    2.4599721510981647E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.0765854601842923E-003  (exact)   -2.8838457062124273E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.5016370321125430       (exact)   0.48628860877176705       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.5456205042181232E-006  (exact)    2.1479600623480948E-007  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.26896768371323138       (exact)   0.13581267268302272       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.72032127489857722       (exact)  -0.36371937426740775       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.1154746427337520E-004  (exact)    4.0980073104160354E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.5016368208442223       (exact)  -0.47642032825751751       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.0765856859909140E-003  (exact)   -2.8253246122654578E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9838854119528184E-004  (exact)    6.7804963989471855E-005  (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1942.94191033

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.96    -108.59      -0.90
                           -0.00     310.43       0.38    -135.55     -50.71       0.02      -0.00      -0.33    -290.83       0.02

    2   2.2  0.5  0.5       0.00       0.01       0.00       0.00       0.00       0.00      -1.96      -0.00     290.82      -0.20
                         -310.43      -0.00      -1.95     -50.71     135.55       0.01       0.33       0.00    -108.59       0.01

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00     108.59    -290.82      -0.00     144.72
                           -0.38       1.95       0.00      -0.91      -0.15       0.00     290.83     108.59      -0.00       0.09

    4   4.2  0.5  0.5       0.00       0.00       0.00   32761.01       0.00       0.00       0.90       0.20    -144.72       0.00
                          135.55      50.71       0.91      -0.00     -67.02      -0.00      -0.02      -0.01      -0.09       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   32761.01       0.00       0.00       0.00      -0.09       0.00
                           50.71    -135.55       0.15      67.02      -0.00      -0.01      -0.91      -0.18     144.72      -0.01

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   32761.02     -50.63     135.58      -0.13     -67.02
                           -0.02      -0.01      -0.00       0.00       0.01       0.00    -135.58     -50.63      -0.91      -0.04

    7   1.2  0.5 -0.5      -0.00      -1.96     108.59       0.90       0.00     -50.63       0.00       0.00       0.00       0.00
                            0.00      -0.33    -290.83       0.02       0.91     135.58       0.00    -310.43      -0.38     135.55

    8   2.2  0.5 -0.5       1.96      -0.00    -290.82       0.20       0.00     135.58       0.00       0.01       0.00       0.00
                            0.33      -0.00    -108.59       0.01       0.18      50.63     310.43       0.00       1.95      50.71

    9   3.2  0.5 -0.5    -108.59     290.82      -0.00    -144.72      -0.09      -0.13       0.00       0.00       0.01       0.00
                          290.83     108.59       0.00       0.09    -144.72       0.91       0.38      -1.95      -0.00       0.91

   10   4.2  0.5 -0.5      -0.90      -0.20     144.72       0.00       0.00     -67.02       0.00       0.00       0.00   32761.01
                           -0.02      -0.01      -0.09      -0.00       0.01       0.04    -135.55     -50.71      -0.91       0.00

   11   5.2  0.5 -0.5      -0.00      -0.00       0.09      -0.00      -0.00      -0.04       0.00       0.00       0.00       0.00
                           -0.91      -0.18     144.72      -0.01       0.00     -67.02     -50.71     135.55      -0.15     -67.02

   12   6.2  0.5 -0.5      50.63    -135.58       0.13      67.02       0.04       0.00       0.00       0.00       0.00       0.00
                         -135.58     -50.63      -0.91      -0.04      67.02      -0.00       0.02       0.01       0.00      -0.00

   13   1.2  1.5  1.5      -0.05      -0.01       7.82      -0.00       0.00     -19.43       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   14   2.2  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.01      -7.82       0.00      -0.00      19.43      -0.00      -0.00      -0.00      -0.00

   15   3.2  1.5  1.5       2.74      -7.33       0.01      19.43       0.01      -0.00       0.00       0.00       0.00       0.00
                            7.33       2.74       0.05       0.01     -19.43      -0.00      -0.00      -0.00      -0.00      -0.00

   16   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.01       4.52      -0.00
                            8.45       3.16       0.06       0.01     -22.43      -0.00       0.00       0.00      -0.00       0.00

   17   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            3.16      -8.45       0.01      22.43       0.01      -0.00       0.03       0.01      -4.52       0.00

   18   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       1.58      -4.23       0.00      11.22
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       4.23       1.58       0.03       0.01

   19   1.2  1.5 -0.5      -0.03      -0.01       4.52      -0.00       0.00     -11.22       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       8.45       3.16       0.06       0.01

   20   2.2  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.01       4.52      -0.00       0.00     -11.22       3.16      -8.45       0.01      22.43

   21   3.2  1.5 -0.5       1.58      -4.23       0.00      11.22       0.01      -0.00       0.00       0.00       0.00       0.00
                           -4.23      -1.58      -0.03      -0.01      11.22       0.00       0.00      -0.00       0.00      -0.00

   22   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.05      -0.01       7.82      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   23   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.05      -0.01       7.82      -0.00

   24   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       2.74      -7.33       0.01      19.43
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -7.33      -2.74      -0.05      -0.01


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      -0.00      50.63      -0.05       0.00       2.74       0.00       0.00       0.00      -0.03       0.00
                            0.91     135.58      -0.00      -0.05      -7.33      -8.45      -3.16      -0.00       0.00       0.03

    2   2.2  0.5  0.5      -0.00    -135.58      -0.01       0.00      -7.33       0.00       0.00       0.00      -0.01       0.00
                            0.18      50.63      -0.00      -0.01      -2.74      -3.16       8.45       0.00       0.00       0.01

    3   3.2  0.5  0.5       0.09       0.13       7.82      -0.00       0.01       0.00       0.00       0.00       4.52      -0.00
                         -144.72       0.91       0.00       7.82      -0.05      -0.06      -0.01      -0.00      -0.00      -4.52

    4   4.2  0.5  0.5      -0.00      67.02      -0.00       0.00      19.43       0.00       0.00       0.00      -0.00       0.00
                            0.01       0.04      -0.00      -0.00      -0.01      -0.01     -22.43       0.00       0.00       0.00

    5   5.2  0.5  0.5      -0.00       0.04       0.00      -0.00       0.01       0.00       0.00       0.00       0.00      -0.00
                           -0.00     -67.02       0.00       0.00      19.43      22.43      -0.01      -0.00      -0.00      -0.00

    6   6.2  0.5  0.5      -0.04       0.00     -19.43       0.00      -0.00       0.00       0.00       0.00     -11.22       0.00
                           67.02       0.00      -0.00     -19.43       0.00       0.00       0.00       0.00       0.00      11.22

    7   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.03       0.00       1.58       0.00       0.00
                           50.71      -0.02       0.00       0.00       0.00      -0.00      -0.03      -4.23      -8.45      -3.16

    8   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.01       0.00      -4.23       0.00       0.00
                         -135.55      -0.01       0.00       0.00       0.00      -0.00      -0.01      -1.58      -3.16       8.45

    9   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       4.52      -0.00       0.00       0.00       0.00
                            0.15      -0.00       0.00       0.00       0.00       0.00       4.52      -0.03      -0.06      -0.01

   10   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      11.22       0.00       0.00
                           67.02       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01      -0.01     -22.43

   11   5.2  0.5 -0.5   32761.01       0.00       0.00       0.00       0.00       0.00      -0.00       0.01       0.00       0.00
                            0.00       0.01       0.00       0.00       0.00       0.00       0.00      11.22      22.43      -0.01

   12   6.2  0.5 -0.5       0.00   32761.02       0.00       0.00       0.00     -11.22       0.00      -0.00       0.00       0.00
                           -0.01      -0.00       0.00       0.00       0.00      -0.00     -11.22       0.00       0.00       0.00

   13   1.2  1.5  1.5       0.00       0.00   70461.97       0.00       0.00      -0.00       0.00     240.68       0.00       0.00
                           -0.00      -0.00      -0.00    -416.87       0.00      -0.00      -0.00      -0.00       0.00       0.00

   14   2.2  1.5  1.5       0.00       0.00       0.00   70461.97       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00     416.87       0.00       0.00       0.00       0.00    -240.68       0.00       0.00

   15   3.2  1.5  1.5       0.00       0.00       0.00       0.00   70461.97    -240.68       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     240.68       0.00       0.00       0.00

   16   1.2  1.5  0.5       0.00     -11.22      -0.00      -0.00    -240.68   70461.97       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00    -138.96       0.00      -0.00      -0.00

   17   2.2  1.5  0.5      -0.00       0.00       0.00      -0.00       0.00       0.00   70461.97       0.00      -0.00      -0.00
                           -0.00      11.22       0.00      -0.00    -240.68     138.96       0.00       0.00       0.00       0.00

   18   3.2  1.5  0.5       0.01      -0.00     240.68      -0.00       0.00       0.00       0.00   70461.97    -277.92       0.00
                          -11.22      -0.00       0.00     240.68      -0.00      -0.00      -0.00      -0.00       0.00     277.92

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -277.92   70461.97       0.00
                          -22.43      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     138.96

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00   70461.97
                            0.01      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -277.92    -138.96      -0.00

   21   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00     277.92      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00     277.92      -0.00       0.00       0.00

   22   1.2  1.5 -1.5       0.00     -19.43       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   23   2.2  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00     -19.43      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   24   3.2  1.5 -1.5       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     240.68      -0.00
                           19.43       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     240.68


   Nr   State  S   Sz       21         22         23         24

    1   1.2  0.5  0.5       1.58       0.00       0.00       0.00
                            4.23       0.00       0.00       0.00

    2   2.2  0.5  0.5      -4.23       0.00       0.00       0.00
                            1.58       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00
                            0.03       0.00       0.00       0.00

    4   4.2  0.5  0.5      11.22       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.01       0.00       0.00       0.00
                          -11.22       0.00       0.00       0.00

    6   6.2  0.5  0.5      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

    7   1.2  0.5 -0.5       0.00      -0.05       0.00       2.74
                           -0.00       0.00       0.05       7.33

    8   2.2  0.5 -0.5       0.00      -0.01       0.00      -7.33
                            0.00       0.00       0.01       2.74

    9   3.2  0.5 -0.5       0.00       7.82      -0.00       0.01
                           -0.00      -0.00      -7.82       0.05

   10   4.2  0.5 -0.5       0.00      -0.00       0.00      19.43
                            0.00       0.00       0.00       0.01

   11   5.2  0.5 -0.5       0.00       0.00      -0.00       0.01
                           -0.00      -0.00      -0.00     -19.43

   12   6.2  0.5 -0.5       0.00     -19.43       0.00      -0.00
                            0.00       0.00      19.43      -0.00

   13   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   2.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   3.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   1.2  1.5  0.5     277.92       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

   17   2.2  1.5  0.5      -0.00       0.00       0.00       0.00
                         -277.92       0.00       0.00       0.00

   18   3.2  1.5  0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   19   1.2  1.5 -0.5       0.00      -0.00       0.00     240.68
                           -0.00      -0.00      -0.00      -0.00

   20   2.2  1.5 -0.5       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00    -240.68

   21   3.2  1.5 -0.5   70461.97    -240.68       0.00       0.00
                            0.00       0.00     240.68       0.00

   22   1.2  1.5 -1.5    -240.68   70461.97       0.00       0.00
                           -0.00       0.00     416.87      -0.00

   23   2.2  1.5 -1.5       0.00       0.00   70461.97       0.00
                         -240.68    -416.87      -0.00      -0.00

   24   3.2  1.5 -1.5       0.00       0.00       0.00   70461.97
                           -0.00       0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1942.94475072    -0.00284039     -623.39      0.00000000        0.00      0.0000
     2 -1942.94475072    -0.00284039     -623.39      0.00000000        0.00      0.0000
     3 -1942.94049880     0.00141153      309.80      0.00425192      933.19      0.1157
     4 -1942.94049880     0.00141153      309.80      0.00425192      933.19      0.1157
     5 -1942.94049878     0.00141156      309.80      0.00425195      933.19      0.1157
     6 -1942.94049878     0.00141156      309.80      0.00425195      933.19      0.1157
     7 -1942.79323949     0.14867084    32629.48      0.15151124    33252.87      4.1228
     8 -1942.79323949     0.14867084    32629.48      0.15151124    33252.87      4.1228
     9 -1942.79233204     0.14957830    32828.64      0.15241869    33452.04      4.1475
    10 -1942.79233204     0.14957830    32828.64      0.15241869    33452.04      4.1475
    11 -1942.79233201     0.14957833    32828.65      0.15241872    33452.04      4.1475
    12 -1942.79233201     0.14957833    32828.65      0.15241872    33452.04      4.1475
    13 -1942.62402762     0.31788271    69767.19      0.32072311    70390.59      8.7273
    14 -1942.62402762     0.31788271    69767.19      0.32072311    70390.59      8.7273
    15 -1942.62212810     0.31978223    70184.09      0.32262262    70807.48      8.7790
    16 -1942.62212810     0.31978223    70184.09      0.32262262    70807.48      8.7790
    17 -1942.62212810     0.31978223    70184.09      0.32262263    70807.48      8.7790
    18 -1942.62212810     0.31978223    70184.09      0.32262263    70807.48      8.7790
    19 -1942.61896257     0.32294776    70878.84      0.32578816    71502.24      8.8651
    20 -1942.61896257     0.32294776    70878.84      0.32578816    71502.24      8.8651
    21 -1942.61896257     0.32294777    70878.84      0.32578816    71502.24      8.8651
    22 -1942.61896257     0.32294777    70878.84      0.32578816    71502.24      8.8651
    23 -1942.61896257     0.32294777    70878.84      0.32578816    71502.24      8.8651
    24 -1942.61896257     0.32294777    70878.84      0.32578816    71502.24      8.8651


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.567772468   0.104625315   0.812313967   0.043428000   0.006542963   0.069761667   0.004797202   0.001498406
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000215724  -0.001170687   0.000230601   0.000435481   0.002060336  -0.003149460   0.000002738  -0.000008850
                        -0.567123101   0.108058657  -0.466585935  -0.027926276   0.058661407   0.666870995   0.004787958   0.001527755

    3    3.2  0.5  0.5   0.103646659   0.562461576   0.018437096  -0.345361380   0.657245757  -0.061332977  -0.001490828   0.004772936
                         0.013577555   0.077559453  -0.001099008   0.011916788   0.331915870  -0.031568037  -0.000145090   0.000485030

    4    4.2  0.5  0.5  -0.001729111   0.000333140  -0.001265723  -0.000064491  -0.000004296  -0.000121656  -0.192624981  -0.061762375
                         0.004624128  -0.000880434  -0.001944815  -0.000116451   0.000243162   0.002779827   0.515162694   0.164323635

    5    5.2  0.5  0.5   0.004624127  -0.000880333   0.003386767   0.000172005   0.000048928   0.000284155   0.515172817   0.164317960
                         0.001728985  -0.000333837  -0.000727539  -0.000043209   0.000100781   0.001038930   0.192602956   0.061841160

    6    6.2  0.5  0.5  -0.000933035  -0.004890635   0.000059536  -0.001538122   0.002924714  -0.000274861  -0.174674529   0.547169611
                        -0.000124861  -0.000673894  -0.000002087   0.000053199   0.001476756  -0.000144494  -0.017408380   0.055475678

    7    1.2  0.5 -0.5  -0.049624170  -0.269296563   0.013746304  -0.257122462   0.051435288  -0.004824128   0.000662882  -0.002122243
                         0.092108079   0.499844913  -0.041195028   0.770546573  -0.047128563   0.004420198  -0.001343803   0.004302236

    8    2.2  0.5 -0.5   0.095685922   0.499170916   0.026628211  -0.442668107  -0.452837006   0.038110525  -0.001374040   0.004292734
                         0.050221990   0.269178481   0.008426439  -0.147470118  -0.489556421   0.044642956  -0.000667929   0.002120609

    9    3.2  0.5 -0.5  -0.198497246   0.037206836  -0.120621597  -0.006878410  -0.023894543  -0.260356550   0.001676522   0.000529410
                         0.531956142  -0.097686393   0.323831628   0.017141231   0.064709550   0.688734053  -0.004495047  -0.001401194

   10    4.2  0.5 -0.5  -0.000933109  -0.004891026   0.000090050  -0.001444177  -0.001967652   0.000167439  -0.174692201   0.547224893
                        -0.000124310  -0.000670999   0.000098036  -0.001816237  -0.001967380   0.000176381  -0.017305571   0.055153429

   11    5.2  0.5 -0.5   0.000123648   0.000671109   0.000095432  -0.001762147  -0.000492357   0.000032010   0.017232405  -0.055177660
                        -0.000933351  -0.004890966  -0.000149484   0.002982338  -0.000957968   0.000107360  -0.174721966   0.547224228

   12    6.2  0.5 -0.5   0.001726376  -0.000332619  -0.000537327  -0.000020824  -0.000105041  -0.001158747   0.192311525   0.061662356
                        -0.004625156   0.000880630   0.001442196   0.000055815   0.000292222   0.003064648  -0.515255676  -0.164353268

   13    1.2  1.5  1.5  -0.000012170  -0.000063775  -0.000001476   0.000038261  -0.000072752   0.000006838  -0.000091073   0.000285238
                        -0.000001620  -0.000008789   0.000000059  -0.000001323  -0.000036735   0.000003584  -0.000009037   0.000028932

   14    2.2  1.5  1.5  -0.000001620  -0.000008789   0.000000059  -0.000001323  -0.000036735   0.000003584  -0.000009037   0.000028932
                         0.000012170   0.000063775   0.000001476  -0.000038261   0.000072752  -0.000006838   0.000091073  -0.000285238

   15    3.2  1.5  1.5   0.000000000  -0.000000000  -0.000049542  -0.000002671   0.000002389   0.000022799  -0.000000002  -0.000000001
                         0.000000000  -0.000000000  -0.000132753  -0.000007183   0.000004831   0.000062141   0.000000004   0.000000001

   16    1.2  1.5  0.5  -0.000012970   0.000002504  -0.000013126  -0.000000936   0.000004400   0.000046403  -0.000057857  -0.000018577
                         0.000034752  -0.000006616  -0.000117909  -0.000005734  -0.000005597  -0.000052168   0.000155036   0.000049450

   17    2.2  1.5  0.5   0.000034751  -0.000006616   0.000035103   0.000002544  -0.000011165  -0.000123792   0.000155031   0.000049448
                         0.000012970  -0.000002504  -0.000043976  -0.000002143  -0.000001647  -0.000020125   0.000057855   0.000018576

   18    3.2  1.5  0.5   0.000014064   0.000073696  -0.000000853   0.000022107  -0.000042035   0.000003951   0.000105182  -0.000329427
                         0.000001872   0.000010157   0.000000034  -0.000000764  -0.000021225   0.000002071   0.000010437  -0.000033414

   19    1.2  1.5 -0.5   0.000007012   0.000036746  -0.000005143   0.000107691  -0.000069456   0.000007025   0.000052566  -0.000164635
                         0.000000933   0.000005064  -0.000002703   0.000049772  -0.000007115   0.000001154   0.000005216  -0.000016699

   20    2.2  1.5 -0.5  -0.000000933  -0.000005064  -0.000002838   0.000052826   0.000077676  -0.000007120  -0.000005216   0.000016699
                         0.000007012   0.000036745   0.000001735  -0.000019378  -0.000098468   0.000008757   0.000052564  -0.000164630

   21    3.2  1.5 -0.5   0.000026013  -0.000005023  -0.000007723  -0.000000302  -0.000001514  -0.000016654   0.000115769   0.000037172
                        -0.000069697   0.000013269   0.000020728   0.000000798   0.000004196   0.000044047  -0.000310220  -0.000098947

   22    1.2  1.5 -1.5   0.000022511  -0.000004347   0.000013366   0.000000523   0.000002620   0.000028823   0.000100240   0.000032186
                        -0.000060314   0.000011483  -0.000035875  -0.000001382  -0.000007262  -0.000076233  -0.000268607  -0.000085674

   23    2.2  1.5 -1.5   0.000060314  -0.000011483   0.000035875   0.000001382   0.000007262   0.000076233   0.000268607   0.000085674
                         0.000022511  -0.000004347   0.000013366   0.000000523   0.000002620   0.000028823   0.000100240   0.000032186

   24    3.2  1.5 -1.5  -0.000000000  -0.000000000   0.000005968  -0.000110246  -0.000025171   0.000001503  -0.000000001   0.000000004
                        -0.000000000  -0.000000000   0.000004808  -0.000089015  -0.000061219   0.000005176  -0.000000000   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.003303401   0.000017555  -0.001474782  -0.000339334  -0.000072639   0.000000017  -0.000000015   0.000144162
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000296387   0.000001336   0.000625480   0.000166607  -0.000000000  -0.000000138   0.000000030  -0.000002990
                         0.002928045  -0.000018322  -0.001972823  -0.000479550  -0.000072638  -0.000000426   0.000000013  -0.000147538

    3    3.2  0.5  0.5  -0.000018005   0.000475942   0.000822583  -0.003375169  -0.000000015  -0.000063989  -0.000000604   0.000000900
                         0.000003655  -0.000047443   0.000210057  -0.000927290  -0.000000080   0.000034399   0.000004470  -0.000000179

    4    4.2  0.5  0.5  -0.197708317   0.001199005  -0.247565905  -0.062472086  -0.000121983   0.000000367  -0.000000155   0.000245523
                        -0.616271478   0.003846516   0.415226739   0.100731085   0.000326084   0.000002065  -0.000000038   0.000636418

    5    5.2  0.5  0.5   0.718588391  -0.004474059   0.259945793   0.063074547   0.000326084   0.000002089   0.000000034  -0.000617031
                        -0.230527074   0.001509701   0.155005217   0.039064419   0.000121982  -0.000000324  -0.000000151   0.000238069

    6    6.2  0.5  0.5  -0.000666429  -0.106937492  -0.186722150   0.758032999  -0.000002096   0.000306659   0.000002780  -0.000000031
                         0.000067235   0.010656698  -0.047802001   0.208232027  -0.000000085  -0.000164856  -0.000020587  -0.000000093

    7    1.2  0.5 -0.5  -0.000007003  -0.001317715   0.000244635  -0.001063210  -0.000000002  -0.000009841  -0.000140253  -0.000000015
                        -0.000016098  -0.003029205  -0.000235162   0.001022041  -0.000000017  -0.000071969   0.000033343   0.000000003

    8    2.2  0.5 -0.5   0.000016268   0.002566778  -0.000452446   0.001818113   0.000000441  -0.000071968  -0.000031215   0.000000026
                        -0.000008534  -0.001439773  -0.000230260   0.000988796   0.000000079   0.000009840  -0.000144229  -0.000000020

    9    3.2  0.5 -0.5  -0.000146347  -0.000003830   0.001790628   0.000447451  -0.000025413  -0.000000082  -0.000000917  -0.000001621
                        -0.000455362  -0.000017968  -0.003007538  -0.000721495   0.000068059  -0.000000004   0.000000034  -0.000004209

   10    4.2  0.5 -0.5  -0.004005518  -0.643983601   0.114845570  -0.466233670  -0.000002096   0.000306552  -0.000091670  -0.000000142
                         0.000434879   0.064530886   0.029325896  -0.127782188  -0.000000084  -0.000165033   0.000675948   0.000000073

   11    5.2  0.5 -0.5   0.000400297   0.075250087  -0.018400059   0.079981571   0.000000038   0.000165033   0.000655363   0.000000068
                         0.004704909   0.750899082   0.071873953  -0.291892755  -0.000002113   0.000306553   0.000088902   0.000000139

   12    6.2  0.5 -0.5   0.032884852  -0.000204181  -0.402179253  -0.101485698   0.000121793  -0.000000368   0.000000009   0.000007466
                         0.102312164  -0.000637932   0.675445373   0.163862276  -0.000326165  -0.000002065  -0.000000097   0.000019386

   13    1.2  1.5  1.5  -0.000000362  -0.000055717  -0.000097305   0.000394946   0.003035093  -0.440387781  -0.001602276  -0.000002408
                        -0.000000011   0.000005553  -0.000024875   0.000108501   0.000055848   0.236747039   0.011865260   0.000001336

   14    2.2  1.5  1.5  -0.000000011   0.000005553  -0.000024875   0.000108501   0.000055848   0.236747045   0.011865260   0.000001336
                         0.000000362   0.000055717   0.000097305  -0.000394946  -0.003035093   0.440387793   0.001602276   0.000002408

   15    3.2  1.5  1.5   0.000222740  -0.000001417   0.000048267   0.000012265  -0.000000002   0.000000000  -0.000176955   0.278286981
                         0.000695726  -0.000004336  -0.000080892  -0.000019600   0.000000004   0.000000000  -0.000040246   0.722582858

   16    1.2  1.5  0.5   0.000148334  -0.000000996  -0.000214063  -0.000054009   0.100980878  -0.000269337  -0.000099104   0.155700132
                         0.000463079  -0.000002881   0.000359629   0.000087248  -0.270431331  -0.001731790  -0.000022378   0.404281811

   17    2.2  1.5  0.5  -0.000339993   0.000002124   0.000453001   0.000109872  -0.270431342  -0.001731790   0.000024094  -0.430084512
                         0.000108773  -0.000000640   0.000269777   0.000068167  -0.100980882   0.000269337  -0.000105226   0.165637805

   18    3.2  1.5  0.5  -0.000000209  -0.000032168  -0.000056185   0.000228046  -0.003504626   0.508516310  -0.000925072  -0.000001390
                        -0.000000006   0.000003206  -0.000014363   0.000062649  -0.000064488  -0.273372096   0.006850396   0.000000771

   19    1.2  1.5 -0.5  -0.000003039  -0.000483811  -0.000099401   0.000403550  -0.001752313   0.254258090   0.057972795   0.000091240
                         0.000000236   0.000048699  -0.000025470   0.000110918  -0.000032244  -0.136686013  -0.429331378  -0.000044693

   20    2.2  1.5 -0.5   0.000000261   0.000035877   0.000031969  -0.000139622   0.000032244   0.136686019  -0.456733004  -0.000047778
                         0.000002203   0.000355162  -0.000125286   0.000508424  -0.001752313   0.254258101  -0.061673090  -0.000096801

   21    3.2  1.5 -0.5  -0.000009892   0.000000089   0.000120988   0.000030551  -0.201961807   0.000538675  -0.000001531   0.002484415
                        -0.000030777   0.000000189  -0.000203204  -0.000049291   0.540862800   0.003463581  -0.000000429   0.006450666

   22    1.2  1.5 -1.5   0.000017133  -0.000000154  -0.000209535  -0.000052911  -0.174903952   0.000466506   0.000002651  -0.004303141
                         0.000053307  -0.000000328   0.000351923   0.000085366   0.468400646   0.002999547   0.000000743  -0.011172905

   23    2.2  1.5 -1.5  -0.000053307   0.000000328  -0.000351923  -0.000085366  -0.468400659  -0.002999547  -0.000000743   0.011172905
                         0.000017133  -0.000000154  -0.000209535  -0.000052911  -0.174903957   0.000466506   0.000002651  -0.004303142

   24    3.2  1.5 -1.5   0.000004541   0.000726829  -0.000022425   0.000090856  -0.000000000   0.000000004  -0.103616437  -0.000162848
                        -0.000000430  -0.000073271  -0.000005630   0.000024867   0.000000000  -0.000000002   0.767354717   0.000080083


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000000000   0.000087144  -0.000000081  -0.000000000   0.000000000   0.000000133  -0.000000000   0.000000002
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000786   0.000004947   0.000000015   0.000000000  -0.000000000   0.000000009  -0.000000000   0.000000000
                        -0.000000609   0.000081085  -0.000000096   0.000000000   0.000000000  -0.000000122  -0.000000000   0.000000002

    3    3.2  0.5  0.5  -0.000082557  -0.000001490  -0.000000000   0.000000001  -0.000000000   0.000000001   0.000000000   0.000000000
                         0.000146782   0.000000099  -0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000

    4    4.2  0.5  0.5   0.000003045   0.000119343  -0.000000039  -0.000000000   0.000000000   0.000000034  -0.000000000   0.000000001
                         0.000003247  -0.000349974   0.000000081  -0.000000000  -0.000000000   0.000000103   0.000000000  -0.000000002

    5    5.2  0.5  0.5   0.000003668  -0.000384041   0.000000064  -0.000000000   0.000000000  -0.000000116   0.000000000  -0.000000002
                        -0.000003282  -0.000130912   0.000000030   0.000000000   0.000000000   0.000000039   0.000000000  -0.000000001

    6    6.2  0.5  0.5   0.000380218   0.000009393   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000676018   0.000000050  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    7    1.2  0.5 -0.5   0.000058144  -0.000000000  -0.000000000  -0.000000009  -0.000000040   0.000000000   0.000000000  -0.000000000
                         0.000064911  -0.000000000  -0.000000000  -0.000000081   0.000000127  -0.000000000  -0.000000002  -0.000000000

    8    2.2  0.5 -0.5   0.000063698   0.000000978  -0.000000000  -0.000000094  -0.000000119  -0.000000000  -0.000000002  -0.000000000
                        -0.000050417   0.000000180  -0.000000000   0.000000026  -0.000000028   0.000000000  -0.000000000  -0.000000000

    9    3.2  0.5 -0.5  -0.000000921  -0.000054249   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000001176   0.000159430  -0.000000001  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000

   10    4.2  0.5 -0.5  -0.000181054  -0.000004451   0.000000000   0.000000077   0.000000088   0.000000000   0.000000002   0.000000000
                         0.000322403  -0.000000102   0.000000000  -0.000000047   0.000000064  -0.000000000  -0.000000000  -0.000000000

   11    5.2  0.5 -0.5  -0.000353751  -0.000000003   0.000000000   0.000000037   0.000000072   0.000000000   0.000000000  -0.000000000
                        -0.000198712  -0.000004922   0.000000000   0.000000060  -0.000000099  -0.000000000   0.000000002   0.000000000

   12    6.2  0.5 -0.5   0.000006304   0.000249853  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000006963  -0.000734261   0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   13    1.2  1.5  1.5  -0.219138641  -0.005423435   0.000017723   0.176963608  -0.013613641  -0.000000094   0.705661869   0.000059704
                         0.389622126  -0.000000166   0.000000006  -0.109344017  -0.009847993   0.000000001  -0.092123874   0.000000148

   14    2.2  1.5  1.5   0.389622143  -0.000000166   0.000000007  -0.124857469  -0.012036338  -0.000000002   0.090907120  -0.000000147
                         0.219138651   0.005423435  -0.000020237  -0.202071024   0.016638842   0.000000108   0.696341930   0.000058916

   15    3.2  1.5  1.5  -0.000167649  -0.006680127  -0.022678048  -0.000000497   0.000001035   0.198660532   0.000000009  -0.000176388
                        -0.000187529   0.019630722   0.047712522  -0.000004477  -0.000003305   0.598115888  -0.000000043   0.000533089

   16    1.2  1.5  0.5  -0.004275341  -0.170136142  -0.146005556  -0.000003182  -0.000000949  -0.182237647  -0.000000135   0.002709493
                        -0.004772805   0.499992284   0.307176268  -0.000028799   0.000003030  -0.548671476   0.000000708  -0.008189469

   17    2.2  1.5  0.5  -0.004556265   0.477324713   0.389816814  -0.000036552  -0.000002694   0.487296244   0.000000633  -0.007266132
                         0.004081757   0.162422607   0.185285104   0.000004042  -0.000000845  -0.161852691   0.000000119  -0.002403979

   18    3.2  1.5  0.5  -0.126519713  -0.003131221   0.000065749   0.656507014  -0.052398825  -0.000000351   0.016142564   0.000001365
                         0.224948368  -0.000000096   0.000000022  -0.405648733  -0.037904763  -0.000000002  -0.002107475   0.000000003

   19    1.2  1.5 -0.5  -0.258908261  -0.006407668  -0.000028974  -0.289333881   0.468429709   0.000003175  -0.008553545  -0.000000721
                         0.460331554  -0.000000048  -0.000000008   0.178776363   0.338857425   0.000000007   0.001116675  -0.000000001

   20    2.2  1.5 -0.5  -0.439461804   0.000000334   0.000000014  -0.226872559   0.300952633   0.000000005  -0.000990800   0.000000002
                        -0.247170529  -0.006117213  -0.000036775  -0.367173440  -0.416030843  -0.000002824  -0.007589020  -0.000000644

   21    3.2  1.5 -0.5   0.002089275   0.083139698  -0.331290506  -0.000007225  -0.000000104  -0.020384940  -0.000000254   0.005113471
                         0.002332268  -0.244329280   0.696992757  -0.000065351   0.000000336  -0.061375184   0.000001342  -0.015455601

   22    1.2  1.5 -1.5  -0.003618731  -0.144002226   0.089300477   0.000001948   0.000000029   0.005296185   0.000011112  -0.223531318
                        -0.004039608   0.423190861  -0.187876711   0.000017616  -0.000000089   0.015945883  -0.000058661   0.675632462

   23    2.2  1.5 -1.5   0.004039608  -0.423190879   0.214532384  -0.000020115   0.000000104  -0.019489105  -0.000057887   0.666709142
                        -0.003618732  -0.144002233   0.101970252   0.000002223   0.000000031   0.006473069  -0.000010966   0.220579046

   24    3.2  1.5 -1.5   0.010165189   0.000251542   0.000004504   0.044940672   0.510643236   0.000003463  -0.000556868  -0.000000044
                        -0.018073760  -0.000000247   0.000000003  -0.027768340   0.369394291   0.000000007   0.000072674   0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  32.237%   1.095%  65.985%   0.189%   0.004%   0.487%   0.002%   0.000%   0.001%   0.000%
    2    2.2  0.5  0.5  32.163%   1.168%  21.770%   0.078%   0.345%  44.473%   0.002%   0.000%   0.001%   0.000%
    3    3.2  0.5  0.5   1.093%  32.238%   0.034%  11.942%  54.214%   0.476%   0.000%   0.002%   0.000%   0.000%
    4    4.2  0.5  0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.001%  30.250%   3.082%  41.888%   0.002%
    5    5.2  0.5  0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%  30.250%   3.082%  56.951%   0.002%
    6    6.2  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   3.081%  30.247%   0.000%   1.155%
    7    1.2  0.5 -0.5   1.095%  32.237%   0.189%  65.985%   0.487%   0.004%   0.000%   0.002%   0.000%   0.001%
    8    2.2  0.5 -0.5   1.168%  32.163%   0.078%  21.770%  44.473%   0.345%   0.000%   0.002%   0.000%   0.001%
    9    3.2  0.5 -0.5  32.238%   1.093%  11.942%   0.034%   0.476%  54.214%   0.002%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.002%   0.000%   0.001%   0.001%   0.000%   3.082%  30.250%   0.002%  41.888%
   11    5.2  0.5 -0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   3.082%  30.250%   0.002%  56.951%
   12    6.2  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%  30.247%   3.081%   1.155%   0.000%
   13    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5  23.370%   1.405%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   9.160%   0.550%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  0.5  0.5   3.715%  61.797%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   1.405%  23.370%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.2  0.5 -0.5   0.550%   9.160%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    6.2  0.5 -0.5  61.797%   3.715%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  1.5  1.5   0.000%   0.000%   0.001%  24.999%   0.014%   0.000%  19.983%   0.003%   0.000%   4.327%
   14    2.2  1.5  1.5   0.000%   0.000%   0.001%  24.999%   0.014%   0.000%  19.983%   0.003%   0.000%   5.642%
   15    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%  59.957%   0.000%   0.043%   0.279%   0.000%
   16    1.2  1.5  0.5   0.000%   0.000%   8.333%   0.000%   0.000%  18.769%   0.004%  27.894%  11.567%   0.000%
   17    2.2  1.5  0.5   0.000%   0.000%   8.333%   0.000%   0.000%  21.241%   0.004%  25.422%  18.629%   0.000%
   18    3.2  1.5  0.5   0.000%   0.000%   0.001%  33.332%   0.005%   0.000%   6.661%   0.001%   0.000%  59.555%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.000%   8.333%  18.769%   0.000%  27.894%   0.004%   0.000%  11.568%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.000%   8.333%  21.241%   0.000%  25.422%   0.004%   0.000%  18.629%
   21    3.2  1.5 -0.5   0.000%   0.000%  33.332%   0.001%   0.000%   0.005%   0.001%   6.661%  59.555%   0.000%
   22    1.2  1.5 -1.5   0.000%   0.000%  24.999%   0.001%   0.000%   0.014%   0.003%  19.983%   4.327%   0.000%
   23    2.2  1.5 -1.5   0.000%   0.000%  24.999%   0.001%   0.000%   0.014%   0.003%  19.983%   5.642%   0.000%
   24    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%  59.957%   0.000%   0.043%   0.000%   0.000%   0.279%

   Nr   State  S   Sz      21       22       23       24

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    7    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   13    1.2  1.5  1.5   0.028%   0.000%  50.645%   0.000%
   14    2.2  1.5  1.5   0.042%   0.000%  49.316%   0.000%
   15    3.2  1.5  1.5   0.000%  39.721%   0.000%   0.000%
   16    1.2  1.5  0.5   0.000%  33.425%   0.000%   0.007%
   17    2.2  1.5  0.5   0.000%  26.365%   0.000%   0.006%
   18    3.2  1.5  0.5   0.418%   0.000%   0.027%   0.000%
   19    1.2  1.5 -0.5  33.425%   0.000%   0.007%   0.000%
   20    2.2  1.5 -0.5  26.365%   0.000%   0.006%   0.000%
   21    3.2  1.5 -0.5   0.000%   0.418%   0.000%   0.027%
   22    1.2  1.5 -1.5   0.000%   0.028%   0.000%  50.645%
   23    2.2  1.5 -1.5   0.000%   0.042%   0.000%  49.316%
   24    3.2  1.5 -1.5  39.721%   0.000%   0.000%   0.000%


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
              1      24      163.49       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      312.45       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6926.86   5061.73    353.17   1509.30      1.33      0.09      0.85
 REAL TIME  *      7021.27 SEC
 DISK USED  *       356.40 MB (local),        4.61 GB (total)
 SF USED    *         2.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -1942.618962565577

              CI              CI           MULTI         RHF-SCF
  -1942.58618180  -1942.75486092  -1941.91402888  -1941.98237927
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
