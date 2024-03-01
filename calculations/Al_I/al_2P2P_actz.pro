
 Working directory              : /wrk/irikura/molpro.8HTDhGMg8x/
 Global scratch directory       : /wrk/irikura/molpro.8HTDhGMg8x/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.8HTDhGMg8x/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Al SO-CI
                                                                                 ! Active space (3,8) includes 4s4p
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Al};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=13,sym=2,spin=1}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     occ,4,9
     wf,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=1;state,6; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.00 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Al SO-CI                                                                                                                                                      
  (4 PROC) 64 bit mpp version                                                            DATE: 22-Feb-24          TIME: 14:58:24  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry AL     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AL     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AL     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AL     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  AL     13.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   13
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

     6.029 MB (compressed) written to integral file ( 16.0%)

     Node minimum: 1.049 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     416030.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     416030      RECORD LENGTH: 524288

 Memory used in sort:       0.97 MW

 SORT1 READ     4558334. AND WROTE       89447. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     20 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC

 Node minimum:      415738.  Node maximum:      418032. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.215E-02 0.861E-02 0.659E-01 0.190E+00 0.190E+00 0.190E+00 0.190E+00 0.190E+00
         2 0.133E-01 0.133E-01 0.133E-01 0.300E-01 0.300E-01 0.300E-01 0.928E-01 0.928E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.76      0.58
 REAL TIME  *         1.80 SEC
 DISK USED  *        29.14 MB (local),      168.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   3   4
 Initial beta  occupancy:   3   3

 NELEC=   13   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -242.30212044    -242.30212044     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -242.30797151      -0.00585107     0.20D-02     0.74D-02     1     0       0.00      0.01    diag2
   3     -242.30995157      -0.00198006     0.74D-03     0.36D-02     2     0       0.00      0.01    diag2
   4     -242.31071718      -0.00076561     0.40D-03     0.29D-02     3     0       0.01      0.02    diag2
   5     -242.31082898      -0.00011180     0.16D-03     0.18D-02     4     0       0.00      0.02    diag2
   6     -242.31082987      -0.00000089     0.23D-04     0.21D-03     5     0       0.00      0.02    diag2
   7     -242.31082990      -0.00000003     0.40D-05     0.32D-04     6     0       0.01      0.03    diag2
   8     -242.31082990      -0.00000000     0.90D-06     0.84D-05     7     0       0.00      0.03    fixocc
   9     -242.31082990      -0.00000000     0.17D-06     0.13D-05     8     0       0.00      0.03    diag2
  10     -242.31082990      -0.00000000     0.18D-07     0.10D-06     0     0       0.01      0.04    diag/orth

 Final alpha occupancy:   3   4
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -242.310829904421
  RHF One-electron energy            -337.217008469518
  RHF Two-electron energy              94.906178565097
  RHF Kinetic energy                  245.081502299916
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.988694893864

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.62125     1  1  s    0.99967
    2.1     2.00000    -4.92939     1  2  s    0.99979
    3.1     2.00000    -0.39501     1  3  s    1.00963
    1.2     2.00000    -3.21757     1  1  px   0.99916
    2.2     2.00000    -3.21757     1  1  py   0.99916
    3.2     2.00000    -3.21680     1  1  pz   1.00195
    4.2     1.00000    -0.20947     1  2  pz   1.00542


 HOMO      4.2    -0.209472 =      -5.7000eV
 LUMO      5.2     0.007770 =       0.2114eV
 LUMO-HOMO         0.217242 =       5.9115eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.81      0.05      0.58
 REAL TIME  *         1.86 SEC
 DISK USED  *        29.74 MB (local),      171.22 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:       12 (    3    9)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:  11    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:          170370   (365904 determinants, 731808 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.170D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.132D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.983D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 3 5 1   2 4 6 5 3 5 3 4 6 2   1 3 5 6 4 2 1 5 3 4   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.772D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.885D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.105D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.345D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.422D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.433D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.424D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.145D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.156D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   7 9 1 210 8 6 4 5 9   710 8 4 5 6 1 2 3 7   9 810 4 5 6 1 2 3 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  416  ( 3 closed/active, 29 closed/virtual, 0 active/active, 384 active/virtual )
 Total number of variables:    2195840
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   20   40    0   -242.25265267    -242.27354240   -0.02088973    0.04954370 0.00092828 0.00048885  0.10E+01     28.68
   2   10   23    0   -242.27228123    -242.27261720   -0.00033596    0.07305234 0.00041737 0.00018179  0.34E-01     45.36
   3   11   22    0   -242.27261796    -242.27261799   -0.00000003    0.00027541 0.00000191 0.00000075  0.11E-02     62.05
   4    6   13    0   -242.27261799    -242.27261799   -0.00000000    0.00000146 0.00000000 0.00000468  0.10E-05     72.34

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.11E-07)
                       Final energy:   -242.27261799
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -242.335921252386
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.24584806
 One electron energy                          -337.56709080
 Two electron energy                            95.23116955
 Virial ratio                                    1.98813465
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -242.335921247295
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.24584806
 One electron energy                          -337.56709072
 Two electron energy                            95.23116948
 Virial ratio                                    1.98813465
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -242.335921244179
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.24584805
 One electron energy                          -337.56709068
 Two electron energy                            95.23116943
 Virial ratio                                    1.98813465
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -242.209314726838
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.86363286
 One electron energy                          -334.86788489
 Two electron energy                            92.65857016
 Virial ratio                                    1.98916001
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -242.209314725836
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.86363287
 One electron energy                          -334.86788490
 Two electron energy                            92.65857017
 Virial ratio                                    1.98916001
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -242.209314725194
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.86363287
 One electron energy                          -334.86788490
 Two electron energy                            92.65857018
 Virial ratio                                    1.98916001
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     1.000000000000
 !MCSCF expec                      <2.2|LXLX|2.2>     0.000000001865
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999998114
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999999998
 !MCSCF expec                      <5.2|LXLX|5.2>     0.000000052702
 !MCSCF expec                      <6.2|LXLX|6.2>     0.999999946819
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999981711
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999998135
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000020175
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999982753
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999947303
 !MCSCF expec                      <6.2|LYLY|6.2>     0.000000070429
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000018289
 !MCSCF expec                      <2.2|LZLZ|2.2>     1.000000000000
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999981711
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000000017249
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999999996
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999982753
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 4 6 5 3   2 4 6 5 3 1 2 4 6 3   5 1 3 5 6 4 2 2 4 6   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 1 3 2 3   1 2 4 6 5 810 7 9 4   6 510 8 9 7 3 1 2 4   6 510 8 7 9 3 1 2 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.37938     1  1  s    0.99667
    2.1     1.99951    -5.32829     1  2  s    0.99487
    3.1     1.90118    -0.44275     1  3  s    1.13579
    4.1     0.00094     4.56019     1  2  s    1.71436    1  3  s    0.30869    1  6  s   -2.38474    1  7  s    0.73001
    1.2     1.99974    -3.29497     1  1  pz   1.00046
    2.2     1.99974    -3.29497     1  1  px   1.00046
    3.2     1.99974    -3.29497     1  1  py   1.00046
    4.2     0.19971    -0.01338     1  2  pz   1.34879    1  4  pz  -0.34149
    5.2     0.19971    -0.01338     1  2  px   1.34879    1  4  px  -0.34149
    6.2     0.19971    -0.01338     1  2  py   1.34879    1  4  py  -0.34149
    7.2     0.16667     0.02403     1  2  px  -0.27200    1  7  px   1.10522
    8.2     0.16667     0.02403     1  2  pz  -0.27200    1  7  pz   1.10522
    9.2     0.16667     0.02403     1  2  py  -0.27200    1  7  py   1.10522
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 220 2220a0000     -0.00000012      0.94196042     -0.00004183     -0.00000039     -0.26085908     -0.00005836
 220 222a00000      0.94196041      0.00000011     -0.00012739     -0.26085907      0.00000046      0.00003430
 220 22200a000      0.00012738      0.00004155      0.94196041     -0.00003423      0.00005902     -0.26085909
 220 2220000a0      0.26006674      0.00000003     -0.00003517      0.93646589     -0.00000172     -0.00012317
 220 222000a00     -0.00000003      0.26006676     -0.00001155      0.00000142      0.93646587      0.00020889
 220 22200000a      0.00003517      0.00001147      0.26006676      0.00012286     -0.00021176      0.93646586
 200 2222a0000      0.00000000     -0.14223089      0.00000078      0.00000005      0.04171124      0.00001397
 200 22220a000     -0.00001924     -0.00000171     -0.14223089      0.00000557     -0.00001177      0.04171124
 200 222a20000     -0.14223088     -0.00000000      0.00001924      0.04171124      0.00000020     -0.00000533
 200 22202a000     -0.00001924     -0.00000171     -0.14223088      0.00000557     -0.00001177      0.04171124
 200 222a02000     -0.14223088     -0.00000000      0.00001924      0.04171123      0.00000020     -0.00000533
 200 2220a2000      0.00000000     -0.14223088      0.00000078      0.00000005      0.04171123      0.00001397
 200 222200a00      0.00000000     -0.03632783      0.00000020     -0.00000017     -0.13058982     -0.00004365
 200 22220000a     -0.00000492     -0.00000044     -0.03632783     -0.00001744      0.00003683     -0.13058982
 200 2220200a0     -0.03632782     -0.00000000      0.00000491     -0.13058982     -0.00000063      0.00001670
 200 2220020a0     -0.03632782     -0.00000000      0.00000491     -0.13058981     -0.00000063      0.00001670
 200 22202000a     -0.00000492     -0.00000044     -0.03632783     -0.00001744      0.00003683     -0.13058981
 200 222002a00      0.00000000     -0.03632782      0.00000020     -0.00000017     -0.13058981     -0.00004365
 200 2222000a0     -0.03511433     -0.00000000      0.00000475     -0.12887491     -0.00000062      0.00001648
 200 222020a00      0.00000000     -0.03511434      0.00000019     -0.00000016     -0.12887490     -0.00004308
 200 22200200a     -0.00000475     -0.00000042     -0.03511433     -0.00001721      0.00003635     -0.12887489
 
 Energy:         -242.33592125   -242.33592125   -242.33592124   -242.20931473   -242.20931473   -242.20931472
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.67       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        82.28     81.47      0.05      0.58
 REAL TIME  *        85.97 SEC
 DISK USED  *        32.63 MB (local),      185.64 MB (total)
 SF USED    *        27.90 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.3359213   2.0
    -242.3359212   2.0
    -242.3359212   2.0
    -242.2093147   2.0
    -242.2093147   2.0
    -242.2093147   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 13
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:    35844 conf   170370 CSFs
 N elec internal:    69576 conf   339768 CSFs
 N-1 el internal:    58278 conf   453024 CSFs
 N-2 el internal:    43252 conf   528528 CSFs

 Number of electrons in valence space:                     11
 Maximum number of open shell orbitals in reference space: 11
 Maximum number of open shell orbitals in internal spaces: 11


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:       12 (   3   9 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)
