
 Working directory              : /wrk/irikura/molpro.z44Ao8yxjq/
 Global scratch directory       : /wrk/irikura/molpro.z44Ao8yxjq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.z44Ao8yxjq/

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
       weight,99,1
     wf,sym=1,spin=2;state,4;
       weight,all,1
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
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 06-Mar-24          TIME: 10:11:28  
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

     17.302 MB (compressed) written to integral file ( 17.4%)

     Node minimum: 0.262 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     162345.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     162345      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ    10953812. AND WROTE       36458. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.09 SEC
 SORT2 READ     1037967. AND WROTE     4879686. INTEGRALS IN    120 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         2.84      2.63
 REAL TIME  *         3.92 SEC
 DISK USED  *        29.46 MB (local),     1011.77 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   10   9

 Initial occupancy:  10   9

 NELEC=   38   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -3177.27784108   -3177.27784108     0.00D+00     0.19D+00     0     0       0.00      0.00    start
   2    -3177.27784113      -0.00000005     0.20D-04     0.52D-04     1     0       0.01      0.01    diag
   3    -3177.27784113      -0.00000000     0.43D-05     0.18D-04     2     0       0.00      0.01    diag
   4    -3177.27784113      -0.00000000     0.89D-06     0.95D-05     3     0       0.01      0.02    diag
   5    -3177.27784113      -0.00000000     0.80D-07     0.54D-05     4     0       0.00      0.02    diag
   6    -3177.27784113      -0.00000000     0.32D-07     0.28D-05     5     0       0.00      0.02    diag
   7    -3177.27784113      -0.00000000     0.77D-08     0.14D-06     0     0       0.01      0.03    diag

 Final occupancy:  10   9

 !RHF STATE 1.1 Energy              -3177.277841133264
  RHF One-electron energy           -4396.585097306510
  RHF Two-electron energy            1219.307256173246
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
    5.1     2.00000    -5.58737     1  1  d2-  0.99686
    6.1     2.00000    -5.58737     1  1  d1+  0.98033
    7.1     2.00000    -5.58737     1  1  d1-  0.98184
    8.1     2.00000    -5.58737     1  1  d2+  0.99809
    9.1     2.00000    -1.94831     1  4  s    1.00244
   10.1     2.00000    -0.18122     1  5  s    0.99877
    1.2     2.00000   -73.65117     1  1  px   0.99997
    2.2     2.00000   -73.65117     1  1  py   0.99995
    3.2     2.00000   -73.65117     1  1  pz   0.99996
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
 CPU TIMES  *         2.88      0.03      2.63
 REAL TIME  *         3.96 SEC
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
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.117D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.220D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.197D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.997D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 1   1 2 4 6 5 3 6 4 3 5   2 1 2 4 6 3 5 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.101D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.121D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.411D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.802D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.108D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.109D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.766D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.988D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.680D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.680D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 3   1 2 3 1 2 3 1 2 5 4  10 8 6 9 7 3 1 2 810   6 5 4 9 7 3 1 2 4 5
                                        6 9 710 8 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.95192   0.00962
 Weight factors for state symmetry  2:    0.00962   0.00962   0.00962   0.00962
 
 Number of orbital rotations:  866  ( 60 closed/active, 488 closed/virtual, 0 active/active, 318 active/virtual )
 Total number of variables:    37850
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   22   88    0  -3177.26931736   -3177.29610442   -0.02678706    0.00559167 0.00011334 0.00003020  0.15E+01     10.43
   2    9   40    0  -3177.29417450   -3177.29504718   -0.00087267    0.01464758 0.00001090 0.00005313  0.25E+00     14.88
   3    9   34    0  -3177.29504930   -3177.29504933   -0.00000004    0.00003007 0.00000000 0.00000007  0.25E-02     20.31
   4    2    4    0  -3177.29504933   -3177.29504933    0.00000000    0.00000000 0.00000000 0.00000001  0.11E-06     20.68

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.37E-08)
                       Final energy:  -3177.29504933
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -3177.303950215626
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.57521100
 One electron energy                         -4396.55516839
 Two electron energy                          1219.25121817
 Virial ratio                                    1.91973796
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -3177.111358581237
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.98605979
 One electron energy                         -4395.40190282
 Two electron energy                          1218.29054424
 Virial ratio                                    1.91957284
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -3177.144203512833
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.84999194
 One electron energy                         -4394.67395079
 Two electron energy                          1217.52974728
 Virial ratio                                    1.91961857
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -3177.112832419590
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.77295375
 One electron energy                         -4395.96900127
 Two electron energy                          1218.85616885
 Virial ratio                                    1.91962999
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -3177.112832419585
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.77295375
 One electron energy                         -4395.96900127
 Two electron energy                          1218.85616885
 Virial ratio                                    1.91962999
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -3177.112832419555
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.77295375
 One electron energy                         -4395.96900127
 Two electron energy                          1218.85616886
 Virial ratio                                    1.91962999
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999997871852
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000002163822
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999964327
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000002150707
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999997871769
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999999977524
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999977441
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999964409
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.000000058149
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 3 6 5 1 1   1 2 6 4 5 3 1 6 4 5   3 2 2 4 6 5 3 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   1 2 3 1 2 3 1 2 5 4   810 6 9 7 3 1 210 8   6 9 7 5 4 3 1 2 4 5
                                        6 9 710 8 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.21034     1  1  s    0.99995
    2.1     2.00000   -83.10693     1  2  s    1.00054
    3.1     2.00000   -13.94805     1  3  s    0.99673
    4.1     2.00000    -5.58877     1  1  d0   1.00001
    5.1     2.00000    -5.58877     1  1  d1+  1.00001
    6.1     2.00000    -5.58877     1  1  d2-  1.00001
    7.1     2.00000    -5.58877     1  1  d1-  1.00001
    8.1     2.00000    -5.58877     1  1  d2+  1.00001
    9.1     1.99989    -1.95673     1  4  s    1.00232
   10.1     1.76141    -0.16385     1  5  s    1.06650
   11.1     0.02305     0.10682     1  4  s   -0.60090    1  6  s   -1.53048    1  7  s    1.12744
    1.2     2.00000   -73.65243     1  1  px   1.00000
    2.2     2.00000   -73.65243     1  1  py   1.00000
    3.2     2.00000   -73.65243     1  1  pz   1.00000
    4.2     2.00000   -10.80156     1  2  pz   0.99989
    5.2     2.00000   -10.80156     1  2  px   0.99989
    6.2     2.00000   -10.80156     1  2  py   0.99989
    7.2     1.99952    -1.10033     1  3  pz   1.00076
    8.2     1.99952    -1.10033     1  3  px   1.00076
    9.2     1.99952    -1.10033     1  3  py   1.00076
   10.2     0.07236     0.05792     1  4  pz   0.98153    1  5  pz   0.29815
   11.2     0.07236     0.05792     1  4  px   0.98153    1  5  px   0.29815
   12.2     0.07236     0.05792     1  4  py   0.98153    1  5  py   0.29815
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 220 222000      0.95629609      0.03664449
 2ab 222000      0.00073183      0.69308903
 2ba 222000     -0.00073183     -0.69308903
 200 222200     -0.16608786      0.08293524
 200 222020     -0.16608786      0.08293524
 200 222002     -0.16608786      0.08293524
 202 222000     -0.04048490     -0.12432849
 
 Energy:     -3177.30395022  -3177.11135858
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 200 2220aa      0.00000000      0.00015012     -0.00018856      0.99948811
 200 222aa0      0.00000000      0.99948706      0.00145810     -0.00014984
 200 222a0a      0.00000000     -0.00145807      0.99948706      0.00018878
 2aa 222000      0.99948262     -0.00000000     -0.00000000     -0.00000000
 
 Energy:     -3177.14420351  -3177.11283242  -3177.11283242  -3177.11283242
 


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
 CPU TIMES  *         8.24      5.34      0.03      2.63
 REAL TIME  *        25.09 SEC
 DISK USED  *        43.81 MB (local),        1.41 GB (total)
 SF USED    *        36.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -3177.303950  -0.0
    -3177.111359  -0.0
    -3177.144204  -0.0
    -3177.112832   2.0
    -3177.112832   2.0
    -3177.112832   2.0
                                                  


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
     1     -3177.30395022
     2     -3177.11135858

 Number of blocks in overlap matrix:   104   Smallest eigenvalue:  0.15D-05
 Number of N-2 electron functions:     391
 Number of N-1 electron functions:  262080

 Number of internal configurations:                53988
 Number of singly external configurations:       9173608
 Number of doubly external configurations:        479927
 Total number of contracted configurations:      9707523
 Total number of uncontracted configurations:  425883552

 Diagonal Coupling coefficients finished.               Storage:24474781 words, CPU-Time:     12.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1146264 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.30395022     0.00000000    -0.26798176  0.12D-01  0.48D-01    15.67
    1     2     2     1.00000000     0.00000000 -3177.11135858     0.00000000    -0.29299139  0.60D-01  0.47D-01    15.67
    2     1     1     1.05668648    -0.25959232 -3177.56354253    -0.25959232    -0.00460790  0.61D-03  0.61D-03    69.70
    2     2     2     1.09720172    -0.28047397 -3177.39183255    -0.28047397    -0.00761266  0.26D-02  0.97D-03    69.70
    3     1     1     1.06017021    -0.26474757 -3177.56869779    -0.00515525    -0.00027961  0.19D-04  0.54D-04   123.67
    3     2     2     1.10029831    -0.28900152 -3177.40036010    -0.00852756    -0.00048463  0.13D-03  0.80D-04   123.67
    4     1     1     1.06135090    -0.26522470 -3177.56917491    -0.00047713    -0.00007387  0.40D-05  0.14D-04   177.80
    4     2     2     1.10407988    -0.28974242 -3177.40110100    -0.00074090    -0.00010527  0.87D-05  0.21D-04   177.80
    5     1     1     1.06181183    -0.26537917 -3177.56932939    -0.00015447    -0.00003838  0.26D-05  0.68D-05   231.98
    5     2     2     1.10507890    -0.28996066 -3177.40131924    -0.00021824    -0.00006241  0.48D-05  0.12D-04   231.98
    6     1     1     1.06193325    -0.26544899 -3177.56939920    -0.00006982    -0.00001715  0.11D-05  0.26D-05   285.73
    6     2     2     1.10475262    -0.29007652 -3177.40143510    -0.00011585    -0.00003379  0.42D-05  0.51D-05   285.73
    7     1     1     1.06201704    -0.26547367 -3177.56942389    -0.00002469    -0.00000620  0.41D-06  0.99D-06   339.58
    7     2     2     1.10476548    -0.29012240 -3177.40148098    -0.00004588    -0.00001138  0.11D-05  0.20D-05   339.58
    8     1     1     1.06218775    -0.26548465 -3177.56943487    -0.00001098    -0.00000379  0.29D-06  0.60D-06   393.34
    8     2     2     1.10475064    -0.29014136 -3177.40149994    -0.00001896    -0.00000714  0.34D-06  0.13D-05   393.34
    9     1     1     1.06227595    -0.26549097 -3177.56944119    -0.00000632    -0.00000210  0.12D-06  0.33D-06   447.20
    9     2     2     1.10492974    -0.29015364 -3177.40151223    -0.00001229    -0.00000484  0.37D-06  0.82D-06   447.20
   10     1     1     1.06228522    -0.26549387 -3177.56944409    -0.00000290    -0.00000086  0.50D-07  0.13D-06   501.13
   10     2     2     1.10500834    -0.29015993 -3177.40151851    -0.00000629    -0.00000196  0.18D-06  0.34D-06   501.13
   11     1     1     1.06234130    -0.26549525 -3177.56944547    -0.00000138    -0.00000052  0.39D-07  0.80D-07   555.16
   11     2     2     1.10496977    -0.29016294 -3177.40152152    -0.00000301    -0.00000124  0.51D-07  0.24D-06   555.16
   12     1     1     1.06238170    -0.26549611 -3177.56944633    -0.00000086    -0.00000032  0.17D-07  0.51D-07   609.04
   12     2     2     1.10502906    -0.29016499 -3177.40152357    -0.00000205    -0.00000092  0.52D-07  0.17D-06   609.04
   13     1     1     1.06238552    -0.26549653 -3177.56944675    -0.00000042    -0.00000013  0.63D-08  0.22D-07   663.16
   13     2     2     1.10507287    -0.29016615 -3177.40152473    -0.00000116    -0.00000040  0.28D-07  0.75D-07   663.16
   14     1     1     1.06240527    -0.26549674 -3177.56944695    -0.00000021    -0.00000008  0.54D-08  0.13D-07   716.97
   14     2     2     1.10506146    -0.29016674 -3177.40152532    -0.00000059    -0.00000026  0.83D-08  0.54D-07   716.97
   15     1     1     1.06242223    -0.26549687 -3177.56944708    -0.00000013    -0.00000005  0.26D-08  0.87D-08   770.87
   15     2     2     1.10508568    -0.29016716 -3177.40152574    -0.00000042    -0.00000020  0.93D-08  0.39D-07   770.87
   16     1     1     1.06242377    -0.26549694 -3177.56944715    -0.00000007    -0.00000002  0.92D-09  0.39D-08   824.68
   16     2     2     1.10510723    -0.29016741 -3177.40152599    -0.00000025    -0.00000009  0.48D-08  0.19D-07   824.68
   17     1     1     1.06242399    -0.26549694 -3177.56944715    -0.00000000    -0.00000002  0.93D-09  0.39D-08   872.79
   17     2     2     1.10513780    -0.29016774 -3177.40152632    -0.00000033    -0.00000006  0.30D-08  0.11D-07   872.79
   18     1     1     1.06242404    -0.26549694 -3177.56944715    -0.00000000    -0.00000002  0.85D-09  0.39D-08   920.96
   18     2     2     1.10513292    -0.29016779 -3177.40152637    -0.00000005    -0.00000000  0.13D-09  0.10D-08   920.96


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   1.4%  16.5%
 P   0.7%  61.3%  16.1%

 Initialization:   1.4%
 Other:            1.3%

 Total CPU:      921.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222000           0.9329938   0.0708620
 222222/\222000          -0.0520809   0.9288160
 22222202222000          -0.0318326  -0.1702840
 22222200222200          -0.1484809   0.0478752
 22222200222020          -0.1484808   0.0478752
 22222200222002          -0.1484808   0.0478752

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222\0222000  28.1     0.0081144   0.1361700
 222222\0222000  17.1    -0.0037361  -0.0909044
 222222\0222000  39.1     0.0069398   0.0720807

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968426   -0.049682
 2           0.052178    0.947558

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969698    0.001800
 2           0.001800    0.948992

 Energy contributions of internal configurations for state 1
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   531       0.00007867    -2.04067048       22222220222000                  

 Energy contributions of internal configurations for state 2
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   511       0.00254258    -1.56980979       22222202222000                  


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96842606 (fixed)   0.97017682 (relaxed)   0.96969795 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00098866   -0.00002553   -0.24932571
 Singles      0.00915050   -0.02246560   -0.02341031
 Pairs        0.05333525    0.02185769    0.00723908
 Total        1.06347441   -0.00063343   -0.26549694
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.30340742
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.07556285
 One electron energy                -4396.14321530
 Two electron energy                 1218.57376815
 Virial quotient                       -0.91994787
 Correlation energy                    -0.26603973
 !MRCI STATE 1.1 Energy             -3177.569447151552

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58633387 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58605464 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58633387 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58545179 (Pople, fixed reference)
 Cluster corrected energies         -3177.58517345 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58545179 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.94755780 (fixed)   0.95124546 (relaxed)   0.94899162 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00475629   -0.00002561   -0.00170669
 Singles      0.05094706   -0.04432035   -0.05322859
 Pairs        0.05468590   -0.24533247   -0.23523251
 Total        1.11038925   -0.28967843   -0.29016779
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.11190138
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.15081934
 One electron energy                -4393.35729647
 Two electron energy                 1215.95577010
 Virial quotient                       -0.91987921
 Correlation energy                    -0.28962499
 !MRCI STATE 2.1 Energy             -3177.401526371144

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.43349786 (Davidson, fixed reference)
 Cluster corrected energies         -3177.43197571 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.43349786 (Davidson, rotated reference)

 Cluster corrected energies         -3177.43304642 (Pople, fixed reference)
 Cluster corrected energies         -3177.43141193 (Pople, relaxed reference)
 Cluster corrected energies         -3177.43304642 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      150.97       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       941.68    933.43      5.34      0.03      2.63
 REAL TIME  *       978.05 SEC
 DISK USED  *       194.09 MB (local),        5.81 GB (total)
 SF USED    *         1.67 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -3177.58633387  AU                              
 SETTING HLSDIAG(2)     =     -3177.43349786  AU                              


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
     1     -3177.14420351
     2     -3177.11283242
     3     -3177.11283242
     4     -3177.11283242

 Number of blocks in overlap matrix:   194   Smallest eigenvalue:  0.24D-05
 Number of N-2 electron functions:     784
 Number of N-1 electron functions:  480690

 Number of internal configurations:                88786
 Number of singly external configurations:      16825884
 Number of doubly external configurations:        962376
 Total number of contracted configurations:     17877046
 Total number of uncontracted configurations:  821724328

 Diagonal Coupling coefficients finished.               Storage:52784717 words, CPU-Time:     97.46 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2406886 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.14420351     0.00000000    -0.27221097  0.50D-01  0.42D-01   104.52
    1     2     2     1.00000000     0.00000000 -3177.11283242    -0.00000000    -0.27367449  0.45D-01  0.47D-01   104.52
    1     3     3     1.00000000     0.00000000 -3177.11283242    -0.00000000    -0.27367490  0.45D-01  0.47D-01   104.52
    1     4     4     1.00000000     0.00000000 -3177.11283242     0.00000000    -0.27364585  0.45D-01  0.47D-01   104.52
    2     1     1     1.08850908    -0.26763851 -3177.41184202    -0.26763851    -0.00862139  0.21D-02  0.12D-02   353.17
    2     2     2     1.08463883    -0.26216217 -3177.37499459    -0.26216217    -0.00733633  0.20D-02  0.11D-02   353.17
    2     3     3     1.08464362    -0.26215196 -3177.37498438    -0.26215196    -0.00734644  0.20D-02  0.11D-02   353.17
    2     4     4     1.08464346    -0.26215191 -3177.37498433    -0.26215191    -0.00734647  0.20D-02  0.11D-02   353.17
    3     1     1     1.08523981    -0.27777239 -3177.42197591    -0.01013388    -0.00058773  0.61D-04  0.10D-03   602.54
    3     2     2     1.07774928    -0.27105027 -3177.38388269    -0.00888810    -0.00074511  0.87D-04  0.17D-03   602.54
    3     3     3     1.07774476    -0.27104885 -3177.38388127    -0.00889689    -0.00074608  0.88D-04  0.17D-03   602.54
    3     4     4     1.07774469    -0.27104884 -3177.38388126    -0.00889693    -0.00074608  0.88D-04  0.17D-03   602.54
    4     1     1     1.08549730    -0.27861873 -3177.42282225    -0.00084634    -0.00005499  0.43D-05  0.11D-04   851.14
    4     2     2     1.07761928    -0.27235222 -3177.38518464    -0.00130195    -0.00020516  0.12D-04  0.56D-04   851.14
    4     3     3     1.07762203    -0.27235170 -3177.38518412    -0.00130286    -0.00020531  0.12D-04  0.56D-04   851.14
    4     4     4     1.07762204    -0.27235170 -3177.38518412    -0.00130285    -0.00020532  0.12D-04  0.56D-04   851.14
    5     1     1     1.08556797    -0.27869758 -3177.42290110    -0.00007885    -0.00000903  0.62D-06  0.23D-05  1100.68
    5     2     2     1.08003896    -0.27282060 -3177.38565302    -0.00046838    -0.00013090  0.68D-05  0.28D-04  1100.68
    5     3     3     1.08003472    -0.27282033 -3177.38565275    -0.00046863    -0.00013094  0.68D-05  0.28D-04  1100.68
    5     4     4     1.08003471    -0.27282033 -3177.38565275    -0.00046863    -0.00013093  0.68D-05  0.28D-04  1100.68
    6     1     1     1.08564334    -0.27871508 -3177.42291859    -0.00001750    -0.00000470  0.36D-06  0.10D-05  1349.14
    6     2     2     1.08154037    -0.27304391 -3177.38587633    -0.00022331    -0.00005853  0.58D-05  0.12D-04  1349.14
    6     3     3     1.08153745    -0.27304372 -3177.38587614    -0.00022339    -0.00005861  0.59D-05  0.12D-04  1349.14
    6     4     4     1.08153744    -0.27304372 -3177.38587614    -0.00022339    -0.00005861  0.59D-05  0.12D-04  1349.14
    7     1     1     1.08567642    -0.27872427 -3177.42292778    -0.00000919    -0.00000227  0.19D-06  0.40D-06  1598.34
    7     2     2     1.08213899    -0.27312803 -3177.38596045    -0.00008412    -0.00002402  0.19D-05  0.56D-05  1598.34
    7     3     3     1.08213915    -0.27312793 -3177.38596035    -0.00008421    -0.00002406  0.19D-05  0.56D-05  1598.34
    7     4     4     1.08213916    -0.27312793 -3177.38596035    -0.00008421    -0.00002406  0.19D-05  0.56D-05  1598.34
    8     1     1     1.08566616    -0.27872719 -3177.42293071    -0.00000293    -0.00000059  0.41D-07  0.14D-06  1848.64
    8     2     2     1.08265857    -0.27317412 -3177.38600654    -0.00004610    -0.00001718  0.95D-06  0.36D-05  1848.64
    8     3     3     1.08265618    -0.27317405 -3177.38600647    -0.00004612    -0.00001719  0.94D-06  0.36D-05  1848.64
    8     4     4     1.08265618    -0.27317405 -3177.38600647    -0.00004612    -0.00001719  0.94D-06  0.36D-05  1848.64
    9     1     1     1.08569612    -0.27872819 -3177.42293171    -0.00000100    -0.00000033  0.21D-07  0.73D-07  2097.59
    9     2     2     1.08320782    -0.27320090 -3177.38603332    -0.00002677    -0.00000908  0.65D-06  0.20D-05  2097.59
    9     3     3     1.08320682    -0.27320085 -3177.38603327    -0.00002681    -0.00000910  0.65D-06  0.20D-05  2097.59
    9     4     4     1.08320677    -0.27320085 -3177.38603327    -0.00002681    -0.00000910  0.65D-06  0.20D-05  2097.59
   10     1     1     1.08570900    -0.27872881 -3177.42293232    -0.00000061    -0.00000020  0.15D-07  0.35D-07  2345.72
   10     2     2     1.08354568    -0.27321330 -3177.38604572    -0.00001241    -0.00000406  0.31D-06  0.95D-06  2345.72
   10     3     3     1.08354527    -0.27321328 -3177.38604570    -0.00001242    -0.00000407  0.31D-06  0.95D-06  2345.72
   10     4     4     1.08354527    -0.27321328 -3177.38604570    -0.00001242    -0.00000407  0.31D-06  0.95D-06  2345.72
   11     1     1     1.08570975    -0.27872905 -3177.42293257    -0.00000025    -0.00000006  0.36D-08  0.14D-07  2595.16
   11     2     2     1.08376976    -0.27322023 -3177.38605265    -0.00000693    -0.00000291  0.15D-06  0.62D-06  2595.16
   11     3     3     1.08376845    -0.27322021 -3177.38605263    -0.00000694    -0.00000292  0.15D-06  0.62D-06  2595.16
   11     4     4     1.08376845    -0.27322021 -3177.38605263    -0.00000694    -0.00000292  0.15D-06  0.62D-06  2595.16
   12     1     1     1.08571901    -0.27872915 -3177.42293266    -0.00000009    -0.00000003  0.19D-08  0.76D-08  2844.09
   12     2     2     1.08400056    -0.27322462 -3177.38605704    -0.00000439    -0.00000166  0.90D-07  0.37D-06  2844.09
   12     3     3     1.08400004    -0.27322461 -3177.38605703    -0.00000440    -0.00000167  0.91D-07  0.37D-06  2844.09
   12     4     4     1.08400000    -0.27322461 -3177.38605703    -0.00000440    -0.00000167  0.91D-07  0.37D-06  2844.09
   13     1     1     1.08571901    -0.27872915 -3177.42293266    -0.00000000    -0.00000003  0.19D-08  0.76D-08  3082.51
   13     2     2     1.08455132    -0.27322934 -3177.38606176    -0.00000472    -0.00000056  0.22D-07  0.10D-06  3082.51
   13     3     3     1.08414957    -0.27322682 -3177.38605924    -0.00000221    -0.00000077  0.47D-07  0.19D-06  3082.51
   13     4     4     1.08414931    -0.27322682 -3177.38605924    -0.00000220    -0.00000077  0.47D-07  0.19D-06  3082.51
   14     1     1     1.08571901    -0.27872915 -3177.42293266     0.00000000    -0.00000003  0.19D-08  0.76D-08  3319.27
   14     2     2     1.08456594    -0.27322982 -3177.38606224    -0.00000048    -0.00000003  0.15D-08  0.80D-08  3319.27
   14     3     3     1.08455375    -0.27322947 -3177.38606189    -0.00000265    -0.00000041  0.15D-07  0.79D-07  3319.27
   14     4     4     1.08424667    -0.27322805 -3177.38606047    -0.00000124    -0.00000056  0.23D-07  0.13D-06  3319.27
   15     1     1     1.08571901    -0.27872915 -3177.42293266    -0.00000000    -0.00000003  0.19D-08  0.76D-08  3545.17
   15     2     2     1.08456696    -0.27322984 -3177.38606226    -0.00000002    -0.00000003  0.16D-08  0.57D-08  3545.17
   15     3     3     1.08456594    -0.27322982 -3177.38606224    -0.00000035    -0.00000003  0.15D-08  0.80D-08  3545.17
   15     4     4     1.08457706    -0.27322971 -3177.38606212    -0.00000165    -0.00000021  0.74D-08  0.39D-07  3545.17
   16     1     1     1.08571901    -0.27872915 -3177.42293266     0.00000000    -0.00000003  0.19D-08  0.76D-08  3761.10
   16     2     2     1.08459321    -0.27322988 -3177.38606230    -0.00000004    -0.00000001  0.37D-09  0.22D-08  3761.10
   16     3     3     1.08456696    -0.27322984 -3177.38606226    -0.00000002    -0.00000003  0.16D-08  0.57D-08  3761.10
   16     4     4     1.08456594    -0.27322982 -3177.38606224    -0.00000012    -0.00000003  0.15D-08  0.80D-08  3761.10


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.7%
 S   0.8%  10.4%
 P   0.5%  62.9%  20.8%

 Initialization:   2.6%
 Other:            1.3%

 Total CPU:     3761.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222002220//           0.0000000   0.9597520  -0.0002327  -0.0002018
 22222200222/0/          -0.0000000   0.0001954  -0.0259157   0.9594142
 22222200222//0           0.0000000   0.0002380   0.9594137   0.0259157
 222222//222000           0.9592766   0.0000000  -0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222/0222000  28.1     0.0951901   0.0000000  -0.0000000  -0.0000000
 222222/0222000  39.1     0.0610860  -0.0000000  -0.0000000  -0.0000000
 222222/0222000  17.1    -0.0597692  -0.0000000   0.0000000   0.0000000
 2222220022200/  17.2    -0.0000000  -0.0574980   0.0000139   0.0000121
 222222002220/0  18.2     0.0000000   0.0574980  -0.0000139  -0.0000121
 222222002220/0  16.2    -0.0000000  -0.0000143  -0.0574837  -0.0015523
 22222200222/00  17.2     0.0000000   0.0000143   0.0574837   0.0015523
 2222220022200/  16.2    -0.0000000  -0.0000117   0.0015527  -0.0574665
 22222200222/00  18.2     0.0000000   0.0000117  -0.0015527   0.0574665
 222222002220/0  28.2    -0.0000000  -0.0571302   0.0000138   0.0000120
 2222220022200/  27.2     0.0000000   0.0571301  -0.0000138  -0.0000120
 2222220022200/  26.2     0.0000000   0.0000116  -0.0015427   0.0571246
 22222200222/00  28.2    -0.0000000  -0.0000116   0.0015427  -0.0571245
 222222002220/0  26.2     0.0000000   0.0000142   0.0571115   0.0015430
 22222200222/00  27.2    -0.0000000  -0.0000142  -0.0571115  -0.0015430

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.959696    0.000000   -0.000000   -0.000000
 2           0.000000    0.000238    0.000196    0.960201
 3          -0.000000    0.959863   -0.025928   -0.000233
 4          -0.000000    0.025928    0.959863   -0.000202

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.959696    0.000000   -0.000000   -0.000000
 2           0.000000    0.960201    0.000000    0.000000
 3          -0.000000    0.000000    0.960213   -0.000000
 4          -0.000000    0.000000   -0.000000    0.960213


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95969565 (fixed)   0.95971247 (relaxed)   0.95969565 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003570   -0.00000590   -0.22403150
 Singles      0.03346984   -0.03549516   -0.04128234
 Pairs        0.05225223    0.00000000   -0.01341531
 Total        1.08575777   -0.03550106   -0.27872915
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.14420351
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.07774202
 One electron energy                -4392.98731889
 Two electron energy                 1215.56438623
 Virial quotient                       -0.91990487
 Correlation energy                    -0.27872915
 !MRCI STATE 1.1 Energy             -3177.422932660792

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.44683585 (Davidson, fixed reference)
 Cluster corrected energies         -3177.44682525 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.44683585 (Davidson, rotated reference)

 Cluster corrected energies         -3177.44567948 (Pople, fixed reference)
 Cluster corrected energies         -3177.44566868 (Pople, relaxed reference)
 Cluster corrected energies         -3177.44567948 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96020128 (fixed)   0.96021050 (relaxed)   0.96020133 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001961   -0.00000452   -0.00000912
 Singles      0.02247676   -0.02607723   -0.02970530
 Pairs        0.06211811   -0.24714812   -0.24351546
 Total        1.08461448   -0.27322987   -0.27322988
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.11283242
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.01768726
 One electron energy                -4394.12527608
 Two electron energy                 1216.73921378
 Virial quotient                       -0.91991019
 Correlation energy                    -0.27322988
 !MRCI STATE 2.1 Energy             -3177.386062302564

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.40918151 (Davidson, fixed reference)
 Cluster corrected energies         -3177.40917585 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.40918151 (Davidson, rotated reference)

 Cluster corrected energies         -3177.40804263 (Pople, fixed reference)
 Cluster corrected energies         -3177.40803688 (Pople, relaxed reference)
 Cluster corrected energies         -3177.40804263 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95986279 (fixed)   0.96022211 (relaxed)   0.96021294 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001963   -0.00000452   -0.22793778
 Singles      0.02247658   -0.02607648   -0.02970581
 Pairs        0.06209204    0.00005991   -0.01558625
 Total        1.08458825   -0.02602109   -0.27322984
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.11283242
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.01675630
 One electron energy                -4394.12418721
 Two electron energy                 1216.73812495
 Virial quotient                       -0.91991044
 Correlation energy                    -0.27322984
 !MRCI STATE 3.1 Energy             -3177.386062262086

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.40917430 (Davidson, fixed reference)
 Cluster corrected energies         -3177.40916863 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.40917430 (Davidson, rotated reference)

 Cluster corrected energies         -3177.40803531 (Pople, fixed reference)
 Cluster corrected energies         -3177.40802955 (Pople, relaxed reference)
 Cluster corrected energies         -3177.40803531 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95986324 (fixed)   0.96022256 (relaxed)   0.96021338 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001964   -0.00000452   -0.22792688
 Singles      0.02247929   -0.02608056   -0.02970711
 Pairs        0.06208831    0.00005196   -0.01559583
 Total        1.08458725   -0.02603312   -0.27322982
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.11283242
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.01814791
 One electron energy                -4394.12557877
 Two electron energy                 1216.73951652
 Virial quotient                       -0.91991007
 Correlation energy                    -0.27322982
 !MRCI STATE 4.1 Energy             -3177.386062240918

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.40917400 (Davidson, fixed reference)
 Cluster corrected energies         -3177.40916833 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.40917400 (Davidson, rotated reference)

 Cluster corrected energies         -3177.40803501 (Pople, fixed reference)
 Cluster corrected energies         -3177.40802925 (Pople, relaxed reference)
 Cluster corrected energies         -3177.40803501 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      703.01       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4870.00   3928.29    933.43      5.34      0.03      2.63
 REAL TIME  *      4979.31 SEC
 DISK USED  *       746.13 MB (local),       21.98 GB (total)
 SF USED    *         5.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =     -3177.44683585  AU                              
 SETTING HLSDIAG(4)     =     -3177.40918151  AU                              
 SETTING HLSDIAG(5)     =     -3177.40917430  AU                              
 SETTING HLSDIAG(6)     =     -3177.40917400  AU                              


         HLSDIAG
    -3177.586334
    -3177.433498
    -3177.446836
    -3177.409182
    -3177.409174
    -3177.409174
                                                  

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

 Time for Seward_LS:      29.48 sec

 CPU time:     29.49 sec, REAL time:     30.93 sec


 SORTLS1 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.06 sec, REAL time:      0.12 sec
 SORTLS2 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.00 sec, REAL time:      0.05 sec

 FILE SIZES: FILE 1:    45.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    45.2 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      703.01       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4900.54     30.50   3928.29    933.43      5.34      0.03      2.63
 REAL TIME  *      5011.54 SEC
 DISK USED  *       746.18 MB (local),       22.31 GB (total)
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

 Original energies:  -3177.569447  -3177.401526
 Replaced energies:  -3177.586334  -3177.433498

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   4

 Original energies:  -3177.422933  -3177.386062  -3177.386062  -3177.386062
 Replaced energies:  -3177.446836  -3177.409182  -3177.409174  -3177.409174



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -3177.58633387

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.02     -98.73      -2.67       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.02       2.67     -98.74      -0.00    -139.68       0.03       0.03

    2   2.1  0.0  0.0       0.00   33543.63       0.00       0.01      51.92       1.40       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.01      -1.40      51.93      -0.00      73.45      -0.02      -0.02

    3   1.1  1.0  1.0       0.00       0.00   30616.28       0.00       0.00       0.00      -0.00      -0.00     -20.08      -0.54
                           -0.00       0.00      -0.00     -28.41       0.01       0.01       0.00       0.00      -0.54      20.09

    4   2.1  1.0  1.0      -0.02       0.01       0.00   38880.45       0.00       0.00       0.00       0.00      -4.67     173.06
                            0.02      -0.01      28.41       0.00       0.05      -0.06      -0.00      -0.00     173.06       4.67

    5   3.1  1.0  1.0     -98.73      51.92       0.00       0.00   38882.03       0.00      20.08       4.67       0.00      -0.04
                           -2.67       1.40      -0.01      -0.05      -0.00    -244.83       0.54    -173.06       0.00       0.04

    6   4.1  1.0  1.0      -2.67       1.40       0.00       0.00       0.00   38882.10       0.54    -173.06       0.04      -0.00
                           98.74     -51.93      -0.01       0.06     244.83      -0.00     -20.09      -4.67      -0.04       0.00

    7   1.1  1.0  0.0       0.00       0.00      -0.00       0.00      20.08       0.54   30616.28       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.54      20.09       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00      -0.00       0.00       4.67    -173.06       0.00   38880.45       0.00       0.00
                          139.68     -73.45      -0.00       0.00     173.06       4.67      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00     -20.08      -4.67       0.00       0.04       0.00       0.00   38882.03       0.00
                           -0.03       0.02       0.54    -173.06      -0.00       0.04      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00      -0.54     173.06      -0.04      -0.00       0.00       0.00       0.00   38882.10
                           -0.03       0.02     -20.09      -4.67      -0.04      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      20.08       0.54
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.54      20.09

   12   2.1  1.0 -1.0      -0.02       0.01       0.00       0.00       0.00       0.00      -0.00       0.00       4.67    -173.06
                           -0.02       0.01      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     173.06       4.67

   13   3.1  1.0 -1.0     -98.73      51.92       0.00       0.00       0.00       0.00     -20.08      -4.67       0.00       0.04
                            2.67      -1.40      -0.00      -0.00      -0.00      -0.00       0.54    -173.06      -0.00       0.04

   14   4.1  1.0 -1.0      -2.67       1.40       0.00       0.00       0.00       0.00      -0.54     173.06      -0.04      -0.00
                          -98.74      51.93      -0.00      -0.00      -0.00      -0.00     -20.09      -4.67      -0.04      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.0  0.0       0.00      -0.02     -98.73      -2.67
                           -0.00       0.02      -2.67      98.74

    2   2.1  0.0  0.0       0.00       0.01      51.92       1.40
                            0.00      -0.01       1.40     -51.93

    3   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    4   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    6   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0      -0.00      -0.00     -20.08      -0.54
                            0.00       0.00      -0.54      20.09

    8   2.1  1.0  0.0       0.00       0.00      -4.67     173.06
                           -0.00      -0.00     173.06       4.67

    9   3.1  1.0  0.0      20.08       4.67       0.00      -0.04
                            0.54    -173.06       0.00       0.04

   10   4.1  1.0  0.0       0.54    -173.06       0.04      -0.00
                          -20.09      -4.67      -0.04       0.00

   11   1.1  1.0 -1.0   30616.28       0.00       0.00       0.00
                            0.00      28.41      -0.01      -0.01

   12   2.1  1.0 -1.0       0.00   38880.45       0.00       0.00
                          -28.41      -0.00      -0.05       0.06

   13   3.1  1.0 -1.0       0.00       0.00   38882.03       0.00
                            0.01       0.05       0.00     244.83

   14   4.1  1.0 -1.0       0.00       0.00       0.00   38882.10
                            0.01      -0.06    -244.83       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by  -3177.58633387 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000      -0.035    -139.626      -3.772       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    -139.680

    2    1  |0 0>               0.000   33543.627       0.000       0.018      73.420       1.984       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      73.453

    1    1  |1 1>+              0.000       0.000   30616.276       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.006

    2    1  |1 1>+             -0.035       0.018       0.000   38880.449       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.006       0.000

    3    1  |1 1>+           -139.626      73.420       0.000       0.000   38882.032       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.767    -244.742

    4    1  |1 1>+             -3.772       1.984       0.000       0.000       0.000   38882.097      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -28.411      -6.611

    1    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000   30616.276       0.000
                                0.000       0.000       0.000       0.006      -0.767      28.411       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000   38880.449
                              139.680     -73.453      -0.006       0.000     244.742       6.611      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.034       0.018       0.767    -244.742       0.000       0.050      -0.000      -0.000

    4    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.029       0.015     -28.411      -6.611      -0.050       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.007
                               -0.000       0.000      -0.000     -28.414       0.007       0.006       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.007       0.000
                                0.028      -0.015      28.414       0.000       0.051      -0.059       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      28.402       6.611
                               -3.772       1.983      -0.007      -0.051      -0.000    -244.831      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.767    -244.741
                              139.633     -73.434      -0.006       0.059     244.831      -0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.034       0.029       0.000      -0.028       3.772    -139.633

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.018      -0.015      -0.000       0.015      -1.983      73.434

    1    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.767      28.411      -0.000     -28.414       0.007       0.006

    2    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000
                              244.742       6.611      28.414       0.000       0.051      -0.059

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.050      -0.007      -0.051      -0.000    -244.831

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.050       0.000      -0.006       0.059     244.831      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.007      28.402       0.767
                                0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000      -0.007       0.000       6.611    -244.741
                                0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>           38882.032       0.000     -28.402      -6.611       0.000       0.061
                                0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000   38882.097      -0.767     244.741      -0.061       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-            -28.402      -0.767   30616.276       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -6.611     244.741       0.000   38880.449       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000      -0.061       0.000       0.000   38882.032       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.061       0.000       0.000       0.000       0.000   38882.097
                                0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -3177.58634081    -0.00000695       -1.52      0.00000000        0.00      0.0000
    2 -3177.44683677     0.13949710    30616.07      0.13950405    30617.60      3.7961
    3 -3177.44683677     0.13949710    30616.07      0.13950405    30617.60      3.7961
    4 -3177.44683677     0.13949710    30616.07      0.13950405    30617.60      3.7961
    5 -3177.43351305     0.15282082    33540.29      0.15282776    33541.82      4.1587
    6 -3177.41138553     0.17494834    38396.72      0.17495529    38398.25      4.7608
    7 -3177.41029252     0.17604135    38636.61      0.17604829    38638.13      4.7905
    8 -3177.41029237     0.17604150    38636.64      0.17604844    38638.17      4.7905
    9 -3177.41028876     0.17604510    38637.43      0.17605205    38638.96      4.7906
   10 -3177.40806352     0.17827035    39125.82      0.17827729    39127.34      4.8512
   11 -3177.40806236     0.17827150    39126.07      0.17827845    39127.60      4.8512
   12 -3177.40806222     0.17827165    39126.11      0.17827860    39127.63      4.8512
   13 -3177.40805861     0.17827525    39126.90      0.17828220    39128.42      4.8513
   14 -3177.40805861     0.17827526    39126.90      0.17828220    39128.42      4.8513

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99998015  0.00000000  0.00000000 -0.00000000  0.00018902  0.00629859 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00002390 -0.00000000 -0.00000000 -0.00000000  0.99965657 -0.02620587  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.99963354 -0.00016671 -0.02660157  0.00000000  0.00000000  0.00013509  0.00500899
                           0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000090  0.00009425  0.00000004  0.00354180 -0.00000375 -0.00014335  0.70798254 -0.01909804
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00363666 -0.00000001  0.00009565 -0.00000088 -0.01512151 -0.57652992 -0.00017510 -0.00000003
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00009824 -0.00000059 -0.00354195  0.00000003 -0.00040852 -0.01557181  0.00000072  0.00017592
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000004 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00016093  0.99998741 -0.00021943 -0.00000000 -0.00000000  0.00000106  0.00000122

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00363820  0.00000074  0.00000000  0.00000086  0.01513240  0.57799229  0.00017170 -0.00014892

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000088 -0.00000142  0.00000078  0.00354217 -0.00000367 -0.00013981  0.70595386  0.00002714

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000076  0.00354327 -0.00000057  0.00000142 -0.00000318 -0.00012126  0.00002714 -0.70590675

   1    1  |1 1>-          0.00000000  0.00000001 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.02660161  0.00021507  0.99963354  0.00000000  0.00000000 -0.00500819  0.00013511

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000074 -0.00354184 -0.00000029  0.00009425  0.00000308  0.00011770  0.01909680  0.70802948

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00009823  0.00000029 -0.00354089  0.00000075 -0.00040846 -0.01557324  0.00014449  0.00000085

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00363682  0.00000073 -0.00009567  0.00000000  0.01512381  0.57647781  0.00000003 -0.00014373

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |0 0>           0.00000000 -0.00000646 -0.00000000  0.00000000  0.00000000  0.00000045
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00002385  0.00000000  0.00000000 -0.00000000 -0.00000301
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000125  0.00000000  0.00000020 -0.00000856 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000070 -0.00020081 -0.70570462 -0.01908812  0.00000075  0.00000430
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.01909442  0.42088014 -0.00017394  0.00000002  0.01914609  0.69964279
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000

   4    1  |1 1>+          0.70679305  0.01070660  0.00000073 -0.00017478  0.70689448 -0.01933625
                          -0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000179  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00501015  0.00000000  0.00000000 -0.00000000  0.00000109 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.81577176 -0.00016944 -0.00014698  0.00000000 -0.01410752

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00014941  0.00010059  0.70824890  0.00002699  0.00014795  0.00016883

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00017225  0.00008213 -0.00002699  0.70829585  0.00017057 -0.00014941

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000103  0.00000000 -0.00000747 -0.00000023  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000087  0.00016492 -0.01908942  0.70565754 -0.00000083 -0.00000210

   3    1  |1 1>-          0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000179  0.00000000
                           0.70688708  0.01136976  0.00014355 -0.00000084 -0.70680047  0.01895278

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000
                           0.01909192 -0.39639925  0.00000001  0.00014281  0.01914867  0.71384017


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -3177.58634081     -0.00000695       -1.52      0.00000000        0.00      0.0000
     2   1  -3177.44683677      0.13949710    30616.07      0.13950405    30617.60      3.7961
     3   1  -3177.44683677      0.13949710    30616.07      0.13950405    30617.60      3.7961
     4   1  -3177.44683677      0.13949710    30616.07      0.13950405    30617.60      3.7961
     5   1  -3177.43351305      0.15282082    33540.29      0.15282776    33541.82      4.1587
     6   1  -3177.41138553      0.17494834    38396.72      0.17495529    38398.25      4.7608
     7   1  -3177.41029252      0.17604135    38636.61      0.17604829    38638.13      4.7905
     8   1  -3177.41029237      0.17604150    38636.64      0.17604844    38638.17      4.7905
     9   1  -3177.41028876      0.17604510    38637.43      0.17605205    38638.96      4.7906
    10   1  -3177.40806352      0.17827035    39125.82      0.17827729    39127.34      4.8512
    11   1  -3177.40806236      0.17827150    39126.07      0.17827845    39127.60      4.8512
    12   1  -3177.40806222      0.17827165    39126.11      0.17827860    39127.63      4.8512
    13   1  -3177.40805861      0.17827525    39126.90      0.17828220    39128.42      4.8513
    14   1  -3177.40805861      0.17827526    39126.90      0.17828220    39128.42      4.8513

 E0 =  -3177.58633387 is the energy of the lowest zeroth-order state
 E1 =  -3177.58634081 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99998015  0.00000000  0.00000000 -0.00000000  0.00018902  0.00629859 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00002390 -0.00000000 -0.00000000 -0.00000000  0.99965657 -0.02620587  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     1    1  |1 1>+      -0.00000000  0.99963354 -0.00016671 -0.02660157  0.00000000  0.00000000  0.00013509  0.00500899
                                0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     2    1  |1 1>+       0.00000090  0.00009425  0.00000004  0.00354180 -0.00000375 -0.00014335  0.70798254 -0.01909804
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     3    1  |1 1>+       0.00363666 -0.00000001  0.00009565 -0.00000088 -0.01512151 -0.57652992 -0.00017510 -0.00000003
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     4    1  |1 1>+       0.00009824 -0.00000059 -0.00354195  0.00000003 -0.00040852 -0.01557181  0.00000072  0.00017592
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000004 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00016093  0.99998741 -0.00021943 -0.00000000 -0.00000000  0.00000106  0.00000122

  8  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00363820  0.00000074  0.00000000  0.00000086  0.01513240  0.57799229  0.00017170 -0.00014892

  9  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000088 -0.00000142  0.00000078  0.00354217 -0.00000367 -0.00013981  0.70595386  0.00002714

 10  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000076  0.00354327 -0.00000057  0.00000142 -0.00000318 -0.00012126  0.00002714 -0.70590675

 11  1     1    1  |1 1>-       0.00000000  0.00000001 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.02660161  0.00021507  0.99963354  0.00000000  0.00000000 -0.00500819  0.00013511

 12  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000074 -0.00354184 -0.00000029  0.00009425  0.00000308  0.00011770  0.01909680  0.70802948

 13  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00009823  0.00000029 -0.00354089  0.00000075 -0.00040846 -0.01557324  0.00014449  0.00000085

 14  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00363682  0.00000073 -0.00009567  0.00000000  0.01512381  0.57647781  0.00000003 -0.00014373


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |0 0>        0.00000000 -0.00000646 -0.00000000  0.00000000  0.00000000  0.00000045
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00002385  0.00000000  0.00000000 -0.00000000 -0.00000301
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     1    1  |1 1>+      -0.00000125  0.00000000  0.00000020 -0.00000856 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     2    1  |1 1>+      -0.00000070 -0.00020081 -0.70570462 -0.01908812  0.00000075  0.00000430
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     3    1  |1 1>+      -0.01909442  0.42088014 -0.00017394  0.00000002  0.01914609  0.69964279
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000

  6  1     4    1  |1 1>+       0.70679305  0.01070660  0.00000073 -0.00017478  0.70689448 -0.01933625
                               -0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000179  0.00000000

  7  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00501015  0.00000000  0.00000000 -0.00000000  0.00000109 -0.00000000

  8  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.81577176 -0.00016944 -0.00014698  0.00000000 -0.01410752

  9  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00014941  0.00010059  0.70824890  0.00002699  0.00014795  0.00016883

 10  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00017225  0.00008213 -0.00002699  0.70829585  0.00017057 -0.00014941

 11  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000103  0.00000000 -0.00000747 -0.00000023  0.00000000  0.00000000

 12  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000087  0.00016492 -0.01908942  0.70565754 -0.00000083 -0.00000210

 13  1     3    1  |1 1>-       0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000179  0.00000000
                                0.70688708  0.01136976  0.00014355 -0.00000084 -0.70680047  0.01895278

 14  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000005 -0.00000000
                                0.01909192 -0.39639925  0.00000001  0.00014281  0.01914867  0.71384017



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.93%    0.07%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%   99.93%    0.00%    0.07%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.12%    0.04%
  5  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%   33.24%    0.00%    0.00%
  6  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
  7  1     1    1  |1 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.02%   33.41%    0.00%    0.00%
  9  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.84%    0.00%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.83%
 11  1     1    1  |1 1>-         0.00%    0.07%    0.00%   99.93%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%   50.13%
 13  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%   33.23%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%   49.80%    0.04%    0.00%    0.00%
  5  1     3    1  |1 1>+         0.04%   17.71%    0.00%    0.00%    0.04%   48.95%
  6  1     4    1  |1 1>+        49.96%    0.01%    0.00%    0.00%   49.97%    0.04%
  7  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%   66.55%    0.00%    0.00%    0.00%    0.02%
  9  1     3    1  |1 0>          0.00%    0.00%   50.16%    0.00%    0.00%    0.00%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%   50.17%    0.00%    0.00%
 11  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%    0.04%   49.80%    0.00%    0.00%
 13  1     3    1  |1 1>-        49.97%    0.01%    0.00%    0.00%   49.96%    0.04%
 14  1     4    1  |1 1>-         0.04%   15.71%    0.00%    0.00%    0.04%   50.96%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      703.01       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     17260.53  12359.98     30.50   3928.29    933.43      5.34      0.03      2.63
 REAL TIME  *     17490.88 SEC
 DISK USED  *       746.18 MB (local),       22.31 GB (total)
 SF USED    *         5.99 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -3177.408058612457

              CI              CI           MULTI         RHF-SCF
  -3177.38606224  -3177.40152637  -3177.11283242  -3177.27784113
 **********************************************************************************************************************************
 Molpro calculation terminated
