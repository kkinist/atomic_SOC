
 Working directory              : /wrk/irikura/molpro.q4BGfxkbNz/
 Global scratch directory       : /wrk/irikura/molpro.q4BGfxkbNz/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.q4BGfxkbNz/

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
     wf,sym=2,spin=3;state,8;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! only K-shell uncorrelated
 core,1,0
 
 {ci;wf,sym=2,spin=1;state,3; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,8; save,5203.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5203.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 15:54:01  
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

     10.486 MB (compressed) written to integral file ( 27.0%)

     Node minimum: 0.524 MB, node maximum: 1.311 MB


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
 CPU TIMES  *         0.69      0.43
 REAL TIME  *         1.48 SEC
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
   1     -460.88652677    -460.88652677     0.00D+00     0.15D+00     0     0       0.00      0.01    start
   2     -460.88950976      -0.00298299     0.31D-02     0.36D-02     1     0       0.00      0.01    diag2
   3     -460.88964245      -0.00013269     0.71D-03     0.70D-03     2     0       0.00      0.01    diag2
   4     -460.88965588      -0.00001343     0.18D-03     0.23D-03     3     0       0.00      0.01    diag2
   5     -460.88965795      -0.00000208     0.40D-04     0.11D-03     4     0       0.00      0.01    diag2
   6     -460.88965809      -0.00000014     0.11D-04     0.33D-04     5     0       0.01      0.02    diag2
   7     -460.88965810      -0.00000000     0.14D-05     0.36D-05     6     0       0.00      0.02    diag2
   8     -460.88965810      -0.00000000     0.13D-06     0.38D-06     7     0       0.00      0.02    fixocc
   9     -460.88965810       0.00000000     0.73D-08     0.25D-07     8     0       0.00      0.02    diag2
  10     -460.88965810      -0.00000000     0.11D-08     0.27D-08     0     0       0.01      0.03    diag/orth

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   5

 !RHF STATE 1.2 Energy               -460.889658096283
  RHF One-electron energy            -636.773116490694
  RHF Two-electron energy             175.883458394411
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
    2.2     2.00000    -8.07286     1  1  pz   1.00074
    3.2     2.00000    -8.07286     1  1  py   1.00074
    4.2     2.00000    -0.49163     1  2  pz   0.99667
    5.2     2.00000    -0.49163     1  2  py   0.99667
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
 CPU TIMES  *         0.90      0.21      0.43
 REAL TIME  *         2.41 SEC
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
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.340D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.199D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.941D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.154D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 4 6 2 1   5 4 3 2 6 5 3 4 2 6   1 5 3 4 2 6 1 5 3 4   2 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.104D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.139D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.236D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.222D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.267D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.392D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.595D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.592D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 1 3 2 1   3 2 710 9 8 4 5 6 1   3 2 710 9 8 4 5 6 7   910 4 8 5 6 1 2 3 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-09 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  435  ( 22 closed/active, 157 closed/virtual, 0 active/active, 256 active/virtual )
 Total number of variables:    12583
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   51    0   -460.60429856    -460.63329783   -0.02899927    0.19391400 0.00119378 0.00068031  0.95E+00      1.97
   2    9   42    0   -460.62685135    -460.62875411   -0.00190276    0.12977522 0.00017970 0.00066011  0.19E+00      4.09
   3   11   49    0   -460.62877113    -460.62877213   -0.00000101    0.00069176 0.00000022 0.00000018  0.12E-01      6.17
   4   11   37    0   -460.62877214    -460.62877214   -0.00000000    0.00000040 0.00000000 0.00000000  0.88E-05      7.60
   5    2    4    0   -460.62877214    -460.62877214    0.00000000    0.00000000 0.00000000 0.00000000  0.10E-09      7.79

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.15E-10)
                       Final energy:   -460.62877214
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -460.887190406212
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.98534181
 One electron energy                          -637.28950196
 Two electron energy                           176.40231156
 Virial ratio                                    1.98064163
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -460.887190406211
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.98534181
 One electron energy                          -637.28950196
 Two electron energy                           176.40231156
 Virial ratio                                    1.98064163
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -460.887190406210
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.98534181
 One electron energy                          -637.28950196
 Two electron energy                           176.40231156
 Virial ratio                                    1.98064163
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -460.538602017692
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.06679105
 One electron energy                          -632.13849011
 Two electron energy                           171.59988809
 Virial ratio                                    1.98181882
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -460.538602017691
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.06679105
 One electron energy                          -632.13849011
 Two electron energy                           171.59988809
 Virial ratio                                    1.98181882
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -460.538602017691
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.06679105
 One electron energy                          -632.13849011
 Two electron energy                           171.59988809
 Virial ratio                                    1.98181882
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -460.527823243084
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.09469559
 One electron energy                          -632.18599772
 Two electron energy                           171.65817447
 Virial ratio                                    1.98173744
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -460.527823243083
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.09469559
 One electron energy                          -632.18599772
 Two electron energy                           171.65817447
 Virial ratio                                    1.98173744
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -460.527823243083
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.09469559
 One electron energy                          -632.18599772
 Two electron energy                           171.65817447
 Virial ratio                                    1.98173744
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -460.527823243083
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.09469559
 One electron energy                          -632.18599772
 Two electron energy                           171.65817447
 Virial ratio                                    1.98173744
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -460.527823243083
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.09469559
 One electron energy                          -632.18599772
 Two electron energy                           171.65817447
 Virial ratio                                    1.98173744
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.000009778288
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999991612088
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999998609624
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.000024974490
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999976158828
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.999998866682
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     3.643678368335
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     3.999816344913
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000795699585
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000125573176
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     0.355584013990
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999991715289
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000229883324
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999778401387
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999976509107
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.001018215826
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999005275066
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     2.163391368989
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000149322497
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.997108794011
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.001834163971
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     1.837516350533
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999998506423
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999778504588
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000222988989
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.999998516403
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999005625346
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.000995858251
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     0.192930262676
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     1.000034332590
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.002095506404
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     3.998040262853
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     3.806899635477
 
 !MCSCF expec      <1.2 Doublet|L**2|1.2 Doublet>     2.000000000000
 !MCSCF expec      <2.2 Doublet|L**2|2.2 Doublet>     2.000000000000
 !MCSCF expec      <3.2 Doublet|L**2|3.2 Doublet>     2.000000000000
 !MCSCF expec      <1.2 Quartet|L**2|1.2 Quartet>     2.000000000000
 !MCSCF expec      <2.2 Quartet|L**2|2.2 Quartet>     2.000000000000
 !MCSCF expec      <3.2 Quartet|L**2|3.2 Quartet>     2.000000000000
 !MCSCF expec      <4.2 Quartet|L**2|4.2 Quartet>     6.000000000000
 !MCSCF expec      <5.2 Quartet|L**2|5.2 Quartet>     6.000000000000
 !MCSCF expec      <6.2 Quartet|L**2|6.2 Quartet>     6.000000000000
 !MCSCF expec      <7.2 Quartet|L**2|7.2 Quartet>     6.000000000000
 !MCSCF expec      <8.2 Quartet|L**2|8.2 Quartet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 4 2 6 1   3 5 4 2 6 3 5 4 2 6   1 5 3 4 2 6 1 5 3 4   2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 1   3 2 9 7 810 4 6 5 3   2 1 9 7 810 4 6 5 7   910 8 4 6 5 1 2 3 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.46430     1  1  s    0.99882
    2.1     2.00000   -10.86839     1  2  s    1.00150
    3.1     1.99689    -1.23324     1  3  s    1.07078
    4.1     0.00334     0.60576     1  3  s   -1.35321    1  4  s   -0.84045    1  5  s    1.91986
    1.2     2.00000    -8.27152     1  1  pz   0.99985
    2.2     2.00000    -8.27152     1  1  py   0.99985
    3.2     2.00000    -8.27152     1  1  px   0.99985
    4.2     1.42105    -0.52454     1  2  pz   1.07943
    5.2     1.42105    -0.52454     1  2  py   1.07943
    6.2     1.42105    -0.52454     1  2  px   1.07943
    7.2     0.24554     0.07912     1  2  pz  -0.35375    1  7  pz   1.12426
    8.2     0.24554     0.07912     1  2  py  -0.35375    1  7  py   1.12426
    9.2     0.24554     0.07912     1  2  px  -0.35375    1  7  px   1.12426
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.98727758     -0.00285936     -0.00116415
 20 a22000      0.00120658      0.01469345      0.98717232
 20 2a2000      0.00284171      0.98716892     -0.01469687
 20 2aa0b0     -0.07315827      0.00021188      0.00008626
 20 a2ab00     -0.07315827      0.00021188      0.00008626
 20 a2a00b      0.00008941      0.00108880      0.07315047
 20 aa20b0      0.00008941      0.00108880      0.07315047
 20 2aa00b      0.00021057      0.07315021     -0.00108905
 20 aa2b00     -0.00021057     -0.07315021      0.00108905
 20 2ba0a0      0.05566468     -0.00016122     -0.00006564
 20 b2aa00      0.05566468     -0.00016122     -0.00006564
 20 a2b00a     -0.00006803     -0.00082845     -0.05565874
 20 ab20a0     -0.00006803     -0.00082845     -0.05565874
 20 2ab00a     -0.00016022     -0.05565855      0.00082864
 20 ba2a00      0.00016022      0.05565855     -0.00082864
 
 Energy:     -460.88719041   -460.88719041   -460.88719041
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 2aaa00     -0.00000000     -0.00000000     -0.00000000      0.79366827     -0.03084459      0.00935662     -0.00118435
 20 aa200a     -0.00000000     -0.00000000      0.00000000     -0.24279287      0.00017991      0.00303144     -0.00880141
 20 2aa0a0      0.70489668      0.00344187     -0.00075042     -0.02947240     -0.70437940      0.00399302     -0.00299699
 20 a2aa00      0.70489668      0.00344187     -0.00075042      0.02947240      0.70437940     -0.00399302      0.00299699
 20 aa20a0      0.00085860     -0.02222828      0.70455440      0.00316311     -0.00334754     -0.01759802      0.70477938
 20 a2a00a      0.00085860     -0.02222828      0.70455440     -0.00316311      0.00334754      0.01759802     -0.70477938
 20 aa2a00     -0.00341649      0.70454651      0.02223220     -0.00934202      0.00438120      0.70475235      0.01773023
 20 2aa00a      0.00341649     -0.70454651     -0.02223220     -0.00934202      0.00438120      0.70475235      0.01773023
 20 a2a0a0      0.00000000     -0.00000000      0.00000000      0.55087541     -0.03066468      0.01238805     -0.00998576
 
 Energy:     -460.53860202   -460.53860202   -460.53860202   -460.52782324   -460.52782324   -460.52782324   -460.52782324

 State:              8
 20 2aaa00     -0.17856599
 20 aa200a      0.77704596
 20 2aa0a0     -0.00909528
 20 a2aa00      0.00909528
 20 aa20a0      0.00904062
 20 a2a00a     -0.00904062
 20 aa2a00     -0.00546856
 20 2aa00a     -0.00546856
 20 a2a0a0      0.59847996
 
 Energy:     -460.52782324
 


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
 CPU TIMES  *         4.67      3.77      0.21      0.43
 REAL TIME  *        10.52 SEC
 DISK USED  *        32.63 MB (local),      443.88 MB (total)
 SF USED    *         9.15 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -460.8871904   2.0
    -460.8871904   2.0
    -460.8871904   2.0
    -460.5386020   2.0
    -460.5386020   2.0
    -460.5386020   2.0
    -460.5278232   6.0
    -460.5278232   6.0
    -460.5278232   6.0
    -460.5278232   6.0
    -460.5278232   6.0
                                                  


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
     1      -460.88719041
     2      -460.88719041
     3      -460.88719041

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1294D-06

 Number of blocks in overlap matrix:   118   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:     429
 Number of N-1 electron functions:  111168

 Number of internal configurations:                32480
 Number of singly external configurations:       3447264
 Number of doubly external configurations:        413712
 Total number of contracted configurations:      3893456
 Total number of uncontracted configurations:   95867684

 Diagonal Coupling coefficients finished.               Storage:  15013677 words, CPU-Time:      5.65 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3894136 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.88719041    -0.00000000    -0.46174248  0.40D-01  0.37D-01     8.01
    1     2     2     1.00000000     0.00000000  -460.88719041    -0.00000000    -0.46166995  0.40D-01  0.37D-01     8.01
    1     3     3     1.00000000     0.00000000  -460.88719041     0.00000000    -0.46154486  0.40D-01  0.36D-01     8.01
    2     1     1     1.06658918    -0.43018284  -461.31737325    -0.43018284    -0.01150957  0.25D-02  0.13D-02    37.67
    2     2     2     1.06656312    -0.43013962  -461.31733003    -0.43013962    -0.01153343  0.25D-02  0.13D-02    37.67
    2     3     3     1.06651789    -0.43010138  -461.31729178    -0.43010138    -0.01154686  0.25D-02  0.13D-02    37.67
    3     1     1     1.06347522    -0.44165171  -461.32884212    -0.01146887    -0.00075691  0.48D-04  0.13D-03    66.95
    3     2     2     1.06345048    -0.44164158  -461.32883199    -0.01150196    -0.00076286  0.49D-04  0.13D-03    66.95
    3     3     3     1.06342395    -0.44163242  -461.32882282    -0.01153104    -0.00076859  0.49D-04  0.13D-03    66.95
    4     1     1     1.06775105    -0.44261727  -461.32980767    -0.00096556    -0.00006112  0.34D-05  0.10D-04    96.32
    4     2     2     1.06775083    -0.44261594  -461.32980634    -0.00097436    -0.00006185  0.35D-05  0.11D-04    96.32
    4     3     3     1.06774971    -0.44261473  -461.32980513    -0.00098231    -0.00006247  0.35D-05  0.11D-04    96.32
    5     1     1     1.06842428    -0.44269355  -461.32988395    -0.00007628    -0.00000634  0.39D-06  0.11D-05   125.29
    5     2     2     1.06842539    -0.44269320  -461.32988361    -0.00007727    -0.00000644  0.40D-06  0.11D-05   125.29
    5     3     3     1.06842628    -0.44269285  -461.32988326    -0.00007813    -0.00000655  0.41D-06  0.11D-05   125.29
    6     1     1     1.06826028    -0.44270120  -461.32989161    -0.00000766    -0.00000061  0.52D-07  0.92D-07   154.16
    6     2     2     1.06825929    -0.44270098  -461.32989139    -0.00000778    -0.00000062  0.52D-07  0.93D-07   154.16
    6     3     3     1.06825824    -0.44270077  -461.32989117    -0.00000791    -0.00000063  0.53D-07  0.95D-07   154.16
    7     1     1     1.06830287    -0.44270192  -461.32989232    -0.00000071    -0.00000007  0.52D-08  0.11D-07   182.84
    7     2     2     1.06830250    -0.44270171  -461.32989211    -0.00000072    -0.00000007  0.53D-08  0.11D-07   182.84
    7     3     3     1.06830222    -0.44270150  -461.32989191    -0.00000074    -0.00000007  0.54D-08  0.12D-07   182.84
    8     1     1     1.06831460    -0.44270200  -461.32989240    -0.00000008    -0.00000001  0.45D-09  0.15D-08   211.69
    8     2     2     1.06831435    -0.44270179  -461.32989220    -0.00000008    -0.00000001  0.46D-09  0.15D-08   211.69
    8     3     3     1.06831412    -0.44270159  -461.32989199    -0.00000008    -0.00000001  0.47D-09  0.15D-08   211.69
    9     1     1     1.06831541    -0.44270201  -461.32989241    -0.00000001    -0.00000000  0.82D-10  0.18D-09   240.49
    9     2     2     1.06831516    -0.44270180  -461.32989221    -0.00000001    -0.00000000  0.84D-10  0.18D-09   240.49
    9     3     3     1.06831491    -0.44270160  -461.32989200    -0.00000001    -0.00000000  0.86D-10  0.18D-09   240.49
   10     1     1     1.06831688    -0.44270201  -461.32989241    -0.00000000    -0.00000000  0.13D-10  0.21D-10   269.00
   10     2     2     1.06831665    -0.44270180  -461.32989221    -0.00000000    -0.00000000  0.13D-10  0.22D-10   269.00
   10     3     3     1.06831643    -0.44270160  -461.32989200    -0.00000000    -0.00000000  0.13D-10  0.22D-10   269.00
   11     1     1     1.06831710    -0.44270201  -461.32989241    -0.00000000    -0.00000000  0.12D-11  0.31D-11   297.44
   11     2     2     1.06831688    -0.44270180  -461.32989221    -0.00000000    -0.00000000  0.13D-11  0.32D-11   297.44
   11     3     3     1.06831666    -0.44270160  -461.32989200    -0.00000000    -0.00000000  0.13D-11  0.33D-11   297.44
   12     1     1     1.06831726    -0.44270201  -461.32989241    -0.00000000    -0.00000000  0.18D-12  0.45D-12   325.94
   12     2     2     1.06831703    -0.44270180  -461.32989221    -0.00000000    -0.00000000  0.19D-12  0.46D-12   325.94
   12     3     3     1.06831682    -0.44270160  -461.32989200    -0.00000000    -0.00000000  0.20D-12  0.47D-12   325.94
   13     1     1     1.06831732    -0.44270201  -461.32989241    -0.00000000    -0.00000000  0.33D-13  0.57D-13   354.43
   13     2     2     1.06831710    -0.44270180  -461.32989221    -0.00000000    -0.00000000  0.34D-13  0.58D-13   354.43
   13     3     3     1.06831689    -0.44270160  -461.32989200    -0.00000000    -0.00000000  0.34D-13  0.59D-13   354.43
   14     1     1     1.06831733    -0.44270201  -461.32989241    -0.00000000    -0.00000000  0.40D-14  0.83D-14   383.12
   14     2     2     1.06831711    -0.44270180  -461.32989221    -0.00000000    -0.00000000  0.41D-14  0.85D-14   383.12
   14     3     3     1.06831690    -0.44270160  -461.32989200     0.00000000    -0.00000000  0.42D-14  0.87D-14   383.12
   15     1     1     1.06831734    -0.44270201  -461.32989241    -0.00000000    -0.00000000  0.49D-15  0.13D-14   411.60
   15     2     2     1.06831712    -0.44270180  -461.32989221     0.00000000    -0.00000000  0.50D-15  0.13D-14   411.60
   15     3     3     1.06831691    -0.44270160  -461.32989200    -0.00000000    -0.00000000  0.52D-15  0.13D-14   411.60
   16     1     1     1.06831734    -0.44270201  -461.32989241     0.00000000    -0.00000000  0.84D-16  0.16D-15   439.84
   16     2     2     1.06831712    -0.44270180  -461.32989221     0.00000000    -0.00000000  0.86D-16  0.17D-15   439.84
   16     3     3     1.06831691    -0.44270160  -461.32989200     0.00000000    -0.00000000  0.88D-16  0.17D-15   439.84
   17     1     1     1.06831734    -0.44270201  -461.32989241    -0.00000000    -0.00000000  0.93D-17  0.21D-16   468.40
   17     2     2     1.06831712    -0.44270180  -461.32989221     0.00000000    -0.00000000  0.97D-17  0.22D-16   468.40
   17     3     3     1.06831691    -0.44270160  -461.32989200    -0.00000000    -0.00000000  0.10D-16  0.22D-16   468.40


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.0%
 S   2.1%  12.4%
 P   0.9%  66.8%  11.9%

 Initialization:   1.3%
 Other:            2.6%

 Total CPU:      468.4 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222/22000          -0.0002208  -0.0000216   0.9598511
 2202222/2000          -0.0000434   0.9598510   0.0000216
 22022222/000           0.9598509   0.0000434   0.0002208
 220222//2\00           0.0000030  -0.0664406  -0.0000015
 220222/2/\00          -0.0664405  -0.0000030  -0.0000153
 220222//20\0          -0.0000153  -0.0000015   0.0664405
 2202222//0\0          -0.0664403  -0.0000030  -0.0000153
 220222/2/00\          -0.0000153  -0.0000015   0.0664402
 2202222//00\          -0.0000030   0.0664401   0.0000015

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966842   -0.000044   -0.000222
 2           0.000044    0.966842   -0.000022
 3           0.000222    0.000022    0.966842

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966842    0.000000    0.000000
 2           0.000000    0.966842    0.000000
 3           0.000000    0.000000    0.966842


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96684171 (fixed)   0.96747788 (relaxed)   0.96684174 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00135701   -0.00057664   -0.34957129
 Singles      0.02320303   -0.06942863   -0.07450282
 Pairs        0.04520702    0.00008572   -0.01862790
 Total        1.06976706   -0.06991956   -0.44270201
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88719041
 Nuclear energy                         0.00000000
 Kinetic energy                       469.94972390
 One electron energy                 -636.63155999
 Two electron energy                  175.30166758
 Virial quotient                       -0.98165797
 Correlation energy                    -0.44270201
 !MRCI STATE 1.2 Energy              -461.329892413211

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36077843 (Davidson, fixed reference)
 Cluster corrected energies          -461.36015584 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36077843 (Davidson, rotated reference)

 Cluster corrected energies          -461.35773625 (Pople, fixed reference)
 Cluster corrected energies          -461.35714692 (Pople, relaxed reference)
 Cluster corrected energies          -461.35773625 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96684182 (fixed)   0.96747798 (relaxed)   0.96684182 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00135703   -0.00057664   -0.34949904
 Singles      0.02320288   -0.06942844   -0.07450259
 Pairs        0.04520695    0.00000838   -0.01870017
 Total        1.06976686   -0.06999671   -0.44270180
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88719041
 Nuclear energy                         0.00000000
 Kinetic energy                       469.94972421
 One electron energy                 -636.63156168
 Two electron energy                  175.30166947
 Virial quotient                       -0.98165797
 Correlation energy                    -0.44270180
 !MRCI STATE 2.2 Energy              -461.329892206800

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36077812 (Davidson, fixed reference)
 Cluster corrected energies          -461.36015552 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36077812 (Davidson, rotated reference)

 Cluster corrected energies          -461.35773595 (Pople, fixed reference)
 Cluster corrected energies          -461.35714661 (Pople, relaxed reference)
 Cluster corrected energies          -461.35773595 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96684188 (fixed)   0.96747807 (relaxed)   0.96684191 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00135705   -0.00057664   -0.00110064
 Singles      0.02320274   -0.06942825   -0.07450236
 Pairs        0.04520688   -0.37269669   -0.36709860
 Total        1.06976667   -0.44270159   -0.44270160
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88719041
 Nuclear energy                         0.00000000
 Kinetic energy                       469.94972457
 One electron energy                 -636.63156333
 Two electron energy                  175.30167132
 Virial quotient                       -0.98165797
 Correlation energy                    -0.44270160
 !MRCI STATE 3.2 Energy              -461.329892004875

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.36077782 (Davidson, fixed reference)
 Cluster corrected energies          -461.36015521 (Davidson, relaxed reference)
 Cluster corrected energies          -461.36077782 (Davidson, rotated reference)

 Cluster corrected energies          -461.35773565 (Pople, fixed reference)
 Cluster corrected energies          -461.35714631 (Pople, relaxed reference)
 Cluster corrected energies          -461.35773565 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       91.74       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       483.89    479.21      3.77      0.21      0.43
 REAL TIME  *       501.41 SEC
 DISK USED  *       123.70 MB (local),        1.50 GB (total)
 SF USED    *      1009.03 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -461.36077843  AU                              
 SETTING HLSDIAG(2)     =      -461.36077812  AU                              
 SETTING HLSDIAG(3)     =      -461.36077782  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-16  THRDEN = 1.00D-10

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

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
     1      -460.53860202
     2      -460.53860202
     3      -460.53860202
     4      -460.52782324
     5      -460.52782324
     6      -460.52782324
     7      -460.52782324
     8      -460.52782324

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1552D-06

 Number of blocks in overlap matrix:   172   Smallest eigenvalue:  0.16D-06
 Number of N-2 electron functions:    1089
 Number of N-1 electron functions:   97722

 Number of internal configurations:                25102
 Number of singly external configurations:       3030270
 Number of doubly external configurations:       1048452
 Total number of contracted configurations:      4103824
 Total number of uncontracted configurations:   87762772

 Diagonal Coupling coefficients finished.               Storage:  22381467 words, CPU-Time:     19.38 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   6479239 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.53860202    -0.00000000    -0.43192994  0.37D-01  0.29D-01    23.93
    1     2     2     1.00000000     0.00000000  -460.53860202     0.00000000    -0.43219789  0.37D-01  0.29D-01    23.93
    1     3     3     1.00000000     0.00000000  -460.53860202     0.00000000    -0.43225436  0.37D-01  0.29D-01    23.93
    1     4     4     1.00000000     0.00000000  -460.52782324    -0.00000000    -0.43461686  0.39D-01  0.30D-01    23.93
    1     5     5     1.00000000     0.00000000  -460.52782324     0.00000000    -0.43461920  0.39D-01  0.29D-01    23.93
    1     6     6     1.00000000     0.00000000  -460.52782324    -0.00000000    -0.43466772  0.39D-01  0.29D-01    23.93
    1     7     7     1.00000000     0.00000000  -460.52782324     0.00000000    -0.43878373  0.39D-01  0.32D-01    23.93
    1     8     8     1.00000000     0.00000000  -460.52782324     0.00000000    -0.43468860  0.39D-01  0.29D-01    23.93
    2     1     1     1.05848009    -0.40575593  -460.94435795    -0.40575593    -0.00846810  0.13D-02  0.10D-02   114.80
    2     2     2     1.05844907    -0.40575297  -460.94435499    -0.40575297    -0.00845598  0.13D-02  0.10D-02   114.80
    2     3     3     1.05832470    -0.40571936  -460.94432137    -0.40571936    -0.00844063  0.13D-02  0.11D-02   114.80
    2     4     4     1.06134593    -0.40774033  -460.93556357    -0.40774033    -0.00891821  0.14D-02  0.11D-02   114.80
    2     5     5     1.05985040    -0.40761931  -460.93544255    -0.40761931    -0.00874951  0.15D-02  0.11D-02   114.80
    2     6     6     1.05995034    -0.40729883  -460.93512207    -0.40729883    -0.00896415  0.16D-02  0.11D-02   114.80
    2     7     7     1.06002767    -0.40727491  -460.93509816    -0.40727491    -0.00899646  0.16D-02  0.11D-02   114.80
    2     8     8     1.06001995    -0.40726447  -460.93508771    -0.40726447    -0.00900485  0.16D-02  0.11D-02   114.80
    3     1     1     1.05538204    -0.41492761  -460.95352963    -0.00917168    -0.00073029  0.45D-04  0.12D-03   204.50
    3     2     2     1.05537428    -0.41492528  -460.95352730    -0.00917231    -0.00073194  0.45D-04  0.12D-03   204.50
    3     3     3     1.05533444    -0.41490966  -460.95351167    -0.00919030    -0.00074047  0.45D-04  0.12D-03   204.50
    3     4     4     1.05671077    -0.41706200  -460.94488525    -0.00932168    -0.00068576  0.53D-04  0.12D-03   204.50
    3     5     5     1.05649957    -0.41699307  -460.94481631    -0.00937376    -0.00074072  0.58D-04  0.12D-03   204.50
    3     6     6     1.05635317    -0.41689202  -460.94471526    -0.00959319    -0.00079007  0.62D-04  0.13D-03   204.50
    3     7     7     1.05634489    -0.41689114  -460.94471439    -0.00961623    -0.00078981  0.62D-04  0.13D-03   204.50
    3     8     8     1.05634676    -0.41689020  -460.94471344    -0.00962573    -0.00079180  0.62D-04  0.13D-03   204.50
    4     1     1     1.05992816    -0.41599039  -460.95459241    -0.00106278    -0.00007198  0.38D-05  0.11D-04   294.29
    4     2     2     1.05992700    -0.41599020  -460.95459222    -0.00106491    -0.00007207  0.38D-05  0.11D-04   294.29
    4     3     3     1.05993692    -0.41598942  -460.95459144    -0.00107976    -0.00007263  0.38D-05  0.11D-04   294.29
    4     4     4     1.06103385    -0.41806415  -460.94588739    -0.00100214    -0.00007174  0.45D-05  0.11D-04   294.29
    4     5     5     1.06109040    -0.41805999  -460.94588323    -0.00106692    -0.00007453  0.46D-05  0.12D-04   294.29
    4     6     6     1.06107981    -0.41804542  -460.94586866    -0.00115340    -0.00008495  0.53D-05  0.13D-04   294.29
    4     7     7     1.06107419    -0.41804536  -460.94586861    -0.00115422    -0.00008477  0.53D-05  0.13D-04   294.29
    4     8     8     1.06107256    -0.41804530  -460.94586855    -0.00115510    -0.00008487  0.54D-05  0.13D-04   294.29
    5     1     1     1.06013629    -0.41608542  -460.95468744    -0.00009503    -0.00000820  0.75D-06  0.12D-05   385.37
    5     2     2     1.06013723    -0.41608540  -460.95468742    -0.00009520    -0.00000821  0.76D-06  0.12D-05   385.37
    5     3     3     1.06013234    -0.41608539  -460.95468741    -0.00009597    -0.00000826  0.76D-06  0.12D-05   385.37
    5     4     4     1.06140351    -0.41815719  -460.94598043    -0.00009304    -0.00000866  0.92D-06  0.12D-05   385.37
    5     5     5     1.06139972    -0.41815716  -460.94598040    -0.00009717    -0.00000874  0.94D-06  0.13D-05   385.37
    5     6     6     1.06139591    -0.41815602  -460.94597927    -0.00011060    -0.00001007  0.11D-05  0.14D-05   385.37
    5     7     7     1.06139743    -0.41815589  -460.94597913    -0.00011053    -0.00001005  0.11D-05  0.14D-05   385.37
    5     8     8     1.06139753    -0.41815582  -460.94597907    -0.00011052    -0.00001010  0.11D-05  0.14D-05   385.37
    6     1     1     1.05994567    -0.41609542  -460.95469743    -0.00000999    -0.00000098  0.75D-07  0.15D-06   476.54
    6     2     2     1.05994725    -0.41609539  -460.95469741    -0.00000999    -0.00000098  0.74D-07  0.15D-06   476.54
    6     3     3     1.05994725    -0.41609539  -460.95469740    -0.00001000    -0.00000098  0.74D-07  0.15D-06   476.54
    6     4     4     1.06118406    -0.41816830  -460.94599155    -0.00001111    -0.00000122  0.92D-07  0.18D-06   476.54
    6     5     5     1.06119344    -0.41816822  -460.94599146    -0.00001106    -0.00000115  0.84D-07  0.17D-06   476.54
    6     6     6     1.06118497    -0.41816817  -460.94599141    -0.00001215    -0.00000122  0.92D-07  0.18D-06   476.54
    6     7     7     1.06118476    -0.41816816  -460.94599140    -0.00001227    -0.00000123  0.93D-07  0.18D-06   476.54
    6     8     8     1.06120374    -0.41816792  -460.94599116    -0.00001210    -0.00000118  0.82D-07  0.18D-06   476.54
    7     1     1     1.06003329    -0.41609668  -460.95469870    -0.00000126    -0.00000017  0.11D-07  0.26D-07   566.95
    7     2     2     1.06003303    -0.41609665  -460.95469867    -0.00000126    -0.00000017  0.11D-07  0.26D-07   566.95
    7     3     3     1.06003319    -0.41609665  -460.95469867    -0.00000126    -0.00000017  0.11D-07  0.26D-07   566.95
    7     4     4     1.06129239    -0.41816990  -460.94599315    -0.00000160    -0.00000022  0.16D-07  0.33D-07   566.95
    7     5     5     1.06129234    -0.41816977  -460.94599302    -0.00000156    -0.00000022  0.16D-07  0.33D-07   566.95
    7     6     6     1.06129248    -0.41816977  -460.94599301    -0.00000160    -0.00000022  0.16D-07  0.33D-07   566.95
    7     7     7     1.06129645    -0.41816974  -460.94599298    -0.00000157    -0.00000022  0.14D-07  0.34D-07   566.95
    7     8     8     1.06129597    -0.41816950  -460.94599274    -0.00000158    -0.00000022  0.15D-07  0.33D-07   566.95
    8     1     1     1.06005166    -0.41609691  -460.95469893    -0.00000023    -0.00000004  0.31D-08  0.52D-08   656.05
    8     2     2     1.06005153    -0.41609688  -460.95469890    -0.00000023    -0.00000004  0.31D-08  0.52D-08   656.05
    8     3     3     1.06005153    -0.41609688  -460.95469890    -0.00000023    -0.00000004  0.31D-08  0.52D-08   656.05
    8     4     4     1.06131370    -0.41817019  -460.94599344    -0.00000029    -0.00000005  0.62D-08  0.58D-08   656.05
    8     5     5     1.06131322    -0.41817006  -460.94599331    -0.00000029    -0.00000005  0.61D-08  0.59D-08   656.05
    8     6     6     1.06131326    -0.41817006  -460.94599330    -0.00000029    -0.00000005  0.60D-08  0.59D-08   656.05
    8     7     7     1.06131476    -0.41817001  -460.94599326    -0.00000028    -0.00000005  0.54D-08  0.72D-08   656.05
    8     8     8     1.06131302    -0.41816978  -460.94599302    -0.00000028    -0.00000004  0.55D-08  0.60D-08   656.05
    9     1     1     1.06004622    -0.41609696  -460.95469897    -0.00000005    -0.00000001  0.77D-09  0.10D-08   745.81
    9     2     2     1.06004621    -0.41609693  -460.95469894    -0.00000004    -0.00000001  0.76D-09  0.10D-08   745.81
    9     3     3     1.06004618    -0.41609692  -460.95469894    -0.00000004    -0.00000001  0.76D-09  0.10D-08   745.81
    9     4     4     1.06131005    -0.41817025  -460.94599349    -0.00000005    -0.00000001  0.79D-09  0.13D-08   745.81
    9     5     5     1.06130980    -0.41817012  -460.94599336    -0.00000005    -0.00000001  0.79D-09  0.13D-08   745.81
    9     6     6     1.06130979    -0.41817011  -460.94599336    -0.00000005    -0.00000001  0.78D-09  0.13D-08   745.81
    9     7     7     1.06131004    -0.41817007  -460.94599331    -0.00000005    -0.00000001  0.67D-09  0.18D-08   745.81
    9     8     8     1.06130956    -0.41816983  -460.94599307    -0.00000005    -0.00000001  0.75D-09  0.14D-08   745.81
   10     1     1     1.06004873    -0.41609697  -460.95469898    -0.00000001    -0.00000000  0.13D-09  0.27D-09   835.95
   10     2     2     1.06004869    -0.41609694  -460.95469895    -0.00000001    -0.00000000  0.13D-09  0.26D-09   835.95
   10     3     3     1.06004868    -0.41609693  -460.95469895    -0.00000001    -0.00000000  0.13D-09  0.27D-09   835.95
   10     4     4     1.06131414    -0.41817026  -460.94599350    -0.00000001    -0.00000000  0.16D-09  0.31D-09   835.95
   10     5     5     1.06131397    -0.41817013  -460.94599337    -0.00000001    -0.00000000  0.17D-09  0.32D-09   835.95
   10     6     6     1.06131396    -0.41817012  -460.94599337    -0.00000001    -0.00000000  0.16D-09  0.33D-09   835.95
   10     7     7     1.06131340    -0.41817008  -460.94599332    -0.00000001    -0.00000000  0.17D-09  0.48D-09   835.95
   10     8     8     1.06131366    -0.41816984  -460.94599308    -0.00000001    -0.00000000  0.17D-09  0.34D-09   835.95
   11     1     1     1.06004926    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.33D-10  0.73D-10   925.29
   11     2     2     1.06004921    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.32D-10  0.69D-10   925.29
   11     3     3     1.06004920    -0.41609693  -460.95469895    -0.00000000    -0.00000000  0.33D-10  0.70D-10   925.29
   11     4     4     1.06131465    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.69D-10  0.73D-10   925.29
   11     5     5     1.06131449    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.71D-10  0.79D-10   925.29
   11     6     6     1.06131449    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.71D-10  0.80D-10   925.29
   11     7     7     1.06131461    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.92D-10  0.10D-09   925.29
   11     8     8     1.06131424    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.68D-10  0.85D-10   925.29
   12     1     1     1.06004908    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.10D-10  0.15D-10  1014.71
   12     2     2     1.06004906    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.99D-11  0.15D-10  1014.71
   12     3     3     1.06004906    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.10D-10  0.15D-10  1014.71
   12     4     4     1.06131486    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.14D-10  0.19D-10  1014.71
   12     5     5     1.06131468    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.14D-10  0.20D-10  1014.71
   12     6     6     1.06131467    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.14D-10  0.20D-10  1014.71
   12     7     7     1.06131459    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.15D-10  0.27D-10  1014.71
   12     8     8     1.06131443    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.14D-10  0.22D-10  1014.71
   13     1     1     1.06004925    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.19D-11  0.36D-11  1103.81
   13     2     2     1.06004922    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.19D-11  0.34D-11  1103.81
   13     3     3     1.06004922    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.20D-11  0.34D-11  1103.81
   13     4     4     1.06131518    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.32D-11  0.52D-11  1103.81
   13     5     5     1.06131502    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.34D-11  0.56D-11  1103.81
   13     6     6     1.06131502    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.33D-11  0.56D-11  1103.81
   13     7     7     1.06131499    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.28D-11  0.12D-10  1103.81
   13     8     8     1.06131479    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.34D-11  0.64D-11  1103.81
   14     1     1     1.06004927    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.48D-12  0.10D-11  1193.37
   14     2     2     1.06004924    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.46D-12  0.97D-12  1193.37
   14     3     3     1.06004924    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.46D-12  0.99D-12  1193.37
   14     4     4     1.06131514    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.13D-11  0.15D-11  1193.37
   14     5     5     1.06131498    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.14D-11  0.16D-11  1193.37
   14     6     6     1.06131497    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.14D-11  0.17D-11  1193.37
   14     7     7     1.06131504    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.15D-11  0.38D-11  1193.37
   14     8     8     1.06131475    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.14D-11  0.18D-11  1193.37
   15     1     1     1.06004928    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.12D-12  0.28D-12  1281.87
   15     2     2     1.06004926    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.11D-12  0.27D-12  1281.87
   15     3     3     1.06004925    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.11D-12  0.28D-12  1281.87
   15     4     4     1.06131520    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.31D-12  0.43D-12  1281.87
   15     5     5     1.06131503    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.31D-12  0.50D-12  1281.87
   15     6     6     1.06131502    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.30D-12  0.52D-12  1281.87
   15     7     7     1.06131502    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.43D-12  0.87D-12  1281.87
   15     8     8     1.06131480    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.30D-12  0.55D-12  1281.87
   16     1     1     1.06004930    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.28D-13  0.76D-13  1371.12
   16     2     2     1.06004927    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.28D-13  0.68D-13  1371.12
   16     3     3     1.06004927    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.30D-13  0.69D-13  1371.12
   16     4     4     1.06131523    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.76D-13  0.13D-12  1371.12
   16     5     5     1.06131507    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.77D-13  0.16D-12  1371.12
   16     6     6     1.06131507    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.77D-13  0.16D-12  1371.12
   16     7     7     1.06131510    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.92D-13  0.39D-12  1371.12
   16     8     8     1.06131485    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.71D-13  0.21D-12  1371.12
   17     1     1     1.06004930    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.74D-14  0.23D-13  1459.74
   17     2     2     1.06004927    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.74D-14  0.19D-13  1459.74
   17     3     3     1.06004927    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.78D-14  0.18D-13  1459.74
   17     4     4     1.06131522    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.30D-13  0.36D-13  1459.74
   17     5     5     1.06131506    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.34D-13  0.45D-13  1459.74
   17     6     6     1.06131506    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.35D-13  0.46D-13  1459.74
   17     7     7     1.06131510    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.30D-13  0.16D-12  1459.74
   17     8     8     1.06131484    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.35D-13  0.61D-13  1459.74
   18     1     1     1.06004930    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.22D-14  0.55D-14  1550.21
   18     2     2     1.06004928    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.19D-14  0.48D-14  1550.21
   18     3     3     1.06004927    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.18D-14  0.50D-14  1550.21
   18     4     4     1.06131523    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.77D-14  0.11D-13  1550.21
   18     5     5     1.06131507    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.83D-14  0.13D-13  1550.21
   18     6     6     1.06131506    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.80D-14  0.14D-13  1550.21
   18     7     7     1.06131509    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.14D-13  0.41D-13  1550.21
   18     8     8     1.06131484    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.92D-14  0.16D-13  1550.21
   19     1     1     1.06004930    -0.41609697  -460.95469899     0.00000000    -0.00000000  0.50D-15  0.14D-14  1640.69
   19     2     2     1.06004928    -0.41609694  -460.95469896     0.00000000    -0.00000000  0.42D-15  0.13D-14  1640.69
   19     3     3     1.06004927    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.41D-15  0.15D-14  1640.69
   19     4     4     1.06131523    -0.41817026  -460.94599351     0.00000000    -0.00000000  0.17D-14  0.35D-14  1640.69
   19     5     5     1.06131507    -0.41817013  -460.94599337     0.00000000    -0.00000000  0.17D-14  0.48D-14  1640.69
   19     6     6     1.06131507    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.16D-14  0.53D-14  1640.69
   19     7     7     1.06131510    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.29D-14  0.16D-13  1640.69
   19     8     8     1.06131485    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.19D-14  0.61D-14  1640.69
   20     1     1     1.06004931    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.81D-16  0.55D-15  1728.28
   20     2     2     1.06004928    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.86D-16  0.43D-15  1728.28
   20     3     3     1.06004927    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.10D-15  0.44D-15  1728.28
   20     4     4     1.06131523    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.61D-15  0.95D-15  1728.28
   20     5     5     1.06131507    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.64D-15  0.16D-14  1728.28
   20     6     6     1.06131507    -0.41817013  -460.94599337     0.00000000    -0.00000000  0.68D-15  0.17D-14  1728.28
   20     7     7     1.06131511    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.92D-15  0.73D-14  1728.28
   20     8     8     1.06131485    -0.41816984  -460.94599309     0.00000000    -0.00000000  0.62D-15  0.25D-14  1728.28
   21     1     1     1.06004931    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.37D-16  0.14D-15  1817.16
   21     2     2     1.06004928    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.31D-16  0.97D-16  1817.16
   21     3     3     1.06004927    -0.41609694  -460.95469895     0.00000000    -0.00000000  0.30D-16  0.99D-16  1817.16
   21     4     4     1.06131523    -0.41817026  -460.94599351     0.00000000    -0.00000000  0.19D-15  0.27D-15  1817.16
   21     5     5     1.06131507    -0.41817013  -460.94599337     0.00000000    -0.00000000  0.21D-15  0.42D-15  1817.16
   21     6     6     1.06131507    -0.41817013  -460.94599337     0.00000000    -0.00000000  0.21D-15  0.44D-15  1817.16
   21     7     7     1.06131511    -0.41817008  -460.94599333     0.00000000    -0.00000000  0.48D-15  0.23D-14  1817.16
   21     8     8     1.06131485    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.24D-15  0.66D-15  1817.16
   22     1     1     1.06004931    -0.41609697  -460.95469899     0.00000000    -0.00000000  0.78D-17  0.29D-16  1907.42
   22     2     2     1.06004928    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.49D-17  0.25D-16  1907.42
   22     3     3     1.06004927    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.46D-17  0.28D-16  1907.42
   22     4     4     1.06131523    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.38D-16  0.79D-16  1907.42
   22     5     5     1.06131507    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.35D-16  0.13D-15  1907.42
   22     6     6     1.06131507    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.30D-16  0.16D-15  1907.42
   22     7     7     1.06131511    -0.41817008  -460.94599333     0.00000000    -0.00000000  0.82D-16  0.68D-15  1907.42
   22     8     8     1.06131485    -0.41816984  -460.94599309     0.00000000    -0.00000000  0.51D-16  0.19D-15  1907.42
   23     1     1     1.06004931    -0.41609697  -460.95469899    -0.00000000    -0.00000000  0.77D-17  0.29D-16  1982.14
   23     2     2     1.06004928    -0.41609694  -460.95469896     0.00000000    -0.00000000  0.46D-17  0.23D-16  1982.14
   23     3     3     1.06004927    -0.41609694  -460.95469895    -0.00000000    -0.00000000  0.49D-17  0.22D-16  1982.14
   23     4     4     1.06131523    -0.41817026  -460.94599351    -0.00000000    -0.00000000  0.64D-17  0.27D-16  1982.14
   23     5     5     1.06131507    -0.41817013  -460.94599337     0.00000000    -0.00000000  0.75D-17  0.61D-16  1982.14
   23     6     6     1.06131507    -0.41817013  -460.94599337     0.00000000    -0.00000000  0.11D-16  0.53D-16  1982.14
   23     7     7     1.06131511    -0.41817008  -460.94599333    -0.00000000    -0.00000000  0.45D-16  0.14D-15  1982.14
   23     8     8     1.06131485    -0.41816984  -460.94599309    -0.00000000    -0.00000000  0.11D-16  0.50D-16  1982.14
   24     1     1     1.06004931    -0.41609697  -460.95469899     0.00000000    -0.00000000  0.77D-17  0.29D-16  2038.45
   24     2     2     1.06004928    -0.41609694  -460.95469896    -0.00000000    -0.00000000  0.46D-17  0.23D-16  2038.45
   24     3     3     1.06004927    -0.41609694  -460.95469895     0.00000000    -0.00000000  0.49D-17  0.22D-16  2038.45
   24     4     4     1.06131523    -0.41817026  -460.94599351     0.00000000    -0.00000000  0.64D-17  0.27D-16  2038.45
   24     5     5     1.06131507    -0.41817013  -460.94599337    -0.00000000    -0.00000000  0.75D-17  0.61D-16  2038.45
   24     6     6     1.06131507    -0.41817013  -460.94599337     0.00000000    -0.00000000  0.11D-16  0.53D-16  2038.45
   24     7     7     1.06131511    -0.41817008  -460.94599333     0.00000000    -0.00000000  0.22D-17  0.14D-16  2038.45
   24     8     8     1.06131485    -0.41816984  -460.94599309     0.00000000    -0.00000000  0.11D-16  0.50D-16  2038.45


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.2%
 S   1.2%   9.4%
 P   0.8%  63.1%  18.3%

 Initialization:   1.0%
 Other:            4.9%

 Total CPU:     2038.5 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222//200/           0.0000000   0.0000001   0.0000000   0.0004695  -0.0009490   0.0002407  -0.0163821   0.7897609
 2202222///00          -0.0000001  -0.0000000  -0.0000000  -0.0002970   0.0138336  -0.0083015   0.6919650  -0.3806784
 220222/2//00           0.6843271   0.0002437   0.0015936  -0.6841002  -0.0007186   0.0002207  -0.0000539   0.0004046
 2202222//0/0           0.6843270   0.0002436   0.0015937   0.6841003   0.0007187  -0.0002207   0.0000541  -0.0004046
 220222/2/0/0          -0.0000001   0.0000001   0.0000000   0.0001725   0.0128846  -0.0080608   0.6755829   0.4090826
 220222//2/00           0.0006763  -0.6574559  -0.1898895  -0.0007488   0.6408587  -0.2388636  -0.0153895   0.0005242
 2202222//00/          -0.0006763   0.6574550   0.1898893  -0.0007488   0.6408595  -0.2388639  -0.0153896   0.0005240
 220222//20/0          -0.0014635  -0.1898906   0.6574543   0.0000443  -0.2389850  -0.6409917  -0.0029970  -0.0001540
 220222/2/00/          -0.0014635  -0.1898903   0.6574534  -0.0000444   0.2389853   0.6409927   0.0029970   0.0001541

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971182   -0.000960   -0.002077   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2           0.000346    0.933047   -0.269488    0.000000   -0.000000   -0.000001    0.000000    0.000000
 3           0.002262    0.269487    0.933044    0.000000    0.000000   -0.000000    0.000000   -0.000001
 4           0.000000    0.000000   -0.000000   -0.000088    0.970608   -0.001062    0.000577   -0.000063
 5           0.000000    0.000001    0.000000    0.018954    0.001020    0.909257   -0.001166    0.339075
 6           0.000000   -0.000000    0.000001   -0.011608   -0.000313   -0.338902    0.000296    0.909446
 7           0.000000   -0.000000    0.000000    0.970145    0.000077   -0.021835   -0.020141    0.004252
 8          -0.000000   -0.000000    0.000000    0.020162   -0.000574    0.000744    0.970399    0.000219

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971185    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.971185    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.971185   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.970609    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.970609   -0.000000   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.970609    0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970609   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.970609


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.97118225 (fixed)   0.97123893 (relaxed)   0.97118494 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016132   -0.00070902   -0.32103266
 Singles      0.02518679   -0.07579875   -0.08137828
 Pairs        0.03487220    0.00000001   -0.01368603
 Total        1.06022031   -0.07650777   -0.41609697
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.53860202
 Nuclear energy                         0.00000000
 Kinetic energy                       469.53990386
 One electron energy                 -632.14885649
 Two electron energy                  171.19415750
 Virial quotient                       -0.98171571
 Correlation energy                    -0.41609697
 !MRCI STATE 1.2 Energy              -460.954698986278

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97975647 (Davidson, fixed reference)
 Cluster corrected energies          -460.97970743 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97975647 (Davidson, rotated reference)

 Cluster corrected energies          -460.97644173 (Pople, fixed reference)
 Cluster corrected energies          -460.97639744 (Pople, relaxed reference)
 Cluster corrected energies          -460.97644173 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.93304667 (fixed)   0.97123894 (relaxed)   0.97118495 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016132   -0.00070902   -0.32103259
 Singles      0.02518677   -0.07579872   -0.08137824
 Pairs        0.03487220   -0.00000008   -0.01368611
 Total        1.06022029   -0.07650782   -0.41609694
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.53860202
 Nuclear energy                         0.00000000
 Kinetic energy                       469.53990357
 One electron energy                 -632.14885755
 Two electron energy                  171.19415859
 Virial quotient                       -0.98171571
 Correlation energy                    -0.41609694
 !MRCI STATE 2.2 Energy              -460.954698956342

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97975643 (Davidson, fixed reference)
 Cluster corrected energies          -460.97970739 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97975643 (Davidson, rotated reference)

 Cluster corrected energies          -460.97644169 (Pople, fixed reference)
 Cluster corrected energies          -460.97639740 (Pople, relaxed reference)
 Cluster corrected energies          -460.97644169 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.93304442 (fixed)   0.97123895 (relaxed)   0.97118495 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016132   -0.00070902   -0.32103289
 Singles      0.02518676   -0.07579872   -0.08137823
 Pairs        0.03487220    0.00000024   -0.01368581
 Total        1.06022029   -0.07650750   -0.41609694
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.53860202
 Nuclear energy                         0.00000000
 Kinetic energy                       469.53990348
 One electron energy                 -632.14885763
 Two electron energy                  171.19415868
 Virial quotient                       -0.98171571
 Correlation energy                    -0.41609694
 !MRCI STATE 3.2 Energy              -460.954698953000

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97975643 (Davidson, fixed reference)
 Cluster corrected energies          -460.97970738 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97975643 (Davidson, rotated reference)

 Cluster corrected energies          -460.97644168 (Pople, fixed reference)
 Cluster corrected energies          -460.97639740 (Pople, relaxed reference)
 Cluster corrected energies          -460.97644168 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97060809 (fixed)   0.97065971 (relaxed)   0.97060884 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015454   -0.00070275   -0.32131098
 Singles      0.02608139   -0.07719202   -0.08299595
 Pairs        0.03524332    0.00002208   -0.01386332
 Total        1.06147926   -0.07787270   -0.41817026
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.52782324
 Nuclear energy                         0.00000000
 Kinetic energy                       469.55208086
 One electron energy                 -632.15719598
 Two electron energy                  171.21120248
 Virial quotient                       -0.98167171
 Correlation energy                    -0.41817026
 !MRCI STATE 4.2 Energy              -460.945993505871

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97170230 (Davidson, fixed reference)
 Cluster corrected energies          -460.97165578 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97170230 (Davidson, rotated reference)

 Cluster corrected energies          -460.96832038 (Pople, fixed reference)
 Cluster corrected energies          -460.96827831 (Pople, relaxed reference)
 Cluster corrected energies          -460.96832038 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.90925711 (fixed)   0.97065978 (relaxed)   0.97060892 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015455   -0.00070275   -0.20930260
 Singles      0.02608126   -0.07719188   -0.08299578
 Pairs        0.03524329   -0.11887254   -0.12587175
 Total        1.06147910   -0.19676717   -0.41817013
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.52782324
 Nuclear energy                         0.00000000
 Kinetic energy                       469.55208056
 One electron energy                 -632.15719638
 Two electron energy                  171.21120300
 Virial quotient                       -0.98167171
 Correlation energy                    -0.41817013
 !MRCI STATE 5.2 Energy              -460.945993374604

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97170210 (Davidson, fixed reference)
 Cluster corrected energies          -460.97165558 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97170210 (Davidson, rotated reference)

 Cluster corrected energies          -460.96832018 (Pople, fixed reference)
 Cluster corrected energies          -460.96827811 (Pople, relaxed reference)
 Cluster corrected energies          -460.96832018 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.90944600 (fixed)   0.97065978 (relaxed)   0.97060892 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015455   -0.00070275   -0.02092348
 Singles      0.02608126   -0.07719187   -0.08299577
 Pairs        0.03524329   -0.31883304   -0.31425087
 Total        1.06147909   -0.39672767   -0.41817013
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.52782324
 Nuclear energy                         0.00000000
 Kinetic energy                       469.55208070
 One electron energy                 -632.15719654
 Two electron energy                  171.21120317
 Virial quotient                       -0.98167171
 Correlation energy                    -0.41817013
 !MRCI STATE 6.2 Energy              -460.945993370006

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97170209 (Davidson, fixed reference)
 Cluster corrected energies          -460.97165557 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97170209 (Davidson, rotated reference)

 Cluster corrected energies          -460.96832018 (Pople, fixed reference)
 Cluster corrected energies          -460.96827810 (Pople, relaxed reference)
 Cluster corrected energies          -460.96832018 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97014490 (fixed)   0.97065977 (relaxed)   0.97060890 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015455   -0.00070271   -0.31988584
 Singles      0.02608125   -0.07719186   -0.08299575
 Pairs        0.03524333   -0.00149071   -0.01528850
 Total        1.06147913   -0.07938528   -0.41817008
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.52782324
 Nuclear energy                         0.00000000
 Kinetic energy                       469.55208035
 One electron energy                 -632.15719741
 Two electron energy                  171.21120408
 Virial quotient                       -0.98167171
 Correlation energy                    -0.41817008
 !MRCI STATE 7.2 Energy              -460.945993328012

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97170206 (Davidson, fixed reference)
 Cluster corrected energies          -460.97165554 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97170206 (Davidson, rotated reference)

 Cluster corrected energies          -460.96832015 (Pople, fixed reference)
 Cluster corrected energies          -460.96827807 (Pople, relaxed reference)
 Cluster corrected energies          -460.96832015 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.97039910 (fixed)   0.97065989 (relaxed)   0.97060902 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015455   -0.00070271   -0.32121813
 Singles      0.02608104   -0.07719159   -0.08299543
 Pairs        0.03524329   -0.00007662   -0.01395628
 Total        1.06147888   -0.07797092   -0.41816984
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.52782324
 Nuclear energy                         0.00000000
 Kinetic energy                       469.55208028
 One electron energy                 -632.15720057
 Two electron energy                  171.21120748
 Virial quotient                       -0.98167171
 Correlation energy                    -0.41816984
 !MRCI STATE 8.2 Energy              -460.945993088073

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -460.97170170 (Davidson, fixed reference)
 Cluster corrected energies          -460.97165518 (Davidson, relaxed reference)
 Cluster corrected energies          -460.97170170 (Davidson, rotated reference)

 Cluster corrected energies          -460.96831980 (Pople, fixed reference)
 Cluster corrected energies          -460.96827772 (Pople, relaxed reference)
 Cluster corrected energies          -460.96831980 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.88       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      347.14       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2673.54   2189.65    479.21      3.77      0.21      0.43
 REAL TIME  *      2752.59 SEC
 DISK USED  *       379.10 MB (local),        4.49 GB (total)
 SF USED    *         2.70 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -460.97975647  AU                              
 SETTING HLSDIAG(5)     =      -460.97975643  AU                              
 SETTING HLSDIAG(6)     =      -460.97975643  AU                              
 SETTING HLSDIAG(7)     =      -460.97170230  AU                              
 SETTING HLSDIAG(8)     =      -460.97170210  AU                              
 SETTING HLSDIAG(9)     =      -460.97170209  AU                              
 SETTING HLSDIAG(10)    =      -460.97170206  AU                              
 SETTING HLSDIAG(11)    =      -460.97170170  AU                              


         HLSDIAG
    -461.3607784
    -461.3607781
    -461.3607778
    -460.9797565
    -460.9797564
    -460.9797564
    -460.9717023
    -460.9717021
    -460.9717021
    -460.9717021
    -460.9717017
                                                  

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

 Time for Seward_LS:       0.64 sec

 CPU time:      0.64 sec, REAL time:      0.70 sec


 SORTLS1 read     2508015. and wrote     2508015. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     2508015. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    33.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    33.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       31.91       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      347.14       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2675.20      1.61   2189.65    479.21      3.77      0.21      0.43
 REAL TIME  *      2754.39 SEC
 DISK USED  *       379.13 MB (local),        4.68 GB (total)
 SF USED    *         2.70 GB
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

 Original energies:   -461.329892   -461.329892   -461.329892
 Replaced energies:   -461.360778   -461.360778   -461.360778

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -460.954699   -460.954699   -460.954699   -460.945994   -460.945993   -460.945993   -460.945993   -460.945993
 Replaced energies:   -460.979756   -460.979756   -460.979756   -460.971702   -460.971702   -460.971702   -460.971702   -460.971702

 >>> Fock matrix approximation error in all internal so: 
   2.4296700695103878E-002  (exact)    2.4758755113365880E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.1227946949052927E-002  (exact)   -1.1312846430246883E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.6548446006873236E-003  (exact)   -2.6765020806788116E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.1525075792375583       (exact)    3.2124581507698697       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   10.915708787917209       (exact)    10.998254098078352       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.3239537904524765E-004  (exact)   -2.2849103985375164E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -10.915783670548800       (exact)   -11.123356289079585       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.1524599334665213       (exact)    3.1762960195559620       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.5257102657316421E-003  (exact)   -8.6841337501075404E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.0520097068486598E-004  (exact)   -8.1938602091095761E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.3589336120929408E-002  (exact)    1.3686802262919314E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.9714340938610467E-002  (exact)    2.0050191533514283E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3382689996471413       (exact)    4.4148202357187065       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -11.632445095673685       (exact)   -11.715901046610574       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.8962832339529304E-003  (exact)   -5.9938787959210593E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   11.635053195038088       (exact)    11.840368710550928       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.3359940673135489       (exact)    4.3671054019280584       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.29772583716459738       (exact)   0.30325130339680761       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4407474647627532E-002  (exact)    5.5367640936071612E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.27941173053447355       (exact)   0.28141715309194854       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -14.335829919224267       (exact)   -14.602271629501990       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1486873427449390E-003  (exact)    2.1859935683656768E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.2808669124924968E-002  (exact)   -1.2938219145994023E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.6911016586359731E-002  (exact)    2.7393182252910760E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.5829674607728614E-004  (exact)    2.6028537600649966E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -11.361861639746664       (exact)   -11.447812472338279       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.1527549796872933       (exact)    3.2127528907235514       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4253047201341501E-004  (exact)    1.4518889756545570E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.3212414559737500E-003  (exact)   -3.3380436772632175E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -10.915714549632085       (exact)   -11.123444052242027       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9218207981179321E-004  (exact)   -5.0156862370975667E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.8967307270239068E-002  (exact)   -2.9215262293866034E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.0473838548194121E-003  (exact)   -2.0536171010437760E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.4110558105366409E-003  (exact)   -3.4705164193989798E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   12.416726022621555       (exact)    12.505828508439507       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.3380113719935478       (exact)   -4.4145001385367655       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.23408235557935544       (exact)  -0.23846518557107477       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2041227218709077E-002  (exact)    1.2117131130469468E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -11.635189350350121       (exact)   -11.840343697899975       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.14579828164164449       (exact)   0.14852796550735284       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6771541839558560E-003  (exact)   -6.7530172799474542E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.3847048497598679E-002  (exact)   -5.4795891530323805E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -12.263478847018902       (exact)   -12.493021980184192       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.8903542296380228E-004  (exact)    6.9069958988457274E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.4592398576764522E-003  (exact)   -2.5023459408444128E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.4252876916828097       (exact)   -7.5623054183449154       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.5122377675587420E-003  (exact)   -7.5680178567192518E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.3558749940239275E-002  (exact)   -1.3809961621239018E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   13.119582373445345       (exact)    13.218986094377369       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8953410999660561E-004  (exact)    2.9166710329895577E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   12.604518875424162       (exact)    12.844362547664195       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.2403255980138395E-003  (exact)    5.2865439995625962E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8983601420985126E-003  (exact)    2.9535200247601794E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.6404953009000454       (exact)    3.7097680717240795       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.0718410365182167E-002  (exact)    3.0953037827585253E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.3770167710713658E-004  (exact)    8.5363261976584422E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.6339233686388056E-002  (exact)   -1.6620576732366200E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   14.337621200817336       (exact)    14.440345091852944       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.9058752766301082E-003  (exact)   -6.0201088223541897E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   13.431513006929602       (exact)    13.668356794488455       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.5661626443426047E-002  (exact)    1.5780116107752890E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.29304572658109901       (exact)   0.29852556048744622       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.0062364239893613       (exact)   -5.0945135845278378       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.8496247736129336E-003  (exact)   -4.8867008964500625E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.17515419960641002       (exact)  -0.17843024767575993       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.32588011548070367       (exact)  -0.33163009694337264       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.9291131268366551E-004  (exact)    7.9467458318815054E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   14.503845041912705       (exact)    14.775223839495002       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2817184455662850E-002  (exact)    1.3045168762158950E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.3009269104410612E-003  (exact)   -8.3583217889525285E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.9786399588977179       (exact)   -8.1279389276514991       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -461.36077843

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.01    -299.96      -0.17     -19.91      68.93       0.01
                            0.00     299.96       0.01      -0.00       0.07      -0.01       0.00       0.02       0.00       0.05

    2   2.2  0.5  0.5       0.00       0.07       0.00      -0.01       0.00      -0.01      -0.00      -0.00       0.00       0.02
                         -299.96       0.00      -0.07      -0.07       0.00     299.96      -0.15     -19.90      68.91       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.13     299.96       0.01       0.00      71.62       0.02       0.18     -76.40
                           -0.01       0.07       0.00       0.01    -299.96       0.00       0.07     -68.91     -19.90      -0.08

    4   1.2  0.5 -0.5       0.00      -0.01     299.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.07      -0.01      -0.00    -299.96      -0.01       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5       0.01       0.00       0.01       0.00       0.07       0.00       0.00       0.00       0.00       0.00
                           -0.07      -0.00     299.96     299.96      -0.00       0.07       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5    -299.96      -0.01       0.00       0.00       0.00       0.13       0.00       0.00       0.00       0.00
                            0.01    -299.96      -0.00       0.01      -0.07      -0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5      -0.17      -0.00      71.62       0.00       0.00       0.00   83624.65       0.00       0.00       0.00
                           -0.00       0.15      -0.07      -0.00      -0.00      -0.00      -0.00    -148.88     -43.00      -0.02

    8   2.2  1.5  1.5     -19.91      -0.00       0.02       0.00       0.00       0.00       0.00   83624.66       0.00       0.00
                           -0.02      19.90      68.91      -0.00      -0.00      -0.00     148.88      -0.00       0.33    -173.94

    9   3.2  1.5  1.5      68.93       0.00       0.18       0.00       0.00       0.00       0.00       0.00   83624.66       0.00
                           -0.00     -68.91      19.90      -0.00      -0.00      -0.00      43.00      -0.33       0.00     -50.16

   10   4.2  1.5  1.5       0.01       0.02     -76.40       0.00       0.00       0.00       0.00       0.00       0.00   85392.34
                           -0.05      -0.00       0.08      -0.00      -0.00      -0.00       0.02     173.94      50.16       0.00

   11   5.2  1.5  1.5      26.80       1.44      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.12      26.72     -71.61      -0.00      -0.00      -0.00    -169.59      -0.89       3.17     145.40

   12   6.2  1.5  1.5      71.89      -0.90       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      71.66      26.69      -0.00      -0.00      -0.00      63.21       0.58      -1.98     -54.04

   13   7.2  1.5  1.5       0.33      75.41      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.84       0.34       1.72      -0.00      -0.00      -0.00       3.68     -50.79     175.93      -3.48

   14   8.2  1.5  1.5       0.02      45.73       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -88.28       0.01      -0.08      -0.00      -0.00      -0.00       0.08      27.85     -96.81       0.14

   15   1.2  1.5  0.5       0.00       0.00       0.00      -0.10      -0.00      41.35       0.00      24.83     -85.96      -0.23
                           -0.09      82.70       0.00      -0.00       0.09      -0.04       0.00       0.21      -0.03       0.07

   16   2.2  1.5  0.5       0.00       0.00       0.00     -11.49      -0.00       0.01     -24.83       0.00      -0.09     -29.03
                           79.59       0.03       0.02      -0.01      11.49      39.79      -0.21      -0.00      89.47      -0.04

   17   3.2  1.5  0.5       0.00       0.00       0.00      39.80       0.00       0.11      85.96       0.09      -0.00     100.41
                           22.99       0.19       0.01      -0.00     -39.79      11.49       0.03     -89.47       0.00       0.11

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.01       0.01     -44.11       0.23      29.03    -100.41      -0.00
                           -0.10      88.25      -0.04      -0.03      -0.00       0.05      -0.07       0.04      -0.11       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00      15.47       0.83      -0.04     -36.51       1.91       0.36     -31.39
                           82.97       0.10       1.80       0.07      15.43     -41.34      -0.03     -62.25      83.93      -3.47

   20   6.2  1.5  0.5       0.00       0.00       0.00      41.50      -0.52       0.02     -97.93      -1.23      -0.54     -83.90
                          -30.92      -0.03      -1.08      -0.02      41.38      15.41       0.14     -83.96     -62.23       2.24

   21   7.2  1.5  0.5       0.00       0.00       0.00       0.19      43.54      -0.00      -0.56      99.17      28.63      -0.29
                           -2.01       0.00      89.19       1.06       0.19       0.99       2.51       0.21      -2.38    -179.07

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.01      26.40       0.03      -0.09      60.03      17.40      -0.19
                            0.08      -0.05     -49.13     -50.97       0.01      -0.05    -120.66      -0.09      -0.21      -3.72

   23   1.2  1.5 -0.5      -0.10      -0.00      41.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.09       0.04      -0.09      82.70       0.00      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5     -11.49      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01     -11.49     -39.79      79.59       0.03       0.02      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5      39.80       0.00       0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      39.79     -11.49      22.99       0.19       0.01      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5       0.01       0.01     -44.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.00      -0.05      -0.10      88.25      -0.04      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5      15.47       0.83      -0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07     -15.43      41.34      82.97       0.10       1.80      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5      41.50      -0.52       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02     -41.38     -15.41     -30.92      -0.03      -1.08      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5       0.19      43.54      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.06      -0.19      -0.99      -2.01       0.00      89.19      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5       0.01      26.40       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           50.97      -0.01       0.05       0.08      -0.05     -49.13      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      -0.17      -0.00      71.62       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.15       0.07      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00     -19.91      -0.00       0.02       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.02     -19.90     -68.91      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00      68.93       0.00       0.18       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      68.91     -19.90      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.01       0.02     -76.40       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.05       0.00      -0.08      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00      26.80       1.44      -0.07       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.12     -26.72      71.61      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00      71.89      -0.90       0.04       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.04     -71.66     -26.69      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.33      75.41      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -1.84      -0.34      -1.72      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.02      45.73       0.05       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      88.28      -0.01       0.08      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      26.80      71.89       0.33       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12       0.04      -1.84      88.28       0.09     -79.59     -22.99       0.10     -82.97      30.92

    2   2.2  0.5  0.5       1.44      -0.90      75.41      45.73       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.72     -71.66      -0.34      -0.01     -82.70      -0.03      -0.19     -88.25      -0.10       0.03

    3   3.2  0.5  0.5      -0.07       0.04      -0.00       0.05       0.00       0.00       0.00       0.00       0.00       0.00
                           71.61     -26.69      -1.72       0.08      -0.00      -0.02      -0.01       0.04      -1.80       1.08

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.10     -11.49      39.80       0.01      15.47      41.50
                            0.00       0.00       0.00       0.00       0.00       0.01       0.00       0.03      -0.07       0.02

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.01       0.83      -0.52
                            0.00       0.00       0.00       0.00      -0.09     -11.49      39.79       0.00     -15.43     -41.38

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00      41.35       0.01       0.11     -44.11      -0.04       0.02
                            0.00       0.00       0.00       0.00       0.04     -39.79     -11.49      -0.05      41.34     -15.41

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00     -24.83      85.96       0.23     -36.51     -97.93
                          169.59     -63.21      -3.68      -0.08      -0.00       0.21      -0.03       0.07       0.03      -0.14

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00      24.83       0.00       0.09      29.03       1.91      -1.23
                            0.89      -0.58      50.79     -27.85      -0.21       0.00      89.47      -0.04      62.25      83.96

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00     -85.96      -0.09      -0.00    -100.41       0.36      -0.54
                           -3.17       1.98    -175.93      96.81       0.03     -89.47      -0.00       0.11     -83.93      62.23

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.23     -29.03     100.41      -0.00     -31.39     -83.90
                         -145.40      54.04       3.48      -0.14      -0.07       0.04      -0.11      -0.00       3.47      -2.24

   11   5.2  1.5  1.5   85392.38       0.00       0.00       0.00      36.51      -1.91      -0.36      31.39      -0.00       0.27
                           -0.00      -3.15      52.23      94.90      -0.03     -62.25      83.93      -3.47      -0.00      89.55

   12   6.2  1.5  1.5       0.00   85392.39       0.00       0.00      97.93       1.23       0.54      83.90      -0.27      -0.00
                            3.15       0.00     140.09     254.80       0.14     -83.96     -62.23       2.24     -89.55       0.00

   13   7.2  1.5  1.5       0.00       0.00   85392.39       0.00       0.56     -99.17     -28.63       0.29      86.93     -32.42
                          -52.23    -140.09       0.00       1.16       2.51       0.21      -2.38    -179.07      -1.26      -1.69

   14   8.2  1.5  1.5       0.00       0.00       0.00   85392.47       0.09     -60.03     -17.40       0.19    -143.56      53.57
                          -94.90    -254.80      -1.16       0.00    -120.66      -0.09      -0.21      -3.72      -0.00       0.07

   15   1.2  1.5  0.5      36.51      97.93       0.56       0.09   83624.65       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.14      -2.51     120.66      -0.00     -49.63     -14.33      -0.01      56.53     -21.07

   16   2.2  1.5  0.5      -1.91       1.23     -99.17     -60.03       0.00   83624.66       0.00       0.00       0.00       0.00
                           62.25      83.96      -0.21       0.09      49.63      -0.00       0.11     -57.98       0.30      -0.19

   17   3.2  1.5  0.5      -0.36       0.54     -28.63     -17.40       0.00       0.00   83624.66       0.00       0.00       0.00
                          -83.93      62.23       2.38       0.21      14.33      -0.11       0.00     -16.72      -1.06       0.66

   18   4.2  1.5  0.5      31.39      83.90       0.29       0.19       0.00       0.00       0.00   85392.34       0.00       0.00
                            3.47      -2.24     179.07       3.72       0.01      57.98      16.72       0.00     -48.47      18.01

   19   5.2  1.5  0.5      -0.00      -0.27      86.93    -143.56       0.00       0.00       0.00       0.00   85392.38       0.00
                            0.00      89.55       1.26       0.00     -56.53      -0.30       1.06      48.47      -0.00      -1.05

   20   6.2  1.5  0.5       0.27      -0.00     -32.42      53.57       0.00       0.00       0.00       0.00       0.00   85392.39
                          -89.55      -0.00       1.69      -0.07      21.07       0.19      -0.66     -18.01       1.05       0.00

   21   7.2  1.5  0.5     -86.93      32.42      -0.00       3.38       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.26      -1.69       0.00       0.11       1.23     -16.93      58.64      -1.16     -17.41     -46.70

   22   8.2  1.5  0.5     143.56     -53.57      -3.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.07      -0.11       0.00       0.03       9.28     -32.27       0.05     -31.63     -84.93

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.00      28.67     -99.25      -0.27      42.16     113.08
                           -0.00      -0.00      -0.00      -0.00       0.00       0.24      -0.04       0.08       0.03      -0.16

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00     -28.67       0.00      -0.10     -33.52      -2.20       1.42
                           -0.00      -0.00      -0.00      -0.00      -0.24      -0.00     103.31      -0.04      71.88      96.95

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00      99.25       0.10      -0.00     115.94      -0.41       0.62
                           -0.00      -0.00      -0.00      -0.00       0.04    -103.31       0.00       0.12     -96.92      71.86

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.27      33.52    -115.94      -0.00      36.24      96.88
                           -0.00      -0.00      -0.00      -0.00      -0.08       0.04      -0.12       0.00       4.01      -2.58

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     -42.16       2.20       0.41     -36.24      -0.00      -0.32
                           -0.00      -0.00      -0.00      -0.00      -0.03     -71.88      96.92      -4.01       0.00     103.41

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00    -113.08      -1.42      -0.62     -96.88       0.32      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.16     -96.95     -71.86       2.58    -103.41      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.65     114.51      33.06      -0.33    -100.38      37.43
                           -0.00      -0.00      -0.00      -0.00       2.90       0.25      -2.75    -206.77      -1.45      -1.96

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.10      69.32      20.09      -0.22     165.77     -61.85
                           -0.00      -0.00      -0.00      -0.00    -139.32      -0.10      -0.24      -4.29      -0.00       0.09

   31   1.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.2  0.5  0.5       0.00       0.00      -0.10     -11.49      39.80       0.01      15.47      41.50       0.19       0.01
                            2.01      -0.08      -0.00      -0.01      -0.00      -0.03       0.07      -0.02       1.06     -50.97

    2   2.2  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00       0.01       0.83      -0.52      43.54      26.40
                           -0.00       0.05       0.09      11.49     -39.79      -0.00      15.43      41.38       0.19       0.01

    3   3.2  0.5  0.5       0.00       0.00      41.35       0.01       0.11     -44.11      -0.04       0.02      -0.00       0.03
                          -89.19      49.13      -0.04      39.79      11.49       0.05     -41.34      15.41       0.99      -0.05

    4   1.2  0.5 -0.5       0.19       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.06      50.97       0.09     -79.59     -22.99       0.10     -82.97      30.92       2.01      -0.08

    5   2.2  0.5 -0.5      43.54      26.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19      -0.01     -82.70      -0.03      -0.19     -88.25      -0.10       0.03      -0.00       0.05

    6   3.2  0.5 -0.5      -0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.99       0.05      -0.00      -0.02      -0.01       0.04      -1.80       1.08     -89.19      49.13

    7   1.2  1.5  1.5      -0.56      -0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.51     120.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5      99.17      60.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.21       0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5      28.63      17.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.38       0.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5      -0.29      -0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          179.07       3.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5     -86.93     143.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5      32.42     -53.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.69      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.00      -3.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       3.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.11      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00     -28.67      99.25       0.27     -42.16    -113.08      -0.65      -0.10
                           -1.23      -0.03      -0.00       0.24      -0.04       0.08       0.03      -0.16      -2.90     139.32

   16   2.2  1.5  0.5       0.00       0.00      28.67       0.00       0.10      33.52       2.20      -1.42     114.51      69.32
                           16.93      -9.28      -0.24       0.00     103.31      -0.04      71.88      96.95      -0.25       0.10

   17   3.2  1.5  0.5       0.00       0.00     -99.25      -0.10      -0.00    -115.94       0.41      -0.62      33.06      20.09
                          -58.64      32.27       0.04    -103.31      -0.00       0.12     -96.92      71.86       2.75       0.24

   18   4.2  1.5  0.5       0.00       0.00      -0.27     -33.52     115.94      -0.00     -36.24     -96.88      -0.33      -0.22
                            1.16      -0.05      -0.08       0.04      -0.12      -0.00       4.01      -2.58     206.77       4.29

   19   5.2  1.5  0.5       0.00       0.00      42.16      -2.20      -0.41      36.24      -0.00       0.32    -100.38     165.77
                           17.41      31.63      -0.03     -71.88      96.92      -4.01      -0.00     103.41       1.45       0.00

   20   6.2  1.5  0.5       0.00       0.00     113.08       1.42       0.62      96.88      -0.32      -0.00      37.43     -61.85
                           46.70      84.93       0.16     -96.95     -71.86       2.58    -103.41       0.00       1.96      -0.09

   21   7.2  1.5  0.5   85392.39       0.00       0.65    -114.51     -33.06       0.33     100.38     -37.43      -0.00      -3.90
                            0.00       0.39       2.90       0.25      -2.75    -206.77      -1.45      -1.96      -0.00       0.12

   22   8.2  1.5  0.5       0.00   85392.47       0.10     -69.32     -20.09       0.22    -165.77      61.85       3.90      -0.00
                           -0.39       0.00    -139.32      -0.10      -0.24      -4.29      -0.00       0.09      -0.12      -0.00

   23   1.2  1.5 -0.5       0.65       0.10   83624.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.90     139.32       0.00      49.63      14.33       0.01     -56.53      21.07       1.23       0.03

   24   2.2  1.5 -0.5    -114.51     -69.32       0.00   83624.66       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.25       0.10     -49.63       0.00      -0.11      57.98      -0.30       0.19     -16.93       9.28

   25   3.2  1.5 -0.5     -33.06     -20.09       0.00       0.00   83624.66       0.00       0.00       0.00       0.00       0.00
                            2.75       0.24     -14.33       0.11      -0.00      16.72       1.06      -0.66      58.64     -32.27

   26   4.2  1.5 -0.5       0.33       0.22       0.00       0.00       0.00   85392.34       0.00       0.00       0.00       0.00
                          206.77       4.29      -0.01     -57.98     -16.72      -0.00      48.47     -18.01      -1.16       0.05

   27   5.2  1.5 -0.5     100.38    -165.77       0.00       0.00       0.00       0.00   85392.38       0.00       0.00       0.00
                            1.45       0.00      56.53       0.30      -1.06     -48.47       0.00       1.05     -17.41     -31.63

   28   6.2  1.5 -0.5     -37.43      61.85       0.00       0.00       0.00       0.00       0.00   85392.39       0.00       0.00
                            1.96      -0.09     -21.07      -0.19       0.66      18.01      -1.05      -0.00     -46.70     -84.93

   29   7.2  1.5 -0.5      -0.00       3.90       0.00       0.00       0.00       0.00       0.00       0.00   85392.39       0.00
                            0.00       0.12      -1.23      16.93     -58.64       1.16      17.41      46.70      -0.00      -0.39

   30   8.2  1.5 -0.5      -3.90      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   85392.47
                           -0.12       0.00      -0.03      -9.28      32.27      -0.05      31.63      84.93       0.39      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      24.83     -85.96      -0.23      36.51      97.93       0.56       0.09
                           -0.00      -0.00       0.00       0.21      -0.03       0.07       0.03      -0.14      -2.51     120.66

   32   2.2  1.5 -1.5       0.00       0.00     -24.83       0.00      -0.09     -29.03      -1.91       1.23     -99.17     -60.03
                           -0.00      -0.00      -0.21      -0.00      89.47      -0.04      62.25      83.96      -0.21       0.09

   33   3.2  1.5 -1.5       0.00       0.00      85.96       0.09      -0.00     100.41      -0.36       0.54     -28.63     -17.40
                           -0.00      -0.00       0.03     -89.47       0.00       0.11     -83.93      62.23       2.38       0.21

   34   4.2  1.5 -1.5       0.00       0.00       0.23      29.03    -100.41      -0.00      31.39      83.90       0.29       0.19
                           -0.00      -0.00      -0.07       0.04      -0.11       0.00       3.47      -2.24     179.07       3.72

   35   5.2  1.5 -1.5       0.00       0.00     -36.51       1.91       0.36     -31.39      -0.00      -0.27      86.93    -143.56
                           -0.00      -0.00      -0.03     -62.25      83.93      -3.47       0.00      89.55       1.26       0.00

   36   6.2  1.5 -1.5       0.00       0.00     -97.93      -1.23      -0.54     -83.90       0.27      -0.00     -32.42      53.57
                           -0.00      -0.00       0.14     -83.96     -62.23       2.24     -89.55      -0.00       1.69      -0.07

   37   7.2  1.5 -1.5       0.00       0.00      -0.56      99.17      28.63      -0.29     -86.93      32.42      -0.00       3.38
                           -0.00      -0.00       2.51       0.21      -2.38    -179.07      -1.26      -1.69       0.00       0.11

   38   8.2  1.5 -1.5       0.00       0.00      -0.09      60.03      17.40      -0.19     143.56     -53.57      -3.38      -0.00
                           -0.00      -0.00    -120.66      -0.09      -0.21      -3.72      -0.00       0.07      -0.11       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5      -0.17     -19.91      68.93       0.01      26.80      71.89       0.33       0.02
                           -0.00      -0.02      -0.00      -0.05       0.12      -0.04       1.84     -88.28

    5   2.2  0.5 -0.5      -0.00      -0.00       0.00       0.02       1.44      -0.90      75.41      45.73
                            0.15      19.90     -68.91      -0.00      26.72      71.66       0.34       0.01

    6   3.2  0.5 -0.5      71.62       0.02       0.18     -76.40      -0.07       0.04      -0.00       0.05
                           -0.07      68.91      19.90       0.08     -71.61      26.69       1.72      -0.08

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   2.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   3.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   4.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   6.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   7.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   8.2  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   1.2  1.5 -0.5       0.00     -24.83      85.96       0.23     -36.51     -97.93      -0.56      -0.09
                           -0.00       0.21      -0.03       0.07       0.03      -0.14      -2.51     120.66

   24   2.2  1.5 -0.5      24.83       0.00       0.09      29.03       1.91      -1.23      99.17      60.03
                           -0.21       0.00      89.47      -0.04      62.25      83.96      -0.21       0.09

   25   3.2  1.5 -0.5     -85.96      -0.09      -0.00    -100.41       0.36      -0.54      28.63      17.40
                            0.03     -89.47      -0.00       0.11     -83.93      62.23       2.38       0.21

   26   4.2  1.5 -0.5      -0.23     -29.03     100.41      -0.00     -31.39     -83.90      -0.29      -0.19
                           -0.07       0.04      -0.11      -0.00       3.47      -2.24     179.07       3.72

   27   5.2  1.5 -0.5      36.51      -1.91      -0.36      31.39      -0.00       0.27     -86.93     143.56
                           -0.03     -62.25      83.93      -3.47      -0.00      89.55       1.26       0.00

   28   6.2  1.5 -0.5      97.93       1.23       0.54      83.90      -0.27      -0.00      32.42     -53.57
                            0.14     -83.96     -62.23       2.24     -89.55       0.00       1.69      -0.07

   29   7.2  1.5 -0.5       0.56     -99.17     -28.63       0.29      86.93     -32.42      -0.00      -3.38
                            2.51       0.21      -2.38    -179.07      -1.26      -1.69      -0.00       0.11

   30   8.2  1.5 -0.5       0.09     -60.03     -17.40       0.19    -143.56      53.57       3.38      -0.00
                         -120.66      -0.09      -0.21      -3.72      -0.00       0.07      -0.11      -0.00

   31   1.2  1.5 -1.5   83624.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     148.88      43.00       0.02    -169.59      63.21       3.68       0.08

   32   2.2  1.5 -1.5       0.00   83624.66       0.00       0.00       0.00       0.00       0.00       0.00
                         -148.88       0.00      -0.33     173.94      -0.89       0.58     -50.79      27.85

   33   3.2  1.5 -1.5       0.00       0.00   83624.66       0.00       0.00       0.00       0.00       0.00
                          -43.00       0.33      -0.00      50.16       3.17      -1.98     175.93     -96.81

   34   4.2  1.5 -1.5       0.00       0.00       0.00   85392.34       0.00       0.00       0.00       0.00
                           -0.02    -173.94     -50.16      -0.00     145.40     -54.04      -3.48       0.14

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   85392.38       0.00       0.00       0.00
                          169.59       0.89      -3.17    -145.40       0.00       3.15     -52.23     -94.90

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   85392.39       0.00       0.00
                          -63.21      -0.58       1.98      54.04      -3.15      -0.00    -140.09    -254.80

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   85392.39       0.00
                           -3.68      50.79    -175.93       3.48      52.23     140.09      -0.00      -1.16

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   85392.47
                           -0.08     -27.85      96.81      -0.14      94.90     254.80       1.16      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -461.36214698    -0.00136855     -300.36      0.00000000        0.00      0.0000
     2  -461.36214698    -0.00136855     -300.36      0.00000000        0.00      0.0000
     3  -461.36214663    -0.00136820     -300.28      0.00000036        0.08      0.0000
     4  -461.36214663    -0.00136820     -300.28      0.00000036        0.08      0.0000
     5  -461.35804714     0.00273129      599.45      0.00409985      899.81      0.1116
     6  -461.35804714     0.00273129      599.45      0.00409985      899.81      0.1116
     7  -460.98063566     0.38014277    83431.69      0.38151132    83732.06     10.3815
     8  -460.98063566     0.38014277    83431.69      0.38151132    83732.06     10.3815
     9  -460.98063564     0.38014279    83431.70      0.38151134    83732.06     10.3815
    10  -460.98063564     0.38014279    83431.70      0.38151134    83732.06     10.3815
    11  -460.98063563     0.38014280    83431.70      0.38151136    83732.06     10.3815
    12  -460.98063563     0.38014280    83431.70      0.38151136    83732.06     10.3815
    13  -460.97941752     0.38136091    83699.05      0.38272946    83999.41     10.4146
    14  -460.97941752     0.38136091    83699.05      0.38272946    83999.41     10.4146
    15  -460.97941750     0.38136093    83699.05      0.38272949    83999.41     10.4146
    16  -460.97941750     0.38136093    83699.05      0.38272949    83999.41     10.4146
    17  -460.97862121     0.38215722    83873.82      0.38352578    84174.18     10.4363
    18  -460.97862121     0.38215722    83873.82      0.38352578    84174.18     10.4363
    19  -460.97311606     0.38766237    85082.06      0.38903093    85382.42     10.5861
    20  -460.97311606     0.38766237    85082.06      0.38903093    85382.42     10.5861
    21  -460.97311602     0.38766241    85082.06      0.38903096    85382.43     10.5861
    22  -460.97311602     0.38766241    85082.06      0.38903096    85382.43     10.5861
    23  -460.97311588     0.38766255    85082.10      0.38903110    85382.46     10.5861
    24  -460.97311588     0.38766255    85082.10      0.38903110    85382.46     10.5861
    25  -460.97311578     0.38766265    85082.12      0.38903120    85382.48     10.5861
    26  -460.97311578     0.38766265    85082.12      0.38903120    85382.48     10.5861
    27  -460.97129338     0.38948505    85482.09      0.39085360    85782.45     10.6357
    28  -460.97129338     0.38948505    85482.09      0.39085360    85782.45     10.6357
    29  -460.97129330     0.38948513    85482.10      0.39085368    85782.47     10.6357
    30  -460.97129330     0.38948513    85482.10      0.39085368    85782.47     10.6357
    31  -460.97129314     0.38948529    85482.14      0.39085384    85782.50     10.6357
    32  -460.97129314     0.38948529    85482.14      0.39085384    85782.50     10.6357
    33  -460.97015444     0.39062399    85732.06      0.39199255    86032.42     10.6667
    34  -460.97015444     0.39062399    85732.06      0.39199255    86032.42     10.6667
    35  -460.97015442     0.39062401    85732.06      0.39199256    86032.42     10.6667
    36  -460.97015442     0.39062401    85732.06      0.39199256    86032.42     10.6667
    37  -460.96953722     0.39124121    85867.52      0.39260977    86167.88     10.6835
    38  -460.96953722     0.39124121    85867.52      0.39260977    86167.88     10.6835


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.789478938  -0.029701797   0.206215704   0.005447123   0.251025562  -0.519872009   0.000000131   0.000000014
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000001391  -0.000007848  -0.000006032  -0.000016120  -0.000011898  -0.000005745   0.000000001  -0.000000005
                         0.573209731  -0.021412442  -0.580866434  -0.015124916  -0.251164450   0.519854297   0.000000884   0.000000118

    3    3.2  0.5  0.5  -0.008150044  -0.216071023  -0.020506993   0.779394398   0.519949234   0.251062857  -0.000000002   0.000000043
                        -0.000257939  -0.007396237   0.002842634  -0.109185900  -0.000945074  -0.000441931  -0.000000010   0.000000309

    4    1.2  0.5 -0.5   0.029684453   0.789017922   0.005394407  -0.204219978   0.519871117   0.251025131   0.000000002  -0.000000017
                         0.001014897   0.026976146  -0.000755994   0.028620224  -0.000962771  -0.000464884   0.000000014  -0.000000130

    5    2.2  0.5 -0.5   0.000739497   0.019587714   0.002083189  -0.080611202   0.000968483   0.000453243   0.000000116  -0.000000877
                        -0.021399670  -0.572874958   0.014980776  -0.575245729   0.519853395   0.251164041  -0.000000021   0.000000116

    6    3.2  0.5 -0.5   0.216197575  -0.008154098   0.787005201   0.020703052  -0.251063245   0.519950093   0.000000312   0.000000010
                        -0.000008867  -0.000020695  -0.000041221  -0.000030997   0.000023023  -0.000017841   0.000000001   0.000000001

    7    1.2  1.5  1.5   0.000009560   0.000183518   0.000016782  -0.000662236  -0.000445390  -0.000215187   0.007979058  -0.069043094
                         0.000000223   0.000006103  -0.000002444   0.000093439   0.000001246   0.000000602   0.046160310  -0.513473485

    8    2.2  1.5  1.5   0.000321639  -0.000018067  -0.000086127  -0.000091757  -0.000000924  -0.000000470  -0.074510118  -0.222526219
                         0.000006828   0.000176675   0.000016803  -0.000637258  -0.000428561  -0.000207057  -0.001739683   0.028195814

    9    3.2  1.5  1.5  -0.001114412   0.000040521   0.000307017  -0.000019560  -0.000001294  -0.000000541   0.307651317  -0.013029628
                         0.000001919   0.000051034   0.000004856  -0.000183825  -0.000123777  -0.000059802  -0.000978728   0.007907218

   10    4.2  1.5  1.5  -0.000007366  -0.000191435  -0.000018163   0.000690410   0.000465593   0.000224873   0.000431578  -0.000940740
                         0.000000121  -0.000006356   0.000002806  -0.000097484  -0.000001140  -0.000001090   0.001703306  -0.007071181

   11    5.2  1.5  1.5  -0.000067552   0.000008553  -0.000246462   0.000084959  -0.000156281   0.000326728  -0.016006517   0.067182214
                        -0.000017448  -0.000179031  -0.000007622   0.000647371   0.000440302   0.000202704   0.000671809  -0.009334034

   12    6.2  1.5  1.5  -0.000181846   0.000004779  -0.000653744  -0.000051280  -0.000423038   0.000874459  -0.022710654  -0.028206702
                         0.000008814   0.000066656   0.000000400  -0.000241339  -0.000165197  -0.000073304  -0.000104906   0.003277451

   13    7.2  1.5  1.5  -0.000000825  -0.000000120  -0.000002992  -0.000002206  -0.000001949   0.000004078  -0.000027727  -0.001633716
                        -0.000517984   0.000023670   0.000503968  -0.000002442   0.000206101  -0.000453337  -0.030244916  -0.005091779

   14    8.2  1.5  1.5  -0.000000047   0.000000129  -0.000000114  -0.000000312  -0.000000358   0.000000041   0.000042698  -0.000193992
                         0.000504228  -0.000019245   0.000519145   0.000014369   0.000394869  -0.000816378   0.047286406   0.006303376

   15    1.2  1.5  0.5   0.000456403  -0.000016694  -0.000956073  -0.000025844  -0.000123123   0.000257647   0.532584911   0.071180095
                         0.000000910  -0.000000007   0.000000615   0.000000141   0.000000126  -0.000000267  -0.000485746   0.001695765

   16    2.2  1.5  0.5   0.000001320   0.000029480   0.000002419  -0.000106330   0.000142878   0.000069158   0.003070894  -0.020112439
                        -0.000847524   0.000033040  -0.000566644  -0.000000222  -0.000119803   0.000247305   0.000977888  -0.155953211

   17    3.2  1.5  0.5  -0.000002870  -0.000102162  -0.000011943   0.000367920  -0.000495149  -0.000238487  -0.009970995   0.065311595
                        -0.000244925   0.000005756  -0.000162200  -0.000055916  -0.000033633   0.000071896  -0.058095457   0.488783234

   18    4.2  1.5  0.5   0.000697169  -0.000026139  -0.000191855  -0.000004805  -0.000389655   0.000806503   0.046999422   0.005557947
                         0.000000807   0.000000233  -0.000000223   0.000000328   0.000000795  -0.000000752  -0.000069597   0.000328343

   19    5.2  1.5  0.5  -0.000008415  -0.000244412   0.000001512  -0.000067740  -0.000000739   0.000000729   0.000483196  -0.003037265
                        -0.000655877   0.000025716   0.000178959   0.000003386  -0.000382257   0.000749570   0.031507303  -0.021895130

   20    6.2  1.5  0.5  -0.000024808  -0.000654408   0.000004546  -0.000176847  -0.000000610  -0.000000633   0.001240527  -0.009047886
                         0.000243406  -0.000037521  -0.000067497   0.000029391   0.000146184  -0.000277592  -0.003010622  -0.067083332

   21    7.2  1.5  0.5  -0.000000703  -0.000020252   0.000001889  -0.000072716  -0.000001507  -0.000000650  -0.001598155   0.025893136
                         0.000034801   0.000502289   0.000009327  -0.000513181  -0.000806518  -0.000412099  -0.000228961  -0.003887544

   22    8.2  1.5  0.5  -0.000001091  -0.000017844  -0.000001709   0.000069947   0.000001042  -0.000000085   0.003092841  -0.008121433
                         0.000018841   0.000518677  -0.000012857   0.000499497   0.000448760   0.000217581  -0.000452457   0.000947744

   23    1.2  1.5 -0.5  -0.000016685  -0.000456167   0.000025613  -0.000946906   0.000257648   0.000123123  -0.011098355   0.069982280
                        -0.000000564  -0.000014685  -0.000003448   0.000132082  -0.000000210  -0.000000102  -0.070329994   0.527967239

   24    2.2  1.5 -0.5   0.000030591   0.000027640   0.000105270   0.000081039   0.000068700  -0.000143100   0.157243210   0.001375588
                        -0.000032013  -0.000847074  -0.000014977   0.000560824  -0.000247432  -0.000119538  -0.000697792   0.002914516

   25    3.2  1.5 -0.5  -0.000101906   0.000011237  -0.000372120   0.000010684  -0.000238619   0.000495086  -0.493127413  -0.058903956
                        -0.000009243  -0.000244683  -0.000004312   0.000162288  -0.000071454  -0.000034550  -0.000068874  -0.002197010

   26    4.2  1.5 -0.5  -0.000026115  -0.000696789   0.000004804  -0.000189967   0.000806503   0.000389655  -0.001060802   0.006149283
                        -0.000001126  -0.000023016  -0.000000342   0.000026848  -0.000000741   0.000000074  -0.005465646   0.046595460

   27    5.2  1.5 -0.5  -0.000243391   0.000030821   0.000067554  -0.000023340  -0.000000659   0.000000031   0.022104497   0.031294252
                        -0.000034053  -0.000655206  -0.000006049  -0.000177437  -0.000749570  -0.000382258   0.000113725  -0.003689632

   28    6.2  1.5 -0.5  -0.000655308   0.000016476   0.000179215   0.000013870  -0.000000119   0.000000881   0.067690687  -0.002820028
                         0.000015138   0.000244111   0.000004563   0.000066213   0.000277592   0.000146183   0.000092873   0.001627943

   29    7.2  1.5 -0.5  -0.000003077  -0.000000486   0.000000789   0.000000576   0.000000113   0.000000014   0.000427572  -0.000438392
                        -0.000502688   0.000034805  -0.000518307  -0.000009499   0.000412100  -0.000806520  -0.026179852  -0.001553813

   30    8.2  1.5 -0.5  -0.000000110   0.000000446   0.000000054   0.000000092  -0.000000488  -0.000000211   0.000135096  -0.000039280
                        -0.000518984   0.000018868   0.000504371   0.000012969  -0.000217581   0.000448761   0.008175429   0.003125514

   31    1.2  1.5 -1.5  -0.000183619   0.000009562  -0.000668795  -0.000016959   0.000215188  -0.000445392  -0.518094317  -0.046810187
                        -0.000000171   0.000000103  -0.000000624  -0.000000091   0.000000203  -0.000000421  -0.000500925  -0.001801665

   32    2.2  1.5 -1.5   0.000012019   0.000321685  -0.000002425   0.000087626   0.000000086  -0.000000130  -0.001493429   0.011582467
                         0.000177189   0.000004166   0.000643825   0.000004687  -0.000207057   0.000428562  -0.224300455   0.073624932

   33    3.2  1.5 -1.5  -0.000042242  -0.001113696   0.000006142  -0.000303371   0.000000430  -0.000001065   0.006113820  -0.039733745
                         0.000049620  -0.000039997   0.000184761   0.000047420  -0.000059803   0.000123779  -0.013961252  -0.305076253

   34    4.2  1.5 -1.5   0.000191541  -0.000007357   0.000697258   0.000018376  -0.000224874   0.000465594  -0.007133483  -0.001745432
                         0.000000189  -0.000000372   0.000000720   0.000000258  -0.000000674   0.000000277   0.000003085  -0.000202428

   35    5.2  1.5 -1.5  -0.000002431  -0.000068108  -0.000005711   0.000243019  -0.000326352  -0.000157096  -0.000363422   0.001451842
                        -0.000179219   0.000015130  -0.000652897  -0.000041754   0.000203308  -0.000440011   0.067826558   0.015954688

   36    6.2  1.5 -1.5  -0.000007054  -0.000181439  -0.000017289   0.000647473  -0.000874594  -0.000422732  -0.000483254   0.003108721
                         0.000066454  -0.000015022   0.000246120  -0.000090335  -0.000071685   0.000165980  -0.028392361   0.022497126

   37    7.2  1.5 -1.5  -0.000000689  -0.000018524  -0.000001846   0.000072908  -0.000004917  -0.000002330  -0.005263167   0.029982703
                         0.000023660   0.000517653   0.000002725   0.000498675  -0.000453329  -0.000206097  -0.000945685  -0.003974077

   38    8.2  1.5 -1.5   0.000000529   0.000017182  -0.000002304   0.000072164  -0.000001553  -0.000001089   0.006222297  -0.046876362
                        -0.000019238  -0.000503936  -0.000014187   0.000514105  -0.000816376  -0.000394868  -0.001026256   0.006213915


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000000029  -0.000000027  -0.000000000  -0.000000068   0.000333626  -0.000000000   0.001001954  -0.000312537
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000047  -0.000000041   0.000000001  -0.000000002  -0.000001147   0.000096559  -0.000004379  -0.000015263
                         0.000000458   0.000000397  -0.000000007  -0.000000124  -0.000735385   0.000036660   0.000783265  -0.000214199

    3    3.2  0.5  0.5  -0.000000642   0.000000765   0.000000041   0.000000009   0.000001648   0.001005563   0.000032301   0.000105307
                         0.000000194  -0.000000133   0.000000012   0.000000012   0.000103282   0.000362890  -0.000094125  -0.000191544

    4    1.2  0.5 -0.5   0.000000026  -0.000000028  -0.000000064   0.000000000  -0.000000000  -0.000313941  -0.000145098  -0.000465168
                        -0.000000006   0.000000007  -0.000000022   0.000000000  -0.000000000  -0.000112907   0.000276813   0.000887429

    5    2.2  0.5 -0.5   0.000000132  -0.000000061  -0.000000042   0.000000001   0.000103268   0.000249951   0.000182630   0.000695769
                         0.000000377  -0.000000456   0.000000116  -0.000000007  -0.000001820  -0.000691605   0.000112963   0.000359760

    6    3.2  0.5 -0.5  -0.000000775  -0.000000669   0.000000012  -0.000000043   0.001069040  -0.000036504   0.000218541  -0.000098363
                         0.000000049  -0.000000039  -0.000000009  -0.000000002  -0.000001172   0.000096630  -0.000004344  -0.000015089

    7    1.2  1.5  1.5   0.321240070  -0.383388626  -0.070260343  -0.002318345   0.001021951   0.405818789   0.011340245   0.042824635
                        -0.090608844   0.072330394  -0.023980481  -0.007781979   0.041680376   0.146094581  -0.037959313  -0.077200135

    8    2.2  1.5  1.5  -0.186500682   0.002085375  -0.120564537   0.110026403   0.004990946  -0.144654892  -0.163287739   0.133065417
                        -0.340326408   0.412856637   0.353386422   0.003565851   0.000494566   0.400643168   0.011900145   0.039053116

    9    3.2  1.5  1.5   0.242822745   0.258653601  -0.042053223  -0.366448522  -0.167496514  -0.025375873   0.702140464  -0.182530365
                        -0.122514302   0.138820311   0.113265746   0.002054333   0.000719846   0.075510416   0.005216327   0.017489228

   10    4.2  1.5  1.5  -0.035988235   0.043851873   0.060416739   0.000438375   0.000085284   0.048932283   0.001553104   0.005107283
                         0.011974835  -0.006743683   0.020781479  -0.001432362   0.005045532   0.017598635  -0.004552605  -0.009314398

   11    5.2  1.5  1.5   0.004190156  -0.007283455  -0.006755797  -0.008340183  -0.022872223  -0.015953420   0.000583067   0.010399501
                         0.023433086  -0.028858803   0.019797334   0.001096887   0.000748230   0.044161720   0.000744053   0.005261150

   12    6.2  1.5  1.5  -0.006468105  -0.001418016   0.002221600  -0.027418957  -0.046969423   0.007863664  -0.011544840   0.001216076
                        -0.007524681   0.009805753  -0.006284472  -0.000730500  -0.000390820  -0.021469369   0.000124682  -0.001214245

   13    7.2  1.5  1.5  -0.002842691   0.002182631   0.002137050  -0.000034487  -0.000058920  -0.004231427   0.000063270   0.000544589
                        -0.037157293  -0.031422398   0.000599607   0.066003650   0.034949149  -0.002881566  -0.038811230   0.010535933

   14    8.2  1.5  1.5   0.002614183  -0.002331132   0.000048469  -0.000091755   0.000018740  -0.002856452   0.000128114   0.000451764
                         0.025397466   0.022044206  -0.000267296  -0.003660747   0.040113169  -0.001027560   0.033448667  -0.011297365

   15    1.2  1.5  0.5   0.290464901   0.252827023  -0.002163466  -0.055937076   0.591738951  -0.025051534  -0.313930242   0.076933066
                        -0.029118731   0.026202720  -0.000166192   0.000347155  -0.001162708   0.067713159  -0.003646654  -0.010598234

   16    2.2  1.5  0.5  -0.028861928   0.031265438   0.162962945   0.001112559   0.000578757   0.043311022   0.002938487   0.010276297
                        -0.183858142  -0.171838271   0.058086866   0.577221653   0.395142337   0.015429753   0.490861478  -0.174094776

   17    3.2  1.5  0.5   0.062869125  -0.084727018  -0.494801550  -0.001373485   0.001103654  -0.231356895  -0.007611882  -0.022366445
                        -0.091211740  -0.047129009  -0.170428540   0.187991772   0.089075814  -0.083379732   0.164566977  -0.003951738

   18    4.2  1.5  0.5   0.014039626   0.012036127   0.000220644   0.031354316  -0.011301264   0.001031821   0.050102727  -0.014802502
                        -0.001979932   0.001930535  -0.001206827  -0.000011942   0.000020260  -0.002685751   0.000177513   0.000404543

   19    5.2  1.5  0.5   0.004667849  -0.005634358  -0.019670743   0.000046818   0.000060848  -0.005972275   0.002506309   0.007921392
                        -0.001153894  -0.000287865  -0.006179474   0.048363534   0.009568412  -0.003084087  -0.051532774  -0.001966255

   20    6.2  1.5  0.5   0.009723791  -0.011950754  -0.057123317  -0.000098479  -0.000098374  -0.009167781   0.006846641   0.021899857
                        -0.002528730   0.003555338  -0.020182396  -0.016853992  -0.006662401  -0.002794664   0.005470591  -0.046610939

   21    7.2  1.5  0.5   0.007257825  -0.005796812  -0.011015750   0.001648226   0.003002473   0.013620792  -0.010187153  -0.029466385
                         0.025890170  -0.030417990   0.030613327  -0.001401997  -0.000305747  -0.037724878  -0.003782238  -0.016164632

   22    8.2  1.5  0.5   0.017077458  -0.010743080  -0.000109912   0.000772668  -0.004956632  -0.011886751  -0.009121615  -0.034437134
                         0.054378748  -0.065143508  -0.000240841  -0.000585938   0.000095740   0.032872246  -0.005635137  -0.017817487

   23    1.2  1.5 -0.5   0.239767849  -0.289257206   0.052748988  -0.002098892   0.000657657   0.556429374  -0.045103830  -0.142515592
                        -0.084376914   0.039344967   0.018617772  -0.000550330   0.072195697   0.201352154   0.063219171   0.279740596

   24    2.2  1.5 -0.5   0.070434352  -0.014761088  -0.189785051   0.172998303  -0.045977198   0.134269847  -0.158966392  -0.433391137
                         0.159827786  -0.185523416   0.545130909  -0.001610277  -0.000138138  -0.371630743  -0.071723633  -0.230490233

   25    3.2  1.5 -0.5  -0.071417640  -0.082386985  -0.060169510  -0.523329666   0.245923089   0.031183833   0.006883809  -0.149290650
                         0.065569295  -0.074057366   0.178107897  -0.000723875  -0.000163349  -0.083446314  -0.021644568  -0.069660120

   26    4.2  1.5 -0.5   0.011255299  -0.014114609  -0.029627022  -0.000186079  -0.000062018  -0.010627566   0.007230521   0.023103497
                        -0.004681193   0.001345011  -0.010263178   0.001212638  -0.002876468  -0.003843672  -0.012922743  -0.044458331

   27    5.2  1.5 -0.5  -0.005412298  -0.004808230  -0.015857625  -0.020610038   0.006663601   0.003295429  -0.005419099   0.046806090
                         0.001592447  -0.000034794   0.045689925  -0.000591906  -0.000880953  -0.008983227   0.006103112   0.021704799

   28    6.2  1.5 -0.5  -0.012450187  -0.010045343   0.005603800  -0.060582555   0.009572606  -0.002347279  -0.051450487  -0.001666670
                        -0.000673650  -0.000194046  -0.015895414   0.000395511   0.000472825   0.006235988  -0.002242945  -0.008603841

   29    7.2  1.5 -0.5   0.001448408  -0.001027149  -0.001099222  -0.000400658  -0.000050120   0.002721837  -0.000636913  -0.001379570
                         0.030931525   0.026868604  -0.001863855  -0.032532477  -0.040108477   0.001303812  -0.033602939   0.010778692

   30    8.2  1.5 -0.5   0.004727384  -0.003940341  -0.000538614  -0.000182618   0.000060639  -0.004631761   0.000206879   0.000756228
                         0.065853946   0.056860897  -0.000806371   0.000191666   0.034955339  -0.001767529  -0.038772880   0.010695174

   31    1.2  1.5 -1.5   0.389690553   0.333509616  -0.004735384   0.074239358   0.431314848  -0.015067246   0.088257846  -0.038885341
                        -0.018968277   0.013284582   0.006596215   0.000310569  -0.000135740   0.038875136  -0.002088747  -0.007578971

   32    2.2  1.5 -1.5   0.094145289  -0.102092318   0.105144728  -0.001608731  -0.000532550  -0.004863823   0.027187729   0.086347999
                         0.401984596   0.374408502   0.032605381   0.373383424  -0.425957394  -0.001223668  -0.135986684  -0.139098966

   33    3.2  1.5 -1.5  -0.219200322   0.264681826  -0.345634987   0.002707370   0.001675912   0.157369618  -0.100231834  -0.321356025
                         0.195253637   0.062579311  -0.121758761   0.120790202  -0.079642635   0.057362042   0.153547343   0.624306612

   34    4.2  1.5 -1.5  -0.044216408  -0.037787677  -0.000054058  -0.063890836   0.052000772  -0.001787775   0.010620860  -0.004753281
                         0.003656956  -0.003262088   0.001496968  -0.000115181  -0.000000403   0.004718954  -0.000199206  -0.000738013

   35    5.2  1.5 -1.5   0.000360543  -0.001383759  -0.007523117  -0.000088651  -0.000066734   0.021269409   0.000168284   0.000388312
                        -0.029761540  -0.023764514  -0.003763579   0.020918111  -0.046954921   0.008444566  -0.011653369   0.000861856

   36    6.2  1.5 -1.5   0.003663217  -0.004537321  -0.026150726  -0.000044662   0.000133934   0.044330213   0.001640031   0.005470245
                         0.009205672   0.008824394  -0.008274804  -0.006665441   0.022863794   0.015527772  -0.000513351  -0.010167365

   37    7.2  1.5 -1.5  -0.009442308   0.005891155   0.021548562  -0.002215640  -0.004956936  -0.011772151  -0.009078830  -0.034404429
                        -0.030049523   0.036797277  -0.062387037  -0.000132100   0.001279525   0.032906883  -0.005373760  -0.017962485

   38    8.2  1.5 -1.5   0.007402111  -0.003373972  -0.001283663   0.000041593  -0.003035655  -0.013592852   0.010215797   0.029565962
                         0.020894734  -0.025307737   0.003429533  -0.000268452   0.000000239   0.037739913   0.004844794   0.015642366


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000471721   0.000088036  -0.000000207   0.000000010  -0.000000080  -0.000000013  -0.000000385  -0.000000035
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000000001  -0.000000006   0.000000001   0.000000004   0.000000002   0.000000004  -0.000000001   0.000000009
                        -0.000471375  -0.000088084  -0.000000502   0.000000026   0.000000070   0.000000020  -0.000000357  -0.000000004

    3    3.2  0.5  0.5  -0.000087875   0.000470862  -0.000000016  -0.000000324   0.000000003   0.000000000   0.000000003  -0.000000059
                        -0.000004266   0.000022796   0.000000001   0.000000063   0.000000039  -0.000000118   0.000000006  -0.000000200

    4    1.2  0.5 -0.5  -0.000087933   0.000471170   0.000000010   0.000000203  -0.000000000   0.000000001   0.000000010  -0.000000109
                        -0.000004254   0.000022792  -0.000000002  -0.000000039  -0.000000013   0.000000080   0.000000033  -0.000000370

    5    2.2  0.5 -0.5   0.000004262  -0.000022774  -0.000000000  -0.000000094   0.000000020  -0.000000070   0.000000001  -0.000000342
                        -0.000087981   0.000470825  -0.000000026  -0.000000493   0.000000003  -0.000000001  -0.000000010   0.000000100

    6    3.2  0.5 -0.5  -0.000471414  -0.000087979  -0.000000330   0.000000016  -0.000000118  -0.000000039   0.000000209   0.000000006
                         0.000000019   0.000000015  -0.000000001  -0.000000002   0.000000002  -0.000000002  -0.000000000   0.000000002

    7    1.2  1.5  1.5  -0.091526308   0.489797298   0.000000030   0.000000918   0.000000024   0.000000012   0.000000167  -0.000002008
                        -0.004335718   0.023230793  -0.000000000  -0.000000177  -0.000000319   0.000000863   0.000000264  -0.000006875

    8    2.2  1.5  1.5   0.004219418  -0.022609632   0.000001559  -0.000000639  -0.000002569   0.000005293  -0.000000619  -0.000006082
                        -0.087930953   0.470557012  -0.000000114  -0.000002772  -0.000000049   0.000000011  -0.000000177   0.000001738

    9    3.2  1.5  1.5   0.001016504  -0.005439713  -0.000005512   0.000000150   0.000002243   0.000002510   0.000002781  -0.000001754
                        -0.025406573   0.135961772  -0.000000030  -0.000000866  -0.000000045  -0.000000127  -0.000000058   0.000000608

   10    4.2  1.5  1.5  -0.002785035   0.014914680   0.012538422   0.307930375   0.004036921   0.001837253   0.004964684  -0.046877635
                        -0.000117708   0.000708408  -0.001979676  -0.060535277  -0.140673865   0.442254373   0.003604754  -0.161763028

   11    5.2  1.5  1.5  -0.010309537  -0.002610317  -0.017684494   0.004997008  -0.146460450   0.292535593   0.150047173  -0.394057974
                        -0.002349722   0.014019830   0.010611936   0.026428830  -0.010557090  -0.002254086  -0.005805257   0.119046859

   12    6.2  1.5  1.5  -0.028028588  -0.004981612  -0.043316376  -0.000496233  -0.098133238  -0.155831257   0.373465142   0.151759323
                         0.000803686  -0.005239227  -0.006241816  -0.009857873   0.007147405   0.003613255  -0.000343485  -0.034095591

   13    7.2  1.5  1.5  -0.000133417  -0.000006990   0.000121781  -0.003982715  -0.002036151  -0.016284346   0.002370338   0.002982180
                         0.014451302   0.002353321   0.359368506  -0.021332939  -0.300313355  -0.094102545   0.296926363   0.002326059

   14    8.2  1.5  1.5  -0.000003741  -0.000010679  -0.000153566   0.000567059   0.000712421   0.002029472   0.000526356  -0.005011618
                         0.026163623   0.004900456  -0.055431271   0.003539501   0.066688985   0.023064340   0.141042687  -0.002111183

   15    1.2  1.5  0.5   0.283331352   0.051693009  -0.000001544   0.000000098   0.000003503   0.000001066   0.000011110   0.000000167
                        -0.000282148  -0.000110545   0.000000007  -0.000000015  -0.000000024  -0.000000107  -0.000000023   0.000000268

   16    2.2  1.5  0.5   0.029439023  -0.156914851   0.000000066   0.000001015  -0.000000020   0.000000030  -0.000000025   0.000000409
                         0.273412463   0.043227505  -0.000002076  -0.000000091   0.000001505  -0.000001302  -0.000003134   0.000001069

   17    3.2  1.5  0.5  -0.100870133   0.543471480  -0.000000224  -0.000003490   0.000000137   0.000000040   0.000000123  -0.000001180
                         0.073648287   0.040988775  -0.000000618   0.000000693  -0.000001502   0.000005904  -0.000000831  -0.000004148

   18    4.2  1.5  0.5  -0.025864424  -0.004833700   0.638787677  -0.033951126  -0.197272985  -0.061045075  -0.043110133  -0.001277661
                         0.000027431   0.000016463   0.000687786   0.006017253   0.002123693   0.009113603   0.000363479  -0.000736965

   19    5.2  1.5  0.5  -0.000033050   0.000020352  -0.002738554  -0.012872302   0.008415836   0.003287009   0.000884017  -0.013208488
                        -0.024130997  -0.005049848  -0.041933518   0.019315841   0.315423623   0.286847491  -0.398913698  -0.066878158

   20    6.2  1.5  0.5   0.000011586  -0.000013561  -0.005755680  -0.045932938   0.004543087   0.002210889   0.004851783  -0.044664265
                         0.008972033   0.002000983   0.013931223  -0.001870008  -0.280254128   0.407015257   0.152679534  -0.146669025

   21    7.2  1.5  0.5  -0.000238115   0.001264790   0.001334719   0.112268749   0.077834350  -0.238802299   0.004769533  -0.176550525
                         0.005464465  -0.026020366   0.029358481   0.581411558  -0.011251138   0.000472900   0.005267545   0.051140451

   22    8.2  1.5  0.5   0.000145201  -0.000693110   0.000563790   0.001966752   0.024054118  -0.081080594  -0.011802741   0.490506684
                        -0.002705744   0.014369916   0.000089133   0.009677777   0.001822715   0.000938858   0.013201950  -0.143490721

   23    1.2  1.5 -0.5   0.051627295  -0.282986814  -0.000000099  -0.000001518   0.000000090   0.000000030   0.000000305  -0.000003116
                         0.002608029  -0.013971328   0.000000003   0.000000281  -0.000001068   0.000003503   0.000000085  -0.000010664

   24    2.2  1.5 -0.5  -0.154642997  -0.042614906  -0.000001014   0.000000452   0.000001302   0.000001505   0.000001141   0.000003014
                        -0.050758557   0.271670758   0.000000101   0.000002027  -0.000000051  -0.000000044   0.000000090  -0.000000862

   25    3.2  1.5 -0.5   0.544817177   0.097193916   0.000003558  -0.000000104  -0.000005904  -0.000001499  -0.000004312   0.000000762
                        -0.014682398   0.078435939   0.000000029   0.000000649   0.000000052   0.000000161   0.000000040  -0.000000353

   26    4.2  1.5 -0.5  -0.004827259   0.025832891   0.034477584   0.627427601  -0.008164012  -0.000941702  -0.001067821   0.011827304
                        -0.000249990   0.001277071  -0.000427179  -0.119936546   0.061179307  -0.197282167  -0.001017494   0.041457576

   27    5.2  1.5 -0.5  -0.000223662   0.001198930   0.016252214   0.005138532  -0.286863936   0.315516308  -0.067885822   0.382422342
                         0.005044933  -0.024101217   0.016572972   0.041707496   0.001170296   0.003513909   0.006218296  -0.113516832

   28    6.2  1.5 -0.5   0.000083134  -0.000445067   0.044776180  -0.008255421  -0.407000476  -0.280149709  -0.153312364  -0.147833557
                        -0.001999301   0.008960995  -0.010412749  -0.012611695   0.004113399   0.008897001  -0.001420710   0.038468419

   29    7.2  1.5 -0.5   0.000006107  -0.000026185  -0.001745947  -0.004169940   0.003237561  -0.010040424  -0.000806483  -0.006400181
                         0.026051086   0.005469588   0.592149157  -0.029091468   0.238780818   0.077999769  -0.183806373  -0.003087582

   30    8.2  1.5 -0.5   0.000002000  -0.000014300  -0.000125342   0.000537236   0.000321049   0.002196237   0.000889711  -0.009330881
                        -0.014386622  -0.002709600   0.009874804  -0.000192825   0.081085395   0.024022894   0.511063208   0.015050941

   31    1.2  1.5 -1.5  -0.490347683  -0.091628899   0.000000935  -0.000000030   0.000000863   0.000000318   0.000007162   0.000000300
                        -0.000461510  -0.000091554   0.000000003   0.000000005  -0.000000001  -0.000000029  -0.000000016   0.000000085

   32    2.2  1.5 -1.5  -0.000152326  -0.000034005  -0.000000110  -0.000001553   0.000000093   0.000000089   0.000000051  -0.000000345
                         0.471099856   0.088032124   0.000002842   0.000000179   0.000005292   0.000002568   0.000006326  -0.000000544

   33    3.2  1.5 -1.5  -0.001135804  -0.000212233   0.000000309   0.000005409  -0.000000088   0.000000010  -0.000000088   0.000000730
                         0.136065808   0.025426014   0.000000822  -0.000001058   0.000002511  -0.000002243   0.000001855   0.000002684

   34    4.2  1.5 -1.5  -0.014931489  -0.002787470   0.313817962  -0.012687564   0.442229532   0.140594160   0.168416961   0.004860208
                        -0.000013041  -0.000016992   0.001980685   0.000396039  -0.005034519  -0.006222162  -0.000719173   0.003744425

   35    5.2  1.5 -1.5   0.001929883  -0.010411026  -0.000025082   0.019354786   0.002291473   0.012831452  -0.002902535   0.036810284
                         0.014129577   0.001848859  -0.026897072   0.007123676   0.292535303   0.146278739   0.411637482   0.145577670

   36    6.2  1.5 -1.5   0.005228934  -0.027957022   0.001352945   0.041389413   0.001191583  -0.005621791  -0.010155362   0.105151641
                        -0.004992415  -0.002156984   0.009777190  -0.014219180  -0.155868587   0.098232445  -0.155210406   0.358356614

   37    7.2  1.5 -1.5  -0.000106721   0.000564971   0.000070145   0.066974007  -0.094344203   0.300308739  -0.003073638   0.285506554
                         0.002350910  -0.014440870   0.021701414   0.353072544  -0.014820258  -0.002630229  -0.002203792  -0.081589771

   38    8.2  1.5 -1.5  -0.000226105   0.001260391  -0.000103732  -0.010198082   0.023093088  -0.066692003   0.003440703   0.135448833
                         0.004895248  -0.026133246  -0.003583136  -0.054485305   0.001670864   0.000323849   0.004211291  -0.039331037


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000000022   0.000002761   0.000000041  -0.000000090   0.000001158   0.000000014  -0.000000157   0.000000001
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000000001   0.000000000  -0.000000014  -0.000000008  -0.000000000   0.000000003  -0.000000001   0.000000003
                        -0.000000000  -0.000000401  -0.000000070   0.000000097   0.000000525   0.000000007   0.000000306   0.000000008

    3    3.2  0.5  0.5  -0.000000028   0.000000004  -0.000000125  -0.000000067   0.000000003  -0.000000184   0.000000004  -0.000000224
                         0.000000111  -0.000000002  -0.000000081  -0.000000066  -0.000000001  -0.000000182   0.000000001  -0.000000008

    4    1.2  0.5 -0.5  -0.000000679   0.000000006   0.000000073   0.000000033  -0.000000010   0.000000823   0.000000001   0.000000157
                         0.000002676  -0.000000022   0.000000052   0.000000024  -0.000000010   0.000000814   0.000000000   0.000000006

    5    2.2  0.5 -0.5  -0.000000388  -0.000000000  -0.000000050  -0.000000053  -0.000000007   0.000000369   0.000000003  -0.000000011
                        -0.000000098   0.000000001   0.000000083   0.000000049   0.000000003  -0.000000373  -0.000000007   0.000000305

    6    3.2  0.5 -0.5  -0.000000003  -0.000000114   0.000000093  -0.000000149   0.000000259   0.000000002  -0.000000224  -0.000000004
                         0.000000003  -0.000000000  -0.000000014  -0.000000008  -0.000000000   0.000000002  -0.000000001   0.000000000

    7    1.2  1.5  1.5  -0.000001014  -0.000000013  -0.000278148   0.000155558   0.000772064  -0.063638550   0.001093968  -0.046536728
                         0.000003989  -0.000000047  -0.000611017   0.000894599   0.000952779  -0.062995640   0.000190359  -0.001798906

    8    2.2  1.5  1.5   0.000002142  -0.000002217   0.019655317   0.027127379   0.011919492  -0.044193610   0.020564372  -0.001407220
                         0.000000556  -0.000000007  -0.037359380  -0.019490552  -0.000645740   0.044824121  -0.001045983   0.050507283

    9    3.2  1.5  1.5   0.000000638   0.000007276   0.019475392  -0.013301206  -0.036215093  -0.013482304  -0.070261551  -0.002334539
                         0.000000144   0.000000001  -0.013566732  -0.007240417  -0.000256041   0.013063242  -0.000544248   0.015097053

   10    4.2  1.5  1.5  -0.005411631  -0.000155056   0.379051270   0.197012276   0.003304761  -0.141616196   0.006547444  -0.280462219
                         0.020624856  -0.003003884   0.234343283   0.208845360   0.008993625  -0.140103671   0.001816467  -0.010500790

   11    5.2  1.5  1.5   0.156202887   0.193810482  -0.161976611  -0.013419398  -0.037447583  -0.355659823  -0.009661248  -0.007593758
                         0.039219513   0.002014331   0.191324097   0.091873890  -0.007500108   0.359046658  -0.013590935   0.180037660

   12    6.2  1.5  1.5  -0.057515491   0.538696936  -0.088613130   0.243488280  -0.107340015   0.134172536  -0.027649050   0.001706103
                        -0.015566556  -0.001585343  -0.044766178  -0.017143577   0.004048635  -0.135437080   0.007218922  -0.066735931

   13    7.2  1.5  1.5  -0.003318452   0.002611184   0.033764918   0.021572747   0.000072841   0.006025984   0.001462695  -0.003283606
                        -0.001445251   0.147199731   0.158878993  -0.256619246  -0.220588668  -0.013386671  -0.514985840  -0.016490399

   14    8.2  1.5  1.5   0.000734165   0.000126102   0.011472099   0.006724912  -0.000069061  -0.000557609  -0.001084765   0.002379235
                         0.002894512   0.658125248   0.069525982  -0.115178487   0.251155784   0.001259448   0.316828545   0.008045050

   15    1.2  1.5  0.5  -0.000000043   0.000005877  -0.014013615   0.022973173  -0.053667876  -0.000269239  -0.068720832  -0.001686341
                        -0.000000018  -0.000000009   0.002286132   0.001223215  -0.000025680  -0.000125637  -0.000290126   0.000479945

   16    2.2  1.5  0.5  -0.000000038   0.000000002  -0.025858858  -0.013778424  -0.000122497  -0.007669321  -0.000293708   0.003318718
                         0.000000162   0.000004937  -0.047381926   0.045611053   0.011632914  -0.007358111   0.055751536   0.001374641

   17    3.2  1.5  0.5   0.000000103   0.000000017   0.064393713   0.033207910  -0.000154209   0.028320312   0.000155565  -0.010150937
                        -0.000000410   0.000001328   0.031284971   0.051934026   0.004170136   0.028190880   0.016229130   0.000023923

   18    4.2  1.5  0.5   0.000821197  -0.057942384   0.183153963  -0.294758696   0.216513407  -0.001481093   0.143065151   0.003925526
                         0.000147353  -0.000293140  -0.033583823  -0.018981812  -0.000407831   0.001873128   0.000620642  -0.000774455

   19    5.2  1.5  0.5   0.002911377  -0.000103598  -0.035082459  -0.017637906  -0.001090182   0.153188316   0.001569935  -0.045627101
                         0.001361413   0.297140599   0.165751665  -0.368246724   0.101322812   0.156217532  -0.054134643   0.002997684

   20    6.2  1.5  0.5   0.001264465  -0.000045446  -0.204237458  -0.108291074  -0.004936068   0.427194993   0.003435562  -0.121003410
                        -0.011487470  -0.114405707  -0.194319039   0.010374430  -0.047986064   0.418256953   0.022192874  -0.007380360

   21    7.2  1.5  0.5   0.108634588  -0.001719442  -0.102731510  -0.086236282  -0.000268814  -0.141854172   0.001814517  -0.011631500
                         0.027367872  -0.007682758   0.154716006   0.090022309  -0.003805492   0.147116440  -0.005134415   0.299775792

   22    8.2  1.5  0.5  -0.256306299   0.006921066   0.062836514   0.057699582   0.003851236  -0.095337360   0.003865801  -0.022214280
                        -0.064979242   0.000847948  -0.102665687  -0.053571640  -0.002191657   0.096504540  -0.013940392   0.606005237

   23    1.2  1.5 -0.5   0.000001453  -0.000000007   0.019341996   0.010023605  -0.000279816   0.038191038   0.001666108  -0.068678840
                        -0.000005695  -0.000000046   0.012455927   0.010056597  -0.000099887   0.037705254   0.000546057  -0.002419463

   24    2.2  1.5 -0.5  -0.000004785   0.000000166   0.015527939   0.048701282  -0.010627116  -0.008089726  -0.003370334   0.001904561
                        -0.000001216   0.000000003  -0.045045491  -0.023279016  -0.000157127   0.008360385   0.001242730  -0.055719769

   25    3.2  1.5 -0.5  -0.000001283  -0.000000423   0.057324313  -0.070521622   0.039959289  -0.002821532   0.010142101   0.000795288
                        -0.000000343  -0.000000001  -0.022667851  -0.012328846  -0.000145120   0.003074537   0.000424112  -0.016210378

   26    4.2  1.5 -0.5  -0.013957141  -0.000059004  -0.250092915  -0.128837053   0.000263160  -0.153715395  -0.003891941   0.142978388
                         0.056237035   0.000832224  -0.157151303  -0.134440548  -0.002373393  -0.152478848  -0.000928619   0.005020277

   27    5.2  1.5 -0.5  -0.288051191   0.000604082  -0.229858751  -0.068581273   0.218766452  -0.070445076   0.045473441  -0.000565579
                        -0.072931870   0.003156683   0.288238964   0.154922568  -0.003437576   0.072835376   0.004794232   0.054154449

   28    6.2  1.5 -0.5   0.110885110  -0.011445873  -0.081726383   0.279337110   0.597851749   0.037240671   0.121200308   0.004307860
                         0.028163100  -0.001597755  -0.071801001  -0.037994833   0.002779716  -0.030662021  -0.002603985  -0.022040170

   29    7.2  1.5 -0.5   0.007024476  -0.000172247  -0.017221990  -0.007273541   0.002510858   0.002866109  -0.000196399   0.001610678
                         0.003554994   0.112028766  -0.123467062   0.185574516  -0.204351533  -0.002517826   0.300001298   0.005201961

   30    8.2  1.5 -0.5   0.000879147   0.000009902   0.015422194   0.009150832   0.000021971  -0.001198783  -0.001695142   0.003313187
                        -0.006917172  -0.264414865   0.077209574  -0.120020553  -0.135655218  -0.004265946   0.606409884   0.014081965

   31    1.2  1.5 -1.5  -0.000000042  -0.000004116  -0.000649788  -0.000583182   0.089545017   0.001218870  -0.046571469  -0.001100623
                        -0.000000024   0.000000003   0.000634257   0.000332577  -0.000075682  -0.000135005  -0.000037234   0.000147081

   32    2.2  1.5 -1.5   0.000000538  -0.000000012  -0.010585005  -0.005932894  -0.000073070   0.008024223   0.000585157  -0.020507145
                        -0.000002150  -0.000002212  -0.031681761   0.041795401   0.062946577   0.008837596  -0.050523494  -0.001855934

   33    3.2  1.5 -1.5  -0.000001788   0.000000018   0.015022506   0.007848593   0.000407475  -0.025939113  -0.001737512   0.070228381
                         0.000007053  -0.000000654   0.001915734   0.022399703   0.018768452  -0.025273721  -0.015177356   0.002226282

   34    4.2  1.5 -1.5  -0.002873628  -0.021322273  -0.281982334   0.444499744   0.199208869   0.008672297  -0.280658161  -0.006613969
                        -0.000888605   0.000176376   0.054001708   0.031884442  -0.000110201  -0.004074063  -0.000564781   0.001556917

   35    5.2  1.5 -1.5  -0.045682900   0.000375666  -0.042899637  -0.019331569   0.000598015  -0.031907665  -0.000489752   0.010189568
                         0.188360381  -0.161050834   0.082343870  -0.249935238   0.505379121  -0.020987474  -0.180197070  -0.013199467

   36    6.2  1.5 -1.5  -0.133939591   0.000952682  -0.187377866  -0.098049427  -0.000234836  -0.073503194  -0.000926331   0.027342943
                         0.521782606   0.059577191  -0.156428833  -0.015575862  -0.190644740  -0.078329757   0.066751308   0.008303391

   37    7.2  1.5 -1.5   0.142042551   0.000585296   0.132725180   0.120377676   0.005123411  -0.155001485  -0.003931198   0.018842094
                         0.038710367   0.003571876  -0.220687217  -0.109049618  -0.013757402   0.156951922   0.016348119  -0.514643109

   38    8.2  1.5 -1.5   0.637906079  -0.002625276   0.061969006   0.049999261  -0.000488657   0.176490010   0.002694567  -0.011407250
                         0.161878635  -0.001423068  -0.097319837  -0.049654256   0.001287769  -0.178691100  -0.007944992   0.316624980


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.001178001   0.000023177   0.000873192  -0.000004779   0.001374718   0.000000101
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000001210   0.000003318   0.000001606   0.000011408   0.000000001   0.000000212
                         0.000166802  -0.000011250   0.001453948  -0.000008091  -0.001371047  -0.000000333

    3    3.2  0.5  0.5   0.000019970   0.000664877   0.000007352  -0.000356644  -0.000000062   0.000923352
                         0.000028156   0.001165461   0.000009604   0.000460562  -0.000000108   0.001013026

    4    1.2  0.5 -0.5  -0.000011504  -0.000584693  -0.000002915  -0.000532679  -0.000000068   0.000926109
                        -0.000020121  -0.001022653   0.000003787   0.000691894  -0.000000074   0.001015959

    5    2.2  0.5 -0.5   0.000008119   0.000145406   0.000013370   0.001151090   0.000000103  -0.001013245
                        -0.000008464  -0.000081741  -0.000004104   0.000888234  -0.000000381   0.000923637

    6    3.2  0.5 -0.5  -0.001341775   0.000034355  -0.000582502   0.000003125  -0.001370694  -0.000000121
                         0.000001272   0.000003361   0.000001636   0.000011684   0.000000062   0.000000027

    7    1.2  1.5  1.5   0.000820530   0.024367660   0.000079985  -0.013026326  -0.000009489   0.022904033
                         0.001029436   0.042618321   0.000350008   0.016858473  -0.000001895   0.025078583

    8    2.2  1.5  1.5   0.009252579  -0.041076355  -0.023933657  -0.016045668  -0.000002601  -0.024103494
                         0.000724420   0.023414613   0.000266490  -0.012402678  -0.000009086   0.021986210

    9    3.2  1.5  1.5  -0.035743930  -0.011350366   0.081605033  -0.005155703   0.000015874  -0.006910722
                         0.000163972   0.006740885   0.000020687  -0.003974586  -0.000002643   0.006405997

   10    4.2  1.5  1.5  -0.006124434  -0.202132714  -0.002160001   0.107989688   0.000033103  -0.150424137
                        -0.008278259  -0.353426415  -0.002970602  -0.139770017  -0.000196866  -0.164670564

   11    5.2  1.5  1.5  -0.134206613   0.334793614  -0.059033583   0.131390895   0.155868225   0.154316353
                        -0.005172206  -0.189061964   0.006812610   0.102365929  -0.003840087  -0.140914939

   12    6.2  1.5  1.5  -0.384416824  -0.113637413  -0.166669933  -0.047936635   0.418098047  -0.057420309
                         0.002041464   0.071626509  -0.004067468  -0.034427351   0.002509190   0.052592213

   13    7.2  1.5  1.5  -0.001597758  -0.006930054  -0.000371114   0.000284423   0.001945522  -0.003683505
                         0.041433008   0.001325764   0.441979614  -0.004885223  -0.214924626   0.003319195

   14    8.2  1.5  1.5   0.000152635   0.001090774   0.000271752   0.002148999   0.000082862   0.000281511
                         0.441937154  -0.010133984  -0.041360978   0.000399776  -0.391055803  -0.000106195

   15    1.2  1.5  0.5  -0.035374510   0.001232358  -0.073710443   0.000393435   0.019608855  -0.000052126
                         0.000158670   0.000267759   0.000076927   0.000745335  -0.000020263  -0.000058599

   16    2.2  1.5  0.5   0.000079511   0.003811576  -0.000020282  -0.002327200   0.000010854  -0.007334535
                        -0.074756545   0.008471913   0.023593225   0.002567383   0.018854093  -0.008039086

   17    3.2  1.5  0.5  -0.000500603  -0.013506960  -0.000327024   0.007167292   0.000035453   0.025382300
                        -0.022210181  -0.023163565   0.006604132  -0.009379407   0.005443382   0.027849587

   18    4.2  1.5  0.5   0.176819628  -0.002047901  -0.407285783   0.002483267   0.386304664   0.000211617
                         0.000410213   0.000509860  -0.000184338   0.002116917  -0.000440204  -0.000047575

   19    5.2  1.5  0.5   0.000019398  -0.037741824  -0.000141664  -0.084643393   0.000422594  -0.005822875
                        -0.166108474  -0.047281529   0.382581786   0.110836492   0.362030718   0.005358084

   20    6.2  1.5  0.5  -0.000577203  -0.077965194   0.000226972  -0.234056482  -0.000130924   0.003519096
                         0.059644945  -0.147019374  -0.139403511   0.302730454  -0.134937821  -0.003154074

   21    7.2  1.5  0.5  -0.008489934  -0.384128896  -0.001134283   0.031936244   0.000051474  -0.288805433
                         0.009626569   0.218406537  -0.007337759   0.026535476  -0.008802615   0.263240013

   22    8.2  1.5  0.5   0.002173106   0.036135592   0.004271272   0.349966879  -0.000240721   0.158961608
                        -0.002587098  -0.020267798  -0.000895830   0.270139274   0.000355874  -0.144890283

   23    1.2  1.5 -0.5   0.000844122   0.017420169   0.000350574  -0.045027016  -0.000078422  -0.013194963
                         0.000936942   0.030788290   0.000766429   0.058359260   0.000000954  -0.014505191

   24    2.2  1.5 -0.5   0.009246540   0.064858644   0.003454002  -0.018707014  -0.010882201  -0.013941060
                        -0.000896052  -0.037173965  -0.000277814  -0.014376657  -0.000004737   0.012693454

   25    3.2  1.5 -0.5  -0.026812990   0.019529709  -0.011804302  -0.005432435   0.037681038  -0.004046709
                        -0.000228656  -0.010589297  -0.000042610  -0.003769636  -0.000003197   0.003640854

   26    4.2  1.5 -0.5  -0.000573840  -0.088119424   0.000162505  -0.248313129   0.000107401  -0.259917332
                        -0.002030900  -0.153298130   0.003259072   0.322834837   0.000188441  -0.285787452

   27    5.2  1.5 -0.5  -0.059779247   0.144193476   0.139459438  -0.303234017   0.000037079  -0.267836404
                        -0.009296774  -0.082463733   0.000545141  -0.233276604  -0.007912873   0.243577668

   28    6.2  1.5 -0.5  -0.166328887  -0.051492842   0.382658531   0.110598083   0.000039760   0.099811355
                         0.005288518   0.030105477  -0.000783482   0.084861384   0.004725531  -0.090807082

   29    7.2  1.5 -0.5  -0.001055532  -0.004143151   0.001543731   0.005122289  -0.000017771   0.006470724
                        -0.441877030   0.012148421   0.041493037   0.005375077  -0.390773442  -0.005968117

   30    8.2  1.5 -0.5   0.000340666   0.001167320   0.000558579   0.003315464   0.000009665  -0.000100834
                         0.041430046  -0.003170618   0.442099233  -0.002837953   0.215085999   0.000417643

   31    1.2  1.5 -1.5  -0.049092811   0.001300945  -0.021304738   0.000228543  -0.033963642  -0.000007793
                        -0.000000868   0.000201369   0.000037429   0.000276895  -0.000032036  -0.000005736

   32    2.2  1.5 -1.5   0.000061152   0.005221347   0.000039107   0.014811565  -0.000010628  -0.000008467
                         0.047281152   0.007672844   0.020280245  -0.018801823   0.032624711   0.000004198

   33    3.2  1.5 -1.5  -0.000218256  -0.017598926   0.000004189  -0.049765657  -0.000078667   0.000008740
                         0.013199345  -0.031111625   0.006509884   0.064674269   0.009422775   0.000013511

   34    4.2  1.5 -1.5   0.407145996  -0.010226396   0.176627682  -0.001036147   0.223033094  -0.000123189
                         0.000055720  -0.001207920  -0.000303332  -0.003523704   0.000234057   0.000157087

   35    5.2  1.5 -1.5  -0.002043066  -0.071102731  -0.000958786   0.041410771   0.000181813   0.102166126
                        -0.384482791  -0.113941074  -0.166557591  -0.042620694  -0.208974936   0.117778320

   36    6.2  1.5 -1.5  -0.005777631  -0.189030612  -0.001963783   0.098451793  -0.000184788   0.283515337
                         0.134202970  -0.334735551   0.058985651  -0.134546111   0.077865259   0.307296805

   37    7.2  1.5 -1.5   0.002288759   0.035176039   0.004044429   0.350439243   0.000028488  -0.157525193
                         0.006674195  -0.021952065   0.002754795   0.269329638   0.004958271   0.146226514

   38    8.2  1.5 -1.5   0.008256177   0.383732944   0.000994194  -0.032939114  -0.000111165  -0.288946314
                        -0.005976868  -0.219220208  -0.001946687  -0.025016375  -0.000279585   0.263504603


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  62.328%   0.088%   4.252%   0.003%   6.301%  27.027%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  32.857%   0.046%  33.741%   0.023%   6.308%  27.025%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.007%   4.674%   0.043%  61.938%  27.035%   6.303%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.088%  62.328%   0.003%   4.252%  27.027%   6.301%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.046%  32.857%   0.023%  33.741%  27.025%   6.308%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   4.674%   0.007%  61.938%   0.043%   6.303%  27.035%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.219%  26.842%  11.141%  15.222%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.555%   5.031%  15.060%  17.045%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.465%   0.023%   7.397%   8.617%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.144%   0.197%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.026%   0.460%   0.057%   0.089%
   12    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.052%   0.081%   0.010%   0.010%
   13    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.091%   0.003%   0.139%   0.099%
   14    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.224%   0.004%   0.065%   0.049%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.365%   0.507%   8.522%   6.461%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   2.473%   3.464%   3.051%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.347%  24.317%   1.227%   0.940%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.221%   0.003%   0.020%   0.015%
   19    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.099%   0.049%   0.002%   0.003%
   20    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.458%   0.010%   0.016%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.069%   0.072%   0.096%
   22    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.007%   0.325%   0.436%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.507%  28.365%   6.461%   8.522%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.473%   0.001%   3.051%   3.464%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  24.317%   0.347%   0.940%   1.227%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.221%   0.015%   0.020%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.049%   0.099%   0.003%   0.002%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.458%   0.001%   0.016%   0.010%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.069%   0.000%   0.096%   0.072%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.001%   0.436%   0.325%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  26.842%   0.219%  15.222%  11.141%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.031%   0.555%  17.045%  15.060%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   9.465%   8.617%   7.397%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.197%   0.144%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.460%   0.026%   0.089%   0.057%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.081%   0.052%   0.010%   0.010%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.091%   0.099%   0.139%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.224%   0.049%   0.065%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.551%   0.007%   0.174%  18.603%   0.157%   0.779%   0.840%  24.044%   0.000%   0.000%
    8    2.2  1.5  1.5  13.942%   1.212%   0.003%  18.144%   2.680%   1.923%   0.775%  22.194%   0.000%   0.000%
    9    3.2  1.5  1.5   1.460%  13.429%   2.806%   0.635%  49.303%   3.362%   0.065%   1.852%   0.000%   0.000%
   10    4.2  1.5  1.5   0.408%   0.000%   0.003%   0.270%   0.002%   0.011%   0.001%   0.022%   0.016%   9.849%
   11    5.2  1.5  1.5   0.044%   0.007%   0.052%   0.220%   0.000%   0.014%   0.011%   0.020%   0.043%   0.072%
   12    6.2  1.5  1.5   0.004%   0.075%   0.221%   0.052%   0.013%   0.000%   0.079%   0.005%   0.192%   0.010%
   13    7.2  1.5  1.5   0.000%   0.436%   0.122%   0.003%   0.151%   0.011%   0.021%   0.001%  12.915%   0.047%
   14    8.2  1.5  1.5   0.000%   0.001%   0.161%   0.001%   0.112%   0.013%   0.068%   0.002%   0.307%   0.001%
   15    1.2  1.5  0.5   0.000%   0.313%  35.016%   0.521%   9.857%   0.603%   8.028%   0.267%   0.000%   0.000%
   16    2.2  1.5  0.5   2.993%  33.319%  15.614%   0.211%  24.095%   3.041%   7.562%   2.649%   0.000%   0.000%
   17    3.2  1.5  0.5  27.387%   3.534%   0.794%   6.048%   2.714%   0.052%   1.560%  29.704%   0.000%   0.000%
   18    4.2  1.5  0.5   0.000%   0.098%   0.013%   0.001%   0.251%   0.022%   0.067%   0.002%  40.805%   0.119%
   19    5.2  1.5  0.5   0.043%   0.234%   0.009%   0.005%   0.266%   0.007%   0.058%   0.003%   0.177%   0.054%
   20    6.2  1.5  0.5   0.367%   0.028%   0.004%   0.009%   0.008%   0.265%   0.008%   0.000%   0.023%   0.211%
   21    7.2  1.5  0.5   0.106%   0.000%   0.001%   0.161%   0.012%   0.113%   0.003%   0.068%   0.086%  35.064%
   22    8.2  1.5  0.5   0.000%   0.000%   0.002%   0.122%   0.011%   0.150%   0.001%   0.021%   0.000%   0.010%
   23    1.2  1.5 -0.5   0.313%   0.000%   0.521%  35.016%   0.603%   9.857%   0.267%   8.028%   0.000%   0.000%
   24    2.2  1.5 -0.5  33.319%   2.993%   0.211%  15.614%   3.041%  24.095%   2.649%   7.562%   0.000%   0.000%
   25    3.2  1.5 -0.5   3.534%  27.387%   6.048%   0.794%   0.052%   2.714%  29.704%   1.560%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.098%   0.000%   0.001%   0.013%   0.022%   0.251%   0.002%   0.067%   0.119%  40.805%
   27    5.2  1.5 -0.5   0.234%   0.043%   0.005%   0.009%   0.007%   0.266%   0.003%   0.058%   0.054%   0.177%
   28    6.2  1.5 -0.5   0.028%   0.367%   0.009%   0.004%   0.265%   0.008%   0.000%   0.008%   0.211%   0.023%
   29    7.2  1.5 -0.5   0.000%   0.106%   0.161%   0.001%   0.113%   0.012%   0.068%   0.003%  35.064%   0.086%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.122%   0.002%   0.150%   0.011%   0.021%   0.001%   0.010%   0.000%
   31    1.2  1.5 -1.5   0.007%   0.551%  18.603%   0.174%   0.779%   0.157%  24.044%   0.840%   0.000%   0.000%
   32    2.2  1.5 -1.5   1.212%  13.942%  18.144%   0.003%   1.923%   2.680%  22.194%   0.775%   0.000%   0.000%
   33    3.2  1.5 -1.5  13.429%   1.460%   0.635%   2.806%   3.362%  49.303%   1.852%   0.065%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.000%   0.408%   0.270%   0.003%   0.011%   0.002%   0.022%   0.001%   9.849%   0.016%
   35    5.2  1.5 -1.5   0.007%   0.044%   0.220%   0.052%   0.014%   0.000%   0.020%   0.011%   0.072%   0.043%
   36    6.2  1.5 -1.5   0.075%   0.004%   0.052%   0.221%   0.000%   0.013%   0.005%   0.079%   0.010%   0.192%
   37    7.2  1.5 -1.5   0.436%   0.000%   0.003%   0.122%   0.011%   0.151%   0.001%   0.021%   0.047%  12.915%
   38    8.2  1.5 -1.5   0.001%   0.000%   0.001%   0.161%   0.013%   0.112%   0.002%   0.068%   0.001%   0.307%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.802%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.178%   0.112%   0.014%   0.396%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.056%   0.023%   0.131%   0.035%
   10    4.2  1.5  1.5   1.981%  19.559%   0.004%   2.836%   0.045%   0.001%  19.860%   8.243%   0.009%   3.968%
   11    5.2  1.5  1.5   2.156%   8.558%   2.255%  16.945%   2.594%   3.757%   6.284%   0.862%   0.146%  25.541%
   12    6.2  1.5  1.5   0.968%   2.430%  13.948%   2.419%   0.355%  29.020%   0.986%   5.958%   1.154%   3.635%
   13    7.2  1.5  1.5   9.019%   0.912%   8.817%   0.001%   0.001%   2.167%   2.638%   6.632%   4.866%   0.022%
   14    8.2  1.5  1.5   0.445%   0.054%   1.989%   0.003%   0.001%  43.313%   0.497%   1.331%   6.308%   0.000%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   0.053%   0.288%   0.000%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.291%   0.227%   0.014%   0.011%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.513%   0.380%   0.002%   0.160%
   18    4.2  1.5  0.5   3.892%   0.381%   0.186%   0.000%   0.000%   0.336%   3.467%   8.724%   4.688%   0.001%
   19    5.2  1.5  0.5   9.956%   8.229%  15.913%   0.465%   0.001%   8.829%   2.870%  13.592%   1.027%   4.787%
   20    6.2  1.5  0.5   7.856%  16.567%   2.333%   2.351%   0.013%   1.309%   7.947%   1.183%   0.233%  35.743%
   21    7.2  1.5  0.5   0.618%   5.703%   0.005%   3.379%   1.255%   0.006%   3.449%   1.554%   0.001%   4.177%
   22    8.2  1.5  0.5   0.058%   0.657%   0.031%  26.119%   6.992%   0.005%   1.449%   0.620%   0.002%   1.840%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   0.020%   0.000%   0.288%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.227%   0.291%   0.011%   0.014%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.380%   0.513%   0.160%   0.002%
   26    4.2  1.5 -0.5   0.381%   3.892%   0.000%   0.186%   0.336%   0.000%   8.724%   3.467%   0.001%   4.688%
   27    5.2  1.5 -0.5   8.229%   9.956%   0.465%  15.913%   8.829%   0.001%  13.592%   2.870%   4.787%   1.027%
   28    6.2  1.5 -0.5  16.567%   7.856%   2.351%   2.333%   1.309%   0.013%   1.183%   7.947%  35.743%   0.233%
   29    7.2  1.5 -0.5   5.703%   0.618%   3.379%   0.005%   0.006%   1.255%   1.554%   3.449%   4.177%   0.001%
   30    8.2  1.5 -0.5   0.657%   0.058%  26.119%   0.031%   0.005%   6.992%   0.620%   1.449%   1.840%   0.002%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.802%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.112%   0.178%   0.396%   0.014%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.023%   0.056%   0.035%   0.131%
   34    4.2  1.5 -1.5  19.559%   1.981%   2.836%   0.004%   0.001%   0.045%   8.243%  19.860%   3.968%   0.009%
   35    5.2  1.5 -1.5   8.558%   2.156%  16.945%   2.255%   3.757%   2.594%   0.862%   6.284%  25.541%   0.146%
   36    6.2  1.5 -1.5   2.430%   0.968%   2.419%  13.948%  29.020%   0.355%   5.958%   0.986%   3.635%   1.154%
   37    7.2  1.5 -1.5   0.912%   9.019%   0.001%   8.817%   2.167%   0.001%   6.632%   2.638%   0.022%   4.866%
   38    8.2  1.5 -1.5   0.054%   0.445%   0.003%   1.989%  43.313%   0.001%   1.331%   0.497%   0.000%   6.308%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.217%   0.000%   0.241%   0.000%   0.045%   0.000%   0.115%
    8    2.2  1.5  1.5   0.042%   0.255%   0.009%   0.224%   0.057%   0.041%   0.000%   0.106%
    9    3.2  1.5  1.5   0.494%   0.023%   0.128%   0.017%   0.666%   0.004%   0.000%   0.009%
   10    4.2  1.5  1.5   0.005%   7.877%   0.011%  16.577%   0.001%   3.120%   0.000%   4.974%
   11    5.2  1.5  1.5   0.028%   3.247%   1.804%  14.783%   0.353%   2.774%   2.431%   4.367%
   12    6.2  1.5  1.5   0.082%   0.446%  14.778%   1.804%   2.780%   0.348%  17.481%   0.606%
   13    7.2  1.5  1.5  26.521%   0.028%   0.172%   0.005%  19.535%   0.002%   4.620%   0.002%
   14    8.2  1.5  1.5  10.038%   0.007%  19.531%   0.010%   0.171%   0.000%  15.292%   0.000%
   15    1.2  1.5  0.5   0.472%   0.000%   0.125%   0.000%   0.543%   0.000%   0.038%   0.000%
   16    2.2  1.5  0.5   0.311%   0.001%   0.559%   0.009%   0.056%   0.001%   0.036%   0.012%
   17    3.2  1.5  0.5   0.026%   0.010%   0.049%   0.072%   0.004%   0.014%   0.003%   0.142%
   18    4.2  1.5  0.5   2.047%   0.002%   3.127%   0.000%  16.588%   0.001%  14.923%   0.000%
   19    5.2  1.5  0.5   0.293%   0.209%   2.759%   0.366%  14.637%   1.945%  13.107%   0.006%
   20    6.2  1.5  0.5   0.050%   1.470%   0.356%   2.769%   1.943%  14.643%   1.821%   0.002%
   21    7.2  1.5  0.5   0.003%   9.000%   0.016%  19.526%   0.006%   0.172%   0.008%  15.270%
   22    8.2  1.5  0.5   0.021%  36.774%   0.001%   0.172%   0.002%  19.545%   0.000%   4.626%
   23    1.2  1.5 -0.5   0.000%   0.472%   0.000%   0.125%   0.000%   0.543%   0.000%   0.038%
   24    2.2  1.5 -0.5   0.001%   0.311%   0.009%   0.559%   0.001%   0.056%   0.012%   0.036%
   25    3.2  1.5 -0.5   0.010%   0.026%   0.072%   0.049%   0.014%   0.004%   0.142%   0.003%
   26    4.2  1.5 -0.5   0.002%   2.047%   0.000%   3.127%   0.001%  16.588%   0.000%  14.923%
   27    5.2  1.5 -0.5   0.209%   0.293%   0.366%   2.759%   1.945%  14.637%   0.006%  13.107%
   28    6.2  1.5 -0.5   1.470%   0.050%   2.769%   0.356%  14.643%   1.943%   0.002%   1.821%
   29    7.2  1.5 -0.5   9.000%   0.003%  19.526%   0.016%   0.172%   0.006%  15.270%   0.008%
   30    8.2  1.5 -0.5  36.774%   0.021%   0.172%   0.001%  19.545%   0.002%   4.626%   0.000%
   31    1.2  1.5 -1.5   0.217%   0.000%   0.241%   0.000%   0.045%   0.000%   0.115%   0.000%
   32    2.2  1.5 -1.5   0.255%   0.042%   0.224%   0.009%   0.041%   0.057%   0.106%   0.000%
   33    3.2  1.5 -1.5   0.023%   0.494%   0.017%   0.128%   0.004%   0.666%   0.009%   0.000%
   34    4.2  1.5 -1.5   7.877%   0.005%  16.577%   0.011%   3.120%   0.001%   4.974%   0.000%
   35    5.2  1.5 -1.5   3.247%   0.028%  14.783%   1.804%   2.774%   0.353%   4.367%   2.431%
   36    6.2  1.5 -1.5   0.446%   0.082%   1.804%  14.778%   0.348%   2.780%   0.606%  17.481%
   37    7.2  1.5 -1.5   0.028%  26.521%   0.005%   0.172%   0.002%  19.535%   0.002%   4.620%
   38    8.2  1.5 -1.5   0.007%  10.038%   0.010%  19.531%   0.000%   0.171%   0.000%  15.292%


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
              1      24       31.91       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      347.14       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     12884.91  10209.71      1.61   2189.65    479.21      3.77      0.21      0.43
 REAL TIME  *     13060.93 SEC
 DISK USED  *       379.13 MB (local),        4.68 GB (total)
 SF USED    *         2.70 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -460.969537217812

              CI              CI           MULTI         RHF-SCF
   -460.94599309   -461.32989200   -460.52782324   -460.88965810
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
