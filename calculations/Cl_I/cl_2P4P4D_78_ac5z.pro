
 Working directory              : /wrk/irikura/molpro.9CcYtNHYdM/
 Global scratch directory       : /wrk/irikura/molpro.9CcYtNHYdM/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.9CcYtNHYdM/

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
 
 basis=aug-cc-pwCV5Z-DK
 
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
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Cl SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 27-Feb-24          TIME: 10:05:56  
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

 SETTING BASIS          =    AUG-CC-PWCV5Z-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CL     S aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry CL     P aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry CL     D aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry CL     F aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry CL     G aug-cc-pwCV5Z-DK     selected for orbital group  1
 Library entry CL     H aug-cc-pwCV5Z-DK     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         322
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          217   (  102Ag  +  115Au  )
 NUMBER OF INNER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-14

     349.438 MB (compressed) written to integral file ( 18.1%)

     Node minimum: 25.690 MB, node maximum: 32.768 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   11746161.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:   11746161      RECORD LENGTH: 524288

 Memory used in sort:      12.30 MW

 SORT1 READ   241177324. AND WROTE     2024636. INTEGRALS IN      6 RECORDS. CPU TIME:     1.10 SEC, REAL TIME:     1.13 SEC
 SORT2 READ    24926353. AND WROTE   141159946. INTEGRALS IN   1176 RECORDS. CPU TIME:     0.23 SEC, REAL TIME:     0.26 SEC

 Node minimum:    11745169.  Node maximum:    11770866. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415 7 8 910111213  1415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  19202111121314151617  18192021111213141516  1718192021

 Eigenvalues of metric

         1 0.344E-05 0.409E-03 0.210E-02 0.417E-02 0.417E-02 0.417E-02 0.417E-02 0.417E-02
         2 0.435E-04 0.435E-04 0.435E-04 0.483E-02 0.483E-02 0.483E-02 0.161E-01 0.161E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.73      3.43
 REAL TIME  *         4.71 SEC
 DISK USED  *        30.55 MB (local),      962.46 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   5

 NELEC=   17   SYM=2   MS2= 1   THRE=1.0D-12   THRD=1.0D-06   THRG=1.0D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -333.64469501    -333.64469501     0.00D+00     0.22D+00     0     0       0.06      0.12    start
   2     -449.63700172    -115.99230671     0.50D+00     0.20D+00     1     0       0.07      0.19    diag2
   3     -459.59979907      -9.96279735     0.30D+00     0.49D-01     2     0       0.07      0.26    diag2
   4     -460.85289884      -1.25309977     0.48D-01     0.39D-01     3     0       0.06      0.32    diag2
   5     -460.89196557      -0.03906673     0.77D-02     0.57D-02     4     0       0.07      0.39    diag2
   6     -460.89429081      -0.00232524     0.15D-02     0.74D-03     5     0       0.06      0.45    diag2
   7     -460.89440841      -0.00011759     0.36D-03     0.26D-03     6     0       0.07      0.52    diag2
   8     -460.89441091      -0.00000250     0.44D-04     0.33D-04     7     0       0.06      0.58    fixocc
   9     -460.89441097      -0.00000006     0.44D-05     0.49D-05     8     0       0.07      0.65    diag2
  10     -460.89441097      -0.00000000     0.85D-06     0.73D-06     9     0       0.07      0.72    diag2/orth
  11     -460.89441097      -0.00000000     0.13D-06     0.11D-06     9     0       0.07      0.79    diag2
  12     -460.89441097      -0.00000000     0.14D-07     0.18D-07     9     0       0.07      0.86    diag2
  13     -460.89441097      -0.00000000     0.12D-08     0.12D-08     9     0       0.07      0.93    diag2
  14     -460.89441097       0.00000000     0.95D-10     0.72D-10     0     0       0.06      0.99    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   5

 !RHF STATE 1.2 Energy               -460.894410968213
  RHF One-electron energy            -636.789419336316
  RHF Two-electron energy             175.895008368103
  RHF Kinetic energy                  469.448598014630
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.981778224320

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.25921     1  1  s    0.94754
    2.1     2.00000   -10.67377     1  2  s    1.04953
    3.1     2.00000    -1.07949     1  2  s   -0.35193    1  9  s    0.44632    1 10  s    0.61133
    1.2     2.00000    -8.07462     1  1  pz   0.99628
    2.2     2.00000    -8.07270     1  1  py   0.99934
    3.2     2.00000    -8.07270     1  1  px   1.00091
    4.2     2.00000    -0.49141     1  1  px  -0.26782    1  8  px   0.41741    1  9  px   0.44641
    5.2     2.00000    -0.49141     1  1  py  -0.26740    1  8  py   0.41675    1  9  py   0.44571
    6.2     1.00000    -0.56876     1  1  pz  -0.27395    1  8  pz   0.43976    1  9  pz   0.45129


 HOMO      6.2    -0.568761 =     -15.4768eV
 LUMO      7.2     0.081320 =       2.2128eV
 LUMO-HOMO         0.650082 =      17.6896eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.17       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        1.14       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.75      1.01      3.43
 REAL TIME  *         6.68 SEC
 DISK USED  *        34.69 MB (local),     1012.12 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     204 (   98  106)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.436D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.166D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.443D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.111D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 5 3 1   2 6 4 3 5 711 912 8  15141310 2 4 6 3 5 1   7 911 81214151310 2
                                        4 6 3 5 1 711 912 8  15141310 2 4 6 5 3 1   711 9 81215141013 2   4 6 5 3 1 2 6 4 5 3
                                        7 91112 815141013 2   6 4 5 3 1 2 6 4 5 3   1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.542D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.540D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.979D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.660D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.596D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.691D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.594D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.522D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.583D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 3 1 2 3   2 1 6 5 4 810 9 7 3   2 1 6 5 4 810 9 7 6   4 5 810 9 719111221
                                       13161415172018 3 2 1   6 5 410 8 9 7191112  1321161417151820 3 2   1 6 4 5 810 7 91912
                                       111321161417152018 3   1 2 6 4 5 810 9 7 3   1 2 6 4 5 810 7 9 3   2 1 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-09 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  1368  ( 22 closed/active, 514 closed/virtual, 0 active/active, 832 active/virtual )
 Total number of variables:    13516
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   50    0   -460.60879045    -460.64422650   -0.03543605    0.20526320 0.00069912 0.00064253  0.10E+01      2.73
   2    9   43    0   -460.63577711    -460.63813254   -0.00235543    0.14756553 0.00017692 0.00060532  0.20E+00      4.95
   3   11   49    0   -460.63815465    -460.63815586   -0.00000121    0.00087512 0.00000028 0.00000020  0.13E-01      7.87
   4   11   37    0   -460.63815586    -460.63815586   -0.00000000    0.00000050 0.00000000 0.00000000  0.11E-04     10.04
   5    2    4    0   -460.63815586    -460.63815586    0.00000000    0.00000000 0.00000000 0.00000000  0.42E-12     10.90

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.12E-10)
                       Final energy:   -460.63815586
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy              -460.889344431996
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.97281309
 One electron energy                          -637.43750630
 Two electron energy                           176.54816187
 Virial ratio                                    1.98067235
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy              -460.889344431996
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.97281309
 One electron energy                          -637.43750630
 Two electron energy                           176.54816187
 Virial ratio                                    1.98067235
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy              -460.889344431995
 Nuclear energy                                  0.00000000
 Kinetic energy                                469.97281309
 One electron energy                          -637.43750630
 Two electron energy                           176.54816187
 Virial ratio                                    1.98067235
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy              -460.549608487666
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.93581298
 One electron energy                          -631.91749969
 Two electron energy                           171.36789120
 Virial ratio                                    1.98211652
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy              -460.549608487665
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.93581298
 One electron energy                          -631.91749969
 Two electron energy                           171.36789120
 Virial ratio                                    1.98211652
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy              -460.549608487665
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.93581298
 One electron energy                          -631.91749969
 Two electron energy                           171.36789120
 Virial ratio                                    1.98211652
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy              -460.540571143637
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.95750067
 One electron energy                          -631.95429435
 Two electron energy                           171.41372321
 Virial ratio                                    1.98205183
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy              -460.540571143637
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.95750067
 One electron energy                          -631.95429435
 Two electron energy                           171.41372321
 Virial ratio                                    1.98205183
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy              -460.540571143637
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.95750067
 One electron energy                          -631.95429435
 Two electron energy                           171.41372321
 Virial ratio                                    1.98205183
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy              -460.540571143637
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.95750067
 One electron energy                          -631.95429435
 Two electron energy                           171.41372321
 Virial ratio                                    1.98205183
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy              -460.540571143637
 Nuclear energy                                  0.00000000
 Kinetic energy                                468.95750067
 One electron energy                          -631.95429435
 Two electron energy                           171.41372321
 Virial ratio                                    1.98205183
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.002618601490
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.997544558519
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.999836839991
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.996059791575
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.533964609908
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.469975598517
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     1.015979429312
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     0.997663515248
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     3.999547810233
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     1.000208185918
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     2.986601059288
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.997566271442
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.002721625898
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999712102660
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.998076470696
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.466152869693
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.535770659612
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     0.986283487560
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.004341493165
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     0.999034250731
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     3.998692101833
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     3.011648666711
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.999815127068
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999733815582
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.000451057349
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.005863737729
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999882520400
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.994253741871
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.997737083127
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.997994991587
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.001417939036
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     1.001099712249
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.001750274001
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 1 2 4 6 5 3   6 4 2 3 5 7 91112 8  15141310 1 2 4 6 3 5   9 71112 815141310 2
                                        4 6 3 5 111 9 712 8  15141310 2 5 4 6 3 1   711 912 815141310 2   5 6 4 3 1 2 5 6 4 3
                                       141213 81015 911 7 2   5 6 4 3 1 2 5 6 4 3   1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 1 3 2 1 3 3   2 1 6 5 4 810 7 9 3   2 1 6 5 8 410 9 7 6   5 4 810 9 719111221
                                       13141615172018 3 1 2   6 5 410 8 9 7121119  1321161417151820 3 2   1 6 4 5 810 9 71119
                                       121321141617152018 3   2 1 6 8 4 510 7 9 3   2 1 6 8 4 7 510 9 2   3 1 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -105.47293     1  1  s    0.94753
    2.1     2.00000   -10.87609     1  2  s    1.04030
    3.1     1.99715    -1.24309     1  2  s   -0.38723    1  9  s    0.47915    1 10  s    0.62869
    4.1     0.00312     0.63160     1  2  s    0.40234    1  7  s    0.27504    1  9  s   -1.94067    1 10  s    0.61041
                                    1 11  s    0.88225
    1.2     2.00000    -8.28081     1  1  pz   0.99976
    2.2     2.00000    -8.28081     1  1  py   0.99976
    3.2     2.00000    -8.28081     1  1  px   0.99976
    4.2     1.42136    -0.53307     1  1  py  -0.28352    1  8  py   0.46176    1  9  py   0.44602
    5.2     1.42136    -0.53307     1  1  px  -0.28352    1  8  px   0.46176    1  9  px   0.44602
    6.2     1.42136    -0.53307     1  1  pz  -0.28352    1  8  pz   0.46176    1  9  pz   0.44602
    7.2     0.24521     0.05990     1 11  py   1.09848
    8.2     0.24521     0.05990     1 11  px   1.09848
    9.2     0.24521     0.05990     1 11  pz   1.09848
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 22a000      0.01343885      0.01612564      0.98816071
 20 2a2000      0.98708870     -0.04897679     -0.01262503
 20 a22000      0.04875977      0.98703772     -0.01677044
 20 2aa0b0     -0.00095314     -0.00114370     -0.07008471
 20 a2ab00     -0.00095314     -0.00114370     -0.07008471
 20 2aa00b      0.07000868     -0.00347365     -0.00089542
 20 aa2b00     -0.07000868      0.00347365      0.00089542
 20 a2a00b      0.00345826      0.07000506     -0.00118943
 20 aa20b0      0.00345826      0.07000506     -0.00118943
 20 2ba0a0      0.00072650      0.00087175      0.05341977
 20 b2aa00      0.00072650      0.00087175      0.05341977
 20 2ab00a     -0.05336182      0.00264768      0.00068251
 20 ba2a00      0.05336182     -0.00264768     -0.00068251
 20 a2b00a     -0.00263594     -0.05335906      0.00090661
 20 ab20a0     -0.00263594     -0.05335906      0.00090661
 
 Energy:     -460.88934443   -460.88934443   -460.88934443
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a     -0.00000000      0.00000000      0.00000000     -0.00484716      0.00117964     -0.03225523     -0.00031361
 20 a2a00a     -0.03092738      0.51523118     -0.48046302     -0.00812601      0.01076640      0.00584608     -0.70509384
 20 aa20a0     -0.03092738      0.51523118     -0.48046302      0.00812601     -0.01076640     -0.00584608      0.70509384
 20 2aa00a     -0.04426427     -0.48139672     -0.51338315     -0.01690103     -0.01466648      0.70431796      0.00580637
 20 aa2a00      0.04426427      0.48139672      0.51338315     -0.01690103     -0.01466648      0.70431796      0.00580637
 20 2aa0a0      0.70309925     -0.00764319     -0.05345474     -0.51145075      0.48538213     -0.00212366      0.01328880
 20 a2aa00      0.70309925     -0.00764319     -0.05345474      0.51145075     -0.48538213      0.00212366     -0.01328880
 20 a2a0a0      0.00000000      0.00000000     -0.00000000      0.48277976      0.51190731      0.00602350      0.00224212
 20 2aaa00      0.00000000     -0.00000000     -0.00000000      0.48762692      0.51072767      0.03827873      0.00255573
 
 Energy:     -460.54960849   -460.54960849   -460.54960849   -460.54057114   -460.54057114   -460.54057114   -460.54057114

 State:              8
 20 aa200a      0.81369479
 20 a2a00a     -0.00010403
 20 aa20a0      0.00010403
 20 2aa00a      0.02784230
 20 aa2a00      0.02784230
 20 2aa0a0     -0.00382943
 20 a2aa00      0.00382943
 20 a2a0a0      0.40987547
 20 2aaa00     -0.40381932
 
 Energy:     -460.54057114
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.66       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.06       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        12.00      7.25      1.01      3.43
 REAL TIME  *        18.53 SEC
 DISK USED  *        57.83 MB (local),        1.26 GB (total)
 SF USED    *        75.29 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -460.8893444   2.0
    -460.8893444   2.0
    -460.8893444   2.0
    -460.5496085   2.0
    -460.5496085   2.0
    -460.5496085   2.0
    -460.5405711   6.0
    -460.5405711   6.0
    -460.5405711   6.0
    -460.5405711   6.0
    -460.5405711   6.0
                                                  


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
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.54 sec, npass=  1  Memory used:   2.25 MW


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -460.88934443
     2      -460.88934443
     3      -460.88934443

 Number of blocks in overlap matrix:   117   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:     432
 Number of N-1 electron functions:  111168

 Number of internal configurations:                32480
 Number of singly external configurations:      11341248
 Number of doubly external configurations:       4499928
 Total number of contracted configurations:     15873656
 Total number of uncontracted configurations: 1014653344

 Diagonal Coupling coefficients finished.               Storage:  15014628 words, CPU-Time:      5.69 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4965731 words, CPU-time:      0.51 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.88934443    -0.00000000    -0.55176848  0.42D-01  0.39D-01     9.35
    1     2     2     1.00000000     0.00000000  -460.88934443     0.00000000    -0.55173347  0.42D-01  0.39D-01     9.35
    1     3     3     1.00000000     0.00000000  -460.88934443    -0.00000000    -0.55165727  0.42D-01  0.39D-01     9.35
    2     1     1     1.07002375    -0.51162878  -461.40097322    -0.51162878    -0.01392332  0.35D-02  0.12D-02    81.63
    2     2     2     1.07005337    -0.51161106  -461.40095549    -0.51161106    -0.01394569  0.35D-02  0.12D-02    81.63
    2     3     3     1.07006808    -0.51160023  -461.40094466    -0.51160023    -0.01395674  0.35D-02  0.12D-02    81.63
    3     1     1     1.06255087    -0.52508540  -461.41442983    -0.01345662    -0.00075333  0.44D-04  0.12D-03   154.97
    3     2     2     1.06255222    -0.52508384  -461.41442828    -0.01347279    -0.00075410  0.44D-04  0.12D-03   154.97
    3     3     3     1.06255148    -0.52508350  -461.41442793    -0.01348327    -0.00075438  0.44D-04  0.12D-03   154.97
    4     1     1     1.06582460    -0.52604196  -461.41538639    -0.00095656    -0.00006089  0.44D-05  0.93D-05   228.33
    4     2     2     1.06582338    -0.52604173  -461.41538616    -0.00095788    -0.00006108  0.45D-05  0.93D-05   228.33
    4     3     3     1.06582225    -0.52604168  -461.41538612    -0.00095818    -0.00006111  0.45D-05  0.93D-05   228.33
    5     1     1     1.06675989    -0.52611582  -461.41546025    -0.00007386    -0.00000564  0.24D-06  0.98D-06   301.22
    5     2     2     1.06676015    -0.52611582  -461.41546025    -0.00007409    -0.00000565  0.24D-06  0.99D-06   301.22
    5     3     3     1.06676023    -0.52611581  -461.41546025    -0.00007413    -0.00000565  0.24D-06  0.99D-06   301.22
    6     1     1     1.06665646    -0.52612281  -461.41546724    -0.00000699    -0.00000057  0.45D-07  0.82D-07   374.30
    6     2     2     1.06665646    -0.52612281  -461.41546724    -0.00000699    -0.00000057  0.45D-07  0.82D-07   374.30
    6     3     3     1.06665646    -0.52612281  -461.41546724    -0.00000700    -0.00000057  0.45D-07  0.82D-07   374.30
    7     1     1     1.06667859    -0.52612347  -461.41546790    -0.00000066    -0.00000006  0.48D-08  0.97D-08   447.70
    7     2     2     1.06667858    -0.52612347  -461.41546790    -0.00000066    -0.00000006  0.48D-08  0.97D-08   447.70
    7     3     3     1.06667857    -0.52612347  -461.41546790    -0.00000066    -0.00000006  0.48D-08  0.97D-08   447.70
    8     1     1     1.06668824    -0.52612354  -461.41546797    -0.00000007    -0.00000001  0.39D-09  0.13D-08   520.48
    8     2     2     1.06668824    -0.52612354  -461.41546797    -0.00000007    -0.00000001  0.39D-09  0.13D-08   520.48
    8     3     3     1.06668824    -0.52612354  -461.41546797    -0.00000007    -0.00000001  0.39D-09  0.13D-08   520.48
    9     1     1     1.06668994    -0.52612355  -461.41546798    -0.00000001    -0.00000000  0.68D-10  0.15D-09   592.75
    9     2     2     1.06668994    -0.52612355  -461.41546798    -0.00000001    -0.00000000  0.68D-10  0.15D-09   592.75
    9     3     3     1.06668994    -0.52612355  -461.41546798    -0.00000001    -0.00000000  0.68D-10  0.15D-09   592.75
   10     1     1     1.06669115    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.11D-10  0.19D-10   665.19
   10     2     2     1.06669115    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.11D-10  0.19D-10   665.19
   10     3     3     1.06669115    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.11D-10  0.19D-10   665.19
   11     1     1     1.06669126    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.11D-11  0.27D-11   737.83
   11     2     2     1.06669126    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.11D-11  0.27D-11   737.83
   11     3     3     1.06669126    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.11D-11  0.27D-11   737.83
   12     1     1     1.06669140    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.14D-12  0.39D-12   810.02
   12     2     2     1.06669140    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.14D-12  0.39D-12   810.02
   12     3     3     1.06669140    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.14D-12  0.39D-12   810.02
   13     1     1     1.06669146    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.27D-13  0.49D-13   882.18
   13     2     2     1.06669146    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.27D-13  0.49D-13   882.18
   13     3     3     1.06669146    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.27D-13  0.49D-13   882.18
   14     1     1     1.06669146    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.32D-14  0.69D-14   954.24
   14     2     2     1.06669146    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.32D-14  0.69D-14   954.24
   14     3     3     1.06669146    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.32D-14  0.69D-14   954.24
   15     1     1     1.06669147    -0.52612355  -461.41546798     0.00000000    -0.00000000  0.32D-15  0.10D-14  1026.50
   15     2     2     1.06669147    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.32D-15  0.10D-14  1026.50
   15     3     3     1.06669147    -0.52612355  -461.41546798     0.00000000    -0.00000000  0.31D-15  0.10D-14  1026.50
   16     1     1     1.06669147    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.51D-16  0.16D-15  1098.42
   16     2     2     1.06669147    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.44D-16  0.15D-15  1098.42
   16     3     3     1.06669147    -0.52612355  -461.41546798    -0.00000000    -0.00000000  0.46D-16  0.16D-15  1098.42
   17     1     1     1.06669147    -0.52612355  -461.41546798     0.00000000    -0.00000000  0.58D-17  0.37D-16  1170.89
   17     2     2     1.06669147    -0.52612355  -461.41546798     0.00000000    -0.00000000  0.45D-17  0.32D-16  1170.89
   17     3     3     1.06669147    -0.52612355  -461.41546798     0.00000000    -0.00000000  0.59D-17  0.38D-16  1170.89


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.8%
 S   1.2%  14.8%
 P   0.5%  51.2%  16.5%

 Initialization:   0.6%
 Other:           14.5%

 Total CPU:     1170.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2202222/2000          -0.4217623   0.7719882   0.3877263
 220222/22000           0.6398424  -0.0107446   0.7174031
 22022222/000          -0.5804302  -0.5727999   0.5090992
 2202222//00\          -0.0277999   0.0508846   0.0255565
 220222//2\00           0.0277999  -0.0508846  -0.0255565

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.644013   -0.424512   -0.584214
 2          -0.010815    0.777021   -0.576534
 3           0.722080    0.390254    0.512418

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967610   -0.000000   -0.000000
 2          -0.000000    0.967610   -0.000000
 3          -0.000000   -0.000000    0.967610


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.64401329 (fixed)   0.96821694 (relaxed)   0.96760994 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00129150   -0.00054535   -0.68968849
 Singles      0.02092762   -0.06702732   -0.07306440
 Pairs        0.04584998    0.27685924    0.23662934
 Total        1.06806911    0.20928657   -0.52612355
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88934443
 Nuclear energy                         0.00000000
 Kinetic energy                       470.04792092
 One electron energy                 -636.72615757
 Two electron energy                  175.31068959
 Virial quotient                       -0.98163495
 Correlation energy                    -0.52612355
 !MRCI STATE 1.2 Energy              -461.415467982960

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.45128074 (Davidson, fixed reference)
 Cluster corrected energies          -461.45057639 (Davidson, relaxed reference)
 Cluster corrected energies          -461.45128074 (Davidson, rotated reference)

 Cluster corrected energies          -461.44771321 (Pople, fixed reference)
 Cluster corrected energies          -461.44704808 (Pople, relaxed reference)
 Cluster corrected energies          -461.44771321 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.77702050 (fixed)   0.96821694 (relaxed)   0.96760994 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00129150   -0.00054535   -0.68628087
 Singles      0.02092762   -0.06702731   -0.07306440
 Pairs        0.04584998    0.27321967    0.23322172
 Total        1.06806911    0.20564700   -0.52612355
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88934443
 Nuclear energy                         0.00000000
 Kinetic energy                       470.04792094
 One electron energy                 -636.72615761
 Two electron energy                  175.31068963
 Virial quotient                       -0.98163495
 Correlation energy                    -0.52612355
 !MRCI STATE 2.2 Energy              -461.415467982452

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.45128074 (Davidson, fixed reference)
 Cluster corrected energies          -461.45057639 (Davidson, relaxed reference)
 Cluster corrected energies          -461.45128074 (Davidson, rotated reference)

 Cluster corrected energies          -461.44771320 (Pople, fixed reference)
 Cluster corrected energies          -461.44704808 (Pople, relaxed reference)
 Cluster corrected energies          -461.44771320 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.72207959 (fixed)   0.96821694 (relaxed)   0.96760994 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00129150   -0.00054535   -0.20311479
 Singles      0.02092762   -0.06702731   -0.07306440
 Pairs        0.04584998   -0.24283510   -0.24994436
 Total        1.06806911   -0.31040777   -0.52612355
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.88934443
 Nuclear energy                         0.00000000
 Kinetic energy                       470.04792097
 One electron energy                 -636.72615763
 Two electron energy                  175.31068964
 Virial quotient                       -0.98163495
 Correlation energy                    -0.52612355
 !MRCI STATE 3.2 Energy              -461.415467982086

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.45128074 (Davidson, fixed reference)
 Cluster corrected energies          -461.45057638 (Davidson, relaxed reference)
 Cluster corrected energies          -461.45128074 (Davidson, rotated reference)

 Cluster corrected energies          -461.44771320 (Pople, fixed reference)
 Cluster corrected energies          -461.44704808 (Pople, relaxed reference)
 Cluster corrected energies          -461.44771320 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.66       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      369.44       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1198.25   1186.24      7.25      1.01      3.43
 REAL TIME  *      1243.07 SEC
 DISK USED  *       425.21 MB (local),        5.56 GB (total)
 SF USED    *         3.90 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -461.45128074  AU                              
 SETTING HLSDIAG(2)     =      -461.45128074  AU                              
 SETTING HLSDIAG(3)     =      -461.45128074  AU                              


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
 Number of external orbitals:     204 (  98 106 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -460.54960849
     2      -460.54960849
     3      -460.54960849
     4      -460.54057114
     5      -460.54057114
     6      -460.54057114
     7      -460.54057114
     8      -460.54057114

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1324D-06

 Number of blocks in overlap matrix:   172   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1089
 Number of N-1 electron functions:   97722

 Number of internal configurations:                25102
 Number of singly external configurations:       9969420
 Number of doubly external configurations:      11336922
 Total number of contracted configurations:     21331444
 Total number of uncontracted configurations:  931826794

 Diagonal Coupling coefficients finished.               Storage:  22381467 words, CPU-Time:     19.68 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7643633 words, CPU-time:      1.21 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -460.54960849     0.00000000    -0.51109111  0.36D-01  0.30D-01    26.26
    1     2     2     1.00000000     0.00000000  -460.54960849    -0.00000000    -0.51147997  0.36D-01  0.31D-01    26.26
    1     3     3     1.00000000     0.00000000  -460.54960849     0.00000000    -0.51157130  0.36D-01  0.31D-01    26.26
    1     4     4     1.00000000     0.00000000  -460.54057114    -0.00000000    -0.51362147  0.38D-01  0.31D-01    26.26
    1     5     5     1.00000000     0.00000000  -460.54057114     0.00000000    -0.51345967  0.38D-01  0.31D-01    26.26
    1     6     6     1.00000000     0.00000000  -460.54057114    -0.00000000    -0.51376257  0.38D-01  0.31D-01    26.26
    1     7     7     1.00000000     0.00000000  -460.54057114     0.00000000    -0.51364116  0.38D-01  0.31D-01    26.26
    1     8     8     1.00000000     0.00000000  -460.54057114     0.00000000    -0.51808288  0.38D-01  0.34D-01    26.26
    2     1     1     1.05888752    -0.48227309  -461.03188158    -0.48227309    -0.00937021  0.15D-02  0.99D-03   443.46
    2     2     2     1.05907326    -0.48226501  -461.03187350    -0.48226501    -0.00943115  0.15D-02  0.99D-03   443.46
    2     3     3     1.05914039    -0.48220926  -461.03181775    -0.48220926    -0.00949342  0.15D-02  0.99D-03   443.46
    2     4     4     1.06123693    -0.48387420  -461.02444535    -0.48387420    -0.00979619  0.18D-02  0.10D-02   443.46
    2     5     5     1.06149565    -0.48379084  -461.02436199    -0.48379084    -0.00990174  0.18D-02  0.10D-02   443.46
    2     6     6     1.06056034    -0.48354457  -461.02411572    -0.48354457    -0.00986584  0.18D-02  0.10D-02   443.46
    2     7     7     1.06071670    -0.48344375  -461.02401490    -0.48344375    -0.00997804  0.19D-02  0.10D-02   443.46
    2     8     8     1.06079022    -0.48340791  -461.02397906    -0.48340791    -0.01002407  0.19D-02  0.10D-02   443.46
    3     1     1     1.05389897    -0.49218497  -461.04179346    -0.00991188    -0.00071614  0.34D-04  0.12D-03   862.99
    3     2     2     1.05389060    -0.49217974  -461.04178823    -0.00991473    -0.00071932  0.35D-04  0.12D-03   862.99
    3     3     3     1.05385455    -0.49217035  -461.04177883    -0.00996108    -0.00072383  0.35D-04  0.12D-03   862.99
    3     4     4     1.05520384    -0.49402112  -461.03459227    -0.01014692    -0.00065490  0.41D-04  0.11D-03   862.99
    3     5     5     1.05489442    -0.49394014  -461.03451128    -0.01014929    -0.00071510  0.44D-04  0.12D-03   862.99
    3     6     6     1.05475121    -0.49384300  -461.03441414    -0.01029843    -0.00075968  0.47D-04  0.12D-03   862.99
    3     7     7     1.05474469    -0.49383628  -461.03440743    -0.01039253    -0.00076487  0.48D-04  0.12D-03   862.99
    3     8     8     1.05474687    -0.49383591  -461.03440705    -0.01042800    -0.00076514  0.48D-04  0.12D-03   862.99
    4     1     1     1.05803295    -0.49324996  -461.04285844    -0.00106499    -0.00007325  0.36D-05  0.10D-04  1283.24
    4     2     2     1.05804449    -0.49324944  -461.04285793    -0.00106971    -0.00007354  0.36D-05  0.10D-04  1283.24
    4     3     3     1.05802572    -0.49324922  -461.04285771    -0.00107887    -0.00007381  0.37D-05  0.10D-04  1283.24
    4     4     4     1.05886056    -0.49499026  -461.03556141    -0.00096914    -0.00007213  0.45D-05  0.10D-04  1283.24
    4     5     5     1.05891406    -0.49498713  -461.03555828    -0.00104700    -0.00007425  0.45D-05  0.11D-04  1283.24
    4     6     6     1.05890504    -0.49497277  -461.03554391    -0.00112977    -0.00008423  0.52D-05  0.12D-04  1283.24
    4     7     7     1.05889118    -0.49497179  -461.03554293    -0.00113550    -0.00008491  0.53D-05  0.12D-04  1283.24
    4     8     8     1.05888546    -0.49497147  -461.03554261    -0.00113556    -0.00008511  0.54D-05  0.12D-04  1283.24
    5     1     1     1.05849965    -0.49334627  -461.04295476    -0.00009632    -0.00000830  0.56D-06  0.12D-05  1702.54
    5     2     2     1.05850342    -0.49334622  -461.04295471    -0.00009677    -0.00000831  0.56D-06  0.12D-05  1702.54
    5     3     3     1.05850414    -0.49334613  -461.04295462    -0.00009691    -0.00000837  0.57D-06  0.12D-05  1702.54
    5     4     4     1.05948366    -0.49508318  -461.03565433    -0.00009292    -0.00000833  0.70D-06  0.12D-05  1702.54
    5     5     5     1.05946540    -0.49508299  -461.03565413    -0.00009586    -0.00000869  0.74D-06  0.13D-05  1702.54
    5     6     6     1.05947308    -0.49508183  -461.03565297    -0.00010906    -0.00000983  0.88D-06  0.14D-05  1702.54
    5     7     7     1.05947514    -0.49508155  -461.03565270    -0.00010976    -0.00000996  0.89D-06  0.14D-05  1702.54
    5     8     8     1.05947621    -0.49508150  -461.03565264    -0.00011003    -0.00001000  0.89D-06  0.14D-05  1702.54
    6     1     1     1.05829163    -0.49335684  -461.04296532    -0.00001056    -0.00000100  0.60D-07  0.14D-06  2124.51
    6     2     2     1.05829301    -0.49335681  -461.04296529    -0.00001059    -0.00000100  0.61D-07  0.14D-06  2124.51
    6     3     3     1.05829282    -0.49335679  -461.04296528    -0.00001065    -0.00000101  0.61D-07  0.14D-06  2124.51
    6     4     4     1.05925074    -0.49509423  -461.03566537    -0.00001105    -0.00000122  0.81D-07  0.17D-06  2124.51
    6     5     5     1.05925979    -0.49509416  -461.03566531    -0.00001117    -0.00000116  0.74D-07  0.16D-06  2124.51
    6     6     6     1.05925123    -0.49509412  -461.03566527    -0.00001230    -0.00000124  0.84D-07  0.17D-06  2124.51
    6     7     7     1.05925151    -0.49509411  -461.03566525    -0.00001256    -0.00000125  0.85D-07  0.17D-06  2124.51
    6     8     8     1.05927011    -0.49509396  -461.03566510    -0.00001246    -0.00000117  0.74D-07  0.17D-06  2124.51
    7     1     1     1.05836353    -0.49335811  -461.04296660    -0.00000128    -0.00000017  0.98D-08  0.25D-07  2544.42
    7     2     2     1.05836327    -0.49335809  -461.04296658    -0.00000128    -0.00000017  0.99D-08  0.25D-07  2544.42
    7     3     3     1.05836309    -0.49335808  -461.04296657    -0.00000129    -0.00000017  0.10D-07  0.25D-07  2544.42
    7     4     4     1.05932921    -0.49509580  -461.03566694    -0.00000157    -0.00000021  0.14D-07  0.31D-07  2544.42
    7     5     5     1.05932868    -0.49509571  -461.03566686    -0.00000155    -0.00000022  0.14D-07  0.31D-07  2544.42
    7     6     6     1.05932848    -0.49509570  -461.03566685    -0.00000158    -0.00000022  0.14D-07  0.31D-07  2544.42
    7     7     7     1.05933247    -0.49509567  -461.03566681    -0.00000156    -0.00000021  0.13D-07  0.32D-07  2544.42
    7     8     8     1.05933273    -0.49509550  -461.03566664    -0.00000154    -0.00000021  0.14D-07  0.31D-07  2544.42
    8     1     1     1.05838451    -0.49335835  -461.04296684    -0.00000024    -0.00000004  0.22D-08  0.48D-08  2961.08
    8     2     2     1.05838428    -0.49335833  -461.04296681    -0.00000024    -0.00000003  0.23D-08  0.47D-08  2961.08
    8     3     3     1.05838421    -0.49335832  -461.04296680    -0.00000024    -0.00000004  0.24D-08  0.48D-08  2961.08
    8     4     4     1.05935473    -0.49509608  -461.03566723    -0.00000029    -0.00000004  0.46D-08  0.55D-08  2961.08
    8     5     5     1.05935420    -0.49509600  -461.03566714    -0.00000029    -0.00000004  0.46D-08  0.55D-08  2961.08
    8     6     6     1.05935415    -0.49509600  -461.03566714    -0.00000029    -0.00000004  0.46D-08  0.56D-08  2961.08
    8     7     7     1.05935579    -0.49509595  -461.03566709    -0.00000028    -0.00000005  0.42D-08  0.62D-08  2961.08
    8     8     8     1.05935441    -0.49509578  -461.03566692    -0.00000028    -0.00000004  0.41D-08  0.56D-08  2961.08
    9     1     1     1.05838066    -0.49335839  -461.04296688    -0.00000004    -0.00000001  0.54D-09  0.10D-08  3380.62
    9     2     2     1.05838064    -0.49335837  -461.04296686    -0.00000004    -0.00000001  0.54D-09  0.97D-09  3380.62
    9     3     3     1.05838063    -0.49335836  -461.04296685    -0.00000004    -0.00000001  0.55D-09  0.97D-09  3380.62
    9     4     4     1.05935269    -0.49509614  -461.03566728    -0.00000005    -0.00000001  0.68D-09  0.12D-08  3380.62
    9     5     5     1.05935250    -0.49509605  -461.03566720    -0.00000005    -0.00000001  0.70D-09  0.12D-08  3380.62
    9     6     6     1.05935249    -0.49509605  -461.03566719    -0.00000005    -0.00000001  0.71D-09  0.12D-08  3380.62
    9     7     7     1.05935276    -0.49509600  -461.03566714    -0.00000005    -0.00000001  0.64D-09  0.14D-08  3380.62
    9     8     8     1.05935234    -0.49509583  -461.03566697    -0.00000005    -0.00000001  0.67D-09  0.12D-08  3380.62
   10     1     1     1.05838282    -0.49335840  -461.04296689    -0.00000001    -0.00000000  0.11D-09  0.24D-09  3795.67
   10     2     2     1.05838281    -0.49335838  -461.04296687    -0.00000001    -0.00000000  0.11D-09  0.22D-09  3795.67
   10     3     3     1.05838282    -0.49335837  -461.04296686    -0.00000001    -0.00000000  0.11D-09  0.22D-09  3795.67
   10     4     4     1.05935541    -0.49509615  -461.03566729    -0.00000001    -0.00000000  0.14D-09  0.26D-09  3795.67
   10     5     5     1.05935531    -0.49509606  -461.03566721    -0.00000001    -0.00000000  0.14D-09  0.26D-09  3795.67
   10     6     6     1.05935529    -0.49509606  -461.03566720    -0.00000001    -0.00000000  0.14D-09  0.27D-09  3795.67
   10     7     7     1.05935510    -0.49509601  -461.03566716    -0.00000001    -0.00000000  0.13D-09  0.35D-09  3795.67
   10     8     8     1.05935509    -0.49509584  -461.03566699    -0.00000001    -0.00000000  0.15D-09  0.27D-09  3795.67
   11     1     1     1.05838313    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.25D-10  0.60D-10  4215.78
   11     2     2     1.05838309    -0.49335838  -461.04296687    -0.00000000    -0.00000000  0.25D-10  0.53D-10  4215.78
   11     3     3     1.05838307    -0.49335837  -461.04296686    -0.00000000    -0.00000000  0.26D-10  0.51D-10  4215.78
   11     4     4     1.05935584    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.50D-10  0.58D-10  4215.78
   11     5     5     1.05935573    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.51D-10  0.59D-10  4215.78
   11     6     6     1.05935572    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.52D-10  0.63D-10  4215.78
   11     7     7     1.05935577    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.55D-10  0.93D-10  4215.78
   11     8     8     1.05935556    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.48D-10  0.65D-10  4215.78
   12     1     1     1.05838309    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.71D-11  0.15D-10  4634.83
   12     2     2     1.05838309    -0.49335838  -461.04296687    -0.00000000    -0.00000000  0.69D-11  0.12D-10  4634.83
   12     3     3     1.05838308    -0.49335837  -461.04296686    -0.00000000    -0.00000000  0.70D-11  0.12D-10  4634.83
   12     4     4     1.05935611    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.10D-10  0.14D-10  4634.83
   12     5     5     1.05935600    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.10D-10  0.15D-10  4634.83
   12     6     6     1.05935598    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.10D-10  0.16D-10  4634.83
   12     7     7     1.05935591    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.10D-10  0.23D-10  4634.83
   12     8     8     1.05935582    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.96D-11  0.17D-10  4634.83
   13     1     1     1.05838327    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.13D-11  0.35D-11  5055.46
   13     2     2     1.05838326    -0.49335838  -461.04296687    -0.00000000    -0.00000000  0.13D-11  0.32D-11  5055.46
   13     3     3     1.05838326    -0.49335837  -461.04296686    -0.00000000    -0.00000000  0.13D-11  0.29D-11  5055.46
   13     4     4     1.05935635    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.21D-11  0.37D-11  5055.46
   13     5     5     1.05935625    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.22D-11  0.39D-11  5055.46
   13     6     6     1.05935624    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.22D-11  0.43D-11  5055.46
   13     7     7     1.05935623    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.26D-11  0.60D-11  5055.46
   13     8     8     1.05935608    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.22D-11  0.46D-11  5055.46
   14     1     1     1.05838328    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.40D-12  0.85D-12  5475.91
   14     2     2     1.05838326    -0.49335838  -461.04296687    -0.00000000    -0.00000000  0.35D-12  0.80D-12  5475.91
   14     3     3     1.05838325    -0.49335837  -461.04296686    -0.00000000    -0.00000000  0.33D-12  0.71D-12  5475.91
   14     4     4     1.05935633    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.79D-12  0.97D-12  5475.91
   14     5     5     1.05935623    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.83D-12  0.10D-11  5475.91
   14     6     6     1.05935622    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.90D-12  0.11D-11  5475.91
   14     7     7     1.05935624    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.10D-11  0.19D-11  5475.91
   14     8     8     1.05935606    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.91D-12  0.12D-11  5475.91
   15     1     1     1.05838329    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.10D-12  0.20D-12  5895.39
   15     2     2     1.05838327    -0.49335838  -461.04296687    -0.00000000    -0.00000000  0.98D-13  0.18D-12  5895.39
   15     3     3     1.05838326    -0.49335837  -461.04296686    -0.00000000    -0.00000000  0.90D-13  0.16D-12  5895.39
   15     4     4     1.05935638    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.19D-12  0.26D-12  5895.39
   15     5     5     1.05935628    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.21D-12  0.27D-12  5895.39
   15     6     6     1.05935627    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.22D-12  0.29D-12  5895.39
   15     7     7     1.05935626    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.16D-12  0.71D-12  5895.39
   15     8     8     1.05935611    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.20D-12  0.32D-12  5895.39
   16     1     1     1.05838331    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.17D-13  0.62D-13  6315.82
   16     2     2     1.05838329    -0.49335838  -461.04296687    -0.00000000    -0.00000000  0.18D-13  0.44D-13  6315.82
   16     3     3     1.05838328    -0.49335837  -461.04296686    -0.00000000    -0.00000000  0.18D-13  0.40D-13  6315.82
   16     4     4     1.05935640    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.45D-13  0.77D-13  6315.82
   16     5     5     1.05935630    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.48D-13  0.80D-13  6315.82
   16     6     6     1.05935629    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.49D-13  0.89D-13  6315.82
   16     7     7     1.05935630    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.67D-13  0.21D-12  6315.82
   16     8     8     1.05935614    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.50D-13  0.97D-13  6315.82
   17     1     1     1.05838331    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.45D-14  0.21D-13  6737.31
   17     2     2     1.05838329    -0.49335838  -461.04296687    -0.00000000    -0.00000000  0.39D-14  0.12D-13  6737.31
   17     3     3     1.05838328    -0.49335837  -461.04296686    -0.00000000    -0.00000000  0.39D-14  0.10D-13  6737.31
   17     4     4     1.05935639    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.14D-13  0.22D-13  6737.31
   17     5     5     1.05935629    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.15D-13  0.24D-13  6737.31
   17     6     6     1.05935629    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.15D-13  0.30D-13  6737.31
   17     7     7     1.05935630    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.30D-13  0.55D-13  6737.31
   17     8     8     1.05935613    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.15D-13  0.34D-13  6737.31
   18     1     1     1.05838331    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.17D-14  0.46D-14  7157.32
   18     2     2     1.05838329    -0.49335838  -461.04296687     0.00000000    -0.00000000  0.10D-14  0.37D-14  7157.32
   18     3     3     1.05838328    -0.49335837  -461.04296686     0.00000000    -0.00000000  0.98D-15  0.25D-14  7157.32
   18     4     4     1.05935640    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.42D-14  0.60D-14  7157.32
   18     5     5     1.05935630    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.43D-14  0.67D-14  7157.32
   18     6     6     1.05935629    -0.49509606  -461.03566721     0.00000000    -0.00000000  0.43D-14  0.94D-14  7157.32
   18     7     7     1.05935631    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.37D-14  0.26D-13  7157.32
   18     8     8     1.05935614    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.41D-14  0.11D-13  7157.32
   19     1     1     1.05838331    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.28D-15  0.11D-14  7575.52
   19     2     2     1.05838329    -0.49335838  -461.04296687     0.00000000    -0.00000000  0.21D-15  0.11D-14  7575.52
   19     3     3     1.05838328    -0.49335837  -461.04296686     0.00000000    -0.00000000  0.21D-15  0.66D-15  7575.52
   19     4     4     1.05935640    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.10D-14  0.17D-14  7575.52
   19     5     5     1.05935630    -0.49509607  -461.03566721     0.00000000    -0.00000000  0.10D-14  0.19D-14  7575.52
   19     6     6     1.05935630    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.11D-14  0.26D-14  7575.52
   19     7     7     1.05935631    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.18D-14  0.91D-14  7575.52
   19     8     8     1.05935614    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.12D-14  0.31D-14  7575.52
   20     1     1     1.05838331    -0.49335840  -461.04296689     0.00000000    -0.00000000  0.50D-16  0.37D-15  7994.32
   20     2     2     1.05838329    -0.49335838  -461.04296687    -0.00000000    -0.00000000  0.65D-16  0.22D-15  7994.32
   20     3     3     1.05838328    -0.49335837  -461.04296686    -0.00000000    -0.00000000  0.47D-16  0.17D-15  7994.32
   20     4     4     1.05935640    -0.49509615  -461.03566729     0.00000000    -0.00000000  0.21D-15  0.53D-15  7994.32
   20     5     5     1.05935630    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.23D-15  0.56D-15  7994.32
   20     6     6     1.05935630    -0.49509606  -461.03566721     0.00000000    -0.00000000  0.37D-15  0.69D-15  7994.32
   20     7     7     1.05935631    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.85D-15  0.27D-14  7994.32
   20     8     8     1.05935614    -0.49509584  -461.03566699    -0.00000000    -0.00000000  0.43D-15  0.84D-15  7994.32
   21     1     1     1.05838331    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.38D-16  0.13D-15  8412.49
   21     2     2     1.05838329    -0.49335838  -461.04296687     0.00000000    -0.00000000  0.15D-16  0.57D-16  8412.49
   21     3     3     1.05838328    -0.49335837  -461.04296686    -0.00000000    -0.00000000  0.10D-16  0.60D-16  8412.49
   21     4     4     1.05935640    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.49D-16  0.17D-15  8412.49
   21     5     5     1.05935630    -0.49509607  -461.03566721    -0.00000000    -0.00000000  0.56D-16  0.17D-15  8412.49
   21     6     6     1.05935630    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.96D-16  0.21D-15  8412.49
   21     7     7     1.05935631    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.85D-16  0.12D-14  8412.49
   21     8     8     1.05935614    -0.49509584  -461.03566699     0.00000000    -0.00000000  0.10D-15  0.28D-15  8412.49
   22     1     1     1.05838331    -0.49335840  -461.04296689     0.00000000    -0.00000000  0.38D-17  0.31D-16  8740.48
   22     2     2     1.05838329    -0.49335838  -461.04296687     0.00000000    -0.00000000  0.15D-16  0.58D-16  8740.48
   22     3     3     1.05838328    -0.49335837  -461.04296686     0.00000000    -0.00000000  0.94D-17  0.60D-16  8740.48
   22     4     4     1.05935640    -0.49509615  -461.03566729    -0.00000000    -0.00000000  0.12D-16  0.61D-16  8740.48
   22     5     5     1.05935631    -0.49509607  -461.03566721     0.00000000    -0.00000000  0.12D-16  0.64D-16  8740.48
   22     6     6     1.05935630    -0.49509606  -461.03566721     0.00000000    -0.00000000  0.17D-16  0.83D-16  8740.48
   22     7     7     1.05935631    -0.49509602  -461.03566716     0.00000000    -0.00000000  0.78D-16  0.15D-15  8740.48
   22     8     8     1.05935614    -0.49509584  -461.03566699     0.00000000    -0.00000000  0.13D-16  0.83D-16  8740.48
   23     1     1     1.05838331    -0.49335840  -461.04296689    -0.00000000    -0.00000000  0.38D-17  0.31D-16  8846.85
   23     2     2     1.05838329    -0.49335838  -461.04296687    -0.00000000    -0.00000000  0.15D-16  0.58D-16  8846.85
   23     3     3     1.05838328    -0.49335837  -461.04296686     0.00000000    -0.00000000  0.94D-17  0.60D-16  8846.85
   23     4     4     1.05935640    -0.49509615  -461.03566729     0.00000000    -0.00000000  0.11D-16  0.61D-16  8846.85
   23     5     5     1.05935631    -0.49509607  -461.03566721     0.00000000    -0.00000000  0.12D-16  0.64D-16  8846.85
   23     6     6     1.05935630    -0.49509606  -461.03566721    -0.00000000    -0.00000000  0.17D-16  0.83D-16  8846.85
   23     7     7     1.05935631    -0.49509602  -461.03566716    -0.00000000    -0.00000000  0.44D-17  0.26D-16  8846.85
   23     8     8     1.05935614    -0.49509584  -461.03566699     0.00000000    -0.00000000  0.12D-16  0.83D-16  8846.85


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.4%   5.9%
 P   0.3%  39.7%  36.6%

 Initialization:   0.2%
 Other:           16.6%

 Total CPU:     8846.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 220222//200/           0.0000000   0.0000000  -0.0000000   0.0047967   0.0068891  -0.0024495  -0.0167416   0.7906046
 2202222///00           0.0000003   0.0000001  -0.0000000  -0.0421074  -0.0120058   0.0057175   0.6918691  -0.3804993
 220222//2/00           0.0003320   0.6838225   0.0418203   0.0006645   0.6508889  -0.2127666   0.0097226  -0.0061290
 2202222//00/          -0.0003320  -0.6838213  -0.0418198   0.0006645   0.6508901  -0.2127668   0.0097228  -0.0061290
 220222/2//00           0.6835978   0.0024367  -0.0452712   0.6836897  -0.0029578  -0.0050000   0.0397870  -0.0032952
 2202222//0/0           0.6835978   0.0024367  -0.0452711  -0.6836897   0.0029578   0.0050000  -0.0397877   0.0032951
 220222//20/0           0.0453355  -0.0417503   0.6823223   0.0057563   0.2128013   0.6509526  -0.0012812   0.0001004
 220222/2/00/           0.0453354  -0.0417504   0.6823212  -0.0057562  -0.2128020  -0.6509536   0.0012812  -0.0001004
 220222/2/0/0           0.0000004   0.0000001  -0.0000000  -0.0373107  -0.0051167   0.0032681   0.6751274   0.4101053

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969811    0.000471    0.064317    0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.003457    0.970129   -0.059231    0.000000    0.000000    0.000000    0.000001    0.000000
 3          -0.064226    0.059330    0.968000   -0.000000   -0.000000    0.000001    0.000000   -0.000000
 4           0.000000    0.000000    0.000000   -0.056327    0.969812    0.008165    0.000943    0.005892
 5           0.000000   -0.000001   -0.000001   -0.012144   -0.004196    0.301859    0.923285    0.008463
 6           0.000000    0.000000   -0.000001    0.006373   -0.007093    0.923375   -0.301809   -0.003009
 7          -0.000001   -0.000000    0.000000    0.969540    0.056438   -0.001817    0.013792   -0.020552
 8          -0.000000   -0.000000   -0.000000    0.020984   -0.004674    0.000142   -0.008694    0.971222

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971941    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.971941    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.971941    0.000000   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.971499    0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.971499   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.971499   -0.000000    0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.971499   -0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.971499


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.96981070 (fixed)   0.97200459 (relaxed)   0.97194118 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00017744   -0.00069258   -0.39670480
 Singles      0.02310209   -0.07350568   -0.08020556
 Pairs        0.03529158   -0.00000003   -0.01644804
 Total        1.05857111   -0.07419829   -0.49335840
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.54960849
 Nuclear energy                         0.00000000
 Kinetic energy                       469.55876287
 One electron energy                 -631.94150437
 Two electron energy                  170.89853748
 Virial quotient                       -0.98186426
 Correlation energy                    -0.49335840
 !MRCI STATE 1.2 Energy              -461.042966891745

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.07186344 (Davidson, fixed reference)
 Cluster corrected energies          -461.07179530 (Davidson, relaxed reference)
 Cluster corrected energies          -461.07186344 (Davidson, rotated reference)

 Cluster corrected energies          -461.06801292 (Pople, fixed reference)
 Cluster corrected energies          -461.06795152 (Pople, relaxed reference)
 Cluster corrected energies          -461.06801292 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.97012857 (fixed)   0.97200460 (relaxed)   0.97194118 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00017744   -0.00069258   -0.39670483
 Singles      0.02310207   -0.07350565   -0.08020553
 Pairs        0.03529158   -0.00000000   -0.01644802
 Total        1.05857109   -0.07419824   -0.49335838
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.54960849
 Nuclear energy                         0.00000000
 Kinetic energy                       469.55876234
 One electron energy                 -631.94150500
 Two electron energy                  170.89853814
 Virial quotient                       -0.98186426
 Correlation energy                    -0.49335838
 !MRCI STATE 2.2 Energy              -461.042966868044

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.07186341 (Davidson, fixed reference)
 Cluster corrected energies          -461.07179526 (Davidson, relaxed reference)
 Cluster corrected energies          -461.07186341 (Davidson, rotated reference)

 Cluster corrected energies          -461.06801289 (Pople, fixed reference)
 Cluster corrected energies          -461.06795149 (Pople, relaxed reference)
 Cluster corrected energies          -461.06801289 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.96800039 (fixed)   0.97200461 (relaxed)   0.97194119 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00017744   -0.00069258   -0.39670483
 Singles      0.02310207   -0.07350565   -0.08020552
 Pairs        0.03529158   -0.00000000   -0.01644802
 Total        1.05857108   -0.07419823   -0.49335837
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.54960849
 Nuclear energy                         0.00000000
 Kinetic energy                       469.55876235
 One electron energy                 -631.94150525
 Two electron energy                  170.89853839
 Virial quotient                       -0.98186426
 Correlation energy                    -0.49335837
 !MRCI STATE 3.2 Energy              -461.042966859163

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.07186339 (Davidson, fixed reference)
 Cluster corrected energies          -461.07179525 (Davidson, relaxed reference)
 Cluster corrected energies          -461.07186339 (Davidson, rotated reference)

 Cluster corrected energies          -461.06801287 (Pople, fixed reference)
 Cluster corrected energies          -461.06795148 (Pople, relaxed reference)
 Cluster corrected energies          -461.06801287 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96981176 (fixed)   0.97155831 (relaxed)   0.97149878 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016899   -0.00068595   -0.39452563
 Singles      0.02381273   -0.07462012   -0.08155435
 Pairs        0.03555370   -0.00254582   -0.01901618
 Total        1.05953543   -0.07785189   -0.49509615
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.54057114
 Nuclear energy                         0.00000000
 Kinetic energy                       469.56870064
 One electron energy                 -631.94506195
 Two electron energy                  170.90939466
 Virial quotient                       -0.98182793
 Correlation energy                    -0.49509615
 !MRCI STATE 4.2 Energy              -461.035667294536

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.06514306 (Davidson, fixed reference)
 Cluster corrected energies          -461.06507877 (Davidson, relaxed reference)
 Cluster corrected energies          -461.06514306 (Davidson, rotated reference)

 Cluster corrected energies          -461.06123200 (Pople, fixed reference)
 Cluster corrected energies          -461.06117401 (Pople, relaxed reference)
 Cluster corrected energies          -461.06123200 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.92328473 (fixed)   0.97155836 (relaxed)   0.97149882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016899   -0.00068595   -0.39347711
 Singles      0.02381266   -0.07462003   -0.08155423
 Pairs        0.03555368   -0.00365681   -0.02006473
 Total        1.05953533   -0.07896279   -0.49509607
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.54057114
 Nuclear energy                         0.00000000
 Kinetic energy                       469.56870048
 One electron energy                 -631.94506203
 Two electron energy                  170.90939481
 Virial quotient                       -0.98182793
 Correlation energy                    -0.49509607
 !MRCI STATE 5.2 Energy              -461.035667211831

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.06514292 (Davidson, fixed reference)
 Cluster corrected energies          -461.06507863 (Davidson, relaxed reference)
 Cluster corrected energies          -461.06514292 (Davidson, rotated reference)

 Cluster corrected energies          -461.06123187 (Pople, fixed reference)
 Cluster corrected energies          -461.06117387 (Pople, relaxed reference)
 Cluster corrected energies          -461.06123187 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.92337501 (fixed)   0.97155836 (relaxed)   0.97149883 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016899   -0.00068595   -0.39815557
 Singles      0.02381265   -0.07462003   -0.08155422
 Pairs        0.03555368    0.00130019   -0.01538627
 Total        1.05953532   -0.07400579   -0.49509606
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.54057114
 Nuclear energy                         0.00000000
 Kinetic energy                       469.56870061
 One electron energy                 -631.94506218
 Two electron energy                  170.90939498
 Virial quotient                       -0.98182793
 Correlation energy                    -0.49509606
 !MRCI STATE 6.2 Energy              -461.035667206461

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.06514291 (Davidson, fixed reference)
 Cluster corrected energies          -461.06507862 (Davidson, relaxed reference)
 Cluster corrected energies          -461.06514291 (Davidson, rotated reference)

 Cluster corrected energies          -461.06123186 (Pople, fixed reference)
 Cluster corrected energies          -461.06117387 (Pople, relaxed reference)
 Cluster corrected energies          -461.06123186 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96954050 (fixed)   0.97155836 (relaxed)   0.97149882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016899   -0.00068592   -0.40531007
 Singles      0.02381264   -0.07462000   -0.08155419
 Pairs        0.03555371    0.00888066   -0.00823176
 Total        1.05953534   -0.06642526   -0.49509602
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.54057114
 Nuclear energy                         0.00000000
 Kinetic energy                       469.56870050
 One electron energy                 -631.94506296
 Two electron energy                  170.90939580
 Virial quotient                       -0.98182793
 Correlation energy                    -0.49509602
 !MRCI STATE 7.2 Energy              -461.035667159591

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.06514287 (Davidson, fixed reference)
 Cluster corrected energies          -461.06507858 (Davidson, relaxed reference)
 Cluster corrected energies          -461.06514287 (Davidson, rotated reference)

 Cluster corrected energies          -461.06123182 (Pople, fixed reference)
 Cluster corrected energies          -461.06117382 (Pople, relaxed reference)
 Cluster corrected energies          -461.06123182 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Coefficient of reference function:   C(0) = 0.97122208 (fixed)   0.97155844 (relaxed)   0.97149890 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00016900   -0.00068592   -0.00083924
 Singles      0.02381250   -0.07461981   -0.08155395
 Pairs        0.03555367   -0.41967050   -0.41270266
 Total        1.05953517   -0.49497623   -0.49509584
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -460.54057114
 Nuclear energy                         0.00000000
 Kinetic energy                       469.56869972
 One electron energy                 -631.94506491
 Two electron energy                  170.90939793
 Virial quotient                       -0.98182794
 Correlation energy                    -0.49509584
 !MRCI STATE 8.2 Energy              -461.035666988537

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -461.06514260 (Davidson, fixed reference)
 Cluster corrected energies          -461.06507831 (Davidson, relaxed reference)
 Cluster corrected energies          -461.06514260 (Davidson, rotated reference)

 Cluster corrected energies          -461.06123156 (Pople, fixed reference)
 Cluster corrected energies          -461.06117356 (Pople, relaxed reference)
 Cluster corrected energies          -461.06123156 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       55.66       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1681.78       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10251.06   9052.81   1186.24      7.25      1.01      3.43
 REAL TIME  *     10537.64 SEC
 DISK USED  *         1.70 GB (local),       20.94 GB (total)
 SF USED    *        13.14 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -461.07186344  AU                              
 SETTING HLSDIAG(5)     =      -461.07186341  AU                              
 SETTING HLSDIAG(6)     =      -461.07186339  AU                              
 SETTING HLSDIAG(7)     =      -461.06514306  AU                              
 SETTING HLSDIAG(8)     =      -461.06514292  AU                              
 SETTING HLSDIAG(9)     =      -461.06514291  AU                              
 SETTING HLSDIAG(10)    =      -461.06514287  AU                              
 SETTING HLSDIAG(11)    =      -461.06514260  AU                              


         HLSDIAG
    -461.4512807
    -461.4512807
    -461.4512807
    -461.0718634
    -461.0718634
    -461.0718634
    -461.0651431
    -461.0651429
    -461.0651429
    -461.0651429
    -461.0651426
                                                  

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

 Time for Seward_LS:      13.14 sec

       33365863. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    40874 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     13.15 sec, REAL time:     13.99 sec


 SORTLS1 read   167324488. and wrote   167324488. SO integrals in   660 records. CPU time:      1.58 sec, REAL time:      2.42 sec
 SORTLS2 read   167324488. and wrote   839252487. SO integrals in    36 records. CPU time:      1.00 sec, REAL time:      1.40 sec

 FILE SIZES: FILE 1:  2737.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  2737.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     2610.56       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1681.78       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10267.54     16.42   9052.81   1186.24      7.25      1.01      3.43
 REAL TIME  *     10556.24 SEC
 DISK USED  *         1.70 GB (local),       29.38 GB (total)
 SF USED    *        13.14 GB
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

 Original energies:   -461.415468   -461.415468   -461.415468
 Replaced energies:   -461.451281   -461.451281   -461.451281

 Wavefunction restored from record  5203.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:   -461.042967   -461.042967   -461.042967   -461.035667   -461.035667   -461.035667   -461.035667   -461.035667
 Replaced energies:   -461.071863   -461.071863   -461.071863   -461.065143   -461.065143   -461.065143   -461.065143   -461.065143

 >>> Fock matrix approximation error in all internal so: 
   6.4765945826439211       (exact)    6.5148144184476502       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.52484337062200159       (exact)  -0.53233355474390009       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.0901468643998484       (exact)    8.1466354238460497       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.40635778385879762       (exact)   0.41280230584217736       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.37636420682017951       (exact)   0.38256289613687294       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.30733294164036096       (exact)  -0.31266463153140017       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6959915675480559       (exact)   -6.8016727028904445       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.1499365102691952       (exact)   -6.2512344879633410       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.9611301523071329       (exact)    5.0478627802283711       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.8941631258163634       (exact)    7.9459319057356712       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.56806732728141918       (exact)  -0.57600585563404749       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.1803972979851132       (exact)    8.2277422130919202       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1403948676508122       (exact)    2.1732527461588798       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.0399746876890785       (exact)    2.0708957149880840       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.9443243810121627       (exact)   -1.9735718820032175       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.4541944551496391       (exact)    6.5527420920474748       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.4920160575018464       (exact)    6.5906956000724932       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.7705603863842825       (exact)   -5.8576605814163099       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.4963337447371270       (exact)   -4.5730914277737638       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.9921496884696275       (exact)    9.1370039685709479       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.0311763893312955       (exact)    5.1072541656755943       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.0263305775161640       (exact)   -3.0740880430914719       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.4760755777775643       (exact)    5.5631268811503780       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.7077550729690238       (exact)    2.7512018313489843       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.5393889316463039       (exact)   -4.5690065448211659       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.3173986837188405       (exact)    8.3717512605751203       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.1731984363049710       (exact)    4.2004281531689571       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.2371520732466088       (exact)    6.3399702389540575       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.2007743635297681       (exact)    6.3025387918923652       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.4699630905712935       (exact)   -5.5601410933545345       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.68325026092337293       (exact)   0.69150941385643117       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.17321615040282967       (exact)  -0.17060068685401802       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.61197628894133604       (exact)  -0.61930335896385424       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.5135774065556502       (exact)    4.5366455871083868       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.1252859375040867       (exact)   -9.1814144875927948       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.1002364548882406       (exact)   -5.1367707869235071       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.6871118742135813       (exact)   -6.7886493076956427       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.4051198529485713       (exact)   -6.5027996124061076       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.6007832384604352       (exact)    5.6855692809404390       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1622437458157306       (exact)    2.1954869191124082       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.1730609135957040       (exact)    2.2054757625095451       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7685692273840601       (exact)   -1.7956799000260455       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.8473670595457357       (exact)    7.9710601704397064       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.75596521248553050       (exact)  -0.76276851695009507       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.4015210879209228       (exact)    8.5395279781232656       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1723284141045651       (exact)   -4.2394012164442598       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.17538483739969185       (exact)   0.17771744813276530       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.7519823989398917       (exact)   -4.8287517286155950       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.34398864179790672       (exact)  -0.34969048797499380       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.63663782370762523       (exact)   0.64712021985383006       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.32411574211236205       (exact)   0.32940900800324974       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.2802033249041500       (exact)    8.3375063465121642       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.72001694670233241       (exact)  -0.73054450170882357       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.6302518181575714       (exact)    8.6837389405668830       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.7485612312242944       (exact)   -4.8315752795259170       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.5745578487489933       (exact)    9.7322763755676398       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   5.3586748554088306       (exact)    5.4414824855928758       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.5575903581722590E-002  (exact)   -9.7147908323444776E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.3726398442234413E-002  (exact)    3.4197152342132719E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.10283928785108415       (exact)   0.10435347018880786       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.4435583835437535       (exact)    6.4661874003812336       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.0617000511490815       (exact)    3.1094088354413789       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   11.040871472909453       (exact)    11.124337493752730       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -8.1716047507535130       (exact)   -8.2711329939098022       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   10.107454723492403       (exact)    10.260597980684802       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.9668152395930147       (exact)    2.0242290998133035       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.32902316844173080       (exact)   0.33304953417633065       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.16963845684590587       (exact)   0.17238373684016928       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.0829343817242673E-002  (exact)   -4.2841757871142860E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.2416593177936832       (exact)   -9.3884901124822555       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.0392018864398125       (exact)   -9.1835830749636926       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   7.9494878803865925       (exact)    8.0773126599666067       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -461.45128074

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00    -226.47      -3.39      28.59     -39.36      -4.31     -27.84
                            0.00    -160.71    -180.81       0.00    -122.40     243.70     -40.80      -2.56      42.26     -48.70

    2   2.2  0.5  0.5       0.00       0.00       0.00     226.47      -0.00    -201.99     -52.38     -39.13       1.09      56.29
                          160.71      -0.00     183.22     122.40      -0.00     133.14       3.31      -2.38      38.81       3.50

    3   3.2  0.5  0.5       0.00       0.00       0.00       3.39     201.99       0.00     -26.28      34.52       3.86      31.46
                          180.81    -183.22      -0.00    -243.70    -133.14      -0.00     -50.97       1.94     -31.32     -50.46

    4   1.2  0.5 -0.5       0.00     226.47       3.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -122.40     243.70      -0.00     160.71     180.81       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5    -226.47      -0.00     201.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          122.40       0.00     133.14    -160.71       0.00    -183.22       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5      -3.39    -201.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -243.70    -133.14       0.00    -180.81     183.22       0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5      28.59     -52.38     -26.28       0.00       0.00       0.00   83272.47       0.00       0.00       0.00
                           40.80      -3.31      50.97      -0.00      -0.00      -0.00       0.00      10.50       0.57       1.25

    8   2.2  1.5  1.5     -39.36     -39.13      34.52       0.00       0.00       0.00       0.00   83272.48       0.00       0.00
                            2.56       2.38      -1.94      -0.00      -0.00      -0.00     -10.50       0.00    -158.62       1.53

    9   3.2  1.5  1.5      -4.31       1.09       3.86       0.00       0.00       0.00       0.00       0.00   83272.48       0.00
                          -42.26     -38.81      31.32      -0.00      -0.00      -0.00      -0.57     158.62      -0.00      -0.16

   10   4.2  1.5  1.5     -27.84      56.29      31.46       0.00       0.00       0.00       0.00       0.00       0.00   84747.43
                           48.70      -3.50      50.46      -0.00      -0.00      -0.00      -1.25      -1.53       0.16      -0.00

   11   5.2  1.5  1.5      41.36      39.62     -34.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           13.24      12.62     -12.02      -0.00      -0.00      -0.00       9.49     -66.28     167.14      -5.28

   12   6.2  1.5  1.5     -13.38     -13.44      10.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           39.92      40.15     -35.69      -0.00      -0.00      -0.00      -3.14    -167.41     -66.20       2.51

   13   7.2  1.5  1.5     -48.41       4.67     -51.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -27.73      55.45      31.03      -0.00      -0.00      -0.00       4.56       0.20       2.28     318.17

   14   8.2  1.5  1.5      25.73      -1.08      29.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.70      33.84      16.73      -0.00      -0.00      -0.00    -207.51      -0.67      12.13       6.79

   15   1.2  1.5  0.5       0.00       0.00       0.00      16.50     -30.24     -15.17      -0.00     -91.41      -5.59      -0.47
                           -2.17       4.02       2.05      23.55      -1.91      29.43      -0.00      -5.60      91.61       7.74

   16   2.2  1.5  0.5       0.00       0.00       0.00     -22.73     -22.59      19.93      91.41       0.00      -6.07     103.97
                           52.17      -4.54      54.36       1.48       1.37      -1.12       5.60      -0.00      -0.04      -0.67

   17   3.2  1.5  0.5       0.00       0.00       0.00      -2.49       0.63       2.23       5.59       6.07      -0.00      -0.02
                          -29.99      60.45      33.83     -24.40     -22.41      18.08     -91.61       0.04       0.00     103.65

   18   4.2  1.5  0.5       0.00       0.00       0.00     -16.07      32.50      18.16       0.47    -103.97       0.02       0.00
                           -0.59       0.21       0.64      28.12      -2.02      29.13      -7.74       0.67    -103.65      -0.00

   19   5.2  1.5  0.5       0.00       0.00       0.00      23.88      22.88     -20.00      98.70       0.69      -4.69      85.82
                           39.71      18.94      68.13       7.64       7.29      -6.94     -32.20      -0.92       2.53      34.48

   20   6.2  1.5  0.5       0.00       0.00       0.00      -7.72      -7.76       6.32     -32.28       0.70       1.32     -32.64
                          -50.50      62.52      12.22      23.05      23.18     -20.61     -98.54       0.10       7.32      85.24

   21   7.2  1.5  0.5       0.00       0.00       0.00     -27.95       2.69     -29.93      -5.48       0.38    -105.06       0.56
                            2.04       1.05      -0.26     -16.01      32.02      17.91      -0.16     102.66       0.23      -0.03

   22   8.2  1.5  0.5       0.00       0.00       0.00      14.86      -0.63      16.92       2.89      -3.02      57.61      -2.18
                          -57.04     -55.79      49.06     -10.80      19.54       9.66       0.05      62.11       4.30      -0.19

   23   1.2  1.5 -0.5      16.50     -30.24     -15.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.55       1.91     -29.43      -2.17       4.02       2.05      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5     -22.73     -22.59      19.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.48      -1.37       1.12      52.17      -4.54      54.36      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5      -2.49       0.63       2.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           24.40      22.41     -18.08     -29.99      60.45      33.83      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5     -16.07      32.50      18.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.12       2.02     -29.13      -0.59       0.21       0.64      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5      23.88      22.88     -20.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.64      -7.29       6.94      39.71      18.94      68.13      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5      -7.72      -7.76       6.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.05     -23.18      20.61     -50.50      62.52      12.22      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5     -27.95       2.69     -29.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           16.01     -32.02     -17.91       2.04       1.05      -0.26      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5      14.86      -0.63      16.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           10.80     -19.54      -9.66     -57.04     -55.79      49.06      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00      28.59     -52.38     -26.28       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -40.80       3.31     -50.97      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00     -39.36     -39.13      34.52       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -2.56      -2.38       1.94      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00      -4.31       1.09       3.86       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      42.26      38.81     -31.32      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00     -27.84      56.29      31.46       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -48.70       3.50     -50.46      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00      41.36      39.62     -34.65       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -13.24     -12.62      12.02      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00     -13.38     -13.44      10.94       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -39.92     -40.15      35.69      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00     -48.41       4.67     -51.83       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      27.73     -55.45     -31.03      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00      25.73      -1.08      29.31       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      18.70     -33.84     -16.73      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5      41.36     -13.38     -48.41      25.73       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.24     -39.92      27.73      18.70       2.17     -52.17      29.99       0.59     -39.71      50.50

    2   2.2  0.5  0.5      39.62     -13.44       4.67      -1.08       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.62     -40.15     -55.45     -33.84      -4.02       4.54     -60.45      -0.21     -18.94     -62.52

    3   3.2  0.5  0.5     -34.65      10.94     -51.83      29.31       0.00       0.00       0.00       0.00       0.00       0.00
                           12.02      35.69     -31.03     -16.73      -2.05     -54.36     -33.83      -0.64     -68.13     -12.22

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00      16.50     -22.73      -2.49     -16.07      23.88      -7.72
                            0.00       0.00       0.00       0.00     -23.55      -1.48      24.40     -28.12      -7.64     -23.05

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00     -30.24     -22.59       0.63      32.50      22.88      -7.76
                            0.00       0.00       0.00       0.00       1.91      -1.37      22.41       2.02      -7.29     -23.18

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00     -15.17      19.93       2.23      18.16     -20.00       6.32
                            0.00       0.00       0.00       0.00     -29.43       1.12     -18.08     -29.13       6.94      20.61

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.00      91.41       5.59       0.47      98.70     -32.28
                           -9.49       3.14      -4.56     207.51       0.00      -5.60      91.61       7.74      32.20      98.54

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00     -91.41       0.00       6.07    -103.97       0.69       0.70
                           66.28     167.41      -0.20       0.67       5.60       0.00      -0.04      -0.67       0.92      -0.10

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00      -5.59      -6.07      -0.00       0.02      -4.69       1.32
                         -167.14      66.20      -2.28     -12.13     -91.61       0.04      -0.00     103.65      -2.53      -7.32

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00      -0.47     103.97      -0.02       0.00      85.82     -32.64
                            5.28      -2.51    -318.17      -6.79      -7.74       0.67    -103.65       0.00     -34.48     -85.24

   11   5.2  1.5  1.5   84747.46       0.00       0.00       0.00     -98.70      -0.69       4.69     -85.82      -0.00       0.95
                           -0.00    -159.09       2.13      -0.42     -32.20      -0.92       2.53      34.48       0.00      -0.09

   12   6.2  1.5  1.5       0.00   84747.46       0.00       0.00      32.28      -0.70      -1.32      32.64      -0.95       0.00
                          159.09      -0.00       4.50      -1.31     -98.54       0.10       7.32      85.24       0.09       0.00

   13   7.2  1.5  1.5       0.00       0.00   84747.47       0.00       5.48      -0.38     105.06      -0.56      32.53      82.31
                           -2.13      -4.50       0.00      -1.93      -0.16     102.66       0.23      -0.03      88.73     -34.62

   14   8.2  1.5  1.5       0.00       0.00       0.00   84747.53      -2.89       3.02     -57.61       2.18      49.63     153.25
                            0.42       1.31       1.93       0.00       0.05      62.11       4.30      -0.19    -149.22      49.24

   15   1.2  1.5  0.5     -98.70      32.28       5.48      -2.89   83272.47       0.00       0.00       0.00       0.00       0.00
                           32.20      98.54       0.16      -0.05       0.00       3.50       0.19       0.42      -3.16       1.05

   16   2.2  1.5  0.5      -0.69      -0.70      -0.38       3.02       0.00   83272.48       0.00       0.00       0.00       0.00
                            0.92      -0.10    -102.66     -62.11      -3.50       0.00     -52.87       0.51      22.09      55.80

   17   3.2  1.5  0.5       4.69      -1.32     105.06     -57.61       0.00       0.00   83272.48       0.00       0.00       0.00
                           -2.53      -7.32      -0.23      -4.30      -0.19      52.87      -0.00      -0.05     -55.71      22.07

   18   4.2  1.5  0.5     -85.82      32.64      -0.56       2.18       0.00       0.00       0.00   84747.43       0.00       0.00
                          -34.48     -85.24       0.03       0.19      -0.42      -0.51       0.05      -0.00       1.76      -0.84

   19   5.2  1.5  0.5      -0.00      -0.95      32.53      49.63       0.00       0.00       0.00       0.00   84747.46       0.00
                           -0.00      -0.09     -88.73     149.22       3.16     -22.09      55.71      -1.76      -0.00     -53.03

   20   6.2  1.5  0.5       0.95       0.00      82.31     153.25       0.00       0.00       0.00       0.00       0.00   84747.46
                            0.09      -0.00      34.62     -49.24      -1.05     -55.80     -22.07       0.84      53.03      -0.00

   21   7.2  1.5  0.5     -32.53     -82.31      -0.00      -0.27       0.00       0.00       0.00       0.00       0.00       0.00
                           88.73     -34.62      -0.00       1.38       1.52       0.07       0.76     106.06      -0.71      -1.50

   22   8.2  1.5  0.5     -49.63    -153.25       0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -149.22      49.24      -1.38      -0.00     -69.17      -0.22       4.04       2.26       0.14       0.44

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00    -105.55      -6.46      -0.55    -113.97      37.28
                           -0.00      -0.00      -0.00      -0.00      -0.00      -6.47     105.78       8.94      37.18     113.79

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00     105.55       0.00      -7.01     120.06      -0.79      -0.80
                           -0.00      -0.00      -0.00      -0.00       6.47      -0.00      -0.05      -0.77       1.06      -0.11

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00       6.46       7.01      -0.00      -0.03       5.41      -1.52
                           -0.00      -0.00      -0.00      -0.00    -105.78       0.05       0.00     119.68      -2.93      -8.45

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       0.55    -120.06       0.03       0.00     -99.10      37.69
                           -0.00      -0.00      -0.00      -0.00      -8.94       0.77    -119.68      -0.00     -39.82     -98.43

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     113.97       0.79      -5.41      99.10      -0.00      -1.10
                           -0.00      -0.00      -0.00      -0.00     -37.18      -1.06       2.93      39.82      -0.00      -0.10

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00     -37.28       0.80       1.52     -37.69       1.10       0.00
                           -0.00      -0.00      -0.00      -0.00    -113.79       0.11       8.45      98.43       0.10      -0.00

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -6.33       0.44    -121.31       0.65     -37.56     -95.04
                           -0.00      -0.00      -0.00      -0.00      -0.18     118.54       0.26      -0.04     102.46     -39.98

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00       3.34      -3.49      66.53      -2.51     -57.31    -176.96
                           -0.00      -0.00      -0.00      -0.00       0.06      71.71       4.96      -0.22    -172.30      56.86

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

    1   1.2  0.5  0.5       0.00       0.00      16.50     -22.73      -2.49     -16.07      23.88      -7.72     -27.95      14.86
                           -2.04      57.04      23.55       1.48     -24.40      28.12       7.64      23.05     -16.01     -10.80

    2   2.2  0.5  0.5       0.00       0.00     -30.24     -22.59       0.63      32.50      22.88      -7.76       2.69      -0.63
                           -1.05      55.79      -1.91       1.37     -22.41      -2.02       7.29      23.18      32.02      19.54

    3   3.2  0.5  0.5       0.00       0.00     -15.17      19.93       2.23      18.16     -20.00       6.32     -29.93      16.92
                            0.26     -49.06      29.43      -1.12      18.08      29.13      -6.94     -20.61      17.91       9.66

    4   1.2  0.5 -0.5     -27.95      14.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           16.01      10.80       2.17     -52.17      29.99       0.59     -39.71      50.50      -2.04      57.04

    5   2.2  0.5 -0.5       2.69      -0.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -32.02     -19.54      -4.02       4.54     -60.45      -0.21     -18.94     -62.52      -1.05      55.79

    6   3.2  0.5 -0.5     -29.93      16.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.91      -9.66      -2.05     -54.36     -33.83      -0.64     -68.13     -12.22       0.26     -49.06

    7   1.2  1.5  1.5      -5.48       2.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.16      -0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5       0.38      -3.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -102.66     -62.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5    -105.06      57.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.23      -4.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5       0.56      -2.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5     -32.53     -49.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -88.73     149.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5     -82.31    -153.25       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           34.62     -49.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.00       0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5      -0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00      -0.00     105.55       6.46       0.55     113.97     -37.28      -6.33       3.34
                           -1.52      69.17       0.00      -6.47     105.78       8.94      37.18     113.79       0.18      -0.06

   16   2.2  1.5  0.5       0.00       0.00    -105.55       0.00       7.01    -120.06       0.79       0.80       0.44      -3.49
                           -0.07       0.22       6.47       0.00      -0.05      -0.77       1.06      -0.11    -118.54     -71.71

   17   3.2  1.5  0.5       0.00       0.00      -6.46      -7.01      -0.00       0.03      -5.41       1.52    -121.31      66.53
                           -0.76      -4.04    -105.78       0.05      -0.00     119.68      -2.93      -8.45      -0.26      -4.96

   18   4.2  1.5  0.5       0.00       0.00      -0.55     120.06      -0.03       0.00      99.10     -37.69       0.65      -2.51
                         -106.06      -2.26      -8.94       0.77    -119.68       0.00     -39.82     -98.43       0.04       0.22

   19   5.2  1.5  0.5       0.00       0.00    -113.97      -0.79       5.41     -99.10      -0.00       1.10     -37.56     -57.31
                            0.71      -0.14     -37.18      -1.06       2.93      39.82       0.00      -0.10    -102.46     172.30

   20   6.2  1.5  0.5       0.00       0.00      37.28      -0.80      -1.52      37.69      -1.10       0.00     -95.04    -176.96
                            1.50      -0.44    -113.79       0.11       8.45      98.43       0.10       0.00      39.98     -56.86

   21   7.2  1.5  0.5   84747.47       0.00       6.33      -0.44     121.31      -0.65      37.56      95.04      -0.00       0.32
                            0.00      -0.64      -0.18     118.54       0.26      -0.04     102.46     -39.98       0.00       1.59

   22   8.2  1.5  0.5       0.00   84747.53      -3.34       3.49     -66.53       2.51      57.31     176.96      -0.32       0.00
                            0.64       0.00       0.06      71.71       4.96      -0.22    -172.30      56.86      -1.59       0.00

   23   1.2  1.5 -0.5       6.33      -3.34   83272.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.18      -0.06      -0.00      -3.50      -0.19      -0.42       3.16      -1.05       1.52     -69.17

   24   2.2  1.5 -0.5      -0.44       3.49       0.00   83272.48       0.00       0.00       0.00       0.00       0.00       0.00
                         -118.54     -71.71       3.50      -0.00      52.87      -0.51     -22.09     -55.80       0.07      -0.22

   25   3.2  1.5 -0.5     121.31     -66.53       0.00       0.00   83272.48       0.00       0.00       0.00       0.00       0.00
                           -0.26      -4.96       0.19     -52.87       0.00       0.05      55.71     -22.07       0.76       4.04

   26   4.2  1.5 -0.5      -0.65       2.51       0.00       0.00       0.00   84747.43       0.00       0.00       0.00       0.00
                            0.04       0.22       0.42       0.51      -0.05       0.00      -1.76       0.84     106.06       2.26

   27   5.2  1.5 -0.5      37.56      57.31       0.00       0.00       0.00       0.00   84747.46       0.00       0.00       0.00
                         -102.46     172.30      -3.16      22.09     -55.71       1.76       0.00      53.03      -0.71       0.14

   28   6.2  1.5 -0.5      95.04     176.96       0.00       0.00       0.00       0.00       0.00   84747.46       0.00       0.00
                           39.98     -56.86       1.05      55.80      22.07      -0.84     -53.03       0.00      -1.50       0.44

   29   7.2  1.5 -0.5      -0.00      -0.32       0.00       0.00       0.00       0.00       0.00       0.00   84747.47       0.00
                           -0.00       1.59      -1.52      -0.07      -0.76    -106.06       0.71       1.50      -0.00       0.64

   30   8.2  1.5 -0.5       0.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   84747.53
                           -1.59      -0.00      69.17       0.22      -4.04      -2.26      -0.14      -0.44      -0.64      -0.00

   31   1.2  1.5 -1.5       0.00       0.00      -0.00     -91.41      -5.59      -0.47     -98.70      32.28       5.48      -2.89
                           -0.00      -0.00      -0.00      -5.60      91.61       7.74      32.20      98.54       0.16      -0.05

   32   2.2  1.5 -1.5       0.00       0.00      91.41       0.00      -6.07     103.97      -0.69      -0.70      -0.38       3.02
                           -0.00      -0.00       5.60      -0.00      -0.04      -0.67       0.92      -0.10    -102.66     -62.11

   33   3.2  1.5 -1.5       0.00       0.00       5.59       6.07      -0.00      -0.02       4.69      -1.32     105.06     -57.61
                           -0.00      -0.00     -91.61       0.04       0.00     103.65      -2.53      -7.32      -0.23      -4.30

   34   4.2  1.5 -1.5       0.00       0.00       0.47    -103.97       0.02       0.00     -85.82      32.64      -0.56       2.18
                           -0.00      -0.00      -7.74       0.67    -103.65      -0.00     -34.48     -85.24       0.03       0.19

   35   5.2  1.5 -1.5       0.00       0.00      98.70       0.69      -4.69      85.82      -0.00      -0.95      32.53      49.63
                           -0.00      -0.00     -32.20      -0.92       2.53      34.48      -0.00      -0.09     -88.73     149.22

   36   6.2  1.5 -1.5       0.00       0.00     -32.28       0.70       1.32     -32.64       0.95       0.00      82.31     153.25
                           -0.00      -0.00     -98.54       0.10       7.32      85.24       0.09      -0.00      34.62     -49.24

   37   7.2  1.5 -1.5       0.00       0.00      -5.48       0.38    -105.06       0.56     -32.53     -82.31      -0.00      -0.27
                           -0.00      -0.00      -0.16     102.66       0.23      -0.03      88.73     -34.62      -0.00       1.38

   38   8.2  1.5 -1.5       0.00       0.00       2.89      -3.02      57.61      -2.18     -49.63    -153.25       0.27       0.00
                           -0.00      -0.00       0.05      62.11       4.30      -0.19    -149.22      49.24      -1.38      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5      28.59     -39.36      -4.31     -27.84      41.36     -13.38     -48.41      25.73
                           40.80       2.56     -42.26      48.70      13.24      39.92     -27.73     -18.70

    5   2.2  0.5 -0.5     -52.38     -39.13       1.09      56.29      39.62     -13.44       4.67      -1.08
                           -3.31       2.38     -38.81      -3.50      12.62      40.15      55.45      33.84

    6   3.2  0.5 -0.5     -26.28      34.52       3.86      31.46     -34.65      10.94     -51.83      29.31
                           50.97      -1.94      31.32      50.46     -12.02     -35.69      31.03      16.73

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

   23   1.2  1.5 -0.5      -0.00      91.41       5.59       0.47      98.70     -32.28      -5.48       2.89
                            0.00      -5.60      91.61       7.74      32.20      98.54       0.16      -0.05

   24   2.2  1.5 -0.5     -91.41       0.00       6.07    -103.97       0.69       0.70       0.38      -3.02
                            5.60       0.00      -0.04      -0.67       0.92      -0.10    -102.66     -62.11

   25   3.2  1.5 -0.5      -5.59      -6.07      -0.00       0.02      -4.69       1.32    -105.06      57.61
                          -91.61       0.04      -0.00     103.65      -2.53      -7.32      -0.23      -4.30

   26   4.2  1.5 -0.5      -0.47     103.97      -0.02       0.00      85.82     -32.64       0.56      -2.18
                           -7.74       0.67    -103.65       0.00     -34.48     -85.24       0.03       0.19

   27   5.2  1.5 -0.5     -98.70      -0.69       4.69     -85.82      -0.00       0.95     -32.53     -49.63
                          -32.20      -0.92       2.53      34.48       0.00      -0.09     -88.73     149.22

   28   6.2  1.5 -0.5      32.28      -0.70      -1.32      32.64      -0.95       0.00     -82.31    -153.25
                          -98.54       0.10       7.32      85.24       0.09       0.00      34.62     -49.24

   29   7.2  1.5 -0.5       5.48      -0.38     105.06      -0.56      32.53      82.31      -0.00       0.27
                           -0.16     102.66       0.23      -0.03      88.73     -34.62       0.00       1.38

   30   8.2  1.5 -0.5      -2.89       3.02     -57.61       2.18      49.63     153.25      -0.27       0.00
                            0.05      62.11       4.30      -0.19    -149.22      49.24      -1.38       0.00

   31   1.2  1.5 -1.5   83272.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -10.50      -0.57      -1.25       9.49      -3.14       4.56    -207.51

   32   2.2  1.5 -1.5       0.00   83272.48       0.00       0.00       0.00       0.00       0.00       0.00
                           10.50      -0.00     158.62      -1.53     -66.28    -167.41       0.20      -0.67

   33   3.2  1.5 -1.5       0.00       0.00   83272.48       0.00       0.00       0.00       0.00       0.00
                            0.57    -158.62       0.00       0.16     167.14     -66.20       2.28      12.13

   34   4.2  1.5 -1.5       0.00       0.00       0.00   84747.43       0.00       0.00       0.00       0.00
                            1.25       1.53      -0.16       0.00      -5.28       2.51     318.17       6.79

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   84747.46       0.00       0.00       0.00
                           -9.49      66.28    -167.14       5.28       0.00     159.09      -2.13       0.42

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   84747.46       0.00       0.00
                            3.14     167.41      66.20      -2.51    -159.09       0.00      -4.50       1.31

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   84747.47       0.00
                           -4.56      -0.20      -2.28    -318.17       2.13       4.50      -0.00       1.93

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   84747.53
                          207.51       0.67     -12.13      -6.79      -0.42      -1.31      -1.93      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -461.45266516    -0.00138441     -303.84      0.00000000        0.00      0.0000
     2  -461.45266516    -0.00138441     -303.84      0.00000000        0.00      0.0000
     3  -461.45266508    -0.00138433     -303.83      0.00000008        0.02      0.0000
     4  -461.45266508    -0.00138433     -303.83      0.00000008        0.02      0.0000
     5  -461.44851738     0.00276336      606.49      0.00414777      910.33      0.1129
     6  -461.44851738     0.00276336      606.49      0.00414777      910.33      0.1129
     7  -461.07278692     0.37849382    83069.79      0.37987823    83373.64     10.3370
     8  -461.07278692     0.37849382    83069.79      0.37987823    83373.64     10.3370
     9  -461.07278691     0.37849384    83069.80      0.37987825    83373.64     10.3370
    10  -461.07278691     0.37849384    83069.80      0.37987825    83373.64     10.3370
    11  -461.07278689     0.37849386    83069.80      0.37987827    83373.64     10.3370
    12  -461.07278689     0.37849386    83069.80      0.37987827    83373.64     10.3370
    13  -461.07153261     0.37974813    83345.08      0.38113255    83648.93     10.3711
    14  -461.07153261     0.37974813    83345.08      0.38113255    83648.93     10.3711
    15  -461.07153259     0.37974816    83345.09      0.38113257    83648.93     10.3711
    16  -461.07153259     0.37974816    83345.09      0.38113257    83648.93     10.3711
    17  -461.07070433     0.38057641    83526.87      0.38196083    83830.71     10.3937
    18  -461.07070433     0.38057641    83526.87      0.38196083    83830.71     10.3937
    19  -461.06659330     0.38468745    84429.14      0.38607186    84732.98     10.5056
    20  -461.06659330     0.38468745    84429.14      0.38607186    84732.98     10.5056
    21  -461.06659328     0.38468746    84429.14      0.38607187    84732.98     10.5056
    22  -461.06659328     0.38468746    84429.14      0.38607187    84732.98     10.5056
    23  -461.06659318     0.38468756    84429.16      0.38607197    84733.00     10.5056
    24  -461.06659318     0.38468756    84429.16      0.38607197    84733.00     10.5056
    25  -461.06659310     0.38468764    84429.18      0.38607205    84733.02     10.5056
    26  -461.06659310     0.38468764    84429.18      0.38607205    84733.02     10.5056
    27  -461.06470206     0.38657868    84844.21      0.38796310    85148.06     10.5570
    28  -461.06470206     0.38657868    84844.21      0.38796310    85148.06     10.5570
    29  -461.06470201     0.38657873    84844.23      0.38796315    85148.07     10.5570
    30  -461.06470201     0.38657873    84844.23      0.38796315    85148.07     10.5570
    31  -461.06470188     0.38657887    84844.25      0.38796328    85148.10     10.5570
    32  -461.06470188     0.38657887    84844.25      0.38796328    85148.10     10.5570
    33  -461.06353882     0.38774193    85099.52      0.38912634    85403.36     10.5887
    34  -461.06353882     0.38774193    85099.52      0.38912634    85403.36     10.5887
    35  -461.06353880     0.38774194    85099.52      0.38912636    85403.36     10.5887
    36  -461.06353880     0.38774194    85099.52      0.38912636    85403.36     10.5887
    37  -461.06291714     0.38836360    85235.96      0.38974801    85539.80     10.6056
    38  -461.06291714     0.38836360    85235.96      0.38974801    85539.80     10.6056


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5  -0.081316377   0.554388543  -0.057373134   0.591112206   0.513848724  -0.263230905  -0.000000494  -0.000000428
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.193332999   0.162680414   0.207007653  -0.159080447  -0.132445988  -0.258552370   0.000000891   0.000000773
                         0.576443675   0.198068827   0.062816025  -0.398994162   0.451885114   0.211522645   0.000000126  -0.000000113

    3    3.2  0.5  0.5   0.296427813  -0.381313508  -0.187959670   0.380165366   0.208914200   0.407832948   0.000000454   0.000000394
                         0.008127801   0.131681720   0.210590742  -0.437934309   0.338472063  -0.093776939   0.000000013   0.000000012

    4    1.2  0.5 -0.5   0.041815333   0.006133372   0.435519923   0.042271404  -0.036601784  -0.071449742   0.000000009  -0.000000010
                        -0.552809310  -0.081084739   0.399669910   0.038791815   0.260673778   0.508856999  -0.000000427   0.000000494

    5    2.2  0.5 -0.5  -0.185234269   0.589383960  -0.386980107  -0.194991123  -0.245419075   0.465911705  -0.000000129  -0.000000108
                        -0.177156550  -0.149303406   0.186411712  -0.093682890   0.226628849  -0.068325543   0.000000771  -0.000000894

    6    3.2  0.5 -0.5  -0.160067580  -0.014253729  -0.016003010  -0.003902139   0.149574392   0.306134870   0.000000004  -0.000000004
                         0.370295067   0.296196457   0.579703431   0.282244701  -0.390831587   0.253948659   0.000000394  -0.000000454

    7    1.2  1.5  1.5  -0.000017943  -0.000134521   0.000215271  -0.000431755  -0.000004554  -0.000009373   0.133980179   0.116773019
                         0.000214131   0.000133337   0.000255325  -0.000910534   0.000006146  -0.000027516   0.010977073  -0.011738638

    8    2.2  1.5  1.5  -0.000234075   0.000495251   0.000143828   0.000045522   0.000099088  -0.000406927   0.000643401  -0.018711644
                         0.000280230   0.000007834  -0.000065778  -0.000010677   0.000064885   0.000163316   0.101234349  -0.093996814

    9    3.2  1.5  1.5  -0.000278833   0.000001417   0.000052544   0.000036030  -0.000064726  -0.000163054  -0.196301657   0.201606218
                        -0.000248768   0.000487979   0.000126480   0.000107467   0.000098898  -0.000405997  -0.013477344  -0.023290064

   10    4.2  1.5  1.5  -0.000027057   0.000283019   0.000035876  -0.000084707   0.000362403  -0.000130840  -0.032152267  -0.029351243
                        -0.000518462  -0.000262592   0.000033210  -0.000143583  -0.000851656  -0.000208130  -0.001178074   0.004299397

   11    5.2  1.5  1.5   0.000332623  -0.000486854  -0.000164504  -0.000055428  -0.000084270   0.000461300  -0.017282897   0.008881163
                        -0.000180822  -0.000201675   0.000008117  -0.000007140  -0.000103883   0.000000252   0.046127066  -0.051350787

   12    6.2  1.5  1.5   0.000186063   0.000198924  -0.000010774   0.000014225   0.000104763   0.000004510  -0.036440055   0.041149556
                         0.000341703  -0.000479607  -0.000165778  -0.000049225  -0.000063406   0.000464319  -0.019668650   0.013306052

   13    7.2  1.5  1.5   0.000520443   0.000249823  -0.000040520   0.000155969   0.000848936   0.000217567   0.001394865  -0.004449362
                        -0.000035038   0.000281363   0.000039541  -0.000086714   0.000360753  -0.000135377  -0.031637468  -0.030845823

   14    8.2  1.5  1.5   0.000150005   0.000070019   0.000150230  -0.000553245   0.000017351   0.000001533  -0.001937326   0.002027914
                         0.000005226   0.000088781  -0.000128945   0.000262628   0.000013769  -0.000000243   0.025308506   0.018397123

   15    1.2  1.5  0.5  -0.000097351   0.000305743   0.000091362   0.000002926  -0.000094097   0.000482420  -0.054483338  -0.040366162
                         0.000151900   0.000048246  -0.000038876   0.000008351  -0.000074074  -0.000161127   0.521708386  -0.504582199

   16    2.2  1.5  0.5  -0.000044060   0.000230445   0.000152912  -0.000306772   0.000097579  -0.000034627   0.138387745   0.157342399
                        -0.000437075  -0.000231196   0.000187771  -0.000701577  -0.000232700  -0.000058198  -0.006068460  -0.034478140

   17    3.2  1.5  0.5   0.000713063   0.000319119   0.000105273  -0.000386511   0.000240151   0.000026091  -0.025196333   0.042641412
                        -0.000036977   0.000387641  -0.000072062   0.000127987   0.000103662  -0.000025875   0.357135095   0.371039419

   18    4.2  1.5  0.5   0.000062260  -0.000140419   0.000558008   0.000189593   0.000005480  -0.000000261   0.001365052   0.002714899
                        -0.000081046   0.000001628  -0.000264986  -0.000032556   0.000003515  -0.000006400  -0.017179421   0.024822665

   19    5.2  1.5  0.5   0.000039984  -0.000057891   0.000164225  -0.000424850   0.000560456  -0.000042300   0.037345908   0.039718908
                         0.000131744   0.000090171   0.000097316  -0.000448934  -0.000569848  -0.000220452   0.019634608   0.011063493

   20    6.2  1.5  0.5   0.000134995   0.000084930   0.000099882  -0.000450392   0.000573622   0.000213996  -0.017431509  -0.008851076
                        -0.000041973   0.000055259  -0.000164356   0.000425310   0.000561348  -0.000037354   0.046455467   0.044844048

   21    7.2  1.5  0.5   0.000085218   0.000001823   0.000265226   0.000031761   0.000006900   0.000004400   0.008494959  -0.010754087
                         0.000070346  -0.000150900   0.000555106   0.000184987  -0.000015142   0.000016263   0.000065731   0.001738966

   22    8.2  1.5  0.5  -0.000276915  -0.000037976   0.000062085   0.000006620  -0.000152428  -0.000290582  -0.030064457   0.031111923
                        -0.000263024   0.000516283   0.000166905   0.000059373   0.000206756  -0.000876057  -0.003058168  -0.002626802

   23    1.2  1.5 -0.5   0.000025048  -0.000158811  -0.000007802   0.000041029  -0.000226641   0.000060271   0.503670063   0.522697089
                         0.000308511   0.000085617   0.000004175   0.000090415   0.000455329   0.000103483   0.050488511  -0.043998029

   24    2.2  1.5 -0.5  -0.000247919   0.000432506   0.000700383   0.000239620  -0.000052817   0.000244008   0.037630151  -0.008845646
                         0.000212350   0.000076902  -0.000309490  -0.000034957  -0.000042383  -0.000064274  -0.156618471   0.138238017

   25    3.2  1.5 -0.5   0.000362467   0.000090655   0.000198237   0.000028839  -0.000029251  -0.000069262  -0.370108518   0.357568974
                         0.000347448  -0.000708243   0.000355631   0.000124273   0.000022239  -0.000252232  -0.050082166  -0.018021062

   26    4.2  1.5 -0.5   0.000012215   0.000085511  -0.000117676   0.000231964  -0.000006302  -0.000002719  -0.024763155  -0.017203364
                        -0.000139896  -0.000055969  -0.000152176   0.000572524  -0.000001148  -0.000005915  -0.003212716   0.001019866

   27    5.2  1.5 -0.5   0.000094281  -0.000128353   0.000616560   0.000186796  -0.000212429   0.000642243  -0.010263827   0.018880858
                        -0.000050925  -0.000049807  -0.000043511   0.000039338  -0.000072542  -0.000475775  -0.039933024   0.037732584

   28    6.2  1.5 -0.5   0.000048696   0.000052035   0.000044275  -0.000037535  -0.000066747  -0.000476134  -0.045012712   0.046796075
                         0.000088856  -0.000131444   0.000617885   0.000188628   0.000206723  -0.000646104   0.007948959  -0.016495310

   29    7.2  1.5 -0.5  -0.000150608  -0.000063718  -0.000148476   0.000570738   0.000015494   0.000015955  -0.001954525  -0.000104835
                        -0.000009564  -0.000090281   0.000114820  -0.000229664   0.000006619  -0.000004727   0.010717007   0.008494567

   30    8.2  1.5 -0.5   0.000517677   0.000241388  -0.000045021   0.000158593  -0.000827142  -0.000225943   0.003250906  -0.002453948
                         0.000001073   0.000295965   0.000039269  -0.000080994  -0.000409573   0.000122198  -0.031052914  -0.030119796

   31    1.2  1.5 -1.5  -0.000143104   0.000214874  -0.000933750  -0.000331241   0.000025945   0.000006720  -0.014080720  -0.008284945
                         0.000124081  -0.000001741   0.000378940   0.000042567   0.000013108  -0.000003655   0.116513803  -0.134173558

   32    2.2  1.5 -1.5   0.000029543   0.000297087   0.000026321  -0.000061495  -0.000218312   0.000050477  -0.093602196  -0.101201028
                        -0.000494431  -0.000212271   0.000038646  -0.000145711   0.000380265   0.000107147  -0.020595045  -0.002675751

   33    3.2  1.5 -1.5  -0.000486482  -0.000227028   0.000099208  -0.000124230   0.000379381   0.000106937  -0.027333012   0.009533484
                        -0.000038220  -0.000296802  -0.000054819   0.000057661   0.000217923  -0.000050346   0.201097986   0.196532671

   34    4.2  1.5 -1.5   0.000283191  -0.000514945  -0.000159492  -0.000048887   0.000187915  -0.000893775   0.004887815   0.000532317
                        -0.000262406  -0.000066086   0.000048516   0.000000212   0.000158509   0.000240462  -0.029259008   0.032169439

   35    5.2  1.5 -1.5   0.000164379  -0.000205396  -0.000045666   0.000115715   0.000063893  -0.000091157  -0.051518743  -0.046464757
                         0.000500679   0.000318037  -0.000032216   0.000117206  -0.000456854  -0.000097897   0.007848405   0.016353322

   36    6.2  1.5 -1.5   0.000493245   0.000326696  -0.000022802   0.000120026  -0.000459181  -0.000077357   0.012477212   0.018933080
                        -0.000162182   0.000211306   0.000045886  -0.000114857  -0.000069029   0.000094929   0.041408407   0.036827597

   37    7.2  1.5 -1.5  -0.000261718  -0.000074194   0.000056285   0.000003119   0.000164315   0.000239206  -0.030750276   0.031659096
                        -0.000270334   0.000516318   0.000169345   0.000056531  -0.000196630   0.000890852  -0.005067756  -0.000759399

   38    8.2  1.5 -1.5  -0.000083246  -0.000006103  -0.000230049  -0.000023502   0.000000454   0.000011223   0.018352700  -0.025342299
                        -0.000076516   0.000149972  -0.000567566  -0.000196579  -0.000001484   0.000019097   0.002396864   0.001428817


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000000022   0.000000468  -0.000000011   0.000000083   0.000018825   0.000720506   0.000000000   0.000666281
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000000038  -0.000000850  -0.000000003  -0.000000153   0.000359024  -0.000126705  -0.000466245   0.000127857
                        -0.000000020   0.000000074   0.000000003  -0.000000003  -0.000065169  -0.000343787  -0.000680418  -0.000008522

    3    3.2  0.5  0.5   0.000000022  -0.000000425   0.000000013  -0.000000076  -0.000192141   0.000499973  -0.000121488  -0.000537380
                         0.000000002   0.000000078  -0.000000001   0.000000006   0.000402077  -0.000455946  -0.000020199   0.000051748

    4    1.2  0.5 -0.5  -0.000000458  -0.000000021  -0.000000083  -0.000000011   0.000586989  -0.000015336   0.000386494  -0.000000000
                        -0.000000097  -0.000000005   0.000000010   0.000000001   0.000417818  -0.000010916   0.000542727  -0.000000000

    5    2.2  0.5 -0.5   0.000000816  -0.000000041   0.000000152  -0.000000003  -0.000302586  -0.000254702   0.000067225   0.000824700
                         0.000000249   0.000000012  -0.000000020  -0.000000003   0.000206604  -0.000261289   0.000109091  -0.000014909

    6    3.2  0.5 -0.5   0.000000400   0.000000022   0.000000076   0.000000013   0.000142923  -0.000076628  -0.000269569   0.000086926
                         0.000000164   0.000000003  -0.000000003  -0.000000001   0.000661387   0.000438990  -0.000467747   0.000087243

    7    1.2  1.5  1.5  -0.010451272  -0.596785132  -0.002624010  -0.017945132  -0.234389106   0.250090109   0.182187986   0.164287518
                         0.006566099   0.047033872  -0.010297263   0.001808994  -0.119954060   0.589348941   0.217480451  -0.010573472

    8    2.2  1.5  1.5  -0.065936198  -0.001864887   0.631840920   0.011278232  -0.141039790  -0.042749968   0.107586663  -0.341856723
                        -0.011033375  -0.042027176  -0.086337940   0.322452505   0.121868398  -0.011761826   0.172495767   0.035621504

    9    3.2  1.5  1.5   0.015422372  -0.019894877  -0.077004465   0.300620674  -0.107007801  -0.002659439  -0.184188779  -0.046536837
                        -0.058505652   0.000438480  -0.596214560  -0.008530981  -0.132595897  -0.082764540   0.092728473  -0.342502757

   10    4.2  1.5  1.5  -0.000539776  -0.013099842   0.000290978   0.003585700   0.006176724  -0.009284501   0.028187512   0.027712704
                         0.001554315   0.000875148   0.003062951   0.000039468   0.000949946  -0.024293407   0.038951843  -0.005407013

   11    5.2  1.5  1.5  -0.016164057   0.001663839  -0.050446162  -0.013791107  -0.024414419  -0.005646199   0.005291759  -0.046451174
                        -0.011196915   0.006770618   0.032112764  -0.026166237   0.008419462  -0.003665814   0.027420621  -0.013198352

   12    6.2  1.5  1.5   0.010522930   0.002264063   0.030689080  -0.033301834  -0.008749379   0.004409624  -0.028189925   0.012797960
                        -0.016814409  -0.002293419   0.062015093   0.011973739  -0.024400408  -0.004882898   0.004881005  -0.046114441

   13    7.2  1.5  1.5  -0.001969749  -0.001332072  -0.003198004  -0.000039048  -0.001668961   0.025279578  -0.038105433   0.004431385
                        -0.000547624  -0.010689332   0.000277794   0.003626312   0.006925890  -0.009456115   0.028478460   0.027608768

   14    8.2  1.5  1.5  -0.001735690  -0.008383014  -0.004728862  -0.000639256   0.009021501  -0.047195001  -0.018162884  -0.000614237
                        -0.002081166  -0.107392780   0.000749930  -0.006459027  -0.018334540   0.020085126   0.015811928   0.013956244

   15    1.2  1.5  0.5  -0.210565801   0.002784414   0.063203398   0.002684569  -0.088377196  -0.015431518   0.085525278  -0.199658032
                        -0.057816727   0.003049732  -0.012270930   0.036830957   0.070639346  -0.014629440   0.080645557  -0.013221649

   16    2.2  1.5  0.5   0.014447590   0.624853636  -0.004595580   0.000393292  -0.179344650   0.197950209  -0.131791051  -0.135241505
                        -0.023022423  -0.021902550  -0.045735580  -0.001479966  -0.081369085   0.552043530  -0.190446137   0.055646874

   17    3.2  1.5  0.5   0.020065753   0.003723038  -0.008821927  -0.000647566  -0.056031039   0.150868262   0.443570226  -0.016722908
                        -0.002276288  -0.408379098   0.001105630  -0.067797025   0.070656463  -0.046977483  -0.347193177  -0.324598314

   18    4.2  1.5  0.5  -0.070162981   0.001006529   0.069185817   0.001320762   0.042662327   0.019818547   0.009129634  -0.023110941
                        -0.016114260  -0.004643047  -0.009654109   0.040761812  -0.029842316   0.002357027   0.009835329  -0.001132142

   19    5.2  1.5  0.5   0.001965911   0.034962501   0.000432605  -0.004601284   0.019787093  -0.034048336  -0.019877485  -0.012925796
                        -0.001617596  -0.002024595  -0.003169088  -0.002743522   0.002517237  -0.039428485  -0.011603504   0.003935013

   20    6.2  1.5  0.5   0.002264505  -0.011779662   0.002079843   0.001913992   0.002581485  -0.039383166  -0.011543787   0.003396735
                         0.001158547   0.001881013   0.000931743  -0.006554901  -0.019757441   0.034071785   0.020208676   0.012729278

   21    7.2  1.5  0.5   0.016405301  -0.006974532  -0.010413059   0.033781123   0.029726773  -0.002342340  -0.010513349   0.001300007
                        -0.069002846   0.001371956  -0.078356089  -0.001256045   0.042182508   0.019405269   0.009148719  -0.024149743

   22    8.2  1.5  0.5   0.004225085  -0.002294445   0.000112097  -0.001723110   0.016055694  -0.002300353   0.024709422   0.002335810
                        -0.014046374   0.000366371   0.002251969  -0.000106723   0.021579645   0.006810800  -0.013141355   0.047538922

   23    1.2  1.5 -0.5   0.003355575   0.217974142  -0.001553166  -0.064193140   0.021055463  -0.031036634   0.126586802   0.115302013
                        -0.002407063  -0.012961710  -0.036895987  -0.004948332  -0.002969800  -0.108798774   0.154964264   0.022885037

   24    2.2  1.5 -0.5   0.606775246  -0.009367196   0.000560280  -0.000675024  -0.481395849  -0.193296010   0.033122601  -0.231579076
                         0.150816399  -0.025515102   0.001425156  -0.045960932   0.334954295  -0.037710541   0.142442034   0.003121372

   25    3.2  1.5 -0.5  -0.080920793  -0.019159498   0.007124816   0.008890511  -0.095668942  -0.004674593   0.274105999  -0.025505646
                         0.400298859  -0.006381972   0.067424726   0.000087541  -0.125759969  -0.090055319  -0.174670039   0.562714058

   26    4.2  1.5 -0.5   0.000023276   0.071979057  -0.003358385  -0.069836328  -0.017512817   0.017451174   0.014328316   0.013307372
                         0.004750837  -0.001236339  -0.040644692  -0.001663285  -0.009572441   0.049051957   0.018168564   0.001731408

   27    5.2  1.5 -0.5   0.033785494  -0.001588346  -0.004256630  -0.000792867   0.050603272   0.017580096   0.004292640  -0.020982236
                         0.009220406  -0.001989618   0.003252664  -0.003098649  -0.012377540   0.009423680   0.012811470  -0.009460521

   28    6.2  1.5 -0.5  -0.011134849  -0.002455325   0.002652441  -0.001959387   0.012327021  -0.009354142  -0.012339152   0.009764938
                        -0.004279461   0.000664525   0.006292428   0.001163913   0.050596095   0.017593196   0.004617105  -0.021125709

   29    7.2  1.5 -0.5  -0.006539276  -0.001761302   0.033702562   0.001366516  -0.009344749   0.048679580   0.018917358   0.001353650
                        -0.002786438  -0.070904334  -0.002622835  -0.079033164   0.017167606  -0.017127273  -0.015067637  -0.013870732

   30    8.2  1.5 -0.5  -0.002168851  -0.001224926  -0.001699533   0.000146669  -0.002075477   0.025594368  -0.040078345   0.003628909
                        -0.000833542  -0.014616823   0.000303452   0.002249982   0.006882660  -0.008270110   0.025673554   0.027750347

   31    1.2  1.5 -1.5   0.574111152  -0.008865108   0.018034227  -0.001426878   0.545506989   0.260515474   0.086686599  -0.282834285
                         0.169590876  -0.008587933  -0.000259055   0.010530099  -0.335110969   0.038195760   0.139955781  -0.022248083

   32    2.2  1.5 -1.5   0.010527044  -0.066791783   0.025742338   0.637572219  -0.041648634   0.044232858  -0.169287160  -0.202916990
                        -0.040730127  -0.002859182   0.321621124   0.013373615  -0.015208267   0.181073419  -0.299126676   0.012424753

   33    3.2  1.5 -1.5   0.019372888   0.002973330  -0.299618299  -0.008183641  -0.050161416   0.164070052  -0.305984640   0.031310512
                         0.004548614   0.060431125   0.025970026   0.601111069   0.065885307  -0.045971291   0.160770694   0.203822785

   34    4.2  1.5 -1.5   0.012634699  -0.000206224  -0.003557563  -0.000061889  -0.021651638  -0.005582989   0.011671144  -0.048079605
                         0.003568767  -0.001632398   0.000450054  -0.003076119   0.014407572  -0.002807943   0.025710196  -0.000365422

   35    5.2  1.5 -1.5  -0.003029771  -0.018132267   0.010702178  -0.053793379  -0.006725695   0.015007792  -0.037696114  -0.025405420
                         0.006279342   0.007607139  -0.027574082  -0.026121201  -0.000287701   0.021017073  -0.030181304   0.011595595

   36    6.2  1.5 -1.5  -0.001740094   0.006813094   0.034454452   0.023381337   0.000760909   0.021277729  -0.030139272   0.012376435
                        -0.002712532   0.018628960   0.008079190  -0.065122995   0.006535173  -0.014805060   0.037174639   0.025793797

   37    7.2  1.5 -1.5   0.003516643  -0.002040454   0.000454290  -0.003208772   0.015111478  -0.002656606   0.025059595  -0.001093400
                        -0.010181820   0.000127878   0.003597955   0.000090459   0.022363327   0.006610282  -0.012405562   0.047558923

   38    8.2  1.5 -1.5   0.030439165  -0.002129018  -0.000105023  -0.004783646  -0.026802055   0.003282386   0.011011921  -0.002343931
                        -0.103329286   0.001676650  -0.006489736  -0.000203163  -0.043731342  -0.020168509  -0.008596025   0.023966923


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000024007  -0.000424028   0.000000100  -0.000000021  -0.000000090   0.000000018   0.000000422   0.000000063
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000167010   0.000009163   0.000000098  -0.000000017   0.000000124  -0.000000016  -0.000000181  -0.000000575
                        -0.000306215  -0.000242432  -0.000000011  -0.000000009   0.000000016   0.000000090   0.000000024  -0.000000247

    3    3.2  0.5  0.5  -0.000340626  -0.000018650  -0.000000088  -0.000000012   0.000000079  -0.000000023  -0.000000380  -0.000000069
                         0.000013885  -0.000252475   0.000000004   0.000000014   0.000000014  -0.000000004   0.000000007   0.000000003

    4    1.2  0.5 -0.5  -0.000005400  -0.000000306  -0.000000003  -0.000000014  -0.000000006  -0.000000030  -0.000000059   0.000000393
                        -0.000423994  -0.000024005  -0.000000021  -0.000000099   0.000000017   0.000000085  -0.000000023   0.000000154

    5    2.2  0.5 -0.5  -0.000242296   0.000304063  -0.000000011  -0.000000003   0.000000090   0.000000027   0.000000625  -0.000000160
                         0.000012250  -0.000170896  -0.000000016  -0.000000098   0.000000014  -0.000000122  -0.000000021  -0.000000088

    6    3.2  0.5 -0.5  -0.000252692  -0.000009546   0.000000012   0.000000008   0.000000003   0.000000013   0.000000063  -0.000000351
                        -0.000015433   0.000340775  -0.000000013   0.000000088  -0.000000023  -0.000000079   0.000000028  -0.000000145

    7    1.2  1.5  1.5  -0.014892866  -0.000698154   0.000000172   0.000000435  -0.000002917   0.000000057   0.000008042   0.000008589
                        -0.022730410   0.018681402   0.000000329   0.000001509  -0.000000307  -0.000001281  -0.000000627   0.000003299

    8    2.2  1.5  1.5  -0.330955489   0.282426731  -0.000000787   0.000000146   0.000001201   0.000000433   0.000000153  -0.000000081
                         0.243157562  -0.004621122  -0.000000093   0.000000064  -0.000000087  -0.000002732   0.000000039  -0.000000014

    9    3.2  1.5  1.5  -0.242707776   0.004677577  -0.000000197   0.000000038   0.000000182  -0.000002528  -0.000000500  -0.000001186
                        -0.330180341   0.281812683   0.000000643  -0.000000251  -0.000001129  -0.000000580  -0.000002045   0.000001502

   10    4.2  1.5  1.5   0.002222792  -0.013975409   0.074964819   0.122576459   0.136926516  -0.058606002  -0.042268992  -0.043625555
                         0.019760048   0.025560962   0.042234064   0.678346541   0.021740634   0.049044267  -0.000295818  -0.020940012

   11    5.2  1.5  1.5  -0.013809381   0.009725538   0.123865415  -0.044300379  -0.192430692   0.079878935   0.112526371  -0.096151400
                         0.003588671   0.003612510  -0.013610670   0.003321178   0.083019893   0.467041766  -0.016918520  -0.024883314

   12    6.2  1.5  1.5  -0.003828711  -0.003574558  -0.025657247   0.011771091   0.082753141   0.450291340  -0.050823683   0.032951754
                        -0.014191951   0.009070100  -0.085268700   0.025688285   0.183616674  -0.083044766  -0.025084450   0.038325344

   13    7.2  1.5  1.5  -0.020007119  -0.025327756   0.042899170   0.657782414   0.021362654   0.048840686  -0.008626401  -0.008578517
                         0.002437321  -0.013985940  -0.072523451  -0.120456516  -0.143430279   0.070264832  -0.005156868  -0.010155998

   14    8.2  1.5  1.5  -0.000329057  -0.000547591  -0.008271374  -0.042294752   0.007772419   0.041195533   0.020987163  -0.132406546
                        -0.000143394  -0.000454789   0.005398411   0.016070890  -0.096839682   0.008511409   0.332161071   0.356157959

   15    1.2  1.5  0.5   0.408447222  -0.311764941   0.000001473  -0.000000673  -0.000000422  -0.000000098   0.000000650  -0.000000523
                        -0.257095474  -0.006279631   0.000000083  -0.000000042  -0.000000333   0.000001018   0.000000253  -0.000000185

   16    2.2  1.5  0.5  -0.017834653   0.112295605   0.000000270   0.000000274   0.000003917  -0.000000802  -0.000004275  -0.000004541
                        -0.162851361  -0.208247156  -0.000000017   0.000002470   0.000000509   0.000001586   0.000000172  -0.000001815

   17    3.2  1.5  0.5   0.135247213   0.229304576  -0.000000848  -0.000007302   0.000000660   0.000001766  -0.000000174  -0.000001074
                        -0.002268531   0.114122382   0.000000802   0.000001557  -0.000004062   0.000000256   0.000002135   0.000002201

   18    4.2  1.5  0.5  -0.000047108  -0.000188095   0.120366396  -0.032475670  -0.198416518  -0.089959525  -0.123496639   0.101290602
                         0.000172197  -0.000212821   0.023021328  -0.008594631   0.008330277   0.441327965  -0.000035620   0.039442321

   19    5.2  1.5  0.5  -0.004289813  -0.019321890   0.006711454   0.047325056  -0.079008615  -0.009897500   0.379567764   0.444545763
                         0.016944911   0.015938083   0.001778847   0.010544255   0.032619217  -0.038470971  -0.106786596   0.062259601

   20    6.2  1.5  0.5  -0.016783541  -0.016118998   0.008421636   0.081496291   0.013105296  -0.042612591  -0.136169259  -0.034997765
                        -0.004501124  -0.019268275  -0.012126285  -0.030487131   0.102930538  -0.006336427  -0.240706422  -0.314677733

   21    7.2  1.5  0.5  -0.000286683  -0.000168789   0.011346967  -0.002635515   0.006041148   0.350549136  -0.009557930  -0.076784011
                        -0.000273245   0.000750204  -0.062229429   0.024912422   0.157416824   0.068964969  -0.258763032   0.214433408

   22    8.2  1.5  0.5   0.015730733   0.001007745   0.002675188   0.004837641   0.000960881  -0.019687543  -0.006702614   0.053762367
                         0.024261791  -0.020154341   0.061000234  -0.006428188  -0.007888280   0.003240013   0.134742389  -0.105247788

   23    1.2  1.5 -0.5   0.010249591  -0.251872862   0.000000134   0.000000284  -0.000000992  -0.000000174  -0.000000555  -0.000000697
                         0.311659684   0.411688326   0.000000661   0.000001447  -0.000000247  -0.000000509  -0.000000018  -0.000000001

   24    2.2  1.5 -0.5   0.206800132  -0.163065286  -0.000002484   0.000000021  -0.000001762  -0.000000822  -0.000004890   0.000003919
                        -0.114938620  -0.015759220   0.000000068   0.000000270   0.000000229   0.000003863   0.000000037   0.000001716

   25    3.2  1.5 -0.5  -0.117033425  -0.000545912  -0.000000538   0.000000678   0.000000346  -0.000004050  -0.000000199  -0.000000616
                        -0.227832579   0.135265135   0.000007446  -0.000000950  -0.000001751  -0.000000728  -0.000002441   0.000002052

   26    4.2  1.5 -0.5   0.000215199   0.000171583   0.012981068   0.039363044  -0.446125436   0.073841557   0.108698942   0.115030335
                         0.000185370  -0.000049297   0.030984332   0.116054307  -0.061928867  -0.184352738   0.000150830   0.044938213

   27    5.2  1.5 -0.5  -0.015690718   0.016888904  -0.016955210   0.002685327   0.032989769   0.057037712   0.436695145  -0.314620243
                         0.019523302  -0.004505267  -0.045424255   0.006402884   0.022128066  -0.063663756   0.103896790  -0.237674499

   28    6.2  1.5 -0.5   0.019471996  -0.004714505   0.018984502  -0.010852270  -0.008195479   0.092713645  -0.147184935   0.214473293
                         0.015872300  -0.016724856  -0.084915836   0.010009944   0.042294413   0.046589962   0.280327513  -0.174593399

   29    7.2  1.5 -0.5  -0.000747993  -0.000276874  -0.024312898  -0.060076447   0.051539038   0.146447936   0.006574051   0.103130422
                         0.000178330  -0.000283180   0.006038031   0.019800914  -0.353531598   0.058047857  -0.227671370  -0.237515846

   30    8.2  1.5 -0.5   0.020139873   0.024460161   0.005701467   0.060788183  -0.009602889  -0.007758845   0.011744989  -0.042824121
                        -0.001264338   0.015420472  -0.005676059  -0.005742990   0.017489469  -0.001717138   0.117599082   0.127931744

   31    1.2  1.5 -1.5   0.018670996   0.022918234   0.000001555  -0.000000350  -0.000001227  -0.000000680  -0.000009200   0.000007261
                        -0.000936014   0.014602176   0.000000223  -0.000000125  -0.000000372   0.000002853  -0.000000055   0.000003513

   32    2.2  1.5 -1.5  -0.001023914  -0.238922973   0.000000083   0.000000200  -0.000002721   0.000000482   0.000000080   0.000000157
                         0.282462678   0.334025372   0.000000136   0.000000767  -0.000000500  -0.000001104   0.000000017   0.000000019

   33    3.2  1.5 -1.5   0.281849399   0.333244559  -0.000000244  -0.000000610   0.000000294   0.000001125   0.000000558  -0.000001211
                         0.001088184   0.238483095   0.000000073   0.000000284  -0.000002577   0.000000204   0.000001831   0.000001723

   34    4.2  1.5 -1.5   0.025380906  -0.019786754   0.688760132  -0.052146474   0.065742783   0.025033100   0.048255546  -0.039474527
                        -0.014299806  -0.001970959   0.028080222  -0.068441109  -0.038960106  -0.136363006  -0.003615995  -0.015116775

   35    5.2  1.5 -1.5   0.003736076  -0.003412512  -0.002805484  -0.003560833   0.413894161  -0.142289346   0.098610925   0.098639425
                         0.009678743   0.013853965  -0.044336026  -0.124560076   0.230651856   0.153868826   0.011838773   0.056733452

   36    6.2  1.5 -1.5   0.009023841   0.014239560   0.027063519   0.087987851  -0.228066971  -0.145645195  -0.044645489  -0.056468652
                        -0.003689780   0.003647660   0.008124821   0.013681522   0.397044306  -0.139106586   0.023694523   0.004854673

   37    7.2  1.5 -1.5  -0.014307366  -0.002182323  -0.028809761   0.065931449   0.050023043   0.142370888   0.011687830  -0.009911990
                        -0.025147585   0.020036537   0.668099899  -0.052469359   0.069428051   0.027552458  -0.006334815   0.001661487

   38    8.2  1.5 -1.5  -0.000461726   0.000147573   0.010098917  -0.004209052  -0.005673035   0.093912563  -0.006379651   0.140502870
                        -0.000541755   0.000327204  -0.044103643   0.008935454   0.041681324   0.024874987   0.379920104  -0.301712416


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5   0.000001014  -0.000000553  -0.000000055   0.000000219  -0.000000073  -0.000000659   0.000000050  -0.000000326
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5   0.000000901   0.000000178  -0.000000270  -0.000000161  -0.000000342   0.000000423   0.000000146   0.000000426
                        -0.000000443  -0.000000823   0.000000025   0.000000054  -0.000000820   0.000000206  -0.000000001  -0.000000241

    3    3.2  0.5  0.5  -0.000000886   0.000000501   0.000000066  -0.000000174   0.000000154   0.000000573  -0.000000058   0.000000144
                        -0.000000008  -0.000000011   0.000000037   0.000000066  -0.000000045   0.000000128  -0.000000036  -0.000000270

    4    1.2  0.5 -0.5   0.000000289   0.000000529   0.000000217   0.000000054   0.000000248  -0.000000028   0.000000296   0.000000045
                        -0.000000472  -0.000000865  -0.000000033  -0.000000008   0.000000611  -0.000000068  -0.000000138  -0.000000021

    5    2.2  0.5 -0.5  -0.000000795   0.000000848  -0.000000167   0.000000271  -0.000000350  -0.000000889  -0.000000488   0.000000132
                        -0.000000278  -0.000000537  -0.000000029  -0.000000017  -0.000000315  -0.000000008  -0.000000039  -0.000000061

    6    3.2  0.5 -0.5  -0.000000271  -0.000000455  -0.000000182  -0.000000060  -0.000000334   0.000000016  -0.000000244  -0.000000037
                         0.000000422   0.000000760  -0.000000039   0.000000047  -0.000000483   0.000000159  -0.000000184   0.000000057

    7    1.2  1.5  1.5   0.000000250  -0.000002425   0.012481430   0.022706701  -0.001149636   0.000166237  -0.010922789  -0.081503337
                         0.000001240   0.000002623   0.001424189  -0.010437851   0.000526429  -0.001431235   0.001889965   0.048116087

    8    2.2  1.5  1.5  -0.000002869   0.000000926  -0.082704791   0.047928012   0.027831655   0.036348267   0.027060552  -0.003597044
                         0.000000720   0.000000780  -0.009889094   0.007846243   0.037389423  -0.003602356   0.000589994   0.000607844

    9    3.2  1.5  1.5  -0.000000618  -0.000000760  -0.010418537   0.005680744  -0.004242204   0.004173917   0.002126897   0.005285350
                        -0.000003129   0.000000832   0.096239287  -0.054673013   0.005709652   0.005543642  -0.031762416   0.001050682

   10    4.2  1.5  1.5   0.006527245  -0.026303008   0.029336706   0.053503751   0.057803835  -0.217712565   0.002263854   0.015950584
                         0.020416663   0.037079616  -0.003551787  -0.015959723   0.163953559  -0.040778111  -0.004233419  -0.008973658

   11    5.2  1.5  1.5   0.160722532  -0.020545670  -0.435230018   0.252089235  -0.028654707  -0.197888338   0.137819780  -0.015454253
                         0.056500314  -0.068476974   0.068524573  -0.038593720  -0.270519346  -0.069805707  -0.025115917   0.006029029

   12    6.2  1.5  1.5  -0.009634601   0.089469045   0.126941761  -0.062301285   0.361021220   0.029985431  -0.055663084   0.010495952
                         0.257478092  -0.061329819   0.280293277  -0.163818868  -0.166375261  -0.318396922  -0.090234302   0.008511859

   13    7.2  1.5  1.5  -0.064456890  -0.129048056  -0.000253753   0.018270605  -0.168788448   0.035587187   0.005442607   0.005041295
                         0.017853441  -0.100390051   0.031214740   0.057308968   0.052556044  -0.216088743   0.000602846   0.001460227

   14    8.2  1.5  1.5  -0.048425430  -0.087353868  -0.031501029  -0.050687069  -0.000557216  -0.009006313   0.027184935   0.342390622
                         0.008089428  -0.085004103  -0.090765076  -0.159136135   0.007442756  -0.004852841   0.078088480   0.583128372

   15    1.2  1.5  0.5   0.000005472  -0.000001940   0.023429235  -0.012298166   0.051144101   0.073679220  -0.007793517  -0.001016868
                        -0.000000947  -0.000001845   0.002051258   0.002472768   0.076062938  -0.011993334  -0.002491104  -0.003456405

   16    2.2  1.5  0.5   0.000000532  -0.000001864  -0.004963788  -0.008604846   0.012561146  -0.045533818   0.010069605   0.076067307
                         0.000001395   0.000002860   0.002473224   0.001783530   0.034965381  -0.006342072  -0.003702249  -0.039792147

   17    3.2  1.5  0.5  -0.000002608  -0.000004312   0.003234417   0.008395717  -0.038562795   0.004573653  -0.001531306  -0.034491753
                         0.000000642  -0.000003543   0.017605717   0.030895455   0.005998757  -0.044871682  -0.009102238  -0.070177085

   18    4.2  1.5  0.5   0.012702221  -0.001515609   0.536623105  -0.310241976  -0.041992570  -0.074341830   0.310698669  -0.036671440
                        -0.009442318   0.001890458   0.053312124  -0.046075438  -0.083841354  -0.003416566   0.012310132   0.007866707

   19    5.2  1.5  0.5   0.035557915   0.261822691  -0.032993789  -0.054605697   0.015478772   0.271052745  -0.016578637  -0.099548182
                        -0.109027375  -0.084839633  -0.015662670  -0.027689100  -0.253254597   0.161184235   0.005350517   0.094803991

   20    6.2  1.5  0.5   0.194921612   0.296838327  -0.005630188  -0.003828768   0.252223351  -0.167048245   0.001848388   0.074928803
                        -0.008875332   0.365838296  -0.058144218  -0.100382513   0.015701035   0.273363374   0.009555036   0.048838102

   21    7.2  1.5  0.5   0.017356967   0.026211527   0.035437861  -0.025430027  -0.079927515   0.007694756  -0.020769583  -0.010638790
                         0.089140242  -0.030065661  -0.312939767   0.180124651   0.059853034   0.077234480   0.589420212  -0.071735943

   22    8.2  1.5  0.5   0.101168031   0.187214032  -0.000111844   0.002835117   0.179117639  -0.023734659  -0.006688397   0.003587740
                         0.629521840  -0.190032542  -0.062061965   0.034611424  -0.123541604  -0.172694733   0.030564821  -0.005893912

   23    1.2  1.5 -0.5   0.000000561  -0.000003665   0.012531236   0.022844158   0.016569462  -0.089706257   0.000539157   0.006010519
                         0.000002618   0.000004173   0.000572361  -0.005592956   0.072786815  -0.018816936   0.003562312  -0.005551411

   24    2.2  1.5 -0.5  -0.000003412   0.000000912   0.008776044  -0.005282358  -0.022986100  -0.037123027   0.085757295  -0.010690796
                         0.000000097   0.000001182   0.000453222  -0.001688999  -0.039814441   0.001497038   0.003916188   0.000900261

   25    3.2  1.5 -0.5   0.000000771   0.000001909  -0.003596081   0.000517406  -0.039865282   0.008930258  -0.001601743  -0.002458970
                         0.000005527  -0.000001889   0.031813289  -0.017892876   0.021098471   0.037991114   0.078178889  -0.008896578

   26    4.2  1.5 -0.5  -0.002403610  -0.014684427   0.299616242   0.522259150  -0.031099189   0.093476153  -0.036560196  -0.276385620
                         0.000305878   0.005905201  -0.092753100  -0.134357433  -0.067610805   0.007413334   0.008368495   0.142464703

   27    5.2  1.5 -0.5   0.209037596  -0.111555257   0.049755765  -0.030225844   0.251218198   0.228881771  -0.130287350   0.017286566
                        -0.179031195  -0.026584927  -0.035676774   0.020501409   0.190628867  -0.109501681  -0.043850243  -0.002157282

   28    6.2  1.5 -0.5  -0.157084145  -0.109321574  -0.011492599   0.003284105   0.190566864  -0.109320181   0.047268408   0.002362959
                        -0.444156754   0.161623017  -0.099795933   0.058323784  -0.257520719  -0.227842576  -0.075928805   0.009440958

   29    7.2  1.5 -0.5   0.039326882   0.066970551   0.052546189   0.082649995   0.074466433  -0.025435671   0.020675154   0.267925287
                        -0.006662164   0.061336714   0.174156465   0.303901494  -0.021888910   0.096559931   0.069510916   0.525417550

   30    8.2  1.5 -0.5   0.259813991   0.484132147   0.002465267   0.009334394  -0.168958752   0.047188160   0.005742485   0.018979088
                        -0.060482650   0.414908161   0.034639732   0.061356085   0.042892247  -0.212412180   0.003825433   0.024874427

   31    1.2  1.5 -1.5   0.000003503  -0.000000927   0.024030702  -0.012119304   0.001263902   0.000055895   0.094201879  -0.010698132
                        -0.000000699  -0.000000860   0.006860639   0.003307093  -0.000691824  -0.001263197   0.009162844   0.002903319

   32    2.2  1.5 -1.5   0.000000182  -0.000002112   0.046175659   0.080236463  -0.010318986   0.045107144   0.003516912   0.024275803
                         0.000001197   0.000002071  -0.015048801  -0.022360381  -0.035038436   0.011743744  -0.000969295  -0.011971088

   33    3.2  1.5 -1.5   0.000001106   0.000002346   0.013935018   0.024943412  -0.006705734   0.003697333  -0.004346105   0.015351101
                        -0.000000214   0.000002160   0.053171651   0.093532735  -0.001785128  -0.006076689   0.003185943   0.027887604

   34    4.2  1.5 -1.5   0.045357105  -0.014006846   0.055309375  -0.029535522   0.119592793   0.173659122  -0.018248575   0.003840879
                        -0.003078822  -0.016225084   0.007631325   0.000954208   0.186438138  -0.008035060  -0.001391822   0.002880020

   35    5.2  1.5 -1.5  -0.047681522   0.035707863   0.255026291   0.440588883   0.139044739  -0.261464045   0.016554283   0.135521456
                        -0.053270001  -0.166580210  -0.000220166   0.001490666   0.157159765   0.075089024  -0.001067154  -0.035482897

   36    6.2  1.5 -1.5  -0.099014470  -0.224642227  -0.036644728  -0.082806543   0.283800196  -0.018535355  -0.005915252  -0.012312840
                         0.044296632  -0.126188997   0.171392053   0.296347107  -0.147421759   0.397081213   0.012150167   0.105304331

   37    7.2  1.5 -1.5  -0.018261825  -0.048875163   0.009336190   0.005001230   0.186883721  -0.014714974  -0.003951833   0.004677893
                        -0.162474825   0.045658016  -0.059421951   0.030812531  -0.114172097  -0.176167952   0.003453973  -0.002846526

   38    8.2  1.5 -1.5  -0.026903441  -0.032178448  -0.025878439   0.017320968   0.007881260   0.006688031  -0.063868145  -0.008363998
                        -0.118880615   0.037081109   0.164996348  -0.094501841   0.006522996  -0.003312904   0.673194545  -0.082261017


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.001049814  -0.000178209  -0.000866774   0.000000000  -0.001257117   0.000212356
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000508744   0.000402818   0.000532171  -0.000697682  -0.000159414  -0.000937294
                         0.000033109   0.000202617   0.000494179  -0.000639777  -0.000578901   0.000622624

    3    3.2  0.5  0.5  -0.000147364  -0.001072516   0.000402070   0.000352921   0.000143705   0.000838086
                         0.000111731  -0.000215264   0.000556933  -0.000239410  -0.000653254   0.000689196

    4    1.2  0.5 -0.5   0.000035478  -0.000208998   0.000000000   0.000508716  -0.000115884  -0.000686014
                        -0.000174642   0.001028800   0.000000000   0.000701787   0.000177950   0.001053436

    5    2.2  0.5 -0.5   0.000118367  -0.000133727  -0.000927473  -0.000712450   0.001033230   0.000398113
                         0.000435092   0.000491970  -0.000189391  -0.000140837  -0.000445663   0.000449494

    6    3.2  0.5 -0.5   0.000002562  -0.000138832   0.000013293  -0.000686901   0.000120183   0.000625833
                        -0.001093903   0.000122171   0.000426255   0.000001330   0.001078395   0.000236062

    7    1.2  1.5  1.5  -0.003496876   0.009394596  -0.062025465   0.025753997   0.000015820   0.000025566
                        -0.036752708  -0.047006354  -0.039403550   0.041427404   0.001901752   0.001787372

    8    2.2  1.5  1.5   0.038673902  -0.032069415   0.018601287   0.027849046   0.028685180   0.026948072
                        -0.000723986  -0.008781816  -0.001271945   0.009912997  -0.001782744  -0.001831149

    9    3.2  1.5  1.5   0.000816776   0.008017648   0.005237527  -0.011500106   0.001785658   0.001833518
                         0.041201529  -0.029055165   0.021476376   0.025076763   0.028622566   0.026889203

   10    4.2  1.5  1.5  -0.044003873   0.025161709   0.185247982  -0.084122609   0.153116695  -0.161626165
                        -0.236462704  -0.274113450   0.098906569  -0.106879390  -0.265330267   0.280530589

   11    5.2  1.5  1.5  -0.263371642   0.185779433  -0.129206290  -0.158669907  -0.158369235  -0.141263692
                        -0.096583785   0.142361137  -0.042602884  -0.137739250  -0.051315885  -0.045398171

   12    6.2  1.5  1.5   0.100344710  -0.139959561   0.040602928   0.139035057   0.050745830   0.045948132
                        -0.257668615   0.193432093  -0.128737532  -0.158467242  -0.151508205  -0.148593108

   13    7.2  1.5  1.5   0.233650992   0.283098233  -0.096787255   0.098080337   0.261620436  -0.283937011
                        -0.042836233   0.028082253   0.181178990  -0.084089907   0.153513895  -0.161096231

   14    8.2  1.5  1.5  -0.155162518  -0.182432337  -0.170463662   0.168698033   0.006145922  -0.003655997
                         0.014660000  -0.034499038   0.260398887  -0.110284968   0.004838095  -0.005177927

   15    1.2  1.5  0.5   0.023282069  -0.016950937   0.008143512   0.018306844  -0.032242654  -0.032036477
                         0.000811777  -0.005998087   0.004308673   0.004736669   0.000598509  -0.000379386

   16    2.2  1.5  0.5  -0.007517359   0.010722764  -0.004250217   0.000106393   0.007667521  -0.008312047
                        -0.060552938  -0.070136545  -0.009872441   0.007033416  -0.013499994   0.014413366

   17    3.2  1.5  0.5   0.013409186   0.020021526  -0.042078041   0.039499187   0.015665077  -0.012322672
                        -0.006512165  -0.002047738   0.064339964  -0.028131444   0.007763303  -0.008194356

   18    4.2  1.5  0.5   0.187873344  -0.160295906  -0.198268601  -0.292071910   0.001997693  -0.002116252
                        -0.007676280  -0.038904439   0.021718966  -0.091991308   0.002981192   0.000787176

   19    5.2  1.5  0.5  -0.064903506  -0.022752890  -0.295691926   0.154541722   0.207108923  -0.219341110
                        -0.150443313  -0.187951450  -0.076592198   0.127685786  -0.161492887   0.178780359

   20    6.2  1.5  0.5  -0.151787191  -0.186882356  -0.078886191   0.125056993   0.164346452  -0.176152809
                         0.064373481   0.023537867   0.294921633  -0.157081796   0.206103066  -0.220308776

   21    7.2  1.5  0.5   0.009711576   0.036285104  -0.022256022   0.095338934   0.001650677  -0.001786164
                         0.181103495  -0.157003175  -0.202300342  -0.294601655  -0.010285489  -0.002834606

   22    8.2  1.5  0.5  -0.013554009   0.077030987   0.002906188  -0.079177551  -0.000918292   0.003438669
                         0.282299436  -0.227170631   0.132281184   0.186962762   0.326837895   0.303147375

   23    1.2  1.5 -0.5   0.002503413  -0.003839491  -0.014579486   0.008268023  -0.017164530   0.018096495
                         0.017805736   0.022977642  -0.012042225   0.004064636   0.027052888  -0.026692018

   24    2.2  1.5 -0.5   0.070867323  -0.057844288  -0.005757077  -0.010487746  -0.016614001  -0.015496895
                         0.003454731  -0.019421828   0.004041822   0.002353004  -0.000900127  -0.000941794

   25    3.2  1.5 -0.5   0.005992655  -0.009051326  -0.000405627   0.027397200   0.000142152  -0.002043026
                        -0.019213090   0.011844326  -0.048491230  -0.071830257   0.014797821   0.017363455

   26    4.2  1.5 -0.5   0.006213811  -0.044924651   0.245900301  -0.098780458  -0.001814484   0.001408023
                         0.164832404   0.182584486   0.182486830  -0.173276001   0.001343807   0.003300872

   27    5.2  1.5 -0.5   0.179659560  -0.134510834  -0.194082996  -0.235556964  -0.269509371  -0.248347697
                         0.059715022  -0.093554748  -0.050185602  -0.194455643   0.086241741   0.085425291

   28    6.2  1.5 -0.5  -0.060271449   0.093302873   0.053785042   0.192485610   0.088486489   0.083025201
                         0.178455592  -0.135933329  -0.193445371  -0.236962213   0.267835602   0.250190020

   29    7.2  1.5 -0.5   0.161084124   0.175544961   0.182570302  -0.176855518   0.001400620  -0.009519793
                        -0.004302428   0.045571458  -0.250095446   0.100711887   0.003043623  -0.004229606

   30    8.2  1.5 -0.5   0.237958773   0.279347001  -0.104905272   0.108807663  -0.252154258   0.274384000
                        -0.030263687   0.042917775   0.173836254  -0.075283800  -0.168310384   0.177587369

   31    1.2  1.5 -1.5  -0.047935715   0.035320868   0.048657078   0.068306448   0.001483827  -0.001584993
                        -0.000151531   0.010743647  -0.003462221   0.027092935   0.000996800  -0.001051051

   32    2.2  1.5 -1.5  -0.002221616   0.008408736   0.024370909  -0.009887398  -0.016240143   0.017147529
                        -0.033175776  -0.037755635   0.016730083  -0.015807122   0.021582619  -0.023064691

   33    3.2  1.5 -1.5  -0.030069730  -0.040214195   0.013554006  -0.020462379   0.021531995  -0.023010632
                         0.002072825  -0.009002871  -0.024028845   0.008364059   0.016210004  -0.017115802

   34    4.2  1.5 -1.5  -0.273635749   0.222969098  -0.135907514  -0.188803515   0.323278501   0.305897314
                        -0.029912751   0.090198297  -0.005381908  -0.091937787   0.017647646   0.016483511

   35    5.2  1.5 -1.5   0.102526328   0.042218161  -0.204645686   0.110325726   0.039045561  -0.043421218
                         0.210402098   0.277327740  -0.047627553   0.079608451  -0.143149812   0.160713199

   36    6.2  1.5 -1.5   0.217423467   0.272487600  -0.046702946   0.080402709  -0.149591816   0.154652728
                        -0.098649325  -0.047039169   0.205575896  -0.108431337  -0.042584401   0.040154818

   37    7.2  1.5 -1.5  -0.028839368   0.088494272  -0.010519659  -0.089887152   0.019950619   0.014126195
                         0.283022109  -0.220446123   0.128764131   0.184699483  -0.325843819  -0.303005312

   38    8.2  1.5 -1.5   0.002510354  -0.045256469   0.009717450  -0.110786634  -0.002343894  -0.000700359
                        -0.185648697   0.149138106   0.201314113   0.290846631  -0.005889261  -0.007790316


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.661%  30.735%   0.329%  34.941%  26.404%   6.929%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  36.966%   6.570%   4.680%  18.450%  22.174%  11.159%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   8.794%  16.274%   7.968%  33.631%  15.821%  17.512%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5  30.735%   0.661%  34.941%   0.329%   6.929%  26.404%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   6.570%  36.966%  18.450%   4.680%  11.159%  22.174%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5  16.274%   8.794%  33.631%   7.968%  17.512%  15.821%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.807%   1.377%   0.015%  35.836%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.025%   0.919%   0.447%   0.177%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.872%   4.119%   0.366%   0.040%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.104%   0.088%   0.000%   0.017%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.243%   0.272%   0.039%   0.005%
   12    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.171%   0.187%   0.039%   0.001%
   13    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.100%   0.097%   0.000%   0.012%
   14    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.064%   0.034%   0.001%   1.160%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  27.515%  25.623%   4.768%   0.002%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.919%   2.595%   0.074%  39.092%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.818%  13.949%   0.041%  16.679%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.030%   0.062%   0.518%   0.002%
   19    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.178%   0.170%   0.001%   0.123%
   20    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.246%   0.209%   0.001%   0.014%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.012%   0.503%   0.005%
   22    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.091%   0.097%   0.022%   0.001%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  25.623%  27.515%   0.002%   4.768%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.595%   1.919%  39.092%   0.074%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.949%  12.818%  16.679%   0.041%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.062%   0.030%   0.002%   0.518%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.170%   0.178%   0.123%   0.001%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.209%   0.246%   0.014%   0.001%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.007%   0.005%   0.503%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.097%   0.091%   0.001%   0.022%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.377%   1.807%  35.836%   0.015%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.919%   1.025%   0.177%   0.447%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.119%   3.872%   0.040%   0.366%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.088%   0.104%   0.017%   0.000%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.272%   0.243%   0.005%   0.039%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.187%   0.171%   0.001%   0.039%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.097%   0.100%   0.012%   0.000%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.034%   0.064%   1.160%   0.001%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.011%   0.033%   6.933%  40.988%   8.049%   2.710%   0.074%   0.035%   0.000%   0.000%
    8    2.2  1.5  1.5  40.668%  10.410%   3.474%   0.197%   4.133%  11.813%  16.866%   7.979%   0.000%   0.000%
    9    3.2  1.5  1.5  36.140%   9.045%   2.903%   0.686%   4.252%  11.947%  16.793%   7.944%   0.000%   0.000%
   10    4.2  1.5  1.5   0.001%   0.001%   0.004%   0.068%   0.231%   0.080%   0.040%   0.085%   0.740%  47.518%
   11    5.2  1.5  1.5   0.358%   0.087%   0.067%   0.005%   0.078%   0.233%   0.020%   0.011%   1.553%   0.197%
   12    6.2  1.5  1.5   0.479%   0.125%   0.067%   0.004%   0.082%   0.229%   0.022%   0.010%   0.793%   0.080%
   13    7.2  1.5  1.5   0.001%   0.001%   0.005%   0.073%   0.226%   0.078%   0.041%   0.084%   0.710%  44.719%
   14    8.2  1.5  1.5   0.002%   0.004%   0.042%   0.263%   0.058%   0.020%   0.000%   0.000%   0.010%   0.205%
   15    1.2  1.5  0.5   0.415%   0.136%   1.280%   0.045%   1.382%   4.004%  23.293%   9.724%   0.000%   0.000%
   16    2.2  1.5  0.5   0.211%   0.000%   3.879%  34.394%   5.364%   2.139%   2.684%   5.598%   0.000%   0.000%
   17    3.2  1.5  0.5   0.008%   0.460%   0.813%   2.497%  31.730%  10.564%   1.830%   6.560%   0.000%   0.000%
   18    4.2  1.5  0.5   0.488%   0.166%   0.271%   0.040%   0.018%   0.054%   0.000%   0.000%   1.502%   0.113%
   19    5.2  1.5  0.5   0.001%   0.003%   0.040%   0.271%   0.053%   0.018%   0.031%   0.063%   0.005%   0.235%
   20    6.2  1.5  0.5   0.001%   0.005%   0.040%   0.271%   0.054%   0.017%   0.030%   0.063%   0.022%   0.757%
   21    7.2  1.5  0.5   0.625%   0.114%   0.266%   0.038%   0.019%   0.058%   0.000%   0.000%   0.400%   0.063%
   22    8.2  1.5  0.5   0.001%   0.000%   0.072%   0.005%   0.078%   0.227%   0.084%   0.041%   0.373%   0.006%
   23    1.2  1.5 -0.5   0.136%   0.415%   0.045%   1.280%   4.004%   1.382%   9.724%  23.293%   0.000%   0.000%
   24    2.2  1.5 -0.5   0.000%   0.211%  34.394%   3.879%   2.139%   5.364%   5.598%   2.684%   0.000%   0.000%
   25    3.2  1.5 -0.5   0.460%   0.008%   2.497%   0.813%  10.564%  31.730%   6.560%   1.830%   0.000%   0.000%
   26    4.2  1.5 -0.5   0.166%   0.488%   0.040%   0.271%   0.054%   0.018%   0.000%   0.000%   0.113%   1.502%
   27    5.2  1.5 -0.5   0.003%   0.001%   0.271%   0.040%   0.018%   0.053%   0.063%   0.031%   0.235%   0.005%
   28    6.2  1.5 -0.5   0.005%   0.001%   0.271%   0.040%   0.017%   0.054%   0.063%   0.030%   0.757%   0.022%
   29    7.2  1.5 -0.5   0.114%   0.625%   0.038%   0.266%   0.058%   0.019%   0.000%   0.000%   0.063%   0.400%
   30    8.2  1.5 -0.5   0.000%   0.001%   0.005%   0.072%   0.227%   0.078%   0.041%   0.084%   0.006%   0.373%
   31    1.2  1.5 -1.5   0.033%   0.011%  40.988%   6.933%   2.710%   8.049%   0.035%   0.074%   0.000%   0.000%
   32    2.2  1.5 -1.5  10.410%  40.668%   0.197%   3.474%  11.813%   4.133%   7.979%  16.866%   0.000%   0.000%
   33    3.2  1.5 -1.5   9.045%  36.140%   0.686%   2.903%  11.947%   4.252%   7.944%  16.793%   0.000%   0.000%
   34    4.2  1.5 -1.5   0.001%   0.001%   0.068%   0.004%   0.080%   0.231%   0.085%   0.040%  47.518%   0.740%
   35    5.2  1.5 -1.5   0.087%   0.358%   0.005%   0.067%   0.233%   0.078%   0.011%   0.020%   0.197%   1.553%
   36    6.2  1.5 -1.5   0.125%   0.479%   0.004%   0.067%   0.229%   0.082%   0.010%   0.022%   0.080%   0.793%
   37    7.2  1.5 -1.5   0.001%   0.001%   0.073%   0.005%   0.078%   0.226%   0.084%   0.041%  44.719%   0.710%
   38    8.2  1.5 -1.5   0.004%   0.002%   0.263%   0.042%   0.020%   0.058%   0.000%   0.000%   0.205%   0.010%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.062%   0.000%   0.000%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.694%   0.236%   0.217%   0.133%
    9    3.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.937%   0.302%   0.005%   0.005%
   10    4.2  1.5  1.5   1.922%   0.584%   0.179%   0.234%   0.046%   0.207%   0.087%   0.312%   3.022%   4.906%
   11    5.2  1.5  1.5   4.392%  22.451%   1.295%   0.986%   2.902%   0.511%  19.412%   6.504%   7.400%   4.403%
   12    6.2  1.5  1.5   4.056%  20.966%   0.321%   0.255%   6.639%   1.177%   9.468%   3.072%  15.802%  10.228%
   13    7.2  1.5  1.5   2.103%   0.732%   0.010%   0.018%   0.447%   2.673%   0.097%   0.362%   3.125%   4.796%
   14    8.2  1.5  1.5   0.944%   0.177%  11.077%  14.438%   0.241%   1.486%   0.923%   2.789%   0.006%   0.010%
   15    1.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.055%   0.016%   0.840%   0.557%
   16    2.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.008%   0.138%   0.211%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.032%   0.103%   0.152%   0.203%
   18    4.2  1.5  0.5   3.944%  20.286%   1.525%   1.182%   0.025%   0.001%  29.081%   9.837%   0.879%   0.554%
   19    5.2  1.5  0.5   0.731%   0.158%  15.548%  20.150%   1.315%   7.575%   0.133%   0.375%   6.438%   9.945%
   20    6.2  1.5  0.5   1.077%   0.186%   7.648%  10.025%   3.807%  22.195%   0.341%   1.009%   6.386%  10.263%
   21    7.2  1.5  0.5   2.482%  12.764%   6.705%   5.188%   0.825%   0.159%   9.919%   3.309%   0.997%   0.602%
   22    8.2  1.5  0.5   0.006%   0.040%   1.820%   1.397%  40.653%   7.116%   0.385%   0.121%   4.735%   3.039%
   23    1.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.055%   0.557%   0.840%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.003%   0.211%   0.138%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.103%   0.032%   0.203%   0.152%
   26    4.2  1.5 -0.5  20.286%   3.944%   1.182%   1.525%   0.001%   0.025%   9.837%  29.081%   0.554%   0.879%
   27    5.2  1.5 -0.5   0.158%   0.731%  20.150%  15.548%   7.575%   1.315%   0.375%   0.133%   9.945%   6.438%
   28    6.2  1.5 -0.5   0.186%   1.077%  10.025%   7.648%  22.195%   3.807%   1.009%   0.341%  10.263%   6.386%
   29    7.2  1.5 -0.5  12.764%   2.482%   5.188%   6.705%   0.159%   0.825%   3.309%   9.919%   0.602%   0.997%
   30    8.2  1.5 -0.5   0.040%   0.006%   1.397%   1.820%   7.116%  40.653%   0.121%   0.385%   3.039%   4.735%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.062%   0.016%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.236%   0.694%   0.133%   0.217%
   33    3.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.302%   0.937%   0.005%   0.005%
   34    4.2  1.5 -1.5   0.584%   1.922%   0.234%   0.179%   0.207%   0.046%   0.312%   0.087%   4.906%   3.022%
   35    5.2  1.5 -1.5  22.451%   4.392%   0.986%   1.295%   0.511%   2.902%   6.504%  19.412%   4.403%   7.400%
   36    6.2  1.5 -1.5  20.966%   4.056%   0.255%   0.321%   1.177%   6.639%   3.072%   9.468%  10.228%  15.802%
   37    7.2  1.5 -1.5   0.732%   2.103%   0.018%   0.010%   2.673%   0.447%   0.362%   0.097%   4.796%   3.125%
   38    8.2  1.5 -1.5   0.177%   0.944%  14.438%  11.077%   1.486%   0.241%   2.789%   0.923%   0.010%   0.006%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.012%   0.896%   0.136%   0.230%   0.540%   0.238%   0.000%   0.000%
    8    2.2  1.5  1.5   0.073%   0.001%   0.150%   0.111%   0.035%   0.087%   0.083%   0.073%
    9    3.2  1.5  1.5   0.101%   0.003%   0.170%   0.091%   0.049%   0.076%   0.082%   0.073%
   10    4.2  1.5  1.5   0.002%   0.033%   5.785%   7.577%   4.410%   1.850%   9.384%  10.482%
   11    5.2  1.5  1.5   1.963%   0.028%   7.869%   5.478%   1.851%   4.415%   2.771%   2.202%
   12    6.2  1.5  1.5   1.124%   0.018%   7.646%   5.700%   1.822%   4.444%   2.553%   2.419%
   13    7.2  1.5  1.5   0.003%   0.003%   5.643%   8.093%   4.219%   1.669%   9.201%  10.657%
   14    8.2  1.5  1.5   0.684%  45.727%   2.429%   3.447%   9.687%   4.062%   0.006%   0.004%
   15    1.2  1.5  0.5   0.007%   0.001%   0.054%   0.032%   0.008%   0.036%   0.104%   0.103%
   16    2.2  1.5  0.5   0.012%   0.737%   0.372%   0.503%   0.012%   0.005%   0.024%   0.028%
   17    3.2  1.5  0.5   0.009%   0.611%   0.022%   0.041%   0.591%   0.235%   0.031%   0.022%
   18    4.2  1.5  0.5   9.669%   0.141%   3.536%   2.721%   3.978%   9.377%   0.001%   0.001%
   19    5.2  1.5  0.5   0.030%   1.890%   2.685%   3.584%   9.330%   4.019%   6.897%   8.007%
   20    6.2  1.5  0.5   0.009%   0.800%   2.718%   3.548%   9.320%   4.031%   6.949%   7.957%
   21    7.2  1.5  0.5  34.785%   0.526%   3.289%   2.597%   4.142%   9.588%   0.011%   0.001%
   22    8.2  1.5  0.5   0.098%   0.005%   7.988%   5.754%   1.751%   4.122%  10.682%   9.191%
   23    1.2  1.5 -0.5   0.001%   0.007%   0.032%   0.054%   0.036%   0.008%   0.103%   0.104%
   24    2.2  1.5 -0.5   0.737%   0.012%   0.503%   0.372%   0.005%   0.012%   0.028%   0.024%
   25    3.2  1.5 -0.5   0.611%   0.009%   0.041%   0.022%   0.235%   0.591%   0.022%   0.031%
   26    4.2  1.5 -0.5   0.141%   9.669%   2.721%   3.536%   9.377%   3.978%   0.001%   0.001%
   27    5.2  1.5 -0.5   1.890%   0.030%   3.584%   2.685%   4.019%   9.330%   8.007%   6.897%
   28    6.2  1.5 -0.5   0.800%   0.009%   3.548%   2.718%   4.031%   9.320%   7.957%   6.949%
   29    7.2  1.5 -0.5   0.526%  34.785%   2.597%   3.289%   9.588%   4.142%   0.001%   0.011%
   30    8.2  1.5 -0.5   0.005%   0.098%   5.754%   7.988%   4.122%   1.751%   9.191%  10.682%
   31    1.2  1.5 -1.5   0.896%   0.012%   0.230%   0.136%   0.238%   0.540%   0.000%   0.000%
   32    2.2  1.5 -1.5   0.001%   0.073%   0.111%   0.150%   0.087%   0.035%   0.073%   0.083%
   33    3.2  1.5 -1.5   0.003%   0.101%   0.091%   0.170%   0.076%   0.049%   0.073%   0.082%
   34    4.2  1.5 -1.5   0.033%   0.002%   7.577%   5.785%   1.850%   4.410%  10.482%   9.384%
   35    5.2  1.5 -1.5   0.028%   1.963%   5.478%   7.869%   4.415%   1.851%   2.202%   2.771%
   36    6.2  1.5 -1.5   0.018%   1.124%   5.700%   7.646%   4.444%   1.822%   2.419%   2.553%
   37    7.2  1.5 -1.5   0.003%   0.003%   8.093%   5.643%   1.669%   4.219%  10.657%   9.201%
   38    8.2  1.5 -1.5  45.727%   0.684%   3.447%   2.429%   4.062%   9.687%   0.004%   0.006%


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
              1      24     2610.56       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     1681.78       700     1000      520     2100     2140     5201     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     25906.28  15638.74     16.42   9052.81   1186.24      7.25      1.01      3.43
 REAL TIME  *     26436.82 SEC
 DISK USED  *         1.70 GB (local),       29.38 GB (total)
 SF USED    *        13.14 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-DK energy=   -461.062917142456

              CI              CI           MULTI         RHF-SCF
   -461.03566699   -461.41546798   -460.54057114   -460.89441097
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
