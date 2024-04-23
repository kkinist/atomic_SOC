
 Working directory              : /wrk/irikura/molpro.mOvZ3l3uq3/
 Global scratch directory       : /wrk/irikura/molpro.mOvZ3l3uq3/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.mOvZ3l3uq3/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Sr SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (10/9)
 {multi
     closed,8,6
     occ,11,12
     wf,sym=1,spin=0;state,2;
     wf,sym=1,spin=2;state,4;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,3,6
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,4; save,5203.2}
 hlsdiag(3) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 17:20:01  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  45000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SR     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SR     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  SR     38.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   38
 NUMBER OF PRIMITIVE AOS:         238
 NUMBER OF SYMMETRY AOS:          211
 NUMBER OF CONTRACTIONS:           93   (   45Ag  +   48Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     16.777 MB (compressed) written to integral file ( 18.0%)

     Node minimum: 0.262 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     162345.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     162345      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ    10953812. AND WROTE       36458. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.11 SEC
 SORT2 READ     1037967. AND WROTE     4879686. INTEGRALS IN     60 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      161323.  Node maximum:      165900. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.624E-03 0.367E-02 0.929E-02 0.929E-02 0.929E-02 0.929E-02 0.929E-02 0.284E-01
         2 0.333E-02 0.333E-02 0.333E-02 0.745E-02 0.745E-02 0.745E-02 0.928E-01 0.928E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.05      2.71
 REAL TIME  *         4.09 SEC
 DISK USED  *        29.46 MB (local),     1011.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   10   9

 Initial occupancy:  10   9

 NELEC=   38   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -3177.27784108   -3177.27784108     0.00D+00     0.19D+00     0     0       0.00      0.01    start
   2    -3177.27784113      -0.00000005     0.20D-04     0.52D-04     1     0       0.00      0.01    diag
   3    -3177.27784113      -0.00000000     0.43D-05     0.18D-04     2     0       0.01      0.02    diag
   4    -3177.27784113      -0.00000000     0.89D-06     0.95D-05     3     0       0.00      0.02    diag
   5    -3177.27784113      -0.00000000     0.80D-07     0.54D-05     4     0       0.00      0.02    diag
   6    -3177.27784113      -0.00000000     0.32D-07     0.28D-05     5     0       0.00      0.02    diag
   7    -3177.27784113      -0.00000000     0.77D-08     0.14D-06     0     0       0.01      0.03    diag

 Final occupancy:  10   9

 !RHF STATE 1.1 Energy              -3177.277841133264
  RHF One-electron energy           -4396.585097306509
  RHF Two-electron energy            1219.307256173245
  RHF Kinetic energy                 3454.572331531405
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.919731166759

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.20921     1  1  s    0.99995
    2.1     2.00000   -83.10582     1  2  s    1.00054
    3.1     2.00000   -13.95403     1  3  s    0.99701
    4.1     2.00000    -5.58737     1  1  d0   0.99943
    5.1     2.00000    -5.58737     1  1  d2-  0.99406
    6.1     2.00000    -5.58737     1  1  d1+  0.97918
    7.1     2.00000    -5.58737     1  1  d1-  0.98331
    8.1     2.00000    -5.58737     1  1  d2+  0.99805
    9.1     2.00000    -1.94831     1  4  s    1.00244
   10.1     2.00000    -0.18122     1  5  s    0.99877
    1.2     2.00000   -73.65117     1  1  px   0.99997
    2.2     2.00000   -73.65117     1  1  py   0.99998
    3.2     2.00000   -73.65117     1  1  pz   0.99998
    4.2     2.00000   -10.80369     1  2  pz   1.00005
    5.2     2.00000   -10.80369     1  2  px   1.00005
    6.2     2.00000   -10.80369     1  2  py   1.00005
    7.2     2.00000    -1.09510     1  3  px   0.99983
    8.2     2.00000    -1.09510     1  3  pz   0.99983
    9.2     2.00000    -1.09510     1  3  py   0.99983


 HOMO     10.1    -0.181218 =      -4.9312eV
 LUMO     10.2     0.009844 =       0.2679eV
 LUMO-HOMO         0.191062 =       5.1991eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         3.08      0.03      2.71
 REAL TIME  *         4.13 SEC
 DISK USED  *        29.90 MB (local),        1.00 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        9 (    3    6)
 Number of external orbitals:      70 (   34   36)

 State symmetry 1

 Number of active electrons:  10    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:            2688   (7956 determinants, 15876 intermediate states)

 State symmetry 2

 Number of active electrons:  10    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             4
 Number of CSFs:            3756   (5268 determinants, 10584 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.356D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.144D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.237D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.193D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 1   1 2 4 6 5 3 6 4 3 5   2 1 2 4 6 3 5 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.982D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.918D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.770D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.354D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.787D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.109D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.706D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.907D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.688D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.688D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 3   1 2 3 1 2 3 1 2 5 4  10 8 6 9 7 3 1 2 810   6 5 4 9 7 3 1 2 4 5
                                        6 9 710 8 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  866  ( 60 closed/active, 488 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    37850
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   52    0  -3177.10990146   -3177.17809015   -0.06818869    0.06133413 0.00018591 0.00066391  0.12E+01      5.78
   2    9   38    0  -3177.17134126   -3177.17322213   -0.00188087    0.07871584 0.00000413 0.00000258  0.17E+00     10.28
   3    8   24    0  -3177.17322467   -3177.17322473   -0.00000006    0.00026843 0.00000001 0.00000013  0.89E-03     14.56
   4    2    4    0  -3177.17322473   -3177.17322473    0.00000000    0.00000002 0.00000000 0.00000002  0.18E-06     15.00

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.26E-08)
                       Final energy:  -3177.17322473
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -3177.296575924598
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.72463349
 One electron energy                         -4396.88349713
 Two electron energy                          1219.58692121
 Virial ratio                                    1.91969604
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -3177.163287842106
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.47014475
 One electron energy                         -4392.32790279
 Two electron energy                          1215.16461494
 Virial ratio                                    1.91972521
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -3177.173146691500
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.36150895
 One electron energy                         -4391.59362464
 Two electron energy                          1214.42047795
 Virial ratio                                    1.91975699
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -3177.135445969624
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.35850588
 One electron energy                         -4393.25639588
 Two electron energy                          1216.12094991
 Virial ratio                                    1.91974688
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -3177.135445969620
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.35850588
 One electron energy                         -4393.25639588
 Two electron energy                          1216.12094991
 Virial ratio                                    1.91974688
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -3177.135445969597
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.35850588
 One electron energy                         -4393.25639588
 Two electron energy                          1216.12094991
 Virial ratio                                    1.91974688
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999963265777
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000036738398
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999995825
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000036756409
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999963265661
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999999977930
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999977814
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999995941
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.000000026245
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 1   1 2 5 3 6 4 4 6 2 5   3 1 2 4 6 5 3 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 5 4   810 6 9 7 3 1 210 8   6 9 7 5 4 3 1 2 4 5
                                        6 9 710 8 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.29289     1  1  s    0.99995
    2.1     2.00000   -83.18893     1  2  s    1.00055
    3.1     2.00000   -14.03033     1  3  s    0.99657
    4.1     2.00000    -5.67085     1  1  d0   1.00003
    5.1     2.00000    -5.67085     1  1  d2-  1.00003
    6.1     2.00000    -5.67085     1  1  d1+  1.00003
    7.1     2.00000    -5.67085     1  1  d1-  1.00003
    8.1     2.00000    -5.67085     1  1  d2+  1.00003
    9.1     1.99996    -2.03425     1  4  s    1.00317
   10.1     0.63918    -0.11675     1  5  s    1.08015
   11.1     0.33321     0.00472     1  5  s   -0.61751    1  7  s   -0.54776    1 10  s    1.71856
    1.2     2.00000   -73.73492     1  1  px   1.00000
    2.2     2.00000   -73.73492     1  1  py   1.00000
    3.2     2.00000   -73.73492     1  1  pz   1.00000
    4.2     2.00000   -10.88547     1  2  pz   1.00011
    5.2     2.00000   -10.88547     1  2  px   1.00011
    6.2     2.00000   -10.88547     1  2  py   1.00011
    7.2     1.99983    -1.17859     1  3  pz   1.00821
    8.2     1.99983    -1.17859     1  3  px   1.00821
    9.2     1.99983    -1.17859     1  3  py   1.00821
   10.2     0.34272    -0.01342     1  4  pz   1.00359
   11.2     0.34272    -0.01342     1  4  px   1.00359
   12.2     0.34272    -0.01342     1  4  py   1.00359
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 220 222000      0.94050596     -0.17961990
 2ab 222000      0.12601574      0.69522658
 2ba 222000     -0.12601574     -0.69522658
 200 222200     -0.16658505      0.01246045
 200 222020     -0.16658505      0.01246045
 200 222002     -0.16658505      0.01246045
 
 Energy:     -3177.29657592  -3177.16328784
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 200 2220aa      0.00000000     -0.00014892      0.00006370      0.99980242
 2aa 222000      0.99979067     -0.00000000     -0.00000000     -0.00000000
 200 222a0a      0.00000000     -0.00605968      0.99978407     -0.00006460
 200 222aa0      0.00000000      0.99978406      0.00605969      0.00014853
 
 Energy:     -3177.17314669  -3177.13544597  -3177.13544597  -3177.13544597
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.69       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.08      4.00      0.03      2.71
 REAL TIME  *        19.58 SEC
 DISK USED  *        43.81 MB (local),        1.41 GB (total)
 SF USED    *        36.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -3177.296576  -0.0
    -3177.163288  -0.0
    -3177.173147  -0.0
    -3177.135446   2.0
    -3177.135446   2.0
    -3177.135446   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 38
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:     1497 conf     2688 CSFs
 N elec internal:    37737 conf   107352 CSFs
 N-1 el internal:    52234 conf   262080 CSFs
 N-2 el internal:    41057 conf   342012 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   5 (   5   0 )
 Number of active  orbitals:        9 (   3   6 )
 Number of external orbitals:      70 (  34  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.29657592
     2     -3177.16328784

 Number of blocks in overlap matrix:   104   Smallest eigenvalue:  0.14D-05
 Number of N-2 electron functions:     390
 Number of N-1 electron functions:  262080

 Number of internal configurations:                53988
 Number of singly external configurations:       9173608
 Number of doubly external configurations:        478666
 Total number of contracted configurations:      9706262
 Total number of uncontracted configurations:  425883552

 Diagonal Coupling coefficients finished.               Storage:24474608 words, CPU-Time:     12.37 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1146079 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.29657592    -0.00000000    -0.27415999  0.17D-01  0.51D-01    15.27
    1     2     2     1.00000000     0.00000000 -3177.16328784    -0.00000000    -0.25970797  0.21D-01  0.45D-01    15.27
    2     1     1     1.06339036    -0.26314633 -3177.55972225    -0.26314633    -0.00538850  0.15D-02  0.70D-03    70.14
    2     2     2     1.06376153    -0.25785919 -3177.42114703    -0.25785919    -0.00599652  0.18D-02  0.77D-03    70.14
    3     1     1     1.06394314    -0.26949532 -3177.56607124    -0.00634899    -0.00044583  0.47D-04  0.86D-04   124.87
    3     2     2     1.06480080    -0.26461068 -3177.42789852    -0.00675149    -0.00036168  0.47D-04  0.65D-04   124.87
    4     1     1     1.06538955    -0.27027599 -3177.56685192    -0.00078067    -0.00010135  0.64D-05  0.20D-04   179.82
    4     2     2     1.06535959    -0.26516863 -3177.42845647    -0.00055795    -0.00007813  0.51D-05  0.16D-04   179.82
    5     1     1     1.06589746    -0.27046700 -3177.56704292    -0.00019101    -0.00004567  0.32D-05  0.86D-05   234.35
    5     2     2     1.06574348    -0.26531970 -3177.42860755    -0.00015108    -0.00004233  0.33D-05  0.81D-05   234.35
    6     1     1     1.06597921    -0.27055313 -3177.56712906    -0.00008613    -0.00002209  0.24D-05  0.35D-05   288.93
    6     2     2     1.06590357    -0.26539519 -3177.42868303    -0.00007549    -0.00002238  0.26D-05  0.35D-05   288.93
    7     1     1     1.06612461    -0.27058501 -3177.56716093    -0.00003187    -0.00000784  0.73D-06  0.13D-05   343.35
    7     2     2     1.06591346    -0.26542691 -3177.42871475    -0.00003172    -0.00000834  0.83D-06  0.14D-05   343.35
    8     1     1     1.06628345    -0.27059792 -3177.56717385    -0.00001292    -0.00000414  0.25D-06  0.75D-06   397.75
    8     2     2     1.06600155    -0.26544016 -3177.42872800    -0.00001325    -0.00000482  0.24D-06  0.95D-06   397.75
    9     1     1     1.06637895    -0.27060493 -3177.56718086    -0.00000701    -0.00000242  0.18D-06  0.41D-06   452.19
    9     2     2     1.06613219    -0.26544809 -3177.42873593    -0.00000793    -0.00000312  0.24D-06  0.55D-06   452.19
   10     1     1     1.06640448    -0.27060833 -3177.56718426    -0.00000340    -0.00000102  0.80D-07  0.17D-06   506.67
   10     2     2     1.06615652    -0.26545223 -3177.42874007    -0.00000414    -0.00000134  0.12D-06  0.24D-06   506.67
   11     1     1     1.06644561    -0.27060986 -3177.56718578    -0.00000152    -0.00000053  0.28D-07  0.96D-07   561.04
   11     2     2     1.06617179    -0.26545422 -3177.42874206    -0.00000199    -0.00000079  0.23D-07  0.16D-06   561.04
   12     1     1     1.06648898    -0.27061074 -3177.56718667    -0.00000089    -0.00000034  0.17D-07  0.62D-07   615.53
   12     2     2     1.06622024    -0.26545548 -3177.42874333    -0.00000126    -0.00000054  0.30D-07  0.10D-06   615.53
   13     1     1     1.06649998    -0.27061120 -3177.56718713    -0.00000046    -0.00000015  0.95D-08  0.27D-07   670.11
   13     2     2     1.06623761    -0.26545618 -3177.42874403    -0.00000070    -0.00000025  0.15D-07  0.50D-07   670.11
   14     1     1     1.06651283    -0.27061142 -3177.56718734    -0.00000022    -0.00000008  0.34D-08  0.15D-07   724.49
   14     2     2     1.06624401    -0.26545654 -3177.42874438    -0.00000035    -0.00000015  0.29D-08  0.32D-07   724.49
   15     1     1     1.06652941    -0.27061155 -3177.56718747    -0.00000013    -0.00000005  0.21D-08  0.10D-07   778.94
   15     2     2     1.06626266    -0.26545678 -3177.42874462    -0.00000024    -0.00000011  0.54D-08  0.21D-07   778.94
   16     1     1     1.06653428    -0.27061162 -3177.56718754    -0.00000007    -0.00000003  0.11D-08  0.49D-08   833.55
   16     2     2     1.06627148    -0.26545691 -3177.42874475    -0.00000014    -0.00000005  0.19D-08  0.11D-07   833.55
   17     1     1     1.06654153    -0.27061164 -3177.56718756    -0.00000002    -0.00000002  0.11D-08  0.41D-08   882.42
   17     2     2     1.06629646    -0.26545708 -3177.42874492    -0.00000017    -0.00000003  0.20D-08  0.44D-08   882.42


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.1%
 S   1.4%  16.6%
 P   0.7%  60.7%  16.6%

 Initialization:   1.5%
 Other:            1.4%

 Total CPU:      882.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/\222000           0.1143086   0.9610230
 22222220222000           0.9283780  -0.1163821
 22222200222200          -0.1440041  -0.0086440
 22222200222002          -0.1440040  -0.0086442
 22222200222020          -0.1440040  -0.0086442

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.965918   -0.059858
 2           0.066130    0.965866

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967766    0.003131
 2           0.003131    0.968123

 Energy contributions of internal configurations for state 1
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   531       0.00007753    -2.02236116       22222220222000                  


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96591828 (fixed)   0.96830254 (relaxed)   0.96776612 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00110908   -0.00002980   -0.25785444
 Singles      0.00959427   -0.01716263   -0.01850566
 Pairs        0.05702106    0.02156835    0.00574847
 Total        1.06772441    0.00437591   -0.27061164
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.29601140
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.11911319
 One electron energy                -4396.20827066
 Two electron energy                 1218.64108309
 Virial quotient                       -0.91993561
 Correlation energy                    -0.27117617
 !MRCI STATE 1.1 Energy             -3177.567187563712

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58555281 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58523210 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58555281 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58465504 (Pople, fixed reference)
 Cluster corrected energies         -3177.58433315 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58465504 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96586638 (fixed)   0.96841380 (relaxed)   0.96812252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00060204   -0.00002984   -0.00085967
 Singles      0.01122680   -0.01613917   -0.01791971
 Pairs        0.05510958   -0.24856051   -0.24667770
 Total        1.06693841   -0.26472952   -0.26545708
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.16385237
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.93369929
 One electron energy                -4391.43136047
 Two electron energy                 1214.00261555
 Virial quotient                       -0.91994492
 Correlation energy                    -0.26489255
 !MRCI STATE 2.1 Energy             -3177.428744919060

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.44647641 (Davidson, fixed reference)
 Cluster corrected energies         -3177.44630642 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.44647641 (Davidson, rotated reference)

 Cluster corrected energies         -3177.44559861 (Pople, fixed reference)
 Cluster corrected energies         -3177.44542813 (Pople, relaxed reference)
 Cluster corrected energies         -3177.44559861 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      150.96       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       901.96    894.86      4.00      0.03      2.71
 REAL TIME  *       933.01 SEC
 DISK USED  *       194.07 MB (local),        5.81 GB (total)
 SF USED    *         1.67 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -3177.58555281  AU                              
 SETTING HLSDIAG(2)     =     -3177.44647641  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 4  Roots:    1   2   3   4
 Number of reference states: 4  Roots:    1   2   3   4

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 38
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:     1371 conf     3756 CSFs
 N elec internal:    37191 conf   177450 CSFs
 N-1 el internal:    51964 conf   480690 CSFs
 N-2 el internal:    38942 conf   662142 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   5 (   5   0 )
 Number of active  orbitals:        9 (   3   6 )
 Number of external orbitals:      70 (  34  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.17314669
     2     -3177.13544597
     3     -3177.13544597
     4     -3177.13544597

 Number of blocks in overlap matrix:   177   Smallest eigenvalue:  0.50D-06
 Number of N-2 electron functions:     784
 Number of N-1 electron functions:  480690

 Number of internal configurations:                88786
 Number of singly external configurations:      16825884
 Number of doubly external configurations:        962376
 Total number of contracted configurations:     17877046
 Total number of uncontracted configurations:  821724328

 Diagonal Coupling coefficients finished.               Storage:52796399 words, CPU-Time:     97.42 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2406886 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.17314669     0.00000000    -0.24662837  0.15D-01  0.41D-01   103.94
    1     2     2     1.00000000     0.00000000 -3177.13544597     0.00000000    -0.25137233  0.69D-02  0.45D-01   103.94
    1     3     3     1.00000000     0.00000000 -3177.13544597     0.00000000    -0.25137279  0.69D-02  0.45D-01   103.94
    1     4     4     1.00000000     0.00000000 -3177.13544597     0.00000000    -0.25135447  0.69D-02  0.45D-01   103.94
    2     1     1     1.05912556    -0.25431801 -3177.42746470    -0.25431801    -0.00655005  0.83D-03  0.89D-03   353.56
    2     2     2     1.05207955    -0.25084821 -3177.38629418    -0.25084821    -0.00620414  0.73D-03  0.99D-03   353.56
    2     3     3     1.05208834    -0.25084220 -3177.38628817    -0.25084220    -0.00620948  0.74D-03  0.99D-03   353.56
    2     4     4     1.05208837    -0.25084210 -3177.38628807    -0.25084210    -0.00620958  0.74D-03  0.99D-03   353.56
    3     1     1     1.06555580    -0.26210721 -3177.43525390    -0.00778920    -0.00045985  0.36D-04  0.72D-04   604.29
    3     2     2     1.05828200    -0.25854955 -3177.39399552    -0.00770134    -0.00069076  0.49D-04  0.15D-03   604.29
    3     3     3     1.05827759    -0.25854886 -3177.39399483    -0.00770665    -0.00069127  0.50D-04  0.15D-03   604.29
    3     4     4     1.05827756    -0.25854885 -3177.39399482    -0.00770675    -0.00069128  0.50D-04  0.15D-03   604.29
    4     1     1     1.06616032    -0.26275307 -3177.43589976    -0.00064587    -0.00003972  0.30D-05  0.68D-05   854.38
    4     2     2     1.06157980    -0.25977130 -3177.39521727    -0.00122175    -0.00019084  0.65D-05  0.50D-04   854.38
    4     3     3     1.06157990    -0.25977097 -3177.39521694    -0.00122211    -0.00019093  0.65D-05  0.50D-04   854.38
    4     4     4     1.06157988    -0.25977096 -3177.39521693    -0.00122212    -0.00019093  0.65D-05  0.50D-04   854.38
    5     1     1     1.06627061    -0.26280834 -3177.43595503    -0.00005527    -0.00000528  0.44D-06  0.12D-05  1103.95
    5     2     2     1.06317500    -0.26019170 -3177.39563767    -0.00042040    -0.00011266  0.50D-05  0.24D-04  1103.95
    5     3     3     1.06317353    -0.26019159 -3177.39563756    -0.00042062    -0.00011268  0.49D-05  0.24D-04  1103.95
    5     4     4     1.06317353    -0.26019158 -3177.39563755    -0.00042062    -0.00011269  0.49D-05  0.24D-04  1103.95
    6     1     1     1.06634093    -0.26281789 -3177.43596458    -0.00000955    -0.00000233  0.16D-06  0.52D-06  1353.45
    6     2     2     1.06435704    -0.26038405 -3177.39583002    -0.00019235    -0.00004833  0.33D-05  0.95D-05  1353.45
    6     3     3     1.06435611    -0.26038397 -3177.39582994    -0.00019237    -0.00004836  0.33D-05  0.95D-05  1353.45
    6     4     4     1.06435599    -0.26038395 -3177.39582992    -0.00019237    -0.00004837  0.33D-05  0.95D-05  1353.45
    7     1     1     1.06631323    -0.26282294 -3177.43596963    -0.00000505    -0.00000129  0.92D-07  0.20D-06  1602.33
    7     2     2     1.06483719    -0.26045256 -3177.39589853    -0.00006851    -0.00001986  0.12D-05  0.44D-05  1602.33
    7     3     3     1.06483735    -0.26045252 -3177.39589849    -0.00006855    -0.00001987  0.12D-05  0.44D-05  1602.33
    7     4     4     1.06483719    -0.26045251 -3177.39589848    -0.00006855    -0.00001988  0.12D-05  0.44D-05  1602.33
    8     1     1     1.06634972    -0.26282461 -3177.43597130    -0.00000167    -0.00000033  0.29D-07  0.62D-07  1852.01
    8     2     2     1.06542714    -0.26049001 -3177.39593598    -0.00003745    -0.00001350  0.90D-06  0.26D-05  1852.01
    8     3     3     1.06542570    -0.26048998 -3177.39593595    -0.00003746    -0.00001351  0.90D-06  0.26D-05  1852.01
    8     4     4     1.06542568    -0.26048997 -3177.39593594    -0.00003747    -0.00001351  0.90D-06  0.26D-05  1852.01
    9     1     1     1.06636368    -0.26282512 -3177.43597181    -0.00000051    -0.00000015  0.96D-08  0.34D-07  2101.03
    9     2     2     1.06591573    -0.26051143 -3177.39595740    -0.00002142    -0.00000695  0.42D-06  0.14D-05  2101.03
    9     3     3     1.06591533    -0.26051141 -3177.39595738    -0.00002143    -0.00000695  0.42D-06  0.14D-05  2101.03
    9     4     4     1.06591521    -0.26051141 -3177.39595738    -0.00002143    -0.00000696  0.42D-06  0.14D-05  2101.03
   10     1     1     1.06635791    -0.26282543 -3177.43597212    -0.00000031    -0.00000010  0.58D-08  0.17D-07  2350.16
   10     2     2     1.06607741    -0.26052092 -3177.39596689    -0.00000949    -0.00000317  0.18D-06  0.73D-06  2350.16
   10     3     3     1.06607730    -0.26052091 -3177.39596688    -0.00000950    -0.00000318  0.18D-06  0.73D-06  2350.16
   10     4     4     1.06607718    -0.26052090 -3177.39596687    -0.00000950    -0.00000318  0.18D-06  0.73D-06  2350.16
   11     1     1     1.06637051    -0.26282555 -3177.43597225    -0.00000013    -0.00000003  0.24D-08  0.55D-08  2599.24
   11     2     2     1.06628308    -0.26052613 -3177.39597210    -0.00000521    -0.00000219  0.13D-06  0.45D-06  2599.24
   11     3     3     1.06628249    -0.26052612 -3177.39597209    -0.00000521    -0.00000219  0.13D-06  0.45D-06  2599.24
   11     4     4     1.06628246    -0.26052612 -3177.39597209    -0.00000521    -0.00000219  0.13D-06  0.45D-06  2599.24
   12     1     1     1.06637051    -0.26282555 -3177.43597225    -0.00000000    -0.00000003  0.24D-08  0.55D-08  2837.38
   12     2     2     1.06684661    -0.26053225 -3177.39597822    -0.00000611    -0.00000100  0.23D-07  0.20D-06  2837.38
   12     3     3     1.06650026    -0.26052944 -3177.39597541    -0.00000332    -0.00000123  0.60D-07  0.27D-06  2837.38
   12     4     4     1.06650003    -0.26052943 -3177.39597540    -0.00000332    -0.00000123  0.60D-07  0.27D-06  2837.38
   13     1     1     1.06637051    -0.26282555 -3177.43597225     0.00000000    -0.00000003  0.24D-08  0.55D-08  3076.21
   13     2     2     1.06695115    -0.26053321 -3177.39597918    -0.00000096    -0.00000005  0.22D-08  0.97D-08  3076.21
   13     3     3     1.06658155    -0.26053107 -3177.39597704    -0.00000163    -0.00000058  0.28D-07  0.14D-06  3076.21
   13     4     4     1.06658039    -0.26053106 -3177.39597703    -0.00000163    -0.00000058  0.28D-07  0.14D-06  3076.21
   14     1     1     1.06637051    -0.26282555 -3177.43597225    -0.00000000    -0.00000003  0.24D-08  0.55D-08  3313.86
   14     2     2     1.06694974    -0.26053326 -3177.39597923    -0.00000006    -0.00000001  0.88D-10  0.16D-08  3313.86
   14     3     3     1.06666167    -0.26053197 -3177.39597794    -0.00000090    -0.00000040  0.18D-07  0.90D-07  3313.86
   14     4     4     1.06665968    -0.26053196 -3177.39597793    -0.00000090    -0.00000041  0.18D-07  0.91D-07  3313.86
   15     1     1     1.06637051    -0.26282555 -3177.43597225     0.00000000    -0.00000003  0.24D-08  0.55D-08  3540.77
   15     2     2     1.06694973    -0.26053326 -3177.39597923    -0.00000000    -0.00000001  0.87D-10  0.16D-08  3540.77
   15     3     3     1.06690463    -0.26053311 -3177.39597908    -0.00000115    -0.00000018  0.74D-08  0.31D-07  3540.77
   15     4     4     1.06689978    -0.26053310 -3177.39597907    -0.00000114    -0.00000019  0.91D-08  0.31D-07  3540.77
   16     1     1     1.06637051    -0.26282555 -3177.43597225     0.00000000    -0.00000003  0.24D-08  0.55D-08  3767.06
   16     2     2     1.06694890    -0.26053328 -3177.39597925    -0.00000001    -0.00000000  0.19D-09  0.89D-09  3767.06
   16     3     3     1.06694200    -0.26053326 -3177.39597923    -0.00000015    -0.00000001  0.16D-09  0.16D-08  3767.06
   16     4     4     1.06692810    -0.26053326 -3177.39597923    -0.00000016    -0.00000001  0.34D-09  0.19D-08  3767.06


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.8%  10.4%
 P   0.5%  63.1%  20.7%

 Initialization:   2.6%
 Other:            1.3%

 Total CPU:     3767.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222//222000           0.9681802   0.0000000   0.0000000  -0.0000000
 222222002220//           0.0000000   0.0226324   0.0508736   0.9663337
 22222200222//0          -0.0000000   0.9602054  -0.1209452  -0.0161260
 22222200222/0/          -0.0000000   0.1198967   0.9589953  -0.0532845

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968378   -0.000000   -0.000000    0.000000
 2           0.000000    0.960393    0.119920    0.022637
 3           0.000000   -0.120969    0.959183    0.050884
 4          -0.000000   -0.016129   -0.053295    0.966523

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968378    0.000000    0.000000    0.000000
 2           0.000000    0.968116   -0.000000   -0.000001
 3           0.000000   -0.000000    0.968119    0.000006
 4           0.000000   -0.000001    0.000006    0.968125


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96837834 (fixed)   0.96838018 (relaxed)   0.96837834 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000402   -0.00000180   -0.23149231
 Singles      0.01282253   -0.01596904   -0.01813402
 Pairs        0.05354824   -0.00000000   -0.01319922
 Total        1.06637479   -0.01597085   -0.26282555
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.17314669
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.88845842
 One electron energy                -4391.13561540
 Two electron energy                 1213.69964316
 Virial quotient                       -0.91995906
 Correlation energy                    -0.26282555
 !MRCI STATE 1.1 Energy             -3177.435972245016

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.45341724 (Davidson, fixed reference)
 Cluster corrected energies         -3177.45341617 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.45341724 (Davidson, rotated reference)

 Cluster corrected energies         -3177.45231511 (Pople, fixed reference)
 Cluster corrected energies         -3177.45231405 (Pople, relaxed reference)
 Cluster corrected energies         -3177.45231511 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96039300 (fixed)   0.96811768 (relaxed)   0.96811569 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000429   -0.00000139   -0.22806813
 Singles      0.00522541   -0.01137040   -0.01193297
 Pairs        0.06172378   -0.00582591   -0.02053217
 Total        1.06695348   -0.01719770   -0.26053328
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.13544597
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.85976897
 One electron energy                -4392.61342034
 Two electron energy                 1215.21744110
 Virial quotient                       -0.91995512
 Correlation energy                    -0.26053328
 !MRCI STATE 2.1 Energy             -3177.395979246635

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.41342285 (Davidson, fixed reference)
 Cluster corrected energies         -3177.41342171 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.41342285 (Davidson, rotated reference)

 Cluster corrected energies         -3177.41232843 (Pople, fixed reference)
 Cluster corrected energies         -3177.41232729 (Pople, relaxed reference)
 Cluster corrected energies         -3177.41232843 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95918271 (fixed)   0.96812082 (relaxed)   0.96811882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000429   -0.00000139   -0.22125620
 Singles      0.00522497   -0.01136994   -0.01193245
 Pairs        0.06171732   -0.01309590   -0.02734462
 Total        1.06694657   -0.02446723   -0.26053326
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.13544597
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.85924419
 One electron energy                -4392.61286668
 Two electron energy                 1215.21688745
 Virial quotient                       -0.91995526
 Correlation energy                    -0.26053326
 !MRCI STATE 3.1 Energy             -3177.395979234137

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.41342104 (Davidson, fixed reference)
 Cluster corrected energies         -3177.41341990 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.41342104 (Davidson, rotated reference)

 Cluster corrected energies         -3177.41232664 (Pople, fixed reference)
 Cluster corrected energies         -3177.41232551 (Pople, relaxed reference)
 Cluster corrected energies         -3177.41232664 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96652251 (fixed)   0.96812712 (relaxed)   0.96812513 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000429   -0.00000139   -0.00038892
 Singles      0.00522491   -0.01136984   -0.01193269
 Pairs        0.06170348   -0.24874958   -0.24821164
 Total        1.06693268   -0.26012081   -0.26053326
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.13544597
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.85942230
 One electron energy                -4392.61303985
 Two electron energy                 1215.21706062
 Virial quotient                       -0.91995521
 Correlation energy                    -0.26053326
 !MRCI STATE 4.1 Energy             -3177.395979231258

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.41341742 (Davidson, fixed reference)
 Cluster corrected energies         -3177.41341627 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.41341742 (Davidson, rotated reference)

 Cluster corrected energies         -3177.41232306 (Pople, fixed reference)
 Cluster corrected energies         -3177.41232193 (Pople, relaxed reference)
 Cluster corrected energies         -3177.41232306 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      703.08       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4835.12   3933.15    894.86      4.00      0.03      2.71
 REAL TIME  *      4936.48 SEC
 DISK USED  *       746.20 MB (local),       21.99 GB (total)
 SF USED    *         5.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =     -3177.45341724  AU                              
 SETTING HLSDIAG(4)     =     -3177.41342285  AU                              
 SETTING HLSDIAG(5)     =     -3177.41342104  AU                              
 SETTING HLSDIAG(6)     =     -3177.41341742  AU                              


         HLSDIAG
    -3177.585553
    -3177.446476
    -3177.453417
    -3177.413423
    -3177.413421
    -3177.413417
                                                  

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

 Time for Seward_LS:      30.79 sec

        5931683. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1453 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     30.79 sec, REAL time:     30.96 sec


 SORTLS1 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.04 sec, REAL time:      0.12 sec
 SORTLS2 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:   140.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   140.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      133.92       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      703.08       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4867.03     31.87   3933.15    894.86      4.00      0.03      2.71
 REAL TIME  *      4968.79 SEC
 DISK USED  *       746.25 MB (local),       22.31 GB (total)
 SF USED    *         5.99 GB
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:  -3177.567188  -3177.428745
 Replaced energies:  -3177.585553  -3177.446476

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   4

 Original energies:  -3177.435972  -3177.395979  -3177.395979  -3177.395979
 Replaced energies:  -3177.453417  -3177.413423  -3177.413421  -3177.413417



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -3177.58555281

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00      -0.00     -73.42       9.25       1.23       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -9.17     -73.33       4.07      -0.00      -2.45      -5.50    -104.50

    2   2.1  0.0  0.0       0.00   30523.74      -0.00      11.17      -1.41      -0.19       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       1.39      11.15      -0.62       0.00       0.37       0.84      15.90

    3   1.1  1.0  1.0      -0.00      -0.00   29000.41       0.00       0.00       0.00       0.00     -10.39       1.31       0.17
                           -0.00       0.00       0.00      -0.35      -0.78     -14.79       0.00       1.30      10.38      -0.58

    4   2.1  1.0  1.0     -73.42      11.17       0.00   37778.16       0.00       0.00      10.39      -0.00       2.07     -15.54
                            9.17      -1.39       0.35       0.00    -175.58       9.24      -1.30      -0.00      -6.85    -123.21

    5   3.1  1.0  1.0       9.25      -1.41       0.00       0.00   37778.56       0.00      -1.31      -2.07      -0.00    -123.37
                           73.33     -11.15       0.78     175.58      -0.00      -4.11     -10.38       6.85       0.00      15.40

    6   4.1  1.0  1.0       1.23      -0.19       0.00       0.00       0.00   37779.35      -0.17      15.54     123.37       0.00
                           -4.07       0.62      14.79      -9.24       4.11       0.00       0.58     123.21     -15.40       0.00

    7   1.1  1.0  0.0       0.00       0.00       0.00      10.39      -1.31      -0.17   29000.41       0.00       0.00       0.00
                            0.00      -0.00      -0.00       1.30      10.38      -0.58       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00     -10.39      -0.00      -2.07      15.54       0.00   37778.16       0.00       0.00
                            2.45      -0.37      -1.30       0.00      -6.85    -123.21      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00       1.31       2.07      -0.00     123.37       0.00       0.00   37778.56       0.00
                            5.50      -0.84     -10.38       6.85      -0.00      15.40      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00       0.17     -15.54    -123.37       0.00       0.00       0.00       0.00   37779.35
                          104.50     -15.90       0.58     123.21     -15.40      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      10.39      -1.31      -0.17
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.30      10.38      -0.58

   12   2.1  1.0 -1.0     -73.42      11.17       0.00       0.00       0.00       0.00     -10.39      -0.00      -2.07      15.54
                           -9.17       1.39      -0.00      -0.00      -0.00      -0.00      -1.30       0.00      -6.85    -123.21

   13   3.1  1.0 -1.0       9.25      -1.41       0.00       0.00       0.00       0.00       1.31       2.07      -0.00     123.37
                          -73.33      11.15      -0.00      -0.00      -0.00      -0.00     -10.38       6.85      -0.00      15.40

   14   4.1  1.0 -1.0       1.23      -0.19       0.00       0.00       0.00       0.00       0.17     -15.54    -123.37       0.00
                            4.07      -0.62      -0.00      -0.00      -0.00      -0.00       0.58     123.21     -15.40      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.0  0.0      -0.00     -73.42       9.25       1.23
                           -0.00       9.17      73.33      -4.07

    2   2.1  0.0  0.0      -0.00      11.17      -1.41      -0.19
                            0.00      -1.39     -11.15       0.62

    3   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    4   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    6   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0       0.00     -10.39       1.31       0.17
                            0.00       1.30      10.38      -0.58

    8   2.1  1.0  0.0      10.39      -0.00       2.07     -15.54
                           -1.30      -0.00      -6.85    -123.21

    9   3.1  1.0  0.0      -1.31      -2.07      -0.00    -123.37
                          -10.38       6.85       0.00      15.40

   10   4.1  1.0  0.0      -0.17      15.54     123.37       0.00
                            0.58     123.21     -15.40       0.00

   11   1.1  1.0 -1.0   29000.41       0.00       0.00       0.00
                           -0.00       0.35       0.78      14.79

   12   2.1  1.0 -1.0       0.00   37778.16       0.00       0.00
                           -0.35      -0.00     175.58      -9.24

   13   3.1  1.0 -1.0       0.00       0.00   37778.56       0.00
                           -0.78    -175.58       0.00       4.11

   14   4.1  1.0 -1.0       0.00       0.00       0.00   37779.35
                          -14.79       9.24      -4.11      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by  -3177.58555281 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000      -0.000    -103.834      13.078       1.744       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -2.447

    2    1  |0 0>               0.000   30523.742      -0.000      15.795      -1.989      -0.265       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.372

    1    1  |1 1>+             -0.000      -0.000   29000.406       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       1.834

    2    1  |1 1>+           -103.834      15.795       0.000   37778.158       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -1.834       0.000

    3    1  |1 1>+             13.078      -1.989       0.000       0.000   37778.556       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -14.673       9.684

    4    1  |1 1>+              1.744      -0.265       0.000       0.000       0.000   37779.351       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.816     174.251

    1    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000   29000.406       0.000
                                0.000      -0.000       0.000       1.834      14.673      -0.816       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000   37778.158
                                2.447      -0.372      -1.834       0.000      -9.684    -174.251      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                5.502      -0.838     -14.673       9.684       0.000      21.785      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                              104.495     -15.896       0.816     174.251     -21.785       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -14.691
                               -0.000       0.000       0.000      -0.346      -0.778     -14.785       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      14.691       0.000
                               12.966      -1.972       0.346       0.000    -175.581       9.242      -0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -1.851      -2.929
                              103.700     -15.774       0.778     175.581      -0.000      -4.113      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.247      21.976
                               -5.760       0.875      14.785      -9.242       4.113       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -5.502    -104.495       0.000     -12.966    -103.700       5.760

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.838      15.896      -0.000       1.972      15.774      -0.875

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               14.673      -0.816       0.000      -0.346      -0.778     -14.785

    2    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000
                               -9.684    -174.251       0.346       0.000    -175.581       9.242

    3    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      21.785       0.778     175.581      -0.000      -4.113

    4    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000
                              -21.785       0.000      14.785      -9.242       4.113       0.000

    1    1  |1 0>               0.000       0.000       0.000      14.691      -1.851      -0.247
                                0.000       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000     -14.691       0.000      -2.929      21.976
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>           37778.556       0.000       1.851       2.929       0.000     174.470
                                0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000   37779.351       0.247     -21.976    -174.470       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              1.851       0.247   29000.406       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              2.929     -21.976       0.000   37778.158       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000    -174.470       0.000       0.000   37778.556       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-            174.470       0.000       0.000       0.000       0.000   37779.351
                                0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -3177.58555681    -0.00000400       -0.88      0.00000000        0.00      0.0000
    2 -3177.45341747     0.13213534    29000.36      0.13213934    29001.23      3.5957
    3 -3177.45341747     0.13213534    29000.36      0.13213934    29001.23      3.5957
    4 -3177.45341747     0.13213534    29000.36      0.13213934    29001.23      3.5957
    5 -3177.44647691     0.13907590    30523.63      0.13907990    30524.51      3.7846
    6 -3177.41501861     0.17053419    37427.93      0.17053820    37428.81      4.6406
    7 -3177.41422305     0.17132976    37602.54      0.17133376    37603.41      4.6622
    8 -3177.41422125     0.17133156    37602.93      0.17133556    37603.81      4.6623
    9 -3177.41422034     0.17133247    37603.13      0.17133647    37604.01      4.6623
   10 -3177.41262070     0.17293211    37954.21      0.17293611    37955.09      4.7058
   11 -3177.41262061     0.17293219    37954.23      0.17293620    37955.11      4.7058
   12 -3177.41261879     0.17293402    37954.63      0.17293802    37955.51      4.7059
   13 -3177.41261789     0.17293492    37954.83      0.17293892    37955.71      4.7059
   14 -3177.41261750     0.17293531    37954.91      0.17293931    37955.79      4.7059

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99998827 -0.00000000  0.00000000 -0.00000000  0.00002372  0.00484361  0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000438 -0.00000000 -0.00000000 -0.00000000  0.99999202 -0.00399422 -0.00000002  0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.07925708  0.98934729  0.12208326  0.00000000 -0.00000001  0.00003903 -0.00030450
                          -0.00000000  0.00000412  0.00005145  0.00000013 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00277425 -0.00020660 -0.00002419  0.00006188 -0.00228787 -0.57331005  0.08844342  0.01150001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00034942 -0.00167891 -0.00016738  0.00026648  0.00028813  0.07215756  0.70106589 -0.00236817
                          -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00004659  0.00028984 -0.00018489  0.00168651  0.00003844  0.00960545  0.00234792  0.70026373
                           0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000041 -0.00000893 -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.99030839  0.09215274 -0.10388087  0.00000000 -0.00000000  0.00243027 -0.00013617

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00006539  0.00017784  0.00001856  0.00171181  0.00005392  0.01351366  0.03957119  0.70700028

   3    1  |1 0>          -0.00000000 -0.00000001 -0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00014701 -0.00015972  0.00171182 -0.00000410  0.00012130  0.03035029 -0.01637814  0.00010282

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00279184  0.00000424 -0.00009055 -0.00003988  0.00230205  0.57565879 -0.00006349 -0.01650889

   1    1  |1 1>-         -0.00000000  0.00000044  0.00000529  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.11402490 -0.11266712  0.98706561  0.00000000  0.00000000 -0.00014212 -0.00241163

   2    1  |1 1>-          0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00034642 -0.00168813 -0.00019721  0.00017250  0.00028570  0.07158679  0.70083819 -0.04136495

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00277064  0.00022021 -0.00006967 -0.00003339  0.00228465  0.57215206 -0.08754689  0.00029321

   4    1  |1 1>-         -0.00000000  0.00000001  0.00000009  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00015389  0.00016461 -0.00169764 -0.00021279 -0.00012678 -0.03174482 -0.00044101 -0.08748619

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |0 0>          -0.00000002  0.00000210 -0.00000001 -0.00000000  0.00000005  0.00000398
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000004 -0.00000154  0.00000002  0.00000001 -0.00000019 -0.00000314
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00241518 -0.00000002  0.00000003  0.00000050  0.00000259  0.00000004
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00001915  0.75823329 -0.08816440  0.01234392 -0.00001749  0.28373413
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.01164650  0.07867631  0.70186871 -0.00233944  0.01250026 -0.06468505
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.08830124  0.00221817 -0.00235958 -0.70265197  0.08832254  0.01420268
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00005644 -0.00000000  0.00000140  0.00000022 -0.00000007  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00005523 -0.01805342 -0.03479411  0.70485088  0.00004339 -0.00691524

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.70673492  0.03149628 -0.01668530  0.00000545  0.70536629 -0.02283335

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.03711785  0.13412788  0.00004842  0.01685398  0.03248318  0.80475093

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00030177  0.00000001 -0.00000005  0.00000398 -0.00000032  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00014301 -0.09456767 -0.70032215 -0.03656773 -0.00014798 -0.03543420

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.03895638  0.62494314 -0.08753061  0.00029441 -0.03423006 -0.51386730

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.69977977 -0.00906586  0.00014637  0.08767138  0.70162269 -0.04000800


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -3177.58555681     -0.00000400       -0.88      0.00000000        0.00      0.0000
     2   1  -3177.45341747      0.13213534    29000.36      0.13213934    29001.23      3.5957
     3   1  -3177.45341747      0.13213534    29000.36      0.13213934    29001.23      3.5957
     4   1  -3177.45341747      0.13213534    29000.36      0.13213934    29001.23      3.5957
     5   1  -3177.44647691      0.13907590    30523.63      0.13907990    30524.51      3.7846
     6   1  -3177.41501861      0.17053419    37427.93      0.17053820    37428.81      4.6406
     7   1  -3177.41422305      0.17132976    37602.54      0.17133376    37603.41      4.6622
     8   1  -3177.41422125      0.17133156    37602.93      0.17133556    37603.81      4.6623
     9   1  -3177.41422034      0.17133247    37603.13      0.17133647    37604.01      4.6623
    10   1  -3177.41262070      0.17293211    37954.21      0.17293611    37955.09      4.7058
    11   1  -3177.41262061      0.17293219    37954.23      0.17293620    37955.11      4.7058
    12   1  -3177.41261879      0.17293402    37954.63      0.17293802    37955.51      4.7059
    13   1  -3177.41261789      0.17293492    37954.83      0.17293892    37955.71      4.7059
    14   1  -3177.41261750      0.17293531    37954.91      0.17293931    37955.79      4.7059

 E0 =  -3177.58555281 is the energy of the lowest zeroth-order state
 E1 =  -3177.58555681 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99998827 -0.00000000  0.00000000 -0.00000000  0.00002372  0.00484361  0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000438 -0.00000000 -0.00000000 -0.00000000  0.99999202 -0.00399422 -0.00000002  0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     1    1  |1 1>+       0.00000000 -0.07925708  0.98934729  0.12208326  0.00000000 -0.00000001  0.00003903 -0.00030450
                               -0.00000000  0.00000412  0.00005145  0.00000013 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     2    1  |1 1>+       0.00277425 -0.00020660 -0.00002419  0.00006188 -0.00228787 -0.57331005  0.08844342  0.01150001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     3    1  |1 1>+      -0.00034942 -0.00167891 -0.00016738  0.00026648  0.00028813  0.07215756  0.70106589 -0.00236817
                               -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     4    1  |1 1>+      -0.00004659  0.00028984 -0.00018489  0.00168651  0.00003844  0.00960545  0.00234792  0.70026373
                                0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     1    1  |1 0>        0.00000000 -0.00000041 -0.00000893 -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.99030839  0.09215274 -0.10388087  0.00000000 -0.00000000  0.00243027 -0.00013617

  8  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00006539  0.00017784  0.00001856  0.00171181  0.00005392  0.01351366  0.03957119  0.70700028

  9  1     3    1  |1 0>       -0.00000000 -0.00000001 -0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00014701 -0.00015972  0.00171182 -0.00000410  0.00012130  0.03035029 -0.01637814  0.00010282

 10  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00279184  0.00000424 -0.00009055 -0.00003988  0.00230205  0.57565879 -0.00006349 -0.01650889

 11  1     1    1  |1 1>-      -0.00000000  0.00000044  0.00000529  0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.11402490 -0.11266712  0.98706561  0.00000000  0.00000000 -0.00014212 -0.00241163

 12  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00034642 -0.00168813 -0.00019721  0.00017250  0.00028570  0.07158679  0.70083819 -0.04136495

 13  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00277064  0.00022021 -0.00006967 -0.00003339  0.00228465  0.57215206 -0.08754689  0.00029321

 14  1     4    1  |1 1>-      -0.00000000  0.00000001  0.00000009  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00015389  0.00016461 -0.00169764 -0.00021279 -0.00012678 -0.03174482 -0.00044101 -0.08748619


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |0 0>       -0.00000002  0.00000210 -0.00000001 -0.00000000  0.00000005  0.00000398
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000004 -0.00000154  0.00000002  0.00000001 -0.00000019 -0.00000314
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     1    1  |1 1>+      -0.00241518 -0.00000002  0.00000003  0.00000050  0.00000259  0.00000004
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     2    1  |1 1>+      -0.00001915  0.75823329 -0.08816440  0.01234392 -0.00001749  0.28373413
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  5  1     3    1  |1 1>+       0.01164650  0.07867631  0.70186871 -0.00233944  0.01250026 -0.06468505
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     4    1  |1 1>+      -0.08830124  0.00221817 -0.00235958 -0.70265197  0.08832254  0.01420268
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00005644 -0.00000000  0.00000140  0.00000022 -0.00000007  0.00000000

  8  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00005523 -0.01805342 -0.03479411  0.70485088  0.00004339 -0.00691524

  9  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.70673492  0.03149628 -0.01668530  0.00000545  0.70536629 -0.02283335

 10  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.03711785  0.13412788  0.00004842  0.01685398  0.03248318  0.80475093

 11  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00030177  0.00000001 -0.00000005  0.00000398 -0.00000032  0.00000000

 12  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00014301 -0.09456767 -0.70032215 -0.03656773 -0.00014798 -0.03543420

 13  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.03895638  0.62494314 -0.08753061  0.00029441 -0.03423006 -0.51386730

 14  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.69977977 -0.00906586  0.00014637  0.08767138  0.70162269 -0.04000800



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.63%   97.88%    1.49%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   32.87%    0.78%    0.01%
  5  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.52%   49.15%    0.00%
  6  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%   49.04%
  7  1     1    1  |1 0>          0.00%   98.07%    0.85%    1.08%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.16%   49.98%
  9  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.09%    0.03%    0.00%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.14%    0.00%    0.03%
 11  1     1    1  |1 1>-         0.00%    1.30%    1.27%   97.43%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.51%   49.12%    0.17%
 13  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   32.74%    0.77%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.10%    0.00%    0.77%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%   57.49%    0.78%    0.02%    0.00%    8.05%
  5  1     3    1  |1 1>+         0.01%    0.62%   49.26%    0.00%    0.02%    0.42%
  6  1     4    1  |1 1>+         0.78%    0.00%    0.00%   49.37%    0.78%    0.02%
  7  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.03%    0.12%   49.68%    0.00%    0.00%
  9  1     3    1  |1 0>         49.95%    0.10%    0.03%    0.00%   49.75%    0.05%
 10  1     4    1  |1 0>          0.14%    1.80%    0.00%    0.03%    0.11%   64.76%
 11  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.89%   49.05%    0.13%    0.00%    0.13%
 13  1     3    1  |1 1>-         0.15%   39.06%    0.77%    0.00%    0.12%   26.41%
 14  1     4    1  |1 1>-        48.97%    0.01%    0.00%    0.77%   49.23%    0.16%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      133.92       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      703.08       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     22233.76  17366.73     31.87   3933.15    894.86      4.00      0.03      2.71
 REAL TIME  *     22459.78 SEC
 DISK USED  *       746.25 MB (local),       22.31 GB (total)
 SF USED    *         5.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -3177.412617500275

              CI              CI           MULTI         RHF-SCF
  -3177.39597923  -3177.42874492  -3177.13544597  -3177.27784113
 **********************************************************************************************************************************
 Molpro calculation terminated
