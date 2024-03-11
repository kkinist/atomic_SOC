
 Working directory              : /wrk/irikura/molpro.xHq2kXEqnk/
 Global scratch directory       : /wrk/irikura/molpro.xHq2kXEqnk/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.xHq2kXEqnk/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Cs SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Cs};
 
 basis=aug-cc-pwCVQZ-X2C
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=54,sym=1,spin=0}
 
 {multi
     closed,15,12
     occ,22,12
     wf,nelec=55,sym=1,spin=1;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,8,6
 
 {ci;wf,sym=1,spin=1;state,7; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cs SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 15:57:40  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CS     S aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry CS     P aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry CS     D aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry CS     F aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry CS     G aug-cc-pwCVQZ-X      selected for orbital group  1


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

   1  CS     55.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   55
 NUMBER OF PRIMITIVE AOS:         421
 NUMBER OF SYMMETRY AOS:          354
 NUMBER OF CONTRACTIONS:          168   (   90Ag  +   78Au  )
 NUMBER OF INNER CORE ORBITALS:    23   (   14Ag  +    9Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     98.304 MB (compressed) written to integral file ( 12.6%)

     Node minimum: 2.359 MB, node maximum: 16.515 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4239444.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4239444      RECORD LENGTH: 524288

 Memory used in sort:       4.80 MW

 SORT1 READ    97437068. AND WROTE      794900. INTEGRALS IN      3 RECORDS. CPU TIME:     0.41 SEC, REAL TIME:     0.43 SEC
 SORT2 READ     9792395. AND WROTE    50984466. INTEGRALS IN    456 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.11 SEC

 Node minimum:     4238250.  Node maximum:     4253526. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.354E-04 0.154E-03 0.475E-03 0.475E-03 0.475E-03 0.475E-03 0.475E-03 0.126E-02
         2 0.911E-04 0.911E-04 0.911E-04 0.576E-03 0.576E-03 0.576E-03 0.174E-02 0.174E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.36       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        14.41     14.23
 REAL TIME  *        15.50 SEC
 DISK USED  *        30.76 MB (local),      582.40 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  15  12

 NELEC=   54   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -7783.29343580   -7783.29343580     0.00D+00     0.12D+00     0     0       0.03      0.05    start
   2    -7783.29385048      -0.00041468     0.32D-03     0.65D-02     1     0       0.02      0.07    diag
   3    -7783.29387002      -0.00001954     0.15D-03     0.11D-02     2     0       0.02      0.09    diag
   4    -7783.29387201      -0.00000199     0.32D-04     0.61D-03     3     0       0.02      0.11    diag
   5    -7783.29387205      -0.00000003     0.40D-05     0.87D-04     4     0       0.03      0.14    diag
   6    -7783.29387205      -0.00000000     0.28D-06     0.57D-05     5     0       0.02      0.16    diag
   7    -7783.29387205       0.00000000     0.27D-07     0.46D-06     6     0       0.02      0.18    diag
   8    -7783.29387205       0.00000000     0.13D-08     0.96D-08     0     0       0.02      0.20    fixocc

 Final occupancy:  15  12

 !RHF STATE 1.1 Energy              -7783.293872045233
  RHF One-electron energy            -10632.5551146139    
  RHF Two-electron energy            2849.261242568680
  RHF Kinetic energy                 9196.244168228861
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.846355721930

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1329.08030     1  1  s    1.00000
    2.1     2.00000  -212.45320     1  2  s    1.00002
    3.1     2.00000   -45.95291     1  3  s    1.00017
    4.1     2.00000   -27.98907     1  1  d0  -0.32110    1  1  d2+  0.94704
    5.1     2.00000   -27.98907     1  1  d2-  0.99999
    6.1     2.00000   -27.98907     1  1  d1+  0.99928
    7.1     2.00000   -27.98907     1  1  d0   0.94637    1  1  d2+  0.32083
    8.1     2.00000   -27.98907     1  1  d1-  0.99999
    9.1     2.00000    -9.51067     1  4  s    0.99950
   10.1     2.00000    -3.43358     1  2  d0  -0.47016    1  2  d2+  0.88269
   11.1     2.00000    -3.43358     1  2  d2-  1.00006
   12.1     2.00000    -3.43358     1  2  d1+  1.00008
   13.1     2.00000    -3.43358     1  2  d0   0.88271    1  2  d2+  0.47015
   14.1     2.00000    -3.43358     1  2  d1-  1.00012
   15.1     2.00000    -1.48956     1  5  s    0.99644
    1.2     2.00000  -190.49016     1  1  px   1.00000
    2.2     2.00000  -190.49016     1  1  py   1.00000
    3.2     2.00000  -190.49016     1  1  pz   1.00000
    4.2     2.00000   -38.69889     1  2  px   1.00002
    5.2     2.00000   -38.69889     1  2  py   1.00002
    6.2     2.00000   -38.69889     1  2  pz   1.00002
    7.2     2.00000    -7.08797     1  3  px   1.00057
    8.2     2.00000    -7.08797     1  3  py   1.00057
    9.2     2.00000    -7.08797     1  3  pz   1.00057
   10.2     2.00000    -0.86179     1  4  py   0.95062
   11.2     2.00000    -0.86179     1  4  px   0.95062
   12.2     2.00000    -0.86179     1  4  pz   0.95062


 HOMO     12.2    -0.861785 =     -23.4504eV
 LUMO     16.1    -0.127301 =      -3.4640eV
 LUMO-HOMO         0.734485 =      19.9863eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.36       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.63       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        14.61      0.20     14.23
 REAL TIME  *        15.72 SEC
 DISK USED  *        31.93 MB (local),      596.47 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (   15   12)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:     134 (   68   66)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.257D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.693D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.483D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.278D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.715D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.351D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.144D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.107D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.350D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.213D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.131D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.930D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.760D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.343D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.541D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 4 2 6 1 5   3 4 2 6 1 1 2 6 4 3   5 1 6 4 3 5 2 1 6 4   3 5 2 711 91013 812
                                       1415 1 6 4 3 5 2 2 6   4 3 511 91310 71415   812 1 2 6 4 3 511 9  151412 8 71310 1 2 4
                                        6 3 5 2 4 6 5 3 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.200D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.280D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.398D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.174D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.984D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.868D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.925D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.925D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.173D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.173D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 2   1 3 2 1 3 3 2 1 2 1   3 9 7 5 4 610 8 3 2   1 7 9 5 4 6 810 3 2
                                        1 6 4 5 7 910 8 3 2   110 8 6 7 9 4 5 4 5   6 7 910 8 1 2 3 4 5   6 7 9 810 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  2393  ( 105 closed/active, 1812 closed/virtual, 0 active/active, 476 active/virtual )
 Total number of variables:    2442
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0  -7783.36598817   -7783.36622673   -0.00023856    0.02083039 0.00000279 0.00000000  0.39E-01      1.75
   2    5    4    0  -7783.36622691   -7783.36622691   -0.00000000    0.00004370 0.00000000 0.00000000  0.37E-03      3.36

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.19E-08)
                       Final energy:  -7783.36622691
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -7783.421543044034
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.44606777
 One electron energy                        -10642.66864490
 Two electron energy                          2859.24710185
 Virial ratio                                    1.84635102
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -7783.358628396643
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.31654280
 One electron energy                        -10641.23126062
 Two electron energy                          2857.87263223
 Virial ratio                                    1.84635610
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -7783.358628396583
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.31654280
 One electron energy                        -10641.23126060
 Two electron energy                          2857.87263220
 Virial ratio                                    1.84635610
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -7783.358628396580
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.31654280
 One electron energy                        -10641.23126060
 Two electron energy                          2857.87263220
 Virial ratio                                    1.84635610
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -7783.358628396569
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.31654280
 One electron energy                        -10641.23126059
 Two electron energy                          2857.87263219
 Virial ratio                                    1.84635610
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -7783.358628396564
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.31654280
 One electron energy                        -10641.23126059
 Two electron energy                          2857.87263219
 Virial ratio                                    1.84635610
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -7783.348903345431
 Nuclear energy                                  0.00000000
 Kinetic energy                               9196.18682925
 One electron energy                        -10637.07551223
 Two electron energy                          2853.72660888
 Virial ratio                                    1.84636698
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     2.986006798694
 !MCSCF expec                      <3.1|LXLX|3.1>     3.999958449341
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000037452739
 !MCSCF expec                      <5.1|LXLX|5.1>     1.000005566552
 !MCSCF expec                      <6.1|LXLX|6.1>     1.013991693195
 !MCSCF expec                      <7.1|LXLX|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     3.013928011052
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000035789494
 !MCSCF expec                      <4.1|LYLY|4.1>     3.999956378508
 !MCSCF expec                      <5.1|LYLY|5.1>     1.000004694701
 !MCSCF expec                      <6.1|LYLY|6.1>     0.986075163471
 !MCSCF expec                      <7.1|LYLY|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.000065190254
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.000005761164
 !MCSCF expec                      <4.1|LZLZ|4.1>     1.000006168753
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.999989738747
 !MCSCF expec                      <6.1|LZLZ|6.1>     3.999933143333
 !MCSCF expec                      <7.1|LZLZ|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 5 3 6 1 2   4 5 3 6 1 4 3 1 1 2   5 6 6 4 3 5 2 1 6 4   3 5 2 711 9101312 8
                                       1415 1 6 4 3 5 2 2 6   4 3 5111013 9 71415  12 8 1 2 6 4 3 511 9  141512 8 71310 1 2 4
                                        6 3 5 2 4 6 5 3 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 2   1 3 2 1 3 2 1 3 3 2   1 7 9 5 4 6 810 3 2   1 7 9 5 810 4 6 3 2
                                        1 7 9 6 5 410 8 3 2   110 8 6 7 9 5 4 5 4   6 7 910 8 1 2 3 4 5   6 7 9 810 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1328.92827     1  1  s    1.00000
    2.1     2.00000  -212.30088     1  2  s    1.00002
    3.1     2.00000   -45.80059     1  3  s    1.00017
    4.1     2.00000   -27.83675     1  1  d0   1.00000
    5.1     2.00000   -27.83675     1  1  d1+  1.00000
    6.1     2.00000   -27.83675     1  1  d2+  1.00000
    7.1     2.00000   -27.83675     1  1  d2-  1.00000
    8.1     2.00000   -27.83675     1  1  d1-  1.00000
    9.1     2.00000    -9.35842     1  4  s    0.99941
   10.1     2.00000    -3.28139     1  2  d0   1.00017
   11.1     2.00000    -3.28139     1  2  d1+  1.00017
   12.1     2.00000    -3.28139     1  2  d2+  1.00017
   13.1     2.00000    -3.28139     1  2  d2-  1.00017
   14.1     2.00000    -3.28139     1  2  d1-  1.00017
   15.1     2.00000    -1.33720     1  5  s    0.98597
   16.1     0.14286     0.03794     1  3  d1+  1.04000
   17.1     0.14286     0.03794     1  3  d2-  1.04000
   18.1     0.14286    -0.01686     1  6  s    1.00292
   19.1     0.14286     0.01591     1  6  s   -0.91807    1 13  s    1.45379
   20.1     0.14286     0.03794     1  3  d0   1.04000
   21.1     0.14286     0.03794     1  3  d2+  1.04000
   22.1     0.14286     0.03794     1  3  d1-  1.04000
    1.2     2.00000  -190.33784     1  1  px   1.00000
    2.2     2.00000  -190.33784     1  1  py   1.00000
    3.2     2.00000  -190.33784     1  1  pz   1.00000
    4.2     2.00000   -38.54652     1  2  px   1.00001
    5.2     2.00000   -38.54652     1  2  py   1.00001
    6.2     2.00000   -38.54652     1  2  pz   1.00001
    7.2     2.00000    -6.93566     1  3  px   1.00067
    8.2     2.00000    -6.93566     1  3  py   1.00067
    9.2     2.00000    -6.93566     1  3  pz   1.00067
   10.2     2.00000    -0.71078     1  4  py   0.98784
   11.2     2.00000    -0.71078     1  4  px   0.98784
   12.2     2.00000    -0.71078     1  4  pz   0.98784
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 0a00000        0.00000000     -0.00004828      0.00138209     -0.00122990      0.99999740      0.00133589      0.00000000
 000000a       -0.00000000     -0.00001942      0.99999308     -0.00345200     -0.00138646      0.00009690     -0.00000000
 a000000       -0.00000000      0.00046511      0.00345363      0.99999287      0.00122409      0.00078918      0.00000000
 00a0000        0.99999192     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00401916
 000a000       -0.00401916     -0.00000001      0.00000000      0.00000000     -0.00000000     -0.00000000      0.99999192
 0000a00        0.00000000      0.99999177      0.00001748     -0.00046840      0.00004230      0.00402971      0.00000001
 00000a0        0.00000000     -0.00403002     -0.00010155     -0.00078532     -0.00133690      0.99999067      0.00000000
 
 Energy:    -7783.42154304  -7783.35862840  -7783.35862840  -7783.35862840  -7783.35862840  -7783.35862840  -7783.34890335
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      127.28       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.28       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        18.31      3.69      0.20     14.23
 REAL TIME  *        20.41 SEC
 DISK USED  *       128.67 MB (local),        1.72 GB (total)
 SF USED    *       246.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -7783.421543  -0.0
    -7783.358628   6.0
    -7783.358628   6.0
    -7783.358628   6.0
    -7783.358628   6.0
    -7783.358628   6.0
    -7783.348903  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 55
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:     7378 conf    22302 CSFs
 N-1 el internal:     2640 conf    10102 CSFs
 N-2 el internal:      650 conf     2938 CSFs

 Number of electrons in valence space:                     27
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:          14 (   8   6 )
 Number of closed-shell orbitals:  13 (   7   6 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:     134 (  68  66 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.36 sec, npass=  1  Memory used:   3.29 MW


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -7783.42154304
     2     -7783.35862840
     3     -7783.35862840
     4     -7783.35862840
     5     -7783.35862840
     6     -7783.35862840
     7     -7783.34890335

 Number of blocks in overlap matrix:  1209   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    1209
 Number of N-1 electron functions:   10102

 Number of internal configurations:                11130
 Number of singly external configurations:        676772
 Number of doubly external configurations:       5433307
 Total number of contracted configurations:      6121209
 Total number of uncontracted configurations:   13859674

 Diagonal Coupling coefficients finished.               Storage:   7114546 words, CPU-Time:      3.28 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1947589 words, CPU-time:      1.37 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -7783.42154304    -0.00000000    -0.51914663  0.14D-01  0.90D-01     6.90
    1     2     2     1.00000000     0.00000000 -7783.35862840    -0.00000000    -0.51263060  0.12D-01  0.88D-01     6.90
    1     3     3     1.00000000     0.00000000 -7783.35862840    -0.00000000    -0.51263261  0.12D-01  0.88D-01     6.90
    1     4     4     1.00000000     0.00000000 -7783.35862840    -0.00000000    -0.51263410  0.12D-01  0.88D-01     6.90
    1     5     5     1.00000000     0.00000000 -7783.35862840    -0.00000000    -0.51262869  0.12D-01  0.88D-01     6.90
    1     6     6     1.00000000     0.00000000 -7783.35862840    -0.00000000    -0.51263512  0.12D-01  0.88D-01     6.90
    1     7     7     1.00000000     0.00000000 -7783.34890335     0.00000000    -0.50362775  0.11D-01  0.82D-01     6.90
    2     1     1     1.07828319    -0.45026637 -7783.87180942    -0.45026637    -0.00740338  0.81D-03  0.11D-02   146.40
    2     2     2     1.07588111    -0.44704104 -7783.80566944    -0.44704104    -0.00688751  0.71D-03  0.10D-02   146.40
    2     3     3     1.07588078    -0.44703992 -7783.80566831    -0.44703992    -0.00688810  0.71D-03  0.10D-02   146.40
    2     4     4     1.07588610    -0.44703905 -7783.80566745    -0.44703905    -0.00688990  0.71D-03  0.10D-02   146.40
    2     5     5     1.07588421    -0.44703748 -7783.80566588    -0.44703748    -0.00689106  0.72D-03  0.10D-02   146.40
    2     6     6     1.07588544    -0.44703501 -7783.80566340    -0.44703501    -0.00689333  0.72D-03  0.10D-02   146.40
    2     7     7     1.07182926    -0.44381905 -7783.79272240    -0.44381905    -0.00626458  0.50D-03  0.83D-03   146.40
    3     1     1     1.07676326    -0.45769646 -7783.87923951    -0.00743009    -0.00011866  0.62D-05  0.21D-04   286.80
    3     2     2     1.07520932    -0.45399109 -7783.81261949    -0.00695005    -0.00010874  0.52D-05  0.20D-04   286.80
    3     3     3     1.07520802    -0.45399099 -7783.81261938    -0.00695107    -0.00010878  0.52D-05  0.20D-04   286.80
    3     4     4     1.07520951    -0.45399098 -7783.81261937    -0.00695193    -0.00010887  0.52D-05  0.20D-04   286.80
    3     5     5     1.07520836    -0.45399089 -7783.81261929    -0.00695342    -0.00010891  0.52D-05  0.20D-04   286.80
    3     6     6     1.07520726    -0.45399088 -7783.81261928    -0.00695587    -0.00010891  0.52D-05  0.20D-04   286.80
    3     7     7     1.07266733    -0.45021160 -7783.79911495    -0.00639255    -0.00010197  0.46D-05  0.17D-04   286.80
    4     1     1     1.07741506    -0.45782254 -7783.87936558    -0.00012607    -0.00000361  0.72D-06  0.57D-06   426.41
    4     2     2     1.07587750    -0.45410803 -7783.81273643    -0.00011694    -0.00000338  0.92D-06  0.53D-06   426.41
    4     3     3     1.07587749    -0.45410803 -7783.81273642    -0.00011704    -0.00000339  0.92D-06  0.53D-06   426.41
    4     4     4     1.07587726    -0.45410802 -7783.81273641    -0.00011704    -0.00000339  0.92D-06  0.53D-06   426.41
    4     5     5     1.07587740    -0.45410802 -7783.81273641    -0.00011712    -0.00000339  0.92D-06  0.53D-06   426.41
    4     6     6     1.07587730    -0.45410802 -7783.81273641    -0.00011713    -0.00000339  0.92D-06  0.53D-06   426.41
    4     7     7     1.07331023    -0.45032247 -7783.79922581    -0.00011087    -0.00000330  0.44D-06  0.55D-06   426.41
    5     1     1     1.07751899    -0.45782640 -7783.87936944    -0.00000386    -0.00000014  0.11D-07  0.26D-07   566.05
    5     2     2     1.07598875    -0.45411176 -7783.81274016    -0.00000373    -0.00000016  0.18D-07  0.32D-07   566.05
    5     3     3     1.07598871    -0.45411176 -7783.81274016    -0.00000373    -0.00000016  0.18D-07  0.32D-07   566.05
    5     4     4     1.07598875    -0.45411176 -7783.81274016    -0.00000374    -0.00000016  0.18D-07  0.32D-07   566.05
    5     5     5     1.07598874    -0.45411176 -7783.81274016    -0.00000374    -0.00000016  0.19D-07  0.32D-07   566.05
    5     6     6     1.07598873    -0.45411176 -7783.81274016    -0.00000374    -0.00000016  0.19D-07  0.32D-07   566.05
    5     7     7     1.07340597    -0.45032607 -7783.79922942    -0.00000360    -0.00000015  0.12D-07  0.26D-07   566.05
    6     1     1     1.07752964    -0.45782655 -7783.87936960    -0.00000016    -0.00000000  0.54D-09  0.59D-09   705.11
    6     2     2     1.07600281    -0.45411194 -7783.81274034    -0.00000018    -0.00000001  0.18D-08  0.79D-09   705.11
    6     3     3     1.07600281    -0.45411194 -7783.81274034    -0.00000018    -0.00000001  0.18D-08  0.79D-09   705.11
    6     4     4     1.07600281    -0.45411194 -7783.81274034    -0.00000018    -0.00000001  0.18D-08  0.79D-09   705.11
    6     5     5     1.07600281    -0.45411194 -7783.81274034    -0.00000018    -0.00000001  0.18D-08  0.79D-09   705.11
    6     6     6     1.07600281    -0.45411194 -7783.81274034    -0.00000018    -0.00000001  0.18D-08  0.80D-09   705.11
    6     7     7     1.07341236    -0.45032623 -7783.79922958    -0.00000016    -0.00000000  0.49D-09  0.70D-09   705.11


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   0.7%  58.1%
 P   0.5%  12.3%   6.4%

 Initialization:   0.7%
 Other:           19.5%

 Total CPU:      705.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222/000000222222           0.0000000  -0.0000000   0.0000000   0.9638285   0.0000000  -0.0000000  -0.0000000
 22222220/00000222222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.9638285   0.0000000  -0.0000000
 2222222000000/222222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.9638285   0.0000000
 22222220000/00222222          -0.0000000   0.9638285  -0.0001120  -0.0000000   0.0000000  -0.0000000  -0.0000000
 222222200000/0222222           0.0000000   0.0001120   0.9638285  -0.0000000   0.0000000   0.0000000   0.0000000
 2222222000/000222222          -0.0520730   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9634426
 222222200/0000222222           0.9617057   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0538646

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.961907   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.048207
 2           0.000000    0.963829   -0.000000   -0.000000   -0.000000    0.000112    0.000000
 3           0.000000   -0.000112   -0.000000    0.000000   -0.000000    0.963829   -0.000000
 4           0.000000   -0.000000    0.000000    0.963829    0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.963829    0.000000   -0.000000
 6          -0.000000   -0.000000    0.963829   -0.000000    0.000000    0.000000   -0.000000
 7           0.049992   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.963651

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.963114    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000847
 2           0.000000    0.963829   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.963829   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.963829    0.000000    0.000000   -0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.963829    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.963829   -0.000000
 7           0.000847   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.964947


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96190726 (fixed)   0.96311449 (relaxed)   0.96311412 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00049581   -0.00097373   -0.42611869
 Singles      0.00917593   -0.02391048   -0.02607671
 Pairs        0.06839215    0.02524011   -0.00563115
 Total        1.07806389    0.00035590   -0.45782655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.42135461
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.78545404
 One electron energy               -10641.24284763
 Two electron energy                 2857.36347803
 Virial quotient                       -0.84646161
 Correlation energy                    -0.45801498
 !MRCI STATE 1.1 Energy             -7783.879369597980

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.91512403 (Davidson, fixed reference)
 Cluster corrected energies         -7783.91512365 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.91512403 (Davidson, rotated reference)

 Cluster corrected energies         -7783.91469041 (Pople, fixed reference)
 Cluster corrected energies         -7783.91469001 (Pople, relaxed reference)
 Cluster corrected energies         -7783.91469041 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96382854 (fixed)   0.96382855 (relaxed)   0.96382855 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043073   -0.00083631   -0.40132718
 Singles      0.00830435   -0.02229236   -0.02421291
 Pairs        0.06773119   -0.00000001   -0.02857186
 Total        1.07646628   -0.02312869   -0.45411194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35862840
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.67331069
 One electron energy               -10639.74918759
 Two electron energy                 2855.93644725
 Virial quotient                       -0.84646469
 Correlation energy                    -0.45411194
 !MRCI STATE 2.1 Energy             -7783.812740341050

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.84746459 (Davidson, fixed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, rotated reference)

 Cluster corrected energies         -7783.84699463 (Pople, fixed reference)
 Cluster corrected energies         -7783.84699463 (Pople, relaxed reference)
 Cluster corrected energies         -7783.84699463 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96382854 (fixed)   0.96382855 (relaxed)   0.96382855 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043073   -0.00083631   -0.40132718
 Singles      0.00830435   -0.02229237   -0.02421291
 Pairs        0.06773119    0.00000000   -0.02857185
 Total        1.07646628   -0.02312868   -0.45411194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35862840
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.67330810
 One electron energy               -10639.74918407
 Two electron energy                 2855.93644373
 Virial quotient                       -0.84646469
 Correlation energy                    -0.45411194
 !MRCI STATE 3.1 Energy             -7783.812740340776

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.84746459 (Davidson, fixed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, rotated reference)

 Cluster corrected energies         -7783.84699463 (Pople, fixed reference)
 Cluster corrected energies         -7783.84699463 (Pople, relaxed reference)
 Cluster corrected energies         -7783.84699463 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96382855 (fixed)   0.96382855 (relaxed)   0.96382855 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043073   -0.00083631   -0.40132719
 Singles      0.00830435   -0.02229236   -0.02421291
 Pairs        0.06773120    0.00000000   -0.02857185
 Total        1.07646628   -0.02312868   -0.45411194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35862840
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.67331071
 One electron energy               -10639.74918890
 Two electron energy                 2855.93644856
 Virial quotient                       -0.84646469
 Correlation energy                    -0.45411194
 !MRCI STATE 4.1 Energy             -7783.812740340657

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.84746459 (Davidson, fixed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, rotated reference)

 Cluster corrected energies         -7783.84699463 (Pople, fixed reference)
 Cluster corrected energies         -7783.84699463 (Pople, relaxed reference)
 Cluster corrected energies         -7783.84699463 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96382855 (fixed)   0.96382855 (relaxed)   0.96382855 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043073   -0.00083631   -0.40132718
 Singles      0.00830435   -0.02229236   -0.02421291
 Pairs        0.06773120    0.00000000   -0.02857185
 Total        1.07646628   -0.02312868   -0.45411194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35862840
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.67330926
 One electron energy               -10639.74918687
 Two electron energy                 2855.93644653
 Virial quotient                       -0.84646469
 Correlation energy                    -0.45411194
 !MRCI STATE 5.1 Energy             -7783.812740340645

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.84746459 (Davidson, fixed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, rotated reference)

 Cluster corrected energies         -7783.84699463 (Pople, fixed reference)
 Cluster corrected energies         -7783.84699463 (Pople, relaxed reference)
 Cluster corrected energies         -7783.84699463 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96382855 (fixed)   0.96382855 (relaxed)   0.96382855 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043073   -0.00083631   -0.40132719
 Singles      0.00830435   -0.02229236   -0.02421291
 Pairs        0.06773120   -0.00000000   -0.02857185
 Total        1.07646628   -0.02312867   -0.45411194
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.35862840
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.67331472
 One electron energy               -10639.74919357
 Two electron energy                 2855.93645323
 Virial quotient                       -0.84646469
 Correlation energy                    -0.45411194
 !MRCI STATE 6.1 Energy             -7783.812740340642

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.84746459 (Davidson, fixed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.84746459 (Davidson, rotated reference)

 Cluster corrected energies         -7783.84699463 (Pople, fixed reference)
 Cluster corrected energies         -7783.84699463 (Pople, relaxed reference)
 Cluster corrected energies         -7783.84699463 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96365128 (fixed)   0.96494714 (relaxed)   0.96494677 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00052212   -0.00101481   -0.00169672
 Singles      0.00825344   -0.02321807   -0.02507983
 Pairs        0.06519725   -0.42552106   -0.42354969
 Total        1.07397282   -0.44975394   -0.45032623
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -7783.34909177
 Nuclear energy                         0.00000000
 Kinetic energy                      9195.62894373
 One electron energy               -10635.60307616
 Two electron energy                 2851.80384658
 Virial quotient                       -0.84646730
 Correlation energy                    -0.45013780
 !MRCI STATE 7.1 Energy             -7783.799229579448

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -7783.83252754 (Davidson, fixed reference)
 Cluster corrected energies         -7783.83252717 (Davidson, relaxed reference)
 Cluster corrected energies         -7783.83252754 (Davidson, rotated reference)

 Cluster corrected energies         -7783.83200401 (Pople, fixed reference)
 Cluster corrected energies         -7783.83200362 (Pople, relaxed reference)
 Cluster corrected energies         -7783.83200401 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      127.28       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      334.23       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       762.94    744.63      3.69      0.20     14.23
 REAL TIME  *       783.35 SEC
 DISK USED  *       461.62 MB (local),        5.62 GB (total)
 SF USED    *         2.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -7783.91512403  AU                              
 SETTING HLSDIAG(2)     =     -7783.84746459  AU                              
 SETTING HLSDIAG(3)     =     -7783.84746459  AU                              
 SETTING HLSDIAG(4)     =     -7783.84746459  AU                              
 SETTING HLSDIAG(5)     =     -7783.84746459  AU                              
 SETTING HLSDIAG(6)     =     -7783.84746459  AU                              
 SETTING HLSDIAG(7)     =     -7783.83252754  AU                              


         HLSDIAG
    -7783.915124
    -7783.847465
    -7783.847465
    -7783.847465
    -7783.847465
    -7783.847465
    -7783.832528
                                                  


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

 Time for Seward_LS:     201.56 sec

       59109435. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    14773 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    201.56 sec, REAL time:    202.69 sec


 SORTLS1 read    60466966. and wrote    60466966. SO integrals in   240 records. CPU time:      0.53 sec, REAL time:      0.84 sec
 SORTLS2 read    60466966. and wrote   302326128. SO integrals in    36 records. CPU time:      0.31 sec, REAL time:      0.46 sec

 FILE SIZES: FILE 1:  1101.8 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1101.8 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:  -7783.879370  -7783.812740  -7783.812740  -7783.812740  -7783.812740  -7783.812740  -7783.799230
 Replaced energies:  -7783.915124  -7783.847465  -7783.847465  -7783.847465  -7783.847465  -7783.847465  -7783.832528



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -7783.91512403

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    2   2.1  0.5  0.5       0.00   14849.53       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

    3   3.1  0.5  0.5       0.00       0.00   14849.53       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00     -24.19       0.00      -0.00      -0.00       0.00       0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   14849.53       0.00       0.00       0.00       0.00      20.95     -12.10
                            0.00      -0.00      -0.00       0.00      -0.00     -12.10       0.00       0.00       0.00       0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   14849.53       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      24.19       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   14849.53       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      12.10       0.00       0.00       0.00      -0.00     -20.95     -12.09

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   18127.83      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    8   1.1  0.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00      20.95      -0.00      -0.00       0.00       0.00   14849.53       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      20.95      -0.00      -0.00       0.00      -0.00

   10   3.1  0.5 -0.5      -0.00      -0.00      -0.00     -12.10       0.00       0.00      -0.00       0.00       0.00   14849.53
                           -0.00       0.00      -0.00      -0.00       0.00      12.09      -0.00       0.00       0.00      -0.00

   11   4.1  0.5 -0.5      -0.00     -20.95      12.10      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      12.10       0.00       0.00      -0.00       0.00       0.00

   12   5.1  0.5 -0.5       0.00       0.00      -0.00       0.00       0.00     -12.10       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -12.10       0.00       0.00      -0.00      -0.00      -0.00     -24.19

   13   6.1  0.5 -0.5       0.00       0.00      -0.00       0.00      12.10      -0.00       0.00       0.00       0.00       0.00
                           -0.00     -20.95     -12.09      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   14   7.1  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00

    2   2.1  0.5  0.5     -20.95       0.00       0.00      -0.00
                           -0.00      -0.00      20.95      -0.00

    3   3.1  0.5  0.5      12.10      -0.00      -0.00       0.00
                           -0.00       0.00      12.09      -0.00

    4   4.1  0.5  0.5      -0.00       0.00       0.00      -0.00
                           -0.00      12.10       0.00       0.00

    5   5.1  0.5  0.5      -0.00       0.00      12.10      -0.00
                          -12.10      -0.00       0.00      -0.00

    6   6.1  0.5  0.5      -0.00     -12.10      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      24.19      -0.00       0.00

   11   4.1  0.5 -0.5   14849.53       0.00       0.00       0.00
                           -0.00       0.00      12.10      -0.00

   12   5.1  0.5 -0.5       0.00   14849.53       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   6.1  0.5 -0.5       0.00       0.00   14849.53       0.00
                          -12.10      -0.00      -0.00      -0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   18127.83
                            0.00      -0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -7783.91512403     0.00000000        0.00      0.00000000        0.00      0.0000
     2 -7783.91512403     0.00000000        0.00      0.00000000        0.00      0.0000
     3 -7783.84762992     0.06749410    14813.24      0.06749410    14813.24      1.8366
     4 -7783.84762992     0.06749410    14813.24      0.06749410    14813.24      1.8366
     5 -7783.84762992     0.06749411    14813.25      0.06749411    14813.25      1.8366
     6 -7783.84762992     0.06749411    14813.25      0.06749411    14813.25      1.8366
     7 -7783.84735438     0.06776964    14873.72      0.06776964    14873.72      1.8441
     8 -7783.84735438     0.06776964    14873.72      0.06776964    14873.72      1.8441
     9 -7783.84735437     0.06776966    14873.72      0.06776966    14873.72      1.8441
    10 -7783.84735437     0.06776966    14873.72      0.06776966    14873.72      1.8441
    11 -7783.84735437     0.06776966    14873.72      0.06776966    14873.72      1.8441
    12 -7783.84735437     0.06776966    14873.72      0.06776966    14873.72      1.8441
    13 -7783.83252754     0.08259649    18127.83      0.08259649    18127.83      2.2476
    14 -7783.83252754     0.08259649    18127.83      0.08259649    18127.83      2.2476


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   1.000000000  -0.000000000   0.000000021  -0.000000007   0.000000003  -0.000000055   0.000000000   0.000000046
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5   0.000000000  -0.000000000  -0.070029064   0.024389697  -0.036101373   0.627039800   0.007200283   0.763933548
                        -0.000000000   0.000000000   0.000000023  -0.000000020  -0.000000004   0.000000011  -0.000000016  -0.000000004

    3    3.1  0.5  0.5   0.000000000  -0.000000000  -0.593150462   0.206582188   0.004262589  -0.074036437   0.000095434   0.010124484
                         0.000000000  -0.000000000  -0.000000109   0.000000074   0.000000018  -0.000000044  -0.000000017   0.000000010

    4    4.1  0.5  0.5   0.000000000  -0.000000000  -0.003334338  -0.009573657   0.011758651   0.000676985   0.129808075  -0.001223471
                        -0.000000000  -0.000000044  -0.082119444  -0.235786007  -0.579917784  -0.033388353   0.516644330  -0.004869511

    5    5.1  0.5  0.5   0.000000000  -0.000000000  -0.000000109   0.000000074   0.000000018  -0.000000044   0.000000012  -0.000000020
                        -0.000000017   0.000000000   0.593160704  -0.206585755  -0.004258527   0.073965876   0.000960153   0.101869788

    6    6.1  0.5  0.5  -0.000000000  -0.000000060   0.124290069   0.356868664  -0.505980965  -0.029131498   0.338846733  -0.003193731
                        -0.000000000   0.000000000  -0.005046549  -0.014489915  -0.010259519  -0.000590689  -0.085136001   0.000802417

    7    7.1  0.5  0.5  -0.000000000  -0.000000000   0.000000054  -0.000000019   0.000000007  -0.000000118   0.000000001   0.000000102
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    8    1.1  0.5 -0.5   0.000000000   0.004997599   0.000000000   0.000000001   0.000000001   0.000000000   0.000000011  -0.000000000
                         0.000000000   0.999987512   0.000000007   0.000000021  -0.000000055  -0.000000003   0.000000045  -0.000000000

    9    2.1  0.5 -0.5  -0.000000000   0.000000000  -0.000989455  -0.002841014  -0.012711527  -0.000731853   0.186154212  -0.001754539
                         0.000000000   0.000000000  -0.024369618  -0.069971410   0.626910942   0.036093954   0.740905578  -0.006983242

   10    3.1  0.5 -0.5   0.000000000   0.000000000  -0.008380992  -0.024063874   0.001500844   0.000086394   0.002467129  -0.000023239
                         0.000000000   0.000000000  -0.206412111  -0.592662130  -0.074021222  -0.004261714   0.009819289  -0.000092561

   11    4.1  0.5 -0.5   0.000000044  -0.000000000   0.235980286  -0.082187108  -0.033395216   0.580036984  -0.005020858  -0.532702075
                        -0.000000000   0.000000000   0.000000075  -0.000000055  -0.000000013   0.000000032   0.000000004  -0.000000008

   12    5.1  0.5 -0.5  -0.000000000  -0.000000017   0.206415675   0.592672364   0.073950675   0.004257652   0.098799025  -0.000931214
                         0.000000000   0.000000000  -0.008381137  -0.024064290   0.001499414   0.000086312  -0.024823502   0.000233958

   13    6.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000035  -0.000000020  -0.000000005   0.000000012  -0.000000014  -0.000000013
                         0.000000060   0.000000000  -0.357162710   0.124392480  -0.029137487   0.506084967  -0.003292992  -0.349378372

   14    7.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000001   0.000000002   0.000000002   0.000000000   0.000000025  -0.000000000
                        -0.000000000  -0.000000000   0.000000019   0.000000054  -0.000000118  -0.000000007   0.000000099  -0.000000001


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5  -0.000000000   0.000000008   0.000000006  -0.000000011  -0.000000000  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5   0.000000004  -0.066593884   0.054027373  -0.094967575  -0.000000000  -0.000000001
                        -0.000000032   0.000000025   0.000000071   0.000000041  -0.000000000   0.000000000

    3    3.1  0.5  0.5  -0.000000056   0.690804605   0.173198612  -0.304442917  -0.000000000  -0.000000000
                         0.000000147  -0.000000117   0.000000221   0.000000110  -0.000000000   0.000000000

    4    4.1  0.5  0.5  -0.007258845  -0.000000009   0.481564587   0.273963760  -0.000000006   0.000000000
                        -0.009968361  -0.000000005   0.082874688   0.047147259  -0.000000092   0.000000000

    5    5.1  0.5  0.5  -0.000000164   0.000000103   0.000000176   0.000000048   0.000000000  -0.000000000
                        -0.000000050   0.716953555  -0.135954002   0.238975632  -0.000000000  -0.000000045

    6    6.1  0.5  0.5  -0.052263044  -0.000000021  -0.101463635  -0.057722465  -0.000000136   0.000000000
                         0.038057434  -0.000000038   0.589580310   0.335414287   0.000000009  -0.000000000

    7    7.1  0.5  0.5  -0.000000000   0.000000023   0.000000015  -0.000000026   0.001590189   0.999998720
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000172840  -0.000045157

    8    1.1  0.5 -0.5   0.000000004   0.000000000  -0.000000010  -0.000000006  -0.000000000   0.000000000
                         0.000000006  -0.000000000  -0.000000002  -0.000000001  -0.000000000   0.000000000

    9    2.1  0.5 -0.5  -0.039200924   0.000000026  -0.093591750  -0.053244678  -0.000000000   0.000000000
                        -0.053833383  -0.000000022  -0.016106656  -0.009163037  -0.000000001   0.000000000

   10    3.1  0.5 -0.5   0.406646762  -0.000000082  -0.300032380  -0.170689483  -0.000000000   0.000000000
                         0.558434783   0.000000130  -0.051633979  -0.029374470  -0.000000000   0.000000000

   11    4.1  0.5 -0.5  -0.000000008   0.012331231   0.277991018  -0.488643700   0.000000000   0.000000092
                         0.000000001  -0.000000028   0.000000356   0.000000134   0.000000000  -0.000000000

   12    5.1  0.5 -0.5   0.579573156   0.000000138   0.040530613   0.023057792  -0.000000045   0.000000000
                        -0.422039527   0.000000106  -0.235513516  -0.133984436   0.000000003  -0.000000000

   13    6.1  0.5 -0.5  -0.000000036   0.000000000   0.000000438   0.000000182  -0.000000000   0.000000000
                         0.000000004   0.064651318  -0.340344865   0.598247283   0.000000000   0.000000136

   14    7.1  0.5 -0.5   0.000000013  -0.000000000  -0.000000026  -0.000000015   0.067032210  -0.000279117
                         0.000000018   0.000000000  -0.000000004  -0.000000003   0.997749530  -0.001575014


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%   0.490%   0.059%   0.130%  39.318%   0.005%  58.359%   0.000%   0.443%
    3    3.1  0.5  0.5   0.000%   0.000%  35.183%   4.268%   0.002%   0.548%   0.000%   0.010%   0.000%  47.721%
    4    4.1  0.5  0.5   0.000%   0.000%   0.675%   5.569%  33.644%   0.112%  28.377%   0.003%   0.015%   0.000%
    5    5.1  0.5  0.5   0.000%   0.000%  35.184%   4.268%   0.002%   0.547%   0.000%   1.038%   0.000%  51.402%
    6    6.1  0.5  0.5   0.000%   0.000%   1.547%  12.757%  25.612%   0.085%  12.207%   0.001%   0.418%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%   0.059%   0.490%  39.318%   0.130%  58.359%   0.005%   0.443%   0.000%
   10    3.1  0.5 -0.5   0.000%   0.000%   4.268%  35.183%   0.548%   0.002%   0.010%   0.000%  47.721%   0.000%
   11    4.1  0.5 -0.5   0.000%   0.000%   5.569%   0.675%   0.112%  33.644%   0.003%  28.377%   0.000%   0.015%
   12    5.1  0.5 -0.5   0.000%   0.000%   4.268%  35.184%   0.547%   0.002%   1.038%   0.000%  51.402%   0.000%
   13    6.1  0.5 -0.5   0.000%   0.000%  12.757%   1.547%   0.085%  25.612%   0.001%  12.207%   0.000%   0.418%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.292%   0.902%   0.000%   0.000%
    3    3.1  0.5  0.5   3.000%   9.269%   0.000%   0.000%
    4    4.1  0.5  0.5  23.877%   7.728%   0.000%   0.000%
    5    5.1  0.5  0.5   1.848%   5.711%   0.000%   0.000%
    6    6.1  0.5  0.5  35.790%  11.583%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000% 100.000%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.902%   0.292%   0.000%   0.000%
   10    3.1  0.5 -0.5   9.269%   3.000%   0.000%   0.000%
   11    4.1  0.5 -0.5   7.728%  23.877%   0.000%   0.000%
   12    5.1  0.5 -0.5   5.711%   1.848%   0.000%   0.000%
   13    6.1  0.5 -0.5  11.583%  35.790%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000% 100.000%   0.000%


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
              1      24     1050.75       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      334.23       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2013.06   1250.11    744.63      3.69      0.20     14.23
 REAL TIME  *      2065.09 SEC
 DISK USED  *       461.78 MB (local),        8.65 GB (total)
 SF USED    *         2.68 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-X2C energy=  -7783.832527540024

              CI           MULTI         RHF-SCF
  -7783.79922958  -7783.34890335  -7783.29387205
 **********************************************************************************************************************************
 Molpro calculation terminated
