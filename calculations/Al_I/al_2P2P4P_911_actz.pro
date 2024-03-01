
 Working directory              : /wrk/irikura/molpro.FwW6FdWtnz/
 Global scratch directory       : /wrk/irikura/molpro.FwW6FdWtnz/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.FwW6FdWtnz/

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
     wf,sym=2,spin=3;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,3; save,5203.2}
 hlsdiag(7) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
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
  64 bit mpp version                                                                     DATE: 26-Feb-24          TIME: 11:47:33  
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

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.11 SEC
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
 CPU TIMES  *         1.61      1.26
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
   6     -242.31083011      -0.00000154     0.24D-04     0.29D-03     5     0       0.00      0.01    diag2
   7     -242.31083015      -0.00000003     0.41D-05     0.39D-04     6     0       0.01      0.02    diag2
   8     -242.31083015      -0.00000000     0.93D-06     0.88D-05     7     0       0.00      0.02    fixocc
   9     -242.31083015      -0.00000000     0.16D-06     0.13D-05     8     0       0.00      0.02    diag2
  10     -242.31083015      -0.00000000     0.18D-07     0.76D-07     0     0       0.00      0.02    diag/orth

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
 CPU TIMES  *         1.65      0.04      1.26
 REAL TIME  *         2.32 SEC
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

 State symmetry 2

 Number of active electrons:   9    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             3
 Number of CSFs:           28656   (37674 determinants, 76230 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.170D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.132D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.983D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   2 6 4 3 5 3 5 6 4 2   1 3 5 4 6 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.783D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.771D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.945D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.415D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.413D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.414D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.145D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.144D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 2 1 3   7 9 2 110 8 6 5 4 9   710 8 5 4 6 2 1 3 9   7 810 5 4 6 2 1 3 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111
 
 Number of orbital rotations:  417  ( 4 closed/active, 58 closed/virtual, 0 active/active, 355 active/virtual )
 Total number of variables:    571575
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   32    0   -242.17890945    -242.20351952   -0.02461006    0.06783845 0.00002678 0.00008387  0.59E+00      5.40
   2    7   32    0   -242.20285480    -242.20288279   -0.00002799    0.00390803 0.00000113 0.00000350  0.20E-01     11.93
   3    5   18    0   -242.20288283    -242.20288283   -0.00000000    0.00000731 0.00000000 0.00000004  0.36E-04     16.81

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.20E-08)
                       Final energy:   -242.20288283
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -242.328466821601
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.27143854
 One electron energy                          -337.51241858
 Two electron energy                            95.18395176
 Virial ratio                                    1.98800116
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -242.328466818130
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.27143854
 One electron energy                          -337.51241854
 Two electron energy                            95.18395172
 Virial ratio                                    1.98800116
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -242.328466818058
 Nuclear energy                                  0.00000000
 Kinetic energy                                245.27143854
 One electron energy                          -337.51241854
 Two electron energy                            95.18395172
 Virial ratio                                    1.98800116
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy              -242.204382828753
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.92436847
 One electron energy                          -335.07411453
 Two electron energy                            92.86973171
 Virial ratio                                    1.98889459
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy              -242.204382827985
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.92436847
 One electron energy                          -335.07411454
 Two electron energy                            92.86973171
 Virial ratio                                    1.98889459
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Doublet
 =============================
 !MCSCF STATE 6.2 Doublet Energy              -242.204382827969
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.92436847
 One electron energy                          -335.07411454
 Two electron energy                            92.86973171
 Virial ratio                                    1.98889459
 
 !MCSCF STATE 6.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -242.075798834729
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.75652841
 One electron energy                          -334.60423942
 Two electron energy                            92.52844059
 Virial ratio                                    1.98904736
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -242.075798828866
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.75652841
 One electron energy                          -334.60423938
 Two electron energy                            92.52844055
 Virial ratio                                    1.98904736
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -242.075798828743
 Nuclear energy                                  0.00000000
 Kinetic energy                                244.75652841
 One electron energy                          -334.60423938
 Two electron energy                            92.52844055
 Virial ratio                                    1.98904736
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     1.000000000000
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999989776
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000010224
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     0.999999109049
 !MCSCF expec      <6.2 Doublet|LXLX|6.2 Doublet>     0.000000890951
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999999999
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999775916
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.000000224085
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999999563
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000000010661
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999989776
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     1.000000000000
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     0.000000890951
 !MCSCF expec      <6.2 Doublet|LYLY|6.2 Doublet>     0.999999109049
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999999725
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000000224359
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999775916
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000000000437
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999999563
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000000000
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>    -0.000000000000
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000000000
 !MCSCF expec      <6.2 Doublet|LZLZ|6.2 Doublet>     1.000000000000
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000276
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999999725
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999999
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     2.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     2.000000000000
 !MCSCF expec      <6.2 Doublet|L**2|6.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 5 3 1   2 6 4 3 5 2 6 4 3 5   1 5 3 4 6 2 1 2 6 4   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 3   2 1 6 5 4 7 910 8 5   4 6 810 7 9 3 2 1 6   5 4 810 7 9 3 2 1 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -58.73947     1  1  s    0.99967
    2.1     2.00000    -5.04432     1  2  s    0.99955
    3.1     1.59370    -0.42006     1  3  s    1.15659
    4.1     0.33745     0.01576     1  3  s   -0.62084    1  5  s   -0.37150    1  8  s    1.50848
    1.2     1.99992    -3.33377     1  1  pz   1.00041
    2.2     1.99992    -3.33377     1  1  py   1.00041
    3.2     1.99992    -3.33377     1  1  px   1.00041
    4.2     0.24530    -0.03597     1  2  pz   1.36626    1  4  pz  -0.39908
    5.2     0.24530    -0.03597     1  2  py   1.36626    1  4  py  -0.39908
    6.2     0.24530    -0.03597     1  2  px   1.36626    1  4  px  -0.39908
    7.2     0.11106     0.03069     1  2  px  -0.42584    1  7  px   1.10192
    8.2     0.11106     0.03069     1  2  py  -0.42584    1  7  py   1.10192
    9.2     0.11106     0.03069     1  2  pz  -0.42584    1  7  pz   1.10192
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 222a00000      0.95672186     -0.00001999      0.00000037     -0.18845601      0.00000000      0.00000000
 20 22200a000     -0.00000037      0.00009674      0.95672185     -0.00000000     -0.00017788     -0.18845593
 20 2220a0000      0.00001999      0.95672185     -0.00009674     -0.00000000     -0.18845593      0.00017788
 20 22200000a      0.18977882     -0.00000397      0.00000007      0.94745862     -0.00000000     -0.00000000
 20 2220000a0      0.00000397      0.18977883     -0.00001919      0.00000000      0.94745820     -0.00089431
 20 222000a00     -0.00000007      0.00001919      0.18977883      0.00000000      0.00089431      0.94745820
 00 22220a000      0.00000006     -0.00001449     -0.14330192      0.00000000      0.00002900      0.03072508
 00 2222a0000     -0.00000299     -0.14330192      0.00001449      0.00000000      0.03072508     -0.00002900
 00 222a20000     -0.14330192      0.00000299     -0.00000006      0.03072510     -0.00000000     -0.00000000
 00 222a02000     -0.14330192      0.00000299     -0.00000006      0.03072510     -0.00000000     -0.00000000
 00 22202a000      0.00000006     -0.00001449     -0.14330192      0.00000000      0.00002900      0.03072508
 00 2220a2000     -0.00000299     -0.14330192      0.00001449      0.00000000      0.03072508     -0.00002900
 00 22202000a     -0.02583660      0.00000054     -0.00000001     -0.13328971      0.00000000      0.00000000
 00 22200200a     -0.02583660      0.00000054     -0.00000001     -0.13328971      0.00000000      0.00000000
 00 2222000a0     -0.00000054     -0.02583660      0.00000261     -0.00000000     -0.13328966      0.00012581
 00 222200a00      0.00000001     -0.00000261     -0.02583660     -0.00000000     -0.00012581     -0.13328966
 00 222020a00      0.00000001     -0.00000261     -0.02583660     -0.00000000     -0.00012581     -0.13328966
 00 2220020a0     -0.00000054     -0.02583660      0.00000261     -0.00000000     -0.13328966      0.00012581
 00 22220000a     -0.03634191      0.00000076     -0.00000001     -0.12716531      0.00000000      0.00000000
 00 2220200a0     -0.00000076     -0.03634191      0.00000367     -0.00000000     -0.12716525      0.00012003
 00 222002a00      0.00000001     -0.00000367     -0.03634191     -0.00000000     -0.00012003     -0.12716525
 aa 222b00000     -0.01241609      0.00000026     -0.00000000      0.06588773     -0.00000000     -0.00000000
 aa 2220b0000     -0.00000026     -0.01241609      0.00000126      0.00000000      0.06588770     -0.00006219
 aa 22200b000      0.00000000     -0.00000126     -0.01241609      0.00000000      0.00006219      0.06588770
 ab 222a00000      0.04594667     -0.00000096      0.00000002     -0.06447347      0.00000000      0.00000000
 ab 2220a0000      0.00000096      0.04594666     -0.00000465     -0.00000000     -0.06447344      0.00006086
 ab 22200a000     -0.00000002      0.00000465      0.04594666     -0.00000000     -0.00006086     -0.06447344
 
 Energy:        -242.32846682   -242.32846682   -242.32846682   -242.20438283   -242.20438283   -242.20438283
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 aa 222a00000      0.99758429     -0.00001655     -0.00000086
 aa 22200a000      0.00000086      0.00047223      0.99758418
 aa 2220a0000      0.00001655      0.99758418     -0.00047223
 
 Energy:        -242.07579883   -242.07579883   -242.07579883
 


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
 CPU TIMES  *         8.73      7.09      0.04      1.26
 REAL TIME  *        20.59 SEC
 DISK USED  *        32.53 MB (local),        1.07 GB (total)
 SF USED    *        14.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -242.3284668   2.0
    -242.3284668   2.0
    -242.3284668   2.0
    -242.2043828   2.0
    -242.2043828   2.0
    -242.2043828   2.0
    -242.0757988   2.0
    -242.0757988   2.0
    -242.0757988   2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.04 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.32846682
     2      -242.32846682
     3      -242.32846682
     4      -242.20438283
     5      -242.20438283
     6      -242.20438283

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1384D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1263D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2382D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2312D-06

 Number of blocks in overlap matrix:    18   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:     804
 Number of N-1 electron functions:  453024

 Number of internal configurations:               170370
 Number of singly external configurations:      14046192
 Number of doubly external configurations:        774969
 Total number of contracted configurations:     14991531
 Total number of uncontracted configurations:  419778450

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:    541.56 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1099214 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.32846682    -0.00000000    -0.29255257  0.39D-01  0.14D-01   568.38
    1     2     2     1.00000000     0.00000000  -242.32846682    -0.00000000    -0.29262249  0.39D-01  0.14D-01   568.38
    1     3     3     1.00000000     0.00000000  -242.32846682    -0.00000000    -0.29262418  0.39D-01  0.14D-01   568.38
    1     4     4     1.00000000     0.00000000  -242.20438283    -0.00000000    -0.27133396  0.14D-01  0.14D-01   568.38
    1     5     5     1.00000000     0.00000000  -242.20438283    -0.00000000    -0.27133897  0.14D-01  0.14D-01   568.38
    1     6     6     1.00000000     0.00000000  -242.20438283     0.00000000    -0.27133833  0.14D-01  0.14D-01   568.38
    2     1     1     1.04665965    -0.27243774  -242.60090456    -0.27243774    -0.00395125  0.89D-03  0.26D-03  1103.65
    2     2     2     1.04681979    -0.27240753  -242.60087435    -0.27240753    -0.00398039  0.92D-03  0.26D-03  1103.65
    2     3     3     1.04681908    -0.27240735  -242.60087417    -0.27240735    -0.00398057  0.92D-03  0.26D-03  1103.65
    2     4     4     1.02404288    -0.25667865  -242.46106148    -0.25667865    -0.00246689  0.45D-03  0.14D-03  1103.65
    2     5     5     1.02407500    -0.25667406  -242.46105689    -0.25667406    -0.00247190  0.45D-03  0.14D-03  1103.65
    2     6     6     1.02407496    -0.25667395  -242.46105678    -0.25667395    -0.00247198  0.45D-03  0.14D-03  1103.65
    3     1     1     1.03978358    -0.27711216  -242.60557898    -0.00467442    -0.00079350  0.39D-04  0.81D-04  1639.04
    3     2     2     1.03977167    -0.27710847  -242.60557529    -0.00470094    -0.00079389  0.39D-04  0.82D-04  1639.04
    3     3     3     1.03977130    -0.27710846  -242.60557528    -0.00470111    -0.00079391  0.39D-04  0.82D-04  1639.04
    3     4     4     1.02298099    -0.25949008  -242.46387291    -0.00281143    -0.00036682  0.15D-04  0.37D-04  1639.04
    3     5     5     1.02297971    -0.25948945  -242.46387228    -0.00281539    -0.00036700  0.15D-04  0.37D-04  1639.04
    3     6     6     1.02297975    -0.25948932  -242.46387215    -0.00281537    -0.00036708  0.15D-04  0.37D-04  1639.04
    4     1     1     1.04154749    -0.27893992  -242.60740674    -0.00182776    -0.00048023  0.36D-04  0.39D-04  2168.47
    4     2     2     1.04152173    -0.27893707  -242.60740389    -0.00182860    -0.00048123  0.36D-04  0.40D-04  2168.47
    4     3     3     1.04152166    -0.27893695  -242.60740377    -0.00182849    -0.00048135  0.36D-04  0.40D-04  2168.47
    4     4     4     1.02404793    -0.26018483  -242.46456766    -0.00069475    -0.00019477  0.12D-04  0.16D-04  2168.47
    4     5     5     1.02404325    -0.26018430  -242.46456713    -0.00069485    -0.00019497  0.12D-04  0.16D-04  2168.47
    4     6     6     1.02404240    -0.26018407  -242.46456690    -0.00069475    -0.00019510  0.12D-04  0.16D-04  2168.47
    5     1     1     1.04360403    -0.27957609  -242.60804291    -0.00063617    -0.00012935  0.16D-04  0.10D-04  2699.94
    5     2     2     1.04361950    -0.27957548  -242.60804230    -0.00063841    -0.00012983  0.16D-04  0.10D-04  2699.94
    5     3     3     1.04361926    -0.27957539  -242.60804221    -0.00063844    -0.00012992  0.16D-04  0.10D-04  2699.94
    5     4     4     1.02445820    -0.26047108  -242.46485391    -0.00028625    -0.00005699  0.48D-05  0.42D-05  2699.94
    5     5     5     1.02446061    -0.26047087  -242.46485370    -0.00028657    -0.00005712  0.49D-05  0.42D-05  2699.94
    5     6     6     1.02446061    -0.26047072  -242.46485355    -0.00028665    -0.00005718  0.49D-05  0.42D-05  2699.94
    6     1     1     1.04287976    -0.27973431  -242.60820113    -0.00015822    -0.00004104  0.26D-05  0.38D-05  3232.65
    6     2     2     1.04288011    -0.27973409  -242.60820091    -0.00015861    -0.00004108  0.26D-05  0.38D-05  3232.65
    6     3     3     1.04288043    -0.27973405  -242.60820087    -0.00015866    -0.00004109  0.26D-05  0.38D-05  3232.65
    6     4     4     1.02422163    -0.26054008  -242.46492290    -0.00006900    -0.00001540  0.93D-06  0.14D-05  3232.65
    6     5     5     1.02422145    -0.26053998  -242.46492281    -0.00006911    -0.00001541  0.93D-06  0.14D-05  3232.65
    6     6     6     1.02422120    -0.26053990  -242.46492272    -0.00006917    -0.00001543  0.93D-06  0.14D-05  3232.65
    7     1     1     1.04331530    -0.27981048  -242.60827730    -0.00007617    -0.00002793  0.13D-05  0.24D-05  3766.90
    7     2     2     1.04330864    -0.27981032  -242.60827714    -0.00007623    -0.00002795  0.14D-05  0.24D-05  3766.90
    7     3     3     1.04330868    -0.27981030  -242.60827712    -0.00007625    -0.00002796  0.14D-05  0.24D-05  3766.90
    7     4     4     1.02440321    -0.26056667  -242.46494950    -0.00002659    -0.00001024  0.43D-06  0.88D-06  3766.90
    7     5     5     1.02440218    -0.26056659  -242.46494942    -0.00002661    -0.00001026  0.44D-06  0.89D-06  3766.90
    7     6     6     1.02440186    -0.26056653  -242.46494936    -0.00002664    -0.00001027  0.44D-06  0.89D-06  3766.90
    8     1     1     1.04371261    -0.27984664  -242.60831346    -0.00003616    -0.00001173  0.62D-06  0.11D-05  4299.52
    8     2     2     1.04371384    -0.27984659  -242.60831341    -0.00003627    -0.00001176  0.62D-06  0.11D-05  4299.52
    8     3     3     1.04371370    -0.27984658  -242.60831340    -0.00003628    -0.00001176  0.62D-06  0.11D-05  4299.52
    8     4     4     1.02452993    -0.26058054  -242.46496337    -0.00001387    -0.00000460  0.20D-06  0.40D-06  4299.52
    8     5     5     1.02452998    -0.26058048  -242.46496331    -0.00001389    -0.00000461  0.20D-06  0.41D-06  4299.52
    8     6     6     1.02452980    -0.26058043  -242.46496326    -0.00001390    -0.00000462  0.20D-06  0.41D-06  4299.52
    9     1     1     1.04366416    -0.27985963  -242.60832645    -0.00001299    -0.00000419  0.16D-06  0.42D-06  4832.99
    9     2     2     1.04366504    -0.27985960  -242.60832642    -0.00001301    -0.00000419  0.16D-06  0.42D-06  4832.99
    9     3     3     1.04366507    -0.27985959  -242.60832641    -0.00001301    -0.00000419  0.16D-06  0.42D-06  4832.99
    9     4     4     1.02451276    -0.26058575  -242.46496858    -0.00000521    -0.00000150  0.72D-07  0.15D-06  4832.99
    9     5     5     1.02451264    -0.26058570  -242.46496853    -0.00000522    -0.00000151  0.72D-07  0.15D-06  4832.99
    9     6     6     1.02451244    -0.26058566  -242.46496849    -0.00000522    -0.00000151  0.72D-07  0.15D-06  4832.99
   10     1     1     1.04376937    -0.27986645  -242.60833327    -0.00000682    -0.00000288  0.87D-07  0.27D-06  5365.06
   10     2     2     1.04376828    -0.27986643  -242.60833324    -0.00000683    -0.00000288  0.87D-07  0.27D-06  5365.06
   10     3     3     1.04376824    -0.27986642  -242.60833324    -0.00000683    -0.00000288  0.87D-07  0.27D-06  5365.06
   10     4     4     1.02455439    -0.26058811  -242.46497094    -0.00000236    -0.00000103  0.32D-07  0.97D-07  5365.06
   10     5     5     1.02455411    -0.26058806  -242.46497089    -0.00000236    -0.00000103  0.32D-07  0.97D-07  5365.06
   10     6     6     1.02455393    -0.26058803  -242.46497085    -0.00000237    -0.00000104  0.32D-07  0.97D-07  5365.06
   11     1     1     1.04386141    -0.27987025  -242.60833707    -0.00000379    -0.00000144  0.40D-07  0.14D-06  5901.74
   11     2     2     1.04386141    -0.27987023  -242.60833705    -0.00000380    -0.00000144  0.40D-07  0.14D-06  5901.74
   11     3     3     1.04386140    -0.27987022  -242.60833704    -0.00000380    -0.00000144  0.40D-07  0.14D-06  5901.74
   11     4     4     1.02458510    -0.26058953  -242.46497235    -0.00000142    -0.00000056  0.16D-07  0.53D-07  5901.74
   11     5     5     1.02458499    -0.26058948  -242.46497231    -0.00000142    -0.00000056  0.17D-07  0.53D-07  5901.74
   11     6     6     1.02458484    -0.26058945  -242.46497227    -0.00000142    -0.00000056  0.17D-07  0.54D-07  5901.74
   12     1     1     1.04386878    -0.27987177  -242.60833859    -0.00000152    -0.00000055  0.10D-07  0.58D-07  6434.68
   12     2     2     1.04386912    -0.27987175  -242.60833857    -0.00000152    -0.00000055  0.10D-07  0.58D-07  6434.68
   12     3     3     1.04386906    -0.27987175  -242.60833856    -0.00000152    -0.00000055  0.10D-07  0.58D-07  6434.68
   12     4     4     1.02458709    -0.26059013  -242.46497296    -0.00000061    -0.00000020  0.61D-08  0.21D-07  6434.68
   12     5     5     1.02458697    -0.26059009  -242.46497292    -0.00000061    -0.00000020  0.61D-08  0.21D-07  6434.68
   12     6     6     1.02458682    -0.26059005  -242.46497288    -0.00000061    -0.00000020  0.61D-08  0.21D-07  6434.68
   13     1     1     1.04390368    -0.27987259  -242.60833941    -0.00000082    -0.00000038  0.76D-08  0.39D-07  6963.53
   13     2     2     1.04390367    -0.27987258  -242.60833940    -0.00000082    -0.00000038  0.77D-08  0.39D-07  6963.53
   13     3     3     1.04390360    -0.27987257  -242.60833939    -0.00000082    -0.00000038  0.77D-08  0.39D-07  6963.53
   13     4     4     1.02460081    -0.26059043  -242.46497326    -0.00000030    -0.00000014  0.28D-08  0.14D-07  6963.53
   13     5     5     1.02460067    -0.26059039  -242.46497321    -0.00000030    -0.00000014  0.28D-08  0.14D-07  6963.53
   13     6     6     1.02460053    -0.26059035  -242.46497318    -0.00000030    -0.00000014  0.28D-08  0.14D-07  6963.53
   14     1     1     1.04392966    -0.27987309  -242.60833991    -0.00000050    -0.00000021  0.36D-08  0.22D-07  7501.31
   14     2     2     1.04392973    -0.27987308  -242.60833990    -0.00000050    -0.00000021  0.36D-08  0.22D-07  7501.31
   14     3     3     1.04392967    -0.27987307  -242.60833989    -0.00000050    -0.00000021  0.36D-08  0.22D-07  7501.31
   14     4     4     1.02461012    -0.26059062  -242.46497345    -0.00000019    -0.00000008  0.20D-08  0.85D-08  7501.31
   14     5     5     1.02461001    -0.26059058  -242.46497341    -0.00000019    -0.00000008  0.20D-08  0.85D-08  7501.31
   14     6     6     1.02460989    -0.26059054  -242.46497337    -0.00000019    -0.00000008  0.20D-08  0.85D-08  7501.31
   15     1     1     1.04393464    -0.27987331  -242.60834013    -0.00000022    -0.00000008  0.88D-09  0.90D-08  8030.68
   15     2     2     1.04393484    -0.27987330  -242.60834011    -0.00000022    -0.00000008  0.88D-09  0.90D-08  8030.68
   15     3     3     1.04393477    -0.27987329  -242.60834011    -0.00000022    -0.00000008  0.88D-09  0.90D-08  8030.68
   15     4     4     1.02461128    -0.26059071  -242.46497354    -0.00000009    -0.00000003  0.58D-09  0.35D-08  8030.68
   15     5     5     1.02461117    -0.26059067  -242.46497350    -0.00000009    -0.00000003  0.58D-09  0.35D-08  8030.68
   15     6     6     1.02461105    -0.26059063  -242.46497346    -0.00000009    -0.00000003  0.58D-09  0.35D-08  8030.68


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.9%   2.5%
 P   1.4%  23.7%  63.2%

 Initialization:   6.9%
 Other:            0.8%

 Total CPU:     8030.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222000/00          -0.0065431   0.1278687  -0.0455106   0.0002053  -0.0005584   0.9495957
 2202220000/0          -0.0025769   0.0454385   0.1280365  -0.0009357   0.9495943   0.0005586
 22022200000/           0.1357031   0.0070284   0.0002370   0.9495935   0.0009358  -0.0002047
 220222/00000           0.9488811   0.0491446   0.0016568  -0.1316225  -0.0001297   0.0000284
 2202220/0000          -0.0180188   0.3177222   0.8952773   0.0001297  -0.1316211  -0.0000774
 22022200/000          -0.0457522   0.8941091  -0.3182284  -0.0000284   0.0000774  -0.1316196
 200222/02000          -0.1283635  -0.0066482  -0.0002241   0.0200486   0.0000197  -0.0000044
 200222/20000          -0.1283634  -0.0066482  -0.0002241   0.0200486   0.0000198  -0.0000043
 200222020/00           0.0008070  -0.0157700   0.0056128  -0.0000263   0.0000716  -0.1218304
 200222200/00           0.0008070  -0.0157700   0.0056128  -0.0000263   0.0000716  -0.1218304
 2002220020/0           0.0003178  -0.0056035  -0.0157897   0.0001200  -0.1218302  -0.0000717
 2002222000/0           0.0003178  -0.0056042  -0.0157916   0.0001200  -0.1218293  -0.0000717
 20022200200/          -0.0167360  -0.0008668  -0.0000292  -0.1218293  -0.0001200   0.0000263
 20022202000/          -0.0167360  -0.0008668  -0.0000292  -0.1218293  -0.0001201   0.0000263
 2002222/0000           0.0024376  -0.0429812  -0.1211127  -0.0000197   0.0200464   0.0000117
 2002220/2000           0.0024376  -0.0429812  -0.1211126  -0.0000197   0.0200519   0.0000117
 20022202/000           0.0061894  -0.1209554   0.0430501   0.0000043  -0.0000117   0.0200497
 20022220/000           0.0061894  -0.1209553   0.0430501   0.0000044  -0.0000117   0.0200497
 200222002/00           0.0012471  -0.0243722   0.0086745  -0.0000252   0.0000685  -0.1164325
 2002220200/0           0.0004912  -0.0086614  -0.0244061   0.0001147  -0.1164297  -0.0000685
 20022220000/          -0.0258695  -0.0013398  -0.0000452  -0.1164269  -0.0001147   0.0000251
 2//222\00000          -0.0083304  -0.0004315  -0.0000146   0.0753582   0.0000743  -0.0000162
 2//2220\0000           0.0001582  -0.0027894  -0.0078609  -0.0000743   0.0753479   0.0000443
 2//22200\000           0.0004017  -0.0078515   0.0027944   0.0000162  -0.0000443   0.0753369
 2/\22200000/          -0.0208154  -0.0010781  -0.0000364  -0.0725169  -0.0000715   0.0000156
 2/\2220000/0           0.0003951  -0.0069672  -0.0196322   0.0000714  -0.0725151  -0.0000426
 2/\222000/00           0.0010029  -0.0195995   0.0069758  -0.0000157   0.0000426  -0.0725131

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 220222000000  10.2     0.0643420   0.0033324   0.0001123  -0.0175619  -0.0000173   0.0000038
 220222000000  11.2     0.0012218  -0.0215443  -0.0607075  -0.0000173   0.0175626   0.0000103
 220222000000  12.2     0.0031024  -0.0606283   0.0215786   0.0000038  -0.0000103   0.0175633
 2\0222/00000  11.1    -0.0520050  -0.0026935  -0.0000908   0.0224753   0.0000221  -0.0000048

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.975494   -0.018524   -0.047035   -0.051259    0.000973    0.002472
 2           0.050523    0.326633    0.919185   -0.002655   -0.017164   -0.048303
 3           0.001703    0.920386   -0.327153   -0.000090   -0.048364    0.017192
 4           0.058140   -0.000057    0.000013    0.985840   -0.000971    0.000213
 5           0.000057    0.058141   -0.000034    0.000971    0.985839   -0.000580
 6          -0.000013    0.000034    0.058143   -0.000213    0.000580    0.985840

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978145    0.000000   -0.000000    0.003145   -0.000057   -0.000152
 2           0.000000    0.978145    0.000000    0.000162    0.001052    0.002964
 3          -0.000000    0.000000    0.978145    0.000002    0.002968   -0.001053
 4           0.003145    0.000162    0.000002    0.987548    0.000000   -0.000000
 5          -0.000057    0.001052    0.002968    0.000000    0.987548    0.000000
 6          -0.000152    0.002964   -0.001053   -0.000000    0.000000    0.987548


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97549364 (fixed)   0.97872503 (relaxed)   0.97814512 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119830   -0.00011807   -0.22693079
 Singles      0.02633374   -0.04228249   -0.04750198
 Pairs        0.01765354   -0.00074139   -0.00544054
 Total        1.04518559   -0.04314196   -0.27987331
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.32808201
 Nuclear energy                         0.00000000
 Kinetic energy                       245.32547992
 One electron energy                 -337.11643702
 Two electron energy                   94.50809689
 Virial quotient                       -0.98892435
 Correlation energy                    -0.28025812
 !MRCI STATE 1.2 Energy              -242.608340129872

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62100376 (Davidson, fixed reference)
 Cluster corrected energies          -242.62065674 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62100376 (Davidson, rotated reference)

 Cluster corrected energies          -242.61874976 (Pople, fixed reference)
 Cluster corrected energies          -242.61845697 (Pople, relaxed reference)
 Cluster corrected energies          -242.61874976 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.91918503 (fixed)   0.97872493 (relaxed)   0.97814500 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119836   -0.00011807   -0.24150232
 Singles      0.02633394   -0.04228252   -0.04750198
 Pairs        0.01765355    0.01448865    0.00913101
 Total        1.04518585   -0.02791195   -0.27987330
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.32808196
 Nuclear energy                         0.00000000
 Kinetic energy                       245.32548390
 One electron energy                 -337.11644435
 Two electron energy                   94.50810424
 Virial quotient                       -0.98892433
 Correlation energy                    -0.28025815
 !MRCI STATE 2.2 Energy              -242.608340113907

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62100382 (Davidson, fixed reference)
 Cluster corrected energies          -242.62065678 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62100382 (Davidson, rotated reference)

 Cluster corrected energies          -242.61874980 (Pople, fixed reference)
 Cluster corrected energies          -242.61845701 (Pople, relaxed reference)
 Cluster corrected energies          -242.61874980 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.92038621 (fixed)   0.97872497 (relaxed)   0.97814505 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00119833   -0.00011807   -0.22270626
 Singles      0.02633386   -0.04228251   -0.04750196
 Pairs        0.01765355   -0.00515675   -0.00966507
 Total        1.04518575   -0.04755733   -0.27987329
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.32808198
 Nuclear energy                         0.00000000
 Kinetic energy                       245.32548259
 One electron energy                 -337.11644128
 Two electron energy                   94.50810117
 Virial quotient                       -0.98892434
 Correlation energy                    -0.28025813
 !MRCI STATE 3.2 Energy              -242.608340106912

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.62100378 (Davidson, fixed reference)
 Cluster corrected energies          -242.62065675 (Davidson, relaxed reference)
 Cluster corrected energies          -242.62100378 (Davidson, rotated reference)

 Cluster corrected energies          -242.61874977 (Pople, fixed reference)
 Cluster corrected energies          -242.61845698 (Pople, relaxed reference)
 Cluster corrected energies          -242.61874977 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.98583953 (fixed)   0.98791174 (relaxed)   0.98754791 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00074752   -0.00010858   -0.22552950
 Singles      0.01007344   -0.02948290   -0.03131242
 Pairs        0.01455623   -0.00004980   -0.00374878
 Total        1.02537720   -0.02964127   -0.26059071
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20476764
 Nuclear energy                         0.00000000
 Kinetic energy                       245.14520499
 One electron energy                 -334.80736363
 Two electron energy                   92.34239009
 Virial quotient                       -0.98906676
 Correlation energy                    -0.26020590
 !MRCI STATE 4.2 Energy              -242.464973538021

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.47157683 (Davidson, fixed reference)
 Cluster corrected energies          -242.47138035 (Davidson, relaxed reference)
 Cluster corrected energies          -242.47157683 (Davidson, rotated reference)

 Cluster corrected energies          -242.47033728 (Pople, fixed reference)
 Cluster corrected energies          -242.47017532 (Pople, relaxed reference)
 Cluster corrected energies          -242.47033728 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.98583931 (fixed)   0.98791179 (relaxed)   0.98754795 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00074755   -0.00010858   -0.22571020
 Singles      0.01007337   -0.02948286   -0.03131236
 Pairs        0.01455620    0.00013546   -0.00356810
 Total        1.02537712   -0.02945597   -0.26059067
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20476766
 Nuclear energy                         0.00000000
 Kinetic energy                       245.14520778
 One electron energy                 -334.80736051
 Two electron energy                   92.34238701
 Virial quotient                       -0.98906675
 Correlation energy                    -0.26020583
 !MRCI STATE 5.2 Energy              -242.464973495894

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.47157677 (Davidson, fixed reference)
 Cluster corrected energies          -242.47138027 (Davidson, relaxed reference)
 Cluster corrected energies          -242.47157677 (Davidson, rotated reference)

 Cluster corrected energies          -242.47033722 (Pople, fixed reference)
 Cluster corrected energies          -242.47017525 (Pople, relaxed reference)
 Cluster corrected energies          -242.47033722 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.98583971 (fixed)   0.98791185 (relaxed)   0.98754800 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00074756   -0.00010858   -0.00089531
 Singles      0.01007328   -0.02948282   -0.03131231
 Pairs        0.01455617   -0.23038459   -0.22838302
 Total        1.02537701   -0.25997599   -0.26059063
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.20476769
 Nuclear energy                         0.00000000
 Kinetic energy                       245.14520999
 One electron energy                 -334.80735681
 Two electron energy                   92.34238335
 Virial quotient                       -0.98906674
 Correlation energy                    -0.26020577
 !MRCI STATE 6.2 Energy              -242.464973461911

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.47157671 (Davidson, fixed reference)
 Cluster corrected energies          -242.47138021 (Davidson, relaxed reference)
 Cluster corrected energies          -242.47157671 (Davidson, rotated reference)

 Cluster corrected energies          -242.47033716 (Pople, fixed reference)
 Cluster corrected energies          -242.47017519 (Pople, relaxed reference)
 Cluster corrected energies          -242.47033716 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      706.24       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      8479.65   8470.89      7.09      0.04      1.26
 REAL TIME  *      8611.29 SEC
 DISK USED  *       738.13 MB (local),       21.75 GB (total)
 SF USED    *         7.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -242.62100376  AU                              
 SETTING HLSDIAG(2)     =      -242.62100382  AU                              
 SETTING HLSDIAG(3)     =      -242.62100378  AU                              
 SETTING HLSDIAG(4)     =      -242.47157683  AU                              
 SETTING HLSDIAG(5)     =      -242.47157677  AU                              
 SETTING HLSDIAG(6)     =      -242.47157671  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 13
 Maximum number of shells:             5
 Maximum number of spin couplings:   165

 Reference space:     9043 conf    28656 CSFs
 N elec internal:    64032 conf   283140 CSFs
 N-1 el internal:    56226 conf   423450 CSFs
 N-2 el internal:    31534 conf   428106 CSFs

 Number of electrons in valence space:                     11
 Maximum number of open shell orbitals in reference space:  9
 Maximum number of open shell orbitals in internal spaces: 11


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   1 (   1   0 )
 Number of active  orbitals:       11 (   2   9 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  16

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -242.07579883
     2      -242.07579883
     3      -242.07579883

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2857D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2857D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2857D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1278D-06

 Number of blocks in overlap matrix:    33   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:     419
 Number of N-1 electron functions:  423450

 Number of internal configurations:               141057
 Number of singly external configurations:      13128822
 Number of doubly external configurations:        403752
 Total number of contracted configurations:     13673631
 Total number of uncontracted configurations:  421512678

 Diagonal Coupling coefficients finished.               Storage:86503349 words, CPU-Time:    122.26 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1149689 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -242.07579883     0.00000000    -0.26525291  0.14D-01  0.14D-01   132.03
    1     2     2     1.00000000     0.00000000  -242.07579883     0.00000000    -0.26551363  0.14D-01  0.14D-01   132.03
    1     3     3     1.00000000     0.00000000  -242.07579883     0.00000000    -0.26551415  0.14D-01  0.14D-01   132.03
    2     1     1     1.02447736    -0.25203767  -242.32783651    -0.25203767    -0.00278190  0.27D-03  0.19D-03   298.91
    2     2     2     1.02447733    -0.25203767  -242.32783650    -0.25203767    -0.00278190  0.27D-03  0.19D-03   298.91
    2     3     3     1.02450660    -0.25203173  -242.32783056    -0.25203173    -0.00278613  0.27D-03  0.19D-03   298.91
    3     1     1     1.02416028    -0.25531463  -242.33111346    -0.00327695    -0.00035798  0.78D-05  0.48D-04   466.16
    3     2     2     1.02415995    -0.25531430  -242.33111313    -0.00327663    -0.00035745  0.78D-05  0.48D-04   466.16
    3     3     3     1.02415993    -0.25531430  -242.33111313    -0.00328257    -0.00035745  0.78D-05  0.48D-04   466.16
    4     1     1     1.02526469    -0.25599134  -242.33179018    -0.00067672    -0.00021708  0.69D-05  0.25D-04   633.31
    4     2     2     1.02526466    -0.25599134  -242.33179017    -0.00067704    -0.00021708  0.69D-05  0.25D-04   633.31
    4     3     3     1.02525632    -0.25599000  -242.33178883    -0.00067570    -0.00021733  0.68D-05  0.25D-04   633.31
    5     1     1     1.02574871    -0.25633436  -242.33213320    -0.00034302    -0.00009159  0.32D-05  0.85D-05   800.72
    5     2     2     1.02574872    -0.25633437  -242.33213320    -0.00034302    -0.00009159  0.32D-05  0.85D-05   800.72
    5     3     3     1.02574983    -0.25633397  -242.33213280    -0.00034397    -0.00009177  0.32D-05  0.85D-05   800.72
    6     1     1     1.02573909    -0.25644709  -242.33224593    -0.00011273    -0.00002634  0.70D-06  0.32D-05   967.28
    6     2     2     1.02573910    -0.25644710  -242.33224593    -0.00011273    -0.00002634  0.70D-06  0.32D-05   967.28
    6     3     3     1.02573845    -0.25644694  -242.33224577    -0.00011297    -0.00002639  0.70D-06  0.32D-05   967.28
    7     1     1     1.02606853    -0.25648805  -242.33228688    -0.00004096    -0.00001618  0.48D-06  0.19D-05  1133.97
    7     2     2     1.02606851    -0.25648806  -242.33228688    -0.00004096    -0.00001618  0.48D-06  0.19D-05  1133.97
    7     3     3     1.02606735    -0.25648793  -242.33228676    -0.00004099    -0.00001622  0.48D-06  0.19D-05  1133.97
    8     1     1     1.02624118    -0.25651161  -242.33231044    -0.00002356    -0.00000957  0.14D-06  0.11D-05  1301.14
    8     2     2     1.02624117    -0.25651161  -242.33231044    -0.00002356    -0.00000957  0.14D-06  0.11D-05  1301.14
    8     3     3     1.02624122    -0.25651155  -242.33231038    -0.00002362    -0.00000959  0.15D-06  0.11D-05  1301.14
    9     1     1     1.02627199    -0.25652263  -242.33232147    -0.00001103    -0.00000363  0.70D-07  0.47D-06  1467.93
    9     2     2     1.02627199    -0.25652264  -242.33232147    -0.00001103    -0.00000363  0.70D-07  0.47D-06  1467.93
    9     3     3     1.02627142    -0.25652261  -242.33232143    -0.00001106    -0.00000363  0.71D-07  0.47D-06  1467.93
   10     1     1     1.02636644    -0.25652751  -242.33232635    -0.00000488    -0.00000218  0.39D-07  0.28D-06  1634.63
   10     2     2     1.02636643    -0.25652752  -242.33232635    -0.00000488    -0.00000218  0.39D-07  0.28D-06  1634.63
   10     3     3     1.02636606    -0.25652749  -242.33232632    -0.00000489    -0.00000218  0.39D-07  0.28D-06  1634.63
   11     1     1     1.02643002    -0.25653057  -242.33232941    -0.00000306    -0.00000144  0.17D-07  0.17D-06  1800.74
   11     2     2     1.02643003    -0.25653058  -242.33232941    -0.00000306    -0.00000144  0.17D-07  0.17D-06  1800.74
   11     3     3     1.02643009    -0.25653056  -242.33232939    -0.00000307    -0.00000145  0.17D-07  0.17D-06  1800.74
   12     1     1     1.02645102    -0.25653217  -242.33233100    -0.00000160    -0.00000060  0.85D-08  0.82D-07  1967.60
   12     2     2     1.02645102    -0.25653217  -242.33233100    -0.00000160    -0.00000060  0.85D-08  0.82D-07  1967.60
   12     3     3     1.02645085    -0.25653216  -242.33233099    -0.00000160    -0.00000060  0.85D-08  0.82D-07  1967.60
   13     1     1     1.02648536    -0.25653293  -242.33233176    -0.00000076    -0.00000037  0.38D-08  0.50D-07  2133.39
   13     2     2     1.02648536    -0.25653294  -242.33233176    -0.00000076    -0.00000037  0.38D-08  0.50D-07  2133.39
   13     3     3     1.02648518    -0.25653293  -242.33233175    -0.00000076    -0.00000037  0.37D-08  0.50D-07  2133.39
   14     1     1     1.02650992    -0.25653342  -242.33233225    -0.00000049    -0.00000026  0.27D-08  0.33D-07  2299.50
   14     2     2     1.02650992    -0.25653342  -242.33233225    -0.00000049    -0.00000026  0.27D-08  0.33D-07  2299.50
   14     3     3     1.02650991    -0.25653342  -242.33233224    -0.00000049    -0.00000026  0.28D-08  0.33D-07  2299.50
   15     1     1     1.02651861    -0.25653369  -242.33233253    -0.00000028    -0.00000011  0.11D-08  0.15D-07  2465.02
   15     2     2     1.02651861    -0.25653370  -242.33233253    -0.00000028    -0.00000011  0.11D-08  0.15D-07  2465.02
   15     3     3     1.02651857    -0.25653369  -242.33233252    -0.00000028    -0.00000011  0.11D-08  0.15D-07  2465.02
   16     1     1     1.02653163    -0.25653383  -242.33233267    -0.00000014    -0.00000007  0.33D-09  0.98D-08  2631.83
   16     2     2     1.02653163    -0.25653384  -242.33233267    -0.00000014    -0.00000007  0.33D-09  0.98D-08  2631.83
   16     3     3     1.02653157    -0.25653383  -242.33233266    -0.00000014    -0.00000007  0.33D-09  0.98D-08  2631.83
   17     1     1     1.02654257    -0.25653392  -242.33233275    -0.00000009    -0.00000005  0.46D-09  0.66D-08  2798.98
   17     2     2     1.02654257    -0.25653393  -242.33233275    -0.00000009    -0.00000005  0.46D-09  0.66D-08  2798.98
   17     3     3     1.02654255    -0.25653392  -242.33233275    -0.00000009    -0.00000005  0.47D-09  0.66D-08  2798.98


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   1.3%   4.5%
 P   1.6%  35.8%  50.7%

 Initialization:   4.5%
 Other:            0.8%

 Total CPU:     2799.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222/00000          -0.0001313   0.0000014   0.9848679
 2//22200/000           0.0110766   0.9848057   0.0000000
 2//2220/0000           0.9848057  -0.0110766   0.0001313

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000132    0.986885    0.011100
 2           0.000001   -0.011100    0.986885
 3           0.986948    0.000132    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.986948   -0.000000   -0.000000
 2          -0.000000    0.986948    0.000000
 3          -0.000000    0.000000    0.986948


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98688531 (fixed)   0.98696925 (relaxed)   0.98694774 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007995   -0.00023922   -0.22173120
 Singles      0.01097448   -0.02633339   -0.02839176
 Pairs        0.01557021   -0.00258632   -0.00641096
 Total        1.02662465   -0.02915893   -0.25653392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.07579883
 Nuclear energy                         0.00000000
 Kinetic energy                       245.00655649
 One electron energy                 -334.46167487
 Two electron energy                   92.12934212
 Virial quotient                       -0.98908509
 Correlation energy                    -0.25653393
 !MRCI STATE 1.2 Energy              -242.332332754473

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.33916288 (Davidson, fixed reference)
 Cluster corrected energies          -242.33915140 (Davidson, relaxed reference)
 Cluster corrected energies          -242.33916288 (Davidson, rotated reference)

 Cluster corrected energies          -242.33752375 (Pople, fixed reference)
 Cluster corrected energies          -242.33751491 (Pople, relaxed reference)
 Cluster corrected energies          -242.33752375 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98688532 (fixed)   0.98696925 (relaxed)   0.98694774 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007995   -0.00023922   -0.00026716
 Singles      0.01097448   -0.02633339   -0.02839176
 Pairs        0.01557021   -0.22994677   -0.22787501
 Total        1.02662465   -0.25651938   -0.25653393
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.07579883
 Nuclear energy                         0.00000000
 Kinetic energy                       245.00655646
 One electron energy                 -334.46167487
 Two electron energy                   92.12934212
 Virial quotient                       -0.98908509
 Correlation energy                    -0.25653393
 !MRCI STATE 2.2 Energy              -242.332332754396

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.33916288 (Davidson, fixed reference)
 Cluster corrected energies          -242.33915140 (Davidson, relaxed reference)
 Cluster corrected energies          -242.33916288 (Davidson, rotated reference)

 Cluster corrected energies          -242.33752375 (Pople, fixed reference)
 Cluster corrected energies          -242.33751491 (Pople, relaxed reference)
 Cluster corrected energies          -242.33752375 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98694775 (fixed)   0.98696926 (relaxed)   0.98694776 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007994   -0.00023922   -0.22425044
 Singles      0.01097449   -0.02633339   -0.02839174
 Pairs        0.01557019   -0.00000001   -0.00389173
 Total        1.02662461   -0.02657262   -0.25653392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -242.07579883
 Nuclear energy                         0.00000000
 Kinetic energy                       245.00655364
 One electron energy                 -334.46167238
 Two electron energy                   92.12933963
 Virial quotient                       -0.98908510
 Correlation energy                    -0.25653391
 !MRCI STATE 3.2 Energy              -242.332332747053

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -242.33916286 (Davidson, fixed reference)
 Cluster corrected energies          -242.33915139 (Davidson, relaxed reference)
 Cluster corrected energies          -242.33916286 (Davidson, rotated reference)

 Cluster corrected energies          -242.33752374 (Pople, fixed reference)
 Cluster corrected energies          -242.33751490 (Pople, relaxed reference)
 Cluster corrected energies          -242.33752374 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1026.68       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11330.50   2850.83   8470.89      7.09      0.04      1.26
 REAL TIME  *     11508.91 SEC
 DISK USED  *         1.03 GB (local),       31.13 GB (total)
 SF USED    *         7.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =      -242.33916288  AU                              
 SETTING HLSDIAG(8)     =      -242.33916288  AU                              
 SETTING HLSDIAG(9)     =      -242.33916286  AU                              


         HLSDIAG
    -242.6210038
    -242.6210038
    -242.6210038
    -242.4715768
    -242.4715768
    -242.4715767
    -242.3391629
    -242.3391629
    -242.3391629
                                                  


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

 Time for Seward_LS:       0.71 sec

 CPU time:      0.72 sec, REAL time:      0.76 sec


 SORTLS1 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.02 sec, REAL time:      0.08 sec
 SORTLS2 read     2507927. and wrote     2507927. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    33.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    33.4 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -242.608340   -242.608340   -242.608340   -242.464974   -242.464973   -242.464973
 Replaced energies:   -242.621004   -242.621004   -242.621004   -242.471577   -242.471577   -242.471577

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   3

 Original energies:   -242.332333   -242.332333   -242.332333
 Replaced energies:   -242.339163   -242.339163   -242.339163

 >>> Fock matrix approximation error in all internal so: 
  0.11326225255670527       (exact)    5.0294655357970619E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.8715835199081665E-003  (exact)    2.6070948559680997E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1205827828170434E-004  (exact)    9.4120042298307326E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.43864770586635171       (exact)    7.1896229678011431E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9094769456759272E-004  (exact)    8.0286489191340048E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.4304914773109486E-005  (exact)   -1.5512499234465132E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2739193064939495E-003  (exact)   -5.6569372070840911E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6034150554376147E-005  (exact)   -2.9317456829975995E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.3763535378746438E-006  (exact)   -1.0520261181510949E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.9336820361720463E-003  (exact)   -8.0865085436961320E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.5027998157971198E-006  (exact)   -9.0237423086881857E-007  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0590653880055605E-006  (exact)    1.7663265762662822E-007  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1660761910708942E-003  (exact)    9.5784293773868454E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.7926797595069048E-002  (exact)   -1.6771034278549209E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.10687922017691763       (exact)   -4.7258224630340344E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9068555645927041E-004  (exact)    7.9259604455774965E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.43859188748137123       (exact)   -7.0702342212914146E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.5803414931383845E-004  (exact)   -4.1614529958727196E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2731526068086852E-003  (exact)    5.6533118738560624E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.0207538947588665E-005  (exact)    3.5572292602064815E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8183915616546453E-006  (exact)   -1.2262527760624916E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9336803512156540E-003  (exact)    8.0866705955334815E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.8353599946903596E-006  (exact)    7.8624537939717328E-007  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.7380072124588233E-005  (exact)    9.1706648799836741E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.11326018804323686       (exact)    5.0292440136783439E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.8662504703696416E-003  (exact)    2.6046683588739146E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.9785635727731301E-004  (exact)    8.7833281402379274E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.43864689260090767       (exact)    7.1897085056131835E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.3249516164916836E-004  (exact)    7.0861545801945603E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.5005709016990209E-005  (exact)   -1.5596369006466216E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4618996368783366E-003  (exact)    2.4099141474218477E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.10674705652328650       (exact)   -4.7095665865554664E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.7992758307429132E-002  (exact)    1.6762188800643174E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.4447775089662170E-005  (exact)   -1.5143348284283563E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.5801796433315601E-004  (exact)    4.1246845679910124E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.43851164264193387       (exact)   -7.0098110657880491E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.2785762814486787E-003  (exact)   -2.7702288394088333E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.12276176941486894       (exact)    5.4160913770400609E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.5255878154254435E-002  (exact)   -1.9969449101453401E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1465936219645313E-004  (exact)    1.8423934833490433E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9938289788254231E-003  (exact)   -9.7355715367664400E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.50631681527384909       (exact)    8.0934212341978978E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.5544914628268167E-003  (exact)    1.1317314329418130E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.5177938396218642E-002  (exact)   -2.0015301534994798E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.12291068929605038       (exact)   -5.4457822728428307E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9783981314923385E-004  (exact)    8.0920721910626768E-005  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.50641425753643943       (exact)   -8.2322394041990862E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.9927473377066730E-003  (exact)   -9.5876457910624004E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.6438822387388119E-005  (exact)    7.2594815306726706E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.8637785729102558E-006  (exact)   -2.5940622790570967E-006  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.7486884655200356E-005  (exact)    1.0790801627455227E-005  (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -242.62100382

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00     -37.59      13.34       0.83
                            0.00      -0.07       2.06       0.00      -0.83       0.33      -0.00      13.36      37.54      -0.31

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      37.59      -0.00       0.76     -16.16
                            0.07      -0.00     -39.84      -0.02      16.16      -5.73     -13.36       0.00       1.92       5.74

    3   3.2  0.5  0.5       0.00       0.00       0.01       0.00       0.00       0.00     -13.34      -0.76       0.00       5.75
                           -2.06      39.84       0.00       0.00      -5.74     -16.18     -37.54      -1.92       0.00      16.18

    4   4.2  0.5  0.5       0.00       0.00       0.00   32795.43       0.00       0.00      -0.83      16.16      -5.75      -0.00
                           -0.00       0.02      -0.00       0.00      -0.00      -0.01       0.31      -5.74     -16.18       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   32795.45       0.00       0.01       0.02      -0.01      -0.00
                            0.83     -16.16       5.74       0.00      -0.00       7.32      17.15       0.88       0.01      -7.32

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   32795.46     -17.15      -0.89      -0.03       7.32
                           -0.33       5.73      16.18       0.01      -7.32      -0.00       0.01       0.00       0.00      -0.00

    7   1.2  0.5 -0.5       0.00      37.59     -13.34      -0.83       0.01     -17.15       0.01       0.00       0.00       0.00
                            0.00      13.36      37.54      -0.31     -17.15      -0.01      -0.00       0.07      -2.06      -0.00

    8   2.2  0.5 -0.5     -37.59      -0.00      -0.76      16.16       0.02      -0.89       0.00       0.00       0.00       0.00
                          -13.36      -0.00       1.92       5.74      -0.88      -0.00      -0.07       0.00      39.84       0.02

    9   3.2  0.5 -0.5      13.34       0.76       0.00      -5.75      -0.01      -0.03       0.00       0.00       0.01       0.00
                          -37.54      -1.92      -0.00      16.18      -0.01      -0.00       2.06     -39.84      -0.00      -0.00

   10   4.2  0.5 -0.5       0.83     -16.16       5.75      -0.00      -0.00       7.32       0.00       0.00       0.00   32795.43
                            0.31      -5.74     -16.18      -0.00       7.32       0.00       0.00      -0.02       0.00      -0.00

   11   5.2  0.5 -0.5      -0.01      -0.02       0.01       0.00      -0.00       0.01       0.00       0.00       0.00       0.00
                           17.15       0.88       0.01      -7.32      -0.00       0.00      -0.83      16.16      -5.74      -0.00

   12   6.2  0.5 -0.5      17.15       0.89       0.03      -7.32      -0.01       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00      -0.00      -0.00       0.00       0.33      -5.73     -16.18      -0.01

   13   1.2  1.5  1.5      -0.03      -0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                            2.48       0.13       0.00      -2.58      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   14   2.2  1.5  1.5      -2.43      -0.13      -0.00       2.93       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.00      -0.00       0.03       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   15   3.2  1.5  1.5      -0.12       2.31      -0.82      -0.00       0.00      -2.82       0.00       0.00       0.00       0.00
                            0.05      -0.82      -2.32      -0.00       2.65       0.00      -0.00      -0.00      -0.00      -0.00

   16   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.02      -0.00       0.00       0.02
                           -0.14       2.65      -0.98      -0.00       0.04      -3.30       1.43       0.07       0.00      -1.49

   17   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -1.40      -0.07      -0.00       1.69
                            0.05      -0.97      -2.63      -0.00       3.49       0.04      -0.02      -0.00      -0.00       0.02

   18   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.07       1.33      -0.47      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.03      -0.47      -1.34      -0.00

   19   1.2  1.5 -0.5      -0.02      -0.00       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.43      -0.07      -0.00       1.49       0.00      -0.00      -0.14       2.65      -0.98      -0.00

   20   2.2  1.5 -0.5      -1.40      -0.07      -0.00       1.69       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.02       0.00       0.00      -0.02      -0.00       0.00       0.05      -0.97      -2.63      -0.00

   21   3.2  1.5 -0.5      -0.07       1.33      -0.47      -0.00       0.00      -1.63       0.00       0.00       0.00       0.00
                           -0.03       0.47       1.34       0.00      -1.53      -0.00      -0.00       0.00      -0.00      -0.00

   22   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.00       0.00       0.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.48      -0.13      -0.00       2.58

   23   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -2.43      -0.13      -0.00       2.93
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.03       0.00       0.00      -0.03

   24   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.12       2.31      -0.82      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.05       0.82       2.32       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      -0.01      17.15      -0.03      -2.43      -0.12       0.00       0.00       0.00      -0.02      -1.40
                          -17.15      -0.01      -2.48       0.03      -0.05       0.14      -0.05       0.00       1.43      -0.02

    2   2.2  0.5  0.5      -0.02       0.89      -0.00      -0.13       2.31       0.00       0.00       0.00      -0.00      -0.07
                           -0.88      -0.00      -0.13       0.00       0.82      -2.65       0.97      -0.00       0.07      -0.00

    3   3.2  0.5  0.5       0.01       0.03       0.00      -0.00      -0.82       0.00       0.00       0.00       0.00      -0.00
                           -0.01      -0.00      -0.00       0.00       2.32       0.98       2.63       0.00       0.00      -0.00

    4   4.2  0.5  0.5       0.00      -7.32       0.03       2.93      -0.00       0.00       0.00       0.00       0.02       1.69
                            7.32       0.00       2.58      -0.03       0.00       0.00       0.00       0.00      -1.49       0.02

    5   5.2  0.5  0.5      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -2.65      -0.04      -3.49       0.00      -0.00       0.00

    6   6.2  0.5  0.5       0.01       0.00       0.00      -0.00      -2.82       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       3.30      -0.04       0.00       0.00      -0.00

    7   1.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.02      -1.40      -0.07       0.00       0.00
                            0.83      -0.33       0.00       0.00       0.00      -1.43       0.02      -0.03       0.14      -0.05

    8   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.07       1.33       0.00       0.00
                          -16.16       5.73       0.00       0.00       0.00      -0.07       0.00       0.47      -2.65       0.97

    9   3.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.47       0.00       0.00
                            5.74      16.18       0.00       0.00       0.00      -0.00       0.00       1.34       0.98       2.63

   10   4.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.02       1.69      -0.00       0.00       0.00
                            0.00       0.01       0.00       0.00       0.00       1.49      -0.02       0.00       0.00       0.00

   11   5.2  0.5 -0.5   32795.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -7.32       0.00       0.00       0.00       0.00      -0.00      -1.53      -0.04      -3.49

   12   6.2  0.5 -0.5       0.00   32795.46       0.00       0.00       0.00       0.00      -0.00      -1.63       0.00       0.00
                            7.32       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       3.30      -0.04

   13   1.2  1.5  1.5       0.00       0.00   61856.94       0.00       0.00      -0.00       0.00       0.36       0.00       0.00
                           -0.00      -0.00      -0.00      55.98      -0.00      -0.00       0.00     -32.32       0.00       0.00

   14   2.2  1.5  1.5       0.00       0.00       0.00   61856.94       0.00      -0.00      -0.00      32.32       0.00       0.00
                           -0.00      -0.00     -55.98      -0.00      -0.01      -0.00      -0.00       0.36       0.00       0.00

   15   3.2  1.5  1.5       0.00       0.00       0.00       0.00   61856.94      -0.36     -32.32      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.01       0.00      32.32      -0.36       0.00       0.00       0.00

   16   1.2  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.36   61856.94       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00     -32.32      -0.00      18.66      -0.00      -0.00       0.00

   17   2.2  1.5  0.5       0.00      -0.00       0.00      -0.00     -32.32       0.00   61856.94       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.36     -18.66      -0.00      -0.00      -0.00      -0.00

   18   3.2  1.5  0.5       0.00      -1.63       0.36      32.32      -0.00       0.00       0.00   61856.94      -0.42     -37.32
                            1.53       0.00      32.32      -0.36      -0.00       0.00       0.00       0.00      37.32      -0.42

   19   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.42   61856.94       0.00
                            0.04      -3.30      -0.00      -0.00      -0.00       0.00       0.00     -37.32       0.00     -18.66

   20   2.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -37.32       0.00   61856.94
                            3.49       0.04      -0.00      -0.00      -0.00      -0.00       0.00       0.42      18.66       0.00

   21   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.42      37.32      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      37.32      -0.42      -0.00      -0.00      -0.00

   22   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   23   2.2  1.5 -1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   24   3.2  1.5 -1.5       0.00      -2.82       0.00       0.00       0.00       0.00       0.00       0.00       0.36      32.32
                           -2.65      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      32.32      -0.36


   Nr   State  S   Sz       21         22         23         24

    1   1.2  0.5  0.5      -0.07       0.00       0.00       0.00
                            0.03       0.00       0.00       0.00

    2   2.2  0.5  0.5       1.33       0.00       0.00       0.00
                           -0.47       0.00       0.00       0.00

    3   3.2  0.5  0.5      -0.47       0.00       0.00       0.00
                           -1.34       0.00       0.00       0.00

    4   4.2  0.5  0.5      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00
                            1.53       0.00       0.00       0.00

    6   6.2  0.5  0.5      -1.63       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   1.2  0.5 -0.5       0.00      -0.03      -2.43      -0.12
                            0.00       2.48      -0.03       0.05

    8   2.2  0.5 -0.5       0.00      -0.00      -0.13       2.31
                           -0.00       0.13      -0.00      -0.82

    9   3.2  0.5 -0.5       0.00       0.00      -0.00      -0.82
                            0.00       0.00      -0.00      -2.32

   10   4.2  0.5 -0.5       0.00       0.03       2.93      -0.00
                            0.00      -2.58       0.03      -0.00

   11   5.2  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       2.65

   12   6.2  0.5 -0.5       0.00       0.00      -0.00      -2.82
                            0.00       0.00      -0.00       0.00

   13   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14   2.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15   3.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16   1.2  1.5  0.5       0.42       0.00       0.00       0.00
                          -37.32       0.00       0.00       0.00

   17   2.2  1.5  0.5      37.32       0.00       0.00       0.00
                            0.42       0.00       0.00       0.00

   18   3.2  1.5  0.5      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   19   1.2  1.5 -0.5       0.00      -0.00       0.00       0.36
                            0.00      -0.00       0.00     -32.32

   20   2.2  1.5 -0.5       0.00      -0.00      -0.00      32.32
                            0.00      -0.00      -0.00       0.36

   21   3.2  1.5 -0.5   61856.94      -0.36     -32.32      -0.00
                           -0.00      32.32      -0.36       0.00

   22   1.2  1.5 -1.5      -0.36   61856.94       0.00       0.00
                          -32.32       0.00     -55.98       0.00

   23   2.2  1.5 -1.5     -32.32       0.00   61856.94       0.00
                            0.36      55.98       0.00       0.01

   24   3.2  1.5 -1.5      -0.00       0.00       0.00   61856.94
                           -0.00      -0.00      -0.01      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -242.62136749    -0.00036367      -79.82      0.00000000        0.00      0.0000
     2  -242.62136749    -0.00036367      -79.82      0.00000000        0.00      0.0000
     3  -242.62082208     0.00018174       39.89      0.00054541      119.70      0.0148
     4  -242.62082208     0.00018174       39.89      0.00054541      119.70      0.0148
     5  -242.62082204     0.00018178       39.90      0.00054544      119.71      0.0148
     6  -242.62082204     0.00018178       39.90      0.00054544      119.71      0.0148
     7  -242.47164331     0.14936051    32780.84      0.14972418    32860.66      4.0742
     8  -242.47164331     0.14936051    32780.84      0.14972418    32860.66      4.0742
     9  -242.47154342     0.14946040    32802.77      0.14982407    32882.58      4.0769
    10  -242.47154342     0.14946040    32802.77      0.14982407    32882.58      4.0769
    11  -242.47154335     0.14946047    32802.78      0.14982414    32882.60      4.0769
    12  -242.47154335     0.14946047    32802.78      0.14982414    32882.60      4.0769
    13  -242.33958798     0.28141584    61763.64      0.28177951    61843.45      7.6676
    14  -242.33958798     0.28141584    61763.64      0.28177951    61843.45      7.6676
    15  -242.33933292     0.28167090    61819.62      0.28203457    61899.43      7.6746
    16  -242.33933292     0.28167090    61819.62      0.28203457    61899.43      7.6746
    17  -242.33933291     0.28167091    61819.62      0.28203458    61899.44      7.6746
    18  -242.33933291     0.28167091    61819.62      0.28203458    61899.44      7.6746
    19  -242.33890782     0.28209600    61912.92      0.28245967    61992.73      7.6861
    20  -242.33890782     0.28209600    61912.92      0.28245967    61992.73      7.6861
    21  -242.33890781     0.28209601    61912.92      0.28245968    61992.73      7.6861
    22  -242.33890781     0.28209601    61912.92      0.28245968    61992.73      7.6861
    23  -242.33890781     0.28209601    61912.92      0.28245968    61992.73      7.6861
    24  -242.33890781     0.28209601    61912.92      0.28245968    61992.73      7.6861


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.543654376   0.194270338  -0.284608068  -0.002385631   0.764818212  -0.027277536  -0.000007498   0.000603085
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.048108193  -0.134627131   0.008334968   0.035941889   0.004484619   0.035639081  -0.000593782  -0.000007423
                        -0.189187955   0.526439631  -0.008138533   0.803402724   0.005079293   0.135758243   0.000107716   0.000000287

    3    3.2  0.5  0.5  -0.187972085   0.526028685   0.000533387  -0.521322700   0.020936068   0.627039306   0.000107603   0.000001344
                        -0.019938096   0.144537267  -0.017921817  -0.003159010  -0.029526883  -0.008599889   0.000592432   0.000038596

    4    4.2  0.5  0.5  -0.000569873  -0.000195914  -0.000148692  -0.000000479   0.000400392  -0.000013067  -0.036443000   0.576546226
                         0.000010216  -0.000028496  -0.000000227   0.000021724   0.000000126   0.000003669   0.005745336   0.000041659

    5    5.2  0.5  0.5   0.000178544  -0.000467457   0.000004399  -0.000251135   0.000003931   0.000316199  -0.092545347  -0.011519336
                         0.000085641  -0.000326017  -0.000010274   0.000139025  -0.000013695   0.000019511   0.568695114   0.034899029

    6    6.2  0.5  0.5  -0.000085505   0.000326020   0.000011231   0.000109122  -0.000020845  -0.000091605  -0.568317324  -0.035000700
                         0.000179089  -0.000467220  -0.000000874   0.000396834   0.000007680   0.000068487  -0.092451551  -0.012079380

    7    1.2  0.5 -0.5  -0.108364745   0.303252511   0.000484165  -0.057761337  -0.007592244  -0.212874296   0.000595190   0.000007400
                         0.161239097  -0.451218345  -0.002335983   0.278685093   0.026199653   0.734596100   0.000097263   0.000001209

    8    2.2  0.5 -0.5   0.512026109   0.183855793   0.779388693   0.009660748  -0.120474161   0.003630364  -0.000007279   0.000568637
                         0.181913203   0.065601281   0.198244849  -0.006509790  -0.072016813   0.005721143  -0.000001480   0.000202069

    9    3.2  0.5 -0.5  -0.173458833  -0.088303477   0.102709411   0.017657097   0.182785913  -0.034187319   0.000007551  -0.000201740
                         0.517212947   0.167133265  -0.511114581   0.003114954  -0.599867950   0.011890458  -0.000037874   0.000567323

   10    4.2  0.5 -0.5   0.000085631  -0.000326356   0.000021369  -0.000029954  -0.000007161  -0.000111322   0.569005573   0.035039352
                        -0.000178499   0.000467280   0.000003940   0.000145643   0.000011530   0.000384605   0.092941977   0.011547508

   11    5.2  0.5 -0.5  -0.000009836   0.000028513   0.000187100   0.000010953   0.000069269  -0.000014248  -0.005740164  -0.000383028
                        -0.000569831  -0.000195958  -0.000217693  -0.000002222  -0.000309135  -0.000000036  -0.036299970   0.576175865

   12    6.2  0.5 -0.5  -0.000569635  -0.000196334   0.000366429   0.000003136  -0.000091278   0.000013178  -0.036490632   0.575787893
                         0.000009971  -0.000028930   0.000187389  -0.000010820   0.000068922  -0.000017884   0.006276479   0.000414667

   13    1.2  1.5  1.5  -0.000000152   0.000001186  -0.000000144   0.000001667   0.000000346   0.000000269  -0.000000522  -0.000000658
                        -0.000021909  -0.000007543   0.000011398   0.000000083  -0.000030687   0.000000976  -0.000003255   0.000051277

   14    2.2  1.5  1.5   0.000021495   0.000007399  -0.000011179  -0.000000076   0.000030099  -0.000000960   0.000003694  -0.000058204
                        -0.000000140   0.000001167  -0.000000146   0.000001634   0.000000353   0.000000265  -0.000000604  -0.000000582

   15    3.2  1.5  1.5   0.000000002  -0.000000016  -0.000000068  -0.000018839   0.000002609   0.000005470  -0.000003224  -0.000000207
                        -0.000000011   0.000000017   0.000000413  -0.000049113  -0.000000321   0.000018797  -0.000000526  -0.000000060

   16    1.2  1.5  0.5  -0.000003849   0.000010025   0.000000108   0.000040942   0.000001174   0.000022923   0.000006207   0.000000771
                        -0.000001898   0.000007166  -0.000001919  -0.000008388   0.000002131   0.000013433  -0.000035460  -0.000002178

   17    2.2  1.5  0.5   0.000001900  -0.000007182   0.000001819  -0.000013811   0.000000865  -0.000006782   0.000035219   0.000002155
                        -0.000003860   0.000010041   0.000000576  -0.000015321   0.000000766   0.000043912   0.000006174   0.000000778

   18    3.2  1.5  0.5  -0.000025028  -0.000008630  -0.000006493  -0.000000027   0.000017532  -0.000000553  -0.000003967   0.000062684
                         0.000000448  -0.000001261  -0.000000000   0.000000951   0.000000011   0.000000160   0.000000683  -0.000000000

   19    1.2  1.5 -0.5  -0.000000356   0.000000571   0.000016523  -0.000001901   0.000006522  -0.000001719  -0.000000410   0.000000407
                        -0.000012317  -0.000004253  -0.000038388  -0.000000284   0.000025756  -0.000001721  -0.000002273   0.000035997

   20    2.2  1.5 -0.5  -0.000012340  -0.000004264   0.000012200   0.000000194   0.000044065  -0.000000495  -0.000002252   0.000035754
                         0.000000360  -0.000000576   0.000016633   0.000001898   0.000005708  -0.000001044   0.000000420  -0.000000413

   21    3.2  1.5 -0.5  -0.000003768   0.000014332  -0.000000937   0.000001318   0.000000308   0.000004869  -0.000061863  -0.000003805
                         0.000007866  -0.000020523  -0.000000167  -0.000006358  -0.000000486  -0.000016843  -0.000010110  -0.000001314

   22    1.2  1.5 -1.5  -0.000006922   0.000018099  -0.000000257  -0.000011190  -0.000000863  -0.000029571   0.000007621   0.000001040
                        -0.000003223   0.000012348   0.000001650  -0.000002172  -0.000000531  -0.000008209  -0.000050712  -0.000003128

   23    2.2  1.5 -1.5  -0.000003159   0.000012107   0.000001615  -0.000002126  -0.000000522  -0.000008038  -0.000057536  -0.000003548
                         0.000006792  -0.000017762   0.000000258   0.000010976   0.000000848   0.000029008  -0.000008813  -0.000001192

   24    3.2  1.5 -1.5   0.000000023   0.000000011  -0.000044268  -0.000000418  -0.000016532  -0.000001034  -0.000000214   0.000003267
                        -0.000000004   0.000000004  -0.000028414  -0.000000017  -0.000010486   0.000002417   0.000000025   0.000000001


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000412682  -0.000009215   0.000113643   0.000000000   0.000026471   0.000000284   0.000000035  -0.000059318
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000015704  -0.000132666  -0.000067588  -0.000393031  -0.000000272   0.000026218   0.000009536  -0.000002292
                        -0.000001382   0.000058996   0.000001172   0.000050003  -0.000000016  -0.000002985  -0.000028238   0.000000015

    3    3.2  0.5  0.5   0.000004442  -0.000065162   0.000010816   0.000022227   0.000000035  -0.000003029  -0.000027802  -0.000000112
                        -0.000010436   0.000280233  -0.000056882  -0.000310317   0.000001634  -0.000026085  -0.000008917  -0.000000765

    4    4.2  0.5  0.5   0.787354671   0.030691628  -0.209328616   0.038555029  -0.000063211  -0.000003891  -0.000001201   0.000141487
                         0.000150724  -0.006201005  -0.000034684  -0.004470390  -0.000000008   0.000000416   0.000003470   0.000000001

    5    5.2  0.5  0.5  -0.012132638   0.201614008   0.027476709   0.210224748   0.000001321  -0.000014606   0.000059406  -0.000000503
                         0.019668457  -0.542137352   0.101444821   0.525675170  -0.000003799   0.000063462   0.000045999   0.000001848

    6    6.2  0.5  0.5  -0.007080304   0.196443517   0.138896944   0.720668130   0.000003814  -0.000063503  -0.000045247  -0.000001824
                        -0.004189795   0.073068174  -0.038430072  -0.288041861   0.000001388  -0.000014608   0.000058472  -0.000000669

    7    1.2  0.5 -0.5   0.000008635  -0.000386688  -0.000000000  -0.000105552   0.000000276  -0.000025793   0.000036342   0.000000022
                         0.000003219  -0.000144149  -0.000000000   0.000042114   0.000000064  -0.000005956  -0.000046881  -0.000000028

    8    2.2  0.5 -0.5   0.000103702  -0.000015197  -0.000383577   0.000063210   0.000024875   0.000000269   0.000001416   0.000028160
                         0.000101620  -0.000004191   0.000099208  -0.000023959   0.000008807   0.000000046  -0.000001802   0.000009764

    9    3.2  0.5 -0.5  -0.000036827   0.000000517   0.000135643  -0.000031125  -0.000008820  -0.000000401  -0.000000536  -0.000009986
                         0.000285342   0.000011330   0.000279985  -0.000048824   0.000024735   0.000001584  -0.000000558   0.000027436

   10    4.2  0.5 -0.5  -0.026592408   0.737813067   0.037466534   0.194411407  -0.000003698   0.000061592  -0.000086685  -0.000003478
                        -0.016530949   0.274880482  -0.010135754  -0.077605898  -0.000001281   0.000014214   0.000111823  -0.000001177

   11    5.2  0.5 -0.5   0.000453046  -0.004498262   0.000450162   0.012073407   0.000000046  -0.000000432   0.000001769   0.000000042
                        -0.578412406  -0.022667482  -0.566152476   0.104404282  -0.000065121  -0.000003999   0.000000735  -0.000075133

   12    6.2  0.5 -0.5  -0.209592438  -0.008097815   0.776099511  -0.143248918  -0.000065161  -0.000004029   0.000000589  -0.000073935
                        -0.000151680   0.001452748   0.000465509   0.015779062  -0.000000053   0.000000494  -0.000001851  -0.000000064

   13    1.2  1.5  1.5  -0.000000904   0.000000571   0.000000227   0.000000289  -0.005645719   0.003464131   0.011063746   0.005031369
                         0.000070043   0.000002757  -0.000018617   0.000003457   0.499009945   0.030858127   0.003718695  -0.447020323

   14    2.2  1.5  1.5  -0.000079508  -0.000003129   0.000021135  -0.000003908  -0.499009905  -0.030858125  -0.003718264   0.447019943
                        -0.000000801   0.000000652   0.000000201   0.000000353  -0.005645722   0.003464131   0.011064054   0.005031387

   15    3.2  1.5  1.5   0.000001115  -0.000030484   0.000022757   0.000118008  -0.000000015   0.000000325   0.002417954   0.000084705
                         0.000000784  -0.000011305  -0.000006282  -0.000047272   0.000066518   0.000004065  -0.003185333   0.000065365

   16    1.2  1.5  0.5   0.000001408  -0.000023701   0.000005049   0.000037427   0.006258906  -0.067960368   0.406262959  -0.004825297
                        -0.000002139   0.000059812   0.000017715   0.000091849  -0.016770673   0.279988647   0.322214091   0.012674680

   17    2.2  1.5  0.5   0.000003900  -0.000108041   0.000009974   0.000051521   0.016771518  -0.279988197  -0.319465829  -0.012574889
                         0.000002583  -0.000040993  -0.000002921  -0.000021891   0.006335711  -0.067955674   0.402552392  -0.004647716

   18    3.2  1.5  0.5  -0.000042279  -0.000001662   0.000013645  -0.000002517   0.576225560   0.035574820  -0.002020185   0.258106772
                        -0.000000003   0.000000370  -0.000000001   0.000000274   0.000035991  -0.004362963   0.006454035   0.000003736

   19    1.2  1.5 -0.5  -0.000001316  -0.000000573  -0.000000725  -0.000001876   0.003225757   0.002325353  -0.012973584   0.005750656
                        -0.000064323  -0.000002496   0.000099179  -0.000018325   0.288100414   0.017748863  -0.003951846   0.518496328

   20    2.2  1.5 -0.5  -0.000115554  -0.000004556  -0.000055965   0.000010346   0.288098920   0.017766965  -0.004031043   0.513879946
                         0.000000672   0.000001058  -0.000001239  -0.000000983  -0.003221285  -0.002399998   0.012785923  -0.005851973

   21    3.2  1.5 -0.5  -0.000001428   0.000039617   0.000002439   0.000012674  -0.033681202   0.561460961   0.158132317   0.006338570
                        -0.000000928   0.000014766  -0.000000679  -0.000005055  -0.012254792   0.129605115  -0.203993324   0.002357593

   22    1.2  1.5 -1.5  -0.000001498   0.000023618  -0.000001013  -0.000007110   0.010317834  -0.106767106  -0.356378774   0.003839450
                         0.000002384  -0.000065947  -0.000003318  -0.000017207  -0.029287651   0.487487010  -0.269901191  -0.011022422

   23    2.2  1.5 -1.5   0.000002704  -0.000074779  -0.000003761  -0.000019556  -0.029287649   0.487486971  -0.269900944  -0.011022402
                         0.000001704  -0.000027021   0.000001120   0.000008019  -0.010317833   0.106767095   0.356378485  -0.003839979

   24    3.2  1.5 -1.5   0.000032513   0.000001319   0.000127124  -0.000023465   0.000001231  -0.000014951  -0.000000245   0.003998900
                         0.000000055  -0.000000346   0.000000174   0.000002598  -0.000003888   0.000064816   0.000106987   0.000040574


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000000013  -0.000002649  -0.000000001   0.000000541   0.000000240  -0.000000009   0.000000000  -0.000000005
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000001499   0.000051014  -0.000000001   0.000000027   0.000000012   0.000000075   0.000000003   0.000000071
                         0.000001153  -0.000001920   0.000000002  -0.000000000   0.000000003   0.000000079   0.000000030  -0.000000001

    3    3.2  0.5  0.5  -0.000001145   0.000002028   0.000000002   0.000000001  -0.000000003   0.000000082   0.000000043   0.000000157
                         0.000001506   0.000051208   0.000000002   0.000000000   0.000000007   0.000000267   0.000000062  -0.000000089

    4    4.2  0.5  0.5  -0.000003074   0.000000192  -0.000000011   0.000008497   0.000003807  -0.000000077  -0.000000006  -0.000000007
                        -0.000002302   0.000000129   0.000000002  -0.000000003   0.000000004   0.000000062   0.000000001   0.000000000

    5    5.2  0.5  0.5   0.000001408  -0.000046249   0.000000008   0.000000011  -0.000000085   0.000002832   0.000001157   0.000004734
                        -0.000004400  -0.000116050   0.000000012  -0.000000005   0.000000202   0.000007669   0.000001888  -0.000002302

    6    6.2  0.5  0.5  -0.000004409  -0.000116770   0.000000001  -0.000000004   0.000000022   0.000000922  -0.000000231   0.000000286
                        -0.000001430   0.000046540  -0.000000001   0.000000000   0.000000011  -0.000000333   0.000000143   0.000000578

    7    1.2  0.5 -0.5  -0.000002556  -0.000000012   0.000000446   0.000000001  -0.000000008  -0.000000226   0.000000005   0.000000000
                        -0.000000696  -0.000000003  -0.000000307  -0.000000000   0.000000003   0.000000083  -0.000000001   0.000000000

    8    2.2  0.5 -0.5   0.000048717  -0.000001750   0.000000022   0.000000002   0.000000044  -0.000000010  -0.000000068  -0.000000006
                         0.000015257   0.000000718  -0.000000015   0.000000001  -0.000000100   0.000000007   0.000000021  -0.000000030

    9    3.2  0.5 -0.5   0.000015412   0.000000709   0.000000001  -0.000000001  -0.000000016   0.000000005  -0.000000177   0.000000023
                        -0.000048876   0.000001754  -0.000000001   0.000000002  -0.000000279   0.000000005  -0.000000038  -0.000000072

   10    4.2  0.5 -0.5   0.000000219   0.000003570   0.000007003   0.000000010  -0.000000094  -0.000003571   0.000000007  -0.000000006
                        -0.000000074  -0.000001413  -0.000004812  -0.000000005  -0.000000032   0.000001319  -0.000000002   0.000000000

   11    5.2  0.5 -0.5  -0.000075116  -0.000000203   0.000000012   0.000000000   0.000000009   0.000000149  -0.000005205   0.000000543
                         0.000099821  -0.000004616  -0.000000002   0.000000014  -0.000008175   0.000000160  -0.000000789  -0.000002147

   12    6.2  0.5 -0.5  -0.000100439   0.000004630  -0.000000004  -0.000000001   0.000000980  -0.000000017  -0.000000101  -0.000000264
                        -0.000075586  -0.000000222   0.000000002  -0.000000000  -0.000000006   0.000000018   0.000000637  -0.000000068

   13    1.2  1.5  1.5  -0.001393461  -0.000053758  -0.000104884   0.008139593  -0.000051934   0.000023192   0.204616877  -0.022360991
                         0.001840697  -0.000073167  -0.000983038   0.706631303   0.001771996  -0.000066022   0.033322412   0.084393545

   14    2.2  1.5  1.5  -0.001841813   0.000112477  -0.000984431   0.707484164  -0.000830154  -0.000026454  -0.032919605  -0.083384093
                        -0.001389814   0.000041634   0.000104971  -0.008150790  -0.000063504  -0.000065971   0.202169929  -0.022091634

   15    3.2  1.5  1.5   0.027204538   0.718835809   0.000341415   0.000014695   0.015419650   0.593111165  -0.001326384   0.001387739
                         0.008758197  -0.287095317  -0.000234318  -0.000000213   0.006973881  -0.218946377   0.000712369   0.003066049

   16    1.2  1.5  0.5  -0.004889439   0.169484597   0.000190319  -0.000081539   0.005938191  -0.194546643   0.077751620   0.325429301
                         0.015626088   0.410650372   0.000329485  -0.000010703  -0.013375001  -0.509363550   0.130096760  -0.153611130

   17    2.2  1.5  0.5   0.015900288   0.415640713  -0.000916218  -0.000012804  -0.013465734  -0.513565573  -0.127860438   0.151152816
                         0.004869665  -0.171351957   0.000602541   0.000082444  -0.005839525   0.196194323   0.076485557   0.320127220

   18    3.2  1.5  0.5  -0.001072959   0.000086583  -0.000002330   0.001476511  -0.004510184   0.000093111  -0.106794810  -0.291410259
                        -0.000788278   0.000078531   0.000000300  -0.000036012  -0.000147458  -0.000006136   0.705852106  -0.073743105

   19    1.2  1.5 -0.5  -0.271426807  -0.000611949   0.000061120  -0.000029891   0.006642462   0.010192389   0.356399105  -0.035511606
                         0.351690553  -0.016361743  -0.000055024  -0.000379318  -0.545211421   0.010500858   0.049802536   0.147341130

   20    2.2  1.5 -0.5  -0.356014914   0.016621121   0.000057268  -0.001096364   0.549723953  -0.010620077   0.049033508   0.144829342
                        -0.274539753  -0.000520812   0.000060674   0.000022718   0.006737381   0.010131138  -0.350605649   0.034968451

   21    3.2  1.5 -0.5  -0.000104172  -0.001242378  -0.001236980  -0.000002088  -0.000089506  -0.004181674  -0.256260341   0.312019070
                         0.000053020   0.000478665   0.000807006   0.000001075   0.000026409   0.001696174   0.157126136   0.642087554

   22    1.2  1.5 -1.5  -0.000071098   0.000860864  -0.393712336  -0.000470627   0.000044570   0.000660771   0.046463520   0.185428856
                         0.000056467   0.002142151  -0.586842949  -0.000869410   0.000053951   0.001644993   0.073914992  -0.092707004

   23    2.2  1.5 -1.5   0.000119460   0.002142270   0.587552011   0.000870607  -0.000002038   0.000757137   0.073031437  -0.091594232
                        -0.000010614  -0.000857052  -0.394186392  -0.000471346   0.000071046  -0.000346330  -0.045905949  -0.183212657

   24    3.2  1.5 -1.5   0.618145993  -0.028549890   0.000012228  -0.000414097   0.632232546  -0.012061949  -0.000412405  -0.001478294
                         0.465879999   0.001302570  -0.000008152   0.000000400   0.000614619   0.011870553   0.003340128  -0.000285352


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  29.556%   3.774%   8.100%   0.001%  58.495%   0.074%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   3.811%  29.526%   0.014%  64.675%   0.005%   1.970%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   3.573%  29.760%   0.032%  27.179%   0.131%  39.325%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.136%  33.241%  61.993%   0.098%
    5    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.198%   0.135%   0.053%  33.456%
    6    6.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.153%   0.137%   0.007%   4.393%
    7    1.2  0.5 -0.5   3.774%  29.556%   0.001%   8.100%   0.074%  58.495%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5  29.526%   3.811%  64.675%   0.014%   1.970%   0.005%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5  29.760%   3.573%  27.179%   0.032%  39.325%   0.131%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.241%   0.136%   0.098%  61.993%
   11    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.135%  33.198%  33.456%   0.053%
   12    6.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.137%  33.153%   4.393%   0.007%
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
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.2  0.5  0.5   4.382%   0.151%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.2  0.5  0.5   1.105%  32.053%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.2  0.5  0.5   2.077%  60.233%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.2  0.5 -0.5   0.151%   4.382%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.2  0.5 -0.5  32.053%   1.105%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    6.2  0.5 -0.5  60.233%   2.077%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.2  1.5  1.5   0.000%   0.000%  24.904%   0.096%   0.014%  19.985%   0.001%   0.000%   0.000%  49.939%
   14    2.2  1.5  1.5   0.000%   0.000%  24.904%   0.096%   0.014%  19.985%   0.001%   0.000%   0.000%  50.060%
   15    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.082%  59.915%   0.000%   0.000%
   16    1.2  1.5  0.5   0.000%   0.000%   0.032%   8.301%  26.887%   0.018%   0.027%  19.736%   0.000%   0.000%
   17    2.2  1.5  0.5   0.000%   0.000%   0.032%   8.301%  26.411%   0.018%   0.028%  20.212%   0.000%   0.000%
   18    3.2  1.5  0.5   0.000%   0.000%  33.204%   0.128%   0.005%   6.662%   0.000%   0.000%   0.000%   0.000%
   19    1.2  1.5 -0.5   0.000%   0.000%   8.301%   0.032%   0.018%  26.887%  19.736%   0.027%   0.000%   0.000%
   20    2.2  1.5 -0.5   0.000%   0.000%   8.301%   0.032%   0.018%  26.411%  20.212%   0.028%   0.000%   0.000%
   21    3.2  1.5 -0.5   0.000%   0.000%   0.128%  33.204%   6.662%   0.005%   0.000%   0.000%   0.000%   0.000%
   22    1.2  1.5 -1.5   0.000%   0.000%   0.096%  24.904%  19.985%   0.014%   0.000%   0.001%  49.939%   0.000%
   23    2.2  1.5 -1.5   0.000%   0.000%   0.096%  24.904%  19.985%   0.014%   0.000%   0.001%  50.060%   0.000%
   24    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  59.915%   0.082%   0.000%   0.000%

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
   13    1.2  1.5  1.5   0.000%   0.000%   4.298%   0.762%
   14    2.2  1.5  1.5   0.000%   0.000%   4.196%   0.744%
   15    3.2  1.5  1.5   0.029%  39.972%   0.000%   0.001%
   16    1.2  1.5  0.5   0.021%  29.730%   2.297%  12.950%
   17    2.2  1.5  0.5   0.022%  30.224%   2.220%  12.533%
   18    3.2  1.5  0.5   0.002%   0.000%  50.963%   9.036%
   19    1.2  1.5 -0.5  29.730%   0.021%  12.950%   2.297%
   20    2.2  1.5 -0.5  30.224%   0.022%  12.533%   2.220%
   21    3.2  1.5 -0.5   0.000%   0.002%   9.036%  50.963%
   22    1.2  1.5 -1.5   0.000%   0.000%   0.762%   4.298%
   23    2.2  1.5 -1.5   0.000%   0.000%   0.744%   4.196%
   24    3.2  1.5 -1.5  39.972%   0.029%   0.001%   0.000%


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
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1026.68       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     64865.47  53534.94   2850.83   8470.89      7.09      0.04      1.26
 REAL TIME  *     65485.31 SEC
 DISK USED  *         1.03 GB (local),       31.41 GB (total)
 SF USED    *         7.46 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -242.338907805999

              CI              CI           MULTI         RHF-SCF
   -242.33233275   -242.46497346   -242.07579883   -242.31083015
 **********************************************************************************************************************************
 Molpro calculation terminated
