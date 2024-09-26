
 Working directory              : /wrk/irikura/molpro.1nFgw23E1I/
 Global scratch directory       : /wrk/irikura/molpro.1nFgw23E1I/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.1nFgw23E1I/

 id        : nistki

 Nodes     nprocs
 comp-32      3
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Br SO-CI
                                                                                 ! active space (7/8)
 memory,4000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Br};
 
 basis=aug-cc-pwCV5Z-X2C
 
 set,dkho=101
 
 {rhf;wf,charge=-1}
 
 NSING=3
 NTRIP=8
 
 {multi
     occ,10,12
     closed,8,6
     wf,charge=0,sym=2,spin=1;state,NSING;
     wf,charge=0,sym=2,spin=3;state,NTRIP;
     expec2,lxx,lyy,lzz
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! KL-shell uncorrelated
 core,2,3
 
 {ci;wf,sym=2,spin=1;state,NSING; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=2,spin=3;state,NTRIP; save,5303.2}
 hlsdiag(NSING+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5303.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Br SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 02-Jul-24          TIME: 09:46:19  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-X2C
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry BR     S aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry BR     P aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry BR     D aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry BR     F aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry BR     G aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry BR     H aug-cc-pwCV5Z-X      selected for orbital group  1
 Library entry BR     I aug-cc-pwCV5Z-X      selected for orbital group  1


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

   1  BR     35.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   35
 NUMBER OF PRIMITIVE AOS:         475
 NUMBER OF SYMMETRY AOS:          342
 NUMBER OF CONTRACTIONS:          263   (  130Ag  +  133Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     477.889 MB (compressed) written to integral file ( 12.0%)

     Node minimum: 152.306 MB, node maximum: 165.151 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:  101190078.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   7  SEGMENT LENGTH:   15995538      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   497186979. AND WROTE    16739525. INTEGRALS IN     53 RECORDS. CPU TIME:     1.55 SEC, REAL TIME:     1.74 SEC
 SORT2 READ    51762445. AND WROTE   303595781. INTEGRALS IN   1890 RECORDS. CPU TIME:     1.01 SEC, REAL TIME:     1.15 SEC

 Node minimum:   101184270.  Node maximum:   101221433. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 1 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3
                                        4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 7 8 910111213  1415 7 8 91011121314
                                       15 7 8 9101112131415   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415161718
                                       19202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 91011  12131415161718192021  11121314151617181920  21111213141516171819
                                       20211112131415161718  192021

 Eigenvalues of metric

         1 0.118E-05 0.338E-04 0.237E-03 0.902E-03 0.902E-03 0.902E-03 0.902E-03 0.902E-03
         2 0.114E-04 0.114E-04 0.114E-04 0.259E-02 0.259E-02 0.259E-02 0.103E-01 0.103E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *        17.32     17.18
 REAL TIME  *        19.59 SEC
 DISK USED  *        31.64 MB (local),        1.08 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   9   9

 NELEC=   36   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2604.54886656   -2604.54886656     0.00D+00     0.62D-01     0     0       0.42      0.82    start
   2    -2604.59378283      -0.04491627     0.15D-01     0.70D-02     1     0       0.43      1.25    diag
   3    -2604.60889728      -0.01511446     0.70D-02     0.19D-02     2     0       0.43      1.68    diag
   4    -2604.60948552      -0.00058824     0.14D-02     0.38D-03     3     0       0.43      2.11    diag
   5    -2604.60950751      -0.00002199     0.69D-04     0.84D-04     4     0       0.43      2.54    diag
   6    -2604.60950952      -0.00000201     0.24D-04     0.33D-04     5     0       0.43      2.97    diag
   7    -2604.60950959      -0.00000007     0.37D-05     0.83D-05     6     0       0.42      3.39    diag
   8    -2604.60950959      -0.00000000     0.42D-06     0.22D-05     7     0       0.43      3.82    fixocc
   9    -2604.60950959      -0.00000000     0.39D-07     0.21D-06     0     0       0.43      4.25    diag

 Final occupancy:   9   9

 !RHF STATE 1.1 Energy              -2604.609509591529
  RHF One-electron energy           -3634.578976211144
  RHF Two-electron energy            1029.969466619615
  RHF Kinetic energy                 2787.090440523378
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.934526369048

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -497.89796     1  1  s    1.00000
    2.1     2.00000   -66.75888     1  2  s    1.00029
    3.1     2.00000    -9.85678     1  3  s    0.99891
    4.1     2.00000    -2.81601     1  1  d2+  0.99986
    5.1     2.00000    -2.81601     1  1  d1+  0.99987
    6.1     2.00000    -2.81601     1  1  d0   0.99986
    7.1     2.00000    -2.81601     1  1  d2-  0.99987
    8.1     2.00000    -2.81601     1  1  d1-  0.99987
    9.1     2.00000    -0.71233     1  4  s    0.97392
    1.2     2.00000   -58.65724     1  1  pz   1.00000
    2.2     2.00000   -58.65724     1  1  py   1.00000
    3.2     2.00000   -58.65724     1  1  px   1.00000
    4.2     2.00000    -7.20982     1  2  pz   1.00049
    5.2     2.00000    -7.20982     1  2  py   1.00049
    6.2     2.00000    -7.20982     1  2  px   1.00049
    7.2     2.00000    -0.13760     1  2  px  -0.27577    1  8  px   0.39925    1  9  px   0.39109
    8.2     2.00000    -0.13760     1  2  py  -0.27577    1  8  py   0.39925    1  9  py   0.39109
    9.2     2.00000    -0.13760     1  2  pz  -0.27577    1  8  pz   0.39925    1  9  pz   0.39109


 HOMO      9.2    -0.137596 =      -3.7442eV
 LUMO     10.2     0.206904 =       5.6301eV
 LUMO-HOMO         0.344500 =       9.3743eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       31.23       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.96       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        21.58      4.26     17.18
 REAL TIME  *        24.07 SEC
 DISK USED  *        34.44 MB (local),        1.09 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NSING          =         3.00000000                                  
 SETTING NTRIP          =         8.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     241 (  120  121)

 State symmetry 1

 Number of active electrons:   7    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             3
 Number of CSFs:            1204   (1980 determinants, 3920 intermediate states)

 State symmetry 2

 Number of active electrons:   7    Spin symmetry=Quartet   Space symmetry=2
 Number of states:             8
 Number of CSFs:             656   (776 determinants, 1568 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.375D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.442D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.770D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.711D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 2 3 6 1 1   5 2 4 3 6 1 5 2 4 3   61415 7131012 8 911   5 4 3 2 6 112 81415
                                       1013 7 911 5 4 3 2 6   1121310 81415 911 7   5 4 3 2 6 112 81415  1013 9 711 4 5 6 2 3
                                       16221820212824192617  232527 112 81514 711   91310 5 4 3 2 6 111   7 8 91215141310 6 4
                                        3 2 5 1 2 6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.756D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.756D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.422D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.932D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.109D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.964D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.973D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.989D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.251D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.845D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 1   2 3 1 2 3 6 7 910 8   4 5 1 2 3 810 6 4 5   7 9 810 5 4 6 7 920
                                       18141715161311211219   1 2 3 6 5 4 8 7 910  20181416131517112119  12 1 2 3 6 4 5 7 910
                                        8201817151113162114  1219 6 4 9 710 5 8 2   1 3 6 810 5 4 7 912  19211116131415171820
                                        2 1 3 6 8 510 4 9 7   1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
 
 Number of orbital rotations:  2704  ( 52 closed/active, 1686 closed/virtual, 0 active/active, 966 active/virtual )
 Total number of variables:    14852
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   22   88    0  -2604.18373197   -2604.31851644   -0.13478446    0.41902345 0.01722250 0.00256747  0.12E+01      5.26
   2    8   36    0  -2604.27295481   -2604.28857804   -0.01562323    0.71031294 0.00010406 0.00054147  0.15E+00      9.53
   3    8   36    0  -2604.28870317   -2604.28870645   -0.00000328    0.00641987 0.00000341 0.00002087  0.98E-02     13.83
   4    5   23    0  -2604.28870646   -2604.28870646   -0.00000000    0.00000198 0.00000001 0.00000054  0.17E-03     17.59

 CONVERGENCE REACHED!  Final gradient:    0.00000010 ( 0.98E-07)
                       Final energy:  -2604.28870646
 
 Results for state 1.2 Doublet
 =============================
 !MCSCF STATE 1.2 Doublet Energy             -2604.513597432297
 Nuclear energy                                  0.00000000
 Kinetic energy                               2787.68003847
 One electron energy                         -3624.28560594
 Two electron energy                          1019.77200851
 Virial ratio                                    1.93429431
 
 !MCSCF STATE 1.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Doublet
 =============================
 !MCSCF STATE 2.2 Doublet Energy             -2604.513597432161
 Nuclear energy                                  0.00000000
 Kinetic energy                               2787.68003847
 One electron energy                         -3624.28560594
 Two electron energy                          1019.77200851
 Virial ratio                                    1.93429431
 
 !MCSCF STATE 2.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Doublet
 =============================
 !MCSCF STATE 3.2 Doublet Energy             -2604.513597432077
 Nuclear energy                                  0.00000000
 Kinetic energy                               2787.68003847
 One electron energy                         -3624.28560594
 Two electron energy                          1019.77200851
 Virial ratio                                    1.93429431
 
 !MCSCF STATE 3.2 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.2 Quartet
 =============================
 !MCSCF STATE 1.2 Quartet Energy             -2604.209473074911
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.47646152
 One electron energy                         -3613.84425420
 Two electron energy                          1009.63478113
 Virial ratio                                    1.93458872
 
 !MCSCF STATE 1.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2 Quartet
 =============================
 !MCSCF STATE 2.2 Quartet Energy             -2604.209473074834
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.47646152
 One electron energy                         -3613.84425420
 Two electron energy                          1009.63478113
 Virial ratio                                    1.93458872
 
 !MCSCF STATE 2.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2 Quartet
 =============================
 !MCSCF STATE 3.2 Quartet Energy             -2604.209473074784
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.47646152
 One electron energy                         -3613.84425420
 Two electron energy                          1009.63478113
 Virial ratio                                    1.93458872
 
 !MCSCF STATE 3.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2 Quartet
 =============================
 !MCSCF STATE 4.2 Quartet Energy             -2604.201311897831
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.50006305
 One electron energy                         -3613.91386106
 Two electron energy                          1009.71254916
 Virial ratio                                    1.93457788
 
 !MCSCF STATE 4.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2 Quartet
 =============================
 !MCSCF STATE 5.2 Quartet Energy             -2604.201311897817
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.50006305
 One electron energy                         -3613.91386106
 Two electron energy                          1009.71254916
 Virial ratio                                    1.93457788
 
 !MCSCF STATE 5.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2 Quartet
 =============================
 !MCSCF STATE 6.2 Quartet Energy             -2604.201311897737
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.50006305
 One electron energy                         -3613.91386106
 Two electron energy                          1009.71254916
 Virial ratio                                    1.93457788
 
 !MCSCF STATE 6.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.2 Quartet
 =============================
 !MCSCF STATE 7.2 Quartet Energy             -2604.201311897684
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.50006305
 One electron energy                         -3613.91386106
 Two electron energy                          1009.71254916
 Virial ratio                                    1.93457788
 
 !MCSCF STATE 7.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.2 Quartet
 =============================
 !MCSCF STATE 8.2 Quartet Energy             -2604.201311897676
 Nuclear energy                                  0.00000000
 Kinetic energy                               2786.50006305
 One electron energy                         -3613.91386106
 Two electron energy                          1009.71254916
 Virial ratio                                    1.93457788
 
 !MCSCF STATE 8.2 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.2 Doublet|LXLX|1.2 Doublet>     0.999999999018
 !MCSCF expec      <2.2 Doublet|LXLX|2.2 Doublet>     0.999999999175
 !MCSCF expec      <3.2 Doublet|LXLX|3.2 Doublet>     0.000000001807
 !MCSCF expec      <1.2 Quartet|LXLX|1.2 Quartet>     0.999999999952
 !MCSCF expec      <2.2 Quartet|LXLX|2.2 Quartet>     0.999999907292
 !MCSCF expec      <3.2 Quartet|LXLX|3.2 Quartet>     0.000000092756
 !MCSCF expec      <4.2 Quartet|LXLX|4.2 Quartet>     0.400379665885
 !MCSCF expec      <5.2 Quartet|LXLX|5.2 Quartet>     1.000000000274
 !MCSCF expec      <6.2 Quartet|LXLX|6.2 Quartet>     1.000000023761
 !MCSCF expec      <7.2 Quartet|LXLX|7.2 Quartet>     3.999999970823
 !MCSCF expec      <8.2 Quartet|LXLX|8.2 Quartet>     3.599620339258
 
 !MCSCF expec      <1.2 Doublet|LYLY|1.2 Doublet>     0.999999999906
 !MCSCF expec      <2.2 Doublet|LYLY|2.2 Doublet>     0.000000000919
 !MCSCF expec      <3.2 Doublet|LYLY|3.2 Doublet>     0.999999999175
 !MCSCF expec      <1.2 Quartet|LYLY|1.2 Quartet>     0.999999999675
 !MCSCF expec      <2.2 Quartet|LYLY|2.2 Quartet>     0.000000093032
 !MCSCF expec      <3.2 Quartet|LYLY|3.2 Quartet>     0.999999907292
 !MCSCF expec      <4.2 Quartet|LYLY|4.2 Quartet>     1.760141465180
 !MCSCF expec      <5.2 Quartet|LYLY|5.2 Quartet>     1.000000049470
 !MCSCF expec      <6.2 Quartet|LYLY|6.2 Quartet>     3.999999916202
 !MCSCF expec      <7.2 Quartet|LYLY|7.2 Quartet>     1.000000152507
 !MCSCF expec      <8.2 Quartet|LYLY|8.2 Quartet>     2.239858416640
 
 !MCSCF expec      <1.2 Doublet|LZLZ|1.2 Doublet>     0.000000001076
 !MCSCF expec      <2.2 Doublet|LZLZ|2.2 Doublet>     0.999999999906
 !MCSCF expec      <3.2 Doublet|LZLZ|3.2 Doublet>     0.999999999018
 !MCSCF expec      <1.2 Quartet|LZLZ|1.2 Quartet>     0.000000000373
 !MCSCF expec      <2.2 Quartet|LZLZ|2.2 Quartet>     0.999999999675
 !MCSCF expec      <3.2 Quartet|LZLZ|3.2 Quartet>     0.999999999952
 !MCSCF expec      <4.2 Quartet|LZLZ|4.2 Quartet>     3.839478868935
 !MCSCF expec      <5.2 Quartet|LZLZ|5.2 Quartet>     3.999999950256
 !MCSCF expec      <6.2 Quartet|LZLZ|6.2 Quartet>     1.000000060037
 !MCSCF expec      <7.2 Quartet|LZLZ|7.2 Quartet>     0.999999876670
 !MCSCF expec      <8.2 Quartet|LZLZ|8.2 Quartet>     0.160521244102
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 4 2 3 6 1 1   1 5 4 3 2 6 5 2 4 3   6 11415 7131012 8 9  11 5 4 3 2 612 81514
                                       1310 7 911 5 4 3 2 6   1121013 81514 911 7   5 4 3 2 6 112 81415  1310 9 711 4 5 6 2 3
                                       16221820241921282326  251727 112 8151411 7   91310 5 4 3 2 6 111   8 712 915141310 6 4
                                        3 2 5 1 2 6 4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 1   2 3 2 1 3 6 7 910 8   4 5 1 2 3 810 6 4 5   9 7 810 6 5 4 9 720
                                       18151714161311211219   1 2 3 6 5 8 410 9 7  20181416131517112119  12 1 2 3 6 4 510 8 9
                                        7182015171311161421  1219 6 9 7 410 5 8 2   1 3 610 8 5 4 7 912  21191311161417152018
                                        2 1 3 6 8 510 4 7 9   1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -498.41927     1  1  s    1.00000
    2.1     2.00000   -67.27815     1  2  s    0.99987
    3.1     2.00000   -10.37011     1  3  s    1.00033
    4.1     2.00000    -3.33264     1  1  d2+  1.00037
    5.1     2.00000    -3.33264     1  1  d1+  1.00037
    6.1     2.00000    -3.33264     1  1  d0   1.00037
    7.1     2.00000    -3.33264     1  1  d2-  1.00037
    8.1     2.00000    -3.33264     1  1  d1-  1.00037
    9.1     1.99772    -1.16528     1  4  s    1.02378
   10.1     0.00257     0.57171     1  3  s   -0.51591    1  4  s   -2.63876    1  5  s   -0.56092    1  6  s   -0.34073
                                    1  7  s    2.62982    1  8  s    0.89204
    1.2     2.00000   -59.17587     1  1  pz   1.00004
    2.2     2.00000   -59.17587     1  1  py   1.00004
    3.2     2.00000   -59.17587     1  1  px   1.00004
    4.2     2.00000    -7.72571     1  2  pz   1.00002
    5.2     2.00000    -7.72571     1  2  py   1.00002
    6.2     2.00000    -7.72571     1  2  px   1.00002
    7.2     1.42176    -0.47919     1  2  px  -0.31249    1  8  px   0.49288    1  9  px   0.40770
    8.2     1.42176    -0.47919     1  2  py  -0.31249    1  8  py   0.49288    1  9  py   0.40770
    9.2     1.42176    -0.47919     1  2  pz  -0.31249    1  8  pz   0.49288    1  9  pz   0.40770
   10.2     0.24481     0.04740     1 11  px   1.12182
   11.2     0.24481     0.04740     1 11  py   1.12182
   12.2     0.24481     0.04740     1 11  pz   1.12182
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2 (Doublet)
 =======================================
 
 20 2a2000     -0.00000960      0.99020386     -0.00002844
 20 22a000      0.99020386      0.00000960     -0.00003103
 20 a22000      0.00003103      0.00002844      0.99020386
 20 2aa00b     -0.00000063      0.06497003     -0.00000187
 20 a2a00b      0.00000204      0.00000187      0.06497003
 20 2aa0b0     -0.06497003     -0.00000063      0.00000204
 20 aa20b0      0.00000204      0.00000187      0.06497003
 20 a2ab00     -0.06497003     -0.00000063      0.00000204
 20 aa2b00      0.00000063     -0.06497003      0.00000187
 
 Energy:    -2604.51359743  -2604.51359743  -2604.51359743
 
 
 CI Coefficients of symmetry 2 (Quartet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 aa200a      0.00000000      0.00000000     -0.00000000     -0.16319439      0.00000134      0.00004947      0.00037321
 20 2aaa00      0.00000000     -0.00000000     -0.00000000      0.77280072     -0.00000035      0.00002390     -0.00006696
 20 2aa0a0      0.70551328      0.00001271     -0.00000490      0.00000008     -0.70550450     -0.00009059     -0.00000664
 20 a2aa00      0.70551328      0.00001271     -0.00000490     -0.00000008      0.70550451      0.00009059      0.00000664
 20 2aa00a      0.00001271     -0.70551326      0.00021481     -0.00003907     -0.00009059      0.70550449     -0.00001770
 20 a2a00a      0.00000489      0.00021481      0.70551325      0.00005248      0.00000664     -0.00001768     -0.70550442
 20 aa20a0      0.00000489      0.00021481      0.70551324     -0.00005248     -0.00000664      0.00001768      0.70550443
 20 aa2a00     -0.00001271      0.70551324     -0.00021481     -0.00003907     -0.00009059      0.70550451     -0.00001770
 20 a2a0a0      0.00000000      0.00000000     -0.00000000      0.60960631      0.00000099      0.00007337      0.00030625
 
 Energy:    -2604.20947307  -2604.20947307  -2604.20947307  -2604.20131190  -2604.20131190  -2604.20131190  -2604.20131190

 State:              8
 20 aa200a      0.79813298
 20 2aaa00     -0.25773605
 20 2aa0a0      0.00000121
 20 a2aa00     -0.00000121
 20 2aa00a     -0.00005171
 20 a2a00a      0.00034063
 20 aa20a0     -0.00034063
 20 aa2a00     -0.00005171
 20 a2a0a0      0.54039695
 
 Energy:    -2604.20131190
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      132.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        2.40       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        39.44     17.86      4.26     17.18
 REAL TIME  *        44.98 SEC
 DISK USED  *       135.34 MB (local),        1.39 GB (total)
 SF USED    *       259.93 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2604.513597   2.0
    -2604.513597   2.0
    -2604.513597   2.0
    -2604.209473   2.0
    -2604.209473   2.0
    -2604.209473   2.0
    -2604.201312   6.0
    -2604.201312   6.0
    -2604.201312   6.0
    -2604.201312   6.0
    -2604.201312   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 35
 Maximum number of shells:             7
 Maximum number of spin couplings:   429

 Reference space:      554 conf     1204 CSFs
 N elec internal:    56699 conf   278292 CSFs
 N-1 el internal:    59743 conf   501108 CSFs
 N-2 el internal:    32490 conf   411156 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     241 ( 120 121 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   1.94 sec, npass=  1  Memory used:   6.56 MW


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.51359743
     2     -2604.51359743
     3     -2604.51359743

 Number of blocks in overlap matrix:   383   Smallest eigenvalue:  0.19D-06
 Number of N-2 electron functions:     867
 Number of N-1 electron functions:  501108

 Number of internal configurations:               139300
 Number of singly external configurations:      60383788
 Number of doubly external configurations:      12595203
 Total number of contracted configurations:     73118291
 Total number of uncontracted configurations: 6023118200

 Diagonal Coupling coefficients finished.               Storage:  64529615 words, CPU-Time:    251.34 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   7146369 words, CPU-time:      1.22 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.51359743    -0.00000000    -1.20906940  0.40D-01  0.68D-01   293.33
    1     2     2     1.00000000     0.00000000 -2604.51359743    -0.00000000    -1.20912542  0.40D-01  0.68D-01   293.33
    1     3     3     1.00000000     0.00000000 -2604.51359743     0.00000000    -1.20914865  0.40D-01  0.68D-01   293.33
    2     1     1     1.07696604    -1.02174501 -2605.53534245    -1.02174501    -0.02645355  0.47D-02  0.98D-03  4994.03
    2     2     2     1.07698434    -1.02173050 -2605.53532793    -1.02173050    -0.02647066  0.47D-02  0.98D-03  4994.03
    2     3     3     1.07699491    -1.02171999 -2605.53531742    -1.02171999    -0.02648122  0.47D-02  0.98D-03  4994.03
    3     1     1     1.06449471    -1.04639365 -2605.55999109    -0.02464864    -0.00056344  0.58D-04  0.49D-04  9694.89
    3     2     2     1.06449607    -1.04639334 -2605.55999077    -0.02466284    -0.00056367  0.58D-04  0.49D-04  9694.89
    3     3     3     1.06449548    -1.04639329 -2605.55999072    -0.02467330    -0.00056374  0.58D-04  0.49D-04  9694.89
    4     1     1     1.06433577    -1.04698747 -2605.56058490    -0.00059381    -0.00002777  0.10D-05  0.36D-05 14403.87
    4     2     2     1.06433579    -1.04698743 -2605.56058486    -0.00059409    -0.00002779  0.10D-05  0.36D-05 14403.87
    4     3     3     1.06433561    -1.04698743 -2605.56058486    -0.00059414    -0.00002779  0.10D-05  0.36D-05 14403.87
    5     1     1     1.06462573    -1.04701933 -2605.56061677    -0.00003187    -0.00000163  0.60D-07  0.22D-06 19110.85
    5     2     2     1.06462568    -1.04701933 -2605.56061676    -0.00003190    -0.00000164  0.60D-07  0.22D-06 19110.85
    5     3     3     1.06462573    -1.04701933 -2605.56061676    -0.00003191    -0.00000164  0.60D-07  0.22D-06 19110.85
    6     1     1     1.06467670    -1.04702127 -2605.56061870    -0.00000193    -0.00000011  0.64D-08  0.13D-07 23798.18
    6     2     2     1.06467668    -1.04702127 -2605.56061870    -0.00000194    -0.00000011  0.64D-08  0.13D-07 23798.18
    6     3     3     1.06467670    -1.04702127 -2605.56061870    -0.00000194    -0.00000011  0.64D-08  0.13D-07 23798.18
    7     1     1     1.06468339    -1.04702140 -2605.56061883    -0.00000013    -0.00000001  0.35D-09  0.94D-09 28490.30
    7     2     2     1.06468338    -1.04702139 -2605.56061883    -0.00000013    -0.00000001  0.35D-09  0.94D-09 28490.30
    7     3     3     1.06468338    -1.04702139 -2605.56061883    -0.00000013    -0.00000001  0.35D-09  0.94D-09 28490.30


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%  50.2%
 P   0.1%  40.8%   5.6%

 Initialization:   0.9%
 Other:            1.7%

 Total CPU:    28490.3 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222202222/2000           0.0417059   0.9608354  -0.0157002
 22222220222/22000           0.5801080  -0.0126449   0.7671410
 2222222022222/000           0.7661109  -0.0427316  -0.5800333
 222222202222//00\           0.0029466   0.0678848  -0.0011092
 22222220222//2\00          -0.0029466  -0.0678848   0.0011092
 22222220222//20\0           0.0409857  -0.0008934   0.0541999
 22222220222/2/00\           0.0409857  -0.0008934   0.0541999
 222222202222//0\0          -0.0541271   0.0030191   0.0409804
 22222220222/2/\00          -0.0541271   0.0030191   0.0409804

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.771740    0.042012    0.584371
 2          -0.043046    0.967896   -0.012738
 3          -0.584296   -0.015816    0.772778

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968936    0.000000    0.000000
 2           0.000000    0.968936    0.000000
 3           0.000000    0.000000    0.968936

 Energy contributions of internal configurations for state 2
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

 30089       0.00000586    -1.02824465       22222220222212000               


 RESULTS FOR STATE 1.2
 =====================

 Coefficient of reference function:   C(0) = 0.77174040 (fixed)   0.96912292 (relaxed)   0.96893623 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043560   -0.00048370   -0.36724346
 Singles      0.01237064   -0.06333310   -0.07161774
 Pairs        0.05234092   -0.59297604   -0.60816019
 Total        1.06514716   -0.65679284   -1.04702140
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.51359743
 Nuclear energy                         0.00000000
 Kinetic energy                      2788.23650159
 One electron energy                -3622.59924995
 Two electron energy                 1017.03863113
 Virial quotient                       -0.93448336
 Correlation energy                    -1.04702140
 !MRCI STATE 1.2 Energy             -2605.560618827394

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.62882930 (Davidson, fixed reference)
 Cluster corrected energies         -2605.62839966 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.62882930 (Davidson, rotated reference)

 Cluster corrected energies         -2605.62671051 (Pople, fixed reference)
 Cluster corrected energies         -2605.62627080 (Pople, relaxed reference)
 Cluster corrected energies         -2605.62671051 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.96789578 (fixed)   0.96912292 (relaxed)   0.96893623 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043560   -0.00048370   -0.93608644
 Singles      0.01237064   -0.06333310   -0.07161774
 Pairs        0.05234091    0.01292544   -0.03931722
 Total        1.06514716   -0.05089137   -1.04702139
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.51359743
 Nuclear energy                         0.00000000
 Kinetic energy                      2788.23650184
 One electron energy                -3622.59925041
 Two electron energy                 1017.03863159
 Virial quotient                       -0.93448336
 Correlation energy                    -1.04702139
 !MRCI STATE 2.2 Energy             -2605.560618826846

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.62882929 (Davidson, fixed reference)
 Cluster corrected energies         -2605.62839965 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.62882929 (Davidson, rotated reference)

 Cluster corrected energies         -2605.62671051 (Pople, fixed reference)
 Cluster corrected energies         -2605.62627079 (Pople, relaxed reference)
 Cluster corrected energies         -2605.62671051 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Coefficient of reference function:   C(0) = 0.77277813 (fixed)   0.96912292 (relaxed)   0.96893623 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00043560   -0.00048370   -0.18775477
 Singles      0.01237064   -0.06333310   -0.07161774
 Pairs        0.05234092   -0.78415791   -0.78764888
 Total        1.06514716   -0.84797471   -1.04702139
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.51359743
 Nuclear energy                         0.00000000
 Kinetic energy                      2788.23650211
 One electron energy                -3622.59925066
 Two electron energy                 1017.03863184
 Virial quotient                       -0.93448336
 Correlation energy                    -1.04702139
 !MRCI STATE 3.2 Energy             -2605.560618826344

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.62882929 (Davidson, fixed reference)
 Cluster corrected energies         -2605.62839966 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.62882929 (Davidson, rotated reference)

 Cluster corrected energies         -2605.62671051 (Pople, fixed reference)
 Cluster corrected energies         -2605.62627079 (Pople, relaxed reference)
 Cluster corrected energies         -2605.62671051 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      132.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     1685.80       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     28922.32  28882.88     17.86      4.26     17.18
 REAL TIME  *     29286.96 SEC
 DISK USED  *         1.78 GB (local),        6.32 GB (total)
 SF USED    *        18.19 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2605.62882930  AU                              
 SETTING HLSDIAG(2)     =     -2605.62882929  AU                              
 SETTING HLSDIAG(3)     =     -2605.62882929  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 8  Roots:    1   2   3   4   5   6   7   8
 Number of reference states: 8  Roots:    1   2   3   4   5   6   7   8

 Reference symmetry:                   2   Quartet 
 Number of electrons:                 35
 Maximum number of shells:             6
 Maximum number of spin couplings:   572

 Reference space:      344 conf      656 CSFs
 N elec internal:    52189 conf   229224 CSFs
 N-1 el internal:    51137 conf   453552 CSFs
 N-2 el internal:    21984 conf   385640 CSFs

 Number of electrons in valence space:                     25
 Maximum number of open shell orbitals in reference space:  7
 Maximum number of open shell orbitals in internal spaces: 13


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     241 ( 120 121 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2604.20947307
     2     -2604.20947307
     3     -2604.20947307
     4     -2604.20131190
     5     -2604.20131190
     6     -2604.20131190
     7     -2604.20131190
     8     -2604.20131190

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2984D-06

 Number of blocks in overlap matrix:   801   Smallest eigenvalue:  0.30D-06
 Number of N-2 electron functions:    2251
 Number of N-1 electron functions:  453552

 Number of internal configurations:               114452
 Number of singly external configurations:      54653528
 Number of doubly external configurations:      32694107
 Total number of contracted configurations:     87462087
 Total number of uncontracted configurations: 5643839758

 Diagonal Coupling coefficients finished.               Storage:  86413644 words, CPU-Time:   1247.70 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  10126218 words, CPU-time:      2.77 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2604.20947307    -0.00000000    -1.16815964  0.33D-01  0.59D-01  1348.44
    1     2     2     1.00000000     0.00000000 -2604.20947307     0.00000000    -1.16831774  0.33D-01  0.59D-01  1348.44
    1     3     3     1.00000000     0.00000000 -2604.20947307     0.00000000    -1.16840792  0.33D-01  0.59D-01  1348.44
    1     4     4     1.00000000     0.00000000 -2604.20131190    -0.00000000    -1.17296063  0.35D-01  0.61D-01  1348.44
    1     5     5     1.00000000     0.00000000 -2604.20131190     0.00000000    -1.16988306  0.35D-01  0.59D-01  1348.44
    1     6     6     1.00000000     0.00000000 -2604.20131190     0.00000000    -1.16991558  0.35D-01  0.59D-01  1348.44
    1     7     7     1.00000000     0.00000000 -2604.20131190    -0.00000000    -1.17008910  0.35D-01  0.59D-01  1348.44
    1     8     8     1.00000000     0.00000000 -2604.20131190     0.00000000    -1.17345368  0.35D-01  0.61D-01  1348.44
    2     1     1     1.06753630    -0.99969815 -2605.20917122    -0.99969815    -0.02123505  0.23D-02  0.98D-03 19587.85
    2     2     2     1.06761888    -0.99959007 -2605.20906314    -0.99959007    -0.02134257  0.24D-02  0.99D-03 19587.85
    2     3     3     1.06767047    -0.99957327 -2605.20904634    -0.99957327    -0.02137838  0.24D-02  0.98D-03 19587.85
    2     4     4     1.06864709    -1.00023819 -2605.20155009    -1.00023819    -0.02182580  0.27D-02  0.98D-03 19587.85
    2     5     5     1.06870840    -1.00010577 -2605.20141767    -1.00010577    -0.02194366  0.27D-02  0.99D-03 19587.85
    2     6     6     1.06878522    -1.00008584 -2605.20139774    -1.00008584    -0.02198552  0.28D-02  0.99D-03 19587.85
    2     7     7     1.06954904    -0.99992760 -2605.20123949    -0.99992760    -0.02222901  0.26D-02  0.11D-02 19587.85
    2     8     8     1.06976259    -0.99976382 -2605.20107572    -0.99976382    -0.02241792  0.27D-02  0.11D-02 19587.85
    3     1     1     1.05835657    -1.01967132 -2605.22914439    -0.01997317    -0.00049903  0.33D-04  0.52D-04 37810.90
    3     2     2     1.05835637    -1.01966925 -2605.22914232    -0.02007918    -0.00050003  0.33D-04  0.53D-04 37810.90
    3     3     3     1.05834331    -1.01966395 -2605.22913702    -0.02009068    -0.00050254  0.33D-04  0.53D-04 37810.90
    3     4     4     1.05891582    -1.02085785 -2605.22216975    -0.02061966    -0.00050083  0.38D-04  0.53D-04 37810.90
    3     5     5     1.05890768    -1.02085269 -2605.22216459    -0.02074692    -0.00050356  0.38D-04  0.53D-04 37810.90
    3     6     6     1.05877068    -1.02081356 -2605.22212545    -0.02072771    -0.00052577  0.41D-04  0.54D-04 37810.90
    3     7     7     1.05876009    -1.02081054 -2605.22212244    -0.02088295    -0.00052790  0.41D-04  0.55D-04 37810.90
    3     8     8     1.05873973    -1.02079968 -2605.22211158    -0.02103586    -0.00053336  0.41D-04  0.56D-04 37810.90
    4     1     1     1.05852574    -1.02024041 -2605.22971349    -0.00056909    -0.00004773  0.20D-05  0.59D-05 56101.48
    4     2     2     1.05852243    -1.02023996 -2605.22971304    -0.00057072    -0.00004809  0.21D-05  0.59D-05 56101.48
    4     3     3     1.05851796    -1.02023882 -2605.22971189    -0.00057487    -0.00004881  0.21D-05  0.60D-05 56101.48
    4     4     4     1.05895443    -1.02142147 -2605.22273337    -0.00056362    -0.00004503  0.20D-05  0.58D-05 56101.48
    4     5     5     1.05894857    -1.02142061 -2605.22273251    -0.00056792    -0.00004572  0.20D-05  0.58D-05 56101.48
    4     6     6     1.05891808    -1.02141523 -2605.22272713    -0.00060167    -0.00004999  0.22D-05  0.62D-05 56101.48
    4     7     7     1.05891602    -1.02141498 -2605.22272688    -0.00060444    -0.00005016  0.22D-05  0.62D-05 56101.48
    4     8     8     1.05890518    -1.02141289 -2605.22272479    -0.00061321    -0.00005162  0.23D-05  0.63D-05 56101.48
    5     1     1     1.05903581    -1.02030010 -2605.22977317    -0.00005969    -0.00000425  0.21D-06  0.44D-06 74421.16
    5     2     2     1.05903508    -1.02030008 -2605.22977316    -0.00006012    -0.00000426  0.21D-06  0.44D-06 74421.16
    5     3     3     1.05903594    -1.02029997 -2605.22977305    -0.00006115    -0.00000435  0.22D-06  0.44D-06 74421.16
    5     4     4     1.05944117    -1.02147773 -2605.22278963    -0.00005626    -0.00000409  0.21D-06  0.44D-06 74421.16
    5     5     5     1.05944101    -1.02147769 -2605.22278959    -0.00005708    -0.00000412  0.21D-06  0.44D-06 74421.16
    5     6     6     1.05944003    -1.02147758 -2605.22278948    -0.00006235    -0.00000442  0.23D-06  0.46D-06 74421.16
    5     7     7     1.05944054    -1.02147756 -2605.22278946    -0.00006258    -0.00000445  0.24D-06  0.46D-06 74421.16
    5     8     8     1.05944020    -1.02147739 -2605.22278929    -0.00006450    -0.00000458  0.24D-06  0.47D-06 74421.16
    6     1     1     1.05908872    -1.02030514 -2605.22977822    -0.00000504    -0.00000035  0.15D-07  0.40D-07 92759.51
    6     2     2     1.05908876    -1.02030514 -2605.22977821    -0.00000506    -0.00000036  0.15D-07  0.40D-07 92759.51
    6     3     3     1.05908847    -1.02030513 -2605.22977821    -0.00000516    -0.00000036  0.15D-07  0.41D-07 92759.51
    6     4     4     1.05949796    -1.02148283 -2605.22279473    -0.00000510    -0.00000037  0.19D-07  0.42D-07 92759.51
    6     5     5     1.05949781    -1.02148283 -2605.22279473    -0.00000514    -0.00000037  0.19D-07  0.42D-07 92759.51
    6     6     6     1.05949736    -1.02148282 -2605.22279471    -0.00000524    -0.00000038  0.19D-07  0.42D-07 92759.51
    6     7     7     1.05949974    -1.02148261 -2605.22279451    -0.00000505    -0.00000035  0.18D-07  0.40D-07 92759.51
    6     8     8     1.05949966    -1.02148261 -2605.22279451    -0.00000522    -0.00000035  0.18D-07  0.40D-07 92759.51
    7     1     1     1.05909268    -1.02030556 -2605.22977863    -0.00000041    -0.00000004  0.18D-08  0.50D-08111091.13
    7     2     2     1.05909248    -1.02030556 -2605.22977863    -0.00000042    -0.00000004  0.18D-08  0.50D-08111091.13
    7     3     3     1.05909259    -1.02030555 -2605.22977863    -0.00000042    -0.00000004  0.18D-08  0.50D-08111091.13
    7     4     4     1.05950345    -1.02148326 -2605.22279516    -0.00000043    -0.00000004  0.19D-08  0.51D-08111091.13
    7     5     5     1.05950343    -1.02148326 -2605.22279516    -0.00000043    -0.00000004  0.19D-08  0.51D-08111091.13
    7     6     6     1.05950318    -1.02148326 -2605.22279516    -0.00000044    -0.00000004  0.20D-08  0.52D-08111091.13
    7     7     7     1.05950452    -1.02148302 -2605.22279492    -0.00000041    -0.00000004  0.19D-08  0.52D-08111091.13
    7     8     8     1.05950450    -1.02148302 -2605.22279492    -0.00000041    -0.00000004  0.19D-08  0.52D-08111091.13


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  33.7%
 P   0.1%  46.9%  14.7%

 Initialization:   1.1%
 Other:            3.1%

 Total CPU:   111091.1 seconds
 =====================================



 Wavefunction saved on  5303.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/2/0/0          -0.0000000   0.0000000  -0.0000000  -0.0002081   0.0001451  -0.0001838   0.0025186   0.7910984
 22222220222//200/          -0.0000000  -0.0000000  -0.0000000  -0.0000447   0.0003852  -0.0000519   0.6863705   0.3933677
 22222220222/2//00          -0.0400280  -0.0103623   0.6840185  -0.0456567  -0.6821277  -0.0447213   0.0003182   0.0001017
 222222202222//0/0          -0.0400280  -0.0103623   0.6840184   0.0456566   0.6821275   0.0447213  -0.0003182  -0.0001017
 222222202222///00           0.0000000   0.0000000  -0.0000000  -0.0001635  -0.0002402  -0.0001319  -0.6838518   0.3977303
 22222220222//2/00          -0.1307496  -0.6724412  -0.0178382  -0.0287361  -0.0428662   0.6831687  -0.0000173   0.0001591
 222222202222//00/           0.1307495   0.6724413   0.0178382  -0.0287361  -0.0428662   0.6831687  -0.0000173   0.0001591
 22222220222/2/00/           0.6714857  -0.1315533   0.0373016   0.6829880  -0.0474027   0.0257541  -0.0000385   0.0001945
 22222220222//20/0           0.6714859  -0.1315533   0.0373016  -0.6829876   0.0474027  -0.0257541   0.0000385  -0.0001945

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.056754    0.185384    0.952068    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.014692    0.953423   -0.186523    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.969837    0.025292    0.052888   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000   -0.000247    0.064736   -0.040745    0.968403   -0.000106
 5          -0.000000    0.000000   -0.000000   -0.000161    0.967183   -0.060780   -0.067212    0.000450
 6          -0.000000   -0.000000    0.000000   -0.000207    0.063410    0.968659    0.036516   -0.000107
 7           0.000000    0.000000    0.000000   -0.641723   -0.000451   -0.000024   -0.000055    0.729277
 8           0.000000   -0.000000    0.000000    0.729277   -0.000144    0.000226    0.000276    0.641723

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971608    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.971608    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.971608   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.971419    0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.971419   -0.000000   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.971419   -0.000000    0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.971418   -0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.971418


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95206783 (fixed)   0.97167528 (relaxed)   0.97160754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019408   -0.00056293   -0.89660488
 Singles      0.01383439   -0.07073161   -0.08009396
 Pairs        0.04526977    0.00000000   -0.04360671
 Total        1.05929823   -0.07129454   -1.02030556
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20947307
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.61618224
 One electron energy                -3613.39049952
 Two electron energy                 1008.16072089
 Virial quotient                       -0.93457263
 Correlation energy                    -1.02030556
 !MRCI STATE 1.2 Energy             -2605.229778630418

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.29028095 (Davidson, fixed reference)
 Cluster corrected energies         -2605.29013025 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.29028095 (Davidson, rotated reference)

 Cluster corrected energies         -2605.28756679 (Pople, fixed reference)
 Cluster corrected energies         -2605.28741562 (Pople, relaxed reference)
 Cluster corrected energies         -2605.28756679 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Coefficient of reference function:   C(0) = 0.95342259 (fixed)   0.97167538 (relaxed)   0.97160763 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019408   -0.00056293   -0.89660504
 Singles      0.01383437   -0.07073163   -0.08009398
 Pairs        0.04526958    0.00000000   -0.04360653
 Total        1.05929803   -0.07129456   -1.02030556
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20947307
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.61619886
 One electron energy                -3613.39051702
 Two electron energy                 1008.16073839
 Virial quotient                       -0.93457262
 Correlation energy                    -1.02030556
 !MRCI STATE 2.2 Energy             -2605.229778630279

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.29028074 (Davidson, fixed reference)
 Cluster corrected energies         -2605.29013004 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.29028074 (Davidson, rotated reference)

 Cluster corrected energies         -2605.28756658 (Pople, fixed reference)
 Cluster corrected energies         -2605.28741541 (Pople, relaxed reference)
 Cluster corrected energies         -2605.28756658 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96983733 (fixed)   0.97167533 (relaxed)   0.97160758 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019408   -0.00056293   -0.89660503
 Singles      0.01383433   -0.07073155   -0.08009394
 Pairs        0.04526972    0.00000001   -0.04360658
 Total        1.05929814   -0.07129447   -1.02030555
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20947307
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.61617810
 One electron energy                -3613.39049926
 Two electron energy                 1008.16072063
 Virial quotient                       -0.93457263
 Correlation energy                    -1.02030555
 !MRCI STATE 3.2 Energy             -2605.229778628257

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.29028085 (Davidson, fixed reference)
 Cluster corrected energies         -2605.29013014 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.29028085 (Davidson, rotated reference)

 Cluster corrected energies         -2605.28756668 (Pople, fixed reference)
 Cluster corrected energies         -2605.28741552 (Pople, relaxed reference)
 Cluster corrected energies         -2605.28756668 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96840258 (fixed)   0.97148584 (relaxed)   0.97141882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019482   -0.00057303   -0.89685073
 Singles      0.01411563   -0.07138470   -0.08096532
 Pairs        0.04539941    0.00010399   -0.04366722
 Total        1.05970987   -0.07185373   -1.02148326
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20131190
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.62931074
 One electron energy                -3613.42342315
 Two electron energy                 1008.20062799
 Virial quotient                       -0.93456572
 Correlation energy                    -1.02148326
 !MRCI STATE 4.2 Energy             -2605.222795157055

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.28378778 (Davidson, fixed reference)
 Cluster corrected energies         -2605.28363843 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.28378778 (Davidson, rotated reference)

 Cluster corrected energies         -2605.28107198 (Pople, fixed reference)
 Cluster corrected energies         -2605.28092207 (Pople, relaxed reference)
 Cluster corrected energies         -2605.28107198 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.96718287 (fixed)   0.97148584 (relaxed)   0.97141882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019482   -0.00057303   -0.89633757
 Singles      0.01411558   -0.07138462   -0.08096529
 Pairs        0.04539944   -0.00043989   -0.04418040
 Total        1.05970985   -0.07239754   -1.02148326
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20131190
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.62931082
 One electron energy                -3613.42342501
 Two electron energy                 1008.20062985
 Virial quotient                       -0.93456572
 Correlation energy                    -1.02148326
 !MRCI STATE 5.2 Energy             -2605.222795156307

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.28378777 (Davidson, fixed reference)
 Cluster corrected energies         -2605.28363842 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.28378777 (Davidson, rotated reference)

 Cluster corrected energies         -2605.28107197 (Pople, fixed reference)
 Cluster corrected energies         -2605.28092205 (Pople, relaxed reference)
 Cluster corrected energies         -2605.28107197 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.96865908 (fixed)   0.97148596 (relaxed)   0.97141894 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019482   -0.00057303   -0.89685167
 Singles      0.01411563   -0.07138475   -0.08096537
 Pairs        0.04539914    0.00010481   -0.04366622
 Total        1.05970959   -0.07185297   -1.02148326
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20131190
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.62933117
 One electron energy                -3613.42344319
 Two electron energy                 1008.20064803
 Virial quotient                       -0.93456571
 Correlation energy                    -1.02148326
 !MRCI STATE 6.2 Energy             -2605.222795155774

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.28378751 (Davidson, fixed reference)
 Cluster corrected energies         -2605.28363816 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.28378751 (Davidson, rotated reference)

 Cluster corrected energies         -2605.28107170 (Pople, fixed reference)
 Cluster corrected energies         -2605.28092179 (Pople, relaxed reference)
 Cluster corrected energies         -2605.28107170 (Pople, rotated reference)



 RESULTS FOR STATE 7.2
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.72927697 (fixed)   0.97148535 (relaxed)   0.97141832 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019483   -0.00057301   -0.22407642
 Singles      0.01411564   -0.07138468   -0.08096505
 Pairs        0.04540047   -0.71284113   -0.71644155
 Total        1.05971095   -0.78479882   -1.02148302
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20131190
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.62926777
 One electron energy                -3613.42339339
 Two electron energy                 1008.20059847
 Virial quotient                       -0.93456573
 Correlation energy                    -1.02148302
 !MRCI STATE 7.2 Energy             -2605.222794920059

 Properties without orbital relaxation:

 !MRCI STATE 7.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.28378864 (Davidson, fixed reference)
 Cluster corrected energies         -2605.28363928 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.28378864 (Davidson, rotated reference)

 Cluster corrected energies         -2605.28107284 (Pople, fixed reference)
 Cluster corrected energies         -2605.28092291 (Pople, relaxed reference)
 Cluster corrected energies         -2605.28107284 (Pople, rotated reference)



 RESULTS FOR STATE 8.2
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.72927708 (fixed)   0.97148536 (relaxed)   0.97141833 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019483   -0.00057301   -0.30483505
 Singles      0.01411563   -0.07138465   -0.08096504
 Pairs        0.04540046   -0.62726036   -0.63568293
 Total        1.05971092   -0.69921802   -1.02148302
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2604.20131190
 Nuclear energy                         0.00000000
 Kinetic energy                      2787.62925202
 One electron energy                -3613.42337911
 Two electron energy                 1008.20058419
 Virial quotient                       -0.93456574
 Correlation energy                    -1.02148302
 !MRCI STATE 8.2 Energy             -2605.222794919254

 Properties without orbital relaxation:

 !MRCI STATE 8.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2605.28378861 (Davidson, fixed reference)
 Cluster corrected energies         -2605.28363925 (Davidson, relaxed reference)
 Cluster corrected energies         -2605.28378861 (Davidson, rotated reference)

 Cluster corrected energies         -2605.28107281 (Pople, fixed reference)
 Cluster corrected energies         -2605.28092289 (Pople, relaxed reference)
 Cluster corrected energies         -2605.28107281 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      132.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     7046.41       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    147526.49 118604.16  28882.88     17.86      4.26     17.18
 REAL TIME  *    149379.25 SEC
 DISK USED  *         7.01 GB (local),       22.02 GB (total)
 SF USED    *        55.17 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2605.29028095  AU                              
 SETTING HLSDIAG(5)     =     -2605.29028074  AU                              
 SETTING HLSDIAG(6)     =     -2605.29028085  AU                              
 SETTING HLSDIAG(7)     =     -2605.28378778  AU                              
 SETTING HLSDIAG(8)     =     -2605.28378777  AU                              
 SETTING HLSDIAG(9)     =     -2605.28378751  AU                              
 SETTING HLSDIAG(10)    =     -2605.28378864  AU                              
 SETTING HLSDIAG(11)    =     -2605.28378861  AU                              


         HLSDIAG
    -2605.628829
    -2605.628829
    -2605.628829
    -2605.290281
    -2605.290281
    -2605.290281
    -2605.283788
    -2605.283788
    -2605.283788
    -2605.283789
    -2605.283789
                                                  

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

 Time for Seward_LS:     103.32 sec

      348413156. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    86874 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:    103.32 sec, REAL time:    104.79 sec


 SORTLS1 read   355726795. and wrote   355726795. SO integrals in  1361 records. CPU time:      7.28 sec, REAL time:     11.86 sec
 SORTLS2 read   355726795. and wrote  1807811302. SO integrals in     9 records. CPU time:      3.34 sec, REAL time:     22.99 sec

 FILE SIZES: FILE 1:  5833.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  5833.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     5562.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     7046.41       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    147641.71    115.18 118604.16  28882.88     17.86      4.26     17.18
 REAL TIME  *    149520.77 SEC
 DISK USED  *         7.01 GB (local),       40.07 GB (total)
 SF USED    *        55.17 GB
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
  
 Wavefunction restored from record  5203.2  Symmetry=2  S= 0.5  NSTATE=   3

 Original energies:  -2605.560619  -2605.560619  -2605.560619
 Replaced energies:  -2605.628829  -2605.628829  -2605.628829

 Wavefunction restored from record  5303.2  Symmetry=2  S= 1.5  NSTATE=   8

 Original energies:  -2605.229779  -2605.229779  -2605.229779  -2605.222795  -2605.222795  -2605.222795  -2605.222795  -2605.222795
 Replaced energies:  -2605.290281  -2605.290281  -2605.290281  -2605.283788  -2605.283788  -2605.283788  -2605.283789  -2605.283789

 >>> Fock matrix approximation error in all internal so: 
   6.5414953795733366       (exact)    6.6535343180100917       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.9252614500814129       (exact)   -2.9509180572460858       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.9948617458304936       (exact)   -5.0800078846560233       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   34.184218266457968       (exact)    34.764535961086686       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.5695285310524918       (exact)   -2.6069211977224396       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -25.892281592742336       (exact)   -26.331731077501463       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8021508902842238       (exact)    2.8319116559227679       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   43.597032406144741       (exact)    43.927015823843419       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.4003539909211771       (exact)   -1.4174196885316859       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.4763022080801211       (exact)   -1.5005644046198858       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.2950607574343476       (exact)    3.3192083383327557       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.1562792982168972       (exact)    1.1747855975349384       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.33103967718813565       (exact)  -0.35395309648559359       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   48.020850482812470       (exact)    48.362737075315827       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0207032020883502       (exact)    1.0433149895401763       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   38.370942583363522       (exact)    38.969363727155859       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0067181332375486       (exact)   0.99566791332024285       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -29.010933809470096       (exact)   -29.463831368016848       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -28.986861106659720       (exact)   -29.467127662800458       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.60951149678472438       (exact)   0.61982204734537294       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -38.328891617370701       (exact)   -38.963957735809309       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   16.866329568087803       (exact)    17.145778324639434       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.37509038630948616       (exact)  -0.38123716072930647       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.286232540580652       (exact)    22.655492708141391       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   32.622183943604469       (exact)    33.190183729360150       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.8719768767107878       (exact)   -1.9040562645234376       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -27.905582578958605       (exact)   -28.359974936489028       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.0924745824541926       (exact)   -7.2090792473573675       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.38203368576750635       (exact)   0.38843454560852003       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.5396310403986400       (exact)    4.6216099589775528       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   28.250293908582666       (exact)    28.482608272493312       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.68027661566472331       (exact)  -0.68643478957885584       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   33.411857000536351       (exact)    33.652103850273150       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   36.294359465804590       (exact)    36.878030674147901       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.1048034366320612       (exact)   -2.1380666020689203       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -31.503405327178076       (exact)   -31.973819390741909       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -31.564753651454726       (exact)   -31.810997974067899       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.78838981757822357       (exact)   0.79533235663532742       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -36.224603661896097       (exact)   -36.464031468889708       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.45448110193911645       (exact)  -0.44539031302010457       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -5.1993712882085215E-002  (exact)   -5.3170474887193168E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.5978681845986271       (exact)   -3.6326748610628776       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.9009414968973196E-002  (exact)    1.9014573824553550E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.17664958117033286       (exact)   0.17534263000561184       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.6577487132597934E-002  (exact)    1.6750665678519128E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.4258186933352728       (exact)    2.4657581028316482       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   55.536061411089058       (exact)    56.451563775558888       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.91002107029911772       (exact)  -0.92506907940838778       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.6689393007663753       (exact)    3.6766374341115364       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -49.603328024781739       (exact)   -50.444506161885897       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   8.5002721789987987       (exact)    8.5724102417409327       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   30.334886415388844       (exact)    30.569188704723707       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.0410808604967219       (exact)    9.2007390373040945       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   39.400409916821040       (exact)    39.698115147238219       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.67424967281247694       (exact)   0.67824967918552315       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.7657634535276392       (exact)   -2.8125695670175244       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0943112191835911       (exact)    1.1030426193080041       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.8124296151461343       (exact)    3.8599607840531247       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   55.333817259751285       (exact)    56.198041198234371       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.95297988324490812       (exact)   0.95199260562685484       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.9062571331675930       (exact)    1.9181048683812418       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.8869177776791779       (exact)   -3.9472156299372214       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8559869810318790       (exact)    2.8769279032759534       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -33.341490451435504       (exact)   -33.576852470973215       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.8163074190356023       (exact)    2.8540630562195370       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -44.252081673293489       (exact)   -44.565845057094698       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -44.362278991765407       (exact)   -45.089844091573283       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.4713073317664831       (exact)    2.5118402926951879       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   33.589019966127175       (exact)    34.139881390804526       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -25.432132981950755       (exact)   -25.849157270136363       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.4340747821170363       (exact)    1.4575801520031588       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   19.239101190314287       (exact)    19.554725537254839       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2605.62882930

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00      21.47    1313.78    -208.88      45.41    -180.88    -229.22
                            0.00     793.10     -58.43       0.00   -1048.93     -17.29     -41.89    -218.88     -17.94       9.32

    2   2.2  0.5  0.5       0.00       0.00       0.00     -21.47      -0.00     -57.03      11.99      -2.45       4.36      13.29
                         -793.10      -0.00   -1047.53    1048.93      -0.00    -793.20      18.72      16.45    -279.04     -20.79

    3   3.2  0.5  0.5       0.00       0.00       0.00   -1313.78      57.03       0.00     178.68     -29.07    -213.93     198.94
                           58.43    1047.53       0.00      17.29     793.20       0.00      31.98     165.79       8.96      -7.30

    4   1.2  0.5 -0.5       0.00     -21.47   -1313.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1048.93     -17.29      -0.00    -793.10      58.43       0.00       0.00       0.00       0.00

    5   2.2  0.5 -0.5      21.47      -0.00      57.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1048.93       0.00    -793.20     793.10       0.00    1047.53       0.00       0.00       0.00       0.00

    6   3.2  0.5 -0.5    1313.78     -57.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           17.29     793.20      -0.00     -58.43   -1047.53      -0.00       0.00       0.00       0.00       0.00

    7   1.2  1.5  1.5    -208.88      11.99     178.68       0.00       0.00       0.00   74302.77       0.00       0.00       0.00
                           41.89     -18.72     -31.98      -0.00      -0.00      -0.00      25.19     673.65      37.11    -204.52

    8   2.2  1.5  1.5      45.41      -2.45     -29.07       0.00       0.00       0.00       0.00   74302.82       0.00       0.00
                          218.88     -16.45    -165.79      -0.00      -0.00      -0.00    -673.65     -34.85      -1.43    -877.24

    9   3.2  1.5  1.5    -180.88       4.36    -213.93       0.00       0.00       0.00       0.00       0.00   74302.80       0.00
                           17.94     279.04      -8.96      -0.00      -0.00      -0.00     -37.11       1.43       3.99     -22.92

   10   4.2  1.5  1.5    -229.22      13.29     198.94       0.00       0.00       0.00       0.00       0.00       0.00   75727.86
                           -9.32      20.79       7.30      -0.00      -0.00      -0.00     204.52     877.24      22.92      -0.55

   11   5.2  1.5  1.5     199.17      -4.98     228.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.10     302.98       6.45      -0.00      -0.00      -0.00       8.54    -100.34      -1.30      28.47

   12   6.2  1.5  1.5       2.86       0.33      22.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          242.30       6.34    -183.20      -0.00      -0.00      -0.00    -750.06     171.54     -51.87    -679.69

   13   7.2  1.5  1.5      -0.13      -1.31      -0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -182.87       3.85    -241.80      -0.00      -0.00      -0.00     -47.10     -30.34     740.74     -45.18

   14   8.2  1.5  1.5     -15.31    -350.41       5.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          106.44      -2.37     140.65      -0.00      -0.00      -0.00     -24.04       5.97     458.01      78.73

   15   1.2  1.5  0.5       0.00       0.00       0.00    -120.60       6.92     103.16       1.28      10.67    -386.42      -4.83
                           23.49    -317.73      54.43      24.18     -10.81     -18.47      54.43     -35.56     -73.01       4.83

   16   2.2  1.5  0.5       0.00       0.00       0.00      26.22      -1.41     -16.78     -11.12      -6.23      74.08      12.02
                          194.23      57.91     252.27     126.37      -9.50     -95.72       9.96      -0.97    -382.97      28.42

   17   3.2  1.5  0.5       0.00       0.00       0.00    -104.43       2.51    -123.51     380.36    -105.46       1.98    -425.52
                            4.32     -17.72       7.01      10.36     161.10      -5.18      90.23     447.76       1.21      21.67

   18   4.2  1.5  0.5       0.00       0.00       0.00    -132.34       7.67     114.86       1.67     -13.57     445.36       1.59
                           24.07     349.47       6.01      -5.38      12.00       4.22     -61.58     -12.20     -21.74       0.43

   19   5.2  1.5  0.5       0.00       0.00       0.00     114.99      -2.87     131.95     430.13    -114.15      -4.66    -373.08
                           12.03     -24.55      18.02      -1.21     174.92       3.72     -63.66    -357.58     -37.42     -19.04

   20   6.2  1.5  0.5       0.00       0.00       0.00       1.65       0.19      13.11      26.84     -14.29      18.77     -23.28
                         -210.39      17.78    -279.24     139.89       3.66    -105.77     -32.25     -31.19     439.41     -27.73

   21   7.2  1.5  0.5       0.00       0.00       0.00      -0.07      -0.76      -0.06      -1.21      -3.81      -0.47      33.06
                         -279.95      15.60     211.97    -105.58       2.22    -139.61     430.49    -111.06      29.12     394.14

   22   8.2  1.5  0.5       0.00       0.00       0.00      -8.84    -202.31       3.32     -97.13    -503.93     -12.88      -0.65
                         -160.43       9.05     121.37      61.45      -1.37      81.20    -250.78      58.05     -18.02     678.75

   23   1.2  1.5 -0.5    -120.60       6.92     103.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -24.18      10.81      18.47      23.49    -317.73      54.43      -0.00      -0.00      -0.00      -0.00

   24   2.2  1.5 -0.5      26.22      -1.41     -16.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -126.37       9.50      95.72     194.23      57.91     252.27      -0.00      -0.00      -0.00      -0.00

   25   3.2  1.5 -0.5    -104.43       2.51    -123.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.36    -161.10       5.18       4.32     -17.72       7.01      -0.00      -0.00      -0.00      -0.00

   26   4.2  1.5 -0.5    -132.34       7.67     114.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            5.38     -12.00      -4.22      24.07     349.47       6.01      -0.00      -0.00      -0.00      -0.00

   27   5.2  1.5 -0.5     114.99      -2.87     131.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.21    -174.92      -3.72      12.03     -24.55      18.02      -0.00      -0.00      -0.00      -0.00

   28   6.2  1.5 -0.5       1.65       0.19      13.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -139.89      -3.66     105.77    -210.39      17.78    -279.24      -0.00      -0.00      -0.00      -0.00

   29   7.2  1.5 -0.5      -0.07      -0.76      -0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          105.58      -2.22     139.61    -279.95      15.60     211.97      -0.00      -0.00      -0.00      -0.00

   30   8.2  1.5 -0.5      -8.84    -202.31       3.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -61.45       1.37     -81.20    -160.43       9.05     121.37      -0.00      -0.00      -0.00      -0.00

   31   1.2  1.5 -1.5       0.00       0.00       0.00    -208.88      11.99     178.68       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -41.89      18.72      31.98      -0.00      -0.00      -0.00      -0.00

   32   2.2  1.5 -1.5       0.00       0.00       0.00      45.41      -2.45     -29.07       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -218.88      16.45     165.79      -0.00      -0.00      -0.00      -0.00

   33   3.2  1.5 -1.5       0.00       0.00       0.00    -180.88       4.36    -213.93       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -17.94    -279.04       8.96      -0.00      -0.00      -0.00      -0.00

   34   4.2  1.5 -1.5       0.00       0.00       0.00    -229.22      13.29     198.94       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       9.32     -20.79      -7.30      -0.00      -0.00      -0.00      -0.00

   35   5.2  1.5 -1.5       0.00       0.00       0.00     199.17      -4.98     228.55       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       2.10    -302.98      -6.45      -0.00      -0.00      -0.00      -0.00

   36   6.2  1.5 -1.5       0.00       0.00       0.00       2.86       0.33      22.71       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -242.30      -6.34     183.20      -0.00      -0.00      -0.00      -0.00

   37   7.2  1.5 -1.5       0.00       0.00       0.00      -0.13      -1.31      -0.10       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     182.87      -3.85     241.80      -0.00      -0.00      -0.00      -0.00

   38   8.2  1.5 -1.5       0.00       0.00       0.00     -15.31    -350.41       5.74       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -106.44       2.37    -140.65      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.2  0.5  0.5     199.17       2.86      -0.13     -15.31       0.00       0.00       0.00       0.00       0.00       0.00
                            2.10    -242.30     182.87    -106.44     -23.49    -194.23      -4.32     -24.07     -12.03     210.39

    2   2.2  0.5  0.5      -4.98       0.33      -1.31    -350.41       0.00       0.00       0.00       0.00       0.00       0.00
                         -302.98      -6.34      -3.85       2.37     317.73     -57.91      17.72    -349.47      24.55     -17.78

    3   3.2  0.5  0.5     228.55      22.71      -0.10       5.74       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.45     183.20     241.80    -140.65     -54.43    -252.27      -7.01      -6.01     -18.02     279.24

    4   1.2  0.5 -0.5       0.00       0.00       0.00       0.00    -120.60      26.22    -104.43    -132.34     114.99       1.65
                            0.00       0.00       0.00       0.00     -24.18    -126.37     -10.36       5.38       1.21    -139.89

    5   2.2  0.5 -0.5       0.00       0.00       0.00       0.00       6.92      -1.41       2.51       7.67      -2.87       0.19
                            0.00       0.00       0.00       0.00      10.81       9.50    -161.10     -12.00    -174.92      -3.66

    6   3.2  0.5 -0.5       0.00       0.00       0.00       0.00     103.16     -16.78    -123.51     114.86     131.95      13.11
                            0.00       0.00       0.00       0.00      18.47      95.72       5.18      -4.22      -3.72     105.77

    7   1.2  1.5  1.5       0.00       0.00       0.00       0.00       1.28     -11.12     380.36       1.67     430.13      26.84
                           -8.54     750.06      47.10      24.04     -54.43      -9.96     -90.23      61.58      63.66      32.25

    8   2.2  1.5  1.5       0.00       0.00       0.00       0.00      10.67      -6.23    -105.46     -13.57    -114.15     -14.29
                          100.34    -171.54      30.34      -5.97      35.56       0.97    -447.76      12.20     357.58      31.19

    9   3.2  1.5  1.5       0.00       0.00       0.00       0.00    -386.42      74.08       1.98     445.36      -4.66      18.77
                            1.30      51.87    -740.74    -458.01      73.01     382.97      -1.21      21.74      37.42    -439.41

   10   4.2  1.5  1.5       0.00       0.00       0.00       0.00      -4.83      12.02    -425.52       1.59    -373.08     -23.28
                          -28.47     679.69      45.18     -78.73      -4.83     -28.42     -21.67      -0.43      19.04      27.73

   11   5.2  1.5  1.5   75727.86       0.00       0.00       0.00    -434.13      83.68       6.83     389.03       0.35      16.63
                           -1.80     -44.17     678.20   -1182.51     -83.10    -433.63     -36.49     -14.46       2.15     390.99

   12   6.2  1.5  1.5       0.00   75727.92       0.00       0.00     -27.53       5.81     -17.87      24.22     -16.40      -0.20
                           44.17      -4.23      44.93     -76.86     -30.99     -34.56     439.29     -27.44    -391.41       0.82

   13   7.2  1.5  1.5       0.00       0.00   75727.67       0.00      -0.68       0.50      27.61     -31.62     -21.44     783.74
                         -678.20     -44.93       1.78       0.32     439.41     -77.87      24.76     390.46     -26.40       5.69

   14   8.2  1.5  1.5       0.00       0.00       0.00   75727.68      96.94     502.73      26.96       1.35      14.03      -1.78
                         1182.51      76.86      -0.32      -6.37    -254.58      55.01     -12.25     678.70     -45.08      20.06

   15   1.2  1.5  0.5    -434.13     -27.53      -0.68      96.94   74302.77       0.00       0.00       0.00       0.00       0.00
                           83.10      30.99    -439.41     254.58       8.40     224.55      12.37     -68.17      -2.85     250.02

   16   2.2  1.5  0.5      83.68       5.81       0.50     502.73       0.00   74302.82       0.00       0.00       0.00       0.00
                          433.63      34.56      77.87     -55.01    -224.55     -11.62      -0.48    -292.41      33.45     -57.18

   17   3.2  1.5  0.5       6.83     -17.87      27.61      26.96       0.00       0.00   74302.80       0.00       0.00       0.00
                           36.49    -439.29     -24.76      12.25     -12.37       0.48       1.33      -7.64       0.43      17.29

   18   4.2  1.5  0.5     389.03      24.22     -31.62       1.35       0.00       0.00       0.00   75727.86       0.00       0.00
                           14.46      27.44    -390.46    -678.70      68.17     292.41       7.64      -0.18      -9.49     226.56

   19   5.2  1.5  0.5       0.35     -16.40     -21.44      14.03       0.00       0.00       0.00       0.00   75727.86       0.00
                           -2.15     391.41      26.40      45.08       2.85     -33.45      -0.43       9.49      -0.60     -14.72

   20   6.2  1.5  0.5      16.63      -0.20     783.74      -1.78       0.00       0.00       0.00       0.00       0.00   75727.92
                         -390.99      -0.82      -5.69     -20.06    -250.02      57.18     -17.29    -226.56      14.72      -1.41

   21   7.2  1.5  0.5      49.28    -782.35      -0.11      -0.19       0.00       0.00       0.00       0.00       0.00       0.00
                          -26.14      15.74      12.50       9.34     -15.70     -10.11     246.91     -15.06    -226.07     -14.98

   22   8.2  1.5  0.5      -0.24       2.42      -0.51       0.13       0.00       0.00       0.00       0.00       0.00       0.00
                          -47.27      24.02     -18.57     -15.84      -8.01       1.99     152.67      26.24     394.17      25.62

   23   1.2  1.5 -0.5       0.00       0.00       0.00       0.00       1.48      12.32    -446.20      -5.58    -501.30     -31.79
                           -0.00      -0.00      -0.00      -0.00      62.86     -41.06     -84.31       5.58      95.95      35.78

   24   2.2  1.5 -0.5       0.00       0.00       0.00       0.00     -12.84      -7.19      85.55      13.88      96.63       6.71
                           -0.00      -0.00      -0.00      -0.00      11.50      -1.13    -442.21      32.82     500.71      39.90

   25   3.2  1.5 -0.5       0.00       0.00       0.00       0.00     439.21    -121.77       2.29    -491.35       7.89     -20.64
                           -0.00      -0.00      -0.00      -0.00     104.19     517.03       1.40      25.02      42.13    -507.25

   26   4.2  1.5 -0.5       0.00       0.00       0.00       0.00       1.93     -15.66     514.26       1.84     449.21      27.97
                           -0.00      -0.00      -0.00      -0.00     -71.10     -14.09     -25.10       0.50      16.69      31.68

   27   5.2  1.5 -0.5       0.00       0.00       0.00       0.00     496.67    -131.81      -5.38    -430.79       0.40     -18.94
                           -0.00      -0.00      -0.00      -0.00     -73.51    -412.90     -43.21     -21.98      -2.48     451.96

   28   6.2  1.5 -0.5       0.00       0.00       0.00       0.00      30.99     -16.50      21.68     -26.89      19.20      -0.23
                           -0.00      -0.00      -0.00      -0.00     -37.24     -36.01     507.38     -32.02    -451.47      -0.95

   29   7.2  1.5 -0.5       0.00       0.00       0.00       0.00      -1.39      -4.40      -0.54      38.17      56.90    -903.38
                           -0.00      -0.00      -0.00      -0.00     497.08    -128.24      33.63     455.12     -30.19      18.18

   30   8.2  1.5 -0.5       0.00       0.00       0.00       0.00    -112.15    -581.89     -14.88      -0.76      -0.28       2.80
                           -0.00      -0.00      -0.00      -0.00    -289.57      67.03     -20.81     783.75     -54.59      27.73

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

    1   1.2  0.5  0.5       0.00       0.00    -120.60      26.22    -104.43    -132.34     114.99       1.65      -0.07      -8.84
                          279.95     160.43      24.18     126.37      10.36      -5.38      -1.21     139.89    -105.58      61.45

    2   2.2  0.5  0.5       0.00       0.00       6.92      -1.41       2.51       7.67      -2.87       0.19      -0.76    -202.31
                          -15.60      -9.05     -10.81      -9.50     161.10      12.00     174.92       3.66       2.22      -1.37

    3   3.2  0.5  0.5       0.00       0.00     103.16     -16.78    -123.51     114.86     131.95      13.11      -0.06       3.32
                         -211.97    -121.37     -18.47     -95.72      -5.18       4.22       3.72    -105.77    -139.61      81.20

    4   1.2  0.5 -0.5      -0.07      -8.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          105.58     -61.45     -23.49    -194.23      -4.32     -24.07     -12.03     210.39     279.95     160.43

    5   2.2  0.5 -0.5      -0.76    -202.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.22       1.37     317.73     -57.91      17.72    -349.47      24.55     -17.78     -15.60      -9.05

    6   3.2  0.5 -0.5      -0.06       3.32       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          139.61     -81.20     -54.43    -252.27      -7.01      -6.01     -18.02     279.24    -211.97    -121.37

    7   1.2  1.5  1.5      -1.21     -97.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -430.49     250.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   2.2  1.5  1.5      -3.81    -503.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          111.06     -58.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   3.2  1.5  1.5      -0.47     -12.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.12      18.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   4.2  1.5  1.5      33.06      -0.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -394.14    -678.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   5.2  1.5  1.5      49.28      -0.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           26.14      47.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   6.2  1.5  1.5    -782.35       2.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.74     -24.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   7.2  1.5  1.5      -0.11      -0.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -12.50      18.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   8.2  1.5  1.5      -0.19       0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.34      15.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.2  1.5  0.5       0.00       0.00       1.48     -12.84     439.21       1.93     496.67      30.99      -1.39    -112.15
                           15.70       8.01     -62.86     -11.50    -104.19      71.10      73.51      37.24    -497.08     289.57

   16   2.2  1.5  0.5       0.00       0.00      12.32      -7.19    -121.77     -15.66    -131.81     -16.50      -4.40    -581.89
                           10.11      -1.99      41.06       1.13    -517.03      14.09     412.90      36.01     128.24     -67.03

   17   3.2  1.5  0.5       0.00       0.00    -446.20      85.55       2.29     514.26      -5.38      21.68      -0.54     -14.88
                         -246.91    -152.67      84.31     442.21      -1.40      25.10      43.21    -507.38     -33.63      20.81

   18   4.2  1.5  0.5       0.00       0.00      -5.58      13.88    -491.35       1.84    -430.79     -26.89      38.17      -0.76
                           15.06     -26.24      -5.58     -32.82     -25.02      -0.50      21.98      32.02    -455.12    -783.75

   19   5.2  1.5  0.5       0.00       0.00    -501.30      96.63       7.89     449.21       0.40      19.20      56.90      -0.28
                          226.07    -394.17     -95.95    -500.71     -42.13     -16.69       2.48     451.47      30.19      54.59

   20   6.2  1.5  0.5       0.00       0.00     -31.79       6.71     -20.64      27.97     -18.94      -0.23    -903.38       2.80
                           14.98     -25.62     -35.78     -39.90     507.25     -31.68    -451.96       0.95     -18.18     -27.73

   21   7.2  1.5  0.5   75727.67       0.00      -0.78       0.58      31.88     -36.51     -24.76     904.98      -0.12      -0.59
                            0.59       0.11     507.38     -89.91      28.59     450.87     -30.48       6.57     -14.43      21.44

   22   8.2  1.5  0.5       0.00   75727.68     111.94     580.50      31.13       1.56      16.20      -2.06      -0.22       0.15
                           -0.11      -2.12    -293.96      63.52     -14.15     783.70     -52.05      23.16     -10.78      18.29

   23   1.2  1.5 -0.5      -0.78     111.94   74302.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -507.38     293.96      -8.40    -224.55     -12.37      68.17       2.85    -250.02     -15.70      -8.01

   24   2.2  1.5 -0.5       0.58     580.50       0.00   74302.82       0.00       0.00       0.00       0.00       0.00       0.00
                           89.91     -63.52     224.55      11.62       0.48     292.41     -33.45      57.18     -10.11       1.99

   25   3.2  1.5 -0.5      31.88      31.13       0.00       0.00   74302.80       0.00       0.00       0.00       0.00       0.00
                          -28.59      14.15      12.37      -0.48      -1.33       7.64      -0.43     -17.29     246.91     152.67

   26   4.2  1.5 -0.5     -36.51       1.56       0.00       0.00       0.00   75727.86       0.00       0.00       0.00       0.00
                         -450.87    -783.70     -68.17    -292.41      -7.64       0.18       9.49    -226.56     -15.06      26.24

   27   5.2  1.5 -0.5     -24.76      16.20       0.00       0.00       0.00       0.00   75727.86       0.00       0.00       0.00
                           30.48      52.05      -2.85      33.45       0.43      -9.49       0.60      14.72    -226.07     394.17

   28   6.2  1.5 -0.5     904.98      -2.06       0.00       0.00       0.00       0.00       0.00   75727.92       0.00       0.00
                           -6.57     -23.16     250.02     -57.18      17.29     226.56     -14.72       1.41     -14.98      25.62

   29   7.2  1.5 -0.5      -0.12      -0.22       0.00       0.00       0.00       0.00       0.00       0.00   75727.67       0.00
                           14.43      10.78      15.70      10.11    -246.91      15.06     226.07      14.98      -0.59      -0.11

   30   8.2  1.5 -0.5      -0.59       0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75727.68
                          -21.44     -18.29       8.01      -1.99    -152.67     -26.24    -394.17     -25.62       0.11       2.12

   31   1.2  1.5 -1.5       0.00       0.00       1.28      10.67    -386.42      -4.83    -434.13     -27.53      -0.68      96.94
                           -0.00      -0.00      54.43     -35.56     -73.01       4.83      83.10      30.99    -439.41     254.58

   32   2.2  1.5 -1.5       0.00       0.00     -11.12      -6.23      74.08      12.02      83.68       5.81       0.50     502.73
                           -0.00      -0.00       9.96      -0.97    -382.97      28.42     433.63      34.56      77.87     -55.01

   33   3.2  1.5 -1.5       0.00       0.00     380.36    -105.46       1.98    -425.52       6.83     -17.87      27.61      26.96
                           -0.00      -0.00      90.23     447.76       1.21      21.67      36.49    -439.29     -24.76      12.25

   34   4.2  1.5 -1.5       0.00       0.00       1.67     -13.57     445.36       1.59     389.03      24.22     -31.62       1.35
                           -0.00      -0.00     -61.58     -12.20     -21.74       0.43      14.46      27.44    -390.46    -678.70

   35   5.2  1.5 -1.5       0.00       0.00     430.13    -114.15      -4.66    -373.08       0.35     -16.40     -21.44      14.03
                           -0.00      -0.00     -63.66    -357.58     -37.42     -19.04      -2.15     391.41      26.40      45.08

   36   6.2  1.5 -1.5       0.00       0.00      26.84     -14.29      18.77     -23.28      16.63      -0.20     783.74      -1.78
                           -0.00      -0.00     -32.25     -31.19     439.41     -27.73    -390.99      -0.82      -5.69     -20.06

   37   7.2  1.5 -1.5       0.00       0.00      -1.21      -3.81      -0.47      33.06      49.28    -782.35      -0.11      -0.19
                           -0.00      -0.00     430.49    -111.06      29.12     394.14     -26.14      15.74      12.50       9.34

   38   8.2  1.5 -1.5       0.00       0.00     -97.13    -503.93     -12.88      -0.65      -0.24       2.42      -0.51       0.13
                           -0.00      -0.00    -250.78      58.05     -18.02     678.75     -47.27      24.02     -18.57     -15.84


   Nr   State  S   Sz       31         32         33         34         35         36         37         38

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.2  0.5 -0.5    -208.88      45.41    -180.88    -229.22     199.17       2.86      -0.13     -15.31
                           41.89     218.88      17.94      -9.32      -2.10     242.30    -182.87     106.44

    5   2.2  0.5 -0.5      11.99      -2.45       4.36      13.29      -4.98       0.33      -1.31    -350.41
                          -18.72     -16.45     279.04      20.79     302.98       6.34       3.85      -2.37

    6   3.2  0.5 -0.5     178.68     -29.07    -213.93     198.94     228.55      22.71      -0.10       5.74
                          -31.98    -165.79      -8.96       7.30       6.45    -183.20    -241.80     140.65

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

   23   1.2  1.5 -0.5       1.28     -11.12     380.36       1.67     430.13      26.84      -1.21     -97.13
                          -54.43      -9.96     -90.23      61.58      63.66      32.25    -430.49     250.78

   24   2.2  1.5 -0.5      10.67      -6.23    -105.46     -13.57    -114.15     -14.29      -3.81    -503.93
                           35.56       0.97    -447.76      12.20     357.58      31.19     111.06     -58.05

   25   3.2  1.5 -0.5    -386.42      74.08       1.98     445.36      -4.66      18.77      -0.47     -12.88
                           73.01     382.97      -1.21      21.74      37.42    -439.41     -29.12      18.02

   26   4.2  1.5 -0.5      -4.83      12.02    -425.52       1.59    -373.08     -23.28      33.06      -0.65
                           -4.83     -28.42     -21.67      -0.43      19.04      27.73    -394.14    -678.75

   27   5.2  1.5 -0.5    -434.13      83.68       6.83     389.03       0.35      16.63      49.28      -0.24
                          -83.10    -433.63     -36.49     -14.46       2.15     390.99      26.14      47.27

   28   6.2  1.5 -0.5     -27.53       5.81     -17.87      24.22     -16.40      -0.20    -782.35       2.42
                          -30.99     -34.56     439.29     -27.44    -391.41       0.82     -15.74     -24.02

   29   7.2  1.5 -0.5      -0.68       0.50      27.61     -31.62     -21.44     783.74      -0.11      -0.51
                          439.41     -77.87      24.76     390.46     -26.40       5.69     -12.50      18.57

   30   8.2  1.5 -0.5      96.94     502.73      26.96       1.35      14.03      -1.78      -0.19       0.13
                         -254.58      55.01     -12.25     678.70     -45.08      20.06      -9.34      15.84

   31   1.2  1.5 -1.5   74302.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.19    -673.65     -37.11     204.52       8.54    -750.06     -47.10     -24.04

   32   2.2  1.5 -1.5       0.00   74302.82       0.00       0.00       0.00       0.00       0.00       0.00
                          673.65      34.85       1.43     877.24    -100.34     171.54     -30.34       5.97

   33   3.2  1.5 -1.5       0.00       0.00   74302.80       0.00       0.00       0.00       0.00       0.00
                           37.11      -1.43      -3.99      22.92      -1.30     -51.87     740.74     458.01

   34   4.2  1.5 -1.5       0.00       0.00       0.00   75727.86       0.00       0.00       0.00       0.00
                         -204.52    -877.24     -22.92       0.55      28.47    -679.69     -45.18      78.73

   35   5.2  1.5 -1.5       0.00       0.00       0.00       0.00   75727.86       0.00       0.00       0.00
                           -8.54     100.34       1.30     -28.47       1.80      44.17    -678.20    1182.51

   36   6.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   75727.92       0.00       0.00
                          750.06    -171.54      51.87     679.69     -44.17       4.23     -44.93      76.86

   37   7.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   75727.67       0.00
                           47.10      30.34    -740.74      45.18     678.20      44.93      -1.78      -0.32

   38   8.2  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   75727.68
                           24.04      -5.97    -458.01     -78.73   -1182.51     -76.86       0.32       6.37


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2605.63485489    -0.00602559    -1322.46      0.00000000        0.00      0.0000
     2 -2605.63485488    -0.00602558    -1322.46      0.00000001        0.00      0.0000
     3 -2605.63485487    -0.00602557    -1322.46      0.00000002        0.00      0.0000
     4 -2605.63485485    -0.00602555    -1322.46      0.00000004        0.01      0.0000
     5 -2605.61688803     0.01194127     2620.81      0.01796685     3943.27      0.4889
     6 -2605.61688803     0.01194127     2620.81      0.01796686     3943.27      0.4889
     7 -2605.29600998     0.33281932    73045.40      0.33884491    74367.86      9.2204
     8 -2605.29594756     0.33288174    73059.10      0.33890733    74381.56      9.2221
     9 -2605.29582376     0.33300554    73086.27      0.33903113    74408.73      9.2255
    10 -2605.29568945     0.33313985    73115.74      0.33916543    74438.21      9.2292
    11 -2605.29554167     0.33328763    73148.18      0.33931322    74470.64      9.2332
    12 -2605.29528986     0.33353944    73203.45      0.33956503    74525.91      9.2400
    13 -2605.29040460     0.33842470    74275.64      0.34445028    75598.10      9.3730
    14 -2605.29019071     0.33863859    74322.58      0.34466418    75645.04      9.3788
    15 -2605.29011944     0.33870986    74338.22      0.34473545    75660.68      9.3807
    16 -2605.29004100     0.33878829    74355.44      0.34481388    75677.90      9.3829
    17 -2605.29001973     0.33880957    74360.11      0.34483516    75682.57      9.3834
    18 -2605.29001143     0.33881787    74361.93      0.34484346    75684.39      9.3837
    19 -2605.28997609     0.33885321    74369.68      0.34487880    75692.15      9.3846
    20 -2605.28994148     0.33888782    74377.28      0.34491341    75699.74      9.3856
    21 -2605.28987011     0.33895919    74392.94      0.34498478    75715.41      9.3875
    22 -2605.28980299     0.33902631    74407.67      0.34505190    75730.14      9.3893
    23 -2605.28968006     0.33914923    74434.65      0.34517482    75757.12      9.3927
    24 -2605.28959933     0.33922997    74452.37      0.34525556    75774.84      9.3949
    25 -2605.28565299     0.34317631    75318.49      0.34920190    76640.96      9.5023
    26 -2605.28552490     0.34330440    75346.61      0.34932999    76669.07      9.5058
    27 -2605.28068521     0.34814409    76408.80      0.35416968    77731.26      9.6374
    28 -2605.28062021     0.34820909    76423.06      0.35423468    77745.53      9.6392
    29 -2605.28051246     0.34831684    76446.71      0.35434243    77769.17      9.6421
    30 -2605.28050119     0.34832811    76449.18      0.35435370    77771.65      9.6425
    31 -2605.28041626     0.34841304    76467.82      0.35443863    77790.29      9.6448
    32 -2605.28033120     0.34849810    76486.49      0.35452369    77808.96      9.6471
    33 -2605.27591632     0.35291298    77455.45      0.35893857    78777.91      9.7672
    34 -2605.27583340     0.35299590    77473.64      0.35902148    78796.11      9.7695
    35 -2605.27570801     0.35312129    77501.17      0.35914688    78823.63      9.7729
    36 -2605.27564205     0.35318725    77515.64      0.35921284    78838.10      9.7747
    37 -2605.27382544     0.35500386    77914.34      0.36102945    79236.81      9.8241
    38 -2605.27378270     0.35504660    77923.72      0.36107218    79246.18      9.8253


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.639013810   0.267297212  -0.388402306  -0.189635500   0.499678209  -0.289159131   0.000041767   0.000075553
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.318341362   0.398125005  -0.050038591  -0.409053095  -0.132884450  -0.229632371   0.000022540  -0.000001846
                         0.286403836   0.351690696   0.150794424   0.092083119  -0.112775306   0.500183269  -0.000017771   0.000044802

    3    3.2  0.5  0.5   0.048857805  -0.129712358   0.009283193  -0.037211189  -0.241581827  -0.417462612   0.000034319  -0.000003028
                         0.443026257  -0.414130533   0.521236899  -0.080355323  -0.136187368  -0.286543905  -0.000062789  -0.000018957

    4    1.2  0.5 -0.5   0.028239366  -0.197514171  -0.157539604   0.139420544   0.239712954   0.414233370  -0.000006518  -0.000004000
                         0.128137584   0.180738776   0.562604719  -0.465756585   0.161711718   0.279442896  -0.000038484  -0.000018120

    5    2.2  0.5 -0.5  -0.124041690   0.468058667   0.160221370  -0.057710013  -0.089360552  -0.173231113  -0.000007189  -0.000081787
                        -0.355707280  -0.322676346   0.076436366  -0.408225507   0.543073450   0.019175393   0.000042619  -0.000003339

    6    3.2  0.5 -0.5  -0.201777446   0.211334807   0.390885933   0.573068702   0.506325318  -0.276433626  -0.000017395  -0.000042373
                         0.098467726   0.135648036   0.162437610   0.213416900  -0.004080200  -0.022204515  -0.000034031  -0.000016967

    7    1.2  1.5  1.5   0.001416117   0.001044773  -0.001316654  -0.000349156   0.002098842   0.000227794   0.008504607   0.235579913
                        -0.001476423   0.000798953  -0.001029549   0.000158728  -0.000071179   0.000529603  -0.032310273   0.030130116

    8    2.2  1.5  1.5  -0.001378526   0.000620411  -0.000918615   0.000237326  -0.000074163   0.000533199  -0.068731961  -0.082113768
                        -0.001598220  -0.001097583   0.001310775   0.000340400  -0.002094344  -0.000227382   0.044010151   0.547477722

    9    3.2  1.5  1.5   0.002637438   0.001564082  -0.000397957  -0.000182821   0.000122848   0.000018712   0.012239151  -0.053764744
                         0.002220838  -0.002684937   0.001708912   0.001290353  -0.000035948   0.000026529  -0.110946653  -0.011648559

   10    4.2  1.5  1.5   0.001888865   0.001082760  -0.001047519  -0.000367546   0.002131732   0.000373146   0.006002026   0.244295139
                        -0.001002433   0.000916862  -0.001362921   0.000273761   0.000500635   0.000733859   0.043305763   0.041790534

   11    5.2  1.5  1.5  -0.000633186   0.001036362   0.001562315   0.000901785  -0.001060369   0.003999518  -0.080030791  -0.043498296
                        -0.000029111  -0.000286633  -0.001312240   0.001796157   0.000975107   0.001852502   0.026304397  -0.005661171

   12    6.2  1.5  1.5  -0.001035315   0.001010114  -0.001179540   0.000211692   0.000375923   0.000876083   0.026819184   0.049668008
                        -0.001939815  -0.001029826   0.001061080   0.000548277  -0.002140230   0.000018477   0.009053203   0.009550925

   13    7.2  1.5  1.5  -0.001340259   0.001286991  -0.001582673   0.000241436   0.000428567   0.000939828  -0.027743795  -0.019334462
                         0.001641848   0.000208238  -0.000861594  -0.000528824   0.000441784  -0.002019736   0.028710449   0.024073855

   14    8.2  1.5  1.5  -0.000508910   0.001073173   0.000622959  -0.001984043  -0.000749027  -0.001644001  -0.053682908   0.008236326
                         0.000278560   0.001465182   0.001130395   0.000720299  -0.000772792   0.003525994  -0.072973649   0.003658891

   15    1.2  1.5  0.5  -0.000475200  -0.002307526  -0.000912017  -0.001118125   0.000052893  -0.001182932  -0.201944569  -0.116918156
                        -0.001512625   0.001959519   0.000726101  -0.002488320  -0.000303856  -0.000331668   0.037381754  -0.051384382

   16    2.2  1.5  0.5   0.001739272  -0.000803069   0.002668979  -0.001093615  -0.000311645  -0.000294215   0.252920177   0.001206661
                        -0.001871573   0.000058437   0.001592081   0.001576233  -0.000196278   0.001168329   0.262941873   0.010236272

   17    3.2  1.5  0.5  -0.001039424  -0.000722598   0.000645041   0.000151574   0.002397905   0.000063961   0.001061226   0.456931919
                         0.000471114  -0.000377849   0.000743896  -0.000215246   0.000358558   0.000655475   0.161741116   0.186661713

   18    4.2  1.5  0.5   0.001587750   0.000782712  -0.000156387  -0.000209961  -0.000801196   0.003444446   0.113379633   0.021034956
                         0.001341757  -0.001782017   0.000975069   0.000804082   0.000715458   0.001785706  -0.026998120   0.019910830

   19    5.2  1.5  0.5  -0.000481063  -0.000960161  -0.000175491  -0.002085117   0.000003629  -0.000347684  -0.033749294  -0.108184466
                        -0.000284938  -0.001433198  -0.001412325   0.000317902  -0.000099377   0.000106285   0.098875014  -0.023305584

   20    6.2  1.5  0.5  -0.001382942   0.001626686  -0.001082970  -0.000918080   0.000716969   0.001769472  -0.050168955   0.005199998
                         0.001605932   0.000745143  -0.000232800  -0.000045790   0.000796672  -0.003449638  -0.099891893  -0.011697064

   21    7.2  1.5  0.5   0.000886539  -0.001518671   0.000390809   0.000035671  -0.000609627  -0.001052728   0.054913656  -0.008138890
                         0.001868960   0.001301702  -0.000909755   0.000702692   0.003844590   0.000221638   0.006362236  -0.112434102

   22    8.2  1.5  0.5   0.000611368   0.000853292   0.001788890  -0.000403404  -0.000349802  -0.000601575  -0.071947884   0.056012991
                         0.000539556  -0.000170119  -0.000818226  -0.002075512   0.002201964   0.000126379  -0.011938580   0.051578974

   23    1.2  1.5 -0.5   0.002681058   0.001985820  -0.000497984   0.001471362  -0.001168291   0.000123573  -0.047415566   0.145261422
                        -0.000760561   0.002421796  -0.000394286  -0.000576852  -0.000389476  -0.000275051   0.348216448   0.024487682

   24    2.2  1.5 -0.5   0.000752867   0.000070309   0.002800924  -0.000818472   0.000406907   0.000370459   0.178393347  -0.239563494
                         0.001810769  -0.000076202  -0.001528216  -0.002407680  -0.001140561   0.000009353   0.001221641   0.243061126

   25    3.2  1.5 -0.5   0.000480973  -0.000523888  -0.000757963  -0.000413422   0.000420622  -0.002190883   0.500514857   0.090413719
                         0.000101946   0.000301502   0.000680734  -0.001079773  -0.000510348  -0.001043221  -0.177828345   0.062073700

   26    4.2  1.5 -0.5  -0.000561665  -0.000794384  -0.000186553  -0.002151375   0.003855269   0.000265073   0.003066445  -0.105207220
                        -0.000205118  -0.001418539  -0.001436721   0.000224020   0.000446614   0.001038721  -0.055419822  -0.038105237

   27    5.2  1.5 -0.5  -0.001521098  -0.000753933   0.000289434   0.000226906  -0.000228380   0.000050163   0.015443047   0.002272199
                        -0.001436166   0.001696268  -0.000982181  -0.000930504  -0.000284882  -0.000083811   0.083837262  -0.024804312

   28    6.2  1.5 -0.5  -0.000208885  -0.001581611  -0.001351007   0.000291793  -0.000461535  -0.001039863   0.017738824   0.047995245
                         0.000364728   0.000845086   0.000135864   0.002108120   0.003849301   0.000260036  -0.005376890  -0.102990097

   29    7.2  1.5 -0.5   0.000509861  -0.001073748  -0.000623971   0.001982280  -0.000745512  -0.001644923   0.028661810  -0.028302701
                        -0.000277969  -0.001467591  -0.001129511  -0.000720299  -0.000772279   0.003528601   0.068340693   0.027901660

   30    8.2  1.5 -0.5  -0.001341238   0.001283818  -0.001580524   0.000243139  -0.000427946  -0.000941890   0.009566905   0.040032016
                         0.001641661   0.000204283  -0.000861647  -0.000527566  -0.000440923   0.002021004   0.053281024  -0.022399408

   31    1.2  1.5 -1.5   0.000447345  -0.001216299  -0.001575941  -0.000698900  -0.000485513   0.001698005   0.196628351  -0.072224775
                         0.000302242  -0.000083490   0.000849737  -0.001839189   0.000316474   0.001233313   0.143516888  -0.114811063

   32    2.2  1.5 -1.5  -0.000324001  -0.000080687  -0.000983068   0.001822609  -0.000314660  -0.001236028   0.190324781  -0.150491142
                         0.000491452  -0.001176417  -0.001586409  -0.000478575  -0.000488523   0.001695748   0.126623632   0.109718212

   33    3.2  1.5 -1.5   0.000783537   0.001237281   0.000317727   0.003525683  -0.000032150   0.000082761   0.090259293   0.033033416
                         0.000174694   0.002441230   0.002261959  -0.000720757   0.000011175   0.000096180  -0.274126489   0.141614999

   34    4.2  1.5 -1.5   0.000707337  -0.001085146  -0.001427589  -0.000989967  -0.000719977   0.002048246  -0.135921345  -0.044682039
                         0.000130221   0.000402546   0.001297676  -0.001786205   0.000398821   0.000777331   0.106108066  -0.056973883

   35    5.2  1.5 -1.5   0.001857715   0.001142274  -0.001009895  -0.000479094  -0.004353190  -0.000332890   0.017968895  -0.054795756
                        -0.001118910   0.000945460  -0.001227912   0.000350310  -0.000701103  -0.001403756  -0.036583351  -0.009661176

   36    6.2  1.5 -1.5  -0.000077900  -0.000267987  -0.001454955   0.001777574  -0.000736865  -0.000884578  -0.001504534  -0.033196773
                         0.000510694  -0.001097186  -0.001437199  -0.000945145  -0.000474629   0.001984642  -0.110467690  -0.002499655

   37    7.2  1.5 -1.5   0.000609805   0.000853297   0.001790739  -0.000402892   0.000351145   0.000604197   0.120924797  -0.039916648
                         0.000538162  -0.000171196  -0.000816102  -0.002079100  -0.002199721  -0.000125237   0.023799122  -0.020622556

   38    8.2  1.5 -1.5  -0.000884483   0.001520101  -0.000391240  -0.000034803  -0.000608619  -0.001053933   0.050518449  -0.066828606
                        -0.001868341  -0.001303372   0.000909578  -0.000701660   0.003842245   0.000221224   0.024607936   0.072489528


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.2  0.5  0.5  -0.000066996   0.000020847  -0.000043865  -0.000110286  -0.001915476  -0.000696528  -0.000897349   0.000394232
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.000022509  -0.000014997   0.000087254   0.000105320   0.000433431  -0.001674247   0.000435038   0.000130371
                         0.000025053  -0.000025300   0.000150343  -0.000037093  -0.000206602  -0.000770132  -0.000859506   0.000106243

    3    3.2  0.5  0.5  -0.000008674  -0.000011674   0.000028110   0.000016077   0.000845526   0.000110824  -0.001280612   0.000065503
                        -0.000049303   0.000018679   0.000054222  -0.000110731   0.000611004   0.000124726  -0.000951670   0.000298196

    4    1.2  0.5 -0.5  -0.000003085   0.000018979  -0.000018200  -0.000019762   0.000123375   0.000633228  -0.000703452   0.000568470
                        -0.000044508   0.000035537   0.000038518  -0.000051697   0.000767022  -0.001377315  -0.000399899   0.000355757

    5    2.2  0.5 -0.5  -0.000043179   0.000030550   0.000138330   0.000038631  -0.000371358  -0.000284516   0.000352814  -0.000055624
                         0.000074624  -0.000051043  -0.000071840   0.000076428   0.001309837   0.000300425   0.000298010  -0.000841890

    6    3.2  0.5 -0.5   0.000035543  -0.000052657   0.000011289   0.000040849   0.000710641   0.000088221   0.000161275   0.000376633
                         0.000015992   0.000024184  -0.000015816  -0.000015693  -0.000474740   0.000899160  -0.000145090  -0.000117523

    7    1.2  1.5  1.5  -0.199966609   0.152764459   0.302812307   0.324346388   0.304462265   0.089742901  -0.038925315  -0.049359808
                        -0.003561857  -0.114221638   0.335431999  -0.150576506  -0.004060888   0.013650253  -0.089689391   0.035949183

    8    2.2  1.5  1.5  -0.064471467   0.043190366  -0.148205784   0.003740981  -0.010383982  -0.020647510  -0.084274858   0.035197985
                        -0.214269192   0.114654014   0.209185792   0.190553412  -0.273688705  -0.056748887   0.021556616   0.017891105

    9    3.2  1.5  1.5   0.007895392   0.008604292   0.282647274   0.228223977   0.106647821   0.157061490   0.327090851  -0.051267142
                        -0.130662245   0.195999311  -0.240202930   0.293273773  -0.035133675  -0.261664545   0.150022244  -0.013610286

   10    4.2  1.5  1.5  -0.080981080   0.014032192   0.084291387   0.015122945  -0.280836824  -0.138790051   0.096814794   0.070218876
                         0.055005181  -0.015392479  -0.018792292  -0.001738336  -0.100624197  -0.058521953   0.093992614  -0.026067852

   11    5.2  1.5  1.5   0.001881341  -0.016937689   0.001959600   0.012822910   0.110750291   0.103841088   0.224486537  -0.298455185
                         0.044352534  -0.012696612   0.004277781   0.040231980  -0.060566248  -0.043715686   0.025950798   0.187888703

   12    6.2  1.5  1.5   0.004163734   0.046572511  -0.127140092   0.073688722   0.086352922  -0.023101295  -0.072640195   0.012403508
                        -0.041864190   0.053544145   0.118037856   0.145201948  -0.046982723   0.036870497   0.120190866   0.137162061

   13    7.2  1.5  1.5  -0.023632841   0.075313247  -0.100859148   0.144364173   0.071665102   0.035427188  -0.192608998  -0.194493056
                        -0.006406003   0.006173082  -0.113129457  -0.096773725   0.088765317   0.004133826   0.068879986  -0.098046420

   14    8.2  1.5  1.5  -0.081684954   0.067233300  -0.063952066   0.045642047   0.124625863  -0.247911700  -0.056411261   0.242489297
                        -0.012050096  -0.012516300  -0.056536771  -0.037562673  -0.017664963  -0.145374374  -0.096818570   0.196046886

   15    1.2  1.5  0.5   0.048342932  -0.077888560   0.319410418   0.218867397  -0.026665119  -0.126194915  -0.059143463  -0.007672214
                         0.052463431   0.132278864  -0.147456101   0.364258611  -0.138780767   0.378302850  -0.102118982  -0.042562668

   16    2.2  1.5  0.5   0.277679052  -0.208509342   0.196991037  -0.137413926  -0.128671300   0.149549588   0.135015413  -0.063806296
                         0.014412982   0.013498737   0.268882796   0.033808684  -0.075635693  -0.086010995  -0.276677445   0.078620453

   17    3.2  1.5  0.5  -0.040511150  -0.098872577  -0.088905435  -0.253640675  -0.127316515  -0.053670206  -0.006880780  -0.004423050
                         0.115200344   0.096497536  -0.318206989   0.181462961  -0.037149575  -0.000769859   0.036460736  -0.002001980

   18    4.2  1.5  0.5   0.017577272   0.024199114  -0.026138428  -0.039279081  -0.122074143  -0.009088322  -0.239902978   0.101337345
                        -0.077797079   0.017854237   0.008023846  -0.064270138   0.253738310  -0.019243853  -0.202928522   0.096559725

   19    5.2  1.5  0.5   0.030628575   0.058258559  -0.052653982  -0.124401100  -0.132402756   0.048654315   0.090955696   0.128498588
                        -0.093467796  -0.003309850  -0.058803536   0.063129252  -0.081249875   0.023288590   0.086090343   0.002957921

   20    6.2  1.5  0.5  -0.078103061   0.040186740  -0.042391047  -0.051800864  -0.036466234  -0.052880357   0.310820920   0.176999607
                        -0.020070231  -0.017652546  -0.017732109   0.011720258  -0.087901773   0.024856384  -0.084632532  -0.078394338

   21    7.2  1.5  0.5  -0.017516352  -0.023883496  -0.024978593   0.013065125   0.106747511  -0.060371133  -0.149485527   0.053178062
                         0.053288941  -0.054346955  -0.050755941   0.032055421  -0.126752592   0.051864838   0.084263667   0.124711077

   22    8.2  1.5  0.5   0.062086364   0.055544946  -0.049542636   0.030987855  -0.053559846  -0.096406516   0.023521159  -0.046781333
                        -0.064013325   0.124265220   0.100920346   0.044333765   0.123471507   0.228023655  -0.034503124  -0.014560794

   23    1.2  1.5 -0.5  -0.131748493   0.181952063   0.032520034  -0.264403582   0.358395417   0.081277180   0.057787526  -0.149511191
                        -0.149071377  -0.103086579  -0.226280564   0.142502885   0.140022736   0.055728814  -0.115238145   0.036461377

   24    2.2  1.5 -0.5  -0.264847032  -0.178982580   0.119311993   0.045699750  -0.110993722   0.012449182   0.084230656  -0.000283022
                         0.100472668  -0.311842200  -0.090503032   0.017794884   0.240954830   0.091649462  -0.034788677   0.065632434

   25    3.2  1.5 -0.5   0.052593953   0.083412993  -0.005602889  -0.125956568   0.036146478  -0.034355240   0.069847561  -0.017772027
                        -0.328218505   0.078484726  -0.084526564  -0.244929412  -0.027459215   0.126293768   0.036781591  -0.026153702

   26    4.2  1.5 -0.5   0.000807658  -0.004901557   0.027789769   0.050933050  -0.014325174  -0.348105802  -0.002756404  -0.239253372
                        -0.010395655  -0.020205863   0.089310543  -0.040187243   0.016253907  -0.098180668  -0.032104906  -0.075545993

   27    5.2  1.5 -0.5  -0.117939945  -0.078506446  -0.085760408  -0.068703710  -0.012567716   0.065768475  -0.110025657  -0.059217770
                         0.005528514   0.050741112   0.089111474  -0.114746056  -0.033829682   0.034418328  -0.197043669   0.032118139

   28    6.2  1.5 -0.5   0.036912301   0.024187332  -0.074120288   0.028295858  -0.030841128   0.005626628   0.070297132  -0.093419526
                        -0.001650269   0.046850397   0.046818161   0.036695429  -0.072691877   0.126288909  -0.075222333   0.151238865

   29    7.2  1.5 -0.5   0.008197416   0.082927961  -0.029003654   0.055657666   0.040560370   0.108677252   0.065825680   0.213594264
                         0.067144247   0.046163156  -0.042469218  -0.045834043  -0.017828243   0.078502704   0.168768539  -0.099715145

   30    8.2  1.5 -0.5   0.082248068  -0.147636418   0.065984724  -0.021917595   0.213952087  -0.144614890   0.062593535   0.038971727
                        -0.095031239  -0.058801458   0.066739952   0.038048149   0.026064641  -0.027114127  -0.081113374  -0.112674261

   31    1.2  1.5 -1.5  -0.364342688  -0.138985606  -0.016249013  -0.066529109   0.070475906  -0.105969675   0.083721588  -0.018400140
                        -0.099282177   0.409599426   0.045993412  -0.187791614  -0.128946180   0.235453285   0.047300423  -0.067030306

   32    2.2  1.5 -1.5   0.074241945   0.384028781   0.098030476  -0.045910240   0.101336052  -0.202705166  -0.063936157   0.055566069
                         0.433141114   0.195117130   0.013231109   0.028987687   0.068715450  -0.115556948   0.083897528  -0.013802001

   33    3.2  1.5 -1.5   0.059543226  -0.314481578  -0.085731920   0.182237816   0.090829288  -0.057511407   0.081743570  -0.209215715
                         0.277893342   0.108081690   0.032863848  -0.071398241   0.031494015   0.053493512   0.022392351  -0.020643223

   34    4.2  1.5 -1.5  -0.136422133  -0.104718195  -0.002392247   0.024460173  -0.028200554   0.032724275   0.063909053   0.162350221
                         0.048266911   0.102407152   0.046721451   0.010046061   0.225560093  -0.221024480   0.119852620   0.019747230

   35    5.2  1.5 -1.5   0.024182410   0.010188599   0.016872649   0.041883043   0.059415055   0.044307189   0.108174036   0.367998498
                        -0.005044886  -0.025335911   0.040550884  -0.022116409  -0.008276556   0.110343232  -0.163407954  -0.076693691

   36    6.2  1.5 -1.5  -0.094378728   0.116600084   0.008592741  -0.096458926   0.011264797   0.001968397   0.123041980  -0.138205221
                         0.097653785   0.057307017   0.018147231   0.031809919  -0.006336435   0.002820695  -0.237619638  -0.010579820

   37    7.2  1.5 -1.5  -0.094614869  -0.022304923  -0.039399968   0.037706751  -0.004933491   0.018654433  -0.085717566  -0.091288245
                         0.027529577  -0.119730505  -0.023900954   0.099005110  -0.136276077   0.102336874  -0.067129010  -0.095581278

   38    8.2  1.5 -1.5  -0.091340380  -0.039591347   0.041337931  -0.001711770  -0.038593116  -0.138854769   0.180978552   0.023819838
                         0.021515380  -0.090404213  -0.041139133   0.015564967   0.245052238   0.242827053   0.113383685   0.369164754


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.2  0.5  0.5   0.000403027  -0.000458554   0.000413044   0.000453419  -0.000574644  -0.000949494  -0.000959457  -0.001047232
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000272051  -0.000250209  -0.000082494  -0.000245085  -0.001117071   0.000654453   0.000905340  -0.000746141
                         0.000076610  -0.000152634   0.000777224   0.000560354   0.000076110  -0.000464993  -0.000349296   0.000133082

    3    3.2  0.5  0.5  -0.000157359  -0.000246244   0.000387534   0.000446342  -0.000034693   0.000417535  -0.001022262   0.000329537
                         0.000662594  -0.000447158   0.000110391   0.000032246   0.000067836   0.000367953  -0.001215716   0.001149201

    4    1.2  0.5 -0.5  -0.000291894  -0.000316710  -0.000162425   0.000054991  -0.000461327  -0.000066039  -0.000278501   0.000760494
                         0.000170656  -0.000408392   0.000427819  -0.000058799  -0.001420792   0.000785733  -0.000280381   0.000958992

    5    2.2  0.5 -0.5  -0.000398914   0.000499442   0.000748301   0.000049295  -0.000866735  -0.000217771   0.000596959   0.000469371
                         0.000148358   0.000406864  -0.000024597  -0.000018524   0.000702395   0.001482501  -0.000747364  -0.000773657

    6    3.2  0.5 -0.5  -0.000426679   0.000029030   0.000085284  -0.000052823   0.000189323  -0.000374189   0.001419387   0.001745864
                        -0.000338691   0.000507917   0.000600355   0.000073114  -0.000005049  -0.000521620  -0.000144469   0.000955785

    7    1.2  1.5  1.5  -0.062101842   0.024513605  -0.000115100  -0.015196838   0.044286128   0.120997704  -0.008143282   0.164194153
                         0.081045196  -0.055549620   0.029804181   0.015399005   0.005994292  -0.009402824  -0.110400533   0.077248821

    8    2.2  1.5  1.5   0.064194936  -0.034088610   0.014174932   0.006912677  -0.009968520   0.000269235  -0.124777404   0.066522133
                         0.041240937  -0.017162888   0.009212549   0.006921683  -0.056987507  -0.155738856  -0.023622694  -0.141632497

    9    3.2  1.5  1.5  -0.016085927   0.086155103  -0.189996681  -0.168154807   0.041741858   0.097898000   0.226784046   0.039614664
                        -0.094919927   0.003491027  -0.013255224  -0.030650730  -0.164090153   0.043017150   0.234515056  -0.226241309

   10    4.2  1.5  1.5   0.077999718  -0.116003520   0.106300941   0.116711048   0.188356269   0.216197429   0.025279709   0.019599618
                        -0.209771609   0.061297200  -0.056137868  -0.033623535  -0.076107801   0.083571421  -0.108288507   0.027202336

   11    5.2  1.5  1.5  -0.111605426  -0.232314231   0.309191757   0.133726260  -0.073671269  -0.092613713  -0.025725220  -0.019630629
                        -0.068763283   0.329351860   0.033435986  -0.060271426   0.082955892  -0.094583915  -0.011769439   0.048495287

   12    6.2  1.5  1.5  -0.070547506   0.100828493   0.221507442   0.172836008   0.057884218  -0.053575139   0.194540062  -0.136701653
                        -0.025669076  -0.181144692   0.054181386   0.084647120   0.049985942   0.280305615   0.162859742   0.044419025

   13    7.2  1.5  1.5   0.191042283  -0.065425904   0.065553173  -0.049468109  -0.004968391  -0.041768790   0.232862235  -0.161072855
                        -0.140094991  -0.065167805   0.096707278   0.007183063  -0.169414673  -0.129080411  -0.217601080  -0.076968017

   14    8.2  1.5  1.5  -0.012506045   0.199033469  -0.009612399  -0.011859739   0.019953474  -0.043894040   0.092786610  -0.094410578
                         0.104491475   0.341310918  -0.240090703  -0.151307683  -0.011642455   0.017998724  -0.006616727   0.002516756

   15    1.2  1.5  0.5  -0.011035920   0.021745689   0.133515515   0.085689808   0.069201877  -0.112778079   0.051830649   0.020978629
                         0.022232087   0.066396463   0.028866055   0.068385934   0.258266429  -0.166400179  -0.202636531   0.112100697

   16    2.2  1.5  0.5  -0.111219027   0.111688509  -0.038371338  -0.013205129   0.075185598  -0.097696066   0.142048055  -0.164173271
                         0.020512229  -0.106576014   0.067494186   0.097193325  -0.146761544   0.007602407  -0.287669346  -0.118868986

   17    3.2  1.5  0.5   0.013095265  -0.002612714   0.009791237  -0.006746908  -0.046894854  -0.113074375   0.022655825  -0.068701450
                        -0.006565464   0.028848155   0.019223695   0.013535196   0.003949015  -0.035342686   0.045910810  -0.046627522

   18    4.2  1.5  0.5  -0.001100921  -0.266771919   0.044995894   0.110438266   0.189873117   0.048827243   0.145083476   0.105045461
                         0.100463137  -0.049357806  -0.082143792   0.110969915   0.185984638  -0.136888603   0.084231407  -0.180810559

   19    5.2  1.5  0.5   0.137242506  -0.041891046   0.033369471   0.191631167   0.005281099   0.362768510   0.056525794  -0.097979898
                        -0.129833360   0.003939475  -0.149063417  -0.058872472   0.009497689   0.043625859  -0.157323883   0.012975839

   20    6.2  1.5  0.5  -0.286345859  -0.138434461  -0.181801195   0.202523394   0.041798424   0.027680204  -0.180820464  -0.013881193
                         0.164889812  -0.039124783   0.195049168   0.185737140   0.088838881   0.100253044   0.045645013  -0.014476886

   21    7.2  1.5  0.5  -0.282397675   0.170326569   0.238842208   0.237961607   0.047480513   0.048696930   0.037135138  -0.084051295
                        -0.071466488  -0.275225961   0.016578210  -0.030111633  -0.176385629  -0.083023876   0.199352612  -0.090650638

   22    8.2  1.5  0.5  -0.183386448   0.027548483   0.033931187  -0.009583165  -0.140406519   0.138698157  -0.134187545   0.121796108
                         0.006286725   0.077973521  -0.106337478   0.001082632  -0.329754797  -0.166015911  -0.025945296  -0.199816933

   23    1.2  1.5 -0.5  -0.012309862   0.070558444  -0.030909859  -0.018456011   0.152792767   0.330973729  -0.079275447  -0.106606272
                         0.071502526  -0.102278307  -0.106683304  -0.004512839   0.142975543   0.058204512  -0.124164480   0.054950608

   24    2.2  1.5 -0.5  -0.011809074  -0.021800445  -0.120299529  -0.005326453   0.108190160  -0.097337355   0.132458613  -0.248671296
                        -0.126691186   0.006501901   0.000425998  -0.000398961  -0.010601386   0.027329336   0.185732500   0.378837816

   25    3.2  1.5 -0.5  -0.011439425   0.040922189   0.024103119  -0.000697602   0.038653956  -0.002236691   0.080907707   0.031802512
                        -0.010208438   0.035657889  -0.013453230   0.035091059   0.086862251  -0.060197884  -0.000180753   0.015357416

   26    4.2  1.5 -0.5  -0.069972145   0.013584532   0.104738246  -0.207972148   0.402438407  -0.023408914  -0.180149726   0.025784673
                        -0.080457478  -0.022646938   0.052065196  -0.004903325  -0.015549380   0.122150939   0.021413826  -0.072428021

   27    5.2  1.5 -0.5  -0.083529040  -0.157662873  -0.163201660   0.019100934   0.001639234   0.094782829   0.158327551   0.008181984
                        -0.076418960   0.045189492   0.086826507  -0.257448825   0.021964555   0.141085821   0.162092168  -0.210353831

   28    6.2  1.5 -0.5   0.341974553  -0.228062669  -0.205238651  -0.215775712   0.022694472   0.007451979  -0.009534995   0.008638968
                         0.145944228   0.191408005  -0.052706629   0.245615923  -0.065628119   0.164195228  -0.016385359   0.094014731

   29    7.2  1.5 -0.5  -0.260470345  -0.094437455  -0.162478022   0.130482894   0.252845098  -0.050077744  -0.125757117  -0.139037053
                         0.205081118   0.202981456   0.211089921   0.087231959  -0.046377807   0.081799322  -0.061420653  -0.075655242

   30    8.2  1.5 -0.5   0.094922780  -0.063522133  -0.134436905   0.290355802   0.085799323  -0.247864000   0.079418058  -0.121951146
                        -0.031049982   0.040019093  -0.070636263   0.004806536  -0.176172905   0.007277380  -0.163732347  -0.118405083

   31    1.2  1.5 -1.5  -0.007278374   0.016112602   0.023854474  -0.017166887   0.034287605  -0.001782318   0.176675344   0.086856694
                        -0.068609283   0.114411171   0.018386856  -0.002034714   0.171663737  -0.131552458   0.072878751  -0.019080929

   32    2.2  1.5 -1.5   0.042141484  -0.091366862  -0.007639344  -0.013081492  -0.171077023   0.136975594  -0.055925953   0.026468941
                         0.007192724   0.020452160   0.031076049  -0.005854916   0.028818050   0.003554507   0.143414290   0.082289155

   33    3.2  1.5 -1.5   0.093096751   0.074685268  -0.003600150   0.004812653   0.097783770   0.252069915  -0.233937957  -0.357358599
                         0.081362200  -0.076762421  -0.202258599  -0.008890974   0.254349903   0.017890781  -0.026116717  -0.264623613

   34    4.2  1.5 -1.5   0.059093167   0.035900152   0.146091528  -0.018919601   0.060809980  -0.043013462  -0.073585165   0.010464781
                         0.109842362  -0.106569755  -0.121503200   0.310903434  -0.037300000  -0.156770210  -0.051812143   0.042310888

   35    5.2  1.5 -1.5   0.109174078  -0.130412880   0.284071211  -0.252683016   0.029988927  -0.087118993  -0.139738812  -0.145560431
                        -0.276945903   0.020102701   0.086574167  -0.013187762  -0.039750561   0.054726438   0.101639069  -0.136180311

   36    6.2  1.5 -1.5   0.202095776   0.046736480   0.021359436   0.145662114  -0.037228069  -0.205052443   0.011398443   0.136053573
                        -0.169929408  -0.224979250  -0.256841711  -0.037151772  -0.050403505   0.012901305  -0.008645815  -0.015952306

   37    7.2  1.5 -1.5   0.028839258  -0.115209720   0.007362623  -0.106743284  -0.112578253   0.061789599   0.009265462   0.054669816
                         0.094591567   0.184691305  -0.214219290   0.343884538  -0.161032326   0.175691757   0.014688761  -0.062779548

   38    8.2  1.5 -1.5   0.152547102   0.032836430   0.008262106   0.005636778  -0.027198420  -0.011423021   0.007547797   0.092550201
                         0.120176902  -0.084354488   0.189543477  -0.101744849  -0.108220658   0.088600338  -0.075456688  -0.128497661


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.2  0.5  0.5  -0.000763910  -0.000585928  -0.000053042   0.000085786   0.000064554  -0.000049520   0.000202294   0.000082034
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.000574565  -0.000446290  -0.000014022  -0.000067966  -0.000070324  -0.000001244  -0.000144192   0.000015034
                         0.000809545   0.000264127   0.000024879   0.000046548   0.000032343  -0.000030940   0.000003736   0.000016579

    3    3.2  0.5  0.5  -0.000492675   0.000094690   0.000120502   0.000051888  -0.000027362  -0.000072789  -0.000042026   0.000048254
                         0.000735794  -0.000704928   0.000016088   0.000061658   0.000055430  -0.000015149   0.000124581  -0.000080795

    4    1.2  0.5 -0.5   0.000290705  -0.000368772  -0.000042075   0.000001577   0.000019760  -0.000012118  -0.000004100   0.000169885
                        -0.000630671   0.000600314  -0.000026624   0.000022105  -0.000025776  -0.000007235   0.000109130  -0.000136061

    5    2.2  0.5 -0.5   0.000443406  -0.000487587   0.000023417  -0.000073795  -0.000038328   0.000001697   0.000060063   0.000016924
                        -0.000343938  -0.000756283  -0.000030458  -0.000051889   0.000036531   0.000095561   0.000123931   0.000037957

    6    3.2  0.5 -0.5  -0.000737208  -0.000874357  -0.000004650  -0.000076151  -0.000042885   0.000057552  -0.000088296  -0.000166758
                        -0.000181405   0.000197373   0.000038795  -0.000022349   0.000041459  -0.000005865  -0.000002383   0.000035807

    7    1.2  1.5  1.5   0.199066531   0.264863377  -0.140902172  -0.032083428  -0.076924363  -0.060855709  -0.182146132  -0.035287034
                         0.180276110  -0.284796107   0.027095635   0.047585539   0.043444023   0.076417569   0.040698063  -0.052481218

    8    2.2  1.5  1.5   0.181594655  -0.281324848   0.006105895  -0.077782341  -0.001447988   0.072939251  -0.099848845   0.006574310
                        -0.195559876  -0.261902401  -0.123321921  -0.062982266  -0.079774065   0.002281570  -0.207088726  -0.013001445

    9    3.2  1.5  1.5   0.014564200   0.003280257  -0.012637583   0.045876917  -0.001835798   0.031445813  -0.003887880  -0.049320705
                        -0.006264303  -0.012879875  -0.201714949   0.022478143   0.021436038   0.063703096   0.075802310   0.034673814

   10    4.2  1.5  1.5  -0.015362251  -0.015318886   0.141543500   0.125963270   0.093416569  -0.136426030   0.291475321   0.032818383
                        -0.020529109   0.035770046  -0.039422585  -0.196094418   0.036330844   0.255395377  -0.285268059  -0.066824697

   11    5.2  1.5  1.5   0.076645820   0.032566691  -0.025133214   0.045635470   0.173881114  -0.024781576  -0.095689149   0.066515395
                        -0.055095374   0.057955723  -0.046908126   0.024041997   0.106220081  -0.091053527  -0.016961097  -0.070565769

   12    6.2  1.5  1.5  -0.035782828   0.035027676   0.080661714   0.042277492   0.172544029   0.297056738   0.070524865  -0.125815826
                         0.014982998   0.059688304   0.268889318  -0.030291992   0.150637415   0.220348513   0.232388853   0.064541305

   13    7.2  1.5  1.5  -0.032720187   0.027618105   0.459999119  -0.046358883   0.010826431  -0.169422499  -0.193757745  -0.127135621
                        -0.060218364  -0.014032485   0.007136121   0.093269621  -0.085234829   0.081064205   0.069947288  -0.141538246

   14    8.2  1.5  1.5   0.036330608  -0.047185566   0.305030033  -0.035828698  -0.128973545  -0.029242153  -0.085378343   0.007995773
                         0.056373563   0.042109657  -0.005332143   0.119878496   0.170981586   0.027615488  -0.036832055  -0.011180457

   15    1.2  1.5  0.5   0.138077551   0.094150861   0.035293708   0.005972419  -0.120167779   0.030965133   0.041458827  -0.072414099
                        -0.172495380   0.143776176  -0.158614598   0.022387224  -0.023070672   0.098598215   0.069858570   0.063816937

   16    2.2  1.5  0.5  -0.188851055   0.121789618   0.172996665  -0.028864981  -0.069899981  -0.021550461  -0.060854436   0.017607118
                        -0.194138368  -0.103111497   0.037163452   0.072535229   0.121380821  -0.011061215  -0.045883246  -0.021846492

   17    3.2  1.5  0.5   0.196840035   0.400347129   0.070797428  -0.050168906   0.014740488   0.117355732  -0.011667656   0.007864349
                         0.249709690  -0.268713007  -0.030401641   0.066879711  -0.067348953  -0.198668673   0.078250161   0.067010889

   18    4.2  1.5  0.5   0.064766425   0.027044731  -0.012584545  -0.079152036  -0.272570949   0.040835007   0.100095155  -0.117740386
                        -0.022354733   0.040400040  -0.045642974   0.014801520  -0.182470804   0.125415949   0.067768239   0.109311645

   19    5.2  1.5  0.5   0.018579117   0.012393584  -0.297740664  -0.196962779   0.015381621  -0.072939554  -0.188772255  -0.117362618
                         0.029696140  -0.015178897   0.062027675   0.466498522   0.029473405   0.091022628   0.101493941  -0.084983025

   20    6.2  1.5  0.5  -0.029918332   0.035756008   0.114617787  -0.037413301  -0.193102235   0.057291288  -0.000478785   0.063720567
                        -0.043358957  -0.017302834  -0.009341109   0.128798268   0.275160634   0.001854495  -0.097221460   0.056372158

   21    7.2  1.5  0.5   0.038947285  -0.035124356  -0.012552436   0.056888310  -0.000899329   0.196752979  -0.209888438  -0.043613288
                        -0.034689449  -0.053185160  -0.041743726  -0.000566641  -0.111374262   0.077688608  -0.248159455   0.015865999

   22    8.2  1.5  0.5   0.039582399  -0.047018269   0.060276384  -0.205083037   0.126978280   0.056684451   0.202648805  -0.040107926
                        -0.027192483  -0.064097869   0.164955889  -0.106201288   0.216913304   0.099776174   0.349695518  -0.002187138

   23    1.2  1.5 -0.5  -0.075852222  -0.228652887   0.061455510  -0.002502850  -0.048175451   0.081092186  -0.076994266   0.038668263
                        -0.103813956   0.072939400  -0.009299849  -0.148664977  -0.011082067  -0.120877052   0.091647220   0.054443789

   24    2.2  1.5 -0.5   0.129224202  -0.100006116  -0.005379693  -0.193647647   0.056832256   0.057881789   0.018525713  -0.029970884
                        -0.075247742  -0.239669292  -0.004133332  -0.075964824   0.056936808   0.093223469   0.017809159  -0.031532507

   25    3.2  1.5 -0.5   0.416564978   0.147123155  -0.009856925   0.051360773   0.201510619  -0.005724754  -0.082492333   0.051512930
                        -0.270003677   0.273373808  -0.029403183  -0.002501101   0.125114434  -0.069619190  -0.017974168  -0.062098677

   26    4.2  1.5 -0.5  -0.015578650  -0.056648622   0.086575704  -0.023033592  -0.020044950   0.169416570  -0.077930992   0.054321164
                        -0.035530792   0.038257810  -0.053877654   0.004500494  -0.086803936  -0.295954848   0.150077606   0.085282898

   27    5.2  1.5 -0.5   0.026073956   0.009044577   0.010570291   0.144668902  -0.067767205   0.175854804   0.072591214   0.240861264
                        -0.025706405   0.005250532  -0.391456458   0.110627930  -0.060118510   0.220901558   0.240374256  -0.211107699

   28    6.2  1.5 -0.5   0.027650157  -0.032481840   0.031473637  -0.160721958   0.093942343   0.278420918  -0.075551783  -0.064759530
                        -0.021746009  -0.053237122   0.029964274  -0.105913060   0.042340046   0.168989232   0.014434880  -0.001825762

   29    7.2  1.5 -0.5   0.031332415  -0.037343281   0.141141047   0.018031303   0.036712328  -0.055164074  -0.043098862  -0.237925053
                         0.052840717   0.018975875   0.001823710  -0.017711059  -0.132509833  -0.034464977   0.063223942  -0.262585546

   30    8.2  1.5 -0.5   0.016081007  -0.026151708  -0.312709217  -0.007529210   0.187135795  -0.020807255   0.045548047   0.247325065
                         0.047292621   0.017808829   0.013619941  -0.090983619  -0.168532237   0.088788098   0.035727883   0.304522782

   31    1.2  1.5 -1.5  -0.360128225  -0.091740243  -0.000549797   0.004614191   0.097061063  -0.092372564  -0.057994678  -0.120846643
                         0.136694982  -0.242125004   0.010259059  -0.030061991   0.105261261  -0.060676289  -0.063385096   0.167703720

   32    2.2  1.5 -1.5  -0.129897563   0.238315003   0.027487983  -0.036023830  -0.015560737  -0.018897070  -0.037455810   0.212779553
                        -0.355507937  -0.085617431   0.007317546   0.044824965   0.015804640   0.088998873  -0.001054156   0.179305359

   33    3.2  1.5 -1.5  -0.010996242   0.015807394  -0.035226916  -0.077806320   0.069318606  -0.008485876   0.070385792  -0.040922524
                         0.004460382  -0.011176975  -0.000650205   0.185051139  -0.014195306   0.033538370  -0.057537093  -0.001744325

   34    4.2  1.5 -1.5   0.025209763   0.017364147   0.007395530   0.098286980   0.237168925   0.103331152  -0.091239874   0.353852664
                        -0.016683895   0.010910393  -0.062884357   0.068817046   0.082075515  -0.012444071   0.058734934  -0.315825353

   35    5.2  1.5 -1.5   0.037721086   0.080656292   0.048550059  -0.062016728   0.014810381   0.099500093  -0.023801123  -0.004974508
                         0.043817576  -0.058519192  -0.014164555   0.048616948  -0.085395408  -0.185140361   0.077188147   0.090040389

   36    6.2  1.5 -1.5   0.038914031  -0.029921931   0.013410868   0.039022053  -0.260929433   0.189240657   0.118716050  -0.137573210
                         0.056848617   0.018743079  -0.025998786   0.055596563   0.339815592  -0.166751281  -0.131387002  -0.226530962

   37    7.2  1.5 -1.5  -0.028326876   0.031491185   0.008753585   0.418356249  -0.016946839   0.191964024  -0.161795239  -0.066773810
                         0.024560406   0.046929044   0.111931764   0.167404988  -0.140451641   0.062027948  -0.185296574   0.087369833

   38    8.2  1.5 -1.5   0.032255434  -0.046043975  -0.018347561   0.315905766  -0.079930054  -0.111948214  -0.009974923   0.023018666
                        -0.015251450  -0.040567465   0.009290191   0.162642272  -0.103640947  -0.103193126  -0.082787046   0.035275834


   Nr   State  S   Sz       33            34            35            36            37            38

    1    1.2  0.5  0.5  -0.004033430   0.003038469  -0.003748979   0.003075427  -0.005050577   0.004428246
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5   0.003789741   0.002126169  -0.002069319  -0.001445706  -0.003872298  -0.003095536
                        -0.003096345   0.002563084  -0.001310216  -0.003176778   0.001672220  -0.003639785

    3    3.2  0.5  0.5  -0.002743377  -0.001060711   0.001807610   0.000791961   0.001863958   0.001239252
                        -0.004590132  -0.000685954   0.002295028  -0.003645862  -0.004411692  -0.004086991

    4    1.2  0.5 -0.5  -0.000733786   0.000001923   0.004028789   0.004111464  -0.001498683  -0.001817428
                        -0.000571240   0.003010928   0.001316324  -0.002702976   0.003764295   0.004720216

    5    2.2  0.5 -0.5   0.002117870   0.002982896   0.001058826   0.001532797  -0.002281318  -0.002858280
                         0.000502552  -0.005755426  -0.000623480  -0.001669419  -0.004396858   0.002770401

    6    3.2  0.5 -0.5   0.001962108   0.002367357   0.004237796  -0.002976284  -0.004038216   0.004603506
                        -0.000638084   0.000484187   0.003661067   0.002386611  -0.000482210   0.000022434

    7    1.2  1.5  1.5   0.003796665  -0.067231441   0.096552307  -0.051706421   0.084136630  -0.054802994
                        -0.073890385  -0.004394620   0.017346670  -0.036471232  -0.066057155  -0.029035099

    8    2.2  1.5  1.5  -0.084056433   0.010232110   0.018559737  -0.039563514  -0.068292270  -0.035465708
                        -0.034538373   0.064190071  -0.106119437   0.056131219  -0.089309627   0.066200765

    9    3.2  1.5  1.5   0.167985766  -0.081379391   0.050632052   0.011720534  -0.001329213  -0.003659822
                         0.155648980   0.063496907  -0.088559101   0.029694585  -0.017524332   0.002944968

   10    4.2  1.5  1.5   0.108916354  -0.181927567   0.241305096  -0.089065714   0.178821524  -0.084130902
                        -0.178953266  -0.015409581   0.093558135  -0.145457608  -0.105644919  -0.105330551

   11    5.2  1.5  1.5  -0.096325091  -0.078398577   0.009841397   0.325604287  -0.121418227   0.253903387
                         0.021539209   0.096262334  -0.025453040  -0.226283961  -0.246258979  -0.200881274

   12    6.2  1.5  1.5  -0.168864237  -0.033920144   0.090839510  -0.109286394  -0.091925511  -0.073661303
                        -0.104478927   0.187900269  -0.232497497   0.092083504  -0.194890051   0.080439007

   13    7.2  1.5  1.5  -0.210242232  -0.030910294   0.096877187  -0.156843145  -0.120109845  -0.107626681
                         0.277792623  -0.054751277   0.040717476  -0.137421549   0.053324236  -0.121886500

   14    8.2  1.5  1.5  -0.125707273  -0.141480750   0.094178602   0.174740923   0.236674489   0.172092450
                         0.048356431  -0.139697759   0.061027828   0.280525417  -0.100788664   0.209859943

   15    1.2  1.5  0.5  -0.033509142   0.070649798  -0.047430378  -0.117275354   0.027980094  -0.016945985
                        -0.116355761  -0.076747374   0.075144604   0.098943630   0.056766910   0.026551124

   16    2.2  1.5  0.5   0.100928720  -0.034603560  -0.019131576   0.142754641   0.028372539   0.032391736
                        -0.113074711   0.023734641  -0.028466814   0.108199314  -0.026513205   0.030568352

   17    3.2  1.5  0.5  -0.025003752   0.048358987  -0.059892756   0.015029849   0.090441531  -0.056455888
                         0.030406375   0.000149438  -0.021372508   0.023018574  -0.040528721  -0.058127260

   18    4.2  1.5  0.5   0.270993068  -0.099942319   0.076334872   0.038829644  -0.086711884   0.222564634
                         0.235564635   0.100441305  -0.110564772   0.041841092  -0.235889431  -0.170224329

   19    5.2  1.5  0.5   0.012526853   0.258450229   0.201545337   0.065215272   0.025664676  -0.012799687
                         0.013342094   0.171139866   0.167776276   0.060946412  -0.000216422   0.018537748

   20    6.2  1.5  0.5  -0.232976826  -0.096899474   0.168221460  -0.060601324  -0.202722688  -0.189461281
                         0.268803831  -0.100033523   0.077919485   0.009507281   0.073651603  -0.230405737

   21    7.2  1.5  0.5   0.153290388   0.105120947   0.020003635   0.155080955   0.140586048   0.152755021
                         0.068813706  -0.274981875   0.083220727  -0.134023990   0.279180757  -0.160862261

   22    8.2  1.5  0.5   0.053425480  -0.147951179  -0.178022237   0.011975987   0.095254282   0.095336551
                         0.071130978   0.138913370   0.296282857  -0.005198548   0.168396252  -0.110186465

   23    1.2  1.5 -0.5   0.041436470  -0.185249073   0.007310379  -0.065612742  -0.037672559   0.031265481
                        -0.074957137  -0.069303295   0.020443658  -0.084839060   0.010845100   0.035283116

   24    2.2  1.5 -0.5   0.041423388  -0.022742594  -0.116767683   0.036323419   0.003052150  -0.032738081
                         0.065284344   0.035979808   0.190128539  -0.002417687  -0.030839297   0.005068543

   25    3.2  1.5 -0.5   0.029542893   0.007615208  -0.008055928  -0.076581102   0.031889103  -0.068441966
                         0.003336924  -0.029066275   0.011383307   0.046160314   0.080511560   0.061425528

   26    4.2  1.5 -0.5   0.002486406   0.265012641   0.175346326   0.049789575   0.255697960  -0.178533051
                         0.029869674   0.182234677   0.155719875   0.046416399  -0.150757016  -0.161116216

   27    5.2  1.5 -0.5  -0.246390136   0.090624276  -0.097148125  -0.038695891  -0.017014213   0.011014570
                        -0.234381384  -0.095714862   0.143111097  -0.042398369   0.014372780   0.004291072

   28    6.2  1.5 -0.5   0.018091490   0.184039574   0.188423130   0.088609768   0.132844129   0.154390552
                        -0.031708189  -0.227013154  -0.227026116  -0.068935141   0.251709234  -0.162582030

   29    7.2  1.5 -0.5   0.117032651   0.163910408  -0.128662911  -0.139176366   0.191019872   0.212541068
                        -0.038276127   0.131988910  -0.065861202  -0.250623884  -0.074972156   0.239099377

   30    8.2  1.5 -0.5  -0.211953573  -0.017145083   0.091916088  -0.152323791   0.135981590   0.112353712
                         0.275383670  -0.058078494   0.048531421  -0.129297813  -0.053949425   0.132196665

   31    1.2  1.5 -1.5   0.038606120   0.055057522  -0.009332976  -0.118610155  -0.009899117   0.084894221
                         0.010542012  -0.036928279   0.026984416   0.050837162  -0.064748004  -0.047829426

   32    2.2  1.5 -1.5  -0.011343054   0.049435959  -0.016818643  -0.070113392   0.069164470   0.059299581
                         0.045963756   0.054624348  -0.016609703  -0.132537344  -0.010800223   0.087812507

   33    3.2  1.5 -1.5  -0.011585345  -0.157077193  -0.138463104  -0.050504881   0.000601211   0.014346174
                        -0.024551946  -0.113452185  -0.105054629  -0.046365289   0.002280058   0.004119513

   34    4.2  1.5 -1.5   0.119619421   0.074118656  -0.012380347  -0.301196379  -0.065467121   0.157437135
                        -0.007076369  -0.137283510   0.065754398   0.221901863  -0.105834049  -0.128038082

   35    5.2  1.5 -1.5   0.081864033  -0.219636930   0.284102522  -0.072549665  -0.271413809   0.171580606
                        -0.171229914  -0.030559246   0.124890618  -0.098630078   0.147392604   0.204020517

   36    6.2  1.5 -1.5   0.004786138   0.123229383  -0.042068207  -0.213189912   0.095450099   0.141722544
                         0.096050633   0.082171577  -0.024755523  -0.283028463  -0.037398929   0.151752654

   37    7.2  1.5 -1.5   0.049665251  -0.131140067  -0.199604292  -0.006612890  -0.063315387  -0.099361500
                         0.061874192   0.108660299   0.322750849  -0.002655622  -0.133811607   0.090284790

   38    8.2  1.5 -1.5  -0.163508183  -0.116697034   0.034554853  -0.119850028   0.123142009   0.178649486
                        -0.069364994   0.303261573  -0.139447601   0.122314042   0.235567710  -0.169393923


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5  40.834%   7.145%  15.086%   3.596%  24.968%   8.361%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5  18.337%  28.219%   2.524%  17.580%   3.038%  30.291%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5  19.866%  18.833%  27.177%   0.784%   7.691%  25.638%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   1.722%   7.168%  34.134%  23.637%   8.361%  24.968%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5  14.191%  32.320%   3.151%  16.998%  30.291%   3.038%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   5.041%   6.306%  17.918%  37.395%  25.638%   7.691%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.112%   5.641%   4.000%   3.638%
    8    2.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.666%  30.647%   5.007%   1.501%
    9    3.2  1.5  1.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   1.246%   0.303%   1.713%   3.849%
   10    4.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.191%   6.143%   0.958%   0.043%
   11    5.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.710%   0.192%   0.197%   0.045%
   12    6.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.080%   0.256%   0.177%   0.504%
   13    7.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.159%   0.095%   0.060%   0.571%
   14    8.2  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.821%   0.008%   0.682%   0.468%
   15    1.2  1.5  0.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   4.218%   1.631%   0.509%   2.356%
   16    2.2  1.5  0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%  13.311%   0.011%   7.731%   4.366%
   17    3.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   2.616%  24.363%   1.491%   1.909%
   18    4.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   1.358%   0.084%   0.636%   0.090%
   19    5.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.092%   1.225%   0.967%   0.341%
   20    6.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   1.250%   0.016%   0.650%   0.193%
   21    7.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.306%   1.271%   0.315%   0.352%
   22    8.2  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.532%   0.580%   0.795%   1.853%
   23    1.2  1.5 -0.5   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%  12.350%   2.170%   3.958%   4.373%
   24    2.2  1.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   3.183%  11.647%   8.024%  12.928%
   25    3.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  28.214%   1.203%  11.049%   1.312%
   26    4.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.308%   1.252%   0.011%   0.043%
   27    5.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.727%   0.062%   1.394%   0.874%
   28    6.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.034%   1.291%   0.137%   0.278%
   29    7.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.549%   0.158%   0.458%   0.901%
   30    8.2  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.293%   0.210%   1.580%   2.525%
   31    1.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.926%   1.840%  14.260%  18.709%
   32    2.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.226%   3.469%  19.312%  18.555%
   33    3.2  1.5 -1.5   0.000%   0.001%   0.001%   0.001%   0.000%   0.000%   8.329%   2.115%   8.077%  11.058%
   34    4.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.973%   0.524%   2.094%   2.145%
   35    5.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.166%   0.310%   0.061%   0.075%
   36    6.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.221%   0.111%   1.844%   1.688%
   37    7.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.519%   0.202%   0.971%   1.483%
   38    8.2  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.316%   0.972%   0.881%   0.974%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5  20.421%  12.787%   9.271%   0.824%   0.956%   0.373%   1.042%   0.369%   0.089%   0.047%
    8    2.2  1.5  1.5   6.572%   3.632%   7.501%   0.365%   0.757%   0.156%   0.582%   0.146%   0.029%   0.010%
    9    3.2  1.5  1.5  13.759%  13.810%   1.261%   9.314%  12.950%   0.281%   0.927%   0.743%   3.627%   2.922%
   10    4.2  1.5  1.5   0.746%   0.023%   8.899%   2.269%   1.821%   0.561%   5.009%   1.721%   1.445%   1.475%
   11    5.2  1.5  1.5   0.002%   0.178%   1.593%   1.269%   5.107%  12.438%   1.718%  16.244%   9.672%   2.152%
   12    6.2  1.5  1.5   3.010%   2.651%   0.966%   0.189%   1.972%   1.897%   0.564%   4.298%   5.200%   3.704%
   13    7.2  1.5  1.5   2.297%   3.021%   1.302%   0.127%   4.184%   4.744%   5.612%   0.853%   1.365%   0.250%
   14    8.2  1.5  1.5   0.729%   0.349%   1.584%   8.259%   1.256%   9.724%   1.107%  15.611%   5.774%   2.303%
   15    1.2  1.5  0.5  12.377%  18.059%   1.997%  15.904%   1.393%   0.187%   0.062%   0.488%   1.866%   1.202%
   16    2.2  1.5  0.5  11.110%   2.003%   2.228%   2.976%   9.478%   1.025%   1.279%   2.383%   0.603%   0.962%
   17    3.2  1.5  0.5  10.916%   9.726%   1.759%   0.288%   0.138%   0.002%   0.021%   0.084%   0.047%   0.023%
   18    4.2  1.5  0.5   0.075%   0.567%   7.929%   0.045%   9.873%   1.959%   1.009%   7.360%   0.877%   2.451%
   19    5.2  1.5  0.5   0.623%   1.946%   2.413%   0.291%   1.568%   1.652%   3.569%   0.177%   2.333%   4.019%
   20    6.2  1.5  0.5   0.211%   0.282%   0.906%   0.341%  10.377%   3.747%  10.918%   2.069%   7.110%   7.551%
   21    7.2  1.5  0.5   0.320%   0.120%   2.746%   0.633%   2.945%   1.838%   8.486%  10.476%   5.732%   5.753%
   22    8.2  1.5  0.5   1.264%   0.293%   1.811%   6.129%   0.174%   0.240%   3.367%   0.684%   1.246%   0.009%
   23    1.2  1.5 -0.5   5.226%   9.022%  14.805%   0.971%   1.662%   2.368%   0.526%   1.544%   1.234%   0.036%
   24    2.2  1.5 -0.5   2.243%   0.241%   7.038%   0.855%   0.831%   0.431%   1.619%   0.052%   1.447%   0.003%
   25    3.2  1.5 -0.5   0.718%   7.586%   0.206%   1.713%   0.623%   0.100%   0.024%   0.295%   0.076%   0.123%
   26    4.2  1.5 -0.5   0.875%   0.421%   0.047%  13.082%   0.104%   6.295%   1.137%   0.070%   1.368%   4.328%
   27    5.2  1.5 -0.5   1.530%   1.789%   0.130%   0.551%   5.093%   0.454%   1.282%   2.690%   3.417%   6.664%
   28    6.2  1.5 -0.5   0.769%   0.215%   0.624%   1.598%   1.060%   3.160%  13.825%   8.865%   4.490%  10.689%
   29    7.2  1.5 -0.5   0.264%   0.520%   0.196%   1.797%   3.282%   5.557%  10.990%   5.012%   7.096%   2.464%
   30    8.2  1.5 -0.5   0.881%   0.193%   4.645%   2.165%   1.050%   1.421%   0.997%   0.564%   2.306%   8.433%
   31    1.2  1.5 -1.5   0.238%   3.969%   2.159%   6.667%   0.925%   0.483%   0.476%   1.335%   0.091%   0.030%
   32    2.2  1.5 -1.5   0.979%   0.295%   1.499%   5.444%   1.113%   0.328%   0.183%   0.877%   0.102%   0.021%
   33    3.2  1.5 -1.5   0.843%   3.831%   0.924%   0.617%   0.718%   4.420%   1.529%   1.147%   4.092%   0.010%
   34    4.2  1.5 -1.5   0.219%   0.070%   5.167%   4.992%   1.845%   2.675%   1.556%   1.265%   3.611%   9.702%
   35    5.2  1.5 -1.5   0.193%   0.224%   0.360%   1.414%   3.840%  14.130%   8.862%   1.741%   8.819%   6.402%
   36    6.2  1.5 -1.5   0.040%   1.032%   0.017%   0.001%   7.160%   1.921%   6.972%   5.280%   6.642%   2.260%
   37    7.2  1.5 -1.5   0.212%   1.122%   1.860%   1.082%   1.185%   1.747%   0.978%   4.738%   4.594%  12.965%
   38    8.2  1.5 -1.5   0.340%   0.025%   6.154%   7.825%   4.561%  13.685%   3.771%   0.819%   3.599%   1.038%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.2  1.5  1.5   0.200%   1.473%   1.225%   3.293%   7.213%  15.126%   2.059%   0.329%   0.780%   0.954%
    8    2.2  1.5  1.5   0.335%   2.425%   1.613%   2.448%   7.122%  14.774%   1.525%   1.002%   0.637%   0.533%
    9    3.2  1.5  1.5   2.867%   1.143%  10.643%   5.275%   0.025%   0.018%   4.085%   0.261%   0.046%   0.505%
   10    4.2  1.5  1.5   4.127%   5.373%   1.237%   0.112%   0.066%   0.151%   2.159%   5.432%   1.005%   8.384%
   11    5.2  1.5  1.5   1.231%   1.752%   0.080%   0.274%   0.891%   0.442%   0.283%   0.266%   4.152%   0.890%
   12    6.2  1.5  1.5   0.585%   8.144%   6.437%   2.066%   0.150%   0.479%   7.881%   0.270%   5.246%  13.680%
   13    7.2  1.5  1.5   2.873%   1.841%  10.158%   3.187%   0.470%   0.096%  21.165%   1.085%   0.738%   3.528%
   14    8.2  1.5  1.5   0.053%   0.225%   0.865%   0.892%   0.450%   0.400%   9.307%   1.565%   4.587%   0.162%
   15    1.2  1.5  0.5   7.149%   4.041%   4.375%   1.301%   4.882%   2.954%   2.640%   0.054%   1.497%   1.068%
   16    2.2  1.5  0.5   2.719%   0.960%  10.293%   4.108%   7.335%   2.546%   3.131%   0.609%   1.962%   0.059%
   17    3.2  1.5  0.5   0.221%   1.403%   0.262%   0.689%  10.110%  23.248%   0.594%   0.699%   0.475%   5.324%
   18    4.2  1.5  0.5   7.064%   2.112%   2.814%   4.373%   0.469%   0.236%   0.224%   0.648%  10.759%   1.740%
   19    5.2  1.5  0.5   0.012%  13.350%   2.795%   0.977%   0.123%   0.038%   9.250%  25.642%   0.111%   1.361%
   20    6.2  1.5  0.5   0.964%   1.082%   3.478%   0.040%   0.278%   0.158%   1.322%   1.799%  11.300%   0.329%
   21    7.2  1.5  0.5   3.337%   0.926%   4.112%   1.528%   0.272%   0.406%   0.190%   0.324%   1.241%   4.475%
   22    8.2  1.5  0.5  12.845%   4.680%   1.868%   5.476%   0.231%   0.632%   3.084%   5.334%   6.317%   1.317%
   23    1.2  1.5 -0.5   4.379%  11.293%   2.170%   1.438%   1.653%   5.760%   0.386%   2.211%   0.244%   2.119%
   24    2.2  1.5 -0.5   1.182%   1.022%   5.204%  20.536%   2.236%   6.744%   0.005%   4.327%   0.647%   1.204%
   25    3.2  1.5 -0.5   0.904%   0.363%   0.655%   0.125%  24.643%   9.638%   0.096%   0.264%   5.626%   0.488%
   26    4.2  1.5 -0.5  16.220%   1.547%   3.291%   0.591%   0.151%   0.467%   1.040%   0.055%   0.794%  11.629%
   27    5.2  1.5 -0.5   0.049%   2.889%   5.134%   4.432%   0.134%   0.011%  15.335%   3.317%   0.821%   7.972%
   28    6.2  1.5 -0.5   0.482%   2.702%   0.036%   0.891%   0.124%   0.389%   0.189%   3.705%   1.062%  10.608%
   29    7.2  1.5 -0.5   6.608%   0.920%   1.959%   2.506%   0.377%   0.175%   1.992%   0.064%   1.891%   0.423%
   30    8.2  1.5 -0.5   3.840%   6.149%   3.312%   2.889%   0.250%   0.100%   9.797%   0.833%   6.342%   0.832%
   31    1.2  1.5 -1.5   3.064%   1.731%   3.653%   0.791%  14.838%   6.704%   0.011%   0.093%   2.050%   1.221%
   32    2.2  1.5 -1.5   3.010%   1.877%   2.370%   0.747%  14.326%   6.412%   0.081%   0.331%   0.049%   0.828%
   33    3.2  1.5 -1.5   7.426%   6.386%   5.541%  19.773%   0.014%   0.037%   0.124%   4.030%   0.501%   0.120%
   34    4.2  1.5 -1.5   0.509%   2.643%   0.810%   0.190%   0.091%   0.042%   0.401%   1.440%   6.299%   1.083%
   35    5.2  1.5 -1.5   0.248%   1.058%   2.986%   3.973%   0.334%   0.993%   0.256%   0.621%   0.751%   4.418%
   36    6.2  1.5 -1.5   0.393%   4.221%   0.020%   1.877%   0.475%   0.125%   0.086%   0.461%  18.356%   6.362%
   37    7.2  1.5 -1.5   3.861%   3.469%   0.030%   0.693%   0.141%   0.319%   1.261%  20.305%   2.001%   4.070%
   38    8.2  1.5 -1.5   1.245%   0.798%   0.575%   2.508%   0.127%   0.377%   0.042%  12.625%   1.713%   2.318%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38

    1    1.2  0.5  0.5   0.000%   0.000%   0.002%   0.001%   0.001%   0.001%   0.003%   0.002%
    2    2.2  0.5  0.5   0.000%   0.000%   0.002%   0.001%   0.001%   0.001%   0.002%   0.002%
    3    3.2  0.5  0.5   0.000%   0.000%   0.003%   0.000%   0.001%   0.001%   0.002%   0.002%
    4    1.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.002%   0.002%   0.002%   0.003%
    5    2.2  0.5 -0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.001%   0.002%   0.002%
    6    3.2  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.003%   0.001%   0.002%   0.002%
    7    1.2  1.5  1.5   3.483%   0.400%   0.547%   0.454%   0.962%   0.400%   1.144%   0.385%
    8    2.2  1.5  1.5   5.286%   0.021%   0.826%   0.423%   1.161%   0.472%   1.264%   0.564%
    9    3.2  1.5  1.5   0.576%   0.363%   5.245%   1.065%   1.041%   0.102%   0.031%   0.002%
   10    4.2  1.5  1.5  16.634%   0.554%   4.389%   3.334%   6.698%   2.909%   4.314%   1.817%
   11    5.2  1.5  1.5   0.944%   0.940%   0.974%   1.541%   0.074%  15.722%   7.539%  10.482%
   12    6.2  1.5  1.5   5.898%   2.000%   3.943%   3.646%   6.231%   2.042%   4.643%   1.190%
   13    7.2  1.5  1.5   4.243%   3.620%  12.137%   0.395%   1.104%   4.348%   1.727%   2.644%
   14    8.2  1.5  1.5   0.865%   0.019%   1.814%   3.953%   1.259%  10.923%   6.617%   7.366%
   15    1.2  1.5  0.5   0.660%   0.932%   1.466%   1.088%   0.790%   2.354%   0.401%   0.099%
   16    2.2  1.5  0.5   0.581%   0.079%   2.297%   0.176%   0.118%   3.209%   0.151%   0.198%
   17    3.2  1.5  0.5   0.626%   0.455%   0.155%   0.234%   0.404%   0.076%   0.982%   0.657%
   18    4.2  1.5  0.5   1.461%   2.581%  12.893%   2.008%   1.805%   0.326%   6.316%   7.851%
   19    5.2  1.5  0.5   4.594%   2.100%   0.033%   9.609%   6.877%   0.797%   0.066%   0.051%
   20    6.2  1.5  0.5   0.945%   0.724%  12.653%   1.940%   3.437%   0.376%   4.652%   8.898%
   21    7.2  1.5  0.5  10.564%   0.215%   2.823%   8.667%   0.733%   4.201%   9.771%   4.921%
   22    8.2  1.5  0.5  16.335%   0.161%   0.791%   4.119%  11.948%   0.017%   3.743%   2.123%
   23    1.2  1.5 -0.5   1.433%   0.446%   0.734%   3.912%   0.047%   1.150%   0.154%   0.222%
   24    2.2  1.5 -0.5   0.066%   0.189%   0.598%   0.181%   4.978%   0.133%   0.096%   0.110%
   25    3.2  1.5 -0.5   0.713%   0.651%   0.088%   0.090%   0.019%   0.800%   0.750%   0.846%
   26    4.2  1.5 -0.5   2.860%   1.022%   0.090%  10.344%   5.500%   0.463%   8.811%   5.783%
   27    5.2  1.5 -0.5   6.305%  10.258%  11.564%   1.737%   2.992%   0.329%   0.050%   0.014%
   28    6.2  1.5 -0.5   0.592%   0.420%   0.133%   8.541%   8.704%   1.260%   8.101%   5.027%
   29    7.2  1.5 -0.5   0.585%  12.556%   1.516%   4.429%   2.089%   8.218%   4.211%  10.234%
   30    8.2  1.5 -0.5   0.335%  15.390%  12.076%   0.367%   1.080%   3.992%   2.140%   3.010%
   31    1.2  1.5 -1.5   0.738%   4.273%   0.160%   0.440%   0.082%   1.665%   0.429%   0.949%
   32    2.2  1.5 -1.5   0.140%   7.743%   0.224%   0.543%   0.056%   2.248%   0.490%   1.123%
   33    3.2  1.5 -1.5   0.826%   0.168%   0.074%   3.754%   3.021%   0.470%   0.001%   0.022%
   34    4.2  1.5 -1.5   1.177%  22.496%   1.436%   2.434%   0.448%  13.996%   1.549%   4.118%
   35    5.2  1.5 -1.5   0.652%   0.813%   3.602%   4.917%   9.631%   1.499%   9.539%   7.106%
   36    6.2  1.5 -1.5   3.136%   7.024%   0.925%   2.194%   0.238%  12.556%   1.051%   4.311%
   37    7.2  1.5 -1.5   6.051%   1.209%   0.630%   2.900%  14.401%   0.005%   2.191%   1.802%
   38    8.2  1.5 -1.5   0.695%   0.177%   3.155%  10.559%   2.064%   2.932%   7.066%   6.061%


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
              1      24     5562.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     7046.41       700     1000      520     2100     2140     5203     5303   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    349097.78 201456.06    115.18 118604.16  28882.88     17.86      4.26     17.18
 REAL TIME  *    358693.33 SEC
 DISK USED  *         7.01 GB (local),       40.07 GB (total)
 SF USED    *        55.17 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-X2C energy=  -2605.273782701740

              CI              CI           MULTI         RHF-SCF
  -2605.22279492  -2605.56061883  -2604.20131190  -2604.60950959
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
