
 Working directory              : /wrk/irikura/molpro.Agu4K4H2OK/
 Global scratch directory       : /wrk/irikura/molpro.Agu4K4H2OK/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Agu4K4H2OK/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.04 sec
 ***,Ar SO-CI
                                                                                 ! active space (8/8)
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ar};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=17,sym=1,spin=1}
 
 {multi
     closed,2,3
     occ,4,9
     wf,nelec=18,sym=1,spin=0;state,6;
     wf,nelec=18,sym=1,spin=2;state,1;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=0;state,6; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,1; save,5202.2}
 hlsdiag(7) = energd
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ar SO-                                                                        
  64 bit mpp version                                                                     DATE: 28-Feb-24          TIME: 11:24:59  
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

 Library entry AR     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry AR     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  AR     18.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   18
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

     10.486 MB (compressed) written to integral file ( 23.1%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      69570.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      69570      RECORD LENGTH: 524288

 Memory used in sort:       0.63 MW

 SORT1 READ     4558334. AND WROTE       15330. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.10 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     90 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.00 SEC

 Node minimum:       68866.  Node maximum:       71403. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.199E-02 0.513E-02 0.590E-01 0.129E+00 0.129E+00 0.129E+00 0.129E+00 0.129E+00
         2 0.126E-01 0.126E-01 0.126E-01 0.298E-01 0.298E-01 0.298E-01 0.113E+00 0.113E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.21      1.86
 REAL TIME  *         3.04 SEC
 DISK USED  *        29.05 MB (local),      995.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   2   6

 NELEC=   17   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -527.33573427    -527.33573427     0.00D+00     0.15D+00     0     0       0.00      0.01    start
   2     -527.39152988      -0.05579561     0.13D-01     0.18D-01     1     0       0.00      0.01    diag2
   3     -527.39350046      -0.00197058     0.48D-02     0.32D-02     2     0       0.00      0.01    diag2
   4     -527.39356016      -0.00005970     0.50D-03     0.10D-02     3     0       0.00      0.01    diag2
   5     -527.39356303      -0.00000288     0.74D-04     0.21D-03     4     0       0.01      0.02    diag2
   6     -527.39356306      -0.00000003     0.64D-05     0.11D-04     5     0       0.00      0.02    diag2
   7     -527.39356306      -0.00000000     0.58D-06     0.19D-05     6     0       0.00      0.02    diag2
   8     -527.39356306      -0.00000000     0.33D-07     0.69D-07     0     0       0.00      0.02    fixocc

 Final alpha occupancy:   3   6
 Final beta  occupancy:   2   6

 !RHF STATE 1.1 Energy               -527.393563061036
  RHF One-electron energy            -720.546925087995
  RHF Two-electron energy             193.153362026959
  RHF Kinetic energy                  538.353517247657
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.979641715275

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.67597     1  1  s    0.99848
    2.1     2.00000   -12.97214     1  2  s    0.99904
    3.1     1.00000    -1.82902     1  3  s    1.12555
    1.2     2.00000   -10.15460     1  1  px   1.00070
    2.2     2.00000   -10.15460     1  1  py   1.00053
    3.2     2.00000   -10.15460     1  1  pz   1.00053
    4.2     2.00000    -1.03123     1  2  pz   1.08893
    5.2     2.00000    -1.03123     1  2  px   1.08894
    6.2     2.00000    -1.03123     1  2  py   1.08893


 HOMO      6.2    -1.031226 =     -28.0611eV
 LUMO      4.1    -0.113559 =      -3.0901eV
 LUMO-HOMO         0.917668 =      24.9710eV

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
 CPU TIMES  *         2.24      0.03      1.86
 REAL TIME  *         3.07 SEC
 DISK USED  *        29.60 MB (local),     1012.41 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 4 3 5 2 1   2 4 6 3 5 6 4 3 5 2   1 2 6 4 5 3 1 2 4 6   3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.689D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.183D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.189D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.247D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.376D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.217D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.127D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.100D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 3   1 2 9 7 6 810 4 5 3   1 210 8 6 9 7 5 410   8 5 4 9 7 6 3 1 2 3
                                        2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 Weight factors for state symmetry  2:    0.14286
 
 Number of orbital rotations:  435  ( 22 closed/active, 157 closed/virtual, 0 active/active, 256 active/virtual )
 Total number of variables:    17011
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   30    0   -528.21488545    -528.21953643   -0.00465098    0.11119562 0.00032095 0.00055331  0.78E+00      4.05
   2   11   46    0   -528.21954166    -528.21954510   -0.00000344    0.00120125 0.00000024 0.00000023  0.26E-01     10.39
   3    4   15    0   -528.21954510    -528.21954510   -0.00000000    0.00000056 0.00000001 0.00000015  0.49E-05     12.91

 CONVERGENCE REACHED!  Final gradient:    0.00000008 ( 0.77E-07)
                       Final energy:   -528.21954510
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -528.613982491974
 Nuclear energy                                  0.00000000
 Kinetic energy                                540.43726561
 One electron energy                          -731.65651796
 Two electron energy                           203.04253546
 Virial ratio                                    1.97812275
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -528.150708701323
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.16102997
 One electron energy                          -725.36472817
 Two electron energy                           197.21401946
 Virial ratio                                    1.97957879
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -528.150708701323
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.16102997
 One electron energy                          -725.36472817
 Two electron energy                           197.21401946
 Virial ratio                                    1.97957879
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -528.150708701323
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.16102997
 One electron energy                          -725.36472817
 Two electron energy                           197.21401946
 Virial ratio                                    1.97957879
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -528.150708701225
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.16102997
 One electron energy                          -725.36472817
 Two electron energy                           197.21401946
 Virial ratio                                    1.97957879
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -528.150708701225
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.16102997
 One electron energy                          -725.36472817
 Two electron energy                           197.21401946
 Virial ratio                                    1.97957879
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -528.169289694012
 Nuclear energy                                  0.00000000
 Kinetic energy                                539.09293582
 One electron energy                          -725.25355094
 Two electron energy                           197.08426125
 Virial ratio                                    1.97973699
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.999789365236
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000210435310
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000381166
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999922183787
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000077634502
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000171242710
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.534234228231
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.465594510459
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.015297877254
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     2.984702141345
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000039392054
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.465555336459
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.534405108375
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.984779938959
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.015220224153
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 5 4 3 2 1   2 6 4 5 3 6 4 3 5 2   1 2 6 5 4 3 1 2 6 4   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   2 1 9 7 6 810 5 4 1   2 310 8 6 9 7 5 410   8 5 4 7 9 6 1 3 2 3
                                        2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -119.35657     1  1  s    0.99850
    2.1     2.00000   -12.65280     1  2  s    1.00179
    3.1     1.99820    -1.49846     1  3  s    1.07707
    4.1     0.00219     0.88869     1  3  s   -0.94914    1  4  s   -1.26288    1  5  s    1.74895    1  6  s    0.39496
    1.2     2.00000    -9.83345     1  1  px   0.99990
    2.2     2.00000    -9.83345     1  1  py   0.99990
    3.2     2.00000    -9.83345     1  1  pz   0.99990
    4.2     1.71217    -0.72391     1  2  px   1.08001
    5.2     1.71217    -0.72391     1  2  py   1.08001
    6.2     1.71217    -0.72391     1  2  pz   1.08001
    7.2     0.28770     0.07807     1  7  px   1.15476
    8.2     0.28770     0.07807     1  7  py   1.15476
    9.2     0.28770     0.07807     1  7  pz   1.15476
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20 222000      0.98377541     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 20 a22b00      0.06716916      0.00002248      0.00006880      0.00001318     -0.00253947      0.57650314
 20 b22a00     -0.06716916     -0.00002248     -0.00006880     -0.00001318      0.00253947     -0.57650314
 20 22a00b      0.06716916     -0.00009046     -0.00016238     -0.00002278      0.50053608     -0.28605230
 20 22b00a     -0.06716916      0.00009046      0.00016238      0.00002278     -0.50053608      0.28605230
 20 22b0a0     -0.00000000     -0.49925368      0.00417971      0.00017735     -0.00007823      0.00001862
 20 22a0b0      0.00000000      0.49925368     -0.00417971     -0.00017735      0.00007823     -0.00001862
 20 2b200a     -0.00000000     -0.49925368      0.00417971      0.00017735     -0.00007823      0.00001862
 20 2a200b      0.00000000      0.49925368     -0.00417971     -0.00017735      0.00007823     -0.00001862
 20 2b20a0     -0.06716916     -0.00006798     -0.00009358     -0.00000960      0.49799661      0.29045083
 20 2a20b0      0.06716916      0.00006798      0.00009358      0.00000960     -0.49799661     -0.29045083
 20 2b2a00      0.00000000     -0.00180960     -0.19668063     -0.45889562     -0.00006573      0.00003375
 20 2a2b00     -0.00000000      0.00180960      0.19668063      0.45889562      0.00006573     -0.00003375
 20 a220b0      0.00000000      0.00180960      0.19668063      0.45889562      0.00006573     -0.00003375
 20 b220a0     -0.00000000     -0.00180960     -0.19668063     -0.45889562     -0.00006573      0.00003375
 20 22ab00      0.00000000      0.00377182      0.45888014     -0.19668889      0.00011207     -0.00004992
 20 22ba00     -0.00000000     -0.00377182     -0.45888014      0.19668889     -0.00011207      0.00004992
 20 a2200b      0.00000000      0.00377182      0.45888014     -0.19668889      0.00011207     -0.00004992
 20 b2200a     -0.00000000     -0.00377182     -0.45888014      0.19668889     -0.00011207      0.00004992
 
 Energy:     -528.61398249   -528.15070870   -528.15070870   -528.15070870   -528.15070870   -528.15070870
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 20 22a00a      0.57672250
 20 2a20a0      0.57672250
 20 a22a00      0.57672250
 
 Energy:     -528.16928969
 


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
 CPU TIMES  *         4.24      2.00      0.03      1.86
 REAL TIME  *        17.26 SEC
 DISK USED  *        32.53 MB (local),        1.07 GB (total)
 SF USED    *         9.18 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -528.6139825   0.0
    -528.1507087   6.0
    -528.1507087   6.0
    -528.1507087   6.0
    -528.1507087   6.0
    -528.1507087   6.0
    -528.1692897   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 18
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      603 conf      924 CSFs
 N elec internal:    13011 conf    32004 CSFs
 N-1 el internal:    15604 conf    64512 CSFs
 N-2 el internal:    10878 conf    69696 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.61398249
     2      -528.15070870
     3      -528.15070870
     4      -528.15070870
     5      -528.15070870
     6      -528.15070870

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1372D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2199D-06

 Number of blocks in overlap matrix:   140   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:     849
 Number of N-1 electron functions:   64512

 Number of internal configurations:                16212
 Number of singly external configurations:       2000768
 Number of doubly external configurations:        818832
 Total number of contracted configurations:      2835812
 Total number of uncontracted configurations:   68768804

 Diagonal Coupling coefficients finished.               Storage:11666352 words, CPU-Time:      5.49 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  848928 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.61398249    -0.00000000    -0.47965452  0.28D-01  0.32D-01     7.78
    1     2     2     1.00000000     0.00000000  -528.15070870    -0.00000000    -0.47014440  0.23D-01  0.36D-01     7.78
    1     3     3     1.00000000     0.00000000  -528.15070870    -0.00000000    -0.47015526  0.23D-01  0.36D-01     7.78
    1     4     4     1.00000000     0.00000000  -528.15070870    -0.00000000    -0.46989081  0.23D-01  0.36D-01     7.78
    1     5     5     1.00000000     0.00000000  -528.15070870     0.00000000    -0.47775219  0.23D-01  0.40D-01     7.78
    1     6     6     1.00000000     0.00000000  -528.15070870     0.00000000    -0.47364930  0.23D-01  0.38D-01     7.78
    2     1     1     1.05768561    -0.46856633  -529.08254882    -0.46856633    -0.01733927  0.29D-02  0.18D-02    34.65
    2     2     2     1.05643348    -0.45166668  -528.60237538    -0.45166668    -0.00951693  0.11D-02  0.12D-02    34.65
    2     3     3     1.05408229    -0.45163516  -528.60234386    -0.45163516    -0.00953660  0.12D-02  0.11D-02    34.65
    2     4     4     1.05407806    -0.45163069  -528.60233940    -0.45163069    -0.00953807  0.12D-02  0.11D-02    34.65
    2     5     5     1.05508788    -0.45156267  -528.60227137    -0.45156267    -0.00961443  0.11D-02  0.11D-02    34.65
    2     6     6     1.05394292    -0.45150190  -528.60221060    -0.45150190    -0.00964225  0.12D-02  0.11D-02    34.65
    3     1     1     1.06000125    -0.48813766  -529.10212015    -0.01957133    -0.00180710  0.13D-03  0.19D-03    61.69
    3     2     2     1.05635420    -0.46188097  -528.61258967    -0.01021428    -0.00082502  0.62D-04  0.11D-03    61.69
    3     3     3     1.05635190    -0.46187899  -528.61258769    -0.01024383    -0.00082582  0.62D-04  0.11D-03    61.69
    3     4     4     1.05627509    -0.46185367  -528.61256237    -0.01022298    -0.00084102  0.62D-04  0.12D-03    61.69
    3     5     5     1.05639726    -0.46180712  -528.61251583    -0.01024445    -0.00085568  0.64D-04  0.13D-03    61.69
    3     6     6     1.05630697    -0.46179916  -528.61250786    -0.01029726    -0.00085569  0.61D-04  0.13D-03    61.69
    4     1     1     1.06714719    -0.49035283  -529.10433533    -0.00221518    -0.00014145  0.53D-05  0.19D-04    88.68
    4     2     2     1.06090723    -0.46295871  -528.61366741    -0.00107774    -0.00008209  0.36D-05  0.12D-04    88.68
    4     3     3     1.06090739    -0.46295805  -528.61366675    -0.00107906    -0.00008240  0.37D-05  0.13D-04    88.68
    4     4     4     1.06073297    -0.46295733  -528.61366603    -0.00110365    -0.00008827  0.40D-05  0.13D-04    88.68
    4     5     5     1.06091294    -0.46295449  -528.61366319    -0.00114737    -0.00008430  0.37D-05  0.13D-04    88.68
    4     6     6     1.06086668    -0.46295091  -528.61365961    -0.00115175    -0.00008905  0.38D-05  0.14D-04    88.68
    5     1     1     1.06792282    -0.49054451  -529.10452701    -0.00019168    -0.00001987  0.14D-05  0.25D-05   115.67
    5     2     2     1.06106962    -0.46306676  -528.61377546    -0.00010805    -0.00001231  0.12D-05  0.16D-05   115.67
    5     3     3     1.06105923    -0.46306629  -528.61377499    -0.00010824    -0.00001304  0.13D-05  0.16D-05   115.67
    5     4     4     1.06105932    -0.46306608  -528.61377478    -0.00010876    -0.00001315  0.13D-05  0.16D-05   115.67
    5     5     5     1.06106482    -0.46306586  -528.61377456    -0.00011137    -0.00001308  0.13D-05  0.16D-05   115.67
    5     6     6     1.06105735    -0.46306551  -528.61377421    -0.00011460    -0.00001348  0.14D-05  0.16D-05   115.67
    6     1     1     1.06772746    -0.49056951  -529.10455201    -0.00002500    -0.00000254  0.13D-06  0.29D-06   142.29
    6     2     2     1.06089913    -0.46308223  -528.61379093    -0.00001547    -0.00000221  0.15D-06  0.28D-06   142.29
    6     3     3     1.06089823    -0.46308217  -528.61379087    -0.00001588    -0.00000224  0.15D-06  0.29D-06   142.29
    6     4     4     1.06091072    -0.46308214  -528.61379084    -0.00001606    -0.00000226  0.15D-06  0.30D-06   142.29
    6     5     5     1.06089461    -0.46308203  -528.61379073    -0.00001617    -0.00000232  0.16D-06  0.30D-06   142.29
    6     6     6     1.06090073    -0.46308195  -528.61379065    -0.00001644    -0.00000234  0.15D-06  0.31D-06   142.29
    7     1     1     1.06783827    -0.49057264  -529.10455513    -0.00000312    -0.00000038  0.18D-07  0.45D-07   169.06
    7     2     2     1.06100854    -0.46308519  -528.61379389    -0.00000296    -0.00000049  0.29D-07  0.66D-07   169.06
    7     3     3     1.06101371    -0.46308516  -528.61379386    -0.00000300    -0.00000049  0.29D-07  0.63D-07   169.06
    7     4     4     1.06101359    -0.46308515  -528.61379385    -0.00000301    -0.00000049  0.30D-07  0.64D-07   169.06
    7     5     5     1.06101185    -0.46308511  -528.61379382    -0.00000308    -0.00000052  0.30D-07  0.68D-07   169.06
    7     6     6     1.06101340    -0.46308511  -528.61379381    -0.00000316    -0.00000052  0.30D-07  0.68D-07   169.06
    8     1     1     1.06785681    -0.49057310  -529.10455560    -0.00000047    -0.00000007  0.31D-08  0.89D-08   195.63
    8     2     2     1.06103327    -0.46308578  -528.61379448    -0.00000059    -0.00000010  0.11D-07  0.13D-07   195.63
    8     3     3     1.06103461    -0.46308577  -528.61379447    -0.00000061    -0.00000011  0.12D-07  0.14D-07   195.63
    8     4     4     1.06103428    -0.46308576  -528.61379447    -0.00000062    -0.00000011  0.12D-07  0.14D-07   195.63
    8     5     5     1.06103455    -0.46308576  -528.61379447    -0.00000065    -0.00000011  0.13D-07  0.14D-07   195.63
    8     6     6     1.06103464    -0.46308576  -528.61379446    -0.00000065    -0.00000012  0.13D-07  0.14D-07   195.63
    9     1     1     1.06785466    -0.49057319  -529.10455568    -0.00000008    -0.00000001  0.57D-09  0.13D-08   222.27
    9     2     2     1.06102943    -0.46308590  -528.61379460    -0.00000012    -0.00000002  0.19D-08  0.32D-08   222.27
    9     3     3     1.06102857    -0.46308590  -528.61379460    -0.00000013    -0.00000003  0.20D-08  0.32D-08   222.27
    9     4     4     1.06102823    -0.46308590  -528.61379460    -0.00000013    -0.00000003  0.22D-08  0.35D-08   222.27
    9     5     5     1.06102846    -0.46308590  -528.61379460    -0.00000013    -0.00000003  0.21D-08  0.33D-08   222.27
    9     6     6     1.06102858    -0.46308589  -528.61379460    -0.00000014    -0.00000003  0.21D-08  0.34D-08   222.27


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.4%
 S   1.9%   9.6%
 P   1.0%  58.2%  16.7%

 Initialization:   2.6%
 Other:            7.5%

 Total CPU:      222.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222222000           0.9570682  -0.0000005  -0.0000000   0.0000000   0.0000000   0.0000003
 22022222/00\           0.0738420   0.7681005   0.0003804   0.0002540  -0.0053057  -0.1903022
 2202222/20\0           0.0738420  -0.2191784  -0.0024215   0.0012143   0.0200447   0.7601098
 22022222/\00           0.0000000   0.0002119   0.6852922   0.0049038  -0.0032543   0.0023222
 220222/2200\          -0.0000000   0.0002119   0.6852897   0.0049038  -0.0032543   0.0023222
 220222/220\0          -0.0000000  -0.0005559  -0.0051204   0.6836049  -0.0481884   0.0000021
 2202222/2\00           0.0000000  -0.0005559  -0.0051204   0.6836043  -0.0481883   0.0000021
 22022222/0\0           0.0000000   0.0002385   0.0029613   0.0481950   0.6833813  -0.0180201
 2202222/200\          -0.0000000   0.0002385   0.0029613   0.0481948   0.6833776  -0.0180200
 220222/22\00           0.0738420  -0.5489156   0.0020411  -0.0014683  -0.0147391  -0.5698117

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.967159   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.000338    0.000300   -0.000787    0.942300    0.233343
 3           0.000000    0.004195    0.970722   -0.007253    0.000466   -0.003161
 4          -0.000000    0.068269    0.006946    0.968333    0.000312    0.001900
 5          -0.000000    0.968014   -0.004610   -0.068259   -0.006504    0.024637
 6          -0.000000   -0.025526    0.003289    0.000003   -0.233254    0.941972

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967159    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.970763   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.970763   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.970763   -0.000000    0.000000
 5          -0.000000    0.000000    0.000000   -0.000000    0.970763   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.970763

 Energy contributions of internal configurations for state 1
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

   219       0.00003137    -1.22205488       220222222000                    


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96715870 (fixed)   0.96769983 (relaxed)   0.96715870 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00113435   -0.00031151   -0.40880411
 Singles      0.01445094   -0.05409112   -0.05723066
 Pairs        0.05348070    0.00000002   -0.02453841
 Total        1.06906599   -0.05440261   -0.49057319
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.61398249
 Nuclear energy                         0.00000000
 Kinetic energy                       540.16369205
 One electron energy                 -730.62080544
 Two electron energy                  201.51624976
 Virial quotient                       -0.97952632
 Correlation energy                    -0.49057319
 !MRCI STATE 1.1 Energy              -529.104555680010

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -529.13843760 (Davidson, fixed reference)
 Cluster corrected energies          -529.13785122 (Davidson, relaxed reference)
 Cluster corrected energies          -529.13843760 (Davidson, rotated reference)

 Cluster corrected energies          -529.13580381 (Pople, fixed reference)
 Cluster corrected energies          -529.13523465 (Pople, relaxed reference)
 Cluster corrected energies          -529.13580381 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94230046 (fixed)   0.97079993 (relaxed)   0.97076267 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010691   -0.00050740   -0.28679676
 Singles      0.01628985   -0.06267878   -0.06617961
 Pairs        0.04474611   -0.09612429   -0.11010953
 Total        1.06114287   -0.15931047   -0.46308590
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15070870
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62506056
 One electron energy                 -725.27889520
 Two electron energy                  196.66510060
 Virial quotient                       -0.97959460
 Correlation energy                    -0.46308590
 !MRCI STATE 2.1 Energy              -528.613794604646

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64210901 (Davidson, fixed reference)
 Cluster corrected energies          -528.64207129 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64210901 (Davidson, rotated reference)

 Cluster corrected energies          -528.63974877 (Pople, fixed reference)
 Cluster corrected energies          -528.63971258 (Pople, relaxed reference)
 Cluster corrected energies          -528.63974877 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97072165 (fixed)   0.97080032 (relaxed)   0.97076307 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010691   -0.00050740   -0.37860975
 Singles      0.01628966   -0.06267874   -0.06617957
 Pairs        0.04474544    0.00130204   -0.01829658
 Total        1.06114200   -0.06188409   -0.46308590
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15070870
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62503795
 One electron energy                 -725.27885993
 Two electron energy                  196.66506533
 Virial quotient                       -0.97959464
 Correlation energy                    -0.46308590
 !MRCI STATE 3.1 Energy              -528.613794597770

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64210860 (Davidson, fixed reference)
 Cluster corrected energies          -528.64207089 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64210860 (Davidson, rotated reference)

 Cluster corrected energies          -528.63974838 (Pople, fixed reference)
 Cluster corrected energies          -528.63971219 (Pople, relaxed reference)
 Cluster corrected energies          -528.63974838 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96833294 (fixed)   0.97080048 (relaxed)   0.97076323 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010690   -0.00050740   -0.37664540
 Singles      0.01628957   -0.06267864   -0.06617952
 Pairs        0.04474519   -0.00078264   -0.02026098
 Total        1.06114166   -0.06396867   -0.46308590
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15070870
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62504961
 One electron energy                 -725.27886829
 Two electron energy                  196.66507369
 Virial quotient                       -0.97959462
 Correlation energy                    -0.46308590
 !MRCI STATE 4.1 Energy              -528.613794596844

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64210844 (Davidson, fixed reference)
 Cluster corrected energies          -528.64207073 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64210844 (Davidson, rotated reference)

 Cluster corrected energies          -528.63974823 (Pople, fixed reference)
 Cluster corrected energies          -528.63971204 (Pople, relaxed reference)
 Cluster corrected energies          -528.63974823 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96801403 (fixed)   0.97080037 (relaxed)   0.97076312 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010691   -0.00050740   -0.36781848
 Singles      0.01628960   -0.06267867   -0.06617954
 Pairs        0.04474538   -0.01014913   -0.02908787
 Total        1.06114189   -0.07333520   -0.46308590
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15070870
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62503881
 One electron energy                 -725.27886049
 Two electron energy                  196.66506589
 Virial quotient                       -0.97959464
 Correlation energy                    -0.46308590
 !MRCI STATE 5.1 Energy              -528.613794596780

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64210854 (Davidson, fixed reference)
 Cluster corrected energies          -528.64207084 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64210854 (Davidson, rotated reference)

 Cluster corrected energies          -528.63974833 (Pople, fixed reference)
 Cluster corrected energies          -528.63971214 (Pople, relaxed reference)
 Cluster corrected energies          -528.63974833 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.94197195 (fixed)   0.97080032 (relaxed)   0.97076307 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010690   -0.00050740   -0.01170178
 Singles      0.01628991   -0.06267899   -0.06617957
 Pairs        0.04474519   -0.38803917   -0.38520455
 Total        1.06114200   -0.45122555   -0.46308589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.15070870
 Nuclear energy                         0.00000000
 Kinetic energy                       539.62505959
 One electron energy                 -725.27888613
 Two electron energy                  196.66509154
 Virial quotient                       -0.97959460
 Correlation energy                    -0.46308589
 !MRCI STATE 6.1 Energy              -528.613794596219

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.64210860 (Davidson, fixed reference)
 Cluster corrected energies          -528.64207089 (Davidson, relaxed reference)
 Cluster corrected energies          -528.64210860 (Davidson, rotated reference)

 Cluster corrected energies          -528.63974838 (Pople, fixed reference)
 Cluster corrected energies          -528.63971219 (Pople, relaxed reference)
 Cluster corrected energies          -528.63974838 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      133.20       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       265.29    261.03      2.00      0.03      1.86
 REAL TIME  *       295.45 SEC
 DISK USED  *       165.10 MB (local),        4.96 GB (total)
 SF USED    *         1.40 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -529.13843760  AU                              
 SETTING HLSDIAG(2)     =      -528.64210901  AU                              
 SETTING HLSDIAG(3)     =      -528.64210860  AU                              
 SETTING HLSDIAG(4)     =      -528.64210844  AU                              
 SETTING HLSDIAG(5)     =      -528.64210854  AU                              
 SETTING HLSDIAG(6)     =      -528.64210860  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 18
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      533 conf     1176 CSFs
 N elec internal:    12717 conf    50904 CSFs
 N-1 el internal:    15304 conf   114396 CSFs
 N-2 el internal:    10058 conf   130322 CSFs

 Number of electrons in valence space:                     16
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -528.16928969

 Number of blocks in overlap matrix:    62   Smallest eigenvalue:  0.32D-03
 Number of N-2 electron functions:     144
 Number of N-1 electron functions:  114396

 Number of internal configurations:                25428
 Number of singly external configurations:       3547092
 Number of doubly external configurations:        138900
 Total number of contracted configurations:      3711420
 Total number of uncontracted configurations:  128083055

 Diagonal Coupling coefficients finished.               Storage: 7814775 words, CPU-Time:      0.42 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1922796 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -528.16928969     0.00000000    -0.49031130  0.24D-01  0.49D-01     1.00
    2     1     1     1.06155186    -0.45160891  -528.62089861    -0.45160891    -0.00809767  0.10D-02  0.10D-02     6.46
    3     1     1     1.05708478    -0.45979121  -528.62908091    -0.00818230    -0.00038201  0.21D-04  0.69D-04    11.87
    4     1     1     1.05921936    -0.46026239  -528.62955208    -0.00047117    -0.00002820  0.91D-06  0.51D-05    17.30
    5     1     1     1.05957085    -0.46029085  -528.62958055    -0.00002846    -0.00000194  0.52D-07  0.39D-06    22.73
    6     1     1     1.05956462    -0.46029277  -528.62958246    -0.00000192    -0.00000013  0.48D-08  0.25D-07    28.14
    7     1     1     1.05955134    -0.46029290  -528.62958260    -0.00000013    -0.00000001  0.35D-09  0.19D-08    33.55


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.8%
 S   3.2%  18.2%
 P   1.2%  65.1%   6.1%

 Initialization:   1.8%
 Other:            1.5%

 Total CPU:       33.6 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222/22/00           0.5601256
 2202222/20/0           0.5601255
 22022222/00/           0.5601255


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97142902 (fixed)   0.97147666 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012860   -0.00050921   -0.00053638
 Singles      0.01606654   -0.06225700   -0.06572972
 Pairs        0.04349246   -0.39752670   -0.39402680
 Total        1.05968760   -0.46029291   -0.46029290
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -528.16928969
 Nuclear energy                         0.00000000
 Kinetic energy                       539.59612623
 One electron energy                 -725.25855048
 Two electron energy                  196.62896788
 Virial quotient                       -0.97967639
 Correlation energy                    -0.46029290
 !MRCI STATE 1.1 Energy              -528.629582596566

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -528.65705638 (Davidson, fixed reference)
 Cluster corrected energies          -528.65700854 (Davidson, relaxed reference)

 Cluster corrected energies          -528.65416855 (Pople, fixed reference)
 Cluster corrected energies          -528.65412388 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      161.98       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       299.78     34.45    261.03      2.00      0.03      1.86
 REAL TIME  *       331.21 SEC
 DISK USED  *       193.87 MB (local),        5.80 GB (total)
 SF USED    *         1.40 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =      -528.65700854  AU                              


         HLSDIAG
    -529.1384376
    -528.6421090
    -528.6421086
    -528.6421084
    -528.6421085
    -528.6421086
    -528.6570085
                                                  

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

 Time for Seward_LS:       0.72 sec

 CPU time:      0.72 sec, REAL time:      0.76 sec


 SORTLS1 read     2508005. and wrote     2508005. SO integrals in    90 records. CPU time:      0.02 sec, REAL time:      0.08 sec
 SORTLS2 read     2508005. and wrote     2508005. SO integrals in    90 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    33.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    33.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      161.98       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       302.25      2.44     34.45    261.03      2.00      0.03      1.86
 REAL TIME  *       333.95 SEC
 DISK USED  *       193.91 MB (local),        6.07 GB (total)
 SF USED    *         1.40 GB
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -529.104556   -528.613795   -528.613795   -528.613795   -528.613795   -528.613795
 Replaced energies:   -529.138438   -528.642109   -528.642109   -528.642108   -528.642109   -528.642109

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -528.629583
 Replaced energies:   -528.657009



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -529.13843760

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00  108931.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00  108931.63       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00  108931.66       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00  108931.64       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00  108931.63       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    7   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00       0.00  105661.47      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

    8   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00  105661.47      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

    9   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00  105661.47
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  9)

    The diagonal matrixelements are shifted by   -529.13843760 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000  108931.535       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000  108931.625       0.000       0.000       0.000       0.001       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000  108931.660       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000  108931.637       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000  108931.626       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.001       0.000      -0.000       0.000  105661.466      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000  105661.466
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.001       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9

    1    1  |0 0>               0.000
                                0.000

    2    1  |0 0>               0.000
                               -0.000

    3    1  |0 0>               0.000
                                0.000

    4    1  |0 0>               0.000
                                0.000

    5    1  |0 0>               0.000
                                0.001

    6    1  |0 0>               0.000
                               -0.000

    1    1  |1 1>+              0.000
                                0.000

    1    1  |1 0>               0.000
                                0.000

    1    1  |1 1>-         105661.466
                                0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -529.13843760     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -528.65700854     0.48142906   105661.47      0.48142906   105661.47     13.1004
    3  -528.65700854     0.48142906   105661.47      0.48142906   105661.47     13.1004
    4  -528.65700854     0.48142906   105661.47      0.48142906   105661.47     13.1004
    5  -528.64210901     0.49632859   108931.54      0.49632859   108931.54     13.5058
    6  -528.64210860     0.49632900   108931.63      0.49632900   108931.63     13.5058
    7  -528.64210860     0.49632901   108931.63      0.49632901   108931.63     13.5058
    8  -528.64210854     0.49632906   108931.64      0.49632906   108931.64     13.5058
    9  -528.64210844     0.49632916   108931.66      0.49632916   108931.66     13.5058

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000003 -0.00000019  0.00000000 -0.00000000  1.00000000  0.00000003  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000002 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000025 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  1.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000003  1.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.16979126  0.98532595 -0.01742675  0.00000000  0.00000019  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00688297  0.01886878  0.99979828  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.98545601 -0.16963706  0.00998572  0.00000000 -0.00000000  0.00000001 -0.00000025

 State Sym Spin     / Nr.      9

   1    1  |0 0>          -0.00000000
                           0.00000000

   2    1  |0 0>          -0.00000000
                          -0.00000000

   3    1  |0 0>          -0.00000000
                           0.00000000

   4    1  |0 0>           1.00000000
                           0.00000000

   5    1  |0 0>           0.00000000
                           0.00000000

   6    1  |0 0>          -0.00000000
                           0.00000000

   1    1  |1 1>+          0.00000000
                          -0.00000000

   1    1  |1 0>          -0.00000000
                          -0.00000001

   1    1  |1 1>-          0.00000000
                          -0.00000002


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -529.13843760      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -528.65700854      0.48142906   105661.47      0.48142906   105661.47     13.1004
     3   1   -528.65700854      0.48142906   105661.47      0.48142906   105661.47     13.1004
     4   1   -528.65700854      0.48142906   105661.47      0.48142906   105661.47     13.1004
     5   1   -528.64210901      0.49632859   108931.54      0.49632859   108931.54     13.5058
     6   1   -528.64210860      0.49632900   108931.63      0.49632900   108931.63     13.5058
     7   1   -528.64210860      0.49632901   108931.63      0.49632901   108931.63     13.5058
     8   1   -528.64210854      0.49632906   108931.64      0.49632906   108931.64     13.5058
     9   1   -528.64210844      0.49632916   108931.66      0.49632916   108931.66     13.5058

 E0 =   -529.13843760 is the energy of the lowest zeroth-order state
 E1 =   -529.13843760 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  1.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000003 -0.00000019  0.00000000 -0.00000000  1.00000000  0.00000003  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000002 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000025 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  1.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000003  1.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>+      -0.00000000  0.16979126  0.98532595 -0.01742675  0.00000000  0.00000019  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00688297  0.01886878  0.99979828  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.98545601 -0.16963706  0.00998572  0.00000000 -0.00000000  0.00000001 -0.00000025


   Total
 Nr Sym  State Sym Spin / Nr.        9

  1  1     1    1  |0 0>       -0.00000000
                                0.00000000

  2  1     2    1  |0 0>       -0.00000000
                               -0.00000000

  3  1     3    1  |0 0>       -0.00000000
                                0.00000000

  4  1     4    1  |0 0>        1.00000000
                                0.00000000

  5  1     5    1  |0 0>        0.00000000
                                0.00000000

  6  1     6    1  |0 0>       -0.00000000
                                0.00000000

  7  1     1    1  |1 1>+       0.00000000
                               -0.00000000

  8  1     1    1  |1 0>       -0.00000000
                               -0.00000001

  9  1     1    1  |1 1>-       0.00000000
                               -0.00000002



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
  7  1     1    1  |1 1>+         0.00%    2.88%   97.09%    0.03%    0.00%    0.00%    0.00%    0.00%
  8  1     1    1  |1 0>          0.00%    0.00%    0.04%   99.96%    0.00%    0.00%    0.00%    0.00%
  9  1     1    1  |1 1>-         0.00%   97.11%    2.88%    0.01%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9

  1  1     1    1  |0 0>          0.00%
  2  1     2    1  |0 0>          0.00%
  3  1     3    1  |0 0>          0.00%
  4  1     4    1  |0 0>        100.00%
  5  1     5    1  |0 0>          0.00%
  6  1     6    1  |0 0>          0.00%
  7  1     1    1  |1 1>+         0.00%
  8  1     1    1  |1 0>          0.00%
  9  1     1    1  |1 1>-         0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      161.98       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1358.22   1055.96      2.44     34.45    261.03      2.00      0.03      1.86
 REAL TIME  *      1404.51 SEC
 DISK USED  *       193.91 MB (local),        6.07 GB (total)
 SF USED    *         1.40 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -528.642108438826

              CI              CI           MULTI         RHF-SCF
   -528.62958260   -528.61379460   -528.16928969   -527.39356306
 **********************************************************************************************************************************
 Molpro calculation terminated
