
 Working directory              : /wrk/irikura/molpro.fd5EQ0w4Uq/
 Global scratch directory       : /wrk/irikura/molpro.fd5EQ0w4Uq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.fd5EQ0w4Uq/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Sr SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Sr};
 
 basis=aug-cc-pwCVTZ-PP
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! Active space (10/9)
 {multi
     closed,0,0
     occ,3,6
     wf,sym=1,spin=0;state,2;
     wf,sym=1,spin=2;state,4;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,4; save,5203.2}
 hlsdiag(3) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5203.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Sr SO-                                                                        
  64 bit mpp version                                                                     DATE: 04-Mar-24          TIME: 17:06:53  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Sr   ECP ECP28MDF                 selected for group  1
 Library entry SR     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SR     F aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  SR     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
 NUMBER OF PRIMITIVE AOS:         127
 NUMBER OF SYMMETRY AOS:          110
 NUMBER OF CONTRACTIONS:           80   (   38Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910


 Eigenvalues of metric

         1 0.706E-05 0.181E-02 0.976E-02 0.976E-02 0.976E-02 0.976E-02 0.976E-02 0.121E-01
         2 0.508E-02 0.508E-02 0.508E-02 0.242E-01 0.242E-01 0.242E-01 0.110E+00 0.110E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     13.107 MB (compressed) written to integral file ( 23.3%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:      89640.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:      89640      RECORD LENGTH: 524288

 Memory used in sort:       0.65 MW

 SORT1 READ     6063679. AND WROTE       19650. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.09 SEC
 SORT2 READ      567219. AND WROTE     2690436. INTEGRALS IN     60 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:       88960.  Node maximum:       92031. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.75      1.40
 REAL TIME  *         2.58 SEC
 DISK USED  *        29.00 MB (local),      995.63 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    2   3

 Initial occupancy:   2   3

 NELEC=   10   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -30.34122429     -30.34122429     0.00D+00     0.11D+00     0     0       0.00      0.00    start
   2      -30.34122430      -0.00000001     0.32D-05     0.84D-04     1     0       0.01      0.01    diag
   3      -30.34122430      -0.00000000     0.87D-06     0.22D-04     2     0       0.00      0.01    diag
   4      -30.34122430      -0.00000000     0.38D-06     0.15D-04     3     0       0.00      0.01    diag
   5      -30.34122430      -0.00000000     0.57D-07     0.56D-06     4     0       0.01      0.02    diag
   6      -30.34122430      -0.00000000     0.22D-07     0.30D-06     0     0       0.00      0.02    diag

 Final occupancy:   2   3

 !RHF STATE 1.1 Energy                -30.341224300615
  RHF One-electron energy             -49.818329586655
  RHF Two-electron energy              19.477105286040
  RHF Kinetic energy                    9.485913008601
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -3.198556034944

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -1.97188     1  1  s    1.00522
    2.1     2.00000    -0.18127     1  2  s    1.01723
    1.2     2.00000    -1.09297     1  1  pz   0.99985
    2.2     2.00000    -1.09297     1  1  px   0.99530
    3.2     2.00000    -1.09297     1  1  py   0.99531


 HOMO      2.1    -0.181273 =      -4.9327eV
 LUMO      4.2     0.009585 =       0.2608eV
 LUMO-HOMO         0.190858 =       5.1935eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.73       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.40       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.78      0.03      1.40
 REAL TIME  *         2.61 SEC
 DISK USED  *        29.34 MB (local),     1005.93 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:        9 (    3    6)
 Number of external orbitals:      71 (   35   36)

 State symmetry 1

 Number of active electrons:  10    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:            2688   (7956 determinants, 15876 intermediate states)

 State symmetry 2

 Number of active electrons:  10    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             4
 Number of CSFs:            3756   (5268 determinants, 10584 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 2 4   6 3 5 1 6 4 2 3 5 1   6 4 3 5 2 6 4 3 5 2   1 6 4 3 5 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.654D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.917D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.883D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.141D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.130D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.535D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 1 2 3 3   1 2 6 5 4 810 9 7 3   1 2 4 5 6 810 9 7 3   1 2 5 4 6 810 9 7 2
                                        3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  321  ( 0 closed/active, 0 closed/virtual, 0 active/active, 321 active/virtual )
 Total number of variables:    37305
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   32    0    -30.17114947     -30.24019125   -0.06904177    0.05813003 0.00007629 0.00015796  0.12E+01      3.72
   2    3   18    0    -30.23527927     -30.23650376   -0.00122449    0.00971352 0.00000504 0.00001878  0.17E+00      5.25
   3    4   14    0    -30.23650506     -30.23650509   -0.00000003    0.00006420 0.00000000 0.00000011  0.78E-03      7.60
   4    2    4    0    -30.23650509     -30.23650509    0.00000000    0.00000001 0.00000000 0.00000001  0.14E-06      8.78

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.25E-08)
                       Final energy:    -30.23650509
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -30.360072091324
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.53496839
 One electron energy                           -49.83538716
 Two electron energy                            19.47531506
 Virial ratio                                    4.18407685
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -30.226325550667
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.46033650
 One electron energy                           -48.73647296
 Two electron energy                            18.51014741
 Virial ratio                                    4.19505818
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -30.236335661990
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.41899217
 One electron energy                           -48.58348793
 Two electron energy                            18.34715227
 Virial ratio                                    4.21014554
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -30.198765753393
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.50368545
 One electron energy                           -48.95814339
 Two electron energy                            18.75937764
 Virial ratio                                    4.17758473
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -30.198765753393
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.50368545
 One electron energy                           -48.95814339
 Two electron energy                            18.75937764
 Virial ratio                                    4.17758473
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy               -30.198765753393
 Nuclear energy                                  0.00000000
 Kinetic energy                                  9.50368545
 One electron energy                           -48.95814339
 Two electron energy                            18.75937764
 Virial ratio                                    4.17758473
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.576405605604
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.880806846189
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.542787548207
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.425722650112
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.877826185082
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.696451164806
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.997871744283
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.241366968730
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.760761286987
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 4 5 2 6   4 3 5 1 2 3 6 5 4 1   3 4 6 5 2 3 4 6 5 2   1 3 4 6 5 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 3 1 2 1   2 3 6 4 5 810 9 7 1   3 2 5 4 810 6 7 9 1   3 2 4 5 7 9 810 6 3
                                        2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99996    -2.05143     1  1  s    1.01639
    2.1     0.63909    -0.11654     1  2  s    1.17604
    3.1     0.33321     0.00549     1  2  s   -0.48871    1  5  s   -0.86085    1  8  s    1.89173
    1.2     1.99984    -1.17388     1  1  px   1.00580
    2.2     1.99984    -1.17388     1  1  py   1.00580
    3.2     1.99984    -1.17388     1  1  pz   1.00580
    4.2     0.34274    -0.01320     1  2  pz   1.00004
    5.2     0.34274    -0.01320     1  2  px   1.00004
    6.2     0.34274    -0.01320     1  2  py   1.00004
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 220 222000      0.94027645     -0.18013301
 2ba 222000     -0.12647774     -0.69515607
 2ab 222000      0.12647774      0.69515607
 200 222020     -0.16679882      0.01281581
 200 222200     -0.16679882      0.01281581
 200 222002     -0.16679882      0.01281581
 
 Energy:       -30.36007209    -30.22632555
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2aa 222000      0.99979666     -0.00000000      0.00000000     -0.00000000
 200 2220aa     -0.00000000      0.04612416      0.87082815      0.48902641
 200 222aa0      0.00000000      0.75766535     -0.34946658      0.55084685
 200 222a0a     -0.00000000     -0.65071630     -0.34517731      0.67604501
 
 Energy:       -30.23633566    -30.19876575    -30.19876575    -30.19876575
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.62       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.24      2.44      0.03      1.40
 REAL TIME  *        11.75 SEC
 DISK USED  *        31.22 MB (local),        1.04 GB (total)
 SF USED    *         7.08 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -30.36007209  -0.0
    -30.22632555  -0.0
    -30.23633566  -0.0
    -30.19876575   2.0
    -30.19876575   2.0
    -30.19876575   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:     1497 conf     2688 CSFs
 N elec internal:     2907 conf     5292 CSFs
 N-1 el internal:     3139 conf     8820 CSFs
 N-2 el internal:     2907 conf    12852 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 10


 Number of active  orbitals:        9 (   3   6 )
 Number of external orbitals:      71 (  35  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.36007209
     2       -30.22632555

 Number of blocks in overlap matrix:    14   Smallest eigenvalue:  0.14D-05
 Number of N-2 electron functions:     160
 Number of N-1 electron functions:    8820

 Number of internal configurations:                 2688
 Number of singly external configurations:        313124
 Number of doubly external configurations:        202212
 Total number of contracted configurations:       518024
 Total number of uncontracted configurations:   16474640

 Diagonal Coupling coefficients finished.               Storage: 1331182 words, CPU-Time:      0.09 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  306473 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.36007209     0.00000000    -0.20881951  0.17D-01  0.49D-01     0.35
    1     2     2     1.00000000     0.00000000   -30.22632555     0.00000000    -0.19399224  0.21D-01  0.43D-01     0.35
    2     1     1     1.06598980    -0.20715719   -30.56722928    -0.20715719    -0.00437138  0.14D-02  0.68D-03     0.95
    2     2     2     1.06851855    -0.20280683   -30.42913238    -0.20280683    -0.00442471  0.18D-02  0.67D-03     0.95
    3     1     1     1.06520859    -0.21253421   -30.57260631    -0.00537702    -0.00046655  0.66D-04  0.92D-04     1.56
    3     2     2     1.06710169    -0.20793089   -30.43425644    -0.00512405    -0.00035170  0.48D-04  0.73D-04     1.56
    4     1     1     1.06699032    -0.21334761   -30.57341970    -0.00081339    -0.00011167  0.72D-05  0.24D-04     2.18
    4     2     2     1.06782928    -0.20848230   -30.43480785    -0.00055141    -0.00008606  0.46D-05  0.19D-04     2.18
    5     1     1     1.06748697    -0.21356763   -30.57363972    -0.00022002    -0.00005520  0.43D-05  0.12D-04     2.79
    5     2     2     1.06833090    -0.20865270   -30.43497825    -0.00017040    -0.00005058  0.59D-05  0.10D-04     2.79
    6     1     1     1.06748112    -0.21366990   -30.57374199    -0.00010227    -0.00002920  0.45D-05  0.49D-05     3.42
    6     2     2     1.06829881    -0.20874202   -30.43506757    -0.00008933    -0.00002808  0.45D-05  0.50D-05     3.42
    7     1     1     1.06782822    -0.21371222   -30.57378432    -0.00004232    -0.00001116  0.12D-05  0.21D-05     4.03
    7     2     2     1.06844484    -0.20878168   -30.43510723    -0.00003965    -0.00001127  0.99D-06  0.23D-05     4.03
    8     1     1     1.06798576    -0.21373101   -30.57380310    -0.00001878    -0.00000628  0.38D-06  0.13D-05     4.63
    8     2     2     1.06858676    -0.20879999   -30.43512554    -0.00001831    -0.00000721  0.50D-06  0.15D-05     4.63
    9     1     1     1.06806408    -0.21374156   -30.57381365    -0.00001055    -0.00000401  0.40D-06  0.74D-06     5.21
    9     2     2     1.06866836    -0.20881176   -30.43513731    -0.00001177    -0.00000483  0.53D-06  0.93D-06     5.21
   10     1     1     1.06816633    -0.21374712   -30.57381921    -0.00000556    -0.00000179  0.16D-06  0.33D-06     5.78
   10     2     2     1.06874151    -0.20881821   -30.43514376    -0.00000645    -0.00000222  0.16D-06  0.46D-06     5.78
   11     1     1     1.06821455    -0.21374984   -30.57382193    -0.00000272    -0.00000100  0.49D-07  0.21D-06     6.40
   11     2     2     1.06878983    -0.20882157   -30.43514712    -0.00000336    -0.00000146  0.59D-07  0.32D-06     6.40
   12     1     1     1.06825740    -0.21375149   -30.57382358    -0.00000165    -0.00000069  0.39D-07  0.14D-06     6.97
   12     2     2     1.06882663    -0.20882386   -30.43514941    -0.00000229    -0.00000102  0.74D-07  0.21D-06     6.97
   13     1     1     1.06829698    -0.21375241   -30.57382450    -0.00000092    -0.00000033  0.22D-07  0.66D-07     7.55
   13     2     2     1.06886046    -0.20882520   -30.43515075    -0.00000134    -0.00000051  0.23D-07  0.11D-06     7.55
   14     1     1     1.06831632    -0.21375288   -30.57382497    -0.00000047    -0.00000018  0.63D-08  0.39D-07     8.12
   14     2     2     1.06888382    -0.20882592   -30.43515148    -0.00000073    -0.00000034  0.91D-08  0.76D-07     8.12
   15     1     1     1.06833506    -0.21375318   -30.57382527    -0.00000030    -0.00000013  0.48D-08  0.29D-07     8.70
   15     2     2     1.06890267    -0.20882644   -30.43515199    -0.00000052    -0.00000024  0.13D-07  0.53D-07     8.70
   16     1     1     1.06835085    -0.21375335   -30.57382545    -0.00000017    -0.00000007  0.28D-08  0.14D-07     9.28
   16     2     2     1.06891772    -0.20882675   -30.43515231    -0.00000031    -0.00000013  0.29D-08  0.30D-07     9.28
   17     1     1     1.06835962    -0.21375345   -30.57382554    -0.00000009    -0.00000004  0.93D-09  0.82D-08     9.85
   17     2     2     1.06892848    -0.20882693   -30.43515248    -0.00000018    -0.00000009  0.22D-08  0.19D-07     9.85
   18     1     1     1.06837252    -0.21375349   -30.57382558    -0.00000004    -0.00000002  0.57D-09  0.52D-08    10.30
   18     2     2     1.06896893    -0.20882724   -30.43515279    -0.00000031    -0.00000004  0.13D-08  0.91D-08    10.30
   19     1     1     1.06837260    -0.21375349   -30.57382558    -0.00000000    -0.00000002  0.49D-09  0.51D-08    10.76
   19     2     2     1.06897005    -0.20882728   -30.43515283    -0.00000003    -0.00000000  0.55D-10  0.59D-09    10.76


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   3.5%
 S   3.3%   9.6%
 P   5.2%  41.9%  18.9%

 Initialization:   2.5%
 Other:           15.1%

 Total CPU:       10.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/\222000           0.1130733   0.9598058
 220222000           0.9294371  -0.1152232
 200222002          -0.1401034  -0.0119928
 200222020          -0.1401034  -0.0119927
 200222200          -0.1401033  -0.0119928

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.964701   -0.061764
 2           0.069338    0.964253

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966668    0.003793
 2           0.003793    0.966736


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96470063 (fixed)   0.96747250 (relaxed)   0.96666838 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00166438   -0.00003551   -0.20118679
 Singles      0.01071037   -0.01728115   -0.01828706
 Pairs        0.05777603    0.01847210    0.00572036
 Total        1.07015078    0.00115544   -0.21375349
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.35945711
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64937586
 One electron energy                  -49.76043172
 Two electron energy                   19.18660614
 Virial quotient                       -3.16847701
 Correlation energy                    -0.21436847
 !MRCI STATE 1.1 Energy               -30.573825580138

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.58886369 (Davidson, fixed reference)
 Cluster corrected energies           -30.58848251 (Davidson, relaxed reference)
 Cluster corrected energies           -30.58886369 (Davidson, rotated reference)

 Cluster corrected energies           -30.58637393 (Pople, fixed reference)
 Cluster corrected energies           -30.58604280 (Pople, relaxed reference)
 Cluster corrected energies           -30.58637393 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96425332 (fixed)   0.96720210 (relaxed)   0.96673567 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00096520   -0.00003550   -0.00084543
 Singles      0.01323425   -0.01621807   -0.01773998
 Pairs        0.05580237   -0.19190615   -0.19024186
 Total        1.07000182   -0.20815972   -0.20882728
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.22694053
 Nuclear energy                         0.00000000
 Kinetic energy                         9.57944938
 One electron energy                  -48.58524910
 Two electron energy                   18.15009627
 Virial quotient                       -3.17712967
 Correlation energy                    -0.20821230
 !MRCI STATE 2.1 Energy               -30.435152825766

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.44972806 (Davidson, fixed reference)
 Cluster corrected energies           -30.44951324 (Davidson, relaxed reference)
 Cluster corrected energies           -30.44972806 (Davidson, rotated reference)

 Cluster corrected energies           -30.44731385 (Pople, fixed reference)
 Cluster corrected energies           -30.44712718 (Pople, relaxed reference)
 Cluster corrected energies           -30.44731385 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6        8.92       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        15.35     11.09      2.44      0.03      1.40
 REAL TIME  *        24.86 SEC
 DISK USED  *        39.53 MB (local),        1.28 GB (total)
 SF USED    *        91.46 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -30.58886369  AU                              
 SETTING HLSDIAG(2)     =       -30.44972806  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 4  Roots:    1   2   3   4
 Number of reference states: 4  Roots:    1   2   3   4

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:     1371 conf     3756 CSFs
 N elec internal:     2781 conf     7560 CSFs
 N-1 el internal:     3139 conf    14580 CSFs
 N-2 el internal:     2907 conf    23112 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 10


 Number of active  orbitals:        9 (   3   6 )
 Number of external orbitals:      71 (  35  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   4

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -30.23633566
     2       -30.19876575
     3       -30.19876575
     4       -30.19876575

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.51D-06
 Number of N-2 electron functions:     324
 Number of N-1 electron functions:   14580

 Number of internal configurations:                 3756
 Number of singly external configurations:        517572
 Number of doubly external configurations:        409608
 Total number of contracted configurations:       930936
 Total number of uncontracted configurations:   29504874

 Diagonal Coupling coefficients finished.               Storage: 2740274 words, CPU-Time:      0.42 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  416139 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -30.23633566     0.00000000    -0.18032693  0.15D-01  0.38D-01     1.03
    1     2     2     1.00000000     0.00000000   -30.19876575    -0.00000000    -0.18576708  0.70D-02  0.43D-01     1.03
    1     3     3     1.00000000     0.00000000   -30.19876575    -0.00000000    -0.18574688  0.70D-02  0.43D-01     1.03
    1     4     4     1.00000000     0.00000000   -30.19876575     0.00000000    -0.18576668  0.70D-02  0.43D-01     1.03
    2     1     1     1.06515890    -0.19981434   -30.43615000    -0.19981434    -0.00451370  0.96D-03  0.74D-03     4.06
    2     2     2     1.05518225    -0.19475973   -30.39352548    -0.19475973    -0.00510702  0.84D-03  0.10D-02     4.06
    2     3     3     1.05518799    -0.19475110   -30.39351686    -0.19475110    -0.00511522  0.84D-03  0.10D-02     4.06
    2     4     4     1.05518795    -0.19475099   -30.39351675    -0.19475099    -0.00511532  0.84D-03  0.10D-02     4.06
    3     1     1     1.06856011    -0.20557538   -30.44191104    -0.00576104    -0.00037487  0.41D-04  0.73D-04     7.05
    3     2     2     1.05901955    -0.20156319   -30.40032894    -0.00680346    -0.00072198  0.93D-04  0.17D-03     7.05
    3     3     3     1.05901414    -0.20156153   -30.40032728    -0.00681043    -0.00072314  0.93D-04  0.17D-03     7.05
    3     4     4     1.05901412    -0.20156152   -30.40032728    -0.00681053    -0.00072314  0.93D-04  0.17D-03     7.05
    4     1     1     1.06955184    -0.20609151   -30.44242718    -0.00051614    -0.00003263  0.17D-05  0.74D-05    10.04
    4     2     2     1.06308355    -0.20281943   -30.40158518    -0.00125624    -0.00023075  0.13D-04  0.65D-04    10.04
    4     3     3     1.06308004    -0.20281859   -30.40158435    -0.00125707    -0.00023094  0.13D-04  0.65D-04    10.04
    4     4     4     1.06308002    -0.20281859   -30.40158435    -0.00125707    -0.00023094  0.13D-04  0.65D-04    10.04
    5     1     1     1.06960680    -0.20613795   -30.44247361    -0.00004643    -0.00000538  0.35D-06  0.15D-05    13.04
    5     2     2     1.06530109    -0.20336372   -30.40212948    -0.00054429    -0.00015363  0.38D-05  0.38D-04    13.04
    5     3     3     1.06529965    -0.20336340   -30.40212916    -0.00054481    -0.00015363  0.38D-05  0.38D-04    13.04
    5     4     4     1.06529966    -0.20336340   -30.40212915    -0.00054481    -0.00015363  0.38D-05  0.38D-04    13.04
    6     1     1     1.06962912    -0.20614874   -30.44248441    -0.00001080    -0.00000314  0.29D-06  0.74D-06    16.08
    6     2     2     1.06667424    -0.20362874   -30.40239449    -0.00026501    -0.00007116  0.10D-04  0.15D-04    16.08
    6     3     3     1.06667226    -0.20362852   -30.40239427    -0.00026512    -0.00007127  0.10D-04  0.15D-04    16.08
    6     4     4     1.06667222    -0.20362852   -30.40239427    -0.00026512    -0.00007127  0.10D-04  0.15D-04    16.08
    7     1     1     1.06966558    -0.20615513   -30.44249079    -0.00000638    -0.00000174  0.15D-06  0.36D-06    19.09
    7     2     2     1.06767868    -0.20373112   -30.40249687    -0.00010238    -0.00003327  0.41D-05  0.81D-05    19.09
    7     3     3     1.06767752    -0.20373099   -30.40249674    -0.00010247    -0.00003330  0.41D-05  0.81D-05    19.09
    7     4     4     1.06767748    -0.20373099   -30.40249674    -0.00010247    -0.00003330  0.41D-05  0.81D-05    19.09
    8     1     1     1.06967671    -0.20615739   -30.44249306    -0.00000227    -0.00000049  0.28D-07  0.13D-06    22.11
    8     2     2     1.06858888    -0.20379793   -30.40256369    -0.00006682    -0.00002553  0.99D-06  0.60D-05    22.11
    8     3     3     1.06858678    -0.20379784   -30.40256359    -0.00006685    -0.00002554  0.99D-06  0.60D-05    22.11
    8     4     4     1.06858676    -0.20379784   -30.40256359    -0.00006685    -0.00002554  0.99D-06  0.60D-05    22.11
    9     1     1     1.06968764    -0.20615823   -30.44249389    -0.00000084    -0.00000030  0.21D-07  0.73D-07    25.10
    9     2     2     1.06927473    -0.20383897   -30.40260472    -0.00004104    -0.00001418  0.17D-05  0.31D-05    25.10
    9     3     3     1.06927346    -0.20383892   -30.40260467    -0.00004108    -0.00001420  0.17D-05  0.31D-05    25.10
    9     4     4     1.06927342    -0.20383891   -30.40260467    -0.00004108    -0.00001420  0.17D-05  0.31D-05    25.10
   10     1     1     1.06969938    -0.20615880   -30.44249446    -0.00000057    -0.00000020  0.15D-07  0.43D-07    28.09
   10     2     2     1.06971688    -0.20385833   -30.40262409    -0.00001937    -0.00000699  0.71D-06  0.17D-05    28.09
   10     3     3     1.06971622    -0.20385830   -30.40262406    -0.00001939    -0.00000700  0.71D-06  0.17D-05    28.09
   10     4     4     1.06971618    -0.20385830   -30.40262405    -0.00001939    -0.00000700  0.71D-06  0.17D-05    28.09
   11     1     1     1.06970470    -0.20615905   -30.44249471    -0.00000025    -0.00000007  0.33D-08  0.17D-07    31.06
   11     2     2     1.07011306    -0.20387078   -30.40263653    -0.00001244    -0.00000543  0.26D-06  0.13D-05    31.06
   11     3     3     1.07011224    -0.20387076   -30.40263651    -0.00001246    -0.00000543  0.26D-06  0.13D-05    31.06
   11     4     4     1.07011221    -0.20387076   -30.40263651    -0.00001246    -0.00000543  0.26D-06  0.13D-05    31.06
   12     1     1     1.06970827    -0.20615915   -30.44249481    -0.00000010    -0.00000004  0.20D-08  0.10D-07    34.08
   12     2     2     1.07045766    -0.20387902   -30.40264477    -0.00000824    -0.00000326  0.30D-06  0.76D-06    34.08
   12     3     3     1.07045713    -0.20387901   -30.40264476    -0.00000825    -0.00000327  0.30D-06  0.76D-06    34.08
   12     4     4     1.07045710    -0.20387901   -30.40264476    -0.00000825    -0.00000327  0.30D-06  0.76D-06    34.08
   13     1     1     1.06971249    -0.20615922   -30.44249488    -0.00000007    -0.00000003  0.17D-08  0.63D-08    37.09
   13     2     2     1.07068283    -0.20388331   -30.40264907    -0.00000429    -0.00000162  0.12D-06  0.41D-06    37.09
   13     3     3     1.07068254    -0.20388331   -30.40264906    -0.00000430    -0.00000162  0.12D-06  0.41D-06    37.09
   13     4     4     1.07068251    -0.20388331   -30.40264906    -0.00000430    -0.00000162  0.12D-06  0.41D-06    37.09
   14     1     1     1.06971249    -0.20615922   -30.44249488    -0.00000000    -0.00000003  0.17D-08  0.63D-08    39.78
   14     2     2     1.07144737    -0.20388954   -30.40265529    -0.00000623    -0.00000114  0.62D-07  0.23D-06    39.78
   14     3     3     1.07087009    -0.20388603   -30.40265179    -0.00000273    -0.00000129  0.55D-07  0.31D-06    39.78
   14     4     4     1.07086976    -0.20388603   -30.40265178    -0.00000272    -0.00000129  0.55D-07  0.31D-06    39.78
   15     1     1     1.06971249    -0.20615922   -30.44249488    -0.00000000    -0.00000003  0.17D-08  0.63D-08    42.47
   15     2     2     1.07160345    -0.20389068   -30.40265644    -0.00000114    -0.00000006  0.34D-08  0.12D-07    42.47
   15     3     3     1.07102627    -0.20388786   -30.40265362    -0.00000183    -0.00000082  0.48D-07  0.20D-06    42.47
   15     4     4     1.07102606    -0.20388786   -30.40265362    -0.00000183    -0.00000082  0.48D-07  0.20D-06    42.47
   16     1     1     1.06971249    -0.20615922   -30.44249488    -0.00000000    -0.00000003  0.17D-08  0.63D-08    45.16
   16     2     2     1.07160454    -0.20389074   -30.40265649    -0.00000005    -0.00000001  0.17D-09  0.17D-08    45.16
   16     3     3     1.07113637    -0.20388889   -30.40265464    -0.00000103    -0.00000041  0.19D-07  0.11D-06    45.16
   16     4     4     1.07113630    -0.20388889   -30.40265464    -0.00000103    -0.00000041  0.19D-07  0.11D-06    45.16
   17     1     1     1.06971249    -0.20615922   -30.44249488     0.00000000    -0.00000003  0.17D-08  0.63D-08    47.53
   17     2     2     1.07160454    -0.20389074   -30.40265649    -0.00000000    -0.00000001  0.17D-09  0.17D-08    47.53
   17     3     3     1.07152251    -0.20389045   -30.40265620    -0.00000156    -0.00000031  0.21D-07  0.59D-07    47.53
   17     4     4     1.07152243    -0.20389045   -30.40265620    -0.00000156    -0.00000031  0.21D-07  0.59D-07    47.53
   18     1     1     1.06971249    -0.20615922   -30.44249488    -0.00000000    -0.00000003  0.17D-08  0.63D-08    49.90
   18     2     2     1.07160254    -0.20389074   -30.40265650    -0.00000001    -0.00000001  0.33D-09  0.25D-08    49.90
   18     3     3     1.07160454    -0.20389074   -30.40265649    -0.00000029    -0.00000001  0.17D-09  0.17D-08    49.90
   18     4     4     1.07153561    -0.20389071   -30.40265646    -0.00000026    -0.00000002  0.61D-09  0.47D-08    49.90


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.6%
 S   1.5%   5.8%
 P   4.0%  47.0%  23.6%

 Initialization:   1.6%
 Other:           14.8%

 Total CPU:       49.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222000           0.9666634  -0.0000000  -0.0000000  -0.0000000
 2002220//           0.0000000  -0.0004749  -0.0002020   0.9658556
 200222//0           0.0000000   0.9658218  -0.0026599   0.0004743
 200222/0/           0.0000000   0.0026599   0.9658210   0.0002034

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966863    0.000000    0.000000    0.000000
 2          -0.000000    0.002660   -0.000475    0.966007
 3          -0.000000    0.966006   -0.000202   -0.002660
 4          -0.000000    0.000203    0.966040    0.000474

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966863   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.966010    0.000000   -0.000000
 3          -0.000000    0.000000    0.966009    0.000000
 4          -0.000000   -0.000000    0.000000    0.966040


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96686313 (fixed)   0.96686640 (relaxed)   0.96686313 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000676    0.00000000   -0.17765347
 Singles      0.01580435   -0.01612120   -0.01811594
 Pairs        0.05390861   -0.00000000   -0.01038981
 Total        1.06971972   -0.01612120   -0.20615922
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.23633566
 Nuclear energy                         0.00000000
 Kinetic energy                         9.56170646
 One electron energy                  -48.53002509
 Two electron energy                   18.08753021
 Virial quotient                       -3.18379308
 Correlation energy                    -0.20615922
 !MRCI STATE 1.1 Energy               -30.442494883935

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.45686825 (Davidson, fixed reference)
 Cluster corrected energies           -30.45686676 (Davidson, relaxed reference)
 Cluster corrected energies           -30.45686825 (Davidson, rotated reference)

 Cluster corrected energies           -30.45365336 (Pople, fixed reference)
 Cluster corrected energies           -30.45365217 (Pople, relaxed reference)
 Cluster corrected energies           -30.45365336 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96600650 (fixed)   0.96601336 (relaxed)   0.96601028 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000637    0.00000000   -0.00000192
 Singles      0.00571378   -0.01097559   -0.01132995
 Pairs        0.06588921   -0.19291440   -0.19255888
 Total        1.07160936   -0.20388999   -0.20389074
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19876575
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64196629
 One electron energy                  -48.85485211
 Two electron energy                   18.45219561
 Virial quotient                       -3.15315938
 Correlation energy                    -0.20389074
 !MRCI STATE 2.1 Energy               -30.402656497310

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41725698 (Davidson, fixed reference)
 Cluster corrected energies           -30.41725559 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41725698 (Davidson, rotated reference)

 Cluster corrected energies           -30.41400177 (Pople, fixed reference)
 Cluster corrected energies           -30.41400066 (Pople, relaxed reference)
 Cluster corrected energies           -30.41400177 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96600570 (fixed)   0.96601246 (relaxed)   0.96600938 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000637    0.00000000   -0.18052053
 Singles      0.00571382   -0.01097547   -0.01132987
 Pairs        0.06589117    0.00053128   -0.01204034
 Total        1.07161136   -0.01044419   -0.20389074
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19876575
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64196512
 One electron energy                  -48.85485248
 Two electron energy                   18.45219599
 Virial quotient                       -3.15315977
 Correlation energy                    -0.20389074
 !MRCI STATE 3.1 Energy               -30.402656491486

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41725738 (Davidson, fixed reference)
 Cluster corrected energies           -30.41725599 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41725738 (Davidson, rotated reference)

 Cluster corrected energies           -30.41400210 (Pople, fixed reference)
 Cluster corrected energies           -30.41400098 (Pople, relaxed reference)
 Cluster corrected energies           -30.41400210 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96604031 (fixed)   0.96604353 (relaxed)   0.96604045 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000637    0.00000000   -0.17994729
 Singles      0.00571381   -0.01097610   -0.01133069
 Pairs        0.06582226   -0.00009474   -0.01261272
 Total        1.07154244   -0.01107084   -0.20389071
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -30.19876575
 Nuclear energy                         0.00000000
 Kinetic energy                         9.64191405
 One electron energy                  -48.85472941
 Two electron energy                   18.45207295
 Virial quotient                       -3.15317646
 Correlation energy                    -0.20389071
 !MRCI STATE 4.1 Energy               -30.402656459248

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -30.41724330 (Davidson, fixed reference)
 Cluster corrected energies           -30.41724191 (Davidson, relaxed reference)
 Cluster corrected energies           -30.41724330 (Davidson, rotated reference)

 Cluster corrected energies           -30.41399076 (Pople, fixed reference)
 Cluster corrected energies           -30.41398964 (Pople, relaxed reference)
 Cluster corrected energies           -30.41399076 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       38.10       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        67.73     52.37     11.09      2.44      0.03      1.40
 REAL TIME  *        83.99 SEC
 DISK USED  *        68.70 MB (local),        2.14 GB (total)
 SF USED    *       311.91 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =       -30.45686825  AU                              
 SETTING HLSDIAG(4)     =       -30.41725698  AU                              
 SETTING HLSDIAG(5)     =       -30.41725738  AU                              
 SETTING HLSDIAG(6)     =       -30.41724330  AU                              


        HLSDIAG
    -30.58886369
    -30.44972806
    -30.45686825
    -30.41725698
    -30.41725738
    -30.41724330
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:    -30.573826    -30.435153
 Replaced energies:    -30.588864    -30.449728

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   4

 Original energies:    -30.442495    -30.402656    -30.402656    -30.402656
 Replaced energies:    -30.456868    -30.417257    -30.417257    -30.417243



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -30.58886369

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00      -0.00     -69.72       0.19      -0.03       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.19     -69.72      -0.01      -0.00       0.05       0.02     -98.60

    2   2.1  0.0  0.0       0.00   30536.74       0.00      10.65      -0.03       0.01       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.03      10.65       0.00       0.00      -0.01      -0.00      15.06

    3   1.1  1.0  1.0      -0.00       0.00   28969.65       0.00       0.00       0.00      -0.00     -11.20       0.03      -0.01
                            0.00      -0.00      -0.00       0.01       0.00     -15.84      -0.00       0.03      11.20       0.00

    4   2.1  1.0  1.0     -69.72      10.65       0.00   37663.32       0.00       0.00      11.20       0.00      -0.06      -0.33
                            0.19      -0.03      -0.01      -0.00    -168.18      -0.04      -0.03       0.00       0.03    -118.92

    5   3.1  1.0  1.0       0.19      -0.03       0.00       0.00   37663.23       0.00      -0.03       0.06       0.00    -118.92
                           69.72     -10.65      -0.00     168.18       0.00       0.08     -11.20      -0.03      -0.00       0.33

    6   4.1  1.0  1.0      -0.03       0.01       0.00       0.00       0.00   37666.32       0.01       0.33     118.92      -0.00
                            0.01      -0.00      15.84       0.04      -0.08      -0.00      -0.00     118.92      -0.33      -0.00

    7   1.1  1.0  0.0       0.00       0.00      -0.00      11.20      -0.03       0.01   28969.65       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.03      11.20       0.00       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00     -11.20       0.00       0.06       0.33       0.00   37663.32       0.00       0.00
                           -0.05       0.01      -0.03      -0.00       0.03    -118.92      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00       0.03      -0.06       0.00     118.92       0.00       0.00   37663.23       0.00
                           -0.02       0.00     -11.20      -0.03       0.00       0.33      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00      -0.01      -0.33    -118.92      -0.00       0.00       0.00       0.00   37666.32
                           98.60     -15.06      -0.00     118.92      -0.33       0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      11.20      -0.03       0.01
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.03      11.20       0.00

   12   2.1  1.0 -1.0     -69.72      10.65       0.00       0.00       0.00       0.00     -11.20       0.00       0.06       0.33
                           -0.19       0.03      -0.00      -0.00      -0.00      -0.00      -0.03      -0.00       0.03    -118.92

   13   3.1  1.0 -1.0       0.19      -0.03       0.00       0.00       0.00       0.00       0.03      -0.06       0.00     118.92
                          -69.72      10.65      -0.00      -0.00      -0.00      -0.00     -11.20      -0.03       0.00       0.33

   14   4.1  1.0 -1.0      -0.03       0.01       0.00       0.00       0.00       0.00      -0.01      -0.33    -118.92      -0.00
                           -0.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     118.92      -0.33       0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.0  0.0      -0.00     -69.72       0.19      -0.03
                            0.00       0.19      69.72       0.01

    2   2.1  0.0  0.0       0.00      10.65      -0.03       0.01
                           -0.00      -0.03     -10.65      -0.00

    3   1.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    4   2.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   3.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    6   4.1  1.0  1.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0      -0.00     -11.20       0.03      -0.01
                           -0.00       0.03      11.20       0.00

    8   2.1  1.0  0.0      11.20       0.00      -0.06      -0.33
                           -0.03       0.00       0.03    -118.92

    9   3.1  1.0  0.0      -0.03       0.06       0.00    -118.92
                          -11.20      -0.03      -0.00       0.33

   10   4.1  1.0  0.0       0.01       0.33     118.92      -0.00
                           -0.00     118.92      -0.33      -0.00

   11   1.1  1.0 -1.0   28969.65       0.00       0.00       0.00
                            0.00      -0.01      -0.00      15.84

   12   2.1  1.0 -1.0       0.00   37663.32       0.00       0.00
                            0.01       0.00     168.18       0.04

   13   3.1  1.0 -1.0       0.00       0.00   37663.23       0.00
                            0.00    -168.18      -0.00      -0.08

   14   4.1  1.0 -1.0       0.00       0.00       0.00   37666.32
                          -15.84      -0.04       0.08       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by    -30.58886369 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000      -0.000     -98.599       0.272      -0.048       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.048

    2    1  |0 0>               0.000   30536.741       0.000      15.066      -0.041       0.007       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.007

    1    1  |1 1>+             -0.000       0.000   28969.652       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.044

    2    1  |1 1>+            -98.599      15.066       0.000   37663.320       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.044       0.000

    3    1  |1 1>+              0.272      -0.041       0.000       0.000   37663.232       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -15.837      -0.035

    4    1  |1 1>+             -0.048       0.007       0.000       0.000       0.000   37666.323      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.003     168.181

    1    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000   28969.652       0.000
                                0.000      -0.000       0.000       0.044      15.837       0.003       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000   37663.320
                               -0.048       0.007      -0.044       0.000       0.035    -168.181      -0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.021       0.003     -15.837      -0.035       0.000       0.463      -0.000      -0.000

    4    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               98.597     -15.064      -0.003     168.181      -0.463       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000     -15.838
                                0.000      -0.000      -0.000       0.008       0.003     -15.838      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      15.838       0.000
                                0.271      -0.041      -0.008      -0.000    -168.181      -0.035       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.044       0.083
                               98.599     -15.065      -0.003     168.181       0.000       0.083      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.008       0.463
                                0.021      -0.003      15.838       0.035      -0.083      -0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.021     -98.597      -0.000      -0.271     -98.599      -0.021

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.003      15.064       0.000       0.041      15.065       0.003

    1    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000
                               15.837       0.003      -0.000       0.008       0.003     -15.838

    2    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000
                                0.035    -168.181      -0.008      -0.000    -168.181      -0.035

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.463      -0.003     168.181       0.000       0.083

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.463       0.000      15.838       0.035      -0.083      -0.000

    1    1  |1 0>               0.000       0.000       0.000      15.838      -0.044       0.008
                                0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000     -15.838       0.000       0.083       0.463
                                0.000       0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 0>           37663.232       0.000       0.044      -0.083       0.000     168.182
                                0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 0>               0.000   37666.323      -0.008      -0.463    -168.182       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.044      -0.008   28969.652       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.083      -0.463       0.000   37663.320       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000    -168.182       0.000       0.000   37663.232       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-            168.182       0.000       0.000       0.000       0.000   37666.323
                                0.000      -0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -30.58886725    -0.00000356       -0.78      0.00000000        0.00      0.0000
    2   -30.45686851     0.13199518    28969.59      0.13199874    28970.37      3.5919
    3   -30.45686851     0.13199518    28969.59      0.13199874    28970.37      3.5919
    4   -30.45686851     0.13199518    28969.59      0.13199874    28970.37      3.5919
    5   -30.44972852     0.13913517    30536.64      0.13913873    30537.42      3.7862
    6   -30.41878114     0.17008255    37328.81      0.17008611    37329.59      4.6283
    7   -30.41802320     0.17084049    37495.15      0.17084405    37495.94      4.6489
    8   -30.41801640     0.17084729    37496.65      0.17085085    37497.43      4.6491
    9   -30.41801619     0.17084750    37496.69      0.17085106    37497.47      4.6491
   10   -30.41649090     0.17237280    37831.46      0.17237636    37832.24      4.6906
   11   -30.41649090     0.17237280    37831.46      0.17237636    37832.24      4.6906
   12   -30.41648401     0.17237968    37832.97      0.17238324    37833.75      4.6908
   13   -30.41648382     0.17237988    37833.01      0.17238344    37833.79      4.6908
   14   -30.41648161     0.17238208    37833.49      0.17238564    37834.28      4.6909

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99998953  0.00000000  0.00000000  0.00000000  0.00002148  0.00457488 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000391  0.00000000  0.00000000  0.00000000  0.99999262 -0.00384164  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00049826  0.00594273  0.99997877 -0.00000000 -0.00000000 -0.00000129 -0.00262668
                          -0.00000000  0.00000000 -0.00000014  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00264142 -0.00000512 -0.00000091  0.00000000 -0.00221835 -0.57844562  0.00194711 -0.00000003
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000727 -0.00185765 -0.00000049 -0.00000092  0.00000611  0.00159332  0.70719413 -0.00034890
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000

   4    1  |1 1>+          0.00000130 -0.00000049  0.00185705 -0.00001104 -0.00000109 -0.00028240  0.00000034 -0.00187396
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.99999642  0.00005524  0.00049794 -0.00000000 -0.00000000  0.00262713 -0.00000129

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000130 -0.00000010  0.00185765 -0.00000592 -0.00000109 -0.00028442 -0.00014756  0.00006501

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000055 -0.00000093  0.00000592  0.00185764 -0.00000046 -0.00012102  0.00034776  0.71034715

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00264116 -0.00000000  0.00000091  0.00000039  0.00221717  0.57501422 -0.00000000  0.00014727

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000049  0.00000014 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00005228  0.99997889 -0.00594275 -0.00000000 -0.00000000  0.00000055  0.00000699

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                          -0.00000727 -0.00185766 -0.00000010 -0.00000001  0.00000611  0.00159299  0.70700908 -0.00000002

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00264143  0.00000512  0.00000000  0.00000039  0.00221831  0.57854849 -0.00194755  0.00014956

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000056  0.00000001 -0.00001104 -0.00185705  0.00000047  0.00012106 -0.00000004 -0.70384398

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |0 0>          -0.00000000 -0.00000048 -0.00000000 -0.00000000 -0.00000000  0.00001279
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000043  0.00000000  0.00000000  0.00000000 -0.00000998
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000699 -0.00000000 -0.00000000  0.00001168 -0.00000003 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00034882  0.70219453  0.00208627  0.00000003  0.00034564  0.41509425
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000031  0.00209920 -0.70701105 -0.00034563  0.00000037 -0.00109456
                          -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.70393686  0.00000490  0.00000034  0.00202656  0.71025460 -0.00040170
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000055  0.00000000  0.00000035  0.00000001  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                           0.71025504  0.00034526 -0.00014820 -0.00006963 -0.70394178  0.00020404

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00006502 -0.00014920 -0.00034763  0.70384883 -0.00006962  0.00008385

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00034611 -0.00990083 -0.00000000 -0.00014924  0.00034917  0.81807606

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00262669  0.00000000  0.00000000 -0.00000003 -0.00001132 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00014920 -0.00207241  0.70719624 -0.00000005 -0.00014854 -0.00114481

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.71191009  0.00208565  0.00014886 -0.00000002 -0.39805223

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00187415 -0.00000243  0.00000004  0.71034678 -0.00202624  0.00017282


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -30.58886725     -0.00000356       -0.78      0.00000000        0.00      0.0000
     2   1    -30.45686851      0.13199518    28969.59      0.13199874    28970.37      3.5919
     3   1    -30.45686851      0.13199518    28969.59      0.13199874    28970.37      3.5919
     4   1    -30.45686851      0.13199518    28969.59      0.13199874    28970.37      3.5919
     5   1    -30.44972852      0.13913517    30536.64      0.13913873    30537.42      3.7862
     6   1    -30.41878114      0.17008255    37328.81      0.17008611    37329.59      4.6283
     7   1    -30.41802320      0.17084049    37495.15      0.17084405    37495.94      4.6489
     8   1    -30.41801640      0.17084729    37496.65      0.17085085    37497.43      4.6491
     9   1    -30.41801619      0.17084750    37496.69      0.17085106    37497.47      4.6491
    10   1    -30.41649090      0.17237280    37831.46      0.17237636    37832.24      4.6906
    11   1    -30.41649090      0.17237280    37831.46      0.17237636    37832.24      4.6906
    12   1    -30.41648401      0.17237968    37832.97      0.17238324    37833.75      4.6908
    13   1    -30.41648382      0.17237988    37833.01      0.17238344    37833.79      4.6908
    14   1    -30.41648161      0.17238208    37833.49      0.17238564    37834.28      4.6909

 E0 =    -30.58886369 is the energy of the lowest zeroth-order state
 E1 =    -30.58886725 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99998953  0.00000000  0.00000000  0.00000000  0.00002148  0.00457488 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000391  0.00000000  0.00000000  0.00000000  0.99999262 -0.00384164  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     1    1  |1 1>+      -0.00000000 -0.00049826  0.00594273  0.99997877 -0.00000000 -0.00000000 -0.00000129 -0.00262668
                               -0.00000000  0.00000000 -0.00000014  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     2    1  |1 1>+       0.00264142 -0.00000512 -0.00000091  0.00000000 -0.00221835 -0.57844562  0.00194711 -0.00000003
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     3    1  |1 1>+      -0.00000727 -0.00185765 -0.00000049 -0.00000092  0.00000611  0.00159332  0.70719413 -0.00034890
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002 -0.00000000

  6  1     4    1  |1 1>+       0.00000130 -0.00000049  0.00185705 -0.00001104 -0.00000109 -0.00028240  0.00000034 -0.00187396
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 0>        0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.99999642  0.00005524  0.00049794 -0.00000000 -0.00000000  0.00262713 -0.00000129

  8  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000130 -0.00000010  0.00185765 -0.00000592 -0.00000109 -0.00028442 -0.00014756  0.00006501

  9  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000055 -0.00000093  0.00000592  0.00185764 -0.00000046 -0.00012102  0.00034776  0.71034715

 10  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00264116 -0.00000000  0.00000091  0.00000039  0.00221717  0.57501422 -0.00000000  0.00014727

 11  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000049  0.00000014 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00005228  0.99997889 -0.00594275 -0.00000000 -0.00000000  0.00000055  0.00000699

 12  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000
                               -0.00000727 -0.00185766 -0.00000010 -0.00000001  0.00000611  0.00159299  0.70700908 -0.00000002

 13  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00264143  0.00000512  0.00000000  0.00000039  0.00221831  0.57854849 -0.00194755  0.00014956

 14  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000056  0.00000001 -0.00001104 -0.00185705  0.00000047  0.00012106 -0.00000004 -0.70384398


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |0 0>       -0.00000000 -0.00000048 -0.00000000 -0.00000000 -0.00000000  0.00001279
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000043  0.00000000  0.00000000  0.00000000 -0.00000998
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     1    1  |1 1>+      -0.00000699 -0.00000000 -0.00000000  0.00001168 -0.00000003 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     2    1  |1 1>+      -0.00034882  0.70219453  0.00208627  0.00000003  0.00034564  0.41509425
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     3    1  |1 1>+      -0.00000031  0.00209920 -0.70701105 -0.00034563  0.00000037 -0.00109456
                               -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000

  6  1     4    1  |1 1>+       0.70393686  0.00000490  0.00000034  0.00202656  0.71025460 -0.00040170
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

  7  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000055  0.00000000  0.00000035  0.00000001  0.00000000  0.00000000

  8  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000
                                0.71025504  0.00034526 -0.00014820 -0.00006963 -0.70394178  0.00020404

  9  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00006502 -0.00014920 -0.00034763  0.70384883 -0.00006962  0.00008385

 10  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00034611 -0.00990083 -0.00000000 -0.00014924  0.00034917  0.81807606

 11  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00262669  0.00000000  0.00000000 -0.00000003 -0.00001132 -0.00000000

 12  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00014920 -0.00207241  0.70719624 -0.00000005 -0.00014854 -0.00114481

 13  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.71191009  0.00208565  0.00014886 -0.00000002 -0.39805223

 14  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00187415 -0.00000243  0.00000004  0.71034678 -0.00202624  0.00017282



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.46%    0.00%    0.00%
  5  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.01%    0.00%
  6  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.46%
 10  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.06%    0.00%    0.00%
 11  1     1    1  |1 1>-         0.00%    0.00%  100.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.99%    0.00%
 13  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.47%    0.00%    0.00%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   49.54%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     2    1  |1 1>+         0.00%   49.31%    0.00%    0.00%    0.00%   17.23%
  5  1     3    1  |1 1>+         0.00%    0.00%   49.99%    0.00%    0.00%    0.00%
  6  1     4    1  |1 1>+        49.55%    0.00%    0.00%    0.00%   50.45%    0.00%
  7  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 0>         50.45%    0.00%    0.00%    0.00%   49.55%    0.00%
  9  1     3    1  |1 0>          0.00%    0.00%    0.00%   49.54%    0.00%    0.00%
 10  1     4    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%   66.92%
 11  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>-         0.00%    0.00%   50.01%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>-         0.00%   50.68%    0.00%    0.00%    0.00%   15.84%
 14  1     4    1  |1 1>-         0.00%    0.00%    0.00%   50.46%    0.00%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       30.55       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       38.10       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       270.97    203.24     52.37     11.09      2.44      0.03      1.40
 REAL TIME  *       291.46 SEC
 DISK USED  *        68.70 MB (local),        2.14 GB (total)
 SF USED    *       311.91 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-PP energy=    -30.416481610089

              CI              CI           MULTI         RHF-SCF
    -30.40265646    -30.43515283    -30.19876575    -30.34122430
 **********************************************************************************************************************************
 Molpro calculation terminated
