
 Working directory              : /wrk/irikura/molpro.6SVJp2VgbP/
 Global scratch directory       : /wrk/irikura/molpro.6SVJp2VgbP/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.6SVJp2VgbP/

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
     closed,7,3
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
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Te SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Jan-25          TIME: 09:43:32  
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

     18.874 MB (compressed) written to integral file ( 22.5%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     194960.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     194960      RECORD LENGTH: 524288

 Memory used in sort:       0.75 MW

 SORT1 READ    11031004. AND WROTE       38494. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     56 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

 Node minimum:      194462.  Node maximum:      199024. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.48      1.14
 REAL TIME  *         2.84 SEC
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
   1     -266.67467335    -266.67467335     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -266.71748798      -0.04281463     0.49D-02     0.17D-01     1     0       0.00      0.01    diag2
   3     -266.71991032      -0.00242234     0.27D-02     0.41D-02     2     0       0.00      0.01    diag2
   4     -266.72034821      -0.00043789     0.49D-03     0.25D-02     3     0       0.01      0.02    diag2
   5     -266.72037246      -0.00002424     0.11D-03     0.72D-03     4     0       0.00      0.02    diag2
   6     -266.72037259      -0.00000014     0.11D-04     0.52D-04     5     0       0.00      0.02    diag2
   7     -266.72037260      -0.00000000     0.14D-05     0.56D-05     6     0       0.01      0.03    diag2
   8     -266.72037260      -0.00000000     0.89D-07     0.45D-06     7     0       0.00      0.03    fixocc
   9     -266.72037260      -0.00000000     0.99D-08     0.22D-07     0     0       0.00      0.03    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -266.720372596213
  RHF One-electron energy            -459.057226667514
  RHF Two-electron energy             192.336854071301
  RHF Kinetic energy                  102.492999845513
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -2.602327700411

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.45863     1  1  s    1.00084
    2.1     2.00000    -2.27830     1  1  d0   1.00118
    3.1     2.00000    -2.27830     1  1  d2-  0.70125    1  1  d1+  0.62394    1  1  d1-  0.31582
    4.1     2.00000    -2.27830     1  1  d2- -0.65687    1  1  d1+  0.75168
    5.1     2.00000    -2.27830     1  1  d2+  0.95009    1  1  d1-  0.30301
    6.1     2.00000    -2.27830     1  1  d2- -0.26813    1  1  d2+ -0.26897    1  1  d1-  0.90040
    7.1     2.00000    -1.03508     1  2  s    1.05438
    1.2     2.00000    -5.42340     1  1  pz   0.99901
    2.2     2.00000    -5.42340     1  1  py   0.99902
    3.2     2.00000    -5.42340     1  1  px   0.99928
    4.2     1.00000    -0.69090     1  2  px   1.18274
    5.2     1.00000    -0.69090     1  2  py   1.18274
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
 CPU TIMES  *         1.53      0.05      1.14
 REAL TIME  *         2.90 SEC
 DISK USED  *        30.04 MB (local),      963.36 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  10 (    7    3)
 Number of active  orbitals:        3 (    0    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 3 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               6   (9 determinants, 9 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.608D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.497D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.303D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.456D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 4 5 6 1 1 2 6   4 3 5 1 2 3 5 6 4 1   2 5 3 4 6 2 3 5 6 4   8141215 711 91310 1
                                        2 3 5 4 6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.398D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.390D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.273D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.131D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.357D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.372D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 2 1 2   1 3 6 810 4 5 7 9 8  10 6 7 9 4 5 2 1 3 8  10 5 4 7 9 6 1 2 3 6
                                        9 7 810 4 5 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  547  ( 9 closed/active, 409 closed/virtual, 0 active/active, 129 active/virtual )
 Total number of variables:    610
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -266.92787628    -266.96180315   -0.03392687    0.22599002 0.00001697 0.00000000  0.19E+00      0.20
   2    5    8    0   -266.96296000    -266.96307934   -0.00011935    0.01276501 0.00000006 0.00000000  0.12E-01      0.46
   3    7   14    0   -266.96307963    -266.96307963   -0.00000000    0.00004938 0.00000000 0.00000000  0.41E-04      0.67
   4    9   18    0   -266.96307963    -266.96307963    0.00000000    0.00000001 0.00000000 0.00000000  0.13E-08      0.85

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.16E-07)
                       Final energy:   -266.96307963
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -266.998805061170
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66909085
 One electron energy                          -466.57756340
 Two electron energy                           199.57875834
 Virial ratio                                    3.60057631
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -266.998805061149
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66909085
 One electron energy                          -466.57756340
 Two electron energy                           199.57875834
 Virial ratio                                    3.60057631
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -266.998805061112
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66909086
 One electron energy                          -466.57756341
 Two electron energy                           199.57875834
 Virial ratio                                    3.60057631
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -266.955934543973
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66909085
 One electron energy                          -466.57756340
 Two electron energy                           199.62162886
 Virial ratio                                    3.60015875
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -266.955934543968
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66909085
 One electron energy                          -466.57756340
 Two electron energy                           199.62162886
 Virial ratio                                    3.60015875
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -266.955934543956
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66909085
 One electron energy                          -466.57756340
 Two electron energy                           199.62162886
 Virial ratio                                    3.60015875
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -266.955934543934
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66909086
 One electron energy                          -466.57756341
 Two electron energy                           199.62162886
 Virial ratio                                    3.60015875
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -266.955934543933
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66909086
 One electron energy                          -466.57756341
 Two electron energy                           199.62162886
 Virial ratio                                    3.60015875
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -266.891628768167
 Nuclear energy                                  0.00000000
 Kinetic energy                                102.66909085
 One electron energy                          -466.57756340
 Two electron energy                           199.68593463
 Virial ratio                                    3.59953241
 
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
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     2.340071908663
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.659917848163
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.536792485408
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.463214166856
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.123135605929
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.876867984982
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 4 3   5 2 6 1 4 5 3 2 6 1   4 3 5 2 6 4 3 5 2 6   913101415 812 711 1
                                        4 3 5 2 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 1   3 2 4 9 7 810 6 5 4   9 7 810 6 5 1 3 2 4   7 9 810 6 5 1 3 2 4
                                        7 9 810 6 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.13762     1  1  s    1.00176
    2.1     2.00000    -1.95810     1  1  d1+  1.00014
    3.1     2.00000    -1.95810     1  1  d2-  1.00014
    4.1     2.00000    -1.95810     1  1  d2+  1.00014
    5.1     2.00000    -1.95810     1  1  d0   1.00014
    6.1     2.00000    -1.95810     1  1  d1-  1.00014
    7.1     2.00000    -0.75093     1  2  s    1.00805
    1.2     2.00000    -5.10300     1  1  px   0.99999
    2.2     2.00000    -5.10300     1  1  pz   0.99999
    3.2     2.00000    -5.10300     1  1  py   0.99999
    4.2     1.33333    -0.24264     1  2  py   0.98006
    5.2     1.33333    -0.24264     1  2  pz   0.98006
    6.2     1.33333    -0.24264     1  2  px   0.98006
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2aa            1.00000000     -0.00000000     -0.00000000
 a2a            0.00000000      0.00000000      1.00000000
 aa2           -0.00000000      1.00000000     -0.00000000
 
 Energy:     -266.99880506   -266.99880506   -266.99880506
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 202            0.80383087      0.00000000      0.00000000      0.00000000     -0.14325712      0.57735027
 022           -0.27785113     -0.00000000     -0.00000000     -0.00000000      0.76776651      0.57735027
 2ab           -0.00000000      0.70710678      0.00000000     -0.00000000      0.00000000      0.00000000
 2ba            0.00000000     -0.70710678     -0.00000000      0.00000000     -0.00000000     -0.00000000
 b2a           -0.00000000     -0.00000000      0.00000000     -0.70710678     -0.00000000      0.00000000
 ab2           -0.00000000     -0.00000000      0.70710678      0.00000000     -0.00000000     -0.00000000
 a2b            0.00000000      0.00000000     -0.00000000      0.70710678      0.00000000     -0.00000000
 ba2            0.00000000      0.00000000     -0.70710678     -0.00000000      0.00000000      0.00000000
 220           -0.52597974      0.00000000     -0.00000000      0.00000000     -0.62450940      0.57735027
 
 Energy:     -266.95593454   -266.95593454   -266.95593454   -266.95593454   -266.95593454   -266.89162877
 


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
 CPU TIMES  *         2.33      0.80      0.05      1.14
 REAL TIME  *         3.98 SEC
 DISK USED  *        34.77 MB (local),        1.07 GB (total)
 SF USED    *        12.23 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -266.9988051   2.0
    -266.9988051   2.0
    -266.9988051   2.0
    -266.9559345   6.0
    -266.9559345   6.0
    -266.9559345   6.0
    -266.9559345   6.0
    -266.9559345   6.0
    -266.8916288  -0.0
                                                  


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


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        3 (   0   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.99880506
     2      -266.99880506
     3      -266.99880506

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         23433
 Number of doubly external configurations:        848316
 Total number of contracted configurations:       871785
 Total number of uncontracted configurations:    2745270

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    444227 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.99880506    -0.00000000    -0.93518858  0.35D-01  0.13D+00     0.14
    1     2     2     1.00000000     0.00000000  -266.99880506     0.00000000    -0.93538864  0.36D-01  0.13D+00     0.14
    1     3     3     1.00000000     0.00000000  -266.99880506     0.00000000    -0.93536785  0.36D-01  0.13D+00     0.14
    2     1     1     1.10247568    -0.73072894  -267.72953400    -0.73072894    -0.02065406  0.25D-02  0.23D-02     2.07
    2     2     2     1.10262195    -0.73063323  -267.72943829    -0.73063323    -0.02075227  0.25D-02  0.23D-02     2.07
    2     3     3     1.10259626    -0.73063158  -267.72943664    -0.73063158    -0.02076967  0.25D-02  0.23D-02     2.07
    3     1     1     1.09022924    -0.75002633  -267.74883139    -0.01929739    -0.00034533  0.33D-04  0.40D-04     3.91
    3     2     2     1.09023083    -0.75002420  -267.74882926    -0.01939097    -0.00034745  0.34D-04  0.40D-04     3.91
    3     3     3     1.09023928    -0.75002178  -267.74882684    -0.01939020    -0.00035027  0.34D-04  0.40D-04     3.91
    4     1     1     1.08962912    -0.75037510  -267.74918016    -0.00034877    -0.00000813  0.15D-05  0.81D-06     5.64
    4     2     2     1.08962822    -0.75037508  -267.74918014    -0.00035088    -0.00000815  0.14D-05  0.81D-06     5.64
    4     3     3     1.08962906    -0.75037497  -267.74918003    -0.00035319    -0.00000826  0.15D-05  0.83D-06     5.64
    5     1     1     1.08958760    -0.75038366  -267.74918872    -0.00000856    -0.00000025  0.25D-07  0.34D-07     7.33
    5     2     2     1.08958754    -0.75038366  -267.74918872    -0.00000858    -0.00000025  0.25D-07  0.35D-07     7.33
    5     3     3     1.08958776    -0.75038366  -267.74918872    -0.00000869    -0.00000025  0.26D-07  0.35D-07     7.33
    6     1     1     1.08957989    -0.75038392  -267.74918898    -0.00000026    -0.00000001  0.13D-08  0.10D-08     9.04
    6     2     2     1.08957989    -0.75038392  -267.74918898    -0.00000026    -0.00000001  0.13D-08  0.10D-08     9.04
    6     3     3     1.08957984    -0.75038392  -267.74918898    -0.00000026    -0.00000001  0.14D-08  0.11D-08     9.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%   0.7%
 P   1.1%  31.7%  14.4%

 Initialization:   1.1%
 Other:           50.6%

 Total CPU:        9.0 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/           0.0000000  -0.0000000   0.9580089
 2222222222//2          -0.0000000   0.9580088   0.0000000
 22222222222//           0.9580088   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958009   -0.000000    0.000000
 2           0.000000    0.958009   -0.000000
 3           0.000000    0.000000    0.958009

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958009    0.000000   -0.000000
 2           0.000000    0.958009   -0.000000
 3          -0.000000   -0.000000    0.958009


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95800883 (fixed)   0.95800883 (relaxed)   0.95800883 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000437   -0.00002651   -0.65274297
 Singles      0.01294023   -0.03916848   -0.04486079
 Pairs        0.07664006   -0.00000000   -0.05278016
 Total        1.08958466   -0.03919499   -0.75038392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99880506
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19229797
 One electron energy                 -466.24262481
 Two electron energy                  198.49343582
 Virial quotient                       -2.59466253
 Correlation energy                    -0.75038392
 !MRCI STATE 1.1 Energy              -267.749188983258

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81641187 (Davidson, fixed reference)
 Cluster corrected energies          -267.81641187 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81641187 (Davidson, rotated reference)

 Cluster corrected energies          -267.81508341 (Pople, fixed reference)
 Cluster corrected energies          -267.81508341 (Pople, relaxed reference)
 Cluster corrected energies          -267.81508341 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95800883 (fixed)   0.95800883 (relaxed)   0.95800883 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000437   -0.00002651   -0.65274300
 Singles      0.01294018   -0.03916844   -0.04486075
 Pairs        0.07664011   -0.00000000   -0.05278016
 Total        1.08958465   -0.03919496   -0.75038392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99880506
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19229866
 One electron energy                 -466.24262468
 Two electron energy                  198.49343569
 Virial quotient                       -2.59466251
 Correlation energy                    -0.75038392
 !MRCI STATE 2.1 Energy              -267.749188983235

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81641187 (Davidson, fixed reference)
 Cluster corrected energies          -267.81641187 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81641187 (Davidson, rotated reference)

 Cluster corrected energies          -267.81508340 (Pople, fixed reference)
 Cluster corrected energies          -267.81508340 (Pople, relaxed reference)
 Cluster corrected energies          -267.81508340 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95800885 (fixed)   0.95800885 (relaxed)   0.95800885 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000437   -0.00002651   -0.00002734
 Singles      0.01294015   -0.03916838   -0.04486074
 Pairs        0.07664008   -0.71118903   -0.70549584
 Total        1.08958460   -0.75038392   -0.75038392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.99880506
 Nuclear energy                         0.00000000
 Kinetic energy                       103.19229635
 One electron energy                 -466.24262338
 Two electron energy                  198.49343439
 Virial quotient                       -2.59466257
 Correlation energy                    -0.75038392
 !MRCI STATE 3.1 Energy              -267.749188983167

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.81641183 (Davidson, fixed reference)
 Cluster corrected energies          -267.81641183 (Davidson, relaxed reference)
 Cluster corrected energies          -267.81641183 (Davidson, rotated reference)

 Cluster corrected energies          -267.81508336 (Pople, fixed reference)
 Cluster corrected energies          -267.81508336 (Pople, relaxed reference)
 Cluster corrected energies          -267.81508336 (Pople, rotated reference)



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
 CPU TIMES  *        11.80      9.46      0.80      0.05      1.14
 REAL TIME  *        15.77 SEC
 DISK USED  *        55.26 MB (local),        1.63 GB (total)
 SF USED    *       216.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -267.81641187  AU                              
 SETTING HLSDIAG(2)     =      -267.81641187  AU                              
 SETTING HLSDIAG(3)     =      -267.81641183  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        6 conf        6 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      232 conf      398 CSFs
 N-2 el internal:      406 conf     1214 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:  10 (   7   3 )
 Number of active  orbitals:        3 (   0   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -266.95593454
     2      -266.95593454
     3      -266.95593454
     4      -266.95593454
     5      -266.95593454
     6      -266.89162877

 Number of blocks in overlap matrix:   688   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     769
 Number of N-1 electron functions:     398

 Number of internal configurations:                   49
 Number of singly external configurations:         16547
 Number of doubly external configurations:       1327117
 Total number of contracted configurations:      1343713
 Total number of uncontracted configurations:    2105876

 Diagonal Coupling coefficients finished.               Storage:    422393 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    494409 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -266.95593454    -0.00000000    -0.94155777  0.38D-01  0.13D+00     0.16
    1     2     2     1.00000000     0.00000000  -266.95593454    -0.00000000    -0.94294221  0.38D-01  0.13D+00     0.16
    1     3     3     1.00000000     0.00000000  -266.95593454    -0.00000000    -0.94235323  0.38D-01  0.13D+00     0.16
    1     4     4     1.00000000     0.00000000  -266.95593454    -0.00000000    -0.94216060  0.38D-01  0.13D+00     0.16
    1     5     5     1.00000000     0.00000000  -266.95593454    -0.00000000    -0.94148520  0.38D-01  0.13D+00     0.16
    1     6     6     1.00000000     0.00000000  -266.89162877    -0.00000000    -0.93615910  0.10D-01  0.15D+00     0.16
    2     1     1     1.10470234    -0.73664461  -267.69257916    -0.73664461    -0.02073261  0.23D-02  0.23D-02     5.50
    2     2     2     1.10465831    -0.73651573  -267.69245028    -0.73651573    -0.02091264  0.24D-02  0.23D-02     5.50
    2     3     3     1.10499790    -0.73643903  -267.69237357    -0.73643903    -0.02094777  0.23D-02  0.24D-02     5.50
    2     4     4     1.10497840    -0.73640596  -267.69234051    -0.73640596    -0.02100811  0.24D-02  0.24D-02     5.50
    2     5     5     1.10527630    -0.73613694  -267.69207148    -0.73613694    -0.02131260  0.24D-02  0.25D-02     5.50
    2     6     6     1.09864121    -0.74231727  -267.63394604    -0.74231727    -0.02205481  0.23D-02  0.30D-02     5.50
    3     1     1     1.09328353    -0.75590290  -267.71183744    -0.01925829    -0.00037879  0.38D-04  0.45D-04    10.77
    3     2     2     1.09327878    -0.75590092  -267.71183547    -0.01938519    -0.00038062  0.39D-04  0.44D-04    10.77
    3     3     3     1.09329107    -0.75589761  -267.71183215    -0.01945858    -0.00038502  0.39D-04  0.45D-04    10.77
    3     4     4     1.09326054    -0.75589404  -267.71182858    -0.01948807    -0.00038827  0.40D-04  0.45D-04    10.77
    3     5     5     1.09329423    -0.75589178  -267.71182632    -0.01975484    -0.00039074  0.39D-04  0.46D-04    10.77
    3     6     6     1.08894264    -0.76279821  -267.65442698    -0.02048094    -0.00041130  0.23D-04  0.63D-04    10.77
    4     1     1     1.09267450    -0.75627996  -267.71221450    -0.00037706    -0.00001071  0.18D-05  0.12D-05    16.05
    4     2     2     1.09267694    -0.75627968  -267.71221422    -0.00037876    -0.00001099  0.18D-05  0.12D-05    16.05
    4     3     3     1.09267528    -0.75627963  -267.71221417    -0.00038202    -0.00001104  0.18D-05  0.12D-05    16.05
    4     4     4     1.09267688    -0.75627954  -267.71221408    -0.00038550    -0.00001108  0.18D-05  0.12D-05    16.05
    4     5     5     1.09267507    -0.75627927  -267.71221381    -0.00038749    -0.00001135  0.18D-05  0.12D-05    16.05
    4     6     6     1.08865731    -0.76321295  -267.65484171    -0.00041474    -0.00001231  0.27D-05  0.13D-05    16.05
    5     1     1     1.09262222    -0.75629098  -267.71222553    -0.00001102    -0.00000036  0.42D-07  0.49D-07    21.32
    5     2     2     1.09262275    -0.75629098  -267.71222552    -0.00001130    -0.00000036  0.43D-07  0.49D-07    21.32
    5     3     3     1.09262240    -0.75629097  -267.71222552    -0.00001135    -0.00000037  0.43D-07  0.50D-07    21.32
    5     4     4     1.09262209    -0.75629097  -267.71222551    -0.00001143    -0.00000037  0.43D-07  0.50D-07    21.32
    5     5     5     1.09262153    -0.75629096  -267.71222551    -0.00001169    -0.00000038  0.45D-07  0.50D-07    21.32
    5     6     6     1.08874226    -0.76322593  -267.65485470    -0.00001299    -0.00000044  0.50D-07  0.64D-07    21.32
    6     1     1     1.09260747    -0.75629135  -267.71222589    -0.00000037    -0.00000001  0.60D-09  0.15D-08    26.58
    6     2     2     1.09260734    -0.75629135  -267.71222589    -0.00000037    -0.00000001  0.65D-09  0.15D-08    26.58
    6     3     3     1.09260737    -0.75629135  -267.71222589    -0.00000038    -0.00000001  0.62D-09  0.15D-08    26.58
    6     4     4     1.09260734    -0.75629135  -267.71222589    -0.00000038    -0.00000001  0.61D-09  0.15D-08    26.58
    6     5     5     1.09260716    -0.75629135  -267.71222589    -0.00000039    -0.00000001  0.68D-09  0.15D-08    26.58
    6     6     6     1.08873969    -0.76322639  -267.65485515    -0.00000045    -0.00000001  0.15D-08  0.24D-08    26.58


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.3%
 P   0.7%  23.7%  17.3%

 Initialization:   0.4%
 Other:           57.6%

 Total CPU:       26.6 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/\           0.0000000  -0.0000000   0.0000000   0.9566224   0.0000000   0.0000000
 2222222222/2\          -0.0000000  -0.0000000   0.9566224  -0.0000000   0.0000000   0.0000000
 2222222222/\2           0.9566224  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 2222222222220          -0.0000000  -0.0782669  -0.0000000  -0.0000000   0.7771478   0.5515120
 2222222222022          -0.0000000   0.7121631  -0.0000000  -0.0000000  -0.3207928   0.5515117
 2222222222202          -0.0000000  -0.6338963  -0.0000000  -0.0000000  -0.4563550   0.5515118

  Internal coefficients greater than 0.0500000
 =============================================
 2222220222222           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0771488

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.956622   -0.000000    0.000000   -0.000000
 2          -0.666175   -0.000000   -0.000000   -0.000000    0.686540   -0.000000
 3          -0.000000    0.000000    0.000000    0.956622    0.000000   -0.000000
 4          -0.000000    0.956622   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.686540    0.000000    0.000000    0.000000   -0.666175    0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.955247

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956622   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.956622   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.956622   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.956622    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.956623    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.955247


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95662237 (fixed)   0.95662237 (relaxed)   0.95662237 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012611   -0.00039337   -0.65282927
 Singles      0.01508257   -0.04301063   -0.04979888
 Pairs        0.07753658   -0.00000000   -0.05366320
 Total        1.09274526   -0.04340400   -0.75629135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95593454
 Nuclear energy                         0.00000000
 Kinetic energy                       103.18831149
 One electron energy                 -466.19908756
 Two electron energy                  198.48686167
 Virial quotient                       -2.59440456
 Correlation energy                    -0.75629135
 !MRCI STATE 1.1 Energy              -267.712225893093

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78236833 (Davidson, fixed reference)
 Cluster corrected energies          -267.78236833 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78236833 (Davidson, rotated reference)

 Cluster corrected energies          -267.78185506 (Pople, fixed reference)
 Cluster corrected energies          -267.78185506 (Pople, relaxed reference)
 Cluster corrected energies          -267.78185506 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.68654010 (fixed)   0.95662243 (relaxed)   0.95662243 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012611   -0.00039337   -0.65282968
 Singles      0.01508225   -0.04301027   -0.04979862
 Pairs        0.07753677   -0.00000000   -0.05366305
 Total        1.09274513   -0.04340364   -0.75629135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95593454
 Nuclear energy                         0.00000000
 Kinetic energy                       103.18831035
 One electron energy                 -466.19906479
 Two electron energy                  198.48683890
 Virial quotient                       -2.59440459
 Correlation energy                    -0.75629135
 !MRCI STATE 2.1 Energy              -267.712225892940

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78236823 (Davidson, fixed reference)
 Cluster corrected energies          -267.78236823 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78236823 (Davidson, rotated reference)

 Cluster corrected energies          -267.78185496 (Pople, fixed reference)
 Cluster corrected energies          -267.78185496 (Pople, relaxed reference)
 Cluster corrected energies          -267.78185496 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95662242 (fixed)   0.95662242 (relaxed)   0.95662242 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012611   -0.00039337   -0.65282954
 Singles      0.01508246   -0.04301041   -0.04979880
 Pairs        0.07753659    0.00000000   -0.05366301
 Total        1.09274516   -0.04340378   -0.75629135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95593454
 Nuclear energy                         0.00000000
 Kinetic energy                       103.18831099
 One electron energy                 -466.19909118
 Two electron energy                  198.48686529
 Virial quotient                       -2.59440457
 Correlation energy                    -0.75629135
 !MRCI STATE 3.1 Energy              -267.712225892919

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78236826 (Davidson, fixed reference)
 Cluster corrected energies          -267.78236826 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78236826 (Davidson, rotated reference)

 Cluster corrected energies          -267.78185498 (Pople, fixed reference)
 Cluster corrected energies          -267.78185498 (Pople, relaxed reference)
 Cluster corrected energies          -267.78185498 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95662243 (fixed)   0.95662243 (relaxed)   0.95662243 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012611   -0.00039337   -0.65282945
 Singles      0.01508248   -0.04301052   -0.04979884
 Pairs        0.07753654    0.00000000   -0.05366305
 Total        1.09274513   -0.04340389   -0.75629135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95593454
 Nuclear energy                         0.00000000
 Kinetic energy                       103.18831129
 One electron energy                 -466.19908999
 Two electron energy                  198.48686410
 Virial quotient                       -2.59440457
 Correlation energy                    -0.75629135
 !MRCI STATE 4.1 Energy              -267.712225892849

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78236823 (Davidson, fixed reference)
 Cluster corrected energies          -267.78236823 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78236823 (Davidson, rotated reference)

 Cluster corrected energies          -267.78185495 (Pople, fixed reference)
 Cluster corrected energies          -267.78185495 (Pople, relaxed reference)
 Cluster corrected energies          -267.78185495 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.68654016 (fixed)   0.95662251 (relaxed)   0.95662251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012611   -0.00039337   -0.65282992
 Singles      0.01508203   -0.04301004   -0.04979846
 Pairs        0.07753681   -0.00000008   -0.05366297
 Total        1.09274495   -0.04340349   -0.75629135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.95593454
 Nuclear energy                         0.00000000
 Kinetic energy                       103.18831029
 One electron energy                 -466.19906070
 Two electron energy                  198.48683481
 Virial quotient                       -2.59440459
 Correlation energy                    -0.75629135
 !MRCI STATE 5.1 Energy              -267.712225892701

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.78236810 (Davidson, fixed reference)
 Cluster corrected energies          -267.78236810 (Davidson, relaxed reference)
 Cluster corrected energies          -267.78236810 (Davidson, rotated reference)

 Cluster corrected energies          -267.78185481 (Pople, fixed reference)
 Cluster corrected energies          -267.78185481 (Pople, relaxed reference)
 Cluster corrected energies          -267.78185481 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95524654 (fixed)   0.95524654 (relaxed)   0.95524654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00657237   -0.01149960   -0.01507060
 Singles      0.00467957   -0.02346007   -0.02466604
 Pairs        0.08464334   -0.72826671   -0.72348974
 Total        1.09589528   -0.76322639   -0.76322639
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -266.89162877
 Nuclear energy                         0.00000000
 Kinetic energy                       103.18018336
 One electron energy                 -466.12206286
 Two electron energy                  198.46720770
 Virial quotient                       -2.59405291
 Correlation energy                    -0.76322639
 !MRCI STATE 6.1 Energy              -267.654855153423

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -267.72804496 (Davidson, fixed reference)
 Cluster corrected energies          -267.72804496 (Davidson, relaxed reference)
 Cluster corrected energies          -267.72804496 (Davidson, rotated reference)

 Cluster corrected energies          -267.72771246 (Pople, fixed reference)
 Cluster corrected energies          -267.72771246 (Pople, relaxed reference)
 Cluster corrected energies          -267.72771246 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       83.54       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        40.41     28.59      9.46      0.80      0.05      1.14
 REAL TIME  *        51.37 SEC
 DISK USED  *       117.52 MB (local),        3.33 GB (total)
 SF USED    *       647.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -267.78236833  AU                              
 SETTING HLSDIAG(5)     =      -267.78236823  AU                              
 SETTING HLSDIAG(6)     =      -267.78236826  AU                              
 SETTING HLSDIAG(7)     =      -267.78236823  AU                              
 SETTING HLSDIAG(8)     =      -267.78236810  AU                              
 SETTING HLSDIAG(9)     =      -267.72804496  AU                              


         HLSDIAG
    -267.8164119
    -267.8164119
    -267.8164118
    -267.7823683
    -267.7823682
    -267.7823683
    -267.7823682
    -267.7823681
    -267.7280450
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -267.749189   -267.749189   -267.749189
 Replaced energies:   -267.816412   -267.816412   -267.816412

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -267.712226   -267.712226   -267.712226   -267.712226   -267.712226   -267.654855
 Replaced energies:   -267.782368   -267.782368   -267.782368   -267.782368   -267.782368   -267.728045



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -267.81641187

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00   -1920.86       0.00       0.00       0.00   -1358.25       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00    1358.26       0.00       0.00       0.00      -0.00
                         1920.86       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01      -0.00   -1358.26       0.00       0.00       0.00       0.00   -1365.19
                           -0.00       0.00      -0.00    1358.25       0.00      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00   -1358.25       0.00       0.00       0.00       0.00       0.00   -1358.25   -1930.67

    5   2.1  1.0  0.0      -0.00      -0.00   -1358.26       0.00       0.00       0.00       0.00      -0.00    1358.26       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00    1358.26       0.00       0.00       0.00       0.01      -0.00   -1358.26       0.00       0.00
                         1358.25       0.00       0.00      -0.00      -0.00       0.00    1358.25       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00   -1358.25      -0.00    1920.86      -0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00   -1358.26       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1920.86      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    1358.26       0.00       0.00       0.00       0.01   -1365.19
                           -0.00      -0.00      -0.00    1358.25       0.00       0.00       0.00      -0.00       0.00       0.00

   10   1.1  0.0  0.0      -0.00      -0.00   -1365.19       0.00       0.00       0.00      -0.00      -0.00   -1365.19    7471.69
                            0.00      -0.00       0.00    1930.67       0.00       0.00      -0.00       0.00      -0.00       0.00

   11   2.1  0.0  0.0   -1437.30      -0.00       0.00       0.00       0.00       0.00   -1437.30      -0.00       0.00       0.00
                            0.00    -157.96      -0.00      -0.00      -0.00   -1809.26      -0.00     157.96       0.00      -0.00

   12   3.1  0.0  0.0      -0.00    1365.19      -0.00       0.00       0.00       0.00      -0.00    1365.19      -0.00       0.00
                        -1365.20       0.00       0.00       0.00       0.00      -0.00    1365.20      -0.00      -0.00      -0.00

   13   4.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00    1365.20       0.00    1930.68       0.00      -0.00      -0.00   -1365.20      -0.00

   14   5.1  0.0  0.0     647.43      -0.00      -0.00       0.00       0.00       0.00     647.43      -0.00      -0.00       0.00
                            0.00    1568.45       0.00       0.00       0.00   -1302.52      -0.00   -1568.45      -0.00      -0.00

   15   6.1  0.0  0.0    2243.04       0.00      -0.00       0.00       0.00       0.00    2243.04       0.00      -0.00       0.00
                           -0.00   -2243.04       0.00       0.00       0.00   -3172.14       0.00    2243.04      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0   -1437.30      -0.00      -0.00     647.43    2243.04
                           -0.00    1365.20      -0.00      -0.00       0.00

    2   2.1  1.0  1.0      -0.00    1365.19      -0.00      -0.00       0.00
                          157.96      -0.00      -0.00   -1568.45    2243.04

    3   3.1  1.0  1.0       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00   -1365.20      -0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -1930.68      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         1809.26       0.00      -0.00    1302.52    3172.14

    7   1.1  1.0 -1.0   -1437.30      -0.00      -0.00     647.43    2243.04
                            0.00   -1365.20       0.00       0.00      -0.00

    8   2.1  1.0 -1.0      -0.00    1365.19      -0.00      -0.00       0.00
                         -157.96       0.00       0.00    1568.45   -2243.04

    9   3.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00    1365.20       0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    7471.71       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    7471.71       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    7471.71       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    7471.74       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   19394.29
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -267.81641187 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -1920.862       0.000   -1920.863

    2    1  |1 1>+              0.000       0.001       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000    1920.863       0.000

    3    1  |1 1>+              0.000       0.000       0.009      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1920.862       0.000       0.000      -0.000       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000   -1920.862       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.001       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.009       0.000    1920.863
                             1920.862       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000   -1920.863       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000    1920.863       0.000       0.001
                             1920.863       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000   -1920.863       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000   -1930.674       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1930.674       0.000       0.000       0.000      -0.000

    2    1  |0 0>           -2032.645      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000   -1809.257       0.000    -223.388

    3    1  |0 0>              -0.000    1930.675      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000   -1930.680       0.000

    4    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1930.676       0.000       0.000       0.000

    5    1  |0 0>             915.603      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -1302.522       0.000    2218.122

    6    1  |0 0>            3172.136       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000   -3172.137      -0.000   -3172.136

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000   -2032.645      -0.000      -0.000     915.603    3172.136
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000    1930.675      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -1930.674       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1930.674       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>           -1920.863       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000   -1930.676      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    1809.257       0.000      -0.000    1302.522    3172.137

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    1930.680      -0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     223.388      -0.000      -0.000   -2218.122    3172.136

    3    1  |1 1>-              0.009       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000   -1930.679      -0.000      -0.000

    1    1  |0 0>               0.000    7471.693       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    7471.715       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    7471.710       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    7471.715       0.000       0.000
                             1930.679      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    7471.745       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   19394.294
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -267.82851760    -0.01210573    -2656.90      0.00000000        0.00      0.0000
    2  -267.82851758    -0.01210571    -2656.90      0.00000002        0.00      0.0000
    3  -267.82851757    -0.01210570    -2656.89      0.00000003        0.01      0.0000
    4  -267.82851756    -0.01210569    -2656.89      0.00000004        0.01      0.0000
    5  -267.82851753    -0.01210566    -2656.89      0.00000006        0.01      0.0000
    6  -267.80765977     0.00875210     1920.86      0.02085782     4577.76      0.5676
    7  -267.80765976     0.00875211     1920.87      0.02085784     4577.77      0.5676
    8  -267.80765975     0.00875212     1920.87      0.02085785     4577.77      0.5676
    9  -267.80685921     0.00955266     2096.57      0.02165838     4753.47      0.5894
   10  -267.77901470     0.03739717     8207.73      0.04950289    10864.63      1.3470
   11  -267.77901463     0.03739724     8207.74      0.04950296    10864.64      1.3470
   12  -267.77901462     0.03739725     8207.75      0.04950297    10864.65      1.3470
   13  -267.77901460     0.03739727     8207.75      0.04950299    10864.65      1.3470
   14  -267.77901451     0.03739736     8207.77      0.04950309    10864.67      1.3470
   15  -267.72009342     0.09631845    21139.46      0.10842418    23796.36      2.9504

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000003  0.00000008  0.00000006  0.71190018 -0.33867637  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.68273472  0.00000000  0.00000003 -0.00000000  0.00000005  0.70710692 -0.00000005  0.00000001
                          -0.00006021  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00044588  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000003  0.00000036  0.68273412 -0.00000006 -0.00000000  0.00000005  0.70710508  0.00000025
                          -0.00000000  0.00000000 -0.00042496  0.00000000  0.00000000 -0.00000000 -0.00179353 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00042496 -0.00000000 -0.00000000 -0.00000000 -0.00179353 -0.00000000
                          -0.00000003  0.00000036  0.68273541 -0.00000006 -0.00000000 -0.00000005 -0.70710393 -0.00000025

   2    1  |1 0>          -0.00000000 -0.00017023 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000042
                          -0.00000000  0.68273539 -0.00000036 -0.00000006  0.00000003  0.00000001  0.00000025 -0.70710642

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000006 -0.00000004 -0.00000000 -0.06264763  0.78586115 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00006021 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00044588  0.00000000 -0.00000000
                           0.68273511  0.00000000  0.00000003 -0.00000000  0.00000005 -0.70710636  0.00000005 -0.00000001

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000003 -0.00000004 -0.00000006 -0.64925198 -0.44718586  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00017023 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000042
                          -0.00000000  0.68273441 -0.00000036 -0.00000006  0.00000003 -0.00000001 -0.00000025  0.70710715

   1    1  |0 0>          -0.00000001  0.00000014  0.26028080 -0.00000002 -0.00000000  0.00000000  0.00000048  0.00000000
                          -0.00000000  0.00000000 -0.00016201  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000002  0.00000002  0.00000001  0.16837670 -0.19848126  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.26028075 -0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000039 -0.00000000  0.00000000
                           0.00002295 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.26028070 -0.00000014 -0.00000002  0.00000001 -0.00000000 -0.00000000  0.00000074
                           0.00000000  0.00006490  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000001 -0.00000001 -0.00000002 -0.19848062 -0.16837626 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000010  0.00000012  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.55025894  0.00000000 -0.19390873  0.00000001 -0.00000001  0.08696570  0.17477963
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000001  0.18404589 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00013692 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.18404652 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00006330 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00006330  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.18404616 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00010620  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000001 -0.00000000 -0.18404581 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.55025987 -0.00000000  0.17226912 -0.00000001  0.00000001  0.12444680  0.17477973

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00013692  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000001  0.18404657 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.55025939 -0.00000000  0.02163979 -0.00000000  0.00000000 -0.21141212  0.17477961

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00010620  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001 -0.00000000 -0.18404663 -0.00000000 -0.00000000

   1    1  |0 0>           0.00000000  0.96553289  0.00000001  0.00000000  0.00000002 -0.00000001 -0.00000000
                          -0.00000000  0.00033208  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000030 -0.00000001  0.96553198 -0.00000004  0.00000004  0.00157441  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000004  0.96553271 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00071829 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000002 -0.00000004  0.00000000  0.96553283  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00055715  0.00000000  0.00000000

   5    1  |0 0>          -0.00000028  0.00000001 -0.00157443  0.00000000 -0.00000000  0.96553218  0.00000004
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.30272724  0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000013  0.95307724
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -267.82851760     -0.01210573    -2656.90      0.00000000        0.00      0.0000
     2   1   -267.82851758     -0.01210571    -2656.90      0.00000002        0.00      0.0000
     3   1   -267.82851757     -0.01210570    -2656.89      0.00000003        0.01      0.0000
     4   1   -267.82851756     -0.01210569    -2656.89      0.00000004        0.01      0.0000
     5   1   -267.82851753     -0.01210566    -2656.89      0.00000006        0.01      0.0000
     6   1   -267.80765977      0.00875210     1920.86      0.02085782     4577.76      0.5676
     7   1   -267.80765976      0.00875211     1920.87      0.02085784     4577.77      0.5676
     8   1   -267.80765975      0.00875212     1920.87      0.02085785     4577.77      0.5676
     9   1   -267.80685921      0.00955266     2096.57      0.02165838     4753.47      0.5894
    10   1   -267.77901470      0.03739717     8207.73      0.04950289    10864.63      1.3470
    11   1   -267.77901463      0.03739724     8207.74      0.04950296    10864.64      1.3470
    12   1   -267.77901462      0.03739725     8207.75      0.04950297    10864.65      1.3470
    13   1   -267.77901460      0.03739727     8207.75      0.04950299    10864.65      1.3470
    14   1   -267.77901451      0.03739736     8207.77      0.04950309    10864.67      1.3470
    15   1   -267.72009342      0.09631845    21139.46      0.10842418    23796.36      2.9504

 E0 =   -267.81641187 is the energy of the lowest zeroth-order state
 E1 =   -267.82851760 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000003  0.00000008  0.00000006  0.71190018 -0.33867637  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.68273472  0.00000000  0.00000003 -0.00000000  0.00000005  0.70710692 -0.00000005  0.00000001
                               -0.00006021  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00044588  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000003  0.00000036  0.68273412 -0.00000006 -0.00000000  0.00000005  0.70710508  0.00000025
                               -0.00000000  0.00000000 -0.00042496  0.00000000  0.00000000 -0.00000000 -0.00179353 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00042496 -0.00000000 -0.00000000 -0.00000000 -0.00179353 -0.00000000
                               -0.00000003  0.00000036  0.68273541 -0.00000006 -0.00000000 -0.00000005 -0.70710393 -0.00000025

  5  1     2    1  |1 0>       -0.00000000 -0.00017023 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000042
                               -0.00000000  0.68273539 -0.00000036 -0.00000006  0.00000003  0.00000001  0.00000025 -0.70710642

  6  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000006 -0.00000004 -0.00000000 -0.06264763  0.78586115 -0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00006021 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00044588  0.00000000 -0.00000000
                                0.68273511  0.00000000  0.00000003 -0.00000000  0.00000005 -0.70710636  0.00000005 -0.00000001

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000003 -0.00000004 -0.00000006 -0.64925198 -0.44718586  0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00017023 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000042
                               -0.00000000  0.68273441 -0.00000036 -0.00000006  0.00000003 -0.00000001 -0.00000025  0.70710715

 10  1     1    1  |0 0>       -0.00000001  0.00000014  0.26028080 -0.00000002 -0.00000000  0.00000000  0.00000048  0.00000000
                               -0.00000000  0.00000000 -0.00016201  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000002  0.00000002  0.00000001  0.16837670 -0.19848126  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.26028075 -0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000039 -0.00000000  0.00000000
                                0.00002295 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000  0.26028070 -0.00000014 -0.00000002  0.00000001 -0.00000000 -0.00000000  0.00000074
                                0.00000000  0.00006490  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000001 -0.00000001 -0.00000002 -0.19848062 -0.16837626 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000010  0.00000012  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.55025894  0.00000000 -0.19390873  0.00000001 -0.00000001  0.08696570  0.17477963
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000001  0.18404589 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00013692 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.18404652 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00006330 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00006330  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.18404616 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00010620  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000001 -0.00000000 -0.18404581 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.55025987 -0.00000000  0.17226912 -0.00000001  0.00000001  0.12444680  0.17477973

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00013692  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000001  0.18404657 -0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.55025939 -0.00000000  0.02163979 -0.00000000  0.00000000 -0.21141212  0.17477961

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00010620  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001 -0.00000000 -0.18404663 -0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000000  0.96553289  0.00000001  0.00000000  0.00000002 -0.00000001 -0.00000000
                               -0.00000000  0.00033208  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000030 -0.00000001  0.96553198 -0.00000004  0.00000004  0.00157441  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000004  0.96553271 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00071829 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000002 -0.00000004  0.00000000  0.96553283  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00055715  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000028  0.00000001 -0.00157443  0.00000000 -0.00000000  0.96553218  0.00000004
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.30272724  0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000013  0.95307724
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%   50.68%   11.47%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+        46.61%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   46.61%    0.00%    0.00%    0.00%   50.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   46.61%    0.00%    0.00%    0.00%   50.00%    0.00%
  5  1     2    1  |1 0>          0.00%   46.61%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.39%   61.76%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        46.61%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   42.15%   20.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   46.61%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    6.77%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    2.84%    3.94%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          6.77%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    6.77%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    3.94%    2.84%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+        30.28%    0.00%    3.76%    0.00%    0.00%    0.76%    3.05%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    3.39%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    3.39%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    3.39%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    3.39%    0.00%    0.00%
  6  1     3    1  |1 0>         30.28%    0.00%    2.97%    0.00%    0.00%    1.55%    3.05%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    3.39%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        30.28%    0.00%    0.05%    0.00%    0.00%    4.47%    3.05%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    3.39%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%   93.23%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   93.23%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%   93.23%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   93.23%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   93.23%    0.00%
 15  1     6    1  |0 0>          9.16%    0.00%    0.00%    0.00%    0.00%    0.00%   90.84%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       83.54       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        68.56     28.12     28.59      9.46      0.80      0.05      1.14
 REAL TIME  *        84.04 SEC
 DISK USED  *       117.52 MB (local),        3.33 GB (total)
 SF USED    *       647.85 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCVTZ-PP energy=   -267.720093417371

              CI              CI           MULTI         RHF-SCF
   -267.65485515   -267.74918898   -266.89162877   -266.72037260
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
