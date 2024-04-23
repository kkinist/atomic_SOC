
 Working directory              : /wrk/irikura/molpro.ZRKB09a1Na/
 Global scratch directory       : /wrk/irikura/molpro.ZRKB09a1Na/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ZRKB09a1Na/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   16
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.00 sec
 ***,Ba SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVQZ-X2C
 
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
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.14 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Ba SO-                                                                        
  64 bit mpp version                                                                     DATE: 22-Mar-24          TIME: 10:33:56  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  16000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BA     S aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BA     P aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BA     D aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BA     F aug-cc-pwCVQZ-X      selected for orbital group  1
 Library entry BA     G aug-cc-pwCVQZ-X      selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         410
 NUMBER OF SYMMETRY AOS:          344
 NUMBER OF CONTRACTIONS:          168   (   90Ag  +   78Au  )
 NUMBER OF INNER CORE ORBITALS:    23   (   14Ag  +    9Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     101.712 MB (compressed) written to integral file ( 13.0%)

     Node minimum: 1.311 MB, node maximum: 13.631 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    3177408.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    3177408      RECORD LENGTH: 524288

 Memory used in sort:       3.73 MW

 SORT1 READ    97437068. AND WROTE      607875. INTEGRALS IN      2 RECORDS. CPU TIME:     0.41 SEC, REAL TIME:     0.43 SEC
 SORT2 READ     9833613. AND WROTE    50984466. INTEGRALS IN    784 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC

 Node minimum:     3177408.  Node maximum:     3193734. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.265E-04 0.446E-04 0.881E-04 0.881E-04 0.881E-04 0.881E-04 0.881E-04 0.112E-02
         2 0.244E-04 0.244E-04 0.244E-04 0.254E-03 0.254E-03 0.254E-03 0.464E-02 0.464E-02


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        11.43     11.19
 REAL TIME  *        12.40 SEC
 DISK USED  *        30.60 MB (local),      687.64 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  16  12

 NELEC=   56   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -8131.99704799   -8131.99704799     0.00D+00     0.12D+00     0     0       0.01      0.04    start
   2    -8131.99704799      -0.00000000     0.38D-06     0.21D-04     1     0       0.02      0.06    diag
   3    -8131.99704799      -0.00000000     0.45D-07     0.62D-05     2     0       0.02      0.08    diag
   4    -8131.99704799       0.00000000     0.15D-07     0.21D-05     3     0       0.02      0.10    diag
   5    -8131.99704799       0.00000000     0.43D-08     0.84D-06     0     0       0.03      0.13    diag

 Final occupancy:  16  12

 !RHF STATE 1.1 Energy              -8131.997047986805
  RHF One-electron energy            -11100.0298041081    
  RHF Two-electron energy            2968.032756121266
  RHF Kinetic energy                 9672.875295624146
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.840701115176

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.74842     1  1  s    1.00000
    2.1     2.00000  -222.46061     1  2  s    1.00000
    3.1     2.00000   -48.63406     1  3  s    1.00018
    4.1     2.00000   -29.94644     1  1  d0  -0.66670    1  1  d2+  0.74533
    5.1     2.00000   -29.94644     1  1  d1+  1.00000
    6.1     2.00000   -29.94644     1  1  d2-  1.00000
    7.1     2.00000   -29.94644     1  1  d0   0.74533    1  1  d2+  0.66669
    8.1     2.00000   -29.94644     1  1  d1-  1.00000
    9.1     2.00000   -10.25509     1  4  s    1.00070
   10.1     2.00000    -3.85433     1  2  d0  -0.66459    1  2  d2+  0.74705
   11.1     2.00000    -3.85433     1  2  d1+  0.99988
   12.1     2.00000    -3.85433     1  2  d2-  0.99988
   13.1     2.00000    -3.85433     1  2  d1-  0.99988
   14.1     2.00000    -3.85433     1  2  d0   0.74705    1  2  d2+  0.66459
   15.1     2.00000    -1.60335     1  5  s    0.99936
   16.1     2.00000    -0.16308     1  6  s    0.99631
    1.2     2.00000  -199.39475     1  1  px   0.99988
    2.2     2.00000  -199.39475     1  1  py   0.99952
    3.2     2.00000  -199.39475     1  1  pz   0.99941
    4.2     2.00000   -41.04463     1  2  py   1.00001
    5.2     2.00000   -41.04463     1  2  pz   1.00001
    6.2     2.00000   -41.04463     1  2  px   1.00001
    7.2     2.00000    -7.69921     1  3  py   1.00015
    8.2     2.00000    -7.69921     1  3  pz   1.00015
    9.2     2.00000    -7.69921     1  3  px   1.00015
   10.2     2.00000    -0.89930     1  4  py   0.99978
   11.2     2.00000    -0.89930     1  4  pz   0.99978
   12.2     2.00000    -0.89930     1  4  px   0.99978


 HOMO     16.1    -0.163085 =      -4.4378eV
 LUMO     13.2     0.006698 =       0.1823eV
 LUMO-HOMO         0.169783 =       4.6200eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.27       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.60       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        11.56      0.13     11.19
 REAL TIME  *        12.54 SEC
 DISK USED  *        31.61 MB (local),      703.79 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (   15   12)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:     134 (   68   66)

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             1
 Number of CSFs:              28   (49 determinants, 49 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            15
 Number of CSFs:              21   (21 determinants, 21 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.473D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.178D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.108D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.473D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.310D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.471D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.826D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.307D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.269D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.471D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.310D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.406D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.515D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.363D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.301D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 3 2 6 1 5   4 3 6 2 1 1 1 5 3 6   4 2 1 4 2 6 3 5 4 6   2 3 5 1 711 8141013
                                       1215 9 6 4 2 5 3 112  11 814101513 7 9 6 4   2 5 3 11013151412 8  11 7 9 6 4 5 3 2 1 4
                                        6 5 3 2 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.175D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.328D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.439D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.323D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.323D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.108D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.871D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.229D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.607D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.430D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.279D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 2 3 1 2   3 1 3 2 1 3 2 1 2 3   1 9 7 6 8 510 4 2 1   3 510 8 4 9 7 6 2 1
                                        3 4 6 9 7 510 8 2 1   3 4 5 6 9 710 8 4 5   6 9 710 8 2 1 3 4 9   7 6 5 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06250
 Weight factors for state symmetry  2:    0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
                                          0.06250   0.06250   0.06250   0.06250   0.06250   0.06250   0.06250
 
 Number of orbital rotations:  2393  ( 105 closed/active, 1812 closed/virtual, 0 active/active, 476 active/virtual )
 Total number of variables:    2757
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   22    5  -8131.79146730   -8131.94893951   -0.15747221    0.06448420 0.00009907 0.00000000  0.21E+01      2.40
   2    9   14    0  -8131.91789702   -8131.92715718   -0.00926016    0.09518153 0.00003302 0.00000000  0.47E+00      4.71
   3    8   12    0  -8131.92723783   -8131.92724421   -0.00000638    0.00188375 0.00000279 0.00000000  0.11E-01      6.98
   4    5   10    0  -8131.92724422   -8131.92724422   -0.00000000    0.00000403 0.00000001 0.00000000  0.52E-04      8.81

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.29E-08)
                       Final energy:  -8131.92724422
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -8132.003408443983
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.33283915
 One electron energy                        -11099.13218683
 Two electron energy                          2967.12877839
 Virial ratio                                    1.84074892
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -8131.963611339612
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.48034511
 One electron energy                        -11101.64544024
 Two electron energy                          2969.68182890
 Virial ratio                                    1.84073199
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -8131.963611339487
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.48034511
 One electron energy                        -11101.64544018
 Two electron energy                          2969.68182884
 Virial ratio                                    1.84073199
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -8131.963611339390
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.48034511
 One electron energy                        -11101.64544020
 Two electron energy                          2969.68182886
 Virial ratio                                    1.84073199
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -8131.963611339363
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.48034510
 One electron energy                        -11101.64544015
 Two electron energy                          2969.68182881
 Virial ratio                                    1.84073199
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -8131.963611339262
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.48034510
 One electron energy                        -11101.64544013
 Two electron energy                          2969.68182879
 Virial ratio                                    1.84073199
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -8131.907571587404
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832795
 One electron energy                        -11105.40170427
 Two electron energy                          2973.49413268
 Virial ratio                                    1.84069508
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -8131.907571587400
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832796
 One electron energy                        -11105.40170433
 Two electron energy                          2973.49413275
 Virial ratio                                    1.84069508
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -8131.907571587374
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832795
 One electron energy                        -11105.40170427
 Two electron energy                          2973.49413269
 Virial ratio                                    1.84069508
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -8131.907571587360
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832797
 One electron energy                        -11105.40170439
 Two electron energy                          2973.49413280
 Virial ratio                                    1.84069508
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -8131.907571587344
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832796
 One electron energy                        -11105.40170436
 Two electron energy                          2973.49413277
 Virial ratio                                    1.84069508
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -8131.907571587325
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832796
 One electron energy                        -11105.40170433
 Two electron energy                          2973.49413274
 Virial ratio                                    1.84069508
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -8131.907571587323
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832796
 One electron energy                        -11105.40170434
 Two electron energy                          2973.49413276
 Virial ratio                                    1.84069508
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy            -8131.887147094143
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832796
 One electron energy                        -11105.40170434
 Two electron energy                          2973.51455725
 Virial ratio                                    1.84069297
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy            -8131.887147094041
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832796
 One electron energy                        -11105.40170433
 Two electron energy                          2973.51455724
 Virial ratio                                    1.84069297
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy            -8131.887147093968
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.83832796
 One electron energy                        -11105.40170431
 Two electron energy                          2973.51455722
 Virial ratio                                    1.84069297
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000017223
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.050037634063
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.999999624471
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000392349
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.949962154798
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.049996243586
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.665020240407
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.999998883755
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     1.033355277165
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     3.334984321617
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     8.966645112385
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     8.950003332547
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.999999992702
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999954044
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.000000053254
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     3.999999967212
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     2.589968135729
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000025763
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000030091
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.410032620235
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     8.151037412593
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     8.551385277933
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     4.000000004257
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     2.745388924492
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.448620025117
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     1.254611101024
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     1.848963231515
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.000000009563
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.999999997737
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999992700
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000015565
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.359994230208
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000349766
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999999577560
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.640005224967
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     2.798966343821
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     2.783594481660
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     4.000001111988
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     8.221255798343
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     7.216395653266
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.778743786591
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.201033435937
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.999999997735
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.000000048219
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.999999954046
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 3 2 4 6 1 5   3 4 2 6 1 1 6 2 5 4   3 1 1 5 3 6 4 2 1 6   4 2 5 310131514 812
                                       11 7 9 1 6 4 2 5 310  131514 81211 7 9 6 4   2 3 5 113101514 812  11 9 7 6 4 2 3 5 1 4
                                        6 2 3 5 4 6 3 5 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 2 3 1 2   3 1 3 2 1 3 2 1 2 1   3 7 910 5 8 6 4 2 1   3 5 7 910 8 6 4 2 1
                                        3 9 710 5 4 8 6 2 1   3 9 7 4 5 810 6 9 7   4 5 6 810 2 1 3 9 7   4 5 810 6 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.67869     1  1  s    1.00000
    2.1     2.00000  -222.38739     1  2  s    0.99999
    3.1     2.00000   -48.56063     1  3  s    1.00034
    4.1     2.00000   -29.87406     1  1  d2+  0.99999
    5.1     2.00000   -29.87406     1  1  d2-  0.99999
    6.1     2.00000   -29.87406     1  1  d0   0.99999
    7.1     2.00000   -29.87406     1  1  d1+  0.99999
    8.1     2.00000   -29.87406     1  1  d1-  0.99999
    9.1     2.00000   -10.18136     1  4  s    0.99569
   10.1     2.00000    -3.78260     1  2  d2+  1.00070
   11.1     2.00000    -3.78260     1  2  d2-  1.00070
   12.1     2.00000    -3.78260     1  2  d1+  1.00070
   13.1     2.00000    -3.78260     1  2  d0   1.00070
   14.1     2.00000    -3.78260     1  2  d1-  1.00070
   15.1     2.00000    -1.52663     1  5  s    0.99769
   16.1     0.43179    -0.01814     1  6  s    0.80529
   17.1     0.31355     0.06671     1  3  d1-  0.93459
   18.1     0.31355     0.06671     1  3  d0   0.93459
   19.1     0.31355     0.06671     1  3  d2+  0.93459
   20.1     0.31355     0.06671     1  3  d1+  0.93459
   21.1     0.31355     0.06671     1  3  d2-  0.93459
   22.1     0.00044     0.20757     1  4  s    0.36479    1  5  s    3.56800    1  6  s  -11.58385    1  7  s    7.11146
                                    1  8  s    5.77671    1  9  s    1.13445    1 11  s   -0.75691    1 12  s   -2.33543
    1.2     2.00000  -199.32217     1  1  py   1.00000
    2.2     2.00000  -199.32217     1  1  px   1.00000
    3.2     2.00000  -199.32217     1  1  pz   1.00000
    4.2     2.00000   -40.97178     1  2  py   1.00004
    5.2     2.00000   -40.97178     1  2  pz   1.00004
    6.2     2.00000   -40.97178     1  2  px   1.00004
    7.2     2.00000    -7.62676     1  3  py   0.99239
    8.2     2.00000    -7.62676     1  3  pz   0.99239
    9.2     2.00000    -7.62676     1  3  px   0.99239
   10.2     2.00000    -0.83504     1  4  py   1.00210
   11.2     2.00000    -0.83504     1  4  pz   1.00210
   12.2     2.00000    -0.83504     1  4  px   1.00210
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97650267
 0020000       -0.09179747
 0000020       -0.09179747
 0000200       -0.09179747
 0002000       -0.09179747
 0200000       -0.09179747
 
 Energy:    -8132.00340844
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 00aa000        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00033670      0.00016908
 a000a00        0.99991822     -0.00005837     -0.00006787     -0.00002100     -0.00003947     -0.00000000     -0.00000000
 aa00000        0.00006786     -0.00003411      0.99991817     -0.00034384      0.00006265      0.00000000     -0.00000000
 a0000a0        0.00002102     -0.00004540      0.00034383      0.99991816      0.00011613      0.00000000     -0.00000000
 a00a000        0.00006928      0.91643941      0.00000620     -0.00000485      0.39996909      0.00000000     -0.00000000
 a0a0000        0.00001282     -0.39996909     -0.00007111     -0.00012457      0.91643940     -0.00000000      0.00000000
 000a0a0        0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.24505445      0.00010295
 0a0a000       -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000906     -0.14894192
 000aa00        0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00003340      0.00025295
 00a00a0        0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.83650542     -0.00028575
 0000aa0        0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00032453      0.81669812
 00a0a00        0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00006919      0.00002606
 0aa0000       -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00018214      0.55751253
 0a00a00       -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.49010890      0.00020590
 0a000a0        0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00008645      0.00020782
 
 Energy:    -8131.96361134  -8131.96361134  -8131.96361134  -8131.96361134  -8131.96361134  -8131.90757159  -8131.90757159

 State:              8               9              10              11              12              13              14
 00aa000        0.99999981      0.00042113      0.00023603      0.00008291      0.00004372     -0.00000000     -0.00000000
 a000a00        0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 aa00000       -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0000a0        0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a00a000       -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 a0a0000        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 000a0a0       -0.00009890     -0.00003268      0.00010676      0.00008158      0.37409661     -0.00004256      0.89442717
 0a0a000       -0.00018283     -0.00034608      0.88193883      0.00009990     -0.00020486     -0.00003820     -0.00009587
 000aa00       -0.00033017      0.84269820      0.00040732     -0.29976554      0.00016059     -0.44721359     -0.00002127
 00a00a0        0.00025772     -0.00004571      0.00007044      0.00025780      0.54795845     -0.00000000      0.00000000
 0000aa0       -0.00022388     -0.00042633      0.36469691     -0.00001358     -0.00011634      0.00003820      0.00009587
 00a0a00       -0.00003330      0.19732501      0.00014993     -0.60088499      0.00019354      0.77459666      0.00003685
 0aa0000       -0.00002370     -0.00004633     -0.29862976     -0.00006552      0.00005111     -0.00006617     -0.00016605
 0a00a00       -0.00019780     -0.00006535      0.00021352      0.00016316      0.74819323      0.00002128     -0.44721358
 0a000a0       -0.00027249      0.50092125      0.00014763      0.74099779     -0.00017464      0.44721360      0.00002127
 
 Energy:    -8131.90757159  -8131.90757159  -8131.90757159  -8131.90757159  -8131.90757159  -8131.88714709  -8131.88714709

 State:             15
 00aa000       -0.00000000
 a000a00        0.00000000
 aa00000        0.00000000
 a0000a0       -0.00000000
 a00a000        0.00000000
 a0a0000        0.00000000
 000a0a0        0.00019174
 0a0a000        0.44721359
 000aa00       -0.00003821
 00a00a0        0.00000000
 0000aa0       -0.44721358
 00a0a00        0.00006618
 0aa0000        0.77459665
 0a00a00       -0.00009587
 0a000a0        0.00003821
 
 Energy:    -8131.88714709
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      127.18       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.25       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        18.24      6.68      0.13     11.19
 REAL TIME  *        22.81 SEC
 DISK USED  *       128.52 MB (local),        2.20 GB (total)
 SF USED    *       246.88 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -8132.003408   -0.0
    -8131.963611    6.0
    -8131.963611    6.0
    -8131.963611    6.0
    -8131.963611    6.0
    -8131.963611    6.0
    -8131.907572   12.0
    -8131.907572   12.0
    -8131.907572   12.0
    -8131.907572   12.0
    -8131.907572   12.0
    -8131.907572   12.0
    -8131.907572   12.0
    -8131.887147    2.0
    -8131.887147    2.0
    -8131.887147    2.0
                                                  


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
 Number of external orbitals:     134 (  68  66 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.24 sec, npass=  1  Memory used:   2.13 MW


 Number of p-space configurations:  28

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8132.00340844

 Number of blocks in overlap matrix:   154   Smallest eigenvalue:  0.42D+00
 Number of N-2 electron functions:     208
 Number of N-1 electron functions:   10780

 Number of internal configurations:                 9772
 Number of singly external configurations:        723422
 Number of doubly external configurations:        934434
 Total number of contracted configurations:      1667628
 Total number of uncontracted configurations:   22493268

 Diagonal Coupling coefficients finished.               Storage: 3642739 words, CPU-Time:      0.08 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1250421 words, CPU-time:      0.08 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8132.00340844    -0.00000000    -0.70116432  0.45D-01  0.93D-01     0.65
    2     1     1     1.09103977    -0.57996461 -8132.58337305    -0.57996461    -0.01100320  0.18D-02  0.14D-02     3.58
    3     1     1     1.08367996    -0.59046213 -8132.59387058    -0.01049752    -0.00018871  0.19D-04  0.32D-04     6.44
    4     1     1     1.08415899    -0.59065938 -8132.59406783    -0.00019725    -0.00000597  0.89D-06  0.13D-05     9.27
    5     1     1     1.08415634    -0.59066528 -8132.59407373    -0.00000590    -0.00000020  0.23D-07  0.57D-07    12.10
    6     1     1     1.08413761    -0.59066550 -8132.59407395    -0.00000022    -0.00000001  0.60D-09  0.29D-08    14.93


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.7%
 S   4.0%  30.7%
 P   1.5%  29.3%   6.1%

 Initialization:   3.1%
 Other:           20.6%

 Total CPU:       14.9 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222           0.9364738
 2222220200000222          -0.0848098
 2222220000200222          -0.0848098
 2222220002000222          -0.0848098
 2222220020000222          -0.0848098
 2222220000020222          -0.0848098
 222222/00000\222          -0.0662328


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95836379 (fixed)   0.95859759 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00427996   -0.01010744   -0.01160518
 Singles      0.02226079   -0.07732834   -0.08310022
 Pairs        0.06223693   -0.50322972   -0.49596010
 Total        1.08877767   -0.59066550   -0.59066550
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8132.00340844
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.37180856
 One electron energy               -11100.48585890
 Two electron energy                 2967.89178496
 Virial quotient                       -0.84071968
 Correlation energy                    -0.59066550
 !MRCI STATE 1.1 Energy             -8132.594073947243

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.64651185 (Davidson, fixed reference)
 Cluster corrected energies         -8132.64619819 (Davidson, relaxed reference)

 Cluster corrected energies         -8132.64483446 (Pople, fixed reference)
 Cluster corrected energies         -8132.64450830 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      127.18       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       15.47       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        33.46     15.19      6.68      0.13     11.19
 REAL TIME  *        38.89 SEC
 DISK USED  *       142.74 MB (local),        2.42 GB (total)
 SF USED    *       259.10 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =     -8132.64619819  AU                              


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
 Number of external orbitals:     134 (  68  66 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8131.96361134
     2     -8131.96361134
     3     -8131.96361134
     4     -8131.96361134
     5     -8131.96361134
     6     -8131.90757159
     7     -8131.90757159
     8     -8131.90757159
     9     -8131.90757159
    10     -8131.90757159
    11     -8131.90757159
    12     -8131.90757159
    13     -8131.88714709
    14     -8131.88714709
    15     -8131.88714709

 Number of blocks in overlap matrix:  1288   Smallest eigenvalue:  0.95D+00
 Number of N-2 electron functions:    1324
 Number of N-1 electron functions:   17836

 Number of internal configurations:                14511
 Number of singly external configurations:       1196552
 Number of doubly external configurations:       5952586
 Total number of contracted configurations:      7163649
 Total number of uncontracted configurations:   35061501

 Diagonal Coupling coefficients finished.               Storage: 9709384 words, CPU-Time:      5.52 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1623420 words, CPU-time:      0.54 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8131.96361134     0.00000000    -0.70315037  0.46D-01  0.91D-01     8.67
    1     2     2     1.00000000     0.00000000 -8131.96361134    -0.00000000    -0.70312422  0.46D-01  0.91D-01     8.67
    1     3     3     1.00000000     0.00000000 -8131.96361134    -0.00000000    -0.70314104  0.46D-01  0.91D-01     8.67
    1     4     4     1.00000000     0.00000000 -8131.96361134    -0.00000000    -0.70311277  0.46D-01  0.91D-01     8.67
    1     5     5     1.00000000     0.00000000 -8131.96361134    -0.00000000    -0.70307976  0.46D-01  0.91D-01     8.67
    1     6     6     1.00000000     0.00000000 -8131.90757159    -0.00000000    -0.71233030  0.42D-01  0.99D-01     8.67
    1     7     7     1.00000000     0.00000000 -8131.90757159    -0.00000000    -0.71225823  0.42D-01  0.99D-01     8.67
    1     8     8     1.00000000     0.00000000 -8131.90757159     0.00000000    -0.71230084  0.42D-01  0.99D-01     8.67
    1     9     9     1.00000000     0.00000000 -8131.90757159    -0.00000000    -0.71228313  0.42D-01  0.99D-01     8.67
    1    10    10     1.00000000     0.00000000 -8131.90757159     0.00000000    -0.71231706  0.42D-01  0.99D-01     8.67
    1    11    11     1.00000000     0.00000000 -8131.90757159    -0.00000000    -0.71220462  0.42D-01  0.99D-01     8.67
    1    12    12     1.00000000     0.00000000 -8131.90757159    -0.00000000    -0.71227299  0.42D-01  0.99D-01     8.67
    1    13    13     1.00000000     0.00000000 -8131.88714709     0.00000000    -0.71909285  0.44D-01  0.11D+00     8.67
    1    14    14     1.00000000     0.00000000 -8131.88714709    -0.00000000    -0.71897784  0.44D-01  0.11D+00     8.67
    1    15    15     1.00000000     0.00000000 -8131.88714709     0.00000000    -0.71899485  0.44D-01  0.11D+00     8.67
    2     1     1     1.09002934    -0.57810042 -8132.54171176    -0.57810042    -0.01093340  0.17D-02  0.12D-02   138.17
    2     2     2     1.09002674    -0.57809034 -8132.54170168    -0.57809034    -0.01094649  0.17D-02  0.12D-02   138.17
    2     3     3     1.09003970    -0.57808871 -8132.54170005    -0.57808871    -0.01094819  0.17D-02  0.12D-02   138.17
    2     4     4     1.09004675    -0.57808503 -8132.54169637    -0.57808503    -0.01095171  0.17D-02  0.12D-02   138.17
    2     5     5     1.09004683    -0.57807647 -8132.54168781    -0.57807647    -0.01096168  0.17D-02  0.12D-02   138.17
    2     6     6     1.09095253    -0.57806948 -8132.48564107    -0.57806948    -0.01187256  0.20D-02  0.15D-02   138.17
    2     7     7     1.09097664    -0.57805275 -8132.48562433    -0.57805275    -0.01189493  0.20D-02  0.15D-02   138.17
    2     8     8     1.09098048    -0.57804867 -8132.48562026    -0.57804867    -0.01190002  0.20D-02  0.15D-02   138.17
    2     9     9     1.09099903    -0.57802796 -8132.48559955    -0.57802796    -0.01192601  0.20D-02  0.15D-02   138.17
    2    10    10     1.09099996    -0.57802718 -8132.48559877    -0.57802718    -0.01192682  0.20D-02  0.15D-02   138.17
    2    11    11     1.09100419    -0.57802550 -8132.48559709    -0.57802550    -0.01192575  0.20D-02  0.15D-02   138.17
    2    12    12     1.09100716    -0.57801763 -8132.48558921    -0.57801763    -0.01193688  0.20D-02  0.15D-02   138.17
    2    13    13     1.09571331    -0.58020567 -8132.46735276    -0.58020567    -0.01336461  0.27D-02  0.18D-02   138.17
    2    14    14     1.09576289    -0.58018048 -8132.46732757    -0.58018048    -0.01338717  0.27D-02  0.19D-02   138.17
    2    15    15     1.09578447    -0.58015282 -8132.46729992    -0.58015282    -0.01342322  0.27D-02  0.19D-02   138.17
    3     1     1     1.08338274    -0.58849802 -8132.55210936    -0.01039760    -0.00016543  0.16D-04  0.25D-04   270.13
    3     2     2     1.08338138    -0.58849777 -8132.55210911    -0.01040743    -0.00016564  0.16D-04  0.25D-04   270.13
    3     3     3     1.08338297    -0.58849771 -8132.55210905    -0.01040900    -0.00016575  0.16D-04  0.25D-04   270.13
    3     4     4     1.08338222    -0.58849752 -8132.55210886    -0.01041250    -0.00016591  0.16D-04  0.25D-04   270.13
    3     5     5     1.08338174    -0.58849731 -8132.55210865    -0.01042083    -0.00016610  0.16D-04  0.25D-04   270.13
    3     6     6     1.08404060    -0.58914960 -8132.49672119    -0.01108012    -0.00018921  0.16D-04  0.33D-04   270.13
    3     7     7     1.08404406    -0.58914930 -8132.49672089    -0.01109656    -0.00018964  0.16D-04  0.34D-04   270.13
    3     8     8     1.08404309    -0.58914917 -8132.49672076    -0.01110049    -0.00018977  0.16D-04  0.34D-04   270.13
    3     9     9     1.08404295    -0.58914893 -8132.49672052    -0.01112098    -0.00019003  0.16D-04  0.34D-04   270.13
    3    10    10     1.08404408    -0.58914887 -8132.49672046    -0.01112169    -0.00019018  0.16D-04  0.34D-04   270.13
    3    11    11     1.08404430    -0.58914878 -8132.49672037    -0.01112328    -0.00019029  0.16D-04  0.34D-04   270.13
    3    12    12     1.08404363    -0.58914873 -8132.49672032    -0.01113110    -0.00019028  0.16D-04  0.34D-04   270.13
    3    13    13     1.08643399    -0.59264932 -8132.47979641    -0.01244365    -0.00024989  0.23D-04  0.55D-04   270.13
    3    14    14     1.08643599    -0.59264821 -8132.47979530    -0.01246773    -0.00025076  0.23D-04  0.56D-04   270.13
    3    15    15     1.08643795    -0.59264755 -8132.47979464    -0.01249472    -0.00025156  0.23D-04  0.56D-04   270.13
    4     1     1     1.08390169    -0.58867396 -8132.55228530    -0.00017594    -0.00000411  0.74D-06  0.61D-06   401.69
    4     2     2     1.08390141    -0.58867395 -8132.55228529    -0.00017618    -0.00000412  0.74D-06  0.61D-06   401.69
    4     3     3     1.08390154    -0.58867395 -8132.55228529    -0.00017623    -0.00000413  0.74D-06  0.62D-06   401.69
    4     4     4     1.08390124    -0.58867394 -8132.55228528    -0.00017642    -0.00000413  0.74D-06  0.62D-06   401.69
    4     5     5     1.08390121    -0.58867394 -8132.55228528    -0.00017663    -0.00000414  0.74D-06  0.62D-06   401.69
    4     6     6     1.08448043    -0.58934874 -8132.49692032    -0.00019913    -0.00000551  0.19D-05  0.77D-06   401.69
    4     7     7     1.08448030    -0.58934874 -8132.49692032    -0.00019943    -0.00000552  0.19D-05  0.78D-06   401.69
    4     8     8     1.08447992    -0.58934873 -8132.49692032    -0.00019956    -0.00000553  0.19D-05  0.78D-06   401.69
    4     9     9     1.08447972    -0.58934872 -8132.49692031    -0.00019979    -0.00000553  0.19D-05  0.78D-06   401.69
    4    10    10     1.08447962    -0.58934872 -8132.49692031    -0.00019985    -0.00000553  0.19D-05  0.77D-06   401.69
    4    11    11     1.08447972    -0.58934872 -8132.49692030    -0.00019993    -0.00000554  0.19D-05  0.78D-06   401.69
    4    12    12     1.08447944    -0.58934872 -8132.49692030    -0.00019999    -0.00000554  0.19D-05  0.78D-06   401.69
    4    13    13     1.08669991    -0.59291759 -8132.48006469    -0.00026828    -0.00000952  0.41D-05  0.15D-05   401.69
    4    14    14     1.08669927    -0.59291753 -8132.48006462    -0.00026932    -0.00000959  0.42D-05  0.15D-05   401.69
    4    15    15     1.08669891    -0.59291751 -8132.48006460    -0.00026996    -0.00000961  0.42D-05  0.15D-05   401.69
    5     1     1     1.08395227    -0.58867811 -8132.55228945    -0.00000416    -0.00000013  0.15D-07  0.25D-07   533.58
    5     2     2     1.08395225    -0.58867811 -8132.55228945    -0.00000416    -0.00000013  0.15D-07  0.25D-07   533.58
    5     3     3     1.08395222    -0.58867811 -8132.55228945    -0.00000417    -0.00000013  0.15D-07  0.25D-07   533.58
    5     4     4     1.08395240    -0.58867811 -8132.55228945    -0.00000417    -0.00000013  0.15D-07  0.25D-07   533.58
    5     5     5     1.08395232    -0.58867811 -8132.55228945    -0.00000417    -0.00000013  0.15D-07  0.25D-07   533.58
    5     6     6     1.08456695    -0.58935450 -8132.49692609    -0.00000577    -0.00000022  0.35D-07  0.46D-07   533.58
    5     7     7     1.08456693    -0.58935450 -8132.49692609    -0.00000577    -0.00000022  0.35D-07  0.46D-07   533.58
    5     8     8     1.08456691    -0.58935450 -8132.49692609    -0.00000577    -0.00000022  0.35D-07  0.46D-07   533.58
    5     9     9     1.08456702    -0.58935450 -8132.49692609    -0.00000577    -0.00000022  0.35D-07  0.46D-07   533.58
    5    10    10     1.08456691    -0.58935450 -8132.49692609    -0.00000578    -0.00000022  0.35D-07  0.46D-07   533.58
    5    11    11     1.08456684    -0.58935450 -8132.49692609    -0.00000578    -0.00000022  0.36D-07  0.46D-07   533.58
    5    12    12     1.08456700    -0.58935450 -8132.49692608    -0.00000578    -0.00000022  0.35D-07  0.46D-07   533.58
    5    13    13     1.08677851    -0.59292814 -8132.48007524    -0.00001055    -0.00000052  0.74D-07  0.12D-06   533.58
    5    14    14     1.08677882    -0.59292814 -8132.48007523    -0.00001061    -0.00000052  0.74D-07  0.12D-06   533.58
    5    15    15     1.08677887    -0.59292814 -8132.48007523    -0.00001063    -0.00000052  0.75D-07  0.12D-06   533.58
    6     1     1     1.08394969    -0.58867825 -8132.55228959    -0.00000014    -0.00000000  0.13D-08  0.65D-09   665.56
    6     2     2     1.08394969    -0.58867825 -8132.55228959    -0.00000014    -0.00000000  0.13D-08  0.65D-09   665.56
    6     3     3     1.08394969    -0.58867825 -8132.55228959    -0.00000014    -0.00000000  0.13D-08  0.65D-09   665.56
    6     4     4     1.08394971    -0.58867825 -8132.55228959    -0.00000014    -0.00000000  0.13D-08  0.65D-09   665.56
    6     5     5     1.08394971    -0.58867825 -8132.55228959    -0.00000014    -0.00000000  0.13D-08  0.65D-09   665.56
    6     6     6     1.08456360    -0.58935476 -8132.49692635    -0.00000026    -0.00000001  0.26D-08  0.12D-08   665.56
    6     7     7     1.08456362    -0.58935476 -8132.49692635    -0.00000026    -0.00000001  0.26D-08  0.12D-08   665.56
    6     8     8     1.08456361    -0.58935476 -8132.49692635    -0.00000026    -0.00000001  0.26D-08  0.12D-08   665.56
    6     9     9     1.08456360    -0.58935476 -8132.49692635    -0.00000026    -0.00000001  0.26D-08  0.12D-08   665.56
    6    10    10     1.08456364    -0.58935476 -8132.49692635    -0.00000026    -0.00000001  0.26D-08  0.12D-08   665.56
    6    11    11     1.08456361    -0.58935476 -8132.49692635    -0.00000026    -0.00000001  0.26D-08  0.12D-08   665.56
    6    12    12     1.08456363    -0.58935476 -8132.49692635    -0.00000026    -0.00000001  0.26D-08  0.12D-08   665.56
    6    13    13     1.08675214    -0.59292874 -8132.48007584    -0.00000060    -0.00000002  0.36D-08  0.53D-08   665.56
    6    14    14     1.08675217    -0.59292874 -8132.48007584    -0.00000060    -0.00000002  0.37D-08  0.53D-08   665.56
    6    15    15     1.08675213    -0.59292874 -8132.48007584    -0.00000060    -0.00000002  0.36D-08  0.52D-08   665.56


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.2%  16.9%
 P   0.6%  24.4%  10.7%

 Initialization:   0.9%
 Other:           43.5%

 Total CPU:      665.6 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222200//000222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0000000  -0.0000000   0.0000000   0.9589797   0.0000000  -0.0000000  -0.0000000
 22222200/00/0222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0082612   0.0000000   0.0000000
                           -0.0000000   0.9589441  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
 222222/0000/0222           0.0000000  -0.0000000   0.9589153   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                            0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 222222//00000222           0.0000000   0.9589153  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                            0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 222222/000/00222           0.9589153   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                           -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 222222/00/000222           0.0000000   0.0000000  -0.0000000  -0.1668837   0.9442820   0.0000000   0.0000000   0.0000000
                           -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 222222/0/0000222           0.0000000  -0.0000000   0.0000000   0.9442820   0.1668837   0.0000000   0.0000000  -0.0000000
                           -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 2222220/00/00222          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.8577057   0.0000000  -0.0000000
                           -0.0000000   0.0073891   0.0000000  -0.0000000   0.0000000   0.0000000  -0.4283596
 2222220/000/0222          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.8577023
                            0.0077719   0.0000000  -0.0000000   0.0000000   0.0000000   0.4283596   0.0000000
 2222220000//0222           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8576073  -0.0000000
                           -0.0000000   0.0000000   0.0149438  -0.0000000  -0.4283596   0.0000000   0.0000000
 222222000/0/0222           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.4288528  -0.0000000  -0.0000000
                           -0.0000000   0.0036945   0.0000000  -0.0000000  -0.0000000   0.0000000   0.8567194
 2222220/0/000222           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.1999325  -0.0000000
                           -0.0000000  -0.0000000   0.8341106  -0.0000000   0.4283597  -0.0000000  -0.0000000
 222222000//00222           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.2069005
                            0.8324096   0.0000000   0.0000000   0.0000000   0.0000000  -0.4283597   0.0000000
 2222220//0000222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.3797086   0.0000000
                            0.0000000   0.0000000  -0.4729462  -0.0000000   0.7419407   0.0000000  -0.0000000
 22222200/0/00222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.3757406
                            0.4761049   0.0000000   0.0000000   0.0000000  -0.0000000   0.7419407  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958802    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.000000    0.958802   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000   -0.000000    0.958802   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.530593    0.000000    0.000000    0.798606    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.798606   -0.000000   -0.000000    0.530593   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.532524   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.797534   -0.000000   -0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.882390   -0.000000    0.000000    0.375539
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 8           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.529702   -0.000000
             0.799411    0.000000    0.000000   -0.000000    0.000000
 9          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.799411   -0.000000
            -0.529702   -0.000000    0.000000    0.000000    0.000000
 10         -0.000000    0.000000    0.000000   -0.000000    0.000000    0.797534    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.532524    0.000000    0.000000   -0.000000
 11          0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.375539    0.000000    0.000000    0.882390
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.958980    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 13          0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000    0.957841
 14         -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.957841   -0.000000   -0.000000
 15          0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.957841   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958802    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.958802   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.958802   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.958802   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.958802    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.958980   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958980    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.958980   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000
 9           0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.958980    0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000
 10         -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.958980
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 11          0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.958980   -0.000000   -0.000000   -0.000000   -0.000000
 12         -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.958980   -0.000000   -0.000000   -0.000000
 13          0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.957841    0.000000   -0.000000
 14          0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.957841    0.000000
 15          0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.957841


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95880193 (fixed)   0.95891923 (relaxed)   0.95880193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00353627   -0.00859732   -0.47532882
 Singles      0.02232703   -0.07370545   -0.07984261
 Pairs        0.06191953    0.00000000   -0.03350682
 Total        1.08778283   -0.08230277   -0.58867825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96361134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.33617817
 One electron energy               -11102.78197944
 Two electron energy                 2970.22968985
 Virial quotient                       -0.84071846
 Correlation energy                    -0.58867825
 !MRCI STATE 1.1 Energy             -8132.552289591174

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60396543 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60380878 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60396543 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60154652 (Pople, fixed reference)
 Cluster corrected energies         -8132.60138657 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60154652 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95880193 (fixed)   0.95891923 (relaxed)   0.95880193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00353627   -0.00859732   -0.47532881
 Singles      0.02232703   -0.07370546   -0.07984262
 Pairs        0.06191952    0.00000000   -0.03350683
 Total        1.08778283   -0.08230279   -0.58867825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96361134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.33617870
 One electron energy               -11102.78197931
 Two electron energy                 2970.22968972
 Virial quotient                       -0.84071846
 Correlation energy                    -0.58867825
 !MRCI STATE 2.1 Energy             -8132.552289590996

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60396543 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60380878 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60396543 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60154651 (Pople, fixed reference)
 Cluster corrected energies         -8132.60138656 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60154651 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95880193 (fixed)   0.95891924 (relaxed)   0.95880193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00353627   -0.00859732   -0.47532882
 Singles      0.02232703   -0.07370545   -0.07984261
 Pairs        0.06191953    0.00000000   -0.03350682
 Total        1.08778282   -0.08230277   -0.58867825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96361134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.33618139
 One electron energy               -11102.78198196
 Two electron energy                 2970.22969237
 Virial quotient                       -0.84071846
 Correlation energy                    -0.58867825
 !MRCI STATE 3.1 Energy             -8132.552289590652

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60396543 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60380877 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60396543 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60154651 (Pople, fixed reference)
 Cluster corrected energies         -8132.60138656 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60154651 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.79860645 (fixed)   0.95891922 (relaxed)   0.95880192 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00353627   -0.00859732   -0.47532880
 Singles      0.02232705   -0.07370546   -0.07984262
 Pairs        0.06191954   -0.00000000   -0.03350683
 Total        1.08778285   -0.08230278   -0.58867825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96361134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.33617538
 One electron energy               -11102.78197743
 Two electron energy                 2970.22968784
 Virial quotient                       -0.84071846
 Correlation energy                    -0.58867825
 !MRCI STATE 4.1 Energy             -8132.552289587835

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60396544 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60380879 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60396544 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60154653 (Pople, fixed reference)
 Cluster corrected energies         -8132.60138658 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60154653 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.79860645 (fixed)   0.95891923 (relaxed)   0.95880192 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00353627   -0.00859732   -0.47532880
 Singles      0.02232705   -0.07370546   -0.07984262
 Pairs        0.06191953   -0.00000000   -0.03350683
 Total        1.08778285   -0.08230279   -0.58867825
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96361134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.33617996
 One electron energy               -11102.78198160
 Two electron energy                 2970.22969201
 Virial quotient                       -0.84071846
 Correlation energy                    -0.58867825
 !MRCI STATE 5.1 Energy             -8132.552289587545

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60396544 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60380878 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60396544 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60154652 (Pople, fixed reference)
 Cluster corrected energies         -8132.60138657 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60154652 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.79753359 (fixed)   0.95897967 (relaxed)   0.95897967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259647   -0.00677228   -0.48023562
 Singles      0.02000362   -0.06868658   -0.07401272
 Pairs        0.06477955    0.00000000   -0.03510643
 Total        1.08737964   -0.07545885   -0.58935476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90757159
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.37111614
 One electron energy               -11105.62066846
 Two electron energy                 2973.12374210
 Virial quotient                       -0.84070970
 Correlation energy                    -0.58935476
 !MRCI STATE 6.1 Energy             -8132.496926351178

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54842396 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54842396 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54842396 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54599729 (Pople, fixed reference)
 Cluster corrected energies         -8132.54599729 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54599729 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.88239013 (fixed)   0.95897967 (relaxed)   0.95897967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259647   -0.00677228   -0.48023566
 Singles      0.02000362   -0.06868656   -0.07401271
 Pairs        0.06477957    0.00000004   -0.03510639
 Total        1.08737965   -0.07545880   -0.58935476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90757159
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.37111500
 One electron energy               -11105.62066712
 Two electron energy                 2973.12374077
 Virial quotient                       -0.84070970
 Correlation energy                    -0.58935476
 !MRCI STATE 7.1 Energy             -8132.496926351097

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54842397 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54842397 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54842397 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54599730 (Pople, fixed reference)
 Cluster corrected energies         -8132.54599730 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54599730 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.79941083 (fixed)   0.95897967 (relaxed)   0.95897967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259647   -0.00677228   -0.48023561
 Singles      0.02000362   -0.06868658   -0.07401272
 Pairs        0.06477956   -0.00000000   -0.03510644
 Total        1.08737965   -0.07545886   -0.58935476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90757159
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.37111429
 One electron energy               -11105.62066580
 Two electron energy                 2973.12373945
 Virial quotient                       -0.84070970
 Correlation energy                    -0.58935476
 !MRCI STATE 8.1 Energy             -8132.496926351041

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54842397 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54842397 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54842397 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54599730 (Pople, fixed reference)
 Cluster corrected energies         -8132.54599730 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54599730 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.79941083 (fixed)   0.95897968 (relaxed)   0.95897968 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259647   -0.00677228   -0.48023562
 Singles      0.02000364   -0.06868657   -0.07401272
 Pairs        0.06477953   -0.00000000   -0.03510642
 Total        1.08737963   -0.07545885   -0.58935476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90757159
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.37111951
 One electron energy               -11105.62067540
 Two electron energy                 2973.12374905
 Virial quotient                       -0.84070970
 Correlation energy                    -0.58935476
 !MRCI STATE 9.1 Energy             -8132.496926348621

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54842395 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54842395 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54842395 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54599728 (Pople, fixed reference)
 Cluster corrected energies         -8132.54599728 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54599728 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.79753358 (fixed)   0.95897966 (relaxed)   0.95897966 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259647   -0.00677228   -0.48023561
 Singles      0.02000362   -0.06868656   -0.07401271
 Pairs        0.06477958    0.00000000   -0.03510644
 Total        1.08737967   -0.07545884   -0.58935476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90757159
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.37111007
 One electron energy               -11105.62066211
 Two electron energy                 2973.12373576
 Virial quotient                       -0.84070970
 Correlation energy                    -0.58935476
 !MRCI STATE 10.1 Energy            -8132.496926348618

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54842398 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54842398 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54842398 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54599731 (Pople, fixed reference)
 Cluster corrected energies         -8132.54599731 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54599731 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.88239013 (fixed)   0.95897967 (relaxed)   0.95897967 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259647   -0.00677228   -0.48023557
 Singles      0.02000363   -0.06868662   -0.07401273
 Pairs        0.06477954   -0.00000000   -0.03510646
 Total        1.08737964   -0.07545889   -0.58935476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90757159
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.37111456
 One electron energy               -11105.62066589
 Two electron energy                 2973.12373954
 Virial quotient                       -0.84070970
 Correlation energy                    -0.58935476
 !MRCI STATE 11.1 Energy            -8132.496926348580

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54842396 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54842396 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54842396 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54599729 (Pople, fixed reference)
 Cluster corrected energies         -8132.54599729 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54599729 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95897966 (fixed)   0.95897966 (relaxed)   0.95897966 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00259647   -0.00677228   -0.48023559
 Singles      0.02000363   -0.06868658   -0.07401272
 Pairs        0.06477957   -0.00000000   -0.03510644
 Total        1.08737967   -0.07545886   -0.58935476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90757159
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.37111226
 One electron energy               -11105.62066481
 Two electron energy                 2973.12373846
 Virial quotient                       -0.84070970
 Correlation energy                    -0.58935476
 !MRCI STATE 12.1 Energy            -8132.496926345538

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54842397 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54842397 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54842397 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54599730 (Pople, fixed reference)
 Cluster corrected energies         -8132.54599730 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54599730 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95784133 (fixed)   0.95784133 (relaxed)   0.95784133 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00295709   -0.00756467   -0.00854891
 Singles      0.01983954   -0.06872160   -0.07384712
 Pairs        0.06716913   -0.51664247   -0.51053272
 Total        1.08996577   -0.59292874   -0.59292874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.88714709
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.36719548
 One electron energy               -11105.51607014
 Two electron energy                 2973.03599430
 Virial quotient                       -0.84070830
 Correlation energy                    -0.59292874
 !MRCI STATE 13.1 Energy            -8132.480075835750

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53341912 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53341912 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53341912 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53101257 (Pople, fixed reference)
 Cluster corrected energies         -8132.53101257 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53101257 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95784132 (fixed)   0.95784132 (relaxed)   0.95784132 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00295709   -0.00756467   -0.48254771
 Singles      0.01983953   -0.06872159   -0.07384711
 Pairs        0.06716917   -0.00000000   -0.03653392
 Total        1.08996579   -0.07628626   -0.59292874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.88714709
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.36719235
 One electron energy               -11105.51606490
 Two electron energy                 2973.03598906
 Virial quotient                       -0.84070830
 Correlation energy                    -0.59292874
 !MRCI STATE 14.1 Energy            -8132.480075835741

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53341914 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53341914 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53341914 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53101258 (Pople, fixed reference)
 Cluster corrected energies         -8132.53101258 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53101258 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95784133 (fixed)   0.95784133 (relaxed)   0.95784133 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00295709   -0.00756467   -0.48254770
 Singles      0.01983956   -0.06872162   -0.07384712
 Pairs        0.06716910    0.00000000   -0.03653392
 Total        1.08996576   -0.07628629   -0.59292874
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.88714709
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.36720823
 One electron energy               -11105.51608624
 Two electron energy                 2973.03601040
 Virial quotient                       -0.84070830
 Correlation energy                    -0.59292874
 !MRCI STATE 15.1 Energy            -8132.480075835562

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53341912 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53341912 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53341912 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53101256 (Pople, fixed reference)
 Cluster corrected energies         -8132.53101256 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53101256 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      127.18       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      848.02       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       877.70    844.23     15.19      6.68      0.13     11.19
 REAL TIME  *       942.61 SEC
 DISK USED  *       975.29 MB (local),       15.43 GB (total)
 SF USED    *         8.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -8132.60396543  AU                              
 SETTING HLSDIAG(3)     =     -8132.60396543  AU                              
 SETTING HLSDIAG(4)     =     -8132.60396543  AU                              
 SETTING HLSDIAG(5)     =     -8132.60396544  AU                              
 SETTING HLSDIAG(6)     =     -8132.60396544  AU                              
 SETTING HLSDIAG(7)     =     -8132.54842396  AU                              
 SETTING HLSDIAG(8)     =     -8132.54842397  AU                              
 SETTING HLSDIAG(9)     =     -8132.54842397  AU                              
 SETTING HLSDIAG(10)    =     -8132.54842395  AU                              
 SETTING HLSDIAG(11)    =     -8132.54842398  AU                              
 SETTING HLSDIAG(12)    =     -8132.54842396  AU                              
 SETTING HLSDIAG(13)    =     -8132.54842397  AU                              
 SETTING HLSDIAG(14)    =     -8132.53341912  AU                              
 SETTING HLSDIAG(15)    =     -8132.53341914  AU                              
 SETTING HLSDIAG(16)    =     -8132.53341912  AU                              


         HLSDIAG
    -8132.646198
    -8132.603965
    -8132.603965
    -8132.603965
    -8132.603965
    -8132.603965
    -8132.548424
    -8132.548424
    -8132.548424
    -8132.548424
    -8132.548424
    -8132.548424
    -8132.548424
    -8132.533419
    -8132.533419
    -8132.533419
                                                  

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

 Time for Seward_LS:     214.31 sec

       61428503. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    15016 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    214.31 sec, REAL time:    215.00 sec


 SORTLS1 read    61450532. and wrote    61450532. SO integrals in   272 records. CPU time:      0.35 sec, REAL time:      0.74 sec
 SORTLS2 read    61450532. and wrote    61450532. SO integrals in    48 records. CPU time:      0.11 sec, REAL time:      0.30 sec

 FILE SIZES: FILE 1:  1117.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1117.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1065.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      848.02       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1093.05    215.31    844.23     15.19      6.68      0.13     11.19
 REAL TIME  *      1159.31 SEC
 DISK USED  *       975.45 MB (local),       17.27 GB (total)
 SF USED    *         8.28 GB
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

 Original energies:  -8132.594074
 Replaced energies:  -8132.646198

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  15

 Original energies:  -8132.552290  -8132.552290  -8132.552290  -8132.552290  -8132.552290  -8132.496926  -8132.496926  -8132.496926
                     -8132.496926  -8132.496926  -8132.496926  -8132.496926  -8132.480076  -8132.480076  -8132.480076
 Replaced energies:  -8132.603965  -8132.603965  -8132.603965  -8132.603965  -8132.603965  -8132.548424  -8132.548424  -8132.548424
                     -8132.548424  -8132.548424  -8132.548424  -8132.548424  -8132.533419  -8132.533419  -8132.533419



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -8132.64619819

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

    2   1.1  1.0  1.0      -0.00    9269.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -91.65       0.00      -0.00       0.00      -0.00       2.25       0.00       0.00

    3   2.1  1.0  1.0      -0.00       0.00    9269.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      91.65      -0.00       0.00       0.00      -0.00       0.00      -0.00      -2.23       2.82

    4   3.1  1.0  1.0      -0.00       0.00       0.00    9269.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     -31.90     180.51      -0.00      -0.00      -0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00    9269.02       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      31.90      -0.00      -0.00      -3.76       0.00       0.00       0.00

    6   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00    9269.02       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -180.51       0.00      -0.00      -0.64      -0.00      -0.00       0.00

    7   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00   21458.96       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       3.76       0.64       0.00      -0.00       0.00       0.00

    8   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   21458.96       0.00       0.00
                            0.00      -2.25       0.00       0.00      -0.00       0.00       0.00      -0.00    -127.30    -170.55

    9   8.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21458.96       0.00
                           -0.00      -0.00       2.23       0.00      -0.00       0.00      -0.00     127.30      -0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21458.97
                            0.00      -0.00      -2.82      -0.00      -0.00      -0.00      -0.00     170.55      -0.00       0.00

   11  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.46       2.80      -0.00       0.00       0.00      -0.00

   12  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       2.80      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -172.02     -48.46

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -2.84       0.00      -0.00       1.51      -0.00       0.00      -0.00

   14  13.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.19       0.10      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   15  14.1  1.0  1.0     -23.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.10       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.11       0.02       0.00      -0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00      -0.00      -0.00    -121.82      44.28      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      64.81       0.00       0.00       1.57      -0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00      -0.00      64.81      -0.00       0.00      -1.54      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00     -99.26     -83.36      -0.00      -0.00       0.00      -0.00

   19   3.1  1.0  0.0       0.00       0.00     -64.81       0.00      -0.00       0.00      -0.00      -1.52       0.00      -0.00
                            0.00     -64.81      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -1.54      -2.02

   20   4.1  1.0  0.0       0.00     121.82       0.00       0.00       0.00      -0.00       0.00       0.00       0.94      -1.88
                            0.00      -0.00      99.26      -0.00      -0.00       0.00       0.00       1.76      -0.00      -0.00

   21   5.1  1.0  0.0       0.00     -44.28      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       2.53       0.71
                           -0.00      -0.00      83.36      -0.00      -0.00       0.00       0.00      -2.04      -0.00      -0.00

   22   6.1  1.0  0.0       0.00       0.00       1.54       0.00      -0.00       0.00      -0.00     -96.33      -0.00       0.00
                           -0.00      -1.57       0.00       0.00      -0.00      -0.00      -0.00       0.00      93.26    -119.23

   23   7.1  1.0  0.0       0.00      -0.00       0.00       1.52      -0.00       0.00      96.33       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -1.76       2.04      -0.00       0.00      -0.00       0.00

   24   8.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -0.94      -2.53       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       1.54       0.00       0.00     -93.26       0.00      -0.00       0.00

   25   9.1  1.0  0.0       0.00      -0.00      -0.00       0.00       1.88      -0.71      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       2.02       0.00       0.00     119.23      -0.00      -0.00      -0.00

   26  10.1  1.0  0.0       0.00       0.00       2.02       0.00      -0.00       0.00       0.00     120.04      -0.00      -0.00
                           -0.00       2.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     121.42     -31.01

   27  11.1  1.0  0.0       0.00      -0.00       0.00       2.04       0.00       0.00    -118.94       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       1.51       1.33      -0.00      -0.00       0.00      -0.00

   28  12.1  1.0  0.0       0.00       2.01      -0.00      -0.00      -0.00       0.00       0.00       0.00       1.13    -124.28
                            0.00       0.00      -2.01       0.00       0.00      -0.00      -0.00      -2.17       0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00      -0.00      -0.07       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.05       0.06       0.00      -0.00      -0.00      -0.00

   30  14.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.03       0.07       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.07       0.00      -0.00       0.00      -0.00      -0.00       0.00

   31  15.1  1.0  0.0       0.00       0.00      -0.07       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                           32.80       0.07      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   2.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           23.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  14.1  1.0 -1.0     -23.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.00       0.00      -0.00     -23.19       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      23.19       0.00      -0.00      -0.00       0.00      -0.00      -0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     121.82
                           -0.00      -2.80      -0.00      -0.10       0.00      -0.00      -0.00      -0.00      64.81       0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -64.81       0.00
                            0.00       0.00       0.00       0.00      -0.10      -0.00       0.00      -0.00       0.00     -99.26

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      64.81       0.00       0.00
                           -0.00       0.00       2.84       0.00      -0.00       0.00     -64.81      -0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00    -121.82      -0.00      -0.00       0.00
                            0.46      -0.00      -0.00       0.00      -0.00      -0.11      -0.00      99.26      -0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      44.28       0.00       0.00      -0.00
                           -2.80       0.00       0.00      -0.00      -0.00      -0.02      -0.00      83.36      -0.00      -0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.54      -0.00       0.00
                            0.00      -0.00      -1.51      -0.00      -0.00      -0.00      -1.57       0.00       0.00      -0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.52       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -1.76

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.94
                           -0.00     172.02      -0.00       0.00       0.00      -0.00      -0.00      -0.00       1.54       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.88
                            0.00      48.46       0.00      -0.00       0.00      -0.00      -0.00       0.00       2.02       0.00

   11  10.1  1.0  1.0   21458.96       0.00       0.00       0.00       0.00       0.00      -0.00      -2.02      -0.00       0.00
                            0.00      -0.00     175.76       0.00       0.00       0.00       2.00      -0.00      -0.00      -0.00

   12  11.1  1.0  1.0       0.00   21458.96       0.00       0.00       0.00       0.00       0.00      -0.00      -2.04      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       1.51

   13  12.1  1.0  1.0       0.00       0.00   21458.96       0.00       0.00       0.00      -2.01       0.00       0.00       0.00
                         -175.76      -0.00      -0.00       0.00       0.00       0.00       0.00      -2.01       0.00       0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00   24752.14       0.00       0.00      -0.00       0.00       0.07      -0.00
                           -0.00      -0.00      -0.00      -0.00     -92.72      -0.00       0.00      -0.00      -0.00      -0.05

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00   24752.14       0.00      -0.00       0.00      -0.00      -0.03
                           -0.00       0.00      -0.00      92.72      -0.00      -0.00      -0.00       0.00       0.07       0.00

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   24752.15      -0.00       0.07      -0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.07      -0.00      -0.00       0.00

   17   1.1  1.0  0.0      -0.00       0.00      -2.01      -0.00      -0.00      -0.00    9269.02       0.00       0.00       0.00
                           -2.00      -0.00      -0.00      -0.00       0.00      -0.07       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0      -2.02      -0.00       0.00       0.00       0.00       0.07       0.00    9269.02       0.00       0.00
                            0.00      -0.00       2.01       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0      -0.00      -2.04       0.00       0.07      -0.00      -0.00       0.00       0.00    9269.02       0.00
                            0.00       0.00      -0.00       0.00      -0.07       0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.03       0.00       0.00       0.00       0.00    9269.02
                            0.00      -1.51      -0.00       0.05      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      -0.07      -0.00       0.00       0.00       0.00       0.00
                            0.00      -1.33       0.00      -0.06       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0      -0.00     118.94      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0    -120.04      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       2.17       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00       0.00      -1.13      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -121.42      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       0.00      -0.00     124.28      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           31.01       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26  10.1  1.0  0.0       0.00     -27.95      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27  11.1  1.0  0.0      27.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -124.27       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28  12.1  1.0  0.0       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     124.27       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29  13.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00     -65.56       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   30  14.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     -65.56      -0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0       0.00      -0.00      -0.00      65.56      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      65.56       0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    -121.82
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      64.81       0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      64.81      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -99.26

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -64.81       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -64.81      -0.00      -0.00       0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     121.82       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      99.26      -0.00      -0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -44.28      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      83.36      -0.00      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.54       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.57       0.00       0.00      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       1.52      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -1.76

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.94
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.54       0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       1.88
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.02       0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.02       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.00      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       2.04       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       1.51

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.01      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -2.01       0.00       0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.07       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.05

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.07       0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.07       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.07      -0.00      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

    2   1.1  1.0  1.0     -44.28       0.00      -0.00      -0.00      -0.00       0.00      -0.00       2.01       0.00       0.00
                            0.00       1.57      -0.00       0.00       0.00      -2.00      -0.00      -0.00      -0.00       0.00

    3   2.1  1.0  1.0      -0.00       1.54       0.00      -0.00      -0.00       2.02       0.00      -0.00      -0.00      -0.00
                          -83.36      -0.00      -0.00       0.00      -0.00       0.00      -0.00       2.01       0.00      -0.00

    4   3.1  1.0  1.0      -0.00       0.00       1.52      -0.00       0.00       0.00       2.04      -0.00      -0.07       0.00
                            0.00      -0.00      -0.00      -1.54      -2.02       0.00       0.00      -0.00       0.00      -0.07

    5   4.1  1.0  1.0       0.00      -0.00      -0.00      -0.94       1.88      -0.00       0.00      -0.00       0.00       0.03
                            0.00       0.00       1.76      -0.00      -0.00       0.00      -1.51      -0.00       0.05      -0.00

    6   5.1  1.0  1.0      -0.00       0.00       0.00      -2.53      -0.71       0.00       0.00       0.00      -0.00       0.07
                           -0.00       0.00      -2.04      -0.00      -0.00       0.00      -1.33       0.00      -0.06       0.00

    7   6.1  1.0  1.0      -0.00      -0.00      96.33       0.00      -0.00       0.00    -118.94       0.00       0.00       0.00
                           -0.00       0.00       0.00      93.26    -119.23       0.00       0.00       0.00      -0.00      -0.00

    8   7.1  1.0  1.0      -0.00     -96.33       0.00       0.00      -0.00     120.04       0.00       0.00       0.00      -0.00
                            2.04      -0.00      -0.00      -0.00       0.00      -0.00       0.00       2.17       0.00       0.00

    9   8.1  1.0  1.0       2.53      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       1.13       0.00      -0.00
                            0.00     -93.26       0.00       0.00       0.00    -121.42      -0.00      -0.00       0.00       0.00

   10   9.1  1.0  1.0       0.71       0.00       0.00      -0.00      -0.00      -0.00       0.00    -124.28       0.00       0.00
                            0.00     119.23      -0.00      -0.00       0.00      31.01       0.00      -0.00       0.00      -0.00

   11  10.1  1.0  1.0      -0.00      -0.00    -120.04       0.00       0.00       0.00      27.95       0.00       0.00      -0.00
                           -0.00      -0.00       0.00     121.42     -31.01       0.00      -0.00      -0.00      -0.00       0.00

   12  11.1  1.0  1.0      -0.00     118.94      -0.00       0.00      -0.00     -27.95       0.00      -0.00      -0.00      -0.00
                            1.33      -0.00      -0.00       0.00      -0.00       0.00       0.00    -124.27       0.00      -0.00

   13  12.1  1.0  1.0      -0.00      -0.00      -0.00      -1.13     124.28      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -2.17       0.00       0.00       0.00     124.27      -0.00       0.00      -0.00

   14  13.1  1.0  1.0       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.06       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   15  14.1  1.0  1.0      -0.07      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   16  15.1  1.0  1.0      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00     -65.56       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      65.56

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.1  1.0  0.0    9269.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.1  1.0  0.0       0.00   21458.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00   21458.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   21458.96       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   21458.97       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   21458.96       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   21458.96       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21458.96       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24752.14       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24752.14
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0      44.28      -0.00       0.00       0.00       0.00      -0.00       0.00      -2.01      -0.00      -0.00
                            0.00       1.57      -0.00       0.00       0.00      -2.00      -0.00      -0.00      -0.00       0.00

   33   2.1  1.0 -1.0       0.00      -1.54      -0.00       0.00       0.00      -2.02      -0.00       0.00       0.00       0.00
                          -83.36      -0.00      -0.00       0.00      -0.00       0.00      -0.00       2.01       0.00      -0.00

   34   3.1  1.0 -1.0       0.00      -0.00      -1.52       0.00      -0.00      -0.00      -2.04       0.00       0.07      -0.00
                            0.00      -0.00      -0.00      -1.54      -2.02       0.00       0.00      -0.00       0.00      -0.07

   35   4.1  1.0 -1.0      -0.00       0.00       0.00       0.94      -1.88       0.00      -0.00       0.00      -0.00      -0.03
                            0.00       0.00       1.76      -0.00      -0.00       0.00      -1.51      -0.00       0.05      -0.00

   36   5.1  1.0 -1.0      -0.00      -0.00      -0.00       2.53       0.71      -0.00      -0.00      -0.00       0.00      -0.07
                            0.00       0.00      -2.04      -0.00      -0.00       0.00      -1.33       0.00      -0.06       0.00

   37   6.1  1.0 -1.0       0.00      -0.00     -96.33      -0.00       0.00      -0.00     118.94      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      93.26    -119.23       0.00       0.00       0.00      -0.00      -0.00

   38   7.1  1.0 -1.0       0.00      96.33       0.00      -0.00       0.00    -120.04      -0.00      -0.00      -0.00       0.00
                            2.04      -0.00       0.00      -0.00       0.00      -0.00       0.00       2.17       0.00       0.00

   39   8.1  1.0 -1.0      -2.53       0.00       0.00      -0.00      -0.00       0.00       0.00      -1.13      -0.00       0.00
                            0.00     -93.26       0.00      -0.00       0.00    -121.42      -0.00      -0.00       0.00       0.00

   40   9.1  1.0 -1.0      -0.71      -0.00      -0.00       0.00      -0.00       0.00      -0.00     124.28      -0.00      -0.00
                            0.00     119.23      -0.00      -0.00      -0.00      31.01       0.00      -0.00       0.00      -0.00

   41  10.1  1.0 -1.0       0.00       0.00     120.04      -0.00      -0.00       0.00     -27.95      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00     121.42     -31.01      -0.00      -0.00      -0.00      -0.00       0.00

   42  11.1  1.0 -1.0       0.00    -118.94       0.00      -0.00       0.00      27.95       0.00       0.00       0.00       0.00
                            1.33      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -124.27       0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       1.13    -124.28       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -2.17       0.00       0.00       0.00     124.27       0.00       0.00      -0.00

   44  13.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.06       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   45  14.1  1.0 -1.0       0.07       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      65.56      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      65.56


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                          -32.80       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0      65.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -65.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00       0.00       0.00     121.82     -44.28       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      64.81       0.00       0.00       1.57      -0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00      -0.00      -0.00     -64.81       0.00      -0.00       1.54       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00     -99.26     -83.36      -0.00      -0.00       0.00      -0.00

   19   3.1  1.0  0.0       0.00      -0.00      64.81       0.00       0.00      -0.00       0.00       1.52      -0.00       0.00
                            0.00     -64.81      -0.00       0.00       0.00       0.00      -0.00      -0.00      -1.54      -2.02

   20   4.1  1.0  0.0       0.00    -121.82      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.94       1.88
                            0.00      -0.00      99.26      -0.00       0.00       0.00       0.00       1.76      -0.00      -0.00

   21   5.1  1.0  0.0       0.00      44.28       0.00       0.00      -0.00      -0.00       0.00       0.00      -2.53      -0.71
                            0.00      -0.00      83.36      -0.00      -0.00      -0.00       0.00      -2.04      -0.00      -0.00

   22   6.1  1.0  0.0       0.00      -0.00      -1.54      -0.00       0.00      -0.00      -0.00      96.33       0.00      -0.00
                            0.00      -1.57       0.00       0.00      -0.00      -0.00       0.00       0.00      93.26    -119.23

   23   7.1  1.0  0.0       0.00       0.00      -0.00      -1.52       0.00      -0.00     -96.33       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -1.76       2.04      -0.00      -0.00      -0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.94       2.53      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00       1.54       0.00       0.00     -93.26       0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00      -0.00      -1.88       0.71       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       2.02       0.00       0.00     119.23      -0.00      -0.00       0.00

   26  10.1  1.0  0.0       0.00      -0.00      -2.02      -0.00       0.00      -0.00      -0.00    -120.04       0.00       0.00
                            0.00       2.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     121.42     -31.01

   27  11.1  1.0  0.0       0.00       0.00      -0.00      -2.04      -0.00      -0.00     118.94      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       1.51       1.33      -0.00      -0.00       0.00      -0.00

   28  12.1  1.0  0.0       0.00      -2.01       0.00       0.00       0.00      -0.00      -0.00      -0.00      -1.13     124.28
                            0.00       0.00      -2.01       0.00       0.00      -0.00      -0.00      -2.17       0.00       0.00

   29  13.1  1.0  0.0       0.00      -0.00       0.00       0.07      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.05       0.06       0.00      -0.00      -0.00      -0.00

   30  14.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.03      -0.07      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.07       0.00      -0.00       0.00      -0.00      -0.00       0.00

   31  15.1  1.0  0.0   24752.15      -0.00       0.07      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.07      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   1.1  1.0 -1.0      -0.00    9269.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07       0.00      91.65      -0.00       0.00      -0.00       0.00      -2.25      -0.00      -0.00

   33   2.1  1.0 -1.0       0.07       0.00    9269.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -91.65       0.00      -0.00      -0.00       0.00      -0.00       0.00       2.23      -2.82

   34   3.1  1.0 -1.0      -0.00       0.00       0.00    9269.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      31.90    -180.51       0.00       0.00       0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00    9269.02       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -31.90       0.00       0.00       3.76      -0.00      -0.00      -0.00

   36   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00    9269.02       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     180.51      -0.00       0.00       0.64       0.00       0.00      -0.00

   37   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00   21458.96       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -3.76      -0.64      -0.00       0.00      -0.00      -0.00

   38   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   21458.96       0.00       0.00
                            0.00       2.25      -0.00      -0.00       0.00      -0.00      -0.00       0.00     127.30     170.55

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21458.96       0.00
                            0.00       0.00      -2.23      -0.00       0.00      -0.00       0.00    -127.30       0.00      -0.00

   40   9.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21458.97
                           -0.00       0.00       2.82       0.00       0.00       0.00       0.00    -170.55       0.00      -0.00

   41  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.46      -2.80       0.00      -0.00      -0.00       0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.80       0.00       0.00      -0.00       0.00      -0.00       0.00     172.02      48.46

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       2.84      -0.00       0.00      -1.51       0.00      -0.00       0.00

   44  13.1  1.0 -1.0     -65.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.10       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -65.56       0.00      -0.10      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   46  15.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.11      -0.02      -0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46

    1   1.1  0.0  0.0      -0.00       0.00       0.00      -0.00     -23.19       0.00
                            0.00      -0.00      -0.00     -23.19      -0.00       0.00

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

   17   1.1  1.0  0.0       0.00      -0.00       2.01       0.00       0.00       0.00
                           -2.00      -0.00      -0.00      -0.00       0.00      -0.07

   18   2.1  1.0  0.0       2.02       0.00      -0.00      -0.00      -0.00      -0.07
                            0.00      -0.00       2.01       0.00      -0.00       0.00

   19   3.1  1.0  0.0       0.00       2.04      -0.00      -0.07       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.07       0.00

   20   4.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.03      -0.00
                            0.00      -1.51      -0.00       0.05      -0.00      -0.00

   21   5.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.07       0.00
                            0.00      -1.33       0.00      -0.06       0.00       0.00

   22   6.1  1.0  0.0       0.00    -118.94       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00

   23   7.1  1.0  0.0     120.04       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       2.17       0.00       0.00       0.00

   24   8.1  1.0  0.0      -0.00      -0.00       1.13       0.00      -0.00      -0.00
                         -121.42      -0.00      -0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0      -0.00       0.00    -124.28       0.00       0.00       0.00
                           31.01       0.00      -0.00       0.00      -0.00      -0.00

   26  10.1  1.0  0.0       0.00      27.95       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00

   27  11.1  1.0  0.0     -27.95       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00    -124.27       0.00      -0.00      -0.00

   28  12.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00     124.27      -0.00       0.00      -0.00      -0.00

   29  13.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00      65.56
                            0.00      -0.00      -0.00      -0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00     -65.56

   31  15.1  1.0  0.0      -0.00       0.00       0.00     -65.56       0.00      -0.00
                            0.00       0.00       0.00      -0.00      65.56      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.80       0.00       0.10      -0.00       0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.10       0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -2.84      -0.00       0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.46       0.00       0.00      -0.00       0.00       0.11

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            2.80      -0.00      -0.00       0.00       0.00       0.02

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       1.51       0.00       0.00       0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -172.02       0.00      -0.00      -0.00       0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -48.46      -0.00       0.00      -0.00       0.00

   41  10.1  1.0 -1.0   21458.96       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -175.76      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0       0.00   21458.96       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00

   43  12.1  1.0 -1.0       0.00       0.00   21458.96       0.00       0.00       0.00
                          175.76       0.00       0.00      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00   24752.14       0.00       0.00
                            0.00       0.00       0.00       0.00      92.72       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00   24752.14       0.00
                            0.00      -0.00       0.00     -92.72       0.00       0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   24752.15
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 46)

    The diagonal matrixelements are shifted by  -8132.64619819 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000    9269.020       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000    9269.020       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000    9269.020       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000    9269.018       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000    9269.018       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000   21458.965       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000   21458.962
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.001       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+            -32.797       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      91.654       0.000       0.000       2.226      -0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000    -140.377    -117.884      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000     -91.654      -0.000       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000     140.377      -0.000       0.000       0.000       0.000       2.490

    5    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000     117.884      -0.000      -0.000       0.000       0.000      -2.888

    6    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.001      -2.226       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -2.490       2.888      -0.000       0.000

    8    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       2.176       0.000       0.000    -131.888       0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       2.862       0.000       0.000     168.613      -0.000

   10    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                               -0.000       2.823      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   11    1  |1 0>               0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       2.134       1.879      -0.000      -0.000

   12    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000      -2.842       0.000       0.000      -0.000      -0.000      -3.062

   13    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.071       0.085       0.000      -0.000

   14    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.095       0.000      -0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               32.797       0.095      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -91.654       0.000      -0.000       0.000      -0.000       2.251

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      91.654      -0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     -31.902     180.512      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      31.902      -0.000      -0.000      -3.760       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000    -180.512       0.000      -0.000      -0.640      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       3.760       0.640       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -2.251       0.000       0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       2.227       0.000      -0.000       0.000      -0.000     127.300

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -2.822      -0.000      -0.000      -0.000      -0.000     170.555

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.462       2.805      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.804      -0.000      -0.000       0.000      -0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -2.843       0.000      -0.000       1.514      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -32.797       0.095      -0.000      -0.000      -0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.095       0.000       0.000       0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.109       0.019       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.001       0.000      -0.000       0.000       0.000      -0.000     -32.797       0.000
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

    8    1  |1 1>+          21458.963       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000   21458.966       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000   21458.960       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000   21458.964       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000   21458.962       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   24752.145       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   24752.141       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   24752.146
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000      -2.823      -0.000      -0.000      -0.000       0.000      -0.095

    2    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000       2.842       0.000      -0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -2.176      -2.862       0.000       0.000      -0.000       0.000      -0.095       0.000

    4    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -2.134      -0.000       0.071      -0.000      -0.000

    5    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -1.879       0.000      -0.085       0.000       0.000

    6    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                              131.888    -168.613       0.000       0.000       0.000      -0.000      -0.000       0.000

    7    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       3.062       0.000       0.000       0.000

    8    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -171.720      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      43.852       0.000      -0.000       0.000      -0.000      -0.001

   10    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                              171.720     -43.852       0.000      -0.000      -0.000      -0.000       0.001      -0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000       0.000    -175.741       0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     175.741       0.000       0.000      -0.000      -0.000

   13    1  |1 0>               0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.001       0.000       0.000      -0.000       0.000     -92.723

   15    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.001       0.000       0.000       0.000      -0.000      92.723       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -2.804      -0.000      -0.095       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.227       2.822       0.000       0.000       0.000       0.000      -0.095      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       2.843       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.462      -0.000      -0.000       0.000      -0.000      -0.109

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -2.805       0.000       0.000      -0.000      -0.000      -0.019

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -1.514      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -127.300    -170.555      -0.000       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     172.025      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      48.461       0.000      -0.001       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000     175.760       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -172.025     -48.461       0.000      -0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -175.760      -0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.001      -0.000      -0.000      -0.000      -0.000     -92.723      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      92.723      -0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.001      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      91.654       0.000       0.000       2.226      -0.000       0.000

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -140.377    -117.884      -0.000      -0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                              -91.654      -0.000       0.000       0.000       0.000      -0.000      -0.000      -2.176

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000     140.377      -0.000       0.000       0.000       0.000       2.490      -0.000

    5    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000     117.884      -0.000      -0.000       0.000       0.000      -2.888      -0.000

    6    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                               -2.226       0.000       0.000      -0.000      -0.000       0.000       0.000     131.888

    7    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -2.490       2.888      -0.000       0.000      -0.000

    8    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       2.176       0.000       0.000    -131.888       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       2.862       0.000       0.000     168.613      -0.000      -0.000

   10    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                2.823      -0.000      -0.000      -0.000      -0.000      -0.000       0.000     171.720

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.000       2.134       1.879      -0.000      -0.000       0.000

   12    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -2.842       0.000       0.000      -0.000      -0.000      -3.062       0.000

   13    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.071       0.085       0.000      -0.000      -0.000

   14    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.095       0.000      -0.000       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.095      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 0>            9269.020       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000    9269.020       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000    9269.020       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000    9269.018       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000    9269.018       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   21458.965       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   21458.962       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   21458.963
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

    1    1  |1 1>-              0.000       0.000       0.000     172.279     -62.628       0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 1>-             -0.000       0.000     -91.654       0.000      -0.000       2.177       0.000      -0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-             -0.000      91.654       0.000       0.000      -0.000       0.000       2.152      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-           -172.279      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -1.327
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    5    1  |1 1>-             62.628       0.000       0.000      -0.000       0.000       0.000       0.000      -3.575
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-             -0.000      -2.177      -0.000       0.000      -0.000       0.000     136.238       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000      -0.000      -2.152       0.000      -0.000    -136.238       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       1.327       3.575      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000      -0.000      -2.660       1.004       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>-             -0.000      -2.861      -0.000       0.000      -0.000      -0.000    -169.758       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   11    1  |1 1>-              0.000      -0.000      -2.880      -0.000      -0.000     168.210      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   12    1  |1 1>-             -2.842       0.000       0.000       0.000      -0.000      -0.000      -0.000      -1.592
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 1>-             -0.000       0.000       0.096      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>-             -0.000       0.000      -0.000      -0.038      -0.104      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000       0.095      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000     -32.797      -0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -2.823      -0.000      -0.000      -0.000       0.000      -0.095      -0.000

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000       2.842       0.000      -0.000       0.000      91.654

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -2.862       0.000       0.000      -0.000       0.000      -0.095       0.000      -0.000

    4    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -2.134      -0.000       0.071      -0.000      -0.000       0.000

    5    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -1.879       0.000      -0.085       0.000       0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                             -168.613       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       3.062       0.000       0.000       0.000      -2.251

    8    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -171.720      -0.000      -0.000       0.000       0.000       0.000      -0.000

    9    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000      43.852       0.000      -0.000       0.000      -0.000      -0.001      -0.000

   10    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                              -43.852       0.000      -0.000      -0.000      -0.000       0.001      -0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000    -175.741       0.000      -0.000      -0.000       2.804

   12    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000     175.741       0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.095

   14    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.001       0.000       0.000      -0.000       0.000     -92.723      -0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.001       0.000       0.000       0.000      -0.000      92.723       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     172.279
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     -62.628
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>           21458.966       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000   21458.960       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000   21458.964       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000       0.000       0.000   21458.962       0.000       0.000       0.000       2.842
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000   24752.145       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000   24752.141       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   24752.146       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-             -0.000       0.000      -0.000       2.842       0.000       0.000       0.000    9269.020
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-             -0.000       2.861       0.000      -0.000      -0.000      -0.000      -0.095       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       2.880      -0.000      -0.096       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              2.660      -0.000       0.000      -0.000       0.000       0.038      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -1.004       0.000       0.000       0.000      -0.000       0.104       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 1>-             -0.000       0.000    -168.210       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.000     169.758       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000      -0.000      -0.000       1.592       0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 1>-              0.000      -0.000       0.000    -175.760       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000      39.522       0.000       0.001      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   11    1  |1 1>-             -0.000     -39.522       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-            175.760      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

   13    1  |1 1>-             -0.000      -0.001       0.000      -0.000       0.000       0.000      92.723       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 1>-             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000      -0.000       0.000       0.000     -92.723       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.001       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -91.654       0.000      -0.000       0.000      -0.000       2.251       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -2.227       2.822

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -31.902     180.512      -0.000      -0.000      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      31.902      -0.000      -0.000      -3.760       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -180.512       0.000      -0.000      -0.640      -0.000      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       3.760       0.640       0.000      -0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000    -127.300    -170.555

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.227       0.000      -0.000       0.000      -0.000     127.300      -0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.822      -0.000      -0.000      -0.000      -0.000     170.555      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.462       2.805      -0.000       0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000    -172.025     -48.461

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.843       0.000      -0.000       1.514      -0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.001

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.095       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.109       0.019       0.000      -0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000    -172.279      62.628      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000      91.654      -0.000       0.000      -2.177      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>             -91.654       0.000      -0.000       0.000      -0.000      -2.152       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       1.327      -2.660
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       3.575       1.004
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>               2.177       0.000      -0.000       0.000       0.000    -136.238      -0.000       0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       2.152      -0.000       0.000     136.238       0.000      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000      -1.327      -3.575       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -0.000       0.000       2.660      -1.004      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 0>               2.861       0.000      -0.000       0.000       0.000     169.758      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

   11    1  |1 0>               0.000       2.880       0.000       0.000    -168.210       0.000      -0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   12    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       1.592    -175.760
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   13    1  |1 0>              -0.000      -0.096       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.038       0.104       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -0.095       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-           9269.020       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000    9269.020       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000    9269.018       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000    9269.018       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   21458.965       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   21458.962       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   21458.963       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   21458.966
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
                               -0.000       0.000       0.000      32.797       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.804      -0.000      -0.095       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.095      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       2.843       0.000      -0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.462      -0.000      -0.000       0.000      -0.000      -0.109

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -2.805       0.000       0.000      -0.000      -0.000      -0.019

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -1.514      -0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     172.025      -0.000       0.000       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      48.461       0.000      -0.001       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     175.760       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                             -175.760      -0.000      -0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000     -92.723      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      92.723      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -2.842      -0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 0>              -2.861      -0.000       0.000       0.000       0.000       0.095
                                0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>              -0.000      -2.880       0.000       0.096      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.038       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.104      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000     168.210      -0.000      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 0>            -169.758      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000      -1.592      -0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000      -0.000     175.760      -0.000      -0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000     -39.522      -0.000      -0.001       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000

   11    1  |1 0>              39.522       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000

   13    1  |1 0>               0.001      -0.000       0.000       0.000      -0.000     -92.723
                                0.000      -0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 0>               0.000      -0.000      -0.000      92.723      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000

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

   10    1  |1 1>-          21458.960       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   21458.964       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   21458.962       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   24752.145       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   24752.141       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   24752.146
                                0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -8132.64619879    -0.00000060       -0.13      0.00000000        0.00      0.0000
    2 -8132.60521826     0.04097993     8994.06      0.04098053     8994.19      1.1151
    3 -8132.60521826     0.04097993     8994.06      0.04098053     8994.19      1.1151
    4 -8132.60521826     0.04097993     8994.06      0.04098053     8994.19      1.1151
    5 -8132.60438306     0.04181514     9177.36      0.04181574     9177.49      1.1379
    6 -8132.60438306     0.04181514     9177.36      0.04181574     9177.49      1.1379
    7 -8132.60438305     0.04181514     9177.36      0.04181574     9177.49      1.1379
    8 -8132.60438305     0.04181515     9177.36      0.04181575     9177.50      1.1379
    9 -8132.60438304     0.04181515     9177.36      0.04181575     9177.50      1.1379
   10 -8132.60313023     0.04306796     9452.32      0.04306856     9452.46      1.1720
   11 -8132.60313023     0.04306796     9452.32      0.04306856     9452.46      1.1720
   12 -8132.60313023     0.04306796     9452.33      0.04306856     9452.46      1.1720
   13 -8132.60313023     0.04306796     9452.33      0.04306856     9452.46      1.1720
   14 -8132.60313023     0.04306796     9452.33      0.04306856     9452.46      1.1720
   15 -8132.60313023     0.04306797     9452.33      0.04306856     9452.46      1.1720
   16 -8132.60313023     0.04306797     9452.33      0.04306856     9452.46      1.1720
   17 -8132.55002567     0.09617253    21107.43      0.09617312    21107.56      2.6170
   18 -8132.55002566     0.09617253    21107.43      0.09617313    21107.56      2.6170
   19 -8132.55002566     0.09617253    21107.43      0.09617313    21107.56      2.6170
   20 -8132.55002566     0.09617253    21107.43      0.09617313    21107.56      2.6170
   21 -8132.55002566     0.09617254    21107.43      0.09617313    21107.56      2.6170
   22 -8132.54882438     0.09737381    21371.08      0.09737441    21371.21      2.6497
   23 -8132.54882438     0.09737381    21371.08      0.09737441    21371.21      2.6497
   24 -8132.54882438     0.09737381    21371.08      0.09737441    21371.21      2.6497
   25 -8132.54882438     0.09737382    21371.08      0.09737441    21371.21      2.6497
   26 -8132.54882438     0.09737382    21371.08      0.09737441    21371.21      2.6497
   27 -8132.54882438     0.09737382    21371.08      0.09737442    21371.21      2.6497
   28 -8132.54882437     0.09737382    21371.08      0.09737442    21371.21      2.6497
   29 -8132.54722269     0.09897550    21722.61      0.09897610    21722.74      2.6933
   30 -8132.54722269     0.09897550    21722.61      0.09897610    21722.74      2.6933
   31 -8132.54722269     0.09897551    21722.61      0.09897611    21722.74      2.6933
   32 -8132.54722268     0.09897551    21722.61      0.09897611    21722.75      2.6933
   33 -8132.54722268     0.09897551    21722.61      0.09897611    21722.75      2.6933
   34 -8132.54722268     0.09897551    21722.61      0.09897611    21722.75      2.6933
   35 -8132.54722268     0.09897551    21722.61      0.09897611    21722.75      2.6933
   36 -8132.54722268     0.09897552    21722.62      0.09897612    21722.75      2.6933
   37 -8132.54722268     0.09897552    21722.62      0.09897612    21722.75      2.6933
   38 -8132.53426348     0.11193471    24566.83      0.11193531    24566.96      3.0459
   39 -8132.53384161     0.11235659    24659.42      0.11235718    24659.55      3.0574
   40 -8132.53384161     0.11235659    24659.42      0.11235719    24659.55      3.0574
   41 -8132.53384160     0.11235660    24659.42      0.11235719    24659.55      3.0574
   42 -8132.53299666     0.11320153    24844.87      0.11320213    24845.00      3.0804
   43 -8132.53299666     0.11320154    24844.87      0.11320214    24845.00      3.0804
   44 -8132.53299665     0.11320154    24844.87      0.11320214    24845.00      3.0804
   45 -8132.53299665     0.11320155    24844.87      0.11320215    24845.00      3.0804
   46 -8132.53299665     0.11320155    24844.87      0.11320215    24845.00      3.0804

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999733  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000002  0.78696315
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.54772076 -0.00000021  0.00000012 -0.00000001 -0.00000001 -0.40824731 -0.00000001
                          -0.00000000  0.00004568 -0.00000000  0.00000000  0.00000000  0.00000000  0.00009960  0.00000000

   3    1  |1 1>+          0.00000000  0.00000021 -0.54772061  0.00000019  0.00000003  0.40824722 -0.00000001 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00000005  0.00000007  0.21608068  0.76736676 -0.00000006 -0.00000003 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000013  0.00000020  0.59440063 -0.27895854  0.00000002  0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00014901 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00014728  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000

   8    1  |1 1>+          0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00007126
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00018686
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00019583 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00019715  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000001 -0.00019454  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000556 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000747  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00133502  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000229
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.00000557 -0.00000000  0.00000000  0.00000747 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000021  0.54772188 -0.00000019  0.00000003  0.40824623 -0.00000001 -0.00000001

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000012  0.00000019  0.54772135  0.40824627 -0.00000003 -0.00000001 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00000000  0.20502030

   4    1  |1 0>          -0.00000000  0.00005194 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003467 -0.00000000
                          -0.00000000  0.62280634  0.00000024 -0.00000014 -0.00000000 -0.00000000 -0.14209793 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000918 -0.00000000  0.00000000  0.00000000  0.00000000  0.00019615  0.00000000
                           0.00000000  0.11006878  0.00000004 -0.00000002  0.00000003  0.00000002  0.80403784  0.00000003

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00025306

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001  0.00015406 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00015245 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00019317  0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00004667

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00019189  0.00000000  0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00019454 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000557  0.00000747 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000557 -0.00000000 -0.00000000 -0.00000746  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00133501 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000834

   1    1  |1 1>-          0.00000000 -0.00004568  0.00000000 -0.00000000  0.00000000  0.00000000  0.00009960  0.00000000
                          -0.00000000 -0.54772172 -0.00000021  0.00000012  0.00000001  0.00000001  0.40824655  0.00000001

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000002 -0.58194116

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000012 -0.00000019 -0.54772105  0.40824650 -0.00000003 -0.00000001 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                           0.00000000 -0.00000016  0.40672668 -0.00000014  0.00000005  0.62526723 -0.00000002 -0.00000001

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                          -0.00000000  0.00000019 -0.48433076  0.00000017  0.00000004  0.52508091 -0.00000001 -0.00000001

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00015236  0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00018547

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000
                           0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00014892 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000
                          -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00019591 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00019324 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00013544

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00019454 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00133502 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000604

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000555  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000747  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000556 -0.00000747  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.21761590 -0.00000008  0.00000014 -0.00000104 -0.00000182 -0.57734923 -0.00000005  0.00000008
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.20137766 -0.00000019  0.00000041  0.70198490 -0.00000219 -0.00000002 -0.00000009
                           0.00000000 -0.00000007 -0.00000003  0.00000007 -0.00041770  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000001 -0.00000013  0.10243743  0.00000002  0.00000009  0.00000012 -0.00000054  0.72307867
                          -0.00000000  0.00000001 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000016

   4    1  |1 1>+          0.00000002  0.00000006  0.00000016 -0.57317136  0.00000034  0.00000105 -0.18955687 -0.00000015
                          -0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000006  0.00000000  0.00000000  0.00000001

   5    1  |1 1>+         -0.00000001 -0.00000006  0.00000010 -0.36725740  0.00000022  0.00000060  0.65878061  0.00000049
                           0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000004  0.00000000 -0.00000001 -0.00000004

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00033718 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003644
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00034083 -0.00000000 -0.00000000 -0.00001204  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00025109 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000249 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00005413  0.00000000 -0.00000000  0.00000000  0.00000000  0.00027537  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000  0.00023229  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00014358
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00020723  0.00000000  0.00000000  0.00017422 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00019709  0.00000000  0.00000000 -0.00019234 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000830  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000009  0.00000019 -0.00000001  0.00000000 -0.00000000  0.00000001  0.00000002
                          -0.00000001 -0.00000082  0.72572702  0.00000020 -0.00000003  0.00000019 -0.00000005  0.08158380

   2    1  |1 0>           0.00000000  0.00000000 -0.00000001  0.00000010 -0.00000007  0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000005 -0.00000020  0.72554899 -0.00000043 -0.00000131  0.08315539  0.00000007

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.79033674  0.00000008 -0.00000014  0.00000104  0.00000182  0.57735114  0.00000005 -0.00000008

   4    1  |1 0>          -0.00000000 -0.00000019 -0.00000006 -0.00000005  0.00033076 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.53189306  0.00000063  0.00000036  0.55588665 -0.00000183  0.00000007 -0.00000006

   5    1  |1 0>           0.00000000  0.00000013  0.00000005 -0.00000004  0.00026465 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.37892066 -0.00000040  0.00000024  0.44477731 -0.00000135 -0.00000004 -0.00000006

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00006391 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000237 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00004897  0.00000000  0.00000000 -0.00032984 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00004855 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00033177

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00013601  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00024223

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00018886  0.00000000 -0.00000000  0.00000000  0.00000000  0.00027537  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00013613 -0.00000000 -0.00000000 -0.00024470 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00022213 -0.00000000  0.00000000  0.00016276 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001

  15    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000216 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000026 -0.00000009  0.00000000  0.00001159 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.73003816  0.00000082  0.00000005  0.01948821 -0.00000016  0.00000009  0.00000001

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57272245 -0.00000008  0.00000014 -0.00000104 -0.00000182 -0.57735024 -0.00000005  0.00000008

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000  0.00000001  0.00000005
                           0.00000001 -0.00000009 -0.00000004  0.10087140 -0.00000006 -0.00000025  0.72329887  0.00000054

   4    1  |1 1>-          0.00000000  0.00000008 -0.00000017  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000001
                          -0.00000001  0.00000075 -0.66422653 -0.00000019  0.00000004 -0.00000016 -0.00000004  0.04916561

   5    1  |1 1>-          0.00000000 -0.00000002  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000015
                          -0.00000001 -0.00000015  0.14707061  0.00000005 -0.00000010 -0.00000005  0.00000051 -0.68416652

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00033305 -0.00000000 -0.00000000  0.00003963  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00018363 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000480 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000019  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00009207  0.00000000 -0.00000000 -0.00032651  0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000015 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00010292  0.00000000  0.00000000  0.00025282 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00023837 -0.00000000 -0.00000000 -0.00014242 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00013968  0.00000000 -0.00000000  0.00000000  0.00000000  0.00027534  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00019750  0.00000000  0.00000000  0.00000000 -0.00000000  0.00019191

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000614 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00015462 -0.00000000 -0.00000000  0.00000000 -0.00028647  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00016276 -0.00000000  0.00000000 -0.00022479 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000074  0.00000000  0.00000000  0.00000379  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00016276  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00033774
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00030596  0.00000000  0.00000000  0.00000000 -0.00006970 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00011121 -0.00000000 -0.00000000 -0.00000000  0.00032646  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000001 -0.00000001  0.37374411 -0.00000001 -0.00000001  0.00000000 -0.00000001  0.33822875
                          -0.00000000  0.00000000  0.00000004  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000001  0.00000001  0.36940281 -0.00000000 -0.00000006  0.64135935  0.00000002
                          -0.00000000 -0.00000000  0.00000001 -0.00167790  0.00000000 -0.00000000 -0.01081558 -0.00000000

   8    1  |1 1>+          0.57397449  0.00000004  0.00000001 -0.00000000 -0.31481593 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.23696645  0.00000002  0.00000001 -0.00000000  0.42656208  0.00000001 -0.00000001 -0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000001 -0.00000001  0.49119208 -0.00000002 -0.00000001 -0.00000001 -0.00000001  0.09433899
                          -0.00000000  0.00000000  0.00000006  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000001  0.00000002  0.49445564 -0.00000000  0.00000002 -0.24661708 -0.00000000
                          -0.00000000 -0.00000000  0.00000001 -0.00224591  0.00000000  0.00000000  0.00415883  0.00000000

  12    1  |1 1>+         -0.00000003  0.48795124  0.00000001  0.00000001  0.00000000  0.37117224  0.00000005  0.00000002
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000006  0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000012 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00016276  0.00000000  0.00000000  0.00000000 -0.00000000  0.00016701

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00016276  0.00000000  0.00000000  0.00000000  0.00001365  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00032540 -0.00000000 -0.00000000  0.00000000 -0.00000933 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000  0.00000000  0.00000207  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00005665 -0.00000000 -0.00000000  0.00012277 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000146  0.00000000 -0.00000000 -0.00000425 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00032057  0.00000000  0.00000000 -0.00025176 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01456725 -0.00000000  0.00000001  0.00000000  0.65448047 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000002 -0.38640906 -0.00000001 -0.00000001 -0.00000000  0.68187166  0.00000007  0.00000001

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000004 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000001  0.38237176 -0.00000001 -0.00000001 -0.00000001 -0.00000003  0.68232953

   9    1  |1 0>          -0.00000000  0.00000000  0.00000005  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000001 -0.48450098  0.00000001  0.00000001 -0.00000001 -0.00000002  0.36217129

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.48789632 -0.00000003 -0.00000001  0.00000000 -0.00835299  0.00000001 -0.00000001 -0.00000002

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003  0.48128807  0.00000001  0.00000001  0.00000000  0.53293928  0.00000005 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000001 -0.00221634  0.00000000  0.00000000  0.00952057  0.00000000
                          -0.00000000  0.00000001 -0.00000001 -0.48794610  0.00000000 -0.00000006  0.56456589  0.00000003

  13    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000010

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000011 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000074  0.00000000  0.00000000  0.00000529  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00016276  0.00000000 -0.00000000  0.00031378  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00017078 -0.00000000 -0.00000000  0.00000000  0.00027713  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00016276  0.00000000  0.00000000  0.00000000  0.00034043  0.00000000  0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00024930  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00009819

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00020935  0.00000000  0.00000000  0.00000000  0.00000000 -0.00027553

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002  0.38215084  0.00000001  0.00000001  0.00000000 -0.03059654 -0.00000001 -0.00000002

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.55278412  0.00000004  0.00000002 -0.00000000  0.35063361 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000001 -0.00169662  0.00000000 -0.00000000 -0.00769840 -0.00000000
                          -0.00000000  0.00000001 -0.00000001 -0.37352530  0.00000000  0.00000006 -0.45651196 -0.00000003

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000001 -0.00223179  0.00000000 -0.00000000  0.00034389  0.00000000
                          -0.00000000  0.00000001 -0.00000002 -0.49134697  0.00000000 -0.00000001  0.02039248  0.00000001

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000003 -0.48467927 -0.00000001 -0.00000001 -0.00000000  0.33514409  0.00000003 -0.00000001

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.26565904  0.00000002  0.00000000 -0.00000000 -0.40936191  0.00000001 -0.00000001 -0.00000002

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000005 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001 -0.00000001  0.48795098 -0.00000001 -0.00000001  0.00000000  0.00000002 -0.52911209

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000002 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000004
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00027538 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00026607 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00008529  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00027940  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00015117 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.62541995 -0.00000004  0.00000001 -0.00000000 -0.00000001  0.14889534  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00017267  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000001 -0.00000000 -0.31581053  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00008255 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00522708  0.00000000  0.00000001 -0.00000001  0.36808154  0.65887806
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000 -0.00000001  0.57732591 -0.00000002 -0.00000000  0.00000001 -0.30169012  0.13397187
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.56469830  0.00000004  0.00000000 -0.00000001 -0.00000004  0.65269717  0.00000001 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00075693  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000001  0.51117513 -0.00000000 -0.00000000  0.00000000  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00013361 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000004 -0.44222660 -0.00000001  0.00000001  0.53650764  0.00000003 -0.00000001 -0.00000001
                           0.00000000  0.00000001 -0.00000000 -0.00000000  0.00003883  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000011  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000018  0.00000006
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00030568 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00034806 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00027538  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000009  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00034585  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00011947 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00497206  0.00000000 -0.00000001 -0.00000000 -0.08605279  0.41392921

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00003552  0.00000000 -0.00000000 -0.00000000
                          -0.00000002 -0.15412661 -0.00000001  0.00000001 -0.49073441 -0.00000003  0.00000001 -0.00000001

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00057565  0.00000000  0.00000000
                          -0.16900312  0.00000003  0.00000002 -0.00000001  0.00000003 -0.49638505 -0.00000001 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00017474  0.00000000  0.00000000
                          -0.45610151  0.00000004  0.00000001 -0.00000001  0.00000001 -0.15067628 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000001  0.57732938 -0.00000002  0.00000001 -0.00000001  0.64959424  0.06580185

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001179 -0.00000000  0.00000000  0.00000000
                           0.00000001  0.24618021 -0.00000000  0.00000001 -0.16282417 -0.00000001 -0.00000000  0.00000001

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00003149 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000001  0.00000001  0.12045610 -0.00000000 -0.00000000  0.00000000  0.00000002

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000022 -0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000020  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00015116  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00027538 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00007381 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00030215  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00018843 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-          0.00000000  0.00000001 -0.00000000 -0.00000000  0.00001106  0.00000000 -0.00000000 -0.00000000
                           0.00000005  0.70248955  0.00000001 -0.00000000 -0.15278101 -0.00000001  0.00000001 -0.00000001

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.01005323  0.00000000  0.00000001 -0.00000001  0.48016415 -0.57631876

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00014254  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000001 -0.00000002 -0.54531864  0.00000000 -0.00000000  0.00000000  0.00000001

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00014949  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00000002  0.57191022  0.00000000 -0.00000000  0.00000000 -0.00000001

  10    1  |1 1>-          0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00004699 -0.00000000  0.00000000  0.00000000
                           0.00000003  0.47600854  0.00000000  0.00000000  0.64921917  0.00000004 -0.00000001 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.57726272 -0.00000002 -0.00000001  0.00000000 -0.33699211 -0.20030143

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00061662  0.00000000  0.00000000
                          -0.23102996  0.00000000 -0.00000002  0.00000001  0.00000003 -0.53170836 -0.00000001  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000018  0.00000011

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00231231 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000430  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000431
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000 -0.00000001  0.00000001  0.57671172 -0.00000001  0.00000000  0.00000000  0.00000009
                          -0.00000000 -0.00000000  0.00000000  0.00037159 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.01098152  0.00000000  0.59345509 -0.00000001  0.00000000  0.00000000 -0.00000002 -0.00000000
                           0.00018968  0.00000012 -0.00582585  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000002 -0.00000001 -0.00000000 -0.00000000 -0.04257363 -0.00000002 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000001 -0.00000000  0.00000000 -0.00000001 -0.56535032  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.07022851  0.00000000 -0.00000000 -0.00000000 -0.00000012
                          -0.00000000  0.00000000 -0.00000000  0.00004525 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.61206172 -0.00000002  0.24214494 -0.00000001 -0.00000000 -0.00000000  0.00000007  0.00000000
                          -0.01057222  0.00000005 -0.00237711 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000001 -0.37513974 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00001982 -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000013  0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.70710054 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013  0.57735384  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000000  0.00000000 -0.00000000  0.70709830
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000431

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000490 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000087 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00000001 -0.00000000  0.00000000  0.62663853 -0.00000017 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00001839  0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.34808572  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00021684 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00000001 -0.33653761  0.00000000  0.00000000 -0.00000000  0.00000004

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00040921  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000002  0.00000001  0.63510512 -0.00000001 -0.00000000 -0.00000000 -0.00000012

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00000000 -0.00000000  0.04770240 -0.00000001  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000  0.00003331 -0.00000013  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000002  0.63025471 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 0>           0.01057808  0.00000004 -0.00226885  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.61240157 -0.00000002 -0.23111879  0.00000000 -0.00000001 -0.00000000  0.00000003 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.70711526

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000014 -0.57734512  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000431  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000322

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000382

   6    1  |1 1>-          0.00000000 -0.00003064  0.00000012 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000002 -0.57981966  0.00000000 -0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000002  0.00000002  0.00000000  0.00000000  0.09318658  0.00000002  0.00000000 -0.00000000

   8    1  |1 1>-          0.00687037 -0.00000009  0.00435021 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.39774878 -0.00000001  0.44313738 -0.00000001 -0.00000000  0.00000000 -0.00000005 -0.00000000

   9    1  |1 1>-         -0.00523126 -0.00000012  0.00571820 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.30285609  0.00000001  0.58248939 -0.00000001  0.00000000  0.00000000  0.00000011  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000362 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.06851763 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000001  0.00000000  0.00000001  0.52433901 -0.00000001 -0.00000000 -0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00024607  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000000  0.38190974 -0.00000001  0.00000000 -0.00000000 -0.00000006

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000020  0.57734722  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000
                          -0.00000015  0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.70711303  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000

 State Sym Spin     / Nr.     41          42          43          44          45          46

   1    1  |0 0>          -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000128  0.00000000  0.00000000  0.00000000  0.00000852
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00000430 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000431  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000171  0.00000000 -0.00000000  0.00000000  0.00000811 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000468 -0.00000000  0.00000000 -0.00000000 -0.00000295  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000009
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000021
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000011 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000009  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000001  0.00000001  0.70711303 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.80739703 -0.00000001  0.00000000 -0.00000000  0.12153520
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.70711526 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000431  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000431  0.00000000 -0.00000000  0.00000000  0.00000431 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000802  0.00000000 -0.00000000  0.00000000  0.00000315

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000151 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000850  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000013

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000021 -0.00000000 -0.00000000 -0.00000000 -0.00000009

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000007 -0.00000000  0.00000000 -0.00000000  0.00000007 -0.00000000

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.70710902 -0.00000000  0.00000000 -0.00000000 -0.70710454  0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.70709830  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.29844992  0.00000000  0.00000000  0.00000000  0.75999900

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000430 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000673  0.00000000 -0.00000000 -0.00000000 -0.00000537

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000431  0.00000000 -0.00000000  0.00000000  0.00000431 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000661  0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000555  0.00000000  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000010 -0.00000000 -0.00000000 -0.00000000 -0.00000010  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000012 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000012  0.00000000  0.00000000  0.00000000 -0.00000012  0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000008

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000012 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.50895746  0.00000001 -0.00000000  0.00000000  0.63845964

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000001  0.70710054 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                           0.70710454  0.00000000 -0.00000000  0.00000000  0.70710902 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -8132.64619879     -0.00000060       -0.13      0.00000000        0.00      0.0000
     2   1  -8132.60521826      0.04097993     8994.06      0.04098053     8994.19      1.1151
     3   1  -8132.60521826      0.04097993     8994.06      0.04098053     8994.19      1.1151
     4   1  -8132.60521826      0.04097993     8994.06      0.04098053     8994.19      1.1151
     5   1  -8132.60438306      0.04181514     9177.36      0.04181574     9177.49      1.1379
     6   1  -8132.60438306      0.04181514     9177.36      0.04181574     9177.49      1.1379
     7   1  -8132.60438305      0.04181514     9177.36      0.04181574     9177.49      1.1379
     8   1  -8132.60438305      0.04181515     9177.36      0.04181575     9177.50      1.1379
     9   1  -8132.60438304      0.04181515     9177.36      0.04181575     9177.50      1.1379
    10   1  -8132.60313023      0.04306796     9452.32      0.04306856     9452.46      1.1720
    11   1  -8132.60313023      0.04306796     9452.32      0.04306856     9452.46      1.1720
    12   1  -8132.60313023      0.04306796     9452.33      0.04306856     9452.46      1.1720
    13   1  -8132.60313023      0.04306796     9452.33      0.04306856     9452.46      1.1720
    14   1  -8132.60313023      0.04306796     9452.33      0.04306856     9452.46      1.1720
    15   1  -8132.60313023      0.04306797     9452.33      0.04306856     9452.46      1.1720
    16   1  -8132.60313023      0.04306797     9452.33      0.04306856     9452.46      1.1720
    17   1  -8132.55002567      0.09617253    21107.43      0.09617312    21107.56      2.6170
    18   1  -8132.55002566      0.09617253    21107.43      0.09617313    21107.56      2.6170
    19   1  -8132.55002566      0.09617253    21107.43      0.09617313    21107.56      2.6170
    20   1  -8132.55002566      0.09617253    21107.43      0.09617313    21107.56      2.6170
    21   1  -8132.55002566      0.09617254    21107.43      0.09617313    21107.56      2.6170
    22   1  -8132.54882438      0.09737381    21371.08      0.09737441    21371.21      2.6497
    23   1  -8132.54882438      0.09737381    21371.08      0.09737441    21371.21      2.6497
    24   1  -8132.54882438      0.09737381    21371.08      0.09737441    21371.21      2.6497
    25   1  -8132.54882438      0.09737382    21371.08      0.09737441    21371.21      2.6497
    26   1  -8132.54882438      0.09737382    21371.08      0.09737441    21371.21      2.6497
    27   1  -8132.54882438      0.09737382    21371.08      0.09737442    21371.21      2.6497
    28   1  -8132.54882437      0.09737382    21371.08      0.09737442    21371.21      2.6497
    29   1  -8132.54722269      0.09897550    21722.61      0.09897610    21722.74      2.6933
    30   1  -8132.54722269      0.09897550    21722.61      0.09897610    21722.74      2.6933
    31   1  -8132.54722269      0.09897551    21722.61      0.09897611    21722.74      2.6933
    32   1  -8132.54722268      0.09897551    21722.61      0.09897611    21722.75      2.6933
    33   1  -8132.54722268      0.09897551    21722.61      0.09897611    21722.75      2.6933
    34   1  -8132.54722268      0.09897551    21722.61      0.09897611    21722.75      2.6933
    35   1  -8132.54722268      0.09897551    21722.61      0.09897611    21722.75      2.6933
    36   1  -8132.54722268      0.09897552    21722.62      0.09897612    21722.75      2.6933
    37   1  -8132.54722268      0.09897552    21722.62      0.09897612    21722.75      2.6933
    38   1  -8132.53426348      0.11193471    24566.83      0.11193531    24566.96      3.0459
    39   1  -8132.53384161      0.11235659    24659.42      0.11235718    24659.55      3.0574
    40   1  -8132.53384161      0.11235659    24659.42      0.11235719    24659.55      3.0574
    41   1  -8132.53384160      0.11235660    24659.42      0.11235719    24659.55      3.0574
    42   1  -8132.53299666      0.11320153    24844.87      0.11320213    24845.00      3.0804
    43   1  -8132.53299666      0.11320154    24844.87      0.11320214    24845.00      3.0804
    44   1  -8132.53299665      0.11320154    24844.87      0.11320214    24845.00      3.0804
    45   1  -8132.53299665      0.11320155    24844.87      0.11320215    24845.00      3.0804
    46   1  -8132.53299665      0.11320155    24844.87      0.11320215    24845.00      3.0804

 E0 =  -8132.64619819 is the energy of the lowest zeroth-order state
 E1 =  -8132.64619879 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999733  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000002  0.78696315
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000 -0.54772076 -0.00000021  0.00000012 -0.00000001 -0.00000001 -0.40824731 -0.00000001
                               -0.00000000  0.00004568 -0.00000000  0.00000000  0.00000000  0.00000000  0.00009960  0.00000000

  4  1     3    1  |1 1>+       0.00000000  0.00000021 -0.54772061  0.00000019  0.00000003  0.40824722 -0.00000001 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     4    1  |1 1>+      -0.00000000  0.00000005  0.00000007  0.21608068  0.76736676 -0.00000006 -0.00000003 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000013  0.00000020  0.59440063 -0.27895854  0.00000002  0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00014901 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00014728  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000

  9  1     8    1  |1 1>+       0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00007126
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000002  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00018686
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000  0.00019583 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000  0.00019715  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000

 13  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000001 -0.00019454  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000 -0.00000556 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000747  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.00133502  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000229
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.00000557 -0.00000000  0.00000000  0.00000747 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000021  0.54772188 -0.00000019  0.00000003  0.40824623 -0.00000001 -0.00000001

 18  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000012  0.00000019  0.54772135  0.40824627 -0.00000003 -0.00000001 -0.00000000

 19  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000002 -0.00000000  0.20502030

 20  1     4    1  |1 0>       -0.00000000  0.00005194 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003467 -0.00000000
                               -0.00000000  0.62280634  0.00000024 -0.00000014 -0.00000000 -0.00000000 -0.14209793 -0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000918 -0.00000000  0.00000000  0.00000000  0.00000000  0.00019615  0.00000000
                                0.00000000  0.11006878  0.00000004 -0.00000002  0.00000003  0.00000002  0.80403784  0.00000003

 22  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000004  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00025306

 23  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001  0.00015406 -0.00000000 -0.00000000 -0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00015245 -0.00000000 -0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00019317  0.00000000  0.00000000

 26  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00004667

 27  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00019189  0.00000000  0.00000000  0.00000000

 28  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00019454 -0.00000000

 29  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000557  0.00000747 -0.00000000 -0.00000000 -0.00000000

 30  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000557 -0.00000000 -0.00000000 -0.00000746  0.00000000  0.00000000

 31  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00133501 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000834

 32  1     1    1  |1 1>-       0.00000000 -0.00004568  0.00000000 -0.00000000  0.00000000  0.00000000  0.00009960  0.00000000
                               -0.00000000 -0.54772172 -0.00000021  0.00000012  0.00000001  0.00000001  0.40824655  0.00000001

 33  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000002 -0.58194116

 34  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000012 -0.00000019 -0.54772105  0.40824650 -0.00000003 -0.00000001 -0.00000000

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                                0.00000000 -0.00000016  0.40672668 -0.00000014  0.00000005  0.62526723 -0.00000002 -0.00000001

 36  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                               -0.00000000  0.00000019 -0.48433076  0.00000017  0.00000004  0.52508091 -0.00000001 -0.00000001

 37  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00015236  0.00000000  0.00000000  0.00000000

 38  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00018547

 39  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000
                                0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00014892 -0.00000000

 40  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005 -0.00000000
                               -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00019591 -0.00000000

 41  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00019324 -0.00000000 -0.00000000 -0.00000000

 42  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000002 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00013544

 43  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00019454 -0.00000000 -0.00000000

 44  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00133502 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000604

 45  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000555  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000747  0.00000000

 46  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000556 -0.00000747  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.21761590 -0.00000008  0.00000014 -0.00000104 -0.00000182 -0.57734923 -0.00000005  0.00000008
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000 -0.20137766 -0.00000019  0.00000041  0.70198490 -0.00000219 -0.00000002 -0.00000009
                                0.00000000 -0.00000007 -0.00000003  0.00000007 -0.00041770  0.00000000 -0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00000001 -0.00000013  0.10243743  0.00000002  0.00000009  0.00000012 -0.00000054  0.72307867
                               -0.00000000  0.00000001 -0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000016

  5  1     4    1  |1 1>+       0.00000002  0.00000006  0.00000016 -0.57317136  0.00000034  0.00000105 -0.18955687 -0.00000015
                               -0.00000000  0.00000000 -0.00000000  0.00000008 -0.00000006  0.00000000  0.00000000  0.00000001

  6  1     5    1  |1 1>+      -0.00000001 -0.00000006  0.00000010 -0.36725740  0.00000022  0.00000060  0.65878061  0.00000049
                                0.00000000  0.00000000 -0.00000000  0.00000005 -0.00000004  0.00000000 -0.00000001 -0.00000004

  7  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00033718 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003644
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     7    1  |1 1>+      -0.00000000 -0.00034083 -0.00000000 -0.00000000 -0.00001204  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

  9  1     8    1  |1 1>+       0.00025109 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000249 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     9    1  |1 1>+       0.00005413  0.00000000 -0.00000000  0.00000000  0.00000000  0.00027537  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.00000000 -0.00000000  0.00023229  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00014358
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    11    1  |1 1>+      -0.00000000  0.00020723  0.00000000  0.00000000  0.00017422 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000

 13  1    12    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00019709  0.00000000  0.00000000 -0.00019234 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1    13    1  |1 1>+      -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000830  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000009  0.00000019 -0.00000001  0.00000000 -0.00000000  0.00000001  0.00000002
                               -0.00000001 -0.00000082  0.72572702  0.00000020 -0.00000003  0.00000019 -0.00000005  0.08158380

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000001  0.00000010 -0.00000007  0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000005 -0.00000020  0.72554899 -0.00000043 -0.00000131  0.08315539  0.00000007

 19  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.79033674  0.00000008 -0.00000014  0.00000104  0.00000182  0.57735114  0.00000005 -0.00000008

 20  1     4    1  |1 0>       -0.00000000 -0.00000019 -0.00000006 -0.00000005  0.00033076 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.53189306  0.00000063  0.00000036  0.55588665 -0.00000183  0.00000007 -0.00000006

 21  1     5    1  |1 0>        0.00000000  0.00000013  0.00000005 -0.00000004  0.00026465 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.37892066 -0.00000040  0.00000024  0.44477731 -0.00000135 -0.00000004 -0.00000006

 22  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00006391 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000237 -0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00004897  0.00000000  0.00000000 -0.00032984 -0.00000000

 24  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00004855 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00033177

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00013601  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00024223

 26  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00018886  0.00000000 -0.00000000  0.00000000  0.00000000  0.00027537  0.00000000 -0.00000000

 27  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00013613 -0.00000000 -0.00000000 -0.00024470 -0.00000000

 28  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000010 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00022213 -0.00000000  0.00000000  0.00016276 -0.00000000 -0.00000000 -0.00000000

 29  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 30  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001

 31  1    15    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000216 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 32  1     1    1  |1 1>-       0.00000000 -0.00000026 -0.00000009  0.00000000  0.00001159 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.73003816  0.00000082  0.00000005  0.01948821 -0.00000016  0.00000009  0.00000001

 33  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57272245 -0.00000008  0.00000014 -0.00000104 -0.00000182 -0.57735024 -0.00000005  0.00000008

 34  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000001  0.00000000  0.00000001  0.00000005
                                0.00000001 -0.00000009 -0.00000004  0.10087140 -0.00000006 -0.00000025  0.72329887  0.00000054

 35  1     4    1  |1 1>-       0.00000000  0.00000008 -0.00000017  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000001
                               -0.00000001  0.00000075 -0.66422653 -0.00000019  0.00000004 -0.00000016 -0.00000004  0.04916561

 36  1     5    1  |1 1>-       0.00000000 -0.00000002  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000004 -0.00000015
                               -0.00000001 -0.00000015  0.14707061  0.00000005 -0.00000010 -0.00000005  0.00000051 -0.68416652

 37  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00033305 -0.00000000 -0.00000000  0.00003963  0.00000000

 38  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00018363 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000480 -0.00000000  0.00000000

 39  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000019  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00009207  0.00000000 -0.00000000 -0.00032651  0.00000000  0.00000000  0.00000000

 40  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000015 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00010292  0.00000000  0.00000000  0.00025282 -0.00000000  0.00000000 -0.00000000

 41  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00023837 -0.00000000 -0.00000000 -0.00014242 -0.00000000

 42  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00013968  0.00000000 -0.00000000  0.00000000  0.00000000  0.00027534  0.00000000 -0.00000000

 43  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00019750  0.00000000  0.00000000  0.00000000 -0.00000000  0.00019191

 44  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000614 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+      -0.00015462 -0.00000000 -0.00000000  0.00000000 -0.00028647  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00016276 -0.00000000  0.00000000 -0.00022479 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000074  0.00000000  0.00000000  0.00000379  0.00000000

  4  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00016276  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00033774
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+      -0.00000000  0.00030596  0.00000000  0.00000000  0.00000000 -0.00006970 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00011121 -0.00000000 -0.00000000 -0.00000000  0.00032646  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.00000001 -0.00000001  0.37374411 -0.00000001 -0.00000001  0.00000000 -0.00000001  0.33822875
                               -0.00000000  0.00000000  0.00000004  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     7    1  |1 1>+       0.00000000 -0.00000001  0.00000001  0.36940281 -0.00000000 -0.00000006  0.64135935  0.00000002
                               -0.00000000 -0.00000000  0.00000001 -0.00167790  0.00000000 -0.00000000 -0.01081558 -0.00000000

  9  1     8    1  |1 1>+       0.57397449  0.00000004  0.00000001 -0.00000000 -0.31481593 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     9    1  |1 1>+       0.23696645  0.00000002  0.00000001 -0.00000000  0.42656208  0.00000001 -0.00000001 -0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+      -0.00000001 -0.00000001  0.49119208 -0.00000002 -0.00000001 -0.00000001 -0.00000001  0.09433899
                               -0.00000000  0.00000000  0.00000006  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.00000000 -0.00000001  0.00000002  0.49445564 -0.00000000  0.00000002 -0.24661708 -0.00000000
                               -0.00000000 -0.00000000  0.00000001 -0.00224591  0.00000000  0.00000000  0.00415883  0.00000000

 13  1    12    1  |1 1>+      -0.00000003  0.48795124  0.00000001  0.00000001  0.00000000  0.37117224  0.00000005  0.00000002
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.00000006  0.00000000 -0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000012 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000004
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00016276  0.00000000  0.00000000  0.00000000 -0.00000000  0.00016701

 18  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00016276  0.00000000  0.00000000  0.00000000  0.00001365  0.00000000  0.00000000

 19  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00032540 -0.00000000 -0.00000000  0.00000000 -0.00000933 -0.00000000  0.00000000  0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000026 -0.00000000  0.00000000  0.00000207  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00005665 -0.00000000 -0.00000000  0.00012277 -0.00000000

 21  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000146  0.00000000 -0.00000000 -0.00000425 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00032057  0.00000000  0.00000000 -0.00025176 -0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01456725 -0.00000000  0.00000001  0.00000000  0.65448047 -0.00000000  0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000002 -0.38640906 -0.00000001 -0.00000001 -0.00000000  0.68187166  0.00000007  0.00000001

 24  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000004 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000001  0.38237176 -0.00000001 -0.00000001 -0.00000001 -0.00000003  0.68232953

 25  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000005  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000001 -0.48450098  0.00000001  0.00000001 -0.00000001 -0.00000002  0.36217129

 26  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.48789632 -0.00000003 -0.00000001  0.00000000 -0.00835299  0.00000001 -0.00000001 -0.00000002

 27  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003  0.48128807  0.00000001  0.00000001  0.00000000  0.53293928  0.00000005 -0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000001 -0.00221634  0.00000000  0.00000000  0.00952057  0.00000000
                               -0.00000000  0.00000001 -0.00000001 -0.48794610  0.00000000 -0.00000006  0.56456589  0.00000003

 29  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000008 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000

 30  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000009 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000010

 31  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000011 -0.00000000  0.00000000  0.00000000

 32  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000074  0.00000000  0.00000000  0.00000529  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00016276  0.00000000 -0.00000000  0.00031378  0.00000000

 33  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00017078 -0.00000000 -0.00000000  0.00000000  0.00027713  0.00000000 -0.00000000 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00016276  0.00000000  0.00000000  0.00000000  0.00034043  0.00000000  0.00000000

 35  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00024930  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00009819

 36  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00020935  0.00000000  0.00000000  0.00000000  0.00000000 -0.00027553

 37  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002  0.38215084  0.00000001  0.00000001  0.00000000 -0.03059654 -0.00000001 -0.00000002

 38  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.55278412  0.00000004  0.00000002 -0.00000000  0.35063361 -0.00000000  0.00000000  0.00000000

 39  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000001 -0.00169662  0.00000000 -0.00000000 -0.00769840 -0.00000000
                               -0.00000000  0.00000001 -0.00000001 -0.37352530  0.00000000  0.00000006 -0.45651196 -0.00000003

 40  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000001 -0.00223179  0.00000000 -0.00000000  0.00034389  0.00000000
                               -0.00000000  0.00000001 -0.00000002 -0.49134697  0.00000000 -0.00000001  0.02039248  0.00000001

 41  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000003 -0.48467927 -0.00000001 -0.00000001 -0.00000000  0.33514409  0.00000003 -0.00000001

 42  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.26565904  0.00000002  0.00000000 -0.00000000 -0.40936191  0.00000001 -0.00000001 -0.00000002

 43  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000005 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001 -0.00000001  0.48795098 -0.00000001 -0.00000001  0.00000000  0.00000002 -0.52911209

 44  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000006 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000002 -0.00000000

 46  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000004
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00027538 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00026607 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     3    1  |1 1>+      -0.00008529  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000  0.00027940  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00015117 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.62541995 -0.00000004  0.00000001 -0.00000000 -0.00000001  0.14889534  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00017267  0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000000  0.00000001 -0.00000000 -0.31581053  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00008255 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00522708  0.00000000  0.00000001 -0.00000001  0.36808154  0.65887806
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+       0.00000000 -0.00000001  0.57732591 -0.00000002 -0.00000000  0.00000001 -0.30169012  0.13397187
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.56469830  0.00000004  0.00000000 -0.00000001 -0.00000004  0.65269717  0.00000001 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00075693  0.00000000  0.00000000

 12  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000001  0.51117513 -0.00000000 -0.00000000  0.00000000  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00013361 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1    12    1  |1 1>+      -0.00000004 -0.44222660 -0.00000001  0.00000001  0.53650764  0.00000003 -0.00000001 -0.00000001
                                0.00000000  0.00000001 -0.00000000 -0.00000000  0.00003883  0.00000000 -0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000011  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000004  0.00000000 -0.00000000  0.00000000 -0.00000018  0.00000006
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00030568 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00034806 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00027538  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000

 20  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000009  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00034585  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00011947 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00497206  0.00000000 -0.00000001 -0.00000000 -0.08605279  0.41392921

 23  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00003552  0.00000000 -0.00000000 -0.00000000
                               -0.00000002 -0.15412661 -0.00000001  0.00000001 -0.49073441 -0.00000003  0.00000001 -0.00000001

 24  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00057565  0.00000000  0.00000000
                               -0.16900312  0.00000003  0.00000002 -0.00000001  0.00000003 -0.49638505 -0.00000001 -0.00000000

 25  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00017474  0.00000000  0.00000000
                               -0.45610151  0.00000004  0.00000001 -0.00000001  0.00000001 -0.15067628 -0.00000000  0.00000000

 26  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000001  0.57732938 -0.00000002  0.00000001 -0.00000001  0.64959424  0.06580185

 27  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001179 -0.00000000  0.00000000  0.00000000
                                0.00000001  0.24618021 -0.00000000  0.00000001 -0.16282417 -0.00000001 -0.00000000  0.00000001

 28  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00003149 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000001  0.00000001  0.12045610 -0.00000000 -0.00000000  0.00000000  0.00000002

 29  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000022 -0.00000000 -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000000

 30  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000020  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000

 31  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000 -0.00000000  0.00000003  0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00015116  0.00000000 -0.00000000  0.00000000  0.00000000

 33  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00027538 -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00007381 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 35  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00030215  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 36  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00018843 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 37  1     6    1  |1 1>-       0.00000000  0.00000001 -0.00000000 -0.00000000  0.00001106  0.00000000 -0.00000000 -0.00000000
                                0.00000005  0.70248955  0.00000001 -0.00000000 -0.15278101 -0.00000001  0.00000001 -0.00000001

 38  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.01005323  0.00000000  0.00000001 -0.00000001  0.48016415 -0.57631876

 39  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00014254  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000001 -0.00000002 -0.54531864  0.00000000 -0.00000000  0.00000000  0.00000001

 40  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00014949  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00000002  0.57191022  0.00000000 -0.00000000  0.00000000 -0.00000001

 41  1    10    1  |1 1>-       0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00004699 -0.00000000  0.00000000  0.00000000
                                0.00000003  0.47600854  0.00000000  0.00000000  0.64921917  0.00000004 -0.00000001 -0.00000000

 42  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.57726272 -0.00000002 -0.00000001  0.00000000 -0.33699211 -0.20030143

 43  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00061662  0.00000000  0.00000000
                               -0.23102996  0.00000000 -0.00000002  0.00000001  0.00000003 -0.53170836 -0.00000001  0.00000000

 44  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000018  0.00000011

 45  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000008  0.00000000  0.00000000 -0.00000000  0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000005 -0.00000000 -0.00000000  0.00000003  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00231231 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000430  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000431
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.00000000 -0.00000001  0.00000001  0.57671172 -0.00000001  0.00000000  0.00000000  0.00000009
                               -0.00000000 -0.00000000  0.00000000  0.00037159 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.01098152  0.00000000  0.59345509 -0.00000001  0.00000000  0.00000000 -0.00000002 -0.00000000
                                0.00018968  0.00000012 -0.00582585  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     8    1  |1 1>+      -0.00000002 -0.00000001 -0.00000000 -0.00000000 -0.04257363 -0.00000002 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.00000001 -0.00000000  0.00000000 -0.00000001 -0.56535032  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.07022851  0.00000000 -0.00000000 -0.00000000 -0.00000012
                               -0.00000000  0.00000000 -0.00000000  0.00004525 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.61206172 -0.00000002  0.24214494 -0.00000001 -0.00000000 -0.00000000  0.00000007  0.00000000
                               -0.01057222  0.00000005 -0.00237711 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1    12    1  |1 1>+      -0.00000001 -0.37513974 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00001982 -0.00000008  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+      -0.00000013  0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000 -0.70710054 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000

 15  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000013  0.57735384  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000011 -0.00000000  0.00000000 -0.00000000  0.70709830
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000431

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000490 -0.00000000

 21  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000087 -0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00000001 -0.00000000  0.00000000  0.62663853 -0.00000017 -0.00000000  0.00000000

 23  1     7    1  |1 0>        0.00000000 -0.00001839  0.00000007  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.34808572  0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00021684 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00000001 -0.33653761  0.00000000  0.00000000 -0.00000000  0.00000004

 25  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00040921  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000002  0.00000001  0.63510512 -0.00000001 -0.00000000 -0.00000000 -0.00000012

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00000000 -0.00000000  0.04770240 -0.00000001  0.00000000 -0.00000000

 27  1    11    1  |1 0>       -0.00000000  0.00003331 -0.00000013  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000002  0.63025471 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    12    1  |1 0>        0.01057808  0.00000004 -0.00226885  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.61240157 -0.00000002 -0.23111879  0.00000000 -0.00000001 -0.00000000  0.00000003 -0.00000000

 29  1    13    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000004 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.70711526

 31  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000014 -0.57734512  0.00000000  0.00000000

 32  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000431  0.00000000

 33  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 34  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 35  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000322

 36  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000382

 37  1     6    1  |1 1>-       0.00000000 -0.00003064  0.00000012 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000002 -0.57981966  0.00000000 -0.00000001 -0.00000001 -0.00000000  0.00000000  0.00000000

 38  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000002  0.00000002  0.00000000  0.00000000  0.09318658  0.00000002  0.00000000 -0.00000000

 39  1     8    1  |1 1>-       0.00687037 -0.00000009  0.00435021 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.39774878 -0.00000001  0.44313738 -0.00000001 -0.00000000  0.00000000 -0.00000005 -0.00000000

 40  1     9    1  |1 1>-      -0.00523126 -0.00000012  0.00571820 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.30285609  0.00000001  0.58248939 -0.00000001  0.00000000  0.00000000  0.00000011  0.00000000

 41  1    10    1  |1 1>-      -0.00000000  0.00000362 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.06851763 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000

 42  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000001  0.00000000  0.00000001  0.52433901 -0.00000001 -0.00000000 -0.00000000

 43  1    12    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00024607  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000000  0.38190974 -0.00000001  0.00000000 -0.00000000 -0.00000006

 44  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000020  0.57734722  0.00000000 -0.00000000

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000
                               -0.00000015  0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.70711303  0.00000000

 46  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000009  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46

  1  1     1    1  |0 0>       -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.00000000 -0.00000128  0.00000000  0.00000000  0.00000000  0.00000852
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00000430 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000431  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     4    1  |1 1>+       0.00000171  0.00000000 -0.00000000  0.00000000  0.00000811 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000468 -0.00000000  0.00000000 -0.00000000 -0.00000295  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     6    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000009 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.00000000  0.00000004 -0.00000000  0.00000000  0.00000000 -0.00000009
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1     9    1  |1 1>+      -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000021
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000011 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000008 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1    12    1  |1 1>+      -0.00000009  0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000001  0.00000001  0.70711303 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000  0.80739703 -0.00000001  0.00000000 -0.00000000  0.12153520
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.70711526 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000431  0.00000000  0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000431  0.00000000 -0.00000000  0.00000000  0.00000431 -0.00000000

 19  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000802  0.00000000 -0.00000000  0.00000000  0.00000315

 20  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000151 -0.00000000  0.00000000 -0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000850  0.00000000 -0.00000000  0.00000000

 22  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000013

 23  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000

 24  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000004  0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000000

 26  1    10    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000021 -0.00000000 -0.00000000 -0.00000000 -0.00000009

 27  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000007 -0.00000000  0.00000000 -0.00000000  0.00000007 -0.00000000

 28  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000015 -0.00000000  0.00000000 -0.00000000

 29  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.70710902 -0.00000000  0.00000000 -0.00000000 -0.70710454  0.00000000

 30  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.70709830  0.00000000  0.00000000

 31  1    15    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.29844992  0.00000000  0.00000000  0.00000000  0.75999900

 32  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000430 -0.00000000 -0.00000000  0.00000000

 33  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000673  0.00000000 -0.00000000 -0.00000000 -0.00000537

 34  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000431  0.00000000 -0.00000000  0.00000000  0.00000431 -0.00000000

 35  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000661  0.00000000  0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000555  0.00000000  0.00000000

 37  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000010 -0.00000000 -0.00000000 -0.00000000 -0.00000010  0.00000000

 38  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000000

 39  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000005 -0.00000000 -0.00000000 -0.00000000

 40  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000012 -0.00000000 -0.00000000  0.00000000

 41  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000012  0.00000000  0.00000000  0.00000000 -0.00000012  0.00000000

 42  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000008

 43  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000012 -0.00000000 -0.00000000

 44  1    13    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.50895746  0.00000001 -0.00000000  0.00000000  0.63845964

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000001  0.70710054 -0.00000000  0.00000000 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                                0.70710454  0.00000000 -0.00000000  0.00000000  0.70710902 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   61.93%
  3  1     2    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.67%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%   16.67%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    4.67%   58.89%    0.00%    0.00%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   35.33%    7.78%    0.00%    0.00%    0.00%
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
 17  1     1    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%   16.67%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%   30.00%   16.67%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.20%
 20  1     4    1  |1 0>          0.00%   38.79%    0.00%    0.00%    0.00%    0.00%    2.02%    0.00%
 21  1     5    1  |1 0>          0.00%    1.21%    0.00%    0.00%    0.00%    0.00%   64.65%    0.00%
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
 32  1     1    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%   16.67%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.87%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.00%   16.67%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%   16.54%    0.00%    0.00%   39.10%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%   23.46%    0.00%    0.00%   27.57%    0.00%    0.00%
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
  2  1     1    1  |1 1>+         4.74%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
  3  1     2    1  |1 1>+         0.00%    4.06%    0.00%    0.00%   49.28%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    1.05%    0.00%    0.00%    0.00%    0.00%   52.28%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%   32.85%    0.00%    0.00%    3.59%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   13.49%    0.00%    0.00%   43.40%    0.00%
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
 17  1     1    1  |1 0>          0.00%    0.00%   52.67%    0.00%    0.00%    0.00%    0.00%    0.67%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%   52.64%    0.00%    0.00%    0.69%    0.00%
 19  1     3    1  |1 0>         62.46%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%   28.29%    0.00%    0.00%   30.90%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%   14.36%    0.00%    0.00%   19.78%    0.00%    0.00%    0.00%
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
 32  1     1    1  |1 1>-         0.00%   53.30%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-        32.80%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    1.02%    0.00%    0.00%   52.32%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%   44.12%    0.00%    0.00%    0.00%    0.00%    0.24%
 36  1     5    1  |1 1>-         0.00%    0.00%    2.16%    0.00%    0.00%    0.00%    0.00%   46.81%
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
  7  1     6    1  |1 1>+         0.00%    0.00%   13.97%    0.00%    0.00%    0.00%    0.00%   11.44%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%   13.65%    0.00%    0.00%   41.15%    0.00%
  9  1     8    1  |1 1>+        32.94%    0.00%    0.00%    0.00%    9.91%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         5.62%    0.00%    0.00%    0.00%   18.20%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%   24.13%    0.00%    0.00%    0.00%    0.00%    0.89%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%   24.45%    0.00%    0.00%    6.08%    0.00%
 13  1    12    1  |1 1>+         0.00%   23.81%    0.00%    0.00%    0.00%   13.78%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.02%    0.00%    0.00%    0.00%   42.83%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   14.93%    0.00%    0.00%    0.00%   46.49%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%   14.62%    0.00%    0.00%    0.00%    0.00%   46.56%
 25  1     9    1  |1 0>          0.00%    0.00%   23.47%    0.00%    0.00%    0.00%    0.00%   13.12%
 26  1    10    1  |1 0>         23.80%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%   23.16%    0.00%    0.00%    0.00%   28.40%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%   23.81%    0.00%    0.00%   31.88%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%   14.60%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%
 38  1     7    1  |1 1>-        30.56%    0.00%    0.00%    0.00%   12.29%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%   13.95%    0.00%    0.00%   20.85%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%   24.14%    0.00%    0.00%    0.04%    0.00%
 41  1    10    1  |1 1>-         0.00%   23.49%    0.00%    0.00%    0.00%   11.23%    0.00%    0.00%
 42  1    11    1  |1 1>-         7.06%    0.00%    0.00%    0.00%   16.76%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%   23.81%    0.00%    0.00%    0.00%    0.00%   28.00%
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
  7  1     6    1  |1 1>+        39.12%    0.00%    0.00%    0.00%    0.00%    2.22%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%    9.97%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   13.55%   43.41%
 10  1     9    1  |1 1>+         0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    9.10%    1.79%
 11  1    10    1  |1 1>+        31.89%    0.00%    0.00%    0.00%    0.00%   42.60%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%   26.13%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%   19.56%    0.00%    0.00%   28.78%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.74%   17.13%
 23  1     7    1  |1 0>          0.00%    2.38%    0.00%    0.00%   24.08%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          2.86%    0.00%    0.00%    0.00%    0.00%   24.64%    0.00%    0.00%
 25  1     9    1  |1 0>         20.80%    0.00%    0.00%    0.00%    0.00%    2.27%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%   33.33%    0.00%    0.00%    0.00%   42.20%    0.43%
 27  1    11    1  |1 0>          0.00%    6.06%    0.00%    0.00%    2.65%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    1.45%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%   49.35%    0.00%    0.00%    2.33%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   23.06%   33.21%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%   29.74%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    0.00%   32.71%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%   22.66%    0.00%    0.00%   42.15%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%   33.32%    0.00%    0.00%    0.00%   11.36%    4.01%
 43  1    12    1  |1 1>-         5.34%    0.00%    0.00%    0.00%    0.00%   28.27%    0.00%    0.00%
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
  7  1     6    1  |1 1>+         0.00%    0.00%    0.00%   33.26%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.01%    0.00%   35.22%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   31.96%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.49%    0.00%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+        37.47%    0.00%    5.86%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%   14.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   39.27%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   12.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%    0.00%    0.00%   11.33%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%    0.00%   40.34%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.23%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%   39.72%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>         37.51%    0.00%    5.34%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%   33.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.87%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-        15.83%    0.00%   19.64%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         9.17%    0.00%   33.93%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.47%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   27.49%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    0.00%    0.00%   14.59%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
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
 14  1    13    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%   65.19%    0.00%    0.00%    0.00%    1.48%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
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
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    8.91%    0.00%    0.00%    0.00%   57.76%
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
 44  1    13    1  |1 1>-         0.00%   25.90%    0.00%    0.00%    0.00%   40.76%
 45  1    14    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 46  1    15    1  |1 1>-        50.00%    0.00%    0.00%    0.00%   50.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1065.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      848.02       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      7831.32   6738.27    215.31    844.23     15.19      6.68      0.13     11.19
 REAL TIME  *      8034.09 SEC
 DISK USED  *       975.45 MB (local),       17.27 GB (total)
 SF USED    *         8.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-X2C energy=  -8132.532996645503

              CI              CI           MULTI         RHF-SCF
  -8132.48007584  -8132.59407395  -8131.90757159  -8131.99704799
 **********************************************************************************************************************************
 Molpro calculation terminated
