
 Working directory              : /wrk/irikura/molpro.slRZm9LZq8/
 Global scratch directory       : /wrk/irikura/molpro.slRZm9LZq8/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.slRZm9LZq8/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
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
 weight,3[99],3[1]
     wf,nelec=31,sym=2,spin=3;state,3;
 weight,all,1
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
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ga SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 07-Mar-24          TIME: 13:05:12  
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

     15.204 MB (compressed) written to integral file ( 16.1%)

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
 CPU TIMES  *         1.08      0.90
 REAL TIME  *         2.12 SEC
 DISK USED  *        29.42 MB (local),      408.88 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial occupancy:   9   6

 NELEC=   30   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -1941.97525469   -1941.97525469     0.00D+00     0.15D+00     0     0       0.00      0.00    start
   2    -1941.98162498      -0.00637029     0.21D-02     0.17D-01     1     0       0.01      0.01    diag
   3    -1941.98223825      -0.00061327     0.18D-02     0.30D-02     2     0       0.00      0.01    diag
   4    -1941.98237219      -0.00013394     0.38D-03     0.19D-02     3     0       0.01      0.02    diag
   5    -1941.98237921      -0.00000702     0.14D-03     0.40D-03     4     0       0.00      0.02    diag
   6    -1941.98237927      -0.00000005     0.85D-05     0.33D-04     5     0       0.00      0.02    diag
   7    -1941.98237927      -0.00000000     0.75D-06     0.55D-05     6     0       0.00      0.02    diag
   8    -1941.98237927      -0.00000000     0.45D-07     0.90D-06     7     0       0.01      0.03    fixocc
   9    -1941.98237927       0.00000000     0.23D-08     0.49D-07     0     0       0.00      0.03    diag

 Final occupancy:   9   6

 !RHF STATE 1.1 Energy              -1941.982379266485
  RHF One-electron energy           -2699.736527245128
  RHF Two-electron energy             757.754147978644
  RHF Kinetic energy                 2055.623564537085
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
    4.1     2.00000    -1.46778     1  1  d0   1.00007
    5.1     2.00000    -1.46778     1  1  d1+  1.00003
    6.1     2.00000    -1.46778     1  1  d2-  0.95829    1  1  d1-  0.28064
    7.1     2.00000    -1.46778     1  1  d2- -0.27721    1  1  d1-  0.95877
    8.1     2.00000    -1.46778     1  1  d2+  0.99610
    9.1     2.00000    -0.69950     1  4  s    1.19415
    1.2     2.00000   -43.04408     1  1  py   0.99980
    2.2     2.00000   -43.04408     1  1  px   0.99980
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
 CPU TIMES  *         1.11      0.03      0.90
 REAL TIME  *         2.97 SEC
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
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.548D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.591D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.277D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.289D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.141D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 3 6 5 1 1   2 5 3 4 6 1 5 3 4 6   2 1 2 6 4 3 5 1 3 5   6 4 2 71415 81211 9
                                       1310 1 2 5 3 4 6
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.207D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.205D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.742D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.122D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.122D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.211D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.148D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.168D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.652D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.652D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 1 2 2   1 3 3 2 110 8 5 4 7   9 6 810 6 9 7 5 4 3   1 2 4 5 6 810 7 9 3
                                        2 1 4 5 9 710 8 6 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673   0.00330   0.00330   0.00330
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330
 
 Number of orbital rotations:  912  ( 52 closed/active, 544 closed/virtual, 0 active/active, 316 active/virtual )
 Total number of variables:    1710
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   16    0  -1942.19035618   -1942.20440619   -0.01405001    0.08035044 0.00017795 0.00000000  0.14E+01      0.51
   2    7   12    0  -1942.20403682   -1942.20405559   -0.00001876    0.00301724 0.00000382 0.00000000  0.41E-01      1.01
   3    5   10    0  -1942.20405559   -1942.20405559   -0.00000000    0.00000154 0.00000000 0.00000000  0.38E-04      1.36
   4    2    4    0  -1942.20405559   -1942.20405559   -0.00000000    0.00000000 0.00000000 0.00000000  0.63E-08      1.62

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.19E-09)
                       Final energy:  -1942.20405559
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -1942.210294633023
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.83681823
 One electron energy                         -2708.75256906
 Two electron energy                           766.54227443
 Virial ratio                                    1.94472979
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -1942.210294633000
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.83681823
 One electron energy                         -2708.75256906
 Two electron energy                           766.54227443
 Virial ratio                                    1.94472979
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -1942.210294632991
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.83681823
 One electron energy                         -2708.75256906
 Two electron energy                           766.54227443
 Virial ratio                                    1.94472979
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy             -1941.947703696413
 Nuclear energy                                  0.00000000
 Kinetic energy                               2056.61683482
 One electron energy                         -2708.52889224
 Two electron energy                           766.58118854
 Virial ratio                                    1.94424380
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy             -1941.947703695402
 Nuclear energy                                  0.00000000
 Kinetic energy                               2056.61683483
 One electron energy                         -2708.52889225
 Two electron energy                           766.58118856
 Virial ratio                                    1.94424380
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy             -1941.947703695112
 Nuclear energy                                  0.00000000
 Kinetic energy                               2056.61683482
 One electron energy                         -2708.52889225
 Two electron energy                           766.58118855
 Virial ratio                                    1.94424380
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -1941.842742070080
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.99090921
 One electron energy                         -2705.14195499
 Two electron energy                           763.29921292
 Virial ratio                                    1.94448022
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -1941.842742070034
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.99090921
 One electron energy                         -2705.14195499
 Two electron energy                           763.29921292
 Virial ratio                                    1.94448022
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -1941.842742070009
 Nuclear energy                                  0.00000000
 Kinetic energy                               2055.99090921
 One electron energy                         -2705.14195499
 Two electron energy                           763.29921292
 Virial ratio                                    1.94448022
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999971955
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.000000629754
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999402112
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     0.999999999986
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.999999999990
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000000015
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999999720
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.000000133593
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999999867154
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999229923
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.999999399334
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.000001368281
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     0.000000000061
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.999999999949
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999999986
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999701999
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.999999866494
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.000000430854
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000000798122
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999970912
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999229607
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.999999999954
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     0.000000000061
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     0.999999999999
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000298281
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999999913
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999701992
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     2.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     2.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 4 6 2 1 1   1 2 5 3 4 6 5 3 4 6   2 1 2 4 3 5 6 1 3 5   4 6 21415 812 7 913
                                       1011 1 2 5 3 4 6
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 3 1 2   3 1 1 3 210 8 7 9 4   5 610 8 6 4 9 7 5 3   1 2 4 7 9 5 6 810 3
                                        1 2 9 7 4 5 610 8 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -383.69944     1  1  s    0.99988
    2.1     2.00000   -49.28983     1  2  s    1.00110
    3.1     2.00000    -6.58520     1  3  s    0.99866
    4.1     2.00000    -1.17187     1  1  d2-  0.99998
    5.1     2.00000    -1.17187     1  1  d2+  0.99998
    6.1     2.00000    -1.17187     1  1  d1+  0.99998
    7.1     2.00000    -1.17187     1  1  d1-  0.99998
    8.1     2.00000    -1.17187     1  1  d0   0.99998
    9.1     1.91315    -0.42684     1  4  s    1.03032
   10.1     0.01575     0.21193     1  3  s   -0.61040    1  4  s    2.81851    1  5  s    0.94320    1  6  s    2.16290
    1.2     2.00000   -42.74775     1  1  py   1.00001
    2.2     2.00000   -42.74775     1  1  px   1.00001
    3.2     2.00000   -42.74775     1  1  pz   1.00001
    4.2     2.00000    -4.53028     1  2  py   0.99767
    5.2     2.00000    -4.53028     1  2  px   0.99767
    6.2     2.00000    -4.53028     1  2  pz   0.99767
    7.2     0.34784     0.00110     1  3  py   1.81152    1  4  py  -0.40642    1  5  py  -0.53883
    8.2     0.34784     0.00110     1  3  pz   1.81152    1  4  pz  -0.40642    1  5  pz  -0.53883
    9.2     0.34784     0.00110     1  3  px   1.81152    1  4  px  -0.40642    1  5  px  -0.53883
   10.2     0.00920     0.29309     1  2  py  -1.27040    1  3  py  -8.10720    1  4  py   3.10520    1  5  py   5.71055
                                    1  6  py   0.33156    1  7  py  -0.25928    1  8  py   0.25791
   11.2     0.00920     0.29309     1  2  pz  -1.27040    1  3  pz  -8.10720    1  4  pz   3.10520    1  5  pz   5.71055
                                    1  6  pz   0.33156    1  7  pz  -0.25928    1  8  pz   0.25791
   12.2     0.00920     0.29309     1  2  px  -1.27040    1  3  px  -8.10720    1  4  px   3.10520    1  5  px   5.71055
                                    1  6  px   0.33156    1  7  px  -0.25928    1  8  px   0.25791
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 00a000      0.00016401      0.97935968     -0.00075918      0.00000012      0.00000010     -0.03176914
 20 0a0000      0.97935960     -0.00016468     -0.00085930      0.00000022     -0.03176914     -0.00000010
 20 a00000      0.00085943      0.00075903      0.97935932     -0.03176914     -0.00000022     -0.00000012
 20 000a00      0.00002366      0.00002089      0.02695952      0.94247898      0.00000641      0.00000356
 20 00000a      0.00000451      0.02695953     -0.00002090     -0.00000356     -0.00000298      0.94247898
 20 0000a0      0.02695952     -0.00000453     -0.00002365     -0.00000641      0.94247898      0.00000298
 ab 0a0000      0.00378492     -0.00000064     -0.00000332     -0.00000131      0.19314132      0.00000061
 ab 00a000      0.00000063      0.00378492     -0.00000293     -0.00000073     -0.00000061      0.19314132
 ab a00000      0.00000332      0.00000293      0.00378492      0.19314132      0.00000131      0.00000073
 aa 00b000     -0.00000170     -0.01017863      0.00000789      0.00000061      0.00000051     -0.16145105
 aa 0b0000     -0.01017863      0.00000171      0.00000893      0.00000110     -0.16145105     -0.00000051
 aa b00000     -0.00000893     -0.00000789     -0.01017863     -0.16145105     -0.00000110     -0.00000061
 00 02a000     -0.00001816     -0.10846704      0.00008408     -0.00000006     -0.00000005      0.01578161
 00 20a000     -0.00001816     -0.10846704      0.00008408     -0.00000006     -0.00000005      0.01578161
 00 0a2000     -0.10846703      0.00001824      0.00009517     -0.00000011      0.01578161      0.00000005
 00 2a0000     -0.10846703      0.00001824      0.00009517     -0.00000011      0.01578161      0.00000005
 00 a02000     -0.00009518     -0.00008407     -0.10846700      0.01578161      0.00000011      0.00000006
 00 a20000     -0.00009518     -0.00008407     -0.10846700      0.01578161      0.00000011      0.00000006
 00 002a00      0.00000034      0.00000030      0.00038883     -0.10340441     -0.00000070     -0.00000039
 00 020a00      0.00000034      0.00000030      0.00038883     -0.10340441     -0.00000070     -0.00000039
 00 0020a0      0.00038883     -0.00000007     -0.00000034      0.00000070     -0.10340441     -0.00000033
 00 02000a      0.00000007      0.00038883     -0.00000030      0.00000039      0.00000033     -0.10340441
 00 2000a0      0.00038883     -0.00000007     -0.00000034      0.00000070     -0.10340441     -0.00000033
 00 20000a      0.00000007      0.00038883     -0.00000030      0.00000039      0.00000033     -0.10340441
 00 0200a0     -0.04368422      0.00000735      0.00003833      0.00000063     -0.09240064     -0.00000029
 00 200a00     -0.00003833     -0.00003386     -0.04368421     -0.09240064     -0.00000063     -0.00000035
 00 00200a     -0.00000732     -0.04368422      0.00003386      0.00000035      0.00000029     -0.09240064
 
 Energy:    -1942.21029463  -1942.21029463  -1942.21029463  -1941.94770370  -1941.94770370  -1941.94770370
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 aa 00a000     -0.00001649      0.98587562     -0.00036022
 aa 0a0000      0.98587554      0.00001629     -0.00053819
 aa a00000      0.00053818      0.00036023      0.98587548
 aa 00000a      0.00000204     -0.12225460      0.00004467
 aa 0000a0     -0.12225459     -0.00000202      0.00006674
 aa 000a00     -0.00006674     -0.00004467     -0.12225458
 00 0aa0a0      0.00000134     -0.08021270      0.00002931
 00 a0aa00      0.00000134     -0.08021270      0.00002931
 00 aa0a00     -0.08021270     -0.00000133      0.00004379
 00 0aa00a      0.08021270      0.00000133     -0.00004379
 00 aa00a0      0.00004379      0.00002931      0.08021269
 00 a0a00a      0.00004379      0.00002931      0.08021269
 
 Energy:    -1941.84274207  -1941.84274207  -1941.84274207
 


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
 CPU TIMES  *         2.60      1.48      0.03      0.90
 REAL TIME  *         4.87 SEC
 DISK USED  *        44.65 MB (local),      591.63 MB (total)
 SF USED    *        37.68 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -1942.210295   2.0
    -1942.210295   2.0
    -1942.210295   2.0
    -1941.947704   2.0
    -1941.947704   2.0
    -1941.947704   2.0
    -1941.842742   2.0
    -1941.842742   2.0
    -1941.842742   2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.09 sec, npass=  1  Memory used:   0.99 MW


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1942.21029463
     2     -1942.21029463
     3     -1942.21029463
     4     -1941.94770370
     5     -1941.94770370
     6     -1941.94770370

 Number of blocks in overlap matrix:   526   Smallest eigenvalue:  0.15D-04
 Number of N-2 electron functions:    1366
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       3021580
 Number of doubly external configurations:       2079710
 Total number of contracted configurations:      5154562
 Total number of uncontracted configurations:   39479590

 Diagonal Coupling coefficients finished.               Storage:  22147932 words, CPU-Time:     26.67 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1113833 words, CPU-time:      0.11 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1942.21029463     0.00000000    -0.85705813  0.30D-01  0.65D-01    40.03
    1     2     2     1.00000000     0.00000000 -1942.21029463     0.00000000    -0.85715226  0.30D-01  0.65D-01    40.03
    1     3     3     1.00000000     0.00000000 -1942.21029463     0.00000000    -0.85715092  0.30D-01  0.65D-01    40.03
    1     4     4     1.00000000     0.00000000 -1941.94770370     0.00000000    -0.88064882  0.46D-01  0.66D-01    40.03
    1     5     5     1.00000000     0.00000000 -1941.94770370     0.00000000    -0.88069577  0.46D-01  0.66D-01    40.03
    1     6     6     1.00000000     0.00000000 -1941.94770370     0.00000000    -0.88066136  0.46D-01  0.66D-01    40.03
    2     1     1     1.05796969    -0.67235305 -1942.88264768    -0.67235305    -0.02334724  0.25D-02  0.14D-02   270.23
    2     2     2     1.05803932    -0.67233112 -1942.88262575    -0.67233112    -0.02336598  0.25D-02  0.14D-02   270.23
    2     3     3     1.05804002    -0.67233085 -1942.88262549    -0.67233085    -0.02336648  0.25D-02  0.14D-02   270.23
    2     4     4     1.06723122    -0.69263071 -1942.64033441    -0.69263071    -0.02537353  0.48D-02  0.15D-02   270.23
    2     5     5     1.06725083    -0.69259745 -1942.64030115    -0.69259745    -0.02541099  0.48D-02  0.15D-02   270.23
    2     6     6     1.06725138    -0.69259706 -1942.64030076    -0.69259706    -0.02541069  0.48D-02  0.15D-02   270.23
    3     1     1     1.05535271    -0.69239581 -1942.90269044    -0.02004276    -0.00069716  0.76D-04  0.47D-04   497.46
    3     2     2     1.05536025    -0.69239468 -1942.90268931    -0.02006356    -0.00069820  0.77D-04  0.48D-04   497.46
    3     3     3     1.05536113    -0.69239462 -1942.90268925    -0.02006377    -0.00069824  0.77D-04  0.48D-04   497.46
    3     4     4     1.07403108    -0.71527571 -1942.66297941    -0.02264500    -0.00098639  0.26D-03  0.67D-04   497.46
    3     5     5     1.07402458    -0.71527539 -1942.66297908    -0.02267794    -0.00098645  0.27D-03  0.67D-04   497.46
    3     6     6     1.07402554    -0.71527532 -1942.66297901    -0.02267825    -0.00098655  0.27D-03  0.67D-04   497.46
    4     1     1     1.05526653    -0.69303124 -1942.90332587    -0.00063543    -0.00003538  0.69D-05  0.18D-05   724.69
    4     2     2     1.05526617    -0.69303117 -1942.90332580    -0.00063649    -0.00003545  0.69D-05  0.18D-05   724.69
    4     3     3     1.05526638    -0.69303117 -1942.90332580    -0.00063655    -0.00003545  0.69D-05  0.18D-05   724.69
    4     4     4     1.07824167    -0.71628748 -1942.66399117    -0.00101177    -0.00007964  0.27D-04  0.33D-05   724.69
    4     5     5     1.07824378    -0.71628745 -1942.66399115    -0.00101206    -0.00007969  0.27D-04  0.33D-05   724.69
    4     6     6     1.07824345    -0.71628745 -1942.66399115    -0.00101214    -0.00007969  0.27D-04  0.33D-05   724.69
    5     1     1     1.05540753    -0.69306619 -1942.90336082    -0.00003495    -0.00000168  0.20D-06  0.12D-06   950.79
    5     2     2     1.05540722    -0.69306619 -1942.90336082    -0.00003502    -0.00000168  0.20D-06  0.12D-06   950.79
    5     3     3     1.05540724    -0.69306619 -1942.90336082    -0.00003502    -0.00000168  0.20D-06  0.12D-06   950.79
    5     4     4     1.07997939    -0.71636822 -1942.66407192    -0.00008074    -0.00000495  0.11D-05  0.26D-06   950.79
    5     5     5     1.07998000    -0.71636822 -1942.66407192    -0.00008077    -0.00000495  0.11D-05  0.26D-06   950.79
    5     6     6     1.07997989    -0.71636822 -1942.66407191    -0.00008077    -0.00000495  0.11D-05  0.26D-06   950.79
    6     1     1     1.05542678    -0.69306796 -1942.90336260    -0.00000177    -0.00000009  0.12D-07  0.76D-08  1174.70
    6     2     2     1.05542673    -0.69306796 -1942.90336260    -0.00000177    -0.00000009  0.12D-07  0.76D-08  1174.70
    6     3     3     1.05542674    -0.69306796 -1942.90336260    -0.00000177    -0.00000009  0.12D-07  0.76D-08  1174.70
    6     4     4     1.08030109    -0.71637319 -1942.66407688    -0.00000496    -0.00000026  0.53D-07  0.17D-07  1174.70
    6     5     5     1.08030081    -0.71637318 -1942.66407688    -0.00000496    -0.00000026  0.53D-07  0.17D-07  1174.70
    6     6     6     1.08030084    -0.71637318 -1942.66407688    -0.00000496    -0.00000026  0.53D-07  0.17D-07  1174.70
    7     1     1     1.05542859    -0.69306805 -1942.90336269    -0.00000009    -0.00000001  0.15D-08  0.38D-09  1400.17
    7     2     2     1.05542858    -0.69306805 -1942.90336269    -0.00000009    -0.00000001  0.15D-08  0.38D-09  1400.17
    7     3     3     1.05542858    -0.69306805 -1942.90336269    -0.00000009    -0.00000001  0.15D-08  0.38D-09  1400.17
    7     4     4     1.08035480    -0.71637343 -1942.66407713    -0.00000025    -0.00000002  0.64D-08  0.12D-08  1400.17
    7     5     5     1.08035475    -0.71637343 -1942.66407712    -0.00000025    -0.00000002  0.64D-08  0.12D-08  1400.17
    7     6     6     1.08035475    -0.71637343 -1942.66407712    -0.00000025    -0.00000002  0.64D-08  0.12D-08  1400.17


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.1%
 S   1.3%  50.8%
 P   0.5%  28.1%  11.8%

 Initialization:   1.9%
 Other:            2.6%

 Total CPU:     1400.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022200/000           0.0000002   0.9553881  -0.0000000   0.0000062  -0.0000000   0.0048539
 22222220222/00000           0.0625799  -0.0000000   0.9533363  -0.0000003   0.0048539   0.0000000
 222222202220/0000           0.9533363  -0.0000002  -0.0625799   0.0048539   0.0000003  -0.0000062
 22222220222000/00          -0.0005299  -0.0000000  -0.0080720  -0.0000556   0.9124758   0.0000001
 2222222022200000/          -0.0000000  -0.0080893   0.0000000   0.0011619  -0.0000000   0.9124750
 222222202220000/0          -0.0080720   0.0000000   0.0005299   0.9124750   0.0000556  -0.0011619
 222222//222\00000          -0.0005304   0.0000000  -0.0080804   0.0000109  -0.1786603  -0.0000000
 222222//22200\000          -0.0000000  -0.0080978   0.0000000  -0.0002275   0.0000000  -0.1786602
 222222//2220\0000          -0.0080804   0.0000000   0.0005304  -0.1786601  -0.0000109   0.0002275
 222222/\222/00000           0.0007223  -0.0000000   0.0110030  -0.0000087   0.1435513   0.0000000
 222222/\22200/000           0.0000000   0.0110267  -0.0000000   0.0001828  -0.0000000   0.1435512
 222222/\2220/0000           0.0110030  -0.0000000  -0.0007223   0.1435512   0.0000087  -0.0001828
 2222220022220/000          -0.0000000  -0.0987949   0.0000000   0.0000136  -0.0000000   0.0107047
 2222220022202/000          -0.0000000  -0.0987949   0.0000000   0.0000136  -0.0000000   0.0107047
 222222002220/2000          -0.0985828   0.0000000   0.0064713   0.0107049   0.0000007  -0.0000136
 222222002222/0000          -0.0985828   0.0000000   0.0064713   0.0107047   0.0000007  -0.0000136
 22222200222/02000          -0.0064713  -0.0000000  -0.0985828  -0.0000007   0.0107047   0.0000000
 22222200222/20000          -0.0064713  -0.0000000  -0.0985828  -0.0000007   0.0107047   0.0000000
 22222200222002/00           0.0002722   0.0000000   0.0041461   0.0000056  -0.0926647  -0.0000000
 22222200222020/00           0.0002722   0.0000000   0.0041461   0.0000056  -0.0926647  -0.0000000
 2222220022220000/           0.0000000   0.0041550  -0.0000000  -0.0001180   0.0000000  -0.0926646
 2222220022202000/           0.0000000   0.0041550  -0.0000000  -0.0001180   0.0000000  -0.0926646
 222222002220020/0           0.0041460  -0.0000000  -0.0002722  -0.0926646  -0.0000056   0.0001180
 222222002222000/0           0.0041460  -0.0000000  -0.0002722  -0.0926645  -0.0000056   0.0001180
 22222200222200/00          -0.0023474  -0.0000000  -0.0357597   0.0000051  -0.0839087  -0.0000000
 2222220022200200/          -0.0000000  -0.0358367   0.0000000  -0.0001068   0.0000000  -0.0839086
 222222002220200/0          -0.0357597   0.0000000   0.0023474  -0.0839086  -0.0000051   0.0001068
 22222200222/00\0/           0.0000000   0.0029189  -0.0000000   0.0000709  -0.0000000   0.0556827
 222222002220/00\/           0.0000000   0.0029189  -0.0000000   0.0000709  -0.0000000   0.0556827
 22222200222/00\/0           0.0029126  -0.0000000  -0.0001912   0.0556827   0.0000034  -0.0000709
 222222//222000\00          -0.0008330  -0.0000000  -0.0126892  -0.0000031   0.0511775   0.0000000
 222222//22200000\          -0.0000000  -0.0127165   0.0000000   0.0000652  -0.0000000   0.0511775
 222222//2220000\0          -0.0126892   0.0000000   0.0008330   0.0511774   0.0000031  -0.0000652
 22222200222/0/\00          -0.0000000  -0.0502666   0.0000000  -0.0000209   0.0000000  -0.0164432
 222222002220//0\0          -0.0000000  -0.0502666   0.0000000  -0.0000209   0.0000000  -0.0164432
 222222002220//00\           0.0501586  -0.0000000  -0.0032926   0.0164432   0.0000010  -0.0000209
 22222200222//0\00          -0.0501586   0.0000000   0.0032926  -0.0164432  -0.0000010   0.0000209
 22222200222/0/00\           0.0032926   0.0000000   0.0501586  -0.0000010   0.0164432   0.0000000
 22222200222//00\0           0.0032926   0.0000000   0.0501586  -0.0000010   0.0164432   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 22222220222000000  15.2     0.0001885   0.0000000   0.0028716   0.0000086  -0.1414548  -0.0000000
 22222220222000000  14.2     0.0028716  -0.0000000  -0.0001885  -0.1414548  -0.0000086   0.0001801
 22222220222000000  13.2     0.0000000   0.0028778  -0.0000000  -0.0001801   0.0000000  -0.1414547
 22222220222000000  32.2     0.0000251  -0.0000000   0.0003817  -0.0000036   0.0583981   0.0000000
 22222220222000000  31.2     0.0000000   0.0003826  -0.0000000   0.0000744  -0.0000000   0.0583981
 22222220222000000  30.2     0.0003817  -0.0000000  -0.0000251   0.0583981   0.0000036  -0.0000744

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969405    0.000000    0.063635   -0.002165   -0.032982   -0.000000
 2          -0.000000    0.971491   -0.000000   -0.000000    0.000000   -0.033053
 3          -0.063635   -0.000000    0.969405   -0.032982    0.002165    0.000000
 4           0.036701    0.000047   -0.000002   -0.000058    0.959727    0.001222
 5           0.000002   -0.000000    0.036701    0.959728    0.000058   -0.000000
 6          -0.000047    0.036701    0.000000    0.000000   -0.001222    0.959727

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.972051   -0.000000    0.000000    0.002031    0.000133   -0.000003
 2          -0.000000    0.972051    0.000000    0.000003   -0.000000    0.002035
 3           0.000000    0.000000    0.972051   -0.000133    0.002031    0.000000
 4           0.002031    0.000003   -0.000133    0.960427    0.000000    0.000000
 5           0.000133   -0.000000    0.002031    0.000000    0.960427   -0.000000
 6          -0.000003    0.002035    0.000000    0.000000   -0.000000    0.960427

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 13609       0.00004828    -1.76250290       22222220222000010               

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 13610       0.00004828    -1.76250256       22222220222000100               

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 13608       0.00004828    -1.76249938       22222220222000001               


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96940478 (fixed)   0.97233736 (relaxed)   0.97205110 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275065   -0.00534020   -0.58733244
 Singles      0.01539060   -0.07338190   -0.07941764
 Pairs        0.04019046    0.00000001   -0.02631797
 Total        1.05833171   -0.07872209   -0.69306805
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.20995250
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.02420528
 One electron energy                -2707.28341718
 Two electron energy                  764.38005450
 Virial quotient                       -0.94498078
 Correlation energy                    -0.69341018
 !MRCI STATE 1.2 Energy             -1942.903362685678

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94381048 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94337845 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94381048 (Davidson, rotated reference)

 Cluster corrected energies         -1942.94153476 (Pople, fixed reference)
 Cluster corrected energies         -1942.94110758 (Pople, relaxed reference)
 Cluster corrected energies         -1942.94153476 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97149113 (fixed)   0.97233736 (relaxed)   0.97205111 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275065   -0.00534020   -0.61378260
 Singles      0.01539059   -0.07338190   -0.07941764
 Pairs        0.04019045    0.02799305    0.00013219
 Total        1.05833170   -0.05072905   -0.69306805
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.20995250
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.02420467
 One electron energy                -2707.28341716
 Two electron energy                  764.38005447
 Virial quotient                       -0.94498078
 Correlation energy                    -0.69341018
 !MRCI STATE 2.2 Energy             -1942.903362685649

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94381048 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94337844 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94381048 (Davidson, rotated reference)

 Cluster corrected energies         -1942.94153475 (Pople, fixed reference)
 Cluster corrected energies         -1942.94110757 (Pople, relaxed reference)
 Cluster corrected energies         -1942.94153475 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96940478 (fixed)   0.97233737 (relaxed)   0.97205111 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00275065   -0.00534020   -0.58733244
 Singles      0.01539059   -0.07338191   -0.07941764
 Pairs        0.04019045   -0.00000000   -0.02631797
 Total        1.05833169   -0.07872210   -0.69306805
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1942.20995250
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.02420471
 One electron energy                -2707.28341711
 Two electron energy                  764.38005442
 Virial quotient                       -0.94498078
 Correlation energy                    -0.69341018
 !MRCI STATE 3.2 Energy             -1942.903362685499

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.94381048 (Davidson, fixed reference)
 Cluster corrected energies         -1942.94337844 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.94381048 (Davidson, rotated reference)

 Cluster corrected energies         -1942.94153475 (Pople, fixed reference)
 Cluster corrected energies         -1942.94110757 (Pople, relaxed reference)
 Cluster corrected energies         -1942.94153475 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95972733 (fixed)   0.96092592 (relaxed)   0.96042745 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00347016   -0.00556795   -0.57518986
 Singles      0.04069134   -0.09450979   -0.11407785
 Pairs        0.03994230   -0.00078406   -0.02710572
 Total        1.08410381   -0.10086180   -0.71637343
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.94804582
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.31539114
 One electron energy                -2705.45334612
 Two electron energy                  762.78926900
 Virial quotient                       -0.94473060
 Correlation energy                    -0.71603130
 !MRCI STATE 4.2 Energy             -1942.664077127588

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.72429809 (Davidson, fixed reference)
 Cluster corrected energies         -1942.72349295 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.72429809 (Davidson, rotated reference)

 Cluster corrected energies         -1942.72214325 (Pople, fixed reference)
 Cluster corrected energies         -1942.72131292 (Pople, relaxed reference)
 Cluster corrected energies         -1942.72214325 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95972814 (fixed)   0.96092595 (relaxed)   0.96042748 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00347016   -0.00556795   -0.57591315
 Singles      0.04069130   -0.09450977   -0.11407782
 Pairs        0.03994229    0.00000001   -0.02638246
 Total        1.08410375   -0.10007771   -0.71637343
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.94804582
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.31539099
 One electron energy                -2705.45334553
 Two electron energy                  762.78926840
 Virial quotient                       -0.94473060
 Correlation energy                    -0.71603130
 !MRCI STATE 5.2 Energy             -1942.664077124860

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.72429804 (Davidson, fixed reference)
 Cluster corrected energies         -1942.72349291 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.72429804 (Davidson, rotated reference)

 Cluster corrected energies         -1942.72214321 (Pople, fixed reference)
 Cluster corrected energies         -1942.72131287 (Pople, relaxed reference)
 Cluster corrected energies         -1942.72214321 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.95972736 (fixed)   0.96092594 (relaxed)   0.96042748 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00347016   -0.00556795   -0.00791874
 Singles      0.04069130   -0.09450977   -0.11407782
 Pairs        0.03994229   -0.61576486   -0.59437687
 Total        1.08410376   -0.71584258   -0.71637343
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.94804582
 Nuclear energy                         0.00000000
 Kinetic energy                      2056.31539089
 One electron energy                -2705.45334559
 Two electron energy                  762.78926846
 Virial quotient                       -0.94473060
 Correlation energy                    -0.71603130
 !MRCI STATE 6.2 Energy             -1942.664077124232

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.72429805 (Davidson, fixed reference)
 Cluster corrected energies         -1942.72349291 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.72429805 (Davidson, rotated reference)

 Cluster corrected energies         -1942.72214321 (Pople, fixed reference)
 Cluster corrected energies         -1942.72131288 (Pople, relaxed reference)
 Cluster corrected energies         -1942.72214321 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      244.50       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1563.73   1561.12      1.48      0.03      0.90
 REAL TIME  *      1595.36 SEC
 DISK USED  *       288.39 MB (local),        3.43 GB (total)
 SF USED    *         2.57 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1942.94381048  AU                              
 SETTING HLSDIAG(2)     =     -1942.94381048  AU                              
 SETTING HLSDIAG(3)     =     -1942.94381048  AU                              
 SETTING HLSDIAG(4)     =     -1942.72429809  AU                              
 SETTING HLSDIAG(5)     =     -1942.72429804  AU                              
 SETTING HLSDIAG(6)     =     -1942.72429805  AU                              


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
     1     -1941.84274207
     2     -1941.84274207
     3     -1941.84274207

 Number of blocks in overlap matrix:   431   Smallest eigenvalue:  0.36D-04
 Number of N-2 electron functions:     593
 Number of N-1 electron functions:   52282

 Number of internal configurations:                39848
 Number of singly external configurations:       2039092
 Number of doubly external configurations:        902761
 Total number of contracted configurations:      2981701
 Total number of uncontracted configurations:   24842650

 Diagonal Coupling coefficients finished.               Storage:  12205284 words, CPU-Time:      3.26 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    878211 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1941.84274207     0.00000000    -0.86032669  0.46D-01  0.64D-01     5.35
    1     2     2     1.00000000     0.00000000 -1941.84274207    -0.00000000    -0.86031311  0.46D-01  0.64D-01     5.35
    1     3     3     1.00000000     0.00000000 -1941.84274207    -0.00000000    -0.86032519  0.46D-01  0.64D-01     5.35
    2     1     1     1.06734408    -0.67621207 -1942.51895414    -0.67621207    -0.02264305  0.24D-02  0.15D-02    62.68
    2     2     2     1.06734698    -0.67620971 -1942.51895178    -0.67620971    -0.02264456  0.24D-02  0.15D-02    62.68
    2     3     3     1.06734924    -0.67620763 -1942.51894970    -0.67620763    -0.02264709  0.24D-02  0.15D-02    62.68
    3     1     1     1.06698277    -0.69597265 -1942.53871472    -0.01976058    -0.00068057  0.87D-04  0.50D-04   119.64
    3     2     2     1.06698241    -0.69597227 -1942.53871434    -0.01976256    -0.00068091  0.87D-04  0.50D-04   119.64
    3     3     3     1.06698316    -0.69597224 -1942.53871431    -0.01976461    -0.00068093  0.87D-04  0.50D-04   119.64
    4     1     1     1.06730075    -0.69659132 -1942.53933339    -0.00061866    -0.00003232  0.65D-05  0.14D-05   176.28
    4     2     2     1.06730020    -0.69659129 -1942.53933336    -0.00061902    -0.00003234  0.65D-05  0.14D-05   176.28
    4     3     3     1.06730072    -0.69659129 -1942.53933336    -0.00061905    -0.00003235  0.65D-05  0.14D-05   176.28
    5     1     1     1.06762916    -0.69662222 -1942.53936429    -0.00003091    -0.00000126  0.15D-06  0.98D-07   232.16
    5     2     2     1.06762900    -0.69662222 -1942.53936429    -0.00003093    -0.00000126  0.15D-06  0.98D-07   232.16
    5     3     3     1.06762913    -0.69662222 -1942.53936429    -0.00003093    -0.00000126  0.15D-06  0.98D-07   232.16
    6     1     1     1.06768630    -0.69662352 -1942.53936559    -0.00000130    -0.00000006  0.67D-08  0.62D-08   287.85
    6     2     2     1.06768627    -0.69662352 -1942.53936559    -0.00000130    -0.00000006  0.67D-08  0.62D-08   287.85
    6     3     3     1.06768629    -0.69662352 -1942.53936559    -0.00000130    -0.00000006  0.67D-08  0.62D-08   287.85
    7     1     1     1.06768709    -0.69662358 -1942.53936565    -0.00000006    -0.00000000  0.10D-08  0.21D-09   343.58
    7     2     2     1.06768709    -0.69662358 -1942.53936565    -0.00000006    -0.00000000  0.10D-08  0.21D-09   343.58
    7     3     3     1.06768709    -0.69662358 -1942.53936565    -0.00000006    -0.00000000  0.10D-08  0.21D-09   343.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.0%
 S   1.9%  58.3%
 P   0.6%  27.2%   4.8%

 Initialization:   1.0%
 Other:            2.2%

 Total CPU:      343.6 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222//222/00000           0.0000000   0.9525776   0.0000000
 222222//2220/0000           0.0000000  -0.0000000   0.9525776
 222222//22200/000           0.9525776  -0.0000000  -0.0000000
 222222//222000/00          -0.0000000  -0.1317225  -0.0000000
 222222//22200000/          -0.1317225   0.0000000   0.0000000
 222222//2220000/0          -0.0000000   0.0000000  -0.1317225
 222222002220//00/          -0.0000000  -0.0000000   0.0715376
 22222200222/0/00/          -0.0000000   0.0715376   0.0000000
 22222200222//0/00           0.0000000   0.0000000  -0.0715376
 22222200222/0//00          -0.0715376  -0.0000000  -0.0000000
 222222002220//0/0          -0.0715376  -0.0000000  -0.0000000
 22222200222//00/0          -0.0000000   0.0715376   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222/022200/000  22.1     0.0957092  -0.0000000  -0.0000000
 222222/02220/0000  22.1     0.0000000  -0.0000000   0.0957092
 222222/0222/00000  22.1     0.0000000   0.0957092   0.0000000
 222222/022200/000  11.1     0.0740233   0.0000000   0.0000000
 222222/0222/00000  11.1     0.0000000   0.0740233   0.0000000
 222222/02220/0000  11.1     0.0000000  -0.0000000   0.0740233

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.966939    0.000000
 2          -0.000000   -0.000000    0.966939
 3           0.966939   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966939    0.000000    0.000000
 2           0.000000    0.966939    0.000000
 3           0.000000    0.000000    0.966939


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96693894 (fixed)   0.96707125 (relaxed)   0.96693894 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00174668   -0.00400113   -0.57637378
 Singles      0.02875164   -0.08137862   -0.09481467
 Pairs        0.03905368    0.00000000   -0.02543512
 Total        1.06955199   -0.08537975   -0.69662358
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.84274207
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.95797739
 One electron energy                -2702.86080204
 Two electron energy                  760.32143640
 Virial quotient                       -0.94483418
 Correlation energy                    -0.69662358
 !MRCI STATE 1.2 Energy             -1942.539365648117

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.58781721 (Davidson, fixed reference)
 Cluster corrected energies         -1942.58761334 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.58781721 (Davidson, rotated reference)

 Cluster corrected energies         -1942.58487246 (Pople, fixed reference)
 Cluster corrected energies         -1942.58467030 (Pople, relaxed reference)
 Cluster corrected energies         -1942.58487246 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96693894 (fixed)   0.96707125 (relaxed)   0.96693894 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00174668   -0.00400113   -0.00487859
 Singles      0.02875163   -0.08137862   -0.09481467
 Pairs        0.03905368   -0.61124383   -0.59693032
 Total        1.06955199   -0.69662358   -0.69662358
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.84274207
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.95797730
 One electron energy                -2702.86080179
 Two electron energy                  760.32143615
 Virial quotient                       -0.94483418
 Correlation energy                    -0.69662358
 !MRCI STATE 2.2 Energy             -1942.539365648105

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.58781720 (Davidson, fixed reference)
 Cluster corrected energies         -1942.58761334 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.58781720 (Davidson, rotated reference)

 Cluster corrected energies         -1942.58487246 (Pople, fixed reference)
 Cluster corrected energies         -1942.58467030 (Pople, relaxed reference)
 Cluster corrected energies         -1942.58487246 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96693894 (fixed)   0.96707125 (relaxed)   0.96693894 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00174668   -0.00400113   -0.57637379
 Singles      0.02875164   -0.08137862   -0.09481467
 Pairs        0.03905368   -0.00000000   -0.02543512
 Total        1.06955199   -0.08537975   -0.69662358
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1941.84274207
 Nuclear energy                         0.00000000
 Kinetic energy                      2055.95797697
 One electron energy                -2702.86080141
 Two electron energy                  760.32143576
 Virial quotient                       -0.94483418
 Correlation energy                    -0.69662358
 !MRCI STATE 3.2 Energy             -1942.539365647942

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1942.58781721 (Davidson, fixed reference)
 Cluster corrected energies         -1942.58761334 (Davidson, relaxed reference)
 Cluster corrected energies         -1942.58781721 (Davidson, rotated reference)

 Cluster corrected energies         -1942.58487246 (Pople, fixed reference)
 Cluster corrected energies         -1942.58467030 (Pople, relaxed reference)
 Cluster corrected energies         -1942.58487246 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      315.17       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1916.73    352.99   1561.12      1.48      0.03      0.90
 REAL TIME  *      1954.51 SEC
 DISK USED  *       359.06 MB (local),        4.26 GB (total)
 SF USED    *         2.57 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =     -1942.58781721  AU                              
 SETTING HLSDIAG(8)     =     -1942.58781720  AU                              
 SETTING HLSDIAG(9)     =     -1942.58781721  AU                              


         HLSDIAG
    -1942.943810
    -1942.943810
    -1942.943810
    -1942.724298
    -1942.724298
    -1942.724298
    -1942.587817
    -1942.587817
    -1942.587817
                                                  


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

 Time for Seward_LS:       4.32 sec

 CPU time:      4.33 sec, REAL time:      4.59 sec


 SORTLS1 read     7821185. and wrote     7821185. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.12 sec
 SORTLS2 read     7821185. and wrote    38256242. SO integrals in    36 records. CPU time:      0.04 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:  -1942.903363  -1942.903363  -1942.903363  -1942.664077  -1942.664077  -1942.664077
 Replaced energies:  -1942.943810  -1942.943810  -1942.943810  -1942.724298  -1942.724298  -1942.724298

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   3

 Original energies:  -1942.539366  -1942.539366  -1942.539366
 Replaced energies:  -1942.587817  -1942.587817  -1942.587817

 >>> Fock matrix approximation error in all internal so: 
  -1.6274240452291930       (exact)   -1.0366523656720990       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.10682907459084982       (exact)    6.8049023565188230E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.7701522342295473       (exact)  -0.48110980312102736       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9560916559645060E-004  (exact)   -2.9308488093183524E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2440459543652662E-002  (exact)    6.1258593592373859E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.10682914632028230       (exact)    6.7403873147943535E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.6274252032852272       (exact)    1.0268242627997850       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9561505428347894E-004  (exact)   -1.8092398744573841E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.7701644399881680       (exact)   0.29713469147470245       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.6274241583380162       (exact)   -1.0309771118769873       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.10682907901673533       (exact)    6.7676478208315113E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.7701523222034741       (exact)  -0.41593427683373246       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9560951552561881E-004  (exact)   -2.5334697705705231E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2440459543663650E-002  (exact)    5.2959740882563646E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.6309274155370688       (exact)    1.0430564623930823       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2440469721996372E-002  (exact)    7.6386158493637951E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.7701573122946073       (exact)   0.59991562559049594       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.12335565827931619       (exact)    7.7830701382284304E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.8791885834261375       (exact)    1.1856656270202124       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.8775567130765147E-004  (exact)   -2.0894693745339062E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -11.281614135908944       (exact)   0.34314069698176547       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1184587511085315E-006  (exact)    3.4316670125087751E-008  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8832326483192157       (exact)   -1.2044084588846165       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4365017793685495E-002  (exact)   -8.8209257304874931E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   11.281606001650552       (exact)  -0.69277077807887677       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1942.94381048

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -265.10      -0.00       0.38
                           -0.00      17.40      -0.00      -0.02       0.00     -19.61       0.00       0.00     265.67      19.62

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     265.10       0.00     -17.40    -299.32
                          -17.40      -0.00    -265.10      -0.02     299.32       0.00      -0.00      -0.00      -0.00      -0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      17.40       0.00      -0.02
                            0.00     265.10       0.00      -0.38       0.00    -298.68    -265.67       0.00       0.00     298.68

    4   4.2  0.5  0.5       0.00       0.00       0.00   48177.40       0.00       0.00      -0.38     299.32       0.02      -0.00
                            0.02       0.02       0.38       0.00      -0.43      -0.02     -19.62       0.00    -298.68      -0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   48177.41       0.00       0.00       0.02      -0.00      -0.00
                           -0.00    -299.32      -0.00       0.43       0.00     334.91     298.68      -0.00     -19.62    -334.91

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   48177.41    -298.68      -0.38      19.61     334.91
                           19.61      -0.00     298.68       0.02    -334.91      -0.00       0.02      -0.00       0.38      -0.00

    7   1.2  0.5 -0.5       0.00     265.10       0.00      -0.38       0.00    -298.68       0.00       0.00       0.00       0.00
                           -0.00       0.00     265.67      19.62    -298.68      -0.02       0.00     -17.40       0.00       0.02

    8   2.2  0.5 -0.5    -265.10       0.00      17.40     299.32       0.02      -0.38       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      17.40       0.00     265.10       0.02

    9   3.2  0.5 -0.5      -0.00     -17.40       0.00       0.02      -0.00      19.61       0.00       0.00       0.00       0.00
                         -265.67       0.00      -0.00     298.68      19.62      -0.38      -0.00    -265.10      -0.00       0.38

   10   4.2  0.5 -0.5       0.38    -299.32      -0.02      -0.00      -0.00     334.91       0.00       0.00       0.00   48177.40
                          -19.62       0.00    -298.68       0.00     334.91       0.00      -0.02      -0.02      -0.38      -0.00

   11   5.2  0.5 -0.5      -0.00      -0.02       0.00       0.00      -0.00       0.02       0.00       0.00       0.00       0.00
                          298.68      -0.00     -19.62    -334.91      -0.00       0.43       0.00     299.32       0.00      -0.43

   12   6.2  0.5 -0.5     298.68       0.38     -19.61    -334.91      -0.02       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.38      -0.00      -0.43      -0.00     -19.61       0.00    -298.68      -0.02

   13   1.2  1.5  1.5      11.87      -0.00      -0.78     -60.22      -0.00       0.08       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   14   2.2  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                          -11.87       0.00       0.78      60.22       0.00      -0.08      -0.00      -0.00      -0.00      -0.00

   15   3.2  1.5  1.5      -0.00     -11.90       0.00       0.08      -0.00      60.22       0.00       0.00       0.00       0.00
                            0.78       0.00      11.87       0.00     -60.22      -0.00      -0.00      -0.00      -0.00      -0.00

   16   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       6.85      -0.00      -0.45     -34.77
                            0.90      -0.00      13.71       0.00     -69.54      -0.00       0.00      -0.00      -0.00       0.00

   17   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00     -13.74       0.00       0.09      -0.00      69.54      -6.85       0.00       0.45      34.77

   18   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -6.87       0.00       0.04
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.45       0.00       6.86       0.00

   19   1.2  1.5 -0.5       6.85      -0.00      -0.45     -34.77      -0.00       0.04       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.90      -0.00      13.71       0.00

   20   2.2  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            6.85      -0.00      -0.45     -34.77      -0.00       0.04      -0.00     -13.74       0.00       0.09

   21   3.2  1.5 -0.5      -0.00      -6.87       0.00       0.04      -0.00      34.77       0.00       0.00       0.00       0.00
                           -0.45      -0.00      -6.86      -0.00      34.77       0.00      -0.00       0.00      -0.00       0.00

   22   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      11.87      -0.00      -0.78     -60.22
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   23   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      11.87      -0.00      -0.78     -60.22

   24   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -11.90       0.00       0.08
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.78      -0.00     -11.87      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      -0.00     298.68      11.87       0.00      -0.00       0.00       0.00       0.00       6.85       0.00
                         -298.68      -0.02      -0.00      11.87      -0.78      -0.90       0.00       0.00       0.00      -6.85

    2   2.2  0.5  0.5      -0.02       0.38      -0.00      -0.00     -11.90       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      13.74      -0.00      -0.00       0.00

    3   3.2  0.5  0.5       0.00     -19.61      -0.78      -0.00       0.00       0.00       0.00       0.00      -0.45      -0.00
                           19.62      -0.38       0.00      -0.78     -11.87     -13.71      -0.00       0.00      -0.00       0.45

    4   4.2  0.5  0.5       0.00    -334.91     -60.22       0.00       0.08       0.00       0.00       0.00     -34.77       0.00
                          334.91       0.00      -0.00     -60.22      -0.00      -0.00      -0.09      -0.00       0.00      34.77

    5   5.2  0.5  0.5      -0.00      -0.02      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.43      -0.00      -0.00      60.22      69.54       0.00       0.00       0.00       0.00

    6   6.2  0.5  0.5       0.02       0.00       0.08      -0.00      60.22       0.00       0.00       0.00       0.04      -0.00
                           -0.43       0.00       0.00       0.08       0.00       0.00     -69.54      -0.00      -0.00      -0.04

    7   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       6.85       0.00      -0.00       0.00       0.00
                           -0.00      19.61       0.00       0.00       0.00      -0.00       6.85      -0.45      -0.90       0.00

    8   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -6.87       0.00       0.00
                         -299.32      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      13.74

    9   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.45      -0.00       0.00       0.00       0.00
                           -0.00     298.68       0.00       0.00       0.00       0.00      -0.45      -6.86     -13.71      -0.00

   10   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00     -34.77       0.00       0.04       0.00       0.00
                            0.43       0.02       0.00       0.00       0.00      -0.00     -34.77      -0.00      -0.00      -0.09

   11   5.2  0.5 -0.5   48177.41       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00    -334.91       0.00       0.00       0.00      -0.00      -0.00      34.77      69.54       0.00

   12   6.2  0.5 -0.5       0.00   48177.41       0.00       0.00       0.00       0.04      -0.00      34.77       0.00       0.00
                          334.91       0.00       0.00       0.00       0.00       0.00       0.04       0.00       0.00     -69.54

   13   1.2  1.5  1.5       0.00       0.00   78131.49       0.00       0.00       0.00      -0.00     221.42       0.00       0.00
                           -0.00      -0.00      -0.00    -383.52      -0.00      -0.00       0.00      -0.00       0.00       0.00

   14   2.2  1.5  1.5       0.00       0.00       0.00   78131.49       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00     383.52       0.00      -0.00      -0.00       0.00    -221.42       0.00       0.00

   15   3.2  1.5  1.5       0.00       0.00       0.00       0.00   78131.49    -221.42       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00     221.42       0.00       0.00       0.00

   16   1.2  1.5  0.5      -0.00       0.04       0.00       0.00    -221.42   78131.49       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00    -127.84      -0.00      -0.00       0.00

   17   2.2  1.5  0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00   78131.49       0.00       0.00      -0.00
                            0.00      -0.04      -0.00      -0.00    -221.42     127.84       0.00      -0.00      -0.00       0.00

   18   3.2  1.5  0.5      -0.00      34.77     221.42      -0.00       0.00       0.00       0.00   78131.49    -255.68       0.00
                          -34.77      -0.00       0.00     221.42      -0.00       0.00       0.00       0.00       0.00     255.68

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -255.68   78131.49       0.00
                          -69.54      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     127.84

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00   78131.49
                           -0.00      69.54      -0.00      -0.00      -0.00      -0.00      -0.00    -255.68    -127.84      -0.00

   21   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00     255.68      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00     255.68      -0.00      -0.00      -0.00

   22   1.2  1.5 -1.5      -0.00       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   23   2.2  1.5 -1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.08      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   3.2  1.5 -1.5      -0.00      60.22       0.00       0.00       0.00       0.00       0.00       0.00     221.42      -0.00
                           60.22       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     221.42


   Nr   State  S   Sz       21         22         23         24

    1   1.2  0.5  0.5      -0.00       0.00       0.00       0.00
                            0.45       0.00       0.00       0.00

    2   2.2  0.5  0.5      -6.87       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00
                            6.86       0.00       0.00       0.00

    4   4.2  0.5  0.5       0.04       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5      -0.00       0.00       0.00       0.00
                          -34.77       0.00       0.00       0.00

    6   6.2  0.5  0.5      34.77       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

    7   1.2  0.5 -0.5       0.00      11.87       0.00      -0.00
                            0.00       0.00     -11.87       0.78

    8   2.2  0.5 -0.5       0.00      -0.00      -0.00     -11.90
                           -0.00      -0.00       0.00       0.00

    9   3.2  0.5 -0.5       0.00      -0.78      -0.00       0.00
                            0.00      -0.00       0.78      11.87

   10   4.2  0.5 -0.5       0.00     -60.22       0.00       0.08
                           -0.00       0.00      60.22       0.00

   11   5.2  0.5 -0.5       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00     -60.22

   12   6.2  0.5 -0.5       0.00       0.08      -0.00      60.22
                           -0.00      -0.00      -0.08      -0.00

   13   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   2.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   3.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   1.2  1.5  0.5     255.68       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

   17   2.2  1.5  0.5      -0.00       0.00       0.00       0.00
                         -255.68       0.00       0.00       0.00

   18   3.2  1.5  0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   19   1.2  1.5 -0.5       0.00       0.00      -0.00     221.42
                            0.00      -0.00       0.00      -0.00

   20   2.2  1.5 -0.5       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00    -221.42

   21   3.2  1.5 -0.5   78131.49    -221.42       0.00       0.00
                           -0.00       0.00     221.42       0.00

   22   1.2  1.5 -1.5    -221.42   78131.49       0.00       0.00
                           -0.00       0.00     383.52       0.00

   23   2.2  1.5 -1.5       0.00       0.00   78131.49       0.00
                         -221.42    -383.52      -0.00       0.00

   24   3.2  1.5 -1.5       0.00       0.00       0.00   78131.49
                           -0.00      -0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1942.94626542    -0.00245494     -538.80      0.00000000        0.00      0.0000
     2 -1942.94626542    -0.00245494     -538.80      0.00000000        0.00      0.0000
     3 -1942.94260850     0.00120199      263.81      0.00365692      802.60      0.0995
     4 -1942.94260850     0.00120199      263.81      0.00365692      802.60      0.0995
     5 -1942.94260849     0.00120199      263.81      0.00365693      802.60      0.0995
     6 -1942.94260849     0.00120199      263.81      0.00365693      802.60      0.0995
     7 -1942.72731673     0.21649375    47514.89      0.21894869    48053.68      5.9579
     8 -1942.72731673     0.21649375    47514.89      0.21894869    48053.68      5.9579
     9 -1942.72276553     0.22104496    48513.76      0.22349989    49052.56      6.0817
    10 -1942.72276553     0.22104496    48513.76      0.22349989    49052.56      6.0817
    11 -1942.72276550     0.22104499    48513.77      0.22349992    49052.56      6.0817
    12 -1942.72276550     0.22104499    48513.77      0.22349992    49052.56      6.0817
    13 -1942.59072885     0.35308163    77492.46      0.35553657    78031.26      9.6746
    14 -1942.59072885     0.35308163    77492.46      0.35553657    78031.26      9.6746
    15 -1942.58898026     0.35483023    77876.23      0.35728516    78415.03      9.7222
    16 -1942.58898026     0.35483023    77876.23      0.35728516    78415.03      9.7222
    17 -1942.58898025     0.35483023    77876.23      0.35728517    78415.03      9.7222
    18 -1942.58898025     0.35483023    77876.23      0.35728517    78415.03      9.7222
    19 -1942.58606977     0.35774071    78515.01      0.36019565    79053.81      9.8014
    20 -1942.58606977     0.35774071    78515.01      0.36019565    79053.81      9.8014
    21 -1942.58606977     0.35774071    78515.01      0.36019565    79053.81      9.8014
    22 -1942.58606977     0.35774071    78515.01      0.36019565    79053.81      9.8014
    23 -1942.58606977     0.35774071    78515.01      0.36019565    79053.81      9.8014
    24 -1942.58606977     0.35774071    78515.01      0.36019565    79053.81      9.8014


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.576972530  -0.019627568   0.183418127   0.794801137  -0.000994631  -0.035888121   0.006959137   0.001821029
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.017787138  -0.522871175   0.403332773  -0.093082395   0.317876038  -0.008906030  -0.000071076   0.000271619
                         0.045990670   0.239698529  -0.145897991   0.005153887  -0.610592865  -0.006227803  -0.001359893   0.007058192

    3    3.2  0.5  0.5   0.008215492   0.241502753  -0.120334529   0.026777074   0.641199836  -0.039758028  -0.001819640   0.006953847
                         0.017825281   0.523996380  -0.346914789   0.080054145   0.334484586  -0.009365258   0.000071227  -0.000272204

    4    4.2  0.5  0.5  -0.007166613   0.000449615   0.001187451   0.004908055  -0.000264420  -0.000206043   0.566867903   0.109269936
                         0.000013832   0.000424259   0.000139936  -0.000032517  -0.000140856   0.000003760  -0.000513717   0.002153394

    5    5.2  0.5  0.5  -0.000573482  -0.002986627  -0.000670249   0.000488989   0.003968503  -0.000260691  -0.109101573   0.566450870
                        -0.000221626  -0.006514971  -0.002147328   0.000495518   0.002070397  -0.000057969   0.005703929  -0.021798323

    6    6.2  0.5  0.5   0.000230752   0.006514429   0.002500419  -0.000583652   0.001972176  -0.000054983  -0.006425747   0.021659311
                        -0.000573064  -0.002987196  -0.000905204   0.000032012  -0.003787432  -0.000038637  -0.109135635   0.566442339

    7    1.2  0.5 -0.5   0.017825456   0.523997571   0.751055644  -0.173322877  -0.016585244   0.000459656   0.000071228  -0.000272202
                        -0.008215508  -0.241503304  -0.260046663   0.060011580   0.031825883  -0.000882048   0.001819635  -0.006953811

    8    2.2  0.5 -0.5   0.575194130  -0.035404312  -0.089645455  -0.428869092   0.001407055  -0.688381248   0.007063415   0.001361633
                        -0.001167593  -0.034322859   0.025584902  -0.005903581   0.010776042  -0.000282857  -0.000004666   0.000017830

    9    3.2  0.5 -0.5   0.000000002   0.000000058  -0.000889206   0.000206201  -0.010068492   0.000301115  -0.000000000   0.000000001
                         0.576971217  -0.019627403  -0.084409046  -0.367192357   0.039585784   0.723199196   0.006959173   0.001821033

   10    4.2  0.5 -0.5  -0.000230751  -0.006514397   0.004648557  -0.001076309  -0.000098554  -0.000002713   0.006425772  -0.021659367
                         0.000573500   0.002987166  -0.001575113   0.000520750   0.000180983  -0.000299585   0.109102087  -0.566454195

   11    5.2  0.5 -0.5  -0.000014562  -0.000428062   0.000299949  -0.000069214  -0.000069067   0.000002051   0.000374737  -0.001432123
                        -0.007166908   0.000441319  -0.000628234  -0.002248436   0.000257972   0.004476110   0.566870016   0.109241187

   12    6.2  0.5 -0.5  -0.007166654   0.000449433  -0.000562001  -0.002658966   0.000008854  -0.004270142   0.566856054   0.109303457
                         0.000013818   0.000423862   0.000160712  -0.000037284   0.000066615  -0.000001373  -0.000513308   0.002152056

   13    1.2  1.5  1.5  -0.000093213   0.000005737  -0.000028340  -0.000117473   0.000006382   0.000004930   0.001135922   0.000218975
                         0.000000189   0.000005562  -0.000003373   0.000000778   0.000003252  -0.000000091  -0.000000750   0.000002867

   14    2.2  1.5  1.5   0.000000189   0.000005562  -0.000003373   0.000000778   0.000003252  -0.000000091  -0.000000750   0.000002867
                         0.000093213  -0.000005737   0.000028340   0.000117474  -0.000006382  -0.000004930  -0.001135922  -0.000218975

   15    3.2  1.5  1.5  -0.000000000  -0.000000002   0.000008490  -0.000001961   0.000096770  -0.000002710   0.000000000  -0.000000000
                         0.000000000   0.000000001  -0.000005619  -0.000010934  -0.000185680   0.000005316   0.000000002  -0.000000011

   16    1.2  1.5  0.5   0.000001665   0.000048951  -0.000123596   0.000028522   0.000058593  -0.000001640  -0.000006599   0.000025220
                        -0.000004306  -0.000022440   0.000040296  -0.000020702  -0.000112200   0.000011341  -0.000126267   0.000655358

   17    2.2  1.5  0.5  -0.000004306  -0.000022442   0.000046784  -0.000008078   0.000102203   0.000005203  -0.000126270   0.000655371
                        -0.000001665  -0.000048954   0.000133400  -0.000030786   0.000053147  -0.000001490   0.000006599  -0.000025221

   18    3.2  1.5  0.5   0.000107668  -0.000006627  -0.000016368  -0.000067848   0.000003686   0.000002845  -0.001311676  -0.000252855
                        -0.000000219  -0.000006425  -0.000001948   0.000000450   0.000001878  -0.000000053   0.000000866  -0.000003311

   19    1.2  1.5 -0.5   0.000053849  -0.000003315  -0.000033725  -0.000129977   0.000010815   0.000126578  -0.000655843  -0.000126429
                        -0.000000109  -0.000003213  -0.000010231   0.000002361   0.000003787  -0.000000109   0.000000433  -0.000001655

   20    2.2  1.5 -0.5   0.000000109   0.000003213  -0.000002440   0.000000563  -0.000003726   0.000000101  -0.000000433   0.000001655
                         0.000053852  -0.000003315  -0.000031734  -0.000141365   0.000003926  -0.000115195  -0.000655856  -0.000126431

   21    3.2  1.5 -0.5  -0.000003329  -0.000097874   0.000064261  -0.000014830  -0.000001362   0.000000038   0.000013198  -0.000050440
                         0.000008609   0.000044868  -0.000021774   0.000007196   0.000002499  -0.000004137   0.000252532  -0.001310706

   22    1.2  1.5 -1.5  -0.000002882  -0.000084734  -0.000111262   0.000025676   0.000002359  -0.000000065   0.000011430  -0.000043681
                         0.000007453   0.000038844   0.000037700  -0.000012460  -0.000004329   0.000007163   0.000218695  -0.001135082

   23    2.2  1.5 -1.5  -0.000007453  -0.000038844  -0.000037700   0.000012460   0.000004329  -0.000007163  -0.000218695   0.001135082
                        -0.000002882  -0.000084734  -0.000111263   0.000025676   0.000002359  -0.000000065   0.000011430  -0.000043681

   24    3.2  1.5 -1.5   0.000000003  -0.000000000   0.000001725  -0.000009862  -0.000005966  -0.000209383  -0.000000011  -0.000000002
                        -0.000000000  -0.000000000   0.000010973  -0.000002532  -0.000000053   0.000000007   0.000000000   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.005045971   0.000261810  -0.000336196   0.000000000   0.000000378  -0.000091375   0.000001219   0.000150625
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000011130  -0.000124182   0.000070341   0.000890035   0.000011393   0.000000047  -0.000007712   0.000000063
                        -0.000221202  -0.002661811   0.003745253   0.001915508  -0.000090477  -0.000006364  -0.000086667  -0.000008330

    3    3.2  0.5  0.5   0.000133761  -0.002398776  -0.003875554  -0.001991771  -0.000090693  -0.000000380   0.000236012   0.000012804
                         0.000001105   0.000111824   0.000070482   0.000930764  -0.000011417  -0.000000047  -0.000021008   0.000000170

    4    4.2  0.5  0.5   0.813241949  -0.067453298   0.013106396  -0.021237087  -0.000092738   0.001333782   0.000181669  -0.001903183
                         0.000057090   0.001728444  -0.000023694   0.009445650  -0.000009268   0.000000073  -0.000016134   0.000000277

    5    5.2  0.5  0.5   0.031821134   0.383173431   0.627083217   0.320451635   0.001323371   0.000093172  -0.002998978  -0.000288357
                        -0.000177864  -0.017991462  -0.011339664  -0.149748545   0.000166636   0.000000689   0.000266859  -0.000002163

    6    6.2  0.5  0.5   0.000759210   0.020108645  -0.011358024  -0.143477306  -0.000166520  -0.000002388   0.000097939   0.000001626
                         0.035666015   0.429181651  -0.603863906  -0.308858031   0.001323401   0.000093092   0.001103265   0.000106037

    7    1.2  0.5 -0.5  -0.000012234  -0.000235795   0.000000000  -0.000142312  -0.000011413  -0.000000047   0.000013362  -0.000000108
                        -0.000261524  -0.005040458  -0.000000000  -0.000304590   0.000090660   0.000000375   0.000150031  -0.000001214

    8    2.2  0.5 -0.5   0.002664706  -0.000221481  -0.002112183   0.003422935   0.000006321  -0.000091191  -0.000008292   0.000087010
                        -0.000000338  -0.000000781   0.000004472  -0.001521638   0.000000748   0.000000003   0.000000801  -0.000000007

    9    3.2  0.5 -0.5   0.000000391   0.000007355  -0.000000146  -0.001576666  -0.000000001  -0.000000000   0.000001305  -0.000000011
                         0.002401381   0.000133563   0.002198516  -0.003541046   0.000000383  -0.000091409   0.000012738  -0.000236945

   10    4.2  0.5 -0.5   0.001425490   0.038059254   0.000431999   0.005526471   0.000166514   0.000002388  -0.000168551  -0.000000045
                         0.067460380   0.812350887   0.023238923   0.011884287  -0.001323347  -0.000093170  -0.001895704  -0.000182384

   11    5.2  0.5 -0.5   0.000066382   0.001309310   0.000023423   0.255170743   0.000010953   0.000000045  -0.000027734   0.000000225
                        -0.383595577   0.031794685  -0.353714400   0.572930922  -0.000092529   0.001333821  -0.000287028   0.003010827

   12    6.2  0.5 -0.5  -0.429652472   0.035662530   0.340556099  -0.551902240  -0.000092661   0.001333836   0.000105763  -0.001107603
                        -0.000031320  -0.000908267  -0.000750681   0.245325373  -0.000009258   0.000000073  -0.000007786   0.000000315

   13    1.2  1.5  1.5   0.001669918  -0.000138514   0.000027021  -0.000043193   0.034571092  -0.498785411  -0.026509501   0.278190424
                         0.000000024   0.000002425   0.000001529   0.000020185   0.004092112   0.000016936   0.002561300  -0.000020753

   14    2.2  1.5  1.5   0.000000024   0.000002425   0.000001529   0.000020185   0.004092109   0.000016936   0.002561297  -0.000020753
                        -0.001669919   0.000138514  -0.000027021   0.000043193  -0.034571067   0.498785046   0.026509469  -0.278190098

   15    3.2  1.5  1.5  -0.000003320  -0.000004171   0.000046575   0.000602188   0.000000016   0.000000000   0.053354863  -0.000432606
                        -0.000007998  -0.000094479   0.002527714   0.001292248  -0.000000125  -0.000000009   0.599604892   0.057629766

   16    1.2  1.5  0.5   0.000002760   0.000087727   0.000026886   0.000362478   0.035977018   0.000148832   0.059275806  -0.000480252
                         0.000155283   0.001871638   0.001514421   0.000773596  -0.285717825  -0.020098426   0.666144262   0.064024757

   17    2.2  1.5  0.5   0.000164519   0.001980735  -0.001404327  -0.000718561  -0.285717471  -0.020098401  -0.026220065  -0.002520387
                        -0.000006594  -0.000092544   0.000026894   0.000332867  -0.035976974  -0.000148831   0.002333103  -0.000019279

   18    3.2  1.5  0.5   0.000964168  -0.000079974   0.000015598  -0.000024933  -0.039919252   0.575947693  -0.015305230   0.160612929
                         0.000000014   0.000001400   0.000000883   0.000011652  -0.004725164  -0.000019556   0.001478764  -0.000011982

   19    1.2  1.5 -0.5   0.001873693  -0.000155243   0.000854307  -0.001383431  -0.019959636   0.287973994  -0.063729751   0.668776338
                         0.000000171   0.000004499   0.000000938   0.000616696  -0.002362583  -0.000009778   0.006157843  -0.000049952

   20    2.2  1.5 -0.5   0.000000116  -0.000001101  -0.000002592   0.000570086   0.002362580   0.000009778   0.000242780  -0.000002025
                         0.001982895  -0.000164647  -0.000791911   0.001283690  -0.019959612   0.287973638   0.002508741  -0.026323692

   21    3.2  1.5 -0.5  -0.000002339  -0.000045069   0.000000002  -0.000007402  -0.071953999  -0.000297663  -0.014235655   0.000115243
                        -0.000079952  -0.000963114  -0.000027521  -0.000013758   0.571435357   0.040196832  -0.159980818  -0.015376070

   22    1.2  1.5 -1.5   0.000004051   0.000078058  -0.000000003   0.000012823  -0.062314001  -0.000257784   0.024656938  -0.000199607
                         0.000138476   0.001668093   0.000047677   0.000023834   0.494877613   0.034811483   0.277095573   0.026632199

   23    2.2  1.5 -1.5  -0.000138476  -0.001668094  -0.000047677  -0.000023834  -0.494877250  -0.034811457  -0.277095247  -0.026632168
                         0.000004051   0.000078058  -0.000000003   0.000012823  -0.062313955  -0.000257783   0.024656909  -0.000199607

   24    3.2  1.5 -1.5   0.000094571  -0.000008144  -0.001425669   0.002309797   0.000000009  -0.000000126   0.057364197  -0.601974078
                        -0.000000248  -0.000002943   0.000001433  -0.001027785   0.000000001   0.000000000  -0.005543100   0.000045013


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000000580   0.000187193  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000027309   0.000000084  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000222197  -0.000003528   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    3    3.2  0.5  0.5  -0.000036092  -0.000011716  -0.000000001  -0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000000
                        -0.000004431   0.000000014  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    4    4.2  0.5  0.5  -0.000037055  -0.002388291   0.000000000  -0.000000000   0.000000003  -0.000000000   0.000000000   0.000000000
                        -0.000007300   0.000000069  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    5    5.2  0.5  0.5   0.000457971  -0.000007416   0.000000002   0.000000002   0.000000000   0.000000002   0.000000000  -0.000000000
                         0.000056288  -0.000000173   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    6    6.2  0.5  0.5   0.000347687   0.000001966  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.002828503   0.000044912  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    7    1.2  0.5 -0.5  -0.000022834   0.000000071  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000185795  -0.000000575  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000

    8    2.2  0.5 -0.5  -0.000003512  -0.000223869   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000347   0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    9    3.2  0.5 -0.5   0.000001443  -0.000000004   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000011626   0.000036363  -0.000000001   0.000000001   0.000000001   0.000000000  -0.000000000  -0.000000000

   10    4.2  0.5 -0.5   0.000291399   0.000002726  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.002370447   0.000037668  -0.000000000  -0.000000000   0.000000000   0.000000003  -0.000000000   0.000000000

   11    5.2  0.5 -0.5   0.000000733  -0.000000003  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000007382  -0.000461417   0.000000002  -0.000000002  -0.000000002   0.000000000   0.000000000   0.000000000

   12    6.2  0.5 -0.5   0.000044337   0.002849792  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000007429  -0.000000062   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   13    1.2  1.5  1.5   0.005476881   0.349095876   0.250337434  -0.345321910   0.575458059  -0.031716234   0.154915702   0.107507801
                         0.000540151  -0.000001655   0.000008932   0.018465127   0.000013734  -0.005198601  -0.000508722   0.000770116

   14    2.2  1.5  1.5   0.000540151  -0.000001655  -0.000002026  -0.004386044  -0.000012949   0.004908554   0.001331488  -0.002015895
                        -0.005476875  -0.349095467   0.059463016  -0.082024898   0.543336417  -0.029945932   0.405463191   0.281381777

   15    3.2  1.5  1.5   0.059040014  -0.000182429   0.000000390  -0.011394392  -0.000153506   0.059154844   0.033206353  -0.050789011
                        -0.480368132   0.007627285  -0.294591054  -0.212951527  -0.021365591  -0.377958893  -0.195466261   0.281140272

   16    1.2  1.5  0.5  -0.015086581   0.000047058  -0.000000704   0.018700011   0.000121889  -0.046928009  -0.003537282   0.005410517
                         0.122750052  -0.001949396   0.483470921   0.349487367   0.016949549   0.299837716   0.020822784  -0.029949514

   17    2.2  1.5  0.5   0.677430811  -0.010756617  -0.026775586  -0.019355377  -0.020056749  -0.354806454  -0.317734953   0.457000070
                         0.083260045  -0.000257709   0.000000028   0.001035648   0.000143992  -0.055531213  -0.053977849   0.082558694

   18    3.2  1.5  0.5   0.003162080   0.201550679   0.330604324  -0.456043988   0.055637258  -0.003066305  -0.433960564  -0.301158270
                         0.000311857  -0.000000956   0.000011962   0.024385698   0.000001359  -0.000502383   0.001425072  -0.002157751

   19    1.2  1.5 -0.5   0.001940582   0.123673713  -0.349987228   0.482781194   0.303487983  -0.016726884  -0.030434154  -0.021120632
                         0.000191086  -0.000000503  -0.000012697  -0.025815327   0.000007396  -0.002741708   0.000099979  -0.000151513

   20    2.2  1.5 -0.5  -0.001056339   0.000003319  -0.000000735  -0.001429635   0.000008755  -0.003244095   0.001525052  -0.002309265
                         0.010707725   0.682528196   0.019382997  -0.026737335  -0.359125733   0.019793217   0.464394976   0.322279080

   21    3.2  1.5 -0.5   0.024586681  -0.000076192  -0.000000732   0.017664367  -0.000022104   0.008603128   0.050440537  -0.077148131
                        -0.200045416   0.003176507   0.456695464   0.330132083  -0.003107173  -0.054968252  -0.296911992   0.427050303

   22    1.2  1.5 -1.5  -0.042585364   0.000131968   0.000000548  -0.013375548   0.000231024  -0.088982720   0.018006499  -0.027540429
                         0.346488686  -0.005501868  -0.345815223  -0.249979705   0.032138716   0.568536820  -0.105991958   0.152448905

   23    2.2  1.5 -1.5  -0.346488279   0.005501862  -0.082142081  -0.059377936   0.030344819   0.536801422  -0.277414342   0.399006749
                        -0.042585314   0.000131968  -0.000000125   0.003177025  -0.000218262   0.084015786  -0.047128384   0.072081966

   24    3.2  1.5 -1.5   0.007592576   0.483982686  -0.213256068   0.294170755   0.382560111  -0.021084885  -0.285689527  -0.198261774
                         0.000749332  -0.000002439  -0.000007755  -0.015729891   0.000009325  -0.003455904   0.000938211  -0.001420730


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  33.290%   0.039%   3.364%  63.171%   0.000%   0.129%   0.005%   0.000%   0.003%   0.000%
    2    2.2  0.5  0.5   0.243%  33.085%  18.396%   0.869%  47.387%   0.012%   0.000%   0.005%   0.000%   0.001%
    3    3.2  0.5  0.5   0.039%  33.290%  13.483%   0.713%  52.302%   0.167%   0.000%   0.005%   0.000%   0.001%
    4    4.2  0.5  0.5   0.005%   0.000%   0.000%   0.002%   0.000%   0.000%  32.134%   1.194%  66.136%   0.455%
    5    5.2  0.5  0.5   0.000%   0.005%   0.001%   0.000%   0.002%   0.000%   1.194%  32.134%   0.101%  14.715%
    6    6.2  0.5  0.5   0.000%   0.005%   0.001%   0.000%   0.002%   0.000%   1.195%  32.133%   0.127%  18.460%
    7    1.2  0.5 -0.5   0.039%  33.290%  63.171%   3.364%   0.129%   0.000%   0.000%   0.005%   0.000%   0.003%
    8    2.2  0.5 -0.5  33.085%   0.243%   0.869%  18.396%   0.012%  47.387%   0.005%   0.000%   0.001%   0.000%
    9    3.2  0.5 -0.5  33.290%   0.039%   0.713%  13.483%   0.167%  52.302%   0.005%   0.000%   0.001%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.005%   0.002%   0.000%   0.000%   0.000%   1.194%  32.134%   0.455%  66.136%
   11    5.2  0.5 -0.5   0.005%   0.000%   0.000%   0.001%   0.000%   0.002%  32.134%   1.194%  14.715%   0.101%
   12    6.2  0.5 -0.5   0.005%   0.000%   0.000%   0.001%   0.000%   0.002%  32.133%   1.195%  18.460%   0.127%
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
    2    2.2  0.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.017%   0.054%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    5    5.2  0.5  0.5  39.336%  12.511%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  0.5  0.5  36.478%  11.598%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    7    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.054%   0.017%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   11    5.2  0.5 -0.5  12.511%  39.336%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   12    6.2  0.5 -0.5  11.598%  36.478%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   13    1.2  1.5  1.5   0.000%   0.000%   0.121%  24.879%   0.071%   7.739%   0.003%  12.187%   6.267%  11.959%
   14    2.2  1.5  1.5   0.000%   0.000%   0.121%  24.879%   0.071%   7.739%   0.003%  12.187%   0.354%   0.675%
   15    3.2  1.5  1.5   0.001%   0.000%   0.000%   0.000%  36.237%   0.332%  23.424%   0.006%   8.678%   4.548%
   16    1.2  1.5  0.5   0.000%   0.000%   8.293%   0.040%  44.726%   0.410%   1.530%   0.000%  23.374%  12.249%
   17    2.2  1.5  0.5   0.000%   0.000%   8.293%   0.040%   0.069%   0.001%  46.584%   0.012%   0.072%   0.038%
   18    3.2  1.5  0.5   0.000%   0.000%   0.162%  33.172%   0.024%   2.580%   0.001%   4.062%  10.930%  20.857%
   19    1.2  1.5 -0.5   0.000%   0.000%   0.040%   8.293%   0.410%  44.726%   0.000%   1.530%  12.249%  23.374%
   20    2.2  1.5 -0.5   0.000%   0.000%   0.040%   8.293%   0.001%   0.069%   0.012%  46.584%   0.038%   0.072%
   21    3.2  1.5 -0.5   0.000%   0.000%  33.172%   0.162%   2.580%   0.024%   4.062%   0.001%  20.857%  10.930%
   22    1.2  1.5 -1.5   0.000%   0.000%  24.879%   0.121%   7.739%   0.071%  12.187%   0.003%  11.959%   6.267%
   23    2.2  1.5 -1.5   0.000%   0.000%  24.879%   0.121%   7.739%   0.071%  12.187%   0.003%   0.675%   0.354%
   24    3.2  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.332%  36.237%   0.006%  23.424%   4.548%   8.678%

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
   13    1.2  1.5  1.5  33.115%   0.103%   2.400%   1.156%
   14    2.2  1.5  1.5  29.521%   0.092%  16.440%   7.918%
   15    3.2  1.5  1.5   0.046%  14.635%   3.931%   8.162%
   16    1.2  1.5  0.5   0.029%   9.210%   0.045%   0.093%
   17    2.2  1.5  0.5   0.040%  12.897%  10.387%  21.567%
   18    3.2  1.5  0.5   0.310%   0.001%  18.832%   9.070%
   19    1.2  1.5 -0.5   9.210%   0.029%   0.093%   0.045%
   20    2.2  1.5 -0.5  12.897%   0.040%  21.567%  10.387%
   21    3.2  1.5 -0.5   0.001%   0.310%   9.070%  18.832%
   22    1.2  1.5 -1.5   0.103%  33.115%   1.156%   2.400%
   23    2.2  1.5 -1.5   0.092%  29.521%   7.918%  16.440%
   24    3.2  1.5 -1.5  14.635%   0.046%   8.162%   3.931%


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
              1      24       43.87       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      315.17       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9463.42   7546.67    352.99   1561.12      1.48      0.03      0.90
 REAL TIME  *      9585.36 SEC
 DISK USED  *       359.12 MB (local),        4.64 GB (total)
 SF USED    *         2.57 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -1942.586069771912

              CI              CI           MULTI         RHF-SCF
  -1942.53936565  -1942.66407712  -1941.84274207  -1941.98237927
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
