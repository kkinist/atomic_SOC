
 Working directory              : /wrk/irikura/molpro.VRP41KY1vC/
 Global scratch directory       : /wrk/irikura/molpro.VRP41KY1vC/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.VRP41KY1vC/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Ba SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVTZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! active space (2/7) all in irrep 1
 {multi
     closed,15,12
     occ,22,12
     wf,sym=1,spin=0;state,1;
     wf,sym=1,spin=2;state,15;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,9,9
 {ci;wf,sym=1,spin=0;state,1; save,5101.2}
 hlsdiag = energd
 {ci;wf,sym=1,spin=2;state,15; save,5103.2}
 hlsdiag(2) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5101.2,5103.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ba SO-                                                                        
  64 bit mpp version                                                                     DATE: 21-Mar-24          TIME: 17:06:11  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  16000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BA     S aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BA     P aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BA     D aug-cc-pwCVTZ-X      selected for orbital group  1
 Library entry BA     F aug-cc-pwCVTZ-X      selected for orbital group  1


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

   1  BA     56.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   56
 NUMBER OF PRIMITIVE AOS:         294
 NUMBER OF SYMMETRY AOS:          256
 NUMBER OF CONTRACTIONS:          109   (   51Ag  +   58Au  )
 NUMBER OF INNER CORE ORBITALS:    23   (   14Ag  +    9Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     23.855 MB (compressed) written to integral file ( 14.8%)

     Node minimum: 0.262 MB, node maximum: 4.194 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     566852.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     566852      RECORD LENGTH: 524288

 Memory used in sort:       1.12 MW

 SORT1 READ    20698825. AND WROTE      118720. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.12 SEC
 SORT2 READ     1919742. AND WROTE     9150775. INTEGRALS IN     16 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      566852.  Node maximum:      573490. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5   6 2 3 4 5 6 2 3 4 5
                                        6 2 3 4 5 6 2 3 4 5   6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   4 5 6 7 8 910 4 5 6
                                        7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.442E-03 0.170E-02 0.170E-02 0.170E-02 0.170E-02 0.170E-02 0.228E-02 0.222E-01
         2 0.132E-02 0.132E-02 0.132E-02 0.674E-02 0.674E-02 0.674E-02 0.690E-01 0.690E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.43       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         4.19      3.96
 REAL TIME  *         4.93 SEC
 DISK USED  *        29.73 MB (local),      550.59 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  16  12

 NELEC=   56   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -8131.99671350   -8131.99671350     0.00D+00     0.19D+00     0     0       0.00      0.01    start
   2    -8131.99671350      -0.00000000     0.85D-06     0.19D-04     1     0       0.01      0.02    diag
   3    -8131.99671350      -0.00000000     0.14D-06     0.84D-05     2     0       0.00      0.02    diag
   4    -8131.99671350      -0.00000000     0.62D-07     0.40D-05     3     0       0.01      0.03    diag
   5    -8131.99671350      -0.00000000     0.32D-07     0.50D-05     4     0       0.00      0.03    diag
   6    -8131.99671350       0.00000000     0.49D-08     0.13D-06     5     0       0.01      0.04    diag
   7    -8131.99671350       0.00000000     0.21D-08     0.17D-06     0     0       0.00      0.04    diag

 Final occupancy:  16  12

 !RHF STATE 1.1 Energy              -8131.996713500455
  RHF One-electron energy            -11100.0286404044    
  RHF Two-electron energy            2968.031926903990
  RHF Kinetic energy                 9672.733915664961
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.840713368568

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.74847     1  1  s    1.00000
    2.1     2.00000  -222.46064     1  2  s    1.00000
    3.1     2.00000   -48.63407     1  3  s    1.00000
    4.1     2.00000   -29.94645     1  1  d1+  0.97608
    5.1     2.00000   -29.94645     1  1  d1-  0.97608
    6.1     2.00000   -29.94645     1  1  d2+  0.99984
    7.1     2.00000   -29.94645     1  1  d2-  0.99985
    8.1     2.00000   -29.94645     1  1  d0   1.00000
    9.1     2.00000   -10.25510     1  4  s    1.00008
   10.1     2.00000    -3.85433     1  2  d2-  0.99672
   11.1     2.00000    -3.85433     1  2  d2+  0.99716
   12.1     2.00000    -3.85433     1  2  d1+ -0.51556    1  2  d1-  0.85666
   13.1     2.00000    -3.85433     1  2  d1+  0.85572    1  2  d1-  0.51515
   14.1     2.00000    -3.85433     1  2  d0   0.99941
   15.1     2.00000    -1.60335     1  5  s    0.99881
   16.1     2.00000    -0.16308     1  6  s    1.00172
    1.2     2.00000  -199.39477     1  1  pz   0.99961
    2.2     2.00000  -199.39477     1  1  px   0.99835
    3.2     2.00000  -199.39477     1  1  py   0.99812
    4.2     2.00000   -41.04464     1  2  pz   1.00000
    5.2     2.00000   -41.04464     1  2  px   0.99891
    6.2     2.00000   -41.04464     1  2  py   0.99891
    7.2     2.00000    -7.69922     1  3  py   0.99937
    8.2     2.00000    -7.69922     1  3  pz   0.99937
    9.2     2.00000    -7.69922     1  3  px   0.99998
   10.2     2.00000    -0.89930     1  4  pz   0.99992
   11.2     2.00000    -0.89930     1  4  px   0.99992
   12.2     2.00000    -0.89930     1  4  py   0.99992


 HOMO     16.1    -0.163085 =      -4.4378eV
 LUMO     13.2     0.008069 =       0.2196eV
 LUMO-HOMO         0.171154 =       4.6573eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.43       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.46       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.23      0.04      3.96
 REAL TIME  *         4.99 SEC
 DISK USED  *        30.28 MB (local),      559.34 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (   15   12)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:      75 (   29   46)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:              28   (49 determinants, 49 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (21 determinants, 21 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.184D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.184D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.200D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.202D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.130D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.115D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.107D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.385D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.400D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.348D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.195D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.153D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.334D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.322D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.126D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 5 3 2 1 3   5 6 4 2 1 1 1 3 5 6   4 2 3 5 4 6 2 1 4 6   3 5 2 1 4 6 3 5 2 1
                                        6 4 2 3 5 2 6 4 3 5   1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.358D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.647D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.748D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.992D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.450D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.451D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.338D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.338D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.335D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.759D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.355D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 2 3 1 3   1 2 2 1 3 2 1 3 2 1   3 610 8 5 4 9 710 8   5 4 6 7 9 2 1 3 6 7
                                        4 5 910 8 3 1 2 7 9  10 8 4 5 6 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  1295  ( 105 closed/active, 987 closed/virtual, 0 active/active, 203 active/virtual )
 Total number of variables:    1659
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    5  -8131.79928193   -8131.94693022   -0.14764830    0.06350035 0.00030911 0.00000000  0.21E+01      1.17
   2    7   12    0  -8131.91885357   -8131.92682903   -0.00797546    0.08715384 0.00001232 0.00000000  0.44E+00      2.16
   3    7   12    0  -8131.92689049   -8131.92689496   -0.00000448    0.00158272 0.00000222 0.00000000  0.89E-02      3.17
   4   16   32    0  -8131.92689497   -8131.92689497   -0.00000000    0.00000287 0.00000001 0.00000000  0.37E-04      4.30

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.12E-07)
                       Final energy:  -8131.92689497
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -8132.003062410574
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.21829380
 One electron energy                        -11099.14392287
 Two electron energy                          2967.14086046
 Virial ratio                                    1.84075884
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -8131.963263483927
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.36635538
 One electron energy                        -11101.66489629
 Two electron energy                          2969.70163280
 Virial ratio                                    1.84074186
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -8131.963263483925
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.36635537
 One electron energy                        -11101.66489626
 Two electron energy                          2969.70163278
 Virial ratio                                    1.84074186
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -8131.963263483414
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.36635533
 One electron energy                        -11101.66489600
 Two electron energy                          2969.70163252
 Virial ratio                                    1.84074186
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -8131.963263483364
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.36635532
 One electron energy                        -11101.66489593
 Two electron energy                          2969.70163244
 Virial ratio                                    1.84074186
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -8131.963263483291
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.36635532
 One electron energy                        -11101.66489594
 Two electron energy                          2969.70163245
 Virial ratio                                    1.84074186
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -8131.907220261832
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464253
 One electron energy                        -11105.41702253
 Two electron energy                          2973.50980227
 Virial ratio                                    1.84070492
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -8131.907220261802
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464254
 One electron energy                        -11105.41702257
 Two electron energy                          2973.50980231
 Virial ratio                                    1.84070492
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -8131.907220261790
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464255
 One electron energy                        -11105.41702267
 Two electron energy                          2973.50980241
 Virial ratio                                    1.84070492
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -8131.907220261769
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464256
 One electron energy                        -11105.41702271
 Two electron energy                          2973.50980244
 Virial ratio                                    1.84070492
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -8131.907220261758
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464259
 One electron energy                        -11105.41702288
 Two electron energy                          2973.50980262
 Virial ratio                                    1.84070492
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -8131.907220261728
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464257
 One electron energy                        -11105.41702280
 Two electron energy                          2973.50980254
 Virial ratio                                    1.84070492
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -8131.907220261713
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464264
 One electron energy                        -11105.41702319
 Two electron energy                          2973.50980293
 Virial ratio                                    1.84070492
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy            -8131.886799279280
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464256
 One electron energy                        -11105.41702274
 Two electron energy                          2973.53022346
 Virial ratio                                    1.84070281
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy            -8131.886799279157
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464256
 One electron energy                        -11105.41702275
 Two electron energy                          2973.53022347
 Virial ratio                                    1.84070281
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy            -8131.886799279075
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.72464257
 One electron energy                        -11105.41702281
 Two electron energy                          2973.53022353
 Virial ratio                                    1.84070281
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.007457168229
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     2.652743188124
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.339800086789
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000150917
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999743330
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     4.557229012445
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.187128004284
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     1.328087356405
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     2.671956061838
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     3.999989317252
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     8.812805561013
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     5.442795056836
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.999999256032
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.000000769188
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999999974394
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.010395414043
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.294466665497
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.695137883840
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999631176
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000129883
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     7.312013547387
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     3.061984354342
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     1.688084382827
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     8.311850406002
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     4.000033046804
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.938087016849
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     2.687969269956
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.000000748911
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.999999256438
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999995037
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     3.982147417728
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.052790146379
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.965062029371
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000217907
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000126786
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.130757440168
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     7.750887641374
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     8.983828260769
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     1.016193532160
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     3.999977635944
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     2.249107422138
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     3.869235673208
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.999999995057
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999974374
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000030569
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     6.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>    12.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>    12.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>    12.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>    12.000000000000
 !MCSCF expec    <10.1 Triplet|L**2|10.1 Triplet>    12.000000000000
 !MCSCF expec    <11.1 Triplet|L**2|11.1 Triplet>    12.000000000000
 !MCSCF expec    <12.1 Triplet|L**2|12.1 Triplet>    12.000000000000
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>     2.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 3 5 2 6 1 4   3 5 6 2 1 1 4 3 2 5   6 1 1 3 2 4 5 6 3 4   2 5 6 1 3 4 2 5 6 1
                                        6 2 4 5 3 2 6 4 5 3   1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 2   3 1 2 1 3 2 1 3 8 9   710 5 6 4 2 1 3 8 4   7 9 610 5 2 3 1 7 9
                                        8 510 6 4 3 2 1 7 9  10 5 8 6 4 3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.67789     1  1  s    1.00000
    2.1     2.00000  -222.38672     1  2  s    1.00000
    3.1     2.00000   -48.56018     1  3  s    1.00004
    4.1     2.00000   -29.87357     1  1  d1+  1.00000
    5.1     2.00000   -29.87357     1  1  d2-  1.00000
    6.1     2.00000   -29.87357     1  1  d2+  1.00000
    7.1     2.00000   -29.87357     1  1  d0   1.00000
    8.1     2.00000   -29.87357     1  1  d1-  1.00000
    9.1     2.00000   -10.18125     1  4  s    0.99846
   10.1     2.00000    -3.78252     1  2  d1+  1.00085
   11.1     2.00000    -3.78252     1  2  d2-  1.00085
   12.1     2.00000    -3.78252     1  2  d2+  1.00085
   13.1     2.00000    -3.78252     1  2  d1-  1.00085
   14.1     2.00000    -3.78252     1  2  d0   1.00085
   15.1     2.00000    -1.52665     1  5  s    0.96637
   16.1     0.43179    -0.01815     1  6  s    1.08452
   17.1     0.31355     0.06669     1  3  d1+ -0.91506
   18.1     0.31355     0.06669     1  3  d2- -0.91506
   19.1     0.31355     0.06669     1  3  d0  -0.91506
   20.1     0.31355     0.06669     1  3  d2+ -0.91506
   21.1     0.31355     0.06669     1  3  d1- -0.91506
   22.1     0.00044     0.20132     1  3  s   -0.28450    1  4  s   -0.90507    1  5  s    2.92322    1  6  s   -4.07337
                                    1  7  s    4.98355    1  8  s    0.89797    1 10  s   -0.52574
    1.2     2.00000  -199.32147     1  1  py   1.00000
    2.2     2.00000  -199.32147     1  1  px   1.00000
    3.2     2.00000  -199.32147     1  1  pz   1.00000
    4.2     2.00000   -40.97133     1  2  py   1.00000
    5.2     2.00000   -40.97133     1  2  px   1.00000
    6.2     2.00000   -40.97133     1  2  pz   1.00000
    7.2     2.00000    -7.62667     1  3  py   0.99938
    8.2     2.00000    -7.62667     1  3  px   0.99938
    9.2     2.00000    -7.62667     1  3  pz   0.99938
   10.2     2.00000    -0.83506     1  4  py   0.96421
   11.2     2.00000    -0.83506     1  4  pz   0.96421
   12.2     2.00000    -0.83506     1  4  px   0.96421
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97650279
 0200000       -0.09183749
 0000020       -0.09183749
 0000200       -0.09183749
 0002000       -0.09183749
 0020000       -0.09183749
 
 Energy:    -8132.00306241
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 000aa00        0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00069509     -0.00063644
 a0000a0        0.00003817     -0.00005449     -0.00021211      0.00024119      0.99991913      0.00000000      0.00000000
 aa00000        0.00004550     -0.00004893      0.00026887      0.99991911     -0.00024113     -0.00000000      0.00000000
 a0a0000        0.99766510      0.06710223     -0.00007691     -0.00004211     -0.00003443      0.00000000     -0.00000000
 a000a00        0.00634763     -0.09323460      0.99554270     -0.00027249      0.00020592      0.00000000      0.00000000
 a00a000       -0.06680136      0.99329903      0.09345039      0.00002653      0.00007650     -0.00000000     -0.00000000
 00aa000       -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.18080027     -0.00019769
 00a0a00       -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.43984325      0.00013045
 0a000a0       -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.87968651      0.00026089
 0a00a00       -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00036278      0.86598943
 00a00a0        0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00014885      0.43313396
 0a0a000       -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00029539      0.24990922
 000a0a0        0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00019580     -0.00092215
 0aa0000        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00021067      0.00071621
 0000aa0        0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00012847      0.00088100
 
 Energy:    -8131.96326348  -8131.96326348  -8131.96326348  -8131.96326348  -8131.96326348  -8131.90722026  -8131.90722026

 State:              8               9              10              11              12              13              14
 000aa00       -0.00079563     -0.00314867      0.99999318     -0.00053443      0.00138384     -0.00000000      0.00000000
 a0000a0        0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 aa00000       -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 a0a0000        0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a000a00        0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 a00a000       -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 00aa000        0.00028883     -0.00060321     -0.00148971     -0.00224661      0.98351589     -0.00000000     -0.00000000
 00a0a00       -0.00000926      0.00008954      0.00019401     -0.00035237      0.08085620     -0.00006289     -0.00014318
 0a000a0       -0.00001853      0.00017909      0.00038801     -0.00070475      0.16171241      0.00003144      0.00007159
 0a00a00       -0.00000049      0.00189817      0.00043786     -0.22373696     -0.00040187     -0.44721342     -0.00038573
 00a00a0        0.00017623     -0.00158577      0.00068650      0.78255244      0.00190200      0.44721343      0.00038573
 0a0a000       -0.00010203      0.00201145     -0.00014355     -0.58098145     -0.00133014      0.77459638      0.00066811
 000a0a0       -0.02843233      0.63180969      0.00196648      0.00179453      0.00036675     -0.00066812      0.77459637
 0aa0000        0.73101474     -0.51537655     -0.00104070     -0.00160332     -0.00049713     -0.00038574      0.44721342
 0000aa0       -0.68176850     -0.57894994     -0.00236534     -0.00150490     -0.00013809     -0.00038574      0.44721342
 
 Energy:    -8131.90722026  -8131.90722026  -8131.90722026  -8131.90722026  -8131.90722026  -8131.88679928  -8131.88679928

 State:             15
 000aa00        0.00000000
 a0000a0       -0.00000000
 aa00000        0.00000000
 a0a0000        0.00000000
 a000a00        0.00000000
 a00a000        0.00000000
 00aa000        0.00000000
 00a0a00        0.89442718
 0a000a0       -0.44721358
 0a00a00       -0.00003150
 00a00a0        0.00003150
 0a0a000        0.00005457
 000a0a0        0.00012395
 0aa0000        0.00007156
 0000aa0        0.00007156
 
 Energy:    -8131.88679928
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       70.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         7.28      3.05      0.04      3.96
 REAL TIME  *         9.86 SEC
 DISK USED  *        71.13 MB (local),        1.18 GB (total)
 SF USED    *       104.02 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -8132.003062    0.0
    -8131.963263    6.0
    -8131.963263    6.0
    -8131.963263    6.0
    -8131.963263    6.0
    -8131.963263    6.0
    -8131.907220   12.0
    -8131.907220   12.0
    -8131.907220   12.0
    -8131.907220   12.0
    -8131.907220   12.0
    -8131.907220   12.0
    -8131.907220   12.0
    -8131.886799    2.0
    -8131.886799    2.0
    -8131.886799    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 56
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       28 conf       28 CSFs
 N elec internal:     7966 conf    17416 CSFs
 N-1 el internal:     3724 conf    10780 CSFs
 N-2 el internal:     1324 conf     4852 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:      75 (  29  46 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.07 sec, npass=  1  Memory used:   0.96 MW


 Number of p-space configurations:  28

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8132.00306241

 Number of blocks in overlap matrix:   154   Smallest eigenvalue:  0.42D+00
 Number of N-2 electron functions:     208
 Number of N-1 electron functions:   10780

 Number of internal configurations:                 9772
 Number of singly external configurations:        394373
 Number of doubly external configurations:        296632
 Total number of contracted configurations:       700777
 Total number of uncontracted configurations:    7250464

 Diagonal Coupling coefficients finished.               Storage: 3642739 words, CPU-Time:      0.08 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  636031 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8132.00306241    -0.00000000    -0.60936611  0.43D-01  0.85D-01     0.37
    2     1     1     1.07911384    -0.48905088 -8132.49211329    -0.48905088    -0.00752325  0.12D-02  0.98D-03     2.41
    3     1     1     1.07532785    -0.49618668 -8132.49924909    -0.00713580    -0.00014212  0.16D-04  0.21D-04     4.54
    4     1     1     1.07592730    -0.49633579 -8132.49939820    -0.00014910    -0.00000328  0.46D-06  0.64D-06     6.68
    5     1     1     1.07590086    -0.49633926 -8132.49940167    -0.00000348    -0.00000013  0.20D-07  0.24D-07     8.67
    6     1     1     1.07589357    -0.49633939 -8132.49940180    -0.00000013    -0.00000000  0.47D-09  0.11D-08    10.61


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   7.4%
 S   5.3%  28.7%
 P   1.5%  42.1%   5.0%

 Initialization:   2.4%
 Other:            7.6%

 Total CPU:       10.6 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222           0.9405043
 2222220002000222          -0.0836788
 2222220000020222          -0.0836788
 2222220200000222          -0.0836788
 2222220000200222          -0.0836787
 2222220020000222          -0.0836787
 222222/00000\222           0.0669805


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96179852 (fixed)   0.96208127 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00476033   -0.01059703   -0.01198851
 Singles      0.02226456   -0.07216731   -0.07698378
 Pairs        0.05399029   -0.41357506   -0.40736710
 Total        1.08101518   -0.49633939   -0.49633939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8132.00306241
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.72271118
 One electron energy               -11099.98816636
 Two electron energy                 2967.48876456
 Virial quotient                       -0.84076631
 Correlation energy                    -0.49633939
 !MRCI STATE 1.1 Energy             -8132.499401804448

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53961283 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53929749 (Davidson, relaxed reference)

 Cluster corrected energies         -8132.53807373 (Pople, fixed reference)
 Cluster corrected energies         -8132.53775005 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       70.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        6.87       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        18.13     10.82      3.05      0.04      3.96
 REAL TIME  *        21.13 SEC
 DISK USED  *        77.22 MB (local),        1.28 GB (total)
 SF USED    *       107.03 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =     -8132.53929749  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 56
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       21 conf       21 CSFs
 N elec internal:     7770 conf    26670 CSFs
 N-1 el internal:     3724 conf    17836 CSFs
 N-2 el internal:     1009 conf     7561 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:      75 (  29  46 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8131.96326348
     2     -8131.96326348
     3     -8131.96326348
     4     -8131.96326348
     5     -8131.96326348
     6     -8131.90722026
     7     -8131.90722026
     8     -8131.90722026
     9     -8131.90722026
    10     -8131.90722026
    11     -8131.90722026
    12     -8131.90722026
    13     -8131.88679928
    14     -8131.88679928
    15     -8131.88679928

 Number of blocks in overlap matrix:  1288   Smallest eigenvalue:  0.67D+00
 Number of N-2 electron functions:    1324
 Number of N-1 electron functions:   17836

 Number of internal configurations:                14511
 Number of singly external configurations:        655760
 Number of doubly external configurations:       1879327
 Total number of contracted configurations:      2549598
 Total number of uncontracted configurations:   11297292

 Diagonal Coupling coefficients finished.               Storage: 9709384 words, CPU-Time:      5.54 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  943186 words, CPU-time:      0.17 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8131.96326348    -0.00000000    -0.60593812  0.44D-01  0.81D-01     7.70
    1     2     2     1.00000000     0.00000000 -8131.96326348     0.00000000    -0.60585640  0.44D-01  0.81D-01     7.70
    1     3     3     1.00000000     0.00000000 -8131.96326348    -0.00000000    -0.60587713  0.44D-01  0.81D-01     7.70
    1     4     4     1.00000000     0.00000000 -8131.96326348    -0.00000000    -0.60593568  0.44D-01  0.81D-01     7.70
    1     5     5     1.00000000     0.00000000 -8131.96326348     0.00000000    -0.60591980  0.44D-01  0.81D-01     7.70
    1     6     6     1.00000000     0.00000000 -8131.90722026    -0.00000000    -0.60893381  0.39D-01  0.86D-01     7.70
    1     7     7     1.00000000     0.00000000 -8131.90722026     0.00000000    -0.60889598  0.39D-01  0.86D-01     7.70
    1     8     8     1.00000000     0.00000000 -8131.90722026    -0.00000000    -0.60894618  0.39D-01  0.86D-01     7.70
    1     9     9     1.00000000     0.00000000 -8131.90722026     0.00000000    -0.60886139  0.39D-01  0.86D-01     7.70
    1    10    10     1.00000000     0.00000000 -8131.90722026     0.00000000    -0.60888355  0.39D-01  0.86D-01     7.70
    1    11    11     1.00000000     0.00000000 -8131.90722026     0.00000000    -0.60891133  0.39D-01  0.86D-01     7.70
    1    12    12     1.00000000     0.00000000 -8131.90722026     0.00000000    -0.60897992  0.39D-01  0.86D-01     7.70
    1    13    13     1.00000000     0.00000000 -8131.88679928     0.00000000    -0.61529851  0.41D-01  0.94D-01     7.70
    1    14    14     1.00000000     0.00000000 -8131.88679928     0.00000000    -0.61528320  0.41D-01  0.94D-01     7.70
    1    15    15     1.00000000     0.00000000 -8131.88679928    -0.00000000    -0.61523325  0.41D-01  0.94D-01     7.70
    2     1     1     1.07636653    -0.48457754 -8132.44784102    -0.48457754    -0.00715725  0.10D-02  0.81D-03    67.47
    2     2     2     1.07638200    -0.48457273 -8132.44783621    -0.48457273    -0.00716286  0.10D-02  0.81D-03    67.47
    2     3     3     1.07639874    -0.48456380 -8132.44782729    -0.48456380    -0.00717355  0.10D-02  0.82D-03    67.47
    2     4     4     1.07637684    -0.48456309 -8132.44782657    -0.48456309    -0.00717519  0.10D-02  0.82D-03    67.47
    2     5     5     1.07639397    -0.48456279 -8132.44782628    -0.48456279    -0.00717444  0.10D-02  0.82D-03    67.47
    2     6     6     1.07651059    -0.48272039 -8132.38994066    -0.48272039    -0.00732609  0.11D-02  0.89D-03    67.47
    2     7     7     1.07649864    -0.48271488 -8132.38993514    -0.48271488    -0.00733499  0.11D-02  0.89D-03    67.47
    2     8     8     1.07652623    -0.48270809 -8132.38992835    -0.48270809    -0.00734386  0.11D-02  0.90D-03    67.47
    2     9     9     1.07652112    -0.48270391 -8132.38992417    -0.48270391    -0.00734583  0.11D-02  0.89D-03    67.47
    2    10    10     1.07653449    -0.48270155 -8132.38992181    -0.48270155    -0.00735176  0.11D-02  0.90D-03    67.47
    2    11    11     1.07654058    -0.48269931 -8132.38991957    -0.48269931    -0.00735485  0.11D-02  0.90D-03    67.47
    2    12    12     1.07655409    -0.48269150 -8132.38991176    -0.48269150    -0.00736236  0.11D-02  0.90D-03    67.47
    2    13    13     1.08154101    -0.48570219 -8132.37250147    -0.48570219    -0.00816827  0.15D-02  0.11D-02    67.47
    2    14    14     1.08151677    -0.48568788 -8132.37248716    -0.48568788    -0.00818786  0.16D-02  0.11D-02    67.47
    2    15    15     1.08155695    -0.48568423 -8132.37248351    -0.48568423    -0.00818973  0.16D-02  0.11D-02    67.47
    3     1     1     1.07365865    -0.49137573 -8132.45463921    -0.00679819    -0.00012696  0.12D-04  0.18D-04   126.66
    3     2     2     1.07365980    -0.49137552 -8132.45463901    -0.00680279    -0.00012717  0.12D-04  0.18D-04   126.66
    3     3     3     1.07365600    -0.49137520 -8132.45463869    -0.00681140    -0.00012745  0.12D-04  0.18D-04   126.66
    3     4     4     1.07365754    -0.49137519 -8132.45463867    -0.00681210    -0.00012747  0.12D-04  0.18D-04   126.66
    3     5     5     1.07365549    -0.49137511 -8132.45463859    -0.00681231    -0.00012754  0.12D-04  0.18D-04   126.66
    3     6     6     1.07385103    -0.48957896 -8132.39679923    -0.00685857    -0.00013268  0.12D-04  0.21D-04   126.66
    3     7     7     1.07385062    -0.48957873 -8132.39679899    -0.00686385    -0.00013295  0.12D-04  0.21D-04   126.66
    3     8     8     1.07385127    -0.48957870 -8132.39679896    -0.00687061    -0.00013301  0.12D-04  0.21D-04   126.66
    3     9     9     1.07385066    -0.48957869 -8132.39679895    -0.00687478    -0.00013294  0.13D-04  0.21D-04   126.66
    3    10    10     1.07385195    -0.48957852 -8132.39679879    -0.00687697    -0.00013319  0.13D-04  0.21D-04   126.66
    3    11    11     1.07385162    -0.48957849 -8132.39679875    -0.00687918    -0.00013326  0.12D-04  0.21D-04   126.66
    3    12    12     1.07385099    -0.48957840 -8132.39679866    -0.00688689    -0.00013334  0.13D-04  0.21D-04   126.66
    3    13    13     1.07691747    -0.49332738 -8132.38012666    -0.00762519    -0.00016726  0.21D-04  0.31D-04   126.66
    3    14    14     1.07690985    -0.49332700 -8132.38012627    -0.00763912    -0.00016762  0.21D-04  0.31D-04   126.66
    3    15    15     1.07691485    -0.49332689 -8132.38012617    -0.00764266    -0.00016772  0.21D-04  0.31D-04   126.66
    4     1     1     1.07429856    -0.49151001 -8132.45477350    -0.00013428    -0.00000257  0.43D-06  0.44D-06   184.93
    4     2     2     1.07429886    -0.49151000 -8132.45477349    -0.00013448    -0.00000258  0.43D-06  0.44D-06   184.93
    4     3     3     1.07429818    -0.49150999 -8132.45477347    -0.00013479    -0.00000259  0.43D-06  0.45D-06   184.93
    4     4     4     1.07429842    -0.49150999 -8132.45477347    -0.00013480    -0.00000259  0.43D-06  0.45D-06   184.93
    4     5     5     1.07429761    -0.49150999 -8132.45477347    -0.00013488    -0.00000259  0.43D-06  0.44D-06   184.93
    4     6     6     1.07450953    -0.48971851 -8132.39693877    -0.00013955    -0.00000309  0.11D-05  0.50D-06   184.93
    4     7     7     1.07450970    -0.48971851 -8132.39693877    -0.00013978    -0.00000309  0.10D-05  0.50D-06   184.93
    4     8     8     1.07450946    -0.48971851 -8132.39693877    -0.00013981    -0.00000309  0.10D-05  0.50D-06   184.93
    4     9     9     1.07450966    -0.48971851 -8132.39693877    -0.00013982    -0.00000310  0.10D-05  0.50D-06   184.93
    4    10    10     1.07450939    -0.48971851 -8132.39693877    -0.00013998    -0.00000310  0.10D-05  0.50D-06   184.93
    4    11    11     1.07450934    -0.48971850 -8132.39693877    -0.00014002    -0.00000309  0.10D-05  0.50D-06   184.93
    4    12    12     1.07450994    -0.48971850 -8132.39693876    -0.00014011    -0.00000309  0.10D-05  0.50D-06   184.93
    4    13    13     1.07744213    -0.49350728 -8132.38030656    -0.00017990    -0.00000554  0.27D-05  0.87D-06   184.93
    4    14    14     1.07744502    -0.49350727 -8132.38030655    -0.00018028    -0.00000553  0.27D-05  0.88D-06   184.93
    4    15    15     1.07744438    -0.49350726 -8132.38030654    -0.00018037    -0.00000555  0.27D-05  0.88D-06   184.93
    5     1     1     1.07433640    -0.49151288 -8132.45477636    -0.00000287    -0.00000009  0.15D-07  0.14D-07   243.28
    5     2     2     1.07433640    -0.49151288 -8132.45477636    -0.00000287    -0.00000009  0.15D-07  0.14D-07   243.28
    5     3     3     1.07433626    -0.49151288 -8132.45477636    -0.00000289    -0.00000009  0.15D-07  0.15D-07   243.28
    5     4     4     1.07433627    -0.49151288 -8132.45477636    -0.00000289    -0.00000009  0.15D-07  0.15D-07   243.28
    5     5     5     1.07433623    -0.49151288 -8132.45477636    -0.00000289    -0.00000009  0.15D-07  0.15D-07   243.28
    5     6     6     1.07456325    -0.48972204 -8132.39694230    -0.00000353    -0.00000015  0.29D-07  0.26D-07   243.28
    5     7     7     1.07456324    -0.48972204 -8132.39694230    -0.00000353    -0.00000015  0.29D-07  0.26D-07   243.28
    5     8     8     1.07456308    -0.48972204 -8132.39694230    -0.00000353    -0.00000015  0.29D-07  0.26D-07   243.28
    5     9     9     1.07456307    -0.48972204 -8132.39694230    -0.00000353    -0.00000015  0.29D-07  0.26D-07   243.28
    5    10    10     1.07456297    -0.48972203 -8132.39694230    -0.00000353    -0.00000015  0.29D-07  0.26D-07   243.28
    5    11    11     1.07456299    -0.48972203 -8132.39694230    -0.00000353    -0.00000015  0.29D-07  0.26D-07   243.28
    5    12    12     1.07456296    -0.48972203 -8132.39694230    -0.00000353    -0.00000015  0.29D-07  0.26D-07   243.28
    5    13    13     1.07746536    -0.49351388 -8132.38031316    -0.00000660    -0.00000031  0.56D-07  0.59D-07   243.28
    5    14    14     1.07746543    -0.49351388 -8132.38031315    -0.00000660    -0.00000031  0.56D-07  0.59D-07   243.28
    5    15    15     1.07746584    -0.49351388 -8132.38031315    -0.00000661    -0.00000031  0.56D-07  0.60D-07   243.28
    6     1     1     1.07433533    -0.49151297 -8132.45477646    -0.00000010    -0.00000000  0.14D-08  0.39D-09   301.70
    6     2     2     1.07433533    -0.49151297 -8132.45477646    -0.00000010    -0.00000000  0.14D-08  0.39D-09   301.70
    6     3     3     1.07433536    -0.49151297 -8132.45477646    -0.00000010    -0.00000000  0.14D-08  0.39D-09   301.70
    6     4     4     1.07433532    -0.49151297 -8132.45477646    -0.00000010    -0.00000000  0.14D-08  0.40D-09   301.70
    6     5     5     1.07433530    -0.49151297 -8132.45477646    -0.00000010    -0.00000000  0.14D-08  0.40D-09   301.70
    6     6     6     1.07456037    -0.48972220 -8132.39694246    -0.00000017    -0.00000001  0.23D-08  0.91D-09   301.70
    6     7     7     1.07456037    -0.48972220 -8132.39694246    -0.00000017    -0.00000001  0.23D-08  0.91D-09   301.70
    6     8     8     1.07456035    -0.48972220 -8132.39694246    -0.00000017    -0.00000001  0.23D-08  0.91D-09   301.70
    6     9     9     1.07456036    -0.48972220 -8132.39694246    -0.00000017    -0.00000001  0.23D-08  0.91D-09   301.70
    6    10    10     1.07456034    -0.48972220 -8132.39694246    -0.00000017    -0.00000001  0.23D-08  0.91D-09   301.70
    6    11    11     1.07456036    -0.48972220 -8132.39694246    -0.00000017    -0.00000001  0.23D-08  0.91D-09   301.70
    6    12    12     1.07456033    -0.48972220 -8132.39694246    -0.00000017    -0.00000001  0.23D-08  0.91D-09   301.70
    6    13    13     1.07744223    -0.49351421 -8132.38031349    -0.00000033    -0.00000001  0.30D-08  0.27D-08   301.70
    6    14    14     1.07744233    -0.49351421 -8132.38031349    -0.00000034    -0.00000001  0.30D-08  0.28D-08   301.70
    6    15    15     1.07744231    -0.49351421 -8132.38031349    -0.00000034    -0.00000001  0.30D-08  0.27D-08   301.70


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.2%
 S   2.6%  23.8%
 P   0.6%  28.8%  11.4%

 Initialization:   1.9%
 Other:           26.6%

 Total CPU:      301.7 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222000//00222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.9632885   0.0000000
                           -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 222222/0000/0222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9630273   0.0000000  -0.0000000   0.0000000
                            0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 222222//00000222          -0.0000000   0.0000000   0.0000000   0.9630273   0.0000000   0.0000000   0.0000000  -0.0000000
                           -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 222222/0/0000222           0.9630273  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                            0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 22222200//000222           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.9629044   0.0000000   0.0000000
                            0.0000000   0.0271991  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 222222/00/000222           0.0000000   0.9624172   0.0342731  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                           -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 222222/000/00222          -0.0000000  -0.0342731   0.9624172  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                            0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 2222220/000/0222           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0243276   0.0000000  -0.0000000
                            0.0000000   0.8612479   0.0000000   0.0000000  -0.0000000   0.0000000  -0.4301320
 22222200/0/00222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0121638  -0.0000000  -0.0000000
                           -0.0000000   0.4306240  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.8602639
 2222220//0000222          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.8550436
                           -0.0000000   0.0000000   0.1060202   0.0000000   0.4301320   0.0000000   0.0000000
 22222200/00/0222           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                            0.8449872  -0.0000000  -0.0000000  -0.1683344   0.0000000   0.4301319   0.0000000
 2222220000//0222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.3164145
                           -0.0000000   0.0000000   0.8013873   0.0000000   0.4301320   0.0000000   0.0000000
 2222220/00/00222          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                            0.3742359  -0.0000000   0.0000000   0.7760717   0.0000000  -0.4301320   0.0000000
 222222000/0/0222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.3109776
                           -0.0000000   0.0000000  -0.5238920   0.0000000   0.7450105   0.0000000   0.0000000
 2222220/0/000222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                           -0.2717884  -0.0000000  -0.0000000   0.5452531  -0.0000000   0.7450104   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.962904    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.961285    0.055825    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.055825    0.961285    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.962904   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.962904    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.200821    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.942123   -0.000000   -0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.963288
             0.000000    0.000000    0.000000    0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.828346   -0.491699    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.621972   -0.000000   -0.000000   -0.000000
             0.735578    0.000000   -0.000000   -0.000000   -0.000000
 10          0.000000    0.000000   -0.000000    0.000000   -0.000000    0.942123   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.200821   -0.000000    0.000000    0.000000
 11         -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.491699   -0.828346    0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 12         -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.735578    0.000000    0.000000    0.000000
            -0.621972   -0.000000    0.000000    0.000000   -0.000000
 13          0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.961804   -0.000000
 14         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.961804    0.000000   -0.000000
 15         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.961804

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962904    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.962904    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.962904   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.962904    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.962904    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.963288   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.963288    0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.963289   -0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.963289   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000
 10          0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.963289
             0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.963289   -0.000000   -0.000000    0.000000   -0.000000
 12          0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.963289    0.000000    0.000000    0.000000
 13         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.961804    0.000000   -0.000000
 14         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000    0.961804    0.000000
 15         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.961804


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96290428 (fixed)   0.96303386 (relaxed)   0.96290428 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390799   -0.00903768   -0.39392381
 Singles      0.02214059   -0.06857365   -0.07367283
 Pairs        0.05248524   -0.00000000   -0.02391634
 Total        1.07853382   -0.07761133   -0.49151297
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96326348
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67669024
 One electron energy               -11102.22863332
 Two electron energy                 2969.77385687
 Virial quotient                       -0.84076570
 Correlation energy                    -0.49151297
 !MRCI STATE 1.1 Energy             -8132.454776457953

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49337685 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49323420 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49337685 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49129485 (Pople, fixed reference)
 Cluster corrected energies         -8132.49115135 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49129485 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96128467 (fixed)   0.96303386 (relaxed)   0.96290428 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390799   -0.00903768   -0.39392378
 Singles      0.02214060   -0.06857368   -0.07367284
 Pairs        0.05248523    0.00000000   -0.02391636
 Total        1.07853382   -0.07761135   -0.49151297
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96326348
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67668527
 One electron energy               -11102.22862899
 Two electron energy                 2969.77385254
 Virial quotient                       -0.84076570
 Correlation energy                    -0.49151297
 !MRCI STATE 2.1 Energy             -8132.454776457943

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49337685 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49323420 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49337685 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49129485 (Pople, fixed reference)
 Cluster corrected energies         -8132.49115135 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49129485 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96128466 (fixed)   0.96303385 (relaxed)   0.96290426 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390799   -0.00903768   -0.39392378
 Singles      0.02214061   -0.06857367   -0.07367284
 Pairs        0.05248525    0.00000000   -0.02391636
 Total        1.07853385   -0.07761135   -0.49151297
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96326348
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67668744
 One electron energy               -11102.22863317
 Two electron energy                 2969.77385671
 Virial quotient                       -0.84076570
 Correlation energy                    -0.49151297
 !MRCI STATE 3.1 Energy             -8132.454776457540

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49337686 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49323421 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49337686 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49129487 (Pople, fixed reference)
 Cluster corrected energies         -8132.49115136 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49129487 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.96290429 (fixed)   0.96303387 (relaxed)   0.96290429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390799   -0.00903768   -0.39392381
 Singles      0.02214058   -0.06857366   -0.07367283
 Pairs        0.05248523    0.00000000   -0.02391634
 Total        1.07853380   -0.07761133   -0.49151297
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96326348
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67668952
 One electron energy               -11102.22863201
 Two electron energy                 2969.77385555
 Virial quotient                       -0.84076570
 Correlation energy                    -0.49151297
 !MRCI STATE 4.1 Energy             -8132.454776457413

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49337684 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49323419 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49337684 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49129484 (Pople, fixed reference)
 Cluster corrected energies         -8132.49115134 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49129484 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96290429 (fixed)   0.96303387 (relaxed)   0.96290429 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00390799   -0.00903768   -0.39392381
 Singles      0.02214058   -0.06857367   -0.07367283
 Pairs        0.05248522   -0.00000000   -0.02391634
 Total        1.07853379   -0.07761134   -0.49151297
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96326348
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.67669093
 One electron energy               -11102.22863166
 Two electron energy                 2969.77385520
 Virial quotient                       -0.84076570
 Correlation energy                    -0.49151297
 !MRCI STATE 5.1 Energy             -8132.454776457374

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.49337683 (Davidson, fixed reference)
 Cluster corrected energies         -8132.49323418 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.49337683 (Davidson, rotated reference)

 Cluster corrected energies         -8132.49129484 (Pople, fixed reference)
 Cluster corrected energies         -8132.49115133 (Pople, relaxed reference)
 Cluster corrected energies         -8132.49129484 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.94212295 (fixed)   0.96328850 (relaxed)   0.96328850 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00289723   -0.00714978   -0.39632216
 Singles      0.01981560   -0.06403510   -0.06842770
 Pairs        0.05496079   -0.00000000   -0.02497235
 Total        1.07767362   -0.07118488   -0.48972220
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90722026
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70021583
 One electron energy               -11104.94327734
 Two electron energy                 2972.54633488
 Virial quotient                       -0.84075767
 Correlation energy                    -0.48972220
 !MRCI STATE 6.1 Energy             -8132.396942464661

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43498096 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43498096 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43498096 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43290422 (Pople, fixed reference)
 Cluster corrected energies         -8132.43290422 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43290422 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96328850 (fixed)   0.96328850 (relaxed)   0.96328850 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00289723   -0.00714978   -0.39632211
 Singles      0.01981564   -0.06403516   -0.06842772
 Pairs        0.05496075    0.00000000   -0.02497237
 Total        1.07767361   -0.07118494   -0.48972220
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90722026
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70021912
 One electron energy               -11104.94328403
 Two electron energy                 2972.54634157
 Virial quotient                       -0.84075767
 Correlation energy                    -0.48972220
 !MRCI STATE 7.1 Energy             -8132.396942464577

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43498096 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43498096 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43498096 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43290422 (Pople, fixed reference)
 Cluster corrected energies         -8132.43290422 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43290422 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.82834598 (fixed)   0.96328851 (relaxed)   0.96328851 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00289723   -0.00714978   -0.39632219
 Singles      0.01981558   -0.06403508   -0.06842768
 Pairs        0.05496079    0.00000000   -0.02497233
 Total        1.07767359   -0.07118486   -0.48972220
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90722026
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70022122
 One electron energy               -11104.94328218
 Two electron energy                 2972.54633972
 Virial quotient                       -0.84075767
 Correlation energy                    -0.48972220
 !MRCI STATE 8.1 Energy             -8132.396942464497

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43498095 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43498095 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43498095 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43290421 (Pople, fixed reference)
 Cluster corrected energies         -8132.43290421 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43290421 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.73557837 (fixed)   0.96328850 (relaxed)   0.96328850 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00289723   -0.00714978   -0.39632219
 Singles      0.01981558   -0.06403508   -0.06842768
 Pairs        0.05496080    0.00000000   -0.02497233
 Total        1.07767360   -0.07118486   -0.48972220
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90722026
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70022155
 One electron energy               -11104.94328303
 Two electron energy                 2972.54634056
 Virial quotient                       -0.84075767
 Correlation energy                    -0.48972220
 !MRCI STATE 9.1 Energy             -8132.396942464489

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43498095 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43498095 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43498095 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43290421 (Pople, fixed reference)
 Cluster corrected energies         -8132.43290421 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43290421 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94212296 (fixed)   0.96328851 (relaxed)   0.96328851 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00289723   -0.00714978   -0.39632220
 Singles      0.01981558   -0.06403509   -0.06842769
 Pairs        0.05496078    0.00000002   -0.02497231
 Total        1.07767359   -0.07118485   -0.48972220
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90722026
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70022316
 One electron energy               -11104.94328394
 Two electron energy                 2972.54634148
 Virial quotient                       -0.84075767
 Correlation energy                    -0.48972220
 !MRCI STATE 10.1 Energy            -8132.396942464396

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43498094 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43498094 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43498094 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43290420 (Pople, fixed reference)
 Cluster corrected energies         -8132.43290420 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43290420 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.82834598 (fixed)   0.96328850 (relaxed)   0.96328850 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00289723   -0.00714978   -0.39632214
 Singles      0.01981562   -0.06403513   -0.06842771
 Pairs        0.05496076   -0.00000000   -0.02497236
 Total        1.07767360   -0.07118491   -0.48972220
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90722026
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70022641
 One electron energy               -11104.94329054
 Two electron energy                 2972.54634807
 Virial quotient                       -0.84075767
 Correlation energy                    -0.48972220
 !MRCI STATE 11.1 Energy            -8132.396942464388

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43498095 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43498095 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43498095 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43290421 (Pople, fixed reference)
 Cluster corrected energies         -8132.43290421 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43290421 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.73557837 (fixed)   0.96328852 (relaxed)   0.96328852 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00289723   -0.00714978   -0.39632217
 Singles      0.01981560   -0.06403511   -0.06842770
 Pairs        0.05496075    0.00000000   -0.02497233
 Total        1.07767357   -0.07118489   -0.48972220
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90722026
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.70022433
 One electron energy               -11104.94328638
 Two electron energy                 2972.54634392
 Virial quotient                       -0.84075767
 Correlation energy                    -0.48972220
 !MRCI STATE 12.1 Energy            -8132.396942464370

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.43498094 (Davidson, fixed reference)
 Cluster corrected energies         -8132.43498094 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.43498094 (Davidson, rotated reference)

 Cluster corrected energies         -8132.43290420 (Pople, fixed reference)
 Cluster corrected energies         -8132.43290420 (Pople, relaxed reference)
 Cluster corrected energies         -8132.43290420 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.96180435 (fixed)   0.96180435 (relaxed)   0.96180435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00330397   -0.00798870   -0.39859650
 Singles      0.01981622   -0.06426113   -0.06849744
 Pairs        0.05788188    0.00000000   -0.02642027
 Total        1.08100207   -0.07224983   -0.49351421
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.88679928
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.69618697
 One electron energy               -11104.81331700
 Two electron energy                 2972.43300351
 Virial quotient                       -0.84075631
 Correlation energy                    -0.49351421
 !MRCI STATE 13.1 Energy            -8132.380313491994

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42028917 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42028917 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42028917 (Davidson, rotated reference)

 Cluster corrected energies         -8132.41820869 (Pople, fixed reference)
 Cluster corrected energies         -8132.41820869 (Pople, relaxed reference)
 Cluster corrected energies         -8132.41820869 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.96180431 (fixed)   0.96180431 (relaxed)   0.96180431 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00330397   -0.00798870   -0.39859650
 Singles      0.01981620   -0.06426109   -0.06849742
 Pairs        0.05788200    0.00000000   -0.02642029
 Total        1.08100217   -0.07224979   -0.49351421
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.88679928
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.69618797
 One electron energy               -11104.81331883
 Two electron energy                 2972.43300534
 Virial quotient                       -0.84075631
 Correlation energy                    -0.49351421
 !MRCI STATE 14.1 Energy            -8132.380313491848

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42028921 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42028921 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42028921 (Davidson, rotated reference)

 Cluster corrected energies         -8132.41820874 (Pople, fixed reference)
 Cluster corrected energies         -8132.41820874 (Pople, relaxed reference)
 Cluster corrected energies         -8132.41820874 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.96180431 (fixed)   0.96180431 (relaxed)   0.96180431 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00330398   -0.00798870   -0.00889847
 Singles      0.01981622   -0.06426109   -0.06849742
 Pairs        0.05788196   -0.42126442   -0.41611833
 Total        1.08100215   -0.49351421   -0.49351421
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.88679928
 Nuclear energy                         0.00000000
 Kinetic energy                      9672.69620208
 One electron energy               -11104.81334071
 Two electron energy                 2972.43302722
 Virial quotient                       -0.84075630
 Correlation energy                    -0.49351421
 !MRCI STATE 15.1 Energy            -8132.380313491795

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.42028920 (Davidson, fixed reference)
 Cluster corrected energies         -8132.42028920 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.42028920 (Davidson, rotated reference)

 Cluster corrected energies         -8132.41820873 (Pople, fixed reference)
 Cluster corrected energies         -8132.41820873 (Pople, relaxed reference)
 Cluster corrected energies         -8132.41820873 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       70.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      306.68       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       464.44    446.31     10.82      3.05      0.04      3.96
 REAL TIME  *       495.70 SEC
 DISK USED  *       377.02 MB (local),        5.96 GB (total)
 SF USED    *         3.14 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -8132.49337685  AU                              
 SETTING HLSDIAG(3)     =     -8132.49337685  AU                              
 SETTING HLSDIAG(4)     =     -8132.49337686  AU                              
 SETTING HLSDIAG(5)     =     -8132.49337684  AU                              
 SETTING HLSDIAG(6)     =     -8132.49337683  AU                              
 SETTING HLSDIAG(7)     =     -8132.43498096  AU                              
 SETTING HLSDIAG(8)     =     -8132.43498096  AU                              
 SETTING HLSDIAG(9)     =     -8132.43498095  AU                              
 SETTING HLSDIAG(10)    =     -8132.43498095  AU                              
 SETTING HLSDIAG(11)    =     -8132.43498094  AU                              
 SETTING HLSDIAG(12)    =     -8132.43498095  AU                              
 SETTING HLSDIAG(13)    =     -8132.43498094  AU                              
 SETTING HLSDIAG(14)    =     -8132.42028917  AU                              
 SETTING HLSDIAG(15)    =     -8132.42028921  AU                              
 SETTING HLSDIAG(16)    =     -8132.42028920  AU                              


         HLSDIAG
    -8132.539297
    -8132.493377
    -8132.493377
    -8132.493377
    -8132.493377
    -8132.493377
    -8132.434981
    -8132.434981
    -8132.434981
    -8132.434981
    -8132.434981
    -8132.434981
    -8132.434981
    -8132.420289
    -8132.420289
    -8132.420289
                                                  

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

 Time for Seward_LS:      72.56 sec

       11141882. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2726 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     72.56 sec, REAL time:     72.83 sec


 SORTLS1 read    11148006. and wrote    11148006. SO integrals in    48 records. CPU time:      0.11 sec, REAL time:      0.16 sec
 SORTLS2 read    11148006. and wrote    11148006. SO integrals in    48 records. CPU time:      0.01 sec, REAL time:      0.07 sec

 FILE SIZES: FILE 1:   252.4 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   252.4 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      240.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      306.68       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       537.63     73.15    446.31     10.82      3.05      0.04      3.96
 REAL TIME  *       569.33 SEC
 DISK USED  *       377.09 MB (local),        6.26 GB (total)
 SF USED    *         3.14 GB
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
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   1

 Original energies:  -8132.499402
 Replaced energies:  -8132.539297

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  15

 Original energies:  -8132.454776  -8132.454776  -8132.454776  -8132.454776  -8132.454776  -8132.396942  -8132.396942  -8132.396942
                     -8132.396942  -8132.396942  -8132.396942  -8132.396942  -8132.380313  -8132.380313  -8132.380313
 Replaced energies:  -8132.493377  -8132.493377  -8132.493377  -8132.493377  -8132.493377  -8132.434981  -8132.434981  -8132.434981
                     -8132.434981  -8132.434981  -8132.434981  -8132.434981  -8132.420289  -8132.420289  -8132.420289



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -8132.53929749

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

    2   1.1  1.0  1.0       0.00   10078.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -5.92     166.18      -0.00       0.00      -0.00       3.20       0.00      -0.00

    3   2.1  1.0  1.0       0.00       0.00   10078.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       5.92       0.00       0.00      -0.00      -0.00      -0.23      -0.00      -0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00   10078.41       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -166.18      -0.00       0.00      -0.00      -0.00       3.19      -0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00   10078.42       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     -83.14      -0.00       0.00       2.06       0.00

    6   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00   10078.42       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      83.14       0.00       0.00       0.00       0.00       1.80

    7   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00   22894.83       0.00       0.00       0.00
                           -0.00       0.00       0.23      -3.19       0.00      -0.00       0.00    -159.04      -0.00       0.00

    8   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   22894.83       0.00       0.00
                            0.00      -3.20       0.00       0.00      -0.00      -0.00     159.04       0.00       0.00      -0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22894.83       0.00
                            0.00      -0.00       0.00      -0.00      -2.06      -0.00       0.00      -0.00      -0.00     165.55

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22894.83
                           -0.00       0.00      -0.00      -0.00      -0.00      -1.80      -0.00       0.00    -165.55      -0.00

   11  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -4.28      -0.24      -0.00      -0.00       0.00      -4.49       0.00      -0.00

   12  11.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -3.48       0.00       0.00      -0.00      -0.00    -139.54

   13  12.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       3.62       0.00       0.00    -127.89       0.00

   14  13.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.93       0.00       0.00       0.00       0.19      -0.00       0.00       0.00      -0.00       0.00

   15  14.1  1.0  1.0      17.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.19      -0.00      -0.00      -0.00      -0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.21       0.01      -0.00      -0.00       0.00       0.00      -0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00     -58.79       0.00       0.00      -2.01      -0.00
                           -0.00       0.00       0.00      -0.00     -58.79      -0.00       0.00       0.00       0.00       2.16

   18   2.1  1.0  0.0       0.00      -0.00      -0.00       0.00     103.86       0.00       0.00      -0.00      -0.00      -1.00
                            0.00      -0.00      -0.00       0.00      -0.00      99.67      -0.00      -0.00       1.36       0.00

   19   3.1  1.0  0.0       0.00      -0.00      -0.00       0.00     -55.13      -0.00      -0.00       0.00      -0.00      -2.83
                           -0.00       0.00      -0.00      -0.00      -0.00      62.38      -0.00      -0.00      -2.70       0.00

   20   4.1  1.0  0.0       0.00      -0.00    -103.86      55.13      -0.00      -0.00      -0.00      -2.26       0.00       0.00
                            0.00      58.79       0.00       0.00       0.00      -0.00       2.31      -0.00      -0.00      -0.00

   21   5.1  1.0  0.0       0.00      58.79      -0.00       0.00       0.00      -0.00       2.21       0.00       0.00      -0.00
                           -0.00       0.00     -99.67     -62.38       0.00      -0.00       0.00       2.26       0.00       0.00

   22   6.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00      -2.21      -0.00      -0.00    -106.58       0.00
                           -0.00      -0.00       0.00       0.00      -2.31      -0.00      -0.00      -0.00       0.00      99.56

   23   7.1  1.0  0.0       0.00      -0.00       0.00      -0.00       2.26      -0.00       0.00       0.00      -0.00      21.98
                            0.00      -0.00       0.00       0.00       0.00      -2.26       0.00       0.00      13.84       0.00

   24   8.1  1.0  0.0       0.00       2.01       0.00       0.00      -0.00      -0.00     106.58       0.00       0.00       0.00
                           -0.00      -0.00      -1.36       2.70       0.00      -0.00      -0.00     -13.84       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       1.00       2.83      -0.00       0.00      -0.00     -21.98      -0.00      -0.00
                            0.00      -2.16      -0.00      -0.00       0.00      -0.00     -99.56      -0.00      -0.00       0.00

   26  10.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -1.81      -0.00      -0.00      67.35       0.00
                            0.00       0.00       0.00       0.00       1.69       0.00      -0.00       0.00       0.00      64.30

   27  11.1  1.0  0.0       0.00      -2.03       0.00       0.00      -0.00       0.00      44.64       0.00      -0.00      -0.00
                            0.00      -0.00      -2.10      -0.87      -0.00       0.00      -0.00     111.65       0.00       0.00

   28  12.1  1.0  0.0       0.00       0.00      -2.24       0.52      -0.00      -0.00      -0.00    -110.33       0.00      -0.00
                            0.00      -1.87      -0.00      -0.00      -0.00      -0.00      45.36      -0.00       0.00      -0.00

   29  13.1  1.0  0.0       0.00      -0.13      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.08       0.13      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   30  14.1  1.0  0.0       0.00       0.00       0.07       0.13       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.13       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   31  15.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00      -0.13      -0.00      -0.00      -0.00      -0.00
                          -25.36       0.00       0.00       0.00       0.13       0.00      -0.00      -0.00       0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -17.93      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  14.1  1.0 -1.0      17.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00      -0.00      -0.00      -0.00      17.93       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -17.93      -0.00      -0.00       0.00      -0.00       0.00      -0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00     -58.79

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -103.86
                            4.28       0.00       0.00      -0.00      -0.00      -0.21      -0.00       0.00       0.00      -0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      55.13
                            0.24       0.00      -0.00      -0.00       0.00      -0.01       0.00      -0.00       0.00      -0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     103.86     -55.13      -0.00
                            0.00       3.48      -0.00      -0.19       0.00       0.00      58.79       0.00       0.00      -0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -58.79       0.00      -0.00      -0.00
                            0.00      -0.00      -3.62       0.00      -0.19       0.00       0.00     -99.67     -62.38       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -2.31

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -2.26
                            4.49       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -2.01      -0.00      -0.00       0.00
                           -0.00       0.00     127.89       0.00       0.00       0.00      -0.00      -1.36       2.70       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.00      -2.83       0.00
                            0.00     139.54      -0.00      -0.00       0.00      -0.00      -2.16      -0.00      -0.00       0.00

   11  10.1  1.0  1.0   22894.84       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       1.69

   12  11.1  1.0  1.0       0.00   22894.83       0.00       0.00       0.00       0.00       2.03      -0.00      -0.00       0.00
                            0.00       0.00       6.88      -0.00       0.00      -0.00      -0.00      -2.10      -0.87      -0.00

   13  12.1  1.0  1.0       0.00       0.00   22894.84       0.00       0.00       0.00      -0.00       2.24      -0.52       0.00
                            0.00      -6.88      -0.00      -0.00      -0.00      -0.00      -1.87      -0.00      -0.00      -0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00   26119.31       0.00       0.00       0.13       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00     -85.26      -0.00       0.00      -0.08       0.13      -0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00   26119.30       0.00      -0.00      -0.07      -0.13      -0.00
                            0.00      -0.00       0.00      85.26      -0.00       0.00       0.13       0.00       0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   26119.30       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.13

   17   1.1  1.0  0.0      -0.00       2.03      -0.00       0.13      -0.00       0.00   10078.42       0.00       0.00       0.00
                           -0.00       0.00       1.87      -0.00      -0.13      -0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0      -0.00      -0.00       2.24       0.00      -0.07       0.00       0.00   10078.42       0.00       0.00
                           -0.00       2.10       0.00       0.08      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00      -0.00      -0.52      -0.00      -0.13      -0.00       0.00       0.00   10078.41       0.00
                           -0.00       0.87       0.00      -0.13      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00   10078.42
                           -1.69       0.00       0.00       0.00      -0.00      -0.13      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0       1.81      -0.00       0.00       0.00      -0.00       0.13       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0       0.00     -44.64       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -45.36       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0       0.00      -0.00     110.33      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -111.65       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0     -67.35       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -64.30      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26  10.1  1.0  0.0       0.00     117.27      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -124.64       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27  11.1  1.0  0.0    -117.27       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   28  12.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                          124.64       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29  13.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00     -60.29       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   30  14.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     -60.29      -0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0       0.00      -0.00       0.00      60.29       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      60.29      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00     -58.79

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     103.86
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     -55.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -103.86      55.13      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      58.79       0.00       0.00       0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      58.79      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -99.67     -62.38       0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -2.31

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       2.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.01       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.36       2.70       0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.00       2.83      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.16      -0.00      -0.00       0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       1.69

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -2.03       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.10      -0.87      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.24       0.52      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.87      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.13      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.08       0.13      -0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.07       0.13       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.13       0.00       0.00       0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.13


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

    2   1.1  1.0  1.0      58.79      -0.00      -0.00       2.01       0.00       0.00      -2.03       0.00      -0.13       0.00
                           -0.00       0.00       0.00       0.00       2.16      -0.00       0.00       1.87      -0.00      -0.13

    3   2.1  1.0  1.0      -0.00      -0.00       0.00       0.00       1.00       0.00       0.00      -2.24      -0.00       0.07
                           99.67      -0.00      -0.00       1.36       0.00      -0.00       2.10       0.00       0.08      -0.00

    4   3.1  1.0  1.0       0.00       0.00      -0.00       0.00       2.83      -0.00       0.00       0.52       0.00       0.13
                           62.38      -0.00      -0.00      -2.70       0.00      -0.00       0.87       0.00      -0.13      -0.00

    5   4.1  1.0  1.0       0.00       0.00       2.26      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       2.31      -0.00      -0.00      -0.00      -1.69       0.00       0.00       0.00      -0.00

    6   5.1  1.0  1.0      -0.00      -2.21      -0.00      -0.00       0.00      -1.81       0.00      -0.00      -0.00       0.00
                            0.00       0.00       2.26       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       2.21      -0.00       0.00     106.58      -0.00      -0.00      44.64      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      99.56       0.00       0.00     -45.36       0.00       0.00

    8   7.1  1.0  1.0       0.00      -0.00       0.00       0.00     -21.98      -0.00       0.00    -110.33       0.00       0.00
                           -2.26       0.00      -0.00      13.84       0.00      -0.00    -111.65       0.00      -0.00      -0.00

    9   8.1  1.0  1.0       0.00    -106.58      -0.00       0.00      -0.00      67.35      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00     -13.84      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   10   9.1  1.0  1.0      -0.00       0.00      21.98       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00     -99.56      -0.00      -0.00      -0.00     -64.30      -0.00       0.00       0.00      -0.00

   11  10.1  1.0  1.0       1.81       0.00       0.00     -67.35      -0.00       0.00    -117.27       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      64.30      -0.00       0.00    -124.64       0.00      -0.00

   12  11.1  1.0  1.0      -0.00     -44.64      -0.00       0.00       0.00     117.27       0.00       0.00      -0.00       0.00
                            0.00      -0.00     111.65       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13  12.1  1.0  1.0       0.00       0.00     110.33      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      45.36      -0.00       0.00      -0.00     124.64       0.00       0.00      -0.00       0.00

   14  13.1  1.0  1.0       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   15  14.1  1.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   16  15.1  1.0  1.0       0.13       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -60.29      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      60.29

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.1  1.0  0.0   10078.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.1  1.0  0.0       0.00   22894.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00   22894.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   22894.83       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   22894.83       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   22894.84       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   22894.83       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22894.84       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26119.31       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26119.30
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0     -58.79       0.00       0.00      -2.01      -0.00      -0.00       2.03      -0.00       0.13      -0.00
                           -0.00       0.00       0.00       0.00       2.16      -0.00       0.00       1.87      -0.00      -0.13

   33   2.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -1.00      -0.00      -0.00       2.24       0.00      -0.07
                           99.67      -0.00      -0.00       1.36       0.00      -0.00       2.10       0.00       0.08      -0.00

   34   3.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -2.83       0.00      -0.00      -0.52      -0.00      -0.13
                           62.38      -0.00      -0.00      -2.70       0.00      -0.00       0.87       0.00      -0.13      -0.00

   35   4.1  1.0 -1.0      -0.00      -0.00      -2.26       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00       2.31      -0.00      -0.00      -0.00      -1.69       0.00       0.00       0.00      -0.00

   36   5.1  1.0 -1.0      -0.00       2.21       0.00       0.00      -0.00       1.81      -0.00       0.00       0.00      -0.00
                           -0.00       0.00       2.26       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   37   6.1  1.0 -1.0      -2.21      -0.00      -0.00    -106.58       0.00       0.00     -44.64       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      99.56       0.00       0.00     -45.36       0.00       0.00

   38   7.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      21.98       0.00      -0.00     110.33      -0.00      -0.00
                           -2.26       0.00       0.00      13.84       0.00      -0.00    -111.65       0.00      -0.00      -0.00

   39   8.1  1.0 -1.0      -0.00     106.58       0.00       0.00       0.00     -67.35       0.00      -0.00       0.00       0.00
                           -0.00      -0.00     -13.84       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00      -0.00     -21.98      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00     -99.56      -0.00      -0.00       0.00     -64.30      -0.00       0.00       0.00      -0.00

   41  10.1  1.0 -1.0      -1.81      -0.00      -0.00      67.35       0.00       0.00     117.27      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00      64.30       0.00       0.00    -124.64       0.00      -0.00

   42  11.1  1.0 -1.0       0.00      44.64       0.00      -0.00      -0.00    -117.27       0.00      -0.00       0.00      -0.00
                            0.00      -0.00     111.65       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   43  12.1  1.0 -1.0      -0.00      -0.00    -110.33       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      45.36      -0.00       0.00      -0.00     124.64       0.00      -0.00      -0.00       0.00

   44  13.1  1.0 -1.0      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   46  15.1  1.0 -1.0      -0.13      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      60.29       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      60.29


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           25.36      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

    2   1.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0      -0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0      60.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -60.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -0.00      58.79      -0.00      -0.00       2.01       0.00
                            0.00      -0.00       0.00      -0.00     -58.79      -0.00       0.00       0.00       0.00       2.16

   18   2.1  1.0  0.0       0.00       0.00      -0.00      -0.00    -103.86      -0.00      -0.00       0.00       0.00       1.00
                            0.00      -0.00       0.00       0.00      -0.00      99.67      -0.00      -0.00       1.36       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00      55.13       0.00       0.00      -0.00       0.00       2.83
                            0.00       0.00      -0.00       0.00      -0.00      62.38      -0.00      -0.00      -2.70       0.00

   20   4.1  1.0  0.0       0.00       0.00     103.86     -55.13      -0.00       0.00       0.00       2.26      -0.00      -0.00
                            0.00      58.79       0.00       0.00      -0.00      -0.00       2.31      -0.00      -0.00      -0.00

   21   5.1  1.0  0.0       0.00     -58.79       0.00      -0.00      -0.00      -0.00      -2.21      -0.00      -0.00       0.00
                            0.00       0.00     -99.67     -62.38       0.00       0.00       0.00       2.26       0.00       0.00

   22   6.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       2.21      -0.00       0.00     106.58      -0.00
                            0.00      -0.00       0.00       0.00      -2.31      -0.00       0.00      -0.00       0.00      99.56

   23   7.1  1.0  0.0       0.00       0.00      -0.00       0.00      -2.26       0.00      -0.00       0.00       0.00     -21.98
                            0.00      -0.00       0.00       0.00       0.00      -2.26       0.00      -0.00      13.84       0.00

   24   8.1  1.0  0.0       0.00      -2.01      -0.00      -0.00       0.00       0.00    -106.58      -0.00       0.00      -0.00
                            0.00      -0.00      -1.36       2.70       0.00      -0.00      -0.00     -13.84      -0.00       0.00

   25   9.1  1.0  0.0       0.00      -0.00      -1.00      -2.83       0.00      -0.00       0.00      21.98       0.00      -0.00
                            0.00      -2.16      -0.00      -0.00       0.00      -0.00     -99.56      -0.00      -0.00      -0.00

   26  10.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00       1.81       0.00       0.00     -67.35      -0.00
                            0.00       0.00       0.00       0.00       1.69       0.00      -0.00       0.00       0.00      64.30

   27  11.1  1.0  0.0       0.00       2.03      -0.00      -0.00       0.00      -0.00     -44.64      -0.00       0.00       0.00
                            0.00      -0.00      -2.10      -0.87      -0.00       0.00      -0.00     111.65       0.00       0.00

   28  12.1  1.0  0.0       0.00      -0.00       2.24      -0.52       0.00       0.00       0.00     110.33      -0.00       0.00
                            0.00      -1.87      -0.00      -0.00      -0.00      -0.00      45.36      -0.00       0.00      -0.00

   29  13.1  1.0  0.0       0.00       0.13       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.08       0.13      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   30  14.1  1.0  0.0       0.00      -0.00      -0.07      -0.13      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.13       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   31  15.1  1.0  0.0   26119.30       0.00       0.00      -0.00       0.00       0.13       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.13       0.00      -0.00      -0.00       0.00      -0.00

   32   1.1  1.0 -1.0       0.00   10078.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       5.92    -166.18       0.00      -0.00       0.00      -3.20      -0.00       0.00

   33   2.1  1.0 -1.0       0.00       0.00   10078.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -5.92      -0.00      -0.00       0.00       0.00       0.23       0.00       0.00      -0.00

   34   3.1  1.0 -1.0      -0.00       0.00       0.00   10078.41       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     166.18       0.00      -0.00       0.00       0.00      -3.19       0.00      -0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00   10078.42       0.00       0.00       0.00       0.00       0.00
                           -0.13      -0.00      -0.00      -0.00       0.00      83.14       0.00      -0.00      -2.06      -0.00

   36   5.1  1.0 -1.0       0.13       0.00       0.00       0.00       0.00   10078.42       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     -83.14      -0.00      -0.00      -0.00      -0.00      -1.80

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   22894.83       0.00       0.00       0.00
                            0.00      -0.00      -0.23       3.19      -0.00       0.00      -0.00     159.04       0.00      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22894.83       0.00       0.00
                            0.00       3.20      -0.00      -0.00       0.00       0.00    -159.04      -0.00      -0.00       0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22894.83       0.00
                           -0.00       0.00      -0.00       0.00       2.06       0.00      -0.00       0.00       0.00    -165.55

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22894.83
                            0.00      -0.00       0.00       0.00       0.00       1.80       0.00      -0.00     165.55       0.00

   41  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       4.28       0.24       0.00       0.00      -0.00       4.49      -0.00       0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       3.48      -0.00      -0.00       0.00       0.00     139.54

   43  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -3.62      -0.00      -0.00     127.89      -0.00

   44  13.1  1.0 -1.0     -60.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.19       0.00      -0.00      -0.00       0.00      -0.00

   45  14.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -60.29       0.00      -0.00       0.00       0.00      -0.19       0.00       0.00       0.00       0.00

   46  15.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.21      -0.01       0.00       0.00      -0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46

    1   1.1  0.0  0.0      -0.00      -0.00      -0.00      -0.00      17.93       0.00
                            0.00       0.00       0.00      17.93       0.00       0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -2.03       0.00      -0.13       0.00      -0.00
                           -0.00       0.00       1.87      -0.00      -0.13      -0.00

   18   2.1  1.0  0.0       0.00       0.00      -2.24      -0.00       0.07      -0.00
                           -0.00       2.10       0.00       0.08      -0.00      -0.00

   19   3.1  1.0  0.0      -0.00       0.00       0.52       0.00       0.13       0.00
                           -0.00       0.87       0.00      -0.13      -0.00      -0.00

   20   4.1  1.0  0.0       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -1.69       0.00       0.00       0.00      -0.00      -0.13

   21   5.1  1.0  0.0      -1.81       0.00      -0.00      -0.00       0.00      -0.13
                           -0.00      -0.00       0.00       0.00       0.00      -0.00

   22   6.1  1.0  0.0      -0.00      44.64      -0.00       0.00       0.00      -0.00
                            0.00       0.00     -45.36       0.00       0.00       0.00

   23   7.1  1.0  0.0      -0.00       0.00    -110.33       0.00       0.00      -0.00
                           -0.00    -111.65       0.00      -0.00      -0.00       0.00

   24   8.1  1.0  0.0      67.35      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                          -64.30      -0.00       0.00       0.00      -0.00       0.00

   26  10.1  1.0  0.0       0.00    -117.27       0.00       0.00      -0.00       0.00
                           -0.00       0.00    -124.64       0.00      -0.00      -0.00

   27  11.1  1.0  0.0     117.27       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   28  12.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                          124.64       0.00       0.00      -0.00       0.00      -0.00

   29  13.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00      60.29
                           -0.00       0.00       0.00      -0.00      -0.00       0.00

   30  14.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00     -60.29

   31  15.1  1.0  0.0      -0.00       0.00      -0.00     -60.29      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00      60.29       0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.28      -0.00      -0.00       0.00       0.00       0.21

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.24      -0.00       0.00       0.00      -0.00       0.01

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -3.48       0.00       0.19      -0.00      -0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       3.62      -0.00       0.19      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.49      -0.00       0.00       0.00      -0.00       0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -127.89      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -139.54       0.00       0.00      -0.00       0.00

   41  10.1  1.0 -1.0   22894.84       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00

   42  11.1  1.0 -1.0       0.00   22894.83       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -6.88       0.00      -0.00       0.00

   43  12.1  1.0 -1.0       0.00       0.00   22894.84       0.00       0.00       0.00
                           -0.00       6.88       0.00       0.00       0.00       0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00   26119.31       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      85.26       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00   26119.30       0.00
                           -0.00       0.00      -0.00     -85.26       0.00      -0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   26119.30
                            0.00      -0.00      -0.00      -0.00       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 46)

    The diagonal matrixelements are shifted by  -8132.53929749 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000   10078.416       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000   10078.416       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000   10078.413       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000   10078.418       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000   10078.420       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000   22894.833       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000   22894.833
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.001       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.001       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             25.361       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000     -83.141      -0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000     140.956      -0.000      -0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000      88.214      -0.000      -0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000      83.141       0.000       0.000       0.000      -0.000       3.264      -0.000

    5    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000    -140.956     -88.214       0.000       0.000       0.000       3.195

    6    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -3.264      -0.000       0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -3.195       0.000       0.000

    8    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000      -1.924       3.815       0.000      -0.000      -0.000     -19.578

    9    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      -3.051      -0.000      -0.000       0.000      -0.000    -140.797      -0.000

   10    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.001       0.000       0.000       0.000       2.384       0.000      -0.000       0.000

   11    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -2.968      -1.235      -0.000       0.000      -0.000     157.891

   12    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000      -2.650      -0.000      -0.000      -0.000      -0.000      64.154      -0.000

   13    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.114       0.182      -0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.186       0.000       0.000       0.000      -0.000      -0.001       0.000

   15    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                              -25.360       0.000       0.000       0.000       0.186       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -5.918     166.178      -0.000       0.000      -0.000       3.195

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       5.918       0.000       0.000      -0.000      -0.000      -0.235      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -166.178      -0.000       0.000      -0.000      -0.000       3.188      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000     -83.141      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      83.141       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.235      -3.188       0.000      -0.000       0.000    -159.036

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.195       0.000       0.000      -0.000      -0.000     159.036       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000       0.000      -0.000      -2.063      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -1.803      -0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -4.279      -0.243      -0.000      -0.000       0.000      -4.492

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000      -0.000      -0.000      -3.475       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       3.617       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               25.361       0.000       0.000       0.000       0.186      -0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.186      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.215       0.008      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.001      -0.000      -0.000      -0.001      -0.000      25.361       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+          22894.835       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000   22894.834       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000   22894.836       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000   22894.834       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000   22894.837       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   26119.308       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   26119.298       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   26119.300
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       3.051      -0.000       0.000       2.650      -0.000      -0.186      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                1.924       0.000      -0.000       2.968       0.000       0.114      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -3.815       0.000      -0.000       1.235       0.000      -0.182      -0.000      -0.000

    4    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -2.384       0.000       0.000       0.000      -0.000      -0.186

    5    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000     140.797       0.000       0.000     -64.154       0.000       0.001       0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               19.578       0.000      -0.000    -157.891       0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000     -90.940      -0.000       0.000       0.000      -0.000       0.000

   10    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000      90.940       0.000       0.000    -176.274       0.000      -0.001      -0.000

   11    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000     176.274       0.000       0.000      -0.000       0.000      -0.001

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.001       0.000      -0.000       0.000       0.000     -85.263

   15    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.001      -0.000      85.263       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       4.279       0.000       0.000      -0.000      -0.000      -0.215

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.243       0.000      -0.000      -0.000       0.000      -0.008

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.063       0.000       0.000       3.475      -0.000      -0.186       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       1.803       0.000      -0.000      -3.617       0.000      -0.186       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       4.492       0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     165.552      -0.000       0.000     127.891       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -165.552      -0.000       0.000     139.539      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -139.539       0.000       0.000       6.878      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -127.891       0.000       0.000      -6.878      -0.000      -0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000     -85.263      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      85.263      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000      -0.000     -83.141      -0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     140.956      -0.000      -0.000       1.924

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      88.214      -0.000      -0.000      -3.815

    4    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               83.141       0.000       0.000       0.000      -0.000       3.264      -0.000      -0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000    -140.956     -88.214       0.000       0.000       0.000       3.195       0.000

    6    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000      -3.264      -0.000       0.000      -0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -3.195       0.000       0.000      19.578

    8    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -1.924       3.815       0.000      -0.000      -0.000     -19.578       0.000

    9    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -3.051      -0.000      -0.000       0.000      -0.000    -140.797      -0.000      -0.000

   10    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       2.384       0.000      -0.000       0.000       0.000

   11    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -2.968      -1.235      -0.000       0.000      -0.000     157.891       0.000

   12    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -2.650      -0.000      -0.000      -0.000      -0.000      64.154      -0.000       0.000

   13    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.114       0.182      -0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.186       0.000       0.000       0.000      -0.000      -0.001       0.000       0.000

   15    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.186       0.000      -0.000      -0.000       0.000

    1    1  |1 0>           10078.416       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000   10078.416       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000   10078.413       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000   10078.418       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000   10078.420       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   22894.833       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   22894.833       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   22894.835
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      -0.000      -0.000      83.141      -0.000      -0.000       2.849
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000      -0.000    -146.873      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      77.964       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000     146.873     -77.964       0.000       0.000       0.000       3.195      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-            -83.141       0.000      -0.000      -0.000       0.000      -3.124      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000      -0.000      -0.000       3.124       0.000       0.000     150.732
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000      -0.000       0.000      -3.195       0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-             -2.849      -0.000      -0.000       0.000       0.000    -150.732      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-             -0.000      -1.420      -4.006       0.000      -0.000       0.000      31.084       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-             -0.000      -0.000       0.000      -0.000       2.565       0.000       0.000     -95.244
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

   11    1  |1 1>-              2.866      -0.000      -0.000       0.000      -0.000     -63.136      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-             -0.000       3.161      -0.729       0.000       0.000       0.000     156.034      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.186       0.000      -0.000      -0.000       0.000      -0.001      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   14    1  |1 1>-             -0.000      -0.101      -0.190      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000      -0.000       0.000       0.186       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.001      -0.000      -0.000      -0.000       0.000      25.360       0.000

    1    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                                3.051      -0.000       0.000       2.650      -0.000      -0.186      -0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000       2.968       0.000       0.114      -0.000      -0.000       5.918

    3    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       1.235       0.000      -0.182      -0.000      -0.000    -166.178

    4    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000      -2.384       0.000       0.000       0.000      -0.000      -0.186       0.000

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                              140.797       0.000       0.000     -64.154       0.000       0.001       0.000       0.000

    7    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -157.891       0.000      -0.000      -0.000       0.000      -3.195

    8    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     -90.940      -0.000       0.000       0.000      -0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               90.940       0.000       0.000    -176.274       0.000      -0.001      -0.000       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   12    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000     176.274       0.000       0.000      -0.000       0.000      -0.001      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.001       0.000      -0.000       0.000       0.000     -85.263      -0.000

   15    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.001      -0.000      85.263       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      83.141
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       2.849
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>           22894.834       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000   22894.836       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000   22894.834       0.000       0.000       0.000       0.000      -2.866
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000   22894.837       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000   26119.308       0.000       0.000      -0.186
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000   26119.298       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   26119.300      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000      -2.866       0.000      -0.186       0.000      -0.000   10078.416
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    2    1  |1 1>-              1.420       0.000       0.000      -3.161      -0.000       0.101      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              4.006      -0.000       0.000       0.729       0.000       0.190       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-             -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000      -2.565       0.000      -0.000      -0.000       0.000      -0.186       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    6    1  |1 1>-             -0.000      -0.000      63.136      -0.000       0.001       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-            -31.084      -0.000       0.000    -156.034       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>-             -0.000      95.244      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 1>-              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.000       0.000    -165.843       0.000       0.001      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 1>-              0.000     165.843       0.000       0.000      -0.000       0.000      -0.001       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-             -0.000      -0.001       0.000      -0.000       0.000       0.000      85.263       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   15    1  |1 1>-              0.000      -0.000       0.001      -0.000     -85.263      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.001       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.918     166.178      -0.000       0.000      -0.000       3.195       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.235      -0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       3.188      -0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -83.141      -0.000       0.000       2.063       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      83.141       0.000       0.000       0.000       0.000       1.803

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.235      -3.188       0.000      -0.000       0.000    -159.036      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000     159.036       0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -2.063      -0.000       0.000      -0.000      -0.000     165.552

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -1.803      -0.000       0.000    -165.552      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.279      -0.243      -0.000      -0.000       0.000      -4.492       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -3.475       0.000       0.000      -0.000      -0.000    -139.539

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       3.617       0.000       0.000    -127.891       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.186      -0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.186      -0.000      -0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.215       0.008      -0.000      -0.000       0.000       0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000     -83.141       0.000       0.000      -2.849      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000     146.873       0.000       0.000      -0.000      -0.000      -1.420
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 0>              -0.000       0.000     -77.964      -0.000      -0.000       0.000      -0.000      -4.006
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    4    1  |1 0>            -146.873      77.964       0.000      -0.000      -0.000      -3.195       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000       3.124       0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000       0.000      -3.124       0.000      -0.000    -150.732       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000      -0.000       3.195      -0.000       0.000       0.000      -0.000      31.084
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000      -0.000      -0.000     150.732       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>               1.420       4.006      -0.000       0.000      -0.000     -31.084      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000      -0.000       0.000      -2.565      -0.000      -0.000      95.244       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000      -0.000       0.000      63.136       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   12    1  |1 0>              -3.161       0.729      -0.000      -0.000      -0.000    -156.034       0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>              -0.000       0.000       0.000      -0.000       0.001       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.101       0.190       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   15    1  |1 0>              -0.000       0.000      -0.000      -0.186      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-          10078.416       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000   10078.413       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000   10078.418       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000   10078.420       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   22894.833       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   22894.833       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   22894.835       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22894.834
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.001      -0.000     -25.361      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                4.279       0.000       0.000      -0.000      -0.000      -0.215

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.243       0.000      -0.000      -0.000       0.000      -0.008

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       3.475      -0.000      -0.186       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -3.617       0.000      -0.186       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                4.492       0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     127.891       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     139.539      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       6.878      -0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -6.878      -0.000      -0.000      -0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -85.263      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      85.263      -0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000

    1    1  |1 0>              -0.000       2.866      -0.000       0.186      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000       3.161       0.000      -0.101       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -0.000      -0.729      -0.000      -0.190      -0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000

    5    1  |1 0>               2.565      -0.000       0.000       0.000      -0.000       0.186
                                0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000     -63.136       0.000      -0.001      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000      -0.000     156.034      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 0>             -95.244       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000     165.843      -0.000      -0.001       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>            -165.843       0.000      -0.000       0.000      -0.000       0.001
                                0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.001      -0.000       0.000       0.000      -0.000     -85.263
                                0.000      -0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000

   15    1  |1 0>               0.000      -0.001       0.000      85.263       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-          22894.836       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   22894.834       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   22894.837       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   26119.308       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   26119.298       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   26119.300
                                0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -8132.53929783    -0.00000034       -0.07      0.00000000        0.00      0.0000
    2 -8132.49451331     0.04478418     9828.99      0.04478452     9829.07      1.2186
    3 -8132.49451331     0.04478418     9828.99      0.04478452     9829.07      1.2186
    4 -8132.49451331     0.04478419     9828.99      0.04478452     9829.07      1.2186
    5 -8132.49375568     0.04554181     9995.27      0.04554215     9995.35      1.2393
    6 -8132.49375568     0.04554181     9995.27      0.04554215     9995.35      1.2393
    7 -8132.49375568     0.04554181     9995.27      0.04554215     9995.35      1.2393
    8 -8132.49375567     0.04554182     9995.27      0.04554216     9995.35      1.2393
    9 -8132.49375567     0.04554183     9995.28      0.04554216     9995.35      1.2393
   10 -8132.49261923     0.04667826    10244.69      0.04667860    10244.77      1.2702
   11 -8132.49261923     0.04667826    10244.69      0.04667860    10244.77      1.2702
   12 -8132.49261922     0.04667827    10244.70      0.04667861    10244.77      1.2702
   13 -8132.49261922     0.04667827    10244.70      0.04667861    10244.77      1.2702
   14 -8132.49261922     0.04667828    10244.70      0.04667861    10244.77      1.2702
   15 -8132.49261921     0.04667828    10244.70      0.04667862    10244.77      1.2702
   16 -8132.49261921     0.04667828    10244.70      0.04667862    10244.77      1.2702
   17 -8132.43643077     0.10286672    22576.64      0.10286706    22576.71      2.7992
   18 -8132.43643077     0.10286672    22576.64      0.10286706    22576.71      2.7992
   19 -8132.43643077     0.10286673    22576.64      0.10286706    22576.71      2.7992
   20 -8132.43643076     0.10286673    22576.64      0.10286707    22576.71      2.7992
   21 -8132.43643076     0.10286673    22576.64      0.10286707    22576.71      2.7992
   22 -8132.43534340     0.10395410    22815.29      0.10395443    22815.36      2.8287
   23 -8132.43534339     0.10395410    22815.29      0.10395444    22815.36      2.8287
   24 -8132.43534339     0.10395410    22815.29      0.10395444    22815.36      2.8287
   25 -8132.43534339     0.10395410    22815.29      0.10395444    22815.36      2.8287
   26 -8132.43534339     0.10395410    22815.29      0.10395444    22815.36      2.8287
   27 -8132.43534339     0.10395410    22815.29      0.10395444    22815.36      2.8287
   28 -8132.43534339     0.10395411    22815.29      0.10395444    22815.36      2.8287
   29 -8132.43389359     0.10540390    23133.48      0.10540424    23133.56      2.8682
   30 -8132.43389359     0.10540390    23133.48      0.10540424    23133.56      2.8682
   31 -8132.43389359     0.10540391    23133.48      0.10540424    23133.56      2.8682
   32 -8132.43389358     0.10540391    23133.48      0.10540425    23133.56      2.8682
   33 -8132.43389358     0.10540391    23133.48      0.10540425    23133.56      2.8682
   34 -8132.43389358     0.10540391    23133.48      0.10540425    23133.56      2.8682
   35 -8132.43389358     0.10540391    23133.49      0.10540425    23133.56      2.8682
   36 -8132.43389358     0.10540392    23133.49      0.10540425    23133.56      2.8682
   37 -8132.43389358     0.10540392    23133.49      0.10540426    23133.56      2.8682
   38 -8132.42106583     0.11823166    25948.85      0.11823200    25948.92      3.2173
   39 -8132.42067770     0.11861979    26034.04      0.11862013    26034.11      3.2278
   40 -8132.42067768     0.11861982    26034.04      0.11862015    26034.11      3.2278
   41 -8132.42067767     0.11861982    26034.04      0.11862016    26034.12      3.2278
   42 -8132.41990072     0.11939677    26204.56      0.11939711    26204.64      3.2490
   43 -8132.41990072     0.11939677    26204.56      0.11939711    26204.64      3.2490
   44 -8132.41990070     0.11939679    26204.57      0.11939713    26204.64      3.2490
   45 -8132.41990070     0.11939679    26204.57      0.11939713    26204.64      3.2490
   46 -8132.41990069     0.11939680    26204.57      0.11939714    26204.64      3.2490

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999857  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.54772317 -0.00000004  0.00000001  0.00000003  0.40824199 -0.00000002  0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000002  0.29653166  0.00000001  0.00000001  0.00000004  0.72119184  0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000  0.00000004  0.55863649  0.00000002 -0.00000001 -0.00000002 -0.38282201 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001  0.62962150
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000001  0.00000002 -0.54771922 -0.40824211  0.00000003  0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000025 -0.00005851 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00020276  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00020737 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00018491 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00020495
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00016640  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000003 -0.00018601  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+          0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00012221
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00001048  0.00001407 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00097733 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001036
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00001048  0.00000000 -0.00000000  0.00000000  0.00001406 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000002  0.76501442

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000029  0.00000416  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.00000002  0.63205769 -0.02905597  0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000001 -0.00011695 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.02250776  0.81598589 -0.00000006 -0.00000001 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.54771792  0.00000004 -0.00000001  0.00000003  0.40825155 -0.00000002  0.00000001

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000004  0.54771558  0.00000002  0.00000001  0.00000002  0.40825110  0.00000001

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00019695

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00020736  0.00000000  0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00013389  0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00011702  0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00009172

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00022558  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00023478 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00001050 -0.00000000  0.00000000  0.00000000  0.00001406  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00001051  0.00000000 -0.00000000 -0.00000000 -0.00001407  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00097731 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000568

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000004 -0.54772429 -0.00000002  0.00000001  0.00000002  0.40824073  0.00000001

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.33551793  0.00000002 -0.00000000  0.00000005  0.69213173 -0.00000004  0.00000001

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.53612697 -0.00000004  0.00000001  0.00000003  0.43315429 -0.00000002  0.00000001

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000025 -0.00005851 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000002 -0.54772268  0.40824130 -0.00000003 -0.00000001 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.13538656

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00021181 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00020736 -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00027650

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000001  0.00019803 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00015469  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000036

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00017197 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00097736 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001603

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00001049  0.00001408 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00001048 -0.00000000 -0.00000000 -0.00000000 -0.00001406 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.67408349  0.00000105 -0.00000001  0.28097880 -0.00000000 -0.00000001 -0.00000001
                          -0.00000000 -0.00000004  0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000007  0.04420376  0.00000000 -0.00000001  0.00000001 -0.00000001 -0.62449751
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000112  0.72499450 -0.00000001 -0.00000001  0.00000001 -0.00000000 -0.12552050
                          -0.00000000 -0.00000006  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.51984941 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.57735011 -0.00000003  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00000001 -0.39277867  0.00000001  0.00000003  0.61568399 -0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000253  0.00000000 -0.00000000  0.00003190  0.00000000

   6    1  |1 1>+          0.00000000 -0.00021218  0.00000000 -0.00000000 -0.00021417 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00015296  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00025050
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00031887  0.00000000 -0.00000000 -0.00008072 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00018460 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00005733 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00004499 -0.00000000  0.00000000  0.00034995  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00020570  0.00000000 -0.00000000 -0.00025470  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

  12    1  |1 1>+          0.00017139 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00028784 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00001254 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.28534934  0.00000000  0.00000001 -0.00000000  0.00000000 -0.57734607  0.00000003 -0.00000001

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000181 -0.00000000  0.00000000 -0.00003740 -0.00000000
                          -0.00000000 -0.00000002  0.00000000  0.28032741 -0.00000001  0.00000003  0.72185540 -0.00000001

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000344 -0.00000000  0.00000000 -0.00001142 -0.00000000
                           0.00000000  0.00000001 -0.00000001 -0.53390203  0.00000001  0.00000001  0.22047411 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.10353806 -0.00000016  0.00000002  0.72292147  0.00000000  0.00000001 -0.00000002

   5    1  |1 0>          -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000013 -0.08080268 -0.00000000  0.00000002 -0.00000001  0.00000001  0.72581639

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00006507 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00029338 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00027632  0.00000000  0.00000000  0.00009896 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00036796  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00011634

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00038074  0.00000000 -0.00000000  0.00012067 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00026265 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000829 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00023729 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00010058

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00021303  0.00000000 -0.00000000 -0.00010220 -0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00001522  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000005 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000106  0.68256844 -0.00000001  0.00000000  0.00000000  0.00000000  0.25968784

   2    1  |1 1>-          0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.11544300  0.00000017 -0.00000002 -0.62853330 -0.00000000 -0.00000000  0.00000001

   3    1  |1 1>-          0.00000000 -0.00000004  0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.72219386 -0.00000112  0.00000002  0.05814715  0.00000000  0.00000001  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000447  0.00000000  0.00000000 -0.00001173 -0.00000000
                           0.00000000 -0.00000002  0.00000001  0.69432689 -0.00000002  0.00000001  0.22638222  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.80519076 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.57735441 -0.00000003  0.00000001

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00020311 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00020056

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00014503  0.00000000  0.00000000  0.00025518 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00002062  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003611  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00019482  0.00000000  0.00000000  0.00024011 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00004553  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00036309

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00020861 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00029126 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00001155  0.00000000 -0.00000000 -0.00034589  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000269  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00017349  0.00000000 -0.00036896 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00030650 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001218
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00016270  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00035943
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00014095 -0.00000000 -0.00000000  0.00000000  0.00031709  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00017349  0.00000000 -0.00000000  0.00000000 -0.00025874 -0.00000000
                          -0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000  0.00000015 -0.00000000

   6    1  |1 1>+         -0.00000007  0.00000011 -0.00000000 -0.47708754  0.00000005  0.16082306  0.00000004  0.00000002
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000022 -0.48795173 -0.00000020 -0.00000011  0.00000000 -0.00000003 -0.00000005  0.35269743
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

   8    1  |1 1>+          0.00000001  0.00000018 -0.43513378  0.00000000 -0.00000003 -0.00000003  0.58229372  0.00000009
                          -0.00000000 -0.00000000  0.00019007 -0.00000000  0.00000000 -0.00000000 -0.00034334  0.00000001

   9    1  |1 1>+          0.62540448 -0.00000028  0.00000003 -0.00000011 -0.17369482 -0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000006  0.00000009 -0.00000000 -0.39158794  0.00000004  0.25625812 -0.00000002  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000001 -0.00000018  0.43773379 -0.00000000  0.00000003 -0.00000002  0.29515836  0.00000005
                           0.00000000  0.00000000 -0.00019120  0.00000000 -0.00000000 -0.00000000 -0.00017404  0.00000001

  12    1  |1 1>+          0.07751790 -0.00000003 -0.00000003  0.00000004  0.48923831 -0.00000002 -0.00000000  0.00000004
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000  0.00000001 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00034504 -0.00000000  0.00000000 -0.00000000  0.00003647 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000
                           0.00000000  0.00000000 -0.00001235  0.00000000 -0.00000000 -0.00000000  0.00006550  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000 -0.00000017  0.00000000
                          -0.00000000 -0.00000000  0.00034674 -0.00000000  0.00000000  0.00000000 -0.00028845 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00017348  0.00000000 -0.00013212  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00017348 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000069

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.48311423  0.00000022 -0.00000001  0.00000007 -0.06964305 -0.00000002 -0.00000000  0.00000004

   7    1  |1 0>          -0.00000000 -0.00000000  0.00021314 -0.00000000  0.00000000  0.00000000  0.00033707 -0.00000001
                          -0.00000001 -0.00000020  0.48795153 -0.00000000  0.00000003 -0.00000003  0.57165161  0.00000008

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000001
                           0.00000014  0.31504826  0.00000013  0.00000007 -0.00000000 -0.00000006 -0.00000010  0.74442794

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000004  0.00000006 -0.00000000 -0.27534823  0.00000003  0.77016684  0.00000005  0.00000007

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.08247226  0.00000004 -0.00000004  0.00000008  0.64932097 -0.00000000 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001
                           0.00000024  0.53074974  0.00000022  0.00000012 -0.00000001  0.00000004  0.00000006 -0.44251736

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000008 -0.00000013  0.00000000  0.55238759 -0.00000006  0.26912178  0.00000003  0.00000003

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000008 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000024  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00017349 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00035929

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00029416  0.00000000  0.00010355 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00018409  0.00000000  0.00030679  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000  0.00000019 -0.00000000
                          -0.00000000 -0.00000000  0.00017349 -0.00000000  0.00000000 -0.00000000  0.00032247  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00020411 -0.00000000  0.00000000 -0.00000000 -0.00028062  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001
                          -0.00000022 -0.49842978 -0.00000021 -0.00000011  0.00000000  0.00000003  0.00000005 -0.35423331

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000007 -0.00000011  0.00000000  0.48795234 -0.00000005  0.49283259  0.00000001  0.00000004

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.56070336  0.00000025  0.00000001  0.00000005 -0.33361375  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.00020356  0.00000000 -0.00000000  0.00000000  0.00027754 -0.00000001
                           0.00000001  0.00000019 -0.46601514  0.00000000 -0.00000003 -0.00000003  0.47069897  0.00000006

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000016  0.36403297  0.00000015  0.00000008 -0.00000000  0.00000001  0.00000000 -0.01133378

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.21970604 -0.00000010  0.00000003 -0.00000008 -0.43898723 -0.00000002 -0.00000000  0.00000004

  12    1  |1 1>-          0.00000000  0.00000000 -0.00017677  0.00000000 -0.00000000 -0.00000000 -0.00009411  0.00000000
                           0.00000001  0.00000017 -0.40469809  0.00000000 -0.00000003  0.00000001 -0.15959909 -0.00000001

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000018  0.00000000 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00004117  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00031805  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00010353  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00029349  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00026624 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000010 -0.00000003 -0.57080536 -0.00000002  0.63949713 -0.00000015  0.00000009 -0.00000003
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00294739  0.00000001  0.00000000  0.00000000

   7    1  |1 1>+          0.00000001  0.45709679 -0.00000002  0.00000001  0.00000015  0.63523714 -0.00000018 -0.00000004
                           0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000001  0.00019436 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000002 -0.00000001  0.00000002  0.28210803 -0.00000003  0.00000003 -0.00000000 -0.25575522
                          -0.00000000 -0.00000000 -0.00000000 -0.00000354 -0.00000000 -0.00000000  0.00000000 -0.00045109

   9    1  |1 1>+          0.11280234 -0.00000001 -0.00000002  0.00000001 -0.00000006  0.00000016  0.57244296 -0.00000008
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000013  0.00000003  0.64496706  0.00000002  0.11873783 -0.00000003  0.00000005 -0.00000002
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00054725  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000004 -0.00000002 -0.00000001  0.57233156  0.00000003  0.00000004  0.00000006  0.62671801
                          -0.00000000 -0.00000000 -0.00000000 -0.00000718  0.00000000  0.00000000 -0.00000000  0.00110537

  12    1  |1 1>+          0.56622314 -0.00000005 -0.00000010  0.00000004  0.00000006 -0.00000001 -0.11961479  0.00000004
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000009  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000 -0.00000007 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00029349 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00038824 -0.00000000 -0.00000000  0.00000000  0.00000001

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00005499  0.00000000 -0.00000000  0.00000000 -0.00000001

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00034698 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00037128 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.57712041 -0.00000005 -0.00000010  0.00000004 -0.00000009  0.00000015  0.56369375 -0.00000006

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000101 -0.00000000  0.00000000 -0.00000000  0.00091108
                           0.00000001  0.00000000  0.00000003 -0.08092400 -0.00000002 -0.00000006 -0.00000006 -0.51656053

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00011728 -0.00000000  0.00000000
                          -0.00000004  0.14875136  0.00000000 -0.00000000 -0.00000009 -0.38331867  0.00000009  0.00000001

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00228638  0.00000001  0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.15544638 -0.00000000 -0.49607840  0.00000012 -0.00000008  0.00000003

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01630562 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000005 -0.11551770 -0.00000005

  11    1  |1 0>          -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00010007  0.00000000 -0.00000000
                           0.00000005  0.24740926 -0.00000002  0.00000001  0.00000008  0.32707328 -0.00000011 -0.00000004

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00050498  0.00000000  0.00000000 -0.00000000
                          -0.00000006 -0.00000002 -0.37892759 -0.00000001 -0.10956491  0.00000003  0.00000002 -0.00000002

  13    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000026  0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000026 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00009350  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00030794  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00020383 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00018396  0.00000000  0.00000000  0.00000000 -0.00000001

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00029350  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001  0.00017712 -0.00000000  0.00000000
                           0.00000006  0.43562192 -0.00000003  0.00000002 -0.00000014 -0.57889666  0.00000015  0.00000002

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00260241 -0.00000001 -0.00000000 -0.00000000
                           0.00000007  0.00000001  0.30074702  0.00000001  0.56464613 -0.00000014  0.00000005 -0.00000002

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.07104862  0.00000001  0.00000001 -0.00000000  0.00000005 -0.00000001 -0.06913152 -0.00000002

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000483 -0.00000000 -0.00000000  0.00000000 -0.00084056
                           0.00000003  0.00000001  0.00000004 -0.38522285  0.00000003 -0.00000000  0.00000003  0.47657797

  10    1  |1 1>-         -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00002639 -0.00000000  0.00000000
                           0.00000006  0.71969264 -0.00000004  0.00000002 -0.00000002 -0.08626817  0.00000005  0.00000003

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.57296159 -0.00000005 -0.00000010  0.00000004  0.00000005 -0.00000017 -0.56756252  0.00000003

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000830 -0.00000000 -0.00000000  0.00000000  0.00038581
                          -0.00000005 -0.00000002 -0.00000003  0.66174471  0.00000000 -0.00000005 -0.00000004 -0.21874495

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000009 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000006

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000  0.00000004  0.00000000  0.00000006 -0.00000000  0.00169279 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000814 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000001 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000812
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000039

   6    1  |1 1>+          0.00000001 -0.00000003  0.00000003  0.00000006  0.10834779  0.00000000 -0.00000012 -0.00000000
                          -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00012830  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.15825224  0.00000003 -0.00000003  0.00000001 -0.00000003  0.00000000  0.00000000 -0.00000000
                          -0.00000994 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000004 -0.00000019  0.55739885  0.00000010 -0.00000009 -0.00000000  0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.12610696  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000009  0.46878931  0.00000009  0.13609022 -0.00000003  0.00000008  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000010 -0.00000004  0.00000009  0.00000011  0.59237533 -0.00000000  0.00000015  0.00000000
                          -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00070148 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000002  0.00000002  0.02974998  0.00000005  0.00000001  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00673070 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000011  0.25994286  0.00000020 -0.59342235  0.00000013 -0.00000009 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.70627669
                          -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.03379167

  14    1  |1 1>+         -0.00000000  0.00000009 -0.00000000  0.00000013 -0.00000000  0.57735888 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000016  0.00000000  0.70710234 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000045
                           0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000935

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000034

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000812 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000010 -0.26648884 -0.00000014  0.19978852 -0.00000008 -0.00000002  0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.08874275  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000010 -0.39224721 -0.00000012  0.00000005 -0.00000000  0.00000000 -0.00000002

   8    1  |1 0>           0.00002647  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.42132088  0.00000011  0.00000005 -0.00000004 -0.00000007 -0.00000000 -0.00000000  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000001  0.00000000  0.00029190 -0.00000000 -0.00000000  0.00000000
                          -0.00000004  0.00000003 -0.00000005 -0.00000008 -0.24650263 -0.00000000  0.00000004 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003  0.28761789 -0.00000005  0.68938107 -0.00000010 -0.00000023 -0.00000000 -0.00000000

  11    1  |1 0>           0.00003740  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.59522660  0.00000015  0.00000001 -0.00000003 -0.00000010  0.00000000  0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000002 -0.00000000 -0.00080911 -0.00000000 -0.00000000 -0.00000000
                           0.00000012 -0.00000003  0.00000010  0.00000012  0.68326408  0.00000000 -0.00000015  0.00000000

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000003

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000000  0.70711122 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000005 -0.00000000  0.00000019 -0.00000000 -0.57735502  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000497  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000796  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000039
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000812

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000001  0.00000000 -0.00000003  0.00000000 -0.00000001  0.00000000 -0.00000000

   6    1  |1 1>-          0.00001999 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.31811719  0.00000009  0.00000006 -0.00000004 -0.00000005  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00039228 -0.00000000  0.00000000 -0.00000000
                          -0.00000006 -0.00000001 -0.00000004 -0.00000002 -0.33126646  0.00000000  0.00000007  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000020  0.74760403  0.00000024 -0.07466372  0.00000006  0.00000006  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000  0.00000000 -0.09510331  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000004  0.00000015 -0.42036123 -0.00000005  0.00000008  0.00000000 -0.00000000  0.00000006

  10    1  |1 1>-         -0.00003674 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.58476635 -0.00000015 -0.00000003  0.00000004  0.00000010 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00376359 -0.00000004  0.32953448 -0.00000003  0.00000009 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.12579679  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000002  0.00000017 -0.55602789 -0.00000013  0.00000008 -0.00000000 -0.00000000  0.00000002

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000005 -0.00000000  0.00000019 -0.00000000  0.57733443 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.03379379
                          -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.70632099

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000015 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000003

 State Sym Spin     / Nr.     41          42          43          44          45          46

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000006
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000813 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000439 -0.00000000 -0.00000000 -0.00000000 -0.00001433 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000829  0.00000000  0.00000000  0.00000000  0.00000762  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000605  0.00000000 -0.00000000 -0.00000000  0.00001508
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000813 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000004
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000017  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000014  0.00000000  0.00000000  0.00000000  0.00000015
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000003 -0.00000000 -0.00000000  0.70708043 -0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00828366  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.75778139  0.00000002  0.00000000  0.00000000 -0.30401175
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000002  0.70711122  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00001005 -0.00000000 -0.00000000 -0.00000000  0.00001279

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000058 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000019  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00001624  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000812 -0.00000000  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000812 -0.00000000 -0.00000000 -0.00000000 -0.00000812 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000015  0.00000000  0.00000000 -0.00000000 -0.00000021

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000014 -0.00000000  0.00000000  0.00000000 -0.00000008

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000013 -0.00000000  0.00000000 -0.00000000 -0.00000011  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000013 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000
                           0.70708905  0.00000000  0.00000000  0.00000001  0.70712451  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000002 -0.70710234 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.64218609  0.00000002  0.00000000 -0.00000000  0.50423927

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000813 -0.00000000 -0.00000000 -0.00000000 -0.00000813 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00001375 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000862 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000812  0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00001609 -0.00000000 -0.00000000  0.00000000 -0.00000230

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000015  0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000006

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000013  0.00000000  0.00000000 -0.00000000  0.00000015  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000013 -0.00000000 -0.00000000 -0.00000000 -0.00000009

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.11560448 -0.00000000 -0.00000000 -0.00000000  0.80828189

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00828314 -0.00000000  0.00000000
                          -0.00000003 -0.00000000 -0.00000000  0.70703609 -0.00000001  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000
                           0.70712451 -0.00000000 -0.00000000 -0.00000001 -0.70708905 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -8132.53929783     -0.00000034       -0.07      0.00000000        0.00      0.0000
     2   1  -8132.49451331      0.04478418     9828.99      0.04478452     9829.07      1.2186
     3   1  -8132.49451331      0.04478418     9828.99      0.04478452     9829.07      1.2186
     4   1  -8132.49451331      0.04478419     9828.99      0.04478452     9829.07      1.2186
     5   1  -8132.49375568      0.04554181     9995.27      0.04554215     9995.35      1.2393
     6   1  -8132.49375568      0.04554181     9995.27      0.04554215     9995.35      1.2393
     7   1  -8132.49375568      0.04554181     9995.27      0.04554215     9995.35      1.2393
     8   1  -8132.49375567      0.04554182     9995.27      0.04554216     9995.35      1.2393
     9   1  -8132.49375567      0.04554183     9995.28      0.04554216     9995.35      1.2393
    10   1  -8132.49261923      0.04667826    10244.69      0.04667860    10244.77      1.2702
    11   1  -8132.49261923      0.04667826    10244.69      0.04667860    10244.77      1.2702
    12   1  -8132.49261922      0.04667827    10244.70      0.04667861    10244.77      1.2702
    13   1  -8132.49261922      0.04667827    10244.70      0.04667861    10244.77      1.2702
    14   1  -8132.49261922      0.04667828    10244.70      0.04667861    10244.77      1.2702
    15   1  -8132.49261921      0.04667828    10244.70      0.04667862    10244.77      1.2702
    16   1  -8132.49261921      0.04667828    10244.70      0.04667862    10244.77      1.2702
    17   1  -8132.43643077      0.10286672    22576.64      0.10286706    22576.71      2.7992
    18   1  -8132.43643077      0.10286672    22576.64      0.10286706    22576.71      2.7992
    19   1  -8132.43643077      0.10286673    22576.64      0.10286706    22576.71      2.7992
    20   1  -8132.43643076      0.10286673    22576.64      0.10286707    22576.71      2.7992
    21   1  -8132.43643076      0.10286673    22576.64      0.10286707    22576.71      2.7992
    22   1  -8132.43534340      0.10395410    22815.29      0.10395443    22815.36      2.8287
    23   1  -8132.43534339      0.10395410    22815.29      0.10395444    22815.36      2.8287
    24   1  -8132.43534339      0.10395410    22815.29      0.10395444    22815.36      2.8287
    25   1  -8132.43534339      0.10395410    22815.29      0.10395444    22815.36      2.8287
    26   1  -8132.43534339      0.10395410    22815.29      0.10395444    22815.36      2.8287
    27   1  -8132.43534339      0.10395410    22815.29      0.10395444    22815.36      2.8287
    28   1  -8132.43534339      0.10395411    22815.29      0.10395444    22815.36      2.8287
    29   1  -8132.43389359      0.10540390    23133.48      0.10540424    23133.56      2.8682
    30   1  -8132.43389359      0.10540390    23133.48      0.10540424    23133.56      2.8682
    31   1  -8132.43389359      0.10540391    23133.48      0.10540424    23133.56      2.8682
    32   1  -8132.43389358      0.10540391    23133.48      0.10540425    23133.56      2.8682
    33   1  -8132.43389358      0.10540391    23133.48      0.10540425    23133.56      2.8682
    34   1  -8132.43389358      0.10540391    23133.48      0.10540425    23133.56      2.8682
    35   1  -8132.43389358      0.10540391    23133.49      0.10540425    23133.56      2.8682
    36   1  -8132.43389358      0.10540392    23133.49      0.10540425    23133.56      2.8682
    37   1  -8132.43389358      0.10540392    23133.49      0.10540426    23133.56      2.8682
    38   1  -8132.42106583      0.11823166    25948.85      0.11823200    25948.92      3.2173
    39   1  -8132.42067770      0.11861979    26034.04      0.11862013    26034.11      3.2278
    40   1  -8132.42067768      0.11861982    26034.04      0.11862015    26034.11      3.2278
    41   1  -8132.42067767      0.11861982    26034.04      0.11862016    26034.12      3.2278
    42   1  -8132.41990072      0.11939677    26204.56      0.11939711    26204.64      3.2490
    43   1  -8132.41990072      0.11939677    26204.56      0.11939711    26204.64      3.2490
    44   1  -8132.41990070      0.11939679    26204.57      0.11939713    26204.64      3.2490
    45   1  -8132.41990070      0.11939679    26204.57      0.11939713    26204.64      3.2490
    46   1  -8132.41990069      0.11939680    26204.57      0.11939714    26204.64      3.2490

 E0 =  -8132.53929749 is the energy of the lowest zeroth-order state
 E1 =  -8132.53929783 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999857  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.54772317 -0.00000004  0.00000001  0.00000003  0.40824199 -0.00000002  0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000  0.00000002  0.29653166  0.00000001  0.00000001  0.00000004  0.72119184  0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000000  0.00000004  0.55863649  0.00000002 -0.00000001 -0.00000002 -0.38282201 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001  0.62962150
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000001  0.00000002 -0.54771922 -0.40824211  0.00000003  0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000025 -0.00005851 -0.00000000 -0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00020276  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+       0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00020737 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00018491 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00020495
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00016640  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000003 -0.00018601  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000

 13  1    12    1  |1 1>+       0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00012221
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00001048  0.00001407 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1    14    1  |1 1>+      -0.00097733 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001036
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000000 -0.00001048  0.00000000 -0.00000000  0.00000000  0.00001406 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000002  0.76501442

 18  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000029  0.00000416  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.00000002  0.63205769 -0.02905597  0.00000000  0.00000000  0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000001 -0.00011695 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.02250776  0.81598589 -0.00000006 -0.00000001 -0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.54771792  0.00000004 -0.00000001  0.00000003  0.40825155 -0.00000002  0.00000001

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000004  0.54771558  0.00000002  0.00000001  0.00000002  0.40825110  0.00000001

 22  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00019695

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00020736  0.00000000  0.00000000  0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00013389  0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00011702  0.00000000 -0.00000000

 26  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00009172

 27  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000  0.00022558  0.00000000

 28  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00023478 -0.00000000  0.00000000

 29  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00001050 -0.00000000  0.00000000  0.00000000  0.00001406  0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00001051  0.00000000 -0.00000000 -0.00000000 -0.00001407  0.00000000 -0.00000000

 31  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00097731 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000568

 32  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000004 -0.54772429 -0.00000002  0.00000001  0.00000002  0.40824073  0.00000001

 33  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.33551793  0.00000002 -0.00000000  0.00000005  0.69213173 -0.00000004  0.00000001

 34  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.53612697 -0.00000004  0.00000001  0.00000003  0.43315429 -0.00000002  0.00000001

 35  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000025 -0.00005851 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000002 -0.54772268  0.40824130 -0.00000003 -0.00000001 -0.00000000

 36  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.13538656

 37  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00021181 -0.00000000

 38  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00020736 -0.00000000  0.00000000

 39  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000003  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00027650

 40  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000001  0.00019803 -0.00000000 -0.00000000 -0.00000000

 41  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000  0.00000000  0.00015469  0.00000000

 42  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000036

 43  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000004  0.00017197 -0.00000000 -0.00000000 -0.00000000

 44  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00097736 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001603

 45  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00001049  0.00001408 -0.00000000 -0.00000000 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00001048 -0.00000000 -0.00000000 -0.00000000 -0.00001406 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000 -0.67408349  0.00000105 -0.00000001  0.28097880 -0.00000000 -0.00000001 -0.00000001
                               -0.00000000 -0.00000004  0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     2    1  |1 1>+       0.00000000  0.00000007  0.04420376  0.00000000 -0.00000001  0.00000001 -0.00000001 -0.62449751
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     3    1  |1 1>+      -0.00000000  0.00000112  0.72499450 -0.00000001 -0.00000001  0.00000001 -0.00000000 -0.12552050
                               -0.00000000 -0.00000006  0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.51984941 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.57735011 -0.00000003  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00000001 -0.39277867  0.00000001  0.00000003  0.61568399 -0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000253  0.00000000 -0.00000000  0.00003190  0.00000000

  7  1     6    1  |1 1>+       0.00000000 -0.00021218  0.00000000 -0.00000000 -0.00021417 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00015296  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00025050
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00031887  0.00000000 -0.00000000 -0.00008072 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00018460 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00005733 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00000000  0.00004499 -0.00000000  0.00000000  0.00034995  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00020570  0.00000000 -0.00000000 -0.00025470  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

 13  1    12    1  |1 1>+       0.00017139 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00028784 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.00001254 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.28534934  0.00000000  0.00000001 -0.00000000  0.00000000 -0.57734607  0.00000003 -0.00000001

 18  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000181 -0.00000000  0.00000000 -0.00003740 -0.00000000
                               -0.00000000 -0.00000002  0.00000000  0.28032741 -0.00000001  0.00000003  0.72185540 -0.00000001

 19  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000344 -0.00000000  0.00000000 -0.00001142 -0.00000000
                                0.00000000  0.00000001 -0.00000001 -0.53390203  0.00000001  0.00000001  0.22047411 -0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.10353806 -0.00000016  0.00000002  0.72292147  0.00000000  0.00000001 -0.00000002

 21  1     5    1  |1 0>       -0.00000000 -0.00000001  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000013 -0.08080268 -0.00000000  0.00000002 -0.00000001  0.00000001  0.72581639

 22  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00006507 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00029338 -0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00027632  0.00000000  0.00000000  0.00009896 -0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00036796  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00011634

 25  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00038074  0.00000000 -0.00000000  0.00012067 -0.00000000 -0.00000000 -0.00000000

 26  1    10    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00026265 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000829 -0.00000000  0.00000000

 27  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00023729 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00010058

 28  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00021303  0.00000000 -0.00000000 -0.00010220 -0.00000000 -0.00000000  0.00000000

 29  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001

 30  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000

 31  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00001522  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 32  1     1    1  |1 1>-      -0.00000000  0.00000005 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000106  0.68256844 -0.00000001  0.00000000  0.00000000  0.00000000  0.25968784

 33  1     2    1  |1 1>-       0.00000000  0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.11544300  0.00000017 -0.00000002 -0.62853330 -0.00000000 -0.00000000  0.00000001

 34  1     3    1  |1 1>-       0.00000000 -0.00000004  0.00000006 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.72219386 -0.00000112  0.00000002  0.05814715  0.00000000  0.00000001  0.00000000

 35  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000447  0.00000000  0.00000000 -0.00001173 -0.00000000
                                0.00000000 -0.00000002  0.00000001  0.69432689 -0.00000002  0.00000001  0.22638222  0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.80519076 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.57735441 -0.00000003  0.00000001

 37  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00020311 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00020056

 38  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00014503  0.00000000  0.00000000  0.00025518 -0.00000000 -0.00000000 -0.00000000

 39  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00002062  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003611  0.00000000 -0.00000000

 40  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00019482  0.00000000  0.00000000  0.00024011 -0.00000000

 41  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00004553  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00036309

 42  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00020861 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00029126 -0.00000000  0.00000000

 43  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00001155  0.00000000 -0.00000000 -0.00034589  0.00000000

 44  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000269  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000

 46  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00017349  0.00000000 -0.00036896 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.00030650 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001218
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+       0.00000000  0.00016270  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00035943
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     4    1  |1 1>+       0.00014095 -0.00000000 -0.00000000  0.00000000  0.00031709  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00017349  0.00000000 -0.00000000  0.00000000 -0.00025874 -0.00000000
                               -0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000  0.00000015 -0.00000000

  7  1     6    1  |1 1>+      -0.00000007  0.00000011 -0.00000000 -0.47708754  0.00000005  0.16082306  0.00000004  0.00000002
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     7    1  |1 1>+      -0.00000022 -0.48795173 -0.00000020 -0.00000011  0.00000000 -0.00000003 -0.00000005  0.35269743
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

  9  1     8    1  |1 1>+       0.00000001  0.00000018 -0.43513378  0.00000000 -0.00000003 -0.00000003  0.58229372  0.00000009
                               -0.00000000 -0.00000000  0.00019007 -0.00000000  0.00000000 -0.00000000 -0.00034334  0.00000001

 10  1     9    1  |1 1>+       0.62540448 -0.00000028  0.00000003 -0.00000011 -0.17369482 -0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    10    1  |1 1>+      -0.00000006  0.00000009 -0.00000000 -0.39158794  0.00000004  0.25625812 -0.00000002  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000001 -0.00000018  0.43773379 -0.00000000  0.00000003 -0.00000002  0.29515836  0.00000005
                                0.00000000  0.00000000 -0.00019120  0.00000000 -0.00000000 -0.00000000 -0.00017404  0.00000001

 13  1    12    1  |1 1>+       0.07751790 -0.00000003 -0.00000003  0.00000004  0.48923831 -0.00000002 -0.00000000  0.00000004
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000008  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000  0.00000001 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00034504 -0.00000000  0.00000000 -0.00000000  0.00003647 -0.00000000 -0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000
                                0.00000000  0.00000000 -0.00001235  0.00000000 -0.00000000 -0.00000000  0.00006550  0.00000000

 19  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000 -0.00000017  0.00000000
                               -0.00000000 -0.00000000  0.00034674 -0.00000000  0.00000000  0.00000000 -0.00028845 -0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00017348  0.00000000 -0.00013212  0.00000000 -0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00017348 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000069

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.48311423  0.00000022 -0.00000001  0.00000007 -0.06964305 -0.00000002 -0.00000000  0.00000004

 23  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00021314 -0.00000000  0.00000000  0.00000000  0.00033707 -0.00000001
                               -0.00000001 -0.00000020  0.48795153 -0.00000000  0.00000003 -0.00000003  0.57165161  0.00000008

 24  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000001
                                0.00000014  0.31504826  0.00000013  0.00000007 -0.00000000 -0.00000006 -0.00000010  0.74442794

 25  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000004  0.00000006 -0.00000000 -0.27534823  0.00000003  0.77016684  0.00000005  0.00000007

 26  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.08247226  0.00000004 -0.00000004  0.00000008  0.64932097 -0.00000000 -0.00000000  0.00000000

 27  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001
                                0.00000024  0.53074974  0.00000022  0.00000012 -0.00000001  0.00000004  0.00000006 -0.44251736

 28  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000008 -0.00000013  0.00000000  0.55238759 -0.00000006  0.26912178  0.00000003  0.00000003

 29  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004

 30  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000008 -0.00000000 -0.00000000

 31  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000024  0.00000000 -0.00000000  0.00000000

 32  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00017349 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00035929

 33  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00029416  0.00000000  0.00010355 -0.00000000  0.00000000

 34  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00018409  0.00000000  0.00030679  0.00000000  0.00000000

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000  0.00000019 -0.00000000
                               -0.00000000 -0.00000000  0.00017349 -0.00000000  0.00000000 -0.00000000  0.00032247  0.00000000

 36  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00020411 -0.00000000  0.00000000 -0.00000000 -0.00028062  0.00000000  0.00000000 -0.00000000

 37  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000001
                               -0.00000022 -0.49842978 -0.00000021 -0.00000011  0.00000000  0.00000003  0.00000005 -0.35423331

 38  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000007 -0.00000011  0.00000000  0.48795234 -0.00000005  0.49283259  0.00000001  0.00000004

 39  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.56070336  0.00000025  0.00000001  0.00000005 -0.33361375  0.00000000  0.00000000 -0.00000000

 40  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00020356  0.00000000 -0.00000000  0.00000000  0.00027754 -0.00000001
                                0.00000001  0.00000019 -0.46601514  0.00000000 -0.00000003 -0.00000003  0.47069897  0.00000006

 41  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000016  0.36403297  0.00000015  0.00000008 -0.00000000  0.00000001  0.00000000 -0.01133378

 42  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.21970604 -0.00000010  0.00000003 -0.00000008 -0.43898723 -0.00000002 -0.00000000  0.00000004

 43  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00017677  0.00000000 -0.00000000 -0.00000000 -0.00009411  0.00000000
                                0.00000001  0.00000017 -0.40469809  0.00000000 -0.00000003  0.00000001 -0.15959909 -0.00000001

 44  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000018  0.00000000 -0.00000000  0.00000000  0.00000009  0.00000000  0.00000000  0.00000000

 45  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000007 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00004117  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.00031805  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     3    1  |1 1>+      -0.00000000 -0.00010353  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     4    1  |1 1>+      -0.00029349  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00026624 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     6    1  |1 1>+      -0.00000010 -0.00000003 -0.57080536 -0.00000002  0.63949713 -0.00000015  0.00000009 -0.00000003
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00294739  0.00000001  0.00000000  0.00000000

  8  1     7    1  |1 1>+       0.00000001  0.45709679 -0.00000002  0.00000001  0.00000015  0.63523714 -0.00000018 -0.00000004
                                0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000001  0.00019436 -0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.00000002 -0.00000001  0.00000002  0.28210803 -0.00000003  0.00000003 -0.00000000 -0.25575522
                               -0.00000000 -0.00000000 -0.00000000 -0.00000354 -0.00000000 -0.00000000  0.00000000 -0.00045109

 10  1     9    1  |1 1>+       0.11280234 -0.00000001 -0.00000002  0.00000001 -0.00000006  0.00000016  0.57244296 -0.00000008
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00000013  0.00000003  0.64496706  0.00000002  0.11873783 -0.00000003  0.00000005 -0.00000002
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00054725  0.00000000  0.00000000  0.00000000

 12  1    11    1  |1 1>+      -0.00000004 -0.00000002 -0.00000001  0.57233156  0.00000003  0.00000004  0.00000006  0.62671801
                               -0.00000000 -0.00000000 -0.00000000 -0.00000718  0.00000000  0.00000000 -0.00000000  0.00110537

 13  1    12    1  |1 1>+       0.56622314 -0.00000005 -0.00000010  0.00000004  0.00000006 -0.00000001 -0.11961479  0.00000004
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1    14    1  |1 1>+      -0.00000009  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000012 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000000 -0.00000000 -0.00000007 -0.00000000  0.00000002 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00029349 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00038824 -0.00000000 -0.00000000  0.00000000  0.00000001

 19  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00005499  0.00000000 -0.00000000  0.00000000 -0.00000001

 20  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00034698 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00037128 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.57712041 -0.00000005 -0.00000010  0.00000004 -0.00000009  0.00000015  0.56369375 -0.00000006

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000101 -0.00000000  0.00000000 -0.00000000  0.00091108
                                0.00000001  0.00000000  0.00000003 -0.08092400 -0.00000002 -0.00000006 -0.00000006 -0.51656053

 24  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00011728 -0.00000000  0.00000000
                               -0.00000004  0.14875136  0.00000000 -0.00000000 -0.00000009 -0.38331867  0.00000009  0.00000001

 25  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00228638  0.00000001  0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.15544638 -0.00000000 -0.49607840  0.00000012 -0.00000008  0.00000003

 26  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01630562 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000005 -0.11551770 -0.00000005

 27  1    11    1  |1 0>       -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00010007  0.00000000 -0.00000000
                                0.00000005  0.24740926 -0.00000002  0.00000001  0.00000008  0.32707328 -0.00000011 -0.00000004

 28  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00050498  0.00000000  0.00000000 -0.00000000
                               -0.00000006 -0.00000002 -0.37892759 -0.00000001 -0.10956491  0.00000003  0.00000002 -0.00000002

 29  1    13    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000026  0.00000000 -0.00000000  0.00000000  0.00000008 -0.00000000 -0.00000000

 30  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000026 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000

 31  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00009350  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

 33  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00030794  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00020383 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000

 35  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00018396  0.00000000  0.00000000  0.00000000 -0.00000001

 36  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00029350  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

 37  1     6    1  |1 1>-      -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000001  0.00017712 -0.00000000  0.00000000
                                0.00000006  0.43562192 -0.00000003  0.00000002 -0.00000014 -0.57889666  0.00000015  0.00000002

 38  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00260241 -0.00000001 -0.00000000 -0.00000000
                                0.00000007  0.00000001  0.30074702  0.00000001  0.56464613 -0.00000014  0.00000005 -0.00000002

 39  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.07104862  0.00000001  0.00000001 -0.00000000  0.00000005 -0.00000001 -0.06913152 -0.00000002

 40  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000483 -0.00000000 -0.00000000  0.00000000 -0.00084056
                                0.00000003  0.00000001  0.00000004 -0.38522285  0.00000003 -0.00000000  0.00000003  0.47657797

 41  1    10    1  |1 1>-      -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00002639 -0.00000000  0.00000000
                                0.00000006  0.71969264 -0.00000004  0.00000002 -0.00000002 -0.08626817  0.00000005  0.00000003

 42  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.57296159 -0.00000005 -0.00000010  0.00000004  0.00000005 -0.00000017 -0.56756252  0.00000003

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000830 -0.00000000 -0.00000000  0.00000000  0.00038581
                               -0.00000005 -0.00000002 -0.00000003  0.66174471  0.00000000 -0.00000005 -0.00000004 -0.21874495

 44  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000009 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000

 45  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000006

 46  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000007  0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000  0.00000004  0.00000000  0.00000006 -0.00000000  0.00169279 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000814 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+      -0.00000003  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000  0.00000001 -0.00000000  0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000812
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000039

  7  1     6    1  |1 1>+       0.00000001 -0.00000003  0.00000003  0.00000006  0.10834779  0.00000000 -0.00000012 -0.00000000
                               -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00012830  0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+       0.15825224  0.00000003 -0.00000003  0.00000001 -0.00000003  0.00000000  0.00000000 -0.00000000
                               -0.00000994 -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.00000004 -0.00000019  0.55739885  0.00000010 -0.00000009 -0.00000000  0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.12610696  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000009  0.46878931  0.00000009  0.13609022 -0.00000003  0.00000008  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00000010 -0.00000004  0.00000009  0.00000011  0.59237533 -0.00000000  0.00000015  0.00000000
                               -0.00000000 -0.00000000 -0.00000002  0.00000000  0.00070148 -0.00000000 -0.00000000  0.00000000

 12  1    11    1  |1 1>+       0.00000002  0.00000002  0.02974998  0.00000005  0.00000001  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00673070 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1    12    1  |1 1>+      -0.00000011  0.25994286  0.00000020 -0.59342235  0.00000013 -0.00000009 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000009 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.70627669
                               -0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000 -0.03379167

 15  1    14    1  |1 1>+      -0.00000000  0.00000009 -0.00000000  0.00000013 -0.00000000  0.57735888 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000016  0.00000000  0.70710234 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000045
                                0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000935

 19  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000034

 20  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000812 -0.00000000

 21  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000010 -0.26648884 -0.00000014  0.19978852 -0.00000008 -0.00000002  0.00000000 -0.00000000

 23  1     7    1  |1 0>        0.00000000  0.00000000 -0.08874275  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000010 -0.39224721 -0.00000012  0.00000005 -0.00000000  0.00000000 -0.00000002

 24  1     8    1  |1 0>        0.00002647  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.42132088  0.00000011  0.00000005 -0.00000004 -0.00000007 -0.00000000 -0.00000000  0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000001  0.00000000  0.00029190 -0.00000000 -0.00000000  0.00000000
                               -0.00000004  0.00000003 -0.00000005 -0.00000008 -0.24650263 -0.00000000  0.00000004 -0.00000000

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003  0.28761789 -0.00000005  0.68938107 -0.00000010 -0.00000023 -0.00000000 -0.00000000

 27  1    11    1  |1 0>        0.00003740  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.59522660  0.00000015  0.00000001 -0.00000003 -0.00000010  0.00000000  0.00000000  0.00000000

 28  1    12    1  |1 0>        0.00000000  0.00000000  0.00000002 -0.00000000 -0.00080911 -0.00000000 -0.00000000 -0.00000000
                                0.00000012 -0.00000003  0.00000010  0.00000012  0.68326408  0.00000000 -0.00000015  0.00000000

 29  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000003

 30  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00000000  0.70711122 -0.00000000

 31  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000005 -0.00000000  0.00000019 -0.00000000 -0.57735502  0.00000000 -0.00000000

 32  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 33  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004  0.00000000 -0.00000497  0.00000000

 34  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000796  0.00000000

 35  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000039
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000812

 36  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000001  0.00000000 -0.00000003  0.00000000 -0.00000001  0.00000000 -0.00000000

 37  1     6    1  |1 1>-       0.00001999 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.31811719  0.00000009  0.00000006 -0.00000004 -0.00000005  0.00000000 -0.00000000  0.00000000

 38  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00039228 -0.00000000  0.00000000 -0.00000000
                               -0.00000006 -0.00000001 -0.00000004 -0.00000002 -0.33126646  0.00000000  0.00000007  0.00000000

 39  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000020  0.74760403  0.00000024 -0.07466372  0.00000006  0.00000006  0.00000000 -0.00000000

 40  1     9    1  |1 1>-       0.00000000  0.00000000 -0.09510331  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000004  0.00000015 -0.42036123 -0.00000005  0.00000008  0.00000000 -0.00000000  0.00000006

 41  1    10    1  |1 1>-      -0.00003674 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.58476635 -0.00000015 -0.00000003  0.00000004  0.00000010 -0.00000000 -0.00000000  0.00000000

 42  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00376359 -0.00000004  0.32953448 -0.00000003  0.00000009 -0.00000000  0.00000000

 43  1    12    1  |1 1>-       0.00000000  0.00000000 -0.12579679  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000002  0.00000017 -0.55602789 -0.00000013  0.00000008 -0.00000000 -0.00000000  0.00000002

 44  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000005 -0.00000000  0.00000019 -0.00000000  0.57733443 -0.00000000 -0.00000000

 45  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.03379379
                               -0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000  0.70632099

 46  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000015 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000003


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000006
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000813 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     2    1  |1 1>+       0.00000439 -0.00000000 -0.00000000 -0.00000000 -0.00001433 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+       0.00000829  0.00000000  0.00000000  0.00000000  0.00000762  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00000000  0.00000605  0.00000000 -0.00000000 -0.00000000  0.00001508
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000813 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     7    1  |1 1>+       0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000000 -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000004
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000017  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1    12    1  |1 1>+       0.00000000  0.00000014  0.00000000  0.00000000  0.00000000  0.00000015
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000003 -0.00000000 -0.00000000  0.70708043 -0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00828366  0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.00000000  0.75778139  0.00000002  0.00000000  0.00000000 -0.30401175
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000 -0.00000002  0.70711122  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00001005 -0.00000000 -0.00000000 -0.00000000  0.00001279

 18  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000058 -0.00000000  0.00000000

 19  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000019  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00001624  0.00000000 -0.00000000

 20  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000812 -0.00000000  0.00000000  0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000812 -0.00000000 -0.00000000 -0.00000000 -0.00000812 -0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000015  0.00000000  0.00000000 -0.00000000 -0.00000021

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000015 -0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000007 -0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000  0.00000000

 26  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000014 -0.00000000  0.00000000  0.00000000 -0.00000008

 27  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000013 -0.00000000  0.00000000 -0.00000000 -0.00000011  0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000013 -0.00000000  0.00000000 -0.00000000

 29  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002 -0.00000000
                                0.70708905  0.00000000  0.00000000  0.00000001  0.70712451  0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000002 -0.70710234 -0.00000000  0.00000000  0.00000000

 31  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.64218609  0.00000002  0.00000000 -0.00000000  0.50423927

 32  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000813 -0.00000000 -0.00000000 -0.00000000 -0.00000813 -0.00000000

 33  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00001375 -0.00000000  0.00000000  0.00000000

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000862 -0.00000000  0.00000000  0.00000000

 35  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000812  0.00000000 -0.00000000

 36  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00001609 -0.00000000 -0.00000000  0.00000000 -0.00000230

 37  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000015  0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000000

 38  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000

 39  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000006

 40  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000

 41  1    10    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000013  0.00000000  0.00000000 -0.00000000  0.00000015  0.00000000

 42  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000013 -0.00000000 -0.00000000 -0.00000000 -0.00000009

 43  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000

 44  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.11560448 -0.00000000 -0.00000000 -0.00000000  0.80828189

 45  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00828314 -0.00000000  0.00000000
                               -0.00000003 -0.00000000 -0.00000000  0.70703609 -0.00000001  0.00000000

 46  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000
                                0.70712451 -0.00000000 -0.00000000 -0.00000001 -0.70708905 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%   16.67%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    8.79%    0.00%    0.00%    0.00%   52.01%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%   31.21%    0.00%    0.00%    0.00%   14.66%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   39.64%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   30.00%   16.67%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   58.52%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%   39.95%    0.08%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.05%   66.58%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%   16.67%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%   16.67%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%   16.67%    0.00%
 33  1     2    1  |1 1>-         0.00%   11.26%    0.00%    0.00%    0.00%   47.90%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%   28.74%    0.00%    0.00%    0.00%   18.76%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%   30.00%   16.67%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.83%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%   45.44%    0.00%    0.00%    7.89%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.20%    0.00%    0.00%    0.00%    0.00%   39.00%
  4  1     3    1  |1 1>+         0.00%    0.00%   52.56%    0.00%    0.00%    0.00%    0.00%    1.58%
  5  1     4    1  |1 1>+        27.02%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   15.43%    0.00%    0.00%   37.91%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          8.14%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    7.86%    0.00%    0.00%   52.11%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%   28.51%    0.00%    0.00%    4.86%    0.00%
 20  1     4    1  |1 0>          0.00%    1.07%    0.00%    0.00%   52.26%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.65%    0.00%    0.00%    0.00%    0.00%   52.68%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%   46.59%    0.00%    0.00%    0.00%    0.00%    6.74%
 33  1     2    1  |1 1>-         0.00%    1.33%    0.00%    0.00%   39.51%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%   52.16%    0.00%    0.00%    0.34%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%   48.21%    0.00%    0.00%    5.12%    0.00%
 36  1     5    1  |1 1>-        64.83%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%   22.76%    0.00%    2.59%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%   23.81%    0.00%    0.00%    0.00%    0.00%    0.00%   12.44%
  9  1     8    1  |1 1>+         0.00%    0.00%   18.93%    0.00%    0.00%    0.00%   33.91%    0.00%
 10  1     9    1  |1 1>+        39.11%    0.00%    0.00%    0.00%    3.02%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%   15.33%    0.00%    6.57%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%   19.16%    0.00%    0.00%    0.00%    8.71%    0.00%
 13  1    12    1  |1 1>+         0.60%    0.00%    0.00%    0.00%   23.94%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>         23.34%    0.00%    0.00%    0.00%    0.49%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%   23.81%    0.00%    0.00%    0.00%   32.68%    0.00%
 24  1     8    1  |1 0>          0.00%    9.93%    0.00%    0.00%    0.00%    0.00%    0.00%   55.42%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    7.58%    0.00%   59.32%    0.00%    0.00%
 26  1    10    1  |1 0>          0.68%    0.00%    0.00%    0.00%   42.16%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%   28.17%    0.00%    0.00%    0.00%    0.00%    0.00%   19.58%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%   30.51%    0.00%    7.24%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%   24.84%    0.00%    0.00%    0.00%    0.00%    0.00%   12.55%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%   23.81%    0.00%   24.29%    0.00%    0.00%
 39  1     8    1  |1 1>-        31.44%    0.00%    0.00%    0.00%   11.13%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%   21.72%    0.00%    0.00%    0.00%   22.16%    0.00%
 41  1    10    1  |1 1>-         0.00%   13.25%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 42  1    11    1  |1 1>-         4.83%    0.00%    0.00%    0.00%   19.27%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%   16.38%    0.00%    0.00%    0.00%    2.55%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%   32.58%    0.00%   40.90%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%   20.89%    0.00%    0.00%    0.00%   40.35%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    7.96%    0.00%    0.00%    0.00%    6.54%
 10  1     9    1  |1 1>+         1.27%    0.00%    0.00%    0.00%    0.00%    0.00%   32.77%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%   41.60%    0.00%    1.41%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%   32.76%    0.00%    0.00%    0.00%   39.28%
 13  1    12    1  |1 1>+        32.06%    0.00%    0.00%    0.00%    0.00%    0.00%    1.43%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>         33.31%    0.00%    0.00%    0.00%    0.00%    0.00%   31.78%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.65%    0.00%    0.00%    0.00%   26.68%
 24  1     8    1  |1 0>          0.00%    2.21%    0.00%    0.00%    0.00%   14.69%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    2.42%    0.00%   24.61%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    1.33%    0.00%
 27  1    11    1  |1 0>          0.00%    6.12%    0.00%    0.00%    0.00%   10.70%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%   14.36%    0.00%    1.20%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%   18.98%    0.00%    0.00%    0.00%   33.51%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    9.04%    0.00%   31.88%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.50%    0.00%    0.00%    0.00%    0.00%    0.00%    0.48%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%   14.84%    0.00%    0.00%    0.00%   22.71%
 41  1    10    1  |1 1>-         0.00%   51.80%    0.00%    0.00%    0.00%    0.74%    0.00%    0.00%
 42  1    11    1  |1 1>-        32.83%    0.00%    0.00%    0.00%    0.00%    0.00%   32.21%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%   43.79%    0.00%    0.00%    0.00%    4.78%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    1.17%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         2.50%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%   32.66%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%   21.98%    0.00%    1.85%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   35.09%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    6.76%    0.00%   35.22%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    7.10%    0.00%    3.99%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%   16.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>         17.75%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    6.08%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    8.27%    0.00%   47.52%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>         35.43%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%   46.69%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-        10.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   10.97%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%   55.89%    0.00%    0.56%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%   18.57%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-        34.20%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%   10.86%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%   32.50%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%   57.42%    0.00%    0.00%    0.00%    9.24%
 16  1    15    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>         50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%   41.24%    0.00%    0.00%    0.00%   25.43%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    1.34%    0.00%    0.00%    0.00%   65.33%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 46  1    15    1  |1 1>-        50.00%    0.00%    0.00%    0.00%   50.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      240.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      306.68       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5295.79   4758.15     73.15    446.31     10.82      3.05      0.04      3.96
 REAL TIME  *      5390.76 SEC
 DISK USED  *       377.09 MB (local),        6.26 GB (total)
 SF USED    *         3.14 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-X2C energy=  -8132.419900693099

              CI              CI           MULTI         RHF-SCF
  -8132.38031349  -8132.49940180  -8131.90722026  -8131.99671350
 **********************************************************************************************************************************
 Molpro calculation terminated
