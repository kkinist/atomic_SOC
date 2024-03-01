
 Working directory              : /wrk/irikura/molpro.HTBN4cAmZn/
 Global scratch directory       : /wrk/irikura/molpro.HTBN4cAmZn/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.HTBN4cAmZn/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Cl SO-CI
                                                                                 ! active space (7/8)
 memory,1500,M;
 
 gprint,orbitals,civector;
 gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Cl};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=17,sym=2,spin=1}
 
 {multi
     closed,2,3
     occ,4,9
     wf,sym=2,spin=1;state,3;
     wf,sym=2,spin=3;state,3;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! only K-shell uncorrelated
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,3; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,3; save,5203.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 14:51:40  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW



 THRESHOLDS:

 ZERO    =  1.00D-12  ONEINT  =  1.00D-12  TWOINT  =  1.00D-11  PREFAC  =  1.00D-14  XXXXXX  =  1.00D-09  EORDER  =  1.00D-04
 ENERGY  =  1.00D-10  ETEST   =  0.00D+00  EDENS   =  0.00D+00  THRDEDEF=  1.00D-06  GRADIENT=  1.00D-05  STEP    =  1.00D-03
 ORBITAL =  1.00D-05  CIVEC   =  1.00D-05  COEFF   =  1.00D-08  PRINTCI =  5.00D-02  PUNCHCI =  9.90D+01  OPTGRAD =  3.00D-04
 OPTENERG=  1.00D-06  OPTSTEP =  3.00D-04  THRGRAD =  1.00D-10  COMPRESS=  1.00D-11  VARMIN  =  1.00D-07  VARMAX  =  1.00D-03
 THRDOUB =  0.00D+00  THRDIV  =  1.00D-05  THRRED  =  1.00D-07  THRPSP  =  1.00D+00  THRDC   =  1.00D-10  THRCS   =  1.00D-10
 THRNRM  =  1.00D-08  THREQ   =  0.00D+00  THRDE   =  1.00D+00  THRREF  =  1.00D-05  SPARFAC =  1.00D+00  THRDLP  =  1.00D-07
 THRDIA  =  1.00D-10  THRDLS  =  1.00D-07  THRGPS  =  0.00D+00  THRKEX  =  0.00D+00  THRDIS  =  2.00D-01  THRVAR  =  1.00D-10
 THRLOC  =  1.00D-06  THRGAP  =  1.00D-06  THRLOCT = -1.00D+00  THRGAPT = -1.00D+00  THRORB  =  1.00D-06  THRMLTP =  0.00D+00
 THRCPQCI=  1.00D-10  KEXTA   =  0.00D+00  THRCOARS=  0.00D+00  SYMTOL  =  1.00D-06  GRADTOL =  1.00D-06  THROVL  =  1.00D-08
 THRORTH =  1.00D-08  THRDLOVL= -1.00D+00  GRID    =  1.00D-06  GRIDMAX =  1.00D-03  DTMAX   =  0.00D+00  THROCCDE=  1.00D-01
 THROCCDE=  1.00D-01  THRPRINT=  2.50D-01

 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CL     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry CL     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  CL     17.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   17
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

 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     10.224 MB (compressed) written to integral file ( 27.7%)

     Node minimum: 0.262 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      172985.  Node maximum:      175449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.210E-02 0.526E-02 0.592E-01 0.138E+00 0.138E+00 0.138E+00 0.138E+00 0.138E+00
         2 0.130E-01 0.130E-01 0.130E-01 0.300E-01 0.300E-01 0.300E-01 0.114E+00 0.114E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.77      0.45
 REAL TIME  *         1.56 SEC
 DISK USED  *        29.14 MB (local),      402.05 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   5

 NELEC=   17   SYM=2   MS2= 1   THRE=1.0D-12   THRD=1.0D-06   THRG=1.0D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -460.88652677    -460.88652677     0.00D+00     0.15D+00     0     0       0.00      0.00    start
   2     -460.88950976      -0.00298299     0.31D-02     0.36D-02     1     0       0.00      0.00    diag2
   3     -460.88964245      -0.00013269     0.71D-03     0.70D-03     2     0       0.00      0.00    diag2
   4     -460.88965588      -0.00001343     0.18D-03     0.23D-03     3     0       0.00      0.00    diag2
   5     -460.88965795      -0.00000208     0.40D-04     0.11D-03     4     0       0.01      0.01    diag2
   6     -460.88965809      -0.00000014     0.11D-04     0.33D-04     5     0       0.00      0.01    diag2
   7     -460.88965810      -0.00000000     0.14D-05     0.36D-05     6     0       0.00      0.01    diag2
   8     -460.88965810      -0.00000000     0.13D-06     0.38D-06     7     0       0.00      0.01    fixocc
   9     -460.88965810       0.00000000     0.73D-08     0.25D-07     8     0       0.00      0.01    diag2
  10     -460.88965810      -0.00000000     0.11D-08     0.27D-08     0     0       0.00      0.01    diag/orth

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   5

 !RHF STATE 1.2 Energy               -460.889658096283
  RHF One-electron energy            -636.773116490694
  RHF Two-electron energy             175.883458394410
  RHF Kinetic energy                  469.524509067823
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.981609371173

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.26037     1  1  s    0.99881
    2.1     2.00000   -10.67436     1  2  s    1.00085
    3.1     2.00000    -1.07991     1  3  s    1.00781
    1.2     2.00000    -8.07497     1  1  px   0.99748
    2.2     2.00000    -8.07286     1  1  pz   1.00072
    3.2     2.00000    -8.07286     1  1  py   1.00072
    4.2     2.00000    -0.49163     1  2  pz   0.99657
    5.2     2.00000    -0.49163     1  2  py   0.99657
    6.2     1.00000    -0.56900     1  2  px   1.04793


 HOMO      6.2    -0.569003 =     -15.4834eV
 LUMO      7.2     0.106433 =       2.8962eV
 LUMO-HOMO         0.675436 =      18.3796eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.47       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.81      0.04      0.45
 REAL TIME  *         2.45 SEC
 DISK USED  *        29.74 MB (local),      409.28 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      62 (   29   33)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             3
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.340D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.199D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.941D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.154D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 4 6 2 1   5 4 3 2 6 5 3 4 6 2   1 5 4 3 2 6 1 5 3 4   2 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.104D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.148D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.147D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.293D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.279D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.267D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.392D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.614D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.611D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 1 3 2 1   3 2 710 9 8 4 5 6 1   3 2 7 910 8 4 6 5 7   910 8 4 5 6 1 2 3 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-09 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667
 Weight factors for state symmetry  2:    0.16667   0.16667   0.16667
 
 Number of orbital rotations:  435  ( 22 closed/active, 157 closed/virtual, 0 active/active, 256 active/virtual )
 Total number of variables:    8703
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   11   48    0   -460.69580583    -460.71551846   -0.01971263    0.13719050 0.00170860 0.00107612  0.93E+00      0.91
   2    8   39    0   -460.71364572    -460.71457819   -0.00093247    0.08250816 0.00022586 0.00061964  0.17E+00      1.78
   3   14   68    0   -460.71458436    -460.71458555   -0.00000119    0.00032620 0.00000044 0.00000026  0.14E-01      3.33
   4   18   84    0   -460.71458555    -460.71458555   -0.00000000    0.00000264 0.00000000 0.00000000  0.11E-03      5.31
   5    2    4    0   -460.71458555    -460.71458555    0.00000000    0.00000000 0.00000000 0.00000000  0.13E-08      5.53

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.33E-09)
                       Final energy:   -460.71458555
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -460.894263800271
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.76715706
 One electron energy                          -636.94666301
 Two electron energy                           176.05239921
 Virial ratio                                    1.98111215
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -460.894263800005
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.76715706
 One electron energy                          -636.94666303
 Two electron energy                           176.05239923
 Virial ratio                                    1.98111215
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -460.894263800001
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.76715706
 One electron energy                          -636.94666303
 Two electron energy                           176.05239923
 Virial ratio                                    1.98111215
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -460.534907304123
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.99678365
 One electron energy                          -632.14778986
 Two electron energy                           171.61288255
 Virial ratio                                    1.98195750
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -460.534907304117
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.99678365
 One electron energy                          -632.14778986
 Two electron energy                           171.61288256
 Virial ratio                                    1.98195750
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -460.534907303436
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.99678366
 One electron energy                          -632.14778989
 Two electron energy                           171.61288259
 Virial ratio                                    1.98195750
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000000000185
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999999823
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999999999992
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999999910
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999999986
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.000000000104
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999999824
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000027874937
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999972125240
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999933905
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000000066109
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999999986
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999999999991
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999972125240
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000027874769
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000066185
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999933905
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999910
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 6 2 4 3 5 1   3 5 4 2 6 3 5 4 2 6   1 5 3 4 2 6 1 5 3 4   2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 1 2 3 3   2 1 9 7 4 810 6 5 1   2 3 9 7 4 810 6 5 7   9 410 8 6 5 1 2 3 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.40220     1  1  s    0.99881
    2.1     2.00000   -10.81108     1  2  s    1.00128
    3.1     1.99497    -1.18225     1  3  s    1.04830
    4.1     0.00532     0.50934     1  2  s   -0.27095    1  3  s   -1.64342    1  4  s   -0.49106    1  5  s    1.93026
                                    1  8  s    0.29629
    1.2     2.00000    -8.21115     1  1  px   0.99981
    2.2     2.00000    -8.21115     1  1  pz   0.99981
    3.2     2.00000    -8.21115     1  1  py   0.99981
    4.2     1.49606    -0.49306     1  2  pz   1.05083
    5.2     1.49606    -0.49306     1  2  py   1.05083
    6.2     1.49606    -0.49306     1  2  px   1.05083
    7.2     0.17051     0.10664     1  2  px  -0.47945    1  7  px   1.05859
    8.2     0.17051     0.10664     1  2  py  -0.47945    1  7  py   1.05859
    9.2     0.17051     0.10664     1  2  pz  -0.47945    1  7  pz   1.05859
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.99235301     -0.00001319     -0.00000289
 20 a22000      0.00000296      0.00523928      0.99233918
 20 2a2000      0.00001317      0.99233918     -0.00523928
 
 Energy:     -460.89426380   -460.89426380   -460.89426380
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================
 
 20 2aaa00      0.00018051      0.70211049     -0.00000265
 20 a2aa00      0.70211049     -0.00018051     -0.00000667
 20 2aa0a0      0.00000667      0.00000265      0.70211047
 20 a2a00a      0.00000667      0.00000265      0.70211047
 20 aa20a0      0.70211040     -0.00018051     -0.00000667
 20 aa200a     -0.00018051     -0.70211040      0.00000265
 aa 22a000     -0.00000050     -0.00000020     -0.05257834
 aa 2a2000      0.00001352      0.05257834     -0.00000020
 aa a22000      0.05257834     -0.00001352     -0.00000050
 
 Energy:     -460.53490730   -460.53490730   -460.53490730
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.67       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         4.16      3.35      0.04      0.45
 REAL TIME  *         8.25 SEC
 DISK USED  *        32.63 MB (local),      443.88 MB (total)
 SF USED    *         9.12 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -460.8942638   2.0
    -460.8942638   2.0
    -460.8942638   2.0
    -460.5349073   2.0
    -460.5349073   2.0
    -460.5349073   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-16  THRDEN = 1.00D-10

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 17
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    15604 conf    64512 CSFs
 N-1 el internal:    15918 conf   111168 CSFs
 N-2 el internal:     9180 conf    96556 CSFs

 Number of electrons in valence space:                     15
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.31 MW


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -460.89426380
     2      -460.89426380
     3      -460.89426380

 Number of blocks in overlap matrix:   118   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:     432
 Number of N-1 electron functions:  111168

 Number of internal configurations:                32480
 Number of singly external configurations:       3447264
 Number of doubly external configurations:        416700
 Total number of contracted configurations:      3896444
 Total number of uncontracted configurations:   95867684

 Diagonal Coupling coefficients finished.               Storage:  15014340 words, CPU-Time:      5.66 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3894631 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.89426380     0.00000000    -0.45338993  0.33D-01  0.37D-01     7.94
    1     2     2     1.00000000     0.00000000  -460.89426380    -0.00000000    -0.45342243  0.33D-01  0.37D-01     7.94
    1     3     3     1.00000000     0.00000000  -460.89426380     0.00000000    -0.45341823  0.33D-01  0.37D-01     7.94
    2     1     1     1.06175019    -0.42686897  -461.32113277    -0.42686897    -0.00943387  0.18D-02  0.11D-02    37.37
    2     2     2     1.06176109    -0.42686537  -461.32112917    -0.42686537    -0.00943195  0.18D-02  0.11D-02    37.37
    2     3     3     1.06176274    -0.42686424  -461.32112804    -0.42686424    -0.00943725  0.18D-02  0.11D-02    37.37
    3     1     1     1.06081821    -0.43654691  -461.33081071    -0.00967794    -0.00065181  0.46D-04  0.11D-03    66.09
    3     2     2     1.06081789    -0.43654493  -461.33080873    -0.00967956    -0.00065277  0.46D-04  0.11D-03    66.09
    3     3     3     1.06081855    -0.43654487  -461.33080867    -0.00968064    -0.00065282  0.46D-04  0.11D-03    66.09
    4     1     1     1.06499000    -0.43738665  -461.33165045    -0.00083974    -0.00005121  0.28D-05  0.88D-05    94.88
    4     2     2     1.06499182    -0.43738643  -461.33165023    -0.00084150    -0.00005140  0.29D-05  0.88D-05    94.88
    4     3     3     1.06499272    -0.43738640  -461.33165020    -0.00084152    -0.00005143  0.29D-05  0.88D-05    94.88
    5     1     1     1.06542702    -0.43745156  -461.33171536    -0.00006491    -0.00000510  0.33D-06  0.87D-06   123.86
    5     2     2     1.06542701    -0.43745156  -461.33171536    -0.00006513    -0.00000511  0.33D-06  0.87D-06   123.86
    5     3     3     1.06542685    -0.43745155  -461.33171535    -0.00006516    -0.00000511  0.33D-06  0.87D-06   123.86
    6     1     1     1.06528777    -0.43745773  -461.33172153    -0.00000617    -0.00000048  0.42D-07  0.71D-07   152.76
    6     2     2     1.06528765    -0.43745773  -461.33172153    -0.00000617    -0.00000048  0.42D-07  0.72D-07   152.76
    6     3     3     1.06528759    -0.43745773  -461.33172153    -0.00000618    -0.00000049  0.43D-07  0.72D-07   152.76
    7     1     1     1.06533101    -0.43745829  -461.33172209    -0.00000056    -0.00000005  0.39D-08  0.84D-08   181.51
    7     2     2     1.06533103    -0.43745829  -461.33172209    -0.00000056    -0.00000005  0.39D-08  0.84D-08   181.51
    7     3     3     1.06533098    -0.43745829  -461.33172209    -0.00000056    -0.00000005  0.40D-08  0.84D-08   181.51
    8     1     1     1.06534188    -0.43745835  -461.33172215    -0.00000006    -0.00000001  0.30D-09  0.10D-08   210.17
    8     2     2     1.06534188    -0.43745835  -461.33172215    -0.00000006    -0.00000001  0.30D-09  0.10D-08   210.17
    8     3     3     1.06534189    -0.43745835  -461.33172215    -0.00000006    -0.00000001  0.30D-09  0.10D-08   210.17
    9     1     1     1.06534229    -0.43745836  -461.33172216    -0.00000001    -0.00000000  0.57D-10  0.12D-09   238.61
    9     2     2     1.06534229    -0.43745836  -461.33172216    -0.00000001    -0.00000000  0.56D-10  0.12D-09   238.61
    9     3     3     1.06534229    -0.43745836  -461.33172216    -0.00000001    -0.00000000  0.56D-10  0.12D-09   238.61
   10     1     1     1.06534347    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.82D-11  0.14D-10   267.54
   10     2     2     1.06534347    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.82D-11  0.14D-10   267.54
   10     3     3     1.06534347    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.81D-11  0.14D-10   267.54
   11     1     1     1.06534375    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.69D-12  0.19D-11   296.10
   11     2     2     1.06534375    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.69D-12  0.19D-11   296.10
   11     3     3     1.06534375    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.69D-12  0.19D-11   296.10
   12     1     1     1.06534386    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.11D-12  0.26D-12   325.25
   12     2     2     1.06534386    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.10D-12  0.26D-12   325.25
   12     3     3     1.06534386    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.11D-12  0.26D-12   325.25
   13     1     1     1.06534391    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.18D-13  0.32D-13   353.74
   13     2     2     1.06534391    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.18D-13  0.32D-13   353.74
   13     3     3     1.06534391    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.18D-13  0.32D-13   353.74
   14     1     1     1.06534392    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.19D-14  0.43D-14   382.15
   14     2     2     1.06534392    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.19D-14  0.43D-14   382.15
   14     3     3     1.06534392    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.19D-14  0.43D-14   382.15
   15     1     1     1.06534393    -0.43745836  -461.33172216     0.00000000    -0.00000000  0.22D-15  0.61D-15   410.49
   15     2     2     1.06534393    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.22D-15  0.61D-15   410.49
   15     3     3     1.06534393    -0.43745836  -461.33172216     0.00000000    -0.00000000  0.23D-15  0.61D-15   410.49
   16     1     1     1.06534393    -0.43745836  -461.33172216     0.00000000    -0.00000000  0.29D-16  0.83D-16   439.05
   16     2     2     1.06534393    -0.43745836  -461.33172216     0.00000000    -0.00000000  0.28D-16  0.84D-16   439.05
   16     3     3     1.06534393    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.30D-16  0.84D-16   439.05
   17     1     1     1.06534393    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.23D-17  0.15D-16   467.53
   17     2     2     1.06534393    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.27D-17  0.15D-16   467.53
   17     3     3     1.06534393    -0.43745836  -461.33172216    -0.00000000    -0.00000000  0.30D-17  0.14D-16   467.53


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.0%
 S   2.1%  12.4%
 P   1.0%  67.3%  11.3%

 Initialization:   1.3%
 Other:            2.7%

 Total CPU:      467.5 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222/22000          -0.1034436   0.1270370   0.9504523
 22022222/000           0.9429760   0.1869956   0.0776361
 2202222/2000          -0.1740522   0.9375995  -0.1442622

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.946678   -0.174735   -0.103850
 2           0.187730    0.941280    0.127536
 3           0.077941   -0.144829    0.954183

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968254    0.000000    0.000000
 2           0.000000    0.968254    0.000000
 3           0.000000    0.000000    0.968254


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.94667777 (fixed)   0.96882745 (relaxed)   0.96825411 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122450   -0.00054046   -0.38775198
 Singles      0.02046029   -0.06435775   -0.06872768
 Pairs        0.04496365    0.03995877    0.01902130
 Total        1.06664844   -0.02493944   -0.43745836
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.89426380
 Nuclear energy                         0.00000000
 Kinetic energy                       469.90393200
 One electron energy                 -636.54797891
 Two electron energy                  175.21625674
 Virial quotient                       -0.98175753
 Correlation energy                    -0.43745836
 !MRCI STATE 1.2 Energy              -461.331722162595

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36087808 (Davidson, fixed reference)
 Cluster corrected energies          -461.36032597 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36087808 (Davidson, rotated reference)

 Cluster corrected energies          -461.35794641 (Pople, fixed reference)
 Cluster corrected energies          -461.35742609 (Pople, relaxed reference)
 Cluster corrected energies          -461.35794641 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.94128011 (fixed)   0.96882745 (relaxed)   0.96825411 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122450   -0.00054046   -0.30428369
 Singles      0.02046029   -0.06435775   -0.06872768
 Pairs        0.04496365   -0.04907255   -0.06444699
 Total        1.06664844   -0.11397076   -0.43745836
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.89426380
 Nuclear energy                         0.00000000
 Kinetic energy                       469.90393204
 One electron energy                 -636.54797893
 Two electron energy                  175.21625677
 Virial quotient                       -0.98175753
 Correlation energy                    -0.43745836
 !MRCI STATE 2.2 Energy              -461.331722162384

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36087808 (Davidson, fixed reference)
 Cluster corrected energies          -461.36032597 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36087808 (Davidson, rotated reference)

 Cluster corrected energies          -461.35794641 (Pople, fixed reference)
 Cluster corrected energies          -461.35742609 (Pople, relaxed reference)
 Cluster corrected energies          -461.35794641 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.95418338 (fixed)   0.96882745 (relaxed)   0.96825411 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00122450   -0.00054046   -0.00608466
 Singles      0.02046029   -0.06435775   -0.06872768
 Pairs        0.04496365   -0.36714609   -0.36264603
 Total        1.06664844   -0.43204430   -0.43745836
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.89426380
 Nuclear energy                         0.00000000
 Kinetic energy                       469.90393205
 One electron energy                 -636.54797894
 Two electron energy                  175.21625678
 Virial quotient                       -0.98175753
 Correlation energy                    -0.43745836
 !MRCI STATE 3.2 Energy              -461.331722162270

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36087808 (Davidson, fixed reference)
 Cluster corrected energies          -461.36032597 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36087808 (Davidson, rotated reference)

 Cluster corrected energies          -461.35794641 (Pople, fixed reference)
 Cluster corrected energies          -461.35742609 (Pople, relaxed reference)
 Cluster corrected energies          -461.35794641 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       91.75       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       482.27    478.11      3.35      0.04      0.45
 REAL TIME  *       498.32 SEC
 DISK USED  *       123.71 MB (local),        1.50 GB (total)
 SF USED    *      1009.93 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -461.36087808  AU                              
 SETTING HLSDIAG(2)     =      -461.36087808  AU                              
 SETTING HLSDIAG(3)     =      -461.36087808  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-16  THRDEN = 1.00D-10

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 17
 Maximum number of shells:             6
 Maximum number of spin couplings:   572

 Reference space:      344 conf      656 CSFs
 N elec internal:    13744 conf    50364 CSFs
 N-1 el internal:    13962 conf    97722 CSFs
 N-2 el internal:     6604 conf    88800 CSFs

 Number of electrons in valence space:                     15
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      62 (  29  33 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -460.53490730
     2      -460.53490730
     3      -460.53490730

 Number of blocks in overlap matrix:    84   Smallest eigenvalue:  0.23D-05
 Number of N-2 electron functions:     425
 Number of N-1 electron functions:   97722

 Number of internal configurations:                25102
 Number of singly external configurations:       3030270
 Number of doubly external configurations:        409728
 Total number of contracted configurations:      3465100
 Total number of uncontracted configurations:   87762772

 Diagonal Coupling coefficients finished.               Storage:  14738409 words, CPU-Time:      2.87 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   6369679 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.53490730     0.00000000    -0.43801912  0.40D-01  0.32D-01     4.58
    1     2     2     1.00000000     0.00000000  -460.53490730     0.00000000    -0.43797015  0.40D-01  0.32D-01     4.58
    1     3     3     1.00000000     0.00000000  -460.53490730     0.00000000    -0.43788301  0.40D-01  0.32D-01     4.58
    2     1     1     1.06226582    -0.40962287  -460.94453017    -0.40962287    -0.00686457  0.13D-02  0.80D-03    29.12
    2     2     2     1.06234177    -0.40958798  -460.94449528    -0.40958798    -0.00690873  0.13D-02  0.79D-03    29.12
    2     3     3     1.06231884    -0.40958790  -460.94449521    -0.40958790    -0.00690141  0.13D-02  0.80D-03    29.12
    3     1     1     1.05800226    -0.41694819  -460.95185549    -0.00732532    -0.00044462  0.29D-04  0.83D-04    53.76
    3     2     2     1.05799789    -0.41694766  -460.95185497    -0.00735968    -0.00044439  0.29D-04  0.83D-04    53.76
    3     3     3     1.05799340    -0.41694636  -460.95185367    -0.00735846    -0.00044558  0.29D-04  0.83D-04    53.76
    4     1     1     1.06105742    -0.41754963  -460.95245693    -0.00060144    -0.00003798  0.30D-05  0.63D-05    78.25
    4     2     2     1.06105621    -0.41754944  -460.95245674    -0.00060178    -0.00003811  0.30D-05  0.63D-05    78.25
    4     3     3     1.06105667    -0.41754935  -460.95245665    -0.00060299    -0.00003817  0.30D-05  0.63D-05    78.25
    5     1     1     1.06136464    -0.41759414  -460.95250144    -0.00004451    -0.00000342  0.31D-06  0.61D-06   102.77
    5     2     2     1.06136607    -0.41759413  -460.95250143    -0.00004469    -0.00000344  0.31D-06  0.61D-06   102.77
    5     3     3     1.06136531    -0.41759412  -460.95250143    -0.00004477    -0.00000343  0.31D-06  0.61D-06   102.77
    6     1     1     1.06124575    -0.41759804  -460.95250534    -0.00000390    -0.00000028  0.21D-07  0.48D-07   127.06
    6     2     2     1.06124578    -0.41759804  -460.95250534    -0.00000391    -0.00000028  0.21D-07  0.48D-07   127.06
    6     3     3     1.06124573    -0.41759804  -460.95250534    -0.00000391    -0.00000028  0.21D-07  0.48D-07   127.06
    7     1     1     1.06126764    -0.41759836  -460.95250566    -0.00000032    -0.00000003  0.18D-08  0.54D-08   151.03
    7     2     2     1.06126756    -0.41759836  -460.95250566    -0.00000032    -0.00000003  0.18D-08  0.54D-08   151.03
    7     3     3     1.06126755    -0.41759835  -460.95250566    -0.00000032    -0.00000003  0.18D-08  0.54D-08   151.03
    8     1     1     1.06127716    -0.41759839  -460.95250569    -0.00000003    -0.00000000  0.29D-09  0.63D-09   175.18
    8     2     2     1.06127715    -0.41759839  -460.95250569    -0.00000003    -0.00000000  0.29D-09  0.63D-09   175.18
    8     3     3     1.06127713    -0.41759839  -460.95250569    -0.00000003    -0.00000000  0.29D-09  0.63D-09   175.18
    9     1     1     1.06127781    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.45D-10  0.69D-10   199.14
    9     2     2     1.06127782    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.44D-10  0.70D-10   199.14
    9     3     3     1.06127781    -0.41759839  -460.95250569    -0.00000000    -0.00000000  0.44D-10  0.70D-10   199.14
   10     1     1     1.06127836    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.47D-11  0.95D-11   223.22
   10     2     2     1.06127836    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.46D-11  0.93D-11   223.22
   10     3     3     1.06127836    -0.41759839  -460.95250569    -0.00000000    -0.00000000  0.46D-11  0.94D-11   223.22
   11     1     1     1.06127860    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.74D-12  0.17D-11   247.34
   11     2     2     1.06127859    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.73D-12  0.17D-11   247.34
   11     3     3     1.06127859    -0.41759839  -460.95250569    -0.00000000    -0.00000000  0.72D-12  0.17D-11   247.34
   12     1     1     1.06127864    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.13D-12  0.27D-12   271.48
   12     2     2     1.06127864    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.13D-12  0.27D-12   271.48
   12     3     3     1.06127863    -0.41759839  -460.95250569    -0.00000000    -0.00000000  0.13D-12  0.27D-12   271.48
   13     1     1     1.06127865    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.21D-13  0.38D-13   295.75
   13     2     2     1.06127865    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.21D-13  0.37D-13   295.75
   13     3     3     1.06127864    -0.41759839  -460.95250569    -0.00000000    -0.00000000  0.21D-13  0.37D-13   295.75
   14     1     1     1.06127865    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.33D-14  0.73D-14   320.05
   14     2     2     1.06127865    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.33D-14  0.72D-14   320.05
   14     3     3     1.06127865    -0.41759839  -460.95250569    -0.00000000    -0.00000000  0.32D-14  0.72D-14   320.05
   15     1     1     1.06127865    -0.41759839  -460.95250570     0.00000000    -0.00000000  0.51D-15  0.15D-14   344.36
   15     2     2     1.06127865    -0.41759839  -460.95250570     0.00000000    -0.00000000  0.50D-15  0.15D-14   344.36
   15     3     3     1.06127865    -0.41759839  -460.95250569     0.00000000    -0.00000000  0.50D-15  0.15D-14   344.36
   16     1     1     1.06127865    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.81D-16  0.22D-15   368.56
   16     2     2     1.06127865    -0.41759839  -460.95250570     0.00000000    -0.00000000  0.80D-16  0.22D-15   368.56
   16     3     3     1.06127865    -0.41759839  -460.95250569     0.00000000    -0.00000000  0.79D-16  0.22D-15   368.56
   17     1     1     1.06127865    -0.41759839  -460.95250570     0.00000000    -0.00000000  0.13D-16  0.30D-16   392.72
   17     2     2     1.06127865    -0.41759839  -460.95250570    -0.00000000    -0.00000000  0.13D-16  0.31D-16   392.72
   17     3     3     1.06127865    -0.41759839  -460.95250569    -0.00000000    -0.00000000  0.13D-16  0.30D-16   392.72


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.0%
 S   1.9%  14.5%
 P   0.8%  68.3%   8.6%

 Initialization:   0.8%
 Other:            3.0%

 Total CPU:      392.7 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222/2/00/          -0.0000001   0.6811864   0.0031660
 2202222//0/0          -0.0000001   0.6811861   0.0031660
 220222/2//00           0.6811817  -0.0000191   0.0041429
 220222//20/0           0.6811804  -0.0000191   0.0041429
 2202222///00          -0.0041429  -0.0031660   0.6811742
 220222//200/           0.0041429   0.0031660  -0.6811732

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970596   -0.005903   -0.000000
 2          -0.000027   -0.004511    0.970604
 3           0.005903    0.970586    0.004511

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970614   -0.000000    0.000000
 2          -0.000000    0.970614   -0.000000
 3           0.000000   -0.000000    0.970614


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97059620 (fixed)   0.97067877 (relaxed)   0.97061415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00017808   -0.00062851   -0.32148657
 Singles      0.02677322   -0.07642523   -0.08253260
 Pairs        0.03451634    0.00000006   -0.01357923
 Total        1.06146765   -0.07705368   -0.41759839
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.53490730
 Nuclear energy                         0.00000000
 Kinetic energy                       469.53289019
 One electron energy                 -632.19441919
 Two electron energy                  171.24191349
 Virial quotient                       -0.98172570
 Correlation energy                    -0.41759839
 !MRCI STATE 1.2 Energy              -460.952505698306

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97817449 (Davidson, fixed reference)
 Cluster corrected energies          -460.97811547 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97817449 (Davidson, rotated reference)

 Cluster corrected energies          -460.97479766 (Pople, fixed reference)
 Cluster corrected energies          -460.97474428 (Pople, relaxed reference)
 Cluster corrected energies          -460.97479766 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97060367 (fixed)   0.97067877 (relaxed)   0.97061415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00017808   -0.00062851   -0.00066564
 Singles      0.02677322   -0.07642523   -0.08253260
 Pairs        0.03451634   -0.34054098   -0.33440016
 Total        1.06146765   -0.41759472   -0.41759839
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.53490730
 Nuclear energy                         0.00000000
 Kinetic energy                       469.53289020
 One electron energy                 -632.19441926
 Two electron energy                  171.24191356
 Virial quotient                       -0.98172570
 Correlation energy                    -0.41759839
 !MRCI STATE 2.2 Energy              -460.952505697004

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97817449 (Davidson, fixed reference)
 Cluster corrected energies          -460.97811547 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97817449 (Davidson, rotated reference)

 Cluster corrected energies          -460.97479766 (Pople, fixed reference)
 Cluster corrected energies          -460.97474428 (Pople, relaxed reference)
 Cluster corrected energies          -460.97479766 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97058572 (fixed)   0.97067877 (relaxed)   0.97061415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00017808   -0.00062851   -0.31999539
 Singles      0.02677322   -0.07642523   -0.08253260
 Pairs        0.03451634   -0.00158278   -0.01507041
 Total        1.06146765   -0.07863651   -0.41759839
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.53490730
 Nuclear energy                         0.00000000
 Kinetic energy                       469.53289022
 One electron energy                 -632.19441926
 Two electron energy                  171.24191357
 Virial quotient                       -0.98172570
 Correlation energy                    -0.41759839
 !MRCI STATE 3.2 Energy              -460.952505694205

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97817448 (Davidson, fixed reference)
 Cluster corrected energies          -460.97811547 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97817448 (Davidson, rotated reference)

 Cluster corrected energies          -460.97479765 (Pople, fixed reference)
 Cluster corrected energies          -460.97474427 (Pople, relaxed reference)
 Cluster corrected energies          -460.97479765 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      172.54       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       884.15    401.88    478.11      3.35      0.04      0.45
 REAL TIME  *       910.17 SEC
 DISK USED  *       204.50 MB (local),        2.45 GB (total)
 SF USED    *      1009.93 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -460.97817449  AU                              
 SETTING HLSDIAG(5)     =      -460.97817449  AU                              
 SETTING HLSDIAG(6)     =      -460.97817448  AU                              


         HLSDIAG
    -461.3608781
    -461.3608781
    -461.3608781
    -460.9781745
    -460.9781745
    -460.9781745
                                                  

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

 Time for Seward_LS:       0.67 sec

        2402996. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.67 sec, REAL time:      0.69 sec


 SORTLS1 read     2508015. and wrote     2508015. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.05 sec
 SORTLS2 read     2508015. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    73.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    73.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       70.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      172.54       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       885.95      1.77    401.88    478.11      3.35      0.04      0.45
 REAL TIME  *       912.07 SEC
 DISK USED  *       204.53 MB (local),        2.63 GB (total)
 SF USED    *      1009.93 MB
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
  
 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:   -461.331722   -461.331722   -461.331722
 Replaced energies:   -461.360878   -461.360878   -461.360878

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   3

 Original energies:   -460.952506   -460.952506   -460.952506
 Replaced energies:   -460.978174   -460.978174   -460.978174

 >>> Fock matrix approximation error in all internal so: 
   2.3534150554496747       (exact)    2.3531087714007870       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -12.642331965097432       (exact)   -12.640158916601360       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.8657100714803294       (exact)    1.8641961957378290       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.4116192018736405E-003  (exact)    6.5077521895427629E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.5999884668681425E-003  (exact)   -7.7181033788707581E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9570314783863154E-002  (exact)   -6.0453508160778970E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.3793794885391664       (exact)   -1.4000637727042236       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.6346762240418633       (exact)    1.6600891130737063       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   12.816769738952161       (exact)    13.006793133339755       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -12.704385121487725       (exact)   -12.702974958151541       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.5193254709088184       (exact)   -2.5190458267569076       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0459622676297402       (exact)   -1.0458461415945524       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3940249744424054       (exact)    1.4147069943436144       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7114650183817235       (exact)   -1.7368642460785102       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -12.805169734488768       (exact)   -12.995199003290967       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.0789226913268943E-002  (exact)   -7.0684523028185800E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.3276979096677884E-002  (exact)   -2.3393331740166896E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.5877997672669525E-002  (exact)   -6.6760513546431255E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.9220883382585547E-002  (exact)   -8.9210970979009888E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7695644553446185E-002  (exact)   -1.7693713901273517E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.7759068109766742       (exact)   -2.8162802678679917       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   14.572691087547499       (exact)    14.790220684579849       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.2498975432345891       (exact)   -2.2833665141933337       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   14.657012681373249       (exact)    14.655196688139561       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.9768296992369274       (exact)    2.9775178276716217       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1973311974004022       (exact)    1.1970415774362984       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -461.36087808

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00      -0.00     -44.63    -290.03      75.38      -8.21       0.42       0.00
                            0.00     294.01     -39.30       0.00      24.02     -57.84     -13.97      -0.04       8.13       0.53

    2   2.2  0.5  0.5       0.00       0.00       0.00      44.63      -0.00     -53.84      14.95      10.08       0.14       0.00
                         -294.01      -0.00     -32.00     -24.02      -0.00     291.69      75.05       0.04      -9.63       0.11

    3   3.2  0.5  0.5       0.00       0.00       0.00     290.03      53.84      -0.00       6.21      75.41       0.39       0.00
                           39.30      32.00       0.00      57.84    -291.69      -0.00     -11.08       0.35     -75.51       0.04

    4   1.2  0.5 -0.5      -0.00      44.63     290.03       0.00       0.00       0.00       0.00       0.00       0.00      43.52
                           -0.00      24.02     -57.84      -0.00    -294.01      39.30       0.00       0.00       0.00      -8.07

    5   2.2  0.5 -0.5     -44.63      -0.00      53.84       0.00       0.00       0.00       0.00       0.00       0.00       8.63
                          -24.02       0.00     291.69     294.01       0.00      32.00       0.00       0.00       0.00      43.33

    6   3.2  0.5 -0.5    -290.03     -53.84      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.58
                           57.84    -291.69       0.00     -39.30     -32.00      -0.00       0.00       0.00       0.00      -6.40

    7   1.2  1.5  1.5      75.38      14.95       6.21       0.00       0.00       0.00   83993.73       0.00       0.00      -0.00
                           13.97     -75.05      11.08      -0.00      -0.00      -0.00       0.00      -0.93      -0.00       0.00

    8   2.2  1.5  1.5      -8.21      10.08      75.41       0.00       0.00       0.00       0.00   83993.73       0.00      87.92
                            0.04      -0.04      -0.35      -0.00      -0.00      -0.00       0.93       0.00    -152.30      -0.41

    9   3.2  1.5  1.5       0.42       0.14       0.39       0.00       0.00       0.00       0.00       0.00   83993.73       0.41
                           -8.13       9.63      75.51      -0.00      -0.00      -0.00       0.00     152.30      -0.00      87.94

   10   1.2  1.5  0.5       0.00       0.00       0.00      43.52       8.63       3.58      -0.00      87.92       0.41   83993.73
                           -0.53      -0.11      -0.04       8.07     -43.33       6.40      -0.00       0.41     -87.94       0.00

   11   2.2  1.5  0.5       0.00       0.00       0.00      -4.74       5.82      43.54     -87.92      -0.00      -0.53       0.00
                          -16.34      85.77     -13.24       0.02      -0.03      -0.20      -0.41       0.00      -0.00       0.31

   12   3.2  1.5  0.5       0.00       0.00       0.00       0.24       0.08       0.22      -0.41       0.53       0.00       0.00
                           86.92      17.65       7.10      -4.69       5.56      43.60      87.94       0.00       0.00       0.00

   13   1.2  1.5 -0.5      43.52       8.63       3.58       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -8.07      43.33      -6.40      -0.53      -0.11      -0.04      -0.00      -0.00      -0.00      -0.00

   14   2.2  1.5 -0.5      -4.74       5.82      43.54       0.00       0.00       0.00       0.00       0.00       0.00    -101.53
                           -0.02       0.03       0.20     -16.34      85.77     -13.24      -0.00      -0.00      -0.00      -0.47

   15   3.2  1.5 -0.5       0.24       0.08       0.22       0.00       0.00       0.00       0.00       0.00       0.00      -0.47
                            4.69      -5.56     -43.60      86.92      17.65       7.10      -0.00      -0.00      -0.00     101.54

   16   1.2  1.5 -1.5       0.00       0.00       0.00      75.38      14.95       6.21       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -13.97      75.05     -11.08      -0.00      -0.00      -0.00      -0.00

   17   2.2  1.5 -1.5       0.00       0.00       0.00      -8.21      10.08      75.41       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.04       0.04       0.35      -0.00      -0.00      -0.00      -0.00

   18   3.2  1.5 -1.5       0.00       0.00       0.00       0.42       0.14       0.39       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       8.13      -9.63     -75.51      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18

    1   1.2  0.5  0.5       0.00       0.00      43.52      -4.74       0.24       0.00       0.00       0.00
                           16.34     -86.92       8.07       0.02      -4.69       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       8.63       5.82       0.08       0.00       0.00       0.00
                          -85.77     -17.65     -43.33      -0.03       5.56       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       3.58      43.54       0.22       0.00       0.00       0.00
                           13.24      -7.10       6.40      -0.20      43.60       0.00       0.00       0.00

    4   1.2  0.5 -0.5      -4.74       0.24       0.00       0.00       0.00      75.38      -8.21       0.42
                           -0.02       4.69       0.53      16.34     -86.92      13.97       0.04      -8.13

    5   2.2  0.5 -0.5       5.82       0.08       0.00       0.00       0.00      14.95      10.08       0.14
                            0.03      -5.56       0.11     -85.77     -17.65     -75.05      -0.04       9.63

    6   3.2  0.5 -0.5      43.54       0.22       0.00       0.00       0.00       6.21      75.41       0.39
                            0.20     -43.60       0.04      13.24      -7.10      11.08      -0.35      75.51

    7   1.2  1.5  1.5     -87.92      -0.41       0.00       0.00       0.00       0.00       0.00       0.00
                            0.41     -87.94       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5      -0.00       0.53       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5      -0.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   1.2  1.5  0.5       0.00       0.00      -0.00    -101.53      -0.47       0.00       0.00       0.00
                           -0.31      -0.00       0.00       0.47    -101.54       0.00       0.00       0.00

   11   2.2  1.5  0.5   83993.73       0.00     101.53      -0.00       0.62       0.00       0.00       0.00
                            0.00     -50.77      -0.47      -0.00      -0.00       0.00       0.00       0.00

   12   3.2  1.5  0.5       0.00   83993.73       0.47      -0.62       0.00       0.00       0.00       0.00
                           50.77      -0.00     101.54       0.00      -0.00       0.00       0.00       0.00

   13   1.2  1.5 -0.5     101.53       0.47   83993.73       0.00       0.00      -0.00     -87.92      -0.41
                            0.47    -101.54      -0.00       0.31       0.00       0.00       0.41     -87.94

   14   2.2  1.5 -0.5      -0.00      -0.62       0.00   83993.73       0.00      87.92      -0.00       0.53
                            0.00      -0.00      -0.31      -0.00      50.77      -0.41      -0.00      -0.00

   15   3.2  1.5 -0.5       0.62       0.00       0.00       0.00   83993.73       0.41      -0.53       0.00
                            0.00       0.00      -0.00     -50.77       0.00      87.94       0.00      -0.00

   16   1.2  1.5 -1.5       0.00       0.00      -0.00      87.92       0.41   83993.73       0.00       0.00
                           -0.00      -0.00      -0.00       0.41     -87.94      -0.00       0.93       0.00

   17   2.2  1.5 -1.5       0.00       0.00     -87.92      -0.00      -0.53       0.00   83993.73       0.00
                           -0.00      -0.00      -0.41       0.00      -0.00      -0.93      -0.00     152.30

   18   3.2  1.5 -1.5       0.00       0.00      -0.41       0.53       0.00       0.00       0.00   83993.73
                           -0.00      -0.00      87.94       0.00       0.00      -0.00    -152.30       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -461.36223849    -0.00136041     -298.58      0.00000000        0.00      0.0000
     2  -461.36223849    -0.00136041     -298.58      0.00000000        0.00      0.0000
     3  -461.36223848    -0.00136040     -298.57      0.00000001        0.00      0.0000
     4  -461.36223848    -0.00136040     -298.57      0.00000001        0.00      0.0000
     5  -461.35815982     0.00271826      596.59      0.00407867      895.16      0.1110
     6  -461.35815982     0.00271826      596.59      0.00407867      895.16      0.1110
     7  -460.97886848     0.38200960    83841.42      0.38337001    84139.99     10.4320
     8  -460.97886848     0.38200960    83841.42      0.38337001    84139.99     10.4320
     9  -460.97886843     0.38200965    83841.43      0.38337006    84140.00     10.4320
    10  -460.97886843     0.38200965    83841.43      0.38337006    84140.00     10.4320
    11  -460.97886839     0.38200969    83841.44      0.38337010    84140.01     10.4320
    12  -460.97886839     0.38200969    83841.44      0.38337010    84140.01     10.4320
    13  -460.97771083     0.38316725    84095.49      0.38452766    84394.07     10.4635
    14  -460.97771083     0.38316725    84095.49      0.38452766    84394.07     10.4635
    15  -460.97771077     0.38316731    84095.51      0.38452772    84394.08     10.4635
    16  -460.97771077     0.38316731    84095.51      0.38452772    84394.08     10.4635
    17  -460.97701748     0.38386060    84247.66      0.38522101    84546.24     10.4824
    18  -460.97701748     0.38386060    84247.66      0.38522101    84546.24     10.4824


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.035727263   0.778674139   0.235897860  -0.058377023   0.572024864   0.078229121  -0.000000000  -0.000000295
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.037881380   0.071917150  -0.220111307   0.093007409  -0.010423097   0.076213645   0.000000006   0.000000007
                        -0.026956920   0.574305770  -0.519566618  -0.049549249  -0.555470228  -0.137363081  -0.000000001  -0.000000314

    3    3.2  0.5  0.5  -0.194588723   0.057693281  -0.028204255   0.774670162  -0.077530087   0.566911743   0.000000030  -0.000000034
                         0.093810376  -0.072338334   0.082098952   0.061546975   0.073682088   0.022467670  -0.000000032   0.000000041

    4    1.2  0.5 -0.5   0.742095956   0.034048976  -0.054021232  -0.218296388  -0.077028762   0.563247632  -0.000000237   0.000000000
                        -0.235853795  -0.010821485   0.022126521   0.089411873   0.013651564  -0.099822594   0.000000175  -0.000000000

    5    2.2  0.5 -0.5  -0.105413504   0.027936881   0.104848232   0.006757497  -0.099015091   0.086670523   0.000000193  -0.000000005
                        -0.569110867  -0.037164571   0.010599736  -0.564227616  -0.121955514   0.548765921   0.000000248   0.000000003

    6    3.2  0.5 -0.5   0.076893806   0.213862284   0.693540311   0.057217596  -0.554292191  -0.089198526  -0.000000052  -0.000000043
                         0.051465439   0.030464367  -0.350576283   0.065282958   0.121053239  -0.059021923  -0.000000013  -0.000000008

    7    1.2  1.5  1.5   0.000089217  -0.001232688   0.000303184   0.000030843   0.000000279   0.000000045   0.003030711  -0.353799166
                        -0.000004352  -0.000168920  -0.000145103  -0.000005074  -0.000000826   0.000003106  -0.003792196  -0.070309875

    8    2.2  1.5  1.5   0.000174537   0.000015603   0.000074367  -0.000709180   0.000127267  -0.000512550  -0.087145289  -0.001861559
                        -0.000081413  -0.000004019  -0.000011649  -0.000045778  -0.000000086  -0.000001320   0.092598776   0.000616247

    9    3.2  1.5  1.5   0.000081998  -0.000003471   0.000013502   0.000045993   0.000000087   0.000001323   0.329847662  -0.000271579
                         0.000174605   0.000014547   0.000073531  -0.000709581   0.000127327  -0.000512800   0.300934449   0.006052520

   10    1.2  1.5  0.5  -0.000101617  -0.000009816  -0.000041605   0.000412663   0.000148438  -0.000596390  -0.372216737  -0.007294995
                         0.000046386   0.000007969   0.000010010   0.000028961   0.000002384  -0.000003864   0.409216075  -0.001357930

   11    2.2  1.5  0.5  -0.000032846   0.000484588  -0.000908077  -0.000102214  -0.000290424  -0.000072136   0.000535639  -0.034573046
                         0.000000451   0.000073489   0.000448008   0.000026169   0.000055057   0.000013437  -0.000164873  -0.009727421

   12    3.2  1.5  0.5   0.000002232   0.000127228  -0.000285181  -0.000013123  -0.000054932  -0.000017253  -0.005472484  -0.114880983
                         0.000070647  -0.000932345  -0.000561887  -0.000066546  -0.000294732  -0.000073253  -0.005730064   0.577650314

   13    1.2  1.5 -0.5   0.000011769  -0.000110894  -0.000370895  -0.000042294  -0.000586564  -0.000145744   0.005057741  -0.542593536
                         0.000004622  -0.000013428   0.000183211   0.000006506   0.000107879   0.000028251  -0.005429566  -0.107681710

   14    2.2  1.5 -0.5  -0.000439565  -0.000031440   0.000104506  -0.001010128  -0.000073374   0.000295575   0.022012675   0.000528693
                         0.000216814   0.000009519  -0.000014525  -0.000070393  -0.000000642   0.000003531  -0.028378874  -0.000185945

   15    3.2  1.5 -0.5  -0.000403651  -0.000019271  -0.000013079  -0.000050932  -0.000004205   0.000002656   0.435849948  -0.000992657
                        -0.000850012  -0.000068004  -0.000066555   0.000628053   0.000075140  -0.000299795   0.396121633   0.007861065

   16    1.2  1.5 -1.5  -0.001123618  -0.000086345   0.000030465  -0.000335560   0.000000498   0.000000419  -0.242647674  -0.004691636
                         0.000534356   0.000022876  -0.000006995  -0.000019361   0.000003066   0.000000765   0.266907165  -0.001246802

   17    2.2  1.5 -1.5   0.000016088  -0.000190997  -0.000638913  -0.000073233   0.000504455   0.000125329  -0.001863135   0.125126633
                        -0.000000896  -0.000024723   0.000311162   0.000017407  -0.000090744  -0.000022125   0.000611466   0.022630958

   18    3.2  1.5 -1.5  -0.000007714  -0.000025260   0.000311513   0.000015375  -0.000090791  -0.000022134  -0.003817330  -0.086255473
                        -0.000012812   0.000191239   0.000639203   0.000073162  -0.000504701  -0.000125388  -0.004704758   0.438087909


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000000546  -0.000000171   0.000000919   0.000000239  -0.000363877   0.000047469   0.001295289  -0.000201356
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000002804   0.000000735  -0.000004958  -0.000001319   0.000762612  -0.000280794   0.000200547  -0.000167382
                        -0.000000708  -0.000000219   0.000000037  -0.000000003  -0.000951246  -0.000125860   0.000426947  -0.000096547

    3    3.2  0.5  0.5  -0.000000513   0.000000205   0.000000746   0.000000264   0.000090937  -0.000536091  -0.000090209  -0.000882928
                         0.000000062   0.000000132  -0.000000016   0.000000041   0.000231830   0.000829006  -0.000055172   0.000027368

    4    1.2  0.5 -0.5   0.000000013  -0.000000040  -0.000000133   0.000000513  -0.000045867  -0.000351594   0.000201160   0.001294025
                        -0.000000170   0.000000544   0.000000198  -0.000000763   0.000012230   0.000093748   0.000008894   0.000057215

    5    2.2  0.5 -0.5  -0.000000272   0.000000912   0.000000733  -0.000002798   0.000238889   0.000981942   0.000171483   0.000219210
                         0.000000717  -0.000002744  -0.000001096   0.000004094  -0.000193954   0.000722659  -0.000089059  -0.000417671

    6    3.2  0.5 -0.5   0.000000117  -0.000000099  -0.000000113   0.000000429   0.000731574   0.000028140   0.000880858  -0.000092558
                         0.000000214   0.000000507   0.000000242  -0.000000610   0.000662905  -0.000247432   0.000066342   0.000051133

    7    1.2  1.5  1.5  -0.086300980  -0.027657869   0.002452733  -0.000210986  -0.382059188  -0.096440408   0.565288880  -0.130786729
                        -0.356004983  -0.091034170   0.343921164   0.091307226  -0.316553907   0.081449480   0.034438725  -0.005539467

    8    2.2  1.5  1.5   0.126200710  -0.517426538   0.100411068  -0.372777008   0.075956441  -0.187455077  -0.066635452  -0.287934427
                         0.052724766  -0.168691003   0.066949985  -0.255755172   0.033785436   0.265651866   0.000925969   0.006053506

    9    3.2  1.5  1.5   0.053088992  -0.171882163   0.022634643  -0.086335771  -0.036100135  -0.266240214   0.002511115  -0.006848792
                        -0.130857207   0.526361387  -0.030790949   0.123029360   0.074020303  -0.186962052  -0.066409989  -0.287971257

   10    1.2  1.5  0.5   0.006136985  -0.015945525  -0.116817994   0.432090633  -0.043414040   0.108861760   0.038699549   0.166173665
                         0.001135548  -0.005450592  -0.077337095   0.295438521  -0.020123245  -0.152990341  -0.004359890  -0.001795183

   11    2.2  1.5  0.5  -0.075103299  -0.025127632   0.004087686  -0.001128845   0.510276762   0.130948890   0.005727112  -0.001332054
                        -0.317689517  -0.078375967   0.559415900   0.149675400   0.421476597  -0.107068610  -0.002584157   0.000807674

   12    3.2  1.5  0.5  -0.300952762  -0.074071544   0.035237970   0.012390256  -0.054690101   0.015535085  -0.039513433   0.009323917
                         0.070953065   0.023821046   0.001899435   0.002677960   0.070439213   0.016369491   0.658265345  -0.152354460

   13    1.2  1.5 -0.5   0.004264377   0.000681607  -0.004053223   0.001008875   0.144602501   0.036764031   0.165932174  -0.038469192
                         0.016302877   0.006203827  -0.523421250  -0.140094440   0.119779148  -0.030628905   0.009133625  -0.006065065

   14    2.2  1.5 -0.5   0.076318086  -0.311313300  -0.124835538   0.461940961   0.154112977  -0.384463898  -0.001295078  -0.005607377
                         0.030817847  -0.098240334  -0.082583826   0.315552543   0.069717211   0.538713659  -0.000865725  -0.002834610

   15    3.2  1.5 -0.5  -0.029198555   0.092871701   0.004691644  -0.018086974   0.010793304   0.070991493   0.002585041   0.010398078
                         0.072121289  -0.294926684  -0.011776179   0.030301547  -0.019819277   0.053971264   0.152617609   0.659368225

   16    1.2  1.5 -1.5  -0.088756190   0.348702551   0.075887509  -0.284028578   0.114169037  -0.287606407   0.130903762   0.566258349
                        -0.034271218   0.112222712   0.050775389  -0.193947287   0.053853514   0.404299586   0.000243030  -0.009435262

   17    2.2  1.5 -1.5  -0.130220863  -0.043310574  -0.004220337   0.000473194   0.249568238   0.064688018   0.287385993  -0.066529510
                        -0.528421614  -0.129733243  -0.452057071  -0.120683302   0.208389095  -0.052213952   0.018766189  -0.003868475

   18    3.2  1.5 -1.5   0.537566766   0.134403916   0.150270204   0.038181744   0.209084603  -0.053951696   0.019562325  -0.000424787
                        -0.132746973  -0.043331712  -0.002992512  -0.001601280  -0.249243435  -0.062220893  -0.287387658   0.066456090


   Nr   State  S   Sz       17            18

    1    1.2  0.5  0.5  -0.000005404   0.000614175
                        -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000097880   0.000001767
                         0.000039065  -0.000602986

    3    3.2  0.5  0.5   0.000316244   0.000003573
                         0.000514690   0.000085168

    4    1.2  0.5 -0.5   0.000417078   0.000003669
                         0.000450840   0.000003966

    5    2.2  0.5 -0.5  -0.000441427  -0.000095145
                         0.000410777  -0.000045321

    6    3.2  0.5 -0.5   0.000064945  -0.000592569
                        -0.000055214   0.000117377

    7    1.2  1.5  1.5   0.002555940   0.000049568
                        -0.001618654   0.000304717

    8    2.2  1.5  1.5   0.268437340  -0.050899469
                         0.418718304   0.003930849

    9    3.2  1.5  1.5  -0.418724562  -0.003930737
                         0.268441303  -0.050900257

   10    1.2  1.5  0.5   0.307854971  -0.059108844
                         0.484818936   0.002547663

   11    2.2  1.5  0.5   0.018494835   0.282210531
                         0.022927066  -0.053024730

   12    3.2  1.5  0.5  -0.021072180   0.052673549
                         0.021455156   0.282271341

   13    1.2  1.5 -0.5   0.038269903   0.564945455
                         0.045119403  -0.103250746

   14    2.2  1.5 -0.5  -0.152722221   0.029389395
                        -0.243167286  -0.001993187

   15    3.2  1.5 -0.5  -0.242973442   0.001439489
                         0.153021305  -0.030038115

   16    1.2  1.5 -1.5   0.000257340  -0.000547519
                        -0.000170544  -0.002975414

   17    2.2  1.5 -1.5  -0.031679686  -0.489655766
                        -0.040032549   0.087297505

   18    3.2  1.5 -1.5  -0.040033051   0.087298845
                         0.031680304   0.489663051


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.128%  60.633%   5.565%   0.341%  32.721%   0.612%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.216%  33.500%  31.840%   1.111%  30.866%   2.468%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   4.667%   0.856%   0.754%  60.390%   1.144%  32.189%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5  60.633%   0.128%   0.341%   5.565%   0.612%  32.721%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  33.500%   0.216%   1.111%  31.840%   2.468%  30.866%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.856%   4.667%  60.390%   0.754%  32.189%   1.144%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  13.012%  13.419%   0.905%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.617%   0.000%   1.871%  29.619%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  19.936%   0.004%   1.994%  30.660%
   10    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  30.600%   0.006%   0.004%   0.028%
   11    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.129%  10.657%   0.677%
   12    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%  34.688%   9.561%   0.605%
   13    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%  30.600%   0.028%   0.004%
   14    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.129%   0.000%   0.677%  10.657%
   15    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  34.688%   0.006%   0.605%   9.561%
   16    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.012%   0.002%   0.905%  13.419%
   17    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.617%  29.619%   1.871%
   18    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%  19.936%  30.660%   1.994%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5  11.829%   0.834%  24.618%   1.593%  32.074%   1.714%   0.001%   0.000%
    8    2.2  1.5  1.5   1.456%  20.437%   0.691%  10.571%   0.444%   8.294%  24.738%   0.261%
    9    3.2  1.5  1.5   0.146%   2.259%   0.678%  10.584%   0.442%   8.297%  24.739%   0.261%
   10    1.2  1.5  0.5   1.963%  27.399%   0.229%   3.526%   0.152%   2.762%  32.982%   0.350%
   11    2.2  1.5  0.5  31.296%   2.240%  43.802%   2.861%   0.004%   0.000%   0.087%   8.245%
   12    3.2  1.5  0.5   0.125%   0.016%   0.795%   0.051%  43.487%   2.330%   0.090%   8.245%
   13    1.2  1.5 -0.5  27.399%   1.963%   3.526%   0.229%   2.762%   0.152%   0.350%  32.982%
   14    2.2  1.5 -0.5   2.240%  31.296%   2.861%  43.802%   0.000%   0.004%   8.245%   0.087%
   15    3.2  1.5 -0.5   0.016%   0.125%   0.051%   0.795%   2.330%  43.487%   8.245%   0.090%
   16    1.2  1.5 -1.5   0.834%  11.829%   1.593%  24.618%   1.714%  32.074%   0.000%   0.001%
   17    2.2  1.5 -1.5  20.437%   1.456%  10.571%   0.691%   8.294%   0.444%   0.261%  24.738%
   18    3.2  1.5 -1.5   2.259%   0.146%  10.584%   0.678%   8.297%   0.442%   0.261%  24.739%


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
              1      24       70.29       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      172.54       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1823.16    937.20      1.77    401.88    478.11      3.35      0.04      0.45
 REAL TIME  *      1863.54 SEC
 DISK USED  *       204.53 MB (local),        2.63 GB (total)
 SF USED    *      1009.93 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -460.977017483455

              CI              CI           MULTI         RHF-SCF
   -460.95250569   -461.33172216   -460.53490730   -460.88965810
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
