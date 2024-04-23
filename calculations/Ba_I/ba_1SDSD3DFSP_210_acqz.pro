
 Working directory              : /wrk/irikura/molpro.Mi9GIffSBT/
 Global scratch directory       : /wrk/irikura/molpro.Mi9GIffSBT/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Mi9GIffSBT/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1009), CPU time= 0.01 sec
 ***,Ba SO-CI
 memory,1000,M;
 
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
     occ,22,15
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
 Commands initialized (810), CPU time= 0.01 sec, 661 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2021.2 linked Jun  2 2021 00:13:23


 **********************************************************************************************************************************
 LABEL *   Ba SO-CI                                                                      
  64 bit mpp version                                                                     DATE: 22-Apr-24          TIME: 08:44:41  
 **********************************************************************************************************************************

 SHA1:             1987c3f1b0c3ae76932bc24993909f2d7ae6b1f1
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

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

     101.188 MB (compressed) written to integral file ( 12.9%)

     Node minimum: 2.359 MB, node maximum: 15.991 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    4239444.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    4239444      RECORD LENGTH: 524288

 Memory used in sort:       4.80 MW

 SORT1 READ    97437068. AND WROTE      797893. INTEGRALS IN      3 RECORDS. CPU TIME:     0.38 SEC, REAL TIME:     0.41 SEC
 SORT2 READ     9833613. AND WROTE    50984466. INTEGRALS IN    180 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC

 Node minimum:     4238250.  Node maximum:     4253526. integrals

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
 CPU TIMES  *        12.97     12.79
 REAL TIME  *        13.82 SEC
 DISK USED  *        30.60 MB (local),      580.53 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   16  12

 Initial occupancy:  16  12

 NELEC=   56   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -8131.99704825   -8131.99704825     0.00D+00     0.12D+00     0     0       0.04      0.07    start
   2    -8131.99704825      -0.00000000     0.38D-06     0.21D-04     1     0       0.02      0.09    diag
   3    -8131.99704825      -0.00000000     0.45D-07     0.62D-05     2     0       0.02      0.11    diag
   4    -8131.99704825       0.00000000     0.15D-07     0.21D-05     3     0       0.02      0.13    diag
   5    -8131.99704825      -0.00000000     0.43D-08     0.84D-06     0     0       0.03      0.16    diag

 Final occupancy:  16  12

 !RHF STATE 1.1 Energy              -8131.997048253989
  RHF One-electron energy            -11100.0298050314    
  RHF Two-electron energy            2968.032756777401
  RHF Kinetic energy                 9672.875295202059
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
    4.1     2.00000   -29.94644     1  1  d0   0.72818    1  1  d2+  0.68538
    5.1     2.00000   -29.94644     1  1  d1-  0.99999
    6.1     2.00000   -29.94644     1  1  d2-  0.99999
    7.1     2.00000   -29.94644     1  1  d0  -0.68537    1  1  d2+  0.72818
    8.1     2.00000   -29.94644     1  1  d1+  0.99999
    9.1     2.00000   -10.25509     1  4  s    1.00070
   10.1     2.00000    -3.85433     1  2  d0   0.70233    1  2  d2+  0.71169
   11.1     2.00000    -3.85433     1  2  d1-  0.99988
   12.1     2.00000    -3.85433     1  2  d2-  0.99988
   13.1     2.00000    -3.85433     1  2  d1+  0.99988
   14.1     2.00000    -3.85433     1  2  d0   0.71169    1  2  d2+ -0.70233
   15.1     2.00000    -1.60335     1  5  s    0.99936
   16.1     2.00000    -0.16308     1  6  s    0.99631
    1.2     2.00000  -199.39475     1  1  py   0.99993
    2.2     2.00000  -199.39475     1  1  pz   0.99994
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
 CPU TIMES  *        13.14      0.17     12.79
 REAL TIME  *        14.01 SEC
 DISK USED  *        33.88 MB (local),      619.88 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =        12.00000000                                  
 SETTING NTRIP          =        16.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  27 (  15  12 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     131 (  68  63 )

 State symmetry 1

 Number of active electrons:   2    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            12
 Number of CSFs:              34   (58 determinants, 100 intermediate states)

 State symmetry 2

 Number of active electrons:   2    Spin symmetry=Triplet   Space symmetry=1
 Number of states:            16
 Number of CSFs:              24   (24 determinants, 45 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.486D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.429D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.570D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.487D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.749D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.497D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.313D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.273D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.374D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.497D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 18 SYMMETRY CONTAMINATION OF 0.298D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 19 SYMMETRY CONTAMINATION OF 0.267D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 20 SYMMETRY CONTAMINATION OF 0.807D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 21 SYMMETRY CONTAMINATION OF 0.860D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 22 SYMMETRY CONTAMINATION OF 0.295D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 5 4 1 5   6 3 4 2 1 1 1 5 3 4   6 2 1 6 2 4 3 5 6 4   2 3 5 1 7 9 8151013
                                       121411 4 6 2 5 3 112   9 815101413 711 4 6   2 3 5 11013141512 8   9 711 4 6 5 3 2 1 6
                                        4 5 3 2 6 4 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.148D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.127D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.589D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.277D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.398D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.163D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.106D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.338D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.443D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.316D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.381D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.514D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.514D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 1   3 2 3 1 2 3 1 2 1 3   2 7 9 6 8 410 5 1 2   3 410 8 9 7 5 6 1 2
                                        3 6 5 4 9 7 810 1 2   3 4 5 9 6 710 8 5 4   6 9 710 8 1 2 3 5 7   9 4 6 810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571
 Weight factors for state symmetry  2:    0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
                                          0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571   0.03571
 
 Number of orbital rotations:  2582  ( 141 closed/active, 1776 closed/virtual, 0 active/active, 665 active/virtual )
 Total number of variables:    3662
 
  Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   26    5  -8131.80743974   -8131.94518877   -0.13774903    0.06184723 0.00003344 0.00000000  0.24E+01      2.92
   2    9   14    0  -8131.92111378   -8131.92798142   -0.00686764    0.05815422 0.00008942 0.00000000  0.43E+00      5.56
   3   12   16    0  -8131.92804598   -8131.92805078   -0.00000481    0.00118454 0.00000012 0.00000000  0.11E-01      8.30
   4    7   10    0  -8131.92805079   -8131.92805079   -0.00000000    0.00000243 0.00000001 0.00000000  0.27E-04     10.36

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.11E-08)
                       Final energy:  -8131.92805079
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -8132.017980275367
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.37911387
 One electron energy                        -11098.68560685
 Two electron energy                          2966.66762658
 Virial ratio                                    1.84074641
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -8131.956710398331
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.58615492
 One electron energy                        -11101.23877832
 Two electron energy                          2969.28206792
 Virial ratio                                    1.84072208
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -8131.956710398317
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.58615492
 One electron energy                        -11101.23877831
 Two electron energy                          2969.28206791
 Virial ratio                                    1.84072208
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -8131.956710398192
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.58615492
 One electron energy                        -11101.23877833
 Two electron energy                          2969.28206793
 Virial ratio                                    1.84072208
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -8131.956710398105
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.58615492
 One electron energy                        -11101.23877835
 Two electron energy                          2969.28206795
 Virial ratio                                    1.84072208
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -8131.956710398038
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.58615492
 One electron energy                        -11101.23877833
 Two electron energy                          2969.28206794
 Virial ratio                                    1.84072208
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -8131.902594290847
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.77003282
 One electron energy                        -11103.10464977
 Two electron energy                          2971.20205548
 Virial ratio                                    1.84070050
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -8131.902594290840
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.77003282
 One electron energy                        -11103.10464977
 Two electron energy                          2971.20205548
 Virial ratio                                    1.84070050
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -8131.902594290578
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.77003282
 One electron energy                        -11103.10464977
 Two electron energy                          2971.20205548
 Virial ratio                                    1.84070050
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -8131.902594290304
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.77003282
 One electron energy                        -11103.10464978
 Two electron energy                          2971.20205549
 Virial ratio                                    1.84070050
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Singlet
 ==============================
 !MCSCF STATE 11.1 Singlet Energy            -8131.902594290248
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.77003282
 One electron energy                        -11103.10464976
 Two electron energy                          2971.20205547
 Virial ratio                                    1.84070050
 
 !MCSCF STATE 11.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Singlet
 ==============================
 !MCSCF STATE 12.1 Singlet Energy            -8131.895248530706
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.40947165
 One electron energy                        -11097.16218216
 Two electron energy                          2965.26693363
 Virial ratio                                    1.84073108
 
 !MCSCF STATE 12.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -8131.963469318412
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66210707
 One electron energy                        -11101.97457960
 Two electron energy                          2970.01111029
 Virial ratio                                    1.84071617
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -8131.963469318369
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66210707
 One electron energy                        -11101.97457959
 Two electron energy                          2970.01111027
 Virial ratio                                    1.84071617
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -8131.963469318282
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66210707
 One electron energy                        -11101.97457959
 Two electron energy                          2970.01111027
 Virial ratio                                    1.84071617
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -8131.963469318228
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66210707
 One electron energy                        -11101.97457958
 Two electron energy                          2970.01111026
 Virial ratio                                    1.84071617
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -8131.963469318216
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.66210707
 One electron energy                        -11101.97457959
 Two electron energy                          2970.01111027
 Virial ratio                                    1.84071617
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -8131.907005913123
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.97602212
 One electron energy                        -11105.41599031
 Two electron energy                          2973.50898440
 Virial ratio                                    1.84068305
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -8131.907005913121
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.97602212
 One electron energy                        -11105.41599030
 Two electron energy                          2973.50898439
 Virial ratio                                    1.84068305
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -8131.907005913087
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.97602212
 One electron energy                        -11105.41599030
 Two electron energy                          2973.50898439
 Virial ratio                                    1.84068305
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -8131.907005913085
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.97602212
 One electron energy                        -11105.41599032
 Two electron energy                          2973.50898440
 Virial ratio                                    1.84068305
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Triplet
 ==============================
 !MCSCF STATE 10.1 Triplet Energy            -8131.907005913067
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.97602212
 One electron energy                        -11105.41599029
 Two electron energy                          2973.50898438
 Virial ratio                                    1.84068305
 
 !MCSCF STATE 10.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Triplet
 ==============================
 !MCSCF STATE 11.1 Triplet Energy            -8131.907005913054
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.97602212
 One electron energy                        -11105.41599030
 Two electron energy                          2973.50898439
 Virial ratio                                    1.84068305
 
 !MCSCF STATE 11.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Triplet
 ==============================
 !MCSCF STATE 12.1 Triplet Energy            -8131.907005913054
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.97602212
 One electron energy                        -11105.41599030
 Two electron energy                          2973.50898439
 Virial ratio                                    1.84068305
 
 !MCSCF STATE 12.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Triplet
 ==============================
 !MCSCF STATE 13.1 Triplet Energy            -8131.902898285811
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.69509400
 One electron energy                        -11102.27491969
 Two electron energy                          2970.37202140
 Virial ratio                                    1.84070704
 
 !MCSCF STATE 13.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Triplet
 ==============================
 !MCSCF STATE 14.1 Triplet Energy            -8131.902898285476
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.69509400
 One electron energy                        -11102.27491976
 Two electron energy                          2970.37202147
 Virial ratio                                    1.84070704
 
 !MCSCF STATE 14.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Triplet
 ==============================
 !MCSCF STATE 15.1 Triplet Energy            -8131.902898285212
 Nuclear energy                                  0.00000000
 Kinetic energy                               9672.69509401
 One electron energy                        -11102.27491983
 Two electron energy                          2970.37202155
 Virial ratio                                    1.84070704
 
 !MCSCF STATE 15.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Triplet
 ==============================
 !MCSCF STATE 16.1 Triplet Energy            -8131.900587011146
 Nuclear energy                                  0.00000000
 Kinetic energy                               9671.99993070
 One electron energy                        -11092.47692241
 Two electron energy                          2960.57633540
 Virial ratio                                    1.84076723
 
 !MCSCF STATE 16.1 Triplet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.343407765296
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999999792225
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000073153
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999999917893
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.656592451433
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.242455693651
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999632265
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     1.000000000415
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     3.999999997332
 !MCSCF expec    <11.1 Singlet|LXLX|11.1 Singlet>     3.757544676337
 !MCSCF expec    <12.1 Singlet|LXLX|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     3.999999938451
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.846585178065
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000114003
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999692894
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.153415076587
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     8.692355685538
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     8.862128065140
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     3.999983229673
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     3.359566178604
 !MCSCF expec    <10.1 Triplet|LXLX|10.1 Triplet>     1.307643827103
 !MCSCF expec    <11.1 Triplet|LXLX|11.1 Triplet>     1.136163370724
 !MCSCF expec    <12.1 Triplet|LXLX|12.1 Triplet>     0.642159643218
 !MCSCF expec    <13.1 Triplet|LXLX|13.1 Triplet>     0.999999999999
 !MCSCF expec    <14.1 Triplet|LXLX|14.1 Triplet>     0.999999998225
 !MCSCF expec    <15.1 Triplet|LXLX|15.1 Triplet>     0.000000001776
 !MCSCF expec    <16.1 Triplet|LXLX|16.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.798747780910
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999893997
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000013052
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.999999992876
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.201252319165
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     3.705378510319
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     3.999999855464
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     1.000000004301
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.999999995127
 !MCSCF expec    <11.1 Singlet|LYLY|11.1 Singlet>     0.294621634789
 !MCSCF expec    <12.1 Singlet|LYLY|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000009929
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.411431471973
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999991951
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999732600
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.588568793547
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.793710351086
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     1.116599460654
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     3.999935978013
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     1.479767230379
 !MCSCF expec    <10.1 Triplet|LYLY|10.1 Triplet>     3.206291442923
 !MCSCF expec    <11.1 Triplet|LYLY|11.1 Triplet>     8.882200110377
 !MCSCF expec    <12.1 Triplet|LYLY|12.1 Triplet>     8.521495426569
 !MCSCF expec    <13.1 Triplet|LYLY|13.1 Triplet>     0.000000000655
 !MCSCF expec    <14.1 Triplet|LYLY|14.1 Triplet>     0.999999999346
 !MCSCF expec    <15.1 Triplet|LYLY|15.1 Triplet>     0.999999999999
 !MCSCF expec    <16.1 Triplet|LYLY|16.1 Triplet>     0.000000000000
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.857844453794
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000313778
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999913795
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000089232
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     2.142155229401
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     2.052165796030
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     1.000000512271
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     3.999999995283
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     1.000000007541
 !MCSCF expec    <11.1 Singlet|LZLZ|11.1 Singlet>     1.947833688875
 !MCSCF expec    <12.1 Singlet|LZLZ|12.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000051620
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.741983349962
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999894046
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000574506
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     2.258016129865
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     2.513933963376
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     2.021272474206
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     4.000080792314
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     7.160666591017
 !MCSCF expec    <10.1 Triplet|LZLZ|10.1 Triplet>     7.486064729975
 !MCSCF expec    <11.1 Triplet|LZLZ|11.1 Triplet>     1.981636518899
 !MCSCF expec    <12.1 Triplet|LZLZ|12.1 Triplet>     2.836344930213
 !MCSCF expec    <13.1 Triplet|LZLZ|13.1 Triplet>     0.999999999346
 !MCSCF expec    <14.1 Triplet|LZLZ|14.1 Triplet>     0.000000002429
 !MCSCF expec    <15.1 Triplet|LZLZ|15.1 Triplet>     0.999999998225
 !MCSCF expec    <16.1 Triplet|LZLZ|16.1 Triplet>    -0.000000000000
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     0.000000000000
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
 !MCSCF expec    <12.1 Singlet|L**2|12.1 Singlet>     0.000000000000
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
 !MCSCF expec    <16.1 Triplet|L**2|16.1 Triplet>     0.000000000000
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000 -1382.70624     1  1  s    1.00000
    2.1     2.00000  -222.41565     1  2  s    0.99999
    3.1     2.00000   -48.58892     1  3  s    1.00033
    4.1     2.00000   -29.90225     1  1  d1-  0.99999
    5.1     2.00000   -29.90225     1  1  d2+  0.99999
    6.1     2.00000   -29.90225     1  1  d2-  0.99999
    7.1     2.00000   -29.90225     1  1  d0   0.99999
    8.1     2.00000   -29.90225     1  1  d1+  0.99999
    9.1     2.00000   -10.20961     1  4  s    0.99639
   10.1     2.00000    -3.81058     1  2  d1-  1.00053
   11.1     2.00000    -3.81058     1  2  d2+  1.00053
   12.1     2.00000    -3.81058     1  2  d0   1.00053
   13.1     2.00000    -3.81058     1  2  d2-  1.00053
   14.1     2.00000    -3.81058     1  2  d1+  1.00053
   15.1     2.00000    -1.55516     1  5  s    0.99350
   16.1     0.45084    -0.03348     1  6  s    0.70566
   17.1     0.25889     0.05495     1  3  d1+  0.90988
   18.1     0.25889     0.05495     1  3  d1-  0.90988
   19.1     0.25889     0.05495     1  3  d2-  0.90988
   20.1     0.25889     0.05495     1  3  d2+  0.90988
   21.1     0.25889     0.05495     1  3  d0   0.90988
   22.1     0.06277     0.03955     1  6  s   -1.23394    1  9  s    0.61450    1 13  s    0.94024
    1.2     2.00000  -199.35036     1  1  py   1.00000
    2.2     2.00000  -199.35036     1  1  px   0.99991
    3.2     2.00000  -199.35036     1  1  pz   0.99991
    4.2     2.00000   -41.00007     1  2  px   1.00002
    5.2     2.00000   -41.00007     1  2  pz   1.00002
    6.2     2.00000   -41.00007     1  2  py   1.00002
    7.2     2.00000    -7.65495     1  3  px   0.99410
    8.2     2.00000    -7.65495     1  3  pz   0.99410
    9.2     2.00000    -7.65495     1  3  py   0.99410
   10.2     2.00000    -0.86136     1  4  px   0.99723
   11.2     2.00000    -0.86136     1  4  pz   0.99723
   12.2     2.00000    -0.86136     1  4  py   0.99723
   13.2     0.06398     0.05100     1  5  px  -1.43605
   14.2     0.06398     0.05100     1  5  pz  -1.43605
   15.2     0.06398     0.05100     1  5  py  -1.43605
 *** IN SYMMETRY  1 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.650D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   6 SYMMETRY CONTAMINATION OF 0.196D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   7 SYMMETRY CONTAMINATION OF 0.190D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL   8 SYMMETRY CONTAMINATION OF 0.558D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  11 SYMMETRY CONTAMINATION OF 0.870D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  13 SYMMETRY CONTAMINATION OF 0.862D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  14 SYMMETRY CONTAMINATION OF 0.153D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.359D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.366D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  30 SYMMETRY CONTAMINATION OF 0.445D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  31 SYMMETRY CONTAMINATION OF 0.449D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  32 SYMMETRY CONTAMINATION OF 0.278D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.278D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.213D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.213D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  39 SYMMETRY CONTAMINATION OF 0.157D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  40 SYMMETRY CONTAMINATION OF 0.157D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  41 SYMMETRY CONTAMINATION OF 0.856D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.214D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  50 SYMMETRY CONTAMINATION OF 0.114D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  51 SYMMETRY CONTAMINATION OF 0.105D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  52 SYMMETRY CONTAMINATION OF 0.105D+00 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  53 SYMMETRY CONTAMINATION OF 0.592D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.592D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  56 SYMMETRY CONTAMINATION OF 0.702D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  57 SYMMETRY CONTAMINATION OF 0.702D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.379D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  66 SYMMETRY CONTAMINATION OF 0.379D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  67 SYMMETRY CONTAMINATION OF 0.167D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  68 SYMMETRY CONTAMINATION OF 0.167D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.467D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  70 SYMMETRY CONTAMINATION OF 0.467D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  73 SYMMETRY CONTAMINATION OF 0.291D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  83 SYMMETRY CONTAMINATION OF 0.173D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  1 ORBITAL  84 SYMMETRY CONTAMINATION OF 0.173D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 5 3 2 4 1 6   5 2 3 4 1 1 4 6 3 5   2 1 5 3 6 4 2 1 6 2   4 3 5 1 7 912 81013
                                       111514 6 4 2 5 3 1 9   8121514 7101311 4 6   2 3 5 113101415 812   9 711 4 6 2 3 5 1 6
                                        4 2 3 5 6 4 5 3 2 1
 *** IN SYMMETRY  2 ORBITAL   2 SYMMETRY CONTAMINATION OF 0.137D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   3 SYMMETRY CONTAMINATION OF 0.137D-01 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   4 SYMMETRY CONTAMINATION OF 0.453D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL   5 SYMMETRY CONTAMINATION OF 0.453D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  23 SYMMETRY CONTAMINATION OF 0.132D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  24 SYMMETRY CONTAMINATION OF 0.201D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  25 SYMMETRY CONTAMINATION OF 0.323D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  26 SYMMETRY CONTAMINATION OF 0.303D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  27 SYMMETRY CONTAMINATION OF 0.303D-02 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  33 SYMMETRY CONTAMINATION OF 0.530D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  34 SYMMETRY CONTAMINATION OF 0.530D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  37 SYMMETRY CONTAMINATION OF 0.234D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  38 SYMMETRY CONTAMINATION OF 0.234D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  42 SYMMETRY CONTAMINATION OF 0.153D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  43 SYMMETRY CONTAMINATION OF 0.154D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  44 SYMMETRY CONTAMINATION OF 0.312D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  45 SYMMETRY CONTAMINATION OF 0.313D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  47 SYMMETRY CONTAMINATION OF 0.278D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  48 SYMMETRY CONTAMINATION OF 0.275D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  54 SYMMETRY CONTAMINATION OF 0.570D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  55 SYMMETRY CONTAMINATION OF 0.568D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  64 SYMMETRY CONTAMINATION OF 0.112D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  65 SYMMETRY CONTAMINATION OF 0.112D-03 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  69 SYMMETRY CONTAMINATION OF 0.109D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  72 SYMMETRY CONTAMINATION OF 0.144D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  74 SYMMETRY CONTAMINATION OF 0.111D-04 HAS BEEN REMOVED
 *** IN SYMMETRY  2 ORBITAL  75 SYMMETRY CONTAMINATION OF 0.153D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 3 2 1 3 2 1   3 2 1 3 2 3 1 2 1 3   2 7 9 6 410 8 5 1 2   3 410 8 5 6 9 7 1 2
                                        3 6 5 9 4 710 8 1 2   3 4 5 9 610 7 8 5 4   6 9 710 8 1 2 3 5 9   7 4 610 8 2 1 3
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Reoptimze the CI vectors with natural orbitals 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:                1               2               3               4               5               6               7
 2000000 000      0.95525695      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a00b000 000      0.00000000     -0.00003055      0.00005121      0.64549883      0.00009949      0.00005199      0.00000010
 b00a000 000     -0.00000000      0.00003055     -0.00005121     -0.64549883     -0.00009949     -0.00005199     -0.00000010
 a0b0000 000     -0.00000000     -0.00000409     -0.00003385     -0.00009950      0.64549882      0.00008132      0.00000037
 b0a0000 000      0.00000000      0.00000409      0.00003385      0.00009950     -0.64549882     -0.00008132     -0.00000037
 ab00000 000     -0.00000000     -0.00035304      0.64549874     -0.00005124      0.00003384      0.00001197     -0.00003289
 ba00000 000      0.00000000      0.00035304     -0.64549874      0.00005124     -0.00003384     -0.00001197      0.00003289
 a00000b 000     -0.02909159     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 b00000a 000      0.02909159      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 b000a00 000     -0.00000000      0.43991462      0.00024936      0.00005883      0.00006232     -0.47238099      0.03290994
 a000b00 000      0.00000000     -0.43991462     -0.00024936     -0.00005883     -0.00006232      0.47238099     -0.03290994
 a0000b0 000      0.00000000      0.47238093      0.00025020     -0.00001309     -0.00005241      0.43991469      0.03206244
 b0000a0 000     -0.00000000     -0.47238093     -0.00025020      0.00001309      0.00005241     -0.43991469     -0.03206244
 000b0a0 000     -0.00000000      0.00000615     -0.00001031     -0.12990495     -0.00002002     -0.00001046      0.00000103
 000a0b0 000      0.00000000     -0.00000615      0.00001031      0.12990495      0.00002002      0.00001046     -0.00000103
 0020000 000     -0.04618605     -0.12420338     -0.00006864     -0.00000894     -0.00000559      0.03806325      0.45461906
 0200000 000     -0.04618605      0.02913796      0.00001828      0.00001157      0.00001614     -0.12659492     -0.12729992
 0ba0000 000     -0.00000000     -0.00000532      0.00000893      0.11250098      0.00001734      0.00000906     -0.00000089
 0ab0000 000      0.00000000      0.00000532     -0.00000893     -0.11250098     -0.00001734     -0.00000906      0.00000089
 00b0a00 000      0.00000000      0.00000071      0.00000590      0.00001734     -0.11250098     -0.00001417      0.00000330
 00a0b00 000     -0.00000000     -0.00000071     -0.00000590     -0.00001734      0.11250098      0.00001417     -0.00000330
 0b0a000 000     -0.00000000     -0.00000071     -0.00000590     -0.00001734      0.11250098      0.00001417     -0.00000330
 0a0b000 000      0.00000000      0.00000071      0.00000590      0.00001734     -0.11250098     -0.00001417      0.00000330
 00ba000 000     -0.00000000     -0.00006153      0.11250097     -0.00000893      0.00000590      0.00000209      0.00029080
 00ab000 000      0.00000000      0.00006153     -0.11250097      0.00000893     -0.00000590     -0.00000209     -0.00029080
 0a00b00 000      0.00000000      0.00006153     -0.11250097      0.00000893     -0.00000590     -0.00000209     -0.00029080
 0b00a00 000     -0.00000000     -0.00006153      0.11250097     -0.00000893      0.00000590      0.00000209      0.00029080
 0000000 200     -0.15790598      0.25398677      0.00014036      0.00001828      0.00001143     -0.07783653      0.36092244
 0000000 002     -0.15790597     -0.05958498     -0.00003739     -0.00002366     -0.00003300      0.25887728     -0.10106350
 0000020 000     -0.04618605     -0.09506543     -0.00005035      0.00000263      0.00001055     -0.08853168      0.32731914
 0000200 000     -0.04618605      0.09506542      0.00005035     -0.00000263     -0.00001055      0.08853168     -0.32731915
 0002000 000     -0.04618605      0.09506542      0.00005035     -0.00000263     -0.00001055      0.08853168     -0.32731916
 0000ab0 000     -0.00000000     -0.08853166     -0.00005018     -0.00001184     -0.00001254      0.09506544      0.33597108
 0000ba0 000      0.00000000      0.08853166      0.00005018      0.00001184      0.00001254     -0.09506544     -0.33597108
 0000000 b0a     -0.00000000     -0.00001089      0.00001825      0.23005622      0.00003546      0.00001853      0.00000071
 0000000 a0b      0.00000000      0.00001089     -0.00001825     -0.23005622     -0.00003546     -0.00001853     -0.00000071
 0000000 0ba      0.00000000     -0.00000146     -0.00001207     -0.00003546      0.23005622      0.00002898      0.00000262
 0000000 0ab     -0.00000000      0.00000146      0.00001207      0.00003546     -0.23005622     -0.00002898     -0.00000262
 0000000 ba0     -0.00000000     -0.00012582      0.23005619     -0.00001826      0.00001206      0.00000427     -0.00023087
 0000000 ab0      0.00000000      0.00012582     -0.23005619      0.00001826     -0.00001206     -0.00000427      0.00023087
 0000000 020     -0.15790597     -0.19440179     -0.00010297      0.00000539      0.00002157     -0.18104076     -0.25985893
 00b00a0 000     -0.00000000     -0.00000041     -0.00000341     -0.00001001      0.06495247      0.00000818     -0.00000190
 00a00b0 000      0.00000000      0.00000041      0.00000341      0.00001001     -0.06495247     -0.00000818      0.00000190
 0b000a0 000     -0.00000000     -0.00003552      0.06495246     -0.00000516      0.00000341      0.00000120      0.00016790
 0a000b0 000      0.00000000      0.00003552     -0.06495246      0.00000516     -0.00000341     -0.00000120     -0.00016790
 0000002 000     -0.01796856     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 000b00a 000     -0.00000000      0.00000140     -0.00000235     -0.02955700     -0.00000456     -0.00000238     -0.00000021
 000a00b 000      0.00000000     -0.00000140      0.00000235      0.02955700      0.00000456      0.00000238      0.00000021
 00b000a 000      0.00000000      0.00000019      0.00000155      0.00000456     -0.02955700     -0.00000372     -0.00000076
 00a000b 000     -0.00000000     -0.00000019     -0.00000155     -0.00000456      0.02955700      0.00000372      0.00000076
 0b0000a 000     -0.00000000      0.00001617     -0.02955700      0.00000235     -0.00000155     -0.00000055      0.00006739
 0a0000b 000      0.00000000     -0.00001617      0.02955700     -0.00000235      0.00000155      0.00000055     -0.00006739
 00000ba 000     -0.00000000     -0.02163004     -0.00001146      0.00000060      0.00000240     -0.02014343     -0.06568722
 00000ab 000      0.00000000      0.02163004      0.00001146     -0.00000060     -0.00000240      0.02014343      0.06568722
 0000a0b 000     -0.00000000     -0.02014342     -0.00001142     -0.00000269     -0.00000285      0.02163004     -0.06742352
 0000b0a 000      0.00000000      0.02014342      0.00001142      0.00000269      0.00000285     -0.02163004      0.06742352
 
 Energy:      -8132.01798028  -8131.95671040  -8131.95671040  -8131.95671040  -8131.95671040  -8131.95671040  -8131.90259429

 State:                8               9              10              11              12
 2000000 000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00326930
 a00b000 000      0.00000172     -0.04594633     -0.00000038      0.00000040      0.00000000
 b00a000 000     -0.00000172      0.04594633      0.00000038     -0.00000040     -0.00000000
 a0b0000 000     -0.00000093      0.00000038     -0.04594634      0.00000489     -0.00000000
 b0a0000 000      0.00000093     -0.00000038      0.04594634     -0.00000489      0.00000000
 ab00000 000      0.04594632      0.00000172     -0.00000093     -0.00000021      0.00000000
 ba00000 000     -0.04594632     -0.00000172      0.00000093      0.00000021     -0.00000000
 a00000b 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.55182645
 b00000a 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.55182645
 b000a00 000      0.00002341     -0.00000021     -0.00000315     -0.03206245      0.00000000
 a000b00 000     -0.00002341      0.00000021      0.00000315      0.03206245     -0.00000000
 a0000b0 000      0.00002310      0.00000036      0.00000376      0.03290995      0.00000000
 b0000a0 000     -0.00002310     -0.00000036     -0.00000376     -0.03290995     -0.00000000
 000b0a0 000      0.00001760     -0.46905704     -0.00000385      0.00000412      0.00000000
 000a0b0 000     -0.00001760      0.46905704      0.00000385     -0.00000412     -0.00000000
 0020000 000      0.00032493     -0.00000001     -0.00000861     -0.11548118      0.23150370
 0200000 000     -0.00008908      0.00000369      0.00004703      0.45145236      0.23150368
 0ba0000 000     -0.00001524      0.40621531      0.00000334     -0.00000357      0.00000000
 0ab0000 000      0.00001524     -0.40621531     -0.00000334      0.00000357     -0.00000000
 00b0a00 000     -0.00000825      0.00000334     -0.40621531      0.00004324     -0.00000000
 00a0b00 000      0.00000825     -0.00000334      0.40621531     -0.00004324      0.00000000
 0b0a000 000      0.00000825     -0.00000334      0.40621531     -0.00004324      0.00000000
 0a0b000 000     -0.00000825      0.00000334     -0.40621531      0.00004324     -0.00000000
 00ba000 000     -0.40621521     -0.00001524      0.00000825      0.00000185     -0.00000000
 00ab000 000      0.40621521      0.00001524     -0.00000825     -0.00000185      0.00000000
 0a00b00 000      0.40621521      0.00001524     -0.00000825     -0.00000185      0.00000000
 0b00a00 000     -0.40621521     -0.00001524      0.00000825      0.00000185     -0.00000000
 0000000 200      0.00025796     -0.00000000     -0.00000684     -0.09168061     -0.18130059
 0000000 002     -0.00007072      0.00000293      0.00003733      0.35840837     -0.18130060
 0000020 000      0.00023585      0.00000368      0.00003841      0.33597117      0.23150369
 0000200 000     -0.00023585     -0.00000368     -0.00003841     -0.33597116      0.23150369
 0002000 000     -0.00023585     -0.00000368     -0.00003841     -0.33597116      0.23150369
 0000ab0 000      0.00023903     -0.00000213     -0.00003212     -0.32731923      0.00000001
 0000ba0 000     -0.00023903      0.00000213      0.00003212      0.32731923     -0.00000001
 0000000 b0a      0.00001210     -0.32249466     -0.00000265      0.00000284     -0.00000000
 0000000 a0b     -0.00001210      0.32249466      0.00000265     -0.00000284      0.00000000
 0000000 0ba     -0.00000655      0.00000265     -0.32249465      0.00003433     -0.00000000
 0000000 0ab      0.00000655     -0.00000265      0.32249465     -0.00003433      0.00000000
 0000000 ba0      0.32249457      0.00001210     -0.00000655     -0.00000147      0.00000000
 0000000 ab0     -0.32249457     -0.00001210      0.00000655      0.00000147     -0.00000000
 0000000 020     -0.00018724     -0.00000292     -0.00003050     -0.26672778     -0.18130060
 00b00a0 000      0.00000476     -0.00000193      0.23452852     -0.00002497      0.00000000
 00a00b0 000     -0.00000476      0.00000193     -0.23452852      0.00002497     -0.00000000
 0b000a0 000     -0.23452846     -0.00000880      0.00000476      0.00000107     -0.00000000
 0a000b0 000      0.23452846      0.00000880     -0.00000476     -0.00000107      0.00000000
 0000002 000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.15615680
 000b00a 000     -0.00000353      0.09413154      0.00000077     -0.00000083     -0.00000000
 000a00b 000      0.00000353     -0.09413154     -0.00000077      0.00000083      0.00000000
 00b000a 000      0.00000191     -0.00000077      0.09413154     -0.00001002      0.00000000
 00a000b 000     -0.00000191      0.00000077     -0.09413154      0.00001002     -0.00000000
 0b0000a 000     -0.09413151     -0.00000353      0.00000191      0.00000043     -0.00000000
 0a0000b 000      0.09413151      0.00000353     -0.00000191     -0.00000043      0.00000000
 00000ba 000     -0.00004733     -0.00000074     -0.00000771     -0.06742353     -0.00000000
 00000ab 000      0.00004733      0.00000074      0.00000771      0.06742353      0.00000000
 0000a0b 000     -0.00004797      0.00000043      0.00000645      0.06568724     -0.00000000
 0000b0a 000      0.00004797     -0.00000043     -0.00000645     -0.06568724      0.00000000
 
 Energy:      -8131.90259429  -8131.90259429  -8131.90259429  -8131.90259429  -8131.89524853
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:                1               2               3               4               5               6               7
 a00000a 000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 a0a0000 000      0.99999972      0.00020095      0.00012971      0.00005799     -0.00003974      0.00000000      0.00000000
 a00a000 000     -0.00012967     -0.00019685      0.99999971     -0.00009872     -0.00011992      0.00000000     -0.00000000
 aa00000 000     -0.00005802     -0.00005937      0.00009863      0.99999956     -0.00060568      0.00000000     -0.00000000
 0000aa0 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00005222      0.00005218
 00a0a00 000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00009653     -0.00009270
 0a00a00 000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.18557600     -0.00025536
 0a0a000 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00037238     -0.00009454
 00aa000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.80078520     -0.00100129
 a0000a0 000     -0.00017720      0.75133208      0.00006871     -0.00035511     -0.65992381      0.00000000      0.00000000
 a000a00 000     -0.00010281      0.65992387      0.00022004      0.00049422      0.75133193      0.00000000      0.00000000
 000aa00 000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00032540      0.31454149
 000a0a0 000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00105586      0.71085628
 00a00a0 000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00015926     -0.00000106
 0a000a0 000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.56947589     -0.00072552
 0aa0000 000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00065080      0.62908297
 0000000 aa0     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 0000000 a0a     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 0000000 0aa      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 
 Energy:      -8131.96346932  -8131.96346932  -8131.96346932  -8131.96346932  -8131.96346932  -8131.90700591  -8131.90700591

 State:                8               9              10              11              12              13              14
 a00000a 000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 a0a0000 000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 a00a000 000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 aa00000 000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 0000aa0 000      0.99998711     -0.00504873     -0.00046503      0.00027236      0.00002791      0.00000000     -0.00000000
 00a0a00 000      0.00446539      0.88313510      0.00047846     -0.00899393     -0.14131996      0.00000030     -0.00001560
 0a00a00 000      0.00039498     -0.00043418      0.87496348      0.00016311      0.00012455     -0.37020153     -0.00000962
 0a0a000 000      0.00177077      0.35789071      0.00013011      0.04918425      0.81822481     -0.00000030      0.00001560
 00aa000 000     -0.00022523      0.00034840     -0.39842409     -0.00025329      0.00029100     -0.37020151     -0.00000962
 a0000a0 000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 a000a00 000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 000aa00 000      0.00006883     -0.00013163      0.00007911     -0.31732644      0.01916869     -0.00001924      0.74040305
 000a0a0 000     -0.00022496      0.00045419     -0.00014101      0.70206212     -0.04231714      0.00000000     -0.00000001
 00a00a0 000     -0.00155574     -0.30324997     -0.00020112      0.03358919      0.55399344      0.00000052     -0.00002702
 0a000a0 000      0.00009800     -0.00004953      0.27513016     -0.00005206      0.00023992      0.64120785      0.00001666
 0aa0000 000      0.00013767     -0.00026326      0.00015823     -0.63465292      0.03833738      0.00000962     -0.37020152
 0000000 aa0     -0.00000000      0.00000000     -0.00000001     -0.00000000      0.00000000     -0.56102956     -0.00001458
 0000000 a0a     -0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00001458      0.56102955
 0000000 0aa      0.00000000      0.00000001      0.00000000      0.00000000      0.00000000      0.00000045     -0.00002364
 
 Energy:      -8131.90700591  -8131.90700591  -8131.90700591  -8131.90700591  -8131.90700591  -8131.90289829  -8131.90289829

 State:               15              16
 a00000a 000     -0.00000000      1.00000000
 a0a0000 000     -0.00000000     -0.00000000
 a00a000 000     -0.00000000      0.00000000
 aa00000 000     -0.00000000      0.00000000
 0000aa0 000     -0.00000000     -0.00000000
 00a0a00 000      0.37020152     -0.00000000
 0a00a00 000      0.00000030     -0.00000000
 0a0a000 000     -0.37020154     -0.00000000
 00aa000 000      0.00000030      0.00000000
 a0000a0 000      0.00000000      0.00000000
 a000a00 000      0.00000000     -0.00000000
 000aa00 000      0.00003120     -0.00000000
 000a0a0 000      0.00000000     -0.00000000
 00a00a0 000      0.64120785      0.00000000
 0a000a0 000     -0.00000052      0.00000000
 0aa0000 000     -0.00001560      0.00000000
 0000000 aa0      0.00000045      0.00000000
 0000000 a0a      0.00002364     -0.00000000
 0000000 0aa      0.56102954      0.00000000
 
 Energy:      -8131.90289829  -8131.90058701
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        5.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.06      7.92      0.17     12.79
 REAL TIME  *        25.95 SEC
 DISK USED  *       150.51 MB (local),        1.97 GB (total)
 SF USED    *       281.86 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY     LL
    -8132.017980    0.0
    -8131.956710    6.0
    -8131.956710    6.0
    -8131.956710    6.0
    -8131.956710    6.0
    -8131.956710    6.0
    -8131.902594    6.0
    -8131.902594    6.0
    -8131.902594    6.0
    -8131.902594    6.0
    -8131.902594    6.0
    -8131.895249    0.0
    -8131.963469    6.0
    -8131.963469    6.0
    -8131.963469    6.0
    -8131.963469    6.0
    -8131.963469    6.0
    -8131.907006   12.0
    -8131.907006   12.0
    -8131.907006   12.0
    -8131.907006   12.0
    -8131.907006   12.0
    -8131.907006   12.0
    -8131.907006   12.0
    -8131.902898    2.0
    -8131.902898    2.0
    -8131.902898    2.0
    -8131.900587    0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 56
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       34 conf       34 CSFs
 N elec internal:    29620 conf    75790 CSFs
 N-1 el internal:     9955 conf    31960 CSFs
 N-2 el internal:     1621 conf     5743 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     131 (  68  63 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.29 sec, npass=  1  Memory used:   3.03 MW


 Number of p-space configurations:  34

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8132.01798028
     2     -8131.95671040
     3     -8131.95671040
     4     -8131.95671040
     5     -8131.95671040
     6     -8131.95671040
     7     -8131.90259429
     8     -8131.90259429
     9     -8131.90259429
    10     -8131.90259429
    11     -8131.90259429
    12     -8131.89524853

 Number of blocks in overlap matrix:  1099   Smallest eigenvalue:  0.38D+00
 Number of N-2 electron functions:    1153
 Number of N-1 electron functions:   31960

 Number of internal configurations:                38116
 Number of singly external configurations:       2093960
 Number of doubly external configurations:       4954629
 Total number of contracted configurations:      7086705
 Total number of uncontracted configurations:   26752065

 Diagonal Coupling coefficients finished.               Storage:24934866 words, CPU-Time:     23.58 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1848264 words, CPU-time:      0.51 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8132.01798028    -0.00000000    -0.68091136  0.39D-01  0.79D-01    32.00
    1     2     2     1.00000000     0.00000000 -8131.95671040     0.00000000    -0.69530718  0.48D-01  0.86D-01    32.00
    1     3     3     1.00000000     0.00000000 -8131.95671040     0.00000000    -0.69540321  0.48D-01  0.86D-01    32.00
    1     4     4     1.00000000     0.00000000 -8131.95671040    -0.00000000    -0.69550704  0.48D-01  0.86D-01    32.00
    1     5     5     1.00000000     0.00000000 -8131.95671040     0.00000000    -0.69546613  0.48D-01  0.86D-01    32.00
    1     6     6     1.00000000     0.00000000 -8131.95671040     0.00000000    -0.69533757  0.48D-01  0.86D-01    32.00
    1     7     7     1.00000000     0.00000000 -8131.90259429     0.00000000    -0.70131342  0.43D-01  0.93D-01    32.00
    1     8     8     1.00000000     0.00000000 -8131.90259429     0.00000000    -0.70208679  0.43D-01  0.94D-01    32.00
    1     9     9     1.00000000     0.00000000 -8131.90259429     0.00000000    -0.70213373  0.43D-01  0.94D-01    32.00
    1    10    10     1.00000000     0.00000000 -8131.90259429     0.00000000    -0.70212100  0.43D-01  0.94D-01    32.00
    1    11    11     1.00000000     0.00000000 -8131.90259429     0.00000000    -0.70140929  0.43D-01  0.93D-01    32.00
    1    12    12     1.00000000     0.00000000 -8131.89524853     0.00000000    -0.68945418  0.47D-01  0.85D-01    32.00
    2     1     1     1.07981156    -0.57455862 -8132.59253889    -0.57455862    -0.01008249  0.18D-02  0.93D-03   268.22
    2     2     2     1.08756230    -0.57525392 -8132.53196432    -0.57525392    -0.01152861  0.24D-02  0.12D-02   268.22
    2     3     3     1.08760781    -0.57523253 -8132.53194293    -0.57523253    -0.01155307  0.24D-02  0.12D-02   268.22
    2     4     4     1.08767714    -0.57519115 -8132.53190154    -0.57519115    -0.01160509  0.25D-02  0.12D-02   268.22
    2     5     5     1.08767693    -0.57518447 -8132.53189487    -0.57518447    -0.01161539  0.24D-02  0.12D-02   268.22
    2     6     6     1.08768947    -0.57517999 -8132.53189039    -0.57517999    -0.01161955  0.25D-02  0.12D-02   268.22
    2     7     7     1.08822669    -0.57530732 -8132.47790162    -0.57530732    -0.01186255  0.25D-02  0.15D-02   268.22
    2     8     8     1.08840758    -0.57514704 -8132.47774134    -0.57514704    -0.01205739  0.27D-02  0.15D-02   268.22
    2     9     9     1.08859473    -0.57497307 -8132.47756736    -0.57497307    -0.01228101  0.28D-02  0.15D-02   268.22
    2    10    10     1.08858182    -0.57497269 -8132.47756698    -0.57497269    -0.01228362  0.28D-02  0.15D-02   268.22
    2    11    11     1.08859708    -0.57497241 -8132.47756670    -0.57497241    -0.01228127  0.28D-02  0.15D-02   268.22
    2    12    12     1.08692284    -0.57357175 -8132.46882028    -0.57357175    -0.01226836  0.33D-02  0.13D-02   268.22
    3     1     1     1.07697071    -0.58417905 -8132.60215932    -0.00962043    -0.00019748  0.25D-04  0.25D-04   499.60
    3     2     2     1.08128788    -0.58607412 -8132.54278452    -0.01082020    -0.00022084  0.32D-04  0.31D-04   499.60
    3     3     3     1.08129287    -0.58607311 -8132.54278350    -0.01084057    -0.00022198  0.33D-04  0.31D-04   499.60
    3     4     4     1.08130144    -0.58607093 -8132.54278133    -0.01087978    -0.00022458  0.33D-04  0.32D-04   499.60
    3     5     5     1.08129953    -0.58607028 -8132.54278068    -0.01088581    -0.00022521  0.33D-04  0.32D-04   499.60
    3     6     6     1.08130059    -0.58607026 -8132.54278065    -0.01089026    -0.00022527  0.33D-04  0.32D-04   499.60
    3     7     7     1.08143980    -0.58637680 -8132.48897109    -0.01106948    -0.00024677  0.32D-04  0.44D-04   499.60
    3     8     8     1.08145019    -0.58637119 -8132.48896548    -0.01122415    -0.00025311  0.32D-04  0.45D-04   499.60
    3     9     9     1.08146298    -0.58636604 -8132.48896033    -0.01139297    -0.00025941  0.33D-04  0.47D-04   499.60
    3    10    10     1.08146482    -0.58636601 -8132.48896031    -0.01139333    -0.00025944  0.33D-04  0.47D-04   499.60
    3    11    11     1.08146094    -0.58636558 -8132.48895987    -0.01139317    -0.00026002  0.33D-04  0.47D-04   499.60
    3    12    12     1.07947268    -0.58504666 -8132.48029519    -0.01147490    -0.00030093  0.51D-04  0.50D-04   499.60
    4     1     1     1.07775981    -0.58438145 -8132.60236172    -0.00020240    -0.00000726  0.21D-05  0.75D-06   731.61
    4     2     2     1.08182824    -0.58630126 -8132.54301166    -0.00022714    -0.00000757  0.24D-05  0.80D-06   731.61
    4     3     3     1.08182823    -0.58630121 -8132.54301161    -0.00022811    -0.00000763  0.24D-05  0.81D-06   731.61
    4     4     4     1.08182603    -0.58630108 -8132.54301148    -0.00023015    -0.00000777  0.24D-05  0.83D-06   731.61
    4     5     5     1.08182543    -0.58630105 -8132.54301145    -0.00023077    -0.00000780  0.24D-05  0.84D-06   731.61
    4     6     6     1.08182542    -0.58630104 -8132.54301144    -0.00023079    -0.00000781  0.24D-05  0.84D-06   731.61
    4     7     7     1.08195565    -0.58663387 -8132.48922816    -0.00025706    -0.00001058  0.47D-05  0.12D-05   731.61
    4     8     8     1.08195182    -0.58663368 -8132.48922797    -0.00026249    -0.00001082  0.48D-05  0.12D-05   731.61
    4     9     9     1.08194795    -0.58663354 -8132.48922783    -0.00026750    -0.00001100  0.49D-05  0.13D-05   731.61
    4    10    10     1.08194786    -0.58663354 -8132.48922783    -0.00026752    -0.00001100  0.49D-05  0.13D-05   731.61
    4    11    11     1.08194712    -0.58663351 -8132.48922780    -0.00026793    -0.00001103  0.49D-05  0.13D-05   731.61
    4    12    12     1.07989124    -0.58535790 -8132.48060643    -0.00031124    -0.00001301  0.49D-05  0.16D-05   731.61
    5     1     1     1.07790425    -0.58438861 -8132.60236888    -0.00000716    -0.00000024  0.46D-07  0.32D-07   958.51
    5     2     2     1.08191404    -0.58630892 -8132.54301932    -0.00000765    -0.00000025  0.55D-07  0.36D-07   958.51
    5     3     3     1.08191427    -0.58630892 -8132.54301931    -0.00000771    -0.00000025  0.55D-07  0.36D-07   958.51
    5     4     4     1.08191442    -0.58630892 -8132.54301931    -0.00000784    -0.00000026  0.56D-07  0.36D-07   958.51
    5     5     5     1.08191424    -0.58630891 -8132.54301931    -0.00000786    -0.00000026  0.56D-07  0.36D-07   958.51
    5     6     6     1.08191414    -0.58630891 -8132.54301931    -0.00000787    -0.00000026  0.57D-07  0.36D-07   958.51
    5     7     7     1.08204264    -0.58664521 -8132.48923950    -0.00001134    -0.00000056  0.14D-06  0.93D-07   958.51
    5     8     8     1.08204246    -0.58664521 -8132.48923950    -0.00001153    -0.00000056  0.14D-06  0.93D-07   958.51
    5     9     9     1.08204259    -0.58664521 -8132.48923950    -0.00001166    -0.00000056  0.14D-06  0.93D-07   958.51
    5    10    10     1.08204210    -0.58664520 -8132.48923949    -0.00001166    -0.00000057  0.14D-06  0.92D-07   958.51
    5    11    11     1.08204130    -0.58664520 -8132.48923949    -0.00001169    -0.00000057  0.14D-06  0.92D-07   958.51
    5    12    12     1.07995888    -0.58537146 -8132.48062000    -0.00001356    -0.00000057  0.16D-06  0.86D-07   958.51
    6     1     1     1.07790932    -0.58438887 -8132.60236914    -0.00000026    -0.00000001  0.22D-08  0.12D-08  1186.00
    6     2     2     1.08190911    -0.58630920 -8132.54301960    -0.00000028    -0.00000001  0.32D-08  0.16D-08  1186.00
    6     3     3     1.08190905    -0.58630920 -8132.54301960    -0.00000028    -0.00000001  0.32D-08  0.17D-08  1186.00
    6     4     4     1.08190908    -0.58630920 -8132.54301960    -0.00000028    -0.00000001  0.32D-08  0.16D-08  1186.00
    6     5     5     1.08190904    -0.58630920 -8132.54301959    -0.00000028    -0.00000001  0.31D-08  0.16D-08  1186.00
    6     6     6     1.08190911    -0.58630919 -8132.54301959    -0.00000028    -0.00000001  0.31D-08  0.16D-08  1186.00
    6     7     7     1.08201913    -0.58664586 -8132.48924015    -0.00000065    -0.00000003  0.82D-08  0.49D-08  1186.00
    6     8     8     1.08201911    -0.58664586 -8132.48924015    -0.00000065    -0.00000003  0.83D-08  0.49D-08  1186.00
    6     9     9     1.08201913    -0.58664586 -8132.48924015    -0.00000065    -0.00000003  0.83D-08  0.49D-08  1186.00
    6    10    10     1.08201851    -0.58664586 -8132.48924015    -0.00000066    -0.00000003  0.80D-08  0.46D-08  1186.00
    6    11    11     1.08201875    -0.58664586 -8132.48924015    -0.00000066    -0.00000003  0.81D-08  0.47D-08  1186.00
    6    12    12     1.07993366    -0.58537211 -8132.48062064    -0.00000064    -0.00000003  0.63D-08  0.48D-08  1186.00
    7     1     1     1.07791045    -0.58438887 -8132.60236915    -0.00000000    -0.00000001  0.17D-08  0.88D-09  1326.80
    7     2     2     1.08191017    -0.58630920 -8132.54301960    -0.00000000    -0.00000001  0.25D-08  0.15D-08  1326.80
    7     3     3     1.08191011    -0.58630920 -8132.54301960    -0.00000000    -0.00000001  0.25D-08  0.15D-08  1326.80
    7     4     4     1.08191014    -0.58630920 -8132.54301960    -0.00000000    -0.00000001  0.25D-08  0.15D-08  1326.80
    7     5     5     1.08190995    -0.58630920 -8132.54301960    -0.00000000    -0.00000001  0.25D-08  0.14D-08  1326.80
    7     6     6     1.08191009    -0.58630920 -8132.54301959    -0.00000000    -0.00000001  0.25D-08  0.15D-08  1326.80
    7     7     7     1.08202098    -0.58664589 -8132.48924018    -0.00000003    -0.00000000  0.28D-09  0.19D-09  1326.80
    7     8     8     1.08202099    -0.58664589 -8132.48924018    -0.00000003    -0.00000000  0.28D-09  0.19D-09  1326.80
    7     9     9     1.08202099    -0.58664589 -8132.48924018    -0.00000003    -0.00000000  0.28D-09  0.19D-09  1326.80
    7    10    10     1.08202083    -0.58664589 -8132.48924018    -0.00000003    -0.00000000  0.26D-09  0.18D-09  1326.80
    7    11    11     1.08202089    -0.58664589 -8132.48924018    -0.00000003    -0.00000000  0.27D-09  0.18D-09  1326.80
    7    12    12     1.07993529    -0.58537214 -8132.48062067    -0.00000003    -0.00000000  0.28D-09  0.20D-09  1326.80


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   6.2%
 S   1.9%  35.5%
 P   0.5%  25.8%  11.7%

 Initialization:   1.9%
 Other:           16.5%

 Total CPU:     1326.8 seconds
 =====================================



 gnormi=  0.92772085  gnorms=  0.02013855  gnormp=  0.05214059  gnorm=  1.00000000
 ecorri= -0.54214974  ecorrs= -0.01177165  ecorrp= -0.03046748  ecorr= -0.58438887

 gnormi=  0.92429116  gnorms=  0.02118475  gnormp=  0.05452410  gnorm=  1.00000000
 ecorri= -0.54192041  ecorrs= -0.01242372  ecorrp= -0.03196507  ecorr= -0.58630920

 gnormi=  0.92429121  gnorms=  0.02118471  gnormp=  0.05452408  gnorm=  1.00000000
 ecorri= -0.54192044  ecorrs= -0.01242368  ecorrp= -0.03196508  ecorr= -0.58630920

 gnormi=  0.92429118  gnorms=  0.02118472  gnormp=  0.05452410  gnorm=  1.00000000
 ecorri= -0.54192042  ecorrs= -0.01242370  ecorrp= -0.03196508  ecorr= -0.58630920

 gnormi=  0.92429134  gnorms=  0.02118458  gnormp=  0.05452408  gnorm=  1.00000000
 ecorri= -0.54192051  ecorrs= -0.01242372  ecorrp= -0.03196497  ecorr= -0.58630920

 gnormi=  0.92429122  gnorms=  0.02118469  gnormp=  0.05452409  gnorm=  1.00000000
 ecorri= -0.54192044  ecorrs= -0.01242374  ecorrp= -0.03196502  ecorr= -0.58630920

 gnormi=  0.92419650  gnorms=  0.01890400  gnormp=  0.05689950  gnorm=  1.00000000
 ecorri= -0.54217608  ecorrs= -0.01108974  ecorrp= -0.03338008  ecorr= -0.58664589

 gnormi=  0.92419649  gnorms=  0.01890401  gnormp=  0.05689949  gnorm=  1.00000000
 ecorri= -0.54217608  ecorrs= -0.01108973  ecorrp= -0.03338009  ecorr= -0.58664589

 gnormi=  0.92419649  gnorms=  0.01890401  gnormp=  0.05689950  gnorm=  1.00000000
 ecorri= -0.54217608  ecorrs= -0.01108973  ecorrp= -0.03338008  ecorr= -0.58664589

 gnormi=  0.92419663  gnorms=  0.01890395  gnormp=  0.05689942  gnorm=  1.00000000
 ecorri= -0.54217615  ecorrs= -0.01108972  ecorrp= -0.03338002  ecorr= -0.58664589

 gnormi=  0.92419657  gnorms=  0.01890400  gnormp=  0.05689943  gnorm=  1.00000000
 ecorri= -0.54217612  ecorrs= -0.01108972  ecorrp= -0.03338005  ecorr= -0.58664589

 gnormi=  0.92598140  gnorms=  0.02002490  gnormp=  0.05399369  gnorm=  1.00000000
 ecorri= -0.54204371  ecorrs= -0.01172205  ecorrp= -0.03160637  ecorr= -0.58537214

 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222000000222000           0.9182784  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                              -0.0000000  -0.0000000   0.0000000   0.0562890
 222222/\00000222000           0.0000000   0.0000000   0.8769912   0.0000000  -0.0000000   0.0000000   0.1124425  -0.0000000
                               0.0000000  -0.0000000   0.0000000  -0.0000000
 222222/0\0000222000           0.0000000   0.0000000   0.0000000   0.8769912  -0.0000000   0.0000000   0.0000000   0.0000000
                              -0.1124425  -0.0000000  -0.0000000   0.0000000
 222222/00\000222000          -0.0000000   0.8769912  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1124425
                              -0.0000000  -0.0000000  -0.0000000   0.0000000
 222222/0000\0222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8744033   0.0673239   0.0000000   0.0000000
                              -0.0000000   0.1029343  -0.0452528  -0.0000000
 222222/000\00222000           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0673239   0.8744032   0.0000000   0.0000000
                              -0.0000000  -0.0452528  -0.1029344  -0.0000000
 222222/00000\222000          -0.0869124   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                               0.0000000   0.0000000  -0.0000000   0.7396124
 222222000/0\0222000           0.0000000   0.2032419   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.6308545
                               0.0000000   0.0000000   0.0000000  -0.0000000
 2222220000/\0222000          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0156022   0.2026425   0.0000000   0.0000000
                              -0.0000000   0.2538896   0.5775100   0.0000000
 22222200/\000222000           0.0000000  -0.0000000  -0.1760131  -0.0000000   0.0000000   0.0000000   0.5463361  -0.0000000
                               0.0000000  -0.0000000   0.0000000  -0.0000000
 22222200/0\00222000           0.0000000   0.0000000  -0.0000000   0.1760127   0.0000000   0.0000000  -0.0000000  -0.0000000
                               0.5463361   0.0000000  -0.0000000   0.0000000
 2222220/0\000222000          -0.0000000  -0.0000000   0.0000000  -0.1760130  -0.0000000  -0.0000000   0.0000000   0.0000000
                              -0.5463361  -0.0000000  -0.0000000  -0.0000000
 2222220/00\00222000           0.0000000  -0.0000000  -0.1760126  -0.0000000   0.0000000   0.0000000   0.5463360   0.0000000
                               0.0000000  -0.0000000   0.0000000   0.0000000
 2222220/\0000222000          -0.0000000  -0.1760128   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.5463360
                               0.0000000   0.0000000   0.0000000   0.0000000
 2222220200000222000          -0.0552711  -0.0000000   0.0000000  -0.0000000  -0.0620907  -0.1296086   0.0000000   0.0000000
                               0.0000000   0.0487057  -0.4434144   0.2213197
 2222220000000222/\0          -0.0000000  -0.0000000  -0.2793493  -0.0000000  -0.0000000   0.0000000  -0.4423801   0.0000000
                               0.0000000  -0.0000000   0.0000000   0.0000000
 2222220000000222/0\          -0.0000000  -0.2793492   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.4423800
                               0.0000000   0.0000000   0.0000000   0.0000000
 22222200000002220/\          -0.0000000  -0.0000000   0.0000000  -0.2793493  -0.0000000   0.0000000   0.0000000   0.0000000
                               0.4423800  -0.0000000  -0.0000000  -0.0000000
 2222220002000222000          -0.0552711  -0.0000000   0.0000000  -0.0000000   0.1432901   0.0110324   0.0000000   0.0000000
                               0.0000000  -0.4083612   0.1795270   0.2213197
 2222220000200222000          -0.0552713  -0.0000000   0.0000000  -0.0000000   0.1432895   0.0110326   0.0000000   0.0000000
                              -0.0000000  -0.4083611   0.1795270   0.2213196
 2222220000020222000          -0.0552713   0.0000000   0.0000000  -0.0000000  -0.1432894  -0.0110324  -0.0000000   0.0000000
                               0.0000000   0.4083611  -0.1795270   0.2213196
 2222220020000222000          -0.0552711   0.0000000   0.0000000  -0.0000000  -0.0811995   0.1185761   0.0000000   0.0000000
                              -0.0000000   0.3596554   0.2638874   0.2213197
 2222220000000222002          -0.1361347   0.0000000  -0.0000000   0.0000000   0.0985436   0.2057017  -0.0000000   0.0000000
                              -0.0000000   0.0394380  -0.3590423  -0.1834509
 2222220000000222020          -0.1361347   0.0000000  -0.0000000   0.0000000  -0.2274147  -0.0175096   0.0000000   0.0000000
                               0.0000000  -0.3306588   0.1453669  -0.1834509
 22222200/00\0222000           0.0000000   0.0000000   0.0000000  -0.1016207   0.0000000   0.0000000   0.0000000  -0.0000000
                              -0.3154272   0.0000000  -0.0000000   0.0000000
 2222220/000\0222000          -0.0000000  -0.0000000  -0.1016207   0.0000000   0.0000000   0.0000000   0.3154272   0.0000000
                              -0.0000000  -0.0000000   0.0000000   0.0000000
 2222220000000222200          -0.1361347  -0.0000000   0.0000000   0.0000000   0.1288711  -0.1881921   0.0000000   0.0000000
                               0.0000000   0.2912208   0.2136755  -0.1834509
 2222220000002222000          -0.0091002  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                               0.0000000  -0.0000000   0.0000000  -0.1574161
 22222200/000\222000           0.0000000  -0.0000000  -0.0000000   0.0249379  -0.0000000   0.0000000  -0.0000000   0.0000000
                              -0.1261272  -0.0000000  -0.0000000   0.0000000
 222222000/00\222000           0.0000000   0.0249379  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1261272
                              -0.0000000  -0.0000000  -0.0000000   0.0000000
 2222220/0000\222000           0.0000000   0.0000000   0.0249380   0.0000000  -0.0000000  -0.0000000   0.1261271  -0.0000000
                               0.0000000   0.0000000  -0.0000000  -0.0000000
 22222200000/\222000          -0.0000000   0.0000000   0.0000000   0.0000000   0.0248643   0.0019144   0.0000000   0.0000000
                               0.0000000   0.1154620  -0.0507603  -0.0000000
 2222220000/0\222000          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0019144   0.0248643  -0.0000000   0.0000000
                              -0.0000000  -0.0507603  -0.1154620  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958184    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.059341
 2          -0.000000   -0.000000    0.000000    0.957852    0.000000    0.000000    0.000000    0.000000    0.048225    0.000000
             0.000000    0.000000
 3          -0.000000    0.000000    0.957852   -0.000000   -0.000000    0.000000   -0.000000   -0.048225    0.000000   -0.000000
             0.000000    0.000000
 4          -0.000000    0.000000    0.000000   -0.000000    0.957852   -0.000000    0.000000    0.000000   -0.000000    0.048225
             0.000000   -0.000000
 5          -0.000000    0.748666   -0.000000    0.000000    0.000000    0.597479   -0.036205    0.000000    0.000000    0.000000
             0.031857   -0.000000
 6          -0.000000   -0.597478   -0.000000   -0.000000    0.000000    0.748666    0.031857    0.000000   -0.000000    0.000000
             0.036205    0.000000
 7          -0.000000    0.000000    0.049027   -0.000000   -0.000000   -0.000000    0.000000    0.958188    0.000000    0.000000
             0.000000    0.000000
 8          -0.000000   -0.000000   -0.000000   -0.049027    0.000000    0.000000    0.000000   -0.000000    0.958188    0.000000
             0.000000    0.000000
 9          -0.000000    0.000000    0.000000   -0.000000   -0.049027   -0.000000   -0.000000    0.000000   -0.000000    0.958188
            -0.000000    0.000000
 10         -0.000000    0.046282    0.000000   -0.000000   -0.000000    0.016174    0.888318   -0.000000   -0.000000    0.000000
            -0.359187    0.000000
 11         -0.000000    0.016174   -0.000000   -0.000000   -0.000000   -0.046282    0.359187   -0.000000   -0.000000    0.000000
             0.888318   -0.000000
 12          0.061965    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.957552

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.960019    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.001329
 2           0.000000    0.959065    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000392    0.000000   -0.000000
             0.000000    0.000000
 3          -0.000000    0.000000    0.959065   -0.000000    0.000000   -0.000000    0.000392   -0.000000   -0.000000    0.000000
            -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.959065   -0.000000    0.000000   -0.000000    0.000000   -0.000392   -0.000000
            -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.959065   -0.000000    0.000000    0.000000    0.000000    0.000370
            -0.000130   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.959065    0.000000    0.000000   -0.000000   -0.000130
            -0.000370   -0.000000
 7          -0.000000    0.000000    0.000392   -0.000000    0.000000    0.000000    0.959441   -0.000000    0.000000    0.000000
             0.000000    0.000000
 8           0.000000   -0.000392   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.959441    0.000000   -0.000000
             0.000000    0.000000
 9          -0.000000    0.000000   -0.000000   -0.000392    0.000000   -0.000000    0.000000    0.000000    0.959441    0.000000
            -0.000000    0.000000
 10          0.000000   -0.000000    0.000000   -0.000000    0.000370   -0.000130    0.000000   -0.000000    0.000000    0.959441
            -0.000000   -0.000000
 11          0.000000    0.000000   -0.000000   -0.000000   -0.000130   -0.000370    0.000000    0.000000   -0.000000   -0.000000
             0.959441   -0.000000
 12          0.001329    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.959554


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95818434 (fixed)   0.96007518 (relaxed)   0.96001918 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00660133   -0.01453095   -0.50383849
 Singles      0.02185086   -0.07670763   -0.08246822
 Pairs        0.05657390    0.03513892    0.00191784
 Total        1.08502609   -0.05609965   -0.58438887
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8132.01749015
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41646746
 One electron energy               -11100.37320896
 Two electron energy                 2967.77083981
 Virial quotient                       -0.84071666
 Correlation energy                    -0.58487900
 !MRCI STATE 1.1 Energy             -8132.602369146442

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.65209912 (Davidson, fixed reference)
 Cluster corrected energies         -8132.65202509 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.65209912 (Davidson, rotated reference)

 Cluster corrected energies         -8132.65035681 (Pople, fixed reference)
 Cluster corrected energies         -8132.65028028 (Pople, relaxed reference)
 Cluster corrected energies         -8132.65035681 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95785203 (fixed)   0.95919718 (relaxed)   0.95906519 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00487615   -0.01076732   -0.47294088
 Singles      0.02303175   -0.07499356   -0.08140325
 Pairs        0.05927782   -0.00000000   -0.03196507
 Total        1.08718572   -0.08576088   -0.58630920
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95657134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.36753978
 One electron energy               -11102.38913099
 Two electron energy                 2969.84611140
 Virial quotient                       -0.84071478
 Correlation energy                    -0.58644826
 !MRCI STATE 2.1 Energy             -8132.543019597641

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59414951 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59397406 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59414951 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59244774 (Pople, fixed reference)
 Cluster corrected energies         -8132.59226574 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59244774 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95785205 (fixed)   0.95919721 (relaxed)   0.95906522 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00487615   -0.01076732   -0.47294089
 Singles      0.02303171   -0.07499357   -0.08140323
 Pairs        0.05927780   -0.00000000   -0.03196508
 Total        1.08718566   -0.08576089   -0.58630920
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95657134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.36754211
 One electron energy               -11102.38913068
 Two electron energy                 2969.84611109
 Virial quotient                       -0.84071478
 Correlation energy                    -0.58644826
 !MRCI STATE 3.1 Energy             -8132.543019597114

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59414947 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59397402 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59414947 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59244770 (Pople, fixed reference)
 Cluster corrected energies         -8132.59226570 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59244770 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95785204 (fixed)   0.95919719 (relaxed)   0.95906520 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00487615   -0.01076732   -0.47294088
 Singles      0.02303173   -0.07499357   -0.08140324
 Pairs        0.05927782    0.00000000   -0.03196508
 Total        1.08718570   -0.08576089   -0.58630920
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95657134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.36754181
 One electron energy               -11102.38913217
 Two electron energy                 2969.84611257
 Virial quotient                       -0.84071478
 Correlation energy                    -0.58644826
 !MRCI STATE 4.1 Energy             -8132.543019597078

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59414950 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59397404 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59414950 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59244773 (Pople, fixed reference)
 Cluster corrected energies         -8132.59226573 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59244773 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.74866555 (fixed)   0.95919728 (relaxed)   0.95906529 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00487615   -0.01076732   -0.47294109
 Singles      0.02303156   -0.07499343   -0.08140315
 Pairs        0.05927779   -0.00000000   -0.03196497
 Total        1.08718551   -0.08576075   -0.58630920
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95657134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.36757349
 One electron energy               -11102.38914770
 Two electron energy                 2969.84612810
 Virial quotient                       -0.84071477
 Correlation energy                    -0.58644826
 !MRCI STATE 5.1 Energy             -8132.543019595575

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59414938 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59397393 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59414938 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59244761 (Pople, fixed reference)
 Cluster corrected energies         -8132.59226561 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59244761 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.74866550 (fixed)   0.95919722 (relaxed)   0.95906523 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00487615   -0.01076732   -0.47294095
 Singles      0.02303169   -0.07499349   -0.08140321
 Pairs        0.05927781   -0.00000002   -0.03196504
 Total        1.08718565   -0.08576084   -0.58630920
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.95657134
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.36755809
 One electron energy               -11102.38914450
 Two electron energy                 2969.84612491
 Virial quotient                       -0.84071477
 Correlation energy                    -0.58644826
 !MRCI STATE 6.1 Energy             -8132.543019594746

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.59414947 (Davidson, fixed reference)
 Cluster corrected energies         -8132.59397401 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.59414947 (Davidson, rotated reference)

 Cluster corrected energies         -8132.59244769 (Pople, fixed reference)
 Cluster corrected energies         -8132.59226569 (Pople, relaxed reference)
 Cluster corrected energies         -8132.59244769 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95818752 (fixed)   0.95953739 (relaxed)   0.95944088 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00398652   -0.00907391   -0.47672502
 Singles      0.02053607   -0.07110175   -0.07654080
 Pairs        0.06181189   -0.00000000   -0.03338008
 Total        1.08633448   -0.08017565   -0.58664589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273335
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35924689
 One electron energy               -11103.25517984
 Two electron energy                 2970.76593965
 Virial quotient                       -0.84070994
 Correlation energy                    -0.58650683
 !MRCI STATE 7.1 Energy             -8132.489240182706

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53987594 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53974778 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53987594 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53815562 (Pople, fixed reference)
 Cluster corrected energies         -8132.53802286 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53815562 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95818751 (fixed)   0.95953738 (relaxed)   0.95944088 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00398652   -0.00907391   -0.47672500
 Singles      0.02053608   -0.07110176   -0.07654081
 Pairs        0.06181188    0.00000000   -0.03338009
 Total        1.08633448   -0.08017567   -0.58664589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273335
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35924820
 One electron energy               -11103.25518218
 Two electron energy                 2970.76594200
 Virial quotient                       -0.84070994
 Correlation energy                    -0.58650683
 !MRCI STATE 8.1 Energy             -8132.489240182544

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53987595 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53974779 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53987595 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53815562 (Pople, fixed reference)
 Cluster corrected energies         -8132.53802286 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53815562 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95818751 (fixed)   0.95953738 (relaxed)   0.95944088 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00398652   -0.00907391   -0.47672500
 Singles      0.02053608   -0.07110176   -0.07654081
 Pairs        0.06181188   -0.00000000   -0.03338008
 Total        1.08633448   -0.08017567   -0.58664589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273335
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35924808
 One electron energy               -11103.25518238
 Two electron energy                 2970.76594220
 Virial quotient                       -0.84070994
 Correlation energy                    -0.58650683
 !MRCI STATE 9.1 Energy             -8132.489240182234

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53987595 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53974779 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53987595 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53815562 (Pople, fixed reference)
 Cluster corrected energies         -8132.53802286 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53815562 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.88831764 (fixed)   0.95953745 (relaxed)   0.95944095 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00398652   -0.00907390   -0.47672506
 Singles      0.02053601   -0.07110175   -0.07654080
 Pairs        0.06181179   -0.00000001   -0.03338003
 Total        1.08633432   -0.08017567   -0.58664589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273335
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35924594
 One electron energy               -11103.25516487
 Two electron energy                 2970.76592468
 Virial quotient                       -0.84070994
 Correlation energy                    -0.58650683
 !MRCI STATE 10.1 Energy            -8132.489240181187

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53987585 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53974769 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53987585 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53815552 (Pople, fixed reference)
 Cluster corrected energies         -8132.53802276 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53815552 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.88831762 (fixed)   0.95953743 (relaxed)   0.95944092 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00398652   -0.00907390   -0.47672503
 Singles      0.02053606   -0.07110178   -0.07654082
 Pairs        0.06181180    0.00000001   -0.03338004
 Total        1.08633438   -0.08017567   -0.58664589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90273335
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.35924740
 One electron energy               -11103.25517250
 Two electron energy                 2970.76593232
 Virial quotient                       -0.84070994
 Correlation energy                    -0.58650683
 !MRCI STATE 11.1 Energy            -8132.489240180453

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53987589 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53974773 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53987589 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53815556 (Pople, fixed reference)
 Cluster corrected energies         -8132.53802280 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53815556 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95755229 (fixed)   0.95960901 (relaxed)   0.95955418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00568798   -0.01273872   -0.01592537
 Singles      0.02174860   -0.07497016   -0.08075039
 Pairs        0.05864136   -0.49643537   -0.48869638
 Total        1.08607794   -0.58414425   -0.58537214
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.89573866
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.29098223
 One electron energy               -11097.76131921
 Two electron energy                 2965.28069854
 Virial quotient                       -0.84071498
 Correlation energy                    -0.58488201
 !MRCI STATE 12.1 Energy            -8132.480620668062

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53096611 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53089352 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53096611 (Davidson, rotated reference)

 Cluster corrected energies         -8132.52924517 (Pople, fixed reference)
 Cluster corrected energies         -8132.52917000 (Pople, relaxed reference)
 Cluster corrected energies         -8132.52924517 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      666.77       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2604.68   2583.61      7.92      0.17     12.79
 REAL TIME  *      2661.25 SEC
 DISK USED  *       811.49 MB (local),        9.72 GB (total)
 SF USED    *         6.72 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -8132.65209912  AU                              
 SETTING HLSDIAG(2)     =     -8132.59414951  AU                              
 SETTING HLSDIAG(3)     =     -8132.59414947  AU                              
 SETTING HLSDIAG(4)     =     -8132.59414950  AU                              
 SETTING HLSDIAG(5)     =     -8132.59414938  AU                              
 SETTING HLSDIAG(6)     =     -8132.59414947  AU                              
 SETTING HLSDIAG(7)     =     -8132.53987594  AU                              
 SETTING HLSDIAG(8)     =     -8132.53987595  AU                              
 SETTING HLSDIAG(9)     =     -8132.53987595  AU                              
 SETTING HLSDIAG(10)    =     -8132.53987585  AU                              
 SETTING HLSDIAG(11)    =     -8132.53987589  AU                              
 SETTING HLSDIAG(12)    =     -8132.53096611  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16
 Number of reference states: 16  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 56
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:       24 conf       24 CSFs
 N elec internal:    28449 conf   120789 CSFs
 N-1 el internal:     8065 conf    49051 CSFs
 N-2 el internal:     1171 conf     8695 CSFs

 Number of electrons in valence space:                     20
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:          18 (   9   9 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:     131 (  68  63 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  24

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -8131.96346932
     2     -8131.96346932
     3     -8131.96346932
     4     -8131.96346932
     5     -8131.96346932
     6     -8131.90700591
     7     -8131.90700591
     8     -8131.90700591
     9     -8131.90700591
    10     -8131.90700591
    11     -8131.90700591
    12     -8131.90700591
    13     -8131.90289829
    14     -8131.90289829
    15     -8131.90289829
    16     -8131.90058701

 Number of blocks in overlap matrix:  1423   Smallest eigenvalue:  0.59D+00
 Number of N-2 electron functions:    1477
 Number of N-1 electron functions:   49051

 Number of internal configurations:                60333
 Number of singly external configurations:       3213263
 Number of doubly external configurations:       6347122
 Total number of contracted configurations:      9620718
 Total number of uncontracted configurations:   40479159

 Diagonal Coupling coefficients finished.               Storage:36433810 words, CPU-Time:     56.91 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage: 1955985 words, CPU-time:      0.89 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -8131.96346932     0.00000000    -0.70079879  0.51D-01  0.86D-01    72.15
    1     2     2     1.00000000     0.00000000 -8131.96346932     0.00000000    -0.70077839  0.51D-01  0.86D-01    72.15
    1     3     3     1.00000000     0.00000000 -8131.96346932     0.00000000    -0.70079218  0.51D-01  0.86D-01    72.15
    1     4     4     1.00000000     0.00000000 -8131.96346932     0.00000000    -0.70079598  0.51D-01  0.86D-01    72.15
    1     5     5     1.00000000     0.00000000 -8131.96346932     0.00000000    -0.70064386  0.51D-01  0.86D-01    72.15
    1     6     6     1.00000000     0.00000000 -8131.90700591     0.00000000    -0.71241399  0.46D-01  0.97D-01    72.15
    1     7     7     1.00000000     0.00000000 -8131.90700591     0.00000000    -0.71248113  0.46D-01  0.97D-01    72.15
    1     8     8     1.00000000     0.00000000 -8131.90700591     0.00000000    -0.71220475  0.46D-01  0.97D-01    72.15
    1     9     9     1.00000000     0.00000000 -8131.90700591     0.00000000    -0.71225672  0.46D-01  0.97D-01    72.15
    1    10    10     1.00000000     0.00000000 -8131.90700591     0.00000000    -0.71247328  0.46D-01  0.97D-01    72.15
    1    11    11     1.00000000     0.00000000 -8131.90700591     0.00000000    -0.71230164  0.46D-01  0.97D-01    72.15
    1    12    12     1.00000000     0.00000000 -8131.90700591     0.00000000    -0.71235168  0.46D-01  0.97D-01    72.15
    1    13    13     1.00000000     0.00000000 -8131.90289829     0.00000000    -0.69834878  0.41D-01  0.92D-01    72.15
    1    14    14     1.00000000     0.00000000 -8131.90289829     0.00000000    -0.69842290  0.41D-01  0.92D-01    72.15
    1    15    15     1.00000000     0.00000000 -8131.90289829     0.00000000    -0.69853964  0.41D-01  0.92D-01    72.15
    1    16    16     1.00000000     0.00000000 -8131.90058701     0.00000000    -0.67415799  0.47D-01  0.76D-01    72.15
    2     1     1     1.08891218    -0.57700584 -8132.54047516    -0.57700584    -0.01225275  0.26D-02  0.12D-02   583.53
    2     2     2     1.08894607    -0.57697022 -8132.54043954    -0.57697022    -0.01229998  0.26D-02  0.12D-02   583.53
    2     3     3     1.08895371    -0.57696587 -8132.54043519    -0.57696587    -0.01230495  0.26D-02  0.12D-02   583.53
    2     4     4     1.08896279    -0.57696344 -8132.54043275    -0.57696344    -0.01230671  0.27D-02  0.12D-02   583.53
    2     5     5     1.08896001    -0.57695813 -8132.54042744    -0.57695813    -0.01231269  0.27D-02  0.12D-02   583.53
    2     6     6     1.09112072    -0.57761495 -8132.48462087    -0.57761495    -0.01241599  0.23D-02  0.15D-02   583.53
    2     7     7     1.09114561    -0.57759195 -8132.48459787    -0.57759195    -0.01244598  0.23D-02  0.15D-02   583.53
    2     8     8     1.09118691    -0.57756533 -8132.48457125    -0.57756533    -0.01247849  0.23D-02  0.15D-02   583.53
    2     9     9     1.09121039    -0.57754163 -8132.48454754    -0.57754163    -0.01251221  0.23D-02  0.15D-02   583.53
    2    10    10     1.09124396    -0.57752186 -8132.48452777    -0.57752186    -0.01253695  0.23D-02  0.15D-02   583.53
    2    11    11     1.09124520    -0.57751954 -8132.48452545    -0.57751954    -0.01253938  0.23D-02  0.15D-02   583.53
    2    12    12     1.09125245    -0.57751439 -8132.48452030    -0.57751439    -0.01254647  0.23D-02  0.15D-02   583.53
    2    13    13     1.08663106    -0.57369759 -8132.47659587    -0.57369759    -0.01199921  0.26D-02  0.14D-02   583.53
    2    14    14     1.08664532    -0.57368581 -8132.47658409    -0.57368581    -0.01201993  0.26D-02  0.15D-02   583.53
    2    15    15     1.08667524    -0.57364315 -8132.47654143    -0.57364315    -0.01207360  0.27D-02  0.15D-02   583.53
    2    16    16     1.08396127    -0.57113385 -8132.47172086    -0.57113385    -0.00980512  0.24D-02  0.84D-03   583.53
    3     1     1     1.08179871    -0.58849303 -8132.55196235    -0.01148719    -0.00022001  0.35D-04  0.28D-04  1087.35
    3     2     2     1.08180403    -0.58849167 -8132.55196099    -0.01152145    -0.00022167  0.36D-04  0.28D-04  1087.35
    3     3     3     1.08180459    -0.58849166 -8132.55196098    -0.01152579    -0.00022178  0.36D-04  0.28D-04  1087.35
    3     4     4     1.08180403    -0.58849148 -8132.55196080    -0.01152804    -0.00022193  0.36D-04  0.28D-04  1087.35
    3     5     5     1.08180293    -0.58849138 -8132.55196070    -0.01153325    -0.00022200  0.36D-04  0.28D-04  1087.35
    3     6     6     1.08360276    -0.58918831 -8132.49619422    -0.01157336    -0.00020356  0.26D-04  0.32D-04  1087.35
    3     7     7     1.08359821    -0.58918793 -8132.49619385    -0.01159598    -0.00020366  0.26D-04  0.32D-04  1087.35
    3     8     8     1.08360724    -0.58918735 -8132.49619327    -0.01162202    -0.00020490  0.26D-04  0.33D-04  1087.35
    3     9     9     1.08361019    -0.58918584 -8132.49619176    -0.01164421    -0.00020636  0.26D-04  0.33D-04  1087.35
    3    10    10     1.08361252    -0.58918529 -8132.49619120    -0.01166342    -0.00020693  0.26D-04  0.33D-04  1087.35
    3    11    11     1.08361419    -0.58918520 -8132.49619111    -0.01166566    -0.00020713  0.26D-04  0.33D-04  1087.35
    3    12    12     1.08361239    -0.58918514 -8132.49619106    -0.01167075    -0.00020684  0.26D-04  0.33D-04  1087.35
    3    13    13     1.08005236    -0.58489569 -8132.48779398    -0.01119811    -0.00024162  0.25D-04  0.44D-04  1087.35
    3    14    14     1.08005524    -0.58489540 -8132.48779368    -0.01120959    -0.00024239  0.25D-04  0.44D-04  1087.35
    3    15    15     1.08005452    -0.58489379 -8132.48779207    -0.01125064    -0.00024408  0.25D-04  0.44D-04  1087.35
    3    16    16     1.07853450    -0.58071214 -8132.48129915    -0.00957829    -0.00020966  0.47D-04  0.24D-04  1087.35
    4     1     1     1.08226705    -0.58872171 -8132.55219102    -0.00022867    -0.00000695  0.22D-05  0.67D-06  1592.07
    4     2     2     1.08226678    -0.58872167 -8132.55219098    -0.00022999    -0.00000696  0.22D-05  0.67D-06  1592.07
    4     3     3     1.08226679    -0.58872166 -8132.55219098    -0.00023000    -0.00000696  0.22D-05  0.67D-06  1592.07
    4     4     4     1.08226795    -0.58872164 -8132.55219096    -0.00023016    -0.00000689  0.22D-05  0.66D-06  1592.07
    4     5     5     1.08226665    -0.58872159 -8132.55219090    -0.00023021    -0.00000695  0.22D-05  0.67D-06  1592.07
    4     6     6     1.08399636    -0.58940166 -8132.49640757    -0.00021335    -0.00000622  0.23D-05  0.73D-06  1592.07
    4     7     7     1.08399623    -0.58940147 -8132.49640738    -0.00021353    -0.00000624  0.23D-05  0.74D-06  1592.07
    4     8     8     1.08399602    -0.58940144 -8132.49640736    -0.00021409    -0.00000627  0.23D-05  0.74D-06  1592.07
    4     9     9     1.08399646    -0.58940141 -8132.49640732    -0.00021556    -0.00000616  0.23D-05  0.72D-06  1592.07
    4    10    10     1.08399607    -0.58940101 -8132.49640692    -0.00021572    -0.00000622  0.23D-05  0.73D-06  1592.07
    4    11    11     1.08399560    -0.58940096 -8132.49640688    -0.00021576    -0.00000627  0.23D-05  0.74D-06  1592.07
    4    12    12     1.08399580    -0.58940092 -8132.49640684    -0.00021578    -0.00000626  0.23D-05  0.74D-06  1592.07
    4    13    13     1.08066635    -0.58514971 -8132.48804800    -0.00025402    -0.00000917  0.40D-05  0.10D-05  1592.07
    4    14    14     1.08066648    -0.58514961 -8132.48804790    -0.00025422    -0.00000917  0.41D-05  0.10D-05  1592.07
    4    15    15     1.08066444    -0.58514954 -8132.48804783    -0.00025576    -0.00000925  0.41D-05  0.10D-05  1592.07
    4    16    16     1.07889313    -0.58093547 -8132.48152248    -0.00022333    -0.00000735  0.26D-05  0.75D-06  1592.07
    5     1     1     1.08235064    -0.58872870 -8132.55219802    -0.00000700    -0.00000022  0.41D-07  0.31D-07  2087.06
    5     2     2     1.08235056    -0.58872867 -8132.55219798    -0.00000700    -0.00000022  0.41D-07  0.31D-07  2087.06
    5     3     3     1.08235053    -0.58872867 -8132.55219798    -0.00000700    -0.00000022  0.41D-07  0.31D-07  2087.06
    5     4     4     1.08235008    -0.58872859 -8132.55219791    -0.00000695    -0.00000022  0.41D-07  0.31D-07  2087.06
    5     5     5     1.08235000    -0.58872856 -8132.55219788    -0.00000697    -0.00000022  0.41D-07  0.31D-07  2087.06
    5     6     6     1.08408224    -0.58940809 -8132.49641401    -0.00000643    -0.00000024  0.48D-07  0.42D-07  2087.06
    5     7     7     1.08408246    -0.58940793 -8132.49641384    -0.00000646    -0.00000024  0.48D-07  0.42D-07  2087.06
    5     8     8     1.08408235    -0.58940793 -8132.49641384    -0.00000648    -0.00000024  0.48D-07  0.42D-07  2087.06
    5     9     9     1.08408168    -0.58940779 -8132.49641370    -0.00000638    -0.00000024  0.48D-07  0.41D-07  2087.06
    5    10    10     1.08408217    -0.58940745 -8132.49641336    -0.00000644    -0.00000024  0.48D-07  0.42D-07  2087.06
    5    11    11     1.08408185    -0.58940744 -8132.49641336    -0.00000648    -0.00000024  0.48D-07  0.42D-07  2087.06
    5    12    12     1.08408215    -0.58940740 -8132.49641331    -0.00000648    -0.00000024  0.48D-07  0.42D-07  2087.06
    5    13    13     1.08078751    -0.58515949 -8132.48805778    -0.00000978    -0.00000041  0.79D-07  0.67D-07  2087.06
    5    14    14     1.08078754    -0.58515939 -8132.48805768    -0.00000978    -0.00000041  0.79D-07  0.68D-07  2087.06
    5    15    15     1.08078751    -0.58515939 -8132.48805768    -0.00000985    -0.00000041  0.79D-07  0.68D-07  2087.06
    5    16    16     1.07890795    -0.58094288 -8132.48152989    -0.00000741    -0.00000028  0.55D-07  0.42D-07  2087.06
    6     1     1     1.08234621    -0.58872894 -8132.55219826    -0.00000024    -0.00000001  0.28D-08  0.86D-09  2581.59
    6     2     2     1.08234618    -0.58872891 -8132.55219822    -0.00000024    -0.00000001  0.28D-08  0.86D-09  2581.59
    6     3     3     1.08234617    -0.58872891 -8132.55219822    -0.00000024    -0.00000001  0.28D-08  0.86D-09  2581.59
    6     4     4     1.08234571    -0.58872883 -8132.55219815    -0.00000024    -0.00000001  0.28D-08  0.86D-09  2581.59
    6     5     5     1.08234566    -0.58872880 -8132.55219812    -0.00000024    -0.00000001  0.28D-08  0.86D-09  2581.59
    6     6     6     1.08408155    -0.58940837 -8132.49641429    -0.00000028    -0.00000001  0.28D-08  0.12D-08  2581.59
    6     7     7     1.08408163    -0.58940821 -8132.49641412    -0.00000028    -0.00000001  0.29D-08  0.12D-08  2581.59
    6     8     8     1.08408164    -0.58940821 -8132.49641412    -0.00000028    -0.00000001  0.29D-08  0.12D-08  2581.59
    6     9     9     1.08408116    -0.58940806 -8132.49641398    -0.00000028    -0.00000001  0.28D-08  0.12D-08  2581.59
    6    10    10     1.08408134    -0.58940772 -8132.49641364    -0.00000028    -0.00000001  0.29D-08  0.12D-08  2581.59
    6    11    11     1.08408131    -0.58940772 -8132.49641364    -0.00000028    -0.00000001  0.29D-08  0.12D-08  2581.59
    6    12    12     1.08408139    -0.58940768 -8132.49641359    -0.00000028    -0.00000001  0.29D-08  0.12D-08  2581.59
    6    13    13     1.08077573    -0.58515997 -8132.48805825    -0.00000047    -0.00000002  0.33D-08  0.22D-08  2581.59
    6    14    14     1.08077562    -0.58515987 -8132.48805815    -0.00000048    -0.00000002  0.33D-08  0.22D-08  2581.59
    6    15    15     1.08077567    -0.58515987 -8132.48805815    -0.00000048    -0.00000002  0.33D-08  0.22D-08  2581.59
    6    16    16     1.07888514    -0.58094318 -8132.48153019    -0.00000030    -0.00000001  0.36D-08  0.12D-08  2581.59


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.9%
 S   1.6%  39.3%
 P   0.4%  27.1%  10.3%

 Initialization:   2.2%
 Other:           13.3%

 Total CPU:     2581.6 seconds
 =====================================



 gnormi=  0.92391879  gnorms=  0.02168405  gnormp=  0.05439716  gnorm=  1.00000000
 ecorri= -0.54393773  ecorrs= -0.01276960  ecorrp= -0.03202161  ecorr= -0.58872894

 gnormi=  0.92391881  gnorms=  0.02168401  gnormp=  0.05439718  gnorm=  1.00000000
 ecorri= -0.54393771  ecorrs= -0.01276958  ecorrp= -0.03202161  ecorr= -0.58872891

 gnormi=  0.92391882  gnorms=  0.02168400  gnormp=  0.05439718  gnorm=  1.00000000
 ecorri= -0.54393772  ecorrs= -0.01276957  ecorrp= -0.03202162  ecorr= -0.58872891

 gnormi=  0.92391921  gnorms=  0.02168353  gnormp=  0.05439726  gnorm=  1.00000000
 ecorri= -0.54393788  ecorrs= -0.01276928  ecorrp= -0.03202167  ecorr= -0.58872883

 gnormi=  0.92391926  gnorms=  0.02168345  gnormp=  0.05439729  gnorm=  1.00000000
 ecorri= -0.54393787  ecorrs= -0.01276923  ecorrp= -0.03202169  ecorr= -0.58872880

 gnormi=  0.92243983  gnorms=  0.01973731  gnormp=  0.05782286  gnorm=  1.00000000
 ecorri= -0.54369376  ecorrs= -0.01163742  ecorrp= -0.03407719  ecorr= -0.58940837

 gnormi=  0.92243976  gnorms=  0.01973744  gnormp=  0.05782280  gnorm=  1.00000000
 ecorri= -0.54369357  ecorrs= -0.01163748  ecorrp= -0.03407716  ecorr= -0.58940821

 gnormi=  0.92243975  gnorms=  0.01973744  gnormp=  0.05782281  gnorm=  1.00000000
 ecorri= -0.54369356  ecorrs= -0.01163748  ecorrp= -0.03407717  ecorr= -0.58940821

 gnormi=  0.92244016  gnorms=  0.01973690  gnormp=  0.05782293  gnorm=  1.00000000
 ecorri= -0.54369367  ecorrs= -0.01163718  ecorrp= -0.03407721  ecorr= -0.58940806

 gnormi=  0.92244001  gnorms=  0.01973715  gnormp=  0.05782284  gnorm=  1.00000000
 ecorri= -0.54369327  ecorrs= -0.01163729  ecorrp= -0.03407716  ecorr= -0.58940772

 gnormi=  0.92244004  gnorms=  0.01973716  gnormp=  0.05782280  gnorm=  1.00000000
 ecorri= -0.54369328  ecorrs= -0.01163731  ecorrp= -0.03407713  ecorr= -0.58940772

 gnormi=  0.92243997  gnorms=  0.01973721  gnormp=  0.05782282  gnorm=  1.00000000
 ecorri= -0.54369320  ecorrs= -0.01163734  ecorrp= -0.03407714  ecorr= -0.58940768

 gnormi=  0.92526134  gnorms=  0.01837927  gnormp=  0.05635939  gnorm=  1.00000000
 ecorri= -0.54142590  ecorrs= -0.01075864  ecorrp= -0.03297543  ecorr= -0.58515997

 gnormi=  0.92526143  gnorms=  0.01837916  gnormp=  0.05635941  gnorm=  1.00000000
 ecorri= -0.54142586  ecorrs= -0.01075860  ecorrp= -0.03297541  ecorr= -0.58515987

 gnormi=  0.92526139  gnorms=  0.01837914  gnormp=  0.05635947  gnorm=  1.00000000
 ecorri= -0.54142583  ecorrs= -0.01075857  ecorrp= -0.03297547  ecorr= -0.58515987

 gnormi=  0.92688273  gnorms=  0.02167743  gnormp=  0.05143984  gnorm=  1.00000000
 ecorri= -0.53846620  ecorrs= -0.01259553  ecorrp= -0.02988145  ecorr= -0.58094318

 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/00000/222000          -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000021   0.0000000   0.0000000  -0.0000000
                               0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.9598644
 2222220000//0222000           0.0000000  -0.0000000   0.0000000  -0.0000446   0.0000001   0.0000000   0.0000000  -0.0000000
                               0.9588168   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 222222000/0/0222000          -0.0000466   0.0000000   0.0000000  -0.0000000   0.0000000   0.9588165  -0.0000000   0.0000000
                              -0.0000000  -0.0000000  -0.0000000  -0.0000244  -0.0000000   0.0000000   0.0000000  -0.0000000
 222222//00000222000           0.0000000  -0.0000000   0.9586328   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000360
                              -0.0000000  -0.0000323  -0.0000000   0.0000000  -0.0000000  -0.0000006  -0.0000000  -0.0000000
 222222/0/0000222000           0.0000000   0.9586328  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000360   0.0000000
                               0.0000000   0.0000000  -0.0000323  -0.0000000   0.0000000   0.0000000  -0.0000006  -0.0000000
 222222/00/000222000           0.9586328  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000500  -0.0000000   0.0000000
                              -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 222222/000/00222000           0.0000000  -0.0000000  -0.0000000   0.9586304  -0.0021823   0.0000000   0.0000000  -0.0000000
                               0.0000478  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 222222/0000/0222000           0.0000000  -0.0000000  -0.0000000   0.0021823   0.9586304  -0.0000000   0.0000000  -0.0000000
                               0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000024
 2222220//0000222000           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000219  -0.0000000   0.0000000
                              -0.0000000   0.0000000  -0.0000000   0.8576260  -0.3592174   0.0000000   0.0000000   0.0000000
 22222200/0/00222000          -0.0000000  -0.0000389   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.7612827   0.0000000
                               0.0000000   0.0000000  -0.3948661   0.0000000   0.0000000   0.0000000   0.3592892  -0.0000000
 2222220/00/00222000          -0.0000000   0.0000000   0.0000389   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.7612356
                              -0.0000000   0.3949570   0.0000000   0.0000000  -0.0000000  -0.3592893   0.0000000   0.0000000
 222222000//00222000          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000109   0.0000000  -0.0000000
                               0.0000000  -0.0000000   0.0000000   0.4287278   0.7186385  -0.0000000  -0.0000000   0.0000000
 2222220/0/000222000           0.0000000  -0.0000002  -0.0000000  -0.0000000   0.0000000   0.0000000   0.5726329   0.0000000
                              -0.0000000  -0.0000000   0.6384382  -0.0000000  -0.0000000  -0.0000000  -0.3592320   0.0000000
 22222200//000222000          -0.0000000   0.0000000  -0.0000002  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.5727092
                              -0.0000000   0.6383698   0.0000000   0.0000000  -0.0000000  -0.3592320  -0.0000000   0.0000000
 2222220/000/0222000           0.0000000  -0.0000000   0.0000229   0.0000000   0.0000000  -0.0000000   0.0000000   0.1088751
                               0.0000000   0.5965088  -0.0000000  -0.0000000   0.0000000   0.6223691  -0.0000000   0.0000000
 22222200/00/0222000          -0.0000000   0.0000229   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1089464  -0.0000000
                               0.0000000   0.0000000   0.5964959   0.0000000   0.0000000   0.0000000   0.6223691  -0.0000000
 2222220000000222/0/           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                              -0.0000000   0.0000000   0.0000000  -0.0000483   0.5255232  -0.0000000  -0.0000000  -0.0000000
 22222200000002220//           0.0000000   0.0000003  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000144  -0.0000000
                              -0.0000000   0.0000000  -0.0000407  -0.0000000   0.0000000   0.0000000   0.5255222  -0.0000000
 2222220000000222//0          -0.0000000  -0.0000000  -0.0000002  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000144
                               0.0000000   0.0000407  -0.0000000  -0.0000000  -0.0000000  -0.5255222   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.958640    0.000000   -0.000000    0.000000   -0.000033    0.000000   -0.000000   -0.000000
            -0.000033    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.958640   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000041   -0.000000
             0.000000    0.000018   -0.000000    0.000000    0.000001    0.000000
 3          -0.000000   -0.000000    0.000000    0.958640   -0.000000    0.000020    0.000000    0.000000    0.000000    0.000040
             0.000000    0.000000    0.000001   -0.000000   -0.000000    0.000000
 4           0.000000    0.634367   -0.000000    0.000000    0.718727   -0.000000   -0.000000   -0.000045   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.718727   -0.000000   -0.000000   -0.634367   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000002
 6          -0.000000    0.000000    0.000050    0.000000    0.000000    0.000000    0.681548    0.000000    0.000000   -0.000000
             0.674404   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 7           0.000036    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.910366    0.000000
             0.000000    0.300936   -0.000000    0.000000   -0.000027    0.000000
 8           0.000000   -0.000000    0.000000   -0.000036   -0.000000   -0.255420    0.000000   -0.000000    0.000000    0.924170
            -0.000000   -0.000000    0.000027    0.000000   -0.000000   -0.000000
 9           0.000000    0.000032   -0.000000   -0.000000    0.000036    0.000000   -0.000000    0.958817    0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 10          0.000000   -0.000000   -0.000000   -0.000032    0.000000    0.924170    0.000000    0.000000    0.000000    0.255420
            -0.000000   -0.000000   -0.000076    0.000000    0.000000   -0.000000
 11         -0.000032   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.300936    0.000000
            -0.000000    0.910367    0.000000    0.000000   -0.000076    0.000000
 12         -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.674405   -0.000000    0.000000    0.000000
            -0.681548   -0.000000    0.000000   -0.000090   -0.000000   -0.000000
 13          0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000064    0.000000   -0.000000   -0.000000
            -0.000065   -0.000000    0.000000    0.959899    0.000000    0.000000
 14          0.000000   -0.000000   -0.000000   -0.000001   -0.000000    0.000081    0.000000    0.000000    0.000000   -0.000006
             0.000000   -0.000000    0.959899   -0.000000    0.000000    0.000000
 15         -0.000001   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000002    0.000000
             0.000000    0.000081   -0.000000   -0.000000    0.959899    0.000000
 16         -0.000000    0.000002    0.000000   -0.000000   -0.000002    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.959864

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958640    0.000000    0.000000    0.000000   -0.000000    0.000002   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.958640   -0.000000    0.000000   -0.000000    0.000000    0.000001    0.000000    0.000000   -0.000000
            -0.000001   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.958640   -0.000000   -0.000000    0.000000   -0.000000   -0.000001    0.000000   -0.000001
             0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.958640    0.000000   -0.000000    0.000000   -0.000000    0.000002   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.958640    0.000000    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 6           0.000002    0.000000    0.000000   -0.000000    0.000000    0.958817    0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 7          -0.000000    0.000001   -0.000000    0.000000    0.000000    0.000000    0.958817    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 8           0.000000    0.000000   -0.000001   -0.000000   -0.000000   -0.000000    0.000000    0.958817    0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 9          -0.000000    0.000000    0.000000    0.000002    0.000000    0.000000    0.000000    0.000000    0.958817    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000   -0.000000   -0.000001   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.958817
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 11         -0.000000   -0.000001    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.958817   -0.000000   -0.000000    0.000000    0.000000    0.000000
 12          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.958817    0.000000    0.000000   -0.000000   -0.000000
 13          0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.959899   -0.000000   -0.000000   -0.000000
 14          0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.959899    0.000000    0.000000
 15          0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.959899   -0.000000
 16         -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.959864

 Energy contributions of internal configurations for state 13
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1928       0.00016922     1.25888152       2222220000000222101             
  2067       0.00006219    -1.00718703       2222220001100222000             

 Energy contributions of internal configurations for state 14
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1929       0.00016925     1.25898569       2222220000000222110             

 Energy contributions of internal configurations for state 15
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  1927       0.00016925     1.25898170       2222220000000222011             


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95863953 (fixed)   0.95868283 (relaxed)   0.95863953 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536353   -0.01188924   -0.47404658
 Singles      0.02359553   -0.07605216   -0.08266076
 Pairs        0.05919234    0.00000000   -0.03202161
 Total        1.08815141   -0.08794140   -0.58872894
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96346932
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.39806523
 One electron energy               -11102.83468154
 Two electron energy                 2970.28248328
 Virial quotient                       -0.84071307
 Correlation energy                    -0.58872894
 !MRCI STATE 1.1 Energy             -8132.552198260320

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60409555 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60403769 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60409555 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60168110 (Pople, fixed reference)
 Cluster corrected energies         -8132.60162198 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60168110 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95863956 (fixed)   0.95868285 (relaxed)   0.95863956 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536351   -0.01188922   -0.47404658
 Singles      0.02359548   -0.07605214   -0.08266072
 Pairs        0.05919237   -0.00000000   -0.03202161
 Total        1.08815136   -0.08794135   -0.58872891
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96346932
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.39806585
 One electron energy               -11102.83468266
 Two electron energy                 2970.28248444
 Virial quotient                       -0.84071307
 Correlation energy                    -0.58872891
 !MRCI STATE 2.1 Energy             -8132.552198224352

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60409548 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60403762 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60409548 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60168103 (Pople, fixed reference)
 Cluster corrected energies         -8132.60162191 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60168103 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95863956 (fixed)   0.95868285 (relaxed)   0.95863956 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536351   -0.01188922   -0.47404657
 Singles      0.02359547   -0.07605214   -0.08266072
 Pairs        0.05919236   -0.00000000   -0.03202162
 Total        1.08815135   -0.08794136   -0.58872891
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96346932
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.39806620
 One electron energy               -11102.83468212
 Two electron energy                 2970.28248389
 Virial quotient                       -0.84071307
 Correlation energy                    -0.58872891
 !MRCI STATE 3.1 Energy             -8132.552198224206

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60409547 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60403761 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60409547 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60168102 (Pople, fixed reference)
 Cluster corrected energies         -8132.60162190 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60168102 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.71872703 (fixed)   0.95868291 (relaxed)   0.95863962 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536382   -0.01188949   -0.47404720
 Singles      0.02359496   -0.07605163   -0.08265996
 Pairs        0.05919244    0.00000000   -0.03202167
 Total        1.08815122   -0.08794111   -0.58872883
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96346932
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.39807421
 One electron energy               -11102.83470433
 Two electron energy                 2970.28250618
 Virial quotient                       -0.84071307
 Correlation energy                    -0.58872883
 !MRCI STATE 4.1 Energy             -8132.552198149107

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60409531 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60403745 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60409531 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60168086 (Pople, fixed reference)
 Cluster corrected energies         -8132.60162174 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60168086 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.71872704 (fixed)   0.95868291 (relaxed)   0.95863962 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00536387   -0.01188952   -0.47404828
 Singles      0.02359488   -0.07605154   -0.08265983
 Pairs        0.05919248    0.00000109   -0.03202069
 Total        1.08815122   -0.08793997   -0.58872880
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.96346932
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.39807466
 One electron energy               -11102.83470590
 Two electron energy                 2970.28250779
 Virial quotient                       -0.84071307
 Correlation energy                    -0.58872880
 !MRCI STATE 5.1 Energy             -8132.552198117030

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.60409528 (Davidson, fixed reference)
 Cluster corrected energies         -8132.60403742 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.60409528 (Davidson, rotated reference)

 Cluster corrected energies         -8132.60168083 (Pople, fixed reference)
 Cluster corrected energies         -8132.60162171 (Pople, relaxed reference)
 Cluster corrected energies         -8132.60168083 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.68154809 (fixed)   0.95881653 (relaxed)   0.95881653 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00338366   -0.00808510   -0.47813237
 Singles      0.02146926   -0.07131438   -0.07719881
 Pairs        0.06289680   -0.00000000   -0.03407719
 Total        1.08774971   -0.07939948   -0.58940837
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90700591
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41496083
 One electron energy               -11105.47939189
 Two electron energy                 2972.98297760
 Virial quotient                       -0.84070584
 Correlation energy                    -0.58940837
 !MRCI STATE 6.1 Energy             -8132.496414286077

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54813470 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54813470 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54813470 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54571237 (Pople, fixed reference)
 Cluster corrected energies         -8132.54571237 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54571237 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.91036628 (fixed)   0.95881657 (relaxed)   0.95881657 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00338349   -0.00808490   -0.47813203
 Singles      0.02146940   -0.07131453   -0.07719902
 Pairs        0.06289673   -0.00000000   -0.03407716
 Total        1.08774961   -0.07939943   -0.58940821
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90700591
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41496604
 One electron energy               -11105.47943187
 Two electron energy                 2972.98301775
 Virial quotient                       -0.84070584
 Correlation energy                    -0.58940821
 !MRCI STATE 7.1 Energy             -8132.496414120943

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54813446 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54813446 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54813446 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54571213 (Pople, fixed reference)
 Cluster corrected energies         -8132.54571213 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54571213 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.92416973 (fixed)   0.95881657 (relaxed)   0.95881657 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00338349   -0.00808490   -0.47813202
 Singles      0.02146939   -0.07131455   -0.07719902
 Pairs        0.06289674    0.00000000   -0.03407717
 Total        1.08774962   -0.07939944   -0.58940821
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90700591
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41496214
 One electron energy               -11105.47942459
 Two electron energy                 2972.98301047
 Virial quotient                       -0.84070584
 Correlation energy                    -0.58940821
 !MRCI STATE 8.1 Energy             -8132.496414120921

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54813447 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54813447 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54813447 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54571213 (Pople, fixed reference)
 Cluster corrected energies         -8132.54571213 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54571213 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95881677 (fixed)   0.95881677 (relaxed)   0.95881677 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00338351   -0.00808501   -0.47813257
 Singles      0.02146880   -0.07131403   -0.07719828
 Pairs        0.06289685   -0.00000000   -0.03407721
 Total        1.08774916   -0.07939904   -0.58940806
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90700591
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41495268
 One electron energy               -11105.47934223
 Two electron energy                 2972.98292825
 Virial quotient                       -0.84070584
 Correlation energy                    -0.58940806
 !MRCI STATE 9.1 Energy             -8132.496413978036

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54813404 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54813404 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54813404 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54571170 (Pople, fixed reference)
 Cluster corrected energies         -8132.54571170 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54571170 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92417001 (fixed)   0.95881689 (relaxed)   0.95881689 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00338310   -0.00808456   -0.47813180
 Singles      0.02146906   -0.07131442   -0.07719876
 Pairs        0.06289673    0.00000000   -0.03407716
 Total        1.08774889   -0.07939898   -0.58940772
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90700591
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41495725
 One electron energy               -11105.47943326
 Two electron energy                 2972.98301962
 Virial quotient                       -0.84070584
 Correlation energy                    -0.58940772
 !MRCI STATE 10.1 Energy            -8132.496413637899

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54813351 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54813351 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54813351 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54571117 (Pople, fixed reference)
 Cluster corrected energies         -8132.54571117 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54571117 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.91036657 (fixed)   0.95881690 (relaxed)   0.95881690 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00338310   -0.00808456   -0.47813184
 Singles      0.02146907   -0.07131438   -0.07719876
 Pairs        0.06289669   -0.00000000   -0.03407713
 Total        1.08774886   -0.07939894   -0.58940772
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90700591
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41496815
 One electron energy               -11105.47945354
 Two electron energy                 2972.98303990
 Virial quotient                       -0.84070584
 Correlation energy                    -0.58940772
 !MRCI STATE 11.1 Energy            -8132.496413637881

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54813349 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54813349 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54813349 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54571115 (Pople, fixed reference)
 Cluster corrected energies         -8132.54571115 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54571115 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.68154836 (fixed)   0.95881690 (relaxed)   0.95881690 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00338304   -0.00808448   -0.47813166
 Singles      0.02146913   -0.07131449   -0.07719887
 Pairs        0.06289671    0.00000000   -0.03407714
 Total        1.08774888   -0.07939897   -0.58940768
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90700591
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.41496471
 One electron energy               -11105.47946694
 Two electron energy                 2972.98305335
 Virial quotient                       -0.84070584
 Correlation energy                    -0.58940768
 !MRCI STATE 12.1 Energy            -8132.496413593250

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.54813345 (Davidson, fixed reference)
 Cluster corrected energies         -8132.54813345 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.54813345 (Davidson, rotated reference)

 Cluster corrected energies         -8132.54571112 (Pople, fixed reference)
 Cluster corrected energies         -8132.54571112 (Pople, relaxed reference)
 Cluster corrected energies         -8132.54571112 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95989904 (fixed)   0.96002767 (relaxed)   0.95989905 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00418399   -0.00935370   -0.47595897
 Singles      0.01994698   -0.07105111   -0.07622557
 Pairs        0.06116671    0.00000000   -0.03297543
 Total        1.08529769   -0.08040480   -0.58515997
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90289829
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.34931637
 One electron energy               -11102.73360101
 Two electron energy                 2970.24554276
 Virial quotient                       -0.84071068
 Correlation energy                    -0.58515997
 !MRCI STATE 13.1 Energy            -8132.488058251019

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53797104 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53780088 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53797104 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53553864 (Pople, fixed reference)
 Cluster corrected energies         -8132.53536559 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53553864 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95989909 (fixed)   0.96002774 (relaxed)   0.95989909 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00418400   -0.00935366   -0.47595906
 Singles      0.01994685   -0.07105096   -0.07622540
 Pairs        0.06116674    0.00000000   -0.03297541
 Total        1.08529759   -0.08040462   -0.58515987
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90289829
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.34931268
 One electron energy               -11102.73360659
 Two electron energy                 2970.24554843
 Virial quotient                       -0.84071068
 Correlation energy                    -0.58515987
 !MRCI STATE 14.1 Energy            -8132.488058153646

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53797088 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53780069 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53797088 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53553847 (Pople, fixed reference)
 Cluster corrected energies         -8132.53536540 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53553847 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95989907 (fixed)   0.96002772 (relaxed)   0.95989907 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00418399   -0.00935366   -0.47595899
 Singles      0.01994684   -0.07105101   -0.07622541
 Pairs        0.06116680   -0.00000000   -0.03297547
 Total        1.08529763   -0.08040467   -0.58515987
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90289829
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.34930526
 One electron energy               -11102.73358947
 Two electron energy                 2970.24553132
 Virial quotient                       -0.84071068
 Correlation energy                    -0.58515987
 !MRCI STATE 15.1 Energy            -8132.488058153102

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53797090 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53780071 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53797090 (Davidson, rotated reference)

 Cluster corrected energies         -8132.53553850 (Pople, fixed reference)
 Cluster corrected energies         -8132.53536543 (Pople, relaxed reference)
 Cluster corrected energies         -8132.53553850 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.95986436 (fixed)   0.95986436 (relaxed)   0.95986436 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00601640   -0.01369848   -0.01584121
 Singles      0.02352817   -0.07705446   -0.08358886
 Pairs        0.05583157   -0.49019024   -0.48151312
 Total        1.08537614   -0.58094318   -0.58094318
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -8131.90058701
 Nuclear energy                         0.00000000
 Kinetic energy                      9673.18133922
 One electron energy               -11094.23227154
 Two electron energy                 2961.75074134
 Virial quotient                       -0.84072460
 Correlation energy                    -0.58094318
 !MRCI STATE 16.1 Energy            -8132.481530193866

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -8132.53112888 (Davidson, fixed reference)
 Cluster corrected energies         -8132.53112888 (Davidson, relaxed reference)
 Cluster corrected energies         -8132.53112888 (Davidson, rotated reference)

 Cluster corrected energies         -8132.52871479 (Pople, fixed reference)
 Cluster corrected energies         -8132.52871479 (Pople, relaxed reference)
 Cluster corrected energies         -8132.52871479 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.63       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2049.80       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11959.10   9354.42   2583.61      7.92      0.17     12.79
 REAL TIME  *     12128.40 SEC
 DISK USED  *         2.14 GB (local),       25.93 GB (total)
 SF USED    *        12.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =     -8132.60409555  AU                              
 SETTING HLSDIAG(14)    =     -8132.60409548  AU                              
 SETTING HLSDIAG(15)    =     -8132.60409547  AU                              
 SETTING HLSDIAG(16)    =     -8132.60409531  AU                              
 SETTING HLSDIAG(17)    =     -8132.60409528  AU                              
 SETTING HLSDIAG(18)    =     -8132.54813470  AU                              
 SETTING HLSDIAG(19)    =     -8132.54813446  AU                              
 SETTING HLSDIAG(20)    =     -8132.54813447  AU                              
 SETTING HLSDIAG(21)    =     -8132.54813404  AU                              
 SETTING HLSDIAG(22)    =     -8132.54813351  AU                              
 SETTING HLSDIAG(23)    =     -8132.54813349  AU                              
 SETTING HLSDIAG(24)    =     -8132.54813345  AU                              
 SETTING HLSDIAG(25)    =     -8132.53797104  AU                              
 SETTING HLSDIAG(26)    =     -8132.53797088  AU                              
 SETTING HLSDIAG(27)    =     -8132.53797090  AU                              
 SETTING HLSDIAG(28)    =     -8132.53112888  AU                              


         HLSDIAG
    -8132.652099
    -8132.594150
    -8132.594149
    -8132.594149
    -8132.594149
    -8132.594149
    -8132.539876
    -8132.539876
    -8132.539876
    -8132.539876
    -8132.539876
    -8132.530966
    -8132.604096
    -8132.604095
    -8132.604095
    -8132.604095
    -8132.604095
    -8132.548135
    -8132.548134
    -8132.548134
    -8132.548134
    -8132.548134
    -8132.548133
    -8132.548133
    -8132.537971
    -8132.537971
    -8132.537971
    -8132.531129
                                                  

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

 Time for Seward_LS:     212.67 sec

 CPU time:    212.68 sec, REAL time:    221.28 sec


 SORTLS1 read    61450532. and wrote    61450532. SO integrals in   240 records. CPU time:      0.44 sec, REAL time:      0.78 sec
 SORTLS2 read    61450532. and wrote    61450532. SO integrals in    36 records. CPU time:      0.17 sec, REAL time:      0.35 sec

 FILE SIZES: FILE 1:   151.8 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   151.8 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2049.80       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     12173.02    213.86   9354.42   2583.61      7.92      0.17     12.79
 REAL TIME  *     12351.50 SEC
 DISK USED  *         2.14 GB (local),       27.62 GB (total)
 SF USED    *        12.13 GB
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

 Lowest unperturbed energy E0= -8132.65209912

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   12718.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   12718.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   12718.47       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   12718.50       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   12718.48       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   24630.14       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24630.14       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24630.14       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   24630.16
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00      60.71       0.00       0.00       0.00       0.00     -10.37      -0.00
                            0.00      -0.00     -60.71      -0.00       0.00      -0.00     -10.37      -0.00      -0.00       0.00

   14   2.1  1.0  1.0      -0.00     -60.72       0.00       0.00      -0.00       0.00       0.00      10.37       0.00       0.00
                            0.00      -0.00       0.00       0.00    -100.15     -68.59       0.00      -0.00       0.00     -12.25

   15   3.1  1.0  1.0      -0.00      -0.00      -0.00       0.00     109.47     -52.45       0.00      -0.00       0.00      20.56
                            0.00      60.72      -0.00      -0.00       0.00      -0.00      -0.00     -10.37      -0.00      -0.00

   16   4.1  1.0  1.0       0.00       0.00      60.47      -0.00      -0.00       0.00      10.33      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      60.95      -0.00       0.00      -0.00       0.00     -10.41      -0.00

   17   5.1  1.0  1.0       0.00      -0.00    -105.29       0.00       0.00       0.00     -17.96      -0.00      -0.00       0.00
                            0.00       0.00       0.00     105.01       0.00       0.00       0.00       0.00     -17.91      -0.00

   18   6.1  1.0  1.0       0.00       0.00      -0.00      23.37       0.00       0.00      -0.00      -0.00      76.85       0.00
                            0.00       0.00     -23.37      -0.00      -0.00       0.00      76.85      -0.00       0.00      -0.00

   19   7.1  1.0  1.0      -0.00     -29.47      -0.00       0.00      -0.00       0.00      -0.00     -96.97       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       2.53      27.13       0.00      -0.00      -0.00      21.66

   20   8.1  1.0  1.0      -0.00      -0.00       0.00       0.00       6.65     -26.42      -0.00       0.00       0.00     -49.39
                           -0.00     -29.47       0.00       0.00      -0.00       0.00      -0.00     -96.97       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.00      23.36      -0.00       0.00       0.00     -76.85       0.00      -0.00       0.00
                            0.00       0.00      -0.00      23.36      -0.00       0.00       0.00      -0.00      76.85       0.00

   22  10.1  1.0  1.0       0.01      -0.00       0.00       0.00      24.21      14.34       0.00       0.00       0.00     -59.50
                           -0.00      -2.13       0.00       0.00      -0.00       0.00      -0.00      -7.00       0.00       0.00

   23  11.1  1.0  1.0      -0.00       2.13       0.00      -0.00       0.00      -0.00       0.00       6.99      -0.00      -0.00
                           -0.01       0.00      -0.00      -0.00     -26.12      10.47      -0.00      -0.00      -0.00      92.40

   24  12.1  1.0  1.0      -0.00       0.00      -0.00      18.09      -0.00      -0.00      -0.00      -0.00      59.55       0.00
                           -0.00       0.00      18.10      -0.00       0.00      -0.00     -59.56      -0.00       0.00       0.00

   25  13.1  1.0  1.0       0.00      -0.00      -0.00      41.64      -0.00      -0.00       0.00      -0.00    -185.98      -0.00
                            0.00       0.00      41.64       0.00      -0.00      -0.00     185.98      -0.00      -0.00       0.00

   26  14.1  1.0  1.0     -80.51       0.00      -0.00       0.00     -20.75     -43.33       0.00       0.00       0.00     -23.47
                            0.00      41.64      -0.00      -0.00       0.00      -0.00       0.00    -185.99      -0.00      -0.00

   27  15.1  1.0  1.0      -0.00     -41.64       0.00       0.00      -0.00       0.00      -0.00     185.99       0.00       0.00
                           80.51      -0.00       0.00      -0.00      27.14     -39.64       0.00      -0.00       0.00     173.19

   28  16.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      13.18    -171.16       0.00      -0.00       0.00      11.76

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -85.86      -0.00       0.00      -0.00     -14.67       0.00      -0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      85.86       0.00       0.00       0.00       0.00     -14.67      -0.00

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     171.71      -0.00      -0.00       0.00      -0.00      -0.00     -29.26      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.39       0.00       0.00      -0.00      -0.00      -0.00       0.07      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -2.53      32.93       0.00      -0.00      -0.00      43.73

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -7.51       0.00      -0.00       0.00      24.69      -0.00       0.00      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -7.51      -0.00      -0.00       0.00       0.00     -24.68       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -33.02      -0.00       0.00       0.00       0.00       0.00    -108.68       0.00      -0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -41.11      -0.00      -0.00       0.00       0.00    -135.28       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      41.11      -0.00       0.00      -0.00    -135.28       0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.00       0.00      -0.00      44.32       3.41       0.00       0.00       0.00    -133.72

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          113.87      -0.00       0.00      -0.00     -67.71      -5.21       0.00      -0.00       0.00    -278.13

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -58.89       0.00       0.00       0.00       0.00     263.02       0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      58.89       0.00      -0.00      -0.00     263.02       0.00      -0.00       0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00      60.71       0.00       0.00       0.00       0.00     -10.37      -0.00
                           -0.00       0.00      60.71       0.00      -0.00       0.00      10.37       0.00       0.00      -0.00

   46   2.1  1.0 -1.0      -0.00     -60.72       0.00       0.00      -0.00       0.00       0.00      10.37       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     100.15      68.59      -0.00       0.00      -0.00      12.25

   47   3.1  1.0 -1.0      -0.00      -0.00      -0.00       0.00     109.47     -52.45       0.00      -0.00       0.00      20.56
                           -0.00     -60.72       0.00       0.00      -0.00       0.00       0.00      10.37       0.00       0.00

   48   4.1  1.0 -1.0       0.00       0.00      60.47      -0.00      -0.00       0.00      10.33      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00     -60.95       0.00      -0.00       0.00      -0.00      10.41       0.00

   49   5.1  1.0 -1.0       0.00      -0.00    -105.29       0.00       0.00       0.00     -17.96      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00    -105.01      -0.00      -0.00      -0.00      -0.00      17.91       0.00

   50   6.1  1.0 -1.0       0.00       0.00      -0.00      23.37       0.00       0.00      -0.00      -0.00      76.85       0.00
                           -0.00      -0.00      23.37       0.00       0.00      -0.00     -76.85       0.00      -0.00       0.00

   51   7.1  1.0 -1.0      -0.00     -29.47      -0.00       0.00      -0.00       0.00      -0.00     -96.97       0.00       0.00
                            0.00      -0.00       0.00       0.00      -2.53     -27.13      -0.00       0.00       0.00     -21.66

   52   8.1  1.0 -1.0      -0.00      -0.00       0.00       0.00       6.65     -26.42      -0.00       0.00       0.00     -49.39
                            0.00      29.47      -0.00      -0.00       0.00      -0.00       0.00      96.97      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00       0.00      23.36      -0.00       0.00       0.00     -76.85       0.00      -0.00       0.00
                           -0.00      -0.00       0.00     -23.36       0.00      -0.00      -0.00       0.00     -76.85      -0.00

   54  10.1  1.0 -1.0       0.01      -0.00       0.00       0.00      24.21      14.34       0.00       0.00       0.00     -59.50
                            0.00       2.13      -0.00      -0.00       0.00      -0.00       0.00       7.00      -0.00      -0.00

   55  11.1  1.0 -1.0      -0.00       2.13       0.00      -0.00       0.00      -0.00       0.00       6.99      -0.00      -0.00
                            0.01      -0.00       0.00       0.00      26.12     -10.47       0.00       0.00       0.00     -92.40

   56  12.1  1.0 -1.0      -0.00       0.00      -0.00      18.09      -0.00      -0.00      -0.00      -0.00      59.55       0.00
                            0.00      -0.00     -18.10       0.00      -0.00       0.00      59.56       0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00      -0.00      -0.00      41.64      -0.00      -0.00       0.00      -0.00    -185.98      -0.00
                           -0.00      -0.00     -41.64      -0.00       0.00       0.00    -185.98       0.00       0.00      -0.00

   58  14.1  1.0 -1.0     -80.51       0.00      -0.00       0.00     -20.75     -43.33       0.00       0.00       0.00     -23.47
                           -0.00     -41.64       0.00       0.00      -0.00       0.00      -0.00     185.99       0.00       0.00

   59  15.1  1.0 -1.0      -0.00     -41.64       0.00       0.00      -0.00       0.00      -0.00     185.99       0.00       0.00
                          -80.51       0.00      -0.00       0.00     -27.14      39.64      -0.00       0.00      -0.00    -173.19

   60  16.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00     -60.72      -0.00       0.00      -0.00       0.00     -29.47      -0.00
                            0.00       0.00       0.00       0.00     -60.72      -0.00      -0.00      -0.00      -0.00      29.47

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00      60.47    -105.29      -0.00      -0.00       0.00
                            0.00       0.00      60.71      -0.00       0.00       0.00      -0.00      23.37       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00      60.71       0.00       0.00      -0.00       0.00      23.37       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     -60.95    -105.01       0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00      -0.00     109.47      -0.00       0.00       0.00      -0.00       6.65
                            0.00       0.00      -0.00     100.15      -0.00       0.00      -0.00       0.00      -2.53       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00     -52.45       0.00       0.00       0.00       0.00     -26.42
                            0.00       0.00       0.00      68.59       0.00      -0.00      -0.00      -0.00     -27.13      -0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      10.33     -17.96      -0.00      -0.00      -0.00
                            0.00       0.00      10.37      -0.00       0.00       0.00      -0.00     -76.85      -0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00      10.37      -0.00      -0.00      -0.00      -0.00     -96.97       0.00
                            0.00       0.00       0.00       0.00      10.37      -0.00      -0.00       0.00       0.00      96.97

    9   9.1  0.0  0.0       0.00       0.00     -10.37       0.00       0.00       0.00      -0.00      76.85       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      10.41      17.91      -0.00       0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00      -0.00       0.00      20.56      -0.00       0.00       0.00       0.00     -49.39
                            0.00       0.00      -0.00      12.25       0.00       0.00       0.00       0.00     -21.66      -0.00

   11  11.1  0.0  0.0   24630.15       0.00       0.00       0.00       2.25       0.00      -0.00       0.00       0.00     -74.73
                            0.00       0.00      -0.00     -16.67       0.00       0.00       0.00      -0.00     -86.92      -0.00

   12  12.1  0.0  0.0       0.00   26585.62       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.01
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.01      -0.00

   13   1.1  1.0  1.0       0.00       0.00   10535.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     174.48      -0.40      -0.00       0.00       0.00

   14   2.1  1.0  1.0       0.00      -0.00       0.00   10535.58       0.00       0.00       0.00       0.00       0.00       0.00
                           16.67       0.00       0.00      -0.00      87.25      -0.00       0.00       0.00      -0.00      -0.64

   15   3.1  1.0  1.0       2.25      -0.00       0.00       0.00   10535.58       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -87.25       0.00       0.00       0.00       0.00      -0.64       0.00

   16   4.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00   10535.62       0.00       0.00       0.00       0.00
                           -0.00       0.00    -174.48       0.00      -0.00      -0.00      -0.00       2.71       0.00       0.00

   17   5.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00   10535.63       0.00       0.00       0.00
                           -0.00       0.00       0.40      -0.00      -0.00       0.00       0.00      -0.01      -0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00   22817.55       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -2.71       0.01       0.00       0.00      -0.00

   19   7.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00   22817.61       0.00
                           86.92      -0.01      -0.00       0.00       0.64      -0.00       0.00      -0.00      -0.00     240.63

   20   8.1  1.0  1.0     -74.73      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22817.60
                            0.00       0.00      -0.00       0.64      -0.00      -0.00      -0.00       0.00    -240.63       0.00

   21   9.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       2.71      -0.00      -0.00      -0.00      -0.00    -167.64       0.00      -0.00

   22  10.1  1.0  1.0      70.80       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       3.40      -0.00      -0.00      -0.00      -0.00      59.21      -0.00

   23  11.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.04      -0.02      -0.00      -0.00      -3.40      -0.00       0.00       0.00       0.00      59.23

   24  12.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.01      -3.68      -0.00      -0.00      -0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.02       7.55       0.00      -0.00      -0.00

   26  14.1  1.0  1.0     213.50    -175.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       6.57       0.00      -0.00       0.00      -0.00       0.02      -0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          127.04     175.50       0.00       0.00      -6.57       0.00      -0.00       0.00      -0.00       0.02

   28  16.1  1.0  1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   29   1.1  1.0  0.0       0.00       0.00      -0.00     -61.69      -0.00       0.00      -0.00       0.00      -2.44      -0.00
                           26.76      -0.00      -0.00      -0.00     -61.69      -0.00       0.00       0.00       0.00       2.44

   30   2.1  1.0  0.0       0.00       0.00      61.69       0.00      -0.00       0.00       0.00       1.95       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     -61.93    -106.70       0.00       0.00      -0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      61.44    -106.99       0.00      -0.00       0.00
                            0.00       0.00      61.69       0.00       0.00      -0.00      -0.00       1.95       0.00       0.00

   32   4.1  1.0  0.0       0.00       0.00      -0.00      -0.00     -61.44       0.00       0.00       0.00      -0.00      -2.21
                           -0.00      -0.00       0.00      61.93       0.00       0.00      -0.00       0.00      -2.21       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00      -0.00     106.99      -0.00      -0.00      -0.00      -0.00       0.38
                            0.00       0.00      -0.00     106.70       0.00       0.00       0.00      -0.00      -0.37       0.00

   34   6.1  1.0  0.0       0.00       0.00      -0.00      -1.95      -0.00      -0.00       0.00      -0.00     -54.57       0.00
                           99.48      -0.00      -0.00      -0.00      -1.95      -0.00       0.00       0.00       0.00      54.58

   35   7.1  1.0  0.0       0.00       0.00       2.44      -0.00       0.00       0.00       0.00      54.57       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       2.21       0.37      -0.00      -0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00      -0.00      -0.00       2.21      -0.38      -0.00       0.00      -0.00
                           -0.00      -0.00      -2.44       0.00      -0.00      -0.00      -0.00     -54.58      -0.00      -0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -1.94       0.00      -0.00      -0.00      -0.00     -88.22
                            0.00       0.00       0.00       1.94      -0.00      -0.00      -0.00       0.00     -88.23       0.00

   38  10.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -1.04      -2.07      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.19      -0.00       0.00       0.00      -0.00     105.22      -0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00      -0.19      -0.00      -0.00       0.00       0.00     105.21       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00       1.03      -2.08       0.00      -0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00      -1.49      -0.00      -0.00       0.00      -0.00     -26.08      -0.00
                           58.78      -0.03      -0.00       0.00       1.49       0.00       0.00      -0.00      -0.00     -26.07

   41  13.1  1.0  0.0       0.00       0.00      -0.00      -4.65      -0.00      -0.00       0.00       0.00      -0.00       0.00
                          122.27     248.21       0.00       0.00       4.65       0.00      -0.00       0.00       0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       4.65       2.69      -0.00      -0.00       0.00
                           -0.00      -0.00       4.65      -0.00       0.00       0.00      -0.00       0.02      -0.00       0.00

   43  15.1  1.0  0.0       0.00       0.00       4.65       0.00       0.00      -0.00       0.00       0.02       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -4.64       2.71      -0.00       0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -16.67      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       2.25      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   5.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -86.92       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0     -74.73      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   9.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0      70.80       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.04       0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  14.1  1.0 -1.0     213.50    -175.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -127.04    -175.50      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  16.1  1.0 -1.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.01      -0.00      -0.00       0.00     -80.51      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.01       0.00      -0.00      -0.00     -80.51       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00      -0.00       2.13       0.00      -0.00       0.00     -41.64       0.00       0.00       0.00
                           -0.00       2.13      -0.00      -0.00      -0.00     -41.64       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0      23.36       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -18.10     -41.64       0.00      -0.00       0.00      -0.00      85.86

    4   4.1  0.0  0.0      -0.00       0.00      -0.00      18.09      41.64       0.00       0.00      -0.00       0.00       0.00
                          -23.36      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

    5   5.1  0.0  0.0       0.00      24.21       0.00      -0.00      -0.00     -20.75      -0.00       0.00       0.00       0.00
                            0.00       0.00      26.12      -0.00       0.00      -0.00     -27.14      -0.00     -13.18      -0.00

    6   6.1  0.0  0.0       0.00      14.34      -0.00      -0.00      -0.00     -43.33       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -10.47       0.00       0.00       0.00      39.64      -0.00     171.16       0.00

    7   7.1  0.0  0.0     -76.85       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      59.56    -185.98      -0.00      -0.00       0.00      -0.00      14.67

    8   8.1  0.0  0.0       0.00       0.00       6.99      -0.00      -0.00       0.00     185.99      -0.00       0.00       0.00
                            0.00       7.00       0.00       0.00       0.00     185.99       0.00       0.00       0.00      -0.00

    9   9.1  0.0  0.0      -0.00       0.00      -0.00      59.55    -185.98       0.00       0.00       0.00       0.00       0.00
                          -76.85      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   10  10.1  0.0  0.0       0.00     -59.50      -0.00       0.00      -0.00     -23.47       0.00      -0.00       0.00       0.00
                           -0.00      -0.00     -92.40      -0.00      -0.00       0.00    -173.19       0.00     -11.76       0.00

   11  11.1  0.0  0.0       0.00      70.80       0.00       0.00       0.00     213.50       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -4.04       0.00       0.00       0.00    -127.04       0.00     -26.76       0.00

   12  12.1  0.0  0.0      -0.00       0.02      -0.00      -0.00       0.00    -175.50       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.02       0.00       0.00      -0.00    -175.50       0.00       0.00      -0.00

   13   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      61.69
                           -2.71       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   14   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -61.69       0.00
                            0.00      -3.40       0.00      -0.00      -0.00      -6.57      -0.00       0.00       0.00      -0.00

   15   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       3.40       0.00      -0.00      -0.00       6.57       0.00      61.69       0.00

   16   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.01      -0.02       0.00      -0.00      -0.00       0.00      61.93

   17   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       3.68      -7.55      -0.00       0.00       0.00      -0.00     106.70

   18   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.95
                          167.64       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   19   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.44       0.00
                           -0.00     -59.21      -0.00       0.00       0.00      -0.02       0.00      -0.00      -0.00      -0.00

   20   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00     -59.23       0.00       0.00       0.00      -0.02       0.00      -2.44       0.00

   21   9.1  1.0  1.0   22817.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       1.94

   22  10.1  1.0  1.0       0.00   22817.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00     -73.02       0.00       0.00       0.00       0.00       0.00      -0.19      -0.00

   23  11.1  1.0  1.0       0.00       0.00   22817.82       0.00       0.00       0.00       0.00       0.00       0.19       0.00
                            0.00      73.02      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00       0.00   22817.83       0.00       0.00       0.00       0.00      -0.00       1.49
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   25  13.1  1.0  1.0       0.00       0.00       0.00       0.00   25048.22       0.00       0.00       0.00       0.00       4.65
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      13.95       0.00       0.00

   26  14.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   25048.25       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00    -223.16       0.00       4.65      -0.00

   27  15.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   25048.25       0.00      -4.65      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00     223.16      -0.00      -0.00       0.00      -0.00

   28  16.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26549.90       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     -13.95      -0.00       0.00      -0.00      -0.00       0.00

   29   1.1  1.0  0.0      -0.00       0.00       0.19      -0.00       0.00      -0.00      -4.65       0.00   10535.57       0.00
                           -0.00       0.19       0.00       0.00      -0.00      -4.65      -0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0      -0.00      -0.00       0.00       1.49       4.65      -0.00      -0.00      -0.00       0.00   10535.58
                           -1.94       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   31   3.1  1.0  0.0       1.94      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      -1.49      -4.65      -0.00       0.00       0.00      -0.00      -0.00

   32   4.1  1.0  0.0      -0.00       1.04      -0.00       0.00       0.00      -4.65       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.03      -0.00      -0.00      -0.00       4.64      -0.00      -0.00      -0.00

   33   5.1  1.0  0.0       0.00       2.07      -0.00      -0.00      -0.00      -2.69      -0.00       0.00       0.00       0.00
                            0.00       0.00       2.08      -0.00       0.00       0.00      -2.71      -0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00    -105.21       0.00      -0.00       0.00      -0.02       0.00       0.00       0.00
                           -0.00    -105.22      -0.00       0.00      -0.00      -0.02       0.00      -0.00      -0.00      -0.00

   35   7.1  1.0  0.0       0.00      -0.00      -0.00      26.08       0.00       0.00      -0.00       0.00       0.00       0.00
                           88.23       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   36   8.1  1.0  0.0      88.22       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      26.07       0.00      -0.00       0.00       0.00      -0.00      -0.00

   37   9.1  1.0  0.0       0.00     -79.15      -0.00       0.00      -0.00      -0.01      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      79.14       0.00      -0.00       0.00       0.01      -0.00      -0.00      -0.00

   38  10.1  1.0  0.0      79.15       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     142.81       0.02      -0.00       0.00       0.00      -0.00      -0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00    -142.81      -0.02      -0.00      -0.00      -0.00       0.00       0.00
                          -79.14      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   40  12.1  1.0  0.0      -0.00      -0.00     142.81      -0.00       0.00      -0.00       0.02      -0.00       0.00       0.00
                           -0.00    -142.81      -0.00       0.00      -0.00      -0.02      -0.00      -0.00      -0.00      -0.00

   41  13.1  1.0  0.0       0.00       0.00       0.02      -0.00      -0.00      -0.00    -157.80       0.00       0.00       0.00
                            0.00      -0.02       0.00       0.00      -0.00     157.80       0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.01      -0.00       0.00       0.00       0.00       0.00       0.00      -9.86       0.00       0.00
                           -0.00       0.00       0.00       0.02    -157.80       0.00       0.00       0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00      -0.00       0.00      -0.02     157.80      -0.00       0.00      -0.00       0.00       0.00
                           -0.01      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -9.86      -0.00      -0.00

   44  16.1  1.0  0.0       0.00      -0.00       0.00       0.00      -0.00       9.86       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       9.86      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -61.69
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      61.69       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      61.69       0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      61.93

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     106.70

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.95
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.44      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.44       0.00

   53   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.94

   54  10.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.19      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.19      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.49
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -4.65
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.65      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.65       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.02

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -171.71       0.39      -0.00       0.00       0.00      33.02       0.00      -0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       7.51       0.00       0.00      -0.00     -41.11      -0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -85.86       0.00      -0.00       0.00      -0.00       7.51      -0.00      41.11       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       2.53       0.00       0.00      -0.00       0.00      -0.00     -44.32

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -32.93      -0.00       0.00      -0.00       0.00       0.00      -3.41

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     -24.69      -0.00      -0.00      -0.00     135.28      -0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      29.26      -0.07       0.00       0.00      -0.00     108.68      -0.00      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           14.67       0.00       0.00       0.00      -0.00      24.68      -0.00     135.28      -0.00      -0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -43.73       0.00      -0.00       0.00      -0.00      -0.00     133.72

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -99.48       0.00       0.00      -0.00       0.00       0.00     -58.78

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.03

   13   1.1  1.0  1.0       0.00      -0.00       0.00      -0.00       2.44       0.00       0.00      -0.00      -0.19       0.00
                          -61.69      -0.00       0.00       0.00       0.00       2.44      -0.00       0.19       0.00       0.00

   14   2.1  1.0  1.0       0.00      -0.00      -0.00      -1.95      -0.00      -0.00       0.00       0.00      -0.00      -1.49
                           -0.00     -61.93    -106.70       0.00       0.00      -0.00      -1.94       0.00      -0.00      -0.00

   15   3.1  1.0  1.0       0.00     -61.44     106.99      -0.00       0.00      -0.00      -1.94       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       1.95       0.00       0.00       0.00      -0.00      -0.00      -1.49

   16   4.1  1.0  1.0      61.44       0.00      -0.00      -0.00       0.00       2.21       0.00      -1.04       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -2.21       0.00       0.00      -0.00      -1.03      -0.00

   17   5.1  1.0  1.0    -106.99       0.00      -0.00       0.00       0.00      -0.38      -0.00      -2.07       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.37       0.00       0.00       0.00       2.08      -0.00

   18   6.1  1.0  1.0       0.00       0.00      -0.00      -0.00      54.57      -0.00      -0.00      -0.00     105.21      -0.00
                           -1.95      -0.00       0.00      -0.00       0.00      54.58      -0.00    -105.22      -0.00       0.00

   19   7.1  1.0  1.0      -0.00      -0.00      -0.00     -54.57       0.00       0.00      -0.00       0.00       0.00     -26.08
                           -0.00       2.21       0.37      -0.00       0.00       0.00      88.23       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00      -2.21       0.38       0.00      -0.00      -0.00     -88.22      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00     -54.58      -0.00       0.00      -0.00       0.00      -0.00      26.07

   21   9.1  1.0  1.0       1.94      -0.00       0.00       0.00       0.00      88.22       0.00      79.15       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00     -88.23       0.00       0.00      -0.00      79.14       0.00

   22  10.1  1.0  1.0      -0.00       1.04       2.07       0.00      -0.00       0.00     -79.15       0.00       0.00      -0.00
                            0.00       0.00      -0.00     105.22      -0.00      -0.00       0.00      -0.00       0.00     142.81

   23  11.1  1.0  1.0       0.00      -0.00      -0.00    -105.21      -0.00       0.00      -0.00      -0.00       0.00     142.81
                            0.00       1.03      -2.08       0.00      -0.00       0.00     -79.14      -0.00      -0.00       0.00

   24  12.1  1.0  1.0       0.00       0.00      -0.00       0.00      26.08       0.00       0.00       0.00    -142.81      -0.00
                            1.49       0.00       0.00      -0.00      -0.00     -26.07      -0.00    -142.81      -0.00      -0.00

   25  13.1  1.0  1.0       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.02       0.00
                            4.65       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.02       0.00       0.00

   26  14.1  1.0  1.0      -0.00      -4.65      -2.69       0.00       0.00      -0.00      -0.01       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.02      -0.00       0.00      -0.00       0.00       0.00       0.02

   27  15.1  1.0  1.0      -0.00       0.00      -0.00      -0.02      -0.00       0.00      -0.00       0.00      -0.00       0.02
                           -0.00      -4.64       2.71      -0.00       0.00      -0.00      -0.01      -0.00      -0.00       0.00

   28  16.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   3.1  1.0  0.0   10535.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00   10535.62       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00   10535.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00   22817.55       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00   22817.61       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   22817.60       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   22817.70       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22817.81       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22817.82       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   22817.83
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41  13.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42  14.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43  15.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   1.1  1.0 -1.0      -0.00       0.00      -0.00       0.00      -2.44      -0.00      -0.00       0.00       0.19      -0.00
                          -61.69      -0.00       0.00       0.00       0.00       2.44      -0.00       0.19       0.00       0.00

   46   2.1  1.0 -1.0      -0.00       0.00       0.00       1.95       0.00       0.00      -0.00      -0.00       0.00       1.49
                           -0.00     -61.93    -106.70       0.00       0.00      -0.00      -1.94       0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00      61.44    -106.99       0.00      -0.00       0.00       1.94      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       1.95       0.00       0.00       0.00      -0.00      -0.00      -1.49

   48   4.1  1.0 -1.0     -61.44       0.00       0.00       0.00      -0.00      -2.21      -0.00       1.04      -0.00       0.00
                            0.00       0.00      -0.00       0.00      -2.21       0.00       0.00      -0.00      -1.03      -0.00

   49   5.1  1.0 -1.0     106.99      -0.00      -0.00      -0.00      -0.00       0.38       0.00       2.07      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.37       0.00       0.00       0.00       2.08      -0.00

   50   6.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00     -54.57       0.00       0.00       0.00    -105.21       0.00
                           -1.95      -0.00       0.00       0.00       0.00      54.58      -0.00    -105.22      -0.00       0.00

   51   7.1  1.0 -1.0       0.00       0.00       0.00      54.57       0.00      -0.00       0.00      -0.00      -0.00      26.08
                           -0.00       2.21       0.37      -0.00      -0.00       0.00      88.23       0.00       0.00       0.00

   52   8.1  1.0 -1.0      -0.00       2.21      -0.38      -0.00       0.00      -0.00      88.22       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -54.58      -0.00      -0.00      -0.00       0.00      -0.00      26.07

   53   9.1  1.0 -1.0      -1.94       0.00      -0.00      -0.00      -0.00     -88.22       0.00     -79.15      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00     -88.23       0.00      -0.00      -0.00      79.14       0.00

   54  10.1  1.0 -1.0       0.00      -1.04      -2.07      -0.00       0.00      -0.00      79.15       0.00      -0.00       0.00
                            0.00       0.00      -0.00     105.22      -0.00      -0.00       0.00       0.00       0.00     142.81

   55  11.1  1.0 -1.0      -0.00       0.00       0.00     105.21       0.00      -0.00       0.00       0.00       0.00    -142.81
                            0.00       1.03      -2.08       0.00      -0.00       0.00     -79.14      -0.00       0.00       0.00

   56  12.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00     -26.08      -0.00      -0.00      -0.00     142.81      -0.00
                            1.49       0.00       0.00      -0.00      -0.00     -26.07      -0.00    -142.81      -0.00       0.00

   57  13.1  1.0 -1.0      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.02      -0.00
                            4.65       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.02       0.00       0.00

   58  14.1  1.0 -1.0       0.00       4.65       2.69      -0.00      -0.00       0.00       0.01      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.02      -0.00       0.00      -0.00       0.00       0.00       0.02

   59  15.1  1.0 -1.0       0.00      -0.00       0.00       0.02       0.00      -0.00       0.00      -0.00       0.00      -0.02
                           -0.00      -4.64       2.71      -0.00       0.00      -0.00      -0.01      -0.00      -0.00       0.00

   60  16.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                         -113.87       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00     -60.72      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      60.72       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      60.47    -105.29      -0.00
                           -0.00      -0.00     -58.89       0.00     -60.71       0.00      -0.00      -0.00       0.00     -23.37

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00      60.71       0.00       0.00      -0.00       0.00      23.37
                            0.00      58.89      -0.00      -0.00      -0.00       0.00      -0.00      60.95     105.01      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00     109.47      -0.00       0.00       0.00
                           67.71      -0.00       0.00      -0.00       0.00    -100.15       0.00      -0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00     -52.45       0.00       0.00       0.00
                            5.21      -0.00       0.00       0.00      -0.00     -68.59      -0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      10.33     -17.96      -0.00
                           -0.00      -0.00    -263.02       0.00     -10.37       0.00      -0.00      -0.00       0.00      76.85

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      10.37      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -10.37       0.00       0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00     -10.37       0.00       0.00       0.00      -0.00      76.85
                           -0.00    -263.02       0.00       0.00      -0.00       0.00      -0.00     -10.41     -17.91       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00      20.56      -0.00       0.00       0.00
                          278.13      -0.00      -0.00       0.00       0.00     -12.25      -0.00      -0.00      -0.00      -0.00

   11  11.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       2.25       0.00      -0.00       0.00
                         -122.27       0.00       0.00      -0.00       0.00      16.67      -0.00      -0.00      -0.00       0.00

   12  12.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                         -248.21       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   13   1.1  1.0  1.0      -0.00       0.00       4.65      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.65      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0  1.0      -4.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.65      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0  1.0      -0.00       4.65      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       4.64      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0  1.0       0.00       2.69       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -2.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0  1.0       0.00      -0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.02       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   7.1  1.0  1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   8.1  1.0  1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   9.1  1.0  1.0       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22  10.1  1.0  1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23  11.1  1.0  1.0       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24  12.1  1.0  1.0      -0.00       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25  13.1  1.0  1.0      -0.00       0.00     157.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     157.80       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26  14.1  1.0  1.0      -0.00       0.00      -0.00       9.86       0.00       0.00       0.00       0.00       0.00       0.00
                         -157.80      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  15.1  1.0  1.0    -157.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -9.86       0.00       0.00       0.00       0.00       0.00       0.00

   28  16.1  1.0  1.0       0.00      -9.86      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       9.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      61.69       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00     -61.69      -0.00       0.00       0.00

   30   2.1  1.0  0.0       0.00       0.00       0.00       0.00     -61.69       0.00       0.00      -0.00      -0.00      -1.95
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -61.93    -106.70       0.00

   31   3.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     -61.44     106.99      -0.00
                            0.00       0.00       0.00       0.00      61.69       0.00      -0.00      -0.00      -0.00       1.95

   32   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      61.44       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      61.93       0.00      -0.00      -0.00       0.00

   33   5.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00    -106.99       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     106.70       0.00       0.00      -0.00      -0.00

   34   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       1.95       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -1.95      -0.00       0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00       0.00       0.00      -2.44       0.00      -0.00      -0.00      -0.00     -54.57
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       2.21       0.37      -0.00

   36   8.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -2.21       0.38       0.00
                            0.00       0.00       0.00       0.00      -2.44       0.00      -0.00      -0.00      -0.00     -54.58

   37   9.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00      -0.00       1.94      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       1.94      -0.00      -0.00      -0.00       0.00

   38  10.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.04       2.07       0.00
                            0.00       0.00       0.00       0.00      -0.19      -0.00       0.00       0.00      -0.00     105.22

   39  11.1  1.0  0.0       0.00       0.00       0.00       0.00       0.19       0.00       0.00      -0.00      -0.00    -105.21
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       1.03      -2.08       0.00

   40  12.1  1.0  0.0       0.00       0.00       0.00       0.00      -0.00       1.49       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       1.49       0.00       0.00      -0.00

   41  13.1  1.0  0.0   25048.22       0.00       0.00       0.00       0.00       4.65       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       4.65       0.00      -0.00       0.00

   42  14.1  1.0  0.0       0.00   25048.25       0.00       0.00      -0.00      -0.00      -0.00      -4.65      -2.69       0.00
                           -0.00       0.00       0.00       0.00       4.65      -0.00       0.00       0.00      -0.00       0.02

   43  15.1  1.0  0.0       0.00       0.00   25048.25       0.00      -4.65      -0.00      -0.00       0.00      -0.00      -0.02
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -4.64       2.71      -0.00

   44  16.1  1.0  0.0       0.00       0.00       0.00   26549.90       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   45   1.1  1.0 -1.0       0.00      -0.00      -4.65       0.00   10535.57       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.65      -0.00       0.00       0.00       0.00      -0.00    -174.48       0.40       0.00

   46   2.1  1.0 -1.0       4.65      -0.00      -0.00      -0.00       0.00   10535.58       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00     -87.25       0.00      -0.00      -0.00

   47   3.1  1.0 -1.0       0.00      -0.00      -0.00      -0.00       0.00       0.00   10535.58       0.00       0.00       0.00
                           -4.65      -0.00       0.00       0.00       0.00      87.25      -0.00      -0.00      -0.00      -0.00

   48   4.1  1.0 -1.0       0.00      -4.65       0.00       0.00       0.00       0.00       0.00   10535.62       0.00       0.00
                           -0.00      -0.00       4.64      -0.00     174.48      -0.00       0.00       0.00       0.00      -2.71

   49   5.1  1.0 -1.0      -0.00      -2.69      -0.00       0.00       0.00       0.00       0.00       0.00   10535.63       0.00
                            0.00       0.00      -2.71      -0.00      -0.40       0.00       0.00      -0.00      -0.00       0.01

   50   6.1  1.0 -1.0      -0.00       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00   22817.55
                           -0.00      -0.02       0.00      -0.00      -0.00       0.00       0.00       2.71      -0.01      -0.00

   51   7.1  1.0 -1.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.64       0.00      -0.00       0.00

   52   8.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.64       0.00       0.00       0.00      -0.00

   53   9.1  1.0 -1.0      -0.00      -0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.01      -0.00      -2.71       0.00       0.00       0.00       0.00     167.64

   54  10.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00       0.00       0.00      -3.40       0.00       0.00       0.00       0.00

   55  11.1  1.0 -1.0      -0.02      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       3.40       0.00      -0.00      -0.00

   56  12.1  1.0 -1.0       0.00      -0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.02      -0.00      -0.00       0.00      -0.00       0.00       0.01       3.68       0.00

   57  13.1  1.0 -1.0      -0.00      -0.00    -157.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     157.80       0.00      -0.00       0.00      -0.00      -0.00      -0.02      -7.55      -0.00

   58  14.1  1.0 -1.0       0.00       0.00       0.00      -9.86       0.00       0.00       0.00       0.00       0.00       0.00
                         -157.80       0.00       0.00       0.00       0.00      -6.57      -0.00       0.00      -0.00       0.00

   59  15.1  1.0 -1.0     157.80      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -9.86      -0.00      -0.00       6.57      -0.00       0.00      -0.00

   60  16.1  1.0 -1.0      -0.00       9.86       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       9.86      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  0.0  0.0      -0.00      -0.00       0.00       0.01      -0.00      -0.00       0.00     -80.51      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.01      -0.00       0.00       0.00      80.51      -0.00

    2   2.1  0.0  0.0     -29.47      -0.00       0.00      -0.00       2.13       0.00      -0.00       0.00     -41.64       0.00
                            0.00     -29.47       0.00      -2.13       0.00       0.00       0.00      41.64      -0.00      -0.00

    3   3.1  0.0  0.0      -0.00       0.00      23.36       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      18.10      41.64      -0.00       0.00      -0.00

    4   4.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00      18.09      41.64       0.00       0.00      -0.00
                           -0.00       0.00      23.36       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

    5   5.1  0.0  0.0      -0.00       6.65       0.00      24.21       0.00      -0.00      -0.00     -20.75      -0.00       0.00
                            2.53      -0.00      -0.00      -0.00     -26.12       0.00      -0.00       0.00      27.14       0.00

    6   6.1  0.0  0.0       0.00     -26.42       0.00      14.34      -0.00      -0.00      -0.00     -43.33       0.00       0.00
                           27.13       0.00       0.00       0.00      10.47      -0.00      -0.00      -0.00     -39.64       0.00

    7   7.1  0.0  0.0      -0.00      -0.00     -76.85       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00     -59.56     185.98       0.00       0.00      -0.00

    8   8.1  0.0  0.0     -96.97       0.00       0.00       0.00       6.99      -0.00      -0.00       0.00     185.99      -0.00
                           -0.00     -96.97      -0.00      -7.00      -0.00      -0.00      -0.00    -185.99      -0.00      -0.00

    9   9.1  0.0  0.0       0.00       0.00      -0.00       0.00      -0.00      59.55    -185.98       0.00       0.00       0.00
                           -0.00       0.00      76.85       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00     -49.39       0.00     -59.50      -0.00       0.00      -0.00     -23.47       0.00      -0.00
                           21.66       0.00       0.00       0.00      92.40       0.00       0.00      -0.00     173.19      -0.00

   11  11.1  0.0  0.0       0.00     -74.73       0.00      70.80       0.00       0.00       0.00     213.50       0.00       0.00
                           86.92       0.00       0.00       0.00       4.04      -0.00      -0.00      -0.00     127.04      -0.00

   12  12.1  0.0  0.0      -0.00      -0.01      -0.00       0.02      -0.00      -0.00       0.00    -175.50       0.00      -0.00
                           -0.01       0.00       0.00       0.00      -0.02      -0.00      -0.00       0.00     175.50      -0.00

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

   29   1.1  1.0  0.0       2.44       0.00       0.00      -0.00      -0.19       0.00      -0.00       0.00       4.65      -0.00
                            0.00       2.44      -0.00       0.19       0.00       0.00      -0.00      -4.65      -0.00       0.00

   30   2.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -0.00      -1.49      -4.65       0.00       0.00       0.00
                            0.00      -0.00      -1.94       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   31   3.1  1.0  0.0       0.00      -0.00      -1.94       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -1.49      -4.65      -0.00       0.00       0.00

   32   4.1  1.0  0.0       0.00       2.21       0.00      -1.04       0.00      -0.00      -0.00       4.65      -0.00      -0.00
                           -2.21       0.00       0.00      -0.00      -1.03      -0.00      -0.00      -0.00       4.64      -0.00

   33   5.1  1.0  0.0       0.00      -0.38      -0.00      -2.07       0.00       0.00       0.00       2.69       0.00      -0.00
                           -0.37       0.00       0.00       0.00       2.08      -0.00       0.00       0.00      -2.71      -0.00

   34   6.1  1.0  0.0      54.57      -0.00      -0.00      -0.00     105.21      -0.00       0.00      -0.00       0.02      -0.00
                            0.00      54.58      -0.00    -105.22      -0.00       0.00      -0.00      -0.02       0.00      -0.00

   35   7.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00     -26.08      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      88.23       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   36   8.1  1.0  0.0      -0.00      -0.00     -88.22      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      26.07       0.00      -0.00       0.00       0.00

   37   9.1  1.0  0.0       0.00      88.22       0.00      79.15       0.00      -0.00       0.00       0.01       0.00       0.00
                          -88.23       0.00       0.00      -0.00      79.14       0.00      -0.00       0.00       0.01      -0.00

   38  10.1  1.0  0.0      -0.00       0.00     -79.15       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00     142.81       0.02      -0.00       0.00       0.00

   39  11.1  1.0  0.0      -0.00       0.00      -0.00      -0.00       0.00     142.81       0.02       0.00       0.00       0.00
                           -0.00       0.00     -79.14      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   40  12.1  1.0  0.0      26.08       0.00       0.00       0.00    -142.81      -0.00      -0.00       0.00      -0.02       0.00
                           -0.00     -26.07      -0.00    -142.81      -0.00      -0.00      -0.00      -0.02      -0.00      -0.00

   41  13.1  1.0  0.0       0.00      -0.00      -0.00      -0.00      -0.02       0.00      -0.00       0.00     157.80      -0.00
                            0.00      -0.00       0.00      -0.02       0.00       0.00       0.00     157.80       0.00      -0.00

   42  14.1  1.0  0.0       0.00      -0.00      -0.01       0.00      -0.00      -0.00      -0.00       0.00      -0.00       9.86
                           -0.00       0.00      -0.00       0.00       0.00       0.02    -157.80      -0.00       0.00       0.00

   43  15.1  1.0  0.0      -0.00       0.00      -0.00       0.00      -0.00       0.02    -157.80       0.00       0.00       0.00
                            0.00      -0.00      -0.01      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -9.86

   44  16.1  1.0  0.0       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -9.86      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       9.86       0.00

   45   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       2.71      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   46   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.64      -0.00       3.40      -0.00       0.00       0.00       6.57       0.00      -0.00

   47   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.64      -0.00      -0.00      -0.00      -3.40      -0.00       0.00       0.00      -6.57      -0.00

   48   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.01       0.02      -0.00       0.00       0.00

   49   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -3.68       7.55       0.00      -0.00      -0.00

   50   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -167.64      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   51   7.1  1.0 -1.0   22817.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -240.63       0.00      59.21       0.00      -0.00      -0.00       0.02      -0.00       0.00

   52   8.1  1.0 -1.0       0.00   22817.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          240.63      -0.00      -0.00      -0.00      59.23      -0.00      -0.00      -0.00       0.02      -0.00

   53   9.1  1.0 -1.0       0.00       0.00   22817.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   54  10.1  1.0 -1.0       0.00       0.00       0.00   22817.81       0.00       0.00       0.00       0.00       0.00       0.00
                          -59.21       0.00      -0.00       0.00      73.02      -0.00      -0.00      -0.00      -0.00      -0.00

   55  11.1  1.0 -1.0       0.00       0.00       0.00       0.00   22817.82       0.00       0.00       0.00       0.00       0.00
                           -0.00     -59.23      -0.00     -73.02       0.00       0.00      -0.00       0.00       0.00      -0.00

   56  12.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   22817.83       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   57  13.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   25048.22       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     -13.95

   58  14.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25048.25       0.00       0.00
                           -0.02       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     223.16      -0.00

   59  15.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   25048.25       0.00
                            0.00      -0.02       0.00       0.00      -0.00      -0.00       0.00    -223.16       0.00       0.00

   60  16.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   26549.90
                           -0.00       0.00       0.00       0.00       0.00      -0.00      13.95       0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 60)

    The diagonal matrixelements are shifted by  -8132.65209912 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   12718.469       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   12718.477       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   12718.472       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   12718.497       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   12718.479       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   24630.141       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   24630.140
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000      85.862       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000     -85.865       0.000       0.000      -0.000       0.000       0.000      14.665
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.002      -0.000      -0.000       0.000     154.813     -74.178       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000      85.515      -0.000      -0.000       0.000      14.613      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000      -0.000    -148.901       0.000       0.000       0.000     -25.395      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000      -0.000      33.046       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -0.000     -41.681      -0.000       0.000      -0.000       0.000      -0.000    -137.134
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.005      -0.000       0.000       0.000       9.404     -37.364      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000      33.041      -0.000       0.000       0.000    -108.687       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.018      -0.000       0.000       0.000      34.239      20.285       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000       3.014       0.000      -0.000       0.000      -0.000       0.000       9.879
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             -0.000       0.000      -0.000      25.590      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000      -0.000      -0.000      58.892      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+           -113.864       0.000      -0.000       0.000     -29.342     -61.275       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+             -0.000     -58.888       0.000       0.000      -0.000       0.000      -0.000     263.023
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.001      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000      13.179    -171.164       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -85.863      -0.000       0.000      -0.000     -14.666       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      85.863       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     171.715      -0.000      -0.000       0.000      -0.000      -0.000     -29.256

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.391       0.000       0.000      -0.000      -0.000      -0.000       0.067

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000      -2.534      32.935       0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -7.514       0.000      -0.000       0.000      24.691      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -7.509      -0.000      -0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -33.018      -0.000       0.000       0.000       0.000       0.000    -108.684

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -41.112      -0.000      -0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      41.111      -0.000       0.000      -0.000    -135.279       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.022      -0.000       0.000      -0.000      44.319       3.412       0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              113.865      -0.000       0.000      -0.000     -67.714      -5.213       0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     -58.892       0.000       0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      58.892       0.000      -0.000      -0.000     263.018       0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -85.862      -0.000       0.000      -0.000     -14.669      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002      -0.000       0.000       0.000    -141.634     -97.003       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      85.865      -0.000      -0.000       0.000      -0.000      -0.000     -14.665

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      86.192      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     148.511       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -33.045      -0.000      -0.000       0.000     108.684      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005       0.000      -0.000      -0.000       3.578      38.362       0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -41.681       0.000       0.000      -0.000       0.000      -0.000    -137.133

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      33.041      -0.000       0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -3.019       0.000       0.000      -0.000       0.000      -0.000      -9.895

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.018       0.000      -0.000      -0.000     -36.941      14.809      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      25.592      -0.000       0.000      -0.000     -84.224      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      58.892       0.000      -0.000      -0.000     263.021      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      58.889      -0.000      -0.000       0.000      -0.000       0.000    -263.024

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              113.864      -0.000       0.000      -0.000      38.376     -56.061       0.000      -0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.002       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000     -85.865      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      85.515
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000      85.862       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000      -0.000     154.813      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000     -74.178       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      14.613
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000      14.665      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           24630.140       0.000       0.000       0.000     -14.669       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   24630.161       0.000       0.000      -0.000       0.000      29.083      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>               0.000       0.000   24630.153       0.000       0.000       0.000       3.181       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000   26585.623       0.000      -0.000      -0.001      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            -14.669      -0.000       0.000       0.000   10535.567       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000   10535.582       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      29.083       3.181      -0.001       0.000       0.000   10535.583       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000   10535.618
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            108.688       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000     -69.850    -105.690      -0.008       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000     -84.144     100.129       0.025       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+             84.218       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+           -263.021      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000     -33.198     301.938    -248.199       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000      11.764      26.760      -0.000       0.000      -0.000     -87.246      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000     -87.583

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                              -14.665      -0.000       0.000       0.000      87.246       0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000      87.583       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000     150.903       0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                               -0.000      43.731      99.482      -0.000      -0.000      -0.000      -2.752      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       3.128

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                              -24.675       0.000      -0.000      -0.000      -3.453       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       2.749      -0.000      -0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                             -135.282       0.000      -0.000      -0.000      -0.265      -0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       1.463

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000    -133.715      58.782      -0.026      -0.000       0.000       2.107       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000    -278.127     122.273     248.209       0.000       0.000       6.573       0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                              263.018       0.000      -0.000      -0.000       6.574      -0.000       0.000       0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000      -6.558

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000       0.001      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000     174.476

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -17.318      23.580       0.001       0.000      -0.000      87.245      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000     -87.245       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.729      -0.000      -0.000       0.000    -174.476       0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.328      -0.000      -0.000       0.000       0.397      -0.000      -0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000      -0.000      -0.000      -2.706

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      30.639     122.921      -0.008      -0.000       0.000       0.639      -0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.639      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              108.686       0.000       0.000       0.000       2.707      -0.000      -0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       3.402      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     130.670       5.708      -0.025      -0.000      -0.000      -3.402      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.008

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.017

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       6.568       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     244.925     179.667     248.199       0.000       0.000      -6.568       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               0.000       0.000      -0.000      -0.005       0.000       0.018      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>              -0.000       0.000     -41.681      -0.000       0.000      -0.000       3.014       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>            -148.901      -0.000      -0.000       0.000      33.041       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      33.046       0.000       0.000      -0.000       0.000      -0.000      25.590
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000       9.404       0.000      34.239       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000     -37.364       0.000      20.285      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>             -25.395      -0.000      -0.000      -0.000    -108.687       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>              -0.000      -0.000    -137.134       0.000       0.000       0.000       9.879      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>              -0.000     108.688       0.000       0.000      -0.000       0.000      -0.000      84.218
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000       0.000       0.000     -69.850       0.000     -84.144      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |0 0>              -0.000       0.000       0.000    -105.690       0.000     100.129       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |0 0>               0.000      -0.000      -0.000      -0.008      -0.000       0.025      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+          10535.625       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000   22817.552       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.000       0.000   22817.605       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000   22817.604       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000   22817.698       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000   22817.814       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000   22817.818       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22817.826
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       3.453      -0.000       0.265       0.000       0.000

    2    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                             -150.903       0.000       0.000      -0.000      -2.749       0.000      -0.000      -0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       2.752       0.000       0.000       0.000      -0.000      -0.000      -2.107

    4    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000      -3.128       0.000       0.000      -0.000      -1.463      -0.000

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000      -0.518       0.000       0.000       0.000       2.941      -0.000

    6    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000      77.190      -0.000    -148.797      -0.000       0.000

    7    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.518      -0.000       0.000       0.000     124.777       0.000       0.000       0.000

    8    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000     -77.190      -0.000       0.000      -0.000       0.000      -0.000      36.863

    9    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000    -124.777       0.000       0.000      -0.000     111.917       0.000

   10    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000     148.797      -0.000      -0.000       0.000       0.000       0.000     201.962

   11    1  |1 0>              -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -2.941       0.000      -0.000       0.000    -111.917      -0.000       0.000       0.000

   12    1  |1 0>              -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000     -36.863      -0.000    -201.962      -0.000       0.000

   13    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.004       0.000      -0.034       0.000       0.000

   14    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.026      -0.000       0.000      -0.000       0.000       0.000       0.031

   15    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                3.833      -0.000       0.000      -0.000      -0.014      -0.000      -0.000       0.000

   16    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.001      -0.000       0.000      -0.000      -0.002       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.397      -0.000       0.000       0.000      -2.707       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.639       0.000      -3.402       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.639       0.000       0.000       0.000       3.402       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.706       0.000       0.000       0.000       0.000       0.000       0.008

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.006      -0.000       0.000       0.000       0.000      -0.000       3.685

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006       0.000       0.000      -0.000     167.644       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     240.627      -0.000     -59.213      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -240.627       0.000       0.000       0.000     -59.233       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -167.644       0.000      -0.000       0.000      -0.000      -0.000       0.004

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      59.213      -0.000       0.000      -0.000     -73.019       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      59.233       0.000      73.019      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.685      -0.000      -0.000      -0.000      -0.004      -0.000       0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.545       0.000      -0.000      -0.000       0.001      -0.000      -0.000      -0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.021      -0.000      -0.000      -0.000       0.003      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.021      -0.000      -0.002       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.002

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000    -113.864      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |0 0>              -0.000       0.000     -58.888       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000    -171.715

    3    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      85.863      -0.000       0.000

    4    1  |0 0>              58.892       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     -85.863       0.000

    5    1  |0 0>              -0.000     -29.342      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -13.179      -0.000      -0.000      -0.000

    6    1  |0 0>              -0.000     -61.275       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     171.164       0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000       0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      14.666      -0.000       0.000

    8    1  |0 0>              -0.000       0.000     263.023      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      29.256

    9    1  |0 0>            -263.021       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      14.665       0.000

   10    1  |0 0>              -0.000     -33.198       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -11.764       0.000       0.000       0.000

   11    1  |0 0>               0.000     301.938       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -26.760       0.000      -0.000       0.000

   12    1  |0 0>               0.000    -248.199       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000     -87.246      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000     -87.583

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      87.246       0.000       0.000      -0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      87.583       0.000       0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000     150.903       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -2.752      -0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       3.128

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -3.453       0.000      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       2.749      -0.000      -0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.265      -0.000       0.000       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       1.463

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       2.107       0.000

   13    1  |1 1>+          25048.218       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       6.573       0.000

   14    1  |1 1>+              0.000   25048.254       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       6.574      -0.000       0.000       0.000

   15    1  |1 1>+              0.000       0.000   25048.248       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -6.558

   16    1  |1 1>+              0.000       0.000       0.000   26549.899       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.001      -0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000   10535.567       0.000       0.000       0.000
                               -0.000      -6.574      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000      -0.000       0.000   10535.582       0.000       0.000
                               -0.000       0.000       0.000      -0.001      -0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   10535.583       0.000
                               -6.573      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000      -0.000       0.000       0.000       0.000   10535.618
                               -0.000      -0.000       6.558      -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -3.833      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>              -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.026       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.001      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.004      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.014      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.034      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.002      -0.000      -0.000      -0.000      -0.000

   12    1  |1 0>               0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.031      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   13    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     223.168       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -223.168       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -13.945      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      13.945       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      87.246       0.000      -0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000     -87.246       0.000       0.000      -0.000
                               -0.000      -6.568      -0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000     -86.896
                               -0.000      -0.000       6.568       0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      86.896       0.000
                               -0.017       0.000      -0.000      -0.000      -0.000       0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000    -151.300       0.000
                               -7.545      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       2.752       0.000       0.000
                               -0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000      -3.453       0.000      -0.000      -0.000
                                0.000      -0.021       0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -3.126
                                0.000       0.000      -0.021       0.000      -0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       2.749      -0.000
                               -0.001       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       1.476
                                0.000       0.000       0.002       0.000       0.000      -0.000      -0.000      -0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.264       0.000       0.000      -0.000
                                0.000      -0.003      -0.000       0.000       0.000      -0.000      -0.000      -0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000       2.107       0.000       0.000
                                0.000       0.000      -0.000      -0.002       0.000       0.000      -0.000      -0.000

   13    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       6.573       0.000       0.000
                               -0.000       0.000       0.000      13.948       0.000      -0.000       0.000       0.000

   14    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -6.576
                               -0.000       0.000    -223.163       0.000      -0.000       0.000       0.000      -0.000

   15    1  |1 1>-              0.000       0.000       0.000       0.000      -6.574      -0.000      -0.000       0.000
                               -0.000     223.163      -0.000      -0.000       0.000       0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.001       0.000
                              -13.948      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

  State Sym Spin    / Nr.       33          34          35          36          37          38          39          40

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.022

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.391      -0.000       0.000       0.000      33.018       0.000      -0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       7.514       0.000       0.000      -0.000     -41.111      -0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       7.509      -0.000      41.112       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       2.534       0.000       0.000      -0.000       0.000      -0.000     -44.319

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -32.935      -0.000       0.000      -0.000       0.000       0.000      -3.412

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     -24.691      -0.000      -0.000      -0.000     135.279      -0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.067       0.000       0.000      -0.000     108.684      -0.000      -0.000      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      24.675      -0.000     135.282      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -43.731       0.000      -0.000       0.000      -0.000      -0.000     133.715

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -99.482       0.000       0.000      -0.000       0.000       0.000     -58.782

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.026

    1    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       3.453      -0.000       0.265       0.000       0.000

    2    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                             -150.903       0.000       0.000      -0.000      -2.749       0.000      -0.000      -0.000

    3    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       2.752       0.000       0.000       0.000      -0.000      -0.000      -2.107

    4    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               -0.000       0.000      -3.128       0.000       0.000      -0.000      -1.463      -0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000      -0.000      -0.518       0.000       0.000       0.000       2.941      -0.000

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000      77.190      -0.000    -148.797      -0.000       0.000

    7    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.518      -0.000       0.000       0.000     124.777       0.000       0.000       0.000

    8    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -0.000     -77.190      -0.000       0.000      -0.000       0.000      -0.000      36.863

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000    -124.777       0.000       0.000      -0.000     111.917       0.000

   10    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                               -0.000     148.797      -0.000      -0.000       0.000       0.000       0.000     201.962

   11    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -2.941       0.000      -0.000       0.000    -111.917      -0.000       0.000       0.000

   12    1  |1 1>+             -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000      -0.000      -0.000     -36.863      -0.000    -201.962      -0.000       0.000

   13    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.004       0.000      -0.034       0.000       0.000

   14    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                               -0.000       0.026      -0.000       0.000      -0.000       0.000       0.000       0.031

   15    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                3.833      -0.000       0.000      -0.000      -0.014      -0.000      -0.000       0.000

   16    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000      -0.001      -0.000       0.000      -0.000      -0.002       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>           10535.625       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>               0.000   22817.552       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 0>               0.000       0.000   22817.605       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000       0.000   22817.604       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000   22817.698       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000       0.000   22817.814       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000   22817.818       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   22817.826
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   14    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000      -0.000       3.453       0.000       0.000      -0.000      -0.264       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.000      -2.752      -0.000      -0.000       0.000       0.000      -0.000      -2.107
                               -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    3    1  |1 1>-            151.300      -0.000       0.000      -0.000      -2.749       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-             -0.000      -0.000       0.000       3.126       0.000      -1.476       0.000      -0.000
                               -0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000      -0.532      -0.000      -2.934       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>-             -0.000       0.000      77.175      -0.000      -0.000      -0.000     148.796      -0.000
                                0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 1>-             -0.000     -77.175       0.000       0.000      -0.000       0.000       0.000     -36.884
                               -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 1>-              0.532       0.000      -0.000       0.000    -124.764      -0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000     124.764       0.000     111.933       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

   10    1  |1 1>-              2.934       0.000      -0.000       0.000    -111.933       0.000       0.000      -0.000
                                0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

   11    1  |1 1>-             -0.000    -148.796      -0.000       0.000      -0.000      -0.000       0.000     201.966
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   12    1  |1 1>-             -0.000       0.000      36.884       0.000       0.000       0.000    -201.966       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   13    1  |1 1>-             -0.000      -0.000       0.004      -0.000      -0.000      -0.000      -0.034       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   14    1  |1 1>-             -3.803       0.000       0.000      -0.000      -0.015       0.000      -0.000      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

   15    1  |1 1>-             -0.000      -0.026      -0.000       0.000      -0.000       0.000      -0.000       0.031
                                0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000      -0.001      -0.000       0.002      -0.000      -0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       41          42          43          44          45          46          47          48

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -113.865       0.000      -0.000       0.000      -0.000      -0.002      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000     -85.865      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -58.892       0.000      85.862      -0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      58.892      -0.000      -0.000       0.000      -0.000       0.000     -86.192

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               67.714      -0.000       0.000      -0.000      -0.000     141.634      -0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                5.213      -0.000       0.000       0.000       0.000      97.003       0.000      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    -263.018       0.000      14.669      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000      14.665      -0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -263.018       0.000       0.000       0.000      -0.000       0.000      14.729

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              278.127      -0.000      -0.000       0.000      -0.000      17.318       0.000       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -122.273       0.000       0.000      -0.000      -0.000     -23.580       0.000       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -248.209       0.000       0.000       0.000      -0.000      -0.001       0.000      -0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -6.574      -0.000       0.000      -0.000      -0.000       0.000     174.476

    2    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.001       0.000      -0.000      87.245      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.573      -0.000       0.000       0.000      -0.000     -87.245       0.000       0.000

    4    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       6.558      -0.000    -174.476       0.000      -0.000      -0.000

    5    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -3.833      -0.000       0.397      -0.000      -0.000       0.000

    6    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.026       0.000      -0.000       0.000      -0.000      -0.000      -2.706

    7    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.001      -0.000       0.000       0.639      -0.000

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.004      -0.000       0.000       0.000      -0.000       0.639      -0.000      -0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.014      -0.000       2.707      -0.000      -0.000      -0.000

   10    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.034      -0.000       0.000       0.000      -0.000       3.402      -0.000      -0.000

   11    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.002      -0.000      -0.000      -3.402      -0.000

   12    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.031      -0.000      -0.000      -0.000       0.000      -0.000      -0.008

   13    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     223.168       0.000      -0.000      -0.000       0.000       0.000       0.017

   14    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -223.168       0.000       0.000       0.000      -0.000       6.568       0.000      -0.000

   15    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000     -13.945       0.000       0.000      -6.568       0.000

   16    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      13.945       0.000       0.000      -0.000      -0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000     -87.246      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      87.246       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      86.896
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000     -86.896       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000     151.300      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -2.752      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000       3.453      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       3.126
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -2.749       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

   10    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -1.476
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000       0.000       0.000       0.000      -0.264      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

   12    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -2.107      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

   13    1  |1 0>           25048.218       0.000       0.000       0.000      -0.000      -6.573      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

   14    1  |1 0>               0.000   25048.254       0.000       0.000       0.000       0.000       0.000       6.576
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

   15    1  |1 0>               0.000       0.000   25048.248       0.000       6.574       0.000       0.000      -0.000
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

   16    1  |1 0>               0.000       0.000       0.000   26549.899      -0.000       0.000       0.001      -0.000
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-             -0.000       0.000       6.574      -0.000   10535.567       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -6.573       0.000       0.000       0.000       0.000   10535.582       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.000       0.000       0.000       0.001       0.000       0.000   10535.583       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.000       6.576      -0.000      -0.000       0.000       0.000       0.000   10535.618
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.000       3.803       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      -0.000       0.026      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -0.004      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000      -0.000       0.001       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.015       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000      -0.000      -0.000      -0.002       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.034       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-             -0.000       0.000      -0.031       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

   13    1  |1 1>-              0.000       0.000     223.168      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   14    1  |1 1>-             -0.000       0.000      -0.000      13.945       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   15    1  |1 1>-           -223.168       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000     -13.945      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       49          50          51          52          53          54          55          56

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.005       0.000      -0.000       0.000       0.018       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      41.681      -0.000       3.019      -0.000      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      33.045       0.000      -0.000       0.000      -0.000       0.000     -25.592

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -148.511       0.000       0.000      -0.000     -33.041      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -3.578       0.000       0.000       0.000      36.941      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -38.362      -0.000      -0.000      -0.000     -14.809       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -108.684      -0.000       0.000      -0.000       0.000       0.000      84.224

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000     137.133       0.000       9.895       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               25.328      -0.000       0.000      -0.000    -108.686      -0.000       0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     -30.639      -0.000      -0.000      -0.000    -130.670      -0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -122.921      -0.000      -0.000      -0.000      -5.708       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.008      -0.000      -0.000      -0.000       0.025       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.397      -0.000       0.000       0.000      -2.707       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.639       0.000      -3.402       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.639       0.000       0.000       0.000       3.402       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       2.706       0.000       0.000       0.000       0.000       0.000       0.008

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.006      -0.000       0.000       0.000       0.000      -0.000       3.685

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.006       0.000       0.000      -0.000     167.644       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000     240.627      -0.000     -59.213      -0.000       0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000    -240.627       0.000       0.000       0.000     -59.233       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -167.644       0.000      -0.000       0.000      -0.000      -0.000       0.004

   10    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      59.213      -0.000       0.000      -0.000     -73.019       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      59.233       0.000      73.019      -0.000      -0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -3.685      -0.000      -0.000      -0.000      -0.004      -0.000       0.000      -0.000

   13    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.545       0.000      -0.000      -0.000       0.001      -0.000      -0.000      -0.000

   14    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.021      -0.000      -0.000      -0.000       0.003      -0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.021      -0.000      -0.002       0.000       0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.002

    1    1  |1 0>              -0.000       0.000      -3.453      -0.000      -0.000       0.000       0.264      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       2.752       0.000       0.000      -0.000      -0.000       0.000       2.107
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>            -151.300       0.000      -0.000       0.000       2.749      -0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000      -3.126      -0.000       1.476      -0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000      -0.000      -0.000       0.532       0.000       2.934      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000     -77.175       0.000       0.000       0.000    -148.796       0.000
                               -0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000      77.175       0.000      -0.000       0.000      -0.000      -0.000      36.884
                                0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000       0.000

    8    1  |1 0>              -0.532      -0.000       0.000       0.000     124.764       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -0.000      -0.000      -0.000    -124.764       0.000    -111.933      -0.000       0.000
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

   10    1  |1 0>              -2.934      -0.000       0.000      -0.000     111.933       0.000      -0.000       0.000
                               -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

   11    1  |1 0>               0.000     148.796       0.000      -0.000       0.000       0.000       0.000    -201.966
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000

   12    1  |1 0>               0.000      -0.000     -36.884      -0.000      -0.000      -0.000     201.966       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

   13    1  |1 0>               0.000       0.000      -0.004       0.000       0.000       0.000       0.034      -0.000
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   14    1  |1 0>               3.803      -0.000      -0.000       0.000       0.015      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

   15    1  |1 0>               0.000       0.026       0.000      -0.000       0.000      -0.000       0.000      -0.031
                               -0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000

   16    1  |1 0>              -0.000      -0.000      -0.000       0.001       0.000      -0.002       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          10535.625       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   22817.552       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   22817.605       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   22817.604       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   22817.698       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |1 1>-              0.000       0.000       0.000       0.000       0.000   22817.814       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   11    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000   22817.818       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   12    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000   22817.826
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
                               -0.000      -0.000    -113.864       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000     -58.889       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000
                              -58.892       0.000      -0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000     -38.376      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000      56.061      -0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                             -263.021      -0.000      -0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000     263.024       0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.001

   10    1  |0 0>               0.000       0.000       0.000       0.000
                               -0.000       0.000    -244.925       0.000

   11    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000    -179.667       0.000

   12    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000      -0.000    -248.199       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -6.568      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000      -0.000       6.568       0.000

    4    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.017       0.000      -0.000      -0.000

    5    1  |1 1>+              0.000       0.000       0.000       0.000
                               -7.545      -0.000       0.000       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000

    7    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.021       0.000      -0.000

    8    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.021       0.000

    9    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000       0.000

   10    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000       0.002       0.000

   11    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000      -0.003      -0.000       0.000

   12    1  |1 1>+              0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.002

   13    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      13.948

   14    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000       0.000    -223.163       0.000

   15    1  |1 1>+              0.000       0.000       0.000       0.000
                               -0.000     223.163      -0.000      -0.000

   16    1  |1 1>+              0.000       0.000       0.000       0.000
                              -13.948      -0.000       0.000      -0.000

    1    1  |1 0>               0.000      -0.000      -6.574       0.000
                               -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               6.573      -0.000      -0.000      -0.000
                                0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000      -0.001
                               -0.000      -0.000       0.000      -0.000

    4    1  |1 0>               0.000      -6.576       0.000       0.000
                               -0.000       0.000      -0.000       0.000

    5    1  |1 0>              -0.000      -3.803      -0.000       0.000
                               -0.000       0.000      -0.000       0.000

    6    1  |1 0>              -0.000       0.000      -0.026       0.000
                               -0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.004       0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000      -0.001
                               -0.000      -0.000      -0.000       0.000

    9    1  |1 0>              -0.000      -0.015      -0.000      -0.000
                               -0.000       0.000      -0.000      -0.000

   10    1  |1 0>              -0.000       0.000       0.000       0.002
                               -0.000      -0.000      -0.000      -0.000

   11    1  |1 0>              -0.034      -0.000      -0.000      -0.000
                                0.000      -0.000       0.000      -0.000

   12    1  |1 0>               0.000      -0.000       0.031      -0.000
                               -0.000      -0.000      -0.000       0.000

   13    1  |1 0>               0.000      -0.000    -223.168       0.000
                               -0.000       0.000       0.000       0.000

   14    1  |1 0>               0.000       0.000       0.000     -13.945
                                0.000       0.000       0.000       0.000

   15    1  |1 0>             223.168      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 0>              -0.000      13.945       0.000       0.000
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

   13    1  |1 1>-          25048.218       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000

   14    1  |1 1>-              0.000   25048.254       0.000       0.000
                                0.000       0.000       0.000       0.000

   15    1  |1 1>-              0.000       0.000   25048.248       0.000
                                0.000       0.000       0.000       0.000

   16    1  |1 1>-              0.000       0.000       0.000   26549.899
                                0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -8132.65210633    -0.00000721       -1.58      0.00000000        0.00      0.0000
    2 -8132.60528794     0.04681118    10273.87      0.04681839    10275.45      1.2740
    3 -8132.60528794     0.04681118    10273.87      0.04681839    10275.45      1.2740
    4 -8132.60528791     0.04681121    10273.87      0.04681842    10275.46      1.2740
    5 -8132.60458156     0.04751756    10428.90      0.04752477    10430.48      1.2932
    6 -8132.60458149     0.04751763    10428.91      0.04752484    10430.50      1.2932
    7 -8132.60458141     0.04751771    10428.93      0.04752491    10430.51      1.2932
    8 -8132.60458139     0.04751773    10428.94      0.04752493    10430.52      1.2932
    9 -8132.60458139     0.04751773    10428.94      0.04752493    10430.52      1.2932
   10 -8132.60330047     0.04879865    10710.07      0.04880585    10711.65      1.3281
   11 -8132.60330047     0.04879865    10710.07      0.04880585    10711.65      1.3281
   12 -8132.60330047     0.04879865    10710.07      0.04880586    10711.65      1.3281
   13 -8132.60330043     0.04879869    10710.07      0.04880590    10711.66      1.3281
   14 -8132.60330041     0.04879871    10710.08      0.04880591    10711.66      1.3281
   15 -8132.60330041     0.04879871    10710.08      0.04880591    10711.66      1.3281
   16 -8132.60330040     0.04879872    10710.08      0.04880592    10711.66      1.3281
   17 -8132.59406608     0.05803304    12736.78      0.05804025    12738.36      1.5794
   18 -8132.59406608     0.05803304    12736.78      0.05804025    12738.36      1.5794
   19 -8132.59406607     0.05803305    12736.78      0.05804026    12738.36      1.5794
   20 -8132.59406604     0.05803308    12736.79      0.05804028    12738.37      1.5794
   21 -8132.59406602     0.05803311    12736.79      0.05804031    12738.38      1.5794
   22 -8132.54976646     0.10233266    22459.42      0.10233987    22461.01      2.7848
   23 -8132.54976629     0.10233283    22459.46      0.10234003    22461.04      2.7848
   24 -8132.54976594     0.10233318    22459.54      0.10234039    22461.12      2.7848
   25 -8132.54976593     0.10233319    22459.54      0.10234040    22461.12      2.7848
   26 -8132.54976589     0.10233323    22459.55      0.10234043    22461.13      2.7848
   27 -8132.54851630     0.10358282    22733.80      0.10359003    22735.38      2.8188
   28 -8132.54851630     0.10358282    22733.80      0.10359003    22735.38      2.8188
   29 -8132.54851610     0.10358302    22733.85      0.10359023    22735.43      2.8188
   30 -8132.54851571     0.10358341    22733.93      0.10359062    22735.51      2.8188
   31 -8132.54851571     0.10358341    22733.93      0.10359062    22735.51      2.8188
   32 -8132.54851562     0.10358350    22733.95      0.10359071    22735.53      2.8188
   33 -8132.54851548     0.10358365    22733.98      0.10359085    22735.56      2.8189
   34 -8132.54698880     0.10511032    23069.05      0.10511752    23070.63      2.8604
   35 -8132.54698880     0.10511032    23069.05      0.10511753    23070.63      2.8604
   36 -8132.54698871     0.10511041    23069.07      0.10511762    23070.65      2.8604
   37 -8132.54698870     0.10511042    23069.07      0.10511762    23070.65      2.8604
   38 -8132.54698835     0.10511077    23069.15      0.10511798    23070.73      2.8604
   39 -8132.54698822     0.10511090    23069.18      0.10511811    23070.76      2.8604
   40 -8132.54698797     0.10511115    23069.23      0.10511836    23070.81      2.8604
   41 -8132.54698796     0.10511116    23069.23      0.10511837    23070.81      2.8604
   42 -8132.54698785     0.10511127    23069.26      0.10511847    23070.84      2.8604
   43 -8132.54055843     0.11154069    24480.35      0.11154789    24481.93      3.0354
   44 -8132.54055838     0.11154074    24480.36      0.11154794    24481.94      3.0354
   45 -8132.54055836     0.11154076    24480.37      0.11154796    24481.95      3.0354
   46 -8132.54055836     0.11154076    24480.37      0.11154797    24481.95      3.0354
   47 -8132.54055832     0.11154080    24480.38      0.11154801    24481.96      3.0354
   48 -8132.54040388     0.11169524    24514.27      0.11170244    24515.85      3.0396
   49 -8132.53898880     0.11311032    24824.84      0.11311752    24826.43      3.0781
   50 -8132.53898879     0.11311033    24824.85      0.11311754    24826.43      3.0781
   51 -8132.53898870     0.11311042    24824.87      0.11311763    24826.45      3.0781
   52 -8132.53616213     0.11593699    25445.23      0.11594420    25446.81      3.1550
   53 -8132.53616212     0.11593700    25445.23      0.11594421    25446.81      3.1550
   54 -8132.53616207     0.11593705    25445.24      0.11594426    25446.82      3.1550
   55 -8132.53616195     0.11593717    25445.27      0.11594438    25446.85      3.1550
   56 -8132.53616165     0.11593748    25445.33      0.11594468    25446.92      3.1550
   57 -8132.53112785     0.12097127    26550.12      0.12097847    26551.71      3.2920
   58 -8132.53112785     0.12097127    26550.12      0.12097847    26551.71      3.2920
   59 -8132.53112785     0.12097127    26550.12      0.12097847    26551.71      3.2920
   60 -8132.53055960     0.12153952    26674.84      0.12154672    26676.42      3.3075

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99996785 -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000024 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.09152384  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000224  0.00000000

   3    1  |0 0>           0.00000000 -0.00000199 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.09152086
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000000 -0.00000196 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00497083 -0.09135534 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.09136368 -0.00497022  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.00000128 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00255099
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00254834 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000129  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00097121 -0.00235394 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00235148  0.00097236  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00012964  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000012  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000020  0.54776546 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000013
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.54774800  0.00000000  0.00000000 -0.40656359  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000086 -0.00000000  0.00000000 -0.00000993  0.00000000

   3    1  |1 1>+          0.00000018  0.00000000  0.00000000 -0.00000000  0.39058415  0.71310100  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.54841089  0.00000020 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.40488945
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.31494016  0.00000012 -0.00000000 -0.00000000  0.00000000  0.00000000  0.70503464
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

   6    1  |1 1>+         -0.00000000 -0.00000000  0.00000203 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00000000 -0.00000000 -0.00000000 -0.00000139  0.00000000  0.00000000 -0.00005499  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.00000022  0.00000000  0.00000000 -0.00000000  0.00005035  0.00000875  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000  0.00000181  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004385
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000079  0.00000000 -0.00000000 -0.00000000 -0.00002549  0.00004687  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000047  0.00000000 -0.00000000  0.00000513 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000084  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000000 -0.00041135  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>+          0.00462913  0.00000000 -0.00000000 -0.00000000  0.00095990 -0.00052551 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00041319  0.00000000  0.00000000 -0.00094792  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000

  16    1  |1 1>+         -0.00000000  0.00000073  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000003  0.00000000 -0.00000000 -0.00000000  0.81287498  0.01828557  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.54773305  0.00000020 -0.00000000 -0.00000000  0.00000000  0.00000000  0.40658876

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000020 -0.54773191  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000013

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001985  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00144004 -0.00000000 -0.00000000  0.81303343 -0.00000000

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000100 -0.00000000 -0.00000000  0.00000005 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.63241107  0.00000000  0.00000000 -0.00185203  0.00000000

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00004222 -0.00000094 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000099  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001013

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000099 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00004236  0.00000000

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000162 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000162 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00005347

  12    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000095  0.00000000  0.00000000 -0.00000000 -0.00000136  0.00006031  0.00000000 -0.00000000

  13    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00462918 -0.00000000  0.00000000  0.00000000  0.00002461 -0.00109415 -0.00000000  0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00041171  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00041170  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094946

  16    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000066  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.54776488 -0.00000020  0.00000000 -0.00000000  0.00000000  0.00000000  0.40656104

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000016 -0.00000000 -0.00000000 -0.00000000  0.42225346 -0.69481927 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000086 -0.00000000  0.00000000 -0.00000993  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.54774625 -0.00000000 -0.00000000  0.40656408 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000020  0.54697182 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000013

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000012 -0.31743385  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000022

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000202 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00004380

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000023  0.00000000  0.00000000  0.00000000 -0.00005070  0.00000648  0.00000000 -0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000138  0.00000000  0.00000000 -0.00005500  0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000182 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000046 -0.00000000  0.00000000 -0.00000514  0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000079  0.00000000  0.00000000  0.00000000 -0.00002337 -0.00004797 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000085  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003234

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00041134 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094629

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00041318 -0.00000000 -0.00000000  0.00094793 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00462912  0.00000000 -0.00000000  0.00000000  0.00093528  0.00056814  0.00000000 -0.00000000

  16    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000073 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000157 -0.00000000 -0.00000000  0.00000025
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000003  0.00000000 -0.00000289  0.00000000 -0.00000000 -0.00000171  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.09152135  0.00000273  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000180 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000042 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000706  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000 -0.00000000  0.00000030  0.00000000 -0.00000000  0.00000181  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000296 -0.00000000 -0.00000000  0.00000016
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00255097  0.00000031 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000180  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.40656013  0.73006971  0.00000002  0.00000009  0.00000000  0.00000000 -0.01619694 -0.00000000
                          -0.00000000 -0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.60146492  0.00000001  0.00000000  0.41415007
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000045

   3    1  |1 1>+         -0.00000000 -0.00000007 -0.00000001  0.57736004  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000012 -0.00000002  0.63065028  0.00000001 -0.00000000 -0.36905793 -0.00000002  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000022  0.00000001 -0.17314830 -0.00000000  0.00000000 -0.60791067 -0.00000003  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00004379  0.00009668  0.00000000  0.00000000  0.00000000  0.00000000 -0.00024367 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00012245  0.00000000  0.00000000  0.00005084
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00019647  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00020971  0.00000000 -0.00000000  0.00015705  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00017605  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00000000  0.00000000  0.00000000  0.00021586 -0.00000000  0.00000000 -0.00032836
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00003234  0.00008734  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00030968  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00094628  0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000190  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000020  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000013  0.00000000 -0.00000000  0.00000148
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+          0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000004  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000007  0.00000001 -0.57733302 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000013 -0.00000001  0.19823910  0.00000001 -0.00000001  0.70283537  0.00000004 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.40658830  0.19821731  0.00000000  0.00000003 -0.00000001 -0.00000004  0.70284267  0.00000001

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000003
                           0.00000001 -0.00000000  0.00000000 -0.00000000  0.57658489  0.00000000  0.00000001 -0.03057357

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000083
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.04206853  0.00000001 -0.00000001  0.77348740

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00026430  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00036625 -0.00000000  0.00000000  0.00012688  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001011  0.00036626  0.00000000  0.00000000  0.00000000  0.00000000 -0.00012686 -0.00000000

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00026361 -0.00000000 -0.00000000  0.00001480

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00005347 -0.00010297 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00010412 -0.00000000

  11    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00010301 -0.00000000  0.00000000 -0.00010410 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00094946  0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000115  0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000  0.00000116  0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004

   1    1  |1 1>-         -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000013 -0.00000002  0.73006914  0.00000001 -0.00000000 -0.01621992 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000007 -0.00000001  0.57735757  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000052
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.55137995 -0.00000000 -0.00000001  0.47881313

   4    1  |1 1>-          0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.40809471 -0.63144360 -0.00000002 -0.00000008 -0.00000000 -0.00000002  0.36626627  0.00000001

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.70318494 -0.17025540 -0.00000000 -0.00000002  0.00000000  0.00000003 -0.60958892 -0.00000001

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00009667  0.00000000  0.00000000 -0.00024369 -0.00000000  0.00000000

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00019650 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00011603  0.00000000  0.00000000 -0.00006418

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00004385 -0.00020971 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00015707 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00025121 -0.00000000  0.00000000 -0.00030217

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00017604  0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00008735 -0.00000000  0.00000000 -0.00030966 -0.00000000  0.00000000

  13    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000051 -0.00000000  0.00000000 -0.00000191 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000147

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000020 -0.00000000 -0.00000000  0.00000000  0.00000000

  16    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000001 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000007  0.99575666 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00680898  0.00000000
                          -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.99575692 -0.00000001  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000001  0.99575687  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00681064
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.02299404 -0.00000000 -0.00000000  0.00000001  0.99549412 -0.00049296  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.99549341  0.00000007  0.00000000 -0.00000000 -0.02299393  0.00679977 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00020261  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00020229 -0.00000000 -0.00000000  0.00000000  0.00000000  0.10443262 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000064  0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00020261  0.00000000  0.00000000 -0.00000000  0.00000000  0.10444453
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00006243  0.00000000  0.00000000 -0.00000000 -0.00019284 -0.04162395  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  11    1  |0 0>           0.00019227  0.00000000 -0.00000000  0.00000000  0.00006275 -0.09584039  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  12    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.03736707  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00033602
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.03736845  0.00000000  0.00000000 -0.00000000  0.00000000  0.00033771 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.03071793 -0.00000000 -0.00000000  0.00000000  0.06810139 -0.00033321  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.03721649 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.06480207  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00339969 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.48545833
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000  0.00428806 -0.00000000 -0.00000000  0.00000000  0.00000000  0.61222085 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000374  0.00000000

   8    1  |1 1>+          0.00382047  0.00000000  0.00000000 -0.00000000 -0.00105607 -0.55668781  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00339916  0.00000000  0.00000000  0.00000000 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00216723 -0.00000000  0.00000000 -0.00000000 -0.00347329  0.25985311  0.00000000 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000 -0.00030986  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04412203  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000027 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000 -0.00263276 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.37565626
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+          0.00000000 -0.00000000 -0.00461563 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00990280
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00485393  0.00000000 -0.00000000  0.00000000  0.00218802  0.00994908 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00461515 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00990648  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.07433684 -0.00000001 -0.00000000  0.00000000  0.00745387 -0.00067155  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.03736750  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.03736765  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00033806

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000001  0.07473091 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00067050  0.00000000

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00017036  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000153 -0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00338171 -0.00000000 -0.00000000  0.00000000  0.00033895  0.48521708 -0.00000000  0.00000000

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00077296 -0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00077244  0.00000000  0.00000000 -0.00000000  0.00000000  0.11017807

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000297 -0.00000000
                          -0.00000000  0.00339697 -0.00000000 -0.00000000  0.00000000  0.00000000  0.48510423 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00422957  0.00000000  0.00000000 -0.00000000  0.00000000  0.60364669

  11    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00422948  0.00000000  0.00000000  0.00000000 -0.00000001

  12    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00045613 -0.00000000  0.00000000 -0.00000000 -0.00454982  0.00289302  0.00000000 -0.00000001

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00053100  0.00000000 -0.00000000  0.00000000  0.00529583  0.00005111  0.00000000 -0.00000000

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00461525  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00989838

  15    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00461525  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.03736685  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.04362777 -0.00000000  0.00000000 -0.00000000 -0.06064712 -0.00033841 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.03736835 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00033773  0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.03751115  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00033754

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.06463243  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00058112

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00339960 -0.00000000 -0.00000000 -0.00000000  0.00000001

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00395396 -0.00000000 -0.00000000 -0.00000000 -0.00027698  0.55750893 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000374 -0.00000000
                          -0.00000000  0.00428807 -0.00000000 -0.00000000  0.00000000  0.00000000  0.61221718 -0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00339919 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.48531668

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000027 -0.00000000
                          -0.00000000  0.00031038 -0.00000000 -0.00000000  0.00000000  0.00000000  0.04419723 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00143494 -0.00000000 -0.00000000  0.00000000  0.00383442  0.25525050 -0.00000000  0.00000001

  12    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00263295  0.00000000  0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00461564  0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006 -0.00000000
                           0.00000000 -0.00461516  0.00000000  0.00000000 -0.00000000  0.00000000  0.00990655 -0.00000000

  15    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00432284  0.00000000  0.00000000 -0.00000000 -0.00310818  0.00989772 -0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000005

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00000000  0.00000016  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000037
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00681065 -0.00000000  0.00000000 -0.00000107  0.00000000  0.00000142  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000107 -0.00000000  0.00000000 -0.00000000  0.00000141  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00681011 -0.00000000 -0.00000000 -0.00000008 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00049383 -0.00000000 -0.00000000  0.00000073 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.10444491 -0.00000000  0.00000000 -0.00001589 -0.00000000  0.00005322  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000608
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00000000  0.00001527  0.00000000 -0.00000000  0.00000000 -0.00005323 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.09595176 -0.00000000  0.00000000 -0.00000407 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |0 0>          -0.00000000 -0.04167361  0.00000000  0.00000000 -0.00000840  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000 -0.00000179  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000 -0.00028059 -0.00000000 -0.00000000  0.00000000 -0.00017562 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00027376
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002

   3    1  |1 1>+          0.00000000  0.00058351  0.00000000  0.00000000 -0.00026411 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00033489 -0.00000000 -0.00000000  0.00032984  0.00000000  0.00002122  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00058265  0.00000000 -0.00000000  0.00008799  0.00000000 -0.00027461 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000001 -0.00000000  0.47601266  0.00000004  0.00000000  0.00000004 -0.32658993 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.27239096
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00002311

   8    1  |1 1>+          0.00000000  0.09794202 -0.00000000 -0.00000000  0.42969269  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.48531740 -0.00000000  0.00000002 -0.19464281  0.00000000 -0.54338229 -0.00000006 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000

  10    1  |1 1>+          0.00000000  0.52174185 -0.00000000 -0.00000000  0.38540157  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.47311171
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00004014

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.21592297 -0.00000002 -0.00000000 -0.00000008  0.67336489  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000000  0.00000076  0.00000000 -0.00000000  0.00000000 -0.00000151 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+          0.00000000  0.00569546  0.00000000 -0.00000000  0.00000364 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000647
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  16    1  |1 1>+         -0.00000005  0.00000000  0.00000000 -0.00000024  0.00000000  0.00000014  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000300 -0.00000000 -0.00000000  0.00026372  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00033805  0.00000000  0.00000000 -0.00010319 -0.00000000  0.00031616  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00010165  0.00000000  0.00000000  0.00000000 -0.00031667 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00026310

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001883

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00214894 -0.00000000 -0.00000000  0.57763307  0.00000000 -0.00000000 -0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.11024929  0.00000000 -0.00000007  0.82607898  0.00000000  0.21482346  0.00000002  0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.82712180  0.00000007  0.00000000 -0.00000002  0.21084102  0.00000000

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00004892
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.57670616

  10    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000001 -0.06113792 -0.00000001 -0.00000000  0.00000004 -0.31817620 -0.00000000

  11    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                           0.60363102 -0.00000000 -0.00000001  0.05968649 -0.00000000  0.31849519  0.00000004  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.65095475  0.00000000  0.00000000 -0.00001846  0.00000000  0.00000000  0.00000000

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.01147827  0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000  0.00000000

  14    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000286 -0.00000000 -0.00000000 -0.00000000  0.00000404  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00989855  0.00000000 -0.00000000  0.00000291 -0.00000000 -0.00000397 -0.00000000 -0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00033602  0.00000000 -0.00000000  0.00027973  0.00000000  0.00017698  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00058051  0.00000000  0.00000000 -0.00026410 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00025124

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00032954  0.00000000  0.00000000 -0.00000000  0.00002087  0.00000000

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00008816 -0.00000000  0.00000000 -0.00000000  0.00027494  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000000
                          -0.48544127  0.00000000  0.00000004 -0.47760712 -0.00000000  0.32430197  0.00000004  0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.09302844  0.00000000  0.00000000 -0.42973758 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002192
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.25838495

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                          -0.00000001 -0.00000000 -0.19728330 -0.00000002 -0.00000000  0.00000006 -0.54242833 -0.00000000

  10    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00004667
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.55010497

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.52402619 -0.00000000 -0.00000000  0.38535082  0.00000000 -0.00000000 -0.00000000

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                           0.37568154 -0.00000000  0.00000002 -0.21917220 -0.00000000  0.67229116  0.00000008  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00990308  0.00000000 -0.00000000  0.00000112  0.00000000 -0.00000125 -0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000680

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00578414 -0.00000000  0.00000000  0.00000358  0.00000000 -0.00000000  0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000  0.00000000 -0.00000014  0.00000000

 State Sym Spin     / Nr.     33          34          35          36          37          38          39          40

   1    1  |0 0>          -0.00000000 -0.00000051  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000002 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000155 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000036
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000121  0.00000000  0.00000000  0.00000000  0.00000058  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000692 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001838 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000070  0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00001484 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00001823  0.00000000  0.00000000  0.00000000  0.00001381
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000733  0.00000000  0.00000000  0.00000000  0.00003643  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000  0.00000354 -0.00000000  0.00000000  0.00000000  0.00008224  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>           0.00000000  0.00000575  0.00000000  0.00000000  0.00000000  0.00000020  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00000126  0.00000000 -0.00000000  0.00000000 -0.00000145
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00018866 -0.00000000 -0.00000095  0.00000000 -0.00000000  0.00000000  0.00000039  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000  0.00000099 -0.00000000 -0.00000000 -0.00000000 -0.00000077 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000113  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000043  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.62007992  0.00000006 -0.00000000  0.00000000  0.20959082
                           0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.11218101  0.00000000  0.69607161 -0.00000000  0.00000000 -0.00000000 -0.22285197 -0.00000000
                           0.00000225  0.00000000  0.00033062  0.00000000  0.00000000  0.00000000  0.00002210  0.00000000

   8    1  |1 1>+          0.00000000  0.69993713 -0.00000000 -0.00000000 -0.00000000  0.03505950 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.00000006  0.60467315 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.09643321  0.00000000  0.00000000 -0.00000000 -0.53736245  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+          0.72289365  0.00000000  0.12605030 -0.00000000  0.00000000 -0.00000000  0.48552300  0.00000000
                          -0.00001450  0.00000000  0.00005987  0.00000000  0.00000000  0.00000000 -0.00004814 -0.00000000

  12    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.02109377  0.00000000 -0.00000000 -0.00000000  0.59732772
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000066  0.00000000  0.00000000  0.00000000 -0.00001276
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+          0.00000000  0.00000825 -0.00000000 -0.00000000  0.00000000 -0.00000415  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  15    1  |1 1>+          0.00000094 -0.00000000 -0.00000856  0.00000000 -0.00000000 -0.00000000 -0.00000764 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000016  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000101  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000 -0.00000000 -0.00000000  0.00000101

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001379  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000186 -0.00000000

   5    1  |1 0>           0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00035048  0.00000000  0.00000123 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00287648  0.00000000  0.00000000  0.00000000  0.65436905 -0.00000000  0.00000000

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000005  0.48731363 -0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.48689309 -0.00000005  0.00000000 -0.00000000  0.14857516

   9    1  |1 0>          -0.00000064 -0.00000000  0.00000067 -0.00000000  0.00000000 -0.00000000  0.00006490  0.00000000
                          -0.03198141  0.00000000 -0.00140212 -0.00000000  0.00000000  0.00000000  0.65452590  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.11511611  0.00000001 -0.00000000 -0.00000000  0.71642999

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.11307725 -0.00000000  0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.05406820  0.00000000 -0.00000000  0.00000000  0.00757679 -0.00000000  0.00000000

  13    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000418 -0.00000000  0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000

  14    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000628 -0.00000000  0.00000000  0.00000000 -0.00001718

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000632  0.00000000  0.00000000 -0.00000000

  16    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000054  0.00000000  0.00000041 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000126 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000099  0.00000000  0.00000000 -0.00000000 -0.00000075  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00021778 -0.00000000 -0.00000096  0.00000000 -0.00000000 -0.00000000 -0.00000041 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000113 -0.00000000 -0.00000000  0.00000000 -0.00000165

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000041 -0.00000000  0.00000000 -0.00000000  0.00000144

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000006  0.61946265 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.69958927 -0.00000000 -0.00000000 -0.00000000 -0.04179819 -0.00000000 -0.00000000

   8    1  |1 1>-          0.00000284  0.00000000  0.00033017  0.00000000  0.00000000  0.00000000 -0.00002239  0.00000000
                           0.14152898 -0.00000000 -0.69512431  0.00000000 -0.00000000  0.00000000 -0.22577342 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.60393654 -0.00000006  0.00000000 -0.00000000  0.25283347

  10    1  |1 1>-          0.00001336 -0.00000000 -0.00006082 -0.00000000 -0.00000000  0.00000000 -0.00004809 -0.00000000
                           0.66617320  0.00000000  0.12804545  0.00000000  0.00000000 -0.00000000 -0.48500166 -0.00000000

  11    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.09182513 -0.00000000 -0.00000000 -0.00000000 -0.52915884 -0.00000000  0.00000000

  12    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.01937440  0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000087 -0.00000000  0.00000000  0.00000000

  14    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000002 -0.00000000 -0.00000862  0.00000000 -0.00000000 -0.00000000  0.00000762  0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000822  0.00000000  0.00000000 -0.00000000 -0.00000439 -0.00000000 -0.00000000

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000  0.00000000 -0.00000073

 State Sym Spin     / Nr.     41          42          43          44          45          46          47          48

   1    1  |0 0>           0.00000000 -0.00000172  0.00000240  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00787696
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00352808 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000037 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00352843 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00352842 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000093 -0.00348274 -0.00000000 -0.00000000  0.00000000 -0.00056260 -0.00000114
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000014 -0.00056257  0.00000000  0.00000000 -0.00000000  0.00348189 -0.00000023
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00001421  0.00000000  0.00000000 -0.00000001  0.00000001  0.90050790  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.90051131 -0.00000004  0.00000001 -0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00001115  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000004  0.90050844 -0.00000001 -0.00000001 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000124  0.79127603  0.00000001  0.00000000 -0.00000000  0.42975551  0.00024276
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  11    1  |0 0>          -0.00000000 -0.00000173 -0.42974054  0.00000001  0.00000000 -0.00000000  0.79132443 -0.00014333
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00001629 -0.00006220 -0.00000000  0.00000000  0.00000000  0.00000209  0.20320810
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00104660  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00000000  0.00104607 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000066  0.00171534  0.00000000  0.00000000 -0.00000000  0.00118996  0.00000028
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00000167 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00104243  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000143  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00181166 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00000000  0.04903293 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.06187338  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000077 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000000 -0.03350452 -0.00493802 -0.00000000 -0.00000000  0.00000000 -0.05695178 -0.00000862
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+         -0.25106336 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04904063 -0.00000000  0.00000000
                          -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 1>+          0.00000000 -0.45806600 -0.05493449  0.00000000 -0.00000000 -0.00000000  0.02159630  0.00000073
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000000  0.00445599 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000

  12    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.03800029 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  13    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.00000001  0.29915171 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000  0.00001875  0.19687294 -0.00000000 -0.00000000  0.00000000 -0.28372754  0.56534101
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.29913294  0.00000001 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000371 -0.00000000 -0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000073  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000047 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000001 -0.00017364  0.00000000  0.00000000 -0.00000000  0.00207907 -0.00000008

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000100  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00104623 -0.00000000  0.00000000

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00104622  0.00000000  0.00000000  0.00000000

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00208767  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000476 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00636199 -0.00408207  0.00000000  0.00000000 -0.00000000  0.04885380 -0.00000186

   7    1  |1 0>           0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.14723389 -0.00000000  0.00000000 -0.00000000  0.00000000  0.01113932  0.00000000 -0.00000000

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01113178  0.00000000  0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000061  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.04904902  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.06104479  0.00000000  0.00000000  0.00000000

  11    1  |1 0>          -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.71674859  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.06104369 -0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.75397204 -0.06568536 -0.00000000 -0.00000000  0.00000000 -0.00548722 -0.00004759

  13    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00002195  0.34446721  0.00000000  0.00000000 -0.00000000  0.02875126 -0.56519432

  14    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000001 -0.29911574  0.00000000  0.00000000  0.00000000

  15    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00001711 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.29911889 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000145 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00104660 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000068 -0.00188898  0.00000000 -0.00000000 -0.00000000  0.00088892 -0.00000036

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00104606  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00105065  0.00000000  0.00000000  0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00180688  0.00000000  0.00000000  0.00000000

   6    1  |1 1>-         -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.21137384 -0.00000000  0.00000000 -0.00000000  0.00000000  0.04903099  0.00000000 -0.00000000

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.03281157 -0.01432323  0.00000000  0.00000000 -0.00000000  0.05534002 -0.00001295

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000077  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.06187281  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.04904016 -0.00000000 -0.00000000 -0.00000000

  10    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00446305  0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.46846780  0.05058909  0.00000000  0.00000000 -0.00000000  0.03041664 -0.00000272

  12    1  |1 1>-          0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.59739596 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03800290 -0.00000000  0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00001271  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.29915004 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000371 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.29912829 -0.00000001  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00001845 -0.14707779 -0.00000000 -0.00000000  0.00000000 -0.31249726 -0.56532226

  16    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000051  0.00000000  0.00000000  0.00000000

 State Sym Spin     / Nr.     49          50          51          52          53          54          55          56

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000010
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00576690 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000

   3    1  |0 0>           0.00000013 -0.00000000  0.00000000  0.00576714  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000  0.00000014  0.00000000  0.00000000 -0.00576714  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00050610 -0.00573633
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00573953 -0.00050591
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00002912  0.00000000 -0.00000000  0.42210216  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000  0.00000480  0.00000000 -0.00000001 -0.42209795  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000685  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00003401  0.00000000 -0.00000000  0.42210110 -0.00000001  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.17417355 -0.38459087
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  11    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.38451807  0.17420090
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  12    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000074 -0.00000005
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000  0.00031947 -0.00000000  0.00000000 -0.00016114  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000  0.00031910  0.00000000 -0.00000000 -0.00016125  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000345 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00016300 -0.00027578
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00031954  0.00000000  0.00000000  0.00016083  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00018024  0.00000000  0.00000000 -0.00027915 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00000807 -0.00000000 -0.00000000  0.01542434 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00000000 -0.00000000  0.00000827 -0.00000000  0.00000000  0.01946000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000009  0.00000000 -0.00000000  0.00000032 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01774368  0.00283631
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00000391 -0.00000000 -0.00000000 -0.01542223 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00801773  0.01673115
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000000  0.00000000  0.00000120  0.00000000 -0.00000000 -0.00140094  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000

  12    1  |1 1>+         -0.00000000  0.00001111 -0.00000000 -0.00000000  0.01195595 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.70706918  0.00000000  0.00000001 -0.64060566  0.00000001 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.63646637  0.37695352
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  15    1  |1 1>+         -0.00000000 -0.00000000  0.70702090  0.00000000 -0.00000001 -0.64062201  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00764964 -0.00000000  0.00000000 -0.00001040  0.00000000 -0.00000000

  16    1  |1 1>+         -0.01143259 -0.00000000 -0.00000000 -0.00000198 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00031924  0.00000354

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00031940  0.00000000  0.00000000 -0.00016105 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00031940 -0.00000000  0.00000000 -0.00016105  0.00000000 -0.00000000 -0.00000000

   4    1  |1 0>           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000086 -0.00000000  0.00000000  0.00032055 -0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000402  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00037112 -0.00000000 -0.00000000 -0.00000073  0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01540123  0.00017163

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000182 -0.00000000 -0.00000000  0.00350362  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000209 -0.00000000  0.00000000 -0.00350141  0.00000000 -0.00000000 -0.00000000

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000025  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000037 -0.00000000  0.00000000  0.01541190 -0.00000000 -0.00000000

  10    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00001627  0.00000000  0.00000000 -0.01920147  0.00000000 -0.00000000 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00001591 -0.00000000  0.00000000 -0.01920115 -0.00000000 -0.00000000  0.00000000 -0.00000000

  12    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00023086  0.02071947

  13    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00822286  0.73963255

  14    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.70705172  0.00000000 -0.00000001  0.64064184 -0.00000001  0.00000000  0.00000000

  15    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.70705349 -0.00000000 -0.00000000  0.64063841  0.00000001  0.00000000 -0.00000000  0.00000000

  16    1  |1 0>          -0.00000000  0.00000000 -0.00012367  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.01143057  0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00031947 -0.00000000 -0.00000000 -0.00016115 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00015682  0.00027934

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000345 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00031909 -0.00000000  0.00000000  0.00016125 -0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00031874  0.00000000  0.00000000 -0.00016211  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00018170  0.00000000  0.00000000 -0.00027842  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000822 -0.00000000 -0.00000000  0.01542377  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01767520  0.00323205

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000 -0.00000032  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000880 -0.00000000  0.00000000  0.01945980 -0.00000000 -0.00000000

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000350  0.00000000 -0.00000000  0.01542245 -0.00000000  0.00000000  0.00000000

  10    1  |1 1>-          0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000098 -0.00000000  0.00000000  0.00140333 -0.00000000 -0.00000000

  11    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00838986 -0.01654863

  12    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00001122  0.00000000 -0.00000000 -0.01195678 -0.00000000 -0.00000000  0.00000000 -0.00000000

  13    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.70706741  0.00000000  0.00000000  0.64060840  0.00000001  0.00000000 -0.00000000  0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000  0.00764960 -0.00000000  0.00000000 -0.00001040  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.70701725 -0.00000000  0.00000001  0.64062821 -0.00000000 -0.00000000

  15    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.64468585 -0.36271023

  16    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.01143260  0.00000000  0.00000000 -0.00000191 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.     57          58          59          60

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00150237
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000001  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>          -0.00000000  0.00000002  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000 -0.00000003 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000001
                           0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.00000075  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000 -0.00000000  0.00000074 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000101
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  11    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000041
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |0 0>           0.00000000  0.00000000  0.00000000  0.97913556
                           0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00000000 -0.00000327  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000331  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000004
                           0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.00000000  0.00000327  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00000000  0.00000184  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00000000 -0.00000002 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.00000011 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.00000176
                           0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |1 1>+         -0.00000000  0.00000000 -0.00000000  0.00000556
                           0.00000000  0.00000000  0.00000000  0.00000000

  11    1  |1 1>+         -0.00000042 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

  12    1  |1 1>+          0.00000000 -0.00000000  0.00000044 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

  13    1  |1 1>+         -0.00000000  0.00000023 -0.00808554  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000

  14    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000 -0.11731784
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  15    1  |1 1>+          0.00808310  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

  16    1  |1 1>+         -0.00000006  0.99993465  0.00002899 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000322  0.00000000  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000322  0.00000000

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.00000000  0.00000000 -0.00000000

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000379 -0.00000000  0.00000000  0.00000000

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000004

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000015  0.00000000 -0.00000000

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000016 -0.00000000

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000035 -0.00000000

  11    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000035  0.00000000  0.00000000

  12    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000532

  13    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.11732195

  14    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000023 -0.00808260 -0.00000000

  15    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00808258 -0.00000023 -0.00000000

  16    1  |1 0>           0.00000031 -0.00000000 -0.00000000 -0.00000000
                           0.99993466  0.00000006 -0.00000001 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000327 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000004

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000331  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000326  0.00000000

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000186  0.00000000

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000001 -0.00000000 -0.00000000

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000175

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000012  0.00000000  0.00000000  0.00000000

   9    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000042 -0.00000000  0.00000000  0.00000000

  11    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000548

  12    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000044 -0.00000000 -0.00000000

  13    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00808555  0.00000023 -0.00000000

  14    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00808312  0.00000000 -0.00000000  0.00000000

  15    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.11731742

  16    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00002899  0.99993465 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

   Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                 (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
   1   1  -8132.65210633     -0.00000721       -1.58      0.00000000        0.00      0.0000
   2   1  -8132.60528794      0.04681118    10273.87      0.04681839    10275.45      1.2740
   3   1  -8132.60528794      0.04681118    10273.87      0.04681839    10275.45      1.2740
   4   1  -8132.60528791      0.04681121    10273.87      0.04681842    10275.46      1.2740
   5   1  -8132.60458156      0.04751756    10428.90      0.04752477    10430.48      1.2932
   6   1  -8132.60458149      0.04751763    10428.91      0.04752484    10430.50      1.2932
   7   1  -8132.60458141      0.04751771    10428.93      0.04752491    10430.51      1.2932
   8   1  -8132.60458139      0.04751773    10428.94      0.04752493    10430.52      1.2932
   9   1  -8132.60458139      0.04751773    10428.94      0.04752493    10430.52      1.2932
  10   1  -8132.60330047      0.04879865    10710.07      0.04880585    10711.65      1.3281
  11   1  -8132.60330047      0.04879865    10710.07      0.04880585    10711.65      1.3281
  12   1  -8132.60330047      0.04879865    10710.07      0.04880586    10711.65      1.3281
  13   1  -8132.60330043      0.04879869    10710.07      0.04880590    10711.66      1.3281
  14   1  -8132.60330041      0.04879871    10710.08      0.04880591    10711.66      1.3281
  15   1  -8132.60330041      0.04879871    10710.08      0.04880591    10711.66      1.3281
  16   1  -8132.60330040      0.04879872    10710.08      0.04880592    10711.66      1.3281
  17   1  -8132.59406608      0.05803304    12736.78      0.05804025    12738.36      1.5794
  18   1  -8132.59406608      0.05803304    12736.78      0.05804025    12738.36      1.5794
  19   1  -8132.59406607      0.05803305    12736.78      0.05804026    12738.36      1.5794
  20   1  -8132.59406604      0.05803308    12736.79      0.05804028    12738.37      1.5794
  21   1  -8132.59406602      0.05803311    12736.79      0.05804031    12738.38      1.5794
  22   1  -8132.54976646      0.10233266    22459.42      0.10233987    22461.01      2.7848
  23   1  -8132.54976629      0.10233283    22459.46      0.10234003    22461.04      2.7848
  24   1  -8132.54976594      0.10233318    22459.54      0.10234039    22461.12      2.7848
  25   1  -8132.54976593      0.10233319    22459.54      0.10234040    22461.12      2.7848
  26   1  -8132.54976589      0.10233323    22459.55      0.10234043    22461.13      2.7848
  27   1  -8132.54851630      0.10358282    22733.80      0.10359003    22735.38      2.8188
  28   1  -8132.54851630      0.10358282    22733.80      0.10359003    22735.38      2.8188
  29   1  -8132.54851610      0.10358302    22733.85      0.10359023    22735.43      2.8188
  30   1  -8132.54851571      0.10358341    22733.93      0.10359062    22735.51      2.8188
  31   1  -8132.54851571      0.10358341    22733.93      0.10359062    22735.51      2.8188
  32   1  -8132.54851562      0.10358350    22733.95      0.10359071    22735.53      2.8188
  33   1  -8132.54851548      0.10358365    22733.98      0.10359085    22735.56      2.8189
  34   1  -8132.54698880      0.10511032    23069.05      0.10511752    23070.63      2.8604
  35   1  -8132.54698880      0.10511032    23069.05      0.10511753    23070.63      2.8604
  36   1  -8132.54698871      0.10511041    23069.07      0.10511762    23070.65      2.8604
  37   1  -8132.54698870      0.10511042    23069.07      0.10511762    23070.65      2.8604
  38   1  -8132.54698835      0.10511077    23069.15      0.10511798    23070.73      2.8604
  39   1  -8132.54698822      0.10511090    23069.18      0.10511811    23070.76      2.8604
  40   1  -8132.54698797      0.10511115    23069.23      0.10511836    23070.81      2.8604
  41   1  -8132.54698796      0.10511116    23069.23      0.10511837    23070.81      2.8604
  42   1  -8132.54698785      0.10511127    23069.26      0.10511847    23070.84      2.8604
  43   1  -8132.54055843      0.11154069    24480.35      0.11154789    24481.93      3.0354
  44   1  -8132.54055838      0.11154074    24480.36      0.11154794    24481.94      3.0354
  45   1  -8132.54055836      0.11154076    24480.37      0.11154796    24481.95      3.0354
  46   1  -8132.54055836      0.11154076    24480.37      0.11154797    24481.95      3.0354
  47   1  -8132.54055832      0.11154080    24480.38      0.11154801    24481.96      3.0354
  48   1  -8132.54040388      0.11169524    24514.27      0.11170244    24515.85      3.0396
  49   1  -8132.53898880      0.11311032    24824.84      0.11311752    24826.43      3.0781
  50   1  -8132.53898879      0.11311033    24824.85      0.11311754    24826.43      3.0781
  51   1  -8132.53898870      0.11311042    24824.87      0.11311763    24826.45      3.0781
  52   1  -8132.53616213      0.11593699    25445.23      0.11594420    25446.81      3.1550
  53   1  -8132.53616212      0.11593700    25445.23      0.11594421    25446.81      3.1550
  54   1  -8132.53616207      0.11593705    25445.24      0.11594426    25446.82      3.1550
  55   1  -8132.53616195      0.11593717    25445.27      0.11594438    25446.85      3.1550
  56   1  -8132.53616165      0.11593748    25445.33      0.11594468    25446.92      3.1550
  57   1  -8132.53112785      0.12097127    26550.12      0.12097847    26551.71      3.2920
  58   1  -8132.53112785      0.12097127    26550.12      0.12097847    26551.71      3.2920
  59   1  -8132.53112785      0.12097127    26550.12      0.12097847    26551.71      3.2920
  60   1  -8132.53055960      0.12153952    26674.84      0.12154672    26676.42      3.3075

 E0 =  -8132.65209912 is the energy of the lowest zeroth-order state
 E1 =  -8132.65210633 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99996785 -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000024 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.09152384  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000224  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000199 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.09152086
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000000 -0.00000196 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000003
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00497083 -0.09135534 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.09136368 -0.00497022  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000128 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00255099
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000000  0.00254834 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000006 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000129  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00097121 -0.00235394 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00235148  0.00097236  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00012964  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000012  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000020  0.54776546 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000013
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.54774800  0.00000000  0.00000000 -0.40656359  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000086 -0.00000000  0.00000000 -0.00000993  0.00000000

 15  1     3    1  |1 1>+       0.00000018  0.00000000  0.00000000 -0.00000000  0.39058415  0.71310100  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.54841089  0.00000020 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.40488945
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.31494016  0.00000012 -0.00000000 -0.00000000  0.00000000  0.00000000  0.70503464
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000001

 18  1     6    1  |1 1>+      -0.00000000 -0.00000000  0.00000203 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+       0.00000000 -0.00000000 -0.00000000 -0.00000139  0.00000000  0.00000000 -0.00005499  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000022  0.00000000  0.00000000 -0.00000000  0.00005035  0.00000875  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000  0.00000181  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004385
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000079  0.00000000 -0.00000000 -0.00000000 -0.00002549  0.00004687  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000047  0.00000000 -0.00000000  0.00000513 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000084  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000000 -0.00041135  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00462913  0.00000000 -0.00000000 -0.00000000  0.00095990 -0.00052551 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00041319  0.00000000  0.00000000 -0.00094792  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000

 28  1    16    1  |1 1>+      -0.00000000  0.00000073  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000003  0.00000000 -0.00000000 -0.00000000  0.81287498  0.01828557  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.54773305  0.00000020 -0.00000000 -0.00000000  0.00000000  0.00000000  0.40658876

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000020 -0.54773191  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000013

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00001985  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00144004 -0.00000000 -0.00000000  0.81303343 -0.00000000

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000100 -0.00000000 -0.00000000  0.00000005 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.63241107  0.00000000  0.00000000 -0.00185203  0.00000000

 34  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00000000  0.00000000 -0.00000000 -0.00004222 -0.00000094 -0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000099  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00001013

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000099 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 37  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00004236  0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000162 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000162 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00005347

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000095  0.00000000  0.00000000 -0.00000000 -0.00000136  0.00006031  0.00000000 -0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00462918 -0.00000000  0.00000000  0.00000000  0.00002461 -0.00109415 -0.00000000  0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00041171  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00041170  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094946

 44  1    16    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000066  0.00000000  0.00000000 -0.00000000 -0.00000000

 45  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.54776488 -0.00000020  0.00000000 -0.00000000  0.00000000  0.00000000  0.40656104

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000016 -0.00000000 -0.00000000 -0.00000000  0.42225346 -0.69481927 -0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000086 -0.00000000  0.00000000 -0.00000993  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.54774625 -0.00000000 -0.00000000  0.40656408 -0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000020  0.54697182 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000013

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000012 -0.31743385  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000022

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000202 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00004380

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000023  0.00000000  0.00000000  0.00000000 -0.00005070  0.00000648  0.00000000 -0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000138  0.00000000  0.00000000 -0.00005500  0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000182 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000046 -0.00000000  0.00000000 -0.00000514  0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000079  0.00000000  0.00000000  0.00000000 -0.00002337 -0.00004797 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000085  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00003234

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00041134 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00094629

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00041318 -0.00000000 -0.00000000  0.00094793 -0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00462912  0.00000000 -0.00000000  0.00000000  0.00093528  0.00056814  0.00000000 -0.00000000

 60  1    16    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000073 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000157 -0.00000000 -0.00000000  0.00000025
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000003  0.00000000 -0.00000289  0.00000000 -0.00000000 -0.00000171  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.09152135  0.00000273  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000180 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000042 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000706  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.00000000  0.00000030  0.00000000 -0.00000000  0.00000181  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000296 -0.00000000 -0.00000000  0.00000016
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00255097  0.00000031 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000180  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000010  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+       0.40656013  0.73006971  0.00000002  0.00000009  0.00000000  0.00000000 -0.01619694 -0.00000000
                               -0.00000000 -0.00000001 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.60146492  0.00000001  0.00000000  0.41415007
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000 -0.00000000  0.00000045

 15  1     3    1  |1 1>+      -0.00000000 -0.00000007 -0.00000001  0.57736004  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+      -0.00000012 -0.00000002  0.63065028  0.00000001 -0.00000000 -0.36905793 -0.00000002  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00000022  0.00000001 -0.17314830 -0.00000000  0.00000000 -0.60791067 -0.00000003  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00004379  0.00009668  0.00000000  0.00000000  0.00000000  0.00000000 -0.00024367 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00012245  0.00000000  0.00000000  0.00005084
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00019647  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00020971  0.00000000 -0.00000000  0.00015705  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00017605  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00000000  0.00000000  0.00000000  0.00021586 -0.00000000  0.00000000 -0.00032836
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00003234  0.00008734  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00030968  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00094628  0.00000052  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000190  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000020  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000013  0.00000000 -0.00000000  0.00000148
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+       0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000  0.00000004  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000007  0.00000001 -0.57733302 -0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000013 -0.00000001  0.19823910  0.00000001 -0.00000001  0.70283537  0.00000004 -0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.40658830  0.19821731  0.00000000  0.00000003 -0.00000001 -0.00000004  0.70284267  0.00000001

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000003
                                0.00000001 -0.00000000  0.00000000 -0.00000000  0.57658489  0.00000000  0.00000001 -0.03057357

 33  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000083
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.04206853  0.00000001 -0.00000001  0.77348740

 34  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00026430  0.00000000 -0.00000000 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00036625 -0.00000000  0.00000000  0.00012688  0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001011  0.00036626  0.00000000  0.00000000  0.00000000  0.00000000 -0.00012686 -0.00000000

 37  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00026361 -0.00000000 -0.00000000  0.00001480

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00005347 -0.00010297 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00010412 -0.00000000

 39  1    11    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00010301 -0.00000000  0.00000000 -0.00010410 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00094946  0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000115  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000005  0.00000000 -0.00000000  0.00000116  0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000004

 45  1     1    1  |1 1>-      -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000013 -0.00000002  0.73006914  0.00000001 -0.00000000 -0.01621992 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000007 -0.00000001  0.57735757  0.00000000 -0.00000000 -0.00000000  0.00000000

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002  0.00000000  0.00000000 -0.00000052
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.55137995 -0.00000000 -0.00000001  0.47881313

 48  1     4    1  |1 1>-       0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.40809471 -0.63144360 -0.00000002 -0.00000008 -0.00000000 -0.00000002  0.36626627  0.00000001

 49  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.70318494 -0.17025540 -0.00000000 -0.00000002  0.00000000  0.00000003 -0.60958892 -0.00000001

 50  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00009667  0.00000000  0.00000000 -0.00024369 -0.00000000  0.00000000

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00019650 -0.00000000  0.00000000  0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00011603  0.00000000  0.00000000 -0.00006418

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00004385 -0.00020971 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00015707 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00025121 -0.00000000  0.00000000 -0.00030217

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00017604  0.00000000 -0.00000000 -0.00000000  0.00000000

 56  1    12    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00008735 -0.00000000  0.00000000 -0.00030966 -0.00000000  0.00000000

 57  1    13    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000051 -0.00000000  0.00000000 -0.00000191 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000004  0.00000000 -0.00000000  0.00000147

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000020 -0.00000000 -0.00000000  0.00000000  0.00000000

 60  1    16    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000004 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000001 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000007  0.99575666 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00680898  0.00000000
                               -0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004 -0.00000000

  3  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.99575692 -0.00000001  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000001  0.99575687  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00681064
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.02299404 -0.00000000 -0.00000000  0.00000001  0.99549412 -0.00049296  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.99549341  0.00000007  0.00000000 -0.00000000 -0.02299393  0.00679977 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00020261  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00020229 -0.00000000 -0.00000000  0.00000000  0.00000000  0.10443262 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000064  0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000  0.00020261  0.00000000  0.00000000 -0.00000000  0.00000000  0.10444453
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00006243  0.00000000  0.00000000 -0.00000000 -0.00019284 -0.04162395  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>        0.00019227  0.00000000 -0.00000000  0.00000000  0.00006275 -0.09584039  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.03736707  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00033602
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+       0.00000000 -0.03736845  0.00000000  0.00000000 -0.00000000  0.00000000  0.00033771 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.03071793 -0.00000000 -0.00000000  0.00000000  0.06810139 -0.00033321  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.03721649 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.06480207  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00339969 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.48545833
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000  0.00428806 -0.00000000 -0.00000000  0.00000000  0.00000000  0.61222085 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000374  0.00000000

 20  1     8    1  |1 1>+       0.00382047  0.00000000  0.00000000 -0.00000000 -0.00105607 -0.55668781  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00339916  0.00000000  0.00000000  0.00000000 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00216723 -0.00000000  0.00000000 -0.00000000 -0.00347329  0.25985311  0.00000000 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000 -0.00030986  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.04412203  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000027 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000 -0.00263276 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.37565626
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+       0.00000000 -0.00000000 -0.00461563 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00990280
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00485393  0.00000000 -0.00000000  0.00000000  0.00218802  0.00994908 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00461515 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00990648  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.07433684 -0.00000001 -0.00000000  0.00000000  0.00745387 -0.00067155  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.03736750  0.00000000 -0.00000000 -0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.03736765  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00033806

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000001  0.07473091 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00067050  0.00000000

 33  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00017036  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000153 -0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00338171 -0.00000000 -0.00000000  0.00000000  0.00033895  0.48521708 -0.00000000  0.00000000

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00077296 -0.00000000 -0.00000000 -0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00077244  0.00000000  0.00000000 -0.00000000  0.00000000  0.11017807

 37  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000297 -0.00000000
                               -0.00000000  0.00339697 -0.00000000 -0.00000000  0.00000000  0.00000000  0.48510423 -0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00422957  0.00000000  0.00000000 -0.00000000  0.00000000  0.60364669

 39  1    11    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00422948  0.00000000  0.00000000  0.00000000 -0.00000001

 40  1    12    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00045613 -0.00000000  0.00000000 -0.00000000 -0.00454982  0.00289302  0.00000000 -0.00000001

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00053100  0.00000000 -0.00000000  0.00000000  0.00529583  0.00005111  0.00000000 -0.00000000

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00461525  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00989838

 43  1    15    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00461525  0.00000000 -0.00000000 -0.00000000  0.00000000

 44  1    16    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.03736685  0.00000000 -0.00000000 -0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.04362777 -0.00000000  0.00000000 -0.00000000 -0.06064712 -0.00033841 -0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.03736835 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00033773  0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.03751115  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00033754

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.06463243  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00058112

 50  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00339960 -0.00000000 -0.00000000 -0.00000000  0.00000001

 51  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00395396 -0.00000000 -0.00000000 -0.00000000 -0.00027698  0.55750893 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000374 -0.00000000
                               -0.00000000  0.00428807 -0.00000000 -0.00000000  0.00000000  0.00000000  0.61221718 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00339919 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.48531668

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000027 -0.00000000
                               -0.00000000  0.00031038 -0.00000000 -0.00000000  0.00000000  0.00000000  0.04419723 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00143494 -0.00000000 -0.00000000  0.00000000  0.00383442  0.25525050 -0.00000000  0.00000001

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00263295  0.00000000  0.00000000  0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00461564  0.00000000 -0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000006 -0.00000000
                                0.00000000 -0.00461516  0.00000000  0.00000000 -0.00000000  0.00000000  0.00990655 -0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00432284  0.00000000  0.00000000 -0.00000000 -0.00310818  0.00989772 -0.00000000  0.00000000

 60  1    16    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000005


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00000000  0.00000016  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000037
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00681065 -0.00000000  0.00000000 -0.00000107  0.00000000  0.00000142  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000107 -0.00000000  0.00000000 -0.00000000  0.00000141  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00681011 -0.00000000 -0.00000000 -0.00000008 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00049383 -0.00000000 -0.00000000  0.00000073 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.10444491 -0.00000000  0.00000000 -0.00001589 -0.00000000  0.00005322  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000608
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00000000  0.00001527  0.00000000 -0.00000000  0.00000000 -0.00005323 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.09595176 -0.00000000  0.00000000 -0.00000407 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.04167361  0.00000000  0.00000000 -0.00000840  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000 -0.00000179  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000 -0.00000000 -0.00028059 -0.00000000 -0.00000000  0.00000000 -0.00017562 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00027376
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002

 15  1     3    1  |1 1>+       0.00000000  0.00058351  0.00000000  0.00000000 -0.00026411 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+       0.00033489 -0.00000000 -0.00000000  0.00032984  0.00000000  0.00002122  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+      -0.00058265  0.00000000 -0.00000000  0.00008799  0.00000000 -0.00027461 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000001 -0.00000000  0.47601266  0.00000004  0.00000000  0.00000004 -0.32658993 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.27239096
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00002311

 20  1     8    1  |1 1>+       0.00000000  0.09794202 -0.00000000 -0.00000000  0.42969269  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.48531740 -0.00000000  0.00000002 -0.19464281  0.00000000 -0.54338229 -0.00000006 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000

 22  1    10    1  |1 1>+       0.00000000  0.52174185 -0.00000000 -0.00000000  0.38540157  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 23  1    11    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.47311171
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00004014

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.21592297 -0.00000002 -0.00000000 -0.00000008  0.67336489  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000  0.00000076  0.00000000 -0.00000000  0.00000000 -0.00000151 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00569546  0.00000000 -0.00000000  0.00000364 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000647
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 28  1    16    1  |1 1>+      -0.00000005  0.00000000  0.00000000 -0.00000024  0.00000000  0.00000014  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000300 -0.00000000 -0.00000000  0.00026372  0.00000000 -0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00033805  0.00000000  0.00000000 -0.00010319 -0.00000000  0.00031616  0.00000000  0.00000000

 31  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00010165  0.00000000  0.00000000  0.00000000 -0.00031667 -0.00000000

 32  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00026310

 33  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00001883

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00214894 -0.00000000 -0.00000000  0.57763307  0.00000000 -0.00000000 -0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.11024929  0.00000000 -0.00000007  0.82607898  0.00000000  0.21482346  0.00000002  0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.82712180  0.00000007  0.00000000 -0.00000002  0.21084102  0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00004892
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.57670616

 38  1    10    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000001 -0.06113792 -0.00000001 -0.00000000  0.00000004 -0.31817620 -0.00000000

 39  1    11    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000
                                0.60363102 -0.00000000 -0.00000001  0.05968649 -0.00000000  0.31849519  0.00000004  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.65095475  0.00000000  0.00000000 -0.00001846  0.00000000  0.00000000  0.00000000

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.01147827  0.00000000  0.00000000  0.00000010  0.00000000 -0.00000000  0.00000000

 42  1    14    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000286 -0.00000000 -0.00000000 -0.00000000  0.00000404  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00989855  0.00000000 -0.00000000  0.00000291 -0.00000000 -0.00000397 -0.00000000 -0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00033602  0.00000000 -0.00000000  0.00027973  0.00000000  0.00017698  0.00000000  0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00058051  0.00000000  0.00000000 -0.00026410 -0.00000000  0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000002
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00025124

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00032954  0.00000000  0.00000000 -0.00000000  0.00002087  0.00000000

 49  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00008816 -0.00000000  0.00000000 -0.00000000  0.00027494  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000001  0.00000000  0.00000000
                               -0.48544127  0.00000000  0.00000004 -0.47760712 -0.00000000  0.32430197  0.00000004  0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.09302844  0.00000000  0.00000000 -0.42973758 -0.00000000  0.00000000  0.00000000

 52  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00002192
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.25838495

 53  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                               -0.00000001 -0.00000000 -0.19728330 -0.00000002 -0.00000000  0.00000006 -0.54242833 -0.00000000

 54  1    10    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00004667
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.55010497

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.52402619 -0.00000000 -0.00000000  0.38535082  0.00000000 -0.00000000 -0.00000000

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001  0.00000001  0.00000000
                                0.37568154 -0.00000000  0.00000002 -0.21917220 -0.00000000  0.67229116  0.00000008  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00990308  0.00000000 -0.00000000  0.00000112  0.00000000 -0.00000125 -0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000680

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00578414 -0.00000000  0.00000000  0.00000358  0.00000000 -0.00000000  0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000024  0.00000000 -0.00000000  0.00000000 -0.00000014  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37          38          39          40

  1  1     1    1  |0 0>       -0.00000000 -0.00000051  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000002 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000155 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000  0.00000000 -0.00000000 -0.00000036
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000121  0.00000000  0.00000000  0.00000000  0.00000058  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000009 -0.00000000  0.00000000  0.00000000 -0.00000692 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00001838 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000070  0.00000000  0.00000005 -0.00000000 -0.00000000  0.00000000  0.00001484 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00001823  0.00000000  0.00000000  0.00000000  0.00001381
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000733  0.00000000  0.00000000  0.00000000  0.00003643  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000354 -0.00000000  0.00000000  0.00000000  0.00008224  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000575  0.00000000  0.00000000  0.00000000  0.00000020  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00000126  0.00000000 -0.00000000  0.00000000 -0.00000145
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00018866 -0.00000000 -0.00000095  0.00000000 -0.00000000  0.00000000  0.00000039  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000  0.00000099 -0.00000000 -0.00000000 -0.00000000 -0.00000077 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000113  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000043  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     6    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.62007992  0.00000006 -0.00000000  0.00000000  0.20959082
                                0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.11218101  0.00000000  0.69607161 -0.00000000  0.00000000 -0.00000000 -0.22285197 -0.00000000
                                0.00000225  0.00000000  0.00033062  0.00000000  0.00000000  0.00000000  0.00002210  0.00000000

 20  1     8    1  |1 1>+       0.00000000  0.69993713 -0.00000000 -0.00000000 -0.00000000  0.03505950 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.00000006  0.60467315 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.09643321  0.00000000  0.00000000 -0.00000000 -0.53736245  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+       0.72289365  0.00000000  0.12605030 -0.00000000  0.00000000 -0.00000000  0.48552300  0.00000000
                               -0.00001450  0.00000000  0.00005987  0.00000000  0.00000000  0.00000000 -0.00004814 -0.00000000

 24  1    12    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.02109377  0.00000000 -0.00000000 -0.00000000  0.59732772
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000066  0.00000000  0.00000000  0.00000000 -0.00001276
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+       0.00000000  0.00000825 -0.00000000 -0.00000000  0.00000000 -0.00000415  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+       0.00000094 -0.00000000 -0.00000856  0.00000000 -0.00000000 -0.00000000 -0.00000764 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000016  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000101  0.00000000  0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000016 -0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000015  0.00000000 -0.00000000 -0.00000000  0.00000101

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001379  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000186 -0.00000000

 33  1     5    1  |1 0>        0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00035048  0.00000000  0.00000123 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00287648  0.00000000  0.00000000  0.00000000  0.65436905 -0.00000000  0.00000000

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000005  0.48731363 -0.00000000 -0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.48689309 -0.00000005  0.00000000 -0.00000000  0.14857516

 37  1     9    1  |1 0>       -0.00000064 -0.00000000  0.00000067 -0.00000000  0.00000000 -0.00000000  0.00006490  0.00000000
                               -0.03198141  0.00000000 -0.00140212 -0.00000000  0.00000000  0.00000000  0.65452590  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.11511611  0.00000001 -0.00000000 -0.00000000  0.71642999

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000001  0.11307725 -0.00000000  0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.05406820  0.00000000 -0.00000000  0.00000000  0.00757679 -0.00000000  0.00000000

 41  1    13    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000418 -0.00000000  0.00000000 -0.00000000 -0.00000021  0.00000000 -0.00000000

 42  1    14    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000628 -0.00000000  0.00000000  0.00000000 -0.00001718

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000632  0.00000000  0.00000000 -0.00000000

 44  1    16    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000054  0.00000000  0.00000041 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000126 -0.00000000 -0.00000000 -0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000099  0.00000000  0.00000000 -0.00000000 -0.00000075  0.00000000  0.00000000

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00021778 -0.00000000 -0.00000096  0.00000000 -0.00000000 -0.00000000 -0.00000041 -0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000113 -0.00000000 -0.00000000  0.00000000 -0.00000165

 49  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000041 -0.00000000  0.00000000 -0.00000000  0.00000144

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000006  0.61946265 -0.00000000  0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.69958927 -0.00000000 -0.00000000 -0.00000000 -0.04179819 -0.00000000 -0.00000000

 52  1     8    1  |1 1>-       0.00000284  0.00000000  0.00033017  0.00000000  0.00000000  0.00000000 -0.00002239  0.00000000
                                0.14152898 -0.00000000 -0.69512431  0.00000000 -0.00000000  0.00000000 -0.22577342 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.60393654 -0.00000006  0.00000000 -0.00000000  0.25283347

 54  1    10    1  |1 1>-       0.00001336 -0.00000000 -0.00006082 -0.00000000 -0.00000000  0.00000000 -0.00004809 -0.00000000
                                0.66617320  0.00000000  0.12804545  0.00000000  0.00000000 -0.00000000 -0.48500166 -0.00000000

 55  1    11    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.09182513 -0.00000000 -0.00000000 -0.00000000 -0.52915884 -0.00000000  0.00000000

 56  1    12    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.01937440  0.00000000 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000087 -0.00000000  0.00000000  0.00000000

 58  1    14    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000002 -0.00000000 -0.00000862  0.00000000 -0.00000000 -0.00000000  0.00000762  0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000822  0.00000000  0.00000000 -0.00000000 -0.00000439 -0.00000000 -0.00000000

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000016 -0.00000000 -0.00000000  0.00000000 -0.00000073


   Total
 Nr Sym  State Sym Spin / Nr.       41          42          43          44          45          46          47          48

  1  1     1    1  |0 0>        0.00000000 -0.00000172  0.00000240  0.00000000 -0.00000000 -0.00000000 -0.00000008 -0.00787696
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00352808 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000004  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000037 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00352843 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00352842 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000093 -0.00348274 -0.00000000 -0.00000000  0.00000000 -0.00056260 -0.00000114
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000014 -0.00056257  0.00000000  0.00000000 -0.00000000  0.00348189 -0.00000023
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00001421  0.00000000  0.00000000 -0.00000001  0.00000001  0.90050790  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.90051131 -0.00000004  0.00000001 -0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00001115  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000004  0.90050844 -0.00000001 -0.00000001 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000124  0.79127603  0.00000001  0.00000000 -0.00000000  0.42975551  0.00024276
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1    11    1  |0 0>       -0.00000000 -0.00000173 -0.42974054  0.00000001  0.00000000 -0.00000000  0.79132443 -0.00014333
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00001629 -0.00006220 -0.00000000  0.00000000  0.00000000  0.00000209  0.20320810
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00104660  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00000000  0.00104607 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000 -0.00000066  0.00171534  0.00000000  0.00000000 -0.00000000  0.00118996  0.00000028
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00000167 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00104243  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     5    1  |1 1>+       0.00000143  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00181166 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00000000  0.04903293 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     7    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.06187338  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000077 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     8    1  |1 1>+       0.00000000 -0.03350452 -0.00493802 -0.00000000 -0.00000000  0.00000000 -0.05695178 -0.00000862
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 21  1     9    1  |1 1>+      -0.25106336 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.04904063 -0.00000000  0.00000000
                               -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 22  1    10    1  |1 1>+       0.00000000 -0.45806600 -0.05493449  0.00000000 -0.00000000 -0.00000000  0.02159630  0.00000073
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000000  0.00445599 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000

 24  1    12    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.03800029 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 25  1    13    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.00000001  0.29915171 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000  0.00001875  0.19687294 -0.00000000 -0.00000000  0.00000000 -0.28372754  0.56534101
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.29913294  0.00000001 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000371 -0.00000000 -0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000073  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000047 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000001 -0.00017364  0.00000000  0.00000000 -0.00000000  0.00207907 -0.00000008

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000100  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00104623 -0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00104622  0.00000000  0.00000000  0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00208767  0.00000000 -0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000476 -0.00000000  0.00000000 -0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00636199 -0.00408207  0.00000000  0.00000000 -0.00000000  0.04885380 -0.00000186

 35  1     7    1  |1 0>        0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.14723389 -0.00000000  0.00000000 -0.00000000  0.00000000  0.01113932  0.00000000 -0.00000000

 36  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01113178  0.00000000  0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000061  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.04904902  0.00000000 -0.00000000  0.00000000 -0.00000000

 38  1    10    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.06104479  0.00000000  0.00000000  0.00000000

 39  1    11    1  |1 0>       -0.00000003 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.71674859  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.06104369 -0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.75397204 -0.06568536 -0.00000000 -0.00000000  0.00000000 -0.00548722 -0.00004759

 41  1    13    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00002195  0.34446721  0.00000000  0.00000000 -0.00000000  0.02875126 -0.56519432

 42  1    14    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000001 -0.29911574  0.00000000  0.00000000  0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00001711 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.29911889 -0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000145 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00104660 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000068 -0.00188898  0.00000000 -0.00000000 -0.00000000  0.00088892 -0.00000036

 47  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00104606  0.00000000 -0.00000000  0.00000000 -0.00000000

 48  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00105065  0.00000000  0.00000000  0.00000000

 49  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00180688  0.00000000  0.00000000  0.00000000

 50  1     6    1  |1 1>-      -0.00000001 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.21137384 -0.00000000  0.00000000 -0.00000000  0.00000000  0.04903099  0.00000000 -0.00000000

 51  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.03281157 -0.01432323  0.00000000  0.00000000 -0.00000000  0.05534002 -0.00001295

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000077  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.06187281  0.00000000 -0.00000000  0.00000000 -0.00000000

 53  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.04904016 -0.00000000 -0.00000000 -0.00000000

 54  1    10    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00446305  0.00000000 -0.00000000  0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.46846780  0.05058909  0.00000000  0.00000000 -0.00000000  0.03041664 -0.00000272

 56  1    12    1  |1 1>-       0.00000003  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.59739596 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.03800290 -0.00000000  0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00001271  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.29915004 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000371 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.29912829 -0.00000001  0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00001845 -0.14707779 -0.00000000 -0.00000000  0.00000000 -0.31249726 -0.56532226

 60  1    16    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000051  0.00000000  0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       49          50          51          52          53          54          55          56

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000002 -0.00000010
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.00576690 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000009 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000013 -0.00000000  0.00000000  0.00576714  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000014  0.00000000  0.00000000 -0.00576714  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00050610 -0.00573633
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00573953 -0.00050591
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00002912  0.00000000 -0.00000000  0.42210216  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000  0.00000480  0.00000000 -0.00000001 -0.42209795  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000005 -0.00000000  0.00000000 -0.00000685  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00003401  0.00000000 -0.00000000  0.42210110 -0.00000001  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.17417355 -0.38459087
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1    11    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.38451807  0.17420090
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1    12    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000074 -0.00000005
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00031947 -0.00000000  0.00000000 -0.00016114  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     2    1  |1 1>+      -0.00000000 -0.00000000  0.00031910  0.00000000 -0.00000000 -0.00016125  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000345 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00016300 -0.00027578
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     4    1  |1 1>+       0.00031954  0.00000000  0.00000000  0.00016083  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+       0.00018024  0.00000000  0.00000000 -0.00027915 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000807 -0.00000000 -0.00000000  0.01542434 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     7    1  |1 1>+      -0.00000000 -0.00000000  0.00000827 -0.00000000  0.00000000  0.01946000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000009  0.00000000 -0.00000000  0.00000032 -0.00000000  0.00000000

 20  1     8    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.01774368  0.00283631
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000391 -0.00000000 -0.00000000 -0.01542223 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00801773  0.01673115
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000000  0.00000000  0.00000120  0.00000000 -0.00000000 -0.00140094  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000

 24  1    12    1  |1 1>+      -0.00000000  0.00001111 -0.00000000 -0.00000000  0.01195595 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.70706918  0.00000000  0.00000001 -0.64060566  0.00000001 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.63646637  0.37695352
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 27  1    15    1  |1 1>+      -0.00000000 -0.00000000  0.70702090  0.00000000 -0.00000001 -0.64062201  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00764964 -0.00000000  0.00000000 -0.00001040  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.01143259 -0.00000000 -0.00000000 -0.00000198 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 29  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00031924  0.00000354

 30  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00031940  0.00000000  0.00000000 -0.00016105 -0.00000000 -0.00000000  0.00000000 -0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00031940 -0.00000000  0.00000000 -0.00016105  0.00000000 -0.00000000 -0.00000000

 32  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000086 -0.00000000  0.00000000  0.00032055 -0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000402  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00037112 -0.00000000 -0.00000000 -0.00000073  0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01540123  0.00017163

 35  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000182 -0.00000000 -0.00000000  0.00350362  0.00000000  0.00000000 -0.00000000  0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000209 -0.00000000  0.00000000 -0.00350141  0.00000000 -0.00000000 -0.00000000

 37  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000025  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000037 -0.00000000  0.00000000  0.01541190 -0.00000000 -0.00000000

 38  1    10    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00001627  0.00000000  0.00000000 -0.01920147  0.00000000 -0.00000000 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00001591 -0.00000000  0.00000000 -0.01920115 -0.00000000 -0.00000000  0.00000000 -0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00023086  0.02071947

 41  1    13    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00822286  0.73963255

 42  1    14    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.70705172  0.00000000 -0.00000001  0.64064184 -0.00000001  0.00000000  0.00000000

 43  1    15    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.70705349 -0.00000000 -0.00000000  0.64063841  0.00000001  0.00000000 -0.00000000  0.00000000

 44  1    16    1  |1 0>       -0.00000000  0.00000000 -0.00012367  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.01143057  0.00000000  0.00000000 -0.00000007  0.00000000  0.00000000

 45  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00031947 -0.00000000 -0.00000000 -0.00016115 -0.00000000 -0.00000000  0.00000000 -0.00000000

 46  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00015682  0.00027934

 47  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000345 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00031909 -0.00000000  0.00000000  0.00016125 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00031874  0.00000000  0.00000000 -0.00016211  0.00000000 -0.00000000 -0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00018170  0.00000000  0.00000000 -0.00027842  0.00000000 -0.00000000 -0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000822 -0.00000000 -0.00000000  0.01542377  0.00000000  0.00000000 -0.00000000  0.00000000

 51  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.01767520  0.00323205

 52  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000010 -0.00000000  0.00000000 -0.00000032  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000880 -0.00000000  0.00000000  0.01945980 -0.00000000 -0.00000000

 53  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000350  0.00000000 -0.00000000  0.01542245 -0.00000000  0.00000000  0.00000000

 54  1    10    1  |1 1>-       0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000098 -0.00000000  0.00000000  0.00140333 -0.00000000 -0.00000000

 55  1    11    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00838986 -0.01654863

 56  1    12    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00001122  0.00000000 -0.00000000 -0.01195678 -0.00000000 -0.00000000  0.00000000 -0.00000000

 57  1    13    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.70706741  0.00000000  0.00000000  0.64060840  0.00000001  0.00000000 -0.00000000  0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000  0.00764960 -0.00000000  0.00000000 -0.00001040  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.70701725 -0.00000000  0.00000001  0.64062821 -0.00000000 -0.00000000

 59  1    15    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.64468585 -0.36271023

 60  1    16    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.01143260  0.00000000  0.00000000 -0.00000191 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       57          58          59          60

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00150237
                               -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000001  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000  0.00000002  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000 -0.00000003 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000001
                                0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.00000075  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00000000  0.00000074 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000101
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1    11    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000041
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1    12    1  |0 0>        0.00000000  0.00000000  0.00000000  0.97913556
                                0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     1    1  |1 1>+      -0.00000000  0.00000000 -0.00000327  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     2    1  |1 1>+       0.00000331  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     3    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000004
                                0.00000000  0.00000000  0.00000000  0.00000000

 16  1     4    1  |1 1>+      -0.00000000  0.00000327  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     5    1  |1 1>+      -0.00000000  0.00000184  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     6    1  |1 1>+       0.00000000  0.00000000 -0.00000002 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     7    1  |1 1>+      -0.00000011 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     8    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.00000176
                                0.00000000  0.00000000  0.00000000  0.00000000

 21  1     9    1  |1 1>+       0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000

 22  1    10    1  |1 1>+      -0.00000000  0.00000000 -0.00000000  0.00000556
                                0.00000000  0.00000000  0.00000000  0.00000000

 23  1    11    1  |1 1>+      -0.00000042 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

 24  1    12    1  |1 1>+       0.00000000 -0.00000000  0.00000044 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

 25  1    13    1  |1 1>+      -0.00000000  0.00000023 -0.00808554  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000

 26  1    14    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000 -0.11731784
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 27  1    15    1  |1 1>+       0.00808310  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 28  1    16    1  |1 1>+      -0.00000006  0.99993465  0.00002899 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000

 29  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000

 30  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000322  0.00000000  0.00000000

 31  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000322  0.00000000

 32  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.00000000  0.00000000 -0.00000000

 33  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000379 -0.00000000  0.00000000  0.00000000

 34  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000004

 35  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000015  0.00000000 -0.00000000

 36  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000016 -0.00000000

 37  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000

 38  1    10    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000035 -0.00000000

 39  1    11    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000035  0.00000000  0.00000000

 40  1    12    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000532

 41  1    13    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.11732195

 42  1    14    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000023 -0.00808260 -0.00000000

 43  1    15    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00808258 -0.00000023 -0.00000000

 44  1    16    1  |1 0>        0.00000031 -0.00000000 -0.00000000 -0.00000000
                                0.99993466  0.00000006 -0.00000001 -0.00000000

 45  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000327 -0.00000000  0.00000000

 46  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000004

 47  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000331  0.00000000 -0.00000000 -0.00000000

 48  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000326  0.00000000

 49  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000186  0.00000000

 50  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000001 -0.00000000 -0.00000000

 51  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000175

 52  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000012  0.00000000  0.00000000  0.00000000

 53  1     9    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000

 54  1    10    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000042 -0.00000000  0.00000000  0.00000000

 55  1    11    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000548

 56  1    12    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000044 -0.00000000 -0.00000000

 57  1    13    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00808555  0.00000023 -0.00000000

 58  1    14    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00808312  0.00000000 -0.00000000  0.00000000

 59  1    15    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.11731742

 60  1    16    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00002899  0.99993465 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.99%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.84%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.84%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.83%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.83%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.53%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   15.26%   50.85%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%   30.08%    0.00%    0.00%    0.00%    0.00%    0.00%   16.39%
 17  1     5    1  |1 1>+         0.00%    9.92%    0.00%    0.00%    0.00%    0.00%    0.00%   49.71%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%   66.08%    0.03%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.53%
 31  1     3    1  |1 0>          0.00%    0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   66.10%    0.00%
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
 45  1     1    1  |1 1>-         0.00%   30.00%    0.00%    0.00%    0.00%    0.00%    0.00%   16.53%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   17.83%   48.28%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%   30.00%    0.00%    0.00%   16.53%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%   29.92%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%   10.08%    0.00%    0.00%    0.00%    0.00%    0.00%
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
  4  1     4    1  |0 0>          0.84%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+        16.53%   53.30%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   36.18%    0.00%    0.00%   17.15%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%   39.77%    0.00%    0.00%   13.62%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    3.00%    0.00%    0.00%   36.96%    0.00%    0.00%
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
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    3.93%    0.00%    0.00%   49.40%    0.00%    0.00%
 31  1     3    1  |1 0>         16.53%    3.93%    0.00%    0.00%    0.00%    0.00%   49.40%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.25%    0.00%    0.00%    0.09%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%   59.83%
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
 45  1     1    1  |1 1>-         0.00%    0.00%   53.30%    0.00%    0.00%    0.03%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%   33.33%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   30.40%    0.00%    0.00%   22.93%
 48  1     4    1  |1 1>-        16.65%   39.87%    0.00%    0.00%    0.00%    0.00%   13.42%    0.00%
 49  1     5    1  |1 1>-        49.45%    2.90%    0.00%    0.00%    0.00%    0.00%   37.16%    0.00%
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
  2  1     2    1  |0 0>          0.00%   99.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%   99.15%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%   99.15%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.05%    0.00%    0.00%    0.00%   99.10%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>         99.10%    0.00%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.09%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.09%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.92%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.09%    0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.42%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.57%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.48%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   30.99%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    6.75%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.19%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.11%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.55%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.56%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.54%    0.00%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.21%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.53%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   36.44%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.19%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.14%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.42%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%   31.08%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   37.48%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   23.55%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.20%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    6.52%    0.00%    0.00%
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
  7  1     7    1  |0 0>          1.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.92%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1    11    1  |0 0>          0.00%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%   22.66%    0.00%    0.00%    0.00%   10.67%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    7.42%
 20  1     8    1  |1 1>+         0.00%    0.96%    0.00%    0.00%   18.46%    0.00%    0.00%    0.00%
 21  1     9    1  |1 1>+        23.55%    0.00%    0.00%    3.79%    0.00%   29.53%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%   27.22%    0.00%    0.00%   14.85%    0.00%    0.00%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   22.38%
 24  1    12    1  |1 1>+         0.00%    0.00%    4.66%    0.00%    0.00%    0.00%   45.34%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.37%    0.00%    0.00%    0.00%
 35  1     7    1  |1 0>          1.22%    0.00%    0.00%   68.24%    0.00%    4.61%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%   68.41%    0.00%    0.00%    0.00%    4.45%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.26%
 38  1    10    1  |1 0>          0.00%    0.00%    0.37%    0.00%    0.00%    0.00%   10.12%    0.00%
 39  1    11    1  |1 0>         36.44%    0.00%    0.00%    0.36%    0.00%   10.14%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   42.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-        23.57%    0.00%    0.00%   22.81%    0.00%   10.52%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.87%    0.00%    0.00%   18.47%    0.00%    0.00%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    6.68%
 53  1     9    1  |1 1>-         0.00%    0.00%    3.89%    0.00%    0.00%    0.00%   29.42%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.26%
 55  1    11    1  |1 1>-         0.00%   27.46%    0.00%    0.00%   14.85%    0.00%    0.00%    0.00%
 56  1    12    1  |1 1>-        14.11%    0.00%    0.00%    4.80%    0.00%   45.20%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%   38.45%    0.00%    0.00%    0.00%    4.39%
 19  1     7    1  |1 1>+         1.26%    0.00%   48.45%    0.00%    0.00%    0.00%    4.97%    0.00%
 20  1     8    1  |1 1>+         0.00%   48.99%    0.00%    0.00%    0.00%    0.12%    0.00%    0.00%
 21  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   36.56%    0.00%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%    0.93%    0.00%    0.00%    0.00%   28.88%    0.00%    0.00%
 23  1    11    1  |1 1>+        52.26%    0.00%    1.59%    0.00%    0.00%    0.00%   23.57%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%   35.68%
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
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%   23.75%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%   23.71%    0.00%    0.00%    0.00%    2.21%
 37  1     9    1  |1 0>          0.10%    0.00%    0.00%    0.00%    0.00%    0.00%   42.84%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    1.33%    0.00%    0.00%    0.00%   51.33%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.28%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.29%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   38.37%    0.00%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%   48.94%    0.00%    0.00%    0.00%    0.17%    0.00%    0.00%
 52  1     8    1  |1 1>-         2.00%    0.00%   48.32%    0.00%    0.00%    0.00%    5.10%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%   36.47%    0.00%    0.00%    0.00%    6.39%
 54  1    10    1  |1 1>-        44.38%    0.00%    1.64%    0.00%    0.00%    0.00%   23.52%    0.00%
 55  1    11    1  |1 1>-         0.00%    0.84%    0.00%    0.00%    0.00%   28.00%    0.00%    0.00%
 56  1    12    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
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
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   81.09%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%   81.09%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   81.09%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%   62.61%    0.00%    0.00%    0.00%   18.47%    0.00%
 11  1    11    1  |0 0>          0.00%    0.00%   18.47%    0.00%    0.00%    0.00%   62.62%    0.00%
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    4.13%
 13  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%
 19  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.38%    0.00%    0.00%    0.00%    0.00%
 20  1     8    1  |1 1>+         0.00%    0.11%    0.00%    0.00%    0.00%    0.00%    0.32%    0.00%
 21  1     9    1  |1 1>+         6.30%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%
 22  1    10    1  |1 1>+         0.00%   20.98%    0.30%    0.00%    0.00%    0.00%    0.05%    0.00%
 23  1    11    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1    12    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%    0.00%
 25  1    13    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    8.95%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    3.88%    0.00%    0.00%    0.00%    8.05%   31.96%
 27  1    15    1  |1 1>+         0.00%    0.00%    0.00%    8.95%    0.00%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%
 35  1     7    1  |1 0>          2.17%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>         51.37%    0.00%    0.00%    0.00%    0.00%    0.37%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%   56.85%    0.43%    0.00%    0.00%    0.00%    0.00%    0.00%
 41  1    13    1  |1 0>          0.00%    0.00%   11.87%    0.00%    0.00%    0.00%    0.08%   31.94%
 42  1    14    1  |1 0>          0.00%    0.00%    0.00%    0.00%    8.95%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    8.95%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 45  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 46  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 47  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 48  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 49  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 50  1     6    1  |1 1>-         4.47%    0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%
 51  1     7    1  |1 1>-         0.00%    0.11%    0.02%    0.00%    0.00%    0.00%    0.31%    0.00%
 52  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.38%    0.00%    0.00%    0.00%    0.00%
 53  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.24%    0.00%    0.00%    0.00%
 54  1    10    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 55  1    11    1  |1 1>-         0.00%   21.95%    0.26%    0.00%    0.00%    0.00%    0.09%    0.00%
 56  1    12    1  |1 1>-        35.69%    0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%
 57  1    13    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    8.95%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%    0.00%    8.95%    0.00%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    2.16%    0.00%    0.00%    0.00%    9.77%   31.96%
 60  1    16    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     49       50       51       52       53       54       55       56

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   17.82%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   17.82%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%   17.82%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.03%   14.79%
 11  1    11    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   14.79%    3.03%
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
 25  1    13    1  |1 1>+         0.00%   49.99%    0.00%    0.00%   41.04%    0.00%    0.00%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   40.51%   14.21%
 27  1    15    1  |1 1>+         0.00%    0.00%   49.99%    0.00%    0.00%   41.04%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%
 35  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%
 38  1    10    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%
 39  1    11    1  |1 0>          0.00%    0.00%    0.00%    0.04%    0.00%    0.00%    0.00%    0.00%
 40  1    12    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%   54.71%
 42  1    14    1  |1 0>          0.00%   49.99%    0.00%    0.00%   41.04%    0.00%    0.00%    0.00%
 43  1    15    1  |1 0>         49.99%    0.00%    0.00%   41.04%    0.00%    0.00%    0.00%    0.00%
 44  1    16    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 57  1    13    1  |1 1>-        49.99%    0.00%    0.00%   41.04%    0.00%    0.00%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.00%    0.00%   49.99%    0.00%    0.00%   41.04%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   41.56%   13.16%
 60  1    16    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

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
 12  1    12    1  |0 0>          0.00%    0.00%    0.00%   95.87%
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
 25  1    13    1  |1 1>+         0.00%    0.00%    0.01%    0.00%
 26  1    14    1  |1 1>+         0.00%    0.00%    0.00%    1.38%
 27  1    15    1  |1 1>+         0.01%    0.00%    0.00%    0.00%
 28  1    16    1  |1 1>+         0.00%   99.99%    0.00%    0.00%
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
 41  1    13    1  |1 0>          0.00%    0.00%    0.00%    1.38%
 42  1    14    1  |1 0>          0.00%    0.00%    0.01%    0.00%
 43  1    15    1  |1 0>          0.00%    0.01%    0.00%    0.00%
 44  1    16    1  |1 0>         99.99%    0.00%    0.00%    0.00%
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
 57  1    13    1  |1 1>-         0.00%    0.01%    0.00%    0.00%
 58  1    14    1  |1 1>-         0.01%    0.00%    0.00%    0.00%
 59  1    15    1  |1 1>-         0.00%    0.00%    0.00%    1.38%
 60  1    16    1  |1 1>-         0.00%    0.00%   99.99%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      144.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     2049.80       700     1000      520     2100     2140     5101     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     55142.35  42969.31    213.86   9354.42   2583.61      7.92      0.17     12.79
 REAL TIME  *     55729.43 SEC
 DISK USED  *         2.14 GB (local),       27.62 GB (total)
 SF USED    *        12.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-X2C energy=  -8132.530559601420

              CI              CI           MULTI         RHF-SCF
  -8132.48153019  -8132.48062067  -8131.90700591  -8131.99704825
 **********************************************************************************************************************************
 Molpro calculation terminated
