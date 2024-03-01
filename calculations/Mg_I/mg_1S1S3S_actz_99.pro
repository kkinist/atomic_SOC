
 Working directory              : /wrk/irikura/molpro.F6eGvsIESE/
 Global scratch directory       : /wrk/irikura/molpro.F6eGvsIESE/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.F6eGvsIESE/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Mg SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Mg};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=12,sym=1,spin=0}
 
                                                                                 ! Active space (2/2)
 {multi
     closed,2,3
     occ,4,3
     wf,sym=1,spin=0;state,2;
       weight,99,1
     wf,sym=1,spin=2;state,1;
       weight,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 {ci;wf,sym=1,spin=0;state,2; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,1; save,5203.2}
 hlsdiag(3) = energd
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Mg SO-CI                                                                                                                                                      
  (24 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 11:35:46  
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

 Library entry MG     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry MG     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry MG     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry MG     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  MG     12.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   12
 NUMBER OF PRIMITIVE AOS:         117
 NUMBER OF SYMMETRY AOS:          103
 NUMBER OF CONTRACTIONS:           75   (   33Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     6.029 MB (compressed) written to integral file ( 15.3%)

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     416030.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     416030      RECORD LENGTH: 524288

 Memory used in sort:       0.97 MW

 SORT1 READ     4558334. AND WROTE       89447. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     20 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC

 Node minimum:      415738.  Node maximum:      418032. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.193E-02 0.369E-01 0.408E-01 0.109E+00 0.109E+00 0.109E+00 0.109E+00 0.109E+00
         2 0.307E-02 0.307E-02 0.307E-02 0.736E-01 0.736E-01 0.736E-01 0.158E+00 0.158E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.88      0.66
 REAL TIME  *         1.83 SEC
 DISK USED  *        29.15 MB (local),      168.19 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   3   3

 NELEC=   12   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -199.91967567    -199.91967567     0.00D+00     0.13D+00     0     0       0.01      0.01    start
   2     -199.91969256      -0.00001689     0.75D-03     0.53D-03     1     0       0.00      0.01    diag
   3     -199.91969405      -0.00000148     0.19D-03     0.11D-03     2     0       0.00      0.01    diag
   4     -199.91969406      -0.00000002     0.14D-04     0.17D-04     3     0       0.01      0.02    diag
   5     -199.91969406      -0.00000000     0.14D-05     0.48D-05     4     0       0.00      0.02    diag
   6     -199.91969406      -0.00000000     0.13D-06     0.16D-05     5     0       0.00      0.02    diag
   7     -199.91969406      -0.00000000     0.90D-08     0.19D-06     0     0       0.01      0.03    diag

 Final occupancy:   3   3

 !RHF STATE 1.1 Energy               -199.919694063853
  RHF One-electron energy            -279.859209767835
  RHF Two-electron energy              79.939515703982
  RHF Kinetic energy                  201.880774669403
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.990285946699

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.11625     1  1  s    0.99975
    2.1     2.00000    -3.77948     1  2  s    0.99877
    3.1     2.00000    -0.25343     1  3  s    1.00549
    1.2     2.00000    -2.28031     1  1  pz   1.00136
    2.2     2.00000    -2.28031     1  1  py   1.00136
    3.2     2.00000    -2.28031     1  1  px   1.00136


 HOMO      3.1    -0.253433 =      -6.8963eV
 LUMO      4.2     0.016003 =       0.4355eV
 LUMO-HOMO         0.269435 =       7.3317eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.82       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.42       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.92      0.04      0.66
 REAL TIME  *         1.86 SEC
 DISK USED  *        29.48 MB (local),      169.84 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        2 (    2    0)
 Number of external orbitals:      68 (   29   39)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             2
 Number of CSFs:               3   (4 determinants, 4 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:               1   (1 determinants, 1 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 5 3 6 4 1   2 6 4 3 5 1 2 4 6 3   5 2 6 4 5 3 1 4 6 5   3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.145D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.145D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 3   2 1 7 9 6 810 5 4 2   1 3 7 9 4 5 6 810 8  10 9 7 5 4 6 3 2 1 3
                                        2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.98020   0.00990
 Weight factors for state symmetry  2:    0.00990
 
 Number of orbital rotations:  237  ( 4 closed/active, 175 closed/virtual, 0 active/active, 58 active/virtual )
 Total number of variables:    246
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   10   18    0   -199.91623307    -199.91723098   -0.00099791    0.00153693 0.00000043 0.00000000  0.72E+00      0.15
   2    7   12    0   -199.91716329    -199.91716754   -0.00000425    0.00109346 0.00000116 0.00000000  0.18E-01      0.37
   3    5   10    0   -199.91716754    -199.91716754   -0.00000000    0.00000036 0.00000000 0.00000000  0.22E-04      0.52
   4    2    4    0   -199.91716754    -199.91716754    0.00000000    0.00000000 0.00000000 0.00000000  0.30E-09      0.58

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.15E-11)
                       Final energy:   -199.91716754
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -199.921274025638
 Nuclear energy                                  0.00000000
 Kinetic energy                                201.87535827
 One electron energy                          -279.82320521
 Two electron energy                            79.90193118
 Virial ratio                                    1.99032034
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -199.690352510341
 Nuclear energy                                  0.00000000
 Kinetic energy                                202.14209720
 One electron energy                          -279.02069835
 Two electron energy                            79.33034584
 Virial ratio                                    1.98787118
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -199.737440856117
 Nuclear energy                                  0.00000000
 Kinetic energy                                201.87720364
 One electron energy                          -278.37873929
 Two electron energy                            78.64129843
 Virial ratio                                    1.98940067
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 6 3 5 4   2 3 6 5 4 1 2 3 4 6   5 2 3 6 4 5 1 5 4 3   6 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 1 3 2 2   1 3 7 9 6 810 5 4 2   1 3 7 9 4 5 6 81010   8 9 7 5 4 6 2 3 1 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -49.12122     1  1  s    0.99975
    2.1     2.00000    -3.78431     1  2  s    0.99874
    3.1     1.97304    -0.25288     1  3  s    0.97494
    4.1     0.02696     0.12135     1  3  s   -1.28485    1  4  s   -0.49607    1  5  s    1.56600    1  8  s    0.38511
    1.2     2.00000    -2.28522     1  1  py   1.00135
    2.2     2.00000    -2.28522     1  1  px   1.00135
    3.2     2.00000    -2.28522     1  1  pz   1.00135
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 20             0.99825144     -0.01254286
 ab             0.00142807      0.69571842
 ba            -0.00142807     -0.69571842
 02            -0.05907607     -0.17830997
 
 Energy:     -199.92127403   -199.69035251
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 aa             1.00000000
 
 Energy:     -199.73744086
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.63       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.48      0.56      0.04      0.66
 REAL TIME  *         2.53 SEC
 DISK USED  *        30.55 MB (local),      175.21 MB (total)
 SF USED    *         2.57 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -199.9212740  -0.0
    -199.6903525  -0.0
    -199.7374409  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 2  Roots:    1   2
 Number of reference states: 2  Roots:    1   2

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 12
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        3 conf        3 CSFs
 N elec internal:       21 conf       21 CSFs
 N-1 el internal:       34 conf       50 CSFs
 N-2 el internal:       39 conf       87 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:      68 (  29  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.01 sec, npass=  1  Memory used:   0.16 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -199.92127403
     2      -199.69035251

 Number of blocks in overlap matrix:    41   Smallest eigenvalue:  0.98D+00
 Number of N-2 electron functions:      49
 Number of N-1 electron functions:      50

 Number of internal configurations:                   12
 Number of singly external configurations:          1690
 Number of doubly external configurations:         56975
 Total number of contracted configurations:        58677
 Total number of uncontracted configurations:     102703

 Diagonal Coupling coefficients finished.               Storage:    178776 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    210746 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -199.92127403    -0.00000000    -0.27471991  0.97D-03  0.49D-01     0.02
    1     2     2     1.00000000     0.00000000  -199.69035251    -0.00000000    -0.28666506  0.22D-01  0.45D-01     0.02
    2     1     1     1.04359817    -0.25484394  -200.17611797    -0.25484394    -0.00271452  0.17D-03  0.90D-03     0.09
    2     2     2     1.05531170    -0.26273701  -199.95308952    -0.26273701    -0.00482649  0.29D-02  0.14D-02     0.09
    3     1     1     1.04228931    -0.25760554  -200.17887956    -0.00276160    -0.00008814  0.36D-05  0.42D-04     0.16
    3     2     2     1.06671267    -0.26822855  -199.95858106    -0.00549154    -0.00033434  0.31D-03  0.50D-04     0.16
    4     1     1     1.04443069    -0.25771520  -200.17898923    -0.00010966    -0.00000436  0.12D-06  0.20D-05     0.23
    4     2     2     1.07705122    -0.26863704  -199.95898955    -0.00040849    -0.00001348  0.37D-05  0.33D-05     0.23
    5     1     1     1.04484327    -0.25772058  -200.17899461    -0.00000538    -0.00000024  0.21D-07  0.69D-07     0.29
    5     2     2     1.07764231    -0.26865247  -199.95900498    -0.00001543    -0.00000058  0.94D-07  0.22D-06     0.29
    6     1     1     1.04488942    -0.25772086  -200.17899489    -0.00000028    -0.00000001  0.37D-09  0.36D-08     0.36
    6     2     2     1.07768386    -0.26865314  -199.95900565    -0.00000067    -0.00000003  0.82D-08  0.13D-07     0.36
    7     1     1     1.04489141    -0.25772086  -200.17899489    -0.00000000    -0.00000001  0.44D-09  0.34D-08     0.40
    7     2     2     1.07773212    -0.26865317  -199.95900568    -0.00000003    -0.00000000  0.19D-09  0.59D-09     0.40


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.5%
 S   0.0%   2.5%
 P   0.0%  10.0%  25.0%

 Initialization:   2.5%
 Other:           57.5%

 Total CPU:        0.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222           0.9760094   0.0501597
 2/\222          -0.0526764   0.9420331
 202222          -0.0407508  -0.1947418

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\0222   5.1    -0.0003920  -0.1766459
 2\0222  16.1    -0.0009346  -0.1036463

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.976604   -0.056804
 2           0.063479    0.960956

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978247    0.003816
 2           0.003816    0.963043


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97660383 (fixed)   0.97827902 (relaxed)   0.97824697 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007326   -0.00007467   -0.27167440
 Singles      0.00090116   -0.00350246   -0.00357365
 Pairs        0.04399354    0.02965376    0.01752719
 Total        1.04496796    0.02607663   -0.25772086
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.92038750
 Nuclear energy                         0.00000000
 Kinetic energy                       201.99660891
 One electron energy                 -279.66209514
 Two electron energy                   79.48310025
 Virial quotient                       -0.99100176
 Correlation energy                    -0.25860739
 !MRCI STATE 1.1 Energy              -200.178994886971

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -200.19062393 (Davidson, fixed reference)
 Cluster corrected energies          -200.19060623 (Davidson, relaxed reference)
 Cluster corrected energies          -200.19062393 (Davidson, rotated reference)

 Cluster corrected energies          -200.18855283 (Pople, fixed reference)
 Cluster corrected energies          -200.18853788 (Pople, relaxed reference)
 Cluster corrected energies          -200.18855283 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96095635 (fixed)   0.96325837 (relaxed)   0.96304316 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045525   -0.00011102   -0.00065476
 Singles      0.04671834   -0.02398309   -0.03388453
 Pairs        0.03104917   -0.24408641   -0.23411388
 Total        1.07822276   -0.26818052   -0.26865317
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.69123903
 Nuclear energy                         0.00000000
 Kinetic energy                       201.95444947
 One electron energy                 -278.04091821
 Two electron energy                   78.08191252
 Virial quotient                       -0.99011934
 Correlation energy                    -0.26776665
 !MRCI STATE 2.1 Energy              -199.959005683404

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -199.97995113 (Davidson, fixed reference)
 Cluster corrected energies          -199.97982214 (Davidson, relaxed reference)
 Cluster corrected energies          -199.97995113 (Davidson, rotated reference)

 Cluster corrected energies          -199.97656830 (Pople, fixed reference)
 Cluster corrected energies          -199.97645509 (Pople, relaxed reference)
 Cluster corrected energies          -199.97656830 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.65       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.94      0.45      0.56      0.04      0.66
 REAL TIME  *         3.03 SEC
 DISK USED  *        31.57 MB (local),      180.31 MB (total)
 SF USED    *        10.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -200.19062393  AU                              
 SETTING HLSDIAG(2)     =      -199.97995113  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 12
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        1 conf        1 CSFs
 N elec internal:       15 conf       15 CSFs
 N-1 el internal:       34 conf       66 CSFs
 N-2 el internal:       19 conf       91 CSFs

 Number of electrons in valence space:                     10
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        2 (   2   0 )
 Number of external orbitals:      68 (  29  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   1

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -199.73744086

 Number of blocks in overlap matrix:    33   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:      33
 Number of N-1 electron functions:      66

 Number of internal configurations:                    6
 Number of singly external configurations:          2244
 Number of doubly external configurations:         38175
 Total number of contracted configurations:        40425
 Total number of uncontracted configurations:     106927

 Diagonal Coupling coefficients finished.               Storage:    177236 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    209673 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -199.73744086    -0.00000000    -0.26079747  0.19D-01  0.25D-01     0.00
    2     1     1     1.03847796    -0.24554737  -199.98298823    -0.24554737    -0.00167367  0.39D-03  0.20D-03     0.02
    3     1     1     1.04263389    -0.24738161  -199.98482246    -0.00183424    -0.00006074  0.26D-04  0.13D-04     0.05
    4     1     1     1.04502550    -0.24745522  -199.98489608    -0.00007361    -0.00000286  0.65D-06  0.10D-05     0.07
    5     1     1     1.04549462    -0.24745876  -199.98489961    -0.00000354    -0.00000016  0.19D-07  0.65D-07     0.09
    6     1     1     1.04554504    -0.24745896  -199.98489981    -0.00000020    -0.00000001  0.17D-08  0.24D-08     0.11


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%   9.1%  36.4%

 Initialization:   0.0%
 Other:           54.5%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2//222           0.9779750

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/0222   5.1    -0.1150894
 2/0222  16.1    -0.0672103


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97797495 (fixed)   0.97797495 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000412   -0.00000871   -0.00000931
 Singles      0.02229196   -0.01317262   -0.01787258
 Pairs        0.02325327   -0.23427763   -0.22957707
 Total        1.04554935   -0.24745896   -0.24745896
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -199.73744086
 Nuclear energy                         0.00000000
 Kinetic energy                       201.90199350
 One electron energy                 -277.86353872
 Two electron energy                   77.87863891
 Virial quotient                       -0.99050483
 Correlation energy                    -0.24745896
 !CI(SD) STATE 1.1 Energy            -199.984899814530

 Properties without orbital relaxation:

 !CI(SD) STATE 1.1 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -199.99617141 (Davidson, fixed reference)
 Cluster corrected energies          -199.99617141 (Davidson, relaxed reference)

 Cluster corrected energies          -199.99354701 (Pople, fixed reference)
 Cluster corrected energies          -199.99354701 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.84       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.99       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.10      0.15      0.45      0.56      0.04      0.66
 REAL TIME  *         3.21 SEC
 DISK USED  *        31.91 MB (local),      182.01 MB (total)
 SF USED    *        10.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(3)     =      -199.99617141  AU                              


         HLSDIAG
    -200.1906239
    -199.9799511
    -199.9961714
                                                  


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

 Time for Seward_LS:       0.84 sec

        2496171. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.84 sec, REAL time:      0.97 sec


 SORTLS1 read     2506076. and wrote     2506076. SO integrals in    15 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2506076. and wrote    12192876. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.05 sec

 FILE SIZES: FILE 1:    71.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    71.6 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   2

 Original energies:   -200.178995   -199.959006
 Replaced energies:   -200.190624   -199.979951

 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -199.984900
 Replaced energies:   -199.996171



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -200.19062393

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00   46237.34       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00

    3   1.1  1.0  1.0      -0.00       0.00   42677.40       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00   42677.40       0.00
                            0.00      -0.00       0.00       0.00      -0.00

    5   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00   42677.40
                           -0.00       0.00      -0.00       0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension:  5)

    The diagonal matrixelements are shifted by   -200.19062393 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000

    2    1  |0 0>               0.000   46237.336       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000   42677.396       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000   42677.396       0.000
                                0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000   42677.396
                                0.000      -0.000       0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -200.19062393     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -199.99617141     0.19445252    42677.40      0.19445252    42677.40      5.2913
    3  -199.99617141     0.19445252    42677.40      0.19445252    42677.40      5.2913
    4  -199.99617141     0.19445252    42677.40      0.19445252    42677.40      5.2913
    5  -199.97995113     0.21067280    46237.34      0.21067280    46237.34      5.7327

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5

   1    1  |0 0>           1.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  1.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.42256140 -0.16682094 -0.56927912 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.68522545  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.17003649 -0.00000000
                          -0.00000000 -0.08240326  0.97177238 -0.14126478  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.30527832  0.00000000
                          -0.00000000  0.90258051  0.16682091  0.25362248 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -200.19062393      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -199.99617141      0.19445252    42677.40      0.19445252    42677.40      5.2913
     3   1   -199.99617141      0.19445252    42677.40      0.19445252    42677.40      5.2913
     4   1   -199.99617141      0.19445252    42677.40      0.19445252    42677.40      5.2913
     5   1   -199.97995113      0.21067280    46237.34      0.21067280    46237.34      5.7327

 E0 =   -200.19062393 is the energy of the lowest zeroth-order state
 E1 =   -200.19062393 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5

  1  1     1    1  |0 0>        1.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  1.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     1    1  |1 1>+       0.00000000  0.42256140 -0.16682094 -0.56927912 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.68522545  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.17003649 -0.00000000
                               -0.00000000 -0.08240326  0.97177238 -0.14126478  0.00000000

  5  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.30527832  0.00000000
                               -0.00000000  0.90258051  0.16682091  0.25362248 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%
  3  1     1    1  |1 1>+         0.00%   17.86%    2.78%   79.36%    0.00%
  4  1     1    1  |1 0>          0.00%    0.68%   94.43%    4.89%    0.00%
  5  1     1    1  |1 1>-         0.00%   81.47%    2.78%   15.75%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.25       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.99       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.72      2.62      0.15      0.45      0.56      0.04      0.66
 REAL TIME  *         7.75 SEC
 DISK USED  *        31.94 MB (local),      315.27 MB (total)
 SF USED    *        44.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -199.979951130085

              CI              CI           MULTI         RHF-SCF
   -199.98489981   -199.95900568   -199.73744086   -199.91969406
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
