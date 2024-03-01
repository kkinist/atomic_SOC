
 Working directory              : /wrk/irikura/molpro.Oz0U3esCQR/
 Global scratch directory       : /wrk/irikura/molpro.Oz0U3esCQR/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Oz0U3esCQR/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Al SO-CI
                                                                                 ! Active space (9/11) is 2p3s3p + 4s4p
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
     closed,2,0;
     occ,4,9
     wf,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5203.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Al SO-                                                                        
  64 bit mpp version                                                                     DATE: 23-Feb-24          TIME: 09:44:45  
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

     10.748 MB (compressed) written to integral file ( 21.1%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      69570.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      69570      RECORD LENGTH: 524288

 Memory used in sort:       0.63 MW

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:       68866.  Node maximum:       71403. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.215E-02 0.861E-02 0.659E-01 0.190E+00 0.190E+00 0.190E+00 0.190E+00 0.190E+00
         2 0.133E-01 0.133E-01 0.133E-01 0.300E-01 0.300E-01 0.300E-01 0.928E-01 0.928E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.27      0.92
 REAL TIME  *         2.27 SEC
 DISK USED  *        29.05 MB (local),      995.56 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   4
 Initial beta  occupancy:   3   3

 NELEC=   13   SYM=2   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -242.30201901    -242.30201901     0.00D+00     0.13D+00     0     0       0.00      0.00    start
   2     -242.30791125      -0.00589224     0.17D-02     0.74D-02     1     0       0.01      0.01    diag2
   3     -242.31006987      -0.00215862     0.75D-03     0.40D-02     2     0       0.00      0.01    diag2
   4     -242.31070953      -0.00063967     0.38D-03     0.27D-02     3     0       0.00      0.01    diag2
   5     -242.31082858      -0.00011904     0.17D-03     0.18D-02     4     0       0.00      0.01    diag2
   6     -242.31083011      -0.00000154     0.24D-04     0.29D-03     5     0       0.01      0.02    diag2
   7     -242.31083015      -0.00000003     0.41D-05     0.39D-04     6     0       0.00      0.02    diag2
   8     -242.31083015      -0.00000000     0.93D-06     0.88D-05     7     0       0.00      0.02    fixocc
   9     -242.31083015      -0.00000000     0.16D-06     0.13D-05     8     0       0.01      0.03    diag2
  10     -242.31083015      -0.00000000     0.18D-07     0.76D-07     0     0       0.00      0.03    diag/orth

 Final alpha occupancy:   3   4
 Final beta  occupancy:   3   3

 !RHF STATE 1.2 Energy               -242.310830151272
  RHF One-electron energy            -337.217010499599
  RHF Two-electron energy              94.906180348327
  RHF Kinetic energy                  245.081503104756
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.988694891624

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.62125     1  1  s    0.99967
    2.1     2.00000    -4.92939     1  2  s    0.99979
    3.1     2.00000    -0.39500     1  3  s    1.00963
    1.2     2.00000    -3.21757     1  1  py   0.99916
    2.2     2.00000    -3.21757     1  1  px   0.99916
    3.2     2.00000    -3.21680     1  1  pz   1.00195
    4.2     1.00000    -0.20947     1  2  pz   1.00542


 HOMO      4.2    -0.209472 =      -5.7000eV
 LUMO      5.2     0.007770 =       0.2114eV
 LUMO-HOMO         0.217242 =       5.9115eV

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
 CPU TIMES  *         1.31      0.04      0.92
 REAL TIME  *         2.33 SEC
 DISK USED  *        29.65 MB (local),     1013.62 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   2 (    2    0)
 Number of active  orbitals:       11 (    2    9)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   9    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:           38682   (76356 determinants, 152460 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.170D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.132D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.983D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   2 6 4 3 5 3 5 6 4 2   1 3 5 4 6 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.783D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.771D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.944D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.243D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.415D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.413D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.414D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.145D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 2 1 3   7 9 2 110 8 6 5 4 7   910 8 5 4 6 2 1 3 7   9 810 5 4 6 2 1 3 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  417  ( 4 closed/active, 58 closed/virtual, 0 active/active, 355 active/virtual )
 Total number of variables:    458553
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   22    0   -242.25263133    -242.26878395   -0.01615262    0.04956606 0.00016690 0.00012841  0.96E+00      5.49
   2    8   21    0   -242.26858433    -242.26859494   -0.00001061    0.00251990 0.00000540 0.00000315  0.34E-01      9.96
   3    7   16    0   -242.26859494    -242.26859494   -0.00000000    0.00000250 0.00000001 0.00000008  0.20E-03     15.06

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.27E-07)
                       Final energy:   -242.26859494
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -242.332403010329
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.14171758
 One electron energy                          -337.33939296
 Two electron energy                            95.00698995
 Virial ratio                                    1.98854004
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -242.332403006834
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.14171758
 One electron energy                          -337.33939291
 Two electron energy                            95.00698991
 Virial ratio                                    1.98854004
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -242.332403006771
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.14171758
 One electron energy                          -337.33939291
 Two electron energy                            95.00698991
 Virial ratio                                    1.98854004
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -242.204786879613
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.95465745
 One electron energy                          -335.07011980
 Two electron energy                            92.86533292
 Virial ratio                                    1.98877396
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -242.204786878931
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.95465745
 One electron energy                          -335.07011979
 Two electron energy                            92.86533292
 Virial ratio                                    1.98877396
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -242.204786878920
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.95465745
 One electron energy                          -335.07011979
 Two electron energy                            92.86533292
 Virial ratio                                    1.98877396
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999999
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999913219
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000000086782
 !MCSCF expec                      <4.2|LXLX|4.2>     0.999999999980
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999950023164
 !MCSCF expec                      <6.2|LXLX|6.2>     0.000049976856
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999461
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000000087320
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999913219
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999999996
 !MCSCF expec                      <5.2|LYLY|5.2>     0.000049976839
 !MCSCF expec                      <6.2|LYLY|6.2>     0.999950023164
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000540
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999461
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999999
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.000000000024
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.999999999997
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999999980
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 5 3 1   2 6 4 3 5 2 6 4 3 5   1 5 3 4 6 2 1 2 6 4   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 3   2 1 6 5 4 7 910 8 5   4 6 810 7 9 3 2 1 6   5 4 810 7 9 3 2 1 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.70207     1  1  s    0.99968
    2.1     2.00000    -5.00899     1  2  s    0.99991
    3.1     1.89774    -0.44298     1  3  s    1.10592
    4.1     0.00670     0.28561     1  2  s    0.27569    1  3  s   -0.55955    1  4  s   -1.24723    1  5  s    1.49462
    1.2     1.99989    -3.29669     1  1  pz   1.00022
    2.2     1.99989    -3.29669     1  1  py   1.00022
    3.2     1.99989    -3.29669     1  1  px   1.00022
    4.2     0.19883    -0.01522     1  2  pz   1.35079    1  4  pz  -0.34395
    5.2     0.19883    -0.01522     1  2  py   1.35079    1  4  py  -0.34395
    6.2     0.19883    -0.01522     1  2  px   1.35079    1  4  px  -0.34395
    7.2     0.16647     0.02478     1  2  px  -0.29283    1  7  px   1.10421
    8.2     0.16647     0.02478     1  2  py  -0.29283    1  7  py   1.10421
    9.2     0.16647     0.02478     1  2  pz  -0.29283    1  7  pz   1.10421
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 222a00000      0.94355941     -0.00002190      0.00000085     -0.24871734     -0.00000046      0.00000112
 20 22200a000     -0.00000085      0.00027796      0.94355937     -0.00000112     -0.00175829     -0.24871113
 20 2220a0000      0.00002190      0.94355937     -0.00027796      0.00000047     -0.24871113      0.00175829
 20 22200000a      0.24880091     -0.00000577      0.00000022      0.93743839      0.00000173     -0.00000422
 20 2220000a0      0.00000577      0.24880091     -0.00007329     -0.00000176      0.93741496     -0.00662715
 20 222000a00     -0.00000022      0.00007329      0.24880091      0.00000421      0.00662715      0.93741496
 00 222a20000     -0.14018689      0.00000325     -0.00000013      0.03921779      0.00000007     -0.00000018
 00 222a02000     -0.14018689      0.00000325     -0.00000013      0.03921779      0.00000007     -0.00000018
 00 2222a0000     -0.00000325     -0.14018689      0.00004130     -0.00000007      0.03921681     -0.00027725
 00 22220a000      0.00000013     -0.00004130     -0.14018689      0.00000018      0.00027725      0.03921681
 00 22202a000      0.00000013     -0.00004130     -0.14018688      0.00000018      0.00027725      0.03921681
 00 2220a2000     -0.00000325     -0.14018688      0.00004130     -0.00000007      0.03921681     -0.00027725
 00 22202000a     -0.03428200      0.00000080     -0.00000003     -0.12934198     -0.00000024      0.00000058
 00 22200200a     -0.03428200      0.00000080     -0.00000003     -0.12934198     -0.00000024      0.00000058
 00 2222000a0     -0.00000080     -0.03428200      0.00001010      0.00000024     -0.12933875      0.00091437
 00 222200a00      0.00000003     -0.00001010     -0.03428200     -0.00000058     -0.00091437     -0.12933875
 00 222020a00      0.00000003     -0.00001010     -0.03428200     -0.00000058     -0.00091437     -0.12933875
 00 2220020a0     -0.00000080     -0.03428200      0.00001010      0.00000024     -0.12933875      0.00091437
 00 22220000a     -0.03369263      0.00000078     -0.00000003     -0.12716139     -0.00000023      0.00000057
 00 2220200a0     -0.00000078     -0.03369262      0.00000993      0.00000024     -0.12715820      0.00089896
 00 222002a00      0.00000003     -0.00000993     -0.03369262     -0.00000057     -0.00089896     -0.12715820
 
 Energy:        -242.33240301   -242.33240301   -242.33240301   -242.20478688   -242.20478688   -242.20478688
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.64       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.82      7.50      0.04      0.92
 REAL TIME  *        18.81 SEC
 DISK USED  *        32.53 MB (local),        1.07 GB (total)
 SF USED    *        14.05 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.3324030   2.0
    -242.3324030   2.0
    -242.3324030   2.0
    -242.2047869   2.0
    -242.2047869   2.0
    -242.2047869   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 13
 Maximum number of shells:             6
 Maximum number of spin couplings:   132

 Reference space:    10933 conf    38682 CSFs
 N elec internal:    69576 conf   339768 CSFs
 N-1 el internal:    58278 conf   453024 CSFs
 N-2 el internal:    34330 conf   424008 CSFs

 Number of electrons in valence space:                     11
 Maximum number of open shell orbitals in reference space:  9
 Maximum number of open shell orbitals in internal spaces: 11


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:       11 (   2   9 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.03 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:  14

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.33240301
     2      -242.33240301
     3      -242.33240301
     4      -242.20478688
     5      -242.20478688
     6      -242.20478688

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1114D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4170D-06

 Number of blocks in overlap matrix:    18   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:     805
 Number of N-1 electron functions:  453024

 Number of internal configurations:               170370
 Number of singly external configurations:      14046192
 Number of doubly external configurations:        775692
 Total number of contracted configurations:     14992254
 Total number of uncontracted configurations:  419778450

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:    564.60 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1099379 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.33240301    -0.00000000    -0.29043611  0.35D-01  0.14D-01   591.38
    1     2     2     1.00000000     0.00000000  -242.33240301    -0.00000000    -0.29050804  0.35D-01  0.14D-01   591.38
    1     3     3     1.00000000     0.00000000  -242.33240301    -0.00000000    -0.29050955  0.35D-01  0.14D-01   591.38
    1     4     4     1.00000000     0.00000000  -242.20478688     0.00000000    -0.27200405  0.15D-01  0.13D-01   591.38
    1     5     5     1.00000000     0.00000000  -242.20478688    -0.00000000    -0.27201301  0.15D-01  0.13D-01   591.38
    1     6     6     1.00000000     0.00000000  -242.20478688     0.00000000    -0.27201333  0.15D-01  0.13D-01   591.38
    2     1     1     1.04280679    -0.27039846  -242.60280147    -0.27039846    -0.00337540  0.62D-03  0.22D-03  1116.01
    2     2     2     1.04296462    -0.27036943  -242.60277244    -0.27036943    -0.00340282  0.65D-03  0.22D-03  1116.01
    2     3     3     1.04296399    -0.27036905  -242.60277205    -0.27036905    -0.00340315  0.65D-03  0.22D-03  1116.01
    2     4     4     1.02406252    -0.25666940  -242.46145628    -0.25666940    -0.00231029  0.29D-03  0.14D-03  1116.01
    2     5     5     1.02409290    -0.25666383  -242.46145070    -0.25666383    -0.00231508  0.30D-03  0.14D-03  1116.01
    2     6     6     1.02409283    -0.25666377  -242.46145065    -0.25666377    -0.00231481  0.30D-03  0.14D-03  1116.01
    3     1     1     1.03752691    -0.27449085  -242.60689387    -0.00409240    -0.00064869  0.36D-04  0.63D-04  1647.04
    3     2     2     1.03750871    -0.27448783  -242.60689084    -0.00411840    -0.00064884  0.36D-04  0.63D-04  1647.04
    3     3     3     1.03750909    -0.27448778  -242.60689079    -0.00411874    -0.00064885  0.36D-04  0.63D-04  1647.04
    3     4     4     1.02257386    -0.25925821  -242.46404509    -0.00258881    -0.00031429  0.10D-04  0.31D-04  1647.04
    3     5     5     1.02257099    -0.25925775  -242.46404463    -0.00259392    -0.00031383  0.11D-04  0.31D-04  1647.04
    3     6     6     1.02257115    -0.25925773  -242.46404461    -0.00259397    -0.00031402  0.11D-04  0.31D-04  1647.04
    4     1     1     1.03948676    -0.27608117  -242.60848418    -0.00159031    -0.00039372  0.30D-04  0.31D-04  2181.47
    4     2     2     1.03946845    -0.27607883  -242.60848184    -0.00159100    -0.00039461  0.31D-04  0.31D-04  2181.47
    4     3     3     1.03946809    -0.27607874  -242.60848175    -0.00159096    -0.00039466  0.31D-04  0.31D-04  2181.47
    4     4     4     1.02325275    -0.25985102  -242.46463790    -0.00059281    -0.00017634  0.71D-05  0.15D-04  2181.47
    4     5     5     1.02325259    -0.25985093  -242.46463781    -0.00059318    -0.00017658  0.70D-05  0.15D-04  2181.47
    4     6     6     1.02325197    -0.25985090  -242.46463778    -0.00059317    -0.00017644  0.71D-05  0.15D-04  2181.47
    5     1     1     1.04108243    -0.27662911  -242.60903212    -0.00054794    -0.00009290  0.12D-04  0.67D-05  2707.94
    5     2     2     1.04109971    -0.27662869  -242.60903170    -0.00054986    -0.00009323  0.12D-04  0.67D-05  2707.94
    5     3     3     1.04109963    -0.27662865  -242.60903165    -0.00054991    -0.00009325  0.12D-04  0.67D-05  2707.94
    5     4     4     1.02381990    -0.26012263  -242.46490951    -0.00027161    -0.00005406  0.41D-05  0.38D-05  2707.94
    5     5     5     1.02382232    -0.26012246  -242.46490934    -0.00027153    -0.00005401  0.41D-05  0.38D-05  2707.94
    5     6     6     1.02382230    -0.26012241  -242.46490929    -0.00027151    -0.00005395  0.41D-05  0.38D-05  2707.94
    6     1     1     1.04039556    -0.27675128  -242.60915429    -0.00012217    -0.00003017  0.21D-05  0.26D-05  3234.90
    6     2     2     1.04039225    -0.27675118  -242.60915418    -0.00012248    -0.00003018  0.21D-05  0.26D-05  3234.90
    6     3     3     1.04039231    -0.27675115  -242.60915416    -0.00012250    -0.00003018  0.21D-05  0.26D-05  3234.90
    6     4     4     1.02361990    -0.26018846  -242.46497534    -0.00006583    -0.00001394  0.78D-06  0.12D-05  3234.90
    6     5     5     1.02361961    -0.26018821  -242.46497509    -0.00006575    -0.00001391  0.78D-06  0.12D-05  3234.90
    6     6     6     1.02361974    -0.26018809  -242.46497497    -0.00006568    -0.00001390  0.78D-06  0.12D-05  3234.90
    7     1     1     1.04080521    -0.27681017  -242.60921318    -0.00005890    -0.00002109  0.15D-05  0.16D-05  3765.51
    7     2     2     1.04080033    -0.27681007  -242.60921308    -0.00005890    -0.00002112  0.15D-05  0.16D-05  3765.51
    7     3     3     1.04080026    -0.27681005  -242.60921306    -0.00005891    -0.00002112  0.15D-05  0.16D-05  3765.51
    7     4     4     1.02379085    -0.26021237  -242.46499925    -0.00002391    -0.00000957  0.40D-06  0.82D-06  3765.51
    7     5     5     1.02379076    -0.26021209  -242.46499897    -0.00002388    -0.00000955  0.41D-06  0.81D-06  3765.51
    7     6     6     1.02379096    -0.26021196  -242.46499884    -0.00002387    -0.00000953  0.41D-06  0.81D-06  3765.51
    8     1     1     1.04115329    -0.27683841  -242.60924142    -0.00002824    -0.00000741  0.57D-06  0.59D-06  4297.15
    8     2     2     1.04115597    -0.27683838  -242.60924139    -0.00002831    -0.00000743  0.58D-06  0.59D-06  4297.15
    8     3     3     1.04115590    -0.27683836  -242.60924137    -0.00002831    -0.00000743  0.58D-06  0.59D-06  4297.15
    8     4     4     1.02392783    -0.26022574  -242.46501262    -0.00001337    -0.00000445  0.21D-06  0.38D-06  4297.15
    8     5     5     1.02392813    -0.26022544  -242.46501232    -0.00001335    -0.00000444  0.21D-06  0.38D-06  4297.15
    8     6     6     1.02392815    -0.26022529  -242.46501217    -0.00001333    -0.00000443  0.21D-06  0.38D-06  4297.15
    9     1     1     1.04107644    -0.27684758  -242.60925059    -0.00000917    -0.00000273  0.13D-06  0.26D-06  4825.33
    9     2     2     1.04107596    -0.27684758  -242.60925058    -0.00000920    -0.00000273  0.13D-06  0.26D-06  4825.33
    9     3     3     1.04107598    -0.27684756  -242.60925057    -0.00000920    -0.00000273  0.13D-06  0.26D-06  4825.33
    9     4     4     1.02390327    -0.26023081  -242.46501769    -0.00000507    -0.00000137  0.56D-07  0.13D-06  4825.33
    9     5     5     1.02390322    -0.26023050  -242.46501737    -0.00000506    -0.00000136  0.56D-07  0.13D-06  4825.33
    9     6     6     1.02390328    -0.26023034  -242.46501722    -0.00000505    -0.00000136  0.56D-07  0.13D-06  4825.33
   10     1     1     1.04116787    -0.27685228  -242.60925529    -0.00000470    -0.00000197  0.11D-06  0.16D-06  5354.36
   10     2     2     1.04116667    -0.27685227  -242.60925528    -0.00000470    -0.00000197  0.11D-06  0.16D-06  5354.36
   10     3     3     1.04116664    -0.27685226  -242.60925526    -0.00000470    -0.00000197  0.11D-06  0.16D-06  5354.36
   10     4     4     1.02394625    -0.26023298  -242.46501986    -0.00000217    -0.00000094  0.31D-07  0.84D-07  5354.36
   10     5     5     1.02394615    -0.26023266  -242.46501954    -0.00000216    -0.00000094  0.31D-07  0.83D-07  5354.36
   10     6     6     1.02394615    -0.26023250  -242.46501938    -0.00000216    -0.00000093  0.31D-07  0.83D-07  5354.36
   11     1     1     1.04125572    -0.27685492  -242.60925793    -0.00000264    -0.00000083  0.41D-07  0.71D-07  5885.70
   11     2     2     1.04125604    -0.27685492  -242.60925793    -0.00000265    -0.00000083  0.42D-07  0.71D-07  5885.70
   11     3     3     1.04125600    -0.27685490  -242.60925791    -0.00000265    -0.00000083  0.42D-07  0.71D-07  5885.70
   11     4     4     1.02398443    -0.26023430  -242.46502118    -0.00000133    -0.00000052  0.14D-07  0.50D-07  5885.70
   11     5     5     1.02398438    -0.26023398  -242.46502086    -0.00000132    -0.00000052  0.14D-07  0.50D-07  5885.70
   11     6     6     1.02398436    -0.26023382  -242.46502070    -0.00000132    -0.00000052  0.14D-07  0.50D-07  5885.70
   12     1     1     1.04125039    -0.27685591  -242.60925892    -0.00000099    -0.00000032  0.10D-07  0.33D-07  6414.52
   12     2     2     1.04125028    -0.27685591  -242.60925892    -0.00000099    -0.00000032  0.10D-07  0.33D-07  6414.52
   12     3     3     1.04125027    -0.27685589  -242.60925890    -0.00000099    -0.00000032  0.10D-07  0.33D-07  6414.52
   12     4     4     1.02398427    -0.26023487  -242.46502175    -0.00000057    -0.00000018  0.50D-08  0.18D-07  6414.52
   12     5     5     1.02398417    -0.26023455  -242.46502143    -0.00000057    -0.00000018  0.51D-08  0.18D-07  6414.52
   12     6     6     1.02398416    -0.26023439  -242.46502127    -0.00000057    -0.00000018  0.50D-08  0.18D-07  6414.52
   13     1     1     1.04127526    -0.27685642  -242.60925943    -0.00000052    -0.00000024  0.77D-08  0.22D-07  6939.26
   13     2     2     1.04127506    -0.27685643  -242.60925943    -0.00000052    -0.00000024  0.77D-08  0.22D-07  6939.26
   13     3     3     1.04127499    -0.27685641  -242.60925942    -0.00000052    -0.00000024  0.77D-08  0.22D-07  6939.26
   13     4     4     1.02399686    -0.26023514  -242.46502202    -0.00000027    -0.00000012  0.27D-08  0.11D-07  6939.26
   13     5     5     1.02399673    -0.26023482  -242.46502169    -0.00000026    -0.00000012  0.27D-08  0.11D-07  6939.26
   13     6     6     1.02399669    -0.26023465  -242.46502153    -0.00000026    -0.00000012  0.27D-08  0.11D-07  6939.26
   14     1     1     1.04129867    -0.27685674  -242.60925975    -0.00000032    -0.00000011  0.40D-08  0.10D-07  7465.93
   14     2     2     1.04129874    -0.27685674  -242.60925975    -0.00000032    -0.00000011  0.40D-08  0.10D-07  7465.93
   14     3     3     1.04129865    -0.27685673  -242.60925973    -0.00000032    -0.00000011  0.40D-08  0.10D-07  7465.93
   14     4     4     1.02400839    -0.26023531  -242.46502219    -0.00000017    -0.00000007  0.15D-08  0.76D-08  7465.93
   14     5     5     1.02400826    -0.26023499  -242.46502187    -0.00000017    -0.00000007  0.15D-08  0.76D-08  7465.93
   14     6     6     1.02400822    -0.26023482  -242.46502170    -0.00000017    -0.00000007  0.15D-08  0.75D-08  7465.93
   15     1     1     1.04130005    -0.27685687  -242.60925988    -0.00000013    -0.00000004  0.85D-09  0.47D-08  7974.44
   15     2     2     1.04130017    -0.27685687  -242.60925988    -0.00000013    -0.00000004  0.84D-09  0.47D-08  7974.44
   15     3     3     1.04130004    -0.27685686  -242.60925986    -0.00000013    -0.00000004  0.85D-09  0.47D-08  7974.44
   15     4     4     1.02400838    -0.26023531  -242.46502219    -0.00000000    -0.00000007  0.14D-08  0.76D-08  7974.44
   15     5     5     1.02400825    -0.26023499  -242.46502187    -0.00000000    -0.00000007  0.15D-08  0.76D-08  7974.44
   15     6     6     1.02400821    -0.26023482  -242.46502170    -0.00000000    -0.00000007  0.15D-08  0.76D-08  7974.44


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.9%   2.5%
 P   1.4%  24.0%  62.6%

 Initialization:   7.2%
 Other:            0.8%

 Total CPU:     7974.4 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222000/00          -0.0000259  -0.0000177   0.2029379  -0.0000005   0.0000612   0.9394383
 2202220000/0           0.2029368  -0.0007838   0.0000258  -0.0000051   0.9394376  -0.0000612
 22022200000/           0.0007838   0.2029360   0.0000178   0.9394370   0.0000051   0.0000005
 22022200/000          -0.0001197  -0.0000821   0.9391129   0.0000001  -0.0000131  -0.2003782
 220222/00000           0.0036273   0.9391058   0.0000826  -0.2003781  -0.0000011  -0.0000001
 2202220/0000           0.9391058  -0.0036273   0.0001194   0.0000011  -0.2003785   0.0000131
 20022202/000           0.0000161   0.0000111  -0.1267059  -0.0000000   0.0000019   0.0290900
 20022220/000           0.0000161   0.0000111  -0.1267050  -0.0000000   0.0000019   0.0290910
 200222/02000          -0.0004894  -0.1267049  -0.0000111   0.0290908   0.0000002   0.0000000
 2002220/2000          -0.1267047   0.0004894  -0.0000161  -0.0000002   0.0290912  -0.0000019
 200222/20000          -0.0004894  -0.1267042  -0.0000111   0.0290917   0.0000002   0.0000000
 2002222/0000          -0.1267041   0.0004894  -0.0000161  -0.0000002   0.0290910  -0.0000019
 2002222000/0          -0.0257729   0.0000995  -0.0000033   0.0000006  -0.1194729   0.0000078
 20022200200/          -0.0000995  -0.0257731  -0.0000023  -0.1194725  -0.0000006  -0.0000001
 20022202000/          -0.0000995  -0.0257732  -0.0000023  -0.1194723  -0.0000006  -0.0000001
 200222020/00           0.0000033   0.0000023  -0.0257730   0.0000001  -0.0000078  -0.1194717
 200222200/00           0.0000033   0.0000023  -0.0257732   0.0000001  -0.0000078  -0.1194714
 2002220020/0          -0.0257727   0.0000995  -0.0000033   0.0000006  -0.1194709   0.0000078
 20022220000/          -0.0000963  -0.0249407  -0.0000022  -0.1163736  -0.0000006  -0.0000001
 2002220200/0          -0.0249394   0.0000963  -0.0000032   0.0000006  -0.1163718   0.0000076
 200222002/00           0.0000032   0.0000022  -0.0249391   0.0000001  -0.0000076  -0.1163702
 2/\22200000/          -0.0000866  -0.0224188  -0.0000020  -0.0841913  -0.0000005  -0.0000000
 2/\2220000/0          -0.0224213   0.0000866  -0.0000029   0.0000005  -0.0841888   0.0000055
 2/\222000/00           0.0000029   0.0000020  -0.0224213   0.0000000  -0.0000055  -0.0841854

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 220222000000  12.2     0.0000069   0.0000047  -0.0543243  -0.0000000   0.0000008   0.0115737
 220222000000  10.2     0.0002098   0.0543240   0.0000048  -0.0115727  -0.0000001  -0.0000000
 220222000000  11.2    -0.0543239   0.0002098  -0.0000069  -0.0000001   0.0115737  -0.0000008
 2\0222/00000  11.1    -0.0002018  -0.0522338  -0.0000046   0.0216079   0.0000001   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.003780    0.978568   -0.000125   -0.000168   -0.043400    0.000006
 2           0.978568   -0.003780   -0.000086   -0.043401    0.000168    0.000004
 3           0.000086    0.000124    0.978576   -0.000004   -0.000006   -0.043401
 4           0.048958   -0.000000   -0.000000    0.986401   -0.000005   -0.000001
 5           0.000000    0.048957    0.000003    0.000005    0.986401    0.000064
 6           0.000000   -0.000003    0.048957    0.000001   -0.000064    0.986401

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.979534   -0.000000   -0.000000    0.000010    0.002591   -0.000000
 2          -0.000000    0.979534   -0.000000    0.002592   -0.000010   -0.000000
 3          -0.000000   -0.000000    0.979534    0.000000    0.000000    0.002591
 4           0.000010    0.002592    0.000000    0.987612    0.000000    0.000000
 5           0.002591   -0.000010    0.000000    0.000000    0.987612   -0.000000
 6          -0.000000   -0.000000    0.002591    0.000000   -0.000000    0.987612


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97856849 (fixed)   0.97993525 (relaxed)   0.97953432 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00088643   -0.00058132   -0.22192472
 Singles      0.02477361   -0.04580565   -0.05052839
 Pairs        0.01656304   -0.00000157   -0.00440376
 Total        1.04222309   -0.04638854   -0.27685687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.33212170
 Nuclear energy                         0.00000000
 Kinetic energy                       245.30493408
 One electron energy                 -337.08007762
 Two electron energy                   94.47081774
 Virial quotient                       -0.98901093
 Correlation energy                    -0.27713818
 !MRCI STATE 1.2 Energy              -242.609259880174

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62096151 (Davidson, fixed reference)
 Cluster corrected energies          -242.62072521 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62096151 (Davidson, rotated reference)

 Cluster corrected energies          -242.61886162 (Pople, fixed reference)
 Cluster corrected energies          -242.61866291 (Pople, relaxed reference)
 Cluster corrected energies          -242.61886162 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97856845 (fixed)   0.97993519 (relaxed)   0.97953431 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00088634   -0.00058132   -0.22192512
 Singles      0.02477367   -0.04580569   -0.05052844
 Pairs        0.01656310   -0.00000108   -0.00440331
 Total        1.04222311   -0.04638810   -0.27685687
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.33212170
 Nuclear energy                         0.00000000
 Kinetic energy                       245.30492861
 One electron energy                 -337.08006895
 Two electron energy                   94.47080907
 Virial quotient                       -0.98901095
 Correlation energy                    -0.27713818
 !MRCI STATE 2.2 Energy              -242.609259879623

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62096152 (Davidson, fixed reference)
 Cluster corrected energies          -242.62072524 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62096152 (Davidson, rotated reference)

 Cluster corrected energies          -242.61886163 (Pople, fixed reference)
 Cluster corrected energies          -242.61866293 (Pople, relaxed reference)
 Cluster corrected energies          -242.61886163 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.97857576 (fixed)   0.97993525 (relaxed)   0.97953431 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00088645   -0.00058132   -0.23376205
 Singles      0.02477361   -0.04580565   -0.05052838
 Pairs        0.01656304    0.01233558    0.00743357
 Total        1.04222310   -0.03405139   -0.27685686
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.33212170
 Nuclear energy                         0.00000000
 Kinetic energy                       245.30493390
 One electron energy                 -337.08007952
 Two electron energy                   94.47081966
 Virial quotient                       -0.98901093
 Correlation energy                    -0.27713817
 !MRCI STATE 3.2 Energy              -242.609259863970

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62096150 (Davidson, fixed reference)
 Cluster corrected energies          -242.62072519 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62096150 (Davidson, rotated reference)

 Cluster corrected energies          -242.61886161 (Pople, fixed reference)
 Cluster corrected energies          -242.61866289 (Pople, relaxed reference)
 Cluster corrected energies          -242.61886161 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.98640080 (fixed)   0.98817782 (relaxed)   0.98761161 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00120755   -0.00055218   -0.22088752
 Singles      0.01011275   -0.03408587   -0.03581167
 Pairs        0.01392463    0.00000012   -0.00353612
 Total        1.02524492   -0.03463793   -0.26023531
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20506819
 Nuclear energy                         0.00000000
 Kinetic energy                       245.15979811
 One electron energy                 -334.81088002
 Two electron energy                   92.34585783
 Virial quotient                       -0.98900808
 Correlation energy                    -0.25995400
 !MRCI STATE 4.2 Energy              -242.465022190244

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.47158471 (Davidson, fixed reference)
 Cluster corrected energies          -242.47127938 (Davidson, relaxed reference)
 Cluster corrected energies          -242.47158471 (Davidson, rotated reference)

 Cluster corrected energies          -242.47035239 (Pople, fixed reference)
 Cluster corrected energies          -242.47010081 (Pople, relaxed reference)
 Cluster corrected energies          -242.47035239 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.98640100 (fixed)   0.98817788 (relaxed)   0.98761177 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00120735   -0.00055218   -0.22087310
 Singles      0.01011261   -0.03408556   -0.03581131
 Pairs        0.01392462   -0.00001467   -0.00355058
 Total        1.02524458   -0.03465241   -0.26023499
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20506818
 Nuclear energy                         0.00000000
 Kinetic energy                       245.15977075
 One electron energy                 -334.81085516
 Two electron energy                   92.34583329
 Virial quotient                       -0.98900819
 Correlation energy                    -0.25995368
 !MRCI STATE 5.2 Energy              -242.465021866210

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.47158429 (Davidson, fixed reference)
 Cluster corrected energies          -242.47127901 (Davidson, relaxed reference)
 Cluster corrected energies          -242.47158429 (Davidson, rotated reference)

 Cluster corrected energies          -242.47035199 (Pople, fixed reference)
 Cluster corrected energies          -242.47010045 (Pople, relaxed reference)
 Cluster corrected energies          -242.47035199 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.98640107 (fixed)   0.98817790 (relaxed)   0.98761186 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00120721   -0.00055218   -0.00128869
 Singles      0.01011255   -0.03408535   -0.03581109
 Pairs        0.01392464   -0.22514240   -0.22313505
 Total        1.02524440   -0.25977994   -0.26023482
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20506819
 Nuclear energy                         0.00000000
 Kinetic energy                       245.15974734
 One electron energy                 -334.81083360
 Two electron energy                   92.34581190
 Virial quotient                       -0.98900829
 Correlation energy                    -0.25995351
 !MRCI STATE 6.2 Energy              -242.465021702277

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.47158407 (Davidson, fixed reference)
 Cluster corrected energies          -242.47127883 (Davidson, relaxed reference)
 Cluster corrected energies          -242.47158407 (Davidson, rotated reference)

 Cluster corrected energies          -242.47035178 (Pople, fixed reference)
 Cluster corrected energies          -242.47010027 (Pople, relaxed reference)
 Cluster corrected energies          -242.47035178 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      706.22       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8421.10   8412.26      7.50      0.04      0.92
 REAL TIME  *      8553.95 SEC
 DISK USED  *       738.12 MB (local),       21.75 GB (total)
 SF USED    *         7.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -242.62096151  AU                              
 SETTING HLSDIAG(2)     =      -242.62096152  AU                              
 SETTING HLSDIAG(3)     =      -242.62096150  AU                              
 SETTING HLSDIAG(4)     =      -242.47158471  AU                              
 SETTING HLSDIAG(5)     =      -242.47158429  AU                              
 SETTING HLSDIAG(6)     =      -242.47158407  AU                              


         HLSDIAG
    -242.6209615
    -242.6209615
    -242.6209615
    -242.4715847
    -242.4715843
    -242.4715841
                                                  


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

 Time for Seward_LS:       0.70 sec

        2497107. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.70 sec, REAL time:      0.74 sec


 SORTLS1 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.06 sec, REAL time:      0.08 sec
 SORTLS2 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    73.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    73.7 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -242.609260   -242.609260   -242.609260   -242.465022   -242.465022   -242.465022
 Replaced energies:   -242.620962   -242.620962   -242.620961   -242.471585   -242.471584   -242.471584



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -242.62096152

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01      -0.15       0.00
                            0.00      -0.00      39.45       0.00      -0.00     -16.59       0.00     -39.45      -0.00      16.59

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00     -39.45       0.00
                            0.00      -0.00      -0.15      -0.00      -0.00       0.06      39.45       0.00       0.01      -0.06

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.15      39.45      -0.00     -16.59
                          -39.45       0.15       0.00      -0.00      16.59      -0.00       0.00      -0.01      -0.00       0.00

    4   4.2  0.5  0.5       0.00       0.00       0.00   32784.42       0.00       0.00      -0.00      -0.00      16.59       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00     -16.59       0.06      -0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   32784.51       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -16.59      -0.00      -0.00       6.95       0.06      16.59       0.00      -6.95

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   32784.56      -0.06     -16.59      -0.00       6.95
                           16.59      -0.06       0.00       0.00      -6.95       0.00      -0.00      -0.00      -0.00       0.00

    7   1.2  0.5 -0.5      -0.00       0.01       0.15      -0.00      -0.00      -0.06       0.00       0.00       0.00       0.00
                           -0.00     -39.45      -0.00      16.59      -0.06       0.00      -0.00       0.00     -39.45      -0.00

    8   2.2  0.5 -0.5      -0.01       0.00      39.45      -0.00      -0.00     -16.59       0.00       0.00       0.00       0.00
                           39.45      -0.00       0.01      -0.06     -16.59       0.00      -0.00       0.00       0.15       0.00

    9   3.2  0.5 -0.5      -0.15     -39.45      -0.00      16.59       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01       0.00       0.00      -0.00       0.00      39.45      -0.15      -0.00       0.00

   10   4.2  0.5 -0.5       0.00       0.00     -16.59       0.00       0.00       6.95       0.00       0.00       0.00   32784.42
                          -16.59       0.06      -0.00      -0.00       6.95      -0.00       0.00      -0.00      -0.00      -0.00

   11   5.2  0.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.06      16.59       0.00      -6.95       0.00      -0.00      -0.00      -0.00      16.59       0.00

   12   6.2  0.5 -0.5       0.06      16.59       0.00      -6.95      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00     -16.59       0.06      -0.00      -0.00


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5       0.00       0.06
                           -0.06       0.00

    2   2.2  0.5  0.5       0.00      16.59
                          -16.59       0.00

    3   3.2  0.5  0.5      -0.00       0.00
                           -0.00       0.00

    4   4.2  0.5  0.5      -0.00      -6.95
                            6.95      -0.00

    5   5.2  0.5  0.5      -0.00      -0.00
                           -0.00      -0.00

    6   6.2  0.5  0.5       0.00       0.00
                            0.00       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00      16.59

    8   2.2  0.5 -0.5       0.00       0.00
                            0.00      -0.06

    9   3.2  0.5 -0.5       0.00       0.00
                          -16.59       0.00

   10   4.2  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   11   5.2  0.5 -0.5   32784.51       0.00
                            0.00      -6.95

   12   6.2  0.5 -0.5       0.00   32784.56
                            6.95      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -242.62132115    -0.00035963      -78.93      0.00000000        0.00      0.0000
     2  -242.62132115    -0.00035963      -78.93      0.00000000        0.00      0.0000
     3  -242.62078180     0.00017971       39.44      0.00053934      118.37      0.0147
     4  -242.62078180     0.00017971       39.44      0.00053934      118.37      0.0147
     5  -242.62078180     0.00017972       39.44      0.00053935      118.37      0.0147
     6  -242.62078180     0.00017972       39.44      0.00053935      118.37      0.0147
     7  -242.47164753     0.14931399    32770.63      0.14967362    32849.56      4.0728
     8  -242.47164753     0.14931399    32770.63      0.14967362    32849.56      4.0728
     9  -242.47155284     0.14940867    32791.41      0.14976831    32870.34      4.0754
    10  -242.47155284     0.14940867    32791.41      0.14976831    32870.34      4.0754
    11  -242.47155247     0.14940905    32791.50      0.14976868    32870.43      4.0754
    12  -242.47155247     0.14940905    32791.50      0.14976868    32870.43      4.0754


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.247088783   0.521807595  -0.064807941   0.653530872  -0.065135112  -0.480747546  -0.000538903  -0.000223481
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.044270220  -0.020963031   0.542171578   0.053172017  -0.140480612   0.018227358  -0.000222969   0.000537694
                         0.519954973   0.246155347  -0.510820448  -0.050564195  -0.291127304   0.039507756   0.000000326  -0.000000651

    3    3.2  0.5  0.5   0.002004264   0.000949068   0.000619101   0.000073183   0.003557752  -0.000466004  -0.000000018   0.000000045
                        -0.246863558   0.521892214  -0.008350590   0.091407891   0.107330136   0.804191094  -0.000538645  -0.000225811

    4    4.2  0.5  0.5   0.000045679   0.000019141   0.000274521   0.000028212  -0.000071294   0.000008295  -0.224041049   0.534431587
                        -0.000525177  -0.000248684  -0.000258767  -0.000025610  -0.000147479   0.000020050   0.000277298  -0.000667880

    5    5.2  0.5  0.5   0.000249409  -0.000527153  -0.000033887   0.000330931  -0.000032722  -0.000243580  -0.532065937  -0.223049334
                         0.000002074   0.000000858   0.000000997   0.000000108   0.000000579   0.000000001  -0.000103643  -0.000040436

    6    6.2  0.5  0.5  -0.000002077  -0.000000859   0.000000296  -0.000000029   0.000001815  -0.000000190   0.000103290   0.000040628
                         0.000249414  -0.000527167  -0.000004207   0.000046296   0.000054380   0.000407358  -0.530861726  -0.222547928

    7    1.2  0.5 -0.5  -0.519920677  -0.246195281  -0.448127122  -0.044438904   0.433056094  -0.058673533  -0.000000250   0.000000604
                        -0.044335715  -0.020994056  -0.475693895  -0.047172587  -0.208759727   0.028284259  -0.000223481   0.000538903

    8    2.2  0.5 -0.5  -0.000027520   0.000068172   0.000344675  -0.000049547   0.000736686  -0.000125491  -0.000000049  -0.000000076
                         0.247046358  -0.521836201  -0.073374944   0.744907743   0.043503525   0.323248967   0.000537695   0.000222969

    9    3.2  0.5 -0.5  -0.045288541  -0.018977903  -0.066584417  -0.005653732   0.349631568  -0.043402205  -0.000225811   0.000538645
                         0.519924352   0.246141164   0.062625263   0.006176647   0.724210811  -0.098227615   0.000000298  -0.000000585

   10    4.2  0.5 -0.5   0.000002057   0.000000892  -0.000000704  -0.000000112   0.000001235  -0.000000180  -0.000069183  -0.000026316
                        -0.000249411   0.000527159  -0.000038096   0.000377256   0.000021663   0.000163807   0.534432000   0.224041219

   11    5.2  0.5 -0.5   0.000525174   0.000248683  -0.000226998  -0.000022510   0.000219417  -0.000029728  -0.000290307   0.000699690
                         0.000045644   0.000019125  -0.000240805  -0.000025349  -0.000105771   0.000013687  -0.223049148   0.532065487

   12    6.2  0.5 -0.5   0.000045647   0.000019123  -0.000033678  -0.000002859   0.000177062  -0.000021979  -0.222547743   0.530861277
                        -0.000525188  -0.000248689   0.000031766   0.000003100   0.000366864  -0.000049774   0.000289938  -0.000697988


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5  -0.000203248   0.000168310   0.000314875  -0.000045183
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000249027  -0.000298485   0.000008794   0.000069483
                        -0.000080802  -0.000097594  -0.000002285  -0.000016160

    3    3.2  0.5  0.5  -0.000000216  -0.000000203  -0.000000018   0.000000086
                        -0.000107884   0.000090362  -0.000383642   0.000055384

    4    4.2  0.5  0.5   0.490590214   0.584904031  -0.019428904  -0.134542137
                         0.158701027   0.191643310   0.004500304   0.031360382

    5    5.2  0.5  0.5   0.402547897  -0.337224414  -0.619191495   0.089387367
                        -0.000578954  -0.000783628   0.000127725  -0.000143530

    6    6.2  0.5  0.5   0.000310509   0.000420150   0.000156756  -0.000176452
                         0.216178018  -0.181096145   0.759671527  -0.109671405

    7    1.2  0.5 -0.5  -0.000052165  -0.000062993   0.000010269   0.000071562
                         0.000160022   0.000193240   0.000044001   0.000306635

    8    2.2  0.5 -0.5  -0.000000277  -0.000000359  -0.000000054  -0.000000226
                        -0.000314035   0.000261808  -0.000071338   0.000009083

    9    3.2  0.5 -0.5   0.000085975   0.000102505  -0.000053954  -0.000373607
                         0.000027813   0.000033642   0.000012503   0.000087173

   10    4.2  0.5 -0.5   0.000925036   0.001164089   0.000037634  -0.000033065
                         0.615499007  -0.515619451   0.138148684  -0.019943269

   11    5.2  0.5 -0.5   0.103772137   0.125313565  -0.020175279  -0.140599176
                        -0.320861751  -0.382546278  -0.087080883  -0.603017409

   12    6.2  0.5 -0.5  -0.172308864  -0.205436787   0.106841606   0.739827932
                        -0.055728319  -0.067296051  -0.024753169  -0.172497780


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   6.105%  27.228%   0.420%  42.710%   0.424%  23.112%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  27.231%   6.103%  55.489%   0.538%  10.449%   0.189%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   6.095%  27.237%   0.007%   0.836%   1.153%  64.672%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.019%  28.562%  26.586%  37.884%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.309%   4.975%  16.205%  11.372%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.181%   4.953%   4.673%   3.280%
    7    1.2  0.5 -0.5  27.228%   6.105%  42.710%   0.420%  23.112%   0.424%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   6.103%  27.231%   0.538%  55.489%   0.189%  10.449%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5  27.237%   6.095%   0.836%   0.007%  64.672%   1.153%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.562%   5.019%  37.884%  26.586%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.975%  28.309%  11.372%  16.205%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.953%  28.181%   3.280%   4.673%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5   0.040%   1.909%
    5    5.2  0.5  0.5  38.340%   0.799%
    6    6.2  0.5  0.5  57.710%   1.203%
    7    1.2  0.5 -0.5   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5   1.909%   0.040%
   11    5.2  0.5 -0.5   0.799%  38.340%
   12    6.2  0.5 -0.5   1.203%  57.710%


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
              1      24       70.26       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      706.22       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     47359.63  38938.50   8412.26      7.50      0.04      0.92
 REAL TIME  *     47814.41 SEC
 DISK USED  *       738.15 MB (local),       22.02 GB (total)
 SF USED    *         7.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -242.471552469815

              CI           MULTI         RHF-SCF
   -242.46502170   -242.20478688   -242.31083015
 **********************************************************************************************************************************
 Molpro calculation terminated
