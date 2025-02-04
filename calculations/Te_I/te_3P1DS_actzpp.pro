
 Working directory              : /wrk/irikura/molpro.1C54Ud67pr/
 Global scratch directory       : /wrk/irikura/molpro.1C54Ud67pr/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.1C54Ud67pr/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   28
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Te SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Te};
 
 basis=AWCVTZ-PP
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,6,3
     occ,7,6
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=2;state,NT; save,5302.2}
 hlsdiag = energd4
                                                                                 !hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=0;state,NS; save,5102.2}
 hlsdiag(NT+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.03 sec, 718 directives.
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Te SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Jan-25          TIME: 09:40:47  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  42000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCVTZ-PP
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Te   ECP ECP28MDF                 selected for group  1
 Library entry TE     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TE     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TE     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TE     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry TE     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  TE     24.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   24
 NUMBER OF PRIMITIVE AOS:         184
 NUMBER OF SYMMETRY AOS:          154
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.183E-04 0.179E-02 0.722E-02 0.890E-02 0.890E-02 0.890E-02 0.890E-02 0.890E-02
         2 0.691E-02 0.691E-02 0.691E-02 0.156E-01 0.156E-01 0.156E-01 0.139E+00 0.139E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     19.137 MB (compressed) written to integral file ( 22.2%)

     Node minimum: 0.262 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     194960.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     194960      RECORD LENGTH: 524288

 Memory used in sort:       0.75 MW

 SORT1 READ    11031004. AND WROTE       38494. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.09 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     84 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      194462.  Node maximum:      199024. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.02      1.70
 REAL TIME  *         3.14 SEC
 DISK USED  *        29.19 MB (local),      939.52 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -266.67467335    -266.67467335     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -266.71748798      -0.04281463     0.49D-02     0.17D-01     1     0       0.01      0.02    diag2
   3     -266.71991032      -0.00242234     0.27D-02     0.41D-02     2     0       0.00      0.02    diag2
   4     -266.72034821      -0.00043789     0.49D-03     0.25D-02     3     0       0.01      0.03    diag2
   5     -266.72037246      -0.00002424     0.11D-03     0.72D-03     4     0       0.00      0.03    diag2
   6     -266.72037259      -0.00000014     0.11D-04     0.52D-04     5     0       0.00      0.03    diag2
   7     -266.72037260      -0.00000000     0.14D-05     0.56D-05     6     0       0.01      0.04    diag2
   8     -266.72037260      -0.00000000     0.89D-07     0.45D-06     7     0       0.00      0.04    fixocc
   9     -266.72037260       0.00000000     0.99D-08     0.22D-07     0     0       0.01      0.05    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720372596213
  RHF One-electron energy            -459.057226667514
  RHF Two-electron energy             192.336854071301
  RHF Kinetic energy                  102.492999845512
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602327700411

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45863     1  1  s    1.00084
    2.1     2.00000    -2.27830     1  1  d0   1.00118
    3.1     2.00000    -2.27830     1  1  d2-  0.98909
    4.1     2.00000    -2.27830     1  1  d1+  0.87479    1  1  d2+ -0.48294
    5.1     2.00000    -2.27830     1  1  d1+  0.47177    1  1  d2+  0.84722
    6.1     2.00000    -2.27830     1  1  d1-  0.96002
    7.1     2.00000    -1.03508     1  2  s    1.05438
    1.2     2.00000    -5.42340     1  1  pz   0.99944
    2.2     2.00000    -5.42340     1  1  px   0.99948
    3.2     2.00000    -5.42340     1  1  py   0.99944
    4.2     1.00000    -0.69090     1  2  px   1.18203
    5.2     1.00000    -0.69090     1  2  py   1.18204
    6.2     1.00000    -0.69090     1  2  pz   1.18274


 HOMO      6.2    -0.690895 =     -18.8002eV
 LUMO      8.1    -0.109533 =      -2.9805eV
 LUMO-HOMO         0.581363 =      15.8197eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.07      0.05      1.70
 REAL TIME  *         3.21 SEC
 DISK USED  *        30.04 MB (local),      963.36 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.503D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.187D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.386D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.472D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.329D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 4 5 6 1 1 2 4   6 3 5 1 2 3 5 4 6 1   2 3 5 4 6 2 3 5 6 4   8121415 711 91310 1
                                        2 5 3 4 6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.991D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.131D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.923D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.360D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.335D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.307D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 3 2 1 2   1 3 6 810 5 4 7 9 8  10 6 9 7 4 5 2 1 3 8  10 4 5 9 7 6 1 2 3 6
                                        7 9 810 5 4 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    622
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -266.93108839    -266.96452086   -0.03343248    0.22480500 0.00001570 0.00000000  0.19E+00      0.21
   2    6   10    0   -266.96565102    -266.96576638   -0.00011537    0.01257899 0.00000013 0.00000000  0.12E-01      0.48
   3    4    8    0   -266.96576666    -266.96576666   -0.00000000    0.00004779 0.00000000 0.00000000  0.40E-04      0.66

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.88E-08)
                       Final energy:   -266.96576666
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.998843142798
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67433025
 One electron energy                          -466.59815452
 Two electron energy                           199.59931138
 Virial ratio                                    3.60044397
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.998843142781
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67433024
 One electron energy                          -466.59815451
 Two electron energy                           199.59931137
 Virial ratio                                    3.60044397
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.998843142778
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67433024
 One electron energy                          -466.59815451
 Two electron energy                           199.59931137
 Virial ratio                                    3.60044397
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.955922607907
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67433024
 One electron energy                          -466.59815451
 Two electron energy                           199.64223190
 Virial ratio                                    3.60002595
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.955922607904
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67433024
 One electron energy                          -466.59815451
 Two electron energy                           199.64223190
 Virial ratio                                    3.60002595
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.955922607903
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67433024
 One electron energy                          -466.59815451
 Two electron energy                           199.64223191
 Virial ratio                                    3.60002595
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.955922607894
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67433025
 One electron energy                          -466.59815452
 Two electron energy                           199.64223191
 Virial ratio                                    3.60002595
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.955922607894
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.67433025
 One electron energy                          -466.59815452
 Two electron energy                           199.64223191
 Virial ratio                                    3.60002595
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.915757450359
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66408087
 One electron energy                          -466.47320323
 Two electron energy                           199.55744578
 Virial ratio                                    3.59989429
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>    -0.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.840304283702
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.159695716298
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.151603733944
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.848396266056
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000000000
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.008091982355
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.991908017645
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     4.000000000000
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 3 5   2 6 4 1 5 3 2 6 4 1   3 5 2 6 4 3 5 2 6 4  13101514 812 711 9 1
                                        2 4 6 3 5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   1 3 7 9 810 5 4 6 8  10 7 9 6 5 4 2 1 3 8  10 4 5 6 7 9 2 1 3 6
                                        4 5 810 7 9 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.13718     1  1  s    1.00180
    2.1     2.00000    -1.95768     1  1  d0   1.00013
    3.1     2.00000    -1.95768     1  1  d1+  1.00013
    4.1     2.00000    -1.95768     1  1  d1-  1.00013
    5.1     2.00000    -1.95768     1  1  d2-  1.00013
    6.1     2.00000    -1.95768     1  1  d2+  1.00013
    7.1     1.99350    -0.74956     1  2  s    1.00733
    1.2     2.00000    -5.10260     1  1  py   1.00001
    2.2     2.00000    -5.10260     1  1  px   1.00001
    3.2     2.00000    -5.10260     1  1  pz   1.00001
    4.2     1.33550    -0.24260     1  2  py   0.98185
    5.2     1.33550    -0.24260     1  2  px   0.98185
    6.2     1.33550    -0.24260     1  2  pz   0.98185
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa          0.00000000      0.00000000      1.00000000
 2 a2a         -0.00000000      1.00000000     -0.00000000
 2 aa2          1.00000000     -0.00000000     -0.00000000
 
 Energy:     -266.99884314   -266.99884314   -266.99884314
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 220          0.81567028     -0.00000000     -0.00000000     -0.03672416     -0.00000000      0.56884747
 2 022         -0.37603109     -0.00000000     -0.00000000      0.72475326      0.00000000      0.56884747
 2 ba2         -0.00000000      0.00000000      0.00000000      0.00000000     -0.70710678      0.00000000
 2 2ba          0.00000000     -0.70710678      0.00000000      0.00000000      0.00000000      0.00000000
 2 ab2          0.00000000     -0.00000000     -0.00000000     -0.00000000      0.70710678     -0.00000000
 2 2ab         -0.00000000      0.70710678     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 a2b          0.00000000      0.00000000      0.70710678      0.00000000      0.00000000      0.00000000
 2 b2a         -0.00000000     -0.00000000     -0.70710678     -0.00000000     -0.00000000     -0.00000000
 2 202         -0.43963919     -0.00000000     -0.00000000     -0.68802910     -0.00000000      0.56884747
 0 222          0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.17099022
 
 Energy:     -266.95592261   -266.95592261   -266.95592261   -266.95592261   -266.95592261   -266.91575745
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.75      0.68      0.05      1.70
 REAL TIME  *         4.17 SEC
 DISK USED  *        34.77 MB (local),        1.07 GB (total)
 SF USED    *        12.37 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9988431   2.0
    -266.9988431   2.0
    -266.9988431   2.0
    -266.9559226   6.0
    -266.9559226   6.0
    -266.9559226   6.0
    -266.9559226   6.0
    -266.9559226   6.0
    -266.9157575  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 24
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       78 conf       78 CSFs
 N-1 el internal:      232 conf      564 CSFs
 N-2 el internal:      241 conf     1587 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99884314
     2      -266.99884314
     3      -266.99884314

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         23433
 Number of doubly external configurations:        848316
 Total number of contracted configurations:       871785
 Total number of uncontracted configurations:    2745270

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    444227 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99884314     0.00000000    -0.93549080  0.36D-01  0.13D+00     0.15
    1     2     2     1.00000000     0.00000000  -266.99884314     0.00000000    -0.93537704  0.35D-01  0.13D+00     0.15
    1     3     3     1.00000000     0.00000000  -266.99884314    -0.00000000    -0.93524566  0.35D-01  0.13D+00     0.15
    2     1     1     1.10243004    -0.73072049  -267.72956364    -0.73072049    -0.02067332  0.25D-02  0.23D-02     2.19
    2     2     2     1.10252111    -0.73066213  -267.72950528    -0.73066213    -0.02073379  0.25D-02  0.23D-02     2.19
    2     3     3     1.10261004    -0.73057566  -267.72941881    -0.73057566    -0.02083827  0.26D-02  0.23D-02     2.19
    3     1     1     1.09020066    -0.75003263  -267.74887577    -0.01931213    -0.00034608  0.33D-04  0.40D-04     4.09
    3     2     2     1.09020231    -0.75003130  -267.74887445    -0.01936917    -0.00034740  0.34D-04  0.40D-04     4.09
    3     3     3     1.09020992    -0.75002684  -267.74886998    -0.01945117    -0.00035227  0.35D-04  0.40D-04     4.09
    4     1     1     1.08960015    -0.75038224  -267.74922539    -0.00034962    -0.00000816  0.15D-05  0.81D-06     5.86
    4     2     2     1.08959970    -0.75038223  -267.74922537    -0.00035092    -0.00000818  0.15D-05  0.82D-06     5.86
    4     3     3     1.08959955    -0.75038209  -267.74922524    -0.00035526    -0.00000831  0.15D-05  0.84D-06     5.86
    5     1     1     1.08955832    -0.75039085  -267.74923399    -0.00000860    -0.00000025  0.26D-07  0.35D-07     7.64
    5     2     2     1.08955830    -0.75039085  -267.74923399    -0.00000862    -0.00000025  0.26D-07  0.35D-07     7.64
    5     3     3     1.08955843    -0.75039084  -267.74923398    -0.00000875    -0.00000025  0.26D-07  0.35D-07     7.64
    6     1     1     1.08955045    -0.75039111  -267.74923425    -0.00000026    -0.00000001  0.14D-08  0.11D-08     9.36
    6     2     2     1.08955044    -0.75039111  -267.74923425    -0.00000026    -0.00000001  0.14D-08  0.11D-08     9.36
    6     3     3     1.08955040    -0.75039111  -267.74923425    -0.00000026    -0.00000001  0.14D-08  0.11D-08     9.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.2%   0.7%
 P   1.1%  32.4%  13.8%

 Initialization:   0.9%
 Other:           50.9%

 Total CPU:        9.4 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//2           0.0000000  -0.0000000   0.9580218
 2222222222/2/          -0.0000000   0.9580218  -0.0000000
 22222222222//           0.9580218   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.958022
 2          -0.000000    0.958022    0.000000
 3           0.958022   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958022    0.000000   -0.000000
 2           0.000000    0.958022   -0.000000
 3          -0.000000   -0.000000    0.958022


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95802181 (fixed)   0.95802181 (relaxed)   0.95802181 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000429   -0.00002582   -0.00002665
 Singles      0.01292082   -0.03919615   -0.04487412
 Pairs        0.07663001   -0.71116913   -0.70549033
 Total        1.08955512   -0.75039111   -0.75039111
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99884314
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19459772
 One electron energy                 -466.25386706
 Two electron energy                  198.50463281
 Virial quotient                       -2.59460515
 Correlation energy                    -0.75039111
 !MRCI STATE 1.1 Energy              -267.749234248773

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81643561 (Davidson, fixed reference)
 Cluster corrected energies          -267.81643561 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81643561 (Davidson, rotated reference)

 Cluster corrected energies          -267.81510589 (Pople, fixed reference)
 Cluster corrected energies          -267.81510589 (Pople, relaxed reference)
 Cluster corrected energies          -267.81510589 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95802182 (fixed)   0.95802182 (relaxed)   0.95802182 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000429   -0.00002582   -0.65274182
 Singles      0.01292079   -0.03919613   -0.04487410
 Pairs        0.07663003    0.00000000   -0.05277518
 Total        1.08955511   -0.03922195   -0.75039111
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99884314
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19459789
 One electron energy                 -466.25386691
 Two electron energy                  198.50463266
 Virial quotient                       -2.59460514
 Correlation energy                    -0.75039111
 !MRCI STATE 2.1 Energy              -267.749234248753

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81643561 (Davidson, fixed reference)
 Cluster corrected energies          -267.81643561 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81643561 (Davidson, rotated reference)

 Cluster corrected energies          -267.81510589 (Pople, fixed reference)
 Cluster corrected energies          -267.81510589 (Pople, relaxed reference)
 Cluster corrected energies          -267.81510589 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95802184 (fixed)   0.95802184 (relaxed)   0.95802184 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000429   -0.00002582   -0.65274196
 Singles      0.01292070   -0.03919602   -0.04487403
 Pairs        0.07663008    0.00000000   -0.05277511
 Total        1.08955507   -0.03922184   -0.75039111
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99884314
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19459668
 One electron energy                 -466.25386603
 Two electron energy                  198.50463178
 Virial quotient                       -2.59460517
 Correlation energy                    -0.75039111
 !MRCI STATE 3.1 Energy              -267.749234248683

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81643557 (Davidson, fixed reference)
 Cluster corrected energies          -267.81643557 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81643557 (Davidson, rotated reference)

 Cluster corrected energies          -267.81510585 (Pople, fixed reference)
 Cluster corrected energies          -267.81510585 (Pople, relaxed reference)
 Cluster corrected energies          -267.81510585 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       21.27       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        12.54      9.76      0.68      0.05      1.70
 REAL TIME  *        16.23 SEC
 DISK USED  *        55.26 MB (local),        1.63 GB (total)
 SF USED    *       218.06 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -267.81643561  AU                              
 SETTING HLSDIAG(2)     =      -267.81643561  AU                              
 SETTING HLSDIAG(3)     =      -267.81643557  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      286 conf      488 CSFs
 N-2 el internal:      478 conf     1349 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95592261
     2      -266.95592261
     3      -266.95592261
     4      -266.95592261
     5      -266.95592261
     6      -266.91575745

 Number of blocks in overlap matrix:   685   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         20264
 Number of doubly external configurations:       1425127
 Total number of contracted configurations:      1445440
 Total number of uncontracted configurations:    2342450

 Diagonal Coupling coefficients finished.               Storage:    441503 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    505133 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95592261    -0.00000000    -0.93374005  0.38D-01  0.13D+00     0.16
    1     2     2     1.00000000     0.00000000  -266.95592261    -0.00000000    -0.93739517  0.38D-01  0.13D+00     0.16
    1     3     3     1.00000000     0.00000000  -266.95592261     0.00000000    -0.93742564  0.38D-01  0.13D+00     0.16
    1     4     4     1.00000000     0.00000000  -266.95592261     0.00000000    -0.93600907  0.38D-01  0.13D+00     0.16
    1     5     5     1.00000000     0.00000000  -266.95592261     0.00000000    -0.93664892  0.38D-01  0.13D+00     0.16
    1     6     6     1.00000000     0.00000000  -266.91575745    -0.00000000    -0.91133929  0.79D-02  0.14D+00     0.16
    2     1     1     1.10320737    -0.73812275  -267.69404536    -0.73812275    -0.01955962  0.25D-02  0.19D-02     6.20
    2     2     2     1.10325107    -0.73784336  -267.69376597    -0.73784336    -0.01992278  0.24D-02  0.20D-02     6.20
    2     3     3     1.10341799    -0.73777558  -267.69369819    -0.73777558    -0.01999772  0.24D-02  0.20D-02     6.20
    2     4     4     1.10358869    -0.73758344  -267.69350604    -0.73758344    -0.02021969  0.24D-02  0.21D-02     6.20
    2     5     5     1.10365286    -0.73750534  -267.69342795    -0.73750534    -0.02031271  0.25D-02  0.21D-02     6.20
    2     6     6     1.09625788    -0.73389399  -267.64965144    -0.73389399    -0.01498891  0.12D-02  0.19D-02     6.20
    3     1     1     1.09357343    -0.75608567  -267.71200828    -0.01796292    -0.00047030  0.45D-04  0.62D-04    11.90
    3     2     2     1.09358022    -0.75608403  -267.71200664    -0.01824067    -0.00047174  0.44D-04  0.63D-04    11.90
    3     3     3     1.09353997    -0.75608358  -267.71200618    -0.01830799    -0.00047197  0.46D-04  0.62D-04    11.90
    3     4     4     1.09357359    -0.75607954  -267.71200215    -0.01849611    -0.00047669  0.45D-04  0.63D-04    11.90
    3     5     5     1.09352009    -0.75607172  -267.71199433    -0.01856639    -0.00048588  0.49D-04  0.64D-04    11.90
    3     6     6     1.08955465    -0.74834254  -267.66409999    -0.01444855    -0.00026654  0.20D-04  0.38D-04    11.90
    4     1     1     1.09295025    -0.75652812  -267.71245073    -0.00044245    -0.00001737  0.25D-05  0.23D-05    17.61
    4     2     2     1.09295128    -0.75652803  -267.71245064    -0.00044400    -0.00001740  0.25D-05  0.23D-05    17.61
    4     3     3     1.09294836    -0.75652791  -267.71245052    -0.00044434    -0.00001755  0.25D-05  0.23D-05    17.61
    4     4     4     1.09294728    -0.75652771  -267.71245032    -0.00044816    -0.00001764  0.25D-05  0.23D-05    17.61
    4     5     5     1.09293731    -0.75652679  -267.71244940    -0.00045507    -0.00001839  0.25D-05  0.25D-05    17.61
    4     6     6     1.08923433    -0.74861026  -267.66436771    -0.00026772    -0.00001062  0.18D-05  0.13D-05    17.61
    5     1     1     1.09285703    -0.75654569  -267.71246830    -0.00001757    -0.00000059  0.74D-07  0.84D-07    23.29
    5     2     2     1.09285715    -0.75654569  -267.71246830    -0.00001766    -0.00000059  0.74D-07  0.84D-07    23.29
    5     3     3     1.09285723    -0.75654569  -267.71246830    -0.00001778    -0.00000059  0.75D-07  0.84D-07    23.29
    5     4     4     1.09285683    -0.75654569  -267.71246830    -0.00001798    -0.00000059  0.76D-07  0.81D-07    23.29
    5     5     5     1.09285657    -0.75654568  -267.71246828    -0.00001888    -0.00000060  0.75D-07  0.86D-07    23.29
    5     6     6     1.08922791    -0.74862100  -267.66437845    -0.00001074    -0.00000038  0.45D-07  0.50D-07    23.29
    6     1     1     1.09283297    -0.75654630  -267.71246891    -0.00000061    -0.00000002  0.98D-09  0.31D-08    28.99
    6     2     2     1.09283294    -0.75654630  -267.71246891    -0.00000061    -0.00000002  0.10D-08  0.31D-08    28.99
    6     3     3     1.09283283    -0.75654630  -267.71246891    -0.00000061    -0.00000002  0.13D-08  0.30D-08    28.99
    6     4     4     1.09283293    -0.75654630  -267.71246891    -0.00000062    -0.00000002  0.10D-08  0.31D-08    28.99
    6     5     5     1.09283282    -0.75654630  -267.71246891    -0.00000063    -0.00000002  0.11D-08  0.32D-08    28.99
    6     6     6     1.08921415    -0.74862138  -267.66437883    -0.00000039    -0.00000001  0.14D-08  0.16D-08    28.99


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.3%
 P   0.6%  23.2%  19.5%

 Initialization:   0.3%
 Other:           55.8%

 Total CPU:       29.0 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/\2           0.0000000   0.0000000  -0.0000000   0.9565183  -0.0000000   0.0000000
 22222222222/\           0.0000000   0.9565183  -0.0000000  -0.0000000   0.0000000   0.0000000
 2222222222/2\           0.9565183  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 2222222222220           0.0000000  -0.0000000   0.7769494  -0.0000000  -0.0793801   0.5462019
 2222222222202           0.0000000  -0.0000000  -0.3197295  -0.0000000   0.7125480   0.5462018
 2222222222022           0.0000000  -0.0000000  -0.4572198  -0.0000000  -0.6331678   0.5462017
 2222220222222          -0.0000000   0.0000000  -0.0000007   0.0000000   0.0000003  -0.1518143

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.956518   -0.000000    0.000000    0.000000
 2          -0.000000    0.956518   -0.000000    0.000000    0.000000   -0.000000
 3           0.945687   -0.000000   -0.000000   -0.143540   -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000   -0.000000    0.956518   -0.000000
 5          -0.143540    0.000000   -0.000000   -0.945687   -0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.958075

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956518   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.956518   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.956518   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.956518    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.956518    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.958075


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95651826 (fixed)   0.95651826 (relaxed)   0.95651826 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013744   -0.00041058   -0.65268428
 Singles      0.01528074   -0.04327735   -0.05017503
 Pairs        0.07756499   -0.00000000   -0.05368699
 Total        1.09298317   -0.04368793   -0.75654630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95592261
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19127891
 One electron energy                 -466.21076214
 Two electron energy                  198.49829323
 Virial quotient                       -2.59433231
 Correlation energy                    -0.75654630
 !MRCI STATE 1.1 Energy              -267.712468912372

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78281499 (Davidson, fixed reference)
 Cluster corrected energies          -267.78281499 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78281499 (Davidson, rotated reference)

 Cluster corrected energies          -267.78231493 (Pople, fixed reference)
 Cluster corrected energies          -267.78231493 (Pople, relaxed reference)
 Cluster corrected energies          -267.78231493 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95651827 (fixed)   0.95651827 (relaxed)   0.95651827 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013744   -0.00041058   -0.65268440
 Singles      0.01528068   -0.04327724   -0.05017497
 Pairs        0.07756502    0.00000000   -0.05368694
 Total        1.09298314   -0.04368782   -0.75654630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95592261
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19127956
 One electron energy                 -466.21076028
 Two electron energy                  198.49829136
 Virial quotient                       -2.59433229
 Correlation energy                    -0.75654630
 !MRCI STATE 2.1 Energy              -267.712468912287

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78281496 (Davidson, fixed reference)
 Cluster corrected energies          -267.78281496 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78281496 (Davidson, rotated reference)

 Cluster corrected energies          -267.78231491 (Pople, fixed reference)
 Cluster corrected energies          -267.78231491 (Pople, relaxed reference)
 Cluster corrected energies          -267.78231491 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94568678 (fixed)   0.95651831 (relaxed)   0.95651831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013744   -0.00041058   -0.65268567
 Singles      0.01527973   -0.04327591   -0.05017414
 Pairs        0.07756586   -0.00000001   -0.05368649
 Total        1.09298303   -0.04368650   -0.75654630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95592261
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19129103
 One electron energy                 -466.21072061
 Two electron energy                  198.49825170
 Virial quotient                       -2.59433200
 Correlation energy                    -0.75654630
 !MRCI STATE 3.1 Energy              -267.712468912081

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78281488 (Davidson, fixed reference)
 Cluster corrected energies          -267.78281488 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78281488 (Davidson, rotated reference)

 Cluster corrected energies          -267.78231482 (Pople, fixed reference)
 Cluster corrected energies          -267.78231482 (Pople, relaxed reference)
 Cluster corrected energies          -267.78231482 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95651827 (fixed)   0.95651827 (relaxed)   0.95651827 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013744   -0.00041058   -0.65268471
 Singles      0.01528045   -0.04327691   -0.05017482
 Pairs        0.07756524    0.00000000   -0.05368678
 Total        1.09298313   -0.04368749   -0.75654630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95592261
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19127667
 One electron energy                 -466.21075144
 Two electron energy                  198.49828253
 Virial quotient                       -2.59433237
 Correlation energy                    -0.75654630
 !MRCI STATE 4.1 Energy              -267.712468912028

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78281496 (Davidson, fixed reference)
 Cluster corrected energies          -267.78281496 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78281496 (Davidson, rotated reference)

 Cluster corrected energies          -267.78231490 (Pople, fixed reference)
 Cluster corrected energies          -267.78231490 (Pople, relaxed reference)
 Cluster corrected energies          -267.78231490 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94568677 (fixed)   0.95651832 (relaxed)   0.95651832 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013744   -0.00041058   -0.65268500
 Singles      0.01528015   -0.04327659   -0.05017457
 Pairs        0.07756543   -0.00000007   -0.05368674
 Total        1.09298302   -0.04368725   -0.75654630
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95592261
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19127820
 One electron energy                 -466.21072696
 Two electron energy                  198.49825805
 Virial quotient                       -2.59433233
 Correlation energy                    -0.75654630
 !MRCI STATE 5.1 Energy              -267.712468911615

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78281487 (Davidson, fixed reference)
 Cluster corrected energies          -267.78281487 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78281487 (Davidson, rotated reference)

 Cluster corrected energies          -267.78231481 (Pople, fixed reference)
 Cluster corrected energies          -267.78231481 (Pople, relaxed reference)
 Cluster corrected energies          -267.78231481 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95807534 (fixed)   0.95815285 (relaxed)   0.95807534 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00020127   -0.00017033   -0.00029465
 Singles      0.00483298   -0.02116788   -0.02275113
 Pairs        0.08439913   -0.72728317   -0.72557560
 Total        1.08943337   -0.74862139   -0.74862138
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.91575745
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19062555
 One electron energy                 -466.07284454
 Two electron energy                  198.40846570
 Virial quotient                       -2.59388270
 Correlation energy                    -0.74862138
 !MRCI STATE 6.1 Energy              -267.664378833458

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.73133057 (Davidson, fixed reference)
 Cluster corrected energies          -267.73119863 (Davidson, relaxed reference)
 Cluster corrected energies          -267.73133057 (Davidson, rotated reference)

 Cluster corrected energies          -267.73064631 (Pople, fixed reference)
 Cluster corrected energies          -267.73050543 (Pople, relaxed reference)
 Cluster corrected energies          -267.73064631 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       88.25       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        43.70     31.16      9.76      0.68      0.05      1.70
 REAL TIME  *        54.83 SEC
 DISK USED  *       122.23 MB (local),        3.46 GB (total)
 SF USED    *       696.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -267.78281499  AU                              
 SETTING HLSDIAG(5)     =      -267.78281496  AU                              
 SETTING HLSDIAG(6)     =      -267.78281488  AU                              
 SETTING HLSDIAG(7)     =      -267.78281496  AU                              
 SETTING HLSDIAG(8)     =      -267.78281487  AU                              
 SETTING HLSDIAG(9)     =      -267.73133057  AU                              


         HLSDIAG
    -267.8164356
    -267.8164356
    -267.8164356
    -267.7828150
    -267.7828150
    -267.7828149
    -267.7828150
    -267.7828149
    -267.7313306
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -267.749234   -267.749234   -267.749234
 Replaced energies:   -267.816436   -267.816436   -267.816436

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.712469   -267.712469   -267.712469   -267.712469   -267.712469   -267.664379
 Replaced energies:   -267.782815   -267.782815   -267.782815   -267.782815   -267.782815   -267.731331



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -267.81643561

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00    1922.80      -0.00       0.00      -0.00    1359.62       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00    1359.62       0.00       0.00       0.00       0.00
                        -1922.80       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01      -0.00   -1359.62      -0.00       0.00       0.00       0.00   -1366.54
                            0.00       0.00      -0.00   -1359.62      -0.00      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    1359.62       0.00       0.00       0.00       0.00      -0.00    1359.62    1932.60

    5   2.1  1.0  0.0       0.00       0.00   -1359.62       0.00       0.00       0.00      -0.00       0.00    1359.62       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00    1359.62      -0.00       0.00       0.00       0.01      -0.00   -1359.62      -0.00       0.00
                        -1359.62      -0.00       0.00      -0.00      -0.00       0.00   -1359.62      -0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    1359.62       0.00   -1922.80       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   -1359.62       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00    1922.80      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    1359.62      -0.00       0.00       0.00       0.01   -1366.54
                           -0.00      -0.00      -0.00   -1359.62      -0.00       0.00      -0.00      -0.00       0.00       0.00

   10   1.1  0.0  0.0      -0.00       0.00   -1366.54       0.00       0.00       0.00      -0.00       0.00   -1366.54    7378.87
                            0.00      -0.00       0.00   -1932.60       0.00      -0.00      -0.00       0.00      -0.00       0.00

   11   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    1366.54       0.00    1932.60       0.00      -0.00      -0.00   -1366.54      -0.00

   12   3.1  0.0  0.0    -923.78      -0.00       0.00       0.00       0.00       0.00    -923.78      -0.00       0.00       0.00
                           -0.00    -645.99      -0.00       0.00      -0.00    2219.97       0.00     645.99       0.00      -0.00

   13   4.1  0.0  0.0       0.00    1366.54       0.00       0.00       0.00       0.00       0.00    1366.54       0.00       0.00
                         1366.54       0.00      -0.00       0.00      -0.00       0.00   -1366.54      -0.00       0.00      -0.00

   14   5.1  0.0  0.0   -1279.27      -0.00       0.00       0.00       0.00       0.00   -1279.27      -0.00       0.00       0.00
                            0.00    1439.65      -0.00       0.00      -0.00    -226.81      -0.00   -1439.65       0.00      -0.00

   15   6.1  0.0  0.0   -2218.10       0.00       0.00       0.00       0.00       0.00   -2218.10       0.00       0.00       0.00
                            0.00   -2218.11       0.00       0.00       0.00   -3136.88      -0.00    2218.11      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00    -923.78       0.00   -1279.27   -2218.10
                           -0.00       0.00   -1366.54      -0.00      -0.00

    2   2.1  1.0  1.0       0.00      -0.00    1366.54      -0.00       0.00
                           -0.00     645.99      -0.00   -1439.65    2218.11

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00
                        -1366.54       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                        -1932.60       0.00       0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00   -2219.97      -0.00     226.81    3136.88

    7   1.1  1.0 -1.0       0.00    -923.78       0.00   -1279.27   -2218.10
                            0.00      -0.00    1366.54       0.00       0.00

    8   2.1  1.0 -1.0       0.00      -0.00    1366.54      -0.00       0.00
                            0.00    -645.99       0.00    1439.65   -2218.11

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00
                         1366.54      -0.00      -0.00      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    7378.88       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    7378.90       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    7378.88       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    7378.90       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   18678.40
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -267.81643561 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    1922.798      -0.000    1922.797

    2    1  |1 1>+              0.000       0.001       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000   -1922.797       0.000

    3    1  |1 1>+              0.000       0.000       0.009       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000   -1922.798      -0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000    1922.798       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.001       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.009       0.000    1922.799
                            -1922.798      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1922.797      -0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000    1922.799       0.000       0.001
                            -1922.797       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000   -1922.799       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000       0.000   -1932.579       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1932.604       0.000      -0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1932.604       0.000       0.000       0.000

    3    1  |0 0>           -1306.415      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    2219.971      -0.000    -913.562

    4    1  |0 0>               0.000    1932.579       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000    1932.579       0.000

    5    1  |0 0>           -1809.156      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -226.813       0.000    2035.971

    6    1  |0 0>           -3136.874       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -3136.881       0.000   -3136.875

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000       0.000   -1306.415       0.000   -1809.156   -3136.874
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000    1932.579      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -1932.579       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1932.604      -0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>           -1922.799       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000   -1932.604       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000   -2219.971      -0.000     226.813    3136.881

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000   -1932.579      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     913.562      -0.000   -2035.971    3136.875

    3    1  |1 1>-              0.009       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -1932.581       0.000       0.000       0.000      -0.000

    1    1  |0 0>               0.000    7378.875       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    7378.880       0.000       0.000       0.000       0.000
                             1932.581      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    7378.897       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    7378.881       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    7378.900       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   18678.399
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -267.82858466    -0.01214905    -2666.41      0.00000000        0.00      0.0000
    2  -267.82858466    -0.01214905    -2666.41      0.00000000        0.00      0.0000
    3  -267.82858463    -0.01214902    -2666.40      0.00000003        0.01      0.0000
    4  -267.82858460    -0.01214899    -2666.40      0.00000006        0.01      0.0000
    5  -267.82858456    -0.01214894    -2666.38      0.00000011        0.02      0.0000
    6  -267.80767470     0.00876091     1922.80      0.02090996     4589.21      0.5690
    7  -267.80767468     0.00876093     1922.80      0.02090999     4589.21      0.5690
    8  -267.80767467     0.00876094     1922.80      0.02090999     4589.21      0.5690
    9  -267.80701146     0.00942415     2068.36      0.02157320     4734.77      0.5870
   10  -267.77942684     0.03700877     8122.49      0.04915782    10788.90      1.3377
   11  -267.77942683     0.03700878     8122.49      0.04915784    10788.90      1.3377
   12  -267.77942683     0.03700879     8122.49      0.04915784    10788.90      1.3377
   13  -267.77942681     0.03700881     8122.49      0.04915786    10788.90      1.3377
   14  -267.77942679     0.03700883     8122.50      0.04915788    10788.91      1.3377
   15  -267.72323288     0.09320274    20455.64      0.10535179    23122.05      2.8668

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000002  0.67190274  0.41141887  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000001 -0.68230362  0.00000000 -0.00000003  0.70710521 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00015896  0.00000000 -0.00000000  0.00153002  0.00000000  0.00000000

   3    1  |1 1>+         -0.00001949 -0.68209542 -0.00000001 -0.00000000  0.00000000  0.00000001  0.69564767 -0.00000032
                           0.00000001  0.01679197  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.12679435 -0.00000000

   1    1  |1 0>           0.00000001  0.01679204  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.12679372  0.00000000
                           0.00001949  0.68209810  0.00000001  0.00000000 -0.00000000  0.00000001  0.69564421 -0.00000032

   2    1  |1 0>           0.00055363 -0.00000048 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000011
                           0.68230442 -0.00001948  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000031 -0.70710518

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000004 -0.02034739  0.78759374  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00015896  0.00000000 -0.00000000 -0.00153001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.68230380 -0.00000000  0.00000003  0.70710504 -0.00000001 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000002  0.69225001 -0.37617621 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00055363 -0.00000048 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000011
                           0.68230200 -0.00001948  0.00000000  0.00000000  0.00000000  0.00000000  0.00000031  0.70710838

   1    1  |0 0>          -0.00000750 -0.26245442 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000189  0.00000000
                           0.00000001  0.00646116  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000034  0.00000000

   2    1  |0 0>           0.26253380 -0.00000750  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000181
                          -0.00021302  0.00000019  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000001  0.01992971  0.26177259 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000  0.26253238 -0.00000000  0.00000001 -0.00000004  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00006116 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.26177359 -0.01992967  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+         -0.54873883 -0.00000001 -0.11753092  0.00000002  0.00000000 -0.17926192 -0.17949530
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.18563843 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00002991  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000003 -0.18563677  0.00000001 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00060543 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00060544 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000003  0.18564031 -0.00000001  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.06295561 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001 -0.17464028  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.54873988 -0.00000002 -0.21400985  0.00000003  0.00000000  0.01215385  0.17949570

   1    1  |1 1>-         -0.00000000 -0.00002991  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.18563843  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.54873891  0.00000001  0.09647979 -0.00000001 -0.00000000 -0.19141592  0.17949535

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.06295448 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.17463717  0.00000000 -0.00000000

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000014  0.96491763 -0.00000003  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00314697  0.00000001 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000003  0.90774263 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.32722970 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000030  0.00000008  0.96394324 -0.00000014 -0.00000000  0.04348962  0.00000003
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.96492317 -0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00015547  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000012 -0.00000000 -0.04348964  0.00000000  0.00000000  0.96394297 -0.00000002
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.31089524  0.00000000 -0.00000011 -0.00000000  0.00000000  0.00000005  0.95044419
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -267.82858466     -0.01214905    -2666.41      0.00000000        0.00      0.0000
     2   1   -267.82858466     -0.01214905    -2666.41      0.00000000        0.00      0.0000
     3   1   -267.82858463     -0.01214902    -2666.40      0.00000003        0.01      0.0000
     4   1   -267.82858460     -0.01214899    -2666.40      0.00000006        0.01      0.0000
     5   1   -267.82858456     -0.01214894    -2666.38      0.00000011        0.02      0.0000
     6   1   -267.80767470      0.00876091     1922.80      0.02090996     4589.21      0.5690
     7   1   -267.80767468      0.00876093     1922.80      0.02090999     4589.21      0.5690
     8   1   -267.80767467      0.00876094     1922.80      0.02090999     4589.21      0.5690
     9   1   -267.80701146      0.00942415     2068.36      0.02157320     4734.77      0.5870
    10   1   -267.77942684      0.03700877     8122.49      0.04915782    10788.90      1.3377
    11   1   -267.77942683      0.03700878     8122.49      0.04915784    10788.90      1.3377
    12   1   -267.77942683      0.03700879     8122.49      0.04915784    10788.90      1.3377
    13   1   -267.77942681      0.03700881     8122.49      0.04915786    10788.90      1.3377
    14   1   -267.77942679      0.03700883     8122.50      0.04915788    10788.91      1.3377
    15   1   -267.72323288      0.09320274    20455.64      0.10535179    23122.05      2.8668

 E0 =   -267.81643561 is the energy of the lowest zeroth-order state
 E1 =   -267.82858466 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000002  0.67190274  0.41141887  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000001 -0.68230362  0.00000000 -0.00000003  0.70710521 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00015896  0.00000000 -0.00000000  0.00153002  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.00001949 -0.68209542 -0.00000001 -0.00000000  0.00000000  0.00000001  0.69564767 -0.00000032
                                0.00000001  0.01679197  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.12679435 -0.00000000

  4  1     1    1  |1 0>        0.00000001  0.01679204  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.12679372  0.00000000
                                0.00001949  0.68209810  0.00000001  0.00000000 -0.00000000  0.00000001  0.69564421 -0.00000032

  5  1     2    1  |1 0>        0.00055363 -0.00000048 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000011
                                0.68230442 -0.00001948  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000031 -0.70710518

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000004 -0.02034739  0.78759374  0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00015896  0.00000000 -0.00000000 -0.00153001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.68230380 -0.00000000  0.00000003  0.70710504 -0.00000001 -0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000002  0.69225001 -0.37617621 -0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00055363 -0.00000048 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000011
                                0.68230200 -0.00001948  0.00000000  0.00000000  0.00000000  0.00000000  0.00000031  0.70710838

 10  1     1    1  |0 0>       -0.00000750 -0.26245442 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000189  0.00000000
                                0.00000001  0.00646116  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000034  0.00000000

 11  1     2    1  |0 0>        0.26253380 -0.00000750  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000181
                               -0.00021302  0.00000019  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000001  0.01992971  0.26177259 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000  0.26253238 -0.00000000  0.00000001 -0.00000004  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00006116 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.26177359 -0.01992967  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+      -0.54873883 -0.00000001 -0.11753092  0.00000002  0.00000000 -0.17926192 -0.17949530
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.18563843 -0.00000002  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00002991  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000003 -0.18563677  0.00000001 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00060543 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00060544 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000003  0.18564031 -0.00000001  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.06295561 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001 -0.17464028  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.54873988 -0.00000002 -0.21400985  0.00000003  0.00000000  0.01215385  0.17949570

  7  1     1    1  |1 1>-      -0.00000000 -0.00002991  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.18563843  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.54873891  0.00000001  0.09647979 -0.00000001 -0.00000000 -0.19141592  0.17949535

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.06295448 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.17463717  0.00000000 -0.00000000

 10  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000014  0.96491763 -0.00000003  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00314697  0.00000001 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000003  0.90774263 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.32722970 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000030  0.00000008  0.96394324 -0.00000014 -0.00000000  0.04348962  0.00000003
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.96492317 -0.00000008  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00015547  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000012 -0.00000000 -0.04348964  0.00000000  0.00000000  0.96394297 -0.00000002
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.31089524  0.00000000 -0.00000011 -0.00000000  0.00000000  0.00000005  0.95044419
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   45.15%   16.93%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   46.55%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   46.55%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%   46.55%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>         46.55%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.04%   62.03%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   46.55%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   47.92%   14.15%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-        46.55%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    6.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          6.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.04%    6.85%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    6.89%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    6.85%    0.04%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        30.11%    0.00%    1.38%    0.00%    0.00%    3.21%    3.22%
  2  1     2    1  |1 1>+         0.00%    3.45%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    3.45%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    3.45%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    3.45%    0.00%    0.00%
  6  1     3    1  |1 0>         30.11%    0.00%    4.58%    0.00%    0.00%    0.01%    3.22%
  7  1     1    1  |1 1>-         0.00%    3.45%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        30.11%    0.00%    0.93%    0.00%    0.00%    3.66%    3.22%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.45%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%   93.11%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   93.11%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%   92.92%    0.00%    0.00%    0.19%    0.00%
 13  1     4    1  |0 0>          0.00%   93.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.19%    0.00%    0.00%   92.92%    0.00%
 15  1     6    1  |0 0>          9.67%    0.00%    0.00%    0.00%    0.00%    0.00%   90.33%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       88.25       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        74.76     31.04     31.16      9.76      0.68      0.05      1.70
 REAL TIME  *        90.67 SEC
 DISK USED  *       122.23 MB (local),        3.46 GB (total)
 SF USED    *       696.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCVTZ-PP energy=   -267.723232875771

              CI              CI           MULTI         RHF-SCF
   -267.66437883   -267.74923425   -266.91575745   -266.72037260
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
