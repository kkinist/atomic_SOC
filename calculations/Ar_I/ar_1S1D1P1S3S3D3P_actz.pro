
 Working directory              : /wrk/irikura/molpro.3JIGRYNOIT/
 Global scratch directory       : /wrk/irikura/molpro.3JIGRYNOIT/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.3JIGRYNOIT/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Ar SO-CI
                                                                                 ! active space (8/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Ar};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=17,sym=1,spin=1}
 
 {multi,wmk_old
     closed,2,3
     occ,4,9
     wf,nelec=18,sym=1,spin=0;state,10;
     wf,nelec=18,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.03 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ar SO-                                                                        
  64 bit mpp version                                                                     DATE: 28-Feb-24          TIME: 14:24:25  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry AR     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  AR     18.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   18
 NUMBER OF PRIMITIVE AOS:         114
 NUMBER OF SYMMETRY AOS:          100
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     10.486 MB (compressed) written to integral file ( 23.1%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      69570.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      69570      RECORD LENGTH: 524288

 Memory used in sort:       0.63 MW

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.06 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     60 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:       68866.  Node maximum:       71403. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.199E-02 0.513E-02 0.590E-01 0.129E+00 0.129E+00 0.129E+00 0.129E+00 0.129E+00
         2 0.126E-01 0.126E-01 0.126E-01 0.298E-01 0.298E-01 0.298E-01 0.113E+00 0.113E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.49      1.12
 REAL TIME  *         2.64 SEC
 DISK USED  *        29.05 MB (local),      995.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   2   6

 NELEC=   17   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -527.33573427    -527.33573427     0.00D+00     0.15D+00     0     0       0.00      0.00    start
   2     -527.39152988      -0.05579561     0.13D-01     0.18D-01     1     0       0.01      0.01    diag2
   3     -527.39350046      -0.00197058     0.48D-02     0.32D-02     2     0       0.00      0.01    diag2
   4     -527.39356016      -0.00005970     0.50D-03     0.10D-02     3     0       0.00      0.01    diag2
   5     -527.39356303      -0.00000288     0.74D-04     0.21D-03     4     0       0.00      0.01    diag2
   6     -527.39356306      -0.00000003     0.64D-05     0.11D-04     5     0       0.01      0.02    diag2
   7     -527.39356306      -0.00000000     0.58D-06     0.19D-05     6     0       0.00      0.02    diag2
   8     -527.39356306       0.00000000     0.33D-07     0.69D-07     0     0       0.00      0.02    fixocc

 Final alpha occupancy:   3   6
 Final beta  occupancy:   2   6

 !RHF STATE 1.1 Energy               -527.393563061037
  RHF One-electron energy            -720.546925087995
  RHF Two-electron energy             193.153362026959
  RHF Kinetic energy                  538.353517247656
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.979641715275

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.67597     1  1  s    0.99848
    2.1     2.00000   -12.97214     1  2  s    0.99904
    3.1     1.00000    -1.82902     1  3  s    1.12555
    1.2     2.00000   -10.15460     1  1  px   1.00070
    2.2     2.00000   -10.15460     1  1  py   1.00059
    3.2     2.00000   -10.15460     1  1  pz   1.00059
    4.2     2.00000    -1.03123     1  2  pz   1.08893
    5.2     2.00000    -1.03123     1  2  px   1.08894
    6.2     2.00000    -1.03123     1  2  py   1.08893


 HOMO      6.2    -1.031226 =     -28.0611eV
 LUMO      4.1    -0.113559 =      -3.0901eV
 LUMO-HOMO         0.917668 =      24.9710eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.52      0.01      1.12
 REAL TIME  *         2.68 SEC
 DISK USED  *        29.60 MB (local),     1012.41 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 4 3 5 2 1   2 4 6 3 5 6 4 3 5 2   1 2 6 4 5 3 1 2 6 4   5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.970D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.146D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.150D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.275D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.371D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.240D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.631D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.983D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.402D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   1 2 9 7 6 810 4 5 3   1 210 8 6 9 7 5 410   8 5 4 7 9 6 3 1 2 3
                                        2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-01 (gradient)  0.10E-05 (energy)  0.10E-02 (step length)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263

 Number of orbital rotations:      435   (    22 Core/Active    157 Core/Virtual   0 Active/Active    256 Active/Virtual)
 Total number of variables:      39619


 ITER. MIC  NCI  NEG     ENERGY(VAR)     ENERGY(PROJ)   ENERGY CHANGE     GRAD(0)  GRAD(ORB)   GRAD(CI)     STEP       TIME

 Not enough P space configurations found with threshold  0.40  for 10 states. Nplist= 1  threshold increased to    0.90
   1  115   42    0    -528.16946229    -528.17354988   -0.00408760    0.09490431 0.00000355 0.00000956  0.83D+00      0.46
   2  124   66    0    -528.17357165    -528.17357612   -0.00000447    0.00129034 0.00000003 0.00000031  0.30D-01      1.10
   3  111   30    0    -528.17357612    -528.17357612    0.00000000    0.00000057 0.00000000 0.00000013  0.14D-05      1.49

 ** WVFN ****  CONVERGENCE REACHED, FINAL GRADIENT:  0.18D-08



 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy             -528.608138589642
 Nuclear energy                         0.00000000
 Kinetic energy                       540.58117268
 One electron energy                 -731.89812735
 Two electron energy                  203.28998876
 Virial ratio                           1.97785155

 !MCSCF STATE 1.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy             -528.151452697905
 Nuclear energy                         0.00000000
 Kinetic energy                       539.22653779
 One electron energy                 -725.41645454
 Two electron energy                  197.26500184
 Virial ratio                           1.97946116

 !MCSCF STATE 2.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy             -528.151452697905
 Nuclear energy                         0.00000000
 Kinetic energy                       539.22653779
 One electron energy                 -725.41645454
 Two electron energy                  197.26500184
 Virial ratio                           1.97946116

 !MCSCF STATE 3.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy             -528.151452697905
 Nuclear energy                         0.00000000
 Kinetic energy                       539.22653779
 One electron energy                 -725.41645454
 Two electron energy                  197.26500184
 Virial ratio                           1.97946116

 !MCSCF STATE 4.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy             -528.151452697802
 Nuclear energy                         0.00000000
 Kinetic energy                       539.22653778
 One electron energy                 -725.41645454
 Two electron energy                  197.26500184
 Virial ratio                           1.97946116

 !MCSCF STATE 5.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy             -528.151452697801
 Nuclear energy                         0.00000000
 Kinetic energy                       539.22653778
 One electron energy                 -725.41645454
 Two electron energy                  197.26500184
 Virial ratio                           1.97946116

 !MCSCF STATE 6.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy             -528.146858652847
 Nuclear energy                         0.00000000
 Kinetic energy                       539.21425548
 One electron energy                 -725.39691638
 Two electron energy                  197.25005773
 Virial ratio                           1.97947496

 !MCSCF STATE 7.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy             -528.146858652847
 Nuclear energy                         0.00000000
 Kinetic energy                       539.21425548
 One electron energy                 -725.39691638
 Two electron energy                  197.25005773
 Virial ratio                           1.97947496

 !MCSCF STATE 8.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy             -528.146858652847
 Nuclear energy                         0.00000000
 Kinetic energy                       539.21425548
 One electron energy                 -725.39691638
 Two electron energy                  197.25005773
 Virial ratio                           1.97947496

 !MCSCF STATE 9.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy            -528.106188076365
 Nuclear energy                         0.00000000
 Kinetic energy                       539.81627316
 One electron energy                 -726.62360066
 Two electron energy                  198.51741258
 Virial ratio                           1.97830728

 !MCSCF STATE 10.1 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000



 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy             -528.168445233146
 Nuclear energy                         0.00000000
 Kinetic energy                       539.16716621
 One electron energy                 -725.31528355
 Two electron energy                  197.14683832
 Virial ratio                           1.97960054

 !MCSCF STATE 1.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy             -528.155143594698
 Nuclear energy                         0.00000000
 Kinetic energy                       539.19701286
 One electron energy                 -725.36693678
 Two electron energy                  197.21179318
 Virial ratio                           1.97952164

 !MCSCF STATE 2.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy             -528.155143594698
 Nuclear energy                         0.00000000
 Kinetic energy                       539.19701286
 One electron energy                 -725.36693678
 Two electron energy                  197.21179318
 Virial ratio                           1.97952164

 !MCSCF STATE 3.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy             -528.155143594698
 Nuclear energy                         0.00000000
 Kinetic energy                       539.19701286
 One electron energy                 -725.36693678
 Two electron energy                  197.21179318
 Virial ratio                           1.97952164

 !MCSCF STATE 4.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy             -528.155143594694
 Nuclear energy                         0.00000000
 Kinetic energy                       539.19701286
 One electron energy                 -725.36693678
 Two electron energy                  197.21179318
 Virial ratio                           1.97952164

 !MCSCF STATE 5.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy             -528.155143594693
 Nuclear energy                         0.00000000
 Kinetic energy                       539.19701286
 One electron energy                 -725.36693678
 Two electron energy                  197.21179318
 Virial ratio                           1.97952164

 !MCSCF STATE 6.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy             -528.147205670127
 Nuclear energy                         0.00000000
 Kinetic energy                       539.21043725
 One electron energy                 -725.38884783
 Two electron energy                  197.24164216
 Virial ratio                           1.97948253

 !MCSCF STATE 7.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy             -528.147205670126
 Nuclear energy                         0.00000000
 Kinetic energy                       539.21043725
 One electron energy                 -725.38884783
 Two electron energy                  197.24164216
 Virial ratio                           1.97948253

 !MCSCF STATE 8.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy             -528.147205670126
 Nuclear energy                         0.00000000
 Kinetic energy                       539.21043725
 One electron energy                 -725.38884783
 Two electron energy                  197.24164216
 Virial ratio                           1.97948253

 !MCSCF STATE 9.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 State-averaged charge density matrix saved on record  2140.2 (density set 1)

 !MCSCF expec        <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec        <2.1|LXLX|2.1>     3.999878929716
 !MCSCF expec        <3.1|LXLX|3.1>     1.000036205673
 !MCSCF expec        <4.1|LXLX|4.1>     1.000084891116
 !MCSCF expec        <5.1|LXLX|5.1>     3.992748504023
 !MCSCF expec        <6.1|LXLX|6.1>     0.007251469472
 !MCSCF expec        <7.1|LXLX|7.1>     0.000004804629
 !MCSCF expec        <8.1|LXLX|8.1>     0.999995503605
 !MCSCF expec        <9.1|LXLX|9.1>     0.999999691766
 !MCSCF expec      <10.1|LXLX|10.1>    -0.000000000000
 !MCSCF expec        <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LXLX|2.1>     3.999862342971
 !MCSCF expec        <3.1|LXLX|3.1>     1.000042567699
 !MCSCF expec        <4.1|LXLX|4.1>     1.000094650655
 !MCSCF expec        <5.1|LXLX|5.1>     3.999648187979
 !MCSCF expec        <6.1|LXLX|6.1>     0.000352250696
 !MCSCF expec        <7.1|LXLX|7.1>     0.000310366497
 !MCSCF expec        <8.1|LXLX|8.1>     0.999970214124
 !MCSCF expec        <9.1|LXLX|9.1>     0.999719419379
 !MCSCF expec        <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LYLY|2.1>     1.000020538581
 !MCSCF expec        <3.1|LYLY|3.1>     3.929522707071
 !MCSCF expec        <4.1|LYLY|4.1>     1.070456726533
 !MCSCF expec        <5.1|LYLY|5.1>     1.150985762288
 !MCSCF expec        <6.1|LYLY|6.1>     2.849014265527
 !MCSCF expec        <7.1|LYLY|7.1>     0.999995289267
 !MCSCF expec        <8.1|LYLY|8.1>     0.013359014892
 !MCSCF expec        <9.1|LYLY|9.1>     0.986645695842
 !MCSCF expec      <10.1|LYLY|10.1>    -0.000000000000
 !MCSCF expec        <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LYLY|2.1>     1.000003240217
 !MCSCF expec        <3.1|LYLY|3.1>     2.684125480500
 !MCSCF expec        <4.1|LYLY|4.1>     2.315872057639
 !MCSCF expec        <5.1|LYLY|5.1>     1.032654810522
 !MCSCF expec        <6.1|LYLY|6.1>     2.967344411121
 !MCSCF expec        <7.1|LYLY|7.1>     0.999999980538
 !MCSCF expec        <8.1|LYLY|8.1>     0.100684685026
 !MCSCF expec        <9.1|LYLY|9.1>     0.899315334435
 !MCSCF expec        <1.1|LZLZ|1.1>     0.000000000000
 !MCSCF expec        <2.1|LZLZ|2.1>     1.000100531703
 !MCSCF expec        <3.1|LZLZ|3.1>     1.070441087256
 !MCSCF expec        <4.1|LZLZ|4.1>     3.929458382351
 !MCSCF expec        <5.1|LZLZ|5.1>     0.856265733689
 !MCSCF expec        <6.1|LZLZ|6.1>     3.143734265001
 !MCSCF expec        <7.1|LZLZ|7.1>     0.999999906104
 !MCSCF expec        <8.1|LZLZ|8.1>     0.986645481503
 !MCSCF expec        <9.1|LZLZ|9.1>     0.013354612392
 !MCSCF expec      <10.1|LZLZ|10.1>    -0.000000000000
 !MCSCF expec        <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LZLZ|2.1>     1.000134416812
 !MCSCF expec        <3.1|LZLZ|3.1>     2.315831951801
 !MCSCF expec        <4.1|LZLZ|4.1>     2.684033291706
 !MCSCF expec        <5.1|LZLZ|5.1>     0.967697001499
 !MCSCF expec        <6.1|LZLZ|6.1>     3.032303338183
 !MCSCF expec        <7.1|LZLZ|7.1>     0.999689652965
 !MCSCF expec        <8.1|LZLZ|8.1>     0.899345100849
 !MCSCF expec        <9.1|LZLZ|9.1>     0.100965246186
 !MCSCF expec        <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec        <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec        <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec        <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec        <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec        <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec        <7.1|L**2|7.1>     2.000000000000
 !MCSCF expec        <8.1|L**2|8.1>     2.000000000000
 !MCSCF expec        <9.1|L**2|9.1>     2.000000000000
 !MCSCF expec      <10.1|L**2|10.1>    -0.000000000000
 !MCSCF expec        <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec        <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec        <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec        <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec        <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec        <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec        <7.1|L**2|7.1>     2.000000000000
 !MCSCF expec        <8.1|L**2|8.1>     2.000000000000
 !MCSCF expec        <9.1|L**2|9.1>     2.000000000000


 NATURAL ORBITALS (state averaged)
 =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.38318     1  1  s    0.99850
    2.1     2.00000   -12.65873     1  2  s    1.00139
    3.1     1.99867    -1.53953     1  3  s    1.08361
    4.1     0.00170     1.06138     1  2  s    0.27068    1  3  s   -0.56931    1  4  s   -1.62823    1  5  s    1.59530
                                    1  6  s    0.54780
    1.2     2.00000    -9.85948     1  1  px   0.99991
    2.2     2.00000    -9.85948     1  1  py   0.99991
    3.2     2.00000    -9.85948     1  1  pz   0.99991
    4.2     1.68379    -0.73851     1  2  px   1.08884
    5.2     1.68379    -0.73851     1  2  pz   1.08884
    6.2     1.68379    -0.73851     1  2  py   1.08884
    7.2     0.31608     0.07039     1  7  py   1.17525
    8.2     0.31608     0.07039     1  7  pz   1.17525
    9.2     0.31608     0.07039     1  7  px   1.17525


 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 6 5 3 4 2   2 6 4 5 3 6 3 5 4 2   1 2 5 6 3 4 1 2 4 6   5 3 1
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.277D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.728D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.100D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 3 2 2 3 1 1   2 3 9 7 6 810 4 5 1   2 310 8 6 9 7 4 510   8 5 4 7 9 6 1 3 2 3
                                        2 1

 Natural orbital dump (state averaged) at molpro section  2140.2    (Orbital set 2)


 CI vector for state symmetry 1
 ==============================

 State:              1           2           3           4           5           6           7           8           9
 20 222000      0.9781352   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 20 b2200a     -0.0805133  -0.0000241   0.0001122  -0.0003866   0.0103953  -0.5768279  -0.0000037   0.0003892  -0.0000108
 20 a2200b      0.0805133   0.0000241  -0.0001122   0.0003866  -0.0103953   0.5768279   0.0000037  -0.0003892   0.0000108
 20 22ab00      0.0805133  -0.0000107   0.0001580   0.0000149   0.5047454  -0.2794115   0.0000038  -0.0000457   0.0001308
 20 22ba00     -0.0805133   0.0000107  -0.0001580  -0.0000149  -0.5047454   0.2794115  -0.0000038   0.0000457  -0.0001308
 20 2b2a00      0.0000000  -0.4995928   0.0004429  -0.0059947   0.0000033   0.0000251   0.4995110   0.0045727  -0.0131706
 20 2a2b00     -0.0000000   0.4995928  -0.0004429   0.0059947  -0.0000033  -0.0000251  -0.4995110  -0.0045727   0.0131706
 20 22a0b0      0.0000000   0.4995914  -0.0000742   0.0061196  -0.0000035  -0.0000252   0.4995210   0.0043220  -0.0128729
 20 22b0a0     -0.0000000  -0.4995914   0.0000742  -0.0061196   0.0000035   0.0000252  -0.4995210  -0.0043220   0.0128729
 20 22b00a     -0.0000223   0.0003021   0.4992820  -0.0186122  -0.0001646   0.0000666   0.0135780  -0.1646812   0.4715945
 20 22a00b      0.0000223  -0.0003021  -0.4992820   0.0186122   0.0001646  -0.0000666  -0.0135780   0.1646812  -0.4715945
 20 a22b00     -0.0000223  -0.0006659  -0.4992818   0.0186076   0.0000275  -0.0001491   0.0139418  -0.1646779   0.4715851
 20 b22a00      0.0000223   0.0006659   0.4992818  -0.0186076  -0.0000275   0.0001491  -0.0139418   0.1646779  -0.4715851
 20 2b200a     -0.0000586   0.0059740  -0.0186144  -0.4992461   0.0003896   0.0002327  -0.0000250  -0.4717688  -0.1647414
 20 2a200b      0.0000586  -0.0059740   0.0186144   0.4992461  -0.0003896  -0.0002327   0.0000250   0.4717688   0.1647414
 20 a220b0     -0.0000586  -0.0061126   0.0186145   0.4992445  -0.0000220  -0.0004362  -0.0001635  -0.4717700  -0.1647378
 20 b220a0      0.0000586   0.0061126  -0.0186145  -0.4992445   0.0000220   0.0004362   0.0001635   0.4717700   0.1647378
 20 2a20b0      0.0805133  -0.0000135  -0.0000458  -0.0004014  -0.4943500  -0.2974165  -0.0000001  -0.0003436  -0.0001200
 20 2b20a0     -0.0805133   0.0000135   0.0000458   0.0004014   0.4943500   0.2974165   0.0000001   0.0003436   0.0001200

 State:             10
 20 222000     -0.1955703
 20 b2200a     -0.3995169
 20 a2200b      0.3995169
 20 22ab00      0.3995170
 20 22ba00     -0.3995170
 20 2b2a00      0.0000001
 20 2a2b00     -0.0000001
 20 22a0b0     -0.0000000
 20 22b0a0      0.0000000
 20 22b00a     -0.0001108
 20 22a00b      0.0001108
 20 a22b00     -0.0001108
 20 b22a00      0.0001108
 20 2b200a     -0.0002910
 20 2a200b      0.0002910
 20 a220b0     -0.0002910
 20 b220a0      0.0002910
 20 2a20b0      0.3995169
 20 2b20a0     -0.3995169

 TOTAL ENERGIES                      -528.60813859  -528.15145270  -528.15145270
                                     -528.15145270  -528.15145270  -528.15145270
                                     -528.14685865  -528.14685865  -528.14685865
                                     -528.10618808

 CI vector for state symmetry 2
 ==============================

 20 a2200a      0.5768563   0.0006506  -0.0002059   0.0002898   0.0086562   0.8159980   0.0000044   0.0001979  -0.0005139
 20 2a20a0      0.5768563  -0.0006507   0.0002059   0.0003454  -0.7110030  -0.4005025   0.0000049   0.0000020  -0.0005146
 20 a220a0     -0.0004201   0.0009948   0.7066374  -0.0104322   0.0003529   0.0000289   0.0067559   0.0027028  -0.7066029
 20 2a200a      0.0004201   0.0011907   0.7066371  -0.0104279  -0.0001587   0.0003314  -0.0065599  -0.0027022   0.7066048
 20 22a00a      0.0001600  -0.0137879   0.0104495   0.7065030   0.0005941  -0.0001870   0.0014730  -0.7066339  -0.0026888
 20 a22a00     -0.0001600  -0.0143026   0.0104501   0.7064929   0.0003971  -0.0002977  -0.0019876   0.7066327   0.0026840
 20 2a2a00     -0.0000001   0.7065690  -0.0009791   0.0143186  -0.0003215  -0.0005653   0.7066073   0.0019626   0.0065675
 20 22a0a0      0.0000000   0.7065796  -0.0007908   0.0138012  -0.0003218  -0.0005651  -0.7066067  -0.0014472  -0.0067615
 20 22aa00      0.5768565  -0.0000000   0.0000000  -0.0006352   0.7023470  -0.4154956  -0.0000004   0.0001960   0.0000007

 TOTAL ENERGIES                      -528.16844523  -528.15514359  -528.15514359
                                     -528.15514359  -528.15514359  -528.15514359
                                     -528.14720567  -528.14720567  -528.14720567



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.63       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.57      2.03      0.01      1.12
 REAL TIME  *         5.30 SEC
 DISK USED  *        32.53 MB (local),        1.07 GB (total)
 SF USED    *        24.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -528.6081386  -0.0
    -528.1514527   6.0
    -528.1514527   6.0
    -528.1514527   6.0
    -528.1514527   6.0
    -528.1514527   6.0
    -528.1468587   2.0
    -528.1468587   2.0
    -528.1468587   2.0
    -528.1061881  -0.0
    -528.1684452  -0.0
    -528.1551436   6.0
    -528.1551436   6.0
    -528.1551436   6.0
    -528.1551436   6.0
    -528.1551436   6.0
    -528.1472057   2.0
    -528.1472057   2.0
    -528.1472057   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 18
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      603 conf      924 CSFs
 N elec internal:    13011 conf    32004 CSFs
 N-1 el internal:    15604 conf    64512 CSFs
 N-2 el internal:    10878 conf    69696 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.60813859
     2      -528.15145270
     3      -528.15145270
     4      -528.15145270
     5      -528.15145270
     6      -528.15145270
     7      -528.14685865
     8      -528.14685865
     9      -528.14685865
    10      -528.10618808

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3733D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3733D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3430D-06

 Number of blocks in overlap matrix:   215   Smallest eigenvalue:  0.37D-07
 Number of N-2 electron functions:    1400
 Number of N-1 electron functions:   64512

 Number of internal configurations:                16212
 Number of singly external configurations:       2000768
 Number of doubly external configurations:       1349532
 Total number of contracted configurations:      3366512
 Total number of uncontracted configurations:   68768804

 Diagonal Coupling coefficients finished.               Storage:16848321 words, CPU-Time:     15.11 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  939843 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.60813859     0.00000000    -0.47646317  0.33D-01  0.28D-01    18.75
    1     2     2     1.00000000     0.00000000  -528.15145270     0.00000000    -0.46043346  0.22D-01  0.31D-01    18.75
    1     3     3     1.00000000     0.00000000  -528.15145270    -0.00000000    -0.46020043  0.22D-01  0.31D-01    18.75
    1     4     4     1.00000000     0.00000000  -528.15145270     0.00000000    -0.46017265  0.22D-01  0.31D-01    18.75
    1     5     5     1.00000000     0.00000000  -528.15145270     0.00000000    -0.46837522  0.22D-01  0.36D-01    18.75
    1     6     6     1.00000000     0.00000000  -528.15145270     0.00000000    -0.46946086  0.22D-01  0.37D-01    18.75
    1     7     7     1.00000000     0.00000000  -528.14685865     0.00000000    -0.46333759  0.22D-01  0.33D-01    18.75
    1     8     8     1.00000000     0.00000000  -528.14685865     0.00000000    -0.46326692  0.22D-01  0.32D-01    18.75
    1     9     9     1.00000000     0.00000000  -528.14685865     0.00000000    -0.46324032  0.22D-01  0.32D-01    18.75
    1    10    10     1.00000000     0.00000000  -528.10618808     0.00000000    -0.49607240  0.53D-01  0.36D-01    18.75
    2     1     1     1.05928786    -0.46735179  -529.07549038    -0.46735179    -0.02123834  0.36D-02  0.21D-02    76.96
    2     2     2     1.05303087    -0.44837632  -528.59982902    -0.44837632    -0.01116587  0.10D-02  0.13D-02    76.96
    2     3     3     1.05272175    -0.44814186  -528.59959456    -0.44814186    -0.01134749  0.10D-02  0.14D-02    76.96
    2     4     4     1.05000325    -0.44803584  -528.59948854    -0.44803584    -0.01141634  0.11D-02  0.13D-02    76.96
    2     5     5     1.04998332    -0.44803241  -528.59948510    -0.44803241    -0.01142049  0.11D-02  0.13D-02    76.96
    2     6     6     1.05004001    -0.44801643  -528.59946913    -0.44801643    -0.01142585  0.11D-02  0.13D-02    76.96
    2     7     7     1.05117054    -0.44918457  -528.59604323    -0.44918457    -0.01115324  0.10D-02  0.13D-02    76.96
    2     8     8     1.05115140    -0.44917681  -528.59603547    -0.44917681    -0.01115988  0.10D-02  0.13D-02    76.96
    2     9     9     1.05118360    -0.44914228  -528.59600093    -0.44914228    -0.01116780  0.10D-02  0.13D-02    76.96
    2    10    10     1.07218268    -0.45582988  -528.56201795    -0.45582988    -0.01922272  0.58D-02  0.16D-02    76.96
    3     1     1     1.06187115    -0.49236134  -529.10049993    -0.02500955    -0.00234843  0.15D-03  0.22D-03   134.84
    3     2     2     1.05500638    -0.46094104  -528.61239374    -0.01256472    -0.00126089  0.98D-04  0.14D-03   134.84
    3     3     3     1.05500288    -0.46093952  -528.61239222    -0.01279766    -0.00126233  0.98D-04  0.14D-03   134.84
    3     4     4     1.05499066    -0.46092715  -528.61237984    -0.01289130    -0.00126631  0.98D-04  0.15D-03   134.84
    3     5     5     1.05505610    -0.46080652  -528.61225922    -0.01277411    -0.00129551  0.10D-03  0.16D-03   134.84
    3     6     6     1.05496463    -0.46077565  -528.61222835    -0.01275921    -0.00131091  0.98D-04  0.16D-03   134.84
    3     7     7     1.05570158    -0.46183181  -528.60869046    -0.01264723    -0.00123879  0.91D-04  0.15D-03   134.84
    3     8     8     1.05569615    -0.46182985  -528.60868850    -0.01265304    -0.00124035  0.91D-04  0.15D-03   134.84
    3     9     9     1.05568012    -0.46181330  -528.60867195    -0.01267102    -0.00124787  0.91D-04  0.15D-03   134.84
    3    10    10     1.06219576    -0.47489523  -528.58108330    -0.01906535    -0.00155673  0.11D-03  0.19D-03   134.84
    4     1     1     1.06928675    -0.49518126  -529.10331985    -0.00281992    -0.00016772  0.71D-05  0.19D-04   192.79
    4     2     2     1.06080307    -0.46258227  -528.61403497    -0.00164123    -0.00013486  0.53D-05  0.18D-04   192.79
    4     3     3     1.06093263    -0.46257981  -528.61403251    -0.00164029    -0.00012623  0.48D-05  0.18D-04   192.79
    4     4     4     1.06093196    -0.46257948  -528.61403218    -0.00165233    -0.00012656  0.49D-05  0.18D-04   192.79
    4     5     5     1.06093098    -0.46257648  -528.61402918    -0.00176996    -0.00012788  0.49D-05  0.18D-04   192.79
    4     6     6     1.06084081    -0.46257604  -528.61402874    -0.00180039    -0.00013676  0.52D-05  0.19D-04   192.79
    4     7     7     1.06156767    -0.46347543  -528.61033409    -0.00164363    -0.00012308  0.45D-05  0.17D-04   192.79
    4     8     8     1.06156796    -0.46347528  -528.61033393    -0.00164543    -0.00012326  0.45D-05  0.17D-04   192.79
    4     9     9     1.06156387    -0.46347179  -528.61033045    -0.00165849    -0.00012481  0.45D-05  0.17D-04   192.79
    4    10    10     1.06681123    -0.47698529  -528.58317337    -0.00209006    -0.00016652  0.99D-05  0.24D-04   192.79
    5     1     1     1.07016245    -0.49540546  -529.10354405    -0.00022419    -0.00002311  0.12D-05  0.25D-05   250.60
    5     2     2     1.06103620    -0.46276157  -528.61421427    -0.00017930    -0.00001860  0.14D-05  0.22D-05   250.60
    5     3     3     1.06102580    -0.46276028  -528.61421298    -0.00018047    -0.00001953  0.14D-05  0.23D-05   250.60
    5     4     4     1.06099603    -0.46275949  -528.61421219    -0.00018001    -0.00002049  0.15D-05  0.22D-05   250.60
    5     5     5     1.06099654    -0.46275934  -528.61421204    -0.00018286    -0.00002061  0.15D-05  0.22D-05   250.60
    5     6     6     1.06099526    -0.46275852  -528.61421122    -0.00018249    -0.00002100  0.15D-05  0.23D-05   250.60
    5     7     7     1.06161017    -0.46364938  -528.61050803    -0.00017395    -0.00001774  0.94D-06  0.21D-05   250.60
    5     8     8     1.06161026    -0.46364934  -528.61050799    -0.00017407    -0.00001777  0.95D-06  0.21D-05   250.60
    5     9     9     1.06160707    -0.46364840  -528.61050705    -0.00017661    -0.00001818  0.96D-06  0.21D-05   250.60
    5    10    10     1.06773647    -0.47721459  -528.58340267    -0.00022930    -0.00002834  0.30D-05  0.33D-05   250.60
    6     1     1     1.07008807    -0.49543518  -529.10357377    -0.00002972    -0.00000333  0.18D-06  0.33D-06   308.61
    6     2     2     1.06088621    -0.46278533  -528.61423803    -0.00002376    -0.00000380  0.28D-06  0.41D-06   308.61
    6     3     3     1.06088571    -0.46278529  -528.61423799    -0.00002500    -0.00000382  0.29D-06  0.42D-06   308.61
    6     4     4     1.06089617    -0.46278521  -528.61423791    -0.00002572    -0.00000367  0.25D-06  0.43D-06   308.61
    6     5     5     1.06088199    -0.46278501  -528.61423771    -0.00002567    -0.00000394  0.29D-06  0.43D-06   308.61
    6     6     6     1.06088676    -0.46278498  -528.61423768    -0.00002646    -0.00000387  0.25D-06  0.47D-06   308.61
    6     7     7     1.06151136    -0.46367221  -528.61053086    -0.00002283    -0.00000328  0.24D-06  0.38D-06   308.61
    6     8     8     1.06151115    -0.46367220  -528.61053085    -0.00002286    -0.00000328  0.24D-06  0.38D-06   308.61
    6     9     9     1.06150675    -0.46367190  -528.61053056    -0.00002350    -0.00000342  0.25D-06  0.40D-06   308.61
    6    10    10     1.06738760    -0.47725367  -528.58344175    -0.00003908    -0.00000698  0.68D-06  0.74D-06   308.61
    7     1     1     1.07020581    -0.49543930  -529.10357789    -0.00000412    -0.00000052  0.25D-07  0.55D-07   366.67
    7     2     2     1.06107160    -0.46279038  -528.61424308    -0.00000505    -0.00000092  0.63D-07  0.98D-07   366.67
    7     3     3     1.06107090    -0.46279037  -528.61424306    -0.00000508    -0.00000092  0.63D-07  0.99D-07   366.67
    7     4     4     1.06106778    -0.46279031  -528.61424301    -0.00000510    -0.00000098  0.66D-07  0.10D-06   366.67
    7     5     5     1.06107064    -0.46279026  -528.61424296    -0.00000525    -0.00000096  0.66D-07  0.10D-06   366.67
    7     6     6     1.06106579    -0.46279023  -528.61424293    -0.00000525    -0.00000091  0.62D-07  0.98D-07   366.67
    7     7     7     1.06170048    -0.46367678  -528.61053543    -0.00000457    -0.00000083  0.52D-07  0.91D-07   366.67
    7     8     8     1.06170022    -0.46367678  -528.61053543    -0.00000458    -0.00000084  0.53D-07  0.91D-07   366.67
    7     9     9     1.06170035    -0.46367669  -528.61053535    -0.00000479    -0.00000088  0.55D-07  0.96D-07   366.67
    7    10    10     1.06754866    -0.47726367  -528.58345175    -0.00001000    -0.00000239  0.17D-06  0.27D-06   366.67
    8     1     1     1.07022409    -0.49543995  -529.10357854    -0.00000065    -0.00000011  0.42D-08  0.12D-07   424.41
    8     2     2     1.06109510    -0.46279161  -528.61424431    -0.00000123    -0.00000024  0.17D-07  0.25D-07   424.41
    8     3     3     1.06109511    -0.46279161  -528.61424431    -0.00000124    -0.00000024  0.18D-07  0.25D-07   424.41
    8     4     4     1.06109674    -0.46279157  -528.61424427    -0.00000126    -0.00000023  0.16D-07  0.27D-07   424.41
    8     5     5     1.06109497    -0.46279156  -528.61424425    -0.00000129    -0.00000025  0.19D-07  0.26D-07   424.41
    8     6     6     1.06109704    -0.46279140  -528.61424410    -0.00000117    -0.00000021  0.15D-07  0.24D-07   424.41
    8     7     7     1.06171620    -0.46367789  -528.61053655    -0.00000111    -0.00000020  0.10D-07  0.23D-07   424.41
    8     8     8     1.06171622    -0.46367789  -528.61053654    -0.00000112    -0.00000020  0.11D-07  0.23D-07   424.41
    8     9     9     1.06171599    -0.46367787  -528.61053652    -0.00000118    -0.00000022  0.11D-07  0.25D-07   424.41
    8    10    10     1.06758835    -0.47726676  -528.58345483    -0.00000309    -0.00000067  0.51D-07  0.72D-07   424.41
    9     1     1     1.07022448    -0.49544008  -529.10357867    -0.00000013    -0.00000002  0.11D-08  0.21D-08   482.16
    9     2     2     1.06108443    -0.46279190  -528.61424460    -0.00000029    -0.00000006  0.44D-08  0.64D-08   482.16
    9     3     3     1.06108444    -0.46279190  -528.61424460    -0.00000029    -0.00000006  0.45D-08  0.65D-08   482.16
    9     4     4     1.06108383    -0.46279186  -528.61424456    -0.00000029    -0.00000006  0.47D-08  0.68D-08   482.16
    9     5     5     1.06108461    -0.46279184  -528.61424454    -0.00000029    -0.00000006  0.41D-08  0.68D-08   482.16
    9     6     6     1.06108584    -0.46279165  -528.61424435    -0.00000025    -0.00000005  0.39D-08  0.61D-08   482.16
    9     7     7     1.06170364    -0.46367814  -528.61053680    -0.00000025    -0.00000005  0.32D-08  0.58D-08   482.16
    9     8     8     1.06170365    -0.46367814  -528.61053679    -0.00000025    -0.00000005  0.32D-08  0.58D-08   482.16
    9     9     9     1.06170287    -0.46367814  -528.61053679    -0.00000027    -0.00000005  0.35D-08  0.63D-08   482.16
    9    10    10     1.06756431    -0.47726756  -528.58345564    -0.00000081    -0.00000018  0.18D-07  0.20D-07   482.16
   10     1     1     1.07022562    -0.49544008  -529.10357867    -0.00000001    -0.00000002  0.75D-09  0.17D-08   528.44
   10     2     2     1.06109307    -0.46279197  -528.61424467    -0.00000007    -0.00000002  0.14D-08  0.18D-08   528.44
   10     3     3     1.06109298    -0.46279197  -528.61424467    -0.00000007    -0.00000002  0.14D-08  0.18D-08   528.44
   10     4     4     1.06109272    -0.46279194  -528.61424463    -0.00000008    -0.00000002  0.15D-08  0.19D-08   528.44
   10     5     5     1.06109229    -0.46279192  -528.61424461    -0.00000007    -0.00000002  0.14D-08  0.18D-08   528.44
   10     6     6     1.06108587    -0.46279166  -528.61424435    -0.00000000    -0.00000005  0.38D-08  0.61D-08   528.44
   10     7     7     1.06170364    -0.46367814  -528.61053680    -0.00000000    -0.00000005  0.32D-08  0.58D-08   528.44
   10     8     8     1.06170365    -0.46367814  -528.61053679    -0.00000000    -0.00000005  0.32D-08  0.58D-08   528.44
   10     9     9     1.06170287    -0.46367814  -528.61053679    -0.00000000    -0.00000005  0.35D-08  0.63D-08   528.44
   10    10    10     1.06758033    -0.47726790  -528.58345598    -0.00000034    -0.00000002  0.16D-08  0.25D-08   528.44


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.9%
 S   1.4%   7.1%
 P   0.9%  54.2%  22.1%

 Initialization:   3.0%
 Other:            9.4%

 Total CPU:      528.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222222000           0.9534789  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000006   0.0000000  -0.0000000   0.0000000
                       -0.1374764
 220222/2200\           0.0844009  -0.0000187   0.0000004  -0.0000434  -0.0081846   0.7919391   0.0000000   0.0000000  -0.0000000
                        0.5520664
 2202222/20\0           0.0844010   0.0000092  -0.0000307   0.0002179   0.6899328  -0.3888868   0.0000000  -0.0000000  -0.0000000
                        0.5520588
 220222/220\0          -0.0000000   0.6858812  -0.0026496  -0.0000006  -0.0000001   0.0000162  -0.6858094   0.0031028  -0.0000000
                        0.0000000
 220222/22\00          -0.0000000   0.0026496   0.6858810   0.0001605   0.0000304   0.0000001  -0.0031028  -0.6858096   0.0000000
                        0.0000000
 22022222/0\0          -0.0000000  -0.0000000  -0.0001605   0.6858770  -0.0001966   0.0000356   0.0000000  -0.0000000  -0.6858262
                       -0.0000000
 2202222/2\00           0.0000000  -0.0000000  -0.0001605   0.6858767  -0.0001966   0.0000356   0.0000000   0.0000000   0.6858266
                       -0.0000000
 22022222/00\           0.0000000   0.0026495   0.6858625   0.0001605   0.0000304   0.0000001   0.0031029   0.6858286  -0.0000000
                       -0.0000000
 2202222/200\           0.0000000   0.6858622  -0.0026495  -0.0000006  -0.0000001   0.0000162   0.6858288  -0.0031029  -0.0000000
                       -0.0000000
 22022222/\00           0.0844010   0.0000095   0.0000303  -0.0001745  -0.6817480  -0.4030631  -0.0000000   0.0000000   0.0000000
                        0.5520589

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 220222\22000  10.2     0.0542404  -0.0000001   0.0000000  -0.0000003  -0.0000518   0.0050129  -0.0000000  -0.0000000  -0.0000000
                       -0.0447454
 2202222\2000  12.2     0.0542397   0.0000001  -0.0000002   0.0000014   0.0043751  -0.0024607  -0.0000000  -0.0000000   0.0000000
                       -0.0447448
 22022222\000  11.2     0.0542396   0.0000001   0.0000002  -0.0000011  -0.0043234  -0.0025503  -0.0000000  -0.0000000  -0.0000000
                       -0.0447446

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.965563   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.045064
 2           0.000000   -0.000000    0.970729    0.003750   -0.000000   -0.000023    0.000000   -0.000013   -0.000000    0.000000
 3          -0.000000   -0.000227   -0.003750    0.970729   -0.000043    0.000000    0.000000    0.000000   -0.000013   -0.000000
 4           0.000000    0.970736   -0.000001    0.000227    0.000278   -0.000053   -0.000000   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000278   -0.000000    0.000043    0.970683   -0.010139    0.000000   -0.000000    0.000000    0.000000
 6          -0.000001    0.000050    0.000023    0.000000    0.010139    0.970686    0.000000   -0.000000   -0.000000   -0.000006
 7           0.000000    0.000000    0.000014    0.000000    0.000000    0.000000   -0.000000    0.970459    0.004391    0.000000
 8           0.000000   -0.000000   -0.000000    0.000013   -0.000000    0.000000    0.000000   -0.004391    0.970459    0.000000
 9           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.970469    0.000000   -0.000000   -0.000000
 10          0.053104   -0.000000    0.000000    0.000000   -0.000000    0.000006    0.000000   -0.000000   -0.000000    0.966272

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966606   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.003997
 2          -0.000000    0.970736    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.970736   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.970736    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.970736    0.000000    0.000000    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.970739   -0.000000    0.000000   -0.000000   -0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970469   -0.000000    0.000000    0.000000
 8           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.970469   -0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970469    0.000000
 10          0.003997    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.967722


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96556343 (fixed)   0.96662644 (relaxed)   0.96660618 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005877   -0.00047186   -0.44728007
 Singles      0.01665472   -0.05969546   -0.06348713
 Pairs        0.05357503    0.04294498    0.01532712
 Total        1.07028851   -0.01722234   -0.49544008
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.60684576
 Nuclear energy                         0.00000000
 Kinetic energy                       540.21976518
 One electron energy                 -730.75098085
 Two electron energy                  201.64740217
 Virial quotient                       -0.97942284
 Correlation energy                    -0.49673292
 !MRCI STATE 1.1 Energy              -529.103578673015

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -529.13849329 (Davidson, fixed reference)
 Cluster corrected energies          -529.13847100 (Davidson, relaxed reference)
 Cluster corrected energies          -529.13849329 (Davidson, rotated reference)

 Cluster corrected energies          -529.13580969 (Pople, fixed reference)
 Cluster corrected energies          -529.13578800 (Pople, relaxed reference)
 Cluster corrected energies          -529.13580969 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97072863 (fixed)   0.97076890 (relaxed)   0.97073587 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010216   -0.00058938   -0.37601332
 Singles      0.01614889   -0.06381336   -0.06717411
 Pairs        0.04495042    0.00000000   -0.01960454
 Total        1.06120147   -0.06440274   -0.46279197
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15145270
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63522308
 One electron energy                 -725.27333149
 Two electron energy                  196.65908682
 Virial quotient                       -0.97957698
 Correlation energy                    -0.46279197
 !MRCI STATE 2.1 Energy              -528.614244671434

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64256822 (Davidson, fixed reference)
 Cluster corrected energies          -528.64253481 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64256822 (Davidson, rotated reference)

 Cluster corrected energies          -528.64020840 (Pople, fixed reference)
 Cluster corrected energies          -528.64017632 (Pople, relaxed reference)
 Cluster corrected energies          -528.64020840 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97072864 (fixed)   0.97076894 (relaxed)   0.97073592 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010216   -0.00058938   -0.37601343
 Singles      0.01614882   -0.06381328   -0.06717409
 Pairs        0.04495039    0.00000000   -0.01960445
 Total        1.06120138   -0.06440266   -0.46279197
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15145270
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63522380
 One electron energy                 -725.27333250
 Two electron energy                  196.65908783
 Virial quotient                       -0.97957698
 Correlation energy                    -0.46279197
 !MRCI STATE 3.1 Energy              -528.614244669534

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64256817 (Davidson, fixed reference)
 Cluster corrected energies          -528.64253476 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64256817 (Davidson, rotated reference)

 Cluster corrected energies          -528.64020835 (Pople, fixed reference)
 Cluster corrected energies          -528.64017628 (Pople, relaxed reference)
 Cluster corrected energies          -528.64020835 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97073596 (fixed)   0.97076906 (relaxed)   0.97073603 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010216   -0.00058938   -0.37601345
 Singles      0.01614882   -0.06381332   -0.06717405
 Pairs        0.04495014   -0.00000000   -0.01960444
 Total        1.06120112   -0.06440270   -0.46279194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15145270
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63522784
 One electron energy                 -725.27333440
 Two electron energy                  196.65908976
 Virial quotient                       -0.97957698
 Correlation energy                    -0.46279194
 !MRCI STATE 4.1 Energy              -528.614244633065

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64256802 (Davidson, fixed reference)
 Cluster corrected energies          -528.64253460 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64256802 (Davidson, rotated reference)

 Cluster corrected energies          -528.64020820 (Pople, fixed reference)
 Cluster corrected energies          -528.64017613 (Pople, relaxed reference)
 Cluster corrected energies          -528.64020820 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.97068323 (fixed)   0.97076925 (relaxed)   0.97073622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010217   -0.00058938   -0.37601341
 Singles      0.01614894   -0.06381346   -0.06717431
 Pairs        0.04494959   -0.00000004   -0.01960419
 Total        1.06120070   -0.06440287   -0.46279192
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15145270
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63523793
 One electron energy                 -725.27333300
 Two electron energy                  196.65908839
 Virial quotient                       -0.97957696
 Correlation energy                    -0.46279192
 !MRCI STATE 5.1 Energy              -528.614244613284

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64256780 (Davidson, fixed reference)
 Cluster corrected energies          -528.64253438 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64256780 (Davidson, rotated reference)

 Cluster corrected energies          -528.64020800 (Pople, fixed reference)
 Cluster corrected energies          -528.64017592 (Pople, relaxed reference)
 Cluster corrected energies          -528.64020800 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97068624 (fixed)   0.97077219 (relaxed)   0.97073919 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010211   -0.00058937   -0.37602571
 Singles      0.01614258   -0.06380511   -0.06717184
 Pairs        0.04494953    0.00000251   -0.01959411
 Total        1.06119421   -0.06439197   -0.46279166
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15145270
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63530298
 One electron energy                 -725.27348484
 Two electron energy                  196.65924049
 Virial quotient                       -0.97957684
 Correlation energy                    -0.46279166
 !MRCI STATE 6.1 Energy              -528.614244353058

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64256452 (Davidson, fixed reference)
 Cluster corrected energies          -528.64253113 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64256452 (Davidson, rotated reference)

 Cluster corrected energies          -528.64020484 (Pople, fixed reference)
 Cluster corrected energies          -528.64017279 (Pople, relaxed reference)
 Cluster corrected energies          -528.64020484 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97045903 (fixed)   0.97049037 (relaxed)   0.97046896 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007690   -0.00057116   -0.37528212
 Singles      0.01696027   -0.06524477   -0.06886238
 Pairs        0.04474811   -0.00000000   -0.01953364
 Total        1.06178528   -0.06581592   -0.46367814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.14685865
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63458910
 One electron energy                 -725.26776869
 Two electron energy                  196.65723189
 Virial quotient                       -0.97957126
 Correlation energy                    -0.46367814
 !MRCI STATE 7.1 Energy              -528.610536796403

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.63918528 (Davidson, fixed reference)
 Cluster corrected energies          -528.63916356 (Davidson, relaxed reference)
 Cluster corrected energies          -528.63918528 (Davidson, rotated reference)

 Cluster corrected energies          -528.63681021 (Pople, fixed reference)
 Cluster corrected energies          -528.63678934 (Pople, relaxed reference)
 Cluster corrected energies          -528.63681021 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.97045902 (fixed)   0.97049036 (relaxed)   0.97046895 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007690   -0.00057116   -0.37528212
 Singles      0.01696028   -0.06524476   -0.06886238
 Pairs        0.04474811   -0.00000000   -0.01953365
 Total        1.06178529   -0.06581592   -0.46367814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.14685865
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63458784
 One electron energy                 -725.26776739
 Two electron energy                  196.65723060
 Virial quotient                       -0.97957127
 Correlation energy                    -0.46367814
 !MRCI STATE 8.1 Energy              -528.610536794614

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.63918529 (Davidson, fixed reference)
 Cluster corrected energies          -528.63916357 (Davidson, relaxed reference)
 Cluster corrected energies          -528.63918529 (Davidson, rotated reference)

 Cluster corrected energies          -528.63681021 (Pople, fixed reference)
 Cluster corrected energies          -528.63678934 (Pople, relaxed reference)
 Cluster corrected energies          -528.63681021 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97046931 (fixed)   0.97049072 (relaxed)   0.97046931 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007690   -0.00057116   -0.37528279
 Singles      0.01695989   -0.06524434   -0.06886217
 Pairs        0.04474772    0.00000000   -0.01953318
 Total        1.06178452   -0.06581550   -0.46367814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.14685865
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63459295
 One electron energy                 -725.26777363
 Two electron energy                  196.65723683
 Virial quotient                       -0.97957126
 Correlation energy                    -0.46367814
 !MRCI STATE 9.1 Energy              -528.610536791132

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.63918492 (Davidson, fixed reference)
 Cluster corrected energies          -528.63916320 (Davidson, relaxed reference)
 Cluster corrected energies          -528.63918492 (Davidson, rotated reference)

 Cluster corrected energies          -528.63680986 (Pople, fixed reference)
 Cluster corrected energies          -528.63678899 (Pople, relaxed reference)
 Cluster corrected energies          -528.63680986 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96627168 (fixed)   0.96781621 (relaxed)   0.96772158 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00022702   -0.00066945   -0.00131697
 Singles      0.02226190   -0.07232964   -0.07768799
 Pairs        0.04533378   -0.40364032   -0.39826295
 Total        1.06782269   -0.47663941   -0.47726790
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.10748091
 Nuclear energy                         0.00000000
 Kinetic energy                       539.79267203
 One electron energy                 -725.62454841
 Two electron energy                  197.04109243
 Virial quotient                       -0.97923422
 Correlation energy                    -0.47597507
 !MRCI STATE 10.1 Energy             -528.583455979177

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.61573789 (Davidson, fixed reference)
 Cluster corrected energies          -528.61563850 (Davidson, relaxed reference)
 Cluster corrected energies          -528.61573789 (Davidson, rotated reference)

 Cluster corrected energies          -528.61319988 (Pople, fixed reference)
 Cluster corrected energies          -528.61310352 (Pople, relaxed reference)
 Cluster corrected energies          -528.61319988 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      262.80       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       704.55    700.96      2.03      0.01      1.12
 REAL TIME  *       753.38 SEC
 DISK USED  *       294.70 MB (local),        8.76 GB (total)
 SF USED    *         2.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -529.13849329  AU                              
 SETTING HLSDIAG(2)     =      -528.64256822  AU                              
 SETTING HLSDIAG(3)     =      -528.64256817  AU                              
 SETTING HLSDIAG(4)     =      -528.64256802  AU                              
 SETTING HLSDIAG(5)     =      -528.64256780  AU                              
 SETTING HLSDIAG(6)     =      -528.64256452  AU                              
 SETTING HLSDIAG(7)     =      -528.63918528  AU                              
 SETTING HLSDIAG(8)     =      -528.63918529  AU                              
 SETTING HLSDIAG(9)     =      -528.63918492  AU                              
 SETTING HLSDIAG(10)    =      -528.61573789  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 18
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      533 conf     1176 CSFs
 N elec internal:    12717 conf    50904 CSFs
 N-1 el internal:    15304 conf   114396 CSFs
 N-2 el internal:    10058 conf   130322 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.16844523
     2      -528.15514359
     3      -528.15514359
     4      -528.15514359
     5      -528.15514359
     6      -528.15514359
     7      -528.14720567
     8      -528.14720567
     9      -528.14720567

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1568D-06

 Number of blocks in overlap matrix:   224   Smallest eigenvalue:  0.16D-06
 Number of N-2 electron functions:    1253
 Number of N-1 electron functions:  114396

 Number of internal configurations:                25428
 Number of singly external configurations:       3547092
 Number of doubly external configurations:       1207272
 Total number of contracted configurations:      4779792
 Total number of uncontracted configurations:  128083055

 Diagonal Coupling coefficients finished.               Storage:23393398 words, CPU-Time:     31.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2105781 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.16844523     0.00000000    -0.47261810  0.24D-01  0.38D-01    35.12
    1     2     2     1.00000000     0.00000000  -528.15514359     0.00000000    -0.47091649  0.23D-01  0.37D-01    35.12
    1     3     3     1.00000000     0.00000000  -528.15514359     0.00000000    -0.47055943  0.23D-01  0.37D-01    35.12
    1     4     4     1.00000000     0.00000000  -528.15514359     0.00000000    -0.47045805  0.23D-01  0.37D-01    35.12
    1     5     5     1.00000000     0.00000000  -528.15514359     0.00000000    -0.47142158  0.23D-01  0.37D-01    35.12
    1     6     6     1.00000000     0.00000000  -528.15514359     0.00000000    -0.47242566  0.23D-01  0.38D-01    35.12
    1     7     7     1.00000000     0.00000000  -528.14720567     0.00000000    -0.47064361  0.22D-01  0.37D-01    35.12
    1     8     8     1.00000000     0.00000000  -528.14720567     0.00000000    -0.47021566  0.22D-01  0.37D-01    35.12
    1     9     9     1.00000000     0.00000000  -528.14720567     0.00000000    -0.47015344  0.22D-01  0.37D-01    35.12
    2     1     1     1.05550450    -0.44836677  -528.61681200    -0.44836677    -0.01108969  0.12D-02  0.13D-02   117.03
    2     2     2     1.05382016    -0.44922517  -528.60436877    -0.44922517    -0.01093829  0.11D-02  0.13D-02   117.03
    2     3     3     1.05378036    -0.44918791  -528.60433151    -0.44918791    -0.01095356  0.11D-02  0.13D-02   117.03
    2     4     4     1.05394152    -0.44909858  -528.60424218    -0.44909858    -0.01101472  0.11D-02  0.13D-02   117.03
    2     5     5     1.05430654    -0.44893917  -528.60408276    -0.44893917    -0.01100428  0.11D-02  0.13D-02   117.03
    2     6     6     1.05407980    -0.44861983  -528.60376342    -0.44861983    -0.01120870  0.11D-02  0.14D-02   117.03
    2     7     7     1.05347831    -0.44987159  -528.59707726    -0.44987159    -0.01056247  0.10D-02  0.13D-02   117.03
    2     8     8     1.05346512    -0.44984794  -528.59705361    -0.44984794    -0.01057152  0.10D-02  0.13D-02   117.03
    2     9     9     1.05363198    -0.44979393  -528.59699960    -0.44979393    -0.01061846  0.10D-02  0.13D-02   117.03
    3     1     1     1.05601762    -0.46022868  -528.62867392    -0.01186192    -0.00107494  0.70D-04  0.15D-03   199.21
    3     2     2     1.05572524    -0.46107338  -528.61621697    -0.01184821    -0.00110753  0.82D-04  0.15D-03   199.21
    3     3     3     1.05570763    -0.46106288  -528.61620647    -0.01187496    -0.00111372  0.82D-04  0.15D-03   199.21
    3     4     4     1.05567674    -0.46104409  -528.61618769    -0.01194551    -0.00112476  0.83D-04  0.15D-03   199.21
    3     5     5     1.05558389    -0.46091522  -528.61605881    -0.01197605    -0.00118963  0.86D-04  0.16D-03   199.21
    3     6     6     1.05547324    -0.46087091  -528.61601450    -0.01225108    -0.00122082  0.88D-04  0.16D-03   199.21
    3     7     7     1.05582416    -0.46144450  -528.60865017    -0.01157291    -0.00109134  0.78D-04  0.14D-03   199.21
    3     8     8     1.05581610    -0.46143845  -528.60864412    -0.01159050    -0.00109549  0.79D-04  0.14D-03   199.21
    3     9     9     1.05579096    -0.46142990  -528.60863557    -0.01163597    -0.00110037  0.79D-04  0.15D-03   199.21
    4     1     1     1.06106913    -0.46166841  -528.63011364    -0.00143972    -0.00009188  0.40D-05  0.12D-04   282.06
    4     2     2     1.06101121    -0.46254836  -528.61769195    -0.00147498    -0.00009869  0.38D-05  0.14D-04   282.06
    4     3     3     1.06101403    -0.46254734  -528.61769093    -0.00148446    -0.00009944  0.38D-05  0.14D-04   282.06
    4     4     4     1.06099481    -0.46254592  -528.61768951    -0.00150183    -0.00010009  0.39D-05  0.14D-04   282.06
    4     5     5     1.06097237    -0.46253560  -528.61767919    -0.00162038    -0.00011076  0.44D-05  0.15D-04   282.06
    4     6     6     1.06098150    -0.46253074  -528.61767434    -0.00165984    -0.00011264  0.43D-05  0.15D-04   282.06
    4     7     7     1.06106454    -0.46290570  -528.61011137    -0.00146120    -0.00009890  0.35D-05  0.14D-04   282.06
    4     8     8     1.06106397    -0.46290521  -528.61011088    -0.00146676    -0.00009923  0.35D-05  0.14D-04   282.06
    4     9     9     1.06104274    -0.46290434  -528.61011001    -0.00147443    -0.00009957  0.36D-05  0.14D-04   282.06
    5     1     1     1.06134638    -0.46178500  -528.63023023    -0.00011659    -0.00000888  0.53D-06  0.12D-05   365.08
    5     2     2     1.06123972    -0.46267895  -528.61782254    -0.00013059    -0.00001188  0.77D-06  0.15D-05   365.08
    5     3     3     1.06123901    -0.46267891  -528.61782250    -0.00013157    -0.00001193  0.77D-06  0.15D-05   365.08
    5     4     4     1.06124140    -0.46267881  -528.61782240    -0.00013289    -0.00001228  0.82D-06  0.15D-05   365.08
    5     5     5     1.06123914    -0.46267840  -528.61782200    -0.00014281    -0.00001209  0.77D-06  0.15D-05   365.08
    5     6     6     1.06123499    -0.46267790  -528.61782149    -0.00014715    -0.00001281  0.83D-06  0.16D-05   365.08
    5     7     7     1.06124474    -0.46303691  -528.61024258    -0.00013121    -0.00001154  0.61D-06  0.15D-05   365.08
    5     8     8     1.06124402    -0.46303688  -528.61024255    -0.00013167    -0.00001156  0.61D-06  0.15D-05   365.08
    5     9     9     1.06124632    -0.46303643  -528.61024210    -0.00013210    -0.00001175  0.61D-06  0.15D-05   365.08
    6     1     1     1.06122341    -0.46179561  -528.63024084    -0.00001061    -0.00000107  0.68D-07  0.14D-06   447.80
    6     2     2     1.06112596    -0.46269430  -528.61783789    -0.00001535    -0.00000207  0.13D-06  0.27D-06   447.80
    6     3     3     1.06112895    -0.46269413  -528.61783772    -0.00001522    -0.00000206  0.13D-06  0.27D-06   447.80
    6     4     4     1.06112834    -0.46269413  -528.61783772    -0.00001532    -0.00000206  0.13D-06  0.27D-06   447.80
    6     5     5     1.06112082    -0.46269405  -528.61783765    -0.00001565    -0.00000215  0.13D-06  0.28D-06   447.80
    6     6     6     1.06112731    -0.46269393  -528.61783753    -0.00001604    -0.00000212  0.14D-06  0.27D-06   447.80
    6     7     7     1.06113928    -0.46305169  -528.61025736    -0.00001478    -0.00000197  0.14D-06  0.25D-06   447.80
    6     8     8     1.06113907    -0.46305169  -528.61025736    -0.00001481    -0.00000197  0.14D-06  0.25D-06   447.80
    6     9     9     1.06113791    -0.46305157  -528.61025724    -0.00001514    -0.00000204  0.15D-06  0.25D-06   447.80
    7     1     1     1.06130470    -0.46179700  -528.63024224    -0.00000139    -0.00000021  0.16D-07  0.26D-07   530.08
    7     2     2     1.06125623    -0.46269719  -528.61784078    -0.00000289    -0.00000051  0.38D-07  0.59D-07   530.08
    7     3     3     1.06125633    -0.46269705  -528.61784064    -0.00000292    -0.00000053  0.38D-07  0.62D-07   530.08
    7     4     4     1.06126039    -0.46269701  -528.61784060    -0.00000288    -0.00000051  0.38D-07  0.59D-07   530.08
    7     5     5     1.06126032    -0.46269701  -528.61784060    -0.00000295    -0.00000051  0.38D-07  0.59D-07   530.08
    7     6     6     1.06126001    -0.46269689  -528.61784049    -0.00000296    -0.00000053  0.39D-07  0.60D-07   530.08
    7     7     7     1.06127246    -0.46305446  -528.61026013    -0.00000277    -0.00000049  0.35D-07  0.55D-07   530.08
    7     8     8     1.06127249    -0.46305446  -528.61026013    -0.00000277    -0.00000049  0.36D-07  0.55D-07   530.08
    7     9     9     1.06127180    -0.46305444  -528.61026011    -0.00000287    -0.00000051  0.37D-07  0.57D-07   530.08
    8     1     1     1.06132125    -0.46179729  -528.63024253    -0.00000029    -0.00000005  0.35D-08  0.64D-08   612.74
    8     2     2     1.06127817    -0.46269787  -528.61784146    -0.00000068    -0.00000012  0.74D-08  0.15D-07   612.74
    8     3     3     1.06127814    -0.46269776  -528.61784135    -0.00000071    -0.00000013  0.76D-08  0.16D-07   612.74
    8     4     4     1.06127811    -0.46269769  -528.61784129    -0.00000068    -0.00000012  0.75D-08  0.15D-07   612.74
    8     5     5     1.06127820    -0.46269769  -528.61784128    -0.00000068    -0.00000012  0.75D-08  0.15D-07   612.74
    8     6     6     1.06127783    -0.46269759  -528.61784119    -0.00000070    -0.00000013  0.77D-08  0.15D-07   612.74
    8     7     7     1.06128780    -0.46305512  -528.61026079    -0.00000066    -0.00000012  0.65D-08  0.14D-07   612.74
    8     8     8     1.06128757    -0.46305512  -528.61026079    -0.00000066    -0.00000012  0.68D-08  0.14D-07   612.74
    8     9     9     1.06128777    -0.46305512  -528.61026079    -0.00000068    -0.00000012  0.65D-08  0.14D-07   612.74
    9     1     1     1.06132125    -0.46179729  -528.63024253    -0.00000000    -0.00000005  0.35D-08  0.64D-08   692.23
    9     2     2     1.06126864    -0.46269802  -528.61784162    -0.00000015    -0.00000003  0.24D-08  0.40D-08   692.23
    9     3     3     1.06126813    -0.46269792  -528.61784152    -0.00000016    -0.00000003  0.24D-08  0.42D-08   692.23
    9     4     4     1.06126806    -0.46269785  -528.61784144    -0.00000016    -0.00000003  0.23D-08  0.40D-08   692.23
    9     5     5     1.06126806    -0.46269784  -528.61784144    -0.00000016    -0.00000003  0.23D-08  0.40D-08   692.23
    9     6     6     1.06126779    -0.46269775  -528.61784135    -0.00000016    -0.00000003  0.24D-08  0.41D-08   692.23
    9     7     7     1.06129171    -0.46305530  -528.61026097    -0.00000018    -0.00000001  0.68D-09  0.17D-08   692.23
    9     8     8     1.06127726    -0.46305526  -528.61026093    -0.00000015    -0.00000003  0.21D-08  0.34D-08   692.23
    9     9     9     1.06127726    -0.46305526  -528.61026093    -0.00000015    -0.00000003  0.21D-08  0.34D-08   692.23


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.4%
 S   1.3%   8.0%
 P   0.9%  55.8%  22.0%

 Initialization:   4.6%
 Other:            6.1%

 Total CPU:      692.2 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222/2200/           0.5598325   0.7921251  -0.0005707   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22022222//00           0.5598357  -0.3955660   0.6862848  -0.0000367  -0.0000305   0.0000000   0.0000000   0.0000000  -0.0000000
 220222/220/0          -0.0000000  -0.0000000   0.0000367   0.6860004  -0.0000000  -0.0000213  -0.0000000   0.0000000  -0.6858869
 220222/22/00          -0.0000000  -0.0000000   0.0000305  -0.0000000   0.6860004   0.0000000  -0.0000000  -0.6858869   0.0000000
 22022222/0/0          -0.0000000  -0.0000000   0.0000000   0.0000213  -0.0000000   0.6859997  -0.6858831  -0.0000000   0.0000000
 2202222/2/00           0.0000000   0.0000000  -0.0000000   0.0000213  -0.0000000   0.6859996   0.6858832  -0.0000000  -0.0000000
 22022222/00/           0.0000000  -0.0000000   0.0000305  -0.0000000   0.6859987   0.0000000  -0.0000000   0.6858888   0.0000000
 2202222/200/          -0.0000000  -0.0000000   0.0000367   0.6859986  -0.0000000  -0.0000213   0.0000000   0.0000000   0.6858888
 2202222/20/0           0.5598359  -0.3965546  -0.6857139   0.0000367   0.0000305  -0.0000000   0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970605   -0.000000   -0.000000    0.000000    0.000000   -0.000003    0.000000    0.000000    0.000000
 2           0.000003   -0.000000   -0.000000   -0.000000   -0.000675    0.970666    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.000052    0.000043   -0.970667   -0.000675   -0.000000   -0.000000    0.000000
 4           0.000000    0.000030    0.970667   -0.000000    0.000052    0.000000   -0.000000    0.000000   -0.000001
 5          -0.000000   -0.000000   -0.000000    0.970667    0.000043    0.000000    0.000000   -0.000001   -0.000000
 6          -0.000000    0.970667   -0.000030    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.970644    0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000001   -0.000000   -0.000000    0.000000    0.970650   -0.000000
 9          -0.000000   -0.000000    0.000001    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.970650

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970605   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.970667   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.970667   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.970667    0.000000   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.970667   -0.000000    0.000000    0.000000    0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.970667    0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.970644    0.000000   -0.000000
 8          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.970650   -0.000000
 9           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.970650


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97060512 (fixed)   0.97066400 (relaxed)   0.97060512 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015655   -0.00059507   -0.37392330
 Singles      0.01729174   -0.06495472   -0.06871295
 Pairs        0.04403911   -0.00000000   -0.01916105
 Total        1.06148740   -0.06554979   -0.46179729
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16844523
 Nuclear energy                         0.00000000
 Kinetic energy                       539.60534267
 One electron energy                 -725.24851314
 Two electron energy                  196.61827061
 Virial quotient                       -0.97966088
 Correlation energy                    -0.46179729
 !MRCI STATE 1.1 Energy              -528.630242525083

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.65863724 (Davidson, fixed reference)
 Cluster corrected energies          -528.65857777 (Davidson, relaxed reference)
 Cluster corrected energies          -528.65863724 (Davidson, rotated reference)

 Cluster corrected energies          -528.65568600 (Pople, fixed reference)
 Cluster corrected energies          -528.65563033 (Pople, relaxed reference)
 Cluster corrected energies          -528.65568600 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97066646 (fixed)   0.97068930 (relaxed)   0.97066670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007924   -0.00057044   -0.37492078
 Singles      0.01671822   -0.06481150   -0.06835893
 Pairs        0.04455527   -0.00000000   -0.01941831
 Total        1.06135273   -0.06538194   -0.46269802
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15514359
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62359289
 One electron energy                 -725.25893315
 Two electron energy                  196.64109153
 Virial quotient                       -0.97960476
 Correlation energy                    -0.46269802
 !MRCI STATE 2.1 Energy              -528.617841616711

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64622940 (Davidson, fixed reference)
 Cluster corrected energies          -528.64620653 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64622940 (Davidson, rotated reference)

 Cluster corrected energies          -528.64327639 (Pople, fixed reference)
 Cluster corrected energies          -528.64325498 (Pople, relaxed reference)
 Cluster corrected energies          -528.64327639 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97066668 (fixed)   0.97068953 (relaxed)   0.97066692 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007925   -0.00057044   -0.37492109
 Singles      0.01671805   -0.06481125   -0.06835882
 Pairs        0.04455494   -0.00000000   -0.01941801
 Total        1.06135224   -0.06538169   -0.46269792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15514359
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62359097
 One electron energy                 -725.25893396
 Two electron energy                  196.64109245
 Virial quotient                       -0.97960477
 Correlation energy                    -0.46269792
 !MRCI STATE 3.1 Energy              -528.617841517170

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64622907 (Davidson, fixed reference)
 Cluster corrected energies          -528.64620619 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64622907 (Davidson, rotated reference)

 Cluster corrected energies          -528.64327607 (Pople, fixed reference)
 Cluster corrected energies          -528.64325465 (Pople, relaxed reference)
 Cluster corrected energies          -528.64327607 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97066695 (fixed)   0.97068957 (relaxed)   0.97066695 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007925   -0.00057044   -0.37492157
 Singles      0.01671808   -0.06481123   -0.06835876
 Pairs        0.04455484    0.00000054   -0.01941751
 Total        1.06135217   -0.06538114   -0.46269785
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15514359
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62358682
 One electron energy                 -725.25891960
 Two electron energy                  196.64107816
 Virial quotient                       -0.97960477
 Correlation energy                    -0.46269785
 !MRCI STATE 4.1 Energy              -528.617841440108

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64622896 (Davidson, fixed reference)
 Cluster corrected energies          -528.64620608 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64622896 (Davidson, rotated reference)

 Cluster corrected energies          -528.64327596 (Pople, fixed reference)
 Cluster corrected energies          -528.64325454 (Pople, relaxed reference)
 Cluster corrected energies          -528.64327596 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97066695 (fixed)   0.97068957 (relaxed)   0.97066695 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007925   -0.00057044   -0.37492111
 Singles      0.01671804   -0.06481119   -0.06835876
 Pairs        0.04455488    0.00000000   -0.01941798
 Total        1.06135217   -0.06538162   -0.46269784
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15514359
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62358652
 One electron energy                 -725.25891916
 Two electron energy                  196.64107772
 Virial quotient                       -0.97960477
 Correlation energy                    -0.46269784
 !MRCI STATE 5.1 Energy              -528.617841439290

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64622895 (Davidson, fixed reference)
 Cluster corrected energies          -528.64620607 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64622895 (Davidson, rotated reference)

 Cluster corrected energies          -528.64327596 (Pople, fixed reference)
 Cluster corrected energies          -528.64325454 (Pople, relaxed reference)
 Cluster corrected energies          -528.64327596 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97066707 (fixed)   0.97068969 (relaxed)   0.97066707 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007926   -0.00057044   -0.37492109
 Singles      0.01671808   -0.06481122   -0.06835873
 Pairs        0.04455457   -0.00000000   -0.01941794
 Total        1.06135191   -0.06538165   -0.46269775
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15514359
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62358137
 One electron energy                 -725.25892288
 Two electron energy                  196.64108154
 Virial quotient                       -0.97960478
 Correlation energy                    -0.46269775
 !MRCI STATE 6.1 Energy              -528.617841345437

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64622873 (Davidson, fixed reference)
 Cluster corrected energies          -528.64620585 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64622873 (Davidson, rotated reference)

 Cluster corrected energies          -528.64327575 (Pople, fixed reference)
 Cluster corrected energies          -528.64325432 (Pople, relaxed reference)
 Cluster corrected energies          -528.64327575 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.97064360 (fixed)   0.97067792 (relaxed)   0.97064360 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010510   -0.00059148   -0.37579832
 Singles      0.01642635   -0.06423040   -0.06767871
 Pairs        0.04487180   -0.00000001   -0.01957827
 Total        1.06140325   -0.06482188   -0.46305530
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.14720567
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63495982
 One electron energy                 -725.26389940
 Two electron energy                  196.65363842
 Virial quotient                       -0.97957008
 Correlation energy                    -0.46305530
 !MRCI STATE 7.1 Energy              -528.610260971142

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.63869407 (Davidson, fixed reference)
 Cluster corrected energies          -528.63865932 (Davidson, relaxed reference)
 Cluster corrected energies          -528.63869407 (Davidson, rotated reference)

 Cluster corrected energies          -528.63573728 (Pople, fixed reference)
 Cluster corrected energies          -528.63570475 (Pople, relaxed reference)
 Cluster corrected energies          -528.63573728 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.97065025 (fixed)   0.97068452 (relaxed)   0.97065025 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010501   -0.00059149   -0.37581209
 Singles      0.01641931   -0.06422118   -0.06767614
 Pairs        0.04486438   -0.00000000   -0.01956703
 Total        1.06138870   -0.06481267   -0.46305526
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.14720567
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63510296
 One electron energy                 -725.26395282
 Two electron energy                  196.65369188
 Virial quotient                       -0.97956982
 Correlation energy                    -0.46305526
 !MRCI STATE 8.1 Energy              -528.610260932941

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.63868729 (Davidson, fixed reference)
 Cluster corrected energies          -528.63865259 (Davidson, relaxed reference)
 Cluster corrected energies          -528.63868729 (Davidson, rotated reference)

 Cluster corrected energies          -528.63573093 (Pople, fixed reference)
 Cluster corrected energies          -528.63569844 (Pople, relaxed reference)
 Cluster corrected energies          -528.63573093 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97065025 (fixed)   0.97068452 (relaxed)   0.97065025 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010501   -0.00059149   -0.00060309
 Singles      0.01641931   -0.06422118   -0.06767614
 Pairs        0.04486438   -0.39824259   -0.39477603
 Total        1.06138870   -0.46305526   -0.46305526
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.14720567
 Nuclear energy                         0.00000000
 Kinetic energy                       539.63510360
 One electron energy                 -725.26395330
 Two electron energy                  196.65369237
 Virial quotient                       -0.97956982
 Correlation energy                    -0.46305526
 !MRCI STATE 9.1 Energy              -528.610260930452

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.63868729 (Davidson, fixed reference)
 Cluster corrected energies          -528.63865259 (Davidson, relaxed reference)
 Cluster corrected energies          -528.63868729 (Davidson, rotated reference)

 Cluster corrected energies          -528.63573093 (Pople, fixed reference)
 Cluster corrected energies          -528.63569845 (Pople, relaxed reference)
 Cluster corrected energies          -528.63573093 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      596.38       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1617.39    912.83    700.96      2.03      0.01      1.12
 REAL TIME  *      1710.43 SEC
 DISK USED  *       628.27 MB (local),       18.53 GB (total)
 SF USED    *         3.53 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -528.65857777  AU                              
 SETTING HLSDIAG(12)    =      -528.64620653  AU                              
 SETTING HLSDIAG(13)    =      -528.64620619  AU                              
 SETTING HLSDIAG(14)    =      -528.64620608  AU                              
 SETTING HLSDIAG(15)    =      -528.64620607  AU                              
 SETTING HLSDIAG(16)    =      -528.64620585  AU                              
 SETTING HLSDIAG(17)    =      -528.63865932  AU                              
 SETTING HLSDIAG(18)    =      -528.63865259  AU                              
 SETTING HLSDIAG(19)    =      -528.63865259  AU                              


         HLSDIAG
    -529.1384933
    -528.6425682
    -528.6425682
    -528.6425680
    -528.6425678
    -528.6425645
    -528.6391853
    -528.6391853
    -528.6391849
    -528.6157379
    -528.6585778
    -528.6462065
    -528.6462062
    -528.6462061
    -528.6462061
    -528.6462058
    -528.6386593
    -528.6386526
    -528.6386526
                                                  

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

 Time for Seward_LS:       0.70 sec

 CPU time:      0.71 sec, REAL time:      0.74 sec


 SORTLS1 read     2508005. and wrote     2508005. SO integrals in    90 records. CPU time:      0.05 sec, REAL time:      0.09 sec
 SORTLS2 read     2508005. and wrote     2508005. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    33.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    33.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      596.38       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1619.05      1.60    912.83    700.96      2.03      0.01      1.12
 REAL TIME  *      1712.31 SEC
 DISK USED  *       628.31 MB (local),       18.80 GB (total)
 SF USED    *         3.53 GB
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -529.103579   -528.614245   -528.614245   -528.614245   -528.614245   -528.614244   -528.610537   -528.610537
                      -528.610537   -528.583456
 Replaced energies:   -529.138493   -528.642568   -528.642568   -528.642568   -528.642568   -528.642565   -528.639185   -528.639185
                      -528.639185   -528.615738

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:   -528.630243   -528.617842   -528.617842   -528.617841   -528.617841   -528.617841   -528.610261   -528.610261
                      -528.610261
 Replaced energies:   -528.658578   -528.646207   -528.646206   -528.646206   -528.646206   -528.646206   -528.638659   -528.638653
                      -528.638653



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -529.13849329

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00  108842.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00  108842.98       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00  108843.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00  108843.06       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00  108843.78       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00  109585.44       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00  109585.44       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  109585.52       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  114731.55
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00      -0.00       0.00      -0.00      -0.00      -0.00     259.51      -1.17       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00    -259.52      -0.00

   12   2.1  1.0  1.0       0.00     312.89      -1.21      -0.00      -0.00       0.01      91.08      -0.41      -0.00      -0.00
                            0.00       0.00       0.00      -0.26       0.00      -0.00       0.00      -0.00     182.39       0.00

   13   3.1  1.0  1.0       0.00     180.35      -0.70       0.01       0.01      -0.01    -158.02       0.71       0.01       0.00
                            0.00      -0.01       0.09    -361.16       0.10      -0.02      -0.01       0.01      -0.13       0.00

   14   4.1  1.0  1.0       0.00      -0.00      -0.01       0.07     183.80    -310.88       0.01       0.00       0.00      -0.00
                            0.00       0.70     180.57       0.06      -0.00      -0.00       0.71     157.96       0.00      -0.00

   15   5.1  1.0  1.0      -0.00      -0.01      -0.04     180.58      -0.05       0.01       0.01      -0.00     157.95      -0.00
                            0.00    -180.57       0.70       0.02       0.00      -0.00    -157.96       0.71       0.00       0.00

   16   6.1  1.0  1.0      -0.00      -0.70    -180.58      -0.04      -0.01       0.01       0.71     157.95       0.00      -0.00
                            0.00       0.00       0.01      -0.10    -361.14      -3.73      -0.00      -0.00       0.00       0.00

   17   7.1  1.0  1.0      -0.00      -0.61    -157.50      -0.04      -0.01      -0.00       0.81     179.64      -0.00      -0.00
                          195.24       0.00      -0.00       0.01       1.88    -181.86       0.00       0.00       0.00     243.10

   18   8.1  1.0  1.0       0.00       0.00       0.04    -157.50       0.05      -0.01      -0.00      -0.00    -179.64      -0.00
                            0.00    -157.50       0.61       0.00       0.00      -0.00    -179.64       0.81       0.00       0.00

   19   9.1  1.0  1.0    -195.23       0.00       0.01      -0.04    -156.55     -92.56      -0.00      -0.00       0.00    -243.09
                           -0.00       0.61     157.50       0.04       0.01       0.00       0.81     179.64      -0.00      -0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.01      -0.00       0.00      -0.00       1.66     367.01      -0.00      -0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.71     442.13       0.10       0.02       0.00       0.58     129.14       0.00      -0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.99    -255.69      -0.05      -0.02      -0.02       1.01     223.28      -0.01      -0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.05     255.37      -0.07       0.01       0.01      -0.01    -223.38      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.02      -0.05    -250.79    -444.94      -0.00      -0.01       0.00      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -255.38       0.99      -0.01       0.00      -0.01     223.38      -1.01       0.01       0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     222.74      -0.86      -0.00      -0.00       0.01    -254.05       1.15       0.00       0.00

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -276.10       0.00      -0.01       0.07     224.06    -126.29       0.00      -0.00       0.00    -343.79

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.05    -222.74       0.06      -0.01       0.00       0.00     254.05       0.00

   29   1.1  1.0 -1.0       0.00      -0.00       0.00      -0.00      -0.00      -0.00     259.51      -1.17       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00     259.52       0.00

   30   2.1  1.0 -1.0       0.00     312.89      -1.21      -0.00      -0.00       0.01      91.08      -0.41      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.26      -0.00       0.00      -0.00       0.00    -182.39      -0.00

   31   3.1  1.0 -1.0       0.00     180.35      -0.70       0.01       0.01      -0.01    -158.02       0.71       0.01       0.00
                           -0.00       0.01      -0.09     361.16      -0.10       0.02       0.01      -0.01       0.13      -0.00

   32   4.1  1.0 -1.0       0.00      -0.00      -0.01       0.07     183.80    -310.88       0.01       0.00       0.00      -0.00
                           -0.00      -0.70    -180.57      -0.06       0.00       0.00      -0.71    -157.96      -0.00       0.00

   33   5.1  1.0 -1.0      -0.00      -0.01      -0.04     180.58      -0.05       0.01       0.01      -0.00     157.95      -0.00
                           -0.00     180.57      -0.70      -0.02      -0.00       0.00     157.96      -0.71      -0.00      -0.00

   34   6.1  1.0 -1.0      -0.00      -0.70    -180.58      -0.04      -0.01       0.01       0.71     157.95       0.00      -0.00
                           -0.00      -0.00      -0.01       0.10     361.14       3.73       0.00       0.00      -0.00      -0.00

   35   7.1  1.0 -1.0      -0.00      -0.61    -157.50      -0.04      -0.01      -0.00       0.81     179.64      -0.00      -0.00
                         -195.24      -0.00       0.00      -0.01      -1.88     181.86      -0.00      -0.00      -0.00    -243.10

   36   8.1  1.0 -1.0       0.00       0.00       0.04    -157.50       0.05      -0.01      -0.00      -0.00    -179.64      -0.00
                           -0.00     157.50      -0.61      -0.00      -0.00       0.00     179.64      -0.81      -0.00      -0.00

   37   9.1  1.0 -1.0    -195.23       0.00       0.01      -0.04    -156.55     -92.56      -0.00      -0.00       0.00    -243.09
                            0.00      -0.61    -157.50      -0.04      -0.01      -0.00      -0.81    -179.64       0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00    -195.23       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -195.24      -0.00       0.00      -0.00

    2   2.1  0.0  0.0      -0.00     312.89     180.35      -0.00      -0.01      -0.70      -0.61       0.00       0.00       0.00
                            0.00      -0.00       0.01      -0.70     180.57      -0.00      -0.00     157.50      -0.61       0.00

    3   3.1  0.0  0.0       0.00      -1.21      -0.70      -0.01      -0.04    -180.58    -157.50       0.04       0.01       0.00
                            0.00      -0.00      -0.09    -180.57      -0.70      -0.01       0.00      -0.61    -157.50       0.01

    4   4.1  0.0  0.0      -0.00      -0.00       0.01       0.07     180.58      -0.04      -0.04    -157.50      -0.04       0.00
                           -0.00       0.26     361.16      -0.06      -0.02       0.10      -0.01      -0.00      -0.04       0.00

    5   5.1  0.0  0.0      -0.00      -0.00       0.01     183.80      -0.05      -0.01      -0.01       0.05    -156.55       0.00
                            0.00      -0.00      -0.10       0.00      -0.00     361.14      -1.88      -0.00      -0.01      -0.00

    6   6.1  0.0  0.0      -0.00       0.01      -0.01    -310.88       0.01       0.01      -0.00      -0.01     -92.56       0.00
                            0.00       0.00       0.02       0.00       0.00       3.73     181.86       0.00      -0.00       0.00

    7   7.1  0.0  0.0     259.51      91.08    -158.02       0.01       0.01       0.71       0.81      -0.00      -0.00       0.00
                            0.00      -0.00       0.01      -0.71     157.96       0.00      -0.00     179.64      -0.81      -1.66

    8   8.1  0.0  0.0      -1.17      -0.41       0.71       0.00      -0.00     157.95     179.64      -0.00      -0.00       0.00
                            0.00       0.00      -0.01    -157.96      -0.71       0.00      -0.00      -0.81    -179.64    -367.01

    9   9.1  0.0  0.0       0.00      -0.00       0.01       0.00     157.95       0.00      -0.00    -179.64       0.00       0.00
                          259.52    -182.39       0.13      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -243.09       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00    -243.10      -0.00       0.00       0.00

   11   1.1  1.0  1.0  105329.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00     415.72       0.00      -0.00

   12   2.1  1.0  1.0       0.00  108044.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.02      -0.00     389.09      -0.00       0.00     146.95      -0.00      -0.00

   13   3.1  1.0  1.0       0.00       0.00  108044.53       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.02      -0.00      -0.00    -225.02       0.01      -0.01     254.09       0.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00  108044.55       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.01     224.74    -254.20      -0.01       0.01      -0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00  108044.56       0.00       0.00       0.00       0.00       0.00
                            0.00    -389.09     225.02      -0.01       0.00      -0.00       0.00      -0.01      -0.00      -0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00  108044.60       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.01    -224.74       0.00      -0.00       0.01       0.00     254.20       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00  109700.88       0.00       0.00       0.00
                           -0.00      -0.00       0.01     254.20      -0.00      -0.01      -0.00      -0.00    -223.26    -293.96

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00  109702.35       0.00       0.00
                         -415.72    -146.95    -254.09       0.01       0.01      -0.00       0.00      -0.00       0.00      -0.00

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  109702.35     293.96
                           -0.00       0.00      -0.00      -0.01       0.00    -254.20     223.26      -0.00      -0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     293.96  105329.28
                            0.00       0.00      -0.00       0.00       0.00      -0.00     293.96       0.00      -0.00       0.00

   21   2.1  1.0  0.0      -0.00       0.00       0.01     275.36      -0.00      -0.01       0.00       0.00     103.65       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.23    -207.55       0.00       0.00      -0.00

   22   3.1  1.0  0.0       0.00      -0.01       0.00     158.71      -0.00       0.00       0.01      -0.00    -179.82       0.00
                            0.00      -0.00       0.00       0.02      -0.01     317.82       0.15      -0.01       0.01      -0.00

   23   4.1  1.0  0.0       0.00    -275.36    -158.71       0.00       0.00      -0.00      -0.00       0.01       0.01       0.00
                           -0.00      -0.00      -0.02      -0.00    -158.91      -0.02      -0.00    -179.75      -0.00      -0.00

   24   5.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00     158.91     179.75      -0.00       0.01       0.00
                           -0.00      -0.00       0.01     158.91      -0.00      -0.02      -0.00       0.00     179.75      -0.00

   25   6.1  1.0  0.0      -0.00       0.01      -0.00       0.00    -158.91       0.00       0.00     179.75      -0.00       0.00
                            0.00      -0.23    -317.82       0.02       0.02       0.00       0.00       0.01       0.00      -0.00

   26   7.1  1.0  0.0      -0.00      -0.00      -0.01       0.00    -179.75      -0.00       0.00     157.87      -0.00       0.00
                         -293.96     207.55      -0.15       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   27   8.1  1.0  0.0      -0.00      -0.00       0.00      -0.01       0.00    -179.75    -157.87       0.00       0.00       0.00
                           -0.00      -0.00       0.01     179.75      -0.00      -0.01       0.00      -0.00     157.87      -0.00

   28   9.1  1.0  0.0    -293.96    -103.65     179.82      -0.01      -0.01       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.01       0.00    -179.75      -0.00       0.00    -157.87      -0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -293.96

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -293.96
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00     276.10      -0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     312.89
                           -1.71       0.99       0.01      -0.01     255.38    -222.74      -0.00       0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.21
                         -442.13     255.69       0.05      -0.02      -0.99       0.86       0.01      -0.05      -0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.10       0.05    -255.37       0.05       0.01       0.00      -0.07     222.74       0.00      -0.26

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.02       0.02       0.07     250.79      -0.00       0.00    -224.06      -0.06      -0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01
                           -0.00       0.02      -0.01     444.94       0.01      -0.01     126.29       0.01      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     259.51      91.08
                           -0.58      -1.01      -0.01       0.00    -223.38     254.05      -0.00      -0.00      -0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.17      -0.41
                         -129.14    -223.28       0.01       0.01       1.01      -1.15       0.00      -0.00      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.01     223.38      -0.00      -0.01      -0.00      -0.00    -254.05    -259.52     182.39

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00     343.79      -0.00      -0.00       0.00

   11   1.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -293.96       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00     293.96       0.00      -0.00       0.00       0.00

   12   2.1  1.0  1.0       0.00      -0.01    -275.36       0.00       0.01      -0.00      -0.00    -103.65       0.00       0.00
                            0.00       0.00       0.00       0.00       0.23    -207.55       0.00       0.00       0.00       0.00

   13   3.1  1.0  1.0       0.01       0.00    -158.71       0.00      -0.00      -0.01       0.00     179.82       0.00       0.00
                           -0.00      -0.00       0.02      -0.01     317.82       0.15      -0.01       0.01       0.00       0.00

   14   4.1  1.0  1.0     275.36     158.71       0.00      -0.00       0.00       0.00      -0.01      -0.01       0.00       0.00
                           -0.00      -0.02       0.00    -158.91      -0.02      -0.00    -179.75      -0.00       0.00       0.00

   15   5.1  1.0  1.0      -0.00      -0.00       0.00       0.00    -158.91    -179.75       0.00      -0.01       0.00       0.00
                           -0.00       0.01     158.91       0.00      -0.02      -0.00       0.00     179.75       0.00       0.00

   16   6.1  1.0  1.0      -0.01       0.00      -0.00     158.91       0.00      -0.00    -179.75       0.00       0.00       0.00
                           -0.23    -317.82       0.02       0.02      -0.00       0.00       0.01       0.00       0.00       0.00

   17   7.1  1.0  1.0       0.00       0.01      -0.00     179.75       0.00       0.00    -157.87       0.00       0.00       0.00
                          207.55      -0.15       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   18   8.1  1.0  1.0       0.00      -0.00       0.01      -0.00     179.75     157.87       0.00      -0.00       0.00       0.00
                           -0.00       0.01     179.75      -0.00      -0.01       0.00       0.00     157.87       0.00       0.00

   19   9.1  1.0  1.0     103.65    -179.82       0.01       0.01      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01       0.00    -179.75      -0.00       0.00    -157.87       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   21   2.1  1.0  0.0  108044.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   22   3.1  1.0  0.0       0.00  108044.53       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   23   4.1  1.0  0.0       0.00       0.00  108044.55       0.00       0.00       0.00       0.00       0.00      -0.00     275.36
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00  108044.56       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00  108044.60       0.00       0.00       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.23

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00  109700.88       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -293.96     207.55

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00  109702.35       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00  109702.35     293.96     103.65
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   29   1.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     293.96  105329.28       0.00
                            0.00      -0.00       0.00       0.00      -0.00     293.96       0.00      -0.00       0.00      -0.00

   30   2.1  1.0 -1.0       0.00       0.01     275.36      -0.00      -0.01       0.00       0.00     103.65       0.00  108044.46
                           -0.00       0.00       0.00       0.00       0.23    -207.55       0.00       0.00       0.00      -0.00

   31   3.1  1.0 -1.0      -0.01       0.00     158.71      -0.00       0.00       0.01      -0.00    -179.82       0.00       0.00
                           -0.00       0.00       0.02      -0.01     317.82       0.15      -0.01       0.01      -0.00       0.02

   32   4.1  1.0 -1.0    -275.36    -158.71       0.00       0.00      -0.00      -0.00       0.01       0.01       0.00       0.00
                           -0.00      -0.02      -0.00    -158.91      -0.02      -0.00    -179.75      -0.00      -0.00      -0.00

   33   5.1  1.0 -1.0       0.00       0.00      -0.00       0.00     158.91     179.75      -0.00       0.01       0.00       0.00
                           -0.00       0.01     158.91      -0.00      -0.02      -0.00       0.00     179.75      -0.00     389.09

   34   6.1  1.0 -1.0       0.01      -0.00       0.00    -158.91       0.00       0.00     179.75      -0.00       0.00       0.00
                           -0.23    -317.82       0.02       0.02       0.00       0.00       0.01       0.00      -0.00      -0.00

   35   7.1  1.0 -1.0      -0.00      -0.01       0.00    -179.75      -0.00       0.00     157.87      -0.00       0.00       0.00
                          207.55      -0.15       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   36   8.1  1.0 -1.0      -0.00       0.00      -0.01       0.00    -179.75    -157.87       0.00       0.00       0.00       0.00
                           -0.00       0.01     179.75      -0.00      -0.01       0.00      -0.00     157.87     415.72     146.95

   37   9.1  1.0 -1.0    -103.65     179.82      -0.01      -0.01       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.01       0.00    -179.75      -0.00       0.00    -157.87      -0.00       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00       0.00    -195.23
                            0.00       0.00       0.00       0.00     195.24       0.00      -0.00

    2   2.1  0.0  0.0     180.35      -0.00      -0.01      -0.70      -0.61       0.00       0.00
                           -0.01       0.70    -180.57       0.00       0.00    -157.50       0.61

    3   3.1  0.0  0.0      -0.70      -0.01      -0.04    -180.58    -157.50       0.04       0.01
                            0.09     180.57       0.70       0.01      -0.00       0.61     157.50

    4   4.1  0.0  0.0       0.01       0.07     180.58      -0.04      -0.04    -157.50      -0.04
                         -361.16       0.06       0.02      -0.10       0.01       0.00       0.04

    5   5.1  0.0  0.0       0.01     183.80      -0.05      -0.01      -0.01       0.05    -156.55
                            0.10      -0.00       0.00    -361.14       1.88       0.00       0.01

    6   6.1  0.0  0.0      -0.01    -310.88       0.01       0.01      -0.00      -0.01     -92.56
                           -0.02      -0.00      -0.00      -3.73    -181.86      -0.00       0.00

    7   7.1  0.0  0.0    -158.02       0.01       0.01       0.71       0.81      -0.00      -0.00
                           -0.01       0.71    -157.96      -0.00       0.00    -179.64       0.81

    8   8.1  0.0  0.0       0.71       0.00      -0.00     157.95     179.64      -0.00      -0.00
                            0.01     157.96       0.71      -0.00       0.00       0.81     179.64

    9   9.1  0.0  0.0       0.01       0.00     157.95       0.00      -0.00    -179.64       0.00
                           -0.13       0.00       0.00       0.00       0.00       0.00      -0.00

   10  10.1  0.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -243.09
                            0.00      -0.00       0.00       0.00     243.10       0.00      -0.00

   11   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -293.96
                           -0.00       0.00       0.00      -0.00     293.96       0.00      -0.00

   21   2.1  1.0  0.0      -0.01    -275.36       0.00       0.01      -0.00      -0.00    -103.65
                            0.00       0.00       0.00       0.23    -207.55       0.00       0.00

   22   3.1  1.0  0.0       0.00    -158.71       0.00      -0.00      -0.01       0.00     179.82
                           -0.00       0.02      -0.01     317.82       0.15      -0.01       0.01

   23   4.1  1.0  0.0     158.71       0.00      -0.00       0.00       0.00      -0.01      -0.01
                           -0.02       0.00    -158.91      -0.02      -0.00    -179.75      -0.00

   24   5.1  1.0  0.0      -0.00       0.00       0.00    -158.91    -179.75       0.00      -0.01
                            0.01     158.91       0.00      -0.02      -0.00       0.00     179.75

   25   6.1  1.0  0.0       0.00      -0.00     158.91       0.00      -0.00    -179.75       0.00
                         -317.82       0.02       0.02      -0.00       0.00       0.01       0.00

   26   7.1  1.0  0.0       0.01      -0.00     179.75       0.00       0.00    -157.87       0.00
                           -0.15       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   27   8.1  1.0  0.0      -0.00       0.01      -0.00     179.75     157.87       0.00      -0.00
                            0.01     179.75      -0.00      -0.01       0.00       0.00     157.87

   28   9.1  1.0  0.0    -179.82       0.01       0.01      -0.00      -0.00       0.00       0.00
                           -0.01       0.00    -179.75      -0.00       0.00    -157.87       0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00    -415.72      -0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00    -389.09       0.00      -0.00    -146.95       0.00

   31   3.1  1.0 -1.0  108044.53       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     225.02      -0.01       0.01    -254.09      -0.00

   32   4.1  1.0 -1.0       0.00  108044.55       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.01    -224.74     254.20       0.01      -0.01

   33   5.1  1.0 -1.0       0.00       0.00  108044.56       0.00       0.00       0.00       0.00
                         -225.02       0.01      -0.00       0.00      -0.00       0.01       0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00  108044.60       0.00       0.00       0.00
                            0.01     224.74      -0.00       0.00      -0.01      -0.00    -254.20

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00  109700.88       0.00       0.00
                           -0.01    -254.20       0.00       0.01       0.00       0.00     223.26

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00  109702.35       0.00
                          254.09      -0.01      -0.01       0.00      -0.00       0.00      -0.00

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00  109702.35
                            0.00       0.01      -0.00     254.20    -223.26       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by   -529.13849329 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000  108842.972       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000  108842.982       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000  108843.016       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000  108843.063       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000  108843.783       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000  109585.441       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000  109585.440
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.007       0.000      -0.000      -0.000      -0.000     367.008      -1.660
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000     442.495      -1.709      -0.000      -0.000       0.010     128.812      -0.583
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000     255.054      -0.985       0.011       0.014      -0.017    -223.468       1.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.001      -0.003      -0.019       0.097     259.929    -439.654       0.012       0.007
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.011      -0.060     255.372      -0.073       0.013       0.010      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.987    -255.373      -0.060      -0.019       0.014       1.011     223.376
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.860    -222.740      -0.052      -0.010      -0.000       1.149     254.043
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.052    -222.740       0.064      -0.012      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+           -276.100       0.003       0.010      -0.057    -221.399    -130.894      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.007      -0.000       0.000      -0.000       1.660     367.011

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       1.708     442.131       0.103       0.020       0.000       0.584     129.135

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.988    -255.693      -0.046      -0.022      -0.020       1.010     223.284

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.008      -0.046     255.374      -0.073       0.013       0.007      -0.012

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001       0.011       0.022      -0.049    -250.789    -444.936      -0.000      -0.010

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -255.375       0.987      -0.008       0.000      -0.006     223.377      -1.011

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     222.742      -0.860      -0.000      -0.000       0.005    -254.045       1.149

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -276.102       0.003      -0.010       0.071     224.059    -126.291       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.052    -222.742       0.064      -0.012       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.368       0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.011       0.133    -510.751       0.146      -0.026      -0.010       0.012

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.986     255.371       0.087      -0.005      -0.000       1.011     223.385

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -255.371       0.986       0.023       0.000      -0.006    -223.385       1.011

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.015      -0.146    -510.724      -5.278      -0.000      -0.007

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              276.110       0.006      -0.000       0.014       2.658    -257.191       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -222.738       0.860       0.000       0.000      -0.005    -254.055       1.149

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.860     222.738       0.052       0.010       0.000       1.149     254.055

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.001      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000      -0.007     442.495     255.054      -0.003      -0.011      -0.987
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000      -1.709      -0.985      -0.019      -0.060    -255.373
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000      -0.000      -0.000       0.011       0.097     255.372      -0.060
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000      -0.000       0.014     259.929      -0.073      -0.019
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000      -0.000       0.010      -0.017    -439.654       0.013       0.014
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000     367.008     128.812    -223.468       0.012       0.010       1.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000      -1.660      -0.583       1.011       0.007      -0.000     223.376
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>          109585.520       0.000       0.000      -0.000       0.010       0.000     223.381       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000  114731.549      -0.000      -0.000       0.000      -0.003      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000      -0.000  105329.281       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000       0.000  108044.455       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.010       0.000       0.000       0.000  108044.530       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.003       0.000       0.000       0.000  108044.555       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+            223.381      -0.000       0.000       0.000       0.000       0.000  108044.555       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000  108044.605
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -254.049      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000    -343.787       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.324

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.012      -0.000       0.000      -0.000       0.000       0.024      -0.012     449.470

    4    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                             -223.383      -0.000      -0.000      -0.000      -0.024       0.000    -224.734      -0.024

    5    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.002      -0.000      -0.000       0.012     224.734       0.000      -0.027

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.007       0.000       0.000      -0.324    -449.470       0.024       0.027       0.000

    7    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000    -415.719     293.521      -0.212       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000    -343.791      -0.000      -0.000       0.014     254.199      -0.000      -0.008

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                              254.051       0.000       0.000      -0.000      -0.011       0.000    -254.199      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -367.018      -0.000      -0.000       0.000      -0.000      -0.000      -0.001      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              257.940       0.000      -0.000       0.000       0.017      -0.000     389.091      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.186       0.000       0.000      -0.017      -0.000      -0.000    -225.016       0.012

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.012     224.735

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.001    -389.091     225.016      -0.012       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.012    -224.735       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     343.790      -0.000      -0.000       0.014     254.198      -0.000      -0.008

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -415.722    -146.947    -254.093       0.014       0.011      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.008       0.000    -254.199

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -0.000       0.000    -276.100       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.001

    2    1  |0 0>              -0.860       0.000       0.003       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.708       0.988       0.008      -0.011

    3    1  |0 0>            -222.740       0.052       0.010       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.007    -442.131     255.693       0.046      -0.022

    4    1  |0 0>              -0.052    -222.740      -0.057       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.103       0.046    -255.374       0.049

    5    1  |0 0>              -0.010       0.064    -221.399       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.020       0.022       0.073     250.789

    6    1  |0 0>              -0.000      -0.012    -130.894       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.020      -0.013     444.936

    7    1  |0 0>               1.149      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -1.660      -0.584      -1.010      -0.007       0.000

    8    1  |0 0>             254.043      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -367.011    -129.135    -223.284       0.012       0.010

    9    1  |0 0>              -0.000    -254.049       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.012     223.383      -0.000

   10    1  |0 0>              -0.000      -0.000    -343.787       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.002

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.024      -0.012

    4    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.024       0.000    -224.734

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.012     224.734       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.324    -449.470       0.024       0.027

    7    1  |1 1>+         109700.877       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000    -415.719     293.521      -0.212       0.000       0.000

    8    1  |1 1>+              0.000  109702.354       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.014     254.199      -0.000

    9    1  |1 1>+              0.000       0.000  109702.354       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.011       0.000    -254.199

    1    1  |1 0>              -0.000       0.000       0.000  105329.281       0.000       0.000       0.000       0.000
                              415.719       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000  108044.455       0.000       0.000       0.000
                             -293.521       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000  108044.530       0.000       0.000
                                0.212      -0.014       0.011      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000  108044.555       0.000
                               -0.000    -254.199      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000  108044.555
                               -0.000       0.000     254.199      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.008       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     223.259      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -223.259       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.001      -0.000
                                0.000     415.722       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.021    -389.414       0.000
                                0.000     146.947      -0.000       0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       0.021       0.000    -224.455       0.000
                               -0.014     254.093       0.000      -0.000       0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000      -0.001     389.414     224.455       0.000      -0.003
                             -254.198      -0.014       0.008      -0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.003       0.000
                                0.000      -0.011      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -0.012       0.003      -0.000     224.735
                                0.008       0.000     254.199       0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.011      -0.000     254.198
                               -0.000      -0.000    -223.255      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.008      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000     415.722     146.580    -254.304       0.014       0.011
                              223.255      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     276.102      -0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              255.375    -222.742      -0.003       0.000       0.000      -0.000       0.011      -0.986

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.987       0.860       0.010      -0.052       0.000      -0.000      -0.133    -255.371

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.008       0.000      -0.071     222.742      -0.000       0.368     510.751      -0.087

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -224.059      -0.064       0.000      -0.000      -0.146       0.005

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006      -0.005     126.291       0.012       0.000       0.000       0.026       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -223.377     254.045      -0.000      -0.000       0.000      -0.000       0.010      -1.011

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.011      -1.149       0.000      -0.000       0.000       0.000      -0.012    -223.385

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007      -0.000      -0.000    -254.051     367.018    -257.940       0.186      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     343.791      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     415.719       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.324    -293.521       0.000       0.000      -0.000       0.000       0.017      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              449.470       0.212      -0.014       0.011       0.000      -0.017      -0.000      -0.000

    4    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.024      -0.000    -254.199      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.027      -0.000       0.000     254.199       0.001    -389.091     225.016      -0.012

    6    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.008       0.000       0.000       0.000      -0.012    -224.735

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.014     254.198

    8    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.008       0.000       0.000     223.259    -415.722    -146.947    -254.093       0.014

    9    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -223.259       0.000      -0.000       0.000      -0.000      -0.008

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.001
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.021     389.414
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.021       0.000     224.455
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.001    -389.414    -224.455       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.003
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>          108044.605       0.000       0.000       0.000      -0.000       0.012      -0.003       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000  109700.877       0.000       0.000      -0.000      -0.000      -0.011       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000  109702.354       0.000      -0.000      -0.000       0.000      -0.008
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000  109702.354    -415.722    -146.580     254.304      -0.014
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 1>-             -0.000      -0.000      -0.000    -415.722  105329.281       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.012      -0.000      -0.000    -146.580       0.000  108044.455       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.003      -0.011       0.000     254.304       0.000       0.000  108044.530       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000      -0.008      -0.014       0.000       0.000       0.000  108044.555
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-           -224.735    -254.198       0.000      -0.011       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.000    -254.199       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000    -223.255       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-            254.199     223.255       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -276.110      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              255.371      -0.000      -0.006     222.738      -0.860

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.986      -0.015       0.000      -0.860    -222.738

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.023       0.146      -0.014      -0.000      -0.052

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000     510.724      -2.658      -0.000      -0.010

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.006       5.278     257.191       0.005      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              223.385       0.000      -0.000     254.055      -1.149

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -1.011       0.007      -0.000      -1.149    -254.055

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -343.790      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.000       0.000     415.722       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              389.091      -0.000       0.000     146.947      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -225.016       0.012      -0.014     254.093       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.012     224.735    -254.198      -0.014       0.008

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.011      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.008       0.000     254.199

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.008      -0.000      -0.000    -223.255

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.011      -0.000       0.000      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000    -254.199     223.255      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000     415.722
                                0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000      -0.012       0.000       0.000     146.580
                               -0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000       0.003       0.011      -0.000    -254.304
                               -0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.003      -0.000      -0.000       0.008       0.014
                               -0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000     224.735     254.198      -0.000       0.011
                               -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>            -224.735       0.000       0.000     254.199      -0.000
                               -0.000       0.000      -0.000       0.000       0.000

    7    1  |1 0>            -254.198      -0.000       0.000     223.255      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 0>               0.000    -254.199    -223.255       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -0.011       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-         108044.555       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000  108044.605       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000  109700.877       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000  109702.354       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000  109702.354
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -529.13850275    -0.00000946       -2.08      0.00000000        0.00      0.0000
    2  -528.65902264     0.47947065   105231.64      0.47948011   105233.72     13.0473
    3  -528.65902264     0.47947065   105231.64      0.47948011   105233.72     13.0473
    4  -528.65902260     0.47947069   105231.65      0.47948015   105233.73     13.0473
    5  -528.64825429     0.49023900   107595.02      0.49024846   107597.10     13.3403
    6  -528.64825420     0.49023909   107595.04      0.49024855   107597.12     13.3403
    7  -528.64825420     0.49023909   107595.04      0.49024855   107597.12     13.3403
    8  -528.64825405     0.49023924   107595.08      0.49024870   107597.15     13.3403
    9  -528.64825395     0.49023934   107595.10      0.49024880   107597.18     13.3403
   10  -528.64825395     0.49023934   107595.10      0.49024880   107597.18     13.3403
   11  -528.64825393     0.49023936   107595.10      0.49024882   107597.18     13.3403
   12  -528.64713643     0.49135686   107840.37      0.49136632   107842.44     13.3708
   13  -528.64713643     0.49135686   107840.37      0.49136632   107842.44     13.3708
   14  -528.64713624     0.49135705   107840.41      0.49136651   107842.48     13.3708
   15  -528.64713602     0.49135727   107840.46      0.49136673   107842.53     13.3708
   16  -528.64713540     0.49135789   107840.59      0.49136735   107842.67     13.3708
   17  -528.64446601     0.49402728   108426.45      0.49403674   108428.53     13.4434
   18  -528.64446601     0.49402728   108426.45      0.49403674   108428.53     13.4434
   19  -528.64446582     0.49402747   108426.50      0.49403693   108428.57     13.4434
   20  -528.64248931     0.49600398   108860.29      0.49601344   108862.37     13.4972
   21  -528.64248927     0.49600402   108860.30      0.49601348   108862.38     13.4972
   22  -528.64248795     0.49600534   108860.59      0.49601480   108862.66     13.4973
   23  -528.64248782     0.49600547   108860.62      0.49601493   108862.69     13.4973
   24  -528.64248773     0.49600556   108860.64      0.49601502   108862.71     13.4973
   25  -528.63890328     0.49959001   109647.33      0.49959947   109649.41     13.5948
   26  -528.63890327     0.49959002   109647.33      0.49959948   109649.41     13.5948
   27  -528.63890247     0.49959082   109647.51      0.49960028   109649.59     13.5948
   28  -528.63779798     0.50069531   109889.92      0.50070477   109892.00     13.6249
   29  -528.63779797     0.50069532   109889.92      0.50070478   109892.00     13.6249
   30  -528.63779780     0.50069549   109889.96      0.50070495   109892.03     13.6249
   31  -528.63779583     0.50069746   109890.39      0.50070692   109892.47     13.6249
   32  -528.63779574     0.50069755   109890.41      0.50070701   109892.49     13.6249
   33  -528.63695778     0.50153550   110074.32      0.50154497   110076.40     13.6477
   34  -528.63614403     0.50234926   110252.92      0.50235872   110254.99     13.6699
   35  -528.63614402     0.50234927   110252.92      0.50235873   110255.00     13.6699
   36  -528.63614150     0.50235179   110253.47      0.50236125   110255.55     13.6699
   37  -528.61539100     0.52310228   114807.68      0.52311175   114809.76     14.2346

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999057  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000  0.00000043  0.00000000 -0.00000000  0.00000022 -0.00005537 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000041 -0.00000000  0.00000000  0.00000000  0.00005805  0.00000021 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000155  0.00000002  0.00000000  0.00002344
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00032819 -0.07344357 -0.00000018 -0.00000000  0.00000002 -0.00000431  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.07344420  0.00032819 -0.00000027  0.00000000  0.00000483  0.00000002 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000027 -0.00000018  0.07344645 -0.00001238  0.00000000  0.00000000  0.00000056
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00002253  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00005518  0.99021868  0.00000247 -0.00000000  0.00000000  0.00000053  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000005 -0.00081427 -0.00000000  0.00000622 -0.00000482  0.62114295  0.00000051
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000009  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000008  0.00140811  0.00000007 -0.00002288  0.00000231 -0.31214495  0.00006694
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000005 -0.00000000

   4    1  |1 1>+         -0.00000001 -0.00000004 -0.00000008  0.00000000  0.00000001  0.00000609  0.00001262  0.00000025
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000001 -0.00000007  0.00140800 -0.44624759  0.00000132  0.00002423  0.57805693
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00140738 -0.00000008 -0.00000001 -0.00000162 -0.04752615 -0.00000049 -0.00002961
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.08387831 -0.00000467 -0.00000031 -0.00000000 -0.00001664 -0.00000000  0.00000000
                          -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000031  0.00000021 -0.08385114 -0.00000685 -0.00000000 -0.00000000 -0.00000446
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00250660  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.99021864  0.00005518  0.00000361  0.00000000 -0.00000050  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000011  0.00000003  0.00000000
                           0.00000000 -0.00081625 -0.00000005 -0.00000000  0.00000334 -0.62169257 -0.00000482 -0.00000059

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005  0.00000001 -0.00000000
                          -0.00000000 -0.00140685 -0.00000008 -0.00000008  0.00002750 -0.31069463 -0.00000229  0.00006009

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000008 -0.00000004 -0.00140799  0.44812319  0.00002316  0.00000287  0.57660543

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000006  0.00000000  0.00000000 -0.00000001  0.00000623  0.00000407 -0.00000026

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                          -0.00000000  0.00000008 -0.00140745  0.00000004 -0.00001339 -0.00000048  0.04691587  0.00002361

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000467  0.08387833  0.00000021 -0.00000000  0.00000000 -0.00001651 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00250663  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000031 -0.00000021  0.08385112  0.00000695 -0.00000000 -0.00000000 -0.00000462

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000361 -0.00000247  0.99022068  0.00000002 -0.00000000  0.00000000 -0.00000004

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000000  0.00162530  0.77462801  0.00000453 -0.00000775 -0.00084160

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000008  0.00000006 -0.00000116  0.00037787  0.00004230  0.00003776  0.57738691

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000003 -0.00000000
                          -0.00000000 -0.00140916 -0.00000008 -0.00000001 -0.00000387  0.71743185  0.00000556 -0.00003017

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000011 -0.00000000
                          -0.00000000 -0.00000008  0.00140923  0.00000000  0.00000717 -0.00000556  0.71731852 -0.00002509

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000004  0.00000000  0.00000000  0.00000001 -0.00001473 -0.00000407  0.00000026

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00250673 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000467  0.08384936  0.00000021 -0.00000000 -0.00000000  0.00001211  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.08384933 -0.00000467 -0.00000031 -0.00000000  0.00001213  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000018
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000018 -0.00004039 -0.00000001 -0.04223265 -0.49147144 -0.00000214 -0.00000186 -0.00000069
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00004582  0.00000016 -0.00000001 -0.49146934  0.04223247 -0.00008279 -0.00001489 -0.00000092
                           0.00000000  0.00000000  0.00000000 -0.00000044  0.00000004  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000001 -0.00000000  0.00000001 -0.00008266  0.00000496  0.49330425  0.00011047 -0.00000063
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000001 -0.00000001  0.00002838 -0.00001496 -0.00000057 -0.00011047  0.49328698 -0.00397404
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000347 -0.00000110 -0.00000061 -0.00000026  0.00397402  0.49301827
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000003  0.00000536  0.00000000 -0.00000281 -0.00003237  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000657 -0.00000002  0.00000000 -0.00003290  0.00000285  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000055 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000402
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000018 -0.00000000  0.00000083  0.00001009 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000185  0.11894673  0.00002420  0.04968861  0.60565727  0.00000278  0.00000221 -0.00001355
                          -0.00000037 -0.00000157  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000965  0.66038538  0.00012998  0.02863901  0.34908255 -0.00001398 -0.00001755  0.00002463
                          -0.00000204 -0.00000870  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00020989  0.00010340 -0.57737597 -0.00001748 -0.00000250 -0.00005404 -0.35208854  0.60680739
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00002259 -0.00006262  0.00000024 -0.00002426 -0.00001200 -0.35077924  0.00002185 -0.00001857
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.72869211 -0.00001076  0.00025363 -0.34962721  0.02868370  0.00002320  0.00001594 -0.00001961
                          -0.00000034 -0.00000225 -0.00000000 -0.00000031  0.00000003  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000727 -0.00000000  0.00000000  0.09593970 -0.00787097 -0.00000637 -0.00000137  0.00000021
                          -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000001 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000630  0.00000096 -0.09617567  0.00000599 -0.00000509
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000796 -0.00000132 -0.00000079 -0.00000303 -0.09605197 -0.05579626
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000010  0.00000000 -0.00000000  0.00001012 -0.00000083 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000005  0.00000036  0.00000000 -0.00000054  0.00000005  0.00000000 -0.00000000 -0.00000000
                           0.11747708 -0.00000183  0.00002994  0.60515185 -0.04964715 -0.00004015 -0.00000864  0.00000130

   3    1  |1 0>          -0.00000030 -0.00000204 -0.00000000  0.00000031 -0.00000003 -0.00000000  0.00000000  0.00000000
                          -0.66081928  0.00000969 -0.00019272 -0.34995099  0.02871026  0.00000447  0.00002051  0.00002627

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00006018 -0.00001063  0.00000028 -0.00000517 -0.00000890 -0.35077877  0.00002185 -0.00001856

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00015789 -0.00013871  0.57737995  0.00002021  0.00001067 -0.00001043  0.34932347  0.60840016

   6    1  |1 0>           0.00000225  0.00000960 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001070  0.72873413  0.00017474 -0.02868328 -0.34962217  0.00000930 -0.00000127  0.00000782

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000723 -0.00000000 -0.00787087 -0.09593854 -0.00000044 -0.00000035  0.00000215

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000785  0.00000135 -0.00000170  0.00000893  0.09630413 -0.05535729

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000630  0.00000096 -0.09617484  0.00000599 -0.00000509

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000198 -0.00000002  0.00000001  0.00000003 -0.00000000  0.00050788 -0.00000003  0.00000003

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001644 -0.00002722  0.00000025  0.00006339 -0.00002406  0.70146949 -0.00004370  0.00003713

   4    1  |1 1>-         -0.00000006 -0.00000042 -0.00000000 -0.00000031  0.00000003  0.00000000 -0.00000000 -0.00000000
                          -0.13610553  0.00000213 -0.00005268  0.34972713 -0.02869190 -0.00006071  0.00001681  0.00000080

   5    1  |1 1>-          0.00000042  0.00000180 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000213  0.13670893  0.00002779 -0.02869153 -0.34972263 -0.00003277 -0.00000127  0.00000782

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00019144  0.00013869 -0.57729475 -0.00000113 -0.00000243  0.00004362  0.70154001  0.00159998

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000010  0.00000004 -0.00000249  0.00000590  0.00025268 -0.11122503

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00001356  0.00000000  0.00786403  0.09585513  0.00000044  0.00000035 -0.00000215

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000001 -0.00000000  0.00000000  0.00000000
                          -0.00001391  0.00000000 -0.00000000 -0.09585542  0.00786406  0.00000636  0.00000137 -0.00000020

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000039  0.00000150
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000010 -0.00022294  0.00000000  0.72969681  0.00084976 -0.00000036 -0.00000176  0.00000402
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00022127 -0.00000009 -0.00000000 -0.00084977  0.72969601 -0.00016002 -0.00002617 -0.00000756
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000018  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000005 -0.00000000  0.00000157  0.00000017  0.00015998  0.72982113 -0.00010417  0.00029305
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000001 -0.00000000 -0.00000000  0.00000066  0.00002723  0.00002734  0.70648920  0.18302900
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000001 -0.00000000 -0.00000433  0.00000068 -0.00030972 -0.18298751  0.70633824
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00008992  0.39721292 -0.00000645  0.00008437  0.00000015  0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.39721296 -0.00008992 -0.00000084 -0.00000016  0.00008338  0.00000000 -0.00000000  0.00000000
                          -0.00000007  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000084 -0.00000645 -0.39717592 -0.00000000 -0.00000000  0.00000092 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000884 -0.00003402
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00002917 -0.00678700  0.00000011  0.00004708 -0.00000013 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00118461 -0.27562002  0.00000447  0.22874113 -0.00061723 -0.00000013 -0.00000192  0.00000649
                           0.00000001 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00205527  0.47819541  0.00001347  0.13214013 -0.00035656  0.00000581  0.00000890 -0.00000620
                          -0.00000001  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00001475 -0.00002563  0.00000000 -0.00000022 -0.00000525  0.00015180  0.18716462 -0.18612676
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000110 -0.00001348  0.47807597 -0.00000580 -0.00000193  0.13215678 -0.00005725  0.00005020
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.47804001 -0.00205460  0.00000104 -0.00035704 -0.13230941 -0.00000195 -0.00000675  0.00000566
                           0.00000008 -0.00000001  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.20079889 -0.00086303  0.00000044  0.00114984  0.42611660  0.00000628  0.00000300  0.00000042
                           0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000042 -0.00000326 -0.20053241  0.00000021 -0.00000627  0.42577401 -0.00018446  0.00016174
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000700 -0.00000277  0.00001798  0.34694553  0.34836170
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00678658 -0.00002917  0.00000001  0.00000013  0.00004709  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000005  0.00000001 -0.00000000 -0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000
                           0.27630701 -0.00118756  0.00000060  0.00061674  0.22854972  0.00000336  0.00000161  0.00000022

   3    1  |1 0>          -0.00000008  0.00000001 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000
                           0.47779796 -0.00205357 -0.00002452 -0.00035746 -0.13246742  0.00000512 -0.00000395 -0.00001146

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00002460 -0.00002251 -0.47807350 -0.00000403  0.00000515  0.13216062 -0.00005725  0.00005019

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00002122  0.00000009  0.00000000  0.00000670  0.00000659  0.00006744 -0.06798781 -0.25504895

   6    1  |1 0>          -0.00000001  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00205460 -0.47803825  0.00002262 -0.13231432  0.00035703 -0.00000404  0.00000111 -0.00000376

   7    1  |1 0>           0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00086304  0.20080058 -0.00000326 -0.42611413  0.00114985  0.00000024  0.00000357 -0.00001211

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000756  0.00000324 -0.00025382 -0.47515908  0.12628751

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000042  0.00000325  0.20053526  0.00000022 -0.00000627  0.42577340 -0.00018446  0.00016174

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000011 -0.00676837 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000117  0.00000896  0.55196628  0.00000000  0.00000000 -0.00019187  0.00000008 -0.00000007

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00002565  0.00002112 -0.00039933 -0.00000597  0.00001096 -0.26431509  0.00011450 -0.00010039

   4    1  |1 1>-         -0.00000008  0.00000001 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000
                           0.47802380 -0.00205454  0.00000107  0.00035587  0.13187662  0.00001607 -0.00000701 -0.00000201

   5    1  |1 1>-          0.00000001 -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00205454  0.47802458 -0.00000774 -0.13187756  0.00035586  0.00001181  0.00000110 -0.00000374

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001486  0.00000007  0.00000000 -0.00000018 -0.00000224 -0.00008437 -0.25516639 -0.06892357

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00001457  0.00000047 -0.00023612 -0.12836783  0.47522471

   8    1  |1 1>-          0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00086146  0.20043459 -0.00000325  0.42577327 -0.00114893 -0.00000023 -0.00000357  0.00001210

   9    1  |1 1>-         -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000
                           0.20043587 -0.00086147  0.00000044 -0.00114892 -0.42577505 -0.00000627 -0.00000299 -0.00000042

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001278  0.00000000  0.00000006
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00064389  0.00000379  0.00000000  0.47351172 -0.00016016 -0.00004072 -0.00000014 -0.00000026
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000380  0.00064146  0.00000000 -0.00016015 -0.47351511 -0.00000176  0.00010871  0.00002030
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000026  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000015  0.00000251 -0.00000017 -0.00010877  0.00003644 -0.47329894 -0.00005558
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000001  0.00000003  0.00000000  0.00000033 -0.00002033  0.00686457  0.00005610 -0.47326357
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000001 -0.00000000  0.00000000 -0.00004075  0.00000147 -0.47378313 -0.00003564 -0.00686636
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.76261935  0.00500497 -0.00000027 -0.00151203  0.00000150  0.00000017 -0.00000000 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00500497  0.76261979  0.00000007  0.00000151  0.00151031  0.00000000  0.00000001  0.00000000
                           0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000027 -0.00000007  0.76287834 -0.00000000  0.00000000  0.00000000  0.00000179  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00035929 -0.00000001 -0.00000181
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00668816  0.00001363 -0.00000000 -0.00021245 -0.00000075  0.00000002  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.15379487  0.00031350 -0.00000005  0.28032323  0.00098807 -0.00003074 -0.00000008 -0.00000025
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.26601055 -0.00054225  0.00001191  0.16182660  0.00057040 -0.00000272 -0.00000723 -0.00000873
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00001420  0.00000830 -0.00000000  0.00002201  0.00000438  0.28103720 -0.00002117 -0.16062117
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00001191 -0.00000000  0.26605346 -0.00000724  0.00000067  0.00000339 -0.16178857  0.00002725
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00054204  0.26591037  0.00000003 -0.00057113  0.16203301 -0.00000817  0.00000070  0.00000523
                           0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00061636 -0.30236847 -0.00000003 -0.00196207  0.55665149  0.00000194  0.00000238  0.00000084
                          -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000030 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000011 -0.00000003  0.30168686  0.00000017 -0.00000238 -0.00001165  0.55630069 -0.00009370
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000001  0.00000001 -0.00000000  0.00003526 -0.00000182  0.31699693  0.00010056  0.55761250
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001363  0.00668870  0.00000000 -0.00000075  0.00021284  0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000  0.00000000
                          -0.00031428  0.15417680  0.00000002  0.00098725 -0.28009142 -0.00000098 -0.00000120 -0.00000042

   3    1  |1 0>          -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000009  0.00000000  0.00000000 -0.00000000
                          -0.00054180  0.26578991 -0.00001420 -0.00057182  0.16222988  0.00001299 -0.00000795  0.00000748

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000820 -0.00001417 -0.26605228 -0.00000505 -0.00000800  0.00000339 -0.16179132  0.00002725

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000003 -0.00001180 -0.00000000  0.00003084 -0.00000831  0.27969112  0.00003330  0.16295627

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.26591022  0.00054204  0.00000818 -0.16203452 -0.00057113  0.00001777  0.00000508  0.00000014

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.30237104  0.00061637 -0.00000011  0.55665018  0.00196205 -0.00006103 -0.00000015 -0.00000049

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00000000  0.00003478 -0.00000017  0.32163112 -0.00008675 -0.55495408

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000011  0.00000003 -0.30169126  0.00000016 -0.00000239 -0.00001165  0.55629448 -0.00009370

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00675128 -0.00000000  0.00000000  0.00000000  0.00000039  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000011 -0.00000003  0.30719727 -0.00000000  0.00000000 -0.00000000  0.00023447 -0.00000004

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001186  0.00001421 -0.00022306 -0.00000705 -0.00001006 -0.00000677  0.32357695 -0.00005450

   4    1  |1 1>-         -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000
                          -0.00054287  0.26631473  0.00000004  0.00056982 -0.16166346 -0.00000060 -0.00001799  0.00000982

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.26631572 -0.00054287  0.00000010 -0.16166224 -0.00056982  0.00001773 -0.00001433  0.00000015

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000002 -0.00000828 -0.00000000  0.00000012  0.00000455 -0.00134697  0.00005448  0.32358554

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00007059 -0.00000200  0.64369077  0.00001392  0.00267768

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.30143784  0.00061446 -0.00000011 -0.55565852 -0.00195856  0.00006092  0.00000016  0.00000048

   9    1  |1 1>-          0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000030 -0.00000000 -0.00000000  0.00000000
                           0.00061446 -0.30143955 -0.00000003  0.00195855 -0.55565372 -0.00000194 -0.00000238 -0.00000083

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>          -0.00430943  0.00000000 -0.00000000 -0.00000000  0.00052827
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000003  0.00000147 -0.00046693  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00046861  0.00000147  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000006  0.00000011  0.00000000 -0.00000168 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00001309  0.00000002  0.00000000  0.00000000 -0.00000006
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00116357 -0.00000000 -0.00000001  0.00000000  0.00000100
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00192063 -0.50518166  0.00000009  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.50518088  0.00192063  0.00000024  0.00000000
                           0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000000 -0.00000024  0.00000009  0.50485002 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.12682313 -0.00000000  0.00000000  0.00000000  0.99192528
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00010057 -0.13919811  0.00000002 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00001064  0.01473186 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000004 -0.00001897 -0.02625942 -0.00000116 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00072168 -0.00000082  0.00000140  0.00000000 -0.00000128
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000001  0.00000116 -0.02613735 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000002 -0.02624990  0.00001897 -0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000001  0.60042356 -0.00043379  0.00000029 -0.00000000
                           0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000029 -0.00000011 -0.60144574 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.57371282 -0.00000001  0.00000000  0.00000000 -0.07322749
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.13919840 -0.00010057  0.00000007 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.01476888  0.00001067 -0.00000001 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003 -0.02623830  0.00001896  0.00000139 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000139  0.00000082  0.02613620 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00072133  0.00000116 -0.00000000  0.00000000 -0.00000123

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00001897  0.02624907 -0.00000082 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00043380  0.60042484 -0.00000010  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57371339 -0.00000000 -0.00000000  0.00000000 -0.07322821

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000028  0.00000010  0.60144890  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000007 -0.00000002 -0.13918197 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001 -0.00000001 -0.03017968  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000139 -0.00000115  0.00002255  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.02589941  0.00001871 -0.00000001 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00001871 -0.02589971  0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000037  0.00000081  0.00000000  0.00000000  0.00000004

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.57061499  0.00000001 -0.00000000 -0.00000000  0.07320739

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00043507  0.60219158 -0.00000011  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.60219343 -0.00043507  0.00000029 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -529.13850275     -0.00000946       -2.08      0.00000000        0.00      0.0000
     2   1   -528.65902264      0.47947065   105231.64      0.47948011   105233.72     13.0473
     3   1   -528.65902264      0.47947065   105231.64      0.47948011   105233.72     13.0473
     4   1   -528.65902260      0.47947069   105231.65      0.47948015   105233.73     13.0473
     5   1   -528.64825429      0.49023900   107595.02      0.49024846   107597.10     13.3403
     6   1   -528.64825420      0.49023909   107595.04      0.49024855   107597.12     13.3403
     7   1   -528.64825420      0.49023909   107595.04      0.49024855   107597.12     13.3403
     8   1   -528.64825405      0.49023924   107595.08      0.49024870   107597.15     13.3403
     9   1   -528.64825395      0.49023934   107595.10      0.49024880   107597.18     13.3403
    10   1   -528.64825395      0.49023934   107595.10      0.49024880   107597.18     13.3403
    11   1   -528.64825393      0.49023936   107595.10      0.49024882   107597.18     13.3403
    12   1   -528.64713643      0.49135686   107840.37      0.49136632   107842.44     13.3708
    13   1   -528.64713643      0.49135686   107840.37      0.49136632   107842.44     13.3708
    14   1   -528.64713624      0.49135705   107840.41      0.49136651   107842.48     13.3708
    15   1   -528.64713602      0.49135727   107840.46      0.49136673   107842.53     13.3708
    16   1   -528.64713540      0.49135789   107840.59      0.49136735   107842.67     13.3708
    17   1   -528.64446601      0.49402728   108426.45      0.49403674   108428.53     13.4434
    18   1   -528.64446601      0.49402728   108426.45      0.49403674   108428.53     13.4434
    19   1   -528.64446582      0.49402747   108426.50      0.49403693   108428.57     13.4434
    20   1   -528.64248931      0.49600398   108860.29      0.49601344   108862.37     13.4972
    21   1   -528.64248927      0.49600402   108860.30      0.49601348   108862.38     13.4972
    22   1   -528.64248795      0.49600534   108860.59      0.49601480   108862.66     13.4973
    23   1   -528.64248782      0.49600547   108860.62      0.49601493   108862.69     13.4973
    24   1   -528.64248773      0.49600556   108860.64      0.49601502   108862.71     13.4973
    25   1   -528.63890328      0.49959001   109647.33      0.49959947   109649.41     13.5948
    26   1   -528.63890327      0.49959002   109647.33      0.49959948   109649.41     13.5948
    27   1   -528.63890247      0.49959082   109647.51      0.49960028   109649.59     13.5948
    28   1   -528.63779798      0.50069531   109889.92      0.50070477   109892.00     13.6249
    29   1   -528.63779797      0.50069532   109889.92      0.50070478   109892.00     13.6249
    30   1   -528.63779780      0.50069549   109889.96      0.50070495   109892.03     13.6249
    31   1   -528.63779583      0.50069746   109890.39      0.50070692   109892.47     13.6249
    32   1   -528.63779574      0.50069755   109890.41      0.50070701   109892.49     13.6249
    33   1   -528.63695778      0.50153550   110074.32      0.50154497   110076.40     13.6477
    34   1   -528.63614403      0.50234926   110252.92      0.50235872   110254.99     13.6699
    35   1   -528.63614402      0.50234927   110252.92      0.50235873   110255.00     13.6699
    36   1   -528.63614150      0.50235179   110253.47      0.50236125   110255.55     13.6699
    37   1   -528.61539100      0.52310228   114807.68      0.52311175   114809.76     14.2346

 E0 =   -529.13849329 is the energy of the lowest zeroth-order state
 E1 =   -529.13850275 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999057  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000  0.00000043  0.00000000 -0.00000000  0.00000022 -0.00005537 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000041 -0.00000000  0.00000000  0.00000000  0.00005805  0.00000021 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000155  0.00000002  0.00000000  0.00002344
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00032819 -0.07344357 -0.00000018 -0.00000000  0.00000002 -0.00000431  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.07344420  0.00032819 -0.00000027  0.00000000  0.00000483  0.00000002 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000027 -0.00000018  0.07344645 -0.00001238  0.00000000  0.00000000  0.00000056
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00002253  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000 -0.00005518  0.99021868  0.00000247 -0.00000000  0.00000000  0.00000053  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00000000  0.00000005 -0.00081427 -0.00000000  0.00000622 -0.00000482  0.62114295  0.00000051
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000009  0.00000000

 13  1     3    1  |1 1>+      -0.00000000 -0.00000008  0.00140811  0.00000007 -0.00002288  0.00000231 -0.31214495  0.00006694
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000005 -0.00000000

 14  1     4    1  |1 1>+      -0.00000001 -0.00000004 -0.00000008  0.00000000  0.00000001  0.00000609  0.00001262  0.00000025
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     5    1  |1 1>+       0.00000000 -0.00000001 -0.00000007  0.00140800 -0.44624759  0.00000132  0.00002423  0.57805693
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00000000 -0.00140738 -0.00000008 -0.00000001 -0.00000162 -0.04752615 -0.00000049 -0.00002961
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.00000000 -0.08387831 -0.00000467 -0.00000031 -0.00000000 -0.00001664 -0.00000000  0.00000000
                               -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00000000  0.00000031  0.00000021 -0.08385114 -0.00000685 -0.00000000 -0.00000000 -0.00000446
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.00250660  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.99021864  0.00005518  0.00000361  0.00000000 -0.00000050  0.00000000 -0.00000000

 21  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000011  0.00000003  0.00000000
                                0.00000000 -0.00081625 -0.00000005 -0.00000000  0.00000334 -0.62169257 -0.00000482 -0.00000059

 22  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000005  0.00000001 -0.00000000
                               -0.00000000 -0.00140685 -0.00000008 -0.00000008  0.00002750 -0.31069463 -0.00000229  0.00006009

 23  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000008 -0.00000004 -0.00140799  0.44812319  0.00002316  0.00000287  0.57660543

 24  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000006  0.00000000  0.00000000 -0.00000001  0.00000623  0.00000407 -0.00000026

 25  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000
                               -0.00000000  0.00000008 -0.00140745  0.00000004 -0.00001339 -0.00000048  0.04691587  0.00002361

 26  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000467  0.08387833  0.00000021 -0.00000000  0.00000000 -0.00001651 -0.00000000

 27  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00250663  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 28  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000031 -0.00000021  0.08385112  0.00000695 -0.00000000 -0.00000000 -0.00000462

 29  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000361 -0.00000247  0.99022068  0.00000002 -0.00000000  0.00000000 -0.00000004

 30  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000000  0.00162530  0.77462801  0.00000453 -0.00000775 -0.00084160

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000008  0.00000006 -0.00000116  0.00037787  0.00004230  0.00003776  0.57738691

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000003 -0.00000000
                               -0.00000000 -0.00140916 -0.00000008 -0.00000001 -0.00000387  0.71743185  0.00000556 -0.00003017

 33  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000011 -0.00000000
                               -0.00000000 -0.00000008  0.00140923  0.00000000  0.00000717 -0.00000556  0.71731852 -0.00002509

 34  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000004  0.00000000  0.00000000  0.00000001 -0.00001473 -0.00000407  0.00000026

 35  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00250673 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 36  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000467  0.08384936  0.00000021 -0.00000000 -0.00000000  0.00001211  0.00000000

 37  1     9    1  |1 1>-      -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.08384933 -0.00000467 -0.00000031 -0.00000000  0.00001213  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000018
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000018 -0.00004039 -0.00000001 -0.04223265 -0.49147144 -0.00000214 -0.00000186 -0.00000069
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00004582  0.00000016 -0.00000001 -0.49146934  0.04223247 -0.00008279 -0.00001489 -0.00000092
                                0.00000000  0.00000000  0.00000000 -0.00000044  0.00000004  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000001 -0.00000000  0.00000001 -0.00008266  0.00000496  0.49330425  0.00011047 -0.00000063
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000001 -0.00000001  0.00002838 -0.00001496 -0.00000057 -0.00011047  0.49328698 -0.00397404
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000347 -0.00000110 -0.00000061 -0.00000026  0.00397402  0.49301827
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000003  0.00000536  0.00000000 -0.00000281 -0.00003237  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000657 -0.00000002  0.00000000 -0.00003290  0.00000285  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000055 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000402
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000 -0.00000018 -0.00000000  0.00000083  0.00001009 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.00000185  0.11894673  0.00002420  0.04968861  0.60565727  0.00000278  0.00000221 -0.00001355
                               -0.00000037 -0.00000157  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00000965  0.66038538  0.00012998  0.02863901  0.34908255 -0.00001398 -0.00001755  0.00002463
                               -0.00000204 -0.00000870  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00020989  0.00010340 -0.57737597 -0.00001748 -0.00000250 -0.00005404 -0.35208854  0.60680739
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00002259 -0.00006262  0.00000024 -0.00002426 -0.00001200 -0.35077924  0.00002185 -0.00001857
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.72869211 -0.00001076  0.00025363 -0.34962721  0.02868370  0.00002320  0.00001594 -0.00001961
                               -0.00000034 -0.00000225 -0.00000000 -0.00000031  0.00000003  0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.00000727 -0.00000000  0.00000000  0.09593970 -0.00787097 -0.00000637 -0.00000137  0.00000021
                               -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000001 -0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000630  0.00000096 -0.09617567  0.00000599 -0.00000509
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000796 -0.00000132 -0.00000079 -0.00000303 -0.09605197 -0.05579626
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000010  0.00000000 -0.00000000  0.00001012 -0.00000083 -0.00000000  0.00000000 -0.00000000

 21  1     2    1  |1 0>        0.00000005  0.00000036  0.00000000 -0.00000054  0.00000005  0.00000000 -0.00000000 -0.00000000
                                0.11747708 -0.00000183  0.00002994  0.60515185 -0.04964715 -0.00004015 -0.00000864  0.00000130

 22  1     3    1  |1 0>       -0.00000030 -0.00000204 -0.00000000  0.00000031 -0.00000003 -0.00000000  0.00000000  0.00000000
                               -0.66081928  0.00000969 -0.00019272 -0.34995099  0.02871026  0.00000447  0.00002051  0.00002627

 23  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00006018 -0.00001063  0.00000028 -0.00000517 -0.00000890 -0.35077877  0.00002185 -0.00001856

 24  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00015789 -0.00013871  0.57737995  0.00002021  0.00001067 -0.00001043  0.34932347  0.60840016

 25  1     6    1  |1 0>        0.00000225  0.00000960 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001070  0.72873413  0.00017474 -0.02868328 -0.34962217  0.00000930 -0.00000127  0.00000782

 26  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000723 -0.00000000 -0.00787087 -0.09593854 -0.00000044 -0.00000035  0.00000215

 27  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000785  0.00000135 -0.00000170  0.00000893  0.09630413 -0.05535729

 28  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000630  0.00000096 -0.09617484  0.00000599 -0.00000509

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000

 30  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000198 -0.00000002  0.00000001  0.00000003 -0.00000000  0.00050788 -0.00000003  0.00000003

 31  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001644 -0.00002722  0.00000025  0.00006339 -0.00002406  0.70146949 -0.00004370  0.00003713

 32  1     4    1  |1 1>-      -0.00000006 -0.00000042 -0.00000000 -0.00000031  0.00000003  0.00000000 -0.00000000 -0.00000000
                               -0.13610553  0.00000213 -0.00005268  0.34972713 -0.02869190 -0.00006071  0.00001681  0.00000080

 33  1     5    1  |1 1>-       0.00000042  0.00000180 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000213  0.13670893  0.00002779 -0.02869153 -0.34972263 -0.00003277 -0.00000127  0.00000782

 34  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00019144  0.00013869 -0.57729475 -0.00000113 -0.00000243  0.00004362  0.70154001  0.00159998

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000010  0.00000004 -0.00000249  0.00000590  0.00025268 -0.11122503

 36  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00001356  0.00000000  0.00786403  0.09585513  0.00000044  0.00000035 -0.00000215

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000009 -0.00000001 -0.00000000  0.00000000  0.00000000
                               -0.00001391  0.00000000 -0.00000000 -0.09585542  0.00786406  0.00000636  0.00000137 -0.00000020


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000039  0.00000150
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000010 -0.00022294  0.00000000  0.72969681  0.00084976 -0.00000036 -0.00000176  0.00000402
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00022127 -0.00000009 -0.00000000 -0.00084977  0.72969601 -0.00016002 -0.00002617 -0.00000756
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000018  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000005 -0.00000000  0.00000157  0.00000017  0.00015998  0.72982113 -0.00010417  0.00029305
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000001 -0.00000000 -0.00000000  0.00000066  0.00002723  0.00002734  0.70648920  0.18302900
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000001 -0.00000000 -0.00000433  0.00000068 -0.00030972 -0.18298751  0.70633824
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00008992  0.39721292 -0.00000645  0.00008437  0.00000015  0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.39721296 -0.00008992 -0.00000084 -0.00000016  0.00008338  0.00000000 -0.00000000  0.00000000
                               -0.00000007  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000084 -0.00000645 -0.39717592 -0.00000000 -0.00000000  0.00000092 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000884 -0.00003402
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00002917 -0.00678700  0.00000011  0.00004708 -0.00000013 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00118461 -0.27562002  0.00000447  0.22874113 -0.00061723 -0.00000013 -0.00000192  0.00000649
                                0.00000001 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00205527  0.47819541  0.00001347  0.13214013 -0.00035656  0.00000581  0.00000890 -0.00000620
                               -0.00000001  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00001475 -0.00002563  0.00000000 -0.00000022 -0.00000525  0.00015180  0.18716462 -0.18612676
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.00000110 -0.00001348  0.47807597 -0.00000580 -0.00000193  0.13215678 -0.00005725  0.00005020
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.47804001 -0.00205460  0.00000104 -0.00035704 -0.13230941 -0.00000195 -0.00000675  0.00000566
                                0.00000008 -0.00000001  0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+       0.20079889 -0.00086303  0.00000044  0.00114984  0.42611660  0.00000628  0.00000300  0.00000042
                                0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.00000042 -0.00000326 -0.20053241  0.00000021 -0.00000627  0.42577401 -0.00018446  0.00016174
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000700 -0.00000277  0.00001798  0.34694553  0.34836170
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00678658 -0.00002917  0.00000001  0.00000013  0.00004709  0.00000000  0.00000000 -0.00000000

 21  1     2    1  |1 0>       -0.00000005  0.00000001 -0.00000000 -0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000
                                0.27630701 -0.00118756  0.00000060  0.00061674  0.22854972  0.00000336  0.00000161  0.00000022

 22  1     3    1  |1 0>       -0.00000008  0.00000001 -0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000
                                0.47779796 -0.00205357 -0.00002452 -0.00035746 -0.13246742  0.00000512 -0.00000395 -0.00001146

 23  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00002460 -0.00002251 -0.47807350 -0.00000403  0.00000515  0.13216062 -0.00005725  0.00005019

 24  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00002122  0.00000009  0.00000000  0.00000670  0.00000659  0.00006744 -0.06798781 -0.25504895

 25  1     6    1  |1 0>       -0.00000001  0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00205460 -0.47803825  0.00002262 -0.13231432  0.00035703 -0.00000404  0.00000111 -0.00000376

 26  1     7    1  |1 0>        0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00086304  0.20080058 -0.00000326 -0.42611413  0.00114985  0.00000024  0.00000357 -0.00001211

 27  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000756  0.00000324 -0.00025382 -0.47515908  0.12628751

 28  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000042  0.00000325  0.20053526  0.00000022 -0.00000627  0.42577340 -0.00018446  0.00016174

 29  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000011 -0.00676837 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 30  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000117  0.00000896  0.55196628  0.00000000  0.00000000 -0.00019187  0.00000008 -0.00000007

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00002565  0.00002112 -0.00039933 -0.00000597  0.00001096 -0.26431509  0.00011450 -0.00010039

 32  1     4    1  |1 1>-      -0.00000008  0.00000001 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000
                                0.47802380 -0.00205454  0.00000107  0.00035587  0.13187662  0.00001607 -0.00000701 -0.00000201

 33  1     5    1  |1 1>-       0.00000001 -0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00205454  0.47802458 -0.00000774 -0.13187756  0.00035586  0.00001181  0.00000110 -0.00000374

 34  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001486  0.00000007  0.00000000 -0.00000018 -0.00000224 -0.00008437 -0.25516639 -0.06892357

 35  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00001457  0.00000047 -0.00023612 -0.12836783  0.47522471

 36  1     8    1  |1 1>-       0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00086146  0.20043459 -0.00000325  0.42577327 -0.00114893 -0.00000023 -0.00000357  0.00001210

 37  1     9    1  |1 1>-      -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000
                                0.20043587 -0.00086147  0.00000044 -0.00114892 -0.42577505 -0.00000627 -0.00000299 -0.00000042


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00001278  0.00000000  0.00000006
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00064389  0.00000379  0.00000000  0.47351172 -0.00016016 -0.00004072 -0.00000014 -0.00000026
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000380  0.00064146  0.00000000 -0.00016015 -0.47351511 -0.00000176  0.00010871  0.00002030
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000026  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000015  0.00000251 -0.00000017 -0.00010877  0.00003644 -0.47329894 -0.00005558
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000001  0.00000003  0.00000000  0.00000033 -0.00002033  0.00686457  0.00005610 -0.47326357
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000001 -0.00000000  0.00000000 -0.00004075  0.00000147 -0.47378313 -0.00003564 -0.00686636
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.76261935  0.00500497 -0.00000027 -0.00151203  0.00000150  0.00000017 -0.00000000 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00500497  0.76261979  0.00000007  0.00000151  0.00151031  0.00000000  0.00000001  0.00000000
                                0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000027 -0.00000007  0.76287834 -0.00000000  0.00000000  0.00000000  0.00000179  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00035929 -0.00000001 -0.00000181
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00668816  0.00001363 -0.00000000 -0.00021245 -0.00000075  0.00000002  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.15379487  0.00031350 -0.00000005  0.28032323  0.00098807 -0.00003074 -0.00000008 -0.00000025
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.26601055 -0.00054225  0.00001191  0.16182660  0.00057040 -0.00000272 -0.00000723 -0.00000873
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00001420  0.00000830 -0.00000000  0.00002201  0.00000438  0.28103720 -0.00002117 -0.16062117
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+       0.00001191 -0.00000000  0.26605346 -0.00000724  0.00000067  0.00000339 -0.16178857  0.00002725
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00054204  0.26591037  0.00000003 -0.00057113  0.16203301 -0.00000817  0.00000070  0.00000523
                                0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+       0.00061636 -0.30236847 -0.00000003 -0.00196207  0.55665149  0.00000194  0.00000238  0.00000084
                               -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000030 -0.00000000 -0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.00000011 -0.00000003  0.30168686  0.00000017 -0.00000238 -0.00001165  0.55630069 -0.00009370
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.00000001  0.00000001 -0.00000000  0.00003526 -0.00000182  0.31699693  0.00010056  0.55761250
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001363  0.00668870  0.00000000 -0.00000075  0.00021284  0.00000000  0.00000000  0.00000000

 21  1     2    1  |1 0>       -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000  0.00000000
                               -0.00031428  0.15417680  0.00000002  0.00098725 -0.28009142 -0.00000098 -0.00000120 -0.00000042

 22  1     3    1  |1 0>       -0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000009  0.00000000  0.00000000 -0.00000000
                               -0.00054180  0.26578991 -0.00001420 -0.00057182  0.16222988  0.00001299 -0.00000795  0.00000748

 23  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000820 -0.00001417 -0.26605228 -0.00000505 -0.00000800  0.00000339 -0.16179132  0.00002725

 24  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000003 -0.00001180 -0.00000000  0.00003084 -0.00000831  0.27969112  0.00003330  0.16295627

 25  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.26591022  0.00054204  0.00000818 -0.16203452 -0.00057113  0.00001777  0.00000508  0.00000014

 26  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.30237104  0.00061637 -0.00000011  0.55665018  0.00196205 -0.00006103 -0.00000015 -0.00000049

 27  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00000000  0.00003478 -0.00000017  0.32163112 -0.00008675 -0.55495408

 28  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000011  0.00000003 -0.30169126  0.00000016 -0.00000239 -0.00001165  0.55629448 -0.00009370

 29  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00675128 -0.00000000  0.00000000  0.00000000  0.00000039  0.00000000

 30  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000011 -0.00000003  0.30719727 -0.00000000  0.00000000 -0.00000000  0.00023447 -0.00000004

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001186  0.00001421 -0.00022306 -0.00000705 -0.00001006 -0.00000677  0.32357695 -0.00005450

 32  1     4    1  |1 1>-      -0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000  0.00000000
                               -0.00054287  0.26631473  0.00000004  0.00056982 -0.16166346 -0.00000060 -0.00001799  0.00000982

 33  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.26631572 -0.00054287  0.00000010 -0.16166224 -0.00056982  0.00001773 -0.00001433  0.00000015

 34  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000002 -0.00000828 -0.00000000  0.00000012  0.00000455 -0.00134697  0.00005448  0.32358554

 35  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00007059 -0.00000200  0.64369077  0.00001392  0.00267768

 36  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.30143784  0.00061446 -0.00000011 -0.55565852 -0.00195856  0.00006092  0.00000016  0.00000048

 37  1     9    1  |1 1>-       0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000030 -0.00000000 -0.00000000  0.00000000
                                0.00061446 -0.30143955 -0.00000003  0.00195855 -0.55565372 -0.00000194 -0.00000238 -0.00000083


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>       -0.00430943  0.00000000 -0.00000000 -0.00000000  0.00052827
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000003  0.00000147 -0.00046693  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00046861  0.00000147  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000006  0.00000011  0.00000000 -0.00000168 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00001309  0.00000002  0.00000000  0.00000000 -0.00000006
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00116357 -0.00000000 -0.00000001  0.00000000  0.00000100
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00192063 -0.50518166  0.00000009  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.50518088  0.00192063  0.00000024  0.00000000
                                0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000024  0.00000009  0.50485002 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.12682313 -0.00000000  0.00000000  0.00000000  0.99192528
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00000000 -0.00010057 -0.13919811  0.00000002 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00000000  0.00001064  0.01473186 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.00000004 -0.00001897 -0.02625942 -0.00000116 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00072168 -0.00000082  0.00000140  0.00000000 -0.00000128
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00000000  0.00000001  0.00000116 -0.02613735 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.00000002 -0.02624990  0.00001897 -0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+       0.00000001  0.60042356 -0.00043379  0.00000029 -0.00000000
                                0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.00000000  0.00000029 -0.00000011 -0.60144574 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.57371282 -0.00000001  0.00000000  0.00000000 -0.07322749
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.13919840 -0.00010057  0.00000007 -0.00000000

 21  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.01476888  0.00001067 -0.00000001 -0.00000000

 22  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003 -0.02623830  0.00001896  0.00000139 -0.00000000

 23  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000139  0.00000082  0.02613620 -0.00000000

 24  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00072133  0.00000116 -0.00000000  0.00000000 -0.00000123

 25  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00001897  0.02624907 -0.00000082 -0.00000000

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00043380  0.60042484 -0.00000010  0.00000000

 27  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57371339 -0.00000000 -0.00000000  0.00000000 -0.07322821

 28  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000028  0.00000010  0.60144890  0.00000000

 29  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000007 -0.00000002 -0.13918197 -0.00000000

 30  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001 -0.00000001 -0.03017968  0.00000000

 31  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000139 -0.00000115  0.00002255  0.00000000

 32  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.02589941  0.00001871 -0.00000001 -0.00000000

 33  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00001871 -0.02589971  0.00000000  0.00000000

 34  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000037  0.00000081  0.00000000  0.00000000  0.00000004

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.57061499  0.00000001 -0.00000000 -0.00000000  0.07320739

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00043507  0.60219158 -0.00000011  0.00000000

 37  1     9    1  |1 1>-       0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.60219343 -0.00043507  0.00000029 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.54%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.54%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.54%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%   98.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   38.58%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    9.74%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   19.91%    0.00%    0.00%   33.41%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.70%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.70%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%   98.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   38.65%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    9.65%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   20.08%    0.00%    0.00%   33.25%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.22%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.70%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.70%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%   98.05%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   60.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.34%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   51.47%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   51.45%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.70%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.70%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.18%   24.15%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%   24.15%    0.18%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   24.33%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.33%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.31%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    1.41%    0.00%    0.25%   36.68%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%   43.61%    0.00%    0.08%   12.19%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%   33.34%    0.00%    0.00%    0.00%   12.40%   36.82%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   12.30%    0.00%    0.00%
 16  1     6    1  |1 1>+        53.10%    0.00%    0.00%   12.22%    0.08%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.92%    0.01%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.92%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.92%    0.31%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          1.38%    0.00%    0.00%   36.62%    0.25%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>         43.67%    0.00%    0.00%   12.25%    0.08%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   12.30%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%   33.34%    0.00%    0.00%    0.00%   12.20%   37.02%
 25  1     6    1  |1 0>          0.00%   53.11%    0.00%    0.08%   12.22%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.92%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.93%    0.31%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.92%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   49.21%    0.00%    0.00%
 32  1     4    1  |1 1>-         1.85%    0.00%    0.00%   12.23%    0.08%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    1.87%    0.00%    0.08%   12.23%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%   33.33%    0.00%    0.00%    0.00%   49.22%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.24%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.92%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.92%    0.01%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%   53.25%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   53.25%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   53.26%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.91%    3.35%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.35%   49.89%
  7  1     7    1  |0 0>          0.00%   15.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         15.78%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%   15.77%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    7.60%    0.00%    5.23%    0.00%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%   22.87%    0.00%    1.75%    0.00%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.50%    3.46%
 15  1     5    1  |1 1>+         0.00%    0.00%   22.86%    0.00%    0.00%    1.75%    0.00%    0.00%
 16  1     6    1  |1 1>+        22.85%    0.00%    0.00%    0.00%    1.75%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         4.03%    0.00%    0.00%    0.00%   18.16%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    4.02%    0.00%    0.00%   18.13%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   12.04%   12.14%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          7.63%    0.00%    0.00%    0.00%    5.22%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>         22.83%    0.00%    0.00%    0.00%    1.75%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%   22.86%    0.00%    0.00%    1.75%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.46%    6.50%
 25  1     6    1  |1 0>          0.00%   22.85%    0.00%    1.75%    0.00%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    4.03%    0.00%   18.16%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   22.58%    1.59%
 28  1     9    1  |1 0>          0.00%    0.00%    4.02%    0.00%    0.00%   18.13%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%   30.47%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.99%    0.00%    0.00%
 32  1     4    1  |1 1>-        22.85%    0.00%    0.00%    0.00%    1.74%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%   22.85%    0.00%    1.74%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.51%    0.48%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.65%   22.58%
 36  1     8    1  |1 1>-         0.00%    4.02%    0.00%   18.13%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         4.02%    0.00%    0.00%    0.00%   18.13%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%   22.42%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   22.42%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   22.40%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   22.40%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   22.45%    0.00%    0.00%
  7  1     7    1  |0 0>         58.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%   58.16%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%   58.20%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         2.37%    0.00%    0.00%    7.86%    0.00%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         7.08%    0.00%    0.00%    2.62%    0.00%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    7.90%    0.00%    2.58%
 15  1     5    1  |1 1>+         0.00%    0.00%    7.08%    0.00%    0.00%    0.00%    2.62%    0.00%
 16  1     6    1  |1 1>+         0.00%    7.07%    0.00%    0.00%    2.63%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    9.14%    0.00%    0.00%   30.99%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    9.10%    0.00%    0.00%    0.00%   30.95%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   10.05%    0.00%   31.09%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    2.38%    0.00%    0.00%    7.85%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    7.06%    0.00%    0.00%    2.63%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    7.08%    0.00%    0.00%    0.00%    2.62%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    7.82%    0.00%    2.66%
 25  1     6    1  |1 0>          7.07%    0.00%    0.00%    2.63%    0.00%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          9.14%    0.00%    0.00%   30.99%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   10.34%    0.00%   30.80%
 28  1     9    1  |1 0>          0.00%    0.00%    9.10%    0.00%    0.00%    0.00%   30.95%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    9.44%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.47%    0.00%
 32  1     4    1  |1 1>-         0.00%    7.09%    0.00%    0.00%    2.61%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         7.09%    0.00%    0.00%    2.61%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   10.47%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   41.43%    0.00%    0.00%
 36  1     8    1  |1 1>-         9.09%    0.00%    0.00%   30.88%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    9.09%    0.00%    0.00%   30.88%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%   25.52%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%   25.52%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%   25.49%    0.00%
 10  1    10    1  |0 0>          1.61%    0.00%    0.00%    0.00%   98.39%
 11  1     1    1  |1 1>+         0.00%    0.00%    1.94%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.07%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.07%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.07%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%   36.05%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%   36.17%    0.00%
 19  1     9    1  |1 1>+        32.91%    0.00%    0.00%    0.00%    0.54%
 20  1     1    1  |1 0>          0.00%    1.94%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.07%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.07%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.07%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%   36.05%    0.00%    0.00%
 27  1     8    1  |1 0>         32.91%    0.00%    0.00%    0.00%    0.54%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%   36.17%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    1.94%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.09%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.07%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.07%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-        32.56%    0.00%    0.00%    0.00%    0.54%
 36  1     8    1  |1 1>-         0.00%    0.00%   36.26%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%   36.26%    0.00%    0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      596.38       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     44749.09  43130.04      1.60    912.83    700.96      2.03      0.01      1.12
 REAL TIME  *     45211.82 SEC
 DISK USED  *       628.31 MB (local),       18.80 GB (total)
 SF USED    *         3.53 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -528.615391004353

              CI              CI           MULTI         RHF-SCF
   -528.61026093   -528.58345598   -528.14720567   -527.39356306
 **********************************************************************************************************************************
 Molpro calculation terminated
