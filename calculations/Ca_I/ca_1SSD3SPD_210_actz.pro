
 Working directory              : /wrk/irikura/molpro.Z4Y4iLW8cL/
 Global scratch directory       : /wrk/irikura/molpro.Z4Y4iLW8cL/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Z4Y4iLW8cL/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ca SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ca};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=20,sym=1,spin=0}
 
 NSING=7
 NTRIP=9
 
                                                                                 ! Active space (2/10)
 {multi
     closed,3,6
     occ,10,9
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5301.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5301.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ca SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 17-Apr-24          TIME: 12:23:35  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CA     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CA     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CA     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CA     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  CA     20.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   20
 NUMBER OF PRIMITIVE AOS:         167
 NUMBER OF SYMMETRY AOS:          149
 NUMBER OF CONTRACTIONS:           84   (   39Ag  +   45Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     9.175 MB (compressed) written to integral file ( 18.1%)

     Node minimum: 0.262 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     271872.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     271872      RECORD LENGTH: 524288

 Memory used in sort:       0.83 MW

 SORT1 READ     7196526. AND WROTE       58594. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      690439. AND WROTE     3262620. INTEGRALS IN     60 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      270664.  Node maximum:      273888. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910

 Eigenvalues of metric

         1 0.816E-03 0.588E-02 0.214E-01 0.214E-01 0.214E-01 0.214E-01 0.214E-01 0.354E-01
         2 0.501E-02 0.501E-02 0.501E-02 0.129E-01 0.129E-01 0.129E-01 0.110E+00 0.110E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.93       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.93      0.74
 REAL TIME  *         1.42 SEC
 DISK USED  *        29.20 MB (local),      402.76 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   4   6

 NELEC=   20   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -679.62917829    -679.62917829     0.00D+00     0.15D+00     0     0       0.02      0.02    start
   2     -679.62917830      -0.00000001     0.13D-04     0.49D-04     1     0       0.00      0.02    diag
   3     -679.62917830      -0.00000000     0.12D-05     0.19D-04     2     0       0.01      0.03    diag
   4     -679.62917830      -0.00000000     0.23D-06     0.67D-05     3     0       0.00      0.03    diag
   5     -679.62917830      -0.00000000     0.57D-07     0.52D-05     4     0       0.00      0.03    diag
   6     -679.62917830      -0.00000000     0.12D-07     0.93D-06     5     0       0.00      0.03    diag
   7     -679.62917830       0.00000000     0.21D-08     0.91D-07     0     0       0.01      0.04    diag

 Final occupancy:   4   6

 !RHF STATE 1.1 Energy               -679.629178299213
  RHF One-electron energy            -930.343757367981
  RHF Two-electron energy             250.714579068767
  RHF Kinetic energy                  697.268385643523
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.974702413436

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.10826     1  1  s    0.99989
    2.1     2.00000   -16.96320     1  2  s    1.00106
    3.1     2.00000    -2.26168     1  3  s    0.99769
    4.1     2.00000    -0.19630     1  4  s    1.00277
    1.2     2.00000   -13.63704     1  1  pz   0.99998
    2.2     2.00000   -13.63704     1  1  py   0.99230
    3.2     2.00000   -13.63704     1  1  px   0.99229
    4.2     2.00000    -1.33891     1  2  pz   0.99994
    5.2     2.00000    -1.33891     1  2  py   0.99994
    6.2     2.00000    -1.33891     1  2  px   0.99994


 HOMO      4.1    -0.196295 =      -5.3415eV
 LUMO      7.2     0.010858 =       0.2955eV
 LUMO-HOMO         0.207153 =       5.6369eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.93       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        2.68       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.99      0.06      0.74
 REAL TIME  *         1.49 SEC
 DISK USED  *        31.85 MB (local),      434.57 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         7.00000000                                  
 SETTING NTRIP          =         9.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (   3   6 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      65 (  29  36 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.292D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.290D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.478D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.480D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.157D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 4 6 3 5 2   1 2 4 6 3 5 2 4 6 3   5 1 2 4 6 3 5 1 4 6   5 3 2 1 6 4 5 3 2
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.469D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.112D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.114D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.998D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.151D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.153D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.297D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.297D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 1 2 3   2 1 3 2 1 4 5 6 9 7  10 8 3 2 1 4 5 6 9 7  10 8 3 2 1 4 5 810 6
                                        7 9 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250
 
 Number of orbital rotations:  653  ( 39 closed/active, 303 closed/virtual, 0 active/active, 311 active/virtual )
 Total number of variables:    1275
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   26    5   -679.46959695    -679.53512475   -0.06552781    0.05163280 0.00004001 0.00000000  0.23E+01      0.63
   2    8   14    0   -679.53178910    -679.53384578   -0.00205668    0.05259814 0.00001335 0.00000000  0.23E+00      1.11
   3    8   14    0   -679.53384886    -679.53384914   -0.00000028    0.00032447 0.00000000 0.00000000  0.51E-02      1.60
   4    3    6    0   -679.53384914    -679.53384914   -0.00000000    0.00000040 0.00000001 0.00000000  0.87E-06      1.86

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.62E-09)
                       Final energy:   -679.53384914
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -679.653912002364
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.96652976
 One electron energy                          -929.92513758
 Two electron energy                           250.27122558
 Virial ratio                                    1.97516004
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -679.542816112290
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.23473926
 One electron energy                          -930.75859357
 Two electron energy                           251.21577746
 Virial ratio                                    1.97462559
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -679.542816112290
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.23473926
 One electron energy                          -930.75859357
 Two electron energy                           251.21577746
 Virial ratio                                    1.97462559
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -679.542816112284
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.23473926
 One electron energy                          -930.75859357
 Two electron energy                           251.21577746
 Virial ratio                                    1.97462559
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -679.542816112280
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.23473926
 One electron energy                          -930.75859357
 Two electron energy                           251.21577746
 Virial ratio                                    1.97462559
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -679.542816112276
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.23473926
 One electron energy                          -930.75859357
 Two electron energy                           251.21577746
 Virial ratio                                    1.97462559
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -679.499448564376
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.73045081
 One electron energy                          -927.29207970
 Two electron energy                           247.79263114
 Virial ratio                                    1.97526877
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -679.542630193837
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.38649988
 One electron energy                          -931.56132476
 Two electron energy                           252.01869457
 Virial ratio                                    1.97441323
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -679.542630193820
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.38649988
 One electron energy                          -931.56132476
 Two electron energy                           252.01869457
 Virial ratio                                    1.97441323
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -679.542630193820
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.38649988
 One electron energy                          -931.56132476
 Two electron energy                           252.01869457
 Virial ratio                                    1.97441323
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -679.542630193819
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.38649988
 One electron energy                          -931.56132476
 Two electron energy                           252.01869457
 Virial ratio                                    1.97441323
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -679.542630193819
 Nuclear energy                                  0.00000000
 Kinetic energy                                697.38649988
 One electron energy                          -931.56132476
 Two electron energy                           252.01869457
 Virial ratio                                    1.97441323
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -679.509827429955
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.63596467
 One electron energy                          -926.93340463
 Two electron energy                           247.42357720
 Virial ratio                                    1.97541594
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -679.483722248261
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.92465354
 One electron energy                          -929.00908782
 Two electron energy                           249.52536557
 Virial ratio                                    1.97497444
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -679.483722248261
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.92465354
 One electron energy                          -929.00908782
 Two electron energy                           249.52536557
 Virial ratio                                    1.97497444
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -679.483722248258
 Nuclear energy                                  0.00000000
 Kinetic energy                                696.92465354
 One electron energy                          -929.00908782
 Two electron energy                           249.52536557
 Virial ratio                                    1.97497444
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000281452801
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999717181909
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000007670960
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.021745289434
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.978248404896
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.001865898704
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000769041434
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000181542556
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.998117573684
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999065943621
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.000002091845
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999997908268
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999887
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999718452055
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000281508228
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000009235678
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.978080294026
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.021910510013
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     2.998130711052
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.001598783434
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.997800025708
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.002299799676
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000170680129
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999997908276
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.000002152240
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999939484
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000095144
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000001309863
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999983093362
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.000174416540
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.999841085091
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000003390244
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.997632175132
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.002018431735
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999582626639
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000763376250
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999999879
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999939492
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000060629
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    -0.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -150.11561     1  1  s    0.99989
    2.1     2.00000   -16.96134     1  2  s    1.00103
    3.1     2.00000    -2.25851     1  3  s    0.98716
    4.1     0.78497    -0.09990     1  4  s    1.14372
    5.1     0.12684     0.02682     1  4  s   -0.87460    1  9  s    1.53157
    6.1     0.11917     0.08997     1  1  d0   0.84717
    7.1     0.11917     0.08997     1  1  d1+  0.84717
    8.1     0.11917     0.08997     1  1  d1-  0.84717
    9.1     0.11917     0.08997     1  1  d2+  0.84717
   10.1     0.11917     0.08997     1  1  d2-  0.84717
    1.2     2.00000   -13.63752     1  1  py   1.00015
    2.2     2.00000   -13.63752     1  1  px   1.00015
    3.2     2.00000   -13.63752     1  1  pz   1.00015
    4.2     2.00000    -1.34289     1  2  pz   0.99430
    5.2     2.00000    -1.34289     1  2  py   0.99430
    6.2     2.00000    -1.34289     1  2  px   0.99430
    7.2     0.16412     0.02958     1  3  py   1.00196
    8.2     0.16412     0.02958     1  3  px   1.00196
    9.2     0.16412     0.02958     1  3  pz   1.00196
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.565D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.565D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.306D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.148D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.527D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.940D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.940D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.984D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.984D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.396D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.396D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.633D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.633D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.336D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.336D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.149D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.140D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.118D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.443D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.443D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.521D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 4 6 5 3   4 6 3 5 2 1 2 4 6 3   5 1 2 3 5 4 6 1 5 3   4 6 2 1 6 4 5 3 2
 *** IN SYMMETRY  2 ORBITAL  10 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.437D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  12 SYMMETRY CONTAMINATION OF 0.579D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  15 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  16 SYMMETRY CONTAMINATION OF 0.134D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  17 SYMMETRY CONTAMINATION OF 0.134D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  18 SYMMETRY CONTAMINATION OF 0.666D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  19 SYMMETRY CONTAMINATION OF 0.275D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  20 SYMMETRY CONTAMINATION OF 0.562D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  21 SYMMETRY CONTAMINATION OF 0.993D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  22 SYMMETRY CONTAMINATION OF 0.993D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.618D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.618D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.410D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.410D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.580D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.580D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.567D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.567D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.614D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.614D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.655D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.655D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.397D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.397D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.232D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.222D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.140D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 2 1 3 2   1 3 3 2 1 4 5 9 7 6  10 8 3 2 1 4 5 6 9 7   810 3 2 1 4 510 8 7
                                        9 6 2 1 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000 000      0.95584608      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.01511922
 ab00000 000     -0.00763349      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.69699067
 ba00000 000      0.00763349     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.69699067
 b00000a 000      0.00000000     -0.00012013     -0.00043720     -0.61325564     -0.00119815      0.00016558      0.00000000
 a00000b 000     -0.00000000      0.00012013      0.00043720      0.61325564      0.00119815     -0.00016558     -0.00000000
 a0000b0 000     -0.00000000      0.00007757      0.00000516      0.00015802      0.00385662      0.61324485     -0.00000000
 b0000a0 000      0.00000000     -0.00007757     -0.00000516     -0.00015802     -0.00385662     -0.61324485      0.00000000
 b0a0000 000      0.00000000     -0.00013143      0.00020560      0.00119905     -0.61324365      0.00385632      0.00000000
 a0b0000 000     -0.00000000      0.00013143     -0.00020560     -0.00119905      0.61324365     -0.00385632     -0.00000000
 b00a000 000      0.00000000     -0.61322804     -0.00595618      0.00012414      0.00013015      0.00007677      0.00000000
 a00b000 000     -0.00000000      0.61322804      0.00595618     -0.00012414     -0.00013015     -0.00007677     -0.00000000
 a000b00 000      0.00000000     -0.00595623      0.61322788     -0.00043642      0.00020599     -0.00000559      0.00000000
 b000a00 000     -0.00000000      0.00595623     -0.61322788      0.00043642     -0.00020599      0.00000559     -0.00000000
 0000000 002     -0.16609993     -0.00008634      0.00013507      0.00078770     -0.40286198      0.00253336      0.00611446
 0000000 020     -0.16609993     -0.00000096     -0.00007047     -0.00048375      0.19923687     -0.35015607      0.00611446
 0000000 ab0      0.00000000     -0.00006834     -0.00024873     -0.34889553     -0.00068166      0.00009420      0.00000000
 0000000 ba0     -0.00000000      0.00006834      0.00024873      0.34889553      0.00068166     -0.00009420     -0.00000000
 0000000 0ab      0.00000000     -0.34887983     -0.00338861      0.00007062      0.00007405      0.00004368      0.00000000
 0000000 0ba     -0.00000000      0.34887983      0.00338861     -0.00007062     -0.00007405     -0.00004368     -0.00000000
 0000000 a0b      0.00000000      0.00338864     -0.34887974      0.00024829     -0.00011719      0.00000318     -0.00000000
 0000000 b0a     -0.00000000     -0.00338864      0.34887974     -0.00024829      0.00011719     -0.00000318      0.00000000
 0000000 200     -0.16609993      0.00008730     -0.00006460     -0.00030395      0.20362511      0.34762271      0.00611446
 0200000 000     -0.01452847     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.15868290
 
 Energy:       -679.65391200   -679.54281611   -679.54281611   -679.54281611   -679.54281611   -679.54281611   -679.49944856
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 aa00000 000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      1.00000000     -0.00000000
 a0a0000 000      0.99992413      0.00070844     -0.00021008     -0.00053975      0.00024814     -0.00000000      0.00000000
 a0000a0 000      0.00053504      0.00944501      0.01094027      0.99981943      0.00104171     -0.00000000      0.00000000
 a000a00 000     -0.00026095      0.01474481     -0.00866965     -0.00108596      0.99977765      0.00000000      0.00000000
 a00a000 000      0.00018314      0.02646788      0.99947734     -0.01119527      0.00826458     -0.00000000      0.00000000
 a00000a 000     -0.00071485      0.99942058     -0.02644472     -0.00913589     -0.01497898     -0.00000000      0.00000000
 0000000 aa0      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00007478
 0000000 a0a      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.93784919
 0000000 0aa     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00219203
 00000aa 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00002475
 00a0a00 000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.26881231
 00aa000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00062829
 000aa00 000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00001237
 0000aa0 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.15519886
 000a00a 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.15519886
 000a0a0 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00036274
 0000a0a 000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00036274
 
 Energy:       -679.54263019   -679.54263019   -679.54263019   -679.54263019   -679.54263019   -679.50982743   -679.48372225

 State:                8               9
 aa00000 000      0.00000000      0.00000000
 a0a0000 000     -0.00000000     -0.00000000
 a0000a0 000      0.00000000     -0.00000000
 a000a00 000     -0.00000000     -0.00000000
 a00a000 000      0.00000000     -0.00000000
 a00000a 000     -0.00000000      0.00000000
 0000000 aa0      0.00025673      0.93785172
 0000000 a0a     -0.00219205     -0.00007418
 0000000 0aa      0.93784916     -0.00025690
 00000aa 000      0.00008497      0.31039855
 00a0a00 000     -0.00062830     -0.00002126
 00aa000 000      0.26881230     -0.00007364
 000aa00 000      0.00004248      0.15519928
 0000aa0 000      0.00036275      0.00001228
 000a00a 000     -0.00036275     -0.00001228
 000a0a0 000      0.15519885     -0.00004251
 0000a0a 000      0.15519885     -0.00004251
 
 Energy:       -679.48372225   -679.48372225
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.19       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.61      1.62      0.06      0.74
 REAL TIME  *         3.64 SEC
 DISK USED  *        42.01 MB (local),      556.49 MB (total)
 SF USED    *        21.82 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -679.6539120  -0.0
    -679.5428161   6.0
    -679.5428161   6.0
    -679.5428161   6.0
    -679.5428161   6.0
    -679.5428161   6.0
    -679.4994486  -0.0
    -679.5426302   6.0
    -679.5426302   6.0
    -679.5426302   6.0
    -679.5426302   6.0
    -679.5426302   6.0
    -679.5098274  -0.0
    -679.4837222   2.0
    -679.4837222   2.0
    -679.4837222   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 20
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:     7045 conf    15565 CSFs
 N-1 el internal:     2330 conf     6410 CSFs
 N-2 el internal:      381 conf     1153 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      65 (  29  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.52 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -679.65391200
     2      -679.54281611
     3      -679.54281611
     4      -679.54281611
     5      -679.54281611
     6      -679.54281611
     7      -679.49944856

 Number of blocks in overlap matrix:   169   Smallest eigenvalue:  0.60D+00
 Number of N-2 electron functions:     193
 Number of N-1 electron functions:    6410

 Number of internal configurations:                 7851
 Number of singly external configurations:        208143
 Number of doubly external configurations:        204958
 Total number of contracted configurations:       420952
 Total number of uncontracted configurations:    1435501

 Diagonal Coupling coefficients finished.               Storage: 3046226 words, CPU-Time:      0.31 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  224298 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -679.65391200    -0.00000000    -0.23046419  0.30D-01  0.32D-01     0.68
    1     2     2     1.00000000     0.00000000  -679.54281611     0.00000000    -0.23934281  0.32D-01  0.36D-01     0.68
    1     3     3     1.00000000     0.00000000  -679.54281611     0.00000000    -0.23945048  0.32D-01  0.36D-01     0.68
    1     4     4     1.00000000     0.00000000  -679.54281611     0.00000000    -0.23955780  0.32D-01  0.36D-01     0.68
    1     5     5     1.00000000     0.00000000  -679.54281611     0.00000000    -0.23905926  0.32D-01  0.36D-01     0.68
    1     6     6     1.00000000     0.00000000  -679.54281611     0.00000000    -0.23930728  0.32D-01  0.36D-01     0.68
    1     7     7     1.00000000     0.00000000  -679.49944856     0.00000000    -0.22957580  0.45D-01  0.31D-01     0.68
    2     1     1     1.05557786    -0.23614759  -679.89005959    -0.23614759    -0.00390701  0.12D-02  0.40D-03     4.13
    2     2     2     1.05915488    -0.23727158  -679.78008769    -0.23727158    -0.00407406  0.15D-02  0.45D-03     4.13
    2     3     3     1.05923221    -0.23726370  -679.78007981    -0.23726370    -0.00408657  0.15D-02  0.45D-03     4.13
    2     4     4     1.05930687    -0.23725046  -679.78006657    -0.23725046    -0.00410143  0.15D-02  0.46D-03     4.13
    2     5     5     1.05930428    -0.23724859  -679.78006470    -0.23724859    -0.00410077  0.15D-02  0.45D-03     4.13
    2     6     6     1.05930926    -0.23724262  -679.78005874    -0.23724262    -0.00410801  0.15D-02  0.46D-03     4.13
    2     7     7     1.06804497    -0.23552815  -679.73497672    -0.23552815    -0.00519254  0.26D-02  0.64D-03     4.13
    3     1     1     1.05694776    -0.24020234  -679.89411435    -0.00405476    -0.00015825  0.34D-04  0.19D-04     7.32
    3     2     2     1.06058688    -0.24152680  -679.78434291    -0.00425522    -0.00022263  0.59D-04  0.33D-04     7.32
    3     3     3     1.06057914    -0.24152663  -679.78434274    -0.00426293    -0.00022262  0.59D-04  0.33D-04     7.32
    3     4     4     1.06058731    -0.24152592  -679.78434203    -0.00427546    -0.00022334  0.60D-04  0.33D-04     7.32
    3     5     5     1.06058355    -0.24152511  -679.78434122    -0.00427652    -0.00022400  0.60D-04  0.33D-04     7.32
    3     6     6     1.06058032    -0.24152465  -679.78434076    -0.00428203    -0.00022420  0.60D-04  0.33D-04     7.32
    3     7     7     1.06468478    -0.24055282  -679.74000138    -0.00502467    -0.00024752  0.70D-04  0.36D-04     7.32
    4     1     1     1.05765188    -0.24037978  -679.89429178    -0.00017743    -0.00000831  0.32D-05  0.88D-06    10.52
    4     2     2     1.06191048    -0.24179679  -679.78461290    -0.00026999    -0.00002563  0.23D-04  0.18D-05    10.52
    4     3     3     1.06191058    -0.24179662  -679.78461273    -0.00026999    -0.00002575  0.23D-04  0.18D-05    10.52
    4     4     4     1.06191010    -0.24179638  -679.78461249    -0.00027046    -0.00002595  0.23D-04  0.18D-05    10.52
    4     5     5     1.06191096    -0.24179632  -679.78461244    -0.00027122    -0.00002597  0.23D-04  0.18D-05    10.52
    4     6     6     1.06191016    -0.24179631  -679.78461242    -0.00027166    -0.00002599  0.23D-04  0.18D-05    10.52
    4     7     7     1.06571757    -0.24082319  -679.74027176    -0.00027038    -0.00001316  0.55D-05  0.16D-05    10.52
    5     1     1     1.05785154    -0.24038942  -679.89430142    -0.00000964    -0.00000041  0.19D-06  0.46D-07    13.69
    5     2     2     1.06258625    -0.24183299  -679.78464910    -0.00003620    -0.00000336  0.16D-05  0.32D-06    13.69
    5     3     3     1.06258485    -0.24183296  -679.78464907    -0.00003634    -0.00000339  0.16D-05  0.32D-06    13.69
    5     4     4     1.06258381    -0.24183290  -679.78464902    -0.00003652    -0.00000344  0.17D-05  0.32D-06    13.69
    5     5     5     1.06258326    -0.24183290  -679.78464901    -0.00003658    -0.00000344  0.17D-05  0.32D-06    13.69
    5     6     6     1.06258305    -0.24183289  -679.78464901    -0.00003658    -0.00000345  0.17D-05  0.32D-06    13.69
    5     7     7     1.06585180    -0.24083883  -679.74028739    -0.00001564    -0.00000084  0.62D-06  0.11D-06    13.69
    6     1     1     1.05787509    -0.24038989  -679.89430189    -0.00000047    -0.00000003  0.99D-08  0.41D-08    16.77
    6     2     2     1.06265988    -0.24183732  -679.78465343    -0.00000433    -0.00000038  0.14D-06  0.40D-07    16.77
    6     3     3     1.06265932    -0.24183731  -679.78465343    -0.00000435    -0.00000038  0.15D-06  0.41D-07    16.77
    6     4     4     1.06265917    -0.24183730  -679.78465342    -0.00000440    -0.00000039  0.15D-06  0.42D-07    16.77
    6     5     5     1.06265909    -0.24183730  -679.78465341    -0.00000440    -0.00000039  0.15D-06  0.42D-07    16.77
    6     6     6     1.06265898    -0.24183730  -679.78465341    -0.00000441    -0.00000039  0.15D-06  0.42D-07    16.77
    6     7     7     1.06582771    -0.24083984  -679.74028841    -0.00000101    -0.00000009  0.43D-07  0.18D-07    16.77
    7     1     1     1.05788651    -0.24038992  -679.89430192    -0.00000003    -0.00000000  0.11D-08  0.23D-09    19.82
    7     2     2     1.06269277    -0.24183774  -679.78465385    -0.00000042    -0.00000004  0.38D-07  0.34D-08    19.82
    7     3     3     1.06269248    -0.24183774  -679.78465385    -0.00000043    -0.00000004  0.38D-07  0.34D-08    19.82
    7     4     4     1.06269199    -0.24183774  -679.78465385    -0.00000044    -0.00000004  0.39D-07  0.35D-08    19.82
    7     5     5     1.06269193    -0.24183774  -679.78465385    -0.00000044    -0.00000004  0.39D-07  0.35D-08    19.82
    7     6     6     1.06269200    -0.24183774  -679.78465385    -0.00000044    -0.00000004  0.39D-07  0.35D-08    19.82
    7     7     7     1.06583930    -0.24083996  -679.74028852    -0.00000012    -0.00000001  0.96D-08  0.17D-08    19.82
    8     1     1     1.05788767    -0.24038992  -679.89430193    -0.00000000    -0.00000000  0.27D-09  0.90D-10    22.58
    8     2     2     1.06271016    -0.24183779  -679.78465390    -0.00000005    -0.00000001  0.38D-08  0.65D-09    22.58
    8     3     3     1.06271007    -0.24183779  -679.78465390    -0.00000005    -0.00000001  0.39D-08  0.66D-09    22.58
    8     4     4     1.06270992    -0.24183779  -679.78465390    -0.00000005    -0.00000001  0.41D-08  0.66D-09    22.58
    8     5     5     1.06270990    -0.24183779  -679.78465390    -0.00000005    -0.00000001  0.41D-08  0.66D-09    22.58
    8     6     6     1.06270990    -0.24183779  -679.78465390    -0.00000005    -0.00000001  0.41D-08  0.66D-09    22.58
    8     7     7     1.06583598    -0.24083997  -679.74028854    -0.00000001    -0.00000000  0.30D-09  0.12D-09    22.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  12.5%
 S   8.3%  28.7%
 P   1.1%  21.0%  11.3%

 Initialization:   1.7%
 Other:           15.4%

 Total CPU:       22.6 seconds
 =====================================



 gnormi=  0.94527994  gnorms=  0.02535700  gnormp=  0.02936305  gnorm=  1.00000000
 ecorri= -0.22723577  ecorrs= -0.00609612  ecorrp= -0.00705803  ecorr= -0.24038992

 gnormi=  0.94099035  gnorms=  0.02675713  gnormp=  0.03225252  gnorm=  1.00000000
 ecorri= -0.22756703  ecorrs= -0.00647078  ecorrp= -0.00779998  ecorr= -0.24183779

 gnormi=  0.94099043  gnorms=  0.02675709  gnormp=  0.03225248  gnorm=  1.00000000
 ecorri= -0.22756704  ecorrs= -0.00647072  ecorrp= -0.00780003  ecorr= -0.24183779

 gnormi=  0.94099056  gnorms=  0.02675692  gnormp=  0.03225252  gnorm=  1.00000000
 ecorri= -0.22756708  ecorrs= -0.00647073  ecorrp= -0.00779998  ecorr= -0.24183779

 gnormi=  0.94099058  gnorms=  0.02675693  gnormp=  0.03225249  gnorm=  1.00000000
 ecorri= -0.22756708  ecorrs= -0.00647069  ecorrp= -0.00780002  ecorr= -0.24183779

 gnormi=  0.94099058  gnorms=  0.02675689  gnormp=  0.03225253  gnorm=  1.00000000
 ecorri= -0.22756708  ecorrs= -0.00647075  ecorrp= -0.00779996  ecorr= -0.24183779

 gnormi=  0.93823067  gnorms=  0.03279838  gnormp=  0.02897095  gnorm=  1.00000000
 ecorri= -0.22596345  ecorrs= -0.00789956  ecorrp= -0.00697697  ecorr= -0.24083997

 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\00000222000          -0.0495979  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.9475441
 22000000222000           0.9327909  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0494591
 2/00000\222000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.8642951  -0.0000000  -0.0000000
 2/000\00222000          -0.0000000  -0.0000000   0.0000000   0.8642951  -0.0000000  -0.0000000  -0.0000000
 2/00\000222000           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8642951   0.0000000
 2/0\0000222000           0.0000000   0.8631393  -0.0446854   0.0000000   0.0000000   0.0000000  -0.0000000
 2/0000\0222000          -0.0000000   0.0446854   0.8631393  -0.0000000  -0.0000000   0.0000000   0.0000001
 200000002220/\           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.4308830  -0.0000000
 20000000222/0\          -0.0000000  -0.0000000   0.0000000  -0.4308830  -0.0000000  -0.0000000  -0.0000000
 20000000222/\0          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.4308830  -0.0000000   0.0000000
 20000000222002          -0.1447649  -0.3513436   0.0181894   0.0000000   0.0000000  -0.0000000  -0.0118957
 20000000222020          -0.1447649   0.1599193  -0.3133672  -0.0000000  -0.0000000  -0.0000000  -0.0118955
 20000000222200          -0.1447649   0.1914242   0.2951779   0.0000000   0.0000000   0.0000000  -0.0118957
 20200000222000          -0.0112737  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1714283

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20\00000222000  22.1     0.0117893   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0521463

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.967754   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.038769
 2          -0.000000   -0.000000   -0.000000   -0.000000    0.963711    0.067302   -0.000000
 3          -0.000000   -0.000000   -0.000000    0.000000   -0.067302    0.963711    0.000000
 4           0.000000   -0.000000    0.966058    0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.966058   -0.000000    0.000000    0.000000
 6           0.000000    0.966058   -0.000000    0.000000    0.000000    0.000000   -0.000000
 7           0.042757    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.964267

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968528   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.002066
 2          -0.000000    0.966058    0.000000   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.966058    0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.966058    0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.966058    0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.966058   -0.000000
 7           0.002066    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.965212


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96775428 (fixed)   0.96898022 (relaxed)   0.96852833 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00771051   -0.01730009   -0.16302529
 Singles      0.02703170   -0.07786039   -0.07913283
 Pairs        0.03130232    0.00940916    0.00176820
 Total        1.06604453   -0.08575132   -0.24038992
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.65363745
 Nuclear energy                         0.00000000
 Kinetic energy                       697.34638861
 One electron energy                 -930.29444679
 Two electron energy                  250.40014486
 Virial quotient                       -0.97497358
 Correlation energy                    -0.24066448
 !MRCI STATE 1.1 Energy              -679.894301925597

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.91019650 (Davidson, fixed reference)
 Cluster corrected energies          -679.90995725 (Davidson, relaxed reference)
 Cluster corrected energies          -679.91019650 (Davidson, rotated reference)

 Cluster corrected energies          -679.90753225 (Pople, fixed reference)
 Cluster corrected energies          -679.90732533 (Pople, relaxed reference)
 Cluster corrected energies          -679.90753225 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96371084 (fixed)   0.96756462 (relaxed)   0.96605805 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00827437   -0.01352261   -0.15701777
 Singles      0.02867036   -0.07559377   -0.07702004
 Pairs        0.03455868   -0.00000000   -0.00779998
 Total        1.07150341   -0.08911638   -0.24183779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54281611
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22144707
 One electron energy                 -930.87135086
 Two electron energy                  251.08669696
 Virial quotient                       -0.97499103
 Correlation energy                    -0.24183779
 !MRCI STATE 2.1 Energy              -679.784653901960

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80194613 (Davidson, fixed reference)
 Cluster corrected energies          -679.80113978 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80194613 (Davidson, rotated reference)

 Cluster corrected energies          -679.79909490 (Pople, fixed reference)
 Cluster corrected energies          -679.79839395 (Pople, relaxed reference)
 Cluster corrected energies          -679.79909490 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96371089 (fixed)   0.96756466 (relaxed)   0.96605809 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00827435   -0.01352261   -0.15701772
 Singles      0.02867031   -0.07559384   -0.07702004
 Pairs        0.03455864    0.00000000   -0.00780003
 Total        1.07150330   -0.08911644   -0.24183779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54281611
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22144829
 One electron energy                 -930.87134505
 Two electron energy                  251.08669115
 Virial quotient                       -0.97499102
 Correlation energy                    -0.24183779
 !MRCI STATE 3.1 Energy              -679.784653901806

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80194610 (Davidson, fixed reference)
 Cluster corrected energies          -679.80113976 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80194610 (Davidson, rotated reference)

 Cluster corrected energies          -679.79909488 (Pople, fixed reference)
 Cluster corrected energies          -679.79839393 (Pople, relaxed reference)
 Cluster corrected energies          -679.79909488 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96605818 (fixed)   0.96756473 (relaxed)   0.96605818 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00827431   -0.01352261   -0.15701778
 Singles      0.02867012   -0.07559379   -0.07702003
 Pairs        0.03455868    0.00000000   -0.00779998
 Total        1.07150311   -0.08911640   -0.24183779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54281611
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22144925
 One electron energy                 -930.87133365
 Two electron energy                  251.08667975
 Virial quotient                       -0.97499102
 Correlation energy                    -0.24183779
 !MRCI STATE 4.1 Energy              -679.784653901540

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80194606 (Davidson, fixed reference)
 Cluster corrected energies          -679.80113972 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80194606 (Davidson, rotated reference)

 Cluster corrected energies          -679.79909484 (Pople, fixed reference)
 Cluster corrected energies          -679.79839390 (Pople, relaxed reference)
 Cluster corrected energies          -679.79909484 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96605819 (fixed)   0.96756474 (relaxed)   0.96605819 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00827431   -0.01352261   -0.15701773
 Singles      0.02867014   -0.07559385   -0.07702004
 Pairs        0.03455864   -0.00000000   -0.00780002
 Total        1.07150309   -0.08911645   -0.24183779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54281611
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22144828
 One electron energy                 -930.87133279
 Two electron energy                  251.08667889
 Virial quotient                       -0.97499102
 Correlation energy                    -0.24183779
 !MRCI STATE 5.1 Energy              -679.784653901536

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80194605 (Davidson, fixed reference)
 Cluster corrected energies          -679.80113972 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80194605 (Davidson, rotated reference)

 Cluster corrected energies          -679.79909483 (Pople, fixed reference)
 Cluster corrected energies          -679.79839390 (Pople, relaxed reference)
 Cluster corrected energies          -679.79909483 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96605819 (fixed)   0.96756474 (relaxed)   0.96605819 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00827430   -0.01352260   -0.15701780
 Singles      0.02867009   -0.07559377   -0.07702003
 Pairs        0.03455869    0.00000000   -0.00779996
 Total        1.07150308   -0.08911638   -0.24183779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54281611
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22144804
 One electron energy                 -930.87133174
 Two electron energy                  251.08667784
 Virial quotient                       -0.97499102
 Correlation energy                    -0.24183779
 !MRCI STATE 6.1 Energy              -679.784653901515

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80194605 (Davidson, fixed reference)
 Cluster corrected energies          -679.80113972 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80194605 (Davidson, rotated reference)

 Cluster corrected energies          -679.79909483 (Pople, fixed reference)
 Cluster corrected energies          -679.79839390 (Pople, relaxed reference)
 Cluster corrected energies          -679.79909483 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96426675 (fixed)   0.96557956 (relaxed)   0.96521205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00708043   -0.01664145   -0.01733415
 Singles      0.03520521   -0.08084668   -0.08321910
 Pairs        0.03109692   -0.14309237   -0.14028673
 Total        1.07338255   -0.24058050   -0.24083997
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.49972312
 Nuclear energy                         0.00000000
 Kinetic energy                       697.17379331
 One electron energy                 -927.60111381
 Two electron energy                  247.86082527
 Virial quotient                       -0.97499403
 Correlation energy                    -0.24056542
 !MRCI STATE 7.1 Energy              -679.740288539340

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.75794184 (Davidson, fixed reference)
 Cluster corrected energies          -679.75774532 (Davidson, relaxed reference)
 Cluster corrected energies          -679.75794184 (Davidson, rotated reference)

 Cluster corrected energies          -679.75504773 (Pople, fixed reference)
 Cluster corrected energies          -679.75487627 (Pople, relaxed reference)
 Cluster corrected energies          -679.75504773 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       29.12       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        28.06     25.44      1.62      0.06      0.74
 REAL TIME  *        30.96 SEC
 DISK USED  *        65.95 MB (local),      843.68 MB (total)
 SF USED    *       258.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -679.91019650  AU                              
 SETTING HLSDIAG(2)     =      -679.80194613  AU                              
 SETTING HLSDIAG(3)     =      -679.80194610  AU                              
 SETTING HLSDIAG(4)     =      -679.80194606  AU                              
 SETTING HLSDIAG(5)     =      -679.80194605  AU                              
 SETTING HLSDIAG(6)     =      -679.80194605  AU                              
 SETTING HLSDIAG(7)     =      -679.75794184  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 20
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:     6729 conf    23769 CSFs
 N-1 el internal:     1910 conf     9566 CSFs
 N-2 el internal:      281 conf     1705 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      65 (  29  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -679.54263019
     2      -679.54263019
     3      -679.54263019
     4      -679.54263019
     5      -679.54263019
     6      -679.50982743
     7      -679.48372225
     8      -679.48372225
     9      -679.48372225

 Number of blocks in overlap matrix:   201   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     225
 Number of N-1 electron functions:    9566

 Number of internal configurations:                11838
 Number of singly external configurations:        310846
 Number of doubly external configurations:        239051
 Total number of contracted configurations:       561735
 Total number of uncontracted configurations:    2116144

 Diagonal Coupling coefficients finished.               Storage: 4337576 words, CPU-Time:      0.57 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  234415 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -679.54263019     0.00000000    -0.24918231  0.36D-01  0.38D-01     1.11
    1     2     2     1.00000000     0.00000000  -679.54263019    -0.00000000    -0.24919184  0.36D-01  0.38D-01     1.11
    1     3     3     1.00000000     0.00000000  -679.54263019     0.00000000    -0.24920162  0.36D-01  0.38D-01     1.11
    1     4     4     1.00000000     0.00000000  -679.54263019     0.00000000    -0.24919219  0.36D-01  0.38D-01     1.11
    1     5     5     1.00000000     0.00000000  -679.54263019     0.00000000    -0.24920101  0.36D-01  0.38D-01     1.11
    1     6     6     1.00000000     0.00000000  -679.50982743    -0.00000000    -0.22470804  0.38D-01  0.29D-01     1.11
    1     7     7     1.00000000     0.00000000  -679.48372225     0.00000000    -0.22735771  0.32D-01  0.32D-01     1.11
    1     8     8     1.00000000     0.00000000  -679.48372225     0.00000000    -0.22735761  0.32D-01  0.32D-01     1.11
    1     9     9     1.00000000     0.00000000  -679.48372225     0.00000000    -0.22733938  0.32D-01  0.32D-01     1.11
    2     1     1     1.06200860    -0.24280791  -679.78543810    -0.24280791    -0.00432065  0.15D-02  0.42D-03     7.32
    2     2     2     1.06201952    -0.24280201  -679.78543221    -0.24280201    -0.00432593  0.15D-02  0.42D-03     7.32
    2     3     3     1.06203040    -0.24279915  -679.78542935    -0.24279915    -0.00432684  0.15D-02  0.42D-03     7.32
    2     4     4     1.06202309    -0.24279734  -679.78542753    -0.24279734    -0.00432799  0.15D-02  0.42D-03     7.32
    2     5     5     1.06202000    -0.24279715  -679.78542734    -0.24279715    -0.00432812  0.15D-02  0.42D-03     7.32
    2     6     6     1.06330807    -0.23490442  -679.74473185    -0.23490442    -0.00329864  0.87D-03  0.33D-03     7.32
    2     7     7     1.05626018    -0.22995616  -679.71367840    -0.22995616    -0.00450080  0.18D-02  0.49D-03     7.32
    2     8     8     1.05630942    -0.22993508  -679.71365733    -0.22993508    -0.00452752  0.18D-02  0.50D-03     7.32
    2     9     9     1.05630457    -0.22993411  -679.71365636    -0.22993411    -0.00452829  0.18D-02  0.50D-03     7.32
    3     1     1     1.06380622    -0.24744037  -679.79007056    -0.00463246    -0.00020307  0.69D-04  0.24D-04    13.55
    3     2     2     1.06380538    -0.24744024  -679.79007043    -0.00463822    -0.00020323  0.69D-04  0.24D-04    13.55
    3     3     3     1.06380089    -0.24743979  -679.79006999    -0.00464064    -0.00020359  0.69D-04  0.24D-04    13.55
    3     4     4     1.06379891    -0.24743977  -679.79006996    -0.00464243    -0.00020362  0.69D-04  0.24D-04    13.55
    3     5     5     1.06380066    -0.24743975  -679.79006994    -0.00464260    -0.00020367  0.69D-04  0.24D-04    13.55
    3     6     6     1.06492079    -0.23853178  -679.74835921    -0.00362735    -0.00011879  0.30D-04  0.13D-04    13.55
    3     7     7     1.05434778    -0.23436153  -679.71808378    -0.00440537    -0.00021085  0.47D-04  0.34D-04    13.55
    3     8     8     1.05434653    -0.23435811  -679.71808036    -0.00442303    -0.00021335  0.48D-04  0.34D-04    13.55
    3     9     9     1.05434440    -0.23435797  -679.71808022    -0.00442386    -0.00021345  0.48D-04  0.34D-04    13.55
    4     1     1     1.06549172    -0.24770610  -679.79033630    -0.00026574    -0.00002450  0.22D-04  0.16D-05    19.55
    4     2     2     1.06549115    -0.24770604  -679.79033624    -0.00026581    -0.00002449  0.22D-04  0.15D-05    19.55
    4     3     3     1.06549106    -0.24770603  -679.79033622    -0.00026623    -0.00002450  0.22D-04  0.15D-05    19.55
    4     4     4     1.06549104    -0.24770579  -679.79033599    -0.00026602    -0.00002443  0.22D-04  0.15D-05    19.55
    4     5     5     1.06549030    -0.24770564  -679.79033584    -0.00026589    -0.00002442  0.22D-04  0.15D-05    19.55
    4     6     6     1.06601590    -0.23866924  -679.74849667    -0.00013746    -0.00000627  0.34D-05  0.55D-06    19.55
    4     7     7     1.05486298    -0.23458601  -679.71830826    -0.00022448    -0.00001088  0.37D-05  0.15D-05    19.55
    4     8     8     1.05486188    -0.23458499  -679.71830724    -0.00022688    -0.00001101  0.37D-05  0.16D-05    19.55
    4     9     9     1.05486095    -0.23458497  -679.71830722    -0.00022700    -0.00001102  0.37D-05  0.16D-05    19.55
    5     1     1     1.06644595    -0.24774090  -679.79037109    -0.00003480    -0.00000269  0.99D-06  0.30D-06    25.57
    5     2     2     1.06644612    -0.24774082  -679.79037102    -0.00003478    -0.00000269  0.99D-06  0.30D-06    25.57
    5     3     3     1.06644622    -0.24774082  -679.79037102    -0.00003480    -0.00000269  0.99D-06  0.30D-06    25.57
    5     4     4     1.06644550    -0.24774049  -679.79037069    -0.00003470    -0.00000269  0.99D-06  0.30D-06    25.57
    5     5     5     1.06644563    -0.24774033  -679.79037053    -0.00003469    -0.00000269  0.99D-06  0.30D-06    25.57
    5     6     6     1.06623845    -0.23867638  -679.74850381    -0.00000715    -0.00000032  0.16D-06  0.30D-07    25.57
    5     7     7     1.05488580    -0.23459842  -679.71832067    -0.00001241    -0.00000055  0.28D-06  0.74D-07    25.57
    5     8     8     1.05488546    -0.23459754  -679.71831979    -0.00001255    -0.00000055  0.28D-06  0.75D-07    25.57
    5     9     9     1.05488515    -0.23459754  -679.71831979    -0.00001257    -0.00000056  0.28D-06  0.76D-07    25.57
    6     1     1     1.06651654    -0.24774428  -679.79037448    -0.00000339    -0.00000023  0.12D-06  0.17D-07    31.31
    6     2     2     1.06651654    -0.24774421  -679.79037440    -0.00000338    -0.00000023  0.12D-06  0.17D-07    31.31
    6     3     3     1.06651648    -0.24774421  -679.79037440    -0.00000338    -0.00000023  0.12D-06  0.17D-07    31.31
    6     4     4     1.06651604    -0.24774388  -679.79037407    -0.00000338    -0.00000023  0.12D-06  0.17D-07    31.31
    6     5     5     1.06651590    -0.24774371  -679.79037391    -0.00000338    -0.00000023  0.12D-06  0.17D-07    31.31
    6     6     6     1.06627180    -0.23867678  -679.74850421    -0.00000039    -0.00000004  0.33D-07  0.23D-08    31.31
    6     7     7     1.05486498    -0.23459903  -679.71832128    -0.00000061    -0.00000003  0.91D-08  0.68D-08    31.31
    6     8     8     1.05486452    -0.23459816  -679.71832041    -0.00000062    -0.00000003  0.91D-08  0.69D-08    31.31
    6     9     9     1.05486439    -0.23459816  -679.71832041    -0.00000062    -0.00000003  0.91D-08  0.70D-08    31.31
    7     1     1     1.06656280    -0.24774454  -679.79037474    -0.00000026    -0.00000002  0.19D-07  0.14D-08    37.08
    7     2     2     1.06656276    -0.24774447  -679.79037466    -0.00000026    -0.00000002  0.19D-07  0.14D-08    37.08
    7     3     3     1.06656273    -0.24774447  -679.79037466    -0.00000026    -0.00000002  0.19D-07  0.14D-08    37.08
    7     4     4     1.06656209    -0.24774414  -679.79037433    -0.00000026    -0.00000002  0.19D-07  0.14D-08    37.08
    7     5     5     1.06656180    -0.24774397  -679.79037417    -0.00000026    -0.00000002  0.19D-07  0.14D-08    37.08
    7     6     6     1.06629284    -0.23867683  -679.74850426    -0.00000005    -0.00000000  0.22D-08  0.27D-09    37.08
    7     7     7     1.05486679    -0.23459907  -679.71832132    -0.00000004    -0.00000000  0.24D-08  0.40D-09    37.08
    7     8     8     1.05486646    -0.23459820  -679.71832045    -0.00000004    -0.00000000  0.25D-08  0.41D-09    37.08
    7     9     9     1.05486643    -0.23459820  -679.71832045    -0.00000004    -0.00000000  0.25D-08  0.42D-09    37.08
    8     1     1     1.06658297    -0.24774457  -679.79037477    -0.00000003    -0.00000000  0.14D-08  0.33D-09    41.14
    8     2     2     1.06658286    -0.24774450  -679.79037469    -0.00000003    -0.00000000  0.14D-08  0.33D-09    41.14
    8     3     3     1.06658287    -0.24774450  -679.79037469    -0.00000003    -0.00000000  0.14D-08  0.33D-09    41.14
    8     4     4     1.06658226    -0.24774417  -679.79037436    -0.00000003    -0.00000000  0.14D-08  0.33D-09    41.14
    8     5     5     1.06658199    -0.24774400  -679.79037420    -0.00000003    -0.00000000  0.14D-08  0.33D-09    41.14
    8     6     6     1.06629284    -0.23867683  -679.74850426    -0.00000000    -0.00000000  0.22D-08  0.27D-09    41.14
    8     7     7     1.05486679    -0.23459907  -679.71832132    -0.00000000    -0.00000000  0.24D-08  0.40D-09    41.14
    8     8     8     1.05486646    -0.23459820  -679.71832045    -0.00000000    -0.00000000  0.25D-08  0.41D-09    41.14
    8     9     9     1.05486643    -0.23459820  -679.71832045    -0.00000000    -0.00000000  0.25D-08  0.42D-09    41.14


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  13.0%
 S   7.8%  32.7%
 P   0.9%  21.4%   9.7%

 Initialization:   1.5%
 Other:           13.0%

 Total CPU:       41.1 seconds
 =====================================



 gnormi=  0.93757357  gnorms=  0.02981695  gnormp=  0.03260948  gnorm=  1.00000000
 ecorri= -0.23227876  ecorrs= -0.00738637  ecorrp= -0.00807944  ecorr= -0.24774457

 gnormi=  0.93757366  gnorms=  0.02981684  gnormp=  0.03260950  gnorm=  1.00000000
 ecorri= -0.23227871  ecorrs= -0.00738635  ecorrp= -0.00807943  ecorr= -0.24774450

 gnormi=  0.93757366  gnorms=  0.02981684  gnormp=  0.03260950  gnorm=  1.00000000
 ecorri= -0.23227871  ecorrs= -0.00738635  ecorrp= -0.00807943  ecorr= -0.24774450

 gnormi=  0.93757419  gnorms=  0.02981617  gnormp=  0.03260964  gnorm=  1.00000000
 ecorri= -0.23227854  ecorrs= -0.00738617  ecorrp= -0.00807946  ecorr= -0.24774417

 gnormi=  0.93757443  gnorms=  0.02981590  gnormp=  0.03260967  gnorm=  1.00000000
 ecorri= -0.23227844  ecorrs= -0.00738611  ecorrp= -0.00807945  ecorr= -0.24774400

 gnormi=  0.93782868  gnorms=  0.03394617  gnormp=  0.02822516  gnorm=  1.00000000
 ecorri= -0.22383798  ecorrs= -0.00810284  ecorrp= -0.00673601  ecorr= -0.23867683

 gnormi=  0.94798700  gnorms=  0.02230735  gnormp=  0.02970565  gnorm=  1.00000000
 ecorri= -0.22239687  ecorrs= -0.00523301  ecorrp= -0.00696919  ecorr= -0.23459907

 gnormi=  0.94798729  gnorms=  0.02230709  gnormp=  0.02970562  gnorm=  1.00000000
 ecorri= -0.22239612  ecorrs= -0.00523292  ecorrp= -0.00696917  ecorr= -0.23459820

 gnormi=  0.94798732  gnorms=  0.02230709  gnormp=  0.02970559  gnorm=  1.00000000
 ecorri= -0.22239612  ecorrs= -0.00523291  ecorrp= -0.00696917  ecorr= -0.23459820

 Wavefunction saved on  5301.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//00000222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000035   0.9654033   0.0000000   0.0000000
                          0.0000000
 2/0/0000222000          -0.0000000   0.0000000   0.0000000  -0.0000005   0.9653581   0.0000040   0.0000000   0.0000000
                          0.0000000
 2/0000/0222000           0.0000000   0.0000000  -0.0000000   0.9653580   0.0000005  -0.0000000  -0.0000000  -0.0000000
                          0.0000000
 2/00/000222000          -0.0000000   0.9653577  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000017
 2/000/00222000           0.0000000   0.0000000   0.9653577   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000017
                         -0.0000000
 2/00000/222000           0.9653576   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                          0.0000000
 200000002220//           0.0000000  -0.0000013   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.9039583
 20000000222/0/           0.0000000   0.0000000  -0.0000013   0.0000000  -0.0000000  -0.0000000   0.0000000   0.9039582
                          0.0000000
 20000000222//0          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9039582  -0.0000000
                         -0.0000000
 200000//222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.3167071   0.0000000
                          0.0000000
 200/0/00222000          -0.0000000   0.0000000  -0.0000046   0.0000000  -0.0000000  -0.0000000   0.0000000   0.2742767
                         -0.0000000
 200//000222000          -0.0000000  -0.0000046  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                          0.2742767
 20000/0/222000          -0.0000000  -0.0000002  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.1583550
 2000/00/222000          -0.0000000  -0.0000000  -0.0000002  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.1583548
                         -0.0000000
 20000//0222000           0.0000000   0.0000000  -0.0000062   0.0000000   0.0000000   0.0000000   0.0000000  -0.1583547
                          0.0000000
 2000/0/0222000           0.0000000   0.0000062  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                          0.1583547
 2000//00222000           0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.1583536  -0.0000000
                         -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20/00000222000  22.1     0.0000000   0.0000000  -0.0000000   0.0000000   0.0000001  -0.0629236  -0.0000000   0.0000000
                         -0.0000000
 2/000000222000  18.1     0.0000000  -0.0533037   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                         -0.0000005
 2/000000222000  19.1    -0.0000000   0.0000000  -0.0533037   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000005
                         -0.0000000
 2/000000222000  20.1    -0.0533036   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                          0.0000000
 2/000000222000  21.1     0.0000000   0.0000000  -0.0000000  -0.0533023  -0.0000000  -0.0000000  -0.0000000   0.0000000
                         -0.0000000
 2/000000222000  17.1    -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0533022  -0.0000008  -0.0000000   0.0000000
                         -0.0000000
 20/00000222000  16.1    -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000001   0.0528628   0.0000000  -0.0000000
                          0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.965295   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.000000    0.965295    0.000000    0.000000    0.000000    0.000000   -0.000002   -0.000000
 3           0.000000    0.000000   -0.000000   -0.000000    0.965295    0.000000   -0.000002    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.965296    0.000000    0.000000    0.000000   -0.000000    0.000000
 5           0.965296    0.000000   -0.000000    0.000000   -0.000000   -0.000004   -0.000000   -0.000000   -0.000000
 6           0.000004    0.000000   -0.000000   -0.000000   -0.000000    0.965403   -0.000000   -0.000000   -0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.970661
 8           0.000000   -0.000000   -0.000000   -0.000000    0.000002    0.000000    0.970661   -0.000000   -0.000000
 9           0.000000    0.000000    0.000002    0.000000   -0.000000    0.000000    0.000000    0.970661   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.965295    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.965295    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.965295   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.965296    0.000000    0.000000    0.000000    0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.965296    0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.965403   -0.000000    0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.970661   -0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.970661   -0.000000
 9           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970661


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96529543 (fixed)   0.96535803 (relaxed)   0.96529543 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00620126   -0.01475608   -0.15970183
 Singles      0.03199947   -0.07788936   -0.07996331
 Pairs        0.03499640    0.00000000   -0.00807944
 Total        1.07319712   -0.09264544   -0.24774457
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54263019
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22822985
 One electron energy                 -931.52033965
 Two electron energy                  251.72996488
 Virial quotient                       -0.97498975
 Correlation energy                    -0.24774457
 !MRCI STATE 1.1 Energy              -679.790374766703

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80850896 (Davidson, fixed reference)
 Cluster corrected energies          -679.80847447 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80850896 (Davidson, rotated reference)

 Cluster corrected energies          -679.80447684 (Pople, fixed reference)
 Cluster corrected energies          -679.80444906 (Pople, relaxed reference)
 Cluster corrected energies          -679.80447684 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96529549 (fixed)   0.96535810 (relaxed)   0.96529549 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00620123   -0.01475604   -0.15970182
 Singles      0.03199934   -0.07788930   -0.07996324
 Pairs        0.03499642    0.00000000   -0.00807943
 Total        1.07319699   -0.09264534   -0.24774450
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54263019
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22823027
 One electron energy                 -931.52034135
 Two electron energy                  251.72996666
 Virial quotient                       -0.97498975
 Correlation energy                    -0.24774450
 !MRCI STATE 2.1 Energy              -679.790374689790

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80850884 (Davidson, fixed reference)
 Cluster corrected energies          -679.80847436 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80850884 (Davidson, rotated reference)

 Cluster corrected energies          -679.80447673 (Pople, fixed reference)
 Cluster corrected energies          -679.80444895 (Pople, relaxed reference)
 Cluster corrected energies          -679.80447673 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96529549 (fixed)   0.96535810 (relaxed)   0.96529549 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00620123   -0.01475604   -0.15970182
 Singles      0.03199935   -0.07788930   -0.07996324
 Pairs        0.03499641    0.00000000   -0.00807943
 Total        1.07319699   -0.09264534   -0.24774450
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54263019
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22823043
 One electron energy                 -931.52034150
 Two electron energy                  251.72996681
 Virial quotient                       -0.97498975
 Correlation energy                    -0.24774450
 !MRCI STATE 3.1 Energy              -679.790374689787

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80850884 (Davidson, fixed reference)
 Cluster corrected energies          -679.80847436 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80850884 (Davidson, rotated reference)

 Cluster corrected energies          -679.80447673 (Pople, fixed reference)
 Cluster corrected energies          -679.80444895 (Pople, relaxed reference)
 Cluster corrected energies          -679.80447673 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96529579 (fixed)   0.96535840 (relaxed)   0.96529579 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00620117   -0.01475607   -0.15970217
 Singles      0.03199861   -0.07788869   -0.07996254
 Pairs        0.03499654    0.00000000   -0.00807946
 Total        1.07319632   -0.09264476   -0.24774417
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54263019
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22823526
 One electron energy                 -931.52034419
 Two electron energy                  251.72996983
 Virial quotient                       -0.97498974
 Correlation energy                    -0.24774417
 !MRCI STATE 4.1 Energy              -679.790374359447

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80850832 (Davidson, fixed reference)
 Cluster corrected energies          -679.80847383 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80850832 (Davidson, rotated reference)

 Cluster corrected energies          -679.80447624 (Pople, fixed reference)
 Cluster corrected energies          -679.80444847 (Pople, relaxed reference)
 Cluster corrected energies          -679.80447624 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96529592 (fixed)   0.96535852 (relaxed)   0.96529592 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00620117   -0.01475605   -0.15970223
 Singles      0.03199830   -0.07788850   -0.07996232
 Pairs        0.03499657    0.00000000   -0.00807945
 Total        1.07319604   -0.09264456   -0.24774400
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.54263019
 Nuclear energy                         0.00000000
 Kinetic energy                       697.22823679
 One electron energy                 -931.52034434
 Two electron energy                  251.72997015
 Virial quotient                       -0.97498974
 Correlation energy                    -0.24774400
 !MRCI STATE 5.1 Energy              -679.790374196049

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.80850808 (Davidson, fixed reference)
 Cluster corrected energies          -679.80847359 (Davidson, relaxed reference)
 Cluster corrected energies          -679.80850808 (Davidson, rotated reference)

 Cluster corrected energies          -679.80447602 (Pople, fixed reference)
 Cluster corrected energies          -679.80444824 (Pople, relaxed reference)
 Cluster corrected energies          -679.80447602 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96540328 (fixed)   0.96540328 (relaxed)   0.96540328 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00625017   -0.01652155   -0.14912946
 Singles      0.03642279   -0.08015905   -0.08281136
 Pairs        0.03028439    0.00000000   -0.00673601
 Total        1.07295735   -0.09668060   -0.23867683
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.50982743
 Nuclear energy                         0.00000000
 Kinetic energy                       697.14834187
 One electron energy                 -927.47194630
 Two electron energy                  247.72344205
 Virial quotient                       -0.97504141
 Correlation energy                    -0.23867683
 !MRCI STATE 6.1 Energy              -679.748504259763

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.76591749 (Davidson, fixed reference)
 Cluster corrected energies          -679.76591749 (Davidson, relaxed reference)
 Cluster corrected energies          -679.76591749 (Davidson, rotated reference)

 Cluster corrected energies          -679.76204409 (Pople, fixed reference)
 Cluster corrected energies          -679.76204409 (Pople, relaxed reference)
 Cluster corrected energies          -679.76204409 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.97066064 (fixed)   0.97083458 (relaxed)   0.97066064 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00616115   -0.01517583   -0.01566023
 Singles      0.02367626   -0.07472936   -0.07564167
 Pairs        0.03152857   -0.14469388   -0.14329717
 Total        1.06136598   -0.23459907   -0.23459907
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.48372225
 Nuclear energy                         0.00000000
 Kinetic energy                       697.18892671
 One electron energy                 -929.00852323
 Two electron energy                  249.29020191
 Virial quotient                       -0.97494136
 Correlation energy                    -0.23459907
 !MRCI STATE 7.1 Energy              -679.718321318388

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.73271772 (Davidson, fixed reference)
 Cluster corrected energies          -679.73262850 (Davidson, relaxed reference)
 Cluster corrected energies          -679.73271772 (Davidson, rotated reference)

 Cluster corrected energies          -679.72945204 (Pople, fixed reference)
 Cluster corrected energies          -679.72938100 (Pople, relaxed reference)
 Cluster corrected energies          -679.72945204 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97066109 (fixed)   0.97083507 (relaxed)   0.97066109 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00616052   -0.01517516   -0.15198752
 Singles      0.02367596   -0.07472922   -0.07564151
 Pairs        0.03152850    0.00000000   -0.00696917
 Total        1.06136498   -0.08990438   -0.23459820
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.48372225
 Nuclear energy                         0.00000000
 Kinetic energy                       697.18888891
 One electron energy                 -929.00847615
 Two electron energy                  249.29015569
 Virial quotient                       -0.97494141
 Correlation energy                    -0.23459820
 !MRCI STATE 8.1 Energy              -679.718320451617

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.73271657 (Davidson, fixed reference)
 Cluster corrected energies          -679.73262734 (Davidson, relaxed reference)
 Cluster corrected energies          -679.73271657 (Davidson, rotated reference)

 Cluster corrected energies          -679.72945095 (Pople, fixed reference)
 Cluster corrected energies          -679.72937989 (Pople, relaxed reference)
 Cluster corrected energies          -679.72945095 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97066111 (fixed)   0.97083508 (relaxed)   0.97066111 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00616052   -0.01517516   -0.15198752
 Singles      0.02367596   -0.07472922   -0.07564151
 Pairs        0.03152847    0.00000000   -0.00696917
 Total        1.06136495   -0.08990438   -0.23459820
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -679.48372225
 Nuclear energy                         0.00000000
 Kinetic energy                       697.18888905
 One electron energy                 -929.00847668
 Two electron energy                  249.29015622
 Virial quotient                       -0.97494141
 Correlation energy                    -0.23459820
 !MRCI STATE 9.1 Energy              -679.718320451610

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -679.73271656 (Davidson, fixed reference)
 Cluster corrected energies          -679.73262733 (Davidson, relaxed reference)
 Cluster corrected energies          -679.73271656 (Davidson, rotated reference)

 Cluster corrected energies          -679.72945094 (Pople, fixed reference)
 Cluster corrected energies          -679.72937989 (Pople, relaxed reference)
 Cluster corrected energies          -679.72945094 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       80.46       700     1000      520     2100     2140     5201     5301   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        77.77     49.70     25.44      1.62      0.06      0.74
 REAL TIME  *        83.60 SEC
 DISK USED  *       117.29 MB (local),        1.43 GB (total)
 SF USED    *       435.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =      -679.80850896  AU                              
 SETTING HLSDIAG(9)     =      -679.80850884  AU                              
 SETTING HLSDIAG(10)    =      -679.80850884  AU                              
 SETTING HLSDIAG(11)    =      -679.80850832  AU                              
 SETTING HLSDIAG(12)    =      -679.80850808  AU                              
 SETTING HLSDIAG(13)    =      -679.76591749  AU                              
 SETTING HLSDIAG(14)    =      -679.73271772  AU                              
 SETTING HLSDIAG(15)    =      -679.73271657  AU                              
 SETTING HLSDIAG(16)    =      -679.73271656  AU                              


         HLSDIAG
    -679.9101965
    -679.8019461
    -679.8019461
    -679.8019461
    -679.8019461
    -679.8019460
    -679.7579418
    -679.8085090
    -679.8085088
    -679.8085088
    -679.8085083
    -679.8085081
    -679.7659175
    -679.7327177
    -679.7327166
    -679.7327166
                                                  


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

 Time for Seward_LS:       7.14 sec

        3942192. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      967 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.14 sec, REAL time:      8.24 sec


 SORTLS1 read     3953008. and wrote     3953008. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.07 sec
 SORTLS2 read     3953008. and wrote     3953008. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:   102.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   102.0 MBYTE
 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  
 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   7

 Original energies:-679.894302-679.784654-679.784654-679.784654-679.784654-679.784654-679.740289
 Replaced energies:-679.910196-679.801946-679.801946-679.801946-679.801946-679.801946-679.757942

 Wavefunction restored from record  5301.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:-679.790375-679.790375-679.790375-679.790374-679.790374-679.748504-679.718321-679.718320-679.718320
 Replaced energies:-679.808509-679.808509-679.808509-679.808508-679.808508-679.765917-679.732718-679.732717-679.732717



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -679.91019650

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00   23758.21       0.00       0.00       0.00       0.00       0.00      -0.00       7.17       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       7.61

    3   3.1  0.0  0.0       0.00       0.00   23758.22       0.00       0.00       0.00       0.00       0.00      -4.65       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       3.88

    4   4.1  0.0  0.0       0.00       0.00       0.00   23758.23       0.00       0.00       0.00       4.27       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   23758.23       0.00       0.00       0.00       0.00      -4.27
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -4.27       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   23758.23       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       4.27       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   33416.03      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    8   1.1  1.0  1.0      -0.00      -0.00       0.00       4.27       0.00      -0.00      -0.00   22317.84       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -4.27       0.00      -0.00      -0.00       0.00

    9   2.1  1.0  1.0      -0.00       7.17      -4.65       0.00       0.00      -0.00       0.00       0.00   22317.86       0.00
                            0.00       0.00       0.00      -0.00       4.27      -0.00      -0.00       0.00      -0.00      -5.66

   10   3.1  1.0  1.0      -0.00       0.00       0.00       0.00      -4.27       0.00       0.00       0.00       0.00   22317.86
                            0.00      -7.61      -3.88       0.00      -0.00      -0.00      -0.00      -0.00       5.66       0.00

   11   4.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00       4.27      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       4.27      -0.00       0.00      -0.00     -11.31      -0.00      -0.00

   12   5.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00      -7.40       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       7.40      -0.00       0.00      -0.00      -0.00       0.00       0.00

   13   6.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   14   7.1  1.0  1.0       0.00      -0.00       0.00     -17.35      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00     -17.35      -0.00       0.00      -0.00      -0.00

   15   8.1  1.0  1.0       0.00      -0.00      -0.00       0.00      17.35       0.00      -0.00       0.00       0.00       0.00
                          -17.92      -9.11      17.84       0.00       0.00      -0.00       2.42       0.00       1.50       0.00

   16   9.1  1.0  1.0      17.92      10.90      16.81       0.00      -0.00       0.00      -2.42       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -17.35      -0.00       0.00      -0.00       0.00      -1.50

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -4.00
                           -0.00      -0.62     -12.06      -0.00       0.00      -0.00      -0.00       0.00      -4.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00       6.04      -0.00       0.00      -0.00       4.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -6.04       0.00      -0.00      -0.00      -0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.00       0.00
                            0.00       0.00       0.00      -0.00      12.08      -0.00      -0.00      -0.00      -0.00       4.00

   21   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       6.93       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       6.93

   22   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.06
                          -25.34      28.29      -1.46      -0.00       0.00      -0.00       3.43       0.00      -1.06       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.06       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00     -24.54      -0.00      -0.00      -0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      24.54       0.00      -0.00       0.00      -1.06       0.00      -0.00

   26   1.1  1.0 -1.0      -0.00      -0.00       0.00       4.27       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       4.27      -0.00      -0.00      -0.00      -0.00

   27   2.1  1.0 -1.0      -0.00       7.17      -4.65       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -4.27       0.00       0.00      -0.00      -0.00      -0.00

   28   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00      -4.27       0.00       0.00       0.00       0.00       0.00
                           -0.00       7.61       3.88      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   29   4.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00       4.27      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -4.27       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   30   5.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00      -7.40       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -7.40       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   31   6.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   32   7.1  1.0 -1.0       0.00      -0.00       0.00     -17.35      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      17.35       0.00      -0.00      -0.00      -0.00

   33   8.1  1.0 -1.0       0.00      -0.00      -0.00       0.00      17.35       0.00      -0.00       0.00       0.00       0.00
                           17.92       9.11     -17.84      -0.00      -0.00       0.00      -2.42      -0.00      -0.00      -0.00

   34   9.1  1.0 -1.0      17.92      10.90      16.81       0.00      -0.00       0.00      -2.42       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      17.35       0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00      17.92       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      17.92       0.00       0.00      -0.00       0.00      -0.00

    2   2.1  0.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00      10.90       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       9.11       0.00       0.62       0.00      -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00      16.81       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     -17.84      -0.00      12.06       0.00       0.00      -0.00

    4   4.1  0.0  0.0      -0.00      -0.00       0.00     -17.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.27      -7.40       0.00      -0.00      -0.00       0.00       0.00      -6.04       0.00       0.00

    5   5.1  0.0  0.0       0.00      -0.00       0.00      -0.00      17.35      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      17.35      -0.00       0.00      -0.00     -12.08

    6   6.1  0.0  0.0       4.27      -7.40       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      17.35       0.00       0.00       0.00      -0.00       6.04       0.00

    7   7.1  0.0  0.0      -0.00       0.00       0.00      -0.00      -0.00      -2.42       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -2.42      -0.00       0.00       0.00      -0.00       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       4.00       0.00
                           11.31       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -4.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -4.00
                            0.00      -0.00       0.00       0.00      -1.50      -0.00       4.00      -0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       1.50      -0.00      -0.00       0.00      -4.00

   11   4.1  1.0  1.0   22317.98       0.00       0.00       0.00       0.00       0.00      -0.00       4.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       4.00      -0.00

   12   5.1  1.0  1.0       0.00   22318.03       0.00       0.00       0.00       0.00       0.00      -6.93      -0.00       0.00
                           -0.00       0.00      -0.00       1.72       0.00      -0.00      -0.00      -0.00       6.93      -0.00

   13   6.1  1.0  1.0       0.00       0.00   31665.58       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       3.91       0.00      -0.00       0.00      -0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00   38952.09       0.00       0.00       0.00       0.00      -1.06       0.00
                           -0.00      -1.72      -3.91       0.00      -0.00       0.00       0.00      -1.06       0.00      -0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00   38952.34       0.00       1.06      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      45.39      -0.00      -0.00       0.00       1.06

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   38952.34       0.00      -0.00      -0.00       1.06
                           -0.00       0.00       0.00      -0.00     -45.39      -0.00      -1.06       0.00      -0.00       0.00

   17   1.1  1.0  0.0      -0.00       0.00       0.00       0.00       1.06       0.00   22317.84       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       1.06       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       4.00      -6.93      -0.00       0.00      -0.00      -0.00       0.00   22317.86       0.00       0.00
                            0.00       0.00       0.00       1.06       0.00      -0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0      -0.00      -0.00       0.00      -1.06       0.00      -0.00       0.00       0.00   22317.86       0.00
                           -4.00      -6.93      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00       1.06       0.00       0.00       0.00   22317.98
                            0.00       0.00      -0.00       0.00      -1.06      -0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00       0.00       0.61       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.61      -0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -2.76       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -2.76      -0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0      -0.00       0.00      -0.00       0.00     -32.10      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      32.10      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00      -0.00      -0.00      32.10       0.00      -0.00       0.00       0.00       0.00       0.00
                            1.06      -0.61       2.76       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0      -1.06      -0.61       2.76       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -32.10      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -4.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -4.00       0.00       0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       4.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.00       0.00       0.00       0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       4.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -4.00

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.00       0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       6.93       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       6.93      -0.00

   31   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   32   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.06      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -1.06       0.00      -0.00

   33   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -1.06       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.06

   34   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -1.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.06       0.00      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      25.34      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       7.17       0.00      -0.00      -0.00
                            0.00       0.00     -28.29      -0.00      -0.00      -0.00       0.00      -7.61       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.65       0.00       0.00       0.00
                           -0.00       0.00       1.46       0.00       0.00       0.00       0.00      -3.88       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       4.27       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00     -24.54      -0.00      -0.00       0.00       4.27       7.40

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.27       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       4.27      -0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       4.27      -7.40
                           -0.00      -0.00       0.00      24.54       0.00      -4.27      -0.00      -0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -3.43       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

    8   1.1  1.0  1.0      -0.00      -0.00      -0.00      -1.06      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       1.06       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       6.93       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       1.06       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00      -0.00       1.06      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.93      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0      -0.00       0.00      -0.00       0.00      -1.06       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -1.06      -0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0      -0.00       0.00       0.00      -0.00      -0.61       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.61      -0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       2.76       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -2.76      -0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0      -0.00       0.00       0.00      32.10       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      32.10       0.00       0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00     -32.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.61       2.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.61      -2.76      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -32.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       4.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -4.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -4.00       6.93
                            0.00       0.00       0.00       0.00       0.00       4.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -4.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -4.00      -6.93

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       4.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       4.00      -0.00       0.00

   21   5.1  1.0  0.0   22318.03       0.00       0.00       0.00       0.00       0.00      -6.93      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       6.93      -0.00       0.00

   22   6.1  1.0  0.0       0.00   31665.58       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00   38952.09       0.00       0.00       0.00       0.00      -1.06       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -1.06       0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   38952.34       0.00       1.06      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       1.06      -0.61

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   38952.34       0.00      -0.00      -0.00       1.06       0.61
                           -0.00      -0.00      -0.00      -0.00       0.00      -1.06       0.00      -0.00       0.00       0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       1.06       0.00   22317.84       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       1.06       0.00       0.00      -0.00     -11.31      -0.00

   27   2.1  1.0 -1.0      -6.93      -0.00       0.00      -0.00      -0.00       0.00   22317.86       0.00       0.00       0.00
                            0.00       0.00       1.06       0.00      -0.00      -0.00       0.00       5.66      -0.00       0.00

   28   3.1  1.0 -1.0      -0.00       0.00      -1.06       0.00      -0.00       0.00       0.00   22317.86       0.00       0.00
                           -6.93      -0.00      -0.00      -0.00       0.00       0.00      -5.66      -0.00      -0.00       0.00

   29   4.1  1.0 -1.0       0.00      -0.00       0.00      -0.00       1.06       0.00       0.00       0.00   22317.98       0.00
                            0.00      -0.00       0.00      -1.06      -0.00      11.31       0.00       0.00       0.00      -0.00

   30   5.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       0.61       0.00       0.00       0.00       0.00   22318.03
                           -0.00      -0.00       0.00       0.61      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   31   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00      -2.76       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -2.76      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   32   7.1  1.0 -1.0       0.00      -0.00       0.00     -32.10      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      32.10      -0.00       0.00       0.00       0.00       1.72

   33   8.1  1.0 -1.0      -0.00      -0.00      32.10       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.61       2.76       0.00      -0.00       0.00      -0.00      -1.50      -0.00      -0.00       0.00

   34   9.1  1.0 -1.0      -0.61       2.76       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -32.10      -0.00      -0.00       0.00      -0.00       1.50       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34

    1   1.1  0.0  0.0      -0.00       0.00       0.00      17.92
                            0.00       0.00     -17.92      -0.00

    2   2.1  0.0  0.0      -0.00      -0.00      -0.00      10.90
                            0.00      -0.00      -9.11      -0.00

    3   3.1  0.0  0.0      -0.00       0.00      -0.00      16.81
                            0.00       0.00      17.84       0.00

    4   4.1  0.0  0.0       0.00     -17.35       0.00       0.00
                           -0.00       0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00      -0.00      17.35      -0.00
                            0.00       0.00       0.00     -17.35

    6   6.1  0.0  0.0       0.00      -0.00       0.00       0.00
                            0.00     -17.35      -0.00      -0.00

    7   7.1  0.0  0.0       0.00      -0.00      -0.00      -2.42
                           -0.00      -0.00       2.42       0.00

    8   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   10   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   5.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   13   6.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   7.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   8.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   9.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0      -0.00      -0.00      -1.06      -0.00
                           -0.00      -0.00       0.00       1.06

   18   2.1  1.0  0.0       0.00      -0.00       0.00       0.00
                            0.00       1.06       0.00      -0.00

   19   3.1  1.0  0.0      -0.00       1.06      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00

   20   4.1  1.0  0.0       0.00      -0.00       0.00      -1.06
                           -0.00       0.00      -1.06      -0.00

   21   5.1  1.0  0.0       0.00       0.00      -0.00      -0.61
                           -0.00       0.00       0.61      -0.00

   22   6.1  1.0  0.0      -0.00      -0.00      -0.00       2.76
                           -0.00       0.00      -2.76      -0.00

   23   7.1  1.0  0.0       0.00       0.00      32.10       0.00
                           -0.00      -0.00      -0.00      32.10

   24   8.1  1.0  0.0       0.00     -32.10       0.00       0.00
                            2.76       0.00       0.00       0.00

   25   9.1  1.0  0.0      -2.76      -0.00      -0.00      -0.00
                            0.00     -32.10      -0.00       0.00

   26   1.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

   27   2.1  1.0 -1.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00       1.50       0.00

   28   3.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -1.50

   29   4.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00

   30   5.1  1.0 -1.0       0.00       0.00       0.00       0.00
                            0.00      -1.72      -0.00       0.00

   31   6.1  1.0 -1.0   31665.58       0.00       0.00       0.00
                            0.00      -3.91      -0.00       0.00

   32   7.1  1.0 -1.0       0.00   38952.09       0.00       0.00
                            3.91      -0.00       0.00      -0.00

   33   8.1  1.0 -1.0       0.00       0.00   38952.34       0.00
                            0.00      -0.00       0.00     -45.39

   34   9.1  1.0 -1.0       0.00       0.00       0.00   38952.34
                           -0.00       0.00      45.39       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 34)

    The diagonal matrixelements are shifted by   -679.91019650 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   23758.210       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   23758.215       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   23758.226       0.000       0.000       0.000       6.042
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   23758.227       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   23758.227       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   33416.034      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+             -0.000      -0.000       0.000       6.042       0.000      -0.000      -0.000   22317.835
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      10.135      -6.574       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000      -6.042       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       6.042      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000     -10.463       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000      -0.000       0.000     -24.538      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000      24.537       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             25.338      15.416      23.770       0.000      -0.000       0.000      -3.429       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.625     -12.064      -0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       6.042      -0.000       0.000      -0.000       5.657

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -6.042       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      12.081      -0.000      -0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.339      28.295      -1.465      -0.000       0.000      -0.000       3.429       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000     -24.539      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      24.539       0.000      -0.000       0.000      -1.499

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -6.042       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       6.042      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -10.760      -5.492       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       6.042      -0.000       0.000      -0.000     -11.312

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      10.463      -0.000       0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000     -24.538      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.338     -12.879      25.235       0.000       0.000      -0.000       3.429       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000     -24.537      -0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      25.338
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              10.135       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      15.416
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>              -6.574       0.000       0.000       0.000      -0.000       0.000      -0.000      23.770
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000      -0.000      -0.000       0.000     -24.538       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000      -6.042       0.000      -0.000       0.000      -0.000      24.537      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>              -0.000       0.000       6.042     -10.463       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -3.429
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+          22317.861       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   22317.861       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000   22317.975       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000   22318.029       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000   31665.582       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   38952.089       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   38952.342       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   38952.344
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -5.657       0.000       0.000       0.000      -0.000      -0.000       0.000       1.499

    2    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       1.499       0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000      -5.656      -9.797      -0.000      -0.000      -0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                               -0.000       5.656       0.000       0.000      -0.000       0.000      -1.497      -0.000

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       9.797      -0.000       0.000      -0.000       0.000       0.870      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -3.904      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -1.499       0.000      -0.000      -0.000      -0.000       0.000      -0.000      45.390

    8    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       1.497      -0.870       3.904       0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000     -45.390      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      11.312       0.000      -0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -5.657       0.000      -0.000       0.000       0.000      -1.498      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.657       0.000       0.000      -0.000      -0.000       0.000      -0.000       1.498

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       1.724       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       3.905       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -1.724      -3.905       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.498       0.000       0.000      -0.000      -0.000       0.000      -0.000      45.393

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -1.498      -0.000       0.000       0.000      -0.000     -45.393      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      25.339      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.625       0.000      -0.000      -0.000       0.000       0.000     -28.295      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.064       0.000       0.000      -0.000      -0.000       0.000       1.465       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -6.042       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     -12.081      -0.000      -0.000      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       6.042       0.000      -0.000      -0.000       0.000      24.539

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -3.429       0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -5.657       0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                5.657       0.000       0.000       0.000       0.000       0.000       1.499       0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -5.656      -9.797      -0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       5.656       0.000       0.000      -0.000       0.000      -1.497

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       9.797      -0.000       0.000      -0.000       0.000       0.870

    6    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -3.904

    7    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000      -1.499       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       1.497      -0.870       3.904       0.000       0.000

    9    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -1.499       0.000      -0.000       0.000       0.000       0.000     -45.390      -0.000

    1    1  |1 0>           22317.835       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   22317.861       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   22317.861       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   22317.975       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   22318.029       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   31665.582       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   38952.089       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   38952.342
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000       5.657       0.000      -0.000      -0.000      -0.000      -1.499
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000      -0.000      -5.656       9.797       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-             -5.657       0.000       0.000       0.000       0.000      -0.000       1.499      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 1>-             -0.000       5.656      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000      -9.797      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000      -1.499       0.000      -0.000       0.000       0.000      45.390
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              1.499      -0.000       0.000      -0.000       0.000       0.000     -45.390       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000      -0.000      -0.000       1.497       0.870      -3.904      -0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      10.760      -0.000      -0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       5.492      -0.000       0.000      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -24.539       0.000       0.000      -0.000      -6.042     -10.463       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -6.042       0.000       0.000       0.000      -0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       6.042       0.000       0.000      -0.000      -0.000      -0.000      24.538

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.499      -0.000      -0.000       0.000      11.312       0.000      -0.000      -0.000

    2    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -5.657       0.000      -0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       5.657       0.000       0.000      -0.000      -0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -11.312      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       1.724

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       3.905

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               45.390       0.000      -0.000      -0.000      -0.000      -1.724      -3.905       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       1.498       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -1.498      -0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000      -5.657      -0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       5.656      -9.797      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000       5.657      -0.000       0.000      -0.000      -0.000       0.000      -1.499
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000      -5.656       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000      -0.000       9.797       0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000      -0.000      -0.000       1.499      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000      -1.499       0.000      -0.000       0.000      -0.000      -0.000      45.390
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 0>           38952.344      -0.000       0.000       0.000      -1.497      -0.870       3.904       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-             -0.000   22317.835       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000   22317.861       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000   22317.861       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -1.497       0.000       0.000       0.000   22317.975       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.870       0.000       0.000       0.000       0.000   22318.029       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              3.904       0.000       0.000       0.000       0.000       0.000   31665.582       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   38952.089
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34

    1    1  |0 0>               0.000       0.000
                               25.338       0.000

    2    1  |0 0>               0.000       0.000
                               12.879       0.000

    3    1  |0 0>               0.000       0.000
                              -25.235      -0.000

    4    1  |0 0>               0.000       0.000
                               -0.000       0.000

    5    1  |0 0>               0.000       0.000
                               -0.000      24.537

    6    1  |0 0>               0.000       0.000
                                0.000       0.000

    7    1  |0 0>               0.000       0.000
                               -3.429      -0.000

    1    1  |1 1>+              0.000       0.000
                               -0.000       0.000

    2    1  |1 1>+              0.000       0.000
                               -1.498      -0.000

    3    1  |1 1>+              0.000       0.000
                               -0.000       1.498

    4    1  |1 1>+              0.000       0.000
                               -0.000       0.000

    5    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    6    1  |1 1>+              0.000       0.000
                                0.000      -0.000

    7    1  |1 1>+              0.000       0.000
                               -0.000       0.000

    8    1  |1 1>+              0.000       0.000
                               -0.000      45.393

    9    1  |1 1>+              0.000       0.000
                              -45.393      -0.000

    1    1  |1 0>               1.499       0.000
                                0.000      -0.000

    2    1  |1 0>              -0.000      -0.000
                               -0.000      -0.000

    3    1  |1 0>               0.000      -0.000
                                0.000       0.000

    4    1  |1 0>              -0.000       1.497
                                0.000       0.000

    5    1  |1 0>               0.000       0.870
                               -0.000      -0.000

    6    1  |1 0>               0.000      -3.904
                                0.000      -0.000

    7    1  |1 0>             -45.390      -0.000
                                0.000       0.000

    8    1  |1 0>               0.000      -0.000
                               -0.000       0.000

    9    1  |1 0>               0.000       0.000
                                0.000      -0.000

    1    1  |1 1>-              0.000       0.000
                                0.000       0.000

    2    1  |1 1>-              0.000       0.000
                                0.000       0.000

    3    1  |1 1>-              0.000       0.000
                                0.000       0.000

    4    1  |1 1>-              0.000       0.000
                                0.000       0.000

    5    1  |1 1>-              0.000       0.000
                                0.000       0.000

    6    1  |1 1>-              0.000       0.000
                                0.000       0.000

    7    1  |1 1>-              0.000       0.000
                                0.000       0.000

    8    1  |1 1>-          38952.342       0.000
                                0.000       0.000

    9    1  |1 1>-              0.000   38952.344
                                0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -679.91019672    -0.00000023       -0.05      0.00000000        0.00      0.0000
    2  -679.80858596     0.10161054    22300.94      0.10161076    22300.98      2.7650
    3  -679.80858596     0.10161054    22300.94      0.10161076    22300.98      2.7650
    4  -679.80858585     0.10161064    22300.96      0.10161087    22301.01      2.7650
    5  -679.80853539     0.10166111    22312.04      0.10166134    22312.08      2.7663
    6  -679.80853531     0.10166119    22312.05      0.10166142    22312.10      2.7663
    7  -679.80853496     0.10166154    22312.13      0.10166177    22312.18      2.7664
    8  -679.80853485     0.10166164    22312.15      0.10166187    22312.20      2.7664
    9  -679.80853485     0.10166164    22312.15      0.10166187    22312.20      2.7664
   10  -679.80845733     0.10173917    22329.17      0.10173939    22329.22      2.7685
   11  -679.80845714     0.10173936    22329.21      0.10173959    22329.26      2.7685
   12  -679.80845714     0.10173936    22329.21      0.10173959    22329.26      2.7685
   13  -679.80845712     0.10173938    22329.21      0.10173960    22329.26      2.7685
   14  -679.80845694     0.10173956    22329.25      0.10173979    22329.30      2.7685
   15  -679.80845694     0.10173956    22329.25      0.10173979    22329.30      2.7685
   16  -679.80845684     0.10173966    22329.27      0.10173988    22329.32      2.7685
   17  -679.80194580     0.10825070    23758.28      0.10825093    23758.33      2.9457
   18  -679.80194577     0.10825073    23758.29      0.10825095    23758.34      2.9457
   19  -679.80194572     0.10825077    23758.30      0.10825100    23758.35      2.9457
   20  -679.80194572     0.10825078    23758.30      0.10825100    23758.35      2.9457
   21  -679.80194572     0.10825078    23758.30      0.10825100    23758.35      2.9457
   22  -679.76591751     0.14427899    31665.58      0.14427922    31665.63      3.9260
   23  -679.76591751     0.14427899    31665.58      0.14427922    31665.63      3.9260
   24  -679.76591751     0.14427899    31665.58      0.14427922    31665.63      3.9260
   25  -679.75794187     0.15225462    33416.03      0.15225485    33416.08      4.1431
   26  -679.73313033     0.17706617    38861.53      0.17706640    38861.58      4.8182
   27  -679.73292394     0.17727256    38906.83      0.17727279    38906.88      4.8238
   28  -679.73292393     0.17727257    38906.83      0.17727279    38906.88      4.8238
   29  -679.73292337     0.17727313    38906.95      0.17727336    38907.00      4.8239
   30  -679.73251017     0.17768633    38997.64      0.17768656    38997.69      4.8351
   31  -679.73250997     0.17768653    38997.69      0.17768675    38997.73      4.8351
   32  -679.73250997     0.17768653    38997.69      0.17768676    38997.74      4.8351
   33  -679.73250938     0.17768712    38997.82      0.17768735    38997.86      4.8351
   34  -679.73250938     0.17768712    38997.82      0.17768735    38997.86      4.8351

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999936  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00053679 -0.01022017  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.01022055  0.00053677  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00001630  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.01023663  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

   6    1  |0 0>          -0.00000000  0.00001629  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.01023721
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000020  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000005  0.54944893 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009
                           0.00000000 -0.00000007 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

   2    1  |1 1>+          0.00000001  0.00000000  0.00000000  0.00000000  0.40729379  0.70737399 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.54902438  0.00000000 -0.00000000 -0.41003214  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000023 -0.00000000

   4    1  |1 1>+          0.00000000 -0.54672377 -0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.40643142
                          -0.00000000  0.00000087  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

   5    1  |1 1>+          0.00000000 -0.31416611 -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.70503517
                          -0.00000000  0.00000050  0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

   6    1  |1 1>+          0.00000000 -0.00000007 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00008205 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00008252 -0.00000000  0.00000000  0.00012496 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00065200 -0.00000000 -0.00000000  0.00000000 -0.00012508  0.00007207 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.81685747  0.00061147  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000007 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                          -0.00000000  0.00000005 -0.54817721  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009

   3    1  |1 0>          -0.00000000 -0.00000087 -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000 -0.54817794 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.41199239

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000045 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000000  0.81464235 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.63019495 -0.00000000 -0.00000000 -0.00000032  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00065204 -0.00000000  0.00000000  0.00000000 -0.00000011  0.00014439 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00008245  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00012507

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00008245 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000087  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.54944856  0.00000005 -0.00000000  0.00000000  0.00000000  0.00000000  0.40975158

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000023 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.54902327 -0.00000000  0.00000000  0.41003252 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000000  0.00000000 -0.00000000  0.40835141 -0.70676509  0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000007  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                           0.00000000 -0.00000005  0.54672457 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009

   5    1  |1 1>-         -0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004
                          -0.00000000  0.00000003 -0.31416533  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000015

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000007  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00008205 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00012488

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00065200 -0.00000000 -0.00000000 -0.00000000 -0.00012497 -0.00007226 -0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00008252  0.00000000 -0.00000000 -0.00012496  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000040  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000789 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.01023722 -0.00000000  0.00000000  0.00003982 -0.00000000  0.00000000  0.00002533  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00003111 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00003981  0.00000000 -0.00000000 -0.00002533  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.40975109  0.00000000  0.00000034  0.71194194 -0.00000000 -0.00000006 -0.15274529  0.00000000
                           0.00000004  0.00000000 -0.00000000 -0.00000012 -0.00000000 -0.00000002 -0.00000001 -0.00000000

   2    1  |1 1>+          0.00000000  0.57763653 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.57615706 -0.00000000  0.00000000  0.44550134
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000016  0.00000000 -0.00000000 -0.00000003

   4    1  |1 1>+          0.00000009  0.00000000  0.55286412 -0.00000027  0.00000000 -0.47982331  0.00000019  0.00000000
                          -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000016 -0.00000005 -0.00000000

   5    1  |1 1>+         -0.00000015 -0.00000000 -0.28536968  0.00000014 -0.00000000 -0.56809929  0.00000022  0.00000000
                           0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000019 -0.00000006 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00012488 -0.00000000  0.00000000  0.00000028 -0.00000000  0.00000000  0.00000026 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000037  0.00000000  0.00000000 -0.00000046
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.57677869  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>          -0.00000004  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000007 -0.00000002 -0.00000000
                           0.41199227 -0.00000000  0.00000016  0.32558013 -0.00000000  0.00000025  0.65095639 -0.00000000

   3    1  |1 0>          -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000021 -0.00000007 -0.00000000
                          -0.00000009  0.00000000  0.32571175 -0.00000016  0.00000000  0.65088985 -0.00000025 -0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000016  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.57990340 -0.00000000  0.00000000 -0.00011443

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00015372  0.00000000  0.00000000  0.77643693

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000060  0.00000000 -0.00000000 -0.00000032  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00012507 -0.00000000 -0.00000000 -0.00000060  0.00000000 -0.00000000 -0.00000032 -0.00000000

   1    1  |1 1>-         -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005  0.00000002  0.00000000
                          -0.00000009  0.00000000  0.71191099 -0.00000034  0.00000000 -0.15288946  0.00000006 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000  0.00000003
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.57598182  0.00000000  0.00000000  0.44572889

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.57763516 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000004  0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000005 -0.00000002 -0.00000000
                           0.40643002 -0.00000000 -0.00000027 -0.55296098  0.00000000  0.00000019  0.47971195 -0.00000000

   5    1  |1 1>-         -0.00000007 -0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000006  0.00000002  0.00000000
                           0.70503633  0.00000000 -0.00000014 -0.28525499  0.00000000 -0.00000022 -0.56815588  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000028  0.00000000  0.00000000 -0.00000026  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000037  0.00000000  0.00000000 -0.00000046

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.99994501  0.00024369 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00024369  0.99994500  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.99994500 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.99994501 -0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000087  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000001  0.99994500  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00417956 -0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00701235 -0.00454571 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00417980  0.00000000 -0.00000000  0.00000000 -0.00000008
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00417986 -0.00000009 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00723887 -0.00000005 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99999964  0.00036920 -0.00000863
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00160887 -0.00000000  0.00000000  0.00000020 -0.00053931 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00160880  0.00000000  0.00000000 -0.00000000  0.00053916
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00101037 -0.00155874 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00043000 -0.00834536 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00417964 -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00417964 -0.00000010 -0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00835798 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000010

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000863 -0.00000017  0.99999971

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00185522  0.00009559  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00160888 -0.00053916 -0.00000020  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00160888  0.00000000 -0.00000000  0.00000020 -0.00053916 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00417957  0.00000009  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00417980 -0.00000000 -0.00000000  0.00000000 -0.00000008

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00744243 -0.00380092 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00417986 -0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00723889 -0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000036  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00036920  0.99999964  0.00000017

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00160887  0.00053931  0.00000020 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00084481 -0.00165433 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00160880 -0.00000000  0.00000000 -0.00000000  0.00053916

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000143 -0.00112932 -0.00000000  0.00000000  0.00000000  0.00000095  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000200  0.00000000  0.00000000  0.00000000  0.00227350  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00012370 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000319  0.00000000  0.00000000  0.00000000  0.00227698
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000000 -0.00000317 -0.00000000  0.00000000  0.00000000 -0.00227698  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.99999941  0.00109072  0.00000000  0.00000000 -0.00000000 -0.00000091 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00006372 -0.00000000 -0.00000000 -0.00000000 -0.00006277
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000012  0.00000000  0.00000000 -0.00000000 -0.00010872 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00006378  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00006366 -0.00000000  0.00000000 -0.00000000  0.00006271 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00003651 -0.00000000  0.00000000  0.00000000 -0.00010842  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00076259 -0.00000000  0.00000000 -0.00000000  0.00000095  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000001  0.70809801  0.00000000 -0.00000000 -0.00000000 -0.70611211
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002

   8    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.70711260  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00041986 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00062971 -0.57699076 -0.00000000 -0.00000000  0.00000000  0.40688649 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000033 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00006390  0.00000000 -0.00000000 -0.00000000 -0.00006259

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00006390 -0.00000000  0.00000000  0.00000000 -0.00006259  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00007406 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000045 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00076248 -0.00000000  0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00062976  0.57805979 -0.00000000  0.00000000 -0.00000000  0.81598896  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.70611990 -0.00000001  0.00000000 -0.00000000  0.70809024 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                          -0.00000000 -0.00000000 -0.00000001  0.70611374  0.00000000  0.00000000  0.00000000  0.70809638

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00006372  0.00000000 -0.00000000  0.00000000 -0.00006277  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00006378 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000012 -0.00000000  0.00000000 -0.00000000  0.00010839  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00006366 -0.00000000 -0.00000000 -0.00000000 -0.00006271

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00003652  0.00000000 -0.00000000 -0.00000000 -0.00010841

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00076259  0.00000000 -0.00000000 -0.00000000  0.00000096

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.70809186  0.00000001 -0.00000000 -0.00000000  0.70611827 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00062971  0.57699747 -0.00000000  0.00000000 -0.00000000 -0.41060954 -0.00000000  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00041985 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.70710029 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34

   1    1  |0 0>           0.00000001 -0.00000000
                          -0.00000000 -0.00000000

   2    1  |0 0>           0.00012369 -0.00000000
                           0.00000000  0.00000000

   3    1  |0 0>           0.00227332 -0.00000000
                           0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000
                          -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00227688
                          -0.00000000 -0.00000009

   6    1  |0 0>          -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000001  0.00000000
                           0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   2    1  |1 1>+          0.00006237 -0.00000000
                           0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00006265
                          -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000
                           0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000
                           0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.70709879
                          -0.00000000 -0.00002743

   9    1  |1 1>+          0.70818130 -0.00000000
                           0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000
                           0.00012536 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000
                          -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000  0.00012525

   5    1  |1 0>           0.00000000 -0.00000000
                          -0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000
                           0.00000000 -0.00000001

   7    1  |1 0>          -0.00000000 -0.00000000
                           0.00214544  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000
                           0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000
                           0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000
                          -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000  0.00006265

   3    1  |1 1>-         -0.00000000 -0.00000000
                           0.00006294 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000
                          -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000
                           0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000
                           0.70602368 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00002743
                           0.00000000  0.70711109


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1   -679.91019672     -0.00000023       -0.05      0.00000000        0.00      0.0000
   2   1   -679.80858596      0.10161054    22300.94      0.10161076    22300.98      2.7650
   3   1   -679.80858596      0.10161054    22300.94      0.10161076    22300.98      2.7650
   4   1   -679.80858585      0.10161064    22300.96      0.10161087    22301.01      2.7650
   5   1   -679.80853539      0.10166111    22312.04      0.10166134    22312.08      2.7663
   6   1   -679.80853531      0.10166119    22312.05      0.10166142    22312.10      2.7663
   7   1   -679.80853496      0.10166154    22312.13      0.10166177    22312.18      2.7664
   8   1   -679.80853485      0.10166164    22312.15      0.10166187    22312.20      2.7664
   9   1   -679.80853485      0.10166164    22312.15      0.10166187    22312.20      2.7664
  10   1   -679.80845733      0.10173917    22329.17      0.10173939    22329.22      2.7685
  11   1   -679.80845714      0.10173936    22329.21      0.10173959    22329.26      2.7685
  12   1   -679.80845714      0.10173936    22329.21      0.10173959    22329.26      2.7685
  13   1   -679.80845712      0.10173938    22329.21      0.10173960    22329.26      2.7685
  14   1   -679.80845694      0.10173956    22329.25      0.10173979    22329.30      2.7685
  15   1   -679.80845694      0.10173956    22329.25      0.10173979    22329.30      2.7685
  16   1   -679.80845684      0.10173966    22329.27      0.10173988    22329.32      2.7685
  17   1   -679.80194580      0.10825070    23758.28      0.10825093    23758.33      2.9457
  18   1   -679.80194577      0.10825073    23758.29      0.10825095    23758.34      2.9457
  19   1   -679.80194572      0.10825077    23758.30      0.10825100    23758.35      2.9457
  20   1   -679.80194572      0.10825078    23758.30      0.10825100    23758.35      2.9457
  21   1   -679.80194572      0.10825078    23758.30      0.10825100    23758.35      2.9457
  22   1   -679.76591751      0.14427899    31665.58      0.14427922    31665.63      3.9260
  23   1   -679.76591751      0.14427899    31665.58      0.14427922    31665.63      3.9260
  24   1   -679.76591751      0.14427899    31665.58      0.14427922    31665.63      3.9260
  25   1   -679.75794187      0.15225462    33416.03      0.15225485    33416.08      4.1431
  26   1   -679.73313033      0.17706617    38861.53      0.17706640    38861.58      4.8182
  27   1   -679.73292394      0.17727256    38906.83      0.17727279    38906.88      4.8238
  28   1   -679.73292393      0.17727257    38906.83      0.17727279    38906.88      4.8238
  29   1   -679.73292337      0.17727313    38906.95      0.17727336    38907.00      4.8239
  30   1   -679.73251017      0.17768633    38997.64      0.17768656    38997.69      4.8351
  31   1   -679.73250997      0.17768653    38997.69      0.17768675    38997.73      4.8351
  32   1   -679.73250997      0.17768653    38997.69      0.17768676    38997.74      4.8351
  33   1   -679.73250938      0.17768712    38997.82      0.17768735    38997.86      4.8351
  34   1   -679.73250938      0.17768712    38997.82      0.17768735    38997.86      4.8351

 E0 =   -679.91019650 is the energy of the lowest zeroth-order state
 E1 =   -679.91019672 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999936  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00053679 -0.01022017  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.01022055  0.00053677  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00001630  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.01023663  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00001629  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.01023721
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000020  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000005  0.54944893 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009
                                0.00000000 -0.00000007 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

  9  1     2    1  |1 1>+       0.00000001  0.00000000  0.00000000  0.00000000  0.40729379  0.70737399 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.54902438  0.00000000 -0.00000000 -0.41003214  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000023 -0.00000000

 11  1     4    1  |1 1>+       0.00000000 -0.54672377 -0.00000005  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.40643142
                               -0.00000000  0.00000087  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001

 12  1     5    1  |1 1>+       0.00000000 -0.31416611 -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.70503517
                               -0.00000000  0.00000050  0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002

 13  1     6    1  |1 1>+       0.00000000 -0.00000007 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00008205 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00008252 -0.00000000  0.00000000  0.00012496 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00065200 -0.00000000 -0.00000000  0.00000000 -0.00012508  0.00007207 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.81685747  0.00061147  0.00000000 -0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000007 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                               -0.00000000  0.00000005 -0.54817721  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009

 19  1     3    1  |1 0>       -0.00000000 -0.00000087 -0.00000007 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000 -0.54817794 -0.00000005  0.00000000  0.00000000  0.00000000  0.00000000  0.41199239

 20  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000045 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000000  0.81464235 -0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.63019495 -0.00000000 -0.00000000 -0.00000032  0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00065204 -0.00000000  0.00000000  0.00000000 -0.00000011  0.00014439 -0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00008245  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00012507

 25  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00008245 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1     1    1  |1 1>-       0.00000000  0.00000087  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.54944856  0.00000005 -0.00000000  0.00000000  0.00000000  0.00000000  0.40975158

 27  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000023 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.54902327 -0.00000000  0.00000000  0.41003252 -0.00000000

 28  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000000  0.00000000 -0.00000000  0.40835141 -0.70676509  0.00000000 -0.00000000

 29  1     4    1  |1 1>-       0.00000000  0.00000007  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                                0.00000000 -0.00000005  0.54672457 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000009

 30  1     5    1  |1 1>-      -0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004
                               -0.00000000  0.00000003 -0.31416533  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000015

 31  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000007  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 32  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00008205 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00012488

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00065200 -0.00000000 -0.00000000 -0.00000000 -0.00012497 -0.00007226 -0.00000000  0.00000000

 34  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00008252  0.00000000 -0.00000000 -0.00012496  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000040  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000789 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.01023722 -0.00000000  0.00000000  0.00003982 -0.00000000  0.00000000  0.00002533  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00003111 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00003981  0.00000000 -0.00000000 -0.00002533  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     1    1  |1 1>+       0.40975109  0.00000000  0.00000034  0.71194194 -0.00000000 -0.00000006 -0.15274529  0.00000000
                                0.00000004  0.00000000 -0.00000000 -0.00000012 -0.00000000 -0.00000002 -0.00000001 -0.00000000

  9  1     2    1  |1 1>+       0.00000000  0.57763653 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.57615706 -0.00000000  0.00000000  0.44550134
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000016  0.00000000 -0.00000000 -0.00000003

 11  1     4    1  |1 1>+       0.00000009  0.00000000  0.55286412 -0.00000027  0.00000000 -0.47982331  0.00000019  0.00000000
                               -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000016 -0.00000005 -0.00000000

 12  1     5    1  |1 1>+      -0.00000015 -0.00000000 -0.28536968  0.00000014 -0.00000000 -0.56809929  0.00000022  0.00000000
                                0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000019 -0.00000006 -0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     7    1  |1 1>+      -0.00012488 -0.00000000  0.00000000  0.00000028 -0.00000000  0.00000000  0.00000026 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000037  0.00000000  0.00000000 -0.00000046
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.57677869  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000004  0.00000000  0.00000000  0.00000006  0.00000000 -0.00000007 -0.00000002 -0.00000000
                                0.41199227 -0.00000000  0.00000016  0.32558013 -0.00000000  0.00000025  0.65095639 -0.00000000

 19  1     3    1  |1 0>       -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000021 -0.00000007 -0.00000000
                               -0.00000009  0.00000000  0.32571175 -0.00000016  0.00000000  0.65088985 -0.00000025 -0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000016  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.57990340 -0.00000000  0.00000000 -0.00011443

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00015372  0.00000000  0.00000000  0.77643693

 22  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

 23  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000060  0.00000000 -0.00000000 -0.00000032  0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00012507 -0.00000000 -0.00000000 -0.00000060  0.00000000 -0.00000000 -0.00000032 -0.00000000

 26  1     1    1  |1 1>-      -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000  0.00000005  0.00000002  0.00000000
                               -0.00000009  0.00000000  0.71191099 -0.00000034  0.00000000 -0.15288946  0.00000006 -0.00000000

 27  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000  0.00000003
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.57598182  0.00000000  0.00000000  0.44572889

 28  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.57763516 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     4    1  |1 1>-      -0.00000004  0.00000000 -0.00000000 -0.00000009 -0.00000000 -0.00000005 -0.00000002 -0.00000000
                                0.40643002 -0.00000000 -0.00000027 -0.55296098  0.00000000  0.00000019  0.47971195 -0.00000000

 30  1     5    1  |1 1>-      -0.00000007 -0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000006  0.00000002  0.00000000
                                0.70503633  0.00000000 -0.00000014 -0.28525499  0.00000000 -0.00000022 -0.56815588  0.00000000

 31  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000

 32  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000028  0.00000000  0.00000000 -0.00000026  0.00000000  0.00000000

 33  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 34  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000037  0.00000000  0.00000000 -0.00000046


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.99994501  0.00024369 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00024369  0.99994500  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.99994500 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.99994501 -0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000087  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000001  0.99994500  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00417956 -0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00701235 -0.00454571 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00417980  0.00000000 -0.00000000  0.00000000 -0.00000008
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     4    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00417986 -0.00000009 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00723887 -0.00000005 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.99999964  0.00036920 -0.00000863
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000

 14  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00160887 -0.00000000  0.00000000  0.00000020 -0.00053931 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00160880  0.00000000  0.00000000 -0.00000000  0.00053916
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+      -0.00101037 -0.00155874 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00043000 -0.00834536 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00417964 -0.00000000  0.00000000  0.00000000 -0.00000010 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00417964 -0.00000010 -0.00000000  0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00835798 -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000010

 22  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000863 -0.00000017  0.99999971

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00185522  0.00009559  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00160888 -0.00053916 -0.00000020  0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00160888  0.00000000 -0.00000000  0.00000020 -0.00053916 -0.00000000

 26  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00417957  0.00000009  0.00000000 -0.00000000

 27  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00417980 -0.00000000 -0.00000000  0.00000000 -0.00000008

 28  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00744243 -0.00380092 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00417986 -0.00000000  0.00000000 -0.00000000  0.00000009  0.00000000

 30  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00723889 -0.00000000  0.00000000  0.00000000 -0.00000005 -0.00000000

 31  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000036  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00036920  0.99999964  0.00000017

 32  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00160887  0.00053931  0.00000020 -0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00084481 -0.00165433 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00160880 -0.00000000  0.00000000 -0.00000000  0.00053916


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000143 -0.00112932 -0.00000000  0.00000000  0.00000000  0.00000095  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000200  0.00000000  0.00000000  0.00000000  0.00227350  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00012370 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000319  0.00000000  0.00000000  0.00000000  0.00227698
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000000 -0.00000317 -0.00000000  0.00000000  0.00000000 -0.00227698  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.99999941  0.00109072  0.00000000  0.00000000 -0.00000000 -0.00000091 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00006372 -0.00000000 -0.00000000 -0.00000000 -0.00006277
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     2    1  |1 1>+       0.00000000 -0.00000012  0.00000000  0.00000000 -0.00000000 -0.00010872 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00006378  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000

 11  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00006366 -0.00000000  0.00000000 -0.00000000  0.00006271 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00003651 -0.00000000  0.00000000  0.00000000 -0.00010842  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00076259 -0.00000000  0.00000000 -0.00000000  0.00000095  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000001  0.70809801  0.00000000 -0.00000000 -0.00000000 -0.70611211
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002

 15  1     8    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.70711260  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00041986 -0.00000000 -0.00000000  0.00000000

 16  1     9    1  |1 1>+       0.00062971 -0.57699076 -0.00000000 -0.00000000  0.00000000  0.40688649 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000033 -0.00000000 -0.00000000

 18  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00006390  0.00000000 -0.00000000 -0.00000000 -0.00006259

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00006390 -0.00000000  0.00000000  0.00000000 -0.00006259  0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00007406 -0.00000000 -0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000045 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00076248 -0.00000000  0.00000000 -0.00000000

 23  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00062976  0.57805979 -0.00000000  0.00000000 -0.00000000  0.81598896  0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.70611990 -0.00000001  0.00000000 -0.00000000  0.70809024 -0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002
                               -0.00000000 -0.00000000 -0.00000001  0.70611374  0.00000000  0.00000000  0.00000000  0.70809638

 26  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00006372  0.00000000 -0.00000000  0.00000000 -0.00006277  0.00000000

 27  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00006378 -0.00000000 -0.00000000 -0.00000000

 28  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000012 -0.00000000  0.00000000 -0.00000000  0.00010839  0.00000000 -0.00000000

 29  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00006366 -0.00000000 -0.00000000 -0.00000000 -0.00006271

 30  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00003652  0.00000000 -0.00000000 -0.00000000 -0.00010841

 31  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00076259  0.00000000 -0.00000000 -0.00000000  0.00000096

 32  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.70809186  0.00000001 -0.00000000 -0.00000000  0.70611827 -0.00000000

 33  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00062971  0.57699747 -0.00000000  0.00000000 -0.00000000 -0.41060954 -0.00000000  0.00000000

 34  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00041985 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.70710029 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34

  1  1     1    1  |0 0>        0.00000001 -0.00000000
                               -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00012369 -0.00000000
                                0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00227332 -0.00000000
                                0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000
                               -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00227688
                               -0.00000000 -0.00000009

  6  1     6    1  |0 0>       -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000001  0.00000000
                                0.00000000  0.00000000

  8  1     1    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000  0.00000000

  9  1     2    1  |1 1>+       0.00006237 -0.00000000
                                0.00000000  0.00000000

 10  1     3    1  |1 1>+      -0.00000000 -0.00006265
                               -0.00000000 -0.00000000

 11  1     4    1  |1 1>+       0.00000000  0.00000000
                                0.00000000  0.00000000

 12  1     5    1  |1 1>+      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 13  1     6    1  |1 1>+      -0.00000000  0.00000000
                                0.00000000  0.00000000

 14  1     7    1  |1 1>+      -0.00000000 -0.00000000
                                0.00000000  0.00000000

 15  1     8    1  |1 1>+      -0.00000000 -0.70709879
                               -0.00000000 -0.00002743

 16  1     9    1  |1 1>+       0.70818130 -0.00000000
                                0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000
                                0.00012536 -0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000
                               -0.00000000 -0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000  0.00012525

 21  1     5    1  |1 0>        0.00000000 -0.00000000
                               -0.00000000  0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000
                                0.00000000 -0.00000001

 23  1     7    1  |1 0>       -0.00000000 -0.00000000
                                0.00214544  0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000
                                0.00000000  0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000
                                0.00000000  0.00000000

 26  1     1    1  |1 1>-       0.00000000  0.00000000
                               -0.00000000 -0.00000000

 27  1     2    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000  0.00006265

 28  1     3    1  |1 1>-      -0.00000000 -0.00000000
                                0.00006294 -0.00000000

 29  1     4    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 30  1     5    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 31  1     6    1  |1 1>-      -0.00000000 -0.00000000
                               -0.00000000 -0.00000000

 32  1     7    1  |1 1>-      -0.00000000 -0.00000000
                                0.00000000  0.00000000

 33  1     8    1  |1 1>-      -0.00000000 -0.00000000
                                0.70602368 -0.00000000

 34  1     9    1  |1 1>-      -0.00000000 -0.00002743
                                0.00000000  0.70711109



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%   30.19%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   16.59%   50.04%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%   30.14%    0.00%    0.00%   16.81%    0.00%
 11  1     4    1  |1 1>+         0.00%   29.89%    0.00%    0.00%    0.00%    0.00%    0.00%   16.52%
 12  1     5    1  |1 1>+         0.00%    9.87%    0.00%    0.00%    0.00%    0.00%    0.00%   49.71%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.73%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%   30.05%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%   30.05%    0.00%    0.00%    0.00%    0.00%    0.00%   16.97%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.36%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.71%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%   30.19%    0.00%    0.00%    0.00%    0.00%    0.00%   16.79%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%   30.14%    0.00%    0.00%   16.81%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   16.68%   49.95%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%   29.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    9.87%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+        16.79%    0.00%    0.00%   50.69%    0.00%    0.00%    2.33%    0.00%
  9  1     2    1  |1 1>+         0.00%   33.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.20%    0.00%    0.00%   19.85%
 11  1     4    1  |1 1>+         0.00%    0.00%   30.57%    0.00%    0.00%   23.02%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    8.14%    0.00%    0.00%   32.27%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%   33.27%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>         16.97%    0.00%    0.00%   10.60%    0.00%    0.00%   42.37%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%   10.61%    0.00%    0.00%   42.37%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.63%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   60.29%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%   50.68%    0.00%    0.00%    2.34%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.18%    0.00%    0.00%   19.87%
 28  1     3    1  |1 1>-         0.00%   33.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-        16.52%    0.00%    0.00%   30.58%    0.00%    0.00%   23.01%    0.00%
 30  1     5    1  |1 1>-        49.71%    0.00%    0.00%    8.14%    0.00%    0.00%   32.28%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%   99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%   99.99%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   99.99%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.99%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%    0.00%   50.14%    0.00%    0.00%    0.00%   49.86%
 15  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 16  1     9    1  |1 1>+         0.00%   33.29%    0.00%    0.00%    0.00%   16.56%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   33.42%    0.00%    0.00%    0.00%   66.58%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%   49.86%    0.00%    0.00%    0.00%   50.14%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%   49.86%    0.00%    0.00%    0.00%   50.14%
 26  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%   50.14%    0.00%    0.00%    0.00%   49.86%    0.00%
 33  1     8    1  |1 1>-         0.00%   33.29%    0.00%    0.00%    0.00%   16.86%    0.00%    0.00%
 34  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34

  1  1     1    1  |0 0>          0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%
  8  1     1    1  |1 1>+         0.00%    0.00%
  9  1     2    1  |1 1>+         0.00%    0.00%
 10  1     3    1  |1 1>+         0.00%    0.00%
 11  1     4    1  |1 1>+         0.00%    0.00%
 12  1     5    1  |1 1>+         0.00%    0.00%
 13  1     6    1  |1 1>+         0.00%    0.00%
 14  1     7    1  |1 1>+         0.00%    0.00%
 15  1     8    1  |1 1>+         0.00%   50.00%
 16  1     9    1  |1 1>+        50.15%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%
 26  1     1    1  |1 1>-         0.00%    0.00%
 27  1     2    1  |1 1>-         0.00%    0.00%
 28  1     3    1  |1 1>-         0.00%    0.00%
 29  1     4    1  |1 1>-         0.00%    0.00%
 30  1     5    1  |1 1>-         0.00%    0.00%
 31  1     6    1  |1 1>-         0.00%    0.00%
 32  1     7    1  |1 1>-         0.00%    0.00%
 33  1     8    1  |1 1>-        49.85%    0.00%
 34  1     9    1  |1 1>-         0.00%   50.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       97.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       80.46       700     1000      520     2100     2140     5201     5301   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       277.73    199.96     49.70     25.44      1.62      0.06      0.74
 REAL TIME  *       291.22 SEC
 DISK USED  *       117.33 MB (local),        1.58 GB (total)
 SF USED    *       435.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -679.732509376412

              CI              CI           MULTI         RHF-SCF
   -679.71832045   -679.74028854   -679.48372225   -679.62917830
 **********************************************************************************************************************************
 Molpro calculation terminated
