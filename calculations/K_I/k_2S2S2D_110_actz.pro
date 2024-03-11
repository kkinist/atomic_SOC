
 Working directory              : /wrk/irikura/molpro.VCBovxH0Ax/
 Global scratch directory       : /wrk/irikura/molpro.VCBovxH0Ax/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.VCBovxH0Ax/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,K SO-CI
                                                                                 ! (1/10) active space adds 3d
 memory,2000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={K};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=18,sym=1,spin=0}
 
 {multi
     closed,3,6
     occ,10,9
     wf,nelec=19,sym=1,spin=1;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=1;state,7; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   K SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 13:29:41  
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

 Library entry K      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry K      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  K      19.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   19
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

     9.437 MB (compressed) written to integral file ( 17.0%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     271872.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     271872      RECORD LENGTH: 524288

 Memory used in sort:       0.83 MW

 SORT1 READ     7196526. AND WROTE       58575. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ      690124. AND WROTE     3262620. INTEGRALS IN     48 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.01 SEC

 Node minimum:      270664.  Node maximum:      273888. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910

 Eigenvalues of metric

         1 0.397E-03 0.547E-03 0.547E-03 0.547E-03 0.547E-03 0.547E-03 0.533E-02 0.155E-01
         2 0.604E-02 0.604E-02 0.604E-02 0.206E-01 0.206E-01 0.206E-01 0.123E+00 0.123E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.96       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.17      0.93
 REAL TIME  *         2.18 SEC
 DISK USED  *        29.30 MB (local),      403.81 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    4   6

 Initial occupancy:   3   6

 NELEC=   18   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -601.31016053    -601.31016053     0.00D+00     0.14D+00     0     0       0.00      0.00    start
   2     -601.31042212      -0.00026159     0.69D-03     0.10D-02     1     0       0.01      0.01    diag
   3     -601.31043138      -0.00000926     0.22D-03     0.32D-03     2     0       0.00      0.01    diag
   4     -601.31043189      -0.00000051     0.32D-04     0.10D-03     3     0       0.00      0.01    diag
   5     -601.31043189      -0.00000000     0.18D-05     0.52D-05     4     0       0.00      0.01    diag
   6     -601.31043189      -0.00000000     0.12D-06     0.30D-06     5     0       0.01      0.02    diag
   7     -601.31043189       0.00000000     0.59D-08     0.11D-07     0     0       0.00      0.02    diag

 Final occupancy:   3   6

 !RHF STATE 1.1 Energy               -601.310431894365
  RHF One-electron energy            -822.838185200751
  RHF Two-electron energy             221.527753306385
  RHF Kinetic energy                  615.470603283654
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.976992936277

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -134.35267     1  1  s    0.99992
    2.1     2.00000   -14.81993     1  2  s    1.00083
    3.1     2.00000    -1.97678     1  3  s    0.99646
    1.2     2.00000   -11.74393     1  1  pz   1.00003
    2.2     2.00000   -11.74393     1  1  px   1.00002
    3.2     2.00000   -11.74393     1  1  py   1.00001
    4.2     2.00000    -1.17005     1  2  pz   1.00588
    5.2     2.00000    -1.17005     1  2  py   1.00588
    6.2     2.00000    -1.17005     1  2  px   1.00589


 HOMO      6.2    -1.170054 =     -31.8388eV
 LUMO      4.1    -0.147480 =      -4.0131eV
 LUMO-HOMO         1.022573 =      27.8256eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.96       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.44       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.21      0.04      0.93
 REAL TIME  *         3.09 SEC
 DISK USED  *        29.68 MB (local),      408.37 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    3    6)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      65 (   29   36)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 10 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.294D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.496D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.489D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.344D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.354D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 6 4 5 3   4 6 3 5 2 1 6 4 5 3   2 1 6 4 5 3 2 1 6 4   3 5 2 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.571D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.759D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.574D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.745D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.298D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.674D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.927D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.126D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 9 7 810 6   4 5 3 2 1 610 8 9 7   4 5 3 2 110 8 4 5 9
                                        7 6 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  653  ( 39 closed/active, 303 closed/virtual, 0 active/active, 311 active/virtual )
 Total number of variables:    702
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0   -601.38139635    -601.38142341   -0.00002706    0.00825814 0.00000641 0.00000000  0.50E-02      0.23
   2    6    6    0   -601.38142341    -601.38142341   -0.00000000    0.00000266 0.00000001 0.00000000  0.22E-04      0.48

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.48E-08)
                       Final energy:   -601.38142341
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -601.458049396238
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.69678085
 One electron energy                          -827.01694984
 Two electron energy                           225.55890044
 Virial ratio                                    1.97687379
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -601.371177332069
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.52700799
 One electron energy                          -824.75223328
 Two electron energy                           223.38105595
 Virial ratio                                    1.97700210
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -601.368147431318
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.51281786
 One electron energy                          -825.12254490
 Two electron energy                           223.75439746
 Virial ratio                                    1.97701970
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -601.368147431308
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.51281786
 One electron energy                          -825.12254490
 Two electron energy                           223.75439747
 Virial ratio                                    1.97701970
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -601.368147431301
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.51281786
 One electron energy                          -825.12254490
 Two electron energy                           223.75439747
 Virial ratio                                    1.97701970
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -601.368147431300
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.51281786
 One electron energy                          -825.12254490
 Two electron energy                           223.75439746
 Virial ratio                                    1.97701970
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -601.368147431300
 Nuclear energy                                  0.00000000
 Kinetic energy                                615.51281786
 One electron energy                          -825.12254490
 Two electron energy                           223.75439746
 Virial ratio                                    1.97701970
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.000000000000
 !MCSCF expec                      <3.1|LXLX|3.1>     3.728566725278
 !MCSCF expec                      <4.1|LXLX|4.1>     3.999999641638
 !MCSCF expec                      <5.1|LXLX|5.1>     1.000000304861
 !MCSCF expec                      <6.1|LXLX|6.1>     0.999997079520
 !MCSCF expec                      <7.1|LXLX|7.1>     0.271435927481
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     0.000000000000
 !MCSCF expec                      <3.1|LYLY|3.1>     2.006947233889
 !MCSCF expec                      <4.1|LYLY|4.1>     1.000000011887
 !MCSCF expec                      <5.1|LYLY|5.1>     1.000001279324
 !MCSCF expec                      <6.1|LYLY|6.1>     3.999991154511
 !MCSCF expec                      <7.1|LYLY|7.1>     1.993060847904
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>    -0.000000000000
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.264486040832
 !MCSCF expec                      <4.1|LZLZ|4.1>     1.000000346475
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.999998415815
 !MCSCF expec                      <6.1|LZLZ|6.1>     1.000011765969
 !MCSCF expec                      <7.1|LZLZ|7.1>     3.735503224616
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     0.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 1 1 6 3 4 5   6 3 5 4 2 1 6 3 5 2   4 1 6 4 3 5 2 1 6 4   5 3 2 6 4 5 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 3 2 1 2   3 1 2 1 3 9 7 5 810   6 4 2 1 3 9 710 8 5   6 4 2 3 110 8 5 9 7
                                        4 6 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -134.21760     1  1  s    0.99992
    2.1     2.00000   -14.68475     1  2  s    1.00086
    3.1     2.00000    -1.84189     1  3  s    0.99661
    4.1     0.14286     0.02729     1  1  d0   0.79279
    5.1     0.14286    -0.04322     1  4  s    0.98156
    6.1     0.14286     0.01345     1  4  s   -1.09102    1  5  s    0.44549    1  6  s   -1.33020    1  9  s    2.38579
    7.1     0.14286     0.02729     1  1  d1-  0.79279
    8.1     0.14286     0.02729     1  1  d2-  0.79279
    9.1     0.14286     0.02729     1  1  d1+  0.79279
   10.1     0.14286     0.02729     1  1  d2+  0.79279
    1.2     2.00000   -11.60864     1  1  py   1.00004
    2.2     2.00000   -11.60864     1  1  pz   1.00004
    3.2     2.00000   -11.60864     1  1  px   1.00004
    4.2     2.00000    -1.03521     1  2  py   1.00393
    5.2     2.00000    -1.03521     1  2  pz   1.00393
    6.2     2.00000    -1.03521     1  2  px   1.00393
    7.2     0.00000     0.00645     1  3  pz   1.00387
    8.2     0.00000     0.00645     1  3  py   1.00387
    9.2     0.00000     0.00645     1  3  px   1.00387
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 000a000 000      0.00000000     -0.00000000     -0.00004911      0.99999994     -0.00033100     -0.00007790     -0.00006888
 0000a00 000     -0.00000000     -0.00000000      0.00006603      0.00033094      0.99999973     -0.00063672     -0.00014360
 0a00000 000      0.99999959      0.00090392      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 00a0000 000     -0.00090392      0.99999959     -0.00000006     -0.00000000      0.00000000     -0.00000000      0.00000001
 00000a0 000     -0.00000000      0.00000000     -0.00002598      0.00007824      0.00063698      0.99999785      0.00197331
 a000000 000     -0.00000000      0.00000006      0.96637389      0.00002975     -0.00010041      0.00053259     -0.25714046
 000000a 000     -0.00000000      0.00000000      0.25714102      0.00007908      0.00012055     -0.00190036      0.96637201
 
 Energy:       -601.45804940   -601.37117733   -601.36814743   -601.36814743   -601.36814743   -601.36814743   -601.36814743
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.68       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.73      0.50      0.04      0.93
 REAL TIME  *         3.78 SEC
 DISK USED  *        37.57 MB (local),      503.05 MB (total)
 SF USED    *        21.79 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -601.4580494  -0.0
    -601.3711773   0.0
    -601.3681474   6.0
    -601.3681474   6.0
    -601.3681474   6.0
    -601.3681474   6.0
    -601.3681474   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 19
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:     7758 conf    24750 CSFs
 N-1 el internal:     1845 conf     7161 CSFs
 N-2 el internal:      260 conf     1108 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   8 (   2   6 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      65 (  29  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.05 sec, npass=  1  Memory used:   0.78 MW


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -601.45804940
     2      -601.37117733
     3      -601.36814743
     4      -601.36814743
     5      -601.36814743
     6      -601.36814743
     7      -601.36814743

 Number of blocks in overlap matrix:   464   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     464
 Number of N-1 electron functions:    7161

 Number of internal configurations:                12555
 Number of singly external configurations:        232449
 Number of doubly external configurations:        493194
 Total number of contracted configurations:       738198
 Total number of uncontracted configurations:    1414678

 Diagonal Coupling coefficients finished.               Storage:   5284635 words, CPU-Time:      1.32 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    607662 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -601.45804940    -0.00000000    -0.25080256  0.62D-02  0.61D-01     2.69
    1     2     2     1.00000000     0.00000000  -601.37117733     0.00000000    -0.23917787  0.32D-02  0.57D-01     2.69
    1     3     3     1.00000000     0.00000000  -601.36814743    -0.00000000    -0.23876213  0.34D-02  0.56D-01     2.69
    1     4     4     1.00000000     0.00000000  -601.36814743     0.00000000    -0.23877213  0.35D-02  0.56D-01     2.69
    1     5     5     1.00000000     0.00000000  -601.36814743     0.00000000    -0.23877109  0.35D-02  0.56D-01     2.69
    1     6     6     1.00000000     0.00000000  -601.36814743    -0.00000000    -0.23877286  0.35D-02  0.56D-01     2.69
    1     7     7     1.00000000     0.00000000  -601.36814743    -0.00000000    -0.23876876  0.35D-02  0.56D-01     2.69
    2     1     1     1.05790820    -0.23320538  -601.69125478    -0.23320538    -0.00286435  0.52D-03  0.50D-03    16.25
    2     2     2     1.05359415    -0.22697381  -601.59815114    -0.22697381    -0.00224980  0.17D-03  0.42D-03    16.25
    2     3     3     1.05366005    -0.22673650  -601.59488393    -0.22673650    -0.00223523  0.19D-03  0.41D-03    16.25
    2     4     4     1.05365855    -0.22673621  -601.59488365    -0.22673621    -0.00223529  0.19D-03  0.41D-03    16.25
    2     5     5     1.05366145    -0.22673564  -601.59488307    -0.22673564    -0.00223589  0.19D-03  0.41D-03    16.25
    2     6     6     1.05366108    -0.22673545  -601.59488288    -0.22673545    -0.00223615  0.19D-03  0.41D-03    16.25
    2     7     7     1.05366123    -0.22673541  -601.59488284    -0.22673541    -0.00223608  0.19D-03  0.41D-03    16.25
    3     1     1     1.05864797    -0.23627226  -601.69432166    -0.00306688    -0.00007806  0.98D-05  0.18D-04    29.61
    3     2     2     1.05506463    -0.22945705  -601.60063438    -0.00248324    -0.00005862  0.59D-05  0.13D-04    29.61
    3     3     3     1.05505198    -0.22920606  -601.59735349    -0.00246956    -0.00005903  0.61D-05  0.13D-04    29.61
    3     4     4     1.05505140    -0.22920603  -601.59735346    -0.00246982    -0.00005904  0.61D-05  0.13D-04    29.61
    3     5     5     1.05505073    -0.22920597  -601.59735340    -0.00247033    -0.00005908  0.61D-05  0.13D-04    29.61
    3     6     6     1.05505066    -0.22920596  -601.59735340    -0.00247051    -0.00005908  0.61D-05  0.13D-04    29.61
    3     7     7     1.05505073    -0.22920595  -601.59735338    -0.00247055    -0.00005910  0.61D-05  0.13D-04    29.61
    4     1     1     1.05925765    -0.23636079  -601.69441019    -0.00008853    -0.00000317  0.97D-06  0.48D-06    42.56
    4     2     2     1.05543286    -0.22952531  -601.60070265    -0.00006827    -0.00000242  0.66D-06  0.42D-06    42.56
    4     3     3     1.05542607    -0.22927498  -601.59742241    -0.00006892    -0.00000289  0.17D-05  0.41D-06    42.56
    4     4     4     1.05542617    -0.22927498  -601.59742241    -0.00006895    -0.00000289  0.17D-05  0.41D-06    42.56
    4     5     5     1.05542609    -0.22927498  -601.59742241    -0.00006900    -0.00000289  0.17D-05  0.41D-06    42.56
    4     6     6     1.05542609    -0.22927498  -601.59742241    -0.00006901    -0.00000289  0.17D-05  0.41D-06    42.56
    4     7     7     1.05542615    -0.22927497  -601.59742241    -0.00006902    -0.00000289  0.17D-05  0.41D-06    42.56
    5     1     1     1.05936403    -0.23636429  -601.69441369    -0.00000350    -0.00000008  0.19D-07  0.12D-07    55.50
    5     2     2     1.05549153    -0.22952801  -601.60070534    -0.00000270    -0.00000007  0.26D-07  0.11D-07    55.50
    5     3     3     1.05549921    -0.22927826  -601.59742569    -0.00000328    -0.00000015  0.52D-07  0.31D-07    55.50
    5     4     4     1.05549920    -0.22927826  -601.59742569    -0.00000328    -0.00000015  0.52D-07  0.31D-07    55.50
    5     5     5     1.05549919    -0.22927826  -601.59742569    -0.00000329    -0.00000015  0.52D-07  0.31D-07    55.50
    5     6     6     1.05549919    -0.22927826  -601.59742569    -0.00000329    -0.00000015  0.52D-07  0.31D-07    55.50
    5     7     7     1.05549919    -0.22927826  -601.59742569    -0.00000329    -0.00000015  0.52D-07  0.31D-07    55.50
    6     1     1     1.05936875    -0.23636438  -601.69441378    -0.00000009    -0.00000000  0.68D-09  0.41D-09    68.27
    6     2     2     1.05549768    -0.22952809  -601.60070543    -0.00000008    -0.00000000  0.16D-08  0.51D-09    68.27
    6     3     3     1.05551016    -0.22927845  -601.59742588    -0.00000019    -0.00000001  0.87D-08  0.15D-08    68.27
    6     4     4     1.05551016    -0.22927845  -601.59742588    -0.00000019    -0.00000001  0.87D-08  0.15D-08    68.27
    6     5     5     1.05551016    -0.22927845  -601.59742588    -0.00000019    -0.00000001  0.87D-08  0.15D-08    68.27
    6     6     6     1.05551016    -0.22927845  -601.59742588    -0.00000019    -0.00000001  0.87D-08  0.15D-08    68.27
    6     7     7     1.05551016    -0.22927845  -601.59742588    -0.00000019    -0.00000001  0.87D-08  0.15D-08    68.27
    7     1     1     1.05936875    -0.23636438  -601.69441378    -0.00000000    -0.00000000  0.68D-09  0.41D-09    78.84
    7     2     2     1.05549768    -0.22952809  -601.60070543     0.00000000    -0.00000000  0.16D-08  0.51D-09    78.84
    7     3     3     1.05551465    -0.22927847  -601.59742590    -0.00000002    -0.00000000  0.54D-10  0.11D-09    78.84
    7     4     4     1.05551465    -0.22927847  -601.59742590    -0.00000002    -0.00000000  0.54D-10  0.11D-09    78.84
    7     5     5     1.05551398    -0.22927847  -601.59742590    -0.00000002    -0.00000000  0.27D-09  0.11D-09    78.84
    7     6     6     1.05551398    -0.22927847  -601.59742590    -0.00000002    -0.00000000  0.27D-09  0.11D-09    78.84
    7     7     7     1.05551398    -0.22927847  -601.59742590    -0.00000002    -0.00000000  0.27D-09  0.11D-09    78.84


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  14.2%
 S   5.6%  36.9%
 P   1.0%  19.8%   9.4%

 Initialization:   1.9%
 Other:           11.3%

 Total CPU:       78.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/000000222222000          -0.0000000   0.0000001   0.0000000  -0.0000000   0.9732833   0.0000000  -0.0000051
 2200000/0222222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.9732833   0.0000000
 22000000/222222000           0.0000000   0.0000000   0.0000000   0.0000000   0.0000051  -0.0000000   0.9732833
 220000/00222222000           0.0000000  -0.0000000   0.0000000   0.9732830   0.0000000  -0.0000000  -0.0000000
 22000/000222222000          -0.0000000   0.0000000   0.9732830  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2200/0000222222000          -0.0401920   0.9723893  -0.0000000   0.0000000  -0.0000001  -0.0000000  -0.0000000
 220/00000222222000           0.9705461   0.0423597   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970582   -0.039315   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 2           0.041481    0.972427   -0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.000000    0.973283    0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000   -0.000000    0.973283    0.000000    0.000000
 5          -0.000000    0.000000    0.940404   -0.000000    0.000000   -0.000000   -0.250839
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.973283   -0.000000
 7           0.000000   -0.000000    0.250839   -0.000000   -0.000000    0.000000    0.940404

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971377    0.001044   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.001044    0.973311    0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.973283    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.973283   -0.000000   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.973283    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.973283    0.000000
 7           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.973283


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97058201 (fixed)   0.97137793 (relaxed)   0.97137737 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00040737   -0.00048456   -0.21170611
 Singles      0.00549474   -0.01209447   -0.01263853
 Pairs        0.05389820   -0.00000000   -0.01201974
 Total        1.05980031   -0.01257903   -0.23636438
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.45789944
 Nuclear energy                         0.00000000
 Kinetic energy                       615.48300351
 One electron energy                 -826.69115306
 Two electron energy                  224.99673928
 Virial quotient                       -0.97759712
 Correlation energy                    -0.23651433
 !MRCI STATE 1.1 Energy              -601.694413776213

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.70855741 (Davidson, fixed reference)
 Cluster corrected energies          -601.70855712 (Davidson, relaxed reference)
 Cluster corrected energies          -601.70855741 (Davidson, rotated reference)

 Cluster corrected energies          -601.70736502 (Pople, fixed reference)
 Cluster corrected energies          -601.70736474 (Pople, relaxed reference)
 Cluster corrected energies          -601.70736502 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97242714 (fixed)   0.97331146 (relaxed)   0.97331090 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009106   -0.00020843   -0.20843731
 Singles      0.00327298   -0.00952387   -0.00973424
 Pairs        0.05222975    0.00000000   -0.01135654
 Total        1.05559379   -0.00973230   -0.22952809
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.37132728
 Nuclear energy                         0.00000000
 Kinetic energy                       615.37454915
 One electron energy                 -824.40553732
 Two electron energy                  222.80483190
 Virial quotient                       -0.97761714
 Correlation energy                    -0.22937814
 !MRCI STATE 2.1 Energy              -601.600705426014

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61345743 (Davidson, fixed reference)
 Cluster corrected energies          -601.61345715 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61345743 (Davidson, rotated reference)

 Cluster corrected energies          -601.61234462 (Pople, fixed reference)
 Cluster corrected energies          -601.61234436 (Pople, relaxed reference)
 Cluster corrected energies          -601.61234462 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97328304 (fixed)   0.97328304 (relaxed)   0.97328304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013223   -0.00024663   -0.20797190
 Singles      0.00347498   -0.00976238   -0.01000247
 Pairs        0.05204701   -0.00000000   -0.01130410
 Total        1.05565422   -0.01000901   -0.22927847
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.36814743
 Nuclear energy                         0.00000000
 Kinetic energy                       615.36599736
 One electron energy                 -824.84762734
 Two electron energy                  223.25020144
 Virial quotient                       -0.97762539
 Correlation energy                    -0.22927847
 !MRCI STATE 3.1 Energy              -601.597425900878

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61018622 (Davidson, fixed reference)
 Cluster corrected energies          -601.61018622 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61018622 (Davidson, rotated reference)

 Cluster corrected energies          -601.60907323 (Pople, fixed reference)
 Cluster corrected energies          -601.60907323 (Pople, relaxed reference)
 Cluster corrected energies          -601.60907323 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97328304 (fixed)   0.97328304 (relaxed)   0.97328304 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013223   -0.00024663   -0.20797189
 Singles      0.00347498   -0.00976238   -0.01000247
 Pairs        0.05204701    0.00000000   -0.01130410
 Total        1.05565422   -0.01000901   -0.22927847
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.36814743
 Nuclear energy                         0.00000000
 Kinetic energy                       615.36599731
 One electron energy                 -824.84762720
 Two electron energy                  223.25020130
 Virial quotient                       -0.97762539
 Correlation energy                    -0.22927847
 !MRCI STATE 4.1 Energy              -601.597425900865

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61018622 (Davidson, fixed reference)
 Cluster corrected energies          -601.61018622 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61018622 (Davidson, rotated reference)

 Cluster corrected energies          -601.60907323 (Pople, fixed reference)
 Cluster corrected energies          -601.60907323 (Pople, relaxed reference)
 Cluster corrected energies          -601.60907323 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94040436 (fixed)   0.97328335 (relaxed)   0.97328335 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013223   -0.00024663   -0.26150386
 Singles      0.00347444   -0.00976239   -0.01000242
 Pairs        0.05204688    0.05651108    0.04222782
 Total        1.05565355    0.04650207   -0.22927847
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.36814743
 Nuclear energy                         0.00000000
 Kinetic energy                       615.36596877
 One electron energy                 -824.84757243
 Two electron energy                  223.25014653
 Virial quotient                       -0.97762544
 Correlation energy                    -0.22927847
 !MRCI STATE 5.1 Energy              -601.597425900622

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61018606 (Davidson, fixed reference)
 Cluster corrected energies          -601.61018606 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61018606 (Davidson, rotated reference)

 Cluster corrected energies          -601.60907308 (Pople, fixed reference)
 Cluster corrected energies          -601.60907308 (Pople, relaxed reference)
 Cluster corrected energies          -601.60907308 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97328335 (fixed)   0.97328335 (relaxed)   0.97328335 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013223   -0.00024663   -0.20797201
 Singles      0.00347444   -0.00976239   -0.01000243
 Pairs        0.05204688    0.00000000   -0.01130403
 Total        1.05565355   -0.01000902   -0.22927847
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.36814743
 Nuclear energy                         0.00000000
 Kinetic energy                       615.36596853
 One electron energy                 -824.84757244
 Two electron energy                  223.25014654
 Virial quotient                       -0.97762544
 Correlation energy                    -0.22927847
 !MRCI STATE 6.1 Energy              -601.597425900614

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61018606 (Davidson, fixed reference)
 Cluster corrected energies          -601.61018606 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61018606 (Davidson, rotated reference)

 Cluster corrected energies          -601.60907308 (Pople, fixed reference)
 Cluster corrected energies          -601.60907308 (Pople, relaxed reference)
 Cluster corrected energies          -601.60907308 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.94040435 (fixed)   0.97328335 (relaxed)   0.97328335 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013223   -0.00024663   -0.00727909
 Singles      0.00347444   -0.00976239   -0.01000243
 Pairs        0.05204688   -0.21186219   -0.21199695
 Total        1.05565355   -0.22187121   -0.22927847
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -601.36814743
 Nuclear energy                         0.00000000
 Kinetic energy                       615.36596857
 One electron energy                 -824.84757237
 Two electron energy                  223.25014647
 Virial quotient                       -0.97762544
 Correlation energy                    -0.22927847
 !MRCI STATE 7.1 Energy              -601.597425900604

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -601.61018606 (Davidson, fixed reference)
 Cluster corrected energies          -601.61018606 (Davidson, relaxed reference)
 Cluster corrected energies          -601.61018606 (Davidson, rotated reference)

 Cluster corrected energies          -601.60907308 (Pople, fixed reference)
 Cluster corrected energies          -601.60907308 (Pople, relaxed reference)
 Cluster corrected energies          -601.60907308 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       42.34       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        89.69     87.95      0.50      0.04      0.93
 REAL TIME  *        94.20 SEC
 DISK USED  *        79.24 MB (local),     1003.06 MB (total)
 SF USED    *       378.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -601.70855741  AU                              
 SETTING HLSDIAG(2)     =      -601.61345743  AU                              
 SETTING HLSDIAG(3)     =      -601.61018622  AU                              
 SETTING HLSDIAG(4)     =      -601.61018622  AU                              
 SETTING HLSDIAG(5)     =      -601.61018606  AU                              
 SETTING HLSDIAG(6)     =      -601.61018606  AU                              
 SETTING HLSDIAG(7)     =      -601.61018606  AU                              


         HLSDIAG
    -601.7085574
    -601.6134574
    -601.6101862
    -601.6101862
    -601.6101861
    -601.6101861
    -601.6101861
                                                  


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

 Time for Seward_LS:       4.68 sec

        3938743. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      967 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.68 sec, REAL time:      4.72 sec


 SORTLS1 read     3942450. and wrote     3942450. SO integrals in    36 records. CPU time:      0.04 sec, REAL time:      0.06 sec
 SORTLS2 read     3942450. and wrote    19122750. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:   102.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   102.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:   -601.694414   -601.600705   -601.597426   -601.597426   -601.597426   -601.597426   -601.597426
 Replaced energies:   -601.708557   -601.613457   -601.610186   -601.610186   -601.610186   -601.610186   -601.610186



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -601.70855741

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  0.5  0.5       0.00   20872.03       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

    3   3.1  0.5  0.5       0.00       0.00   21589.98       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.28      -0.00       0.00      -0.00      -0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   21589.98       0.00       0.00       0.00       0.00      -0.00      -0.28
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.56      -0.00       0.00       0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   21590.01       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.49

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   21590.01       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.28      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   21590.01       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.56       0.00      -0.00       0.00       0.00      -0.00      -0.28

    8   1.1  0.5 -0.5       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00   20872.03       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   10   3.1  0.5 -0.5      -0.00       0.00      -0.00      -0.28       0.00      -0.00      -0.00       0.00       0.00   21589.98
                            0.00      -0.00       0.00      -0.00       0.49       0.00       0.28      -0.00       0.00      -0.00

   11   4.1  0.5 -0.5      -0.00       0.00       0.28      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.28       0.00       0.00      -0.00       0.00

   12   5.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.49       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.49       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   13   6.1  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.49       0.00      -0.28       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.28      -0.00      -0.00      -0.00       0.00      -0.00      -0.28

   14   7.1  0.5 -0.5      -0.00       0.00       0.00       0.00      -0.00       0.28      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.28      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00

    2   2.1  0.5  0.5       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00

    3   3.1  0.5  0.5       0.28      -0.00       0.00       0.00
                           -0.00       0.49       0.00       0.28

    4   4.1  0.5  0.5      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.28       0.00

    5   5.1  0.5  0.5       0.00      -0.00       0.49      -0.00
                            0.00       0.00       0.00      -0.00

    6   6.1  0.5  0.5       0.00      -0.49       0.00       0.28
                           -0.28      -0.00       0.00      -0.00

    7   7.1  0.5  0.5      -0.00       0.00      -0.28      -0.00
                           -0.00       0.00       0.00      -0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.28       0.00

   11   4.1  0.5 -0.5   21589.98       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.56

   12   5.1  0.5 -0.5       0.00   21590.01       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   6.1  0.5 -0.5       0.00       0.00   21590.01       0.00
                            0.00      -0.00       0.00      -0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   21590.01
                           -0.56      -0.00       0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -601.70855741     0.00000000        0.00      0.00000000        0.00      0.0000
     2  -601.70855741     0.00000000        0.00      0.00000000        0.00      0.0000
     3  -601.61345743     0.09509998    20872.03      0.09509998    20872.03      2.5878
     4  -601.61345743     0.09509998    20872.03      0.09509998    20872.03      2.5878
     5  -601.61018874     0.09836866    21589.43      0.09836866    21589.43      2.6767
     6  -601.61018874     0.09836866    21589.43      0.09836866    21589.43      2.6767
     7  -601.61018868     0.09836872    21589.44      0.09836872    21589.44      2.6767
     8  -601.61018868     0.09836872    21589.44      0.09836872    21589.44      2.6767
     9  -601.61018862     0.09836879    21589.45      0.09836879    21589.45      2.6768
    10  -601.61018862     0.09836879    21589.45      0.09836879    21589.45      2.6768
    11  -601.61018232     0.09837509    21590.84      0.09837509    21590.84      2.6769
    12  -601.61018232     0.09837509    21590.84      0.09837509    21590.84      2.6769
    13  -601.61018225     0.09837515    21590.85      0.09837515    21590.85      2.6769
    14  -601.61018225     0.09837515    21590.85      0.09837515    21590.85      2.6769


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   0.000000000   1.000000000   0.000000000  -0.000000000  -0.000000000   0.000000010  -0.000000022   0.000000011
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  0.5  0.5  -0.000000000  -0.000000000   0.999999993  -0.000100097  -0.000000000  -0.000000152   0.000000388  -0.000000188
                         0.000000000  -0.000000000   0.000001948   0.000055102   0.000000000  -0.000000000  -0.000000000   0.000000000

    3    3.1  0.5  0.5   0.000000036  -0.000000000  -0.000000000   0.000000161   0.630105655   0.000000003   0.192734908   0.398527592
                        -0.000000023  -0.000000000   0.000000000   0.000000684   0.115168912   0.000000001  -0.025385568  -0.052491006

    4    4.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000003   0.000000001  -0.000000000
                        -0.000000000   0.000000012  -0.000000254   0.000000000  -0.000000003   0.630218924   0.414829080  -0.200618593

    5    5.1  0.5  0.5   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000001  -0.273533979   0.339542836  -0.164208850
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000002  -0.000000001   0.000000000

    6    6.1  0.5  0.5   0.000000016  -0.000000000  -0.000000000  -0.000000437   0.055639889   0.000000000  -0.000028591  -0.000059118
                         0.000000026   0.000000000  -0.000000000   0.000000103  -0.304413819  -0.000000001  -0.000217067  -0.000448842

    7    7.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.148130634   0.601244940  -0.290772560
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000001   0.000000000

    8    1.1  0.5 -0.5   0.531481969  -0.000000000   0.000000000   0.000000000   0.000000002   0.000000000  -0.000000001  -0.000000003
                         0.847069606  -0.000000000   0.000000000  -0.000000000  -0.000000010   0.000000000  -0.000000011  -0.000000022

    9    2.1  0.5 -0.5  -0.000000000  -0.000000000   0.000110051   0.973453364  -0.000000027   0.000000000   0.000000025   0.000000051
                        -0.000000000  -0.000000000   0.000030729  -0.228885418   0.000000149  -0.000000000   0.000000186   0.000000385

   10    3.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000003  -0.000000001   0.000000000
                         0.000000000  -0.000000043   0.000000703  -0.000000000  -0.000000003   0.640544312  -0.401969585   0.194399516

   11    4.1  0.5 -0.5   0.000000010   0.000000000  -0.000000000   0.000000058  -0.619948536  -0.000000003   0.198900732   0.411276973
                        -0.000000006   0.000000000   0.000000000   0.000000247  -0.113312423  -0.000000001  -0.026197683  -0.054170257

   12    5.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.049181001  -0.000000000   0.021443134   0.044339039
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.269076321   0.000000001   0.162802759   0.336635392

   13    6.1  0.5 -0.5   0.000000000  -0.000000031   0.000000449  -0.000000000   0.000000001  -0.309456896   0.000452718  -0.000218942
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000

   14    7.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.026633667   0.000000000   0.037970396   0.078513283
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.145716617  -0.000000001   0.288282727   0.596096588


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5   0.000000001   0.000000022  -0.000000009   0.000000027  -0.000000005   0.000000030
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5  -0.000000009  -0.000000320   0.000000158  -0.000000475   0.000000077  -0.000000439
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    3    3.1  0.5  0.5  -0.000097253   0.000002769  -0.501864824  -0.167297256   0.319379170   0.055739492
                        -0.001695917   0.000048292  -0.008401317  -0.002800589  -0.071611008  -0.012497875

    4    4.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000001   0.000000002  -0.000000000  -0.000000000
                        -0.000087953  -0.003088742   0.175432250  -0.526268495  -0.049456269   0.283377220

    5    5.1  0.5  0.5  -0.017482576  -0.613956164  -0.094206220   0.282603487  -0.096789490   0.554589685
                        -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000001  -0.000000001

    6    6.1  0.5  0.5   0.706028898  -0.020104373  -0.000410935  -0.000136986   0.136830594   0.023880291
                        -0.040487340   0.001152889   0.024547839   0.008183053   0.610253126   0.106504124

    7    7.1  0.5  0.5   0.009950846   0.349455560  -0.179708602   0.539096862   0.050674194  -0.290355757
                         0.000000000   0.000000000  -0.000000001   0.000000002  -0.000000000  -0.000000000

    8    1.1  0.5 -0.5  -0.000000022   0.000000001  -0.000000000  -0.000000000  -0.000000007  -0.000000001
                         0.000000001  -0.000000000   0.000000027   0.000000009  -0.000000029  -0.000000005

    9    2.1  0.5 -0.5   0.000000319  -0.000000009   0.000000008   0.000000003   0.000000096   0.000000017
                        -0.000000018   0.000000001  -0.000000475  -0.000000158   0.000000428   0.000000075

   10    3.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000001  -0.000000002  -0.000000001   0.000000001
                         0.000048371   0.001698703  -0.167320696   0.501935139  -0.057123443   0.327309014

   11    4.1  0.5 -0.5  -0.000176834   0.000005035  -0.526194771  -0.175407674  -0.276511729  -0.048258072
                        -0.003083676   0.000087809  -0.008808604  -0.002936359   0.061999296   0.010820396

   12    5.1  0.5 -0.5   0.612949160  -0.017453901  -0.004730176  -0.001576810  -0.121337099  -0.021176296
                        -0.035149668   0.001000897   0.282563898   0.094193023  -0.541153422  -0.094444533

   13    6.1  0.5 -0.5   0.020137402   0.707188821   0.008184199  -0.024551278  -0.109148508   0.625405061
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000

   14    7.1  0.5 -0.5  -0.348882387   0.009934525  -0.009023324  -0.003007936   0.063526110   0.011086863
                         0.020006716  -0.000569697   0.539021341   0.179683427   0.283321194   0.049446491


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%  41.030%   0.000%   3.779%  16.158%   0.000%   0.000%
    4    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  39.718%  17.208%   4.025%   0.000%   0.001%
    5    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   7.482%  11.529%   2.696%   0.031%  37.694%
    6    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   9.576%   0.000%   0.000%   0.000%  50.012%   0.041%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   2.194%  36.150%   8.455%   0.010%  12.212%
    8    1.1  0.5 -0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  41.030%  16.158%   3.779%   0.000%   0.000%
   11    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  39.718%   0.000%   4.025%  17.208%   0.001%   0.000%
   12    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   7.482%   0.000%   2.696%  11.529%  37.694%   0.031%
   13    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   9.576%   0.000%   0.000%   0.041%  50.012%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   2.194%   0.000%   8.455%  36.150%  12.212%   0.010%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    3.1  0.5  0.5  25.194%   2.800%  10.713%   0.326%
    4    4.1  0.5  0.5   3.078%  27.696%   0.245%   8.030%
    5    5.1  0.5  0.5   0.887%   7.986%   0.937%  30.757%
    6    6.1  0.5  0.5   0.060%   0.007%  39.113%   1.191%
    7    7.1  0.5  0.5   3.230%  29.063%   0.257%   8.431%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   10    3.1  0.5 -0.5   2.800%  25.194%   0.326%  10.713%
   11    4.1  0.5 -0.5  27.696%   3.078%   8.030%   0.245%
   12    5.1  0.5 -0.5   7.986%   0.887%  30.757%   0.937%
   13    6.1  0.5 -0.5   0.007%   0.060%   1.191%  39.113%
   14    7.1  0.5 -0.5  29.063%   3.230%   8.431%   0.257%


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
              1      24       97.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       42.34       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       262.97    173.27     87.95      0.50      0.04      0.93
 REAL TIME  *       272.79 SEC
 DISK USED  *        79.28 MB (local),        1.22 GB (total)
 SF USED    *       378.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -601.610182253913

              CI           MULTI         RHF-SCF
   -601.59742590   -601.36814743   -601.31043189
 **********************************************************************************************************************************
 Molpro calculation terminated
