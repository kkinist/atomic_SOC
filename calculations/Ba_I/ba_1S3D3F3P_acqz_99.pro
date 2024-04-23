
 Working directory              : /wrk/irikura/molpro.gmsBjTM1vB/
 Global scratch directory       : /wrk/irikura/molpro.gmsBjTM1vB/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.gmsBjTM1vB/

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
 
 basis=aug-cc-pwCVQZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
                                                                                 ! active space (2/7) all in irrep 1
 {multi
     closed,15,12
     occ,22,12
     wf,sym=1,spin=0;state,1;
       weight,99
     wf,sym=1,spin=2;state,15;
       weight,all,1
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
  64 bit mpp version                                                                     DATE: 22-Mar-24          TIME: 13:50:49  
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

     101.188 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 1.835 MB, node maximum: 14.156 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    3177408.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    3177408      RECORD LENGTH: 524288

 Memory used in sort:       3.73 MW

 SORT1 READ    97437068. AND WROTE      607875. INTEGRALS IN      2 RECORDS. CPU TIME:     0.40 SEC, REAL TIME:     0.43 SEC
 SORT2 READ     9833613. AND WROTE    50984466. INTEGRALS IN    304 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.06 SEC

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
 CPU TIMES  *        11.35     11.17
 REAL TIME  *        12.25 SEC
 DISK USED  *        30.60 MB (local),      685.12 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  16  12

 NELEC=   56   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -8131.99704799   -8131.99704799     0.00D+00     0.12D+00     0     0       0.02      0.04    start
   2    -8131.99704799      -0.00000000     0.38D-06     0.21D-04     1     0       0.02      0.06    diag
   3    -8131.99704799      -0.00000000     0.45D-07     0.62D-05     2     0       0.02      0.08    diag
   4    -8131.99704799      -0.00000000     0.15D-07     0.21D-05     3     0       0.01      0.09    diag
   5    -8131.99704799       0.00000000     0.43D-08     0.84D-06     0     0       0.02      0.11    diag

 Final occupancy:  16  12

 !RHF STATE 1.1 Energy              -8131.997047986801
  RHF One-electron energy            -11100.0298041080    
  RHF Two-electron energy            2968.032756121180
  RHF Kinetic energy                 9672.875295624053
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
    4.1     2.00000   -29.94644     1  1  d0  -0.66652    1  1  d2+  0.74548
    5.1     2.00000   -29.94644     1  1  d1+  1.00000
    6.1     2.00000   -29.94644     1  1  d2-  1.00000
    7.1     2.00000   -29.94644     1  1  d0   0.74548    1  1  d2+  0.66652
    8.1     2.00000   -29.94644     1  1  d1-  1.00000
    9.1     2.00000   -10.25509     1  4  s    1.00070
   10.1     2.00000    -3.85433     1  2  d0  -0.66458    1  2  d2+  0.74707
   11.1     2.00000    -3.85433     1  2  d1+  0.99988
   12.1     2.00000    -3.85433     1  2  d2-  0.99988
   13.1     2.00000    -3.85433     1  2  d1-  0.99988
   14.1     2.00000    -3.85433     1  2  d0   0.74707    1  2  d2+  0.66458
   15.1     2.00000    -1.60335     1  5  s    0.99936
   16.1     2.00000    -0.16308     1  6  s    0.99631
    1.2     2.00000  -199.39475     1  1  px   0.99988
    2.2     2.00000  -199.39475     1  1  py   0.99926
    3.2     2.00000  -199.39475     1  1  pz   0.99915
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
 CPU TIMES  *        11.46      0.11     11.17
 REAL TIME  *        12.39 SEC
 DISK USED  *        31.61 MB (local),      701.26 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.472D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.132D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.549D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.473D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.281D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.471D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.830D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.307D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.269D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.471D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.310D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.405D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.582D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.433D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.301D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 3 2 6 1 5   4 3 6 2 1 1 1 5 3 6   4 2 1 4 2 6 3 5 4 6   2 3 5 1 711 8141013
                                       1215 9 6 4 2 5 3 112  11 814101513 7 9 6 4   2 5 3 11013151412 8  11 7 9 6 4 5 3 2 1 4
                                        6 5 3 2 4 6 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.177D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.400D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.509D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.450D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.450D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.108D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.870D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.229D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.608D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.431D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.279D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 2 3 1 2   3 1 3 2 1 3 2 1 2 3   1 9 7 6 8 510 4 2 1   3 510 8 4 9 7 6 2 1
                                        3 4 6 9 7 510 8 2 1   3 4 5 6 9 710 8 4 5   6 9 710 8 2 1 3 4 9   7 6 5 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.86842
 Weight factors for state symmetry  2:    0.00877   0.00877   0.00877   0.00877   0.00877   0.00877   0.00877   0.00877
                                          0.00877   0.00877   0.00877   0.00877   0.00877   0.00877   0.00877
 
 Number of orbital rotations:  2393  ( 105 closed/active, 1812 closed/virtual, 0 active/active, 476 active/virtual )
 Total number of variables:    2757
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   17   32    5  -8131.96825453   -8131.99869089   -0.03043636    0.00912904 0.00000955 0.00000000  0.21E+01      2.62
   2    8   12    0  -8131.99247013   -8131.99445773   -0.00198760    0.01663694 0.00004452 0.00000000  0.51E+00      4.93
   3   10   14    0  -8131.99447333   -8131.99447431   -0.00000098    0.00026206 0.00000017 0.00000000  0.10E-01      7.25
   4    4    8    0  -8131.99447432   -8131.99447432   -0.00000000    0.00000034 0.00000000 0.00000000  0.11E-04      9.02

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.93E-09)
                       Final energy:  -8131.99447432
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -8132.005994086918
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.82723638
 One electron energy                        -11100.23084263
 Two electron energy                          2968.22484855
 Virial ratio                                    1.84070622
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -8131.961262496135
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90397347
 One electron energy                        -11102.14595723
 Two electron energy                          2970.18469473
 Virial ratio                                    1.84069492
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -8131.961262496093
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90397347
 One electron energy                        -11102.14595722
 Two electron energy                          2970.18469472
 Virial ratio                                    1.84069492
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -8131.961262496047
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90397347
 One electron energy                        -11102.14595722
 Two electron energy                          2970.18469472
 Virial ratio                                    1.84069492
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -8131.961262495978
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90397347
 One electron energy                        -11102.14595722
 Two electron energy                          2970.18469472
 Virial ratio                                    1.84069492
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -8131.961262495935
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.90397347
 One electron energy                        -11102.14595720
 Two electron energy                          2970.18469471
 Virial ratio                                    1.84069492
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -8131.902960553133
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384087
 Two electron energy                          2973.07088032
 Virial ratio                                    1.84067013
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -8131.902960553125
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384086
 Two electron energy                          2973.07088031
 Virial ratio                                    1.84067013
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -8131.902960553119
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384087
 Two electron energy                          2973.07088032
 Virial ratio                                    1.84067013
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -8131.902960553103
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384086
 Two electron energy                          2973.07088031
 Virial ratio                                    1.84067013
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -8131.902960553069
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384086
 Two electron energy                          2973.07088031
 Virial ratio                                    1.84067013
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -8131.902960553047
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384085
 Two electron energy                          2973.07088030
 Virial ratio                                    1.84067013
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -8131.902960553045
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384084
 Two electron energy                          2973.07088029
 Virial ratio                                    1.84067013
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy            -8131.883206997974
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384087
 Two electron energy                          2973.09063387
 Virial ratio                                    1.84066809
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy            -8131.883206997865
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384086
 Two electron energy                          2973.09063386
 Virial ratio                                    1.84066809
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy            -8131.883206997802
 Nuclear energy                                  0.00000000
 Kinetic energy                               9673.11989927
 One electron energy                        -11104.97384085
 Two electron energy                          2973.09063385
 Virial ratio                                    1.84066809
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000044729
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.262838724037
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000081173
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.737163971644
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999960170
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.024485078907
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     1.065461889069
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     2.140639621864
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     3.999999514318
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     8.934535162413
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     7.859323680840
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     3.975557781364
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.999999991794
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999944688
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.000000063541
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     3.999999923151
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.726894694882
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999981991
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.273108244374
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999988239
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     6.591922641619
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     8.093814232245
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.711586983322
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     4.000000632485
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     1.906196473683
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     0.288450771502
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     3.408033041885
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.000000011071
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.999999997218
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999991770
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000032119
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     2.010266581080
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999936837
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.989727783982
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000051591
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     5.383592279474
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     2.840723878686
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     6.147773394814
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     3.999999853197
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     1.159268363904
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     3.852225547657
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     4.616409176750
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.999999997135
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.000000058093
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.999999944689
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 5 3 2 6 1 4   3 5 2 6 1 1 4 6 2 5   3 1 1 5 3 6 4 2 1 4   6 2 5 3131011 81514
                                        712 9 4 6 2 5 3 110  13111514 812 7 9 6 4   2 5 3 113101514 812  11 7 9 6 4 5 3 2 1 4
                                        6 2 5 3 4 6 3 5 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 3 1 2 3 1 2   3 1 3 2 1 3 2 1 2 3   1 7 910 8 5 6 4 2 1   310 5 8 7 9 4 6 2 1
                                        3 9 7 4 6 510 8 2 1   3 4 5 9 7 610 8 4 5   6 9 7 810 2 1 3 4 9   7 5 610 8 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.73551     1  1  s    1.00000
    2.1     2.00000  -222.44717     1  2  s    1.00000
    3.1     2.00000   -48.62058     1  3  s    1.00021
    4.1     2.00000   -29.93312     1  1  d1+  1.00000
    5.1     2.00000   -29.93312     1  1  d2+  1.00000
    6.1     2.00000   -29.93312     1  1  d2-  1.00000
    7.1     2.00000   -29.93312     1  1  d0   1.00000
    8.1     2.00000   -29.93312     1  1  d1-  1.00000
    9.1     2.00000   -10.24155     1  4  s    0.99996
   10.1     2.00000    -3.84107     1  2  d1+  1.00002
   11.1     2.00000    -3.84107     1  2  d2-  1.00002
   12.1     2.00000    -3.84107     1  2  d2+  1.00002
   13.1     2.00000    -3.84107     1  2  d0   1.00002
   14.1     2.00000    -3.84107     1  2  d1-  1.00002
   15.1     2.00000    -1.58935     1  5  s    1.00009
   16.1     1.69872    -0.13524     1  6  s    1.07644
   17.1     0.05949     0.06220     1  3  d1+  0.67471
   18.1     0.05949     0.06220     1  3  d1-  0.67471
   19.1     0.05949     0.06220     1  3  d0   0.67471
   20.1     0.05949     0.06220     1  3  d2+  0.67471
   21.1     0.05949     0.06220     1  3  d2-  0.67471
   22.1     0.00381     0.16061     1  4  s    0.36045    1  5  s    3.80020    1  6  s  -12.18163    1  7  s    7.28113
                                    1  8  s    6.23510    1  9  s    1.12635    1 11  s   -1.06878    1 12  s   -2.11169
    1.2     2.00000  -199.38140     1  1  px   1.00000
    2.2     2.00000  -199.38140     1  1  py   1.00000
    3.2     2.00000  -199.38140     1  1  pz   1.00000
    4.2     2.00000   -41.03123     1  2  py   1.00002
    5.2     2.00000   -41.03123     1  2  pz   1.00002
    6.2     2.00000   -41.03123     1  2  px   1.00002
    7.2     2.00000    -7.68586     1  3  py   0.99898
    8.2     2.00000    -7.68586     1  3  pz   0.99898
    9.2     2.00000    -7.68586     1  3  px   0.99898
   10.2     2.00000    -0.88721     1  4  py   1.00074
   11.2     2.00000    -0.88721     1  4  pz   1.00074
   12.2     2.00000    -0.88721     1  4  px   1.00074
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2000000        0.97612932
 0200000       -0.09487604
 0002000       -0.09487604
 0000200       -0.09487604
 0000020       -0.09487604
 0020000       -0.09487604
 
 Energy:    -8132.00599409
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 000aa00       -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00008128     -0.00040197
 aa00000        0.99942651     -0.00002117     -0.00006022     -0.00010818     -0.00007643     -0.00000000     -0.00000000
 a0000a0        0.00006023      0.00002411      0.99942650      0.00017333     -0.00005045      0.00000000      0.00000000
 a0a0000        0.00007641     -0.00001316      0.00005047     -0.00018420      0.99942650      0.00000000     -0.00000000
 0000aa0        0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00004239     -0.24075679
 0a00a00       -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00042408     -0.00050430
 0a000a0        0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.89168538     -0.00035989
 00a0a00       -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.15516589     -0.00004943
 00a00a0       -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00017896      0.00005764
 000a0a0        0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00041953      0.84272190
 0a0a000       -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00014152     -0.00025788
 00aa000       -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.42522972     -0.00017925
 0aa0000        0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00008478      0.48151357
 a000a00        0.00009131      0.70851280     -0.00013934      0.70488505      0.00013924     -0.00000000      0.00000000
 a00a000        0.00006176     -0.70488508     -0.00010587      0.70851278      0.00012130      0.00000000     -0.00000000
 
 Energy:    -8131.96126250  -8131.96126250  -8131.96126250  -8131.96126250  -8131.96126250  -8131.90296055  -8131.90296055

 State:              8               9              10              11              12              13              14
 000aa00        0.00036192      0.99999984     -0.00001894      0.00011028      0.00011999      0.00000000     -0.00000000
 aa00000        0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a0000a0        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 a0a0000        0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 0000aa0       -0.00011016     -0.00010386     -0.37687682     -0.00001214     -0.00006219      0.00004788      0.89442717
 0a00a00        0.89426242     -0.00032570      0.00006035      0.01715180     -0.00005079     -0.44721359      0.00002393
 0a000a0        0.00043238     -0.00008114      0.00011797     -0.00030176      0.06997689     -0.00004051      0.00010518
 00a0a00        0.00018044     -0.00011806     -0.00013115     -0.00296639      0.88086019      0.00004051     -0.00010518
 00a00a0       -0.24017255     -0.00000843      0.00000513      0.86157332      0.00291912     -0.44721360      0.00002393
 000a0a0        0.00051017      0.00032834     -0.53834862      0.00008932     -0.00010653      0.00000000      0.00000000
 0a0a000        0.37763896     -0.00019291      0.00003781      0.50733219      0.00165603      0.77459666     -0.00004144
 00aa000        0.00014546      0.00002132      0.00014383      0.00153843     -0.46816369      0.00007017     -0.00018217
 0aa0000        0.00022033      0.00020772      0.75375365      0.00002428      0.00012438      0.00002394      0.44721358
 a000a00        0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 a00a000        0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:    -8131.90296055  -8131.90296055  -8131.90296055  -8131.90296055  -8131.90296055  -8131.88320700  -8131.88320700

 State:             15
 000aa00       -0.00000000
 aa00000        0.00000000
 a0000a0       -0.00000000
 a0a0000        0.00000000
 0000aa0        0.00021035
 0a00a00        0.00004052
 0a000a0       -0.44721358
 00a0a00        0.44721358
 00a00a0        0.00004052
 000a0a0        0.00000000
 0a0a000       -0.00007018
 00aa000        0.77459665
 0aa0000        0.00010518
 a000a00        0.00000000
 a00a000        0.00000000
 
 Energy:    -8131.88320700
 


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
 CPU TIMES  *        18.21      6.74      0.11     11.17
 REAL TIME  *        22.85 SEC
 DISK USED  *       128.52 MB (local),        2.20 GB (total)
 SF USED    *       246.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -8132.005994   -0.0
    -8131.961262    6.0
    -8131.961262    6.0
    -8131.961262    6.0
    -8131.961262    6.0
    -8131.961262    6.0
    -8131.902961   12.0
    -8131.902961   12.0
    -8131.902961   12.0
    -8131.902961   12.0
    -8131.902961   12.0
    -8131.902961   12.0
    -8131.902961   12.0
    -8131.883207    2.0
    -8131.883207    2.0
    -8131.883207    2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.23 sec, npass=  1  Memory used:   2.13 MW


 Number of p-space configurations:  28

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8132.00599409

 Number of blocks in overlap matrix:   154   Smallest eigenvalue:  0.98D+00
 Number of N-2 electron functions:     208
 Number of N-1 electron functions:   10780

 Number of internal configurations:                 9772
 Number of singly external configurations:        723422
 Number of doubly external configurations:        934434
 Total number of contracted configurations:      1667628
 Total number of uncontracted configurations:   22493268

 Diagonal Coupling coefficients finished.               Storage: 3642739 words, CPU-Time:      0.08 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1250421 words, CPU-time:      0.09 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8132.00599409     0.00000000    -0.70424092  0.38D-01  0.99D-01     0.66
    2     1     1     1.09019513    -0.57834221 -8132.58433629    -0.57834221    -0.01061513  0.15D-02  0.15D-02     3.56
    3     1     1     1.08352146    -0.58850271 -8132.59449680    -0.01016050    -0.00018149  0.16D-04  0.33D-04     6.46
    4     1     1     1.08393401    -0.58869570 -8132.59468979    -0.00019299    -0.00000570  0.79D-06  0.14D-05     9.32
    5     1     1     1.08391542    -0.58870139 -8132.59469547    -0.00000569    -0.00000022  0.25D-07  0.68D-07    12.17
    6     1     1     1.08389271    -0.58870163 -8132.59469572    -0.00000024    -0.00000001  0.72D-09  0.31D-08    15.03


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   4.4%
 S   3.9%  30.4%
 P   1.6%  29.5%   6.3%

 Initialization:   3.3%
 Other:           20.7%

 Total CPU:       15.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222           0.9377883
 2222220000200222          -0.0875652
 2222220020000222          -0.0875652
 2222220200000222          -0.0875652
 2222220002000222          -0.0875652
 2222220000020222          -0.0875652


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95895438 (fixed)   0.95922812 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00326996   -0.00703658   -0.00824104
 Singles      0.01915500   -0.06572414   -0.07081011
 Pairs        0.06501203   -0.51594092   -0.50965048
 Total        1.08743700   -0.58870163   -0.58870163
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8132.00599409
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.51338198
 One electron energy               -11100.75425055
 Two electron energy                 2968.15955483
 Virial quotient                       -0.84070744
 Correlation energy                    -0.58870163
 !MRCI STATE 1.1 Energy             -8132.594695717322

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.64617002 (Davidson, fixed reference)
 Cluster corrected energies         -8132.64580469 (Davidson, relaxed reference)

 Cluster corrected energies         -8132.64446730 (Pople, fixed reference)
 Cluster corrected energies         -8132.64408828 (Pople, relaxed reference)



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
 CPU TIMES  *        33.54     15.32      6.74      0.11     11.17
 REAL TIME  *        39.02 SEC
 DISK USED  *       142.74 MB (local),        2.42 GB (total)
 SF USED    *       258.69 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG        =     -8132.64580469  AU                              


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
     1     -8131.96126250
     2     -8131.96126250
     3     -8131.96126250
     4     -8131.96126250
     5     -8131.96126250
     6     -8131.90296055
     7     -8131.90296055
     8     -8131.90296055
     9     -8131.90296055
    10     -8131.90296055
    11     -8131.90296055
    12     -8131.90296055
    13     -8131.88320700
    14     -8131.88320700
    15     -8131.88320700

 Number of blocks in overlap matrix:  1306   Smallest eigenvalue:  0.88D+00
 Number of N-2 electron functions:    1324
 Number of N-1 electron functions:   17836

 Number of internal configurations:                14511
 Number of singly external configurations:       1196552
 Number of doubly external configurations:       5952586
 Total number of contracted configurations:      7163649
 Total number of uncontracted configurations:   35061501

 Diagonal Coupling coefficients finished.               Storage: 9709312 words, CPU-Time:      5.52 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1623420 words, CPU-time:      0.54 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8131.96126250    -0.00000000    -0.70749247  0.43D-01  0.97D-01     8.58
    1     2     2     1.00000000     0.00000000 -8131.96126250     0.00000000    -0.70740803  0.43D-01  0.97D-01     8.58
    1     3     3     1.00000000     0.00000000 -8131.96126250    -0.00000000    -0.70745033  0.43D-01  0.97D-01     8.58
    1     4     4     1.00000000     0.00000000 -8131.96126250     0.00000000    -0.70740438  0.43D-01  0.97D-01     8.58
    1     5     5     1.00000000     0.00000000 -8131.96126250     0.00000000    -0.70748650  0.43D-01  0.97D-01     8.58
    1     6     6     1.00000000     0.00000000 -8131.90296055     0.00000000    -0.71514233  0.41D-01  0.10D+00     8.58
    1     7     7     1.00000000     0.00000000 -8131.90296055     0.00000000    -0.71514729  0.41D-01  0.10D+00     8.58
    1     8     8     1.00000000     0.00000000 -8131.90296055     0.00000000    -0.71504820  0.41D-01  0.10D+00     8.58
    1     9     9     1.00000000     0.00000000 -8131.90296055     0.00000000    -0.71502977  0.41D-01  0.10D+00     8.58
    1    10    10     1.00000000     0.00000000 -8131.90296055    -0.00000000    -0.71512331  0.41D-01  0.10D+00     8.58
    1    11    11     1.00000000     0.00000000 -8131.90296055     0.00000000    -0.71512772  0.40D-01  0.10D+00     8.58
    1    12    12     1.00000000     0.00000000 -8131.90296055     0.00000000    -0.71502696  0.41D-01  0.10D+00     8.58
    1    13    13     1.00000000     0.00000000 -8131.88320700     0.00000000    -0.72192488  0.41D-01  0.11D+00     8.58
    1    14    14     1.00000000     0.00000000 -8131.88320700     0.00000000    -0.72180049  0.41D-01  0.11D+00     8.58
    1    15    15     1.00000000     0.00000000 -8131.88320700    -0.00000000    -0.72191542  0.41D-01  0.11D+00     8.58
    2     1     1     1.09135485    -0.57839022 -8132.53965272    -0.57839022    -0.01068436  0.15D-02  0.14D-02   137.35
    2     2     2     1.09137648    -0.57838251 -8132.53964500    -0.57838251    -0.01069176  0.15D-02  0.14D-02   137.35
    2     3     3     1.09136661    -0.57837429 -8132.53963678    -0.57837429    -0.01070381  0.15D-02  0.14D-02   137.35
    2     4     4     1.09139030    -0.57836413 -8132.53962662    -0.57836413    -0.01071460  0.15D-02  0.14D-02   137.35
    2     5     5     1.09139206    -0.57835999 -8132.53962249    -0.57835999    -0.01071925  0.15D-02  0.14D-02   137.35
    2     6     6     1.09314031    -0.57955002 -8132.48251058    -0.57955002    -0.01125094  0.16D-02  0.16D-02   137.35
    2     7     7     1.09314352    -0.57954766 -8132.48250821    -0.57954766    -0.01125362  0.16D-02  0.16D-02   137.35
    2     8     8     1.09317950    -0.57954033 -8132.48250088    -0.57954033    -0.01126055  0.16D-02  0.16D-02   137.35
    2     9     9     1.09317031    -0.57953158 -8132.48249213    -0.57953158    -0.01127526  0.16D-02  0.16D-02   137.35
    2    10    10     1.09319266    -0.57951744 -8132.48247800    -0.57951744    -0.01129296  0.16D-02  0.16D-02   137.35
    2    11    11     1.09319222    -0.57951731 -8132.48247787    -0.57951731    -0.01129296  0.16D-02  0.16D-02   137.35
    2    12    12     1.09321222    -0.57951456 -8132.48247512    -0.57951456    -0.01129500  0.16D-02  0.16D-02   137.35
    2    13    13     1.09821209    -0.58152143 -8132.46472843    -0.58152143    -0.01264070  0.21D-02  0.20D-02   137.35
    2    14    14     1.09831229    -0.58147449 -8132.46468149    -0.58147449    -0.01269023  0.22D-02  0.21D-02   137.35
    2    15    15     1.09831557    -0.58146997 -8132.46467697    -0.58146997    -0.01269573  0.22D-02  0.21D-02   137.35
    3     1     1     1.08513388    -0.58859171 -8132.54985421    -0.01020149    -0.00016243  0.15D-04  0.26D-04   268.55
    3     2     2     1.08513585    -0.58859146 -8132.54985396    -0.01020896    -0.00016267  0.15D-04  0.26D-04   268.55
    3     3     3     1.08513273    -0.58859119 -8132.54985369    -0.01021691    -0.00016294  0.15D-04  0.26D-04   268.55
    3     4     4     1.08513390    -0.58859089 -8132.54985339    -0.01022676    -0.00016325  0.15D-04  0.26D-04   268.55
    3     5     5     1.08513342    -0.58859080 -8132.54985329    -0.01023081    -0.00016334  0.15D-04  0.26D-04   268.55
    3     6     6     1.08673935    -0.59017028 -8132.49313083    -0.01062026    -0.00017357  0.15D-04  0.33D-04   268.55
    3     7     7     1.08673347    -0.59016955 -8132.49313011    -0.01062190    -0.00017431  0.15D-04  0.33D-04   268.55
    3     8     8     1.08673369    -0.59016953 -8132.49313009    -0.01062920    -0.00017435  0.15D-04  0.33D-04   268.55
    3     9     9     1.08674594    -0.59016944 -8132.49312999    -0.01063786    -0.00017459  0.15D-04  0.33D-04   268.55
    3    10    10     1.08673864    -0.59016921 -8132.49312977    -0.01065177    -0.00017476  0.15D-04  0.33D-04   268.55
    3    11    11     1.08674017    -0.59016903 -8132.49312958    -0.01065171    -0.00017501  0.15D-04  0.33D-04   268.55
    3    12    12     1.08674026    -0.59016901 -8132.49312956    -0.01065445    -0.00017502  0.15D-04  0.33D-04   268.55
    3    13    13     1.08919719    -0.59346260 -8132.47666960    -0.01194117    -0.00023288  0.24D-04  0.57D-04   268.55
    3    14    14     1.08920636    -0.59346154 -8132.47666854    -0.01198705    -0.00023393  0.24D-04  0.58D-04   268.55
    3    15    15     1.08920643    -0.59346140 -8132.47666840    -0.01199143    -0.00023408  0.24D-04  0.58D-04   268.55
    4     1     1     1.08570381    -0.58876609 -8132.55002858    -0.00017437    -0.00000388  0.62D-06  0.64D-06   399.81
    4     2     2     1.08570377    -0.58876608 -8132.55002858    -0.00017462    -0.00000389  0.62D-06  0.64D-06   399.81
    4     3     3     1.08570301    -0.58876607 -8132.55002856    -0.00017487    -0.00000390  0.62D-06  0.64D-06   399.81
    4     4     4     1.08570301    -0.58876606 -8132.55002855    -0.00017517    -0.00000391  0.62D-06  0.65D-06   399.81
    4     5     5     1.08570303    -0.58876606 -8132.55002855    -0.00017526    -0.00000392  0.62D-06  0.65D-06   399.81
    4     6     6     1.08725948    -0.59035591 -8132.49331646    -0.00018563    -0.00000478  0.13D-05  0.87D-06   399.81
    4     7     7     1.08725937    -0.59035587 -8132.49331642    -0.00018632    -0.00000483  0.13D-05  0.88D-06   399.81
    4     8     8     1.08725772    -0.59035585 -8132.49331640    -0.00018631    -0.00000485  0.13D-05  0.88D-06   399.81
    4     9     9     1.08725763    -0.59035585 -8132.49331640    -0.00018640    -0.00000485  0.13D-05  0.88D-06   399.81
    4    10    10     1.08725732    -0.59035583 -8132.49331639    -0.00018662    -0.00000486  0.13D-05  0.89D-06   399.81
    4    11    11     1.08725683    -0.59035582 -8132.49331638    -0.00018680    -0.00000487  0.13D-05  0.89D-06   399.81
    4    12    12     1.08725685    -0.59035582 -8132.49331638    -0.00018681    -0.00000487  0.13D-05  0.89D-06   399.81
    4    13    13     1.08951570    -0.59371629 -8132.47692329    -0.00025369    -0.00000878  0.29D-05  0.21D-05   399.81
    4    14    14     1.08951627    -0.59371627 -8132.47692327    -0.00025473    -0.00000881  0.29D-05  0.21D-05   399.81
    4    15    15     1.08951633    -0.59371626 -8132.47692326    -0.00025486    -0.00000882  0.29D-05  0.21D-05   399.81
    5     1     1     1.08576517    -0.58877006 -8132.55003255    -0.00000397    -0.00000013  0.15D-07  0.25D-07   530.91
    5     2     2     1.08576515    -0.58877006 -8132.55003255    -0.00000398    -0.00000013  0.15D-07  0.25D-07   530.91
    5     3     3     1.08576509    -0.58877006 -8132.55003255    -0.00000399    -0.00000013  0.15D-07  0.25D-07   530.91
    5     4     4     1.08576533    -0.58877006 -8132.55003255    -0.00000400    -0.00000013  0.15D-07  0.25D-07   530.91
    5     5     5     1.08576523    -0.58877006 -8132.55003255    -0.00000400    -0.00000013  0.15D-07  0.25D-07   530.91
    5     6     6     1.08735604    -0.59036096 -8132.49332151    -0.00000505    -0.00000020  0.29D-07  0.48D-07   530.91
    5     7     7     1.08735579    -0.59036096 -8132.49332151    -0.00000509    -0.00000020  0.29D-07  0.48D-07   530.91
    5     8     8     1.08735578    -0.59036096 -8132.49332151    -0.00000511    -0.00000020  0.29D-07  0.48D-07   530.91
    5     9     9     1.08735559    -0.59036096 -8132.49332151    -0.00000511    -0.00000020  0.29D-07  0.48D-07   530.91
    5    10    10     1.08735568    -0.59036096 -8132.49332151    -0.00000512    -0.00000020  0.29D-07  0.47D-07   530.91
    5    11    11     1.08735529    -0.59036095 -8132.49332151    -0.00000513    -0.00000021  0.29D-07  0.48D-07   530.91
    5    12    12     1.08735524    -0.59036095 -8132.49332151    -0.00000513    -0.00000021  0.29D-07  0.48D-07   530.91
    5    13    13     1.08960466    -0.59372615 -8132.47693315    -0.00000986    -0.00000051  0.56D-07  0.15D-06   530.91
    5    14    14     1.08960420    -0.59372615 -8132.47693315    -0.00000988    -0.00000051  0.57D-07  0.15D-06   530.91
    5    15    15     1.08960469    -0.59372615 -8132.47693315    -0.00000989    -0.00000051  0.57D-07  0.15D-06   530.91
    6     1     1     1.08576962    -0.58877020 -8132.55003269    -0.00000014    -0.00000000  0.14D-08  0.66D-09   662.27
    6     2     2     1.08576961    -0.58877020 -8132.55003269    -0.00000014    -0.00000000  0.14D-08  0.66D-09   662.27
    6     3     3     1.08576961    -0.58877020 -8132.55003269    -0.00000014    -0.00000001  0.14D-08  0.66D-09   662.27
    6     4     4     1.08576964    -0.58877020 -8132.55003269    -0.00000014    -0.00000000  0.14D-08  0.65D-09   662.27
    6     5     5     1.08576964    -0.58877020 -8132.55003269    -0.00000014    -0.00000000  0.14D-08  0.66D-09   662.27
    6     6     6     1.08736126    -0.59036119 -8132.49332175    -0.00000024    -0.00000001  0.24D-08  0.13D-08   662.27
    6     7     7     1.08736129    -0.59036119 -8132.49332175    -0.00000024    -0.00000001  0.24D-08  0.13D-08   662.27
    6     8     8     1.08736129    -0.59036119 -8132.49332175    -0.00000024    -0.00000001  0.24D-08  0.13D-08   662.27
    6     9     9     1.08736138    -0.59036119 -8132.49332175    -0.00000024    -0.00000001  0.23D-08  0.12D-08   662.27
    6    10    10     1.08736125    -0.59036119 -8132.49332175    -0.00000024    -0.00000001  0.23D-08  0.12D-08   662.27
    6    11    11     1.08736125    -0.59036119 -8132.49332175    -0.00000024    -0.00000001  0.23D-08  0.12D-08   662.27
    6    12    12     1.08736138    -0.59036119 -8132.49332174    -0.00000024    -0.00000001  0.23D-08  0.12D-08   662.27
    6    13    13     1.08958570    -0.59372674 -8132.47693374    -0.00000059    -0.00000002  0.33D-08  0.63D-08   662.27
    6    14    14     1.08958570    -0.59372674 -8132.47693374    -0.00000059    -0.00000002  0.33D-08  0.63D-08   662.27
    6    15    15     1.08958567    -0.59372674 -8132.47693374    -0.00000059    -0.00000002  0.32D-08  0.63D-08   662.27


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.3%  16.9%
 P   0.6%  24.4%  10.0%

 Initialization:   0.9%
 Other:           44.1%

 Total CPU:      662.3 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/0000/0222           0.0000000   0.0000000   0.9584020  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
 222222/0/0000222           0.0000000   0.9584020  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                           -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 222222//00000222           0.9584020   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 222222000//00222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                           -0.0000000  -0.0000000  -0.0000000   0.9580211   0.0000000  -0.0000000   0.0000000
 222222000/0/0222          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0106893  -0.0000000  -0.0000000
                            0.9579615  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 222222/00/000222          -0.0000000  -0.0000000  -0.0000000   0.9553552   0.0763604  -0.0000000   0.0000000   0.0000000
                           -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 222222/000/00222           0.0000000  -0.0000000   0.0000000  -0.0763604   0.9553552   0.0000000  -0.0000000   0.0000000
                            0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220//0000222           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.8568269   0.0000000  -0.0000000
                           -0.0095608   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.4279452
 22222200/00/0222          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.8568055
                           -0.0000000  -0.0113112   0.0000000  -0.0000000  -0.4279453   0.0000000  -0.0000000
 2222220/000/0222           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.8566878   0.0000000
                            0.0000000   0.0000000   0.0181548  -0.0000000  -0.0000000  -0.4279453  -0.0000000
 2222220000//0222          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.4284134   0.0000000  -0.0000000
                            0.0047804   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8558907
 22222200/0/00222          -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.1965936  -0.0000000
                           -0.0000000   0.0000000   0.8340231   0.0000000   0.0000000   0.4279453   0.0000000
 2222220/00/00222          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.2032493
                           -0.0000000   0.8324262   0.0000000  -0.0000000  -0.4279453  -0.0000000  -0.0000000
 22222200//000222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.3811055  -0.0000000
                            0.0000000  -0.0000000  -0.4710418   0.0000000   0.0000000   0.7412231  -0.0000000
 2222220/0/000222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.3773308
                           -0.0000000   0.4740710   0.0000000   0.0000000   0.7412231  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958437    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.000000    0.000000   -0.000000    0.958437   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.958437   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.728167   -0.000000    0.623196    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.623196   -0.000000    0.728167    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.524838    0.000000   -0.000000    0.801467
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.956461    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.054651    0.000000    0.000000   -0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.244985    0.000000   -0.000000
             0.926168   -0.000000   -0.000000   -0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.801467   -0.000000   -0.000000   -0.524838
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 10          0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.926168   -0.000000    0.000000
             0.244985    0.000000    0.000000    0.000000   -0.000000
 11          0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.054651    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.956461    0.000000   -0.000000   -0.000000
 12         -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958021    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000
 13          0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.956915    0.000000    0.000000
 14         -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.956915
 15         -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.956915    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958437    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.958437    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.958437    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.958437    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.958437    0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958021    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.958021    0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000
 8          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.958021    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000
 9          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.958021   -0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000
 10         -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.958021
             0.000000   -0.000000    0.000000   -0.000000   -0.000000
 11         -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.958021   -0.000000    0.000000   -0.000000    0.000000
 12         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.958021    0.000000    0.000000   -0.000000
 13         -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.956915   -0.000000   -0.000000
 14         -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.956915    0.000000
 15         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.956915


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95843670 (fixed)   0.95855734 (relaxed)   0.95843670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00261789   -0.00609292   -0.48303634
 Singles      0.02131234   -0.06447235   -0.07075424
 Pairs        0.06468181    0.00000000   -0.03497962
 Total        1.08861204   -0.07056527   -0.58877020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96126250
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.45571583
 One electron energy               -11102.69525157
 Two electron energy                 2970.14521888
 Virial quotient                       -0.84070784
 Correlation energy                    -0.58877020
 !MRCI STATE 1.1 Energy             -8132.550032694192

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60220482 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60204350 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60220482 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59979624 (Pople, fixed reference)
 Cluster corrected energies         -8132.59963130 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59979624 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95843670 (fixed)   0.95855734 (relaxed)   0.95843670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00261789   -0.00609292   -0.48303634
 Singles      0.02131234   -0.06447235   -0.07075424
 Pairs        0.06468181    0.00000000   -0.03497962
 Total        1.08861204   -0.07056527   -0.58877020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96126250
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.45571597
 One electron energy               -11102.69525141
 Two electron energy                 2970.14521871
 Virial quotient                       -0.84070784
 Correlation energy                    -0.58877020
 !MRCI STATE 2.1 Energy             -8132.550032694038

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60220482 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60204350 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60220482 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59979623 (Pople, fixed reference)
 Cluster corrected energies         -8132.59963130 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59979623 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95843670 (fixed)   0.95855734 (relaxed)   0.95843670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00261789   -0.00609292   -0.48303635
 Singles      0.02131234   -0.06447235   -0.07075423
 Pairs        0.06468180    0.00000000   -0.03497961
 Total        1.08861203   -0.07056526   -0.58877020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96126250
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.45571886
 One electron energy               -11102.69525501
 Two electron energy                 2970.14522231
 Virial quotient                       -0.84070784
 Correlation energy                    -0.58877020
 !MRCI STATE 3.1 Energy             -8132.550032693841

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60220482 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60204350 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60220482 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59979623 (Pople, fixed reference)
 Cluster corrected energies         -8132.59963130 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59979623 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.72816730 (fixed)   0.95855732 (relaxed)   0.95843668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00261789   -0.00609292   -0.48303632
 Singles      0.02131236   -0.06447236   -0.07075425
 Pairs        0.06468182   -0.00000000   -0.03497963
 Total        1.08861207   -0.07056528   -0.58877020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96126250
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.45571404
 One electron energy               -11102.69524863
 Two electron energy                 2970.14521594
 Virial quotient                       -0.84070784
 Correlation energy                    -0.58877020
 !MRCI STATE 4.1 Energy             -8132.550032691584

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60220484 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60204351 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60220484 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59979625 (Pople, fixed reference)
 Cluster corrected energies         -8132.59963131 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59979625 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.72816730 (fixed)   0.95855732 (relaxed)   0.95843668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00261789   -0.00609292   -0.48303633
 Singles      0.02131236   -0.06447235   -0.07075424
 Pairs        0.06468182    0.00000000   -0.03497963
 Total        1.08861207   -0.07056527   -0.58877020
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96126250
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.45571787
 One electron energy               -11102.69525393
 Two electron energy                 2970.14522124
 Virial quotient                       -0.84070784
 Correlation energy                    -0.58877020
 !MRCI STATE 5.1 Energy             -8132.550032691091

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60220484 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60204351 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60220484 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59979625 (Pople, fixed reference)
 Cluster corrected energies         -8132.59963131 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59979625 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.80146731 (fixed)   0.95802118 (relaxed)   0.95802118 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00201892   -0.00515422   -0.48689253
 Singles      0.02032596   -0.06105615   -0.06705550
 Pairs        0.06721167   -0.00000000   -0.03641317
 Total        1.08955656   -0.06621037   -0.59036119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90296055
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44485015
 One electron energy               -11105.04652146
 Two electron energy                 2972.55319971
 Virial quotient                       -0.84070292
 Correlation energy                    -0.59036119
 !MRCI STATE 6.1 Energy             -8132.493321747440

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54619246 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54619246 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54619246 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54379041 (Pople, fixed reference)
 Cluster corrected energies         -8132.54379041 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54379041 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95646111 (fixed)   0.95802117 (relaxed)   0.95802117 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00201893   -0.00515422   -0.48689252
 Singles      0.02032597   -0.06105615   -0.06705550
 Pairs        0.06721170    0.00000001   -0.03641317
 Total        1.08955659   -0.06621036   -0.59036119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90296055
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44484820
 One electron energy               -11105.04651928
 Two electron energy                 2972.55319754
 Virial quotient                       -0.84070292
 Correlation energy                    -0.59036119
 !MRCI STATE 7.1 Energy             -8132.493321747437

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54619248 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54619248 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54619248 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54379043 (Pople, fixed reference)
 Cluster corrected energies         -8132.54379043 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54379043 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.92616780 (fixed)   0.95802117 (relaxed)   0.95802117 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00201893   -0.00515422   -0.48689251
 Singles      0.02032596   -0.06105614   -0.06705550
 Pairs        0.06721170    0.00000000   -0.03641318
 Total        1.08955659   -0.06621036   -0.59036119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90296055
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44484808
 One electron energy               -11105.04651927
 Two electron energy                 2972.55319752
 Virial quotient                       -0.84070292
 Correlation energy                    -0.59036119
 !MRCI STATE 8.1 Energy             -8132.493321747363

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54619248 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54619248 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54619248 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54379043 (Pople, fixed reference)
 Cluster corrected energies         -8132.54379043 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54379043 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.80146727 (fixed)   0.95802112 (relaxed)   0.95802112 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00201893   -0.00515422   -0.48689245
 Singles      0.02032605   -0.06105617   -0.06705552
 Pairs        0.06721171    0.00000000   -0.03641322
 Total        1.08955668   -0.06621039   -0.59036119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90296055
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44485162
 One electron energy               -11105.04652746
 Two electron energy                 2972.55320572
 Virial quotient                       -0.84070292
 Correlation energy                    -0.59036119
 !MRCI STATE 9.1 Energy             -8132.493321745515

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54619254 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54619254 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54619254 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54379048 (Pople, fixed reference)
 Cluster corrected energies         -8132.54379048 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54379048 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.92616781 (fixed)   0.95802118 (relaxed)   0.95802118 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00201892   -0.00515422   -0.48689251
 Singles      0.02032599   -0.06105616   -0.06705551
 Pairs        0.06721163    0.00000000   -0.03641317
 Total        1.08955655   -0.06621039   -0.59036119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90296055
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44485557
 One electron energy               -11105.04653216
 Two electron energy                 2972.55321041
 Virial quotient                       -0.84070292
 Correlation energy                    -0.59036119
 !MRCI STATE 10.1 Energy            -8132.493321745280

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54619246 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54619246 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54619246 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54379040 (Pople, fixed reference)
 Cluster corrected energies         -8132.54379040 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54379040 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.95646112 (fixed)   0.95802118 (relaxed)   0.95802118 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00201893   -0.00515422   -0.48689254
 Singles      0.02032599   -0.06105616   -0.06705550
 Pairs        0.06721163    0.00000003   -0.03641314
 Total        1.08955655   -0.06621035   -0.59036119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90296055
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44485570
 One electron energy               -11105.04653270
 Two electron energy                 2972.55321095
 Virial quotient                       -0.84070292
 Correlation energy                    -0.59036119
 !MRCI STATE 11.1 Energy            -8132.493321745207

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54619246 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54619246 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54619246 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54379040 (Pople, fixed reference)
 Cluster corrected energies         -8132.54379040 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54379040 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95802113 (fixed)   0.95802113 (relaxed)   0.95802113 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00201893   -0.00515422   -0.48689242
 Singles      0.02032611   -0.06105620   -0.06705554
 Pairs        0.06721164   -0.00000000   -0.03641323
 Total        1.08955668   -0.06621042   -0.59036119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90296055
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44486401
 One electron energy               -11105.04654621
 Two electron energy                 2972.55322447
 Virial quotient                       -0.84070292
 Correlation energy                    -0.59036119
 !MRCI STATE 12.1 Energy            -8132.493321742870

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54619253 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54619253 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54619253 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54379048 (Pople, fixed reference)
 Cluster corrected energies         -8132.54379048 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54379048 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.95691483 (fixed)   0.95691483 (relaxed)   0.95691483 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00228686   -0.00572087   -0.48896601
 Singles      0.02003293   -0.06109577   -0.06684210
 Pairs        0.06975763    0.00000000   -0.03791863
 Total        1.09207743   -0.06681664   -0.59372674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.88320700
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44337544
 One electron energy               -11104.96123937
 Two electron energy                 2972.48430563
 Virial quotient                       -0.84070135
 Correlation energy                    -0.59372674
 !MRCI STATE 13.1 Energy            -8132.476933742336

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53160257 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53160257 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53160257 (Davidson, rotated reference)

 Cluster corrected energies         -8132.52922610 (Pople, fixed reference)
 Cluster corrected energies         -8132.52922610 (Pople, relaxed reference)
 Cluster corrected energies         -8132.52922610 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95691483 (fixed)   0.95691483 (relaxed)   0.95691483 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00228686   -0.00572087   -0.00648181
 Singles      0.02003294   -0.06109577   -0.06684210
 Pairs        0.06975763   -0.52691010   -0.52040283
 Total        1.09207743   -0.59372674   -0.59372674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.88320700
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44337552
 One electron energy               -11104.96123950
 Two electron energy                 2972.48430576
 Virial quotient                       -0.84070135
 Correlation energy                    -0.59372674
 !MRCI STATE 14.1 Energy            -8132.476933742257

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53160257 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53160257 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53160257 (Davidson, rotated reference)

 Cluster corrected energies         -8132.52922610 (Pople, fixed reference)
 Cluster corrected energies         -8132.52922610 (Pople, relaxed reference)
 Cluster corrected energies         -8132.52922610 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95691484 (fixed)   0.95691484 (relaxed)   0.95691484 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00228686   -0.00572087   -0.48896603
 Singles      0.02003297   -0.06109577   -0.06684210
 Pairs        0.06975757   -0.00000000   -0.03791862
 Total        1.09207740   -0.06681664   -0.59372674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.88320700
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44338513
 One electron energy               -11104.96125851
 Two electron energy                 2972.48432477
 Virial quotient                       -0.84070135
 Correlation energy                    -0.59372674
 !MRCI STATE 15.1 Energy            -8132.476933741984

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53160256 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53160256 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53160256 (Davidson, rotated reference)

 Cluster corrected energies         -8132.52922608 (Pople, fixed reference)
 Cluster corrected energies         -8132.52922608 (Pople, relaxed reference)
 Cluster corrected energies         -8132.52922608 (Pople, rotated reference)



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
 CPU TIMES  *       874.12    840.58     15.32      6.74      0.11     11.17
 REAL TIME  *       939.89 SEC
 DISK USED  *       975.29 MB (local),       15.43 GB (total)
 SF USED    *         8.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(2)     =     -8132.60220482  AU                              
 SETTING HLSDIAG(3)     =     -8132.60220482  AU                              
 SETTING HLSDIAG(4)     =     -8132.60220482  AU                              
 SETTING HLSDIAG(5)     =     -8132.60220484  AU                              
 SETTING HLSDIAG(6)     =     -8132.60220484  AU                              
 SETTING HLSDIAG(7)     =     -8132.54619246  AU                              
 SETTING HLSDIAG(8)     =     -8132.54619248  AU                              
 SETTING HLSDIAG(9)     =     -8132.54619248  AU                              
 SETTING HLSDIAG(10)    =     -8132.54619254  AU                              
 SETTING HLSDIAG(11)    =     -8132.54619246  AU                              
 SETTING HLSDIAG(12)    =     -8132.54619246  AU                              
 SETTING HLSDIAG(13)    =     -8132.54619253  AU                              
 SETTING HLSDIAG(14)    =     -8132.53160257  AU                              
 SETTING HLSDIAG(15)    =     -8132.53160257  AU                              
 SETTING HLSDIAG(16)    =     -8132.53160256  AU                              


         HLSDIAG
    -8132.645805
    -8132.602205
    -8132.602205
    -8132.602205
    -8132.602205
    -8132.602205
    -8132.546192
    -8132.546192
    -8132.546192
    -8132.546193
    -8132.546192
    -8132.546192
    -8132.546193
    -8132.531603
    -8132.531603
    -8132.531603
                                                  

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

 Time for Seward_LS:     213.90 sec

       61428503. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    15015 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    213.90 sec, REAL time:    214.52 sec


 SORTLS1 read    61450532. and wrote    61450532. SO integrals in   272 records. CPU time:      0.36 sec, REAL time:      0.83 sec
 SORTLS2 read    61450532. and wrote    61450532. SO integrals in    48 records. CPU time:      0.11 sec, REAL time:      0.30 sec

 FILE SIZES: FILE 1:  1117.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1117.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1065.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      848.02       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1089.05    214.90    840.58     15.32      6.74      0.11     11.17
 REAL TIME  *      1156.17 SEC
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

 Original energies:  -8132.594696
 Replaced energies:  -8132.645805

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  15

 Original energies:  -8132.550033  -8132.550033  -8132.550033  -8132.550033  -8132.550033  -8132.493322  -8132.493322  -8132.493322
                     -8132.493322  -8132.493322  -8132.493322  -8132.493322  -8132.476934  -8132.476934  -8132.476934
 Replaced energies:  -8132.602205  -8132.602205  -8132.602205  -8132.602205  -8132.602205  -8132.546192  -8132.546192  -8132.546192
                     -8132.546193  -8132.546192  -8132.546192  -8132.546193  -8132.531603  -8132.531603  -8132.531603



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -8132.64580469

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

    2   1.1  1.0  1.0      -0.00    9569.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -75.78      -0.00      -0.00       0.00       0.00       2.13       0.00       0.00

    3   2.1  1.0  1.0       0.00       0.00    9569.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      75.78       0.00      -0.00       0.00       0.00       0.00      -0.00      -2.10      -0.00

    4   3.1  1.0  1.0      -0.00       0.00       0.00    9569.07       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -12.07     151.07      -0.00      -0.00      -0.00      -0.00

    5   4.1  1.0  1.0      -0.00       0.00       0.00       0.00    9569.06       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      12.07      -0.00       0.00       3.57       0.00       0.00       0.17

    6   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00    9569.06       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -151.07      -0.00       0.00       0.26      -0.00       0.00      -2.67

    7   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00   21862.36       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -3.57      -0.26       0.00       0.00       0.00      -0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21862.35       0.00       0.00
                            0.00      -2.13       0.00       0.00      -0.00       0.00      -0.00      -0.00    -104.97       0.00

    9   8.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21862.35       0.00
                            0.00      -0.00       2.10       0.00      -0.00      -0.00      -0.00     104.97       0.00      -0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21862.34
                           -0.00      -0.00       0.00       0.00      -0.17       2.67       0.00      -0.00       0.00       0.00

   11  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       2.64      -0.00      -0.00       0.00       0.00    -142.43       0.00       0.00

   12  11.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       2.63       0.00       0.00       0.00      -0.00      -0.00       0.00    -143.60       0.00

   13  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -2.67      -0.00       0.00      -1.63       0.00       0.00    -146.48

   14  13.1  1.0  1.0      18.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.07       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   15  14.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -18.96      -0.07      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   16  15.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.09      -0.01       0.00      -0.00       0.00      -0.00

   17   1.1  1.0  0.0       0.00      -0.00      -0.00      -0.00     -96.78      46.02      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      53.58       0.00       0.00      -1.48       0.00      -0.00      -1.87

   18   2.1  1.0  0.0       0.00       0.00       0.00      53.58       0.00      -0.00       1.44       0.00      -0.00      -1.90
                            0.00      -0.00       0.00      -0.00     -88.24     -60.81       0.00      -0.00      -0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00     -53.58       0.00       0.00      -0.00       0.00      -1.42      -0.00       0.00
                            0.00     -53.58       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -1.44       0.00

   20   4.1  1.0  0.0       0.00      96.78      -0.00      -0.00       0.00       0.00       0.00       0.00       1.11       0.00
                            0.00      -0.00      88.24       0.00       0.00       0.00      -0.00       1.47       0.00      -0.00

   21   5.1  1.0  0.0       0.00     -46.02       0.00       0.00      -0.00       0.00      -0.00       0.00       2.28       0.00
                           -0.00      -0.00      60.81       0.00      -0.00       0.00      -0.00      -2.06       0.00      -0.00

   22   6.1  1.0  0.0       0.00       0.00      -1.44      -0.00      -0.00       0.00       0.00      80.92      -0.00       0.00
                            0.00       1.48      -0.00       0.00       0.00       0.00       0.00      -0.00     -77.88      -0.00

   23   7.1  1.0  0.0       0.00      -0.00      -0.00       1.42      -0.00      -0.00     -80.92      -0.00       0.00     -99.93
                           -0.00      -0.00       0.00       0.00      -1.47       2.06       0.00       0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00      -0.00       0.00       0.00      -1.11      -2.28       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       1.44      -0.00      -0.00      77.88       0.00      -0.00    -101.51

   25   9.1  1.0  0.0       0.00       0.00       1.90      -0.00      -0.00      -0.00      -0.00      99.93       0.00      -0.00
                           -0.00       1.87      -0.00      -0.00       0.00       0.00       0.00       0.00     101.51       0.00

   26  10.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -1.69       0.84      -0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -1.91      -0.00      -0.00      98.98       0.00       0.00     -25.68

   27  11.1  1.0  0.0       0.00       0.00       0.00       1.92       0.00      -0.00      98.89      -0.00      -0.00      22.66
                            0.00       0.00       0.00      -0.00       1.52       1.12      -0.00       0.00      -0.00       0.00

   28  12.1  1.0  0.0       0.00       1.89       0.00      -0.00       0.00       0.00      -0.00       0.00       1.37       0.00
                            0.00      -0.00      -1.89       0.00       0.00       0.00       0.00      -2.19       0.00      -0.00

   29  13.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.03       0.05       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.05       0.00       0.00       0.00       0.00      -0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00       0.05      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.03      -0.05      -0.00       0.00      -0.00      -0.00

   31  15.1  1.0  0.0       0.00      -0.00       0.05      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           26.82      -0.05       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   32   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   3.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  11.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0      18.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  14.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           18.96      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  15.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00      -0.00       0.00      18.96      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      18.96      -0.00      -0.00      -0.00      -0.00      -0.00

    2   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      96.78
                            0.00      -2.63      -0.00       0.00       0.07       0.00       0.00       0.00      53.58       0.00

    3   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -53.58      -0.00
                           -2.64      -0.00      -0.00      -0.07       0.00      -0.00      -0.00      -0.00      -0.00     -88.24

    4   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      53.58       0.00      -0.00
                            0.00      -0.00       2.67      -0.00      -0.00      -0.00     -53.58       0.00      -0.00      -0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -96.78       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.09      -0.00      88.24       0.00      -0.00

    6   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      46.02      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.01      -0.00      60.81       0.00      -0.00

    7   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.44       0.00       0.00
                           -0.00       0.00       1.63      -0.00      -0.00      -0.00       1.48      -0.00       0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.42       0.00
                          142.43      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -1.47

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.11
                           -0.00     143.60      -0.00       0.00       0.00      -0.00       0.00       0.00       1.44      -0.00

   10   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.90       0.00       0.00
                           -0.00      -0.00     146.48      -0.00       0.00       0.00       1.87      -0.00      -0.00       0.00

   11  10.1  1.0  1.0   21862.36       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       1.69
                           -0.00     -41.52       0.00      -0.00       0.00      -0.00       0.00       0.00      -1.91      -0.00

   12  11.1  1.0  1.0       0.00   21862.36       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.92      -0.00
                           41.52       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       1.52

   13  12.1  1.0  1.0       0.00       0.00   21862.34       0.00       0.00       0.00      -1.89      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.89       0.00       0.00

   14  13.1  1.0  1.0       0.00       0.00       0.00   25064.47       0.00       0.00      -0.00       0.00       0.00      -0.03
                            0.00      -0.00      -0.00      -0.00     -78.31      -0.00      -0.00      -0.00       0.05       0.00

   15  14.1  1.0  1.0       0.00       0.00       0.00       0.00   25064.47       0.00      -0.00      -0.00      -0.05       0.00
                           -0.00       0.00      -0.00      78.31       0.00       0.00      -0.00       0.00       0.00       0.03

   16  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25064.47       0.00      -0.05       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.05       0.00      -0.00      -0.00

   17   1.1  1.0  0.0       0.00      -0.00      -1.89      -0.00      -0.00       0.00    9569.06       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.05       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00      -0.05       0.00    9569.06       0.00       0.00
                           -0.00      -0.00       1.89       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00      -1.92       0.00       0.00      -0.05       0.00       0.00       0.00    9569.07       0.00
                            1.91       0.00      -0.00      -0.05      -0.00       0.00      -0.00      -0.00       0.00       0.00

   20   4.1  1.0  0.0       1.69      -0.00      -0.00      -0.03       0.00      -0.00       0.00       0.00       0.00    9569.06
                            0.00      -1.52      -0.00      -0.00      -0.03       0.00      -0.00      -0.00      -0.00       0.00

   21   5.1  1.0  0.0      -0.84       0.00      -0.00      -0.05      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.12      -0.00      -0.00       0.05       0.00      -0.00      -0.00      -0.00      -0.00

   22   6.1  1.0  0.0       0.00     -98.89       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -98.98       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   7.1  1.0  0.0      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       2.19      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0      -0.00       0.00      -1.37      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   9.1  1.0  0.0       0.00     -22.66      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           25.68      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26  10.1  1.0  0.0      -0.00       0.00    -103.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   27  11.1  1.0  0.0      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -103.56       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   28  12.1  1.0  0.0     103.58      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     103.56       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29  13.1  1.0  0.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      55.38      -0.00      -0.00      -0.00      -0.00

   30  14.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00     -55.38       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   31  15.1  1.0  0.0      -0.00      -0.00      -0.00      -0.00      55.38      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -55.38      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -96.78
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      53.58       0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      53.58       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -88.24

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -53.58       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -53.58       0.00       0.00      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      96.78      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      88.24       0.00       0.00

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -46.02       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      60.81       0.00      -0.00

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.44      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.48      -0.00       0.00       0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.42      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -1.47

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -1.11
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       1.44      -0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.90      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.87      -0.00      -0.00       0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -1.69
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -1.91      -0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.92       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       1.52

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       1.89       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.89       0.00       0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.05       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.05      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.03

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.05      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.05       0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    2   1.1  1.0  1.0     -46.02       0.00      -0.00      -0.00       0.00      -0.00       0.00       1.89       0.00       0.00
                            0.00      -1.48       0.00      -0.00      -1.87      -0.00      -0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0       0.00      -1.44      -0.00       0.00       1.90       0.00       0.00       0.00      -0.00       0.00
                          -60.81       0.00      -0.00      -0.00       0.00      -0.00      -0.00       1.89       0.00      -0.00

    4   3.1  1.0  1.0       0.00      -0.00       1.42       0.00      -0.00      -0.00       1.92      -0.00      -0.00       0.05
                           -0.00      -0.00      -0.00      -1.44       0.00       1.91       0.00      -0.00      -0.05      -0.00

    5   4.1  1.0  1.0      -0.00      -0.00      -0.00      -1.11      -0.00      -1.69       0.00       0.00       0.03      -0.00
                            0.00      -0.00       1.47       0.00      -0.00       0.00      -1.52      -0.00      -0.00      -0.03

    6   5.1  1.0  1.0       0.00       0.00      -0.00      -2.28      -0.00       0.84      -0.00       0.00       0.05       0.00
                           -0.00      -0.00      -2.06       0.00      -0.00       0.00      -1.12      -0.00      -0.00       0.05

    7   6.1  1.0  1.0      -0.00       0.00     -80.92       0.00      -0.00      -0.00      98.89      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00     -77.88      -0.00     -98.98       0.00      -0.00      -0.00       0.00

    8   7.1  1.0  1.0       0.00      80.92      -0.00      -0.00      99.93       0.00      -0.00       0.00      -0.00      -0.00
                            2.06       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.19      -0.00      -0.00

    9   8.1  1.0  1.0       2.28      -0.00       0.00      -0.00       0.00       0.00      -0.00       1.37       0.00      -0.00
                           -0.00      77.88       0.00       0.00    -101.51      -0.00       0.00      -0.00       0.00       0.00

   10   9.1  1.0  1.0       0.00       0.00     -99.93      -0.00      -0.00      -0.00      22.66       0.00       0.00       0.00
                            0.00       0.00       0.00     101.51      -0.00      25.68      -0.00       0.00      -0.00       0.00

   11  10.1  1.0  1.0      -0.84       0.00      -0.00      -0.00       0.00      -0.00      -0.00     103.58      -0.00      -0.00
                           -0.00      98.98       0.00       0.00     -25.68      -0.00      -0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0       0.00     -98.89       0.00       0.00     -22.66       0.00       0.00      -0.00      -0.00       0.00
                            1.12      -0.00       0.00      -0.00       0.00       0.00       0.00    -103.56       0.00      -0.00

   13  12.1  1.0  1.0      -0.00       0.00      -0.00      -1.37      -0.00    -103.58       0.00      -0.00       0.00       0.00
                            0.00       0.00      -2.19       0.00      -0.00      -0.00     103.56      -0.00       0.00       0.00

   14  13.1  1.0  1.0      -0.05      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   15  14.1  1.0  1.0      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.05      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   16  15.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     -55.38
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     -55.38      -0.00

   17   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   5.1  1.0  0.0    9569.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   6.1  1.0  0.0       0.00   21862.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   7.1  1.0  0.0       0.00       0.00   21862.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   8.1  1.0  0.0       0.00       0.00       0.00   21862.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0       0.00       0.00       0.00       0.00   21862.34       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   21862.36       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   21862.36       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   28  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21862.34       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   29  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25064.47       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25064.47
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   1.1  1.0 -1.0      46.02      -0.00       0.00       0.00      -0.00       0.00      -0.00      -1.89      -0.00      -0.00
                            0.00      -1.48       0.00      -0.00      -1.87      -0.00      -0.00       0.00       0.00       0.00

   33   2.1  1.0 -1.0      -0.00       1.44       0.00      -0.00      -1.90      -0.00      -0.00      -0.00       0.00      -0.00
                          -60.81       0.00      -0.00      -0.00       0.00      -0.00      -0.00       1.89       0.00      -0.00

   34   3.1  1.0 -1.0      -0.00       0.00      -1.42      -0.00       0.00       0.00      -1.92       0.00       0.00      -0.05
                           -0.00      -0.00      -0.00      -1.44       0.00       1.91       0.00      -0.00      -0.05      -0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       1.11       0.00       1.69      -0.00      -0.00      -0.03       0.00
                            0.00      -0.00       1.47       0.00      -0.00       0.00      -1.52      -0.00      -0.00      -0.03

   36   5.1  1.0 -1.0       0.00      -0.00       0.00       2.28       0.00      -0.84       0.00      -0.00      -0.05      -0.00
                            0.00      -0.00      -2.06       0.00      -0.00       0.00      -1.12      -0.00      -0.00       0.05

   37   6.1  1.0 -1.0       0.00       0.00      80.92      -0.00       0.00       0.00     -98.89       0.00      -0.00       0.00
                            0.00       0.00      -0.00     -77.88      -0.00     -98.98       0.00      -0.00      -0.00       0.00

   38   7.1  1.0 -1.0      -0.00     -80.92      -0.00       0.00     -99.93      -0.00       0.00      -0.00       0.00       0.00
                            2.06       0.00       0.00      -0.00      -0.00      -0.00      -0.00       2.19      -0.00      -0.00

   39   8.1  1.0 -1.0      -2.28       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -1.37      -0.00       0.00
                           -0.00      77.88       0.00      -0.00    -101.51      -0.00       0.00      -0.00       0.00       0.00

   40   9.1  1.0 -1.0      -0.00      -0.00      99.93       0.00      -0.00       0.00     -22.66      -0.00      -0.00      -0.00
                            0.00       0.00       0.00     101.51       0.00      25.68      -0.00       0.00      -0.00       0.00

   41  10.1  1.0 -1.0       0.84      -0.00       0.00       0.00      -0.00      -0.00       0.00    -103.58       0.00       0.00
                           -0.00      98.98       0.00       0.00     -25.68       0.00      -0.00       0.00       0.00       0.00

   42  11.1  1.0 -1.0      -0.00      98.89      -0.00      -0.00      22.66      -0.00       0.00       0.00       0.00      -0.00
                            1.12      -0.00       0.00      -0.00       0.00       0.00      -0.00    -103.56       0.00      -0.00

   43  12.1  1.0 -1.0       0.00      -0.00       0.00       1.37       0.00     103.58      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -2.19       0.00      -0.00      -0.00     103.56       0.00       0.00       0.00

   44  13.1  1.0 -1.0       0.05       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   45  14.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.05      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   46  15.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      55.38
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     -55.38      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                          -26.82       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

    2   1.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   2.1  1.0  1.0       0.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   3.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   9.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  11.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  12.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  13.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           55.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  14.1  1.0  1.0      55.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  15.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   1.1  1.0  0.0       0.00      -0.00       0.00       0.00      96.78     -46.02       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      53.58       0.00       0.00      -1.48       0.00      -0.00      -1.87

   18   2.1  1.0  0.0       0.00      -0.00       0.00     -53.58      -0.00       0.00      -1.44      -0.00       0.00       1.90
                            0.00      -0.00      -0.00      -0.00     -88.24     -60.81       0.00      -0.00      -0.00       0.00

   19   3.1  1.0  0.0       0.00      -0.00      53.58       0.00      -0.00       0.00      -0.00       1.42       0.00      -0.00
                            0.00     -53.58       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.44       0.00

   20   4.1  1.0  0.0       0.00     -96.78       0.00       0.00       0.00      -0.00      -0.00      -0.00      -1.11      -0.00
                            0.00      -0.00      88.24       0.00      -0.00       0.00      -0.00       1.47       0.00      -0.00

   21   5.1  1.0  0.0       0.00      46.02      -0.00      -0.00       0.00       0.00       0.00      -0.00      -2.28      -0.00
                            0.00      -0.00      60.81       0.00      -0.00      -0.00      -0.00      -2.06       0.00      -0.00

   22   6.1  1.0  0.0       0.00      -0.00       1.44       0.00       0.00      -0.00       0.00     -80.92       0.00      -0.00
                            0.00       1.48      -0.00       0.00       0.00       0.00      -0.00      -0.00     -77.88      -0.00

   23   7.1  1.0  0.0       0.00       0.00       0.00      -1.42       0.00       0.00      80.92      -0.00      -0.00      99.93
                            0.00      -0.00       0.00       0.00      -1.47       2.06       0.00      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00       0.00      -0.00      -0.00       1.11       2.28      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       1.44      -0.00      -0.00      77.88       0.00       0.00    -101.51

   25   9.1  1.0  0.0       0.00      -0.00      -1.90       0.00       0.00       0.00       0.00     -99.93      -0.00      -0.00
                            0.00       1.87      -0.00      -0.00       0.00       0.00       0.00       0.00     101.51      -0.00

   26  10.1  1.0  0.0       0.00       0.00      -0.00       0.00       1.69      -0.84       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -1.91      -0.00      -0.00      98.98       0.00       0.00     -25.68

   27  11.1  1.0  0.0       0.00      -0.00      -0.00      -1.92      -0.00       0.00     -98.89       0.00       0.00     -22.66
                            0.00       0.00       0.00      -0.00       1.52       1.12      -0.00       0.00      -0.00       0.00

   28  12.1  1.0  0.0       0.00      -1.89      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -1.37      -0.00
                            0.00      -0.00      -1.89       0.00       0.00       0.00       0.00      -2.19       0.00      -0.00

   29  13.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.03      -0.05      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.05       0.00       0.00       0.00       0.00      -0.00       0.00

   30  14.1  1.0  0.0       0.00      -0.00      -0.00      -0.05       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.03      -0.05      -0.00       0.00      -0.00      -0.00

   31  15.1  1.0  0.0   25064.47       0.00      -0.05       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.05       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   32   1.1  1.0 -1.0       0.00    9569.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.00      75.78       0.00       0.00      -0.00      -0.00      -2.13      -0.00      -0.00

   33   2.1  1.0 -1.0      -0.05       0.00    9569.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -75.78      -0.00       0.00      -0.00      -0.00      -0.00       0.00       2.10       0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00    9569.07       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      12.07    -151.07       0.00       0.00       0.00       0.00

   35   4.1  1.0 -1.0      -0.00       0.00       0.00       0.00    9569.06       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -12.07       0.00      -0.00      -3.57      -0.00      -0.00      -0.17

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00    9569.06       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     151.07       0.00      -0.00      -0.26       0.00      -0.00       2.67

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   21862.36       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       3.57       0.26      -0.00      -0.00      -0.00       0.00

   38   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   21862.35       0.00       0.00
                           -0.00       2.13      -0.00      -0.00       0.00      -0.00       0.00       0.00     104.97      -0.00

   39   8.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21862.35       0.00
                            0.00       0.00      -2.10      -0.00       0.00       0.00       0.00    -104.97      -0.00       0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   21862.34
                           -0.00       0.00      -0.00      -0.00       0.17      -2.67      -0.00       0.00      -0.00      -0.00

   41  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -2.64       0.00       0.00      -0.00      -0.00     142.43      -0.00      -0.00

   42  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.63      -0.00      -0.00      -0.00       0.00       0.00      -0.00     143.60      -0.00

   43  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       2.67       0.00      -0.00       1.63      -0.00      -0.00     146.48

   44  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           55.38       0.00      -0.07      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   45  14.1  1.0 -1.0     -55.38       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.07       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   46  15.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.09       0.01      -0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46

    1   1.1  0.0  0.0      -0.00      -0.00       0.00      18.96      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00     -18.96       0.00

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

   17   1.1  1.0  0.0      -0.00       0.00       1.89       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.05

   18   2.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00       0.05
                           -0.00      -0.00       1.89       0.00      -0.00      -0.00

   19   3.1  1.0  0.0      -0.00       1.92      -0.00      -0.00       0.05      -0.00
                            1.91       0.00      -0.00      -0.05      -0.00       0.00

   20   4.1  1.0  0.0      -1.69       0.00       0.00       0.03      -0.00       0.00
                            0.00      -1.52      -0.00      -0.00      -0.03       0.00

   21   5.1  1.0  0.0       0.84      -0.00       0.00       0.05       0.00      -0.00
                            0.00      -1.12      -0.00      -0.00       0.05       0.00

   22   6.1  1.0  0.0      -0.00      98.89      -0.00       0.00      -0.00      -0.00
                          -98.98       0.00      -0.00      -0.00       0.00      -0.00

   23   7.1  1.0  0.0       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       2.19      -0.00      -0.00      -0.00

   24   8.1  1.0  0.0       0.00      -0.00       1.37       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00

   25   9.1  1.0  0.0      -0.00      22.66       0.00       0.00       0.00      -0.00
                           25.68      -0.00       0.00      -0.00       0.00      -0.00

   26  10.1  1.0  0.0      -0.00      -0.00     103.58      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00

   27  11.1  1.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00    -103.56       0.00      -0.00       0.00

   28  12.1  1.0  0.0    -103.58       0.00      -0.00       0.00       0.00      -0.00
                           -0.00     103.56      -0.00       0.00       0.00      -0.00

   29  13.1  1.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      55.38

   30  14.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00      55.38
                           -0.00       0.00      -0.00      -0.00       0.00       0.00

   31  15.1  1.0  0.0       0.00       0.00       0.00       0.00     -55.38      -0.00
                           -0.00      -0.00       0.00     -55.38      -0.00      -0.00

   32   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       2.63       0.00      -0.00      -0.07      -0.00

   33   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            2.64       0.00       0.00       0.07      -0.00       0.00

   34   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -2.67       0.00       0.00       0.00

   35   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.09

   36   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.01

   37   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.63       0.00       0.00       0.00

   38   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                         -142.43       0.00       0.00       0.00       0.00      -0.00

   39   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -143.60       0.00      -0.00      -0.00       0.00

   40   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -146.48       0.00      -0.00      -0.00

   41  10.1  1.0 -1.0   21862.36       0.00       0.00       0.00       0.00       0.00
                            0.00      41.52      -0.00       0.00      -0.00       0.00

   42  11.1  1.0 -1.0       0.00   21862.36       0.00       0.00       0.00       0.00
                          -41.52      -0.00       0.00      -0.00       0.00       0.00

   43  12.1  1.0 -1.0       0.00       0.00   21862.34       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  13.1  1.0 -1.0       0.00       0.00       0.00   25064.47       0.00       0.00
                           -0.00       0.00       0.00       0.00      78.31       0.00

   45  14.1  1.0 -1.0       0.00       0.00       0.00       0.00   25064.47       0.00
                            0.00      -0.00       0.00     -78.31      -0.00      -0.00

   46  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   25064.47
                           -0.00      -0.00       0.00      -0.00       0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 46)

    The diagonal matrixelements are shifted by  -8132.64580469 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000    9569.065       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000    9569.065       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       0.000       0.000    9569.066       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000       0.000    9569.062       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000    9569.062       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000   21862.357       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   21862.353
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             26.819       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      75.776       0.000       0.000      -2.099       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000    -124.793     -85.992       0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000     -75.776       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     124.793       0.000       0.000       0.000      -0.000       2.080

    5    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      85.992       0.000      -0.000       0.000      -0.000      -2.918

    6    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.001       2.099      -0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -2.080       2.918       0.000       0.000

    8    1  |1 0>               0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       2.033      -0.000      -0.000     110.139       0.000

    9    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000       2.648      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -2.698      -0.000      -0.000     139.983       0.000

   11    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       2.156       1.578      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000      -0.000      -2.671       0.000       0.000       0.000       0.000      -3.104

   13    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.074       0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.049      -0.070      -0.000       0.000

   15    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               26.819      -0.074       0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -75.776      -0.000      -0.000       0.000       0.000       2.125

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      75.776       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000     -12.075     151.070      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      12.075      -0.000       0.000       3.574       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    -151.070      -0.000       0.000       0.256      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -3.574      -0.256       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -2.125       0.000       0.000      -0.000       0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       2.104       0.000      -0.000      -0.000      -0.000     104.970

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.173       2.666       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       2.643      -0.000      -0.000       0.000       0.000    -142.433

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.627       0.000       0.000       0.000      -0.000      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -2.671      -0.000       0.000      -1.635       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.074       0.000      -0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -26.819      -0.074      -0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.085      -0.007       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>              -0.000       0.000      -0.000      -0.000       0.000      26.819      -0.000      -0.000
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

    8    1  |1 1>+          21862.352       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000   21862.341       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000   21862.358       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000   21862.358       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000   21862.342       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   25064.468       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   25064.467       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   25064.471
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -2.648      -0.000      -0.000       0.000       0.000       0.000       0.074

    2    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       2.671       0.000      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -2.033       0.000       2.698       0.000      -0.000      -0.074      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000      -2.156      -0.000      -0.000      -0.049       0.000

    5    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000      -0.000       0.000      -1.578      -0.000      -0.000       0.070       0.000

    6    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                             -110.139      -0.000    -139.983       0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       3.104      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000    -143.552      -0.000       0.000      -0.000       0.000       0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000
                              143.552       0.000      36.312      -0.000       0.000      -0.000       0.000      -0.000

   10    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000     -36.312       0.000      -0.000       0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000    -146.461       0.000      -0.000       0.000

   12    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000     146.461       0.000       0.000       0.000      -0.000

   13    1  |1 0>              -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000      78.314

   14    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

   15    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000      -0.000      -0.000       0.000     -78.314      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -2.627      -0.000       0.000       0.074       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.104      -0.000      -2.643      -0.000      -0.000      -0.074       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       2.671      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.173       0.000      -0.000       0.000       0.000      -0.000       0.085

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -2.666      -0.000       0.000      -0.000       0.000      -0.000       0.007

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       1.635      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -104.970       0.000     142.433      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     143.603      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000     146.485      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     -41.520       0.000      -0.000       0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -143.603       0.000      41.520       0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -146.485      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000     -78.313      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      78.313       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.001       0.000       0.000

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000      75.776       0.000       0.000      -2.099       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -124.793     -85.992       0.000      -0.000      -0.000

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              -75.776       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -2.033

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     124.793       0.000       0.000       0.000      -0.000       2.080       0.000

    5    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      85.992       0.000      -0.000       0.000      -0.000      -2.918       0.000

    6    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                2.099      -0.000       0.000       0.000       0.000       0.000      -0.000    -110.139

    7    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -2.080       2.918       0.000       0.000      -0.000

    8    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       2.033      -0.000      -0.000     110.139       0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000
                                2.648      -0.000      -0.000       0.000       0.000       0.000       0.000     143.552

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -2.698      -0.000      -0.000     139.983       0.000       0.000

   11    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000       2.156       1.578      -0.000       0.000      -0.000

   12    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      -2.671       0.000       0.000       0.000       0.000      -3.104       0.000

   13    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.074       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 1>+              0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.049      -0.070      -0.000       0.000      -0.000

   15    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.074       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 0>            9569.065       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000    9569.065       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000    9569.066       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000    9569.062       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000    9569.062       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000   21862.357       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   21862.353       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   21862.352
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

    1    1  |1 1>-              0.000       0.000       0.000     136.868     -65.078       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-             -0.000       0.000     -75.776      -0.000       0.000      -2.039      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>-             -0.000      75.776       0.000      -0.000       0.000      -0.000       2.012       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    4    1  |1 1>-           -136.868       0.000       0.000       0.000      -0.000      -0.000      -0.000      -1.571
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-             65.078      -0.000      -0.000       0.000       0.000       0.000      -0.000      -3.221
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    6    1  |1 1>-             -0.000       2.039       0.000       0.000      -0.000       0.000    -114.435       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000      -2.012       0.000       0.000     114.435       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    8    1  |1 1>-              0.000      -0.000      -0.000       1.571       3.221      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.000      -2.694       0.000       0.000       0.000       0.000    -141.319      -0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000

   10    1  |1 1>-              0.000      -0.000       0.000       2.392      -1.190       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   11    1  |1 1>-             -0.000      -0.000      -2.714      -0.000       0.000    -139.849       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -2.671      -0.000       0.000      -0.000      -0.000       0.000      -0.000      -1.934
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-             -0.000       0.000       0.000      -0.037      -0.077      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>-             -0.000      -0.000      -0.074       0.000      -0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   15    1  |1 1>-              0.000      -0.074       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000     -26.819      -0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                               -2.648      -0.000      -0.000       0.000       0.000       0.000       0.074      -0.000

    2    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       2.671       0.000      -0.000      -0.000      75.776

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       2.698       0.000      -0.000      -0.074      -0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                               -0.000       0.000      -2.156      -0.000      -0.000      -0.049       0.000       0.000

    5    1  |1 1>+             -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000      -1.578      -0.000      -0.000       0.070       0.000      -0.000

    6    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000    -139.983       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       3.104      -0.000      -0.000      -0.000      -2.125

    8    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                             -143.552      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    9    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000      36.312      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   10    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              -36.312       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000    -146.461       0.000      -0.000       0.000       2.627

   12    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000     146.461       0.000       0.000       0.000      -0.000       0.000

   13    1  |1 1>+              0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      78.314      -0.000

   14    1  |1 1>+             -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.074

   15    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000     -78.314      -0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     136.868
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000     -65.078
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    9    1  |1 0>           21862.341       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   10    1  |1 0>               0.000   21862.358       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000   21862.358       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000   21862.342       0.000       0.000       0.000       2.671
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000   25064.468       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000   25064.467       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   25064.471      -0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000      -0.000       0.000       2.671       0.000       0.000      -0.000    9569.065
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              2.694       0.000       0.000       0.000      -0.000       0.000       0.074       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-             -0.000      -0.000       2.714      -0.000      -0.000       0.074      -0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 1>-             -0.000      -2.392       0.000       0.000       0.037      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-             -0.000       1.190      -0.000       0.000       0.077       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 1>-             -0.000      -0.000     139.849      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 1>-            141.319       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000      -0.000       1.934       0.000      -0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000      -0.000      32.052       0.000       0.000       0.001      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000      -0.000     146.481      -0.000      -0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   11    1  |1 1>-            -32.052       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   12    1  |1 1>-             -0.000    -146.481       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 1>-             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.001       0.000      -0.000      -0.000       0.000       0.000      78.314       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     -78.314       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -75.776      -0.000      -0.000       0.000       0.000       2.125       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000      -0.000      -2.104      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -12.075     151.070      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      12.075      -0.000       0.000       3.574       0.000       0.000       0.173

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -151.070      -0.000       0.000       0.256      -0.000       0.000      -2.666

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -3.574      -0.256       0.000       0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000    -104.970       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.104       0.000      -0.000      -0.000      -0.000     104.970       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.173       2.666       0.000      -0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.643      -0.000      -0.000       0.000       0.000    -142.433       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000    -143.603       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -2.671      -0.000       0.000      -1.635       0.000       0.000    -146.485

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.074       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.085      -0.007       0.000      -0.000       0.000      -0.000

    1    1  |1 0>              -0.000      -0.000    -136.868      65.078      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000      75.776       0.000      -0.000       2.039       0.000      -0.000      -2.694
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    3    1  |1 0>             -75.776       0.000       0.000      -0.000       0.000      -2.012      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       1.571       0.000
                                0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       3.221       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 0>              -2.039      -0.000      -0.000       0.000       0.000     114.435      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       2.012      -0.000      -0.000    -114.435       0.000       0.000    -141.319
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000      -1.571      -3.221       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    9    1  |1 0>               2.694      -0.000      -0.000      -0.000      -0.000     141.319       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000      -0.000      -2.392       1.190      -0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   11    1  |1 0>               0.000       2.714       0.000      -0.000     139.849      -0.000      -0.000      32.052
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000       0.000       1.934       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

   13    1  |1 0>              -0.000      -0.000       0.037       0.077       0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.074      -0.000       0.000      -0.000      -0.000      -0.000       0.001
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000

   15    1  |1 0>               0.074      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-           9569.065       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000    9569.066       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000    9569.062       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000    9569.062       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000   21862.357       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   21862.353       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   21862.352       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   21862.341
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
                                0.000       0.000      -0.000      -0.000      26.819      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -2.627      -0.000       0.000       0.074       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -2.643      -0.000      -0.000      -0.074       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       2.671      -0.000      -0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.085

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.007

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       1.635      -0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                              142.433      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     143.603      -0.000       0.000       0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     146.485      -0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -41.520       0.000      -0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               41.520       0.000      -0.000       0.000      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     -78.313      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      78.313       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 0>               0.000      -0.000      -2.671      -0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.074
                               -0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000      -2.714       0.000       0.000      -0.074       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 0>               2.392      -0.000      -0.000      -0.037       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -1.190       0.000      -0.000      -0.077      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000    -139.849       0.000      -0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000

    8    1  |1 0>              -0.000       0.000      -1.934      -0.000       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000     -32.052      -0.000      -0.000      -0.001       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 0>               0.000       0.000    -146.481       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000      -0.000

   11    1  |1 0>              -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000

   12    1  |1 0>             146.481      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000

   13    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000     -78.314
                                0.000       0.000       0.000      -0.000      -0.000       0.000

   15    1  |1 0>              -0.000      -0.000      -0.000      -0.000      78.314       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

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

   10    1  |1 1>-          21862.358       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000   21862.358       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000   21862.342       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000   25064.468       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000   25064.467       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   25064.471
                                0.000       0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -8132.64580508    -0.00000039       -0.09      0.00000000        0.00      0.0000
    2 -8132.60324061     0.04256408     9341.74      0.04256448     9341.82      1.1582
    3 -8132.60324061     0.04256408     9341.74      0.04256448     9341.82      1.1582
    4 -8132.60324061     0.04256408     9341.74      0.04256448     9341.82      1.1582
    5 -8132.60255010     0.04325459     9493.29      0.04325498     9493.37      1.1770
    6 -8132.60255010     0.04325459     9493.29      0.04325498     9493.37      1.1770
    7 -8132.60255010     0.04325459     9493.29      0.04325499     9493.37      1.1770
    8 -8132.60255009     0.04325460     9493.29      0.04325499     9493.37      1.1770
    9 -8132.60255009     0.04325460     9493.29      0.04325500     9493.37      1.1770
   10 -8132.60151432     0.04429037     9720.61      0.04429077     9720.70      1.2052
   11 -8132.60151432     0.04429037     9720.61      0.04429077     9720.70      1.2052
   12 -8132.60151432     0.04429037     9720.61      0.04429077     9720.70      1.2052
   13 -8132.60151432     0.04429037     9720.61      0.04429077     9720.70      1.2052
   14 -8132.60151431     0.04429037     9720.61      0.04429077     9720.70      1.2052
   15 -8132.60151431     0.04429037     9720.61      0.04429077     9720.70      1.2052
   16 -8132.60151431     0.04429038     9720.61      0.04429077     9720.70      1.2052
   17 -8132.54752744     0.09827725    21569.36      0.09827764    21569.45      2.6743
   18 -8132.54752744     0.09827725    21569.36      0.09827764    21569.45      2.6743
   19 -8132.54752744     0.09827725    21569.36      0.09827764    21569.45      2.6743
   20 -8132.54752743     0.09827726    21569.37      0.09827766    21569.45      2.6743
   21 -8132.54752741     0.09827728    21569.37      0.09827767    21569.46      2.6743
   22 -8132.54652622     0.09927846    21789.10      0.09927886    21789.19      2.7015
   23 -8132.54652622     0.09927847    21789.11      0.09927886    21789.19      2.7015
   24 -8132.54652622     0.09927847    21789.11      0.09927886    21789.19      2.7015
   25 -8132.54652622     0.09927847    21789.11      0.09927887    21789.19      2.7015
   26 -8132.54652622     0.09927847    21789.11      0.09927887    21789.19      2.7015
   27 -8132.54652621     0.09927848    21789.11      0.09927887    21789.19      2.7015
   28 -8132.54652619     0.09927849    21789.11      0.09927889    21789.20      2.7015
   29 -8132.54519130     0.10061338    22082.09      0.10061378    22082.17      2.7378
   30 -8132.54519130     0.10061339    22082.09      0.10061378    22082.17      2.7378
   31 -8132.54519129     0.10061340    22082.09      0.10061380    22082.18      2.7378
   32 -8132.54519128     0.10061341    22082.09      0.10061381    22082.18      2.7378
   33 -8132.54519126     0.10061343    22082.10      0.10061382    22082.18      2.7378
   34 -8132.54519126     0.10061343    22082.10      0.10061383    22082.18      2.7378
   35 -8132.54519126     0.10061343    22082.10      0.10061383    22082.18      2.7378
   36 -8132.54519126     0.10061343    22082.10      0.10061383    22082.18      2.7378
   37 -8132.54519125     0.10061344    22082.10      0.10061384    22082.19      2.7378
   38 -8132.53231582     0.11348887    24907.93      0.11348927    24908.01      3.0882
   39 -8132.53195939     0.11384530    24986.15      0.11384569    24986.24      3.0979
   40 -8132.53195939     0.11384530    24986.16      0.11384570    24986.24      3.0979
   41 -8132.53195939     0.11384530    24986.16      0.11384570    24986.24      3.0979
   42 -8132.53124575     0.11455894    25142.78      0.11455933    25142.87      3.1173
   43 -8132.53124575     0.11455894    25142.78      0.11455933    25142.87      3.1173
   44 -8132.53124574     0.11455895    25142.78      0.11455934    25142.87      3.1173
   45 -8132.53124574     0.11455895    25142.78      0.11455934    25142.87      3.1173
   46 -8132.53124574     0.11455895    25142.78      0.11455935    25142.87      3.1173

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99999826 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.75071625
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.54772038  0.00000006  0.00000000 -0.00000007 -0.40824544  0.00000004  0.00000000
                           0.00000000  0.00002478 -0.00000000 -0.00000000 -0.00000001  0.00004882  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000006 -0.54771933 -0.00000012  0.40824522 -0.00000007 -0.00000001 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000006  0.27158477  0.00000002  0.00000007  0.73738848 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000 -0.00000012  0.57117986 -0.00000001 -0.00000003 -0.35061463  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00013787  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00013603 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00009746
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00018214 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00016477
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00018352 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00018060  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00107673  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000264
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000433 -0.00000000 -0.00000000 -0.00000000 -0.00000580  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000 -0.00000000 -0.00000432 -0.00000000 -0.00000579  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                          -0.00000000  0.00000006  0.54772167  0.00000012  0.40824465 -0.00000007 -0.00000001 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000012  0.54772113  0.00000001  0.00000004  0.40824465 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.09729384

   4    1  |1 0>           0.00000000  0.00002853 -0.00000000 -0.00000000  0.00000000 -0.00000778 -0.00000000 -0.00000000
                          -0.00000000  0.63044793 -0.00000007 -0.00000000 -0.00000001 -0.06505378  0.00000001  0.00000000

   5    1  |1 0>          -0.00000000  0.00000228 -0.00000000 -0.00000000 -0.00000001  0.00009734  0.00000000  0.00000000
                           0.00000000  0.05039062 -0.00000001 -0.00000000  0.00000014  0.81390390 -0.00000008 -0.00000001

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00024078

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00014369 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00014227 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001883

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000001  0.00000000  0.00017874 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00017760  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00018059  0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000432  0.00000000 -0.00000580  0.00000000  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000432 -0.00000000 -0.00000000 -0.00000580  0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00107672  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000666

   1    1  |1 1>-         -0.00000000 -0.00002478  0.00000000  0.00000000 -0.00000001  0.00004882  0.00000000  0.00000000
                          -0.00000000 -0.54772126  0.00000006  0.00000000  0.00000007  0.40824497 -0.00000004 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.65342091

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000012 -0.54771967  0.00000001  0.00000004  0.40824476 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000  0.00000000
                          -0.00000000  0.00000004  0.35886469  0.00000008  0.67233337 -0.00000012 -0.00000001 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000006 -0.52078849 -0.00000011  0.46329240 -0.00000008 -0.00000001 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00014190 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00014831

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00013750  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00017902 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000
                           0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00018243 -0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00014141

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00018060 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000433 -0.00000000 -0.00000000  0.00000000  0.00000580 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00107673 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000402

  15    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000433  0.00000000  0.00000000  0.00000579 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.32108129  0.00000001 -0.00000000  0.00000001  0.00000000 -0.00000001  0.00000000 -0.57734891
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.32943670  0.00000006 -0.00000002  0.65177305  0.00000003 -0.00000000  0.00000001
                           0.00000000 -0.00024107  0.00000001  0.00000000  0.00110092  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000003 -0.13850455  0.00000003 -0.00000003  0.71704654  0.00000001 -0.00000002
                          -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000001 -0.00000009 -0.51118213 -0.00000001  0.00000001 -0.34812732 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000

   5    1  |1 1>+          0.00000000 -0.00000001 -0.00000009 -0.54522748 -0.00000001 -0.00000000  0.50353730 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00028548 -0.00000000  0.00000000  0.00013368 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00024053 -0.00000000  0.00000000  0.00020683  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000018 -0.00000000 -0.00000000  0.00000035  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00022181  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000337
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000 -0.00000000  0.00024648 -0.00000000  0.00000000 -0.00005616 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00007395  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00025553
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000  0.00025004  0.00000000 -0.00000000 -0.00001135  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000018  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00010071 -0.00000000  0.00000000 -0.00023489 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000616  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000002 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.00000000 -0.00000018  0.65965037 -0.00000011  0.00000002  0.31336647 -0.00000000 -0.00000001

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000
                          -0.00000000  0.00000001  0.00000012  0.63855262  0.00000001 -0.00000001  0.35438438  0.00000002

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.81067780 -0.00000001  0.00000000 -0.00000001 -0.00000000  0.00000001 -0.00000000  0.57735194

   4    1  |1 0>          -0.00000000  0.00056114 -0.00000002 -0.00000000 -0.00017139  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.76681641  0.00000020 -0.00000002  0.10146693  0.00000001 -0.00000000  0.00000001

   5    1  |1 0>           0.00000000 -0.00003564  0.00000000 -0.00000000 -0.00097421 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.04869880 -0.00000004 -0.00000001  0.57675691  0.00000002  0.00000000  0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00002687 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000285

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00007434  0.00000000  0.00000000 -0.00029958  0.00000000

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00005682 -0.00000000  0.00000000 -0.00030506 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00017962 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00025554

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00019275  0.00000000 -0.00000000  0.00017273  0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00020387  0.00000000 -0.00000000 -0.00016262  0.00000000

  12    1  |1 0>          -0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000042 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00004853 -0.00000000 -0.00000000  0.00025091  0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000080 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00040154 -0.00000002 -0.00000000  0.00081401  0.00000000  0.00000000  0.00000000
                           0.00000000  0.54871827  0.00000017 -0.00000000 -0.48191780 -0.00000001 -0.00000000  0.00000001

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.48960002  0.00000001 -0.00000000  0.00000001  0.00000000 -0.00000001  0.00000000 -0.57734979

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000
                          -0.00000000  0.00000000 -0.00000003 -0.18349437 -0.00000000 -0.00000001  0.70687274 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000002  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000017 -0.60676707  0.00000010 -0.00000002 -0.22587067  0.00000000  0.00000001

   5    1  |1 1>-          0.00000000 -0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000
                           0.00000000 -0.00000011  0.42132103 -0.00000008  0.00000004 -0.58019648 -0.00000001  0.00000001

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00027084 -0.00000000  0.00000000 -0.00015231 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00019156  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000541

   8    1  |1 1>-         -0.00000000 -0.00000011  0.00000000  0.00000000  0.00000047  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00014423 -0.00000000  0.00000000 -0.00028076 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00025564  0.00000000 -0.00000000 -0.00003710  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000017  0.00000000  0.00000000  0.00000018  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00022893 -0.00000000  0.00000000 -0.00010602 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00011237 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00025550

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00011534 -0.00000000 -0.00000000  0.00022806  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000536 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00014802 -0.00000000  0.00026346 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00015110  0.00000000 -0.00025846  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000000  0.00000000

   3    1  |1 1>+         -0.00015110 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00023437 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00027292 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00026678
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00012977  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000022
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.37247940 -0.00000009 -0.00000006 -0.00000000  0.00000000 -0.00000000  0.60191099  0.00000004
                          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000418  0.00000003

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.36753922  0.00000001  0.55529695 -0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00003261  0.00000000  0.00004910 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000010  0.00000011  0.56754498 -0.00000001  0.32623614  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.49215381  0.00000012  0.00000008  0.00000001 -0.00000000 -0.00000000  0.19309262  0.00000001
                           0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000134  0.00000001

  10    1  |1 1>+          0.00000004 -0.00000005 -0.24649783 -0.00000001  0.42114213  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000001 -0.00000001  0.00000000  0.49584352  0.00000001 -0.12428944 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00004399  0.00000000 -0.00001099  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000012  0.48796224 -0.00000009  0.00000001 -0.00000000 -0.00000001 -0.00000004  0.54404632
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000007  0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00015111 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00027416 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00015111 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00030707

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00030216  0.00000000  0.00000355  0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00002408  0.00000000  0.00001529  0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000002 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00030123 -0.00000000 -0.00025513  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00224362 -0.00000001  0.65463112 -0.00000000  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000
                           0.00000010 -0.38821591  0.00000007 -0.00000001  0.00000000 -0.00000001 -0.00000003  0.38286237

   8    1  |1 0>          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000355  0.00000002
                           0.38437083  0.00000010  0.00000007  0.00000000 -0.00000000 -0.00000000 -0.51146154 -0.00000003

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000008 -0.00000009 -0.48798843  0.00000000 -0.00157394 -0.00000000  0.00000000  0.00000000

  10    1  |1 0>          -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000066 -0.00000000
                           0.48290345  0.00000012  0.00000008  0.00000001 -0.00000000  0.00000000  0.09414359  0.00000001

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000012  0.47981764 -0.00000009  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.04300328

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00004329  0.00000000 -0.00005105  0.00000000  0.00000000
                           0.00000001  0.00000001 -0.00000000 -0.48796257 -0.00000001  0.57729322 -0.00000000  0.00000001

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000016

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00015110 -0.00000000  0.00025259 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00015416  0.00000000 -0.00025991 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00015110 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00017457

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00024884 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00022894  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00017147 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00011589  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000
                           0.00000010 -0.38336839  0.00000007 -0.00000001  0.00000000 -0.00000001 -0.00000004  0.66805788

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000010  0.00000010  0.55766088  0.00000000 -0.34278169  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00003296  0.00000000  0.00005017 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.37148826 -0.00000001 -0.56733677  0.00000000 -0.00000001

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                           0.00000012 -0.48371979  0.00000009 -0.00000001  0.00000000  0.00000001  0.00000001 -0.33057404

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00004373 -0.00000000  0.00001283  0.00000000 -0.00000000
                          -0.00000001 -0.00000001  0.00000000  0.49289246  0.00000001 -0.14511636  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000004  0.00000005  0.26078338 -0.00000001  0.41251120 -0.00000000  0.00000000  0.00000000

  12    1  |1 1>-         -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000399 -0.00000002
                           0.48796200  0.00000012  0.00000008  0.00000001 -0.00000000  0.00000000  0.57442343  0.00000004

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00025555 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00019414 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00022265 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00006150  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00032852  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.38064380 -0.00000000  0.00000001  0.00000000 -0.05493461 -0.00000001 -0.00000000  0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000  0.00000009  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.45304167  0.00000000  0.00000000  0.00000000 -0.21632753
                           0.00000000  0.00000000 -0.00000000  0.00005957  0.00000000 -0.00000000  0.00000000 -0.00010427

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00759896  0.00000000 -0.00000000 -0.00000001  0.44448059  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.53746020 -0.00000001  0.00000002  0.00000000  0.63372421  0.00000010  0.00000001 -0.00000000
                           0.00000000  0.00000001  0.00000000  0.00000000 -0.00000104 -0.00000001 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000002  0.00000001 -0.57729841  0.00000001 -0.00000001 -0.00000000  0.32087099  0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.55161577  0.00000000  0.00000000 -0.00000000  0.49068549
                          -0.00000000 -0.00000000 -0.00000000 -0.00007253 -0.00000000  0.00000000 -0.00000000  0.00023650

  12    1  |1 1>+         -0.00000001  0.19325531  0.00000000 -0.00000000 -0.00000009  0.59120081  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000053 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000009
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00017125  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00010100 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00025556  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00034206 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00002354 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00644224 -0.00000000  0.00000000 -0.00000000 -0.00990756 -0.00000001

   7    1  |1 0>           0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000038 -0.00000000  0.00000000
                          -0.00000002  0.58280572  0.00000001  0.00000000  0.00000006 -0.42535177 -0.00000000 -0.00000000

   8    1  |1 0>          -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000071 -0.00000001 -0.00000000  0.00000000
                          -0.47942860 -0.00000002  0.00000002 -0.00000000 -0.43639833 -0.00000007 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000002 -0.00000001  0.57731764 -0.00000001 -0.00000001 -0.00000001  0.65448445  0.00000000

  10    1  |1 0>           0.00000001  0.00000001  0.00000000  0.00000000  0.00000041  0.00000001  0.00000000  0.00000000
                           0.57708144  0.00000002 -0.00000002 -0.00000000  0.25029697  0.00000004  0.00000000 -0.00000000

  11    1  |1 0>           0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000024 -0.00000000  0.00000000
                          -0.00000002  0.58756698  0.00000001  0.00000000  0.00000004 -0.26652426 -0.00000000 -0.00000000

  12    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000112  0.00000000 -0.00000000  0.00000000 -0.00031551
                          -0.00000000 -0.00000000  0.00000000 -0.00855522  0.00000000 -0.00000000 -0.00000000  0.65460803

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000011  0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000010 -0.00000000 -0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00020172  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00025555 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00027208  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00017242 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00029548  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000
                           0.00000001 -0.21559679 -0.00000001 -0.00000000 -0.00000001  0.05628963  0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.01221070  0.00000000 -0.00000001 -0.00000000  0.41141190  0.00000000

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00005680 -0.00000000 -0.00000000  0.00000000 -0.00010753
                           0.00000000  0.00000000 -0.00000000 -0.43199984  0.00000000  0.00000000 -0.00000000  0.22309057

   9    1  |1 1>-          0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000056  0.00000000 -0.00000000
                          -0.00000002  0.48090825  0.00000001  0.00000000 -0.00000009  0.62877164  0.00000001  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00007247  0.00000000 -0.00000000  0.00000000 -0.00023322
                           0.00000000  0.00000000 -0.00000001 -0.55115880 -0.00000000 -0.00000000 -0.00000000  0.48388928

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000002 -0.00000001  0.57721949 -0.00000001 -0.00000000  0.00000001 -0.31901568  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000096 -0.00000001 -0.00000000 -0.00000000
                           0.05806776  0.00000001 -0.00000000  0.00000000 -0.58505020 -0.00000009 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000  0.00000008

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>           0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00186494 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000335 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000165
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000349
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000006  0.59249862 -0.00000021  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000811  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000001 -0.00000001 -0.00000003  0.55182942 -0.00000001  0.00000000  0.00000001 -0.00000000
                          -0.00000000  0.00000001 -0.00000001  0.00009376  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.60843990  0.00000006  0.00000003  0.00000001  0.06035529  0.00000002 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000001 -0.17329148  0.00000006 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000237 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+          0.18390736 -0.00000001 -0.00000001 -0.00000001 -0.54020780  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00000001 -0.00000002  0.44004427  0.00000000  0.00000000 -0.00000007  0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.00007477  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+         -0.00000001 -0.00000010 -0.28114116 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000003
                           0.00000000 -0.00000000  0.00000083  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000014 -0.57735163 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000  0.70710689 -0.00000001
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00039305 -0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000336

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000386  0.00000000

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000031  0.00000000

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.40884099 -0.00000004 -0.00000002  0.00000000  0.63573767  0.00000015  0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000125 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002 -0.00000015 -0.42675292 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000002

   8    1  |1 0>           0.00000000  0.00000565 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000004  0.41275992 -0.00000015  0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01469901  0.00000000 -0.00000000 -0.00000000 -0.00176051 -0.00000003 -0.00000000  0.00000000

  10    1  |1 0>           0.00000000  0.00000824 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000006  0.60188835 -0.00000021  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000001  0.00000174  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000003  0.00000021  0.59300549  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000010

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000107 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00632428  0.00000001 -0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000  0.00000001  0.70711529

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000015 -0.57734398 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000335 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000335

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000001  0.00000176  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000003  0.00000021  0.59755898  0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000009

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.63221912 -0.00000006 -0.00000003 -0.00000001 -0.04904213 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000001 -0.00009364 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000001 -0.00000003  0.55111891 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000051  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000006  0.17352046  0.00000001  0.00000000  0.00000000  0.00000000  0.00000012

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000001  0.00007562  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000001  0.00000002 -0.44505420  0.00000001  0.00000000  0.00000009 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.17003220 -0.00000001 -0.00000000 -0.00000001 -0.54585909  0.00000002 -0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000402  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000003 -0.29372624  0.00000011 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00039305  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000  0.70710645 -0.00000001

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000016  0.57735219  0.00000000  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000010 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.70709828

 State Sym Spin     / Nr.     41          42          43          44          45          46

   1    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000326 -0.00000000  0.00000000 -0.00000000 -0.00000585
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000335 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000335 -0.00000000  0.00000000  0.00000335 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000604  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000287 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000009  0.00000000  0.00000000  0.00000010 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000004
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000009 -0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000016
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000007 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.71303964  0.00000065  0.00000001  0.00000000 -0.39779192
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000065 -0.70710655  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00012458  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.70709850 -0.00000000  0.00000000  0.70711506 -0.00000006  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000335 -0.00000000  0.00000000  0.00000335 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000335  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000670 -0.00000000 -0.00000000 -0.00000000 -0.00000010

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000053 -0.00000000  0.00000000  0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000667  0.00000000 -0.00000000 -0.00000000

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000011

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000004  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000020 -0.00000000 -0.00000000  0.00000000 -0.00000002

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000009  0.00000000  0.00000000  0.00000009 -0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.70711506 -0.00000000  0.00000000  0.70709850 -0.00000006  0.00000001

  14    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000004  0.00000000  0.00000000 -0.00000006 -0.70709828  0.00000001

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.01201841 -0.00000001 -0.00000001  0.00000001  0.81641186

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000335  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000344 -0.00000000 -0.00000000  0.00000000  0.00000576

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000335  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000218 -0.00000000  0.00000000  0.00000551 -0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000318 -0.00000000  0.00000000  0.00000380 -0.00000000  0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000003

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000010 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000016

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000002  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000  0.00012458  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000065  0.70710699 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.70102071  0.00000064  0.00000000  0.00000001  0.41860872

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000004 -0.00000000 -0.00000000  0.00000006  0.70711529 -0.00000001


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -8132.64580508     -0.00000039       -0.09      0.00000000        0.00      0.0000
     2   1  -8132.60324061      0.04256408     9341.74      0.04256448     9341.82      1.1582
     3   1  -8132.60324061      0.04256408     9341.74      0.04256448     9341.82      1.1582
     4   1  -8132.60324061      0.04256408     9341.74      0.04256448     9341.82      1.1582
     5   1  -8132.60255010      0.04325459     9493.29      0.04325498     9493.37      1.1770
     6   1  -8132.60255010      0.04325459     9493.29      0.04325498     9493.37      1.1770
     7   1  -8132.60255010      0.04325459     9493.29      0.04325499     9493.37      1.1770
     8   1  -8132.60255009      0.04325460     9493.29      0.04325499     9493.37      1.1770
     9   1  -8132.60255009      0.04325460     9493.29      0.04325500     9493.37      1.1770
    10   1  -8132.60151432      0.04429037     9720.61      0.04429077     9720.70      1.2052
    11   1  -8132.60151432      0.04429037     9720.61      0.04429077     9720.70      1.2052
    12   1  -8132.60151432      0.04429037     9720.61      0.04429077     9720.70      1.2052
    13   1  -8132.60151432      0.04429037     9720.61      0.04429077     9720.70      1.2052
    14   1  -8132.60151431      0.04429037     9720.61      0.04429077     9720.70      1.2052
    15   1  -8132.60151431      0.04429037     9720.61      0.04429077     9720.70      1.2052
    16   1  -8132.60151431      0.04429038     9720.61      0.04429077     9720.70      1.2052
    17   1  -8132.54752744      0.09827725    21569.36      0.09827764    21569.45      2.6743
    18   1  -8132.54752744      0.09827725    21569.36      0.09827764    21569.45      2.6743
    19   1  -8132.54752744      0.09827725    21569.36      0.09827764    21569.45      2.6743
    20   1  -8132.54752743      0.09827726    21569.37      0.09827766    21569.45      2.6743
    21   1  -8132.54752741      0.09827728    21569.37      0.09827767    21569.46      2.6743
    22   1  -8132.54652622      0.09927846    21789.10      0.09927886    21789.19      2.7015
    23   1  -8132.54652622      0.09927847    21789.11      0.09927886    21789.19      2.7015
    24   1  -8132.54652622      0.09927847    21789.11      0.09927886    21789.19      2.7015
    25   1  -8132.54652622      0.09927847    21789.11      0.09927887    21789.19      2.7015
    26   1  -8132.54652622      0.09927847    21789.11      0.09927887    21789.19      2.7015
    27   1  -8132.54652621      0.09927848    21789.11      0.09927887    21789.19      2.7015
    28   1  -8132.54652619      0.09927849    21789.11      0.09927889    21789.20      2.7015
    29   1  -8132.54519130      0.10061338    22082.09      0.10061378    22082.17      2.7378
    30   1  -8132.54519130      0.10061339    22082.09      0.10061378    22082.17      2.7378
    31   1  -8132.54519129      0.10061340    22082.09      0.10061380    22082.18      2.7378
    32   1  -8132.54519128      0.10061341    22082.09      0.10061381    22082.18      2.7378
    33   1  -8132.54519126      0.10061343    22082.10      0.10061382    22082.18      2.7378
    34   1  -8132.54519126      0.10061343    22082.10      0.10061383    22082.18      2.7378
    35   1  -8132.54519126      0.10061343    22082.10      0.10061383    22082.18      2.7378
    36   1  -8132.54519126      0.10061343    22082.10      0.10061383    22082.18      2.7378
    37   1  -8132.54519125      0.10061344    22082.10      0.10061384    22082.19      2.7378
    38   1  -8132.53231582      0.11348887    24907.93      0.11348927    24908.01      3.0882
    39   1  -8132.53195939      0.11384530    24986.15      0.11384569    24986.24      3.0979
    40   1  -8132.53195939      0.11384530    24986.16      0.11384570    24986.24      3.0979
    41   1  -8132.53195939      0.11384530    24986.16      0.11384570    24986.24      3.0979
    42   1  -8132.53124575      0.11455894    25142.78      0.11455933    25142.87      3.1173
    43   1  -8132.53124575      0.11455894    25142.78      0.11455933    25142.87      3.1173
    44   1  -8132.53124574      0.11455895    25142.78      0.11455934    25142.87      3.1173
    45   1  -8132.53124574      0.11455895    25142.78      0.11455934    25142.87      3.1173
    46   1  -8132.53124574      0.11455895    25142.78      0.11455935    25142.87      3.1173

 E0 =  -8132.64580469 is the energy of the lowest zeroth-order state
 E1 =  -8132.64580508 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99999826 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000  0.75071625
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.54772038  0.00000006  0.00000000 -0.00000007 -0.40824544  0.00000004  0.00000000
                                0.00000000  0.00002478 -0.00000000 -0.00000000 -0.00000001  0.00004882  0.00000000  0.00000000

  4  1     3    1  |1 1>+       0.00000000 -0.00000006 -0.54771933 -0.00000012  0.40824522 -0.00000007 -0.00000001 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000

  5  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000006  0.27158477  0.00000002  0.00000007  0.73738848 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000000 -0.00000012  0.57117986 -0.00000001 -0.00000003 -0.35061463  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00013787  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     7    1  |1 1>+      -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00013603 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

  9  1     8    1  |1 1>+       0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00009746
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     9    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00018214 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    10    1  |1 1>+       0.00000002  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00016477
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00018352 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000

 13  1    12    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00018060  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1    13    1  |1 1>+      -0.00107673  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000264
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000  0.00000433 -0.00000000 -0.00000000 -0.00000000 -0.00000580  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1    15    1  |1 1>+       0.00000000 -0.00000000 -0.00000432 -0.00000000 -0.00000579  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000
                               -0.00000000  0.00000006  0.54772167  0.00000012  0.40824465 -0.00000007 -0.00000001 -0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000012  0.54772113  0.00000001  0.00000004  0.40824465 -0.00000000

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.09729384

 20  1     4    1  |1 0>        0.00000000  0.00002853 -0.00000000 -0.00000000  0.00000000 -0.00000778 -0.00000000 -0.00000000
                               -0.00000000  0.63044793 -0.00000007 -0.00000000 -0.00000001 -0.06505378  0.00000001  0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000228 -0.00000000 -0.00000000 -0.00000001  0.00009734  0.00000000  0.00000000
                                0.00000000  0.05039062 -0.00000001 -0.00000000  0.00000014  0.81390390 -0.00000008 -0.00000001

 22  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00024078

 23  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00014369 -0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00014227 -0.00000000 -0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001883

 26  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000001  0.00000000  0.00017874 -0.00000000 -0.00000000 -0.00000000

 27  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00017760  0.00000000

 28  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00018059  0.00000000  0.00000000

 29  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000432  0.00000000 -0.00000580  0.00000000  0.00000000  0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000432 -0.00000000 -0.00000000 -0.00000580  0.00000000

 31  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00107672  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000666

 32  1     1    1  |1 1>-      -0.00000000 -0.00002478  0.00000000  0.00000000 -0.00000001  0.00004882  0.00000000  0.00000000
                               -0.00000000 -0.54772126  0.00000006  0.00000000  0.00000007  0.40824497 -0.00000004 -0.00000000

 33  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.65342091

 34  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000012 -0.54771967  0.00000001  0.00000004  0.40824476 -0.00000000

 35  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000  0.00000000
                               -0.00000000  0.00000004  0.35886469  0.00000008  0.67233337 -0.00000012 -0.00000001 -0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000006 -0.52078849 -0.00000011  0.46329240 -0.00000008 -0.00000001 -0.00000000

 37  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00014190 -0.00000000

 38  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00014831

 39  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00013750  0.00000000  0.00000000

 40  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00017902 -0.00000000

 41  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000
                                0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00018243 -0.00000000 -0.00000000

 42  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00014141

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00018060 -0.00000000 -0.00000000 -0.00000000

 44  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000433 -0.00000000 -0.00000000  0.00000000  0.00000580 -0.00000000 -0.00000000

 45  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00107673 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000402

 46  1    15    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000433  0.00000000  0.00000000  0.00000579 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     1    1  |1 1>+       0.32108129  0.00000001 -0.00000000  0.00000001  0.00000000 -0.00000001  0.00000000 -0.57734891
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000  0.32943670  0.00000006 -0.00000002  0.65177305  0.00000003 -0.00000000  0.00000001
                                0.00000000 -0.00024107  0.00000001  0.00000000  0.00110092  0.00000000  0.00000000  0.00000000

  4  1     3    1  |1 1>+       0.00000000  0.00000003 -0.13850455  0.00000003 -0.00000003  0.71704654  0.00000001 -0.00000002
                               -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000

  5  1     4    1  |1 1>+      -0.00000000 -0.00000001 -0.00000009 -0.51118213 -0.00000001  0.00000001 -0.34812732 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00000001 -0.00000009 -0.54522748 -0.00000001 -0.00000000  0.50353730 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000

  7  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00028548 -0.00000000  0.00000000  0.00013368 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     7    1  |1 1>+       0.00000000 -0.00024053 -0.00000000  0.00000000  0.00020683  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000018 -0.00000000 -0.00000000  0.00000035  0.00000000  0.00000000  0.00000000

  9  1     8    1  |1 1>+       0.00022181  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000337
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     9    1  |1 1>+       0.00000000 -0.00000000  0.00024648 -0.00000000  0.00000000 -0.00005616 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    10    1  |1 1>+      -0.00007395  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00025553
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    11    1  |1 1>+       0.00000000  0.00025004  0.00000000 -0.00000000 -0.00001135  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000018  0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000

 13  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00010071 -0.00000000  0.00000000 -0.00023489 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000616  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1    14    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000002 -0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.00000000 -0.00000018  0.65965037 -0.00000011  0.00000002  0.31336647 -0.00000000 -0.00000001

 18  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000
                               -0.00000000  0.00000001  0.00000012  0.63855262  0.00000001 -0.00000001  0.35438438  0.00000002

 19  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.81067780 -0.00000001  0.00000000 -0.00000001 -0.00000000  0.00000001 -0.00000000  0.57735194

 20  1     4    1  |1 0>       -0.00000000  0.00056114 -0.00000002 -0.00000000 -0.00017139  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.76681641  0.00000020 -0.00000002  0.10146693  0.00000001 -0.00000000  0.00000001

 21  1     5    1  |1 0>        0.00000000 -0.00003564  0.00000000 -0.00000000 -0.00097421 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.04869880 -0.00000004 -0.00000001  0.57675691  0.00000002  0.00000000  0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00002687 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000285

 23  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00007434  0.00000000  0.00000000 -0.00029958  0.00000000

 24  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00005682 -0.00000000  0.00000000 -0.00030506 -0.00000000  0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00017962 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00025554

 26  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00019275  0.00000000 -0.00000000  0.00017273  0.00000000 -0.00000000

 27  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00020387  0.00000000 -0.00000000 -0.00016262  0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000042 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00004853 -0.00000000 -0.00000000  0.00025091  0.00000000  0.00000000  0.00000000

 29  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 31  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000080 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00040154 -0.00000002 -0.00000000  0.00081401  0.00000000  0.00000000  0.00000000
                                0.00000000  0.54871827  0.00000017 -0.00000000 -0.48191780 -0.00000001 -0.00000000  0.00000001

 33  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.48960002  0.00000001 -0.00000000  0.00000001  0.00000000 -0.00000001  0.00000000 -0.57734979

 34  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000
                               -0.00000000  0.00000000 -0.00000003 -0.18349437 -0.00000000 -0.00000001  0.70687274 -0.00000000

 35  1     4    1  |1 1>-       0.00000000  0.00000002  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000017 -0.60676707  0.00000010 -0.00000002 -0.22587067  0.00000000  0.00000001

 36  1     5    1  |1 1>-       0.00000000 -0.00000001 -0.00000002 -0.00000000  0.00000000  0.00000001  0.00000001  0.00000000
                                0.00000000 -0.00000011  0.42132103 -0.00000008  0.00000004 -0.58019648 -0.00000001  0.00000001

 37  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00027084 -0.00000000  0.00000000 -0.00015231 -0.00000000

 38  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00019156  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000541

 39  1     8    1  |1 1>-      -0.00000000 -0.00000011  0.00000000  0.00000000  0.00000047  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00014423 -0.00000000  0.00000000 -0.00028076 -0.00000000  0.00000000 -0.00000000

 40  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00025564  0.00000000 -0.00000000 -0.00003710  0.00000000

 41  1    10    1  |1 1>-       0.00000000 -0.00000017  0.00000000  0.00000000  0.00000018  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00022893 -0.00000000  0.00000000 -0.00010602 -0.00000000  0.00000000 -0.00000000

 42  1    11    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00011237 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00025550

 43  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00011534 -0.00000000 -0.00000000  0.00022806  0.00000000 -0.00000000

 44  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000536 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 46  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000001 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00014802 -0.00000000  0.00026346 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00015110  0.00000000 -0.00025846  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000000  0.00000000

  4  1     3    1  |1 1>+      -0.00015110 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00023437 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     4    1  |1 1>+      -0.00000000  0.00027292 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00026678
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00012977  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000022
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     6    1  |1 1>+      -0.37247940 -0.00000009 -0.00000006 -0.00000000  0.00000000 -0.00000000  0.60191099  0.00000004
                               -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000418  0.00000003

  8  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.36753922  0.00000001  0.55529695 -0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00003261  0.00000000  0.00004910 -0.00000000 -0.00000000

  9  1     8    1  |1 1>+      -0.00000010  0.00000011  0.56754498 -0.00000001  0.32623614  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 10  1     9    1  |1 1>+       0.49215381  0.00000012  0.00000008  0.00000001 -0.00000000 -0.00000000  0.19309262  0.00000001
                                0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000134  0.00000001

 11  1    10    1  |1 1>+       0.00000004 -0.00000005 -0.24649783 -0.00000001  0.42114213  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000001 -0.00000001  0.00000000  0.49584352  0.00000001 -0.12428944 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00004399  0.00000000 -0.00001099  0.00000000  0.00000000

 13  1    12    1  |1 1>+      -0.00000012  0.48796224 -0.00000009  0.00000001 -0.00000000 -0.00000001 -0.00000004  0.54404632
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000

 14  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000007  0.00000000  0.00000003 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1    14    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00015111 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00027416 -0.00000000

 18  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00015111 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00030707

 19  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00030216  0.00000000  0.00000355  0.00000000 -0.00000000 -0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00002408  0.00000000  0.00001529  0.00000000  0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000002 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00030123 -0.00000000 -0.00025513  0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00224362 -0.00000001  0.65463112 -0.00000000  0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002  0.00000000
                                0.00000010 -0.38821591  0.00000007 -0.00000001  0.00000000 -0.00000001 -0.00000003  0.38286237

 24  1     8    1  |1 0>       -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000355  0.00000002
                                0.38437083  0.00000010  0.00000007  0.00000000 -0.00000000 -0.00000000 -0.51146154 -0.00000003

 25  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000008 -0.00000009 -0.48798843  0.00000000 -0.00157394 -0.00000000  0.00000000  0.00000000

 26  1    10    1  |1 0>       -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000066 -0.00000000
                                0.48290345  0.00000012  0.00000008  0.00000001 -0.00000000  0.00000000  0.09414359  0.00000001

 27  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000012  0.47981764 -0.00000009  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.04300328

 28  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00004329  0.00000000 -0.00005105  0.00000000  0.00000000
                                0.00000001  0.00000001 -0.00000000 -0.48796257 -0.00000001  0.57729322 -0.00000000  0.00000001

 29  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000012 -0.00000000

 30  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000016

 31  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000014  0.00000000 -0.00000000  0.00000000

 32  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000002  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00015110 -0.00000000  0.00025259 -0.00000000  0.00000000

 33  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00015416  0.00000000 -0.00025991 -0.00000000  0.00000000  0.00000000

 34  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00015110 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00017457

 35  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00024884 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00022894  0.00000000

 36  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00017147 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00011589  0.00000000

 37  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000
                                0.00000010 -0.38336839  0.00000007 -0.00000001  0.00000000 -0.00000001 -0.00000004  0.66805788

 38  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000010  0.00000010  0.55766088  0.00000000 -0.34278169  0.00000000 -0.00000000 -0.00000000

 39  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00003296  0.00000000  0.00005017 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.37148826 -0.00000001 -0.56733677  0.00000000 -0.00000001

 40  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000
                                0.00000012 -0.48371979  0.00000009 -0.00000001  0.00000000  0.00000001  0.00000001 -0.33057404

 41  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00004373 -0.00000000  0.00001283  0.00000000 -0.00000000
                               -0.00000001 -0.00000001  0.00000000  0.49289246  0.00000001 -0.14511636  0.00000000 -0.00000000

 42  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000004  0.00000005  0.26078338 -0.00000001  0.41251120 -0.00000000  0.00000000  0.00000000

 43  1    12    1  |1 1>-      -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000399 -0.00000002
                                0.48796200  0.00000012  0.00000008  0.00000001 -0.00000000  0.00000000  0.57442343  0.00000004

 44  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000011 -0.00000000 -0.00000003 -0.00000000  0.00000000 -0.00000000

 46  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000006  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00025555 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00019414 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     3    1  |1 1>+      -0.00022265 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     4    1  |1 1>+      -0.00000000  0.00006150  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     5    1  |1 1>+      -0.00000000  0.00032852  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     6    1  |1 1>+      -0.38064380 -0.00000000  0.00000001  0.00000000 -0.05493461 -0.00000001 -0.00000000  0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000  0.00000009  0.00000000 -0.00000000 -0.00000000

  8  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.45304167  0.00000000  0.00000000  0.00000000 -0.21632753
                                0.00000000  0.00000000 -0.00000000  0.00005957  0.00000000 -0.00000000  0.00000000 -0.00010427

  9  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00759896  0.00000000 -0.00000000 -0.00000001  0.44448059  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1     9    1  |1 1>+      -0.53746020 -0.00000001  0.00000002  0.00000000  0.63372421  0.00000010  0.00000001 -0.00000000
                                0.00000000  0.00000001  0.00000000  0.00000000 -0.00000104 -0.00000001 -0.00000000  0.00000000

 11  1    10    1  |1 1>+      -0.00000002  0.00000001 -0.57729841  0.00000001 -0.00000001 -0.00000000  0.32087099  0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.55161577  0.00000000  0.00000000 -0.00000000  0.49068549
                               -0.00000000 -0.00000000 -0.00000000 -0.00007253 -0.00000000  0.00000000 -0.00000000  0.00023650

 13  1    12    1  |1 1>+      -0.00000001  0.19325531  0.00000000 -0.00000000 -0.00000009  0.59120081  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000053 -0.00000000  0.00000000

 14  1    13    1  |1 1>+       0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000012 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000007  0.00000000 -0.00000000 -0.00000000 -0.00000009
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1    15    1  |1 1>+      -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00017125  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00010100 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00025556  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 20  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00034206 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00002354 -0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00644224 -0.00000000  0.00000000 -0.00000000 -0.00990756 -0.00000001

 23  1     7    1  |1 0>        0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000038 -0.00000000  0.00000000
                               -0.00000002  0.58280572  0.00000001  0.00000000  0.00000006 -0.42535177 -0.00000000 -0.00000000

 24  1     8    1  |1 0>       -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000071 -0.00000001 -0.00000000  0.00000000
                               -0.47942860 -0.00000002  0.00000002 -0.00000000 -0.43639833 -0.00000007 -0.00000000  0.00000000

 25  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000002 -0.00000001  0.57731764 -0.00000001 -0.00000001 -0.00000001  0.65448445  0.00000000

 26  1    10    1  |1 0>        0.00000001  0.00000001  0.00000000  0.00000000  0.00000041  0.00000001  0.00000000  0.00000000
                                0.57708144  0.00000002 -0.00000002 -0.00000000  0.25029697  0.00000004  0.00000000 -0.00000000

 27  1    11    1  |1 0>        0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000024 -0.00000000  0.00000000
                               -0.00000002  0.58756698  0.00000001  0.00000000  0.00000004 -0.26652426 -0.00000000 -0.00000000

 28  1    12    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000112  0.00000000 -0.00000000  0.00000000 -0.00031551
                               -0.00000000 -0.00000000  0.00000000 -0.00855522  0.00000000 -0.00000000 -0.00000000  0.65460803

 29  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000011  0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000000  0.00000000

 30  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000010 -0.00000000 -0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000

 31  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

 32  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00020172  0.00000000  0.00000000  0.00000000 -0.00000000

 33  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00025555 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 34  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00027208  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 35  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00017242 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 36  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00029548  0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000000

 37  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000000 -0.00000000
                                0.00000001 -0.21559679 -0.00000001 -0.00000000 -0.00000001  0.05628963  0.00000000  0.00000000

 38  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.01221070  0.00000000 -0.00000001 -0.00000000  0.41141190  0.00000000

 39  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00005680 -0.00000000 -0.00000000  0.00000000 -0.00010753
                                0.00000000  0.00000000 -0.00000000 -0.43199984  0.00000000  0.00000000 -0.00000000  0.22309057

 40  1     9    1  |1 1>-       0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000056  0.00000000 -0.00000000
                               -0.00000002  0.48090825  0.00000001  0.00000000 -0.00000009  0.62877164  0.00000001  0.00000000

 41  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00007247  0.00000000 -0.00000000  0.00000000 -0.00023322
                                0.00000000  0.00000000 -0.00000001 -0.55115880 -0.00000000 -0.00000000 -0.00000000  0.48388928

 42  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000002 -0.00000001  0.57721949 -0.00000001 -0.00000000  0.00000001 -0.31901568  0.00000000

 43  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000096 -0.00000001 -0.00000000 -0.00000000
                                0.05806776  0.00000001 -0.00000000  0.00000000 -0.58505020 -0.00000009 -0.00000000  0.00000000

 44  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000006 -0.00000000  0.00000000  0.00000000  0.00000008

 45  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000002 -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000007 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>        0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00186494 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000335 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     3    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000165
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000349
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     6    1  |1 1>+       0.00000006  0.59249862 -0.00000021  0.00000001  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000811  0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     7    1  |1 1>+       0.00000001 -0.00000001 -0.00000003  0.55182942 -0.00000001  0.00000000  0.00000001 -0.00000000
                               -0.00000000  0.00000001 -0.00000001  0.00009376  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     8    1  |1 1>+      -0.60843990  0.00000006  0.00000003  0.00000001  0.06035529  0.00000002 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1     9    1  |1 1>+      -0.00000001 -0.17329148  0.00000006 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000237 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    10    1  |1 1>+       0.18390736 -0.00000001 -0.00000001 -0.00000001 -0.54020780  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    11    1  |1 1>+       0.00000000 -0.00000001 -0.00000002  0.44004427  0.00000000  0.00000000 -0.00000007  0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.00007477  0.00000000  0.00000000  0.00000000  0.00000000

 13  1    12    1  |1 1>+      -0.00000001 -0.00000010 -0.28114116 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000003
                                0.00000000 -0.00000000  0.00000083  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000005 -0.00000000 -0.00000000 -0.00000000  0.00000014 -0.57735163 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000006 -0.00000000 -0.00000000  0.70710689 -0.00000001
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00039305 -0.00000000

 16  1    15    1  |1 1>+      -0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000004
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000336

 19  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000386  0.00000000

 21  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000031  0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.40884099 -0.00000004 -0.00000002  0.00000000  0.63573767  0.00000015  0.00000000  0.00000000

 23  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000125 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002 -0.00000015 -0.42675292 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000002

 24  1     8    1  |1 0>        0.00000000  0.00000565 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000004  0.41275992 -0.00000015  0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01469901  0.00000000 -0.00000000 -0.00000000 -0.00176051 -0.00000003 -0.00000000  0.00000000

 26  1    10    1  |1 0>        0.00000000  0.00000824 -0.00000001 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000006  0.60188835 -0.00000021  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    11    1  |1 0>        0.00000000 -0.00000001  0.00000174  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000003  0.00000021  0.59300549  0.00000003  0.00000000 -0.00000000  0.00000000  0.00000010

 28  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000107 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00632428  0.00000001 -0.00000000  0.00000000  0.00000000

 29  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000005  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004

 30  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000004  0.00000000  0.00000000 -0.00000000  0.00000001  0.70711529

 31  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000015 -0.57734398 -0.00000000 -0.00000000

 32  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000335 -0.00000000

 33  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 34  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000335

 35  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 36  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 37  1     6    1  |1 1>-       0.00000000 -0.00000001  0.00000176  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000003  0.00000021  0.59755898  0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000009

 38  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.63221912 -0.00000006 -0.00000003 -0.00000001 -0.04904213 -0.00000000 -0.00000000 -0.00000000

 39  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000001 -0.00009364 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000001 -0.00000003  0.55111891 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 40  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000051  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000006  0.17352046  0.00000001  0.00000000  0.00000000  0.00000000  0.00000012

 41  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000001  0.00007562  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000001  0.00000002 -0.44505420  0.00000001  0.00000000  0.00000009 -0.00000000

 42  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.17003220 -0.00000001 -0.00000000 -0.00000001 -0.54585909  0.00000002 -0.00000000  0.00000000

 43  1    12    1  |1 1>-      -0.00000000 -0.00000402  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000003 -0.29372624  0.00000011 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 44  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00039305  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000  0.70710645 -0.00000001

 45  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000016  0.57735219  0.00000000  0.00000000

 46  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000010 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.70709828


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     1    1  |1 1>+      -0.00000000 -0.00000326 -0.00000000  0.00000000 -0.00000000 -0.00000585
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000335 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     3    1  |1 1>+       0.00000335 -0.00000000  0.00000000  0.00000335 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     4    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000604  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     5    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000287 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     6    1  |1 1>+       0.00000009  0.00000000  0.00000000  0.00000010 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     7    1  |1 1>+       0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     8    1  |1 1>+      -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000004
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     9    1  |1 1>+       0.00000009 -0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    10    1  |1 1>+      -0.00000000 -0.00000008 -0.00000000  0.00000000  0.00000000 -0.00000016
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000007 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1    13    1  |1 1>+       0.00000000  0.71303964  0.00000065  0.00000001  0.00000000 -0.39779192
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1    14    1  |1 1>+       0.00000000  0.00000065 -0.70710655  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00012458  0.00000000  0.00000000  0.00000000

 16  1    15    1  |1 1>+      -0.70709850 -0.00000000  0.00000000  0.70711506 -0.00000006  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000335 -0.00000000  0.00000000  0.00000335 -0.00000000  0.00000000

 18  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000335  0.00000000

 19  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000670 -0.00000000 -0.00000000 -0.00000000 -0.00000010

 20  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000053 -0.00000000  0.00000000  0.00000000

 21  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000667  0.00000000 -0.00000000 -0.00000000

 22  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000011

 23  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000

 24  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000004  0.00000000 -0.00000000  0.00000003 -0.00000000 -0.00000000

 25  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000020 -0.00000000 -0.00000000  0.00000000 -0.00000002

 26  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000009  0.00000000  0.00000000  0.00000009 -0.00000000  0.00000000

 27  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000009 -0.00000000

 28  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000006 -0.00000000  0.00000000 -0.00000000

 29  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.70711506 -0.00000000  0.00000000  0.70709850 -0.00000006  0.00000001

 30  1    14    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000004  0.00000000  0.00000000 -0.00000006 -0.70709828  0.00000001

 31  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.01201841 -0.00000001 -0.00000001  0.00000001  0.81641186

 32  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000335  0.00000000 -0.00000000 -0.00000000

 33  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000344 -0.00000000 -0.00000000  0.00000000  0.00000576

 34  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000335  0.00000000

 35  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000218 -0.00000000  0.00000000  0.00000551 -0.00000000  0.00000000

 36  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000318 -0.00000000  0.00000000  0.00000380 -0.00000000  0.00000000

 37  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000010 -0.00000000

 38  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000000  0.00000003

 39  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000

 40  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000010 -0.00000000

 41  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000008 -0.00000000  0.00000000 -0.00000000

 42  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000008  0.00000000 -0.00000000 -0.00000000 -0.00000016

 43  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000002  0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000

 44  1    13    1  |1 1>-       0.00000000 -0.00000000  0.00012458  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000065  0.70710699 -0.00000000  0.00000000  0.00000000

 45  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.70102071  0.00000064  0.00000000  0.00000001  0.41860872

 46  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000004 -0.00000000 -0.00000000  0.00000006  0.70711529 -0.00000001



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   56.36%
  3  1     2    1  |1 1>+         0.00%   30.00%    0.00%    0.00%    0.00%   16.67%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%   30.00%    0.00%   16.67%    0.00%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%    7.38%    0.00%    0.00%   54.37%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   32.62%    0.00%    0.00%   12.29%    0.00%
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
 17  1     1    1  |1 0>          0.00%    0.00%   30.00%    0.00%   16.67%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.67%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.95%
 20  1     4    1  |1 0>          0.00%   39.75%    0.00%    0.00%    0.00%    0.42%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.25%    0.00%    0.00%    0.00%   66.24%    0.00%    0.00%
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
 32  1     1    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%   16.67%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.70%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.67%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%   12.88%    0.00%   45.20%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%   27.12%    0.00%   21.46%    0.00%    0.00%    0.00%
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
  2  1     1    1  |1 1>+        10.31%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
  3  1     2    1  |1 1>+         0.00%   10.85%    0.00%    0.00%   42.48%    0.00%    0.00%    0.00%
  4  1     3    1  |1 1>+         0.00%    0.00%    1.92%    0.00%    0.00%   51.42%    0.00%    0.00%
  5  1     4    1  |1 1>+         0.00%    0.00%    0.00%   26.13%    0.00%    0.00%   12.12%    0.00%
  6  1     5    1  |1 1>+         0.00%    0.00%    0.00%   29.73%    0.00%    0.00%   25.35%    0.00%
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
 17  1     1    1  |1 0>          0.00%    0.00%   43.51%    0.00%    0.00%    9.82%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%   40.77%    0.00%    0.00%   12.56%    0.00%
 19  1     3    1  |1 0>         65.72%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 20  1     4    1  |1 0>          0.00%   58.80%    0.00%    0.00%    1.03%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.24%    0.00%    0.00%   33.26%    0.00%    0.00%    0.00%
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
 32  1     1    1  |1 1>-         0.00%   30.11%    0.00%    0.00%   23.22%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-        23.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    3.37%    0.00%    0.00%   49.97%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%   36.82%    0.00%    0.00%    5.10%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%   17.75%    0.00%    0.00%   33.66%    0.00%    0.00%
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
  7  1     6    1  |1 1>+        13.87%    0.00%    0.00%    0.00%    0.00%    0.00%   36.23%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%   13.51%    0.00%   30.84%    0.00%    0.00%
  9  1     8    1  |1 1>+         0.00%    0.00%   32.21%    0.00%   10.64%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+        24.22%    0.00%    0.00%    0.00%    0.00%    0.00%    3.73%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%    6.08%    0.00%   17.74%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%   24.59%    0.00%    1.54%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%   23.81%    0.00%    0.00%    0.00%    0.00%    0.00%   29.60%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   42.85%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%   15.07%    0.00%    0.00%    0.00%    0.00%    0.00%   14.66%
 24  1     8    1  |1 0>         14.77%    0.00%    0.00%    0.00%    0.00%    0.00%   26.16%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%   23.81%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>         23.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.89%    0.00%
 27  1    11    1  |1 0>          0.00%   23.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.18%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%   23.81%    0.00%   33.33%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%   14.70%    0.00%    0.00%    0.00%    0.00%    0.00%   44.63%
 38  1     7    1  |1 1>-         0.00%    0.00%   31.10%    0.00%   11.75%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%   13.80%    0.00%   32.19%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%   23.40%    0.00%    0.00%    0.00%    0.00%    0.00%   10.93%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%   24.29%    0.00%    2.11%    0.00%    0.00%
 42  1    11    1  |1 1>-         0.00%    0.00%    6.80%    0.00%   17.02%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-        23.81%    0.00%    0.00%    0.00%    0.00%    0.00%   33.00%    0.00%
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
  7  1     6    1  |1 1>+        14.49%    0.00%    0.00%    0.00%    0.30%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%   20.52%    0.00%    0.00%    0.00%    4.68%
  9  1     8    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   19.76%    0.00%
 10  1     9    1  |1 1>+        28.89%    0.00%    0.00%    0.00%   40.16%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         0.00%    0.00%   33.33%    0.00%    0.00%    0.00%   10.30%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%   30.43%    0.00%    0.00%    0.00%   24.08%
 13  1    12    1  |1 1>+         0.00%    3.73%    0.00%    0.00%    0.00%   34.95%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 23  1     7    1  |1 0>          0.00%   33.97%    0.00%    0.00%    0.00%   18.09%    0.00%    0.00%
 24  1     8    1  |1 0>         22.99%    0.00%    0.00%    0.00%   19.04%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.00%    0.00%   33.33%    0.00%    0.00%    0.00%   42.83%    0.00%
 26  1    10    1  |1 0>         33.30%    0.00%    0.00%    0.00%    6.26%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%   34.52%    0.00%    0.00%    0.00%    7.10%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   42.85%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    4.65%    0.00%    0.00%    0.00%    0.32%    0.00%    0.00%
 38  1     7    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   16.93%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%   18.66%    0.00%    0.00%    0.00%    4.98%
 40  1     9    1  |1 1>-         0.00%   23.13%    0.00%    0.00%    0.00%   39.54%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%   30.38%    0.00%    0.00%    0.00%   23.41%
 42  1    11    1  |1 1>-         0.00%    0.00%   33.32%    0.00%    0.00%    0.00%   10.18%    0.00%
 43  1    12    1  |1 1>-         0.34%    0.00%    0.00%    0.00%   34.23%    0.00%    0.00%    0.00%
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
  7  1     6    1  |1 1>+         0.00%   35.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     7    1  |1 1>+         0.00%    0.00%    0.00%   30.45%    0.00%    0.00%    0.00%    0.00%
  9  1     8    1  |1 1>+        37.02%    0.00%    0.00%    0.00%    0.36%    0.00%    0.00%    0.00%
 10  1     9    1  |1 1>+         0.00%    3.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    10    1  |1 1>+         3.38%    0.00%    0.00%    0.00%   29.18%    0.00%    0.00%    0.00%
 12  1    11    1  |1 1>+         0.00%    0.00%    0.00%   19.36%    0.00%    0.00%    0.00%    0.00%
 13  1    12    1  |1 1>+         0.00%    0.00%    7.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 15  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 16  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     6    1  |1 0>         16.72%    0.00%    0.00%    0.00%   40.42%    0.00%    0.00%    0.00%
 23  1     7    1  |1 0>          0.00%    0.00%   18.21%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     8    1  |1 0>          0.00%   17.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     9    1  |1 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    10    1  |1 0>          0.00%   36.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    11    1  |1 0>          0.00%    0.00%   35.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%
 31  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 32  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     6    1  |1 1>-         0.00%    0.00%   35.71%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1     7    1  |1 1>-        39.97%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%
 39  1     8    1  |1 1>-         0.00%    0.00%    0.00%   30.37%    0.00%    0.00%    0.00%    0.00%
 40  1     9    1  |1 1>-         0.00%    0.00%    3.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    10    1  |1 1>-         0.00%    0.00%    0.00%   19.81%    0.00%    0.00%    0.00%    0.00%
 42  1    11    1  |1 1>-         2.89%    0.00%    0.00%    0.00%   29.80%    0.00%    0.00%    0.00%
 43  1    12    1  |1 1>-         0.00%    8.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 45  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   33.33%    0.00%    0.00%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   50.00%

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
 14  1    13    1  |1 1>+         0.00%   50.84%    0.00%    0.00%    0.00%   15.82%
 15  1    14    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 16  1    15    1  |1 1>+        50.00%    0.00%    0.00%   50.00%    0.00%    0.00%
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
 29  1    13    1  |1 0>         50.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 30  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%   50.00%    0.00%
 31  1    15    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%   66.65%
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
 44  1    13    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%
 45  1    14    1  |1 1>-         0.00%   49.14%    0.00%    0.00%    0.00%   17.52%
 46  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   50.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1065.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      848.02       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      7802.41   6713.36    214.90    840.58     15.32      6.74      0.11     11.17
 REAL TIME  *      8006.21 SEC
 DISK USED  *       975.45 MB (local),       17.27 GB (total)
 SF USED    *         8.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-X2C energy=  -8132.531245736779

              CI              CI           MULTI         RHF-SCF
  -8132.47693374  -8132.59469572  -8131.90296055  -8131.99704799
 **********************************************************************************************************************************
 Molpro calculation terminated
