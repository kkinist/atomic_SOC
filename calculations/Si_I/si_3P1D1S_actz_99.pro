
 Working directory              : /wrk/irikura/molpro.CNuivDGGGi/
 Global scratch directory       : /wrk/irikura/molpro.CNuivDGGGi/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.CNuivDGGGi/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Si SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Si};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=14,sym=1,spin=2}
 
 {multi
     wf,sym=1,spin=2;state,3;
 weight,all,99
     wf,sym=1,spin=0;state,6;
 weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5102.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,6; save,5101.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5102.2,5101.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Si SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 23-Feb-24          TIME: 17:52:04  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SI     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SI     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SI     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry SI     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  SI     14.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   14
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

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     6.816 MB (compressed) written to integral file ( 19.3%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     12 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      172985.  Node maximum:      175449. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910

 Eigenvalues of metric

         1 0.221E-02 0.681E-02 0.586E-01 0.168E+00 0.168E+00 0.168E+00 0.168E+00 0.168E+00
         2 0.131E-01 0.131E-01 0.131E-01 0.287E-01 0.287E-01 0.287E-01 0.105E+00 0.105E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.68      0.45
 REAL TIME  *         1.22 SEC
 DISK USED  *        29.14 MB (local),      400.68 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   5
 Initial beta  occupancy:   3   3

 NELEC=   14   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -289.44294747    -289.44294747     0.00D+00     0.13D+00     0     0       0.00      0.00    start
   2     -289.45368710      -0.01073964     0.25D-02     0.98D-02     1     0       0.00      0.00    diag2
   3     -289.45491227      -0.00122516     0.94D-03     0.28D-02     2     0       0.01      0.01    diag2
   4     -289.45514213      -0.00022986     0.35D-03     0.14D-02     3     0       0.00      0.01    diag2
   5     -289.45517477      -0.00003265     0.13D-03     0.85D-03     4     0       0.00      0.01    diag2
   6     -289.45517525      -0.00000047     0.19D-04     0.16D-03     5     0       0.00      0.01    diag2
   7     -289.45517525      -0.00000000     0.18D-05     0.10D-04     6     0       0.01      0.02    diag2
   8     -289.45517525      -0.00000000     0.29D-06     0.18D-05     7     0       0.00      0.02    fixocc
   9     -289.45517525      -0.00000000     0.25D-07     0.26D-06     0     0       0.00      0.02    diag

 Final alpha occupancy:   3   5
 Final beta  occupancy:   3   3

 !RHF STATE 1.1 Energy               -289.455175250792
  RHF One-electron energy            -401.378079999742
  RHF Two-electron energy             111.922904748950
  RHF Kinetic energy                  293.246498577843
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.987071206833

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.97749     1  1  s    0.99951
    2.1     2.00000    -6.18343     1  2  s    0.99996
    3.1     2.00000    -0.54237     1  3  s    1.00893
    1.2     2.00000    -4.25613     1  1  px   0.99766
    2.2     2.00000    -4.25495     1  1  pz   1.00098
    3.2     2.00000    -4.25495     1  1  py   1.00103
    4.2     1.00000    -0.29682     1  2  py   1.00923
    5.2     1.00000    -0.29682     1  2  pz   1.00918


 HOMO      5.2    -0.296819 =      -8.0769eV
 LUMO      6.2    -0.016452 =      -0.4477eV
 LUMO-HOMO         0.280368 =       7.6292eV

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
 CPU TIMES  *         0.74      0.05      0.45
 REAL TIME  *         2.38 SEC
 DISK USED  *        29.72 MB (local),      407.64 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.305D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.208D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.140D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   6 2 4 3 5 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.245D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.185D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.137D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.120D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.167D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.284D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 3   2 1 7 910 4 8 5 6 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    443
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    6   10    0   -289.44457659    -289.46441671   -0.01984011    0.06487438 0.00001422 0.00000000  0.35E+00      0.13
   2    6   10    0   -289.46428346    -289.46430473   -0.00002127    0.00631707 0.00000022 0.00000000  0.73E-02      0.30
   3    4    8    0   -289.46430475    -289.46430475   -0.00000000    0.00000865 0.00000001 0.00000000  0.11E-04      0.41

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.76E-08)
                       Final energy:   -289.46430475
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -289.465202311225
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25537498
 One electron energy                          -401.40636676
 Two electron energy                           111.94116445
 Virial ratio                                    1.98707552
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -289.465202310665
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25537501
 One electron energy                          -401.40636683
 Two electron energy                           111.94116452
 Virial ratio                                    1.98707552
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -289.465202310441
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25537502
 One electron energy                          -401.40636686
 Two electron energy                           111.94116455
 Virial ratio                                    1.98707552
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -289.425067493155
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25537498
 One electron energy                          -401.40636676
 Two electron energy                           111.98129926
 Virial ratio                                    1.98693866
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -289.425067493136
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25537498
 One electron energy                          -401.40636676
 Two electron energy                           111.98129927
 Virial ratio                                    1.98693866
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -289.425067492129
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25537501
 One electron energy                          -401.40636683
 Two electron energy                           111.98129934
 Virial ratio                                    1.98693866
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -289.425067491723
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25537502
 One electron energy                          -401.40636686
 Two electron energy                           111.98129937
 Virial ratio                                    1.98693866
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -289.425067491475
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25537503
 One electron energy                          -401.40636688
 Two electron energy                           111.98129939
 Virial ratio                                    1.98693866
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -289.393914550002
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.22175476
 One electron energy                          -401.30012793
 Two electron energy                           111.90621338
 Virial ratio                                    1.98694558
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000002
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999997
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.523626162433
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999982
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000068
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.476373625329
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999998
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.920388147874
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000004
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999999989
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.079611913175
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000003
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.555985689694
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000014
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999999942
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.444014461496
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 5 3 1   3 5 6 4 2 4 2 6 5 3   1 2 4 6 5 3 1 4 2 6   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 2   1 3 9 7 5 410 8 6 4   6 810 5 9 7 3 1 2 4   610 8 5 9 7 3 1 2 3
                                        1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.97386     1  1  s    0.99951
    2.1     2.00000    -6.17997     1  2  s    0.99979
    3.1     1.96601    -0.53519     1  3  s    1.01245
    1.2     2.00000    -4.25240     1  1  pz   0.99999
    2.2     2.00000    -4.25240     1  1  px   0.99999
    3.2     2.00000    -4.25240     1  1  py   0.99999
    4.2     0.67800    -0.06502     1  2  py   1.02973
    5.2     0.67800    -0.06502     1  2  px   1.02973
    6.2     0.67800    -0.06502     1  2  pz   1.02973
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa0         -0.00000000     -0.00000029      0.99153629
 2 a0a         -0.00000000      0.99153629      0.00000029
 2 0aa          0.99153629      0.00000000     -0.00000000
 0 2aa         -0.12982987     -0.00000000     -0.00000000
 0 a2a         -0.00000000     -0.12982986     -0.00000004
 0 aa2         -0.00000000      0.00000004     -0.12982986
 
 Energy:     -289.46520231   -289.46520231   -289.46520231
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 200         -0.11421465      0.00000067      0.00000146     -0.00000286      0.80148890      0.56013630
 2 002          0.75121710     -0.00000437     -0.00000060      0.00000120     -0.30183168      0.56013625
 2 ab0         -0.00000013      0.00000000     -0.00000037      0.70112203      0.00000248      0.00000000
 2 ba0          0.00000013     -0.00000000      0.00000037     -0.70112203     -0.00000248     -0.00000000
 2 a0b          0.00000005     -0.00000000      0.70112203      0.00000037     -0.00000127     -0.00000000
 2 b0a         -0.00000005      0.00000000     -0.70112203     -0.00000037      0.00000127      0.00000000
 2 0ba         -0.00000408     -0.70112203     -0.00000000      0.00000000     -0.00000000      0.00000000
 2 0ab          0.00000408      0.70112203      0.00000000     -0.00000000      0.00000000     -0.00000000
 2 020         -0.63700242      0.00000371     -0.00000086      0.00000165     -0.49965727      0.56013626
 0 220          0.09836293     -0.00000057     -0.00000008      0.00000016     -0.03952125     -0.13993103
 0 202         -0.08340788      0.00000049     -0.00000011      0.00000022     -0.06542416     -0.13993102
 0 022         -0.01495505      0.00000009      0.00000019     -0.00000037      0.10494543     -0.13993102
 0 2ba          0.00000053      0.09180358      0.00000000     -0.00000000      0.00000000      0.00000000
 0 2ab         -0.00000053     -0.09180358     -0.00000000      0.00000000     -0.00000000     -0.00000000
 0 a2b         -0.00000001      0.00000000     -0.09180358     -0.00000005      0.00000017      0.00000000
 0 b2a          0.00000001     -0.00000000      0.09180358      0.00000005     -0.00000017     -0.00000000
 0 ab2          0.00000002     -0.00000000      0.00000005     -0.09180358     -0.00000032     -0.00000000
 0 ba2         -0.00000002      0.00000000     -0.00000005      0.09180358      0.00000032      0.00000000
 
 Energy:     -289.42506749   -289.42506749   -289.42506749   -289.42506749   -289.42506749   -289.39391455
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.67       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.17      0.42      0.05      0.45
 REAL TIME  *         2.93 SEC
 DISK USED  *        31.13 MB (local),      424.59 MB (total)
 SF USED    *         4.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -289.4652023   2.0
    -289.4652023   2.0
    -289.4652023   2.0
    -289.4250675   6.0
    -289.4250675   6.0
    -289.4250675   6.0
    -289.4250675   6.0
    -289.4250675   6.0
    -289.3939146   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 14
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      161 conf      267 CSFs
 N-1 el internal:      222 conf      690 CSFs
 N-2 el internal:      122 conf      670 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.46520231
     2      -289.46520231
     3      -289.46520231

 Number of blocks in overlap matrix:   117   Smallest eigenvalue:  0.17D-01
 Number of N-2 electron functions:     162
 Number of N-1 electron functions:     690

 Number of internal configurations:                  132
 Number of singly external configurations:         22788
 Number of doubly external configurations:        176994
 Total number of contracted configurations:       199914
 Total number of uncontracted configurations:     749106

 Diagonal Coupling coefficients finished.               Storage:    238061 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    259818 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.46520231     0.00000000    -0.33630929  0.40D-01  0.28D-01     0.04
    1     2     2     1.00000000     0.00000000  -289.46520231    -0.00000000    -0.33653812  0.41D-01  0.28D-01     0.04
    1     3     3     1.00000000     0.00000000  -289.46520231     0.00000000    -0.33688434  0.41D-01  0.28D-01     0.04
    2     1     1     1.05774122    -0.30955875  -289.77476106    -0.30955875    -0.00366403  0.11D-02  0.52D-03     0.40
    2     2     2     1.05804987    -0.30949714  -289.77469945    -0.30949714    -0.00373318  0.11D-02  0.52D-03     0.40
    2     3     3     1.05852532    -0.30940237  -289.77460468    -0.30940237    -0.00383636  0.12D-02  0.53D-03     0.40
    3     1     1     1.05092749    -0.31317557  -289.77837788    -0.00361682    -0.00008661  0.11D-04  0.20D-04     0.76
    3     2     2     1.05095402    -0.31317383  -289.77837614    -0.00367669    -0.00008798  0.12D-04  0.20D-04     0.76
    3     3     3     1.05099004    -0.31317157  -289.77837388    -0.00376921    -0.00008974  0.12D-04  0.21D-04     0.76
    4     1     1     1.05141838    -0.31327498  -289.77847729    -0.00009941    -0.00000460  0.51D-06  0.15D-05     1.09
    4     2     2     1.05141902    -0.31327485  -289.77847716    -0.00010101    -0.00000469  0.52D-06  0.16D-05     1.09
    4     3     3     1.05141995    -0.31327469  -289.77847700    -0.00010312    -0.00000479  0.53D-06  0.16D-05     1.09
    5     1     1     1.05162318    -0.31328095  -289.77848326    -0.00000596    -0.00000038  0.56D-07  0.94D-07     1.40
    5     2     2     1.05162271    -0.31328094  -289.77848325    -0.00000609    -0.00000039  0.57D-07  0.96D-07     1.40
    5     3     3     1.05162197    -0.31328093  -289.77848324    -0.00000624    -0.00000040  0.59D-07  0.98D-07     1.40
    6     1     1     1.05158057    -0.31328141  -289.77848372    -0.00000047    -0.00000002  0.27D-08  0.47D-08     1.72
    6     2     2     1.05158016    -0.31328141  -289.77848372    -0.00000047    -0.00000002  0.28D-08  0.48D-08     1.72
    6     3     3     1.05157959    -0.31328141  -289.77848372    -0.00000048    -0.00000002  0.28D-08  0.48D-08     1.72


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.7%
 S   0.6%   1.7%
 P   0.0%  21.5%  21.5%

 Initialization:   2.3%
 Other:           50.6%

 Total CPU:        1.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//0           0.0000000  -0.0000000   0.9681627
 22222/0/          -0.0000000   0.9681625   0.0000000
 222220//           0.9681623   0.0000000  -0.0000000
 20222//2          -0.0000000   0.0000000  -0.1164956
 20222/2/           0.0000000  -0.1164953  -0.0000000
 202222//          -0.1164949  -0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/222\0/  15.1     0.0000000   0.0513537   0.0000000
 2/2220\/  15.1     0.0513533  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.975093   -0.000000    0.000000
 2           0.000000    0.975093   -0.000000
 3          -0.000000    0.000000    0.975093

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.975093   -0.000000   -0.000000
 2          -0.000000    0.975093   -0.000000
 3          -0.000000   -0.000000    0.975093


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97509262 (fixed)   0.97514583 (relaxed)   0.97509262 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015132   -0.00024445   -0.25663447
 Singles      0.02621996   -0.04341615   -0.04909175
 Pairs        0.02536841   -0.00000000   -0.00755519
 Total        1.05173969   -0.04366061   -0.31328141
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46520231
 Nuclear energy                         0.00000000
 Kinetic energy                       293.46700227
 One electron energy                 -401.18610890
 Two electron energy                  111.40762517
 Virial quotient                       -0.98743123
 Correlation energy                    -0.31328141
 !MRCI STATE 1.1 Energy              -289.778483722529

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79469280 (Davidson, fixed reference)
 Cluster corrected energies          -289.79465684 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79469280 (Davidson, rotated reference)

 Cluster corrected energies          -289.79186034 (Pople, fixed reference)
 Cluster corrected energies          -289.79182974 (Pople, relaxed reference)
 Cluster corrected energies          -289.79186034 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97509281 (fixed)   0.97514602 (relaxed)   0.97509281 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015131   -0.00024445   -0.25663478
 Singles      0.02621948   -0.04341594   -0.04909159
 Pairs        0.02536849    0.00000000   -0.00755504
 Total        1.05173927   -0.04366039   -0.31328141
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46520231
 Nuclear energy                         0.00000000
 Kinetic energy                       293.46700204
 One electron energy                 -401.18611056
 Two electron energy                  111.40762684
 Virial quotient                       -0.98743123
 Correlation energy                    -0.31328141
 !MRCI STATE 2.1 Energy              -289.778483722244

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79469267 (Davidson, fixed reference)
 Cluster corrected energies          -289.79465672 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79469267 (Davidson, rotated reference)

 Cluster corrected energies          -289.79186023 (Pople, fixed reference)
 Cluster corrected energies          -289.79182963 (Pople, relaxed reference)
 Cluster corrected energies          -289.79186023 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97509308 (fixed)   0.97514629 (relaxed)   0.97509308 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015130   -0.00024445   -0.00027749
 Singles      0.02621878   -0.04341561   -0.04909137
 Pairs        0.02536862   -0.26962136   -0.26391255
 Total        1.05173870   -0.31328142   -0.31328141
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46520231
 Nuclear energy                         0.00000000
 Kinetic energy                       293.46700183
 One electron energy                 -401.18611082
 Two electron energy                  111.40762709
 Virial quotient                       -0.98743123
 Correlation energy                    -0.31328141
 !MRCI STATE 3.1 Energy              -289.778483721973

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79469249 (Davidson, fixed reference)
 Cluster corrected energies          -289.79465654 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79469249 (Davidson, rotated reference)

 Cluster corrected energies          -289.79186007 (Pople, fixed reference)
 Cluster corrected energies          -289.79182948 (Pople, relaxed reference)
 Cluster corrected energies          -289.79186007 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.56       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.02      1.84      0.42      0.05      0.45
 REAL TIME  *         5.27 SEC
 DISK USED  *        36.02 MB (local),      483.26 MB (total)
 SF USED    *        50.57 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -289.79469280  AU                              
 SETTING HLSDIAG(2)     =      -289.79469267  AU                              
 SETTING HLSDIAG(3)     =      -289.79469249  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 14
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      183 conf      236 CSFs
 N-1 el internal:      252 conf      504 CSFs
 N-2 el internal:      194 conf      516 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.42506749
     2      -289.42506749
     3      -289.42506749
     4      -289.42506749
     5      -289.42506749
     6      -289.39391455

 Number of blocks in overlap matrix:   173   Smallest eigenvalue:  0.32D-01
 Number of N-2 electron functions:     248
 Number of N-1 electron functions:     504

 Number of internal configurations:                  130
 Number of singly external configurations:         16668
 Number of doubly external configurations:        271428
 Total number of contracted configurations:       288226
 Total number of uncontracted configurations:     579574

 Diagonal Coupling coefficients finished.               Storage:    261335 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    263334 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.42506749    -0.00000000    -0.34545849  0.44D-01  0.32D-01     0.04
    1     2     2     1.00000000     0.00000000  -289.42506749     0.00000000    -0.34664283  0.46D-01  0.32D-01     0.04
    1     3     3     1.00000000     0.00000000  -289.42506749    -0.00000000    -0.34655504  0.45D-01  0.32D-01     0.04
    1     4     4     1.00000000     0.00000000  -289.42506749    -0.00000000    -0.34588884  0.44D-01  0.32D-01     0.04
    1     5     5     1.00000000     0.00000000  -289.42506749    -0.00000000    -0.34570023  0.44D-01  0.32D-01     0.04
    1     6     6     1.00000000     0.00000000  -289.39391455    -0.00000000    -0.33115077  0.13D-01  0.50D-01     0.04
    2     1     1     1.06371418    -0.31754722  -289.74261471    -0.31754722    -0.00523249  0.14D-02  0.99D-03     1.03
    2     2     2     1.06366157    -0.31750481  -289.74257230    -0.31750481    -0.00527576  0.14D-02  0.10D-02     1.03
    2     3     3     1.06387743    -0.31747081  -289.74253830    -0.31747081    -0.00532274  0.14D-02  0.99D-03     1.03
    2     4     4     1.06466477    -0.31720944  -289.74227693    -0.31720944    -0.00565064  0.16D-02  0.10D-02     1.03
    2     5     5     1.06480174    -0.31716163  -289.74222912    -0.31716163    -0.00571017  0.16D-02  0.10D-02     1.03
    2     6     6     1.05460655    -0.30927671  -289.70319126    -0.30927671    -0.00410977  0.14D-02  0.76D-03     1.03
    3     1     1     1.05794514    -0.32242054  -289.74748804    -0.00487333    -0.00013901  0.29D-04  0.24D-04     2.06
    3     2     2     1.05786061    -0.32241863  -289.74748612    -0.00491382    -0.00014131  0.30D-04  0.24D-04     2.06
    3     3     3     1.05792586    -0.32241506  -289.74748255    -0.00494424    -0.00014339  0.31D-04  0.25D-04     2.06
    3     4     4     1.05801830    -0.32241261  -289.74748010    -0.00520317    -0.00014647  0.30D-04  0.26D-04     2.06
    3     5     5     1.05802969    -0.32241205  -289.74747954    -0.00525042    -0.00014749  0.30D-04  0.26D-04     2.06
    3     6     6     1.05125331    -0.31314613  -289.70706068    -0.00386943    -0.00012834  0.13D-04  0.32D-04     2.06
    4     1     1     1.05949326    -0.32257631  -289.74764380    -0.00015576    -0.00000487  0.10D-05  0.11D-05     3.01
    4     2     2     1.05950075    -0.32257598  -289.74764348    -0.00015735    -0.00000504  0.11D-05  0.11D-05     3.01
    4     3     3     1.05948030    -0.32257567  -289.74764317    -0.00016062    -0.00000534  0.12D-05  0.13D-05     3.01
    4     4     4     1.05948116    -0.32257556  -289.74764306    -0.00016295    -0.00000540  0.12D-05  0.13D-05     3.01
    4     5     5     1.05949315    -0.32257553  -289.74764302    -0.00016348    -0.00000544  0.12D-05  0.12D-05     3.01
    4     6     6     1.05256892    -0.31328384  -289.70719839    -0.00013771    -0.00000486  0.57D-06  0.16D-05     3.01
    5     1     1     1.05989331    -0.32258196  -289.74764945    -0.00000565    -0.00000020  0.31D-07  0.47D-07     3.97
    5     2     2     1.05989915    -0.32258192  -289.74764941    -0.00000594    -0.00000023  0.41D-07  0.52D-07     3.97
    5     3     3     1.05989392    -0.32258191  -289.74764940    -0.00000623    -0.00000024  0.44D-07  0.56D-07     3.97
    5     4     4     1.05989997    -0.32258190  -289.74764939    -0.00000633    -0.00000025  0.47D-07  0.56D-07     3.97
    5     5     5     1.05989598    -0.32258190  -289.74764939    -0.00000637    -0.00000025  0.47D-07  0.57D-07     3.97
    5     6     6     1.05288493    -0.31328943  -289.70720398    -0.00000558    -0.00000027  0.53D-07  0.71D-07     3.97
    6     1     1     1.05989962    -0.32258219  -289.74764968    -0.00000023    -0.00000001  0.16D-08  0.24D-08     4.96
    6     2     2     1.05990056    -0.32258218  -289.74764968    -0.00000027    -0.00000001  0.18D-08  0.29D-08     4.96
    6     3     3     1.05989984    -0.32258218  -289.74764968    -0.00000028    -0.00000001  0.24D-08  0.31D-08     4.96
    6     4     4     1.05990036    -0.32258218  -289.74764968    -0.00000029    -0.00000001  0.24D-08  0.33D-08     4.96
    6     5     5     1.05990010    -0.32258218  -289.74764968    -0.00000029    -0.00000001  0.25D-08  0.33D-08     4.96
    6     6     6     1.05288450    -0.31328974  -289.70720429    -0.00000031    -0.00000001  0.21D-08  0.42D-08     4.96


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   0.4%   1.0%
 P   0.6%  15.1%  30.0%

 Initialization:   0.4%
 Other:           51.5%

 Total CPU:        5.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222220/\          -0.0000000  -0.0000000   0.9643163  -0.0000000  -0.0000000  -0.0000000
 22222/0\           0.0000000   0.0000000   0.0000000   0.0000000   0.9643162   0.0000000
 22222/\0          -0.0000000   0.0000000   0.0000000   0.9643160  -0.0000000   0.0000000
 22222002           0.7612008  -0.2012731   0.0000000   0.0000000  -0.0000000   0.5479010
 22222200          -0.2062926   0.7598552  -0.0000000  -0.0000000  -0.0000000   0.5479005
 22222020          -0.5549076  -0.5585824  -0.0000000   0.0000000   0.0000000   0.5479007
 20222202          -0.0669419  -0.0673856  -0.0000000   0.0000000   0.0000000  -0.1279700
 20222022          -0.0248868   0.0916655  -0.0000000  -0.0000000  -0.0000000  -0.1279695
 20222220           0.0918293  -0.0242804   0.0000000   0.0000000  -0.0000000  -0.1279690
 20222/\2           0.0000000  -0.0000000  -0.0000000  -0.1163309   0.0000000   0.0000000
 202222/\           0.0000000   0.0000000  -0.1163306   0.0000000   0.0000000  -0.0000000
 20222/2\          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1163305  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/\0  12.1    -0.0000000   0.0000000   0.0000000   0.0845929  -0.0000000   0.0000000
 2\222/\0  11.1     0.0181603   0.0826980   0.0000000  -0.0000000  -0.0000000   0.0054390
 2\2220/\  14.1    -0.0806994  -0.0256210  -0.0000000  -0.0000000   0.0000000   0.0054407
 2\222/0\  15.1     0.0000000   0.0000000   0.0000000   0.0000000   0.0750530   0.0000000
 2\2220/\  15.1    -0.0000000  -0.0000000   0.0750512  -0.0000000  -0.0000000   0.0000000
 2\222/0\  13.1    -0.0574888   0.0621636  -0.0000000  -0.0000000   0.0000000   0.0054427
 2\222/\0   8.1    -0.0000000   0.0000000   0.0000000   0.0517039  -0.0000000   0.0000000
 2\222/\0   9.1     0.0129708   0.0500537   0.0000000  -0.0000000  -0.0000000   0.0004402

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.963854   -0.000000    0.000000   -0.000000   -0.119694    0.000000
 2           0.119694   -0.000000    0.000000    0.000000    0.963854   -0.000000
 3           0.000000    0.971258    0.000000    0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.971258   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.971258   -0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.974418

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971258   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.971257   -0.000000    0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.971258    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.971258    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.971258   -0.000000
 6           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.974418


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96385437 (fixed)   0.97130784 (relaxed)   0.97125790 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015229   -0.00027731   -0.25759477
 Singles      0.03112363   -0.04956490   -0.05622837
 Pairs        0.02878511   -0.00000023   -0.00875904
 Total        1.06006103   -0.04984245   -0.32258219
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42506749
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44955311
 One electron energy                 -401.10698907
 Two electron energy                  111.35933939
 Virial quotient                       -0.98738487
 Correlation energy                    -0.32258219
 !MRCI STATE 1.1 Energy              -289.747649680627

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76702430 (Davidson, fixed reference)
 Cluster corrected energies          -289.76698914 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76702430 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445950 (Pople, fixed reference)
 Cluster corrected energies          -289.76442776 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445950 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96385395 (fixed)   0.97130741 (relaxed)   0.97125746 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015231   -0.00027731   -0.25759425
 Singles      0.03112525   -0.04956558   -0.05622902
 Pairs        0.02878443    0.00000014   -0.00875891
 Total        1.06006199   -0.04984275   -0.32258218
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42506749
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44957499
 One electron energy                 -401.10703364
 Two electron energy                  111.35938396
 Virial quotient                       -0.98738480
 Correlation energy                    -0.32258219
 !MRCI STATE 2.1 Energy              -289.747649678011

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76702461 (Davidson, fixed reference)
 Cluster corrected energies          -289.76698944 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76702461 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445978 (Pople, fixed reference)
 Cluster corrected energies          -289.76442803 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445978 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97125778 (fixed)   0.97130774 (relaxed)   0.97125778 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015232   -0.00027731   -0.25759457
 Singles      0.03112438   -0.04956529   -0.05622874
 Pairs        0.02878459   -0.00000000   -0.00875887
 Total        1.06006129   -0.04984261   -0.32258218
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42506749
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44953128
 One electron energy                 -401.10700965
 Two electron energy                  111.35935998
 Virial quotient                       -0.98738495
 Correlation energy                    -0.32258218
 !MRCI STATE 3.1 Energy              -289.747649677006

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76702438 (Davidson, fixed reference)
 Cluster corrected energies          -289.76698920 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76702438 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445958 (Pople, fixed reference)
 Cluster corrected energies          -289.76442782 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445958 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97125755 (fixed)   0.97130750 (relaxed)   0.97125755 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015231   -0.00027731   -0.25759419
 Singles      0.03112503   -0.04956555   -0.05622901
 Pairs        0.02878446    0.00000000   -0.00875898
 Total        1.06006180   -0.04984287   -0.32258218
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42506749
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44954166
 One electron energy                 -401.10700845
 Two electron energy                  111.35935877
 Virial quotient                       -0.98738491
 Correlation energy                    -0.32258218
 !MRCI STATE 4.1 Energy              -289.747649676361

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76702454 (Davidson, fixed reference)
 Cluster corrected energies          -289.76698937 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76702454 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445972 (Pople, fixed reference)
 Cluster corrected energies          -289.76442797 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445972 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97125766 (fixed)   0.97130762 (relaxed)   0.97125766 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015232   -0.00027732   -0.25759435
 Singles      0.03112478   -0.04956546   -0.05622889
 Pairs        0.02878445    0.00000000   -0.00875895
 Total        1.06006155   -0.04984277   -0.32258218
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42506749
 Nuclear energy                         0.00000000
 Kinetic energy                       293.44953560
 One electron energy                 -401.10701449
 Two electron energy                  111.35936482
 Virial quotient                       -0.98738493
 Correlation energy                    -0.32258218
 !MRCI STATE 5.1 Energy              -289.747649676209

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76702446 (Davidson, fixed reference)
 Cluster corrected energies          -289.76698929 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76702446 (Davidson, rotated reference)

 Cluster corrected energies          -289.76445965 (Pople, fixed reference)
 Cluster corrected energies          -289.76442790 (Pople, relaxed reference)
 Cluster corrected energies          -289.76445965 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97441798 (fixed)   0.97453287 (relaxed)   0.97441798 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00029637   -0.00031029   -0.00038278
 Singles      0.00722687   -0.01970471   -0.02085811
 Pairs        0.04567330   -0.29327474   -0.29204884
 Total        1.05319654   -0.31328974   -0.31328974
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.39391455
 Nuclear energy                         0.00000000
 Kinetic energy                       293.41666617
 One electron energy                 -400.96581747
 Two electron energy                  111.25861318
 Virial quotient                       -0.98735770
 Correlation energy                    -0.31328974
 !MRCI STATE 6.1 Energy              -289.707204289212

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.72387022 (Davidson, fixed reference)
 Cluster corrected energies          -289.72379243 (Davidson, relaxed reference)
 Cluster corrected energies          -289.72387022 (Davidson, rotated reference)

 Cluster corrected energies          -289.72159714 (Pople, fixed reference)
 Cluster corrected energies          -289.72152755 (Pople, relaxed reference)
 Cluster corrected energies          -289.72159714 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       19.13       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.30      5.27      1.84      0.42      0.05      0.45
 REAL TIME  *        11.92 SEC
 DISK USED  *        49.59 MB (local),      646.13 MB (total)
 SF USED    *       138.75 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -289.76702430  AU                              
 SETTING HLSDIAG(5)     =      -289.76702461  AU                              
 SETTING HLSDIAG(6)     =      -289.76702438  AU                              
 SETTING HLSDIAG(7)     =      -289.76702454  AU                              
 SETTING HLSDIAG(8)     =      -289.76702446  AU                              
 SETTING HLSDIAG(9)     =      -289.72387022  AU                              


         HLSDIAG
    -289.7946928
    -289.7946927
    -289.7946925
    -289.7670243
    -289.7670246
    -289.7670244
    -289.7670245
    -289.7670245
    -289.7238702
                                                  

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

 Time for Seward_LS:       0.70 sec

        2402978. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.70 sec, REAL time:      0.73 sec


 SORTLS1 read     2507997. and wrote     2507997. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2507997. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    72.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    72.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       19.13       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         9.26      0.95      5.27      1.84      0.42      0.05      0.45
 REAL TIME  *        13.57 SEC
 DISK USED  *        49.63 MB (local),      835.63 MB (total)
 SF USED    *       138.75 MB
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
  
 Wavefunction restored from record  5102.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -289.778484   -289.778484   -289.778484
 Replaced energies:   -289.794693   -289.794693   -289.794692

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -289.747650   -289.747650   -289.747650   -289.747650   -289.747650   -289.707204
 Replaced energies:   -289.767024   -289.767025   -289.767024   -289.767025   -289.767024   -289.723870



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -289.79469280

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     -15.63
                           -0.00     -73.21      -0.00      -0.00       0.00     -51.76       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.03       0.00      -0.00      -0.00     -51.76       0.00       0.00       0.00       0.00
                           73.21      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      42.04

    3   3.1  1.0  1.0       0.00       0.00       0.07      -0.00      51.76       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      51.76       0.00      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00     -51.76       0.00       0.00       0.00      -0.00       0.00     -51.76      -0.00

    5   2.1  1.0  0.0       0.00      -0.00      51.76       0.00       0.03       0.00      -0.00      -0.00     -51.76       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00     -51.76       0.00       0.00       0.00       0.07      -0.00      51.76       0.00       0.00
                           51.76       0.00       0.00      -0.00      -0.00       0.00      51.76       0.00      -0.00     -81.54

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -15.63
                           -0.00      -0.00      -0.00       0.00       0.00     -51.76       0.00      73.21       0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00      51.76       0.00       0.03       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -73.21       0.00       0.00     -42.04

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00     -51.76       0.00       0.00       0.00       0.07       0.00
                           -0.00      -0.00      -0.00      51.76       0.00       0.00      -0.00      -0.00       0.00       0.00

   10   1.1  0.0  0.0     -15.63       0.00       0.00       0.00       0.00       0.00     -15.63       0.00       0.00    6072.54
                            0.00     -42.04       0.00       0.00       0.00      81.54      -0.00      42.04      -0.00       0.00

   11   2.1  0.0  0.0      57.56      -0.00       0.00       0.00       0.00       0.00      57.56      -0.00       0.00       0.00
                           -0.00     -42.31       0.00       0.00       0.00     -21.56       0.00      42.31      -0.00      -0.00

   12   3.1  0.0  0.0      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00     -51.65       0.00     -73.05       0.00       0.00       0.00      51.65      -0.00

   13   4.1  0.0  0.0      -0.00     -51.65       0.00       0.00       0.00       0.00      -0.00     -51.65       0.00       0.00
                          -51.65       0.00       0.00       0.00       0.00       0.00      51.65      -0.00      -0.00      -0.00

   14   5.1  0.0  0.0       0.00       0.00      51.65       0.00       0.00       0.00       0.00       0.00      51.65       0.00
                            0.00       0.00       0.00      73.04       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   15   6.1  0.0  0.0     -85.43      -0.00       0.00       0.00       0.00       0.00     -85.43      -0.00       0.00       0.00
                            0.00     -85.43      -0.00      -0.00       0.00    -120.82      -0.00      85.43       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      57.56      -0.00      -0.00       0.00     -85.43
                            0.00       0.00      51.65      -0.00      -0.00

    2   2.1  1.0  1.0      -0.00      -0.00     -51.65       0.00      -0.00
                           42.31       0.00      -0.00      -0.00      85.43

    3   3.1  1.0  1.0       0.00       0.00       0.00      51.65       0.00
                           -0.00      51.65      -0.00      -0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -73.04       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      73.05      -0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           21.56      -0.00      -0.00       0.00     120.82

    7   1.1  1.0 -1.0      57.56      -0.00      -0.00       0.00     -85.43
                           -0.00      -0.00     -51.65       0.00       0.00

    8   2.1  1.0 -1.0      -0.00      -0.00     -51.65       0.00      -0.00
                          -42.31      -0.00       0.00       0.00     -85.43

    9   3.1  1.0 -1.0       0.00       0.00       0.00      51.65       0.00
                            0.00     -51.65       0.00       0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6072.47       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6072.52       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6072.48       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6072.50       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15543.76
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -289.79469280 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -73.206      -0.000     -73.206

    2    1  |1 1>+              0.000       0.029       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      73.206      -0.000

    3    1  |1 1>+              0.000       0.000       0.068      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      73.206       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000     -73.206       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.029       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.068       0.000     -73.206
                               73.206       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -73.206      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000     -73.206       0.000       0.029
                               73.206      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      73.206       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>             -22.099       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      81.539       0.000     -59.448

    2    1  |0 0>              81.400      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     -21.561      -0.000     -59.842

    3    1  |0 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -73.046       0.000      -0.000      -0.000

    4    1  |0 0>              -0.000     -73.047       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     -73.047       0.000

    5    1  |0 0>               0.000       0.000      73.043       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      73.044       0.000      -0.000       0.000       0.000

    6    1  |0 0>            -120.818      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000    -120.817       0.000    -120.821

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000     -22.099      81.400      -0.000      -0.000       0.000    -120.818
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000      -0.000     -73.047       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      73.043       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000     -73.044       0.000

    2    1  |1 0>              73.206       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      73.046      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -81.539      21.561      -0.000      -0.000       0.000     120.817

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000      73.047      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      59.448      59.842       0.000      -0.000      -0.000     120.821

    3    1  |1 1>-              0.068       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      73.045      -0.000      -0.000       0.000

    1    1  |0 0>               0.000    6072.535       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6072.468       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6072.518       0.000       0.000       0.000
                              -73.045      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6072.482       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6072.499       0.000
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15543.761
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -289.79537247    -0.00067967     -149.17      0.00000000        0.00      0.0000
    2  -289.79502629    -0.00033348      -73.19      0.00034618       75.98      0.0094
    3  -289.79502620    -0.00033339      -73.17      0.00034627       76.00      0.0094
    4  -289.79502613    -0.00033333      -73.16      0.00034634       76.01      0.0094
    5  -289.79436730     0.00032550       71.44      0.00100517      220.61      0.0274
    6  -289.79436729     0.00032551       71.44      0.00100518      220.61      0.0274
    7  -289.79436720     0.00032560       71.46      0.00100527      220.63      0.0274
    8  -289.79436714     0.00032567       71.48      0.00100534      220.65      0.0274
    9  -289.79436712     0.00032569       71.48      0.00100535      220.65      0.0274
   10  -289.76701650     0.02767630     6074.25      0.02835597     6223.42      0.7716
   11  -289.76701644     0.02767636     6074.26      0.02835603     6223.43      0.7716
   12  -289.76701636     0.02767644     6074.28      0.02835611     6223.45      0.7716
   13  -289.76701628     0.02767653     6074.30      0.02835620     6223.47      0.7716
   14  -289.76701620     0.02767661     6074.31      0.02835628     6223.48      0.7716
   15  -289.72385751     0.07083530    15546.55      0.07151497    15695.72      1.9460

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57738326 -0.00000000  0.00000000  0.00000000  0.77757424 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.70703654  0.00000000 -0.00000000  0.00000000  0.70312710 -0.00000000  0.00000000
                           0.00000000  0.00023674 -0.00000000 -0.00000000 -0.00000000 -0.07458838  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00000000  0.70693895 -0.00000000 -0.00000000  0.00000000  0.50042697 -0.00000000
                           0.00000000 -0.00000000 -0.00119407  0.00000000  0.00000000 -0.00000000 -0.49966052  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00119464 -0.00000000  0.00000000 -0.00000000 -0.49942477  0.00000000
                          -0.00000000 -0.00000000  0.70727255 -0.00000000  0.00000000 -0.00000000 -0.50019086  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00851568  0.00000000  0.00000000  0.00000000  0.17711096
                           0.00000000  0.00000000  0.00000000  0.70715210  0.00000000 -0.00000000  0.00000000  0.68435881

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.57720476 -0.00000000 -0.00000000  0.00000000  0.17359857 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00023678  0.00000000  0.00000000 -0.00000000 -0.07457357  0.00000000 -0.00000000
                           0.00000000  0.70717693  0.00000000 -0.00000000 -0.00000000 -0.70298747  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.57730879  0.00000000  0.00000000  0.00000000  0.60410726 -0.00000000  0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00851335  0.00000000  0.00000000  0.00000000  0.17715937
                          -0.00000000 -0.00000000 -0.00000000 -0.70695892  0.00000000  0.00000000  0.00000000  0.68454587

   1    1  |0 0>           0.00000244  0.00000000  0.00000000  0.00000000 -0.00076220  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000108 -0.00000000 -0.00000000  0.00000000 -0.01719505  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000236 -0.00000000  0.00000000 -0.00000000 -0.01666244
                          -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00431221

   4    1  |0 0>          -0.00000000 -0.00000172  0.00000000  0.00000000  0.00000000  0.01711578 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00181566  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000410  0.00000000  0.00000000 -0.00000000 -0.01217929  0.00000000
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.01216063 -0.00000000

   6    1  |0 0>           0.01333374  0.00000000 -0.00000000 -0.00000000 -0.00000111  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.24849570  0.01356747 -0.00000000 -0.00000000 -0.00000000 -0.00366272 -0.00769821
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.01216538  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00035593 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.01214114  0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00083666 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00083666 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.01214120 -0.00000000 -0.00000000  0.00000000

   2    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00003386 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.01217025 -0.00000000 -0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.79777282  0.00361160 -0.00000000  0.00000000 -0.00000000 -0.01358030  0.00769812

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00035593 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.01216539 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.54910126  0.00995639 -0.00000000 -0.00000000  0.00000000  0.00991890  0.00769840

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00003386 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.01217024 -0.00000000  0.00000000

   1    1  |0 0>           0.01719429 -0.00142123 -0.00000000  0.00000000 -0.00000000  0.99985087  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00076131  0.99985085  0.00000000 -0.00000000 -0.00000000  0.00142121  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.99984800  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00278139  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.99942420  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.02924093  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.99748630  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.06873764 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000118 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000002  0.99991110
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -289.79537247     -0.00067967     -149.17      0.00000000        0.00      0.0000
     2   1   -289.79502629     -0.00033348      -73.19      0.00034618       75.98      0.0094
     3   1   -289.79502620     -0.00033339      -73.17      0.00034627       76.00      0.0094
     4   1   -289.79502613     -0.00033333      -73.16      0.00034634       76.01      0.0094
     5   1   -289.79436730      0.00032550       71.44      0.00100517      220.61      0.0274
     6   1   -289.79436729      0.00032551       71.44      0.00100518      220.61      0.0274
     7   1   -289.79436720      0.00032560       71.46      0.00100527      220.63      0.0274
     8   1   -289.79436714      0.00032567       71.48      0.00100534      220.65      0.0274
     9   1   -289.79436712      0.00032569       71.48      0.00100535      220.65      0.0274
    10   1   -289.76701650      0.02767630     6074.25      0.02835597     6223.42      0.7716
    11   1   -289.76701644      0.02767636     6074.26      0.02835603     6223.43      0.7716
    12   1   -289.76701636      0.02767644     6074.28      0.02835611     6223.45      0.7716
    13   1   -289.76701628      0.02767653     6074.30      0.02835620     6223.47      0.7716
    14   1   -289.76701620      0.02767661     6074.31      0.02835628     6223.48      0.7716
    15   1   -289.72385751      0.07083530    15546.55      0.07151497    15695.72      1.9460

 E0 =   -289.79469280 is the energy of the lowest zeroth-order state
 E1 =   -289.79537247 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57738326 -0.00000000  0.00000000  0.00000000  0.77757424 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.70703654  0.00000000 -0.00000000  0.00000000  0.70312710 -0.00000000  0.00000000
                                0.00000000  0.00023674 -0.00000000 -0.00000000 -0.00000000 -0.07458838  0.00000000 -0.00000000

  3  1     3    1  |1 1>+      -0.00000000 -0.00000000  0.70693895 -0.00000000 -0.00000000  0.00000000  0.50042697 -0.00000000
                                0.00000000 -0.00000000 -0.00119407  0.00000000  0.00000000 -0.00000000 -0.49966052  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000  0.00119464 -0.00000000  0.00000000 -0.00000000 -0.49942477  0.00000000
                               -0.00000000 -0.00000000  0.70727255 -0.00000000  0.00000000 -0.00000000 -0.50019086  0.00000000

  5  1     2    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00851568  0.00000000  0.00000000  0.00000000  0.17711096
                                0.00000000  0.00000000  0.00000000  0.70715210  0.00000000 -0.00000000  0.00000000  0.68435881

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.57720476 -0.00000000 -0.00000000  0.00000000  0.17359857 -0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00023678  0.00000000  0.00000000 -0.00000000 -0.07457357  0.00000000 -0.00000000
                                0.00000000  0.70717693  0.00000000 -0.00000000 -0.00000000 -0.70298747  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.57730879  0.00000000  0.00000000  0.00000000  0.60410726 -0.00000000  0.00000000 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00851335  0.00000000  0.00000000  0.00000000  0.17715937
                               -0.00000000 -0.00000000 -0.00000000 -0.70695892  0.00000000  0.00000000  0.00000000  0.68454587

 10  1     1    1  |0 0>        0.00000244  0.00000000  0.00000000  0.00000000 -0.00076220  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000108 -0.00000000 -0.00000000  0.00000000 -0.01719505  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000236 -0.00000000  0.00000000 -0.00000000 -0.01666244
                               -0.00000000  0.00000000 -0.00000000  0.00000003  0.00000000  0.00000000  0.00000000  0.00431221

 13  1     4    1  |0 0>       -0.00000000 -0.00000172  0.00000000  0.00000000  0.00000000  0.01711578 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00181566  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000410  0.00000000  0.00000000 -0.00000000 -0.01217929  0.00000000
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000  0.01216063 -0.00000000

 15  1     6    1  |0 0>        0.01333374  0.00000000 -0.00000000 -0.00000000 -0.00000111  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.24849570  0.01356747 -0.00000000 -0.00000000 -0.00000000 -0.00366272 -0.00769821
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.01216538  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00035593 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.01214114  0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00083666 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00083666 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.01214120 -0.00000000 -0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00003386 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.01217025 -0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.79777282  0.00361160 -0.00000000  0.00000000 -0.00000000 -0.01358030  0.00769812

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00035593 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.01216539 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.54910126  0.00995639 -0.00000000 -0.00000000  0.00000000  0.00991890  0.00769840

  9  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00003386 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.01217024 -0.00000000  0.00000000

 10  1     1    1  |0 0>        0.01719429 -0.00142123 -0.00000000  0.00000000 -0.00000000  0.99985087  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00076131  0.99985085  0.00000000 -0.00000000 -0.00000000  0.00142121  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.99984800  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00278139  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.00000000  0.99942420  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.02924093  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.99748630  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.06873764 -0.00000000 -0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000118 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000002  0.99991110
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.34%    0.00%    0.00%    0.00%   60.46%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   49.99%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%   49.98%    0.00%    0.00%    0.00%   50.01%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.02%    0.00%    0.00%    0.00%   49.96%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.01%    0.00%    0.00%    0.00%   49.97%
  6  1     3    1  |1 0>         33.32%    0.00%    0.00%    0.00%    3.01%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.01%    0.00%    0.00%    0.00%   49.98%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   36.49%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.99%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 15  1     6    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         6.18%    0.02%    0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  6  1     3    1  |1 0>         63.64%    0.00%    0.00%    0.00%    0.00%    0.02%    0.01%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        30.15%    0.01%    0.00%    0.00%    0.00%    0.01%    0.01%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
 10  1     1    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%   99.97%    0.00%
 11  1     2    1  |0 0>          0.00%   99.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.97%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%   99.97%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%   99.97%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.98%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       19.13       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.45      4.19      0.95      5.27      1.84      0.42      0.05      0.45
 REAL TIME  *        18.73 SEC
 DISK USED  *        49.63 MB (local),      835.63 MB (total)
 SF USED    *       138.75 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -289.723857505504

              CI              CI           MULTI         RHF-SCF
   -289.70720429   -289.77848372   -289.39391455   -289.45517525
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
