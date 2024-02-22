
 Working directory              : /wrk/irikura/molpro.xxAi0mL4G5/
 Global scratch directory       : /wrk/irikura/molpro.xxAi0mL4G5/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.xxAi0mL4G5/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,N SO-CI
                                                                                 ! Active space (5,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={N};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=7,sym=2,spin=3}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     wf,sym=2,spin=3;state,1;
     wf,sym=2,spin=1;state,5;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=2,spin=3;state,1; save,5203.2}
 hlsdiag = energd
 {ci;wf,sym=2,spin=1;state,5; save,5201.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   N SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:42:10  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry N      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry N      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry N      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry N      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  N       7.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    7
 NUMBER OF PRIMITIVE AOS:          81
 NUMBER OF SYMMETRY AOS:           71
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     2.884 MB (compressed) written to integral file ( 19.4%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.511E-02 0.196E-01 0.655E-01 0.190E+00 0.246E+00 0.246E+00 0.246E+00 0.246E+00
         2 0.168E-01 0.168E-01 0.168E-01 0.185E+00 0.185E+00 0.185E+00 0.406E+00 0.406E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.64      0.45
 REAL TIME  *         1.67 SEC
 DISK USED  *        29.03 MB (local),      166.27 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   2   0

 NELEC=    7   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -54.37876999     -54.37876999     0.00D+00     0.10D+00     0     0       0.00      0.01    start
   2      -54.42477473      -0.04600474     0.12D-01     0.17D-01     1     0       0.00      0.01    diag2
   3      -54.42649174      -0.00171701     0.42D-02     0.25D-02     2     0       0.00      0.01    diag2
   4      -54.42682634      -0.00033461     0.12D-02     0.17D-02     3     0       0.00      0.01    diag2
   5      -54.42683829      -0.00001194     0.19D-03     0.58D-03     4     0       0.00      0.01    diag2
   6      -54.42683840      -0.00000012     0.21D-04     0.63D-04     5     0       0.01      0.02    diag2
   7      -54.42683840      -0.00000000     0.22D-05     0.51D-05     6     0       0.00      0.02    diag2
   8      -54.42683840      -0.00000000     0.24D-06     0.82D-06     7     0       0.00      0.02    fixocc
   9      -54.42683840      -0.00000000     0.10D-07     0.15D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   2   3
 Final beta  occupancy:   2   0

 !RHF STATE 1.2 Energy                -54.426838404183
  RHF One-electron energy             -73.979386138601
  RHF Two-electron energy              19.552547734418
  RHF Kinetic energy                   54.620409449184
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.996456067486

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -15.63896     1  1  s    0.99938
    2.1     2.00000    -0.94726     1  2  s    1.00843
    1.2     1.00000    -0.56728     1  1  py   0.99645
    2.2     1.00000    -0.56728     1  1  px   0.99685
    3.2     1.00000    -0.56728     1  1  pz   0.99645


 HOMO      3.2    -0.567285 =     -15.4366eV
 LUMO      3.1     0.117731 =       3.2036eV
 LUMO-HOMO         0.685015 =      18.6402eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.66      0.02      0.45
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.44 MB (local),      168.32 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   5    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   5    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             5
 Number of CSFs:              11   (12 determinants, 24 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 6   4 3 5 2 1 6 4 3 5 2   1 6 4 3 5 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.275D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.275D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 2 1 8  10 6 4 5 9 7 3 2 1 8  10 6 7 9 4 5 3 2 1 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    199
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    6    0    -54.33832938     -54.33941951   -0.00109013    0.03476410 0.00005848 0.00000000  0.37E-01      0.08
   2    2    4    0    -54.33942439     -54.33942445   -0.00000006    0.00027094 0.00000004 0.00000000  0.26E-03      0.14
   3    4    8    0    -54.33942445     -54.33942445    0.00000000    0.00000004 0.00000001 0.00000000  0.19E-07      0.20

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.55E-08)
                       Final energy:    -54.33942445
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy               -54.425740437932
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.53294841
 One electron energy                           -73.86006945
 Two electron energy                            19.43432902
 Virial ratio                                    1.99803407
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy               -54.322161252890
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.53294841
 One electron energy                           -73.86006945
 Two electron energy                            19.53790820
 Virial ratio                                    1.99613468
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy               -54.322161252806
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.53294841
 One electron energy                           -73.86006945
 Two electron energy                            19.53790820
 Virial ratio                                    1.99613468
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy               -54.322161252711
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.53294841
 One electron energy                           -73.86006945
 Two electron energy                            19.53790820
 Virial ratio                                    1.99613468
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Doublet
 =============================
 !MCSCF STATE 4.2 Doublet Energy               -54.322161252438
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.53294841
 One electron energy                           -73.86006945
 Two electron energy                            19.53790820
 Virial ratio                                    1.99613468
 
 !MCSCF STATE 4.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Doublet
 =============================
 !MCSCF STATE 5.2 Doublet Energy               -54.322161252429
 Nuclear energy                                  0.00000000
 Kinetic energy                                 54.53294841
 One electron energy                           -73.86006945
 Two electron energy                            19.53790820
 Virial ratio                                    1.99613468
 
 !MCSCF STATE 5.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000000000000
 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     2.549896002575
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     1.000000006866
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     3.999999993223
 !MCSCF expec      <4.2 Doublet|LXLX|4.2 Doublet>     1.450103998692
 !MCSCF expec      <5.2 Doublet|LXLX|5.2 Doublet>     1.000000000105
 
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.059755992063
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     1.000000000314
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     1.000000000660
 !MCSCF expec      <4.2 Doublet|LYLY|4.2 Doublet>     3.940244007618
 !MCSCF expec      <5.2 Doublet|LYLY|5.2 Doublet>     3.999999999756
 
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     3.390348005362
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     3.999999992820
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     1.000000006117
 !MCSCF expec      <4.2 Doublet|LZLZ|4.2 Doublet>     0.609651993690
 !MCSCF expec      <5.2 Doublet|LZLZ|5.2 Doublet>     1.000000000139
 
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>    -0.000000000000
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     6.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     6.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     6.000000000000
 !MCSCF expec      <4.2 Doublet|L**2|4.2 Doublet>     6.000000000000
 !MCSCF expec      <5.2 Doublet|L**2|5.2 Doublet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 6 3 5 1 4   2 6 3 5 1 4 2 6 3 5   1 4 2 6 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 4   610 8 5 9 7 3 1 2 4   610 8 5 7 9 3 1 2 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -15.67000     1  1  s    0.99945
    2.1     2.00000    -0.96245     1  2  s    1.01412
    1.2     1.00000    -0.19624     1  1  py   0.98393
    2.2     1.00000    -0.19624     1  1  px   0.98393
    3.2     1.00000    -0.19624     1  1  pz   0.98393
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 2 aaa          1.00000000
 
 Energy:      -54.42574044
 
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 2 baa          0.81037481      0.00000015     -0.00000031     -0.09979645      0.00000052
 2 aab         -0.31876114     -0.00000123      0.00000240      0.75170340     -0.00000389
 2 2a0          0.00000000      0.00003383      0.70710679     -0.00000003      0.00000394
 2 20a         -0.00000000      0.70710679     -0.00003194      0.00000003      0.00000499
 2 a20          0.00000000     -0.00000714     -0.00001025     -0.00000000      0.70710678
 2 a02         -0.00000000      0.00000714      0.00001025      0.00000000     -0.70710678
 2 02a          0.00000000     -0.70710677      0.00003194     -0.00000003     -0.00000499
 2 0a2         -0.00000000     -0.00003383     -0.70710677      0.00000003     -0.00000394
 2 aba         -0.49161367      0.00000108     -0.00000209     -0.65190695      0.00000338
 
 Energy:      -54.32216125    -54.32216125    -54.32216125    -54.32216125    -54.32216125
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         0.91      0.24      0.02      0.45
 REAL TIME  *         2.01 SEC
 DISK USED  *        29.75 MB (local),      169.86 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -54.42574044  -0.0
    -54.32216125   6.0
    -54.32216125   6.0
    -54.32216125   6.0
    -54.32216125   6.0
    -54.32216125   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   2   Quartet 
 Number of electrons:                  7
 Maximum number of shells:             2
 Maximum number of spin couplings:     4

 Reference space:        1 conf        1 CSFs
 N elec internal:        4 conf        4 CSFs
 N-1 el internal:       13 conf       16 CSFs
 N-2 el internal:        7 conf       19 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -54.42574044

 Number of blocks in overlap matrix:    10   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      10
 Number of N-1 electron functions:      16

 Number of internal configurations:                    1
 Number of singly external configurations:           424
 Number of doubly external configurations:          7228
 Total number of contracted configurations:         7653
 Total number of uncontracted configurations:      14121

 Diagonal Coupling coefficients finished.               Storage:    172891 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    186199 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -54.42574044     0.00000000    -0.12390832  0.24D-01  0.18D-01     0.00
    2     1     1     1.03777194    -0.11790874   -54.54364918    -0.11790874    -0.00068433  0.70D-04  0.13D-03     0.01
    3     1     1     1.03942418    -0.11867572   -54.54441615    -0.00076697    -0.00002484  0.14D-04  0.26D-05     0.02
    4     1     1     1.03969616    -0.11870626   -54.54444669    -0.00003054    -0.00000133  0.22D-06  0.27D-06     0.02
    5     1     1     1.03976649    -0.11870781   -54.54444825    -0.00000156    -0.00000004  0.96D-08  0.53D-08     0.03
    6     1     1     1.03975670    -0.11870785   -54.54444829    -0.00000004    -0.00000000  0.33D-09  0.13D-09     0.03


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S  33.3%   0.0%
 P   0.0%  33.3%  33.3%

 Initialization:   0.0%
 Other:            0.0%

 Total CPU:        0.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2///           0.9806954


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.98069539 (fixed)   0.98069539 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.00000000
 Singles      0.02237436   -0.04798060   -0.04869990
 Pairs        0.01738234   -0.07072725   -0.07000795
 Total        1.03975670   -0.11870785   -0.11870785
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.42574044
 Nuclear energy                         0.00000000
 Kinetic energy                        54.70997088
 One electron energy                  -73.86221789
 Two electron energy                   19.31776960
 Virial quotient                       -0.99697454
 Correlation energy                    -0.11870785
 !CI(SD) STATE 1.2 Energy             -54.544448290091

 Properties without orbital relaxation:

 !CI(SD) STATE 1.2 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.54916772 (Davidson, fixed reference)
 Cluster corrected energies           -54.54916772 (Davidson, relaxed reference)

 Cluster corrected energies           -54.54444829 (Pople, fixed reference)
 Cluster corrected energies           -54.54444829 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        0.75       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.00      0.08      0.24      0.02      0.45
 REAL TIME  *         2.11 SEC
 DISK USED  *        29.90 MB (local),      170.65 MB (total)
 SF USED    *         1.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =       -54.54916772  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   2   Doublet 
 Number of electrons:                  7
 Maximum number of shells:             3
 Maximum number of spin couplings:     5

 Reference space:       10 conf       11 CSFs
 N elec internal:       16 conf       20 CSFs
 N-1 el internal:       19 conf       35 CSFs
 N-2 el internal:       16 conf       44 CSFs

 Number of electrons in valence space:                      5
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  5


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -54.32216125
     2       -54.32216125
     3       -54.32216125
     4       -54.32216125
     5       -54.32216125

 Number of blocks in overlap matrix:    21   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:      27
 Number of N-1 electron functions:      35

 Number of internal configurations:                   11
 Number of singly external configurations:           947
 Number of doubly external configurations:         19798
 Total number of contracted configurations:        20756
 Total number of uncontracted configurations:      33015

 Diagonal Coupling coefficients finished.               Storage:    175876 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    187481 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -54.32216125    -0.00000000    -0.13474266  0.23D-01  0.20D-01     0.00
    1     2     2     1.00000000     0.00000000   -54.32216125    -0.00000000    -0.13442871  0.23D-01  0.20D-01     0.00
    1     3     3     1.00000000     0.00000000   -54.32216125    -0.00000000    -0.13459891  0.23D-01  0.20D-01     0.00
    1     4     4     1.00000000     0.00000000   -54.32216125     0.00000000    -0.13544610  0.23D-01  0.20D-01     0.00
    1     5     5     1.00000000     0.00000000   -54.32216125     0.00000000    -0.13473920  0.23D-01  0.20D-01     0.00
    2     1     1     1.03961865    -0.12974955   -54.45191080    -0.12974955    -0.00217600  0.27D-03  0.35D-03     0.04
    2     2     2     1.03962880    -0.12974947   -54.45191073    -0.12974947    -0.00216879  0.26D-03  0.35D-03     0.04
    2     3     3     1.03960385    -0.12974826   -54.45190951    -0.12974826    -0.00217092  0.27D-03  0.35D-03     0.04
    2     4     4     1.03976001    -0.12972306   -54.45188431    -0.12972306    -0.00220821  0.28D-03  0.36D-03     0.04
    2     5     5     1.03984566    -0.12970267   -54.45186392    -0.12970267    -0.00223201  0.27D-03  0.37D-03     0.04
    3     1     1     1.04296544    -0.13209367   -54.45425493    -0.00234413    -0.00010993  0.53D-04  0.13D-04     0.08
    3     2     2     1.04294911    -0.13209196   -54.45425321    -0.00234249    -0.00011068  0.53D-04  0.13D-04     0.08
    3     3     3     1.04292178    -0.13208985   -54.45425110    -0.00234159    -0.00011059  0.54D-04  0.12D-04     0.08
    3     4     4     1.04291172    -0.13208899   -54.45425024    -0.00236593    -0.00011078  0.54D-04  0.13D-04     0.08
    3     5     5     1.04292402    -0.13208893   -54.45425018    -0.00238626    -0.00011144  0.54D-04  0.13D-04     0.08
    4     1     1     1.04434843    -0.13223851   -54.45439977    -0.00014484    -0.00001024  0.35D-05  0.17D-05     0.13
    4     2     2     1.04434732    -0.13223832   -54.45439957    -0.00014636    -0.00001035  0.35D-05  0.17D-05     0.13
    4     3     3     1.04434476    -0.13223748   -54.45439873    -0.00014763    -0.00001088  0.38D-05  0.17D-05     0.13
    4     4     4     1.04434538    -0.13223744   -54.45439869    -0.00014845    -0.00001090  0.38D-05  0.17D-05     0.13
    4     5     5     1.04434190    -0.13223742   -54.45439867    -0.00014849    -0.00001092  0.38D-05  0.17D-05     0.13
    5     1     1     1.04460377    -0.13225274   -54.45441399    -0.00001423    -0.00000085  0.33D-06  0.10D-06     0.17
    5     2     2     1.04460123    -0.13225271   -54.45441396    -0.00001439    -0.00000087  0.35D-06  0.10D-06     0.17
    5     3     3     1.04460148    -0.13225266   -54.45441391    -0.00001518    -0.00000091  0.34D-06  0.11D-06     0.17
    5     4     4     1.04460096    -0.13225265   -54.45441390    -0.00001521    -0.00000092  0.35D-06  0.11D-06     0.17
    5     5     5     1.04460041    -0.13225263   -54.45441388    -0.00001521    -0.00000093  0.36D-06  0.11D-06     0.17
    6     1     1     1.04461296    -0.13225377   -54.45441502    -0.00000103    -0.00000006  0.16D-07  0.79D-08     0.22
    6     2     2     1.04461278    -0.13225377   -54.45441502    -0.00000106    -0.00000006  0.17D-07  0.81D-08     0.22
    6     3     3     1.04461230    -0.13225376   -54.45441502    -0.00000110    -0.00000006  0.18D-07  0.83D-08     0.22
    6     4     4     1.04461214    -0.13225376   -54.45441502    -0.00000112    -0.00000006  0.19D-07  0.84D-08     0.22
    6     5     5     1.04461197    -0.13225376   -54.45441501    -0.00000113    -0.00000006  0.19D-07  0.87D-08     0.22
    7     1     1     1.04462453    -0.13225384   -54.45441509    -0.00000007    -0.00000000  0.16D-08  0.57D-09     0.27
    7     2     2     1.04462442    -0.13225384   -54.45441509    -0.00000007    -0.00000000  0.17D-08  0.60D-09     0.27
    7     3     3     1.04462382    -0.13225384   -54.45441509    -0.00000007    -0.00000000  0.19D-08  0.64D-09     0.27
    7     4     4     1.04462380    -0.13225384   -54.45441509    -0.00000007    -0.00000001  0.19D-08  0.65D-09     0.27
    7     5     5     1.04462376    -0.13225384   -54.45441509    -0.00000007    -0.00000001  0.19D-08  0.68D-09     0.27


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%  14.8%  33.3%

 Initialization:   0.0%
 Other:           51.9%

 Total CPU:        0.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\/          -0.0894974   0.9743059   0.0000000   0.0000000   0.0000000
 2//\           0.9743059   0.0894973   0.0000000   0.0000000   0.0000000
 220/           0.0000000   0.0000000  -0.0000000   0.0000000   0.6918778
 22/0           0.0000000   0.0000000   0.0000000   0.6918540   0.0000000
 2/02           0.0000000   0.0000000   0.6918393   0.0000000   0.0000000
 2/20           0.0000000   0.0000000  -0.6918387   0.0000000   0.0000000
 20/2           0.0000000   0.0000000   0.0000000  -0.6918240   0.0000000
 202/           0.0000000   0.0000000  -0.0000000   0.0000000  -0.6918002

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \//\  14.1    -0.0064717  -0.0577306  -0.0000000  -0.0000000  -0.0000000
 \//\  13.1    -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0568976
 \//\  12.1     0.0000000   0.0000000   0.0000000   0.0568972   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.297973    0.000000    0.000000    0.931930    0.000000
 2           0.931930    0.000000    0.000000   -0.297973    0.000000
 3           0.000000   -0.000000    0.000000    0.000000    0.978408
 4           0.000000    0.000000    0.978408    0.000000    0.000000
 5           0.000000    0.978408    0.000000    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978408   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.978408    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.978408    0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.978408   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.978408


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.93193028 (fixed)   0.97840776 (relaxed)   0.97840776 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.07589644
 Singles      0.02361568   -0.05297056   -0.05369714
 Pairs        0.02100884    0.00000000   -0.00266026
 Total        1.04462453   -0.05297056   -0.13225384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32216125
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63146734
 One electron energy                  -73.71215746
 Two electron energy                   19.25774237
 Virial quotient                       -0.99675915
 Correlation energy                    -0.13225384
 !MRCI STATE 1.2 Energy               -54.454415090428

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46031686 (Davidson, fixed reference)
 Cluster corrected energies           -54.46031686 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46031686 (Davidson, rotated reference)

 Cluster corrected energies           -54.45736451 (Pople, fixed reference)
 Cluster corrected energies           -54.45736451 (Pople, relaxed reference)
 Cluster corrected energies           -54.45736451 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.93193031 (fixed)   0.97840781 (relaxed)   0.97840781 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000   -0.07589646
 Singles      0.02361559   -0.05297054   -0.05369716
 Pairs        0.02100884   -0.00000000   -0.00266022
 Total        1.04462442   -0.05297054   -0.13225384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32216125
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63146853
 One electron energy                  -73.71216047
 Two electron energy                   19.25774538
 Virial quotient                       -0.99675913
 Correlation energy                    -0.13225384
 !MRCI STATE 2.2 Energy               -54.454415090208

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46031684 (Davidson, fixed reference)
 Cluster corrected energies           -54.46031684 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46031684 (Davidson, rotated reference)

 Cluster corrected energies           -54.45736450 (Pople, fixed reference)
 Cluster corrected energies           -54.45736450 (Pople, relaxed reference)
 Cluster corrected energies           -54.45736450 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97840810 (fixed)   0.97840810 (relaxed)   0.97840810 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000    0.00000000    0.00000000
 Singles      0.02361514   -0.05297057   -0.05369707
 Pairs        0.02100868   -0.07928327   -0.07855676
 Total        1.04462382   -0.13225384   -0.13225384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32216125
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63146837
 One electron energy                  -73.71215851
 Two electron energy                   19.25774342
 Virial quotient                       -0.99675913
 Correlation energy                    -0.13225384
 !MRCI STATE 3.2 Energy               -54.454415089437

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46031676 (Davidson, fixed reference)
 Cluster corrected energies           -54.46031676 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46031676 (Davidson, rotated reference)

 Cluster corrected energies           -54.45736446 (Pople, fixed reference)
 Cluster corrected energies           -54.45736446 (Pople, relaxed reference)
 Cluster corrected energies           -54.45736446 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97840811 (fixed)   0.97840811 (relaxed)   0.97840811 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.07589648
 Singles      0.02361512   -0.05297057   -0.05369709
 Pairs        0.02100868   -0.00000000   -0.00266028
 Total        1.04462380   -0.05297057   -0.13225384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32216125
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63146804
 One electron energy                  -73.71215939
 Two electron energy                   19.25774430
 Virial quotient                       -0.99675914
 Correlation energy                    -0.13225384
 !MRCI STATE 4.2 Energy               -54.454415089361

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46031676 (Davidson, fixed reference)
 Cluster corrected energies           -54.46031676 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46031676 (Davidson, rotated reference)

 Cluster corrected energies           -54.45736446 (Pople, fixed reference)
 Cluster corrected energies           -54.45736446 (Pople, relaxed reference)
 Cluster corrected energies           -54.45736446 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97840812 (fixed)   0.97840812 (relaxed)   0.97840812 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000000   -0.00000000   -0.07589646
 Singles      0.02361510   -0.05297059   -0.05369709
 Pairs        0.02100866    0.00000000   -0.00266028
 Total        1.04462376   -0.05297059   -0.13225384
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -54.32216125
 Nuclear energy                         0.00000000
 Kinetic energy                        54.63146761
 One electron energy                  -73.71215944
 Two electron energy                   19.25774435
 Virial quotient                       -0.99675915
 Correlation energy                    -0.13225384
 !MRCI STATE 5.2 Energy               -54.454415089008

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -54.46031675 (Davidson, fixed reference)
 Cluster corrected energies           -54.46031675 (Davidson, relaxed reference)
 Cluster corrected energies           -54.46031675 (Davidson, rotated reference)

 Cluster corrected energies           -54.45736445 (Pople, fixed reference)
 Cluster corrected energies           -54.45736445 (Pople, relaxed reference)
 Cluster corrected energies           -54.45736445 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.57       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.35      0.34      0.08      0.24      0.02      0.45
 REAL TIME  *         2.50 SEC
 DISK USED  *        30.72 MB (local),      174.74 MB (total)
 SF USED    *         8.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =       -54.46031686  AU                              
 SETTING HLSDIAG(3)     =       -54.46031684  AU                              
 SETTING HLSDIAG(4)     =       -54.46031676  AU                              
 SETTING HLSDIAG(5)     =       -54.46031676  AU                              
 SETTING HLSDIAG(6)     =       -54.46031675  AU                              


        HLSDIAG
    -54.54916772
    -54.46031686
    -54.46031684
    -54.46031676
    -54.46031676
    -54.46031675
                                                  

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

 Time for Seward_LS:       0.20 sec

         907905. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.20 sec, REAL time:      0.22 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.57       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.31      0.92      0.34      0.08      0.24      0.02      0.45
 REAL TIME  *         3.54 SEC
 DISK USED  *        30.75 MB (local),      250.76 MB (total)
 SF USED    *        15.13 MB
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
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   1

 Original energies:    -54.544448
 Replaced energies:    -54.549168

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   5

 Original energies:    -54.454415    -54.454415    -54.454415    -54.454415    -54.454415
 Replaced energies:    -54.460317    -54.460317    -54.460317    -54.460317    -54.460317



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -54.54916772

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  1.5  1.5       0.00      -0.00       0.00       0.00      -0.00       0.00       0.01      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.01      -0.00       0.00

    2   1.2  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01      -0.00

    3   1.2  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    4   1.2  1.5 -1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   1.2  0.5  0.5      -0.00       0.00      -0.00       0.00   19500.51       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.37       0.00

    6   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   19500.51       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       3.83       0.00

    7   3.2  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00   19500.53       0.00       0.00       3.52
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       1.92       0.00      -0.00

    8   4.2  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00   19500.53       0.00      -0.00
                           -0.01       0.00       0.00      -0.00       0.00      -0.00      -1.92       0.00      -0.00      -3.12

    9   5.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   19500.53       0.00
                            0.00       0.01      -0.00      -0.00       0.37      -3.83      -0.00       0.00       0.00      -0.00

   10   1.2  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00       3.52      -0.00       0.00   19500.51
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       3.12       0.00      -0.00

   11   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -1.63       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       2.19       0.00      -0.00

   12   3.2  0.5 -0.5       0.00       0.00       0.00       0.01      -3.52       1.63      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.93      -0.00

   13   4.2  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       1.91       0.00
                           -0.00      -0.00       0.00       0.01      -3.12      -2.19      -0.00      -0.00      -0.00      -0.00

   14   5.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -1.91      -0.00       0.00
                           -0.00       0.00       0.01      -0.00      -0.00      -0.00      -1.93       0.00       0.00      -0.37


   Nr   State  S   Sz       11         12         13         14

    1   1.2  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   1.2  1.5  0.5       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00

    3   1.2  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.01

    4   1.2  1.5 -1.5       0.00       0.01      -0.00       0.00
                            0.00       0.00      -0.01       0.00

    5   1.2  0.5  0.5       0.00      -3.52       0.00      -0.00
                           -0.00       0.00       3.12       0.00

    6   2.2  0.5  0.5      -0.00       1.63      -0.00       0.00
                            0.00       0.00       2.19       0.00

    7   3.2  0.5  0.5      -1.63      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       1.93

    8   4.2  0.5  0.5       0.00       0.00      -0.00      -1.91
                           -2.19      -0.00       0.00      -0.00

    9   5.2  0.5  0.5      -0.00      -0.00       1.91      -0.00
                           -0.00      -1.93       0.00      -0.00

   10   1.2  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.37

   11   2.2  0.5 -0.5   19500.51       0.00       0.00       0.00
                            0.00       0.00      -0.00      -3.83

   12   3.2  0.5 -0.5       0.00   19500.53       0.00       0.00
                           -0.00      -0.00      -1.92      -0.00

   13   4.2  0.5 -0.5       0.00       0.00   19500.53       0.00
                            0.00       1.92      -0.00       0.00

   14   5.2  0.5 -0.5       0.00       0.00       0.00   19500.53
                            3.83       0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   -54.54916772    -0.00000000       -0.00      0.00000000        0.00      0.0000
     2   -54.54916772    -0.00000000       -0.00      0.00000000        0.00      0.0000
     3   -54.54916772    -0.00000000       -0.00      0.00000000        0.00      0.0000
     4   -54.54916772    -0.00000000       -0.00      0.00000000        0.00      0.0000
     5   -54.46033448     0.08883324    19496.64      0.08883324    19496.64      2.4173
     6   -54.46033448     0.08883324    19496.64      0.08883324    19496.64      2.4173
     7   -54.46033430     0.08883343    19496.68      0.08883343    19496.68      2.4173
     8   -54.46033430     0.08883343    19496.68      0.08883343    19496.68      2.4173
     9   -54.46033418     0.08883354    19496.71      0.08883354    19496.71      2.4173
    10   -54.46033418     0.08883354    19496.71      0.08883354    19496.71      2.4173
    11   -54.46029069     0.08887703    19506.25      0.08887703    19506.25      2.4185
    12   -54.46029069     0.08887703    19506.25      0.08887703    19506.25      2.4185
    13   -54.46029031     0.08887741    19506.34      0.08887741    19506.34      2.4185
    14   -54.46029031     0.08887741    19506.34      0.08887741    19506.34      2.4185


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  1.5  1.5  -0.000228762   0.076094415   0.997100574   0.000179271   0.000000174   0.000000101  -0.000000005   0.000000053
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5   0.997116748   0.003009327   0.000012739  -0.075823051  -0.000000010   0.000000017   0.000000542   0.000000051
                        -0.000002885  -0.000000009   0.000000002  -0.000012568   0.000000000  -0.000000000   0.000000000   0.000000000

    3    1.2  1.5 -0.5  -0.003009658   0.997096048  -0.076094757  -0.000017962   0.000000017   0.000000010  -0.000000051   0.000000542
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    4    1.2  1.5 -1.5   0.075822692   0.000233116  -0.000179670   0.997121269  -0.000000101   0.000000174   0.000000053   0.000000005
                        -0.000019121  -0.000000058   0.000000015  -0.000083289   0.000000000  -0.000000000   0.000000000   0.000000000

    5    1.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.305421558   0.522730711   0.070673647   0.006711774
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000007  -0.000000011   0.000000003   0.000000000

    6    2.2  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.219914103  -0.376384223   0.411765838   0.039104806
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000005   0.000000008   0.000000016   0.000000002

    7    3.2  0.5  0.5   0.000000001  -0.000000202  -0.000000296  -0.000000000   0.556159996   0.324953650  -0.039058604   0.411279344
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    8    4.2  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000131   0.000000272   0.000000000  -0.003837425  -0.002242134  -0.027246748   0.286902843

    9    5.2  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000002  -0.000000003  -0.000000029  -0.000000003
                        -0.000000563  -0.000000002  -0.000000000   0.000000043   0.085187778  -0.145799360   0.751699261   0.071387791

   10    1.2  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.522730711  -0.305421558   0.006711774  -0.070673647
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   11    2.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.376384223   0.219914103   0.039104806  -0.411765838
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   12    3.2  0.5 -0.5  -0.000000202  -0.000000001   0.000000000  -0.000000296  -0.324953650   0.556159996   0.411279344   0.039058604
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000007  -0.000000012   0.000000016   0.000000002

   13    4.2  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000011   0.000000001
                         0.000000131   0.000000000   0.000000000  -0.000000272  -0.002242134   0.003837425  -0.286902843  -0.027246748

   14    5.2  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000002  -0.000000563   0.000000043   0.000000000  -0.145799360  -0.085187778  -0.071387791   0.751699261


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.2  1.5  1.5  -0.000000138   0.000000062  -0.000000183   0.000000105   0.000000216   0.000000085
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    1.2  1.5  0.5  -0.000000047  -0.000000105   0.000000094   0.000000164   0.000000062  -0.000000157
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    3    1.2  1.5 -0.5   0.000000105  -0.000000047  -0.000000164   0.000000094  -0.000000157  -0.000000062
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    4    1.2  1.5 -1.5   0.000000062   0.000000138   0.000000105   0.000000183  -0.000000085   0.000000216
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    5    1.2  0.5  0.5   0.197096890   0.436646651  -0.200752548  -0.351404732   0.178104085  -0.451015571
                        -0.000000013  -0.000000029   0.000000000   0.000000000   0.000000000  -0.000000000

    6    2.2  0.5  0.5   0.201479160   0.446355091  -0.240549573  -0.421066926  -0.148699433   0.376553741
                        -0.000000013  -0.000000030   0.000000000   0.000000000  -0.000000000   0.000000000

    7    3.2  0.5  0.5   0.106852407  -0.048231853  -0.143365008   0.081902399   0.568361471   0.224443471
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    8    4.2  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.654907112  -0.295616959   0.531118233  -0.303420326  -0.151357047  -0.059770239

    9    5.2  0.5  0.5   0.000000001   0.000000002   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.010321042   0.022865143   0.221638371   0.387964055   0.164697240  -0.417065220

   10    1.2  0.5 -0.5   0.436646651  -0.197096890  -0.351404732   0.200752548   0.451015571   0.178104085
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   11    2.2  0.5 -0.5   0.446355091  -0.201479160  -0.421066926   0.240549573  -0.376553741  -0.148699433
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   12    3.2  0.5 -0.5  -0.048231853  -0.106852407   0.081902399   0.143365008  -0.224443471   0.568361471
                         0.000000003   0.000000007  -0.000000000  -0.000000000  -0.000000000   0.000000000

   13    4.2  0.5 -0.5   0.000000020   0.000000044   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.295616959   0.654907112   0.303420326   0.531118233  -0.059770239   0.151357047

   14    5.2  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.022865143   0.010321042  -0.387964055   0.221638371  -0.417065220  -0.164697240


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  1.5  1.5   0.000%   0.579%  99.421%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5  99.424%   0.001%   0.000%   0.575%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.001%  99.420%   0.579%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.575%   0.000%   0.000%  99.425%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   9.328%  27.325%   0.499%   0.005%   3.885%  19.066%
    6    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   4.836%  14.167%  16.955%   0.153%   4.059%  19.923%
    7    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%  30.931%  10.559%   0.153%  16.915%   1.142%   0.233%
    8    4.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.074%   8.231%  42.890%   8.739%
    9    5.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.726%   2.126%  56.505%   0.510%   0.011%   0.052%
   10    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  27.325%   9.328%   0.005%   0.499%  19.066%   3.885%
   11    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  14.167%   4.836%   0.153%  16.955%  19.923%   4.059%
   12    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  10.559%  30.931%  16.915%   0.153%   0.233%   1.142%
   13    4.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   8.231%   0.074%   8.739%  42.890%
   14    5.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   2.126%   0.726%   0.510%  56.505%   0.052%   0.011%

   Nr   State  S   Sz      11       12       13       14

    1    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    2    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%
    3    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
    4    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
    5    1.2  0.5  0.5   4.030%  12.349%   3.172%  20.342%
    6    2.2  0.5  0.5   5.786%  17.730%   2.211%  14.179%
    7    3.2  0.5  0.5   2.055%   0.671%  32.303%   5.037%
    8    4.2  0.5  0.5  28.209%   9.206%   2.291%   0.357%
    9    5.2  0.5  0.5   4.912%  15.052%   2.713%  17.394%
   10    1.2  0.5 -0.5  12.349%   4.030%  20.342%   3.172%
   11    2.2  0.5 -0.5  17.730%   5.786%  14.179%   2.211%
   12    3.2  0.5 -0.5   0.671%   2.055%   5.037%  32.303%
   13    4.2  0.5 -0.5   9.206%  28.209%   0.357%   2.291%
   14    5.2  0.5 -0.5  15.052%   4.912%  17.394%   2.713%


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
              1      24       43.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.57       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.47      1.15      0.92      0.34      0.08      0.24      0.02      0.45
 REAL TIME  *         6.58 SEC
 DISK USED  *        30.75 MB (local),      250.76 MB (total)
 SF USED    *        19.02 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -54.460290314737

              CI              CI           MULTI         RHF-SCF
    -54.45441509    -54.54444829    -54.32216125    -54.42683840
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
