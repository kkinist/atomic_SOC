
 Working directory              : /wrk/irikura/molpro.cIwf3ZpZfA/
 Global scratch directory       : /wrk/irikura/molpro.cIwf3ZpZfA/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.cIwf3ZpZfA/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.03 sec
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
       weight,3[99],3[1]
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
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
  64 bit mpp version                                                                     DATE: 26-Feb-24          TIME: 11:16:09  
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

     10.486 MB (compressed) written to integral file ( 21.8%)

     Node minimum: 0.262 MB, node maximum: 0.524 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      69570.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      69570      RECORD LENGTH: 524288

 Memory used in sort:       0.63 MW

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.12 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         1.85      1.53
 REAL TIME  *         2.38 SEC
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
   1     -242.30201901    -242.30201901     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -242.30791125      -0.00589224     0.17D-02     0.74D-02     1     0       0.00      0.01    diag2
   3     -242.31006987      -0.00215862     0.75D-03     0.40D-02     2     0       0.01      0.02    diag2
   4     -242.31070953      -0.00063967     0.38D-03     0.27D-02     3     0       0.00      0.02    diag2
   5     -242.31082858      -0.00011904     0.17D-03     0.18D-02     4     0       0.00      0.02    diag2
   6     -242.31083011      -0.00000154     0.24D-04     0.29D-03     5     0       0.00      0.02    diag2
   7     -242.31083015      -0.00000003     0.41D-05     0.39D-04     6     0       0.01      0.03    diag2
   8     -242.31083015      -0.00000000     0.93D-06     0.88D-05     7     0       0.00      0.03    fixocc
   9     -242.31083015      -0.00000000     0.16D-06     0.13D-05     8     0       0.00      0.03    diag2
  10     -242.31083015      -0.00000000     0.18D-07     0.76D-07     0     0       0.01      0.04    diag/orth

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
 CPU TIMES  *         1.89      0.04      1.53
 REAL TIME  *         2.43 SEC
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
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 2 1 3   7 9 2 110 8 6 5 4 9   710 8 5 4 6 2 1 3 7   9 810 5 4 6 2 1 3 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.33000   0.33000   0.33000   0.00333   0.00333   0.00333
 
 Number of orbital rotations:  417  ( 4 closed/active, 58 closed/virtual, 0 active/active, 355 active/virtual )
 Total number of variables:    458553
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   25   64    0   -242.31991144    -242.40860356   -0.08869212    0.03614360 0.00043983 0.00040974  0.16E+01     16.03
   2   10   33    0   -242.40268416    -242.40272832   -0.00004416    0.02095102 0.00080036 0.00011435  0.37E-01     23.65
   3    9   28    0   -242.40272843    -242.40272843   -0.00000000    0.00004268 0.00000001 0.00000006  0.70E-04     30.78

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.18E-07)
                       Final energy:   -242.40272843
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -242.407078415775
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.18088611
 One electron energy                          -337.18486186
 Two electron energy                            94.77778344
 Virial ratio                                    1.98868669
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -242.407078412459
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.18088611
 One electron energy                          -337.18486179
 Two electron energy                            94.77778338
 Virial ratio                                    1.98868669
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -242.407078412386
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.18088611
 One electron energy                          -337.18486179
 Two electron energy                            94.77778338
 Virial ratio                                    1.98868669
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -241.972080527636
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.57506372
 One electron energy                          -335.06788294
 Two electron energy                            93.09580241
 Virial ratio                                    1.98935712
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -241.972080527409
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.57506372
 One electron energy                          -335.06788294
 Two electron energy                            93.09580241
 Virial ratio                                    1.98935712
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -241.972080527405
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.57506372
 One electron energy                          -335.06788294
 Two electron energy                            93.09580241
 Virial ratio                                    1.98935712
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.999999999999
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999931829
 !MCSCF expec                      <3.2|LXLX|3.2>     0.000000068173
 !MCSCF expec                      <4.2|LXLX|4.2>     1.000000084094
 !MCSCF expec                      <5.2|LXLX|5.2>     1.000008387678
 !MCSCF expec                      <6.2|LXLX|6.2>     3.999991528228
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999587
 !MCSCF expec                      <2.2|LYLY|2.2>     0.000000068585
 !MCSCF expec                      <3.2|LYLY|3.2>     0.999999931829
 !MCSCF expec                      <4.2|LYLY|4.2>     1.000000005428
 !MCSCF expec                      <5.2|LYLY|5.2>     3.999991606822
 !MCSCF expec                      <6.2|LYLY|6.2>     1.000008387749
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.000000000415
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.999999999587
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999999999
 !MCSCF expec                      <4.2|LZLZ|4.2>     3.999999910478
 !MCSCF expec                      <5.2|LZLZ|5.2>     1.000000005500
 !MCSCF expec                      <6.2|LZLZ|6.2>     1.000000084023
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     6.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     6.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 6 4 5 3   2 6 4 3 5 1 2 6 4 3   5 1 3 5 4 6 2 2 6 4   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 3   2 1 6 5 4 7 910 8 3   2 1 5 4 6 810 7 9 6   5 4 810 7 9 3 2 1 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.61825     1  1  s    0.99962
    2.1     2.00000    -4.92364     1  2  s    0.99878
    3.1     1.90511    -0.38008     1  3  s    1.01661
    4.1     0.00061     4.21201     1  2  s    1.85837    1  3  s    0.37226    1  6  s   -2.40177    1  7  s    0.63869
    1.2     1.99660    -3.21319     1  1  pz   1.00328
    2.2     1.99660    -3.21319     1  1  py   1.00328
    3.2     1.99660    -3.21319     1  1  px   1.00328
    4.2     0.36507     0.00873     1  2  pz   1.13357
    5.2     0.36507     0.00873     1  2  py   1.13357
    6.2     0.36507     0.00873     1  2  px   1.13357
    7.2     0.00309     4.80508     1  1  px   2.19432    1  3  px  -0.78969    1  5  px  -1.54636    1  6  px  -0.27545
    8.2     0.00309     4.80508     1  1  py   2.19432    1  3  py  -0.78969    1  5  py  -1.54636    1  6  py  -0.27545
    9.2     0.00309     4.80508     1  1  pz   2.19432    1  3  pz  -0.78969    1  5  pz  -1.54636    1  6  pz  -0.27545
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 222a00000      0.97836470     -0.00001989      0.00000115      0.00000000     -0.00000000     -0.00000000
 20 22200a000     -0.00000115      0.00025545      0.97836467      0.00000000     -0.00000000      0.00000002
 20 2220a0000      0.00001989      0.97836467     -0.00025545     -0.00000000      0.00000002      0.00000000
 00 222a20000     -0.13681428      0.00000278     -0.00000016      0.70532156      0.00003020     -0.00011804
 00 222a02000     -0.13681428      0.00000278     -0.00000016     -0.70532156     -0.00003020      0.00011804
 00 2222a0000     -0.00000278     -0.13681428      0.00003572     -0.00003000      0.70532064      0.00117937
 00 22220a000      0.00000016     -0.00003572     -0.13681428      0.00011809     -0.00117936      0.70532063
 00 2220a2000     -0.00000278     -0.13681427      0.00003572      0.00003000     -0.70532053     -0.00117937
 00 22202a000      0.00000016     -0.00003572     -0.13681427     -0.00011809      0.00117936     -0.70532053
 
 Energy:        -242.40707842   -242.40707841   -242.40707841   -241.97208053   -241.97208053   -241.97208053
 


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
 CPU TIMES  *        14.22     12.33      0.04      1.53
 REAL TIME  *        35.40 SEC
 DISK USED  *        32.53 MB (local),        1.07 GB (total)
 SF USED    *        14.05 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.4070784   2.0
    -242.4070784   2.0
    -242.4070784   2.0
    -241.9720805   6.0
    -241.9720805   6.0
    -241.9720805   6.0
                                                  

 MULTI/aug-cc-pWCVTZ-DK energy=   -241.972080527405

           MULTI         RHF-SCF
   -241.97208053   -242.31083015
 **********************************************************************************************************************************
 Molpro calculation terminated
