
 Working directory              : /wrk/irikura/molpro.oGjbGtlVbj/
 Global scratch directory       : /wrk/irikura/molpro.oGjbGtlVbj/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.oGjbGtlVbj/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Sr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (2/5)
 {multi
     closed,9,9
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
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 14:06:47  
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

     17.039 MB (compressed) written to integral file ( 17.7%)

     Node minimum: 0.262 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     162345.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     162345      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ    10953812. AND WROTE       36458. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     1037967. AND WROTE     4879686. INTEGRALS IN     30 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         2.80      2.46
 REAL TIME  *         3.53 SEC
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
   3    -3177.27784113      -0.00000000     0.43D-05     0.18D-04     2     0       0.00      0.01    diag
   4    -3177.27784113      -0.00000000     0.89D-06     0.95D-05     3     0       0.00      0.01    diag
   5    -3177.27784113      -0.00000000     0.80D-07     0.54D-05     4     0       0.01      0.02    diag
   6    -3177.27784113      -0.00000000     0.32D-07     0.28D-05     5     0       0.00      0.02    diag
   7    -3177.27784113      -0.00000000     0.77D-08     0.14D-06     0     0       0.00      0.02    diag

 Final occupancy:  10   9

 !RHF STATE 1.1 Energy              -3177.277841133264
  RHF One-electron energy           -4396.585097306509
  RHF Two-electron energy            1219.307256173245
  RHF Kinetic energy                 3454.572331531403
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
    4.1     2.00000    -5.58737     1  1  d0   0.99942
    5.1     2.00000    -5.58737     1  1  d2-  0.99574
    6.1     2.00000    -5.58737     1  1  d1+  0.98285
    7.1     2.00000    -5.58737     1  1  d1-  0.98560
    8.1     2.00000    -5.58737     1  1  d2+  0.99806
    9.1     2.00000    -1.94831     1  4  s    1.00244
   10.1     2.00000    -0.18122     1  5  s    0.99877
    1.2     2.00000   -73.65117     1  1  px   0.99997
    2.2     2.00000   -73.65117     1  1  py   0.99997
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
 CPU TIMES  *         2.83      0.03      2.46
 REAL TIME  *         3.57 SEC
 DISK USED  *        29.90 MB (local),        1.00 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  18 (    9    9)
 Number of active  orbitals:        5 (    2    3)
 Number of external orbitals:      70 (   34   36)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               9   (13 determinants, 25 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             4
 Number of CSFs:               4   (4 determinants, 10 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.356D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.128D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.218D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.181D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.100D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 1   1 2 4 6 3 5 6 4 3 5   2 1 2 4 6 3 5 1 2 4   6 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.989D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.852D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.380D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.787D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.105D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.108D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.595D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.824D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.644D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.644D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 3 2 3   1 2 3 1 2 3 1 2 5 4  10 8 6 9 7 3 1 2 810   6 5 4 9 7 3 1 2 4 5
                                        6 9 710 8 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  851  ( 45 closed/active, 630 closed/virtual, 0 active/active, 176 active/virtual )
 Total number of variables:    893
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0  -3177.10972208   -3177.17610177   -0.06637969    0.06251942 0.00005385 0.00000000  0.12E+01      0.44
   2    7   12    0  -3177.17154944   -3177.17265434   -0.00110489    0.01003702 0.00000047 0.00000000  0.16E+00      0.98
   3    5   10    0  -3177.17265530   -3177.17265533   -0.00000003    0.00006080 0.00000000 0.00000000  0.68E-03      1.36
   4    2    4    0  -3177.17265533   -3177.17265533    0.00000000    0.00000001 0.00000000 0.00000000  0.11E-06      1.63

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.39E-09)
                       Final energy:  -3177.17265533
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -3177.295974626993
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.80491166
 One electron energy                         -4397.05009902
 Two electron energy                          1219.75412439
 Virial ratio                                    1.91967450
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -3177.162638529486
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.48956842
 One electron energy                         -4392.34974900
 Two electron energy                          1215.18711047
 Virial ratio                                    1.91971985
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -3177.172350790975
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.36879975
 One electron energy                         -4391.59497194
 Two electron energy                          1214.42262115
 Virial ratio                                    1.91975482
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -3177.134989335703
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.32164708
 One electron energy                         -4393.15140443
 Two electron energy                          1216.01641509
 Virial ratio                                    1.91975656
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -3177.134989335701
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.32164708
 One electron energy                         -4393.15140443
 Two electron energy                          1216.01641510
 Virial ratio                                    1.91975656
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -3177.134989335677
 Nuclear energy                                  0.00000000
 Kinetic energy                               3454.32164708
 One electron energy                         -4393.15140443
 Two electron energy                          1216.01641509
 Virial ratio                                    1.91975656
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000007093212
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999992993886
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999999737
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999992907046
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000007009021
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999999997121
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999742
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999997093
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.000000003141
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 5 4 1 1   1 2 6 5 3 4 6 2 5 3   4 1 2 6 5 3 4 1 2 6   4 3 5 2 6 4 3 5 1 2
                                        6 4 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 1   3 2 3 2 1 3 2 1 5 8  10 6 9 7 4 3 2 1 510   8 6 9 7 4 3 2 1 5 6
                                        9 7 410 8 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -595.29343     1  1  s    0.99995
    2.1     2.00000   -83.18954     1  2  s    1.00055
    3.1     2.00000   -14.03706     1  3  s    0.99673
    4.1     2.00000    -5.67141     1  1  d0   1.00003
    5.1     2.00000    -5.67141     1  1  d1-  1.00003
    6.1     2.00000    -5.67141     1  1  d2-  1.00003
    7.1     2.00000    -5.67141     1  1  d2+  1.00003
    8.1     2.00000    -5.67141     1  1  d1+  1.00003
    9.1     2.00000    -2.02867     1  4  s    1.00329
   10.1     0.63872    -0.11712     1  5  s    1.09145
   11.1     0.33317     0.00452     1  5  s   -0.60820    1  7  s   -0.57098    1 10  s    1.73076
    1.2     2.00000   -73.73548     1  1  py   1.00000
    2.2     2.00000   -73.73548     1  1  px   1.00000
    3.2     2.00000   -73.73548     1  1  pz   1.00000
    4.2     2.00000   -10.88786     1  2  pz   1.00018
    5.2     2.00000   -10.88786     1  2  px   1.00018
    6.2     2.00000   -10.88786     1  2  py   1.00018
    7.2     2.00000    -1.17749     1  3  pz   1.00836
    8.2     2.00000    -1.17749     1  3  px   1.00836
    9.2     2.00000    -1.17749     1  3  py   1.00836
   10.2     0.34270    -0.01392     1  4  px   1.00449
   11.2     0.34270    -0.01392     1  4  pz   1.00449
   12.2     0.34270    -0.01392     1  4  py   1.00449
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 000         0.94057233     -0.17905881
 ab 000         0.12533167      0.69549508
 ba 000        -0.12533167     -0.69549508
 00 200        -0.16723871      0.01177224
 00 020        -0.16723871      0.01177223
 00 002        -0.16723871      0.01177223
 
 Energy:    -3177.29597463  -3177.16263853
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa 000         1.00000000      0.00000000     -0.00000000      0.00000000
 00 a0a         0.00000000      0.00001607     -0.00005392      1.00000000
 00 0aa         0.00000000      0.99999645     -0.00266326     -0.00001621
 00 aa0         0.00000000      0.00266326      0.99999645      0.00005388
 
 Energy:    -3177.17235079  -3177.13498934  -3177.13498934  -3177.13498934
 


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
 CPU TIMES  *         4.10      1.27      0.03      2.46
 REAL TIME  *         5.52 SEC
 DISK USED  *        43.81 MB (local),        1.41 GB (total)
 SF USED    *        33.59 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -3177.295975  -0.0
    -3177.162639  -0.0
    -3177.172351  -0.0
    -3177.134989   2.0
    -3177.134989   2.0
    -3177.134989   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 38
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:        9 conf        9 CSFs
 N elec internal:     2310 conf     4245 CSFs
 N-1 el internal:     1490 conf     3830 CSFs
 N-2 el internal:      451 conf     1288 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      70 (  34  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.06 sec, npass=  1  Memory used:   0.62 MW


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.29597463
     2     -3177.16263853

 Number of blocks in overlap matrix:   235   Smallest eigenvalue:  0.88D+00
 Number of N-2 electron functions:     253
 Number of N-1 electron functions:    3830

 Number of internal configurations:                 2151
 Number of singly external configurations:        134048
 Number of doubly external configurations:        310603
 Total number of contracted configurations:       446802
 Total number of uncontracted configurations:    1713201

 Diagonal Coupling coefficients finished.               Storage:  976350 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  398452 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.29597463    -0.00000000    -0.28830660  0.17D-01  0.64D-01     0.22
    1     2     2     1.00000000     0.00000000 -3177.16263853    -0.00000000    -0.27767610  0.20D-01  0.59D-01     0.22
    2     1     1     1.06799776    -0.26483768 -3177.56081231    -0.26483768    -0.00544067  0.19D-02  0.93D-03     1.10
    2     2     2     1.06792352    -0.25998868 -3177.42262721    -0.25998868    -0.00507877  0.20D-02  0.96D-03     1.10
    3     1     1     1.06589613    -0.27033279 -3177.56630742    -0.00549511    -0.00016765  0.27D-04  0.47D-04     1.97
    3     2     2     1.06588044    -0.26517322 -3177.42781175    -0.00518454    -0.00016746  0.35D-04  0.47D-04     1.97
    4     1     1     1.06630786    -0.27051672 -3177.56649135    -0.00018393    -0.00000792  0.22D-05  0.16D-05     2.83
    4     2     2     1.06610592    -0.26536133 -3177.42799986    -0.00018811    -0.00000841  0.25D-05  0.20D-05     2.83
    5     1     1     1.06643082    -0.27052582 -3177.56650045    -0.00000910    -0.00000028  0.56D-07  0.73D-07     3.65
    5     2     2     1.06619874    -0.26537121 -3177.42800974    -0.00000988    -0.00000035  0.11D-06  0.11D-06     3.65
    6     1     1     1.06644486    -0.27052612 -3177.56650075    -0.00000030    -0.00000001  0.13D-08  0.44D-08     4.44
    6     2     2     1.06620894    -0.26537159 -3177.42801012    -0.00000039    -0.00000002  0.39D-08  0.96D-08     4.44
    7     1     1     1.06644881    -0.27052613 -3177.56650075    -0.00000001    -0.00000000  0.30D-09  0.99D-09     5.00
    7     2     2     1.06621386    -0.26537162 -3177.42801014    -0.00000002    -0.00000000  0.36D-09  0.58D-09     5.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.4%
 S   4.4%  12.0%
 P   1.8%  37.2%   7.2%

 Initialization:   2.8%
 Other:           29.2%

 Total CPU:        5.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/\222000           0.1139819   0.9611805
 22222220222000           0.9279157  -0.1160464
 22222200222200          -0.1452719  -0.0082998
 22222200222002          -0.1452719  -0.0082999
 22222200222020          -0.1452719  -0.0082997

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.965865   -0.059213
 2           0.065385    0.965833

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967673    0.003081
 2           0.003081    0.968039

 Energy contributions of internal configurations for state 1
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    92       0.00007197    -1.94424888       22222220222000                  


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96586460 (fixed)   0.96816772 (relaxed)   0.96767303 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00138876   -0.00054486   -0.25827928
 Singles      0.00939396   -0.01654011   -0.01786820
 Pairs        0.05714713    0.02146244    0.00562136
 Total        1.06792985    0.00437747   -0.27052613
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.29542218
 Nuclear energy                         0.00000000
 Kinetic energy                      3454.16925940
 One electron energy                -4396.24807768
 Two electron energy                 1218.68157692
 Virial quotient                       -0.91992206
 Correlation energy                    -0.27107857
 !MRCI STATE 1.1 Energy             -3177.566500754320

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.58491508 (Davidson, fixed reference)
 Cluster corrected energies         -3177.58461932 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.58491508 (Davidson, rotated reference)

 Cluster corrected energies         -3177.58401791 (Pople, fixed reference)
 Cluster corrected energies         -3177.58372093 (Pople, relaxed reference)
 Cluster corrected energies         -3177.58401791 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96583328 (fixed)   0.96828035 (relaxed)   0.96803906 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00085211   -0.00061062   -0.00144187
 Singles      0.01108487   -0.01570841   -0.01747653
 Pairs        0.05518541   -0.24835067   -0.24645321
 Total        1.06712239   -0.26466971   -0.26537162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.16319097
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.96368403
 One electron energy                -4391.42452699
 Two electron energy                 1213.99651685
 Virial quotient                       -0.91993672
 Correlation energy                    -0.26481917
 !MRCI STATE 2.1 Energy             -3177.428010144569

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.44578544 (Davidson, fixed reference)
 Cluster corrected energies         -3177.44564462 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.44578544 (Davidson, rotated reference)

 Cluster corrected energies         -3177.44490806 (Pople, fixed reference)
 Cluster corrected energies         -3177.44476678 (Pople, relaxed reference)
 Cluster corrected energies         -3177.44490806 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        7.94       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.32      5.19      1.27      0.03      2.46
 REAL TIME  *        11.68 SEC
 DISK USED  *        51.05 MB (local),        1.62 GB (total)
 SF USED    *        86.69 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -3177.58491508  AU                              
 SETTING HLSDIAG(2)     =     -3177.44578544  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 4  Roots:    1   2   3   4
 Number of reference states: 4  Roots:    1   2   3   4

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 38
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        4 conf        4 CSFs
 N elec internal:     1999 conf     5869 CSFs
 N-1 el internal:      950 conf     4766 CSFs
 N-2 el internal:      226 conf     1540 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           9 (   3   6 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        5 (   2   3 )
 Number of external orbitals:      70 (  34  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -3177.17235079
     2     -3177.13498934
     3     -3177.13498934
     4     -3177.13498934

 Number of blocks in overlap matrix:   415   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:     415
 Number of N-1 electron functions:    4766

 Number of internal configurations:                 2923
 Number of singly external configurations:        166796
 Number of doubly external configurations:        509631
 Total number of contracted configurations:       679350
 Total number of uncontracted configurations:    2046729

 Diagonal Coupling coefficients finished.               Storage: 1156404 words, CPU-Time:      0.05 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  430899 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -3177.17235079    -0.00000000    -0.27028366  0.15D-01  0.54D-01     0.18
    1     2     2     1.00000000     0.00000000 -3177.13498934     0.00000000    -0.26927588  0.68D-02  0.65D-01     0.18
    1     3     3     1.00000000     0.00000000 -3177.13498934     0.00000000    -0.26929843  0.68D-02  0.65D-01     0.18
    1     4     4     1.00000000     0.00000000 -3177.13498934     0.00000000    -0.26929376  0.68D-02  0.65D-01     0.18
    2     1     1     1.06354519    -0.25870465 -3177.43105544    -0.25870465    -0.00364086  0.73D-03  0.51D-03     2.26
    2     2     2     1.06447001    -0.25588196 -3177.39087130    -0.25588196    -0.00394193  0.85D-03  0.66D-03     2.26
    2     3     3     1.06455973    -0.25588150 -3177.39087083    -0.25588150    -0.00394198  0.85D-03  0.67D-03     2.26
    2     4     4     1.06453001    -0.25587788 -3177.39086722    -0.25587788    -0.00394645  0.85D-03  0.67D-03     2.26
    3     1     1     1.06602313    -0.26265866 -3177.43500945    -0.00395400    -0.00009775  0.18D-04  0.17D-04     4.41
    3     2     2     1.06586830    -0.26008252 -3177.39507185    -0.00420056    -0.00010163  0.97D-05  0.27D-04     4.41
    3     3     3     1.06585474    -0.26008219 -3177.39507153    -0.00420070    -0.00010184  0.97D-05  0.27D-04     4.41
    3     4     4     1.06583655    -0.26008203 -3177.39507136    -0.00420414    -0.00010186  0.98D-05  0.27D-04     4.41
    4     1     1     1.06619526    -0.26277499 -3177.43512578    -0.00011633    -0.00000446  0.10D-05  0.70D-06     6.52
    4     2     2     1.06635538    -0.26020284 -3177.39519218    -0.00012033    -0.00000504  0.98D-06  0.16D-05     6.52
    4     3     3     1.06635106    -0.26020280 -3177.39519213    -0.00012060    -0.00000507  0.98D-06  0.16D-05     6.52
    4     4     4     1.06634376    -0.26020274 -3177.39519208    -0.00012072    -0.00000509  0.98D-06  0.16D-05     6.52
    5     1     1     1.06634490    -0.26278009 -3177.43513088    -0.00000510    -0.00000013  0.21D-07  0.26D-07     8.65
    5     2     2     1.06661858    -0.26020894 -3177.39519827    -0.00000610    -0.00000023  0.24D-07  0.14D-06     8.65
    5     3     3     1.06661667    -0.26020893 -3177.39519827    -0.00000613    -0.00000023  0.24D-07  0.14D-06     8.65
    5     4     4     1.06661415    -0.26020892 -3177.39519826    -0.00000618    -0.00000023  0.24D-07  0.15D-06     8.65
    6     1     1     1.06636073    -0.26278024 -3177.43513103    -0.00000015    -0.00000000  0.13D-08  0.10D-08    10.77
    6     2     2     1.06669282    -0.26020923 -3177.39519857    -0.00000029    -0.00000002  0.98D-09  0.16D-07    10.77
    6     3     3     1.06669246    -0.26020923 -3177.39519857    -0.00000030    -0.00000002  0.10D-08  0.16D-07    10.77
    6     4     4     1.06669204    -0.26020923 -3177.39519857    -0.00000031    -0.00000002  0.11D-08  0.17D-07    10.77
    7     1     1     1.06636073    -0.26278024 -3177.43513103    -0.00000000    -0.00000000  0.13D-08  0.10D-08    12.47
    7     2     2     1.06672063    -0.26020926 -3177.39519860    -0.00000003    -0.00000000  0.11D-09  0.52D-09    12.47
    7     3     3     1.06671703    -0.26020926 -3177.39519860    -0.00000003    -0.00000000  0.14D-09  0.81D-09    12.47
    7     4     4     1.06671698    -0.26020926 -3177.39519860    -0.00000003    -0.00000000  0.15D-09  0.82D-09    12.47


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.3%
 S   3.0%  13.0%
 P   1.0%  30.3%   7.1%

 Initialization:   0.8%
 Other:           41.5%

 Total CPU:       12.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222//222000           0.9682415  -0.0000000  -0.0000000   0.0000000
 22222200222//0          -0.0000000  -0.0000000  -0.0000000   0.9681044
 22222200222/0/           0.0000000  -0.0000000   0.9681043   0.0000000
 222222002220//           0.0000000   0.9681027   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968241    0.000000   -0.000000    0.000000
 2          -0.000000    0.968103   -0.000000   -0.000000
 3          -0.000000    0.000000   -0.000000    0.968104
 4           0.000000    0.000000    0.968104    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968241   -0.000000   -0.000000    0.000000
 2          -0.000000    0.968103   -0.000000    0.000000
 3          -0.000000   -0.000000    0.968104    0.000000
 4           0.000000    0.000000    0.000000    0.968104


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96824150 (fixed)   0.96824150 (relaxed)   0.96824150 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00029586   -0.00052115   -0.23177823
 Singles      0.01274054   -0.01562566   -0.01778772
 Pairs        0.05363982   -0.00000000   -0.01321429
 Total        1.06667622   -0.01614681   -0.26278024
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.17235079
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.92570634
 One electron energy                -4391.14402017
 Two electron energy                 1213.70888915
 Virial quotient                       -0.91994889
 Correlation energy                    -0.26278024
 !MRCI STATE 1.1 Energy             -3177.435131027421

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.45265222 (Davidson, fixed reference)
 Cluster corrected energies         -3177.45265222 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.45265222 (Davidson, rotated reference)

 Cluster corrected energies         -3177.45154926 (Pople, fixed reference)
 Cluster corrected energies         -3177.45154926 (Pople, relaxed reference)
 Cluster corrected energies         -3177.45154926 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96810271 (fixed)   0.96810271 (relaxed)   0.96810271 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00024510   -0.00043375   -0.23360353
 Singles      0.00501635   -0.01102226   -0.01155317
 Pairs        0.06172063    0.00000000   -0.01505257
 Total        1.06698209   -0.01145601   -0.26020926
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.13498934
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.88227842
 One electron energy                -4392.59085276
 Two electron energy                 1215.19565417
 Virial quotient                       -0.91994890
 Correlation energy                    -0.26020926
 !MRCI STATE 2.1 Energy             -3177.395198597404

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.41262796 (Davidson, fixed reference)
 Cluster corrected energies         -3177.41262796 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.41262796 (Davidson, rotated reference)

 Cluster corrected energies         -3177.41153480 (Pople, fixed reference)
 Cluster corrected energies         -3177.41153480 (Pople, relaxed reference)
 Cluster corrected energies         -3177.41153480 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96810435 (fixed)   0.96810435 (relaxed)   0.96810435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00024510   -0.00043375   -0.00046629
 Singles      0.00501573   -0.01102222   -0.01155322
 Pairs        0.06171765   -0.24875329   -0.24818975
 Total        1.06697848   -0.26020926   -0.26020926
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.13498934
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.88245453
 One electron energy                -4392.59093216
 Two electron energy                 1215.19573356
 Virial quotient                       -0.91994885
 Correlation energy                    -0.26020926
 !MRCI STATE 3.1 Energy             -3177.395198596862

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.41262702 (Davidson, fixed reference)
 Cluster corrected energies         -3177.41262702 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.41262702 (Davidson, rotated reference)

 Cluster corrected energies         -3177.41153387 (Pople, fixed reference)
 Cluster corrected energies         -3177.41153387 (Pople, relaxed reference)
 Cluster corrected energies         -3177.41153387 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96810437 (fixed)   0.96810437 (relaxed)   0.96810437 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00024510   -0.00043375   -0.23360435
 Singles      0.00501574   -0.01102223   -0.01155323
 Pairs        0.06171759    0.00000000   -0.01505168
 Total        1.06697843   -0.01145598   -0.26020926
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -3177.13498934
 Nuclear energy                         0.00000000
 Kinetic energy                      3453.88246255
 One electron energy                -4392.59094051
 Two electron energy                 1215.19574192
 Virial quotient                       -0.91994885
 Correlation energy                    -0.26020926
 !MRCI STATE 4.1 Energy             -3177.395198596839

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -3177.41262700 (Davidson, fixed reference)
 Cluster corrected energies         -3177.41262700 (Davidson, relaxed reference)
 Cluster corrected energies         -3177.41262700 (Davidson, rotated reference)

 Cluster corrected energies         -3177.41153386 (Pople, fixed reference)
 Cluster corrected energies         -3177.41153386 (Pople, relaxed reference)
 Cluster corrected energies         -3177.41153386 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       29.31       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        22.52     13.19      5.19      1.27      0.03      2.46
 REAL TIME  *        26.16 SEC
 DISK USED  *        72.43 MB (local),        2.25 GB (total)
 SF USED    *       195.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =     -3177.45265222  AU                              
 SETTING HLSDIAG(4)     =     -3177.41262796  AU                              
 SETTING HLSDIAG(5)     =     -3177.41262702  AU                              
 SETTING HLSDIAG(6)     =     -3177.41262700  AU                              


         HLSDIAG
    -3177.584915
    -3177.445785
    -3177.452652
    -3177.412628
    -3177.412627
    -3177.412627
                                                  

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

 Time for Seward_LS:      29.69 sec

 CPU time:     29.69 sec, REAL time:     31.01 sec


 SORTLS1 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.03 sec, REAL time:      0.12 sec
 SORTLS2 read     5936465. and wrote     5936465. SO integrals in    90 records. CPU time:      0.02 sec, REAL time:      0.05 sec

 FILE SIZES: FILE 1:    45.2 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    45.2 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       29.31       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        53.42     30.86     13.19      5.19      1.27      0.03      2.46
 REAL TIME  *        58.65 SEC
 DISK USED  *        72.48 MB (local),        2.57 GB (total)
 SF USED    *       195.21 MB
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

 Original energies:  -3177.566501  -3177.428010
 Replaced energies:  -3177.584915  -3177.445785

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   4

 Original energies:  -3177.435131  -3177.395199  -3177.395199  -3177.395199
 Replaced energies:  -3177.452652  -3177.412628  -3177.412627  -3177.412627



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -3177.58491508

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00      68.75       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -68.75      -0.00       0.00      -0.00       0.00     -97.23       0.00

    2   2.1  0.0  0.0       0.00   30535.43       0.00      -0.00      -0.00      -9.85       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       9.86       0.00      -0.00       0.00      -0.00      13.94      -0.00

    3   1.1  1.0  1.0      -0.00       0.00   29028.34       0.00       0.00       0.00      -0.00       0.00       0.00       9.63
                           -0.00       0.00       0.00      -0.00     -13.62       0.00      -0.00       9.63       0.00      -0.00

    4   2.1  1.0  1.0       0.00      -0.00       0.00   37812.65       0.00       0.00      -0.00       0.00    -122.49       0.00
                           68.75      -9.86       0.00      -0.00      -0.00    -173.23      -9.63       0.00      -0.00       0.00

    5   3.1  1.0  1.0       0.00      -0.00       0.00       0.00   37812.86       0.00      -0.00     122.49       0.00      -0.00
                            0.00      -0.00      13.62       0.00      -0.00      -0.00      -0.00       0.00       0.00    -122.49

    6   4.1  1.0  1.0      68.75      -9.85       0.00       0.00       0.00   37812.86      -9.63      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00     173.23       0.00       0.00       0.00      -0.00     122.49      -0.00

    7   1.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -9.63   29028.34       0.00       0.00       0.00
                            0.00      -0.00       0.00       9.63       0.00      -0.00       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00       0.00       0.00     122.49      -0.00       0.00   37812.65       0.00       0.00
                           -0.00       0.00      -9.63      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00       0.00    -122.49       0.00       0.00       0.00       0.00   37812.86       0.00
                           97.23     -13.94      -0.00       0.00      -0.00    -122.49      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00       9.63       0.00      -0.00      -0.00       0.00       0.00       0.00   37812.86
                           -0.00       0.00       0.00      -0.00     122.49       0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -9.63
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       9.63       0.00      -0.00

   12   2.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     122.49      -0.00
                          -68.75       9.86      -0.00      -0.00      -0.00      -0.00      -9.63      -0.00      -0.00       0.00

   13   3.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -122.49       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -122.49

   14   4.1  1.0 -1.0      68.75      -9.85       0.00       0.00       0.00       0.00       9.63       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     122.49       0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.0  0.0      -0.00       0.00       0.00      68.75
                           -0.00      68.75       0.00      -0.00

    2   2.1  0.0  0.0       0.00      -0.00      -0.00      -9.85
                            0.00      -9.86      -0.00       0.00

    3   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    4   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    6   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0      -0.00       0.00       0.00       9.63
                           -0.00       9.63       0.00      -0.00

    8   2.1  1.0  0.0      -0.00       0.00    -122.49       0.00
                           -9.63       0.00      -0.00       0.00

    9   3.1  1.0  0.0      -0.00     122.49       0.00      -0.00
                           -0.00       0.00       0.00    -122.49

   10   4.1  1.0  0.0      -9.63      -0.00       0.00      -0.00
                            0.00      -0.00     122.49      -0.00

   11   1.1  1.0 -1.0   29028.34       0.00       0.00       0.00
                           -0.00       0.00      13.62      -0.00

   12   2.1  1.0 -1.0       0.00   37812.65       0.00       0.00
                           -0.00       0.00       0.00     173.23

   13   3.1  1.0 -1.0       0.00       0.00   37812.86       0.00
                          -13.62      -0.00       0.00       0.00

   14   4.1  1.0 -1.0       0.00       0.00       0.00   37812.86
                            0.00    -173.23      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by  -3177.58491508 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000      97.230       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |0 0>               0.000   30535.426       0.000      -0.000      -0.000     -13.937       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>+             -0.000       0.000   29028.342       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      13.622

    2    1  |1 1>+              0.000      -0.000       0.000   37812.653       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -13.622       0.000

    3    1  |1 1>+              0.000      -0.000       0.000       0.000   37812.859       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 1>+             97.230     -13.937       0.000       0.000       0.000   37812.862       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000   29028.342       0.000
                                0.000      -0.000       0.000      13.622       0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000   37812.653
                               -0.000       0.000     -13.622       0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               97.230     -13.937      -0.000       0.000       0.000    -173.225      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     173.225       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -13.622       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               97.232     -13.937       0.000      -0.000      -0.000    -173.228       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000     173.228
                                0.000      -0.000      13.622       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000     -13.622      -0.000
                               -0.000       0.000      -0.000     173.228       0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                              -97.230       0.000       0.000     -97.232      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               13.937      -0.000      -0.000      13.937       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     -13.622       0.000

    2    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000    -173.228

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000    -173.225      13.622       0.000      -0.000      -0.000

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000
                              173.225       0.000      -0.000     173.228       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000     -13.622
                                0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000     173.228      -0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>           37812.859       0.000       0.000    -173.228       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000   37812.862      13.622       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000      13.622   29028.342       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-           -173.228       0.000       0.000   37812.653       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000      -0.000       0.000       0.000   37812.859       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   37812.862
                                0.000      -0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -3177.58491853    -0.00000345       -0.76      0.00000000        0.00      0.0000
    2 -3177.45265242     0.13226266    29028.30      0.13226611    29029.06      3.5991
    3 -3177.45265242     0.13226266    29028.30      0.13226611    29029.06      3.5991
    4 -3177.45265242     0.13226266    29028.30      0.13226611    29029.06      3.5991
    5 -3177.44578582     0.13912926    30535.34      0.13913270    30536.10      3.7860
    6 -3177.41420205     0.17071303    37467.18      0.17071648    37467.94      4.6454
    7 -3177.41341658     0.17149850    37639.57      0.17150195    37640.33      4.6668
    8 -3177.41341657     0.17149851    37639.57      0.17150196    37640.33      4.6668
    9 -3177.41341608     0.17149900    37639.68      0.17150245    37640.44      4.6668
   10 -3177.41183835     0.17307673    37985.95      0.17308018    37986.71      4.7098
   11 -3177.41183820     0.17307688    37985.98      0.17308033    37986.74      4.7098
   12 -3177.41183819     0.17307689    37985.99      0.17308033    37986.74      4.7098
   13 -3177.41183774     0.17307734    37986.09      0.17308079    37986.84      4.7098
   14 -3177.41183774     0.17307734    37986.09      0.17308079    37986.84      4.7098

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99998990 -0.00000000  0.00000000 -0.00000000  0.00001921  0.00449473 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000355 -0.00000000  0.00000000 -0.00000000  0.99999394 -0.00348238  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.99999750  0.00000905  0.00000853  0.00000000  0.00000000 -0.00223708 -0.00000000
                           0.00000000 -0.00000627 -0.00001319 -0.00000086  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000  0.00000001 -0.00158188  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70731841
                           0.00000000  0.00000002  0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000965

   3    1  |1 1>+         -0.00000000 -0.00000001  0.00000000  0.00158182  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00259504  0.00000000  0.00000000 -0.00000000  0.00201048  0.57726102 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00001319  0.00002780  0.00000181 -0.00000000 -0.00000000 -0.00000000  0.00000003
                          -0.00000000 -0.00000905  0.99999750 -0.00000278 -0.00000000 -0.00000000 -0.00000000  0.00223707

   2    1  |1 0>          -0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00158188  0.00000001  0.00000001 -0.00000000 -0.00000000  0.70731552  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00259504  0.00000000  0.00000000 -0.00000000  0.00201049  0.57726413  0.00000000  0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000001 -0.00000000 -0.00158182 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000086  0.00000181  0.00000012 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000853  0.00000278  0.99999750  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00259510 -0.00000000  0.00000000 -0.00000000  0.00201060  0.57749762  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000001 -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00158182 -0.00000001 -0.00000001  0.00000000  0.00000000 -0.70689444 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000002  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000964
                           0.00000000 -0.00000001  0.00158182 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.70689155

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |0 0>           0.00000000 -0.00000081  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000057 -0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000063  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.00000001  0.70689320  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00041077  0.00000000 -0.00000000

   3    1  |1 1>+          0.70710790 -0.00000000  0.00000000 -0.00000000  0.70710363 -0.00000019
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00060886  0.00000000

   4    1  |1 1>+         -0.00000000 -0.40391149 -0.00000000  0.00000000  0.00000019  0.70965797
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000063 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.70689621  0.00000001 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.41279056 -0.00000000  0.00000000 -0.00000019 -0.70452771

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00060887 -0.00000000
                          -0.70710212 -0.00000000  0.00000000 -0.00000000  0.70710941 -0.00000019

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00223703 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.81636968  0.00000000 -0.00000000 -0.00000000 -0.00512437

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.70731729  0.00000001 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00041102 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001  0.70732006  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -3177.58491853     -0.00000345       -0.76      0.00000000        0.00      0.0000
     2   1  -3177.45265242      0.13226266    29028.30      0.13226611    29029.06      3.5991
     3   1  -3177.45265242      0.13226266    29028.30      0.13226611    29029.06      3.5991
     4   1  -3177.45265242      0.13226266    29028.30      0.13226611    29029.06      3.5991
     5   1  -3177.44578582      0.13912926    30535.34      0.13913270    30536.10      3.7860
     6   1  -3177.41420205      0.17071303    37467.18      0.17071648    37467.94      4.6454
     7   1  -3177.41341658      0.17149850    37639.57      0.17150195    37640.33      4.6668
     8   1  -3177.41341657      0.17149851    37639.57      0.17150196    37640.33      4.6668
     9   1  -3177.41341608      0.17149900    37639.68      0.17150245    37640.44      4.6668
    10   1  -3177.41183835      0.17307673    37985.95      0.17308018    37986.71      4.7098
    11   1  -3177.41183820      0.17307688    37985.98      0.17308033    37986.74      4.7098
    12   1  -3177.41183819      0.17307689    37985.99      0.17308033    37986.74      4.7098
    13   1  -3177.41183774      0.17307734    37986.09      0.17308079    37986.84      4.7098
    14   1  -3177.41183774      0.17307734    37986.09      0.17308079    37986.84      4.7098

 E0 =  -3177.58491508 is the energy of the lowest zeroth-order state
 E1 =  -3177.58491853 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99998990 -0.00000000  0.00000000 -0.00000000  0.00001921  0.00449473 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000355 -0.00000000  0.00000000 -0.00000000  0.99999394 -0.00348238  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     1    1  |1 1>+       0.00000000  0.99999750  0.00000905  0.00000853  0.00000000  0.00000000 -0.00223708 -0.00000000
                                0.00000000 -0.00000627 -0.00001319 -0.00000086  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     2    1  |1 1>+      -0.00000000  0.00000001 -0.00158188  0.00000000  0.00000000 -0.00000000 -0.00000000  0.70731841
                                0.00000000  0.00000002  0.00000004  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000965

  5  1     3    1  |1 1>+      -0.00000000 -0.00000001  0.00000000  0.00158182  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     4    1  |1 1>+      -0.00259504  0.00000000  0.00000000 -0.00000000  0.00201048  0.57726102 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 0>       -0.00000000  0.00001319  0.00002780  0.00000181 -0.00000000 -0.00000000 -0.00000000  0.00000003
                               -0.00000000 -0.00000905  0.99999750 -0.00000278 -0.00000000 -0.00000000 -0.00000000  0.00223707

  8  1     2    1  |1 0>       -0.00000000  0.00000001  0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00158188  0.00000001  0.00000001 -0.00000000 -0.00000000  0.70731552  0.00000000

  9  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00259504  0.00000000  0.00000000 -0.00000000  0.00201049  0.57726413  0.00000000  0.00000000

 10  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000001 -0.00000000 -0.00158182 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>-      -0.00000000  0.00000086  0.00000181  0.00000012 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000853  0.00000278  0.99999750  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00259510 -0.00000000  0.00000000 -0.00000000  0.00201060  0.57749762  0.00000000 -0.00000000

 13  1     3    1  |1 1>-      -0.00000000 -0.00000001 -0.00000002 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00158182 -0.00000001 -0.00000001  0.00000000  0.00000000 -0.70689444 -0.00000000

 14  1     4    1  |1 1>-      -0.00000000  0.00000002  0.00000004  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000964
                                0.00000000 -0.00000001  0.00158182 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.70689155


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |0 0>        0.00000000 -0.00000081  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000057 -0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000063  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.00000001  0.70689320  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00041077  0.00000000 -0.00000000

  5  1     3    1  |1 1>+       0.70710790 -0.00000000  0.00000000 -0.00000000  0.70710363 -0.00000019
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00060886  0.00000000

  6  1     4    1  |1 1>+      -0.00000000 -0.40391149 -0.00000000  0.00000000  0.00000019  0.70965797
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000063 -0.00000000 -0.00000000

  8  1     2    1  |1 0>        0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.70689621  0.00000001 -0.00000000 -0.00000000

  9  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.41279056 -0.00000000  0.00000000 -0.00000019 -0.70452771

 10  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00060887 -0.00000000
                               -0.70710212 -0.00000000  0.00000000 -0.00000000  0.70710941 -0.00000019

 11  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00223703 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000

 12  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.81636968  0.00000000 -0.00000000 -0.00000000 -0.00512437

 13  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.70731729  0.00000001 -0.00000000 -0.00000000

 14  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00041102 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001  0.70732006  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.03%
  5  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.32%    0.00%    0.00%
  7  1     1    1  |1 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.03%    0.00%
  9  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.32%    0.00%    0.00%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>-         0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.35%    0.00%    0.00%
 13  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.97%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%   49.97%    0.00%    0.00%
  5  1     3    1  |1 1>+        50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  6  1     4    1  |1 1>+         0.00%   16.31%    0.00%    0.00%    0.00%   50.36%
  7  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%   49.97%    0.00%    0.00%    0.00%
  9  1     3    1  |1 0>          0.00%   17.04%    0.00%    0.00%    0.00%   49.64%
 10  1     4    1  |1 0>         50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 11  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%   66.65%    0.00%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>-         0.00%    0.00%   50.03%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%   50.03%    0.00%    0.00%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.11       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       29.31       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        95.43     42.01     30.86     13.19      5.19      1.27      0.03      2.46
 REAL TIME  *       102.54 SEC
 DISK USED  *        72.48 MB (local),        2.57 GB (total)
 SF USED    *       195.21 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -3177.411837740734

              CI              CI           MULTI         RHF-SCF
  -3177.39519860  -3177.42801014  -3177.13498934  -3177.27784113
 **********************************************************************************************************************************
 Molpro calculation terminated
