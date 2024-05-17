
 Working directory              : /wrk/irikura/molpro.qyp1ntwrtZ/
 Global scratch directory       : /wrk/irikura/molpro.qyp1ntwrtZ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.qyp1ntwrtZ/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   24
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ba SO-CI
 memory,2500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ba};
 
 basis=aug-cc-pwCVQZ-X2C
 
 set,dkho=101
 
 {rhf;wf,sym=1,spin=0}
 
 NSING=12
 NTRIP=16
 
                                                                                 ! active space (2/10)
 {multi
     closed,15,12
     occ,22,18
     wf,sym=1,spin=0;state,NSING;
     wf,sym=1,spin=2;state,NTRIP;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,9,9
 {ci;wf,sym=1,spin=0;state,NSING; save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5103.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5101.2,5103.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (810), CPU time= 0.02 sec, 661 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ba SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 29-Apr-24          TIME: 14:45:20  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      2500 MW
 Total memory per node:  60000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2500.0 MW


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

     103.023 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 0.524 MB, node maximum: 9.699 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2119464.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2119464      RECORD LENGTH: 524288

 Memory used in sort:       2.68 MW

 SORT1 READ    97437068. AND WROTE      393859. INTEGRALS IN      2 RECORDS. CPU TIME:     0.64 SEC, REAL TIME:     0.71 SEC
 SORT2 READ     9833613. AND WROTE    50984466. INTEGRALS IN    888 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC

 Node minimum:     2117080.  Node maximum:     2134449. integrals

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
 CPU TIMES  *        14.65     14.23
 REAL TIME  *        17.11 SEC
 DISK USED  *        30.60 MB (local),      991.21 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  16  12

 NELEC=   56   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -8131.99704825   -8131.99704825     0.00D+00     0.12D+00     0     0       0.04      0.05    start
   2    -8131.99704825      -0.00000000     0.38D-06     0.21D-04     1     0       0.01      0.06    diag
   3    -8131.99704825       0.00000000     0.45D-07     0.62D-05     2     0       0.01      0.07    diag
   4    -8131.99704825      -0.00000000     0.15D-07     0.21D-05     3     0       0.02      0.09    diag
   5    -8131.99704825       0.00000000     0.43D-08     0.84D-06     0     0       0.01      0.10    diag

 Final occupancy:  16  12

 !RHF STATE 1.1 Energy              -8131.997048253990
  RHF One-electron energy            -11100.0298050315    
  RHF Two-electron energy            2968.032756777469
  RHF Kinetic energy                 9672.875295202179
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.840701115240

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.74842     1  1  s    1.00000
    2.1     2.00000  -222.46061     1  2  s    1.00000
    3.1     2.00000   -48.63406     1  3  s    1.00018
    4.1     2.00000   -29.94644     1  1  d0   0.72825    1  1  d2+  0.68531
    5.1     2.00000   -29.94644     1  1  d1-  0.99999
    6.1     2.00000   -29.94644     1  1  d2-  0.99999
    7.1     2.00000   -29.94644     1  1  d0  -0.68531    1  1  d2+  0.72824
    8.1     2.00000   -29.94644     1  1  d1+  0.99999
    9.1     2.00000   -10.25509     1  4  s    1.00070
   10.1     2.00000    -3.85433     1  2  d0   0.70236    1  2  d2+  0.71166
   11.1     2.00000    -3.85433     1  2  d1-  0.99988
   12.1     2.00000    -3.85433     1  2  d2-  0.99988
   13.1     2.00000    -3.85433     1  2  d1+  0.99988
   14.1     2.00000    -3.85433     1  2  d0   0.71166    1  2  d2+ -0.70236
   15.1     2.00000    -1.60335     1  5  s    0.99936
   16.1     2.00000    -0.16308     1  6  s    0.99631
    1.2     2.00000  -199.39475     1  1  py   0.99999
    2.2     2.00000  -199.39475     1  1  pz   1.00000
    3.2     2.00000  -199.39475     1  1  px   0.99999
    4.2     2.00000   -41.04463     1  2  px   1.00001
    5.2     2.00000   -41.04463     1  2  pz   1.00001
    6.2     2.00000   -41.04463     1  2  py   1.00001
    7.2     2.00000    -7.69921     1  3  px   1.00015
    8.2     2.00000    -7.69921     1  3  pz   1.00015
    9.2     2.00000    -7.69921     1  3  py   1.00015
   10.2     2.00000    -0.89930     1  4  px   0.99978
   11.2     2.00000    -0.89930     1  4  pz   0.99978
   12.2     2.00000    -0.89930     1  4  py   0.99978


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

              2       4        2.87       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        14.77      0.12     14.23
 REAL TIME  *        17.27 SEC
 DISK USED  *        33.88 MB (local),        1.04 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (  15  12 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:     128 (  68  60 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              49   (85 determinants, 169 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              36   (36 determinants, 78 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.486D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.450D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.569D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.487D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.707D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.497D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.311D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.272D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.370D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.497D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.298D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.272D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.790D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.851D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.295D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 5 4 1 5   6 3 4 2 1 1 1 5 3 4   6 2 1 6 2 4 3 5 6 4   2 3 5 1 7 9 8151013
                                       121411 4 6 2 5 3 112   9 815101413 711 4 6   2 3 5 11013141512 8   9 711 4 6 3 5 2 1 6
                                        4 5 3 2 6 4 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.640D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.429D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.594D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.275D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.417D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.180D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.106D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.339D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.443D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.318D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.382D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.532D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.532D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 16 SYMMETRY CONTAMINATION OF 0.940D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 17 SYMMETRY CONTAMINATION OF 0.454D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.522D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 1   3 2 3 1 2 3 1 2 1 3   2 7 9 6 8 410 5 1 2   3 410 8 9 7 5 6 1 2
                                        3 6 5 4 9 7 810 1 2   3 4 5 9 6 710 8 5 4   6 9 710 8 1 2 3 5 7   9 4 6 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  2753  ( 177 closed/active, 1740 closed/virtual, 0 active/active, 836 active/virtual )
 Total number of variables:    4349
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   13   24    5  -8131.84007010   -8131.94487980   -0.10480971    0.05887055 0.00013989 0.00000000  0.25E+01      5.13
   2    9   14    0  -8131.92214757   -8131.92847848   -0.00633091    0.04573735 0.00007572 0.00000000  0.61E+00     10.11
   3    9   14    0  -8131.92852992   -8131.92853332   -0.00000341    0.00087806 0.00000012 0.00000000  0.11E-01     14.99
   4    7   10    0  -8131.92853333   -8131.92853333   -0.00000000    0.00000147 0.00000000 0.00000000  0.18E-04     19.03

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.15E-09)
                       Final energy:  -8131.92853333
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -8132.019209698250
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.42549214
 One electron energy                        -11099.00319521
 Two electron energy                          2966.98398551
 Virial ratio                                    1.84074250
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -8131.957014279530
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.61214764
 One electron energy                        -11101.41397470
 Two electron energy                          2969.45696042
 Virial ratio                                    1.84071985
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -8131.957014279526
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.61214764
 One electron energy                        -11101.41397469
 Two electron energy                          2969.45696041
 Virial ratio                                    1.84071985
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -8131.957014279408
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.61214764
 One electron energy                        -11101.41397471
 Two electron energy                          2969.45696043
 Virial ratio                                    1.84071985
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -8131.957014279325
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.61214764
 One electron energy                        -11101.41397473
 Two electron energy                          2969.45696045
 Virial ratio                                    1.84071985
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -8131.957014279245
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.61214764
 One electron energy                        -11101.41397471
 Two electron energy                          2969.45696043
 Virial ratio                                    1.84071985
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -8131.902625623755
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.76569901
 One electron energy                        -11103.01910261
 Two electron energy                          2971.11647698
 Virial ratio                                    1.84070088
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -8131.902625623744
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.76569901
 One electron energy                        -11103.01910262
 Two electron energy                          2971.11647700
 Virial ratio                                    1.84070088
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -8131.902625623485
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.76569901
 One electron energy                        -11103.01910261
 Two electron energy                          2971.11647699
 Virial ratio                                    1.84070088
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -8131.902625623204
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.76569901
 One electron energy                        -11103.01910263
 Two electron energy                          2971.11647701
 Virial ratio                                    1.84070088
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy            -8131.902625623153
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.76569901
 One electron energy                        -11103.01910261
 Two electron energy                          2971.11647698
 Virial ratio                                    1.84070088
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy            -8131.900718873694
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.21198457
 One electron energy                        -11094.80893433
 Two electron energy                          2962.90821546
 Virial ratio                                    1.84074881
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -8131.963488059278
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66724028
 One electron energy                        -11101.98994067
 Two electron energy                          2970.02645261
 Virial ratio                                    1.84071573
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -8131.963488059235
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66724028
 One electron energy                        -11101.98994065
 Two electron energy                          2970.02645259
 Virial ratio                                    1.84071573
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -8131.963488059148
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66724028
 One electron energy                        -11101.98994065
 Two electron energy                          2970.02645259
 Virial ratio                                    1.84071573
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -8131.963488059093
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66724027
 One electron energy                        -11101.98994064
 Two electron energy                          2970.02645258
 Virial ratio                                    1.84071573
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -8131.963488059081
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66724028
 One electron energy                        -11101.98994065
 Two electron energy                          2970.02645259
 Virial ratio                                    1.84071573
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -8131.906992838610
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98490188
 One electron energy                        -11105.44874157
 Two electron energy                          2973.54174873
 Virial ratio                                    1.84068228
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -8131.906992838608
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98490188
 One electron energy                        -11105.44874156
 Two electron energy                          2973.54174873
 Virial ratio                                    1.84068228
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -8131.906992838574
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98490188
 One electron energy                        -11105.44874156
 Two electron energy                          2973.54174872
 Virial ratio                                    1.84068228
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -8131.906992838572
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98490188
 One electron energy                        -11105.44874158
 Two electron energy                          2973.54174874
 Virial ratio                                    1.84068228
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -8131.906992838554
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98490188
 One electron energy                        -11105.44874155
 Two electron energy                          2973.54174872
 Virial ratio                                    1.84068228
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -8131.906992838540
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98490188
 One electron energy                        -11105.44874156
 Two electron energy                          2973.54174872
 Virial ratio                                    1.84068228
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -8131.906992838540
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.98490188
 One electron energy                        -11105.44874156
 Two electron energy                          2973.54174873
 Virial ratio                                    1.84068228
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy            -8131.905684418952
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.01356796
 One electron energy                        -11092.63026235
 Two electron energy                          2960.72457793
 Virial ratio                                    1.84076657
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy            -8131.902910154490
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.68582468
 One electron energy                        -11102.14584168
 Two electron energy                          2970.24293152
 Virial ratio                                    1.84070785
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy            -8131.902910154150
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.68582468
 One electron energy                        -11102.14584176
 Two electron energy                          2970.24293161
 Virial ratio                                    1.84070785
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy            -8131.902910153881
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.68582469
 One electron energy                        -11102.14584185
 Two electron energy                          2970.24293169
 Virial ratio                                    1.84070785
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.407068380634
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999998247487
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000084728
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999999901842
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.592933385309
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.236544965046
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999828636
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000000000389
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     3.999999997174
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     3.763455208755
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.999999940134
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.846443861064
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000109197
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999618185
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.153556471420
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     8.709063250626
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     8.858404440101
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.999987598161
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     3.349074884519
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     1.290936256231
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     0.651105536554
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     1.141428033808
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999999999
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.999999998299
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     0.000000001701
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.843807819716
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999472533
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000021831
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.999999998634
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.156192687286
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     3.698838002356
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     3.999999929434
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000004508
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.999999994115
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     0.301162069587
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000010143
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.411208011589
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999992551
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999691516
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.588792294201
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.811341130140
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.113217511135
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.999954036060
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.466304352132
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.188660635339
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     8.533878959300
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     8.886643375894
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.000000000000
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.000000000573
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999999428
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     0.999999999999
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.749123799650
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000002279980
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999893441
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000099525
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     2.250873927405
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     2.064617032597
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000241931
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     3.999999995103
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     1.000000008711
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.935382721658
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000049723
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.742348127346
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999898252
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000690300
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     2.257651234379
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     2.479595619235
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     2.028378048764
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     4.000058365779
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     7.184620763349
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     7.520403108430
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     2.815015504146
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     1.971928590297
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.999999999428
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.000000002273
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>     0.999999998299
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     6.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     6.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     6.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     6.000000000000
 !MCSCF expec    <11.1 Singlet|L**2|11.1 Singlet>     6.000000000000
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>    -0.000000000000
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
 !MCSCF expec    <13.1 Triplet|L**2|13.1 Triplet>    -0.000000000000
 !MCSCF expec    <14.1 Triplet|L**2|14.1 Triplet>     2.000000000000
 !MCSCF expec    <15.1 Triplet|L**2|15.1 Triplet>     2.000000000000
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>     2.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.70721     1  1  s    1.00000
    2.1     2.00000  -222.41665     1  2  s    0.99999
    3.1     2.00000   -48.58992     1  3  s    1.00033
    4.1     2.00000   -29.90324     1  1  d1-  0.99999
    5.1     2.00000   -29.90324     1  1  d2+  0.99999
    6.1     2.00000   -29.90324     1  1  d2-  0.99999
    7.1     2.00000   -29.90324     1  1  d0   0.99999
    8.1     2.00000   -29.90324     1  1  d1+  0.99999
    9.1     2.00000   -10.21061     1  4  s    0.99642
   10.1     2.00000    -3.81157     1  2  d1-  1.00052
   11.1     2.00000    -3.81157     1  2  d2+  1.00052
   12.1     2.00000    -3.81157     1  2  d0   1.00052
   13.1     2.00000    -3.81157     1  2  d2-  1.00052
   14.1     2.00000    -3.81157     1  2  d1+  1.00052
   15.1     2.00000    -1.55618     1  5  s    0.99341
   16.1     0.45546    -0.03420     1  6  s    0.70383
   17.1     0.25617     0.05463     1  3  d1+  0.91314
   18.1     0.25617     0.05463     1  3  d2-  0.91314
   19.1     0.25617     0.05463     1  3  d2+  0.91314
   20.1     0.25617     0.05463     1  3  d1-  0.91314
   21.1     0.25617     0.05463     1  3  d0   0.91314
   22.1     0.06660     0.04146     1  6  s   -1.12401    1  7  s   -0.27567    1  9  s    0.81273    1 13  s    0.79265
    1.2     2.00000  -199.35136     1  1  py   1.00000
    2.2     2.00000  -199.35136     1  1  px   0.99999
    3.2     2.00000  -199.35136     1  1  pz   0.99999
    4.2     2.00000   -41.00107     1  2  px   1.00002
    5.2     2.00000   -41.00107     1  2  pz   1.00002
    6.2     2.00000   -41.00107     1  2  py   1.00002
    7.2     2.00000    -7.65595     1  3  px   0.99415
    8.2     2.00000    -7.65595     1  3  pz   0.99415
    9.2     2.00000    -7.65595     1  3  py   0.99415
   10.2     2.00000    -0.86230     1  4  px   0.99712
   11.2     2.00000    -0.86230     1  4  pz   0.99712
   12.2     2.00000    -0.86230     1  4  py   0.99712
   13.2     0.06465     0.04979     1  5  px  -1.42753
   14.2     0.06465     0.04979     1  5  pz  -1.42753
   15.2     0.06465     0.04979     1  5  py  -1.42753
   16.2     0.00104     0.11196     1  4  px   0.76704    1  5  px   3.82590    1  6  px   1.40464    1  7  px   2.13870
                                    1  8  px   0.82318
   17.2     0.00104     0.11196     1  4  pz   0.76704    1  5  pz   3.82591    1  6  pz   1.40464    1  7  pz   2.13870
                                    1  8  pz   0.82318
   18.2     0.00104     0.11196     1  4  py   0.76704    1  5  py   3.82590    1  6  py   1.40464    1  7  py   2.13870
                                    1  8  py   0.82318
 *** IN SYMMETRY  1 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.741D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.967D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.136D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.135D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.515D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.307D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.310D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.520D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.520D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.343D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.343D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.568D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.568D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.180D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.393D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.393D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.301D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.301D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.115D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.115D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.130D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.130D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.437D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.437D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.325D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.325D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  62 SYMMETRY CONTAMINATION OF 0.645D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  63 SYMMETRY CONTAMINATION OF 0.645D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.162D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.162D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.240D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.240D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.661D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  70 SYMMETRY CONTAMINATION OF 0.661D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 5 3 2 4 1 6   5 2 3 4 1 1 4 3 5 6   2 1 5 3 6 4 2 1 6 2   4 3 5 1 7 912 81110
                                       131514 6 4 2 5 3 1 9  12 81514 7101311 4 6   2 3 5 113101415 812   9 711 4 6 2 3 5 1 6
                                        4 2 3 5 6 4 5 3 2 1
 *** IN SYMMETRY  2 ORBITAL   2 SYMMETRY CONTAMINATION OF 0.397D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   3 SYMMETRY CONTAMINATION OF 0.397D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.187D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.187D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.211D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  28 SYMMETRY CONTAMINATION OF 0.572D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  29 SYMMETRY CONTAMINATION OF 0.263D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.263D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.191D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.307D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.373D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  35 SYMMETRY CONTAMINATION OF 0.465D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  36 SYMMETRY CONTAMINATION OF 0.469D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.337D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.355D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.155D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.194D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  46 SYMMETRY CONTAMINATION OF 0.165D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.410D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.409D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.423D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.423D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  74 SYMMETRY CONTAMINATION OF 0.104D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.104D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 1 3 2 1   3 2 1 3 2 1 3 2 3 2   1 1 2 3 7 9 6 410 8   5 410 8 5 6 9 7 1 2
                                        3 6 5 9 4 710 8 1 2   3 4 5 9 610 7 8 5 4   6 9 710 8 1 2 3 5 9   7 4 610 8 2 1 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                   1               2               3               4               5               6               7
 2000000 000000      0.95609062      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a000b00 000000     -0.00000000     -0.00000358     -0.00003757     -0.00010668      0.64764598      0.00007016      0.00000038
 b000a00 000000      0.00000000      0.00000358      0.00003757      0.00010668     -0.64764598     -0.00007016     -0.00000038
 b0a0000 000000     -0.00000000      0.00003611     -0.00005908     -0.64764598     -0.00010668     -0.00004858     -0.00000008
 a0b0000 000000      0.00000000     -0.00003611      0.00005908      0.64764598      0.00010668      0.00004858      0.00000008
 ba00000 000000      0.00000000      0.00109433     -0.64764507      0.00005915     -0.00003755     -0.00001186      0.00002144
 ab00000 000000     -0.00000000     -0.00109433      0.64764507     -0.00005915      0.00003755      0.00001186     -0.00002144
 b00000a 000000      0.03910365      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000002
 a00000b 000000     -0.03910365     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000002
 b00a000 000000     -0.00000000      0.42827202      0.00073256      0.00006024      0.00005505     -0.48582700      0.03219405
 a00b000 000000      0.00000000     -0.42827202     -0.00073256     -0.00006024     -0.00005505      0.48582700     -0.03219405
 b0000a0 000000     -0.00000000     -0.48582632     -0.00081306      0.00000510      0.00004366     -0.42827264     -0.03117016
 a0000b0 000000      0.00000000      0.48582632      0.00081306     -0.00000510     -0.00004366      0.42827264      0.03117016
 00a00b0 000000      0.00000000     -0.00000713      0.00001166      0.12784741      0.00002106      0.00000959     -0.00000079
 00b00a0 000000     -0.00000000      0.00000713     -0.00001166     -0.12784741     -0.00002106     -0.00000959      0.00000079
 0000200 000000     -0.04306421     -0.12116761     -0.00020549     -0.00000980     -0.00000510      0.04078394      0.45347324
 0200000 000000     -0.04306421      0.02526392      0.00004498      0.00001080      0.00001372     -0.12532635     -0.12827994
 0a00b00 000000      0.00000000      0.00000617     -0.00001010     -0.11071911     -0.00001824     -0.00000830      0.00000068
 0b00a00 000000     -0.00000000     -0.00000617      0.00001010      0.11071911      0.00001824      0.00000830     -0.00000068
 000ba00 000000      0.00000000      0.00000061      0.00000642      0.00001824     -0.11071911     -0.00001199      0.00000341
 000ab00 000000     -0.00000000     -0.00000061     -0.00000642     -0.00001824      0.11071911      0.00001199     -0.00000341
 0ab0000 000000      0.00000000      0.00000061      0.00000642      0.00001824     -0.11071911     -0.00001199      0.00000341
 0ba0000 000000     -0.00000000     -0.00000061     -0.00000642     -0.00001824      0.11071911      0.00001199     -0.00000341
 00a0b00 000000      0.00000000      0.00018708     -0.11071895      0.00001011     -0.00000642     -0.00000203     -0.00019368
 00b0a00 000000     -0.00000000     -0.00018708      0.11071895     -0.00001011      0.00000642      0.00000203      0.00019368
 0b0a000 000000     -0.00000000     -0.00018708      0.11071895     -0.00001011      0.00000642      0.00000203      0.00019368
 0a0b000 000000      0.00000000      0.00018708     -0.11071895      0.00001011     -0.00000642     -0.00000203     -0.00019368
 0000000 200000     -0.15122566      0.24567469      0.00041663      0.00001986      0.00001034     -0.08269192      0.36421573
 0000000 002000     -0.15122566     -0.05122413     -0.00009121     -0.00002190     -0.00002782      0.25410677     -0.10303046
 0000020 000000     -0.04306421     -0.09590369     -0.00016050      0.00000101      0.00000862     -0.08454240      0.32519331
 0002000 000000     -0.04306421      0.09590369      0.00016050     -0.00000101     -0.00000862      0.08454241     -0.32519333
 0020000 000000     -0.04306421      0.09590368      0.00016050     -0.00000101     -0.00000862      0.08454241     -0.32519334
 000b0a0 000000      0.00000000      0.08454228      0.00014461      0.00001189      0.00001087     -0.09590382     -0.33587535
 000a0b0 000000     -0.00000000     -0.08454228     -0.00014461     -0.00001189     -0.00001087      0.09590382      0.33587535
 0000000 a0b000      0.00000000      0.00001252     -0.00002048     -0.22448971     -0.00003698     -0.00001684     -0.00000055
 0000000 b0a000     -0.00000000     -0.00001252      0.00002048      0.22448971      0.00003698      0.00001684      0.00000055
 0000000 0ab000     -0.00000000      0.00000124      0.00001302      0.00003698     -0.22448971     -0.00002432     -0.00000274
 0000000 0ba000      0.00000000     -0.00000124     -0.00001302     -0.00003698      0.22448971      0.00002432      0.00000274
 0000000 ab0000      0.00000000      0.00037932     -0.22448940      0.00002050     -0.00001302     -0.00000411      0.00015556
 0000000 ba0000     -0.00000000     -0.00037932      0.22448940     -0.00002050      0.00001302      0.00000411     -0.00015556
 0000000 020000     -0.15122566     -0.19445055     -0.00032543      0.00000204      0.00001748     -0.17141486     -0.26118523
 0000ba0 000000     -0.00000000     -0.00000035     -0.00000371     -0.00001053      0.06392371      0.00000692     -0.00000197
 0000ab0 000000      0.00000000      0.00000035      0.00000371      0.00001053     -0.06392371     -0.00000692      0.00000197
 0b000a0 000000     -0.00000000     -0.00010801      0.06392361     -0.00000584      0.00000371      0.00000117      0.00011182
 0a000b0 000000      0.00000000      0.00010801     -0.06392361      0.00000584     -0.00000371     -0.00000117     -0.00011182
 0000002 000000     -0.01769948      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 00b000a 000000     -0.00000000      0.00000156     -0.00000255     -0.02794213     -0.00000460     -0.00000210     -0.00000017
 00a000b 000000      0.00000000     -0.00000156      0.00000255      0.02794213      0.00000460      0.00000210      0.00000017
 0000b0a 000000      0.00000000      0.00000015      0.00000162      0.00000460     -0.02794213     -0.00000303     -0.00000083
 0000a0b 000000     -0.00000000     -0.00000015     -0.00000162     -0.00000460      0.02794213      0.00000303      0.00000083
 0b0000a 000000     -0.00000000      0.00004721     -0.02794209      0.00000255     -0.00000162     -0.00000051      0.00004717
 0a0000b 000000      0.00000000     -0.00004721      0.02794209     -0.00000255      0.00000162      0.00000051     -0.00004717
 0000000 b00a00     -0.02709342      0.02081888      0.00003531      0.00000168      0.00000088     -0.00700745     -0.00509800
 0000000 a00b00      0.02709342     -0.02081888     -0.00003531     -0.00000168     -0.00000088      0.00700745      0.00509800
 0000000 0a00b0      0.02709342      0.01647807      0.00002758     -0.00000017     -0.00000148      0.01452598     -0.00365586
 0000000 0b00a0     -0.02709342     -0.01647807     -0.00002758      0.00000017      0.00000148     -0.01452598      0.00365586
 0000000 00b00a     -0.02709342     -0.00434082     -0.00000773     -0.00000186     -0.00000236      0.02153343      0.00144213
 0000000 00a00b      0.02709342      0.00434082      0.00000773      0.00000186      0.00000236     -0.02153343     -0.00144213
 00000ba 000000     -0.00000000     -0.02096056     -0.00003508      0.00000022      0.00000188     -0.01847745     -0.06858291
 00000ab 000000      0.00000000      0.02096056      0.00003508     -0.00000022     -0.00000188      0.01847745      0.06858291
 000b00a 000000      0.00000000      0.01847743      0.00003161      0.00000260      0.00000238     -0.02096059      0.07083574
 000a00b 000000     -0.00000000     -0.01847743     -0.00003161     -0.00000260     -0.00000238      0.02096059     -0.07083574
 
 Energy:         -8132.01920970  -8131.95701428  -8131.95701428  -8131.95701428  -8131.95701428  -8131.95701428  -8131.90262562

 State:                   8               9              10              11              12
 2000000 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.01827955
 a000b00 000000     -0.00000087      0.00000032     -0.04481112      0.00000514     -0.00000000
 b000a00 000000      0.00000087     -0.00000032      0.04481112     -0.00000514      0.00000000
 b0a0000 000000     -0.00000176      0.04481112      0.00000032     -0.00000041      0.00000000
 a0b0000 000000      0.00000176     -0.04481112     -0.00000032      0.00000041     -0.00000000
 ba00000 000000     -0.04481111     -0.00000176      0.00000087      0.00000022     -0.00000000
 ab00000 000000      0.04481111      0.00000176     -0.00000087     -0.00000022      0.00000000
 b00000a 000000      0.00000000      0.00000000     -0.00000000     -0.00000002     -0.60887928
 a00000b 000000     -0.00000000     -0.00000000      0.00000000      0.00000002      0.60887928
 b00a000 000000      0.00001525     -0.00000023     -0.00000330     -0.03117017      0.00000000
 a00b000 000000     -0.00001525      0.00000023      0.00000330      0.03117017     -0.00000000
 b0000a0 000000     -0.00001507     -0.00000035     -0.00000395     -0.03219406     -0.00000000
 a0000b0 000000      0.00001507      0.00000035      0.00000395      0.03219406      0.00000000
 00a00b0 000000     -0.00001835      0.46750722      0.00000336     -0.00000427      0.00000000
 00b00a0 000000      0.00001835     -0.46750722     -0.00000336      0.00000427     -0.00000000
 0000200 000000      0.00021637     -0.00000027     -0.00000921     -0.11368801      0.15377973
 0200000 000000     -0.00005914      0.00000389      0.00005045      0.44956342      0.15377969
 0a00b00 000000      0.00001589     -0.40487313     -0.00000291      0.00000370     -0.00000000
 0b00a00 000000     -0.00001589      0.40487313      0.00000291     -0.00000370      0.00000000
 000ba00 000000     -0.00000785      0.00000291     -0.40487313      0.00004640     -0.00000000
 000ab00 000000      0.00000785     -0.00000291      0.40487313     -0.00004640      0.00000000
 0ab0000 000000     -0.00000785      0.00000291     -0.40487313      0.00004640     -0.00000000
 0ba0000 000000      0.00000785     -0.00000291      0.40487313     -0.00004640      0.00000000
 00a0b00 000000      0.40487308      0.00001589     -0.00000786     -0.00000200      0.00000000
 00b0a00 000000     -0.40487308     -0.00001589      0.00000786      0.00000200     -0.00000000
 0b0a000 000000     -0.40487308     -0.00001589      0.00000786      0.00000200     -0.00000000
 0a0b000 000000      0.40487308      0.00001589     -0.00000786     -0.00000200      0.00000000
 0000000 200000      0.00017378     -0.00000022     -0.00000740     -0.09131072     -0.16191420
 0000000 002000     -0.00004750      0.00000312      0.00004052      0.36107543     -0.16191423
 0000020 000000      0.00015723      0.00000362      0.00004123      0.33587540      0.15377971
 0002000 000000     -0.00015723     -0.00000362     -0.00004123     -0.33587538      0.15377971
 0020000 000000     -0.00015723     -0.00000362     -0.00004123     -0.33587538      0.15377971
 000b0a0 000000     -0.00015907      0.00000240      0.00003444      0.32519336     -0.00000002
 000a0b0 000000      0.00015907     -0.00000240     -0.00003444     -0.32519336      0.00000002
 0000000 a0b000     -0.00001276      0.32518160      0.00000234     -0.00000297      0.00000000
 0000000 b0a000      0.00001276     -0.32518160     -0.00000234      0.00000297     -0.00000000
 0000000 0ab000      0.00000631     -0.00000234      0.32518159     -0.00003727      0.00000000
 0000000 0ba000     -0.00000631      0.00000234     -0.32518159      0.00003727     -0.00000000
 0000000 ab0000     -0.32518156     -0.00001276      0.00000631      0.00000161     -0.00000000
 0000000 ba0000      0.32518156      0.00001276     -0.00000631     -0.00000161      0.00000000
 0000000 020000     -0.00012628     -0.00000291     -0.00003312     -0.26976475     -0.16191422
 0000ba0 000000      0.00000453     -0.00000168      0.23375361     -0.00002679      0.00000000
 0000ab0 000000     -0.00000453      0.00000168     -0.23375361      0.00002679     -0.00000000
 0b000a0 000000     -0.23375358     -0.00000917      0.00000454      0.00000116     -0.00000000
 0a000b0 000000      0.23375358      0.00000917     -0.00000454     -0.00000116      0.00000000
 0000002 000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.15778310
 00b000a 000000     -0.00000387      0.09859675      0.00000071     -0.00000090      0.00000000
 00a000b 000000      0.00000387     -0.09859675     -0.00000071      0.00000090     -0.00000000
 0000b0a 000000      0.00000191     -0.00000071      0.09859675     -0.00001130      0.00000000
 0000a0b 000000     -0.00000191      0.00000071     -0.09859675      0.00001130     -0.00000000
 0b0000a 000000     -0.09859674     -0.00000387      0.00000191      0.00000049     -0.00000000
 0a0000b 000000      0.09859674      0.00000387     -0.00000191     -0.00000049      0.00000000
 0000000 b00a00     -0.00000243      0.00000000      0.00000010      0.00127810      0.07615428
 0000000 a00b00      0.00000243     -0.00000000     -0.00000010     -0.00127810     -0.07615428
 0000000 0a00b0     -0.00000177     -0.00000004     -0.00000046     -0.00377595     -0.07615428
 0000000 0b00a0      0.00000177      0.00000004      0.00000046      0.00377595      0.07615428
 0000000 00b00a      0.00000066     -0.00000004     -0.00000057     -0.00505404      0.07615428
 0000000 00a00b     -0.00000066      0.00000004      0.00000057      0.00505404     -0.07615428
 00000ba 000000     -0.00003316     -0.00000076     -0.00000870     -0.07083574     -0.00000000
 00000ab 000000      0.00003316      0.00000076      0.00000870      0.07083574      0.00000000
 000b00a 000000      0.00003355     -0.00000051     -0.00000726     -0.06858292      0.00000001
 000a00b 000000     -0.00003355      0.00000051      0.00000726      0.06858292     -0.00000001
 
 Energy:         -8131.90262562  -8131.90262562  -8131.90262562  -8131.90262562  -8131.90071887
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                   1               2               3               4               5               6               7
 a000a00 000000      0.99999249      0.00019690      0.00012851      0.00005741     -0.00003959     -0.00000000      0.00000000
 a0a0000 000000     -0.00012847     -0.00019956      0.99999248     -0.00009858     -0.00011949     -0.00000000     -0.00000000
 aa00000 000000     -0.00005744     -0.00005388      0.00009848      0.99999227     -0.00069017     -0.00000000     -0.00000000
 000a0a0 000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00005681      0.00005562
 a00000a 000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 000aa00 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00009715      0.00009274
 0a0a000 000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.19038949     -0.00023650
 0aa0000 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00037421     -0.00009739
 00a0a00 000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.79858003      0.00090682
 a0000a0 000000     -0.00017404      0.75126894      0.00007100     -0.00041504     -0.65998471     -0.00000000      0.00000000
 a00a000 000000     -0.00010026      0.65998480      0.00022152      0.00055404      0.75126875     -0.00000000      0.00000000
 00aa000 000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00028844      0.31397684
 00a00a0 000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00097351      0.71210350
 0000aa0 000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00015996     -0.00000268
 0a000a0 000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.57098181     -0.00066010
 0a00a00 000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00057687      0.62795368
 0000000 aa0000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 0000000 a0a000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 0000000 0aa000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 a00a00      0.00000000      0.00021598      0.00000017      0.00000076      0.00108097     -0.00000000      0.00000000
 0000000 0a00a0     -0.00000019      0.00082816      0.00000008     -0.00000046     -0.00072753     -0.00000000      0.00000000
 0000000 00a00a      0.00000019     -0.00104414     -0.00000025     -0.00000030     -0.00035344      0.00000000     -0.00000000
 
 Energy:         -8131.96348806  -8131.96348806  -8131.96348806  -8131.96348806  -8131.96348806  -8131.90699284  -8131.90699284

 State:                   8               9              10              11              12              13              14
 a000a00 000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 a0a0000 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 aa00000 000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 000a0a0 000000      0.99999084      0.00424556     -0.00047305      0.00004982      0.00026930     -0.00000000      0.00000000
 a00000a 000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.98229601      0.00000000
 000aa00 000000     -0.00375419      0.88262961     -0.00048579      0.14472878     -0.00205009      0.00000000     -0.00000019
 0a0a000 000000      0.00040070      0.00044146      0.87392871      0.00012579      0.00013482      0.00000000     -0.36824267
 0aa0000 000000      0.00149504     -0.36080259      0.00014752      0.81829714     -0.01445244      0.00000000     -0.00000019
 00a0a00 000000      0.00023431      0.00035643      0.40282600     -0.00027626      0.00026681     -0.00000000      0.36824265
 a0000a0 000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a00a000 000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 00aa000 000000      0.00006801      0.00013405      0.00007195     -0.00552724     -0.31841463     -0.00000000     -0.00001858
 00a00a0 000000     -0.00022742     -0.00045927     -0.00012910      0.01228098      0.70196621     -0.00000000      0.00000000
 0000aa0 000000     -0.00130432      0.30127696     -0.00019530      0.55600328     -0.00952774     -0.00000000      0.00000032
 0a000a0 000000      0.00009607      0.00004909      0.27199129      0.00023212     -0.00007620     -0.00000000      0.63781500
 0a00a00 000000      0.00013602      0.00026810      0.00014390     -0.01105449     -0.63682929      0.00000000      0.00000929
 0000000 aa0000     -0.00000000     -0.00000000     -0.00000001      0.00000000     -0.00000000      0.00000000     -0.56733856
 0000000 a0a000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000001     -0.00000000     -0.00001431
 0000000 0aa000      0.00000000     -0.00000001      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000029
 0000000 a00a00      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.10815814      0.00000000
 0000000 0a00a0      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.10815814      0.00000000
 0000000 00a00a     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.10815814     -0.00000000
 
 Energy:         -8131.90699284  -8131.90699284  -8131.90699284  -8131.90699284  -8131.90699284  -8131.90568442  -8131.90291015

 State:                  15              16
 a000a00 000000      0.00000000     -0.00000000
 a0a0000 000000     -0.00000000     -0.00000000
 aa00000 000000      0.00000000     -0.00000000
 000a0a0 000000     -0.00000000     -0.00000000
 a00000a 000000      0.00000000      0.00000000
 000aa00 000000      0.00001512     -0.36824265
 0a0a000 000000     -0.00000929      0.00000019
 0aa0000 000000      0.00001512     -0.36824268
 00a0a00 000000      0.00000929     -0.00000019
 a0000a0 000000      0.00000000      0.00000000
 a00a000 000000     -0.00000000      0.00000000
 00aa000 000000      0.73648533      0.00003025
 00a00a0 000000     -0.00000001      0.00000000
 0000aa0 000000     -0.00002620      0.63781500
 0a000a0 000000      0.00001609     -0.00000032
 0a00a00 000000     -0.36824265     -0.00001512
 0000000 aa0000     -0.00001431      0.00000029
 0000000 a0a000      0.56733855      0.00002330
 0000000 0aa000     -0.00002330      0.56733854
 0000000 a00a00      0.00000000     -0.00000000
 0000000 0a00a0      0.00000000     -0.00000000
 0000000 00a00a     -0.00000000      0.00000000
 
 Energy:         -8131.90291015  -8131.90291015
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.55       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        30.96     16.19      0.12     14.23
 REAL TIME  *        39.68 SEC
 DISK USED  *       169.43 MB (local),        4.22 GB (total)
 SF USED    *       335.06 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -8132.019210   -0.0
    -8131.957014    6.0
    -8131.957014    6.0
    -8131.957014    6.0
    -8131.957014    6.0
    -8131.957014    6.0
    -8131.902626    6.0
    -8131.902626    6.0
    -8131.902626    6.0
    -8131.902626    6.0
    -8131.902626    6.0
    -8131.900719   -0.0
    -8131.963488    6.0
    -8131.963488    6.0
    -8131.963488    6.0
    -8131.963488    6.0
    -8131.963488    6.0
    -8131.906993   12.0
    -8131.906993   12.0
    -8131.906993   12.0
    -8131.906993   12.0
    -8131.906993   12.0
    -8131.906993   12.0
    -8131.906993   12.0
    -8131.905684   -0.0
    -8131.902910    2.0
    -8131.902910    2.0
    -8131.902910    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 56
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       49 conf       49 CSFs
 N elec internal:    78364 conf   221221 CSFs
 N-1 el internal:    20722 conf    70798 CSFs
 N-2 el internal:     2323 conf     8416 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:     128 (  68  60 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.67 sec, npass=  1  Memory used:   4.19 MW


 Number of p-space configurations:  49

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8132.01920970
     2     -8131.95701428
     3     -8131.95701428
     4     -8131.95701428
     5     -8131.95701428
     6     -8131.95701428
     7     -8131.90262562
     8     -8131.90262562
     9     -8131.90262562
    10     -8131.90262562
    11     -8131.90262562
    12     -8131.90071887

 Number of blocks in overlap matrix:  1099   Smallest eigenvalue:  0.30D+00
 Number of N-2 electron functions:    1207
 Number of N-1 electron functions:   70798

 Number of internal configurations:               110803
 Number of singly external configurations:       4531088
 Number of doubly external configurations:       4952688
 Total number of contracted configurations:      9594579
 Total number of uncontracted configurations:   39092259

 Diagonal Coupling coefficients finished.               Storage:76303170 words, CPU-Time:    114.54 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 2955570 words, CPU-time:      1.30 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8132.01920970     0.00000000    -0.67764404  0.39D-01  0.76D-01   141.12
    1     2     2     1.00000000     0.00000000 -8131.95701428    -0.00000000    -0.69419864  0.50D-01  0.83D-01   141.12
    1     3     3     1.00000000     0.00000000 -8131.95701428    -0.00000000    -0.69428107  0.50D-01  0.83D-01   141.12
    1     4     4     1.00000000     0.00000000 -8131.95701428     0.00000000    -0.69433604  0.50D-01  0.83D-01   141.12
    1     5     5     1.00000000     0.00000000 -8131.95701428    -0.00000000    -0.69444402  0.50D-01  0.83D-01   141.12
    1     6     6     1.00000000     0.00000000 -8131.95701428    -0.00000000    -0.69422264  0.50D-01  0.83D-01   141.12
    1     7     7     1.00000000     0.00000000 -8131.90262562    -0.00000000    -0.70015830  0.45D-01  0.91D-01   141.12
    1     8     8     1.00000000     0.00000000 -8131.90262562     0.00000000    -0.70092207  0.45D-01  0.92D-01   141.12
    1     9     9     1.00000000     0.00000000 -8131.90262562     0.00000000    -0.70099778  0.45D-01  0.92D-01   141.12
    1    10    10     1.00000000     0.00000000 -8131.90262562     0.00000000    -0.70093758  0.45D-01  0.92D-01   141.12
    1    11    11     1.00000000     0.00000000 -8131.90262562    -0.00000000    -0.70024564  0.45D-01  0.91D-01   141.12
    1    12    12     1.00000000     0.00000000 -8131.90071887    -0.00000000    -0.67369896  0.38D-01  0.77D-01   141.12
    2     1     1     1.07748534    -0.57461609 -8132.59382579    -0.57461609    -0.00969885  0.15D-02  0.83D-03   640.25
    2     2     2     1.08698711    -0.57521325 -8132.53222753    -0.57521325    -0.01172817  0.25D-02  0.11D-02   640.25
    2     3     3     1.08701667    -0.57520009 -8132.53221437    -0.57520009    -0.01174382  0.25D-02  0.11D-02   640.25
    2     4     4     1.08706306    -0.57516676 -8132.53218104    -0.57516676    -0.01178841  0.26D-02  0.12D-02   640.25
    2     5     5     1.08707576    -0.57516373 -8132.53217801    -0.57516373    -0.01178966  0.26D-02  0.12D-02   640.25
    2     6     6     1.08711698    -0.57512894 -8132.53214322    -0.57512894    -0.01183186  0.26D-02  0.12D-02   640.25
    2     7     7     1.08796140    -0.57510529 -8132.47773091    -0.57510529    -0.01206251  0.26D-02  0.15D-02   640.25
    2     8     8     1.08814416    -0.57494134 -8132.47756697    -0.57494134    -0.01226260  0.27D-02  0.16D-02   640.25
    2     9     9     1.08832196    -0.57477420 -8132.47739982    -0.57477420    -0.01247903  0.28D-02  0.16D-02   640.25
    2    10    10     1.08831301    -0.57477110 -8132.47739673    -0.57477110    -0.01248458  0.28D-02  0.16D-02   640.25
    2    11    11     1.08833418    -0.57476444 -8132.47739006    -0.57476444    -0.01248982  0.28D-02  0.16D-02   640.25
    2    12    12     1.07814360    -0.57184108 -8132.47255996    -0.57184108    -0.00954864  0.17D-02  0.93D-03   640.25
    3     1     1     1.07534326    -0.58386852 -8132.60307822    -0.00925242    -0.00018045  0.22D-04  0.21D-04  1137.96
    3     2     2     1.08061251    -0.58617149 -8132.54318577    -0.01095824    -0.00022973  0.35D-04  0.32D-04  1137.96
    3     3     3     1.08061721    -0.58617035 -8132.54318463    -0.01097026    -0.00023103  0.35D-04  0.32D-04  1137.96
    3     4     4     1.08062418    -0.58616874 -8132.54318302    -0.01100197    -0.00023302  0.35D-04  0.32D-04  1137.96
    3     5     5     1.08062290    -0.58616806 -8132.54318233    -0.01100432    -0.00023367  0.35D-04  0.32D-04  1137.96
    3     6     6     1.08062406    -0.58616800 -8132.54318228    -0.01103906    -0.00023372  0.35D-04  0.32D-04  1137.96
    3     7     7     1.08086768    -0.58631977 -8132.48894539    -0.01121448    -0.00025653  0.33D-04  0.47D-04  1137.96
    3     8     8     1.08087838    -0.58631393 -8132.48893955    -0.01137258    -0.00026314  0.34D-04  0.48D-04  1137.96
    3     9     9     1.08089328    -0.58630867 -8132.48893430    -0.01153448    -0.00026952  0.34D-04  0.50D-04  1137.96
    3    10    10     1.08089186    -0.58630867 -8132.48893429    -0.01153756    -0.00026956  0.34D-04  0.50D-04  1137.96
    3    11    11     1.08088986    -0.58630825 -8132.48893388    -0.01154381    -0.00027009  0.34D-04  0.50D-04  1137.96
    3    12    12     1.07531292    -0.58094361 -8132.48166248    -0.00910252    -0.00020263  0.23D-04  0.32D-04  1137.96
    4     1     1     1.07618620    -0.58405343 -8132.60326313    -0.00018491    -0.00000665  0.19D-05  0.64D-06  1618.28
    4     2     2     1.08114218    -0.58640510 -8132.54341938    -0.00023361    -0.00000829  0.26D-05  0.85D-06  1618.28
    4     3     3     1.08114199    -0.58640504 -8132.54341932    -0.00023469    -0.00000836  0.26D-05  0.86D-06  1618.28
    4     4     4     1.08113992    -0.58640493 -8132.54341921    -0.00023620    -0.00000848  0.27D-05  0.88D-06  1618.28
    4     5     5     1.08113961    -0.58640491 -8132.54341919    -0.00023686    -0.00000850  0.27D-05  0.88D-06  1618.28
    4     6     6     1.08113946    -0.58640490 -8132.54341918    -0.00023690    -0.00000850  0.27D-05  0.88D-06  1618.28
    4     7     7     1.08137229    -0.58658400 -8132.48920962    -0.00026423    -0.00001153  0.51D-05  0.13D-05  1618.28
    4     8     8     1.08136842    -0.58658381 -8132.48920943    -0.00026988    -0.00001176  0.52D-05  0.14D-05  1618.28
    4     9     9     1.08136474    -0.58658366 -8132.48920928    -0.00027499    -0.00001195  0.53D-05  0.14D-05  1618.28
    4    10    10     1.08136468    -0.58658366 -8132.48920928    -0.00027499    -0.00001196  0.53D-05  0.14D-05  1618.28
    4    11    11     1.08136398    -0.58658363 -8132.48920925    -0.00027538    -0.00001198  0.53D-05  0.14D-05  1618.28
    4    12    12     1.07607042    -0.58115235 -8132.48187122    -0.00020874    -0.00000831  0.29D-05  0.11D-05  1618.28
    5     1     1     1.07633566    -0.58405998 -8132.60326968    -0.00000655    -0.00000024  0.49D-07  0.30D-07  2083.69
    5     2     2     1.08123563    -0.58641348 -8132.54342776    -0.00000837    -0.00000028  0.65D-07  0.37D-07  2083.69
    5     3     3     1.08123591    -0.58641347 -8132.54342775    -0.00000844    -0.00000028  0.66D-07  0.37D-07  2083.69
    5     4     4     1.08123585    -0.58641347 -8132.54342775    -0.00000854    -0.00000028  0.65D-07  0.37D-07  2083.69
    5     5     5     1.08123579    -0.58641347 -8132.54342775    -0.00000856    -0.00000028  0.66D-07  0.37D-07  2083.69
    5     6     6     1.08123567    -0.58641347 -8132.54342775    -0.00000857    -0.00000028  0.66D-07  0.37D-07  2083.69
    5     7     7     1.08146187    -0.58659633 -8132.48922196    -0.00001233    -0.00000062  0.16D-06  0.99D-07  2083.69
    5     8     8     1.08146171    -0.58659633 -8132.48922196    -0.00001252    -0.00000062  0.16D-06  0.99D-07  2083.69
    5     9     9     1.08146182    -0.58659633 -8132.48922196    -0.00001268    -0.00000062  0.16D-06  0.99D-07  2083.69
    5    10    10     1.08146133    -0.58659633 -8132.48922195    -0.00001267    -0.00000062  0.16D-06  0.98D-07  2083.69
    5    11    11     1.08146055    -0.58659632 -8132.48922195    -0.00001269    -0.00000063  0.16D-06  0.97D-07  2083.69
    5    12    12     1.07616952    -0.58116091 -8132.48187978    -0.00000856    -0.00000039  0.10D-06  0.63D-07  2083.69
    6     1     1     1.07634085    -0.58406024 -8132.60326994    -0.00000026    -0.00000001  0.21D-08  0.12D-08  2546.72
    6     2     2     1.08122961    -0.58641378 -8132.54342806    -0.00000031    -0.00000001  0.39D-08  0.17D-08  2546.72
    6     3     3     1.08122956    -0.58641378 -8132.54342806    -0.00000031    -0.00000001  0.39D-08  0.17D-08  2546.72
    6     4     4     1.08122957    -0.58641378 -8132.54342806    -0.00000031    -0.00000001  0.39D-08  0.17D-08  2546.72
    6     5     5     1.08122957    -0.58641378 -8132.54342806    -0.00000031    -0.00000001  0.38D-08  0.17D-08  2546.72
    6     6     6     1.08122963    -0.58641378 -8132.54342806    -0.00000031    -0.00000001  0.38D-08  0.17D-08  2546.72
    6     7     7     1.08143566    -0.58659705 -8132.48922267    -0.00000072    -0.00000004  0.96D-08  0.56D-08  2546.72
    6     8     8     1.08143564    -0.58659705 -8132.48922267    -0.00000072    -0.00000004  0.97D-08  0.56D-08  2546.72
    6     9     9     1.08143566    -0.58659705 -8132.48922267    -0.00000072    -0.00000004  0.97D-08  0.56D-08  2546.72
    6    10    10     1.08143503    -0.58659705 -8132.48922267    -0.00000072    -0.00000004  0.93D-08  0.53D-08  2546.72
    6    11    11     1.08143530    -0.58659705 -8132.48922267    -0.00000073    -0.00000004  0.94D-08  0.54D-08  2546.72
    6    12    12     1.07615449    -0.58116135 -8132.48188023    -0.00000044    -0.00000002  0.49D-08  0.33D-08  2546.72
    7     1     1     1.07634085    -0.58406024 -8132.60326994    -0.00000000    -0.00000001  0.21D-08  0.12D-08  2832.35
    7     2     2     1.08123080    -0.58641379 -8132.54342807    -0.00000000    -0.00000001  0.28D-08  0.16D-08  2832.35
    7     3     3     1.08123077    -0.58641379 -8132.54342806    -0.00000000    -0.00000001  0.28D-08  0.16D-08  2832.35
    7     4     4     1.08123077    -0.58641379 -8132.54342806    -0.00000000    -0.00000001  0.28D-08  0.16D-08  2832.35
    7     5     5     1.08123062    -0.58641378 -8132.54342806    -0.00000000    -0.00000001  0.28D-08  0.15D-08  2832.35
    7     6     6     1.08123074    -0.58641378 -8132.54342806    -0.00000000    -0.00000001  0.28D-08  0.15D-08  2832.35
    7     7     7     1.08143758    -0.58659709 -8132.48922271    -0.00000004    -0.00000000  0.34D-09  0.21D-09  2832.35
    7     8     8     1.08143763    -0.58659709 -8132.48922271    -0.00000004    -0.00000000  0.34D-09  0.21D-09  2832.35
    7     9     9     1.08143763    -0.58659709 -8132.48922271    -0.00000004    -0.00000000  0.35D-09  0.21D-09  2832.35
    7    10    10     1.08143748    -0.58659709 -8132.48922271    -0.00000004    -0.00000000  0.32D-09  0.19D-09  2832.35
    7    11    11     1.08143753    -0.58659709 -8132.48922271    -0.00000004    -0.00000000  0.33D-09  0.20D-09  2832.35
    7    12    12     1.07615449    -0.58116135 -8132.48188023    -0.00000000    -0.00000002  0.49D-08  0.33D-08  2832.35


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I  10.0%
 S   3.1%  39.5%
 P   0.7%  17.8%  14.5%

 Initialization:   4.1%
 Other:           10.3%

 Total CPU:     2832.3 seconds
 =====================================



 gnormi=  0.92907373  gnorms=  0.02048640  gnormp=  0.05043988  gnorm=  1.00000000
 ecorri= -0.54263502  ecorrs= -0.01196838  ecorrp= -0.02945684  ecorr= -0.58406024

 gnormi=  0.92487191  gnorms=  0.02225925  gnormp=  0.05286884  gnorm=  1.00000000
 ecorri= -0.54235764  ecorrs= -0.01305641  ecorrp= -0.03099974  ecorr= -0.58641379

 gnormi=  0.92487194  gnorms=  0.02225923  gnormp=  0.05286883  gnorm=  1.00000000
 ecorri= -0.54235766  ecorrs= -0.01305638  ecorrp= -0.03099975  ecorr= -0.58641379

 gnormi=  0.92487194  gnorms=  0.02225921  gnormp=  0.05286885  gnorm=  1.00000000
 ecorri= -0.54235765  ecorrs= -0.01305642  ecorrp= -0.03099971  ecorr= -0.58641379

 gnormi=  0.92487207  gnorms=  0.02225911  gnormp=  0.05286882  gnorm=  1.00000000
 ecorri= -0.54235773  ecorrs= -0.01305645  ecorrp= -0.03099960  ecorr= -0.58641378

 gnormi=  0.92487196  gnorms=  0.02225921  gnormp=  0.05286883  gnorm=  1.00000000
 ecorri= -0.54235767  ecorrs= -0.01305644  ecorrp= -0.03099968  ecorr= -0.58641378

 gnormi=  0.92469507  gnorms=  0.01987516  gnormp=  0.05542977  gnorm=  1.00000000
 ecorri= -0.54242343  ecorrs= -0.01165855  ecorrp= -0.03251510  ecorr= -0.58659709

 gnormi=  0.92469503  gnorms=  0.01987523  gnormp=  0.05542974  gnorm=  1.00000000
 ecorri= -0.54242341  ecorrs= -0.01165856  ecorrp= -0.03251511  ecorr= -0.58659709

 gnormi=  0.92469503  gnorms=  0.01987522  gnormp=  0.05542975  gnorm=  1.00000000
 ecorri= -0.54242341  ecorrs= -0.01165857  ecorrp= -0.03251511  ecorr= -0.58659709

 gnormi=  0.92469516  gnorms=  0.01987517  gnormp=  0.05542967  gnorm=  1.00000000
 ecorri= -0.54242349  ecorrs= -0.01165854  ecorrp= -0.03251506  ecorr= -0.58659709

 gnormi=  0.92469511  gnorms=  0.01987521  gnormp=  0.05542968  gnorm=  1.00000000
 ecorri= -0.54242346  ecorrs= -0.01165854  ecorrp= -0.03251508  ecorr= -0.58659709

 gnormi=  0.92923461  gnorms=  0.01974424  gnormp=  0.05102115  gnorm=  1.00000000
 ecorri= -0.54003525  ecorrs= -0.01147720  ecorrp= -0.02964890  ecorr= -0.58116135

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000000           0.9183503  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                                 -0.0000000  -0.0000000   0.0000000   0.0681669
 222222/0\0000222000000          -0.0000000   0.8797020   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1101589
                                 -0.0000000  -0.0000000   0.0000000   0.0000000
 222222/000\00222000000          -0.0000000  -0.0000000   0.0000000   0.8797020   0.0000000   0.0000000  -0.0000000   0.0000000
                                 -0.1101589  -0.0000000  -0.0000000  -0.0000000
 222222/\00000222000000          -0.0000000  -0.0000000   0.8797020  -0.0000000   0.0000000  -0.0000000   0.1101588  -0.0000000
                                  0.0000000  -0.0000000  -0.0000000  -0.0000000
 222222/0000\0222000000           0.0000000  -0.0000000   0.0000000  -0.0000000   0.8760058   0.0805574  -0.0000000  -0.0000000
                                 -0.0000000   0.1002471  -0.0456671  -0.0000000
 222222/00\000222000000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0805574   0.8760058   0.0000000  -0.0000000
                                 -0.0000000  -0.0456671  -0.1002472  -0.0000000
 222222/00000\222000000          -0.0970560   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                                 -0.0000000   0.0000000  -0.0000000   0.8202184
 22222200/00\0222000000          -0.0000000   0.1998392   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.6294345
                                  0.0000000   0.0000000  -0.0000000  -0.0000000
 222222000/0\0222000000          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0183000   0.1990000  -0.0000000   0.0000000
                                  0.0000000   0.2609364   0.5728004   0.0000000
 222222000/\00222000000          -0.0000000   0.0000000   0.0000000   0.1730659  -0.0000000   0.0000000   0.0000000  -0.0000000
                                  0.5451063  -0.0000000  -0.0000000   0.0000000
 22222200/0\00222000000          -0.0000000   0.0000000  -0.1730663   0.0000000   0.0000000  -0.0000000   0.5451063   0.0000000
                                 -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220/\0000222000000          -0.0000000  -0.0000000  -0.0000000  -0.1730662   0.0000000  -0.0000000  -0.0000000  -0.0000000
                                 -0.5451063   0.0000000   0.0000000  -0.0000000
 2222220/0\000222000000          -0.0000000   0.0000000  -0.1730658   0.0000000   0.0000000  -0.0000000   0.5451063  -0.0000000
                                 -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222220/00\00222000000           0.0000000  -0.1730660  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.5451063
                                  0.0000000   0.0000000  -0.0000000   0.0000000
 2222220000000222/\0000          -0.0000000   0.0000000  -0.2726673  -0.0000000  -0.0000000   0.0000000  -0.4448117  -0.0000000
                                  0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220000000222/0\000           0.0000000  -0.2726673   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.4448116
                                 -0.0000000  -0.0000000   0.0000000  -0.0000000
 22222200000002220/\000           0.0000000   0.0000000  -0.0000000  -0.2726673   0.0000000   0.0000000   0.0000000   0.0000000
                                  0.4448116  -0.0000000  -0.0000000   0.0000000
 2222220200000222000000          -0.0482706  -0.0000000  -0.0000000   0.0000000  -0.0591508  -0.1283317  -0.0000000  -0.0000000
                                  0.0000000   0.0427254  -0.4430218   0.1489159
 2222220002000222000000          -0.0482707   0.0000000  -0.0000000   0.0000000   0.1407138   0.0129401  -0.0000000   0.0000000
                                 -0.0000000  -0.4050309   0.1845098   0.1489157
 2222220020000222000000          -0.0482706  -0.0000000  -0.0000000   0.0000000   0.1407144   0.0129400  -0.0000000   0.0000000
                                 -0.0000000  -0.4050309   0.1845098   0.1489159
 2222220000020222000000          -0.0482707  -0.0000000  -0.0000000   0.0000000  -0.1407137  -0.0129400   0.0000000  -0.0000000
                                 -0.0000000   0.4050309  -0.1845098   0.1489156
 2222220000200222000000          -0.0482706   0.0000000   0.0000000  -0.0000000  -0.0815637   0.1153917   0.0000000  -0.0000000
                                  0.0000000   0.3623056   0.2585120   0.1489159
 2222220000000222002000          -0.1326358   0.0000000   0.0000000  -0.0000000   0.0931925   0.2021884   0.0000000   0.0000000
                                  0.0000000   0.0348642  -0.3615099  -0.1628413
 2222220000000222020000          -0.1326358  -0.0000000   0.0000000  -0.0000000  -0.2216966  -0.0203872   0.0000000  -0.0000000
                                  0.0000000  -0.3305089   0.1505617  -0.1628413
 2222220000/\0222000000           0.0000000  -0.0000000  -0.0000000  -0.0999194   0.0000000   0.0000000   0.0000000   0.0000000
                                 -0.3147173   0.0000000  -0.0000000  -0.0000000
 2222220/000\0222000000          -0.0000000   0.0000000  -0.0999194   0.0000000   0.0000000  -0.0000000   0.3147172  -0.0000000
                                  0.0000000   0.0000000  -0.0000000  -0.0000000
 2222220000000222200000          -0.1326357   0.0000000  -0.0000000   0.0000000   0.1285041  -0.1818012  -0.0000000  -0.0000000
                                  0.0000000   0.2956447   0.2109483  -0.1628413
 2222220000002222000000          -0.0097439   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                                  0.0000000  -0.0000000   0.0000000  -0.1617137
 2222220/0000\222000000           0.0000000  -0.0000000   0.0227823  -0.0000000   0.0000000  -0.0000000   0.1317935  -0.0000000
                                  0.0000000   0.0000000   0.0000000  -0.0000000
 2222220000/0\222000000          -0.0000000   0.0000000   0.0000000   0.0227822  -0.0000000   0.0000000   0.0000000  -0.0000000
                                 -0.1317935  -0.0000000  -0.0000000  -0.0000000
 22222200/000\222000000           0.0000000   0.0227822  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.1317935
                                 -0.0000000  -0.0000000   0.0000000  -0.0000000
 22222200000/\222000000          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0226864   0.0020862  -0.0000000   0.0000000
                                 -0.0000000   0.1199353  -0.0546359  -0.0000000
 222222000/00\222000000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0020863   0.0226864  -0.0000000  -0.0000000
                                  0.0000000  -0.0546359  -0.1199352  -0.0000000
 22222200000002220/00\0           0.0388531   0.0000000   0.0000000  -0.0000000   0.0295385   0.0027164  -0.0000000  -0.0000000
                                  0.0000000  -0.0018151   0.0008269  -0.0955328
 222222000000022200/00\           0.0388531  -0.0000000  -0.0000000  -0.0000000  -0.0124168  -0.0269393   0.0000000   0.0000000
                                 -0.0000000   0.0001915  -0.0019853  -0.0955327
 2222220000000222/00\00           0.0388531   0.0000000  -0.0000000   0.0000000  -0.0171217   0.0242229  -0.0000000  -0.0000000
                                  0.0000000   0.0016236   0.0011585  -0.0955327

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958825    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.051082
 2           0.000000   -0.000000   -0.000000    0.957889   -0.000000    0.000000    0.000000   -0.000000    0.047241    0.000000
            -0.000000    0.000000
 3          -0.000000   -0.000000    0.957889    0.000000    0.000000    0.000000    0.000000   -0.047241    0.000000   -0.000000
             0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.000000    0.957889   -0.000000    0.000000   -0.000000    0.000000    0.047241
             0.000000    0.000000
 5          -0.000000    0.773669    0.000000    0.000000   -0.000000    0.564790   -0.035829    0.000000   -0.000000    0.000000
             0.030790   -0.000000
 6           0.000000   -0.564790   -0.000000   -0.000000    0.000000    0.773669    0.030790   -0.000000    0.000000    0.000000
             0.035829    0.000000
 7          -0.000000   -0.000000    0.048051    0.000000    0.000000   -0.000000    0.000000    0.958210   -0.000000    0.000000
            -0.000000   -0.000000
 8           0.000000    0.000000   -0.000000   -0.048051   -0.000000   -0.000000   -0.000000    0.000000    0.958210    0.000000
            -0.000000    0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000   -0.048051   -0.000000    0.000000   -0.000000   -0.000000    0.958210
             0.000000   -0.000000
 10         -0.000000    0.045978   -0.000000   -0.000000   -0.000000    0.013963    0.891917   -0.000000   -0.000000   -0.000000
            -0.350217    0.000000
 11          0.000000    0.013963   -0.000000    0.000000   -0.000000   -0.045978    0.350217    0.000000    0.000000   -0.000000
             0.891916    0.000000
 12          0.052941    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.958996

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960184    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000923
 2           0.000000    0.959053   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000397    0.000000    0.000000
            -0.000000   -0.000000
 3          -0.000000   -0.000000    0.959053    0.000000   -0.000000   -0.000000    0.000397   -0.000000   -0.000000   -0.000000
             0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.959053   -0.000000   -0.000000   -0.000000   -0.000000   -0.000397   -0.000000
            -0.000000    0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.959053    0.000000   -0.000000    0.000000    0.000000    0.000374
            -0.000131   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.959053   -0.000000    0.000000    0.000000   -0.000131
            -0.000374   -0.000000
 7           0.000000    0.000000    0.000397   -0.000000   -0.000000   -0.000000    0.959414    0.000000    0.000000   -0.000000
             0.000000    0.000000
 8           0.000000   -0.000397   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.959414   -0.000000   -0.000000
             0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000   -0.000397    0.000000    0.000000    0.000000   -0.000000    0.959414    0.000000
             0.000000    0.000000
 10         -0.000000    0.000000   -0.000000   -0.000000    0.000374   -0.000131   -0.000000   -0.000000    0.000000    0.959414
            -0.000000    0.000000
 11          0.000000   -0.000000    0.000000   -0.000000   -0.000131   -0.000374    0.000000    0.000000    0.000000   -0.000000
             0.959414   -0.000000
 12          0.000923   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.960456


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95882465 (fixed)   0.96023640 (relaxed)   0.96018394 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00772330   -0.01696484   -0.49495338
 Singles      0.02222065   -0.08119681   -0.08682804
 Pairs        0.05470980    0.02947874   -0.00227882
 Total        1.08465375   -0.06868291   -0.58406024
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8132.01886212
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.44030054
 One electron energy               -11100.56206852
 Two electron energy                 2967.95879858
 Virial quotient                       -0.84071468
 Correlation energy                    -0.58440781
 !MRCI STATE 1.1 Energy             -8132.603269938716

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.65274225 (Davidson, fixed reference)
 Cluster corrected energies         -8132.65267299 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.65274225 (Davidson, rotated reference)

 Cluster corrected energies         -8132.65099405 (Pople, fixed reference)
 Cluster corrected energies         -8132.65092250 (Pople, relaxed reference)
 Cluster corrected energies         -8132.65099405 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95788893 (fixed)   0.95917530 (relaxed)   0.95905307 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00553297   -0.01241433   -0.46843847
 Singles      0.02420055   -0.08036590   -0.08697558
 Pairs        0.05747970   -0.00000000   -0.03099974
 Total        1.08721322   -0.09278023   -0.58641379
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95688009
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.38002278
 One electron energy               -11102.50206456
 Two electron energy                 2969.95863649
 Virial quotient                       -0.84071373
 Correlation energy                    -0.58654798
 !MRCI STATE 2.1 Energy             -8132.543428065231

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59458280 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59442028 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59458280 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59288135 (Pople, fixed reference)
 Cluster corrected energies         -8132.59271275 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59288135 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95788895 (fixed)   0.95917532 (relaxed)   0.95905308 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00553296   -0.01241433   -0.46843847
 Singles      0.02420053   -0.08036591   -0.08697557
 Pairs        0.05747969    0.00000000   -0.03099975
 Total        1.08721318   -0.09278024   -0.58641379
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95688009
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.38002130
 One electron energy               -11102.50206456
 Two electron energy                 2969.95863650
 Virial quotient                       -0.84071373
 Correlation energy                    -0.58654797
 !MRCI STATE 3.1 Energy             -8132.543428064754

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59458278 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59442026 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59458278 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59288132 (Pople, fixed reference)
 Cluster corrected energies         -8132.59271273 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59288132 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95788895 (fixed)   0.95917531 (relaxed)   0.95905308 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00553296   -0.01241433   -0.46843852
 Singles      0.02420051   -0.08036586   -0.08697556
 Pairs        0.05747971   -0.00000000   -0.03099971
 Total        1.08721318   -0.09278018   -0.58641379
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95688009
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.38002150
 One electron energy               -11102.50206022
 Two electron energy                 2969.95863216
 Virial quotient                       -0.84071373
 Correlation energy                    -0.58654797
 !MRCI STATE 4.1 Energy             -8132.543428064669

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59458278 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59442026 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59458278 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59288133 (Pople, fixed reference)
 Cluster corrected energies         -8132.59271273 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59288133 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.77366925 (fixed)   0.95917538 (relaxed)   0.95905315 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00553296   -0.01241433   -0.46843869
 Singles      0.02420040   -0.08036574   -0.08697549
 Pairs        0.05747967    0.00000000   -0.03099960
 Total        1.08721303   -0.09278007   -0.58641378
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95688009
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.38005589
 One electron energy               -11102.50208693
 Two electron energy                 2969.95865886
 Virial quotient                       -0.84071373
 Correlation energy                    -0.58654797
 !MRCI STATE 5.1 Energy             -8132.543428063212

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59458269 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59442017 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59458269 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59288123 (Pople, fixed reference)
 Cluster corrected energies         -8132.59271264 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59288123 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.77366921 (fixed)   0.95917532 (relaxed)   0.95905309 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00553296   -0.01241433   -0.46843854
 Singles      0.02420051   -0.08036583   -0.08697555
 Pairs        0.05747969   -0.00000002   -0.03099969
 Total        1.08721316   -0.09278018   -0.58641378
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95688009
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.38003901
 One electron energy               -11102.50207901
 Two electron energy                 2969.95865095
 Virial quotient                       -0.84071373
 Correlation energy                    -0.58654797
 !MRCI STATE 6.1 Energy             -8132.543428062243

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59458276 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59442024 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59458276 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59288131 (Pople, fixed reference)
 Cluster corrected energies         -8132.59271271 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59288131 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95821022 (fixed)   0.95953130 (relaxed)   0.95941419 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458402   -0.01046402   -0.47231809
 Singles      0.02159227   -0.07616209   -0.08176390
 Pairs        0.06021862    0.00000000   -0.03251510
 Total        1.08639491   -0.08662610   -0.58659709
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90275981
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35837582
 One electron energy               -11103.20001326
 Two electron energy                 2970.71079055
 Virial quotient                       -0.84071001
 Correlation energy                    -0.58646290
 !MRCI STATE 7.1 Energy             -8132.489222710623

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53989012 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53973460 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53989012 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53817121 (Pople, fixed reference)
 Cluster corrected energies         -8132.53801009 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53817121 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95821019 (fixed)   0.95953129 (relaxed)   0.95941417 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458402   -0.01046401   -0.47231805
 Singles      0.02159234   -0.07616211   -0.08176393
 Pairs        0.06021859   -0.00000000   -0.03251511
 Total        1.08639496   -0.08662613   -0.58659709
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90275981
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35837646
 One electron energy               -11103.20002420
 Two electron energy                 2970.71080149
 Virial quotient                       -0.84071001
 Correlation energy                    -0.58646290
 !MRCI STATE 8.1 Energy             -8132.489222710474

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53989015 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53973463 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53989015 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53817123 (Pople, fixed reference)
 Cluster corrected energies         -8132.53801012 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53817123 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95821020 (fixed)   0.95953129 (relaxed)   0.95941417 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458402   -0.01046402   -0.47231805
 Singles      0.02159234   -0.07616211   -0.08176393
 Pairs        0.06021860    0.00000000   -0.03251511
 Total        1.08639496   -0.08662612   -0.58659709
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90275981
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35837580
 One electron energy               -11103.20002351
 Two electron energy                 2970.71080080
 Virial quotient                       -0.84071001
 Correlation energy                    -0.58646290
 !MRCI STATE 9.1 Energy             -8132.489222710151

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53989015 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53973463 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53989015 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53817123 (Pople, fixed reference)
 Cluster corrected energies         -8132.53801012 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53817123 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.89191651 (fixed)   0.95953135 (relaxed)   0.95941424 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458402   -0.01046401   -0.47231809
 Singles      0.02159228   -0.07616211   -0.08176392
 Pairs        0.06021851   -0.00000002   -0.03251508
 Total        1.08639481   -0.08662615   -0.58659709
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90275981
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35837413
 One electron energy               -11103.20000641
 Two electron energy                 2970.71078370
 Virial quotient                       -0.84071001
 Correlation energy                    -0.58646290
 !MRCI STATE 10.1 Energy            -8132.489222709095

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53989006 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53973454 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53989006 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53817114 (Pople, fixed reference)
 Cluster corrected energies         -8132.53801003 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53817114 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.89191650 (fixed)   0.95953133 (relaxed)   0.95941421 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00458402   -0.01046401   -0.47231807
 Singles      0.02159232   -0.07616214   -0.08176393
 Pairs        0.06021852   -0.00000000   -0.03251508
 Total        1.08639486   -0.08662615   -0.58659709
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90275981
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35837546
 One electron energy               -11103.20001395
 Two electron energy                 2970.71079125
 Virial quotient                       -0.84071001
 Correlation energy                    -0.58646290
 !MRCI STATE 11.1 Energy            -8132.489222708390

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53989009 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53973457 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53989009 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53817117 (Pople, fixed reference)
 Cluster corrected energies         -8132.53801006 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53817117 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95899579 (fixed)   0.96059388 (relaxed)   0.96045551 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00732792   -0.01570587   -0.01924014
 Singles      0.02140356   -0.07886001   -0.08422358
 Pairs        0.05530899   -0.48570296   -0.47769764
 Total        1.08404046   -0.58026883   -0.58116135
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90106645
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.23307614
 One electron energy               -11095.87998119
 Two electron energy                 2963.39810096
 Virial quotient                       -0.84072014
 Correlation energy                    -0.58081378
 !MRCI STATE 12.1 Energy            -8132.481880227835

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53069208 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53051071 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53069208 (Davidson, rotated reference)

 Cluster corrected energies         -8132.52894299 (Pople, fixed reference)
 Cluster corrected energies         -8132.52875583 (Pople, relaxed reference)
 Cluster corrected energies         -8132.52894299 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.55       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      913.13       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9674.97   9643.98     16.19      0.12     14.23
 REAL TIME  *      9778.33 SEC
 DISK USED  *         1.05 GB (local),       25.49 GB (total)
 SF USED    *         9.33 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -8132.65274225  AU                              
 SETTING HLSDIAG(2)     =     -8132.59458280  AU                              
 SETTING HLSDIAG(3)     =     -8132.59458278  AU                              
 SETTING HLSDIAG(4)     =     -8132.59458278  AU                              
 SETTING HLSDIAG(5)     =     -8132.59458269  AU                              
 SETTING HLSDIAG(6)     =     -8132.59458276  AU                              
 SETTING HLSDIAG(7)     =     -8132.53989012  AU                              
 SETTING HLSDIAG(8)     =     -8132.53989015  AU                              
 SETTING HLSDIAG(9)     =     -8132.53989015  AU                              
 SETTING HLSDIAG(10)    =     -8132.53989006  AU                              
 SETTING HLSDIAG(11)    =     -8132.53989009  AU                              
 SETTING HLSDIAG(12)    =     -8132.53069208  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 56
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       36 conf       36 CSFs
 N elec internal:    76137 conf   361851 CSFs
 N-1 el internal:    16942 conf   111046 CSFs
 N-2 el internal:     1738 conf    12988 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       13 (   7   6 )
 Number of external orbitals:     128 (  68  60 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  36

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8131.96348806
     2     -8131.96348806
     3     -8131.96348806
     4     -8131.96348806
     5     -8131.96348806
     6     -8131.90699284
     7     -8131.90699284
     8     -8131.90699284
     9     -8131.90699284
    10     -8131.90699284
    11     -8131.90699284
    12     -8131.90699284
    13     -8131.90568442
    14     -8131.90291015
    15     -8131.90291015
    16     -8131.90291015

 Number of blocks in overlap matrix:  1441   Smallest eigenvalue:  0.59D+00
 Number of N-2 electron functions:    1531
 Number of N-1 electron functions:  111046

 Number of internal configurations:               180819
 Number of singly external configurations:       7106672
 Number of doubly external configurations:       6282544
 Total number of contracted configurations:     13570035
 Total number of uncontracted configurations:   60352995

 Diagonal Coupling coefficients finished.               Storage:******** words, CPU-Time:    265.99 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 3064251 words, CPU-time:      1.62 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8131.96348806     0.00000000    -0.69923989  0.53D-01  0.83D-01   317.21
    1     2     2     1.00000000     0.00000000 -8131.96348806    -0.00000000    -0.69921667  0.53D-01  0.83D-01   317.21
    1     3     3     1.00000000     0.00000000 -8131.96348806     0.00000000    -0.69922776  0.53D-01  0.83D-01   317.21
    1     4     4     1.00000000     0.00000000 -8131.96348806    -0.00000000    -0.69923330  0.53D-01  0.83D-01   317.21
    1     5     5     1.00000000     0.00000000 -8131.96348806     0.00000000    -0.69911028  0.53D-01  0.83D-01   317.21
    1     6     6     1.00000000     0.00000000 -8131.90699284    -0.00000000    -0.71175880  0.48D-01  0.95D-01   317.21
    1     7     7     1.00000000     0.00000000 -8131.90699284    -0.00000000    -0.71182864  0.49D-01  0.95D-01   317.21
    1     8     8     1.00000000     0.00000000 -8131.90699284    -0.00000000    -0.71156760  0.49D-01  0.94D-01   317.21
    1     9     9     1.00000000     0.00000000 -8131.90699284     0.00000000    -0.71162057  0.49D-01  0.95D-01   317.21
    1    10    10     1.00000000     0.00000000 -8131.90699284    -0.00000000    -0.71181109  0.49D-01  0.95D-01   317.21
    1    11    11     1.00000000     0.00000000 -8131.90699284    -0.00000000    -0.71169556  0.48D-01  0.95D-01   317.21
    1    12    12     1.00000000     0.00000000 -8131.90699284    -0.00000000    -0.71165971  0.49D-01  0.95D-01   317.21
    1    13    13     1.00000000     0.00000000 -8131.90568442    -0.00000000    -0.66742663  0.39D-01  0.73D-01   317.21
    1    14    14     1.00000000     0.00000000 -8131.90291015     0.00000000    -0.69704022  0.43D-01  0.90D-01   317.21
    1    15    15     1.00000000     0.00000000 -8131.90291015     0.00000000    -0.69708918  0.43D-01  0.90D-01   317.21
    1    16    16     1.00000000     0.00000000 -8131.90291015    -0.00000000    -0.69722708  0.43D-01  0.90D-01   317.21
    2     1     1     1.08828539    -0.57689415 -8132.54038221    -0.57689415    -0.01250487  0.28D-02  0.11D-02  1427.90
    2     2     2     1.08830950    -0.57686883 -8132.54035688    -0.57686883    -0.01253931  0.28D-02  0.12D-02  1427.90
    2     3     3     1.08831690    -0.57686476 -8132.54035282    -0.57686476    -0.01254406  0.28D-02  0.12D-02  1427.90
    2     4     4     1.08832644    -0.57686101 -8132.54034907    -0.57686101    -0.01254753  0.28D-02  0.12D-02  1427.90
    2     5     5     1.08832430    -0.57685305 -8132.54034111    -0.57685305    -0.01255654  0.28D-02  0.12D-02  1427.90
    2     6     6     1.09097078    -0.57748115 -8132.48447399    -0.57748115    -0.01264601  0.24D-02  0.15D-02  1427.90
    2     7     7     1.09099616    -0.57746013 -8132.48445297    -0.57746013    -0.01267336  0.24D-02  0.15D-02  1427.90
    2     8     8     1.09103626    -0.57743327 -8132.48442611    -0.57743327    -0.01270631  0.24D-02  0.15D-02  1427.90
    2     9     9     1.09105286    -0.57741184 -8132.48440468    -0.57741184    -0.01273776  0.24D-02  0.16D-02  1427.90
    2    10    10     1.09108478    -0.57739353 -8132.48438637    -0.57739353    -0.01276031  0.24D-02  0.16D-02  1427.90
    2    11    11     1.09108888    -0.57738893 -8132.48438177    -0.57738893    -0.01276551  0.24D-02  0.16D-02  1427.90
    2    12    12     1.09109356    -0.57738577 -8132.48437861    -0.57738577    -0.01277043  0.24D-02  0.16D-02  1427.90
    2    13    13     1.07696461    -0.57080091 -8132.47648532    -0.57080091    -0.00849738  0.13D-02  0.70D-03  1427.90
    2    14    14     1.08631958    -0.57346466 -8132.47637482    -0.57346466    -0.01215851  0.27D-02  0.15D-02  1427.90
    2    15    15     1.08632504    -0.57345806 -8132.47636821    -0.57345806    -0.01217319  0.27D-02  0.15D-02  1427.90
    2    16    16     1.08636043    -0.57341129 -8132.47632145    -0.57341129    -0.01223188  0.27D-02  0.15D-02  1427.90
    3     1     1     1.08105151    -0.58856459 -8132.55205265    -0.01167044    -0.00023002  0.38D-04  0.29D-04  2537.14
    3     2     2     1.08105705    -0.58856366 -8132.55205172    -0.01169484    -0.00023144  0.38D-04  0.29D-04  2537.14
    3     3     3     1.08105648    -0.58856358 -8132.55205164    -0.01169882    -0.00023132  0.38D-04  0.29D-04  2537.14
    3     4     4     1.08105664    -0.58856341 -8132.55205147    -0.01170240    -0.00023165  0.38D-04  0.29D-04  2537.14
    3     5     5     1.08105540    -0.58856329 -8132.55205135    -0.01171024    -0.00023174  0.38D-04  0.29D-04  2537.14
    3     6     6     1.08309241    -0.58924923 -8132.49624206    -0.01176807    -0.00020773  0.27D-04  0.34D-04  2537.14
    3     7     7     1.08308857    -0.58924871 -8132.49624155    -0.01178858    -0.00020794  0.27D-04  0.34D-04  2537.14
    3     8     8     1.08309715    -0.58924829 -8132.49624113    -0.01181503    -0.00020913  0.27D-04  0.34D-04  2537.14
    3     9     9     1.08310019    -0.58924665 -8132.49623949    -0.01183481    -0.00021065  0.27D-04  0.34D-04  2537.14
    3    10    10     1.08310172    -0.58924614 -8132.49623898    -0.01185261    -0.00021108  0.27D-04  0.35D-04  2537.14
    3    11    11     1.08310380    -0.58924603 -8132.49623887    -0.01185709    -0.00021136  0.27D-04  0.35D-04  2537.14
    3    12    12     1.08310177    -0.58924592 -8132.49623876    -0.01186015    -0.00021105  0.27D-04  0.35D-04  2537.14
    3    13    13     1.07941520    -0.58202015 -8132.48770457    -0.01121924    -0.00024669  0.26D-04  0.46D-04  2537.14
    3    14    14     1.07941767    -0.58479416 -8132.48770432    -0.01132950    -0.00024737  0.25D-04  0.46D-04  2537.14
    3    15    15     1.07941803    -0.58479248 -8132.48770263    -0.01133442    -0.00024916  0.26D-04  0.46D-04  2537.14
    3    16    16     1.07520700    -0.58183687 -8132.48474703    -0.00842558    -0.00014896  0.18D-04  0.17D-04  2537.14
    4     1     1     1.08151128    -0.58880129 -8132.55228935    -0.00023671    -0.00000776  0.25D-05  0.71D-06  3614.24
    4     2     2     1.08151099    -0.58880125 -8132.55228931    -0.00023759    -0.00000777  0.25D-05  0.71D-06  3614.24
    4     3     3     1.08151100    -0.58880125 -8132.55228931    -0.00023767    -0.00000777  0.25D-05  0.71D-06  3614.24
    4     4     4     1.08151142    -0.58880112 -8132.55228917    -0.00023770    -0.00000773  0.25D-05  0.71D-06  3614.24
    4     5     5     1.08151109    -0.58880105 -8132.55228911    -0.00023776    -0.00000774  0.25D-05  0.71D-06  3614.24
    4     6     6     1.08348031    -0.58946616 -8132.49645900    -0.00021694    -0.00000663  0.25D-05  0.76D-06  3614.24
    4     7     7     1.08348007    -0.58946593 -8132.49645876    -0.00021722    -0.00000665  0.25D-05  0.77D-06  3614.24
    4     8     8     1.08347981    -0.58946590 -8132.49645874    -0.00021761    -0.00000668  0.25D-05  0.77D-06  3614.24
    4     9     9     1.08348032    -0.58946584 -8132.49645867    -0.00021919    -0.00000657  0.25D-05  0.75D-06  3614.24
    4    10    10     1.08347982    -0.58946538 -8132.49645821    -0.00021924    -0.00000663  0.25D-05  0.76D-06  3614.24
    4    11    11     1.08347938    -0.58946533 -8132.49645817    -0.00021931    -0.00000667  0.25D-05  0.77D-06  3614.24
    4    12    12     1.08347957    -0.58946529 -8132.49645813    -0.00021937    -0.00000667  0.25D-05  0.77D-06  3614.24
    4    13    13     1.08001938    -0.58227821 -8132.48796263    -0.00025806    -0.00000971  0.43D-05  0.11D-05  3614.24
    4    14    14     1.08001952    -0.58505241 -8132.48796256    -0.00025825    -0.00000972  0.44D-05  0.11D-05  3614.24
    4    15    15     1.08001760    -0.58505234 -8132.48796250    -0.00025987    -0.00000979  0.43D-05  0.11D-05  3614.24
    4    16    16     1.07593762    -0.58199402 -8132.48490417    -0.00015715    -0.00000455  0.12D-05  0.45D-06  3614.24
    5     1     1     1.08160119    -0.58880907 -8132.55229713    -0.00000777    -0.00000025  0.52D-07  0.33D-07  4662.22
    5     2     2     1.08160112    -0.58880903 -8132.55229709    -0.00000778    -0.00000025  0.52D-07  0.33D-07  4662.22
    5     3     3     1.08160108    -0.58880904 -8132.55229709    -0.00000778    -0.00000025  0.52D-07  0.33D-07  4662.22
    5     4     4     1.08160052    -0.58880887 -8132.55229693    -0.00000775    -0.00000025  0.52D-07  0.33D-07  4662.22
    5     5     5     1.08160041    -0.58880879 -8132.55229685    -0.00000774    -0.00000025  0.52D-07  0.33D-07  4662.22
    5     6     6     1.08356760    -0.58947302 -8132.49646586    -0.00000686    -0.00000026  0.56D-07  0.43D-07  4662.22
    5     7     7     1.08356776    -0.58947282 -8132.49646566    -0.00000689    -0.00000026  0.56D-07  0.43D-07  4662.22
    5     8     8     1.08356764    -0.58947282 -8132.49646565    -0.00000691    -0.00000026  0.56D-07  0.43D-07  4662.22
    5     9     9     1.08356694    -0.58947264 -8132.49646548    -0.00000680    -0.00000026  0.56D-07  0.42D-07  4662.22
    5    10    10     1.08356741    -0.58947224 -8132.49646508    -0.00000687    -0.00000026  0.56D-07  0.43D-07  4662.22
    5    11    11     1.08356710    -0.58947224 -8132.49646508    -0.00000691    -0.00000026  0.56D-07  0.43D-07  4662.22
    5    12    12     1.08356740    -0.58947220 -8132.49646504    -0.00000691    -0.00000026  0.56D-07  0.43D-07  4662.22
    5    13    13     1.08014048    -0.58228858 -8132.48797300    -0.00001037    -0.00000044  0.87D-07  0.70D-07  4662.22
    5    14    14     1.08014050    -0.58506278 -8132.48797294    -0.00001038    -0.00000044  0.87D-07  0.71D-07  4662.22
    5    15    15     1.08014045    -0.58506279 -8132.48797294    -0.00001044    -0.00000044  0.86D-07  0.70D-07  4662.22
    5    16    16     1.07601395    -0.58199852 -8132.48490867    -0.00000450    -0.00000017  0.31D-07  0.21D-07  4662.22
    6     1     1     1.08159628    -0.58880934 -8132.55229740    -0.00000027    -0.00000001  0.37D-08  0.99D-09  5711.10
    6     2     2     1.08159625    -0.58880931 -8132.55229737    -0.00000027    -0.00000001  0.37D-08  0.10D-08  5711.10
    6     3     3     1.08159624    -0.58880931 -8132.55229737    -0.00000027    -0.00000001  0.37D-08  0.99D-09  5711.10
    6     4     4     1.08159564    -0.58880914 -8132.55229720    -0.00000027    -0.00000001  0.37D-08  0.99D-09  5711.10
    6     5     5     1.08159556    -0.58880906 -8132.55229712    -0.00000027    -0.00000001  0.37D-08  0.10D-08  5711.10
    6     6     6     1.08356675    -0.58947332 -8132.49646616    -0.00000030    -0.00000001  0.31D-08  0.13D-08  5711.10
    6     7     7     1.08356680    -0.58947312 -8132.49646596    -0.00000030    -0.00000001  0.31D-08  0.13D-08  5711.10
    6     8     8     1.08356680    -0.58947312 -8132.49646596    -0.00000030    -0.00000001  0.31D-08  0.13D-08  5711.10
    6     9     9     1.08356624    -0.58947294 -8132.49646578    -0.00000030    -0.00000001  0.30D-08  0.13D-08  5711.10
    6    10    10     1.08356643    -0.58947254 -8132.49646538    -0.00000030    -0.00000001  0.31D-08  0.13D-08  5711.10
    6    11    11     1.08356641    -0.58947254 -8132.49646538    -0.00000030    -0.00000001  0.31D-08  0.13D-08  5711.10
    6    12    12     1.08356650    -0.58947250 -8132.49646534    -0.00000030    -0.00000001  0.31D-08  0.13D-08  5711.10
    6    13    13     1.08012683    -0.58228908 -8132.48797350    -0.00000051    -0.00000002  0.34D-08  0.24D-08  5711.10
    6    14    14     1.08012677    -0.58506329 -8132.48797345    -0.00000051    -0.00000002  0.34D-08  0.24D-08  5711.10
    6    15    15     1.08012682    -0.58506329 -8132.48797345    -0.00000051    -0.00000002  0.34D-08  0.24D-08  5711.10
    6    16    16     1.07600777    -0.58199870 -8132.48490885    -0.00000018    -0.00000001  0.30D-08  0.57D-09  5711.10


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   9.4%
 S   2.7%  43.4%
 P   0.6%  17.3%  14.4%

 Initialization:   4.7%
 Other:            7.6%

 Total CPU:     5711.1 seconds
 =====================================



 gnormi=  0.92455940  gnorms=  0.02278117  gnormp=  0.05265943  gnorm=  1.00000000
 ecorri= -0.54438921  ecorrs= -0.01341753  ecorrp= -0.03100260  ecorr= -0.58880934

 gnormi=  0.92455942  gnorms=  0.02278113  gnormp=  0.05265946  gnorm=  1.00000000
 ecorri= -0.54438919  ecorrs= -0.01341752  ecorrp= -0.03100260  ecorr= -0.58880931

 gnormi=  0.92455942  gnorms=  0.02278112  gnormp=  0.05265945  gnorm=  1.00000000
 ecorri= -0.54438919  ecorrs= -0.01341751  ecorrp= -0.03100261  ecorr= -0.58880931

 gnormi=  0.92455994  gnorms=  0.02278052  gnormp=  0.05265954  gnorm=  1.00000000
 ecorri= -0.54438934  ecorrs= -0.01341713  ecorrp= -0.03100266  ecorr= -0.58880914

 gnormi=  0.92456001  gnorms=  0.02278041  gnormp=  0.05265958  gnorm=  1.00000000
 ecorri= -0.54438932  ecorrs= -0.01341707  ecorrp= -0.03100268  ecorr= -0.58880906

 gnormi=  0.92287808  gnorms=  0.02085470  gnormp=  0.05626722  gnorm=  1.00000000
 ecorri= -0.54401201  ecorrs= -0.01229748  ecorrp= -0.03316384  ecorr= -0.58947332

 gnormi=  0.92287804  gnorms=  0.02085480  gnormp=  0.05626717  gnorm=  1.00000000
 ecorri= -0.54401180  ecorrs= -0.01229753  ecorrp= -0.03316380  ecorr= -0.58947312

 gnormi=  0.92287803  gnorms=  0.02085479  gnormp=  0.05626717  gnorm=  1.00000000
 ecorri= -0.54401179  ecorrs= -0.01229751  ecorrp= -0.03316381  ecorr= -0.58947312

 gnormi=  0.92287851  gnorms=  0.02085418  gnormp=  0.05626730  gnorm=  1.00000000
 ecorri= -0.54401191  ecorrs= -0.01229717  ecorrp= -0.03316386  ecorr= -0.58947294

 gnormi=  0.92287835  gnorms=  0.02085443  gnormp=  0.05626722  gnorm=  1.00000000
 ecorri= -0.54401145  ecorrs= -0.01229729  ecorrp= -0.03316381  ecorr= -0.58947254

 gnormi=  0.92287837  gnorms=  0.02085444  gnormp=  0.05626719  gnorm=  1.00000000
 ecorri= -0.54401146  ecorrs= -0.01229732  ecorrp= -0.03316377  ecorr= -0.58947254

 gnormi=  0.92287829  gnorms=  0.02085450  gnormp=  0.05626720  gnorm=  1.00000000
 ecorri= -0.54401137  ecorrs= -0.01229734  ecorrp= -0.03316378  ecorr= -0.58947250

 gnormi=  0.92581720  gnorms=  0.01926262  gnormp=  0.05492017  gnorm=  1.00000000
 ecorri= -0.53909325  ecorrs= -0.01122029  ecorrp= -0.03197554  ecorr= -0.58228908

 gnormi=  0.92581725  gnorms=  0.01926254  gnormp=  0.05492021  gnorm=  1.00000000
 ecorri= -0.54166169  ecorrs= -0.01127372  ecorrp= -0.03212789  ecorr= -0.58506329

 gnormi=  0.92581721  gnorms=  0.01926253  gnormp=  0.05492026  gnorm=  1.00000000
 ecorri= -0.54166167  ecorrs= -0.01127368  ecorrp= -0.03212794  ecorr= -0.58506329

 gnormi=  0.92936132  gnorms=  0.02071865  gnormp=  0.04992003  gnorm=  1.00000000
 ecorri= -0.54088708  ecorrs= -0.01206031  ecorrp= -0.02905130  ecorr= -0.58199870

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222000/0/0222000000          -0.0000000   0.0000000  -0.0000000  -0.0000542   0.0000001  -0.0000000  -0.0000000   0.0000000
                                  0.9587925  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 22222200/00/0222000000          -0.0000565   0.0000000  -0.0000000   0.0000000  -0.0000000   0.9587922   0.0000000  -0.0000000
                                  0.0000000  -0.0000000  -0.0000000  -0.0000176  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 222222//00000222000000          -0.0000000   0.0000000   0.9586104   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000440
                                  0.0000000   0.0000384   0.0000000   0.0000000  -0.0000000  -0.0000003  -0.0000000   0.0000000
 222222/000/00222000000           0.0000000   0.9586103  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000440   0.0000000
                                 -0.0000000   0.0000000  -0.0000384  -0.0000000  -0.0000000   0.0000000  -0.0000003  -0.0000000
 222222/0/0000222000000           0.9586103   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000605   0.0000000  -0.0000000
                                  0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 222222/0000/0222000000          -0.0000000   0.0000000  -0.0000000   0.0011334   0.9586098  -0.0000000   0.0000000  -0.0000000
                                  0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000005
 222222/00/000222000000           0.0000000  -0.0000000  -0.0000000   0.9586098  -0.0011334   0.0000000   0.0000000  -0.0000000
                                  0.0000581  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 222222/00000/222000000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000005   0.0000000  -0.0000000  -0.0000000
                                  0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.9445795
 2222220/00/00222000000           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000157  -0.0000000   0.0000000
                                 -0.0000000  -0.0000000  -0.0000000   0.8576097  -0.3575761   0.0000000  -0.0000000  -0.0000000
 222222000//00222000000          -0.0000000   0.0000471   0.0000000  -0.0000000   0.0000000  -0.0000000   0.7657307  -0.0000000
                                  0.0000000  -0.0000000   0.3861230  -0.0000000   0.0000000  -0.0000000  -0.3576596  -0.0000000
 2222220/0/000222000000           0.0000000   0.0000000   0.0000471  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.7656895
                                 -0.0000000  -0.3862047  -0.0000000  -0.0000000   0.0000000  -0.3576596  -0.0000000   0.0000000
 22222200//000222000000          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000078   0.0000000  -0.0000000
                                  0.0000000   0.0000000   0.0000000   0.4287062   0.7153893  -0.0000000  -0.0000000   0.0000000
 2222220//0000222000000          -0.0000000  -0.0000002   0.0000000  -0.0000000   0.0000000   0.0000000  -0.5652764  -0.0000000
                                  0.0000000  -0.0000000   0.6449381  -0.0000000  -0.0000000  -0.0000000  -0.3575925  -0.0000000
 22222200/0/00222000000           0.0000000  -0.0000000   0.0000002   0.0000000   0.0000000   0.0000000   0.0000000   0.5653452
                                  0.0000000   0.6448778   0.0000000  -0.0000000   0.0000000   0.3575925  -0.0000000  -0.0000000
 2222220/000/0222000000           0.0000000   0.0000000   0.0000274  -0.0000000  -0.0000000   0.0000000   0.0000000   0.1157020
                                 -0.0000000  -0.5951990  -0.0000000  -0.0000000   0.0000000   0.6195571   0.0000000  -0.0000000
 2222220000//0222000000           0.0000000   0.0000274  -0.0000000   0.0000000  -0.0000000   0.0000000   0.1157656   0.0000000
                                 -0.0000000  -0.0000000   0.5951867   0.0000000   0.0000000  -0.0000000   0.6195570   0.0000000
 2222220000000222/0/000           0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                                  0.0000000   0.0000000  -0.0000000  -0.0000569   0.5310085   0.0000000   0.0000000  -0.0000000
 22222200000002220//000          -0.0000000   0.0000001   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000165  -0.0000000
                                  0.0000000   0.0000000  -0.0000484   0.0000000  -0.0000000   0.0000000   0.5310075  -0.0000000
 2222220000000222//0000           0.0000000   0.0000000  -0.0000001  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000165
                                  0.0000000  -0.0000484  -0.0000000   0.0000000   0.0000000  -0.5310075   0.0000000   0.0000000
 2222220000000222/00/00           0.0000000   0.0000000   0.0000000   0.0009300  -0.0005384   0.0000000  -0.0000000   0.0000000
                                  0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1009458
 222222000000022200/00/           0.0000000  -0.0000000   0.0000000  -0.0009312  -0.0005362   0.0000000   0.0000000  -0.0000000
                                 -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1009458
 22222200000002220/00/0           0.0000000   0.0000000   0.0000000   0.0000013   0.0010746   0.0000000  -0.0000000   0.0000000
                                  0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.1009456

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000    0.958583   -0.000000    0.000000   -0.000000   -0.000040   -0.000000    0.000000    0.000000
            -0.000000   -0.000040    0.000000    0.000000   -0.000000    0.000000
 2           0.958583    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000050   -0.000000
             0.000022   -0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.000000    0.958583    0.000000   -0.000024   -0.000000   -0.000000   -0.000000    0.000049
            -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.633480   -0.000000   -0.000000    0.719433    0.000000    0.000000   -0.000054   -0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000    0.719433    0.000000    0.000000   -0.633480    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.000061    0.000000    0.000000    0.000000    0.683211   -0.000000   -0.000000    0.000000
             0.000000    0.672685    0.000000    0.000000   -0.000000    0.000000
 7          -0.000044    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.914775    0.000000
            -0.287173    0.000000   -0.000000   -0.000000   -0.000000    0.000031
 8           0.000000   -0.000000   -0.000000   -0.000044   -0.000000    0.239741   -0.000000    0.000000    0.000000    0.928336
             0.000000   -0.000000   -0.000000    0.000031   -0.000000    0.000000
 9          -0.000000    0.000038    0.000000    0.000000    0.000044    0.000000   -0.000000    0.958793    0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 10          0.000000   -0.000000    0.000000    0.000038    0.000000    0.928336   -0.000000   -0.000000   -0.000000   -0.239741
            -0.000000    0.000000   -0.000000    0.000089    0.000000    0.000000
 11         -0.000038   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.287174   -0.000000
             0.914776   -0.000000   -0.000000    0.000000   -0.000000   -0.000089
 12         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.672686   -0.000000   -0.000000   -0.000000
            -0.000000   -0.683211    0.000000   -0.000000   -0.000105    0.000000
 13         -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000074   -0.000000    0.000000    0.000000
             0.000000   -0.000076   -0.000000    0.000000    0.959877   -0.000000
 14          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000095   -0.000000   -0.000000   -0.000000   -0.000007
            -0.000000   -0.000000    0.000000    0.959877   -0.000000    0.000000
 15         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000002   -0.000000
             0.000095   -0.000000    0.000000   -0.000000    0.000000    0.959877
 16         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000    0.960611   -0.000000   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958583    0.000000   -0.000000   -0.000000   -0.000000    0.000002    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.958583    0.000000    0.000000   -0.000000   -0.000000   -0.000001    0.000000   -0.000000   -0.000000
            -0.000001   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.958583   -0.000000   -0.000000   -0.000000    0.000000   -0.000001   -0.000000    0.000001
             0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.958583    0.000000    0.000000   -0.000000   -0.000000    0.000002    0.000000
             0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.958583   -0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 6           0.000002   -0.000000   -0.000000    0.000000   -0.000000    0.958792   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 7           0.000000   -0.000001    0.000000   -0.000000    0.000000   -0.000000    0.958792    0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000001   -0.000000   -0.000000   -0.000000    0.000000    0.958792   -0.000000   -0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 9          -0.000000   -0.000000   -0.000000    0.000002    0.000000   -0.000000   -0.000000   -0.000000    0.958793   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 10          0.000000   -0.000000    0.000001    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.958793
            -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 11         -0.000000   -0.000001    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.958793    0.000000    0.000000   -0.000000    0.000000    0.000000
 12          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.958793    0.000000   -0.000000    0.000000   -0.000000
 13          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.959877    0.000000    0.000000   -0.000000
 14          0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.959877    0.000000   -0.000000
 15          0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000000    0.959877   -0.000000
 16         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.960611

 Energy contributions of internal configurations for state 13
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3749       0.00018405     1.32767677       2222220000000222101000          
  4264       0.00007068    -1.06811071       2222220011000222000000          

 Energy contributions of internal configurations for state 14
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3750       0.00018408     1.32778410       2222220000000222110000          

 Energy contributions of internal configurations for state 15
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  3745       0.00018408     1.32777670       2222220000000222011000          


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95858280 (fixed)   0.95863070 (relaxed)   0.95858280 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00617971   -0.01377173   -0.46948391
 Singles      0.02479230   -0.08151795   -0.08832283
 Pairs        0.05730822    0.00000000   -0.03100260
 Total        1.08828023   -0.09528968   -0.58880934
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96348806
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.40119776
 One electron energy               -11102.84627579
 Two electron energy                 2970.29397839
 Virial quotient                       -0.84071281
 Correlation energy                    -0.58880934
 !MRCI STATE 1.1 Energy             -8132.552297397627

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60427762 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60421358 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60427762 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60186451 (Pople, fixed reference)
 Cluster corrected energies         -8132.60179906 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60186451 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95858281 (fixed)   0.95863071 (relaxed)   0.95858281 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00617969   -0.01377171   -0.46948372
 Singles      0.02479225   -0.08151792   -0.08832279
 Pairs        0.05730824   -0.00000022   -0.03100281
 Total        1.08828019   -0.09528985   -0.58880931
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96348806
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.40119745
 One electron energy               -11102.84627585
 Two electron energy                 2970.29397848
 Virial quotient                       -0.84071281
 Correlation energy                    -0.58880931
 !MRCI STATE 2.1 Energy             -8132.552297366586

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60427756 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60421353 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60427756 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60186445 (Pople, fixed reference)
 Cluster corrected energies         -8132.60179901 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60186445 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95858282 (fixed)   0.95863072 (relaxed)   0.95858282 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00617969   -0.01377171   -0.46948392
 Singles      0.02479224   -0.08151793   -0.08832279
 Pairs        0.05730824   -0.00000000   -0.03100261
 Total        1.08828018   -0.09528964   -0.58880931
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96348806
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.40119819
 One electron energy               -11102.84627553
 Two electron energy                 2970.29397816
 Virial quotient                       -0.84071281
 Correlation energy                    -0.58880931
 !MRCI STATE 3.1 Energy             -8132.552297366433

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60427756 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60421352 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60427756 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60186444 (Pople, fixed reference)
 Cluster corrected energies         -8132.60179900 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60186444 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.71943308 (fixed)   0.95863085 (relaxed)   0.95858295 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00617999   -0.01377198   -0.46948460
 Singles      0.02479159   -0.08151732   -0.08832187
 Pairs        0.05730831   -0.00000000   -0.03100266
 Total        1.08827989   -0.09528930   -0.58880914
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96348806
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.40120486
 One electron energy               -11102.84629158
 Two electron energy                 2970.29399438
 Virial quotient                       -0.84071281
 Correlation energy                    -0.58880914
 !MRCI STATE 4.1 Energy             -8132.552297198858

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60427720 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60421317 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60427720 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60186409 (Pople, fixed reference)
 Cluster corrected energies         -8132.60179864 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60186409 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.71943310 (fixed)   0.95863087 (relaxed)   0.95858297 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00618002   -0.01377199   -0.46948469
 Singles      0.02479146   -0.08151719   -0.08832169
 Pairs        0.05730836    0.00000000   -0.03100268
 Total        1.08827983   -0.09528918   -0.58880906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96348806
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.40120453
 One electron energy               -11102.84629223
 Two electron energy                 2970.29399510
 Virial quotient                       -0.84071281
 Correlation energy                    -0.58880906
 !MRCI STATE 5.1 Energy             -8132.552297123163

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60427709 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60421305 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60427709 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60186397 (Pople, fixed reference)
 Cluster corrected energies         -8132.60179853 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60186397 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.68321062 (fixed)   0.95879222 (relaxed)   0.95879222 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391127   -0.00945988   -0.47354515
 Singles      0.02268584   -0.07665419   -0.08276433
 Pairs        0.06120776   -0.00000000   -0.03316384
 Total        1.08780488   -0.08611408   -0.58947332
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90699284
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41849701
 One electron energy               -11105.49659887
 Two electron energy                 2973.00013271
 Virial quotient                       -0.84070553
 Correlation energy                    -0.58947332
 !MRCI STATE 6.1 Energy             -8132.496466163283

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54822480 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54822480 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54822480 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54580289 (Pople, fixed reference)
 Cluster corrected energies         -8132.54580289 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54580289 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.91477541 (fixed)   0.95879227 (relaxed)   0.95879227 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391111   -0.00945969   -0.47353025
 Singles      0.02268595   -0.07665428   -0.08276448
 Pairs        0.06120769   -0.00001587   -0.03317839
 Total        1.08780475   -0.08612984   -0.58947312
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90699284
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41850725
 One electron energy               -11105.49665931
 Two electron energy                 2973.00019335
 Virial quotient                       -0.84070553
 Correlation energy                    -0.58947312
 !MRCI STATE 7.1 Energy             -8132.496465957963

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54822450 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54822450 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54822450 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54580259 (Pople, fixed reference)
 Cluster corrected energies         -8132.54580259 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54580259 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.92833561 (fixed)   0.95879227 (relaxed)   0.95879227 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391111   -0.00945969   -0.47354482
 Singles      0.02268594   -0.07665431   -0.08276448
 Pairs        0.06120770   -0.00000000   -0.03316381
 Total        1.08780475   -0.08611399   -0.58947312
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90699284
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41850332
 One electron energy               -11105.49665164
 Two electron energy                 2973.00018568
 Virial quotient                       -0.84070553
 Correlation energy                    -0.58947312
 !MRCI STATE 8.1 Energy             -8132.496465957938

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54822450 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54822450 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54822450 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54580259 (Pople, fixed reference)
 Cluster corrected energies         -8132.54580259 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54580259 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95879251 (fixed)   0.95879252 (relaxed)   0.95879252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391112   -0.00945980   -0.47354540
 Singles      0.02268527   -0.07665376   -0.08276368
 Pairs        0.06120781    0.00000000   -0.03316386
 Total        1.08780420   -0.08611356   -0.58947294
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90699284
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41848440
 One electron energy               -11105.49653008
 Two electron energy                 2973.00006430
 Virial quotient                       -0.84070554
 Correlation energy                    -0.58947294
 !MRCI STATE 9.1 Energy             -8132.496465781467

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54822398 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54822398 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54822398 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54580206 (Pople, fixed reference)
 Cluster corrected energies         -8132.54580206 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54580206 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92833594 (fixed)   0.95879264 (relaxed)   0.95879264 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391069   -0.00945931   -0.47354460
 Singles      0.02268553   -0.07665411   -0.08276413
 Pairs        0.06120770   -0.00000000   -0.03316381
 Total        1.08780392   -0.08611342   -0.58947254
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90699284
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41850094
 One electron energy               -11105.49667045
 Two electron energy                 2973.00020506
 Virial quotient                       -0.84070553
 Correlation energy                    -0.58947254
 !MRCI STATE 10.1 Energy            -8132.496465382453

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54822338 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54822338 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54822338 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54580146 (Pople, fixed reference)
 Cluster corrected energies         -8132.54580146 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54580146 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.91477574 (fixed)   0.95879265 (relaxed)   0.95879265 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391068   -0.00945931   -0.47358719
 Singles      0.02268554   -0.07665407   -0.08276413
 Pairs        0.06120767    0.00004627   -0.03312123
 Total        1.08780389   -0.08606711   -0.58947254
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90699284
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41851137
 One electron energy               -11105.49669043
 Two electron energy                 2973.00022505
 Virial quotient                       -0.84070553
 Correlation energy                    -0.58947254
 !MRCI STATE 11.1 Energy            -8132.496465382439

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54822337 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54822337 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54822337 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54580145 (Pople, fixed reference)
 Cluster corrected energies         -8132.54580145 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54580145 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.68321093 (fixed)   0.95879264 (relaxed)   0.95879264 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00391062   -0.00945923   -0.47354447
 Singles      0.02268561   -0.07665418   -0.08276425
 Pairs        0.06120768   -0.00000000   -0.03316378
 Total        1.08780392   -0.08611341   -0.58947250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90699284
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41851083
 One electron energy               -11105.49671469
 Two electron energy                 2973.00024935
 Virial quotient                       -0.84070553
 Correlation energy                    -0.58947250
 !MRCI STATE 12.1 Energy            -8132.496465339585

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54822334 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54822334 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54822334 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54580142 (Pople, fixed reference)
 Cluster corrected energies         -8132.54580142 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54580142 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95987670 (fixed)   0.96003278 (relaxed)   0.95987670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00483405   -0.01080493   -0.46910674
 Singles      0.02090666   -0.07595974   -0.08120681
 Pairs        0.05960751   -0.00000000   -0.03197554
 Total        1.08534822   -0.08676467   -0.58228908
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90291015
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.34662643
 One electron energy               -11102.63682129
 Two electron energy                 2970.14884779
 Virial quotient                       -0.84071090
 Correlation energy                    -0.58506335
 !MRCI STATE 13.1 Energy            -8132.487973502769

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53790762 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53770116 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53790762 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53547612 (Pople, fixed reference)
 Cluster corrected energies         -8132.53526616 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53547612 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95987671 (fixed)   0.96003282 (relaxed)   0.95987672 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00483407   -0.01080491   -0.47167530
 Singles      0.02090657   -0.07595961   -0.08126011
 Pairs        0.05960755   -0.00000000   -0.03212789
 Total        1.08534818   -0.08676452   -0.58506329
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90291015
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.34662608
 One electron energy               -11102.63683578
 Two electron energy                 2970.14886233
 Virial quotient                       -0.84071090
 Correlation energy                    -0.58506329
 !MRCI STATE 14.1 Energy            -8132.487973446685

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53790754 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53770105 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53790754 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53547604 (Pople, fixed reference)
 Cluster corrected energies         -8132.53526605 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53547604 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.95987669 (fixed)   0.96003280 (relaxed)   0.95987670 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00483407   -0.01080491   -0.01256108
 Singles      0.02090655   -0.07595965   -0.08126012
 Pairs        0.05960760   -0.49829872   -0.49124209
 Total        1.08534823   -0.58506329   -0.58506329
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90291015
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.34661671
 One electron energy               -11102.63681694
 Two electron energy                 2970.14884350
 Virial quotient                       -0.84071090
 Correlation energy                    -0.58506329
 !MRCI STATE 15.1 Energy            -8132.487973446129

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53790756 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53770108 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53790756 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53547607 (Pople, fixed reference)
 Cluster corrected energies         -8132.53526608 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53547607 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.96061095 (fixed)   0.96062505 (relaxed)   0.96061095 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00713927   -0.01596513   -0.46704592
 Singles      0.02245259   -0.08002091   -0.08590148
 Pairs        0.05409782    0.00000000   -0.02905130
 Total        1.08368968   -0.09598604   -0.58199870
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90568442
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.19205141
 One electron energy               -11094.35899221
 Two electron energy                 2961.87408336
 Virial quotient                       -0.84072402
 Correlation energy                    -0.57922443
 !MRCI STATE 16.1 Energy            -8132.484908853246

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53338396 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53336553 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53338396 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53096144 (Pople, fixed reference)
 Cluster corrected energies         -8132.53094274 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53096144 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.55       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3029.88       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     46015.95  36340.98   9643.98     16.19      0.12     14.23
 REAL TIME  *     46356.12 SEC
 DISK USED  *         3.12 GB (local),       75.10 GB (total)
 SF USED    *        17.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =     -8132.60427762  AU                              
 SETTING HLSDIAG(14)    =     -8132.60427756  AU                              
 SETTING HLSDIAG(15)    =     -8132.60427756  AU                              
 SETTING HLSDIAG(16)    =     -8132.60427720  AU                              
 SETTING HLSDIAG(17)    =     -8132.60427709  AU                              
 SETTING HLSDIAG(18)    =     -8132.54822480  AU                              
 SETTING HLSDIAG(19)    =     -8132.54822450  AU                              
 SETTING HLSDIAG(20)    =     -8132.54822450  AU                              
 SETTING HLSDIAG(21)    =     -8132.54822398  AU                              
 SETTING HLSDIAG(22)    =     -8132.54822338  AU                              
 SETTING HLSDIAG(23)    =     -8132.54822337  AU                              
 SETTING HLSDIAG(24)    =     -8132.54822334  AU                              
 SETTING HLSDIAG(25)    =     -8132.53790762  AU                              
 SETTING HLSDIAG(26)    =     -8132.53790754  AU                              
 SETTING HLSDIAG(27)    =     -8132.53790756  AU                              
 SETTING HLSDIAG(28)    =     -8132.53338396  AU                              


         HLSDIAG
    -8132.652742
    -8132.594583
    -8132.594583
    -8132.594583
    -8132.594583
    -8132.594583
    -8132.539890
    -8132.539890
    -8132.539890
    -8132.539890
    -8132.539890
    -8132.530692
    -8132.604278
    -8132.604278
    -8132.604278
    -8132.604277
    -8132.604277
    -8132.548225
    -8132.548224
    -8132.548224
    -8132.548224
    -8132.548223
    -8132.548223
    -8132.548223
    -8132.537908
    -8132.537908
    -8132.537908
    -8132.533384
                                                  

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

 Time for Seward_LS:     223.34 sec

 CPU time:    223.34 sec, REAL time:    235.89 sec


 SORTLS1 read    61450532. and wrote    61450532. SO integrals in   264 records. CPU time:      0.44 sec, REAL time:      0.84 sec
 SORTLS2 read    61450532. and wrote    61450532. SO integrals in    72 records. CPU time:      0.13 sec, REAL time:      0.33 sec

 FILE SIZES: FILE 1:   171.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3029.88       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     46241.45    225.42  36340.98   9643.98     16.19      0.12     14.23
 REAL TIME  *     46594.88 SEC
 DISK USED  *         3.12 GB (local),       76.85 GB (total)
 SF USED    *        17.54 GB
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
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=  12

 Original energies:**************************************************************************************************************
                   **********************
 Replaced energies:**************************************************************************************************************
                   **********************

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.0  NSTATE=  16

 Original energies:**************************************************************************************************************
                   ******************************************************************
 Replaced energies:**************************************************************************************************************
                   ******************************************************************



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -8132.65274225

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   12764.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   12764.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   12764.53       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   12764.55       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   12764.53       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   24768.18       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24768.17       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24768.17       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24768.19
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00       0.00       0.00      61.05       0.00       0.00      -0.00       0.00     -10.33      -0.00
                           -0.00      -0.00     -61.05       0.00      -0.00       0.00     -10.33       0.00      -0.00       0.00

   14   2.1  1.0  1.0      -0.00     -61.05      -0.00      -0.00      -0.00       0.00      -0.00      10.33       0.00      -0.00
                            0.00       0.00      -0.00       0.00     -99.67     -70.46       0.00       0.00      -0.00     -11.98

   15   3.1  1.0  1.0      -0.00      -0.00      -0.00       0.00     110.85     -51.10      -0.00       0.00      -0.00      20.50
                            0.00      61.05       0.00      -0.00      -0.00      -0.00       0.00     -10.33      -0.00      -0.00

   16   4.1  1.0  1.0      -0.00       0.00      60.92       0.00       0.00      -0.00      10.31      -0.00       0.00       0.00
                           -0.00       0.00       0.00      61.17      -0.00       0.00      -0.00      -0.00     -10.35      -0.00

   17   5.1  1.0  1.0       0.00      -0.00    -105.81       0.00      -0.00       0.00     -17.86       0.00       0.00       0.00
                           -0.00       0.00      -0.00     105.66       0.00      -0.00      -0.00      -0.00     -17.84       0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00      22.96      -0.00      -0.00       0.00       0.00      76.55       0.00
                           -0.00       0.00     -22.96      -0.00       0.00      -0.00      76.55      -0.00       0.00      -0.00

   19   7.1  1.0  1.0       0.00      28.98       0.00      -0.00       0.00       0.00       0.00      96.66       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -2.39     -26.57       0.00       0.00      -0.00     -21.67

   20   8.1  1.0  1.0      -0.00       0.00      -0.00       0.00       7.19     -25.69      -0.00       0.00       0.00     -50.86
                           -0.00     -28.98      -0.00       0.00      -0.00       0.00      -0.00     -96.66       0.00      -0.00

   21   9.1  1.0  1.0       0.00      -0.00      22.95      -0.00      -0.00       0.00     -76.55       0.00      -0.00       0.00
                            0.00      -0.00       0.00      22.95       0.00      -0.00       0.00       0.00      76.55      -0.00

   22  10.1  1.0  1.0      -0.01      -0.00      -0.00       0.00     -23.51     -14.75       0.00      -0.00      -0.00      57.78
                           -0.00       1.77       0.00      -0.00      -0.00      -0.00       0.00       5.86      -0.00      -0.00

   23  11.1  1.0  1.0       0.00       1.76      -0.00      -0.00       0.00      -0.00      -0.00       5.85      -0.00      -0.00
                           -0.01      -0.00       0.00      -0.00     -25.80      10.22       0.00      -0.00      -0.00      92.39

   24  12.1  1.0  1.0      -0.00       0.00      -0.00      17.77      -0.00       0.00       0.00       0.00      59.32      -0.00
                            0.00      -0.00      17.78      -0.00      -0.00       0.00     -59.33       0.00      -0.00       0.00

   25  13.1  1.0  1.0      -0.00       0.00       0.00      44.00       0.00       0.00      -0.00      -0.00    -184.33       0.00
                            0.00      -0.00      44.00       0.00       0.00      -0.00     184.33       0.00      -0.00      -0.00

   26  14.1  1.0  1.0     -90.90      -0.00       0.00      -0.00     -21.23     -46.10      -0.00       0.00      -0.00     -20.48
                            0.00      44.00       0.00       0.00       0.00      -0.00       0.00    -184.34       0.00       0.00

   27  15.1  1.0  1.0      -0.00     -44.00       0.00       0.00      -0.00       0.00      -0.00     184.34      -0.00      -0.00
                           90.90       0.00      -0.00       0.00      29.28     -41.45       0.00      -0.00      -0.00     173.35

   28  16.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      15.81    -171.90      -0.00       0.00       0.00      12.06

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -86.34       0.00       0.00       0.00     -14.61      -0.00       0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      86.34      -0.00       0.00      -0.00      -0.00     -14.61      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     172.67      -0.00      -0.00      -0.00       0.00      -0.00     -29.11      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.20       0.00       0.00       0.00      -0.00       0.00       0.03       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -2.97      32.31      -0.00       0.00       0.00      44.87

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       7.85       0.00      -0.00       0.00     -26.13       0.00      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -7.84      -0.00      -0.00      -0.00      -0.00     -26.12       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -32.43       0.00       0.00      -0.00       0.00      -0.00    -108.25      -0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      40.30      -0.00      -0.00       0.00       0.00     134.47      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      40.30      -0.00      -0.00       0.00    -134.46       0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00      -0.00       0.00      43.52       4.00      -0.00       0.00      -0.00    -132.48

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          128.55       0.00      -0.00       0.00     -71.43      -6.57      -0.00      -0.00      -0.00    -274.11

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -62.23      -0.00       0.00       0.00      -0.00     260.68      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      62.23       0.00       0.00      -0.00     260.68       0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00       0.00       0.00      61.05       0.00       0.00      -0.00       0.00     -10.33      -0.00
                            0.00       0.00      61.05      -0.00       0.00      -0.00      10.33      -0.00       0.00      -0.00

   46   2.1  1.0 -1.0      -0.00     -61.05      -0.00      -0.00      -0.00       0.00      -0.00      10.33       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      99.67      70.46      -0.00      -0.00       0.00      11.98

   47   3.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00     110.85     -51.10      -0.00       0.00      -0.00      20.50
                           -0.00     -61.05      -0.00       0.00       0.00       0.00      -0.00      10.33       0.00       0.00

   48   4.1  1.0 -1.0      -0.00       0.00      60.92       0.00       0.00      -0.00      10.31      -0.00       0.00       0.00
                            0.00      -0.00      -0.00     -61.17       0.00      -0.00       0.00       0.00      10.35       0.00

   49   5.1  1.0 -1.0       0.00      -0.00    -105.81       0.00      -0.00       0.00     -17.86       0.00       0.00       0.00
                            0.00      -0.00       0.00    -105.66      -0.00       0.00       0.00       0.00      17.84      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00      22.96      -0.00      -0.00       0.00       0.00      76.55       0.00
                            0.00      -0.00      22.96       0.00      -0.00       0.00     -76.55       0.00      -0.00       0.00

   51   7.1  1.0 -1.0       0.00      28.98       0.00      -0.00       0.00       0.00       0.00      96.66       0.00       0.00
                           -0.00       0.00       0.00       0.00       2.39      26.57      -0.00      -0.00       0.00      21.67

   52   8.1  1.0 -1.0      -0.00       0.00      -0.00       0.00       7.19     -25.69      -0.00       0.00       0.00     -50.86
                            0.00      28.98       0.00      -0.00       0.00      -0.00       0.00      96.66      -0.00       0.00

   53   9.1  1.0 -1.0       0.00      -0.00      22.95      -0.00      -0.00       0.00     -76.55       0.00      -0.00       0.00
                           -0.00       0.00      -0.00     -22.95      -0.00       0.00      -0.00      -0.00     -76.55       0.00

   54  10.1  1.0 -1.0      -0.01      -0.00      -0.00       0.00     -23.51     -14.75       0.00      -0.00      -0.00      57.78
                            0.00      -1.77      -0.00       0.00       0.00       0.00      -0.00      -5.86       0.00       0.00

   55  11.1  1.0 -1.0       0.00       1.76      -0.00      -0.00       0.00      -0.00      -0.00       5.85      -0.00      -0.00
                            0.01       0.00      -0.00       0.00      25.80     -10.22      -0.00       0.00       0.00     -92.39

   56  12.1  1.0 -1.0      -0.00       0.00      -0.00      17.77      -0.00       0.00       0.00       0.00      59.32      -0.00
                           -0.00       0.00     -17.78       0.00       0.00      -0.00      59.33      -0.00       0.00      -0.00

   57  13.1  1.0 -1.0      -0.00       0.00       0.00      44.00       0.00       0.00      -0.00      -0.00    -184.33       0.00
                           -0.00       0.00     -44.00      -0.00      -0.00       0.00    -184.33      -0.00       0.00       0.00

   58  14.1  1.0 -1.0     -90.90      -0.00       0.00      -0.00     -21.23     -46.10      -0.00       0.00      -0.00     -20.48
                           -0.00     -44.00      -0.00      -0.00      -0.00       0.00      -0.00     184.34      -0.00      -0.00

   59  15.1  1.0 -1.0      -0.00     -44.00       0.00       0.00      -0.00       0.00      -0.00     184.34      -0.00      -0.00
                          -90.90      -0.00       0.00      -0.00     -29.28      41.45      -0.00       0.00       0.00    -173.35

   60  16.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00     -61.05      -0.00       0.00      -0.00      -0.00      28.98       0.00
                            0.00       0.00       0.00      -0.00     -61.05      -0.00      -0.00      -0.00       0.00      28.98

    3   3.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00      60.92    -105.81       0.00       0.00      -0.00
                            0.00       0.00      61.05       0.00      -0.00      -0.00       0.00      22.96       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00      61.05      -0.00       0.00       0.00       0.00      22.96      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     -61.17    -105.66       0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00      -0.00     110.85       0.00      -0.00      -0.00       0.00       7.19
                            0.00       0.00       0.00      99.67       0.00       0.00      -0.00      -0.00       2.39       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00     -51.10      -0.00       0.00      -0.00       0.00     -25.69
                            0.00       0.00      -0.00      70.46       0.00      -0.00       0.00       0.00      26.57      -0.00

    7   7.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      10.31     -17.86       0.00       0.00      -0.00
                            0.00       0.00      10.33      -0.00      -0.00       0.00       0.00     -76.55      -0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00      10.33       0.00      -0.00       0.00       0.00      96.66       0.00
                            0.00       0.00      -0.00      -0.00      10.33       0.00       0.00       0.00      -0.00      96.66

    9   9.1  0.0  0.0       0.00       0.00     -10.33       0.00      -0.00       0.00       0.00      76.55       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      10.35      17.84      -0.00       0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00      -0.00      -0.00      20.50       0.00       0.00       0.00       0.00     -50.86
                            0.00       0.00      -0.00      11.98       0.00       0.00      -0.00       0.00      21.67       0.00

   11  11.1  0.0  0.0   24768.19       0.00      -0.00      -0.00       1.96       0.00       0.00      -0.00      -0.00     -72.98
                            0.00       0.00      -0.00     -16.76      -0.00       0.00       0.00      -0.00      86.27      -0.00

   12  12.1  0.0  0.0       0.00   26786.91      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   13   1.1  1.0  1.0      -0.00      -0.00   10636.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     174.36      -0.21       0.00      -0.00       0.00

   14   2.1  1.0  1.0      -0.00       0.00       0.00   10636.77       0.00       0.00       0.00       0.00       0.00       0.00
                           16.76       0.00       0.00      -0.00      87.19      -0.00       0.00       0.00      -0.00      -0.68

   15   3.1  1.0  1.0       1.96      -0.00       0.00       0.00   10636.77       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -87.19      -0.00      -0.00       0.00       0.00       0.68       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   10636.85       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -174.36       0.00       0.00      -0.00      -0.00       2.68       0.00      -0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   10636.87       0.00       0.00       0.00
                           -0.00      -0.00       0.21      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   18   6.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   22938.93       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -2.68       0.00       0.00      -0.00       0.00

   19   7.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22939.00       0.00
                          -86.27       0.00       0.00       0.00      -0.68      -0.00      -0.00       0.00      -0.00    -238.97

   20   8.1  1.0  1.0     -72.98      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22938.99
                            0.00      -0.00      -0.00       0.68      -0.00       0.00       0.00      -0.00     238.97      -0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       2.68      -0.00       0.00      -0.00      -0.00    -167.46      -0.00      -0.00

   22  10.1  1.0  1.0     -72.19      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -3.36      -0.00       0.00       0.00       0.00      62.72       0.00

   23  11.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.79      -0.01       0.00      -0.00      -3.36      -0.00      -0.00      -0.00      -0.00      62.74

   24  12.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -3.65       0.00       0.00      -0.00

   25  13.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.01       7.67      -0.00       0.00      -0.00

   26  14.1  1.0  1.0     211.94    -105.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       6.68       0.00       0.00      -0.00      -0.00      -0.02       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          123.64     105.55      -0.00       0.00      -6.68      -0.00       0.00       0.00      -0.00       0.02

   28  16.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00     -61.65      -0.00      -0.00      -0.00       0.00       2.42      -0.00
                           26.48      -0.00       0.00      -0.00     -61.65       0.00      -0.00      -0.00      -0.00       2.42

   30   2.1  1.0  0.0       0.00       0.00      61.65       0.00       0.00      -0.00      -0.00       1.93      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00     -61.77    -106.70       0.00      -0.00       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00      61.52    -106.84       0.00       0.00      -0.00
                            0.00      -0.00      61.65      -0.00       0.00      -0.00       0.00       1.93      -0.00      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00     -61.52       0.00      -0.00      -0.00      -0.00      -2.17
                            0.00      -0.00      -0.00      61.77       0.00       0.00      -0.00       0.00       2.17      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00     106.84       0.00      -0.00       0.00       0.00       0.39
                           -0.00      -0.00       0.00     106.70      -0.00       0.00       0.00      -0.00       0.39       0.00

   34   6.1  1.0  0.0       0.00       0.00      -0.00      -1.93      -0.00       0.00      -0.00       0.00      53.30       0.00
                           98.50      -0.00       0.00      -0.00      -1.93      -0.00       0.00      -0.00       0.00      53.31

   35   7.1  1.0  0.0       0.00       0.00      -2.42       0.00      -0.00       0.00      -0.00     -53.30       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -2.17      -0.39      -0.00       0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00      -0.00       0.00       2.17      -0.39      -0.00      -0.00      -0.00
                            0.00      -0.00      -2.42      -0.00       0.00       0.00      -0.00     -53.31       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00      -0.00       0.00      -1.93       0.00      -0.00       0.00       0.00     -89.02
                           -0.00      -0.00       0.00       1.93      -0.00       0.00       0.00       0.00      89.03       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       1.06       2.05      -0.00       0.00      -0.00
                           -0.00       0.00       0.16      -0.00       0.00      -0.00      -0.00    -105.72      -0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00      -0.16      -0.00      -0.00       0.00       0.00     105.72       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       1.06      -2.05      -0.00       0.00      -0.00

   40  12.1  1.0  0.0       0.00       0.00      -0.00      -1.47      -0.00       0.00       0.00      -0.00      27.68       0.00
                           60.35      -0.02      -0.00       0.00       1.47       0.00       0.00       0.00      -0.00     -27.67

   41  13.1  1.0  0.0       0.00       0.00      -0.00      -4.73      -0.00       0.00      -0.00      -0.00       0.00       0.00
                          124.87     149.28      -0.00      -0.00       4.73       0.00       0.00       0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       4.73       2.74       0.00      -0.00       0.00
                           -0.00       0.00       4.73       0.00      -0.00      -0.00       0.00       0.02      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       4.73      -0.00       0.00       0.00      -0.00       0.02      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -4.72       2.75       0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   45   1.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.76      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       1.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           86.27      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0     -72.98      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0     -72.19      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.79       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0     211.94    -105.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -123.64    -105.55      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00      -0.01       0.00      -0.00      -0.00     -90.90      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.01      -0.00      -0.00      -0.00     -90.90       0.00       0.00       0.00

    2   2.1  0.0  0.0      -0.00      -0.00       1.76       0.00       0.00      -0.00     -44.00       0.00       0.00       0.00
                            0.00      -1.77       0.00       0.00       0.00     -44.00      -0.00       0.00       0.00      -0.00

    3   3.1  0.0  0.0      22.95      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -17.78     -44.00      -0.00       0.00       0.00       0.00      86.34

    4   4.1  0.0  0.0      -0.00       0.00      -0.00      17.77      44.00      -0.00       0.00      -0.00       0.00       0.00
                          -22.95       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    5   5.1  0.0  0.0      -0.00     -23.51       0.00      -0.00       0.00     -21.23      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      25.80       0.00      -0.00      -0.00     -29.28      -0.00     -15.81      -0.00

    6   6.1  0.0  0.0       0.00     -14.75      -0.00       0.00       0.00     -46.10       0.00       0.00       0.00       0.00
                            0.00       0.00     -10.22      -0.00       0.00       0.00      41.45      -0.00     171.90      -0.00

    7   7.1  0.0  0.0     -76.55       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      59.33    -184.33      -0.00      -0.00      -0.00       0.00      14.61

    8   8.1  0.0  0.0       0.00      -0.00       5.85       0.00      -0.00       0.00     184.34      -0.00       0.00       0.00
                           -0.00      -5.86       0.00      -0.00      -0.00     184.34       0.00      -0.00      -0.00       0.00

    9   9.1  0.0  0.0      -0.00      -0.00      -0.00      59.32    -184.33      -0.00      -0.00      -0.00       0.00       0.00
                          -76.55       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   10  10.1  0.0  0.0       0.00      57.78      -0.00      -0.00       0.00     -20.48      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -92.39      -0.00       0.00      -0.00    -173.35      -0.00     -12.06      -0.00

   11  11.1  0.0  0.0       0.00     -72.19       0.00      -0.00      -0.00     211.94       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -3.79       0.00       0.00       0.00    -123.64       0.00     -26.48       0.00

   12  12.1  0.0  0.0       0.00      -0.01      -0.00       0.00      -0.00    -105.55       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.01      -0.00      -0.00       0.00    -105.55       0.00       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      61.65
                           -2.68      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -61.65       0.00
                            0.00       3.36       0.00       0.00       0.00      -6.68      -0.00       0.00       0.00      -0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       3.36       0.00       0.00      -0.00       6.68       0.00      61.65      -0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.01      -0.00       0.00       0.00      -0.00      61.77

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00       3.65      -7.67       0.00      -0.00      -0.00       0.00     106.70

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.93
                          167.46      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.42      -0.00
                            0.00     -62.72       0.00      -0.00      -0.00       0.02       0.00      -0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00     -62.74       0.00       0.00      -0.00      -0.02       0.00      -2.42      -0.00

   21   9.1  1.0  1.0   22939.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       1.93

   22  10.1  1.0  1.0       0.00   22939.24       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      71.54       0.00       0.00      -0.00      -0.00       0.00       0.16      -0.00

   23  11.1  1.0  1.0       0.00       0.00   22939.24       0.00       0.00       0.00       0.00       0.00       0.16       0.00
                           -0.00     -71.54      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   22939.25       0.00       0.00       0.00       0.00       0.00       1.47
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.01      -0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   25203.29       0.00       0.00       0.00       0.00       4.73
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      57.59      -0.00      -0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25203.31       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00    -221.78       0.00       4.73       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   25203.30       0.00      -4.73       0.00
                           -0.00       0.00       0.00       0.00      -0.00     221.78       0.00      -0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26196.12       0.00      -0.00
                            0.00      -0.00       0.00       0.01     -57.59      -0.00       0.00      -0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00      -0.00       0.16       0.00       0.00      -0.00      -4.73       0.00   10636.76       0.00
                           -0.00      -0.16      -0.00       0.00       0.00      -4.73      -0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0      -0.00      -0.00       0.00       1.47       4.73      -0.00       0.00      -0.00       0.00   10636.77
                           -1.93       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       1.93      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -1.47      -4.73       0.00      -0.00      -0.00      -0.00      -0.00

   32   4.1  1.0  0.0      -0.00      -1.06      -0.00      -0.00      -0.00      -4.73      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -1.06      -0.00      -0.00       0.00       4.72      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00      -2.05      -0.00      -0.00       0.00      -2.74       0.00       0.00       0.00       0.00
                           -0.00       0.00       2.05      -0.00      -0.00      -0.00      -2.75      -0.00      -0.00      -0.00

   34   6.1  1.0  0.0      -0.00       0.00    -105.72       0.00       0.00      -0.00      -0.02       0.00       0.00       0.00
                           -0.00     105.72       0.00      -0.00      -0.00      -0.02      -0.00       0.00      -0.00      -0.00

   35   7.1  1.0  0.0      -0.00      -0.00      -0.00     -27.68      -0.00       0.00       0.00       0.00       0.00       0.00
                          -89.03       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   36   8.1  1.0  0.0      89.02       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      27.67       0.00       0.00       0.00      -0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00      78.05       0.00       0.00       0.00      -0.01       0.00      -0.00       0.00       0.00
                            0.00      -0.00      78.04       0.00       0.00       0.00       0.01      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0     -78.05       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00    -142.35      -0.03       0.00      -0.00      -0.00      -0.00      -0.00

   39  11.1  1.0  0.0      -0.00       0.00       0.00    -142.35      -0.03       0.00      -0.00       0.00       0.00       0.00
                          -78.04      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   40  12.1  1.0  0.0      -0.00      -0.00     142.35      -0.00      -0.00      -0.00       0.03      -0.00       0.00       0.00
                           -0.00     142.35      -0.00       0.00       0.00      -0.03      -0.00      -0.00      -0.00      -0.00

   41  13.1  1.0  0.0      -0.00      -0.00       0.03       0.00      -0.00      -0.00    -156.82       0.00       0.00       0.00
                           -0.00       0.03       0.00      -0.00       0.00     156.82      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.01       0.00      -0.00       0.00       0.00       0.00      -0.00     -40.72       0.00       0.00
                           -0.00      -0.00      -0.00       0.03    -156.82      -0.00       0.00       0.00      -0.00      -0.00

   43  15.1  1.0  0.0      -0.00       0.00       0.00      -0.03     156.82       0.00      -0.00      -0.00       0.00       0.00
                           -0.01       0.00      -0.00       0.00       0.00      -0.00      -0.00     -40.72      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00      -0.00      40.72       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      40.72      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -61.65
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      61.65       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      61.65      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      61.77

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     106.70

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.93
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.42       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.42      -0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.93

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.16      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.16      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.47
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -4.73
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.73       0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.73      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.02

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -172.67       0.20      -0.00      -0.00       0.00      32.43       0.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -7.85       0.00      -0.00      -0.00     -40.30       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -86.34       0.00      -0.00      -0.00      -0.00       7.84      -0.00     -40.30       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       2.97       0.00       0.00       0.00       0.00       0.00     -43.52

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -32.31      -0.00       0.00      -0.00       0.00      -0.00      -4.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      26.13       0.00       0.00      -0.00     134.46       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      29.11      -0.03      -0.00      -0.00       0.00     108.25      -0.00      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           14.61       0.00      -0.00      -0.00       0.00      26.12       0.00    -134.47      -0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     -44.87      -0.00      -0.00       0.00       0.00      -0.00     132.48

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -98.50       0.00      -0.00       0.00       0.00       0.00     -60.35

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.02

   13   1.1  1.0  1.0       0.00       0.00       0.00      -0.00      -2.42       0.00      -0.00       0.00      -0.16      -0.00
                          -61.65       0.00      -0.00      -0.00      -0.00       2.42      -0.00      -0.16      -0.00       0.00

   14   2.1  1.0  1.0      -0.00       0.00       0.00      -1.93       0.00      -0.00       0.00       0.00      -0.00      -1.47
                            0.00     -61.77    -106.70       0.00      -0.00       0.00      -1.93       0.00       0.00      -0.00

   15   3.1  1.0  1.0       0.00     -61.52     106.84      -0.00      -0.00       0.00      -1.93       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       1.93      -0.00      -0.00       0.00      -0.00       0.00      -1.47

   16   4.1  1.0  1.0      61.52       0.00       0.00       0.00       0.00       2.17       0.00       1.06       0.00       0.00
                            0.00      -0.00      -0.00       0.00       2.17      -0.00      -0.00       0.00      -1.06      -0.00

   17   5.1  1.0  1.0    -106.84      -0.00      -0.00      -0.00      -0.00      -0.39      -0.00       2.05       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.39       0.00      -0.00       0.00       2.05      -0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00       0.00     -53.30      -0.00       0.00      -0.00     105.72      -0.00
                           -1.93      -0.00       0.00       0.00       0.00      53.31      -0.00     105.72       0.00      -0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00      53.30       0.00      -0.00       0.00       0.00       0.00      27.68
                            0.00      -2.17      -0.39      -0.00      -0.00      -0.00     -89.03       0.00      -0.00       0.00

   20   8.1  1.0  1.0      -0.00      -2.17       0.39       0.00       0.00      -0.00     -89.02      -0.00       0.00       0.00
                            0.00       0.00      -0.00     -53.31       0.00      -0.00      -0.00      -0.00       0.00      27.67

   21   9.1  1.0  1.0       1.93      -0.00       0.00      -0.00      -0.00      89.02       0.00     -78.05      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      89.03       0.00      -0.00      -0.00      78.04       0.00

   22  10.1  1.0  1.0      -0.00      -1.06      -2.05       0.00      -0.00       0.00      78.05       0.00       0.00      -0.00
                            0.00      -0.00      -0.00    -105.72      -0.00       0.00       0.00      -0.00       0.00    -142.35

   23  11.1  1.0  1.0       0.00      -0.00      -0.00    -105.72      -0.00      -0.00       0.00      -0.00       0.00     142.35
                           -0.00       1.06      -2.05      -0.00       0.00      -0.00     -78.04      -0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00      -0.00      -0.00       0.00     -27.68      -0.00       0.00       0.00    -142.35      -0.00
                            1.47       0.00       0.00       0.00      -0.00     -27.67      -0.00     142.35      -0.00      -0.00

   25  13.1  1.0  1.0       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.03      -0.00
                            4.73       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.03       0.00      -0.00

   26  14.1  1.0  1.0      -0.00      -4.73      -2.74      -0.00       0.00      -0.00      -0.01      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.02      -0.00      -0.00      -0.00      -0.00      -0.00       0.03

   27  15.1  1.0  1.0      -0.00      -0.00       0.00      -0.02       0.00       0.00       0.00      -0.00      -0.00       0.03
                            0.00      -4.72       2.75       0.00      -0.00      -0.00      -0.01       0.00      -0.00       0.00

   28  16.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   10636.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   10636.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   10636.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   22938.93       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   22939.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   22938.99       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   22939.11       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22939.24       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22939.24       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22939.25
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00       2.42      -0.00       0.00      -0.00       0.16       0.00
                          -61.65       0.00      -0.00      -0.00      -0.00       2.42      -0.00      -0.16      -0.00       0.00

   46   2.1  1.0 -1.0       0.00      -0.00      -0.00       1.93      -0.00       0.00      -0.00      -0.00       0.00       1.47
                            0.00     -61.77    -106.70       0.00      -0.00       0.00      -1.93       0.00       0.00      -0.00

   47   3.1  1.0 -1.0       0.00      61.52    -106.84       0.00       0.00      -0.00       1.93      -0.00       0.00       0.00
                            0.00      -0.00       0.00       1.93      -0.00      -0.00       0.00      -0.00       0.00      -1.47

   48   4.1  1.0 -1.0     -61.52       0.00      -0.00      -0.00      -0.00      -2.17      -0.00      -1.06      -0.00      -0.00
                            0.00       0.00      -0.00       0.00       2.17      -0.00      -0.00       0.00      -1.06      -0.00

   49   5.1  1.0 -1.0     106.84       0.00      -0.00       0.00       0.00       0.39       0.00      -2.05      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.39       0.00      -0.00       0.00       2.05      -0.00

   50   6.1  1.0 -1.0      -0.00       0.00      -0.00       0.00      53.30       0.00      -0.00       0.00    -105.72       0.00
                           -1.93      -0.00       0.00      -0.00       0.00      53.31      -0.00     105.72       0.00      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00      -0.00     -53.30       0.00       0.00      -0.00      -0.00      -0.00     -27.68
                            0.00      -2.17      -0.39      -0.00       0.00      -0.00     -89.03       0.00      -0.00       0.00

   52   8.1  1.0 -1.0       0.00       2.17      -0.39      -0.00      -0.00      -0.00      89.02       0.00      -0.00      -0.00
                            0.00       0.00      -0.00     -53.31       0.00       0.00      -0.00      -0.00       0.00      27.67

   53   9.1  1.0 -1.0      -1.93       0.00      -0.00       0.00       0.00     -89.02       0.00      78.05       0.00       0.00
                           -0.00       0.00       0.00       0.00      89.03       0.00       0.00      -0.00      78.04       0.00

   54  10.1  1.0 -1.0       0.00       1.06       2.05      -0.00       0.00      -0.00     -78.05       0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -105.72      -0.00       0.00       0.00       0.00       0.00    -142.35

   55  11.1  1.0 -1.0      -0.00       0.00       0.00     105.72       0.00       0.00      -0.00       0.00       0.00    -142.35
                           -0.00       1.06      -2.05      -0.00       0.00      -0.00     -78.04      -0.00      -0.00       0.00

   56  12.1  1.0 -1.0      -0.00       0.00       0.00      -0.00      27.68       0.00      -0.00      -0.00     142.35      -0.00
                            1.47       0.00       0.00       0.00      -0.00     -27.67      -0.00     142.35      -0.00       0.00

   57  13.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.03       0.00
                            4.73       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.03       0.00      -0.00

   58  14.1  1.0 -1.0       0.00       4.73       2.74       0.00      -0.00       0.00       0.01       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.02      -0.00      -0.00      -0.00      -0.00      -0.00       0.03

   59  15.1  1.0 -1.0       0.00       0.00      -0.00       0.02      -0.00      -0.00      -0.00       0.00       0.00      -0.03
                            0.00      -4.72       2.75       0.00      -0.00      -0.00      -0.01       0.00      -0.00       0.00

   60  16.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                         -128.55      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     -61.05      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      61.05       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      60.92    -105.81       0.00
                            0.00       0.00     -62.23       0.00     -61.05      -0.00       0.00       0.00      -0.00     -22.96

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      61.05      -0.00       0.00       0.00       0.00      22.96
                           -0.00      62.23      -0.00      -0.00       0.00       0.00      -0.00      61.17     105.66      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     110.85       0.00      -0.00      -0.00
                           71.43       0.00      -0.00      -0.00      -0.00     -99.67      -0.00      -0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     -51.10      -0.00       0.00      -0.00
                            6.57      -0.00       0.00      -0.00       0.00     -70.46      -0.00       0.00      -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      10.31     -17.86       0.00
                            0.00      -0.00    -260.68       0.00     -10.33       0.00       0.00      -0.00      -0.00      76.55

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      10.33       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00     -10.33      -0.00      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00     -10.33       0.00      -0.00       0.00       0.00      76.55
                            0.00    -260.68       0.00       0.00      -0.00      -0.00      -0.00     -10.35     -17.84       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      20.50       0.00       0.00       0.00
                          274.11       0.00       0.00       0.00       0.00     -11.98      -0.00      -0.00       0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       1.96       0.00       0.00      -0.00
                         -124.87       0.00      -0.00      -0.00       0.00      16.76       0.00      -0.00      -0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                         -149.28      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0      -0.00       0.00       4.73      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -4.73      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -4.73       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.73       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       4.73       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       4.72      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0      -0.00       2.74      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -2.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0      -0.00       0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0      -0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.03      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.03      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00       0.00     156.82      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     156.82      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0      -0.00       0.00       0.00      40.72       0.00       0.00       0.00       0.00       0.00       0.00
                         -156.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0    -156.82      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -40.72       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00     -40.72      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      40.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      61.65       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00     -61.65       0.00      -0.00      -0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -61.65       0.00      -0.00       0.00       0.00      -1.93
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -61.77    -106.70       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -61.52     106.84      -0.00
                            0.00       0.00       0.00       0.00      61.65      -0.00      -0.00      -0.00       0.00       1.93

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      61.52       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      61.77       0.00      -0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00    -106.84      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00     106.70      -0.00       0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       1.93       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -1.93      -0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       2.42      -0.00       0.00      -0.00       0.00      53.30
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.17      -0.39      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -2.17       0.39       0.00
                            0.00       0.00       0.00       0.00      -2.42      -0.00       0.00       0.00      -0.00     -53.31

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00       1.93      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       1.93      -0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -1.06      -2.05       0.00
                            0.00       0.00       0.00       0.00       0.16      -0.00       0.00      -0.00      -0.00    -105.72

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.16       0.00       0.00      -0.00      -0.00    -105.72
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.06      -2.05      -0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       1.47       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       1.47       0.00       0.00       0.00

   41  13.1  1.0  0.0   25203.29       0.00       0.00       0.00       0.00       4.73       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       4.73       0.00       0.00       0.00

   42  14.1  1.0  0.0       0.00   25203.31       0.00       0.00      -0.00      -0.00      -0.00      -4.73      -2.74      -0.00
                           -0.00       0.00       0.00       0.00       4.73       0.00      -0.00      -0.00       0.00       0.02

   43  15.1  1.0  0.0       0.00       0.00   25203.30       0.00      -4.73       0.00      -0.00      -0.00       0.00      -0.02
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -4.72       2.75       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00   26196.12       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   45   1.1  1.0 -1.0       0.00      -0.00      -4.73       0.00   10636.76       0.00       0.00       0.00       0.00       0.00
                            0.00      -4.73      -0.00       0.00       0.00       0.00      -0.00    -174.36       0.21      -0.00

   46   2.1  1.0 -1.0       4.73      -0.00       0.00      -0.00       0.00   10636.77       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00     -87.19       0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00   10636.77       0.00       0.00       0.00
                           -4.73       0.00      -0.00      -0.00       0.00      87.19       0.00       0.00      -0.00      -0.00

   48   4.1  1.0 -1.0      -0.00      -4.73      -0.00       0.00       0.00       0.00       0.00   10636.85       0.00       0.00
                           -0.00       0.00       4.72      -0.00     174.36      -0.00      -0.00       0.00       0.00      -2.68

   49   5.1  1.0 -1.0       0.00      -2.74       0.00       0.00       0.00       0.00       0.00       0.00   10636.87       0.00
                           -0.00      -0.00      -2.75      -0.00      -0.21       0.00       0.00      -0.00      -0.00       0.00

   50   6.1  1.0 -1.0       0.00      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00   22938.93
                           -0.00      -0.02      -0.00       0.00       0.00       0.00       0.00       2.68      -0.00      -0.00

   51   7.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.68       0.00       0.00      -0.00

   52   8.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.68       0.00      -0.00      -0.00       0.00

   53   9.1  1.0 -1.0       0.00      -0.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.01      -0.00      -2.68       0.00      -0.00       0.00       0.00     167.46

   54  10.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00      -0.00      -0.00      -0.00       3.36       0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0      -0.03       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       3.36       0.00       0.00       0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.03      -0.00      -0.00      -0.00       0.00       0.00       0.00       3.65      -0.00

   57  13.1  1.0 -1.0      -0.00      -0.00    -156.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     156.82      -0.00      -0.00       0.00       0.00       0.00      -0.01      -7.67       0.00

   58  14.1  1.0 -1.0       0.00       0.00      -0.00     -40.72       0.00       0.00       0.00       0.00       0.00       0.00
                         -156.82      -0.00       0.00       0.00      -0.00      -6.68      -0.00      -0.00       0.00       0.00

   59  15.1  1.0 -1.0     156.82       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -40.72       0.00      -0.00       6.68       0.00      -0.00      -0.00

   60  16.1  1.0 -1.0      -0.00      40.72       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      40.72      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0       0.00      -0.00       0.00      -0.01       0.00      -0.00      -0.00     -90.90      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.01       0.00       0.00       0.00      90.90      -0.00

    2   2.1  0.0  0.0      28.98       0.00      -0.00      -0.00       1.76       0.00       0.00      -0.00     -44.00       0.00
                           -0.00     -28.98      -0.00       1.77      -0.00      -0.00      -0.00      44.00       0.00      -0.00

    3   3.1  0.0  0.0       0.00      -0.00      22.95      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      17.78      44.00       0.00      -0.00      -0.00

    4   4.1  0.0  0.0      -0.00       0.00      -0.00       0.00      -0.00      17.77      44.00      -0.00       0.00      -0.00
                           -0.00       0.00      22.95      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       7.19      -0.00     -23.51       0.00      -0.00       0.00     -21.23      -0.00      -0.00
                           -2.39      -0.00       0.00      -0.00     -25.80      -0.00       0.00       0.00      29.28       0.00

    6   6.1  0.0  0.0       0.00     -25.69       0.00     -14.75      -0.00       0.00       0.00     -46.10       0.00       0.00
                          -26.57       0.00      -0.00      -0.00      10.22       0.00      -0.00      -0.00     -41.45       0.00

    7   7.1  0.0  0.0       0.00      -0.00     -76.55       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00     -59.33     184.33       0.00       0.00       0.00

    8   8.1  0.0  0.0      96.66       0.00       0.00      -0.00       5.85       0.00      -0.00       0.00     184.34      -0.00
                            0.00     -96.66       0.00       5.86      -0.00       0.00       0.00    -184.34      -0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -0.00      59.32    -184.33      -0.00      -0.00      -0.00
                           -0.00       0.00      76.55      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   10  10.1  0.0  0.0       0.00     -50.86       0.00      57.78      -0.00      -0.00       0.00     -20.48      -0.00      -0.00
                          -21.67      -0.00      -0.00      -0.00      92.39       0.00      -0.00       0.00     173.35       0.00

   11  11.1  0.0  0.0      -0.00     -72.98       0.00     -72.19       0.00      -0.00      -0.00     211.94       0.00      -0.00
                          -86.27       0.00       0.00       0.00       3.79      -0.00      -0.00      -0.00     123.64      -0.00

   12  12.1  0.0  0.0       0.00      -0.00       0.00      -0.01      -0.00       0.00      -0.00    -105.55       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.01       0.00       0.00      -0.00     105.55      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0      -2.42       0.00      -0.00       0.00      -0.16      -0.00      -0.00       0.00       4.73      -0.00
                           -0.00       2.42      -0.00      -0.16      -0.00       0.00       0.00      -4.73      -0.00       0.00

   30   2.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -1.47      -4.73       0.00      -0.00       0.00
                           -0.00       0.00      -1.93       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   31   3.1  1.0  0.0      -0.00       0.00      -1.93       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -1.47      -4.73       0.00      -0.00      -0.00

   32   4.1  1.0  0.0       0.00       2.17       0.00       1.06       0.00       0.00       0.00       4.73       0.00      -0.00
                            2.17      -0.00      -0.00       0.00      -1.06      -0.00      -0.00       0.00       4.72      -0.00

   33   5.1  1.0  0.0      -0.00      -0.39      -0.00       2.05       0.00       0.00      -0.00       2.74      -0.00      -0.00
                            0.39       0.00      -0.00       0.00       2.05      -0.00      -0.00      -0.00      -2.75      -0.00

   34   6.1  1.0  0.0     -53.30      -0.00       0.00      -0.00     105.72      -0.00      -0.00       0.00       0.02      -0.00
                            0.00      53.31      -0.00     105.72       0.00      -0.00      -0.00      -0.02      -0.00       0.00

   35   7.1  1.0  0.0       0.00      -0.00       0.00       0.00       0.00      27.68       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00     -89.03       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   36   8.1  1.0  0.0       0.00      -0.00     -89.02      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      27.67       0.00       0.00       0.00      -0.00

   37   9.1  1.0  0.0      -0.00      89.02       0.00     -78.05      -0.00      -0.00      -0.00       0.01      -0.00       0.00
                           89.03       0.00      -0.00      -0.00      78.04       0.00       0.00       0.00       0.01      -0.00

   38  10.1  1.0  0.0      -0.00       0.00      78.05       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00    -142.35      -0.03       0.00      -0.00      -0.00

   39  11.1  1.0  0.0      -0.00      -0.00       0.00      -0.00       0.00     142.35       0.03      -0.00       0.00      -0.00
                            0.00      -0.00     -78.04      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   40  12.1  1.0  0.0     -27.68      -0.00       0.00       0.00    -142.35      -0.00       0.00       0.00      -0.03       0.00
                           -0.00     -27.67      -0.00     142.35      -0.00      -0.00       0.00      -0.03      -0.00      -0.00

   41  13.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -0.03      -0.00      -0.00       0.00     156.82      -0.00
                           -0.00      -0.00      -0.00       0.03       0.00      -0.00      -0.00     156.82      -0.00      -0.00

   42  14.1  1.0  0.0       0.00      -0.00      -0.01      -0.00       0.00      -0.00      -0.00       0.00       0.00      40.72
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.03    -156.82       0.00       0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.03    -156.82      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.01       0.00      -0.00       0.00       0.00      -0.00       0.00     -40.72

   44  16.1  1.0  0.0       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     -40.72      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      40.72       0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       2.68       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.68      -0.00      -3.36      -0.00      -0.00      -0.00       6.68       0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.68      -0.00       0.00      -0.00      -3.36      -0.00      -0.00       0.00      -6.68      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.01       0.00      -0.00      -0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -3.65       7.67      -0.00       0.00       0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -167.46       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   51   7.1  1.0 -1.0   22939.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     238.97      -0.00      62.72      -0.00       0.00       0.00      -0.02      -0.00       0.00

   52   8.1  1.0 -1.0       0.00   22938.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -238.97       0.00      -0.00       0.00      62.74      -0.00      -0.00       0.00       0.02      -0.00

   53   9.1  1.0 -1.0       0.00       0.00   22939.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   22939.24       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.72      -0.00       0.00      -0.00     -71.54      -0.00      -0.00       0.00       0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   22939.24       0.00       0.00       0.00       0.00       0.00
                            0.00     -62.74       0.00      71.54       0.00      -0.00       0.00       0.00       0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   22939.25       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.01

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   25203.29       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     -57.59

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25203.31       0.00       0.00
                            0.02      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     221.78      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25203.30       0.00
                            0.00      -0.02       0.00      -0.00      -0.00      -0.00       0.00    -221.78      -0.00       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26196.12
                           -0.00       0.00      -0.00       0.00      -0.00      -0.01      57.59       0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by  -8132.65274225 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   12764.524       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   12764.529       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   12764.528       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   12764.548       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   12764.532       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   24768.179       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   24768.173
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000       0.000      86.339       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000     -86.342      -0.000      -0.000      -0.000       0.000      -0.000      14.605
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.002      -0.000      -0.000       0.000     156.762     -72.272      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000       0.000      86.154       0.000       0.000      -0.000      14.583      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000    -149.635       0.000      -0.000       0.000     -25.263       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000      -0.000       0.000      32.464      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000      40.977       0.000      -0.000       0.000       0.000       0.000     136.700
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.005       0.000      -0.000       0.000      10.168     -36.338      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000      -0.000      32.460      -0.000      -0.000       0.000    -108.258       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.020      -0.000      -0.000       0.000     -33.245     -20.861       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       2.495      -0.000      -0.000       0.000      -0.000      -0.000       8.270
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000      -0.000      25.137      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+             -0.000       0.000       0.000      62.227       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+           -128.552      -0.000       0.000      -0.000     -30.029     -65.191      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000     -62.222       0.000       0.000      -0.000       0.000      -0.000     260.691
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.001      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      15.808    -171.899      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -86.341       0.000       0.000       0.000     -14.607      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      86.341      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     172.674      -0.000      -0.000      -0.000       0.000      -0.000     -29.111

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.205       0.000       0.000       0.000      -0.000       0.000       0.034

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -2.970      32.312      -0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       7.846       0.000      -0.000       0.000     -26.134       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -7.841      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -32.434       0.000       0.000      -0.000       0.000      -0.000    -108.251

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      40.300      -0.000      -0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      40.299      -0.000      -0.000       0.000    -134.463       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.024       0.000      -0.000       0.000      43.519       4.001      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              128.553       0.000      -0.000       0.000     -71.434      -6.569      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     -62.226      -0.000       0.000       0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      62.226       0.000       0.000      -0.000     260.683       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -86.339       0.000      -0.000       0.000     -14.611       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001       0.000      -0.000       0.000    -140.953     -99.650       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      86.342       0.000      -0.000      -0.000      -0.000       0.000     -14.604

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      86.507      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000     149.432       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000     -32.464      -0.000       0.000      -0.000     108.256      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.005      -0.000      -0.000      -0.000      -3.374     -37.582       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -40.977      -0.000       0.000      -0.000       0.000      -0.000    -136.699

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      32.460       0.000      -0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.499       0.000      -0.000      -0.000      -0.000       0.000       8.284

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.020      -0.000       0.000      -0.000     -36.492      14.452       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      25.139      -0.000      -0.000       0.000     -83.900       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      62.227       0.000       0.000      -0.000     260.684       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      62.222       0.000       0.000       0.000      -0.000       0.000    -260.691

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              128.552       0.000      -0.000       0.000      41.415     -58.620       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.002      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000     -86.342      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      86.154
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      86.339      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000     156.762       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000     -72.272      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      14.583
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000      14.605       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           24768.173       0.000       0.000       0.000     -14.611       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   24768.193       0.000       0.000      -0.000      -0.000      28.998       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   24768.186       0.000      -0.000      -0.000       2.777       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26786.915      -0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            -14.611      -0.000      -0.000      -0.000   10636.757       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000   10636.769       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000      28.998       2.777      -0.000       0.000       0.000   10636.771       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   10636.848
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            108.259       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000     -71.931    -103.202      -0.006       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+             -0.000      81.714    -102.086      -0.018       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             83.896      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+           -260.684       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+             -0.000     -28.960     299.725    -149.276       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000      12.062      26.477      -0.000       0.000      -0.000     -87.187       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000     -87.358

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.607      -0.000       0.000      -0.000      87.187      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      87.358       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000     150.895      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000      44.869      98.501      -0.000       0.000      -0.000      -2.731      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -3.074

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                              -26.119       0.000       0.000      -0.000      -3.419      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       2.728      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                              134.466      -0.000      -0.000       0.000       0.231      -0.000       0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       1.494

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                               -0.000    -132.479      60.348      -0.019      -0.000       0.000       2.077       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000    -274.114     124.871     149.283      -0.000      -0.000       6.685       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                              260.683      -0.000      -0.000       0.000       6.687       0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -6.675

   16    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000     174.356

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -16.936      23.702       0.000       0.000      -0.000      87.186      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000     -87.186      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.642      -0.000      -0.000      -0.000    -174.356       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.228       0.000      -0.000      -0.000       0.206      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -2.676

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -30.647    -122.002       0.006       0.000       0.000      -0.680      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.679      -0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              108.258      -0.000       0.000       0.000       2.677      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -3.356      -0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     130.657       5.356      -0.018       0.000      -0.000      -3.356      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.004

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.009

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       6.679       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     245.153     174.855     149.276      -0.000       0.000      -6.679      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000       0.000      -0.005       0.000      -0.020       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000      -0.000      40.977       0.000      -0.000      -0.000       2.495       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -149.635       0.000       0.000      -0.000      32.460      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      32.464      -0.000       0.000      -0.000       0.000      -0.000      25.137
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>              -0.000      -0.000       0.000      10.168      -0.000     -33.245       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000      -0.000       0.000     -36.338       0.000     -20.861      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>             -25.263       0.000       0.000      -0.000    -108.258       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000     136.700       0.000       0.000      -0.000       8.270       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>               0.000     108.259       0.000       0.000      -0.000      -0.000      -0.000      83.896
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000     -71.931       0.000      81.714      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000      -0.000      -0.000    -103.202       0.000    -102.086       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000      -0.006       0.000      -0.018      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          10636.873       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   22938.930       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   22938.995       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   22938.995       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   22939.109       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   22939.240       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   22939.243       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22939.250
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       3.419      -0.000      -0.231      -0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -150.895       0.000      -0.000       0.000      -2.728       0.000       0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       2.731      -0.000      -0.000       0.000      -0.000       0.000      -2.077

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       3.074      -0.000      -0.000       0.000      -1.494      -0.000

    5    1  |1 0>              -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.548       0.000      -0.000       0.000       2.902      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      75.397      -0.000     149.508       0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.548      -0.000       0.000      -0.000    -125.910       0.000      -0.000       0.000

    8    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000     -75.397       0.000       0.000      -0.000      -0.000       0.000      39.130

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000     125.910       0.000       0.000      -0.000     110.361       0.000

   10    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000    -149.508      -0.000       0.000       0.000       0.000       0.000    -201.311

   11    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -2.902      -0.000       0.000      -0.000    -110.361      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000     -39.130      -0.000     201.311      -0.000       0.000

   13    1  |1 0>               0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.005      -0.000       0.039       0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.028      -0.000      -0.000      -0.000      -0.000      -0.000       0.036

   15    1  |1 0>              -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                3.888       0.000      -0.000      -0.000      -0.013       0.000      -0.000       0.000

   16    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.002       0.000       0.000       0.000      -0.006       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.206       0.000      -0.000       0.000      -2.677      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.679       0.000       3.356       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.680       0.000      -0.000       0.000       3.356       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.676       0.000      -0.000       0.000      -0.000       0.000       0.004

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.003       0.000      -0.000       0.000      -0.000       0.000       3.654

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003       0.000      -0.000       0.000     167.460      -0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -238.973       0.000     -62.721       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     238.973      -0.000       0.000      -0.000     -62.739       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -167.460      -0.000      -0.000      -0.000       0.000       0.000       0.003

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      62.721       0.000      -0.000       0.000      71.543       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      62.739      -0.000     -71.543      -0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.654       0.000       0.000      -0.000      -0.003      -0.000      -0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.672      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.024       0.000      -0.000       0.000       0.003      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.024      -0.000       0.002       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.007

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>              -0.000    -128.552      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |0 0>               0.000      -0.000     -62.222       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000    -172.674

    3    1  |0 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      86.341       0.000       0.000

    4    1  |0 0>              62.227      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000     -86.341       0.000

    5    1  |0 0>               0.000     -30.029      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -15.808      -0.000       0.000       0.000

    6    1  |0 0>               0.000     -65.191       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     171.899      -0.000      -0.000      -0.000

    7    1  |0 0>              -0.000      -0.000      -0.000      -0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      14.607       0.000       0.000

    8    1  |0 0>              -0.000       0.000     260.691      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      29.111

    9    1  |0 0>            -260.684      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      14.607       0.000

   10    1  |0 0>               0.000     -28.960      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -12.062      -0.000       0.000       0.000

   11    1  |0 0>              -0.000     299.725       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -26.477       0.000      -0.000      -0.000

   12    1  |0 0>              -0.000    -149.276       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     -87.187       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000     -87.358

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      87.187      -0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      87.358       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     150.895      -0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -2.731      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -3.074

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -3.419      -0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       2.728      -0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.231      -0.000       0.000      -0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       1.494

   12    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       2.077       0.000

   13    1  |1 1>+          25203.288       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       6.685       0.000

   14    1  |1 1>+              0.000   25203.307       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       6.687       0.000      -0.000      -0.000

   15    1  |1 1>+              0.000       0.000   25203.301       0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -6.675

   16    1  |1 1>+              0.000       0.000       0.000   26196.117      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000      -0.000   10636.757       0.000       0.000       0.000
                                0.000      -6.687      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000   10636.769       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000   10636.771       0.000
                               -6.685       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000   10636.848
                               -0.000       0.000       6.675      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -3.888      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.028      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.002      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.005       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.013      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.039       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.006      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.036      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     221.780      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -221.780       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -57.586      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      57.586       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      87.187       0.000       0.000
                                0.000      -0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -87.187       0.000      -0.000       0.000
                                0.000      -6.679      -0.000       0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000     -87.001
                                0.000      -0.000       6.679       0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      87.001       0.000
                               -0.009      -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000    -151.101      -0.000
                               -7.672       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       2.731       0.000      -0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       3.419      -0.000       0.000      -0.000
                               -0.000       0.024       0.000      -0.000      -0.000       0.000       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -3.073
                                0.000      -0.000      -0.024       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       2.728      -0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -1.501
                                0.000      -0.000      -0.002       0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.231       0.000       0.000      -0.000
                               -0.000      -0.003      -0.000      -0.000       0.000       0.000       0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       2.077       0.000      -0.000
                                0.000       0.000      -0.000      -0.007      -0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       6.685       0.000      -0.000
                               -0.000       0.000       0.000      57.589      -0.000      -0.000       0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -6.684
                               -0.000      -0.000    -221.775       0.000       0.000      -0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000      -6.687       0.000      -0.000      -0.000
                               -0.000     221.775       0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                              -57.589      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.024

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.205      -0.000      -0.000       0.000      32.434       0.000       0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -7.846       0.000      -0.000      -0.000     -40.299       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       7.841      -0.000     -40.300       0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.970       0.000       0.000       0.000       0.000       0.000     -43.519

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -32.312      -0.000       0.000      -0.000       0.000      -0.000      -4.001

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      26.134       0.000       0.000      -0.000     134.463       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.034      -0.000      -0.000       0.000     108.251      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      26.119       0.000    -134.466      -0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -44.869      -0.000      -0.000       0.000       0.000      -0.000     132.479

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -98.501       0.000      -0.000       0.000       0.000       0.000     -60.348

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.019

    1    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       3.419      -0.000      -0.231      -0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                             -150.895       0.000      -0.000       0.000      -2.728       0.000       0.000      -0.000

    3    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       2.731      -0.000      -0.000       0.000      -0.000       0.000      -2.077

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000       0.000       3.074      -0.000      -0.000       0.000      -1.494      -0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.548       0.000      -0.000       0.000       2.902      -0.000

    6    1  |1 1>+             -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      75.397      -0.000     149.508       0.000      -0.000

    7    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000
                               -0.548      -0.000       0.000      -0.000    -125.910       0.000      -0.000       0.000

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000     -75.397       0.000       0.000      -0.000      -0.000       0.000      39.130

    9    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000     125.910       0.000       0.000      -0.000     110.361       0.000

   10    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                               -0.000    -149.508      -0.000       0.000       0.000       0.000       0.000    -201.311

   11    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -2.902      -0.000       0.000      -0.000    -110.361      -0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000      -0.000     -39.130      -0.000     201.311      -0.000       0.000

   13    1  |1 1>+              0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000      -0.000      -0.005      -0.000       0.039       0.000      -0.000

   14    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.028      -0.000      -0.000      -0.000      -0.000      -0.000       0.036

   15    1  |1 1>+             -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                3.888       0.000      -0.000      -0.000      -0.013       0.000      -0.000       0.000

   16    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000      -0.000       0.002       0.000       0.000       0.000      -0.006       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           10636.873       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   22938.930       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   22938.995       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   22938.995       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   22939.109       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   22939.240       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   22939.243       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   22939.250
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000      -3.419       0.000      -0.000       0.000      -0.231      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000      -2.731       0.000      -0.000       0.000       0.000      -0.000      -2.077
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-            151.101      -0.000      -0.000       0.000      -2.728       0.000      -0.000      -0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       3.073       0.000       1.501       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000      -0.000      -0.000      -0.555      -0.000       2.899       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000     -75.382      -0.000       0.000      -0.000     149.509      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 1>-              0.000      75.382       0.000      -0.000       0.000       0.000       0.000      39.149
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.555       0.000       0.000       0.000    -125.899      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 1>-              0.000      -0.000      -0.000     125.899       0.000    -110.375      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-             -2.899       0.000      -0.000       0.000     110.375       0.000       0.000      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

   11    1  |1 1>-             -0.000    -149.509      -0.000      -0.000       0.000      -0.000       0.000     201.312
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000       0.000     -39.149      -0.000       0.000       0.000    -201.312       0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

   13    1  |1 1>-              0.000       0.000      -0.005      -0.000       0.000       0.000      -0.039      -0.000
                               -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

   14    1  |1 1>-             -3.872      -0.000       0.000      -0.000      -0.014      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 1>-              0.000      -0.028       0.000       0.000       0.000      -0.000      -0.000       0.036
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000      -0.002      -0.000      -0.006       0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -128.553      -0.000      -0.000       0.000       0.000      -0.001      -0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000      -0.000     -86.342      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -62.226       0.000      86.339       0.000      -0.000      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      62.226      -0.000      -0.000      -0.000      -0.000       0.000     -86.507

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               71.434       0.000      -0.000      -0.000       0.000     140.953       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.569      -0.000       0.000      -0.000      -0.000      99.650       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -260.683       0.000      14.611      -0.000      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000      -0.000      14.604       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -260.683       0.000       0.000       0.000       0.000       0.000      14.642

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              274.114       0.000       0.000       0.000      -0.000      16.936       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -124.871       0.000      -0.000      -0.000      -0.000     -23.702      -0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -149.283      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -6.687      -0.000       0.000      -0.000      -0.000       0.000     174.356

    2    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000      87.186      -0.000

    3    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -6.685       0.000      -0.000      -0.000      -0.000     -87.186      -0.000      -0.000

    4    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       6.675      -0.000    -174.356       0.000       0.000      -0.000

    5    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -3.888      -0.000       0.206      -0.000      -0.000       0.000

    6    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.028      -0.000       0.000      -0.000      -0.000      -0.000      -2.676

    7    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.002       0.000       0.000      -0.680      -0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.005       0.000       0.000      -0.000      -0.000       0.679      -0.000       0.000

    9    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.013      -0.000       2.677      -0.000       0.000      -0.000

   10    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.039       0.000      -0.000      -0.000       0.000      -3.356      -0.000       0.000

   11    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.006       0.000      -0.000      -3.356      -0.000

   12    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.036      -0.000      -0.000       0.000      -0.000      -0.000      -0.004

   13    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000     221.780      -0.000      -0.000      -0.000      -0.000      -0.000       0.009

   14    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -221.780       0.000       0.000       0.000       0.000       6.679       0.000       0.000

   15    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -57.586      -0.000       0.000      -6.679      -0.000

   16    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      57.586       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -87.187      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      87.187       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      87.001
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     -87.001       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     151.101       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -2.731      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -3.419       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       3.073
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -2.728       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       1.501
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.231      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -2.077      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

   13    1  |1 0>           25203.288       0.000       0.000       0.000      -0.000      -6.685      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 0>               0.000   25203.307       0.000       0.000       0.000       0.000       0.000       6.684
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000   25203.301       0.000       6.687      -0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000   26196.117      -0.000       0.000       0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-             -0.000       0.000       6.687      -0.000   10636.757       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -6.685       0.000      -0.000       0.000       0.000   10636.769       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000       0.000       0.000       0.000       0.000   10636.771       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       6.684       0.000      -0.000       0.000       0.000       0.000   10636.848
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-             -0.000       3.872      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-             -0.000       0.000       0.028      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.005      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000      -0.000       0.002       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -0.000       0.014      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-             -0.000       0.000       0.000       0.006       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.039      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000      -0.036       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000     221.780      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.000       0.000       0.000      57.586       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-           -221.780      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000     -57.586      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.005       0.000      -0.000       0.000       0.020      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      40.977       0.000      -2.499       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      32.464       0.000       0.000      -0.000      -0.000      -0.000     -25.139

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -149.432       0.000       0.000      -0.000     -32.460       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       3.374       0.000      -0.000       0.000      36.492       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      37.582      -0.000       0.000       0.000     -14.452      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -108.256      -0.000       0.000      -0.000      -0.000      -0.000      83.900

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000     136.699      -0.000      -8.284       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               25.228      -0.000       0.000      -0.000    -108.258       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      30.647       0.000       0.000       0.000    -130.657      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     122.002      -0.000      -0.000      -0.000      -5.356       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.006       0.000      -0.000      -0.000       0.018      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.206       0.000      -0.000       0.000      -2.677      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.679       0.000       3.356       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.680       0.000      -0.000       0.000       3.356       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.676       0.000      -0.000       0.000      -0.000       0.000       0.004

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.003       0.000      -0.000       0.000      -0.000       0.000       3.654

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.003       0.000      -0.000       0.000     167.460      -0.000       0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -238.973       0.000     -62.721       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     238.973      -0.000       0.000      -0.000     -62.739       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -167.460      -0.000      -0.000      -0.000       0.000       0.000       0.003

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      62.721       0.000      -0.000       0.000      71.543       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      62.739      -0.000     -71.543      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.654       0.000       0.000      -0.000      -0.003      -0.000      -0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.672      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.024       0.000      -0.000       0.000       0.003      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.024      -0.000       0.002       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.007

    1    1  |1 0>              -0.000       0.000       3.419      -0.000       0.000      -0.000       0.231       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 0>              -0.000       2.731      -0.000       0.000      -0.000      -0.000       0.000       2.077
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 0>            -151.101       0.000       0.000      -0.000       2.728      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 0>              -0.000      -0.000      -0.000      -3.073      -0.000      -1.501      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.555       0.000      -2.899      -0.000      -0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000      75.382       0.000      -0.000       0.000    -149.509       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>              -0.000     -75.382       0.000       0.000      -0.000      -0.000      -0.000     -39.149
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.555      -0.000      -0.000       0.000     125.899       0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    9    1  |1 0>              -0.000       0.000       0.000    -125.899       0.000     110.375       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   10    1  |1 0>               2.899      -0.000       0.000      -0.000    -110.375       0.000      -0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000

   11    1  |1 0>               0.000     149.509       0.000       0.000      -0.000       0.000       0.000    -201.312
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000      39.149       0.000      -0.000      -0.000     201.312       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

   13    1  |1 0>              -0.000      -0.000       0.005       0.000      -0.000      -0.000       0.039       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

   14    1  |1 0>               3.872       0.000      -0.000       0.000       0.014       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 0>              -0.000       0.028      -0.000      -0.000      -0.000       0.000       0.000      -0.036
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000

   16    1  |1 0>              -0.000      -0.000      -0.000       0.002       0.000       0.006      -0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          10636.873       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   22938.930       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   22938.995       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   22938.995       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   22939.109       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   22939.240       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   22939.243       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22939.250
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       57          58          59          60

    1    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000    -128.552       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     -62.222      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                              -62.227      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000      -0.000     -41.415      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000      58.620      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                             -260.684      -0.000      -0.000      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     260.691       0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.001

   10    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000    -245.153      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000    -174.855       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000    -149.276       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -6.679      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000       6.679       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.009      -0.000       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -7.672       0.000      -0.000      -0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.024       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.024       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.002       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.003      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.007

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      57.589

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000    -221.775       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000     221.775       0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                              -57.589      -0.000       0.000      -0.000

    1    1  |1 0>               0.000      -0.000      -6.687       0.000
                                0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               6.685      -0.000       0.000      -0.000
                                0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000      -0.000

    4    1  |1 0>              -0.000      -6.684      -0.000       0.000
                                0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000      -3.872       0.000       0.000
                                0.000       0.000      -0.000      -0.000

    6    1  |1 0>               0.000      -0.000      -0.028       0.000
                               -0.000       0.000      -0.000       0.000

    7    1  |1 0>              -0.005       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000      -0.002
                                0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000      -0.014       0.000      -0.000
                                0.000       0.000      -0.000       0.000

   10    1  |1 0>               0.000      -0.000      -0.000      -0.006
                                0.000       0.000       0.000      -0.000

   11    1  |1 0>              -0.039       0.000      -0.000       0.000
                                0.000       0.000      -0.000       0.000

   12    1  |1 0>              -0.000      -0.000       0.036      -0.000
                               -0.000       0.000      -0.000      -0.000

   13    1  |1 0>               0.000      -0.000    -221.780       0.000
                                0.000      -0.000      -0.000       0.000

   14    1  |1 0>               0.000       0.000      -0.000     -57.586
                               -0.000      -0.000       0.000       0.000

   15    1  |1 0>             221.780       0.000       0.000      -0.000
                               -0.000       0.000      -0.000       0.000

   16    1  |1 0>              -0.000      57.586       0.000       0.000
                                0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   13    1  |1 1>-          25203.288       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   25203.307       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   25203.301       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26196.117
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -8132.65275137    -0.00000912       -2.00      0.00000000        0.00      0.0000
    2 -8132.60546911     0.04727314    10375.25      0.04728226    10377.26      1.2866
    3 -8132.60546911     0.04727314    10375.25      0.04728226    10377.26      1.2866
    4 -8132.60546906     0.04727319    10375.27      0.04728231    10377.27      1.2866
    5 -8132.60476652     0.04797573    10529.46      0.04798485    10531.46      1.3057
    6 -8132.60476646     0.04797579    10529.47      0.04798492    10531.47      1.3057
    7 -8132.60476625     0.04797600    10529.51      0.04798512    10531.52      1.3057
    8 -8132.60476619     0.04797606    10529.53      0.04798518    10531.53      1.3057
    9 -8132.60476619     0.04797606    10529.53      0.04798518    10531.53      1.3057
   10 -8132.60348309     0.04925916    10811.14      0.04926828    10813.14      1.3407
   11 -8132.60348301     0.04925924    10811.15      0.04926836    10813.16      1.3407
   12 -8132.60348301     0.04925924    10811.15      0.04926836    10813.16      1.3407
   13 -8132.60348300     0.04925925    10811.16      0.04926838    10813.16      1.3407
   14 -8132.60348292     0.04925933    10811.17      0.04926846    10813.18      1.3407
   15 -8132.60348291     0.04925933    10811.17      0.04926846    10813.18      1.3407
   16 -8132.60348287     0.04925938    10811.18      0.04926850    10813.19      1.3407
   17 -8132.59449639     0.05824586    12783.49      0.05825498    12785.49      1.5852
   18 -8132.59449638     0.05824587    12783.49      0.05825500    12785.49      1.5852
   19 -8132.59449636     0.05824589    12783.49      0.05825501    12785.50      1.5852
   20 -8132.59449636     0.05824589    12783.50      0.05825501    12785.50      1.5852
   21 -8132.59449634     0.05824591    12783.50      0.05825503    12785.50      1.5852
   22 -8132.54985326     0.10288899    22581.52      0.10289811    22583.53      2.8000
   23 -8132.54985304     0.10288921    22581.57      0.10289834    22583.57      2.8000
   24 -8132.54985264     0.10288961    22581.66      0.10289873    22583.66      2.8000
   25 -8132.54985263     0.10288962    22581.66      0.10289875    22583.66      2.8000
   26 -8132.54985262     0.10288963    22581.66      0.10289875    22583.67      2.8000
   27 -8132.54860591     0.10413634    22855.29      0.10414547    22857.29      2.8339
   28 -8132.54860591     0.10413634    22855.29      0.10414547    22857.29      2.8339
   29 -8132.54860572     0.10413653    22855.33      0.10414565    22857.33      2.8339
   30 -8132.54860522     0.10413703    22855.44      0.10414615    22857.44      2.8340
   31 -8132.54860522     0.10413703    22855.44      0.10414615    22857.44      2.8340
   32 -8132.54860513     0.10413712    22855.46      0.10414625    22857.46      2.8340
   33 -8132.54860493     0.10413731    22855.50      0.10414644    22857.50      2.8340
   34 -8132.54708006     0.10566219    23190.17      0.10567131    23192.17      2.8755
   35 -8132.54708005     0.10566220    23190.17      0.10567132    23192.17      2.8755
   36 -8132.54707999     0.10566226    23190.19      0.10567138    23192.19      2.8755
   37 -8132.54707999     0.10566226    23190.19      0.10567139    23192.19      2.8755
   38 -8132.54707956     0.10566269    23190.28      0.10567181    23192.28      2.8755
   39 -8132.54707940     0.10566285    23190.31      0.10567197    23192.32      2.8755
   40 -8132.54707910     0.10566315    23190.38      0.10567227    23192.38      2.8755
   41 -8132.54707910     0.10566315    23190.38      0.10567228    23192.38      2.8755
   42 -8132.54707896     0.10566329    23190.41      0.10567241    23192.41      2.8755
   43 -8132.54055042     0.11219183    24623.26      0.11220095    24625.26      3.0531
   44 -8132.54055019     0.11219205    24623.31      0.11220118    24625.31      3.0531
   45 -8132.54055011     0.11219214    24623.33      0.11220126    24625.33      3.0532
   46 -8132.54055006     0.11219219    24623.34      0.11220131    24625.34      3.0532
   47 -8132.54055004     0.11219221    24623.34      0.11220134    24625.35      3.0532
   48 -8132.54006746     0.11267479    24729.26      0.11268391    24731.26      3.0663
   49 -8132.53894284     0.11379941    24976.08      0.11380853    24978.09      3.0969
   50 -8132.53894283     0.11379942    24976.09      0.11380854    24978.09      3.0969
   51 -8132.53894278     0.11379947    24976.10      0.11380860    24978.10      3.0969
   52 -8132.53612899     0.11661326    25593.65      0.11662238    25595.65      3.1735
   53 -8132.53612898     0.11661327    25593.65      0.11662239    25595.66      3.1735
   54 -8132.53612895     0.11661330    25593.66      0.11662242    25595.66      3.1735
   55 -8132.53612864     0.11661361    25593.73      0.11662273    25595.73      3.1735
   56 -8132.53612809     0.11661416    25593.85      0.11662328    25595.85      3.1735
   57 -8132.53335919     0.11938306    26201.55      0.11939218    26203.56      3.2488
   58 -8132.53335919     0.11938306    26201.55      0.11939219    26203.56      3.2488
   59 -8132.53335919     0.11938306    26201.55      0.11939219    26203.56      3.2488
   60 -8132.53054406     0.12219819    26819.40      0.12220731    26821.40      3.3254

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99995956 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000021  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000 -0.09426024 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000331  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.09425644
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000333 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00620993 -0.09401688 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.09402805 -0.00620879  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000170  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00253376
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00253017  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000170  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00098753 -0.00232857 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00232496  0.00098928  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00008679 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000004  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000003  0.54779327  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.54777900  0.00000000  0.00000000 -0.40649881 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000100  0.00000000 -0.00000000 -0.00000025  0.00000000

   3    1  |1 1>+          0.00000016  0.00000000  0.00000000  0.00000000  0.38815653  0.71419025  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00000000  0.54804159 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.40553196
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.31550049 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.70436494
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000240  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000185 -0.00000000 -0.00000000  0.00006147  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000023  0.00000000  0.00000000 -0.00000000  0.00005624  0.00001023  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000  0.00000221 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00004869
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000087 -0.00000000 -0.00000000 -0.00000000  0.00002988 -0.00005242 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000033  0.00000000 -0.00000000  0.00000551  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00000135  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00041673 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00519186  0.00000000  0.00000000  0.00000000  0.00099897 -0.00054261 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00041851  0.00000000  0.00000000 -0.00098477 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000305 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000003  0.00000000 -0.00000000 -0.00000000  0.81259943  0.02093550  0.00000000 -0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.54775258 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40655676

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000003 -0.54775119 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000049  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00074830 -0.00000000 -0.00000000  0.81278687  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000115  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.63235892  0.00000000  0.00000000 -0.00096251 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00004686 -0.00000120 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000121  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001195

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000120  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00004690 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000229 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000230  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00005912

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000104 -0.00000000  0.00000000  0.00000000 -0.00000176  0.00006823  0.00000000  0.00000000

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00519190 -0.00000000 -0.00000000 -0.00000000  0.00002927 -0.00113641 -0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00041729 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00041728 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00098621

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000303 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.54779250  0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.40648840

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000013 -0.00000000 -0.00000000 -0.00000000  0.42441549 -0.69325891 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000100  0.00000000 -0.00000000 -0.00000025  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.54777682 -0.00000000 -0.00000000  0.40649962  0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000003  0.54729466  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000002 -0.31679548 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000239  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00004868

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000024  0.00000000  0.00000000 -0.00000000  0.00005670 -0.00000732 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000184  0.00000000  0.00000000 -0.00006148 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000222 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000032  0.00000000 -0.00000000  0.00000552  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000088  0.00000000 -0.00000000  0.00000000 -0.00002715 -0.00005389 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000135 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003559

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00041672  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00098305

  14    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00041850 -0.00000000 -0.00000000  0.00098477  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00519186 -0.00000000 -0.00000000 -0.00000000  0.00096969  0.00059332  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000304 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001017 -0.00000000 -0.00000000  0.00000029
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00001060  0.00000000 -0.00000792 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.09425667 -0.00000000  0.00001039 -0.00000000 -0.00000000  0.00000000  0.00000808  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000066 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000823 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000069  0.00000000  0.00000222 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000378  0.00000000  0.00000000  0.00000005
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00253372  0.00000000  0.00000068 -0.00000000 -0.00000000  0.00000000  0.00000222 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.40648724  0.00000000  0.72056224 -0.00000036 -0.00000000 -0.00000000 -0.11831453 -0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.58330996 -0.00000000 -0.00000000  0.43927652
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000588  0.00000000 -0.00000000  0.00000118

   3    1  |1 1>+          0.00000000  0.57735782 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000001  0.00000000  0.00000029  0.57010538 -0.00000000 -0.45683474  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000002 -0.00000000 -0.00000013 -0.25975461 -0.00000000 -0.57654538  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00004867 -0.00000000  0.00006058 -0.00000000 -0.00000000 -0.00000000 -0.00025207 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00011546  0.00000000  0.00000000 -0.00005913
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000  0.00019645 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00022778 -0.00000000  0.00012361 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000 -0.00017192  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00022841  0.00000000  0.00000000 -0.00031426
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00003559  0.00000000  0.00012825 -0.00000000 -0.00000000  0.00000000  0.00029075  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+          0.00098304  0.00000000  0.00000077 -0.00000000  0.00000000  0.00000000  0.00000184 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000025 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000137
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000002 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.57733783  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000001  0.00000000  0.00000015  0.29904132  0.00000000  0.66616105 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.40655637  0.00000000  0.29471019 -0.00000015 -0.00000000  0.00000000  0.66808981  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000582  0.00000000 -0.00000000  0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.57740827 -0.00000000  0.00000000 -0.00691315

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000 -0.00000208
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00982176 -0.00000000 -0.00000000  0.77461250

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00026177 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00033798 -0.00000000 -0.00017771  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001193  0.00000000  0.00033913 -0.00000000 -0.00000000 -0.00000000 -0.00017551 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00026161  0.00000000 -0.00000000  0.00000356

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00005912  0.00000000  0.00011890 -0.00000000 -0.00000000  0.00000000  0.00008534  0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00011949  0.00000000 -0.00008454  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00098621 -0.00000000  0.00000018 -0.00000000 -0.00000000  0.00000000  0.00000106 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000020  0.00000000  0.00000107 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000001  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.00000000  0.00000036  0.71977877 -0.00000000 -0.12299065  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.57735498 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000576 -0.00000000  0.00000000 -0.00000122
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57118517 -0.00000000 -0.00000000  0.45493254

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.40719574 -0.00000000 -0.57366340  0.00000029  0.00000000  0.00000000  0.45175462  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.70340528 -0.00000000 -0.25464891  0.00000013  0.00000000 -0.00000000 -0.57928856 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00005893 -0.00000000 -0.00025247  0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00019647 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00011384  0.00000000  0.00000000 -0.00006221

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00004868 -0.00000000 -0.00022698  0.00000000  0.00000000 -0.00000000 -0.00012510 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00023683 -0.00000000 -0.00000000  0.00030796

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00017191 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00013014 -0.00000000 -0.00028990  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000076  0.00000000 -0.00000184 -0.00000000 -0.00000000

  14    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000  0.00000136

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000025  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000001  0.00000000  0.00000017
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.99550040  0.00000001  0.00000001 -0.00000001  0.00000000  0.00663309 -0.00000000
                          -0.00000000  0.00000917 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000001 -0.00000000  0.99550075  0.00000001  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000001  0.99550073  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.05117572  0.00000001  0.00000000 -0.00000001  0.99418770  0.00058667  0.00000000  0.00663067
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.99418672  0.00000000 -0.00000000  0.00000000 -0.05117550 -0.00661767  0.00000000  0.00058793
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00019654 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00019611  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.10319311  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000189 -0.00000000

   9    1  |0 0>           0.00000000 -0.00000000  0.00019654  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00005486 -0.00000000 -0.00000000  0.00000000 -0.00018894  0.04250409  0.00000000  0.09426619
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00018818  0.00000000 -0.00000000 -0.00000000  0.00005535  0.09412062 -0.00000000 -0.04257109
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000120
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.03848322  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.03848469 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00033319  0.00000000
                           0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000

   3    1  |1 1>+         -0.02857902  0.00000000  0.00000000 -0.00000000  0.07143568  0.00032846  0.00000000  0.00057368
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.03840167  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.06669842 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00331421 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00418327 -0.00000000 -0.00000000  0.00000000  0.00000000  0.61278245 -0.00000000
                           0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001121  0.00000000

   8    1  |1 1>+          0.00365127 -0.00000000 -0.00000000  0.00000000 -0.00122752  0.55388099 -0.00000000  0.10327125
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00331376 -0.00000000  0.00000000 -0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00230077  0.00000000  0.00000000 -0.00000000  0.00327991  0.26561242 -0.00000000 -0.52096789
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000 -0.00025440 -0.00000000 -0.00000000  0.00000000  0.00000000  0.03710861 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000068  0.00000000

  12    1  |1 1>+         -0.00000000  0.00000000 -0.00256642 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00483541 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00517865  0.00000000 -0.00000000 -0.00000000  0.00206986 -0.00964079  0.00000000  0.00553831
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00483486  0.00000000  0.00000000 -0.00000000  0.00000000  0.00960072 -0.00000000
                          -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018  0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.07615474 -0.00000000  0.00000000 -0.00000000  0.01097528  0.00066054 -0.00000000  0.00000216

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.03848412 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.03848415  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000071  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000000  0.07696699  0.00000000  0.00000000 -0.00000000  0.00000000  0.00065928 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00009124 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000079  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00327924 -0.00000000  0.00000000 -0.00000000  0.00047250 -0.48528264  0.00000000 -0.00157653

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00080090 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00080046  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 0>           0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000887  0.00000000
                          -0.00000000  0.00331132  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.48514164  0.00000000

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00411421 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00411414 -0.00000000  0.00000000 -0.00000000  0.00000001

  12    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00063627 -0.00000000 -0.00000000  0.00000000 -0.00441536 -0.00212162  0.00000000  0.65104422

  13    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00079506  0.00000000  0.00000000 -0.00000000  0.00551683 -0.00003633  0.00000000  0.01113680

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00483498  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00483498 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.03848310 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.04758743 -0.00000000 -0.00000000  0.00000000 -0.06045921  0.00033220 -0.00000000 -0.00057151

   3    1  |1 1>-          0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000000  0.03848460  0.00000000  0.00000000 -0.00000000  0.00000000  0.00033320 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.03855919  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.06660772  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00331416  0.00000000 -0.00000000  0.00000000 -0.00000001

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00384920  0.00000000 -0.00000000  0.00000000  0.00014697  0.55451713 -0.00000000 -0.09969799

   8    1  |1 1>-          0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001121  0.00000000
                          -0.00000000  0.00418328  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.61277926  0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00331378 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000068 -0.00000000
                           0.00000000 -0.00025485 -0.00000000 -0.00000000  0.00000000  0.00000000  0.03717480 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00128139  0.00000000  0.00000000 -0.00000000  0.00379611 -0.26225492 -0.00000000 -0.52268279

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00256656 -0.00000000  0.00000000 -0.00000000  0.00000001

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00483542 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>-         -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018  0.00000000
                           0.00000000 -0.00483485 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00960073  0.00000000

  15    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00438343 -0.00000000 -0.00000000  0.00000000 -0.00344792 -0.00960421  0.00000000 -0.00560138

  16    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000077
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00663491  0.00000000  0.00000134 -0.00000000  0.00000132 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00663489  0.00000000 -0.00000135  0.00000000 -0.00000000  0.00000000  0.00000131  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000111 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000002  0.10320884  0.00000000  0.00001869 -0.00000000  0.00006061 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000507
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.10320892 -0.00000002  0.00001828 -0.00000000 -0.00000000 -0.00000000 -0.00006061  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000448  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000927 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00033111  0.00000000 -0.00027645  0.00000000 -0.00000000 -0.00000000 -0.00017416  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00026604
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00026147 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00033068 -0.00000000 -0.00032538  0.00000000  0.00002194 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.00057326 -0.00000000 -0.00008773  0.00000000 -0.00027162  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.48555903  0.00000010  0.47716705 -0.00000062 -0.00000000 -0.00000019 -0.32490768  0.00000000
                          -0.00000000  0.00000000  0.00000006 -0.00000008  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.26402830
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001503

   8    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.43406932  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000010  0.48538784  0.00000025  0.19383494  0.00000000 -0.54364300  0.00000032  0.00000000
                           0.00000000 -0.00000000 -0.00000003  0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000001  0.00000000 -0.00000000 -0.38042967 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.49308789
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002806

  12    1  |1 1>+          0.37568975  0.00000007 -0.21829176  0.00000028  0.00000000  0.00000040  0.67260047 -0.00000000
                          -0.00000000  0.00000000 -0.00000003  0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00959693 -0.00000000  0.00000108 -0.00000000  0.00000000 -0.00000000 -0.00000169  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000378  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000633
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000012  0.00000000  0.00000101  0.00000000  0.00000062 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00026096  0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00033366  0.00000000  0.00010241 -0.00000000  0.00031228 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00033367  0.00000000  0.00010153 -0.00000000 -0.00000000 -0.00000000 -0.00031259  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00026064

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001071

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.57768066  0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000014 -0.00000017  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002  0.11716487  0.00000107  0.82503096 -0.00000000 -0.21240482  0.00000013  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000011  0.00000014 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.11710109 -0.00000002  0.82563351 -0.00000107  0.00000000  0.00000013  0.21011415 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00003285
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.57733913

  10    1  |1 0>           0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.60240765  0.00000012  0.06943782 -0.00000009  0.00000000  0.00000019  0.32084940 -0.00000000

  11    1  |1 0>          -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000012  0.60239351 -0.00000009 -0.06862056 -0.00000000  0.32106601 -0.00000019 -0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00001276  0.00000000 -0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00959285  0.00000000 -0.00000320  0.00000000  0.00000000  0.00000000  0.00000338  0.00000000

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00959292 -0.00000000 -0.00000319  0.00000000 -0.00000333  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00033112 -0.00000000 -0.00027595  0.00000000  0.00017494 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00026146 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00025328

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00033203  0.00000000  0.00032523 -0.00000000  0.00000000  0.00000000  0.00002166 -0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00057248  0.00000000 -0.00008774  0.00000000  0.00000000  0.00000000  0.00027181 -0.00000000

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000008 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000010 -0.48554667  0.00000062  0.47808861 -0.00000000  0.32358482 -0.00000019 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.43410909  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00001454
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.25550304

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000002 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.48538759  0.00000010 -0.19536583  0.00000025 -0.00000000 -0.00000032 -0.54309401  0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003057
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.53716934

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000001 -0.00000000  0.00000000  0.38038302  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000  0.00000000  0.00000004 -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000007  0.37570821  0.00000029  0.22016865 -0.00000000  0.67197155 -0.00000040 -0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00959703 -0.00000000 -0.00000136 -0.00000000 -0.00000152  0.00000000  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000654

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000372  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000011 -0.00000000  0.00000098 -0.00000000  0.00000000 -0.00000000 -0.00000062  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000 -0.00000051  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000002  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000178 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000048
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000149 -0.00000000  0.00000000 -0.00000000  0.00000083  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000000 -0.00000013  0.00000000  0.00000000 -0.00000000 -0.00000861  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002183  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000040 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00001816 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00002182  0.00000000 -0.00000000  0.00000000 -0.00001532
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000781  0.00000000  0.00000000  0.00000000  0.00004850 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000373 -0.00000000 -0.00000000  0.00000000  0.00010600 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000370 -0.00000000 -0.00000000  0.00000000  0.00000012  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000121  0.00000000 -0.00000000  0.00000000  0.00000190
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00019262 -0.00000000  0.00000145 -0.00000000 -0.00000000 -0.00000000  0.00000077 -0.00000000
                           0.00000017  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000154 -0.00000000 -0.00000000  0.00000000 -0.00000123 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000110  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000049  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00000001  0.00000001  0.61859902  0.00000020  0.00000000 -0.00000000 -0.21383481
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.12673354  0.00000000  0.69437897 -0.00000001 -0.00000001  0.00000000  0.22898333 -0.00000000
                           0.00010924  0.00000000  0.00097939 -0.00000000 -0.00000000  0.00000000  0.00017568  0.00000000

   8    1  |1 1>+          0.00000000  0.69940968 -0.00000000 -0.00000001  0.00000001  0.03081760 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000001  0.00000001 -0.00000019  0.60624802 -0.00000000  0.00000000 -0.00000002
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.09251861 -0.00000000 -0.00000000  0.00000000  0.53671501  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.71011365 -0.00000000 -0.13444729  0.00000000  0.00000000  0.00000000  0.48283953 -0.00000000
                           0.00061207  0.00000000 -0.00018963  0.00000000  0.00000000 -0.00000000  0.00037044  0.00000000

  12    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.01698778  0.00000001  0.00000000 -0.00000000 -0.59747001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000091  0.00000000 -0.00000000 -0.00000000  0.00001432
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000786  0.00000000 -0.00000000  0.00000000 -0.00000649 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000090  0.00000000  0.00000933 -0.00000000 -0.00000000  0.00000000 -0.00000790  0.00000000
                           0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000069 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000161 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000  0.00000000 -0.00000000 -0.00000163

   4    1  |1 0>           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000788 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000264  0.00000000

   5    1  |1 0>          -0.00000030  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00034652 -0.00000000 -0.00000140  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00127204 -0.00000000 -0.00000000  0.00000000  0.65435063 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000001 -0.00000001  0.00000015 -0.48694084  0.00000000 -0.00000000  0.00000001

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000001 -0.00000001 -0.48660773 -0.00000015 -0.00000000  0.00000000 -0.15339739

   9    1  |1 0>           0.00001582 -0.00000000 -0.00000117  0.00000000 -0.00000000  0.00000000 -0.00050214 -0.00000000
                          -0.01835545  0.00000000  0.00082921  0.00000000 -0.00000000  0.00000000  0.65451443 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.11575955 -0.00000004 -0.00000000  0.00000000  0.71550169

  11    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000004  0.11419765  0.00000000  0.00000000  0.00000005

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.07132008 -0.00000000  0.00000000 -0.00000000  0.00528580  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000342  0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000761 -0.00000000 -0.00000000 -0.00000000  0.00001890

  15    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000757 -0.00000000  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000221 -0.00000000 -0.00000176  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000122 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000154 -0.00000000  0.00000000 -0.00000000 -0.00000121  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000018 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00020914  0.00000000  0.00000145 -0.00000000 -0.00000000 -0.00000000 -0.00000078 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000111 -0.00000000 -0.00000000  0.00000000  0.00000220

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000048 -0.00000000 -0.00000000 -0.00000000 -0.00000180

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000001  0.00000001 -0.00000020  0.61811455  0.00000000  0.00000000  0.00000002

   7    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.69927482  0.00000000  0.00000001 -0.00000001  0.03379119  0.00000000  0.00000000

   8    1  |1 1>-         -0.00012341 -0.00000000 -0.00097859  0.00000000  0.00000000 -0.00000000  0.00017699 -0.00000000
                           0.14317568  0.00000000  0.69381032 -0.00000001 -0.00000001  0.00000000 -0.23069023 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000001 -0.00000001 -0.60568913 -0.00000019 -0.00000000  0.00000000 -0.24865808

  10    1  |1 1>-          0.00058385 -0.00000000 -0.00019125  0.00000000  0.00000000  0.00000000 -0.00037019 -0.00000000
                          -0.67737735  0.00000000  0.13559620 -0.00000000 -0.00000000  0.00000000  0.48251934 -0.00000000

  11    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.09051495  0.00000000 -0.00000000  0.00000000 -0.53070023  0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.01566071 -0.00000000  0.00000000 -0.00000004

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000098 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                           0.00000033 -0.00000000  0.00000941 -0.00000000 -0.00000000 -0.00000000  0.00000785  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000783  0.00000000  0.00000000 -0.00000000 -0.00000670  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000070 -0.00000000 -0.00000000 -0.00000000  0.00000322

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>          -0.00000000 -0.00000190  0.00000045 -0.00000007  0.00000000  0.00000000 -0.00000000 -0.00893325
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00359437  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000070  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000048 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00359474  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00359471  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000115 -0.00356412 -0.00046558 -0.00000000  0.00000000 -0.00000000 -0.00000065
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000017 -0.00046560  0.00356325  0.00000000  0.00000000  0.00000000 -0.00000010
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00001562 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000002  0.90419449 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.90419632  0.00000000  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00017503  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.90419568  0.00000002  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000002  0.80782080  0.40598067  0.00000000  0.00000000  0.00000000  0.00004183
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000102 -0.40595529  0.80788653  0.00000000  0.00000001  0.00000000 -0.00002974
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00001099 -0.00000699  0.00000091 -0.00000000 -0.00000000  0.00000000  0.12467070
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00104315 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00104242  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000020  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000099  0.00176117  0.00110704  0.00000000  0.00000000  0.00000000 -0.00000015
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000221  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00104093 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000180  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00180339  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.04852310  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.06127877  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001186  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.02267476 -0.00804042 -0.05582165 -0.00000000 -0.00000000 -0.00000000 -0.00000722
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.24729026 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.04853260  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.46142496  0.05329063 -0.02446152  0.00000000 -0.00000000 -0.00000000 -0.00001393
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00370559  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000072  0.00000000  0.00000000  0.00000000

  12    1  |1 1>+          0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.03761049  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.29370402  0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00001910  0.18070670 -0.28704233 -0.00000000 -0.00000000 -0.00000000  0.57282878
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.29369913 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00005685 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000321  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000158 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001 -0.00007939  0.00207666  0.00000000  0.00000000  0.00000000 -0.00000002

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000163  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00104269 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00104267 -0.00000000  0.00000000

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000040  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00207900 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000246  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00446999 -0.00185441  0.04847449  0.00000000  0.00000000  0.00000000 -0.00000056

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.15237490  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.01171380 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.01170718 -0.00000000 -0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000940  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.04853896 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.06028558  0.00000000  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.71574635 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.06028424  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.75255469 -0.06522266 -0.00249422 -0.00000000  0.00000000 -0.00000000 -0.00003095

  13    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00002280  0.33906093  0.01295802  0.00000000 -0.00000000  0.00000000 -0.57281308

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.29368833 -0.00000001 -0.00000000

  15    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001888 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.29369228  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000012  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000190 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00104316  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000101 -0.00184056  0.00096935 -0.00000000  0.00000000  0.00000000  0.00000013

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000020  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00104241 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00104517 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00180089 -0.00000000  0.00000000

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.21520728 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.04852159 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.02228243  0.01228444 -0.05504193 -0.00000000 -0.00000000 -0.00000000  0.00000853

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001186  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.06127841 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.04853260  0.00000000  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000072 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00371184  0.00000000  0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.46874067  0.05126623  0.02846467  0.00000000  0.00000000  0.00000000 -0.00001458

  12    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.59751352  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.03761222  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001430  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.29370376 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00005685 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.29369492  0.00000000  0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00001887 -0.15826592 -0.30001364 -0.00000000 -0.00000000 -0.00000000 -0.57282613

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000171 -0.00000000 -0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000007
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00608571  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000103 -0.00000000  0.00000000

   3    1  |0 0>           0.00000014  0.00000000  0.00000000  0.00608603 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000016  0.00000000 -0.00000000 -0.00608603 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00058912 -0.00604607
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00605094 -0.00058870
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00001157  0.00000000 -0.00000000  0.41445603 -0.00000000  0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000438  0.00000001  0.00000001 -0.41445593 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00007008  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00001595 -0.00000000  0.00000000  0.41445342  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.17386230 -0.37640138
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.37629638  0.17390592
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000041 -0.00000233
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00032314 -0.00000000 -0.00000000 -0.00014781 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000  0.00032274  0.00000000  0.00000000 -0.00014793 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000035 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00014782 -0.00025384
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00032297  0.00000000  0.00000000  0.00014787 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00018274  0.00000000  0.00000000 -0.00025578  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000972 -0.00000000  0.00000000  0.01494736  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000913  0.00000000  0.00000000 -0.01887314 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000319  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01709245  0.00303447
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000430  0.00000000 -0.00000000 -0.01494482  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00806535 -0.01614587
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000  0.00000138  0.00000000  0.00000000 -0.00114083 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000019  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00001363 -0.00000000  0.00000000  0.01158860  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000001  0.70554177 -0.00000001 -0.00000000 -0.64312819 -0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.64111988  0.37472781
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000  0.00000001  0.70553786  0.00000002  0.00000001 -0.64313439 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00077051 -0.00000000 -0.00000000 -0.00010874  0.00000000 -0.00000000

  16    1  |1 1>+         -0.06660483 -0.00000000 -0.00000000 -0.00000169 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00029220  0.00000156

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00032306  0.00000000  0.00000000 -0.00014774  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00032306  0.00000000 -0.00000000 -0.00014773 -0.00000000  0.00000000  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000045 -0.00000000 -0.00000000  0.00029328  0.00000000 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000041  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00037505  0.00000000  0.00000000 -0.00000034  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.01492390  0.00008019

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000186  0.00000000  0.00000000 -0.00360791  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000209 -0.00000000 -0.00000000 -0.00360599 -0.00000000  0.00000000  0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000253  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000027 -0.00000000 -0.00000000  0.01493495  0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00001694  0.00000000  0.00000000  0.01856953  0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001668 -0.00000000  0.00000000 -0.01856931  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00010802  0.02009320

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00397823  0.74254615

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.70553117 -0.00000001  0.00000000  0.64314728  0.00000001 -0.00000000 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.70553292 -0.00000001 -0.00000000  0.64314358 -0.00000000  0.00000002 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00007274  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.06660367  0.00000000  0.00000000 -0.00000057 -0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00032314 -0.00000000 -0.00000000 -0.00014783  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00014508  0.00025541

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00032273 -0.00000000 -0.00000000  0.00014793  0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00032256 -0.00000000 -0.00000000 -0.00014848 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00018351  0.00000000 -0.00000000 -0.00025542 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000984 -0.00000000 -0.00000000  0.01494700 -0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01705804 -0.00321912

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000319  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000959 -0.00000000 -0.00000000  0.01887299  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000398 -0.00000000  0.00000000  0.01494488  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000019 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000121  0.00000000  0.00000000 -0.00114288 -0.00000000  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00823974 -0.01605839

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001375  0.00000000 -0.00000000 -0.01158924  0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.70554004  0.00000001  0.00000000  0.64313021 -0.00000000  0.00000002 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00077051 -0.00000000 -0.00000000 -0.00010874  0.00000000 -0.00000000
                          -0.00000000  0.00000001  0.70553437 -0.00000002 -0.00000001  0.64314011  0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.64509419 -0.36783707

  16    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.06660501 -0.00000000  0.00000000 -0.00000111  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00103500
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000001  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000000 -0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000004
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000001
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000005  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000005 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000 -0.00000001  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000078
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000034
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.99219817
                           0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00001990 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00001989 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00001989  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00001126  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000 -0.00000031  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000031 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000131
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000016  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000404
                           0.00000000  0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+         -0.00000169  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000157  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+         -0.00000000  0.00000004 -0.04709842 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.07197481
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  15    1  |1 1>+          0.04709572 -0.00000000 -0.00000000  0.00000000
                          -0.00000113 -0.00000000 -0.00000000 -0.00000000

  16    1  |1 1>+          0.00000001  0.99777943  0.00000090  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000001

   2    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00001988  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00001988 -0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000003 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00002310  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000002

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000064 -0.00000000  0.00000000

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000064 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000128  0.00000000

  11    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000127  0.00000000  0.00000000

  12    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000381

  13    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.07197913

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000004 -0.04709528  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.04709493 -0.00000004  0.00000000

  16    1  |1 0>           0.00002396  0.00000000  0.00000000 -0.00000000
                           0.99777951 -0.00000001 -0.00000003  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00001990 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00001989 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00001986 -0.00000000

   5    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00001130 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000033 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000130

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000030  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000016 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000169 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000397

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000157 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.04709851  0.00000004  0.00000000

  14    1  |1 1>-          0.00000113  0.00000000  0.00000000 -0.00000000
                           0.04709615 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.07197465

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003 -0.00000090  0.99777942 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1  -8132.65275137     -0.00000912       -2.00      0.00000000        0.00      0.0000
   2   1  -8132.60546911      0.04727314    10375.25      0.04728226    10377.26      1.2866
   3   1  -8132.60546911      0.04727314    10375.25      0.04728226    10377.26      1.2866
   4   1  -8132.60546906      0.04727319    10375.27      0.04728231    10377.27      1.2866
   5   1  -8132.60476652      0.04797573    10529.46      0.04798485    10531.46      1.3057
   6   1  -8132.60476646      0.04797579    10529.47      0.04798492    10531.47      1.3057
   7   1  -8132.60476625      0.04797600    10529.51      0.04798512    10531.52      1.3057
   8   1  -8132.60476619      0.04797606    10529.53      0.04798518    10531.53      1.3057
   9   1  -8132.60476619      0.04797606    10529.53      0.04798518    10531.53      1.3057
  10   1  -8132.60348309      0.04925916    10811.14      0.04926828    10813.14      1.3407
  11   1  -8132.60348301      0.04925924    10811.15      0.04926836    10813.16      1.3407
  12   1  -8132.60348301      0.04925924    10811.15      0.04926836    10813.16      1.3407
  13   1  -8132.60348300      0.04925925    10811.16      0.04926838    10813.16      1.3407
  14   1  -8132.60348292      0.04925933    10811.17      0.04926846    10813.18      1.3407
  15   1  -8132.60348291      0.04925933    10811.17      0.04926846    10813.18      1.3407
  16   1  -8132.60348287      0.04925938    10811.18      0.04926850    10813.19      1.3407
  17   1  -8132.59449639      0.05824586    12783.49      0.05825498    12785.49      1.5852
  18   1  -8132.59449638      0.05824587    12783.49      0.05825500    12785.49      1.5852
  19   1  -8132.59449636      0.05824589    12783.49      0.05825501    12785.50      1.5852
  20   1  -8132.59449636      0.05824589    12783.50      0.05825501    12785.50      1.5852
  21   1  -8132.59449634      0.05824591    12783.50      0.05825503    12785.50      1.5852
  22   1  -8132.54985326      0.10288899    22581.52      0.10289811    22583.53      2.8000
  23   1  -8132.54985304      0.10288921    22581.57      0.10289834    22583.57      2.8000
  24   1  -8132.54985264      0.10288961    22581.66      0.10289873    22583.66      2.8000
  25   1  -8132.54985263      0.10288962    22581.66      0.10289875    22583.66      2.8000
  26   1  -8132.54985262      0.10288963    22581.66      0.10289875    22583.67      2.8000
  27   1  -8132.54860591      0.10413634    22855.29      0.10414547    22857.29      2.8339
  28   1  -8132.54860591      0.10413634    22855.29      0.10414547    22857.29      2.8339
  29   1  -8132.54860572      0.10413653    22855.33      0.10414565    22857.33      2.8339
  30   1  -8132.54860522      0.10413703    22855.44      0.10414615    22857.44      2.8340
  31   1  -8132.54860522      0.10413703    22855.44      0.10414615    22857.44      2.8340
  32   1  -8132.54860513      0.10413712    22855.46      0.10414625    22857.46      2.8340
  33   1  -8132.54860493      0.10413731    22855.50      0.10414644    22857.50      2.8340
  34   1  -8132.54708006      0.10566219    23190.17      0.10567131    23192.17      2.8755
  35   1  -8132.54708005      0.10566220    23190.17      0.10567132    23192.17      2.8755
  36   1  -8132.54707999      0.10566226    23190.19      0.10567138    23192.19      2.8755
  37   1  -8132.54707999      0.10566226    23190.19      0.10567139    23192.19      2.8755
  38   1  -8132.54707956      0.10566269    23190.28      0.10567181    23192.28      2.8755
  39   1  -8132.54707940      0.10566285    23190.31      0.10567197    23192.32      2.8755
  40   1  -8132.54707910      0.10566315    23190.38      0.10567227    23192.38      2.8755
  41   1  -8132.54707910      0.10566315    23190.38      0.10567228    23192.38      2.8755
  42   1  -8132.54707896      0.10566329    23190.41      0.10567241    23192.41      2.8755
  43   1  -8132.54055042      0.11219183    24623.26      0.11220095    24625.26      3.0531
  44   1  -8132.54055019      0.11219205    24623.31      0.11220118    24625.31      3.0531
  45   1  -8132.54055011      0.11219214    24623.33      0.11220126    24625.33      3.0532
  46   1  -8132.54055006      0.11219219    24623.34      0.11220131    24625.34      3.0532
  47   1  -8132.54055004      0.11219221    24623.34      0.11220134    24625.35      3.0532
  48   1  -8132.54006746      0.11267479    24729.26      0.11268391    24731.26      3.0663
  49   1  -8132.53894284      0.11379941    24976.08      0.11380853    24978.09      3.0969
  50   1  -8132.53894283      0.11379942    24976.09      0.11380854    24978.09      3.0969
  51   1  -8132.53894278      0.11379947    24976.10      0.11380860    24978.10      3.0969
  52   1  -8132.53612899      0.11661326    25593.65      0.11662238    25595.65      3.1735
  53   1  -8132.53612898      0.11661327    25593.65      0.11662239    25595.66      3.1735
  54   1  -8132.53612895      0.11661330    25593.66      0.11662242    25595.66      3.1735
  55   1  -8132.53612864      0.11661361    25593.73      0.11662273    25595.73      3.1735
  56   1  -8132.53612809      0.11661416    25593.85      0.11662328    25595.85      3.1735
  57   1  -8132.53335919      0.11938306    26201.55      0.11939218    26203.56      3.2488
  58   1  -8132.53335919      0.11938306    26201.55      0.11939219    26203.56      3.2488
  59   1  -8132.53335919      0.11938306    26201.55      0.11939219    26203.56      3.2488
  60   1  -8132.53054406      0.12219819    26819.40      0.12220731    26821.40      3.3254

 E0 =  -8132.65274225 is the energy of the lowest zeroth-order state
 E1 =  -8132.65275137 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99995956 -0.00000000 -0.00000000 -0.00000000 -0.00000003 -0.00000021  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000003  0.00000000  0.00000000 -0.09426024 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000331  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.09425644
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000333 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00620993 -0.09401688 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.09402805 -0.00620879  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000170  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00253376
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000  0.00253017  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000170  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00098753 -0.00232857 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00232496  0.00098928  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00008679 -0.00000000  0.00000000  0.00000000  0.00000001  0.00000004  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000  0.00000003  0.54779327  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.54777900  0.00000000  0.00000000 -0.40649881 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000100  0.00000000 -0.00000000 -0.00000025  0.00000000

 15  1     3    1  |1 1>+       0.00000016  0.00000000  0.00000000  0.00000000  0.38815653  0.71419025  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.54804159 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.40553196
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.31550049 -0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.70436494
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000001

 18  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000240  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000185 -0.00000000 -0.00000000  0.00006147  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000023  0.00000000  0.00000000 -0.00000000  0.00005624  0.00001023  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000221 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00004869
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000087 -0.00000000 -0.00000000 -0.00000000  0.00002988 -0.00005242 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000033  0.00000000 -0.00000000  0.00000551  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000  0.00000135  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00041673 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00519186  0.00000000  0.00000000  0.00000000  0.00099897 -0.00054261 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00041851  0.00000000  0.00000000 -0.00098477 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000305 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000003  0.00000000 -0.00000000 -0.00000000  0.81259943  0.02093550  0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.54775258 -0.00000003 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.40655676

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000003 -0.54775119 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

 32  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000049  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00074830 -0.00000000 -0.00000000  0.81278687  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000115  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.63235892  0.00000000  0.00000000 -0.00096251 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00004686 -0.00000120 -0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000121  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00001195

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000120  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00004690 -0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000229 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000230  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00005912

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000104 -0.00000000  0.00000000  0.00000000 -0.00000176  0.00006823  0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00519190 -0.00000000 -0.00000000 -0.00000000  0.00002927 -0.00113641 -0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00041729 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00041728 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00098621

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000303 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.54779250  0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000  0.40648840

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000013 -0.00000000 -0.00000000 -0.00000000  0.42441549 -0.69325891 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000100  0.00000000 -0.00000000 -0.00000025  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.54777682 -0.00000000 -0.00000000  0.40649962  0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000003  0.54729466  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000002 -0.31679548 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000239  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00004868

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000024  0.00000000  0.00000000 -0.00000000  0.00005670 -0.00000732 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000184  0.00000000  0.00000000 -0.00006148 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000222 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000032  0.00000000 -0.00000000  0.00000552  0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000088  0.00000000 -0.00000000  0.00000000 -0.00002715 -0.00005389 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000135 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00003559

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00041672  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00098305

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00041850 -0.00000000 -0.00000000  0.00098477  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00519186 -0.00000000 -0.00000000 -0.00000000  0.00096969  0.00059332  0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000304 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001017 -0.00000000 -0.00000000  0.00000029
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00001060  0.00000000 -0.00000792 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.09425667 -0.00000000  0.00001039 -0.00000000 -0.00000000  0.00000000  0.00000808  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000066 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000823 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000069  0.00000000  0.00000222 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000378  0.00000000  0.00000000  0.00000005
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00253372  0.00000000  0.00000068 -0.00000000 -0.00000000  0.00000000  0.00000222 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000003 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000007 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.40648724  0.00000000  0.72056224 -0.00000036 -0.00000000 -0.00000000 -0.11831453 -0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.58330996 -0.00000000 -0.00000000  0.43927652
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000588  0.00000000 -0.00000000  0.00000118

 15  1     3    1  |1 1>+       0.00000000  0.57735782 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000001  0.00000000  0.00000029  0.57010538 -0.00000000 -0.45683474  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000002 -0.00000000 -0.00000013 -0.25975461 -0.00000000 -0.57654538  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00004867 -0.00000000  0.00006058 -0.00000000 -0.00000000 -0.00000000 -0.00025207 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00011546  0.00000000  0.00000000 -0.00005913
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00019645 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00022778 -0.00000000  0.00012361 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00017192  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00022841  0.00000000  0.00000000 -0.00031426
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00003559  0.00000000  0.00012825 -0.00000000 -0.00000000  0.00000000  0.00029075  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00098304  0.00000000  0.00000077 -0.00000000  0.00000000  0.00000000  0.00000184 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000025 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002  0.00000000  0.00000000  0.00000137
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000  0.00000002 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.57733783  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000001  0.00000000  0.00000015  0.29904132  0.00000000  0.66616105 -0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.40655637  0.00000000  0.29471019 -0.00000015 -0.00000000  0.00000000  0.66808981  0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000582  0.00000000 -0.00000000  0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.57740827 -0.00000000  0.00000000 -0.00691315

 33  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000 -0.00000208
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00982176 -0.00000000 -0.00000000  0.77461250

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00026177 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00033798 -0.00000000 -0.00017771  0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001193  0.00000000  0.00033913 -0.00000000 -0.00000000 -0.00000000 -0.00017551 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00026161  0.00000000 -0.00000000  0.00000356

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00005912  0.00000000  0.00011890 -0.00000000 -0.00000000  0.00000000  0.00008534  0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00011949  0.00000000 -0.00008454  0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00098621 -0.00000000  0.00000018 -0.00000000 -0.00000000  0.00000000  0.00000106 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000020  0.00000000  0.00000107 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000003

 45  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000001  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.00000000  0.00000036  0.71977877 -0.00000000 -0.12299065  0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.57735498 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000576 -0.00000000  0.00000000 -0.00000122
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.57118517 -0.00000000 -0.00000000  0.45493254

 48  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.40719574 -0.00000000 -0.57366340  0.00000029  0.00000000  0.00000000  0.45175462  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.70340528 -0.00000000 -0.25464891  0.00000013  0.00000000 -0.00000000 -0.57928856 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00005893 -0.00000000 -0.00025247  0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00019647 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00011384  0.00000000  0.00000000 -0.00006221

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00004868 -0.00000000 -0.00022698  0.00000000  0.00000000 -0.00000000 -0.00012510 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00023683 -0.00000000 -0.00000000  0.00030796

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00017191 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00013014 -0.00000000 -0.00028990  0.00000000 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000076  0.00000000 -0.00000184 -0.00000000 -0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000006  0.00000000  0.00000000  0.00000136

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000025  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000003  0.00000001  0.00000000  0.00000017
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.99550040  0.00000001  0.00000001 -0.00000001  0.00000000  0.00663309 -0.00000000
                               -0.00000000  0.00000917 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000012  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000001 -0.00000000  0.99550075  0.00000001  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000001  0.99550073  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.05117572  0.00000001  0.00000000 -0.00000001  0.99418770  0.00058667  0.00000000  0.00663067
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.99418672  0.00000000 -0.00000000  0.00000000 -0.05117550 -0.00661767  0.00000000  0.00058793
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00019654 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00019611  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.10319311  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000189 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00000000  0.00019654  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00005486 -0.00000000 -0.00000000  0.00000000 -0.00018894  0.04250409  0.00000000  0.09426619
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00018818  0.00000000 -0.00000000 -0.00000000  0.00005535  0.09412062 -0.00000000 -0.04257109
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000120
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000  0.03848322  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.03848469 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00033319  0.00000000
                                0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000

 15  1     3    1  |1 1>+      -0.02857902  0.00000000  0.00000000 -0.00000000  0.07143568  0.00032846  0.00000000  0.00057368
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.03840167  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.06669842 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00331421 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00418327 -0.00000000 -0.00000000  0.00000000  0.00000000  0.61278245 -0.00000000
                                0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001121  0.00000000

 20  1     8    1  |1 1>+       0.00365127 -0.00000000 -0.00000000  0.00000000 -0.00122752  0.55388099 -0.00000000  0.10327125
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00331376 -0.00000000  0.00000000 -0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00230077  0.00000000  0.00000000 -0.00000000  0.00327991  0.26561242 -0.00000000 -0.52096789
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00025440 -0.00000000 -0.00000000  0.00000000  0.00000000  0.03710861 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000068  0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00000000 -0.00256642 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00483541 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00517865  0.00000000 -0.00000000 -0.00000000  0.00206986 -0.00964079  0.00000000  0.00553831
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00483486  0.00000000  0.00000000 -0.00000000  0.00000000  0.00960072 -0.00000000
                               -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018  0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.07615474 -0.00000000  0.00000000 -0.00000000  0.01097528  0.00066054 -0.00000000  0.00000216

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.03848412 -0.00000000 -0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.03848415  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000071  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000000  0.07696699  0.00000000  0.00000000 -0.00000000  0.00000000  0.00065928 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00009124 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000079  0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00327924 -0.00000000  0.00000000 -0.00000000  0.00047250 -0.48528264  0.00000000 -0.00157653

 35  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00080090 -0.00000000  0.00000000 -0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00080046  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000887  0.00000000
                               -0.00000000  0.00331132  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.48514164  0.00000000

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00411421 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00411414 -0.00000000  0.00000000 -0.00000000  0.00000001

 40  1    12    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00063627 -0.00000000 -0.00000000  0.00000000 -0.00441536 -0.00212162  0.00000000  0.65104422

 41  1    13    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00079506  0.00000000  0.00000000 -0.00000000  0.00551683 -0.00003633  0.00000000  0.01113680

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00483498  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00483498 -0.00000000 -0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.03848310 -0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.04758743 -0.00000000 -0.00000000  0.00000000 -0.06045921  0.00033220 -0.00000000 -0.00057151

 47  1     3    1  |1 1>-       0.00000000 -0.00000035  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000000  0.03848460  0.00000000  0.00000000 -0.00000000  0.00000000  0.00033320 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.03855919  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.06660772  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00331416  0.00000000 -0.00000000  0.00000000 -0.00000001

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00384920  0.00000000 -0.00000000  0.00000000  0.00014697  0.55451713 -0.00000000 -0.09969799

 52  1     8    1  |1 1>-       0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001121  0.00000000
                               -0.00000000  0.00418328  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.61277926  0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00331378 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000068 -0.00000000
                                0.00000000 -0.00025485 -0.00000000 -0.00000000  0.00000000  0.00000000  0.03717480 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00128139  0.00000000  0.00000000 -0.00000000  0.00379611 -0.26225492 -0.00000000 -0.52268279

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00256656 -0.00000000  0.00000000 -0.00000000  0.00000001

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00483542 -0.00000000 -0.00000000  0.00000000 -0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000018  0.00000000
                                0.00000000 -0.00483485 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00960073  0.00000000

 59  1    15    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00438343 -0.00000000 -0.00000000  0.00000000 -0.00344792 -0.00960421  0.00000000 -0.00560138

 60  1    16    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000077
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00663491  0.00000000  0.00000134 -0.00000000  0.00000132 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00663489  0.00000000 -0.00000135  0.00000000 -0.00000000  0.00000000  0.00000131  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000111 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000002  0.10320884  0.00000000  0.00001869 -0.00000000  0.00006061 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000507
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.10320892 -0.00000002  0.00001828 -0.00000000 -0.00000000 -0.00000000 -0.00006061  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000448  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000927 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00033111  0.00000000 -0.00027645  0.00000000 -0.00000000 -0.00000000 -0.00017416  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00026604
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000002

 15  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00026147 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00033068 -0.00000000 -0.00032538  0.00000000  0.00002194 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000 -0.00057326 -0.00000000 -0.00008773  0.00000000 -0.00027162  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.48555903  0.00000010  0.47716705 -0.00000062 -0.00000000 -0.00000019 -0.32490768  0.00000000
                               -0.00000000  0.00000000  0.00000006 -0.00000008  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.26402830
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00001503

 20  1     8    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.43406932  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000010  0.48538784  0.00000025  0.19383494  0.00000000 -0.54364300  0.00000032  0.00000000
                                0.00000000 -0.00000000 -0.00000003  0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000001  0.00000000 -0.00000000 -0.38042967 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.49308789
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00002806

 24  1    12    1  |1 1>+       0.37568975  0.00000007 -0.21829176  0.00000028  0.00000000  0.00000040  0.67260047 -0.00000000
                               -0.00000000  0.00000000 -0.00000003  0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00959693 -0.00000000  0.00000108 -0.00000000  0.00000000 -0.00000000 -0.00000169  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000378  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000633
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000012  0.00000000  0.00000101  0.00000000  0.00000062 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00026096  0.00000000 -0.00000000  0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00033366  0.00000000  0.00010241 -0.00000000  0.00031228 -0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00033367  0.00000000  0.00010153 -0.00000000 -0.00000000 -0.00000000 -0.00031259  0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00026064

 33  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00001071

 34  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.57768066  0.00000000 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000014 -0.00000017  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002  0.11716487  0.00000107  0.82503096 -0.00000000 -0.21240482  0.00000013  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000011  0.00000014 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.11710109 -0.00000002  0.82563351 -0.00000107  0.00000000  0.00000013  0.21011415 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00003285
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.57733913

 38  1    10    1  |1 0>        0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.60240765  0.00000012  0.06943782 -0.00000009  0.00000000  0.00000019  0.32084940 -0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000012  0.60239351 -0.00000009 -0.06862056 -0.00000000  0.32106601 -0.00000019 -0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00001276  0.00000000 -0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000007 -0.00000000  0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00959285  0.00000000 -0.00000320  0.00000000  0.00000000  0.00000000  0.00000338  0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00959292 -0.00000000 -0.00000319  0.00000000 -0.00000333  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00033112 -0.00000000 -0.00027595  0.00000000  0.00017494 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00026146 -0.00000000  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00025328

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00033203  0.00000000  0.00032523 -0.00000000  0.00000000  0.00000000  0.00002166 -0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00057248  0.00000000 -0.00008774  0.00000000  0.00000000  0.00000000  0.00027181 -0.00000000

 50  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000008 -0.00000010  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000010 -0.48554667  0.00000062  0.47808861 -0.00000000  0.32358482 -0.00000019 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.43410909  0.00000000 -0.00000000  0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00001454
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.25550304

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000002 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.48538759  0.00000010 -0.19536583  0.00000025 -0.00000000 -0.00000032 -0.54309401  0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00003057
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.53716934

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000001 -0.00000000  0.00000000  0.38038302  0.00000000 -0.00000000  0.00000000

 56  1    12    1  |1 1>-      -0.00000000  0.00000000  0.00000004 -0.00000005  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000007  0.37570821  0.00000029  0.22016865 -0.00000000  0.67197155 -0.00000040 -0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00959703 -0.00000000 -0.00000136 -0.00000000 -0.00000152  0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000654

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000372  0.00000000 -0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000011 -0.00000000  0.00000098 -0.00000000  0.00000000 -0.00000000 -0.00000062  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000 -0.00000051  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000002  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000178 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000000  0.00000048
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000149 -0.00000000  0.00000000 -0.00000000  0.00000083  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000013  0.00000000  0.00000000 -0.00000000 -0.00000861  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00002183  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000040 -0.00000000  0.00000002 -0.00000000  0.00000000 -0.00000000  0.00001816 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00002182  0.00000000 -0.00000000  0.00000000 -0.00001532
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000781  0.00000000  0.00000000  0.00000000  0.00004850 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000373 -0.00000000 -0.00000000  0.00000000  0.00010600 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000370 -0.00000000 -0.00000000  0.00000000  0.00000012  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000121  0.00000000 -0.00000000  0.00000000  0.00000190
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00019262 -0.00000000  0.00000145 -0.00000000 -0.00000000 -0.00000000  0.00000077 -0.00000000
                                0.00000017  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000154 -0.00000000 -0.00000000  0.00000000 -0.00000123 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000110  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000049  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000001  0.00000001  0.61859902  0.00000020  0.00000000 -0.00000000 -0.21383481
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.12673354  0.00000000  0.69437897 -0.00000001 -0.00000001  0.00000000  0.22898333 -0.00000000
                                0.00010924  0.00000000  0.00097939 -0.00000000 -0.00000000  0.00000000  0.00017568  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.69940968 -0.00000000 -0.00000001  0.00000001  0.03081760 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000001  0.00000001 -0.00000019  0.60624802 -0.00000000  0.00000000 -0.00000002
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.09251861 -0.00000000 -0.00000000  0.00000000  0.53671501  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.71011365 -0.00000000 -0.13444729  0.00000000  0.00000000  0.00000000  0.48283953 -0.00000000
                                0.00061207  0.00000000 -0.00018963  0.00000000  0.00000000 -0.00000000  0.00037044  0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.01698778  0.00000001  0.00000000 -0.00000000 -0.59747001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000091  0.00000000 -0.00000000 -0.00000000  0.00001432
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000786  0.00000000 -0.00000000  0.00000000 -0.00000649 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000090  0.00000000  0.00000933 -0.00000000 -0.00000000  0.00000000 -0.00000790  0.00000000
                                0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000069 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000161 -0.00000000 -0.00000000

 30  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000010  0.00000000  0.00000000 -0.00000000 -0.00000163

 32  1     4    1  |1 0>        0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000788 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000264  0.00000000

 33  1     5    1  |1 0>       -0.00000030  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00034652 -0.00000000 -0.00000140  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00127204 -0.00000000 -0.00000000  0.00000000  0.65435063 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000001 -0.00000001  0.00000015 -0.48694084  0.00000000 -0.00000000  0.00000001

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000001 -0.00000001 -0.48660773 -0.00000015 -0.00000000  0.00000000 -0.15339739

 37  1     9    1  |1 0>        0.00001582 -0.00000000 -0.00000117  0.00000000 -0.00000000  0.00000000 -0.00050214 -0.00000000
                               -0.01835545  0.00000000  0.00082921  0.00000000 -0.00000000  0.00000000  0.65451443 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.11575955 -0.00000004 -0.00000000  0.00000000  0.71550169

 39  1    11    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000004  0.11419765  0.00000000  0.00000000  0.00000005

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.07132008 -0.00000000  0.00000000 -0.00000000  0.00528580  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000342  0.00000000 -0.00000000  0.00000000 -0.00000012  0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000761 -0.00000000 -0.00000000 -0.00000000  0.00001890

 43  1    15    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000757 -0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000221 -0.00000000 -0.00000176  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000122 -0.00000000 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000154 -0.00000000  0.00000000 -0.00000000 -0.00000121  0.00000000 -0.00000000

 47  1     3    1  |1 1>-      -0.00000018 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00020914  0.00000000  0.00000145 -0.00000000 -0.00000000 -0.00000000 -0.00000078 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000111 -0.00000000 -0.00000000  0.00000000  0.00000220

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000048 -0.00000000 -0.00000000 -0.00000000 -0.00000180

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000001  0.00000001 -0.00000020  0.61811455  0.00000000  0.00000000  0.00000002

 51  1     7    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.69927482  0.00000000  0.00000001 -0.00000001  0.03379119  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00012341 -0.00000000 -0.00097859  0.00000000  0.00000000 -0.00000000  0.00017699 -0.00000000
                                0.14317568  0.00000000  0.69381032 -0.00000001 -0.00000001  0.00000000 -0.23069023 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000001 -0.00000001 -0.60568913 -0.00000019 -0.00000000  0.00000000 -0.24865808

 54  1    10    1  |1 1>-       0.00058385 -0.00000000 -0.00019125  0.00000000  0.00000000  0.00000000 -0.00037019 -0.00000000
                               -0.67737735  0.00000000  0.13559620 -0.00000000 -0.00000000  0.00000000  0.48251934 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.09051495  0.00000000 -0.00000000  0.00000000 -0.53070023  0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.01566071 -0.00000000  0.00000000 -0.00000004

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000098 -0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000
                                0.00000033 -0.00000000  0.00000941 -0.00000000 -0.00000000 -0.00000000  0.00000785  0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000783  0.00000000  0.00000000 -0.00000000 -0.00000670  0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000070 -0.00000000 -0.00000000 -0.00000000  0.00000322


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>       -0.00000000 -0.00000190  0.00000045 -0.00000007  0.00000000  0.00000000 -0.00000000 -0.00893325
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00359437  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000070  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000048 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00359474  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00359471  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000115 -0.00356412 -0.00046558 -0.00000000  0.00000000 -0.00000000 -0.00000065
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000017 -0.00046560  0.00356325  0.00000000  0.00000000  0.00000000 -0.00000010
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00001562 -0.00000000 -0.00000000 -0.00000001 -0.00000001 -0.00000002  0.90419449 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.90419632  0.00000000  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00017503  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.90419568  0.00000002  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000002  0.80782080  0.40598067  0.00000000  0.00000000  0.00000000  0.00004183
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000102 -0.40595529  0.80788653  0.00000000  0.00000001  0.00000000 -0.00002974
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00001099 -0.00000699  0.00000091 -0.00000000 -0.00000000  0.00000000  0.12467070
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00104315 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00104242  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000020  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000099  0.00176117  0.00110704  0.00000000  0.00000000  0.00000000 -0.00000015
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000221  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00104093 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000180  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00180339  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.04852310  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.06127877  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001186  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.02267476 -0.00804042 -0.05582165 -0.00000000 -0.00000000 -0.00000000 -0.00000722
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+      -0.24729026 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.04853260  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.46142496  0.05329063 -0.02446152  0.00000000 -0.00000000 -0.00000000 -0.00001393
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00370559  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000072  0.00000000  0.00000000  0.00000000

 24  1    12    1  |1 1>+       0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000  0.03761049  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.29370402  0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00001910  0.18070670 -0.28704233 -0.00000000 -0.00000000 -0.00000000  0.57282878
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.29369913 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00005685 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000321  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000158 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001 -0.00007939  0.00207666  0.00000000  0.00000000  0.00000000 -0.00000002

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000163  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00104269 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00104267 -0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000040  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00207900 -0.00000000 -0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000246  0.00000000  0.00000000 -0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00446999 -0.00185441  0.04847449  0.00000000  0.00000000  0.00000000 -0.00000056

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.15237490  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.01171380 -0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.01170718 -0.00000000 -0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000940  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.04853896 -0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000005 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.06028558  0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.71574635 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.06028424  0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.75255469 -0.06522266 -0.00249422 -0.00000000  0.00000000 -0.00000000 -0.00003095

 41  1    13    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00002280  0.33906093  0.01295802  0.00000000 -0.00000000  0.00000000 -0.57281308

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.29368833 -0.00000001 -0.00000000

 43  1    15    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001888 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.29369228  0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000012  0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000190 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00104316  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000101 -0.00184056  0.00096935 -0.00000000  0.00000000  0.00000000  0.00000013

 47  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000020  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00104241 -0.00000000 -0.00000000  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00104517 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00180089 -0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.21520728 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.04852159 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.02228243  0.01228444 -0.05504193 -0.00000000 -0.00000000 -0.00000000  0.00000853

 52  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00001186  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.06127841 -0.00000000 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000002 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.04853260  0.00000000  0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000072 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00371184  0.00000000  0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.46874067  0.05126623  0.02846467  0.00000000  0.00000000  0.00000000 -0.00001458

 56  1    12    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.59751352  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.03761222  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001430  0.00000000  0.00000000  0.00000000  0.00000000  0.00000001 -0.29370376 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00005685 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.29369492  0.00000000  0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00001887 -0.15826592 -0.30001364 -0.00000000 -0.00000000 -0.00000000 -0.57282613

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000171 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000007
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00608571  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000103 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000014  0.00000000  0.00000000  0.00608603 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000016  0.00000000 -0.00000000 -0.00608603 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00058912 -0.00604607
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00605094 -0.00058870
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00001157  0.00000000 -0.00000000  0.41445603 -0.00000000  0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000438  0.00000001  0.00000001 -0.41445593 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00007008  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00001595 -0.00000000  0.00000000  0.41445342  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.17386230 -0.37640138
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.37629638  0.17390592
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000041 -0.00000233
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00032314 -0.00000000 -0.00000000 -0.00014781 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000  0.00000000  0.00032274  0.00000000  0.00000000 -0.00014793 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000035 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00014782 -0.00025384
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00032297  0.00000000  0.00000000  0.00014787 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00018274  0.00000000  0.00000000 -0.00025578  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000972 -0.00000000  0.00000000  0.01494736  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000913  0.00000000  0.00000000 -0.01887314 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000319  0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01709245  0.00303447
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000430  0.00000000 -0.00000000 -0.01494482  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00806535 -0.01614587
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000  0.00000138  0.00000000  0.00000000 -0.00114083 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000019  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00001363 -0.00000000  0.00000000  0.01158860  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000001  0.70554177 -0.00000001 -0.00000000 -0.64312819 -0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.64111988  0.37472781
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000001  0.70553786  0.00000002  0.00000001 -0.64313439 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00077051 -0.00000000 -0.00000000 -0.00010874  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.06660483 -0.00000000 -0.00000000 -0.00000169 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00029220  0.00000156

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00032306  0.00000000  0.00000000 -0.00014774  0.00000000 -0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00032306  0.00000000 -0.00000000 -0.00014773 -0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000045 -0.00000000 -0.00000000  0.00029328  0.00000000 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000041  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00037505  0.00000000  0.00000000 -0.00000034  0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.01492390  0.00008019

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000186  0.00000000  0.00000000 -0.00360791  0.00000000 -0.00000000  0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000209 -0.00000000 -0.00000000 -0.00360599 -0.00000000  0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000253  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000027 -0.00000000 -0.00000000  0.01493495  0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00001694  0.00000000  0.00000000  0.01856953  0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001668 -0.00000000  0.00000000 -0.01856931  0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00010802  0.02009320

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00397823  0.74254615

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.70553117 -0.00000001  0.00000000  0.64314728  0.00000001 -0.00000000 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.70553292 -0.00000001 -0.00000000  0.64314358 -0.00000000  0.00000002 -0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00007274  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.06660367  0.00000000  0.00000000 -0.00000057 -0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00032314 -0.00000000 -0.00000000 -0.00014783  0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00014508  0.00025541

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000035 -0.00000000 -0.00000000 -0.00000003  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00032273 -0.00000000 -0.00000000  0.00014793  0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00032256 -0.00000000 -0.00000000 -0.00014848 -0.00000000  0.00000000  0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00018351  0.00000000 -0.00000000 -0.00025542 -0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000984 -0.00000000 -0.00000000  0.01494700 -0.00000000  0.00000000 -0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.01705804 -0.00321912

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000 -0.00000319  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000959 -0.00000000 -0.00000000  0.01887299  0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000398 -0.00000000  0.00000000  0.01494488  0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000019 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000121  0.00000000  0.00000000 -0.00114288 -0.00000000  0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00823974 -0.01605839

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001375  0.00000000 -0.00000000 -0.01158924  0.00000000 -0.00000000  0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.70554004  0.00000001  0.00000000  0.64313021 -0.00000000  0.00000002 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00077051 -0.00000000 -0.00000000 -0.00010874  0.00000000 -0.00000000
                               -0.00000000  0.00000001  0.70553437 -0.00000002 -0.00000001  0.64314011  0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.64509419 -0.36783707

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.06660501 -0.00000000  0.00000000 -0.00000111  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00103500
                                0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000001  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000 -0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000004
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000001
                                0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000005  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000005 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000 -0.00000001  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000078
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000034
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.99219817
                                0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00001990 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00001989 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00001989  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00001126  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000 -0.00000031  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000031 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000131
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000016  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000404
                                0.00000000  0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+      -0.00000169  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000157  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000004 -0.04709842 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.07197481
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.04709572 -0.00000000 -0.00000000  0.00000000
                               -0.00000113 -0.00000000 -0.00000000 -0.00000000

 28  1    16    1  |1 1>+       0.00000001  0.99777943  0.00000090  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000001

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00001988  0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00001988 -0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000003 -0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00002310  0.00000000  0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000002

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000064 -0.00000000  0.00000000

 36  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000064 -0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000128  0.00000000

 39  1    11    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000127  0.00000000  0.00000000

 40  1    12    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000381

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.07197913

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000004 -0.04709528  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.04709493 -0.00000004  0.00000000

 44  1    16    1  |1 0>        0.00002396  0.00000000  0.00000000 -0.00000000
                                0.99777951 -0.00000001 -0.00000003  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00001990 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00001989 -0.00000000 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00001986 -0.00000000

 49  1     5    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00001130 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000033 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000130

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000030  0.00000000 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000016 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000169 -0.00000000 -0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000397

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000157 -0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.04709851  0.00000004  0.00000000

 58  1    14    1  |1 1>-       0.00000113  0.00000000  0.00000000 -0.00000000
                                0.04709615 -0.00000000 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.07197465

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003 -0.00000090  0.99777942 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.89%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.89%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.88%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.88%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.52%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   15.07%   51.01%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%   30.03%    0.00%    0.00%    0.00%    0.00%    0.00%   16.45%
 17  1     5    1  |1 1>+         0.00%    9.95%    0.00%    0.00%    0.00%    0.00%    0.00%   49.61%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.03%    0.04%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.53%
 31  1     3    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.06%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%   39.99%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%   30.01%    0.00%    0.00%    0.00%    0.00%    0.00%   16.52%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   18.01%   48.06%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.01%    0.00%    0.00%   16.52%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%   29.95%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%   10.04%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+        16.52%    0.00%   51.92%    0.00%    0.00%    0.00%    1.40%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   34.03%    0.00%    0.00%   19.30%
 15  1     3    1  |1 1>+         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%   32.50%    0.00%   20.87%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    6.75%    0.00%   33.24%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    8.94%    0.00%   44.38%    0.00%    0.00%
 31  1     3    1  |1 0>         16.53%    0.00%    8.69%    0.00%    0.00%    0.00%   44.63%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%   60.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%   51.81%    0.00%    1.51%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%   33.33%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   32.63%    0.00%    0.00%   20.70%
 48  1     4    1  |1 1>-        16.58%    0.00%   32.91%    0.00%    0.00%    0.00%   20.41%    0.00%
 49  1     5    1  |1 1>-        49.48%    0.00%    6.48%    0.00%    0.00%    0.00%   33.56%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%   99.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%   99.10%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%   99.10%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.26%    0.00%    0.00%    0.00%   98.84%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>         98.84%    0.00%    0.00%    0.00%    0.26%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.06%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.89%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.89%    0.00%    0.18%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.08%    0.00%    0.00%    0.00%    0.51%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.44%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.55%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   30.68%    0.00%    1.07%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    7.05%    0.00%   27.14%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.58%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.59%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.55%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.54%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   42.39%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.23%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.44%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   30.75%    0.00%    0.99%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.55%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.88%    0.00%   27.32%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    1.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          1.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+        23.58%    0.00%   22.77%    0.00%    0.00%    0.00%   10.56%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.97%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   18.84%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%   23.56%    0.00%    3.76%    0.00%   29.55%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   14.47%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   24.31%
 24  1    12    1  |1 1>+        14.11%    0.00%    4.77%    0.00%    0.00%    0.00%   45.24%    0.00%
 25  1    13    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.37%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    1.37%    0.00%   68.07%    0.00%    4.51%    0.00%    0.00%
 36  1     8    1  |1 0>          1.37%    0.00%   68.17%    0.00%    0.00%    0.00%    4.41%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.33%
 38  1    10    1  |1 0>         36.29%    0.00%    0.48%    0.00%    0.00%    0.00%   10.29%    0.00%
 39  1    11    1  |1 0>          0.00%   36.29%    0.00%    0.47%    0.00%   10.31%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%   23.58%    0.00%   22.86%    0.00%   10.47%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   18.85%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.53%
 53  1     9    1  |1 1>-        23.56%    0.00%    3.82%    0.00%    0.00%    0.00%   29.50%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   28.86%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   14.47%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%   14.12%    0.00%    4.85%    0.00%   45.15%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37       38       39       40

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%   38.27%    0.00%    0.00%    0.00%    4.57%
 19  1     7    1  |1 1>+         1.61%    0.00%   48.22%    0.00%    0.00%    0.00%    5.24%    0.00%
 20  1     8    1  |1 1>+         0.00%   48.92%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   36.75%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.86%    0.00%    0.00%    0.00%   28.81%    0.00%    0.00%
 23  1    11    1  |1 1>+        50.43%    0.00%    1.81%    0.00%    0.00%    0.00%   23.31%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%   35.70%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   42.82%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.71%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   23.68%    0.00%    0.00%    0.00%    2.35%
 37  1     9    1  |1 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%   42.84%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    1.34%    0.00%    0.00%    0.00%   51.19%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.30%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.51%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   38.21%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%   48.90%    0.00%    0.00%    0.00%    0.11%    0.00%    0.00%
 52  1     8    1  |1 1>-         2.05%    0.00%   48.14%    0.00%    0.00%    0.00%    5.32%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%   36.69%    0.00%    0.00%    0.00%    6.18%
 54  1    10    1  |1 1>-        45.88%    0.00%    1.84%    0.00%    0.00%    0.00%   23.28%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.82%    0.00%    0.00%    0.00%   28.16%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     41       42       43       44       45       46       47       48

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   81.76%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%   81.76%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   81.76%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%   65.26%   16.48%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   16.48%   65.27%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.55%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.38%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.05%    0.01%    0.31%    0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         6.12%    0.00%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%
 22  1    10    1  |1 1>+         0.00%   21.29%    0.28%    0.06%    0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    8.63%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    3.27%    8.24%    0.00%    0.00%    0.00%   32.81%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    8.63%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.23%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          2.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.36%    0.00%    0.00%
 39  1    11    1  |1 0>         51.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.36%    0.00%
 40  1    12    1  |1 0>          0.00%   56.63%    0.43%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%   11.50%    0.02%    0.00%    0.00%    0.00%   32.81%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    8.63%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.63%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         4.63%    0.00%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.05%    0.02%    0.30%    0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.38%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%   21.97%    0.26%    0.08%    0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-        35.70%    0.00%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    8.63%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    8.63%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    2.50%    9.00%    0.00%    0.00%    0.00%   32.81%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   17.18%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   17.18%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   17.18%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.02%   14.17%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.16%    3.02%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.03%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%   49.78%    0.00%    0.00%   41.36%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   41.10%   14.04%
 27  1    15    1  |1 1>+         0.00%    0.00%   49.78%    0.00%    0.00%   41.36%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   55.14%
 42  1    14    1  |1 0>          0.00%   49.78%    0.00%    0.00%   41.36%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>         49.78%    0.00%    0.00%   41.36%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.44%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.03%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-        49.78%    0.00%    0.00%   41.36%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%   49.78%    0.00%    0.00%   41.36%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   41.61%   13.53%
 60  1    16    1  |1 1>-         0.00%    0.44%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     57       58       59       60

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   98.45%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.22%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.52%
 27  1    15    1  |1 1>+         0.22%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%   99.56%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.52%
 42  1    14    1  |1 0>          0.00%    0.00%    0.22%    0.00%
 43  1    15    1  |1 0>          0.00%    0.22%    0.00%    0.00%
 44  1    16    1  |1 0>         99.56%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.22%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.22%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.52%
 60  1    16    1  |1 1>-         0.00%    0.00%   99.56%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.72       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3029.88       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    218379.30 172137.83    225.42  36340.98   9643.98     16.19      0.12     14.23
 REAL TIME  *    220084.79 SEC
 DISK USED  *         3.12 GB (local),       76.85 GB (total)
 SF USED    *        17.54 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-X2C energy=  -8132.530544063629

              CI              CI           MULTI         RHF-SCF
  -8132.48490885  -8132.48188023  -8131.90699284  -8131.99704825
 **********************************************************************************************************************************
 Molpro calculation terminated
