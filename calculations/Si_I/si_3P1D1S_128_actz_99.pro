
 Working directory              : /wrk/irikura/molpro.OC8XD9dsZR/
 Global scratch directory       : /wrk/irikura/molpro.OC8XD9dsZR/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.OC8XD9dsZR/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Si SO-CI
                                                                                 ! Active space (12/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Si};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=14,sym=1,spin=2}
 
 {multi
     closed,1,0
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
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Si SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 25-Feb-24          TIME: 08:08:59  
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

     Node minimum: 0.262 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     173397.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     173397      RECORD LENGTH: 524288

 Memory used in sort:       0.73 MW

 SORT1 READ     4558334. AND WROTE       36502. INTEGRALS IN      1 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC
 SORT2 READ      438096. AND WROTE     2085546. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

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
 CPU TIMES  *         0.63      0.42
 REAL TIME  *         1.20 SEC
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
   3     -289.45491227      -0.00122516     0.94D-03     0.28D-02     2     0       0.00      0.00    diag2
   4     -289.45514213      -0.00022986     0.35D-03     0.14D-02     3     0       0.00      0.00    diag2
   5     -289.45517477      -0.00003265     0.13D-03     0.85D-03     4     0       0.01      0.01    diag2
   6     -289.45517525      -0.00000047     0.19D-04     0.16D-03     5     0       0.00      0.01    diag2
   7     -289.45517525      -0.00000000     0.18D-05     0.10D-04     6     0       0.00      0.01    diag2
   8     -289.45517525      -0.00000000     0.29D-06     0.18D-05     7     0       0.00      0.01    fixocc
   9     -289.45517525      -0.00000000     0.25D-07     0.26D-06     0     0       0.00      0.01    diag

 Final alpha occupancy:   3   5
 Final beta  occupancy:   3   3

 !RHF STATE 1.1 Energy               -289.455175250784
  RHF One-electron energy            -401.378079999733
  RHF Two-electron energy             111.922904748949
  RHF Kinetic energy                  293.246498577840
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
    1.2     2.00000    -4.25613     1  1  px   0.99688
    2.2     2.00000    -4.25495     1  1  pz   1.00089
    3.2     2.00000    -4.25495     1  1  py   1.00021
    4.2     1.00000    -0.29682     1  2  py   1.00846
    5.2     1.00000    -0.29682     1  2  pz   1.00914


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
 CPU TIMES  *         0.74      0.11      0.42
 REAL TIME  *         2.38 SEC
 DISK USED  *        29.72 MB (local),      407.64 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:  12    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:             186   (216 determinants, 448 intermediate states)

 State symmetry 2

 Number of active electrons:  12    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             184   (400 determinants, 784 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.317D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.216D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.145D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 6 4 3 5 1   6 2 4 3 5 5 4 3 2 6   1 5 4 3 2 6 1 5 4 3   6 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.546D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.278D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.499D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.424D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.194D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.586D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 3 2 1 3   2 1 7 910 4 8 5 6 7  10 9 8 4 6 5 1 3 2 7  10 9 8 4 6 5 1 3 2 1
                                        3 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  308  ( 2 closed/active, 30 closed/virtual, 0 active/active, 276 active/virtual )
 Total number of variables:    3356
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   12    0   -289.44475605    -289.46588085   -0.02112480    0.06498690 0.00004597 0.00000000  0.36E+00      0.68
   2   10   18    0   -289.46350273    -289.46455817   -0.00105544    0.13707414 0.00000080 0.00000000  0.30E-01      1.67
   3    9   18    0   -289.46456263    -289.46456269   -0.00000006    0.00049116 0.00000011 0.00000000  0.31E-03      2.63
   4   18   34    0   -289.46456269    -289.46456269    0.00000000    0.00000011 0.00000001 0.00000000  0.29E-06      4.27

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.52E-08)
                       Final energy:   -289.46456269
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -289.465460096653
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25581701
 One electron energy                          -401.40942552
 Two electron energy                           111.94396542
 Virial ratio                                    1.98707491
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -289.465460096430
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25581702
 One electron energy                          -401.40942555
 Two electron energy                           111.94396545
 Virial ratio                                    1.98707491
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -289.465460096066
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.25581704
 One electron energy                          -401.40942559
 Two electron energy                           111.94396550
 Virial ratio                                    1.98707491
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -289.425328387200
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.24687690
 One electron energy                          -401.40408932
 Two electron energy                           111.97876094
 Virial ratio                                    1.98696815
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -289.425328387086
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.24687691
 One electron energy                          -401.40408933
 Two electron energy                           111.97876094
 Virial ratio                                    1.98696815
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -289.425328386696
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.24687692
 One electron energy                          -401.40408936
 Two electron energy                           111.97876097
 Virial ratio                                    1.98696815
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -289.425328386051
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.24687694
 One electron energy                          -401.40408941
 Two electron energy                           111.97876102
 Virial ratio                                    1.98696815
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -289.425328385994
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.24687694
 One electron energy                          -401.40408941
 Two electron energy                           111.97876102
 Virial ratio                                    1.98696815
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -289.394204310140
 Nuclear energy                                  0.00000000
 Kinetic energy                                293.20950408
 One electron energy                          -401.29575433
 Two electron energy                           111.90155002
 Virial ratio                                    1.98698780
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999989
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999999990
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.144776131362
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.999999694787
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999999122077
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999999973
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.855224443281
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999998912519
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000001224738
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     2.280617670648
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.000000862770
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999285027
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000010
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.719384583931
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000001087492
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999998775272
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.574606197990
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999999442443
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000001592896
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000018
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.425390972788
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 4 2 6 5 3 1   2 4 6 5 3 4 2 6 5 3   1 4 2 6 5 3 1 4 2 6   5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 3   2 1 4 6 510 8 9 7 4   6 5 810 9 7 3 1 2 4   6 810 5 7 9 3 1 2 3
                                        1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -68.94969     1  1  s    0.99931
    2.1     2.00000    -6.20362     1  2  s    0.99959
    3.1     1.96601    -0.53503     1  3  s    1.01235
    1.2     1.99998    -4.25210     1  1  py   1.00001
    2.2     1.99998    -4.25210     1  1  px   1.00001
    3.2     1.99998    -4.25210     1  1  pz   1.00001
    4.2     0.67802    -0.06484     1  2  py   1.03037
    5.2     0.67802    -0.06484     1  2  px   1.03037
    6.2     0.67802    -0.06484     1  2  pz   1.03037
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 22 222a0a      0.00000323      0.00000310      0.99152100
 22 2220aa      0.00103398      0.99152046     -0.00000310
 22 222aa0      0.99152046     -0.00103398     -0.00000323
 20 222a2a     -0.00000042     -0.00000041     -0.12982880
 20 222aa2     -0.12982873      0.00013539      0.00000042
 20 2222aa     -0.00013539     -0.12982873      0.00000041
 
 Energy:     -289.46546010   -289.46546010   -289.46546010
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 22 222020      0.79478752     -0.00044115     -0.00096165      0.00000155     -0.15401804      0.56013134
 22 222002     -0.26400987      0.00020362      0.00069024     -0.00000119      0.76531569      0.56013138
 22 222a0b     -0.00000124      0.00000150      0.00000028      0.70111154      0.00000066     -0.00000000
 22 222b0a      0.00000124     -0.00000150     -0.00000028     -0.70111154     -0.00000066      0.00000000
 22 222ab0      0.00037805      0.70111140     -0.00022150     -0.00000150     -0.00005592      0.00000000
 22 222ba0     -0.00037805     -0.70111140      0.00022150      0.00000150      0.00005592     -0.00000000
 22 2220ab      0.00077788      0.00022105      0.70111097     -0.00000028     -0.00036405     -0.00000000
 22 2220ba     -0.00077788     -0.00022105     -0.70111097      0.00000028      0.00036405      0.00000000
 22 222200     -0.53077761      0.00023753      0.00027141     -0.00000036     -0.61129767      0.56013136
 20 222202      0.10406156     -0.00005776     -0.00012591      0.00000020     -0.02016559     -0.13990948
 20 222022     -0.06949474      0.00003110      0.00003554     -0.00000005     -0.08003723     -0.13990948
 20 222220     -0.03456683      0.00002666      0.00009037     -0.00000016      0.10020282     -0.13990948
 20 222b2a     -0.00000016      0.00000020      0.00000004      0.09179656      0.00000009     -0.00000000
 20 222a2b      0.00000016     -0.00000020     -0.00000004     -0.09179656     -0.00000009      0.00000000
 20 222ba2      0.00004950      0.09179655     -0.00002900     -0.00000020     -0.00000732      0.00000000
 20 222ab2     -0.00004950     -0.09179655      0.00002900      0.00000020      0.00000732     -0.00000000
 20 2222ab     -0.00010185     -0.00002894     -0.09179649      0.00000004      0.00004766      0.00000000
 20 2222ba      0.00010185      0.00002894      0.09179649     -0.00000004     -0.00004766     -0.00000000
 
 Energy:     -289.42532839   -289.42532839   -289.42532839   -289.42532839   -289.42532839   -289.39420431
 


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
 CPU TIMES  *         5.04      4.28      0.11      0.42
 REAL TIME  *         6.90 SEC
 DISK USED  *        31.13 MB (local),      424.59 MB (total)
 SF USED    *         5.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -289.4654601   2.0
    -289.4654601   2.0
    -289.4654601   2.0
    -289.4253284   6.0
    -289.4253284   6.0
    -289.4253284   6.0
    -289.4253284   6.0
    -289.4253284   6.0
    -289.3942043  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 14
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:      126 conf      186 CSFs
 N elec internal:      238 conf      378 CSFs
 N-1 el internal:      504 conf     1512 CSFs
 N-2 el internal:      784 conf     4620 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.46546010
     2      -289.46546010
     3      -289.46546010

 Number of blocks in overlap matrix:     8   Smallest eigenvalue:  0.25D-04
 Number of N-2 electron functions:     192
 Number of N-1 electron functions:    1512

 Number of internal configurations:                  186
 Number of singly external configurations:         49860
 Number of doubly external configurations:        210312
 Total number of contracted configurations:       260358
 Total number of uncontracted configurations:    5054190

 Diagonal Coupling coefficients finished.               Storage:    316170 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    263666 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.46546010     0.00000000    -0.31885554  0.41D-01  0.16D-01     0.07
    1     2     2     1.00000000     0.00000000  -289.46546010    -0.00000000    -0.31831441  0.40D-01  0.16D-01     0.07
    1     3     3     1.00000000     0.00000000  -289.46546010     0.00000000    -0.31852810  0.41D-01  0.16D-01     0.07
    2     1     1     1.05052915    -0.30053212  -289.76599222    -0.30053212    -0.00473266  0.91D-03  0.48D-03     0.75
    2     2     2     1.05085757    -0.30047290  -289.76593300    -0.30047290    -0.00478826  0.95D-03  0.48D-03     0.75
    2     3     3     1.05136575    -0.30038055  -289.76584064    -0.30038055    -0.00487181  0.10D-02  0.49D-03     0.75
    3     1     1     1.04469387    -0.30825677  -289.77371687    -0.00772465    -0.00165628  0.17D-03  0.17D-03     1.40
    3     2     2     1.04457115    -0.30822424  -289.77368434    -0.00775134    -0.00166309  0.18D-03  0.18D-03     1.40
    3     3     3     1.04438702    -0.30817961  -289.77363971    -0.00779907    -0.00167088  0.18D-03  0.18D-03     1.40
    4     1     1     1.05037305    -0.31178910  -289.77724919    -0.00353233    -0.00034825  0.45D-04  0.40D-04     2.07
    4     2     2     1.05032175    -0.31178320  -289.77724330    -0.00355896    -0.00035102  0.46D-04  0.40D-04     2.07
    4     3     3     1.05024724    -0.31177579  -289.77723588    -0.00359617    -0.00035470  0.48D-04  0.41D-04     2.07
    5     1     1     1.05103157    -0.31230188  -289.77776198    -0.00051278    -0.00009177  0.57D-05  0.10D-04     2.76
    5     2     2     1.05105205    -0.31230103  -289.77776112    -0.00051782    -0.00009169  0.59D-05  0.10D-04     2.76
    5     3     3     1.05108648    -0.31229977  -289.77775986    -0.00052398    -0.00009179  0.63D-05  0.10D-04     2.76
    6     1     1     1.05061936    -0.31245021  -289.77791031    -0.00014833    -0.00004230  0.24D-05  0.48D-05     3.41
    6     2     2     1.05061188    -0.31245018  -289.77791027    -0.00014915    -0.00004228  0.25D-05  0.49D-05     3.41
    6     3     3     1.05062370    -0.31245002  -289.77791012    -0.00015026    -0.00004242  0.23D-05  0.48D-05     3.41
    7     1     1     1.05110223    -0.31250389  -289.77796399    -0.00005368    -0.00001384  0.11D-05  0.14D-05     4.06
    7     2     2     1.05110371    -0.31250386  -289.77796396    -0.00005369    -0.00001379  0.11D-05  0.14D-05     4.06
    7     3     3     1.05109650    -0.31250386  -289.77796396    -0.00005384    -0.00001390  0.11D-05  0.14D-05     4.06
    8     1     1     1.05148298    -0.31252379  -289.77798389    -0.00001990    -0.00000520  0.45D-06  0.51D-06     4.72
    8     2     2     1.05147980    -0.31252379  -289.77798389    -0.00001993    -0.00000522  0.43D-06  0.51D-06     4.72
    8     3     3     1.05147790    -0.31252376  -289.77798386    -0.00001990    -0.00000525  0.42D-06  0.51D-06     4.72
    9     1     1     1.05144017    -0.31253142  -289.77799152    -0.00000763    -0.00000269  0.76D-07  0.31D-06     5.38
    9     2     2     1.05144235    -0.31253139  -289.77799149    -0.00000760    -0.00000272  0.71D-07  0.31D-06     5.38
    9     3     3     1.05144450    -0.31253134  -289.77799143    -0.00000758    -0.00000275  0.68D-07  0.32D-06     5.38
   10     1     1     1.05148198    -0.31253464  -289.77799474    -0.00000322    -0.00000114  0.62D-07  0.12D-06     6.04
   10     2     2     1.05148125    -0.31253462  -289.77799472    -0.00000323    -0.00000114  0.63D-07  0.12D-06     6.04
   10     3     3     1.05147987    -0.31253460  -289.77799469    -0.00000326    -0.00000114  0.64D-07  0.12D-06     6.04
   11     1     1     1.05156649    -0.31253610  -289.77799620    -0.00000146    -0.00000050  0.19D-07  0.54D-07     6.72
   11     2     2     1.05156508    -0.31253609  -289.77799619    -0.00000147    -0.00000050  0.18D-07  0.55D-07     6.72
   11     3     3     1.05156370    -0.31253608  -289.77799617    -0.00000148    -0.00000051  0.17D-07  0.56D-07     6.72
   12     1     1     1.05157633    -0.31253673  -289.77799683    -0.00000063    -0.00000029  0.56D-08  0.34D-07     7.40
   12     2     2     1.05157685    -0.31253673  -289.77799682    -0.00000064    -0.00000029  0.57D-08  0.34D-07     7.40
   12     3     3     1.05157734    -0.31253672  -289.77799681    -0.00000064    -0.00000029  0.60D-08  0.35D-07     7.40
   13     1     1     1.05158116    -0.31253706  -289.77799716    -0.00000033    -0.00000013  0.45D-08  0.14D-07     8.04
   13     2     2     1.05158126    -0.31253706  -289.77799716    -0.00000033    -0.00000013  0.45D-08  0.14D-07     8.04
   13     3     3     1.05158122    -0.31253706  -289.77799715    -0.00000034    -0.00000013  0.46D-08  0.14D-07     8.04
   14     1     1     1.05159998    -0.31253722  -289.77799732    -0.00000016    -0.00000007  0.67D-09  0.79D-08     8.71
   14     2     2     1.05159942    -0.31253722  -289.77799732    -0.00000016    -0.00000007  0.59D-09  0.80D-08     8.71
   14     3     3     1.05159884    -0.31253722  -289.77799732    -0.00000016    -0.00000007  0.52D-09  0.82D-08     8.71


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.6%   2.5%
 P   1.5%  19.1%  48.7%

 Initialization:   0.5%
 Other:           27.0%

 Total CPU:        8.7 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 222220//           0.0000000  -0.0000000   0.9681844
 22222/0/          -0.0000000   0.9681842   0.0000000
 22222//0           0.9681840   0.0000000  -0.0000000
 202222//           0.0000000   0.0000000  -0.1162412
 20222/2/          -0.0000000  -0.1162408  -0.0000000
 20222//2          -0.1162404   0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/222\0/  11.1    -0.0000000   0.0513830  -0.0000000
 2/2220\/  11.1     0.0000000   0.0000000   0.0513829

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.975096    0.000000   -0.000000
 2           0.000000   -0.000000    0.975096
 3          -0.000000    0.975096    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.975096    0.000000    0.000000
 2           0.000000    0.975096    0.000000
 3           0.000000    0.000000    0.975096


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97509582 (fixed)   0.97515739 (relaxed)   0.97509582 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012629    0.00000000   -0.25582278
 Singles      0.02626201   -0.04351948   -0.04917972
 Pairs        0.02534448    0.00000000   -0.00753472
 Total        1.05173279   -0.04351948   -0.31253722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46546010
 Nuclear energy                         0.00000000
 Kinetic energy                       293.47054571
 One electron energy                 -401.18894259
 Two electron energy                  111.41094527
 Virial quotient                       -0.98741765
 Correlation energy                    -0.31253722
 !MRCI STATE 1.1 Energy              -289.777997320337

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79416574 (Davidson, fixed reference)
 Cluster corrected energies          -289.79412423 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79416574 (Davidson, rotated reference)

 Cluster corrected energies          -289.79134033 (Pople, fixed reference)
 Cluster corrected energies          -289.79130501 (Pople, relaxed reference)
 Cluster corrected energies          -289.79134033 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97509608 (fixed)   0.97515765 (relaxed)   0.97509608 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012629    0.00000000   -0.00003753
 Singles      0.02626159   -0.04351918   -0.04917962
 Pairs        0.02534435   -0.26901804   -0.26332007
 Total        1.05173222   -0.31253722   -0.31253722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46546010
 Nuclear energy                         0.00000000
 Kinetic energy                       293.47055472
 One electron energy                 -401.18894792
 Two electron energy                  111.41095060
 Virial quotient                       -0.98741762
 Correlation energy                    -0.31253722
 !MRCI STATE 2.1 Energy              -289.777997318188

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79416556 (Davidson, fixed reference)
 Cluster corrected energies          -289.79412406 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79416556 (Davidson, rotated reference)

 Cluster corrected energies          -289.79134017 (Pople, fixed reference)
 Cluster corrected energies          -289.79130486 (Pople, relaxed reference)
 Cluster corrected energies          -289.79134017 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97509635 (fixed)   0.97515792 (relaxed)   0.97509635 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012628    0.00000000   -0.25582362
 Singles      0.02626119   -0.04351889   -0.04917952
 Pairs        0.02534417   -0.00000000   -0.00753407
 Total        1.05173164   -0.04351889   -0.31253722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.46546010
 Nuclear energy                         0.00000000
 Kinetic energy                       293.47056451
 One electron energy                 -401.18895300
 Two electron energy                  111.41095568
 Virial quotient                       -0.98741759
 Correlation energy                    -0.31253722
 !MRCI STATE 3.1 Energy              -289.777997315668

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.79416538 (Davidson, fixed reference)
 Cluster corrected energies          -289.79412387 (Davidson, relaxed reference)
 Cluster corrected energies          -289.79416538 (Davidson, rotated reference)

 Cluster corrected energies          -289.79134002 (Pople, fixed reference)
 Cluster corrected energies          -289.79130470 (Pople, relaxed reference)
 Cluster corrected energies          -289.79134002 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        7.00       700     1000      520     2100     2140     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        13.94      8.88      4.28      0.11      0.42
 REAL TIME  *        17.07 SEC
 DISK USED  *        37.46 MB (local),      500.54 MB (total)
 SF USED    *        66.72 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -289.79416574  AU                              
 SETTING HLSDIAG(2)     =      -289.79416556  AU                              
 SETTING HLSDIAG(3)     =      -289.79416538  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 14
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:      154 conf      184 CSFs
 N elec internal:      266 conf      336 CSFs
 N-1 el internal:      504 conf     1008 CSFs
 N-2 el internal:      784 conf     2688 CSFs

 Number of electrons in valence space:                     12
 Maximum number of open shell orbitals in reference space:  4
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -289.42532839
     2      -289.42532839
     3      -289.42532839
     4      -289.42532839
     5      -289.42532839
     6      -289.39420431

 Number of blocks in overlap matrix:     4   Smallest eigenvalue:  0.15D-06
 Number of N-2 electron functions:     375
 Number of N-1 electron functions:    1008

 Number of internal configurations:                  184
 Number of singly external configurations:         33336
 Number of doubly external configurations:        410445
 Total number of contracted configurations:       443965
 Total number of uncontracted configurations:    2956816

 Diagonal Coupling coefficients finished.               Storage:    406732 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    278184 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -289.42532839     0.00000000    -0.31775695  0.44D-01  0.13D-01     0.13
    1     2     2     1.00000000     0.00000000  -289.42532839     0.00000000    -0.31548542  0.44D-01  0.13D-01     0.13
    1     3     3     1.00000000     0.00000000  -289.42532839    -0.00000000    -0.31656859  0.46D-01  0.13D-01     0.13
    1     4     4     1.00000000     0.00000000  -289.42532839    -0.00000000    -0.31613119  0.46D-01  0.13D-01     0.13
    1     5     5     1.00000000     0.00000000  -289.42532839    -0.00000000    -0.31687062  0.44D-01  0.13D-01     0.13
    1     6     6     1.00000000     0.00000000  -289.39420431    -0.00000000    -0.28610266  0.13D-01  0.14D-01     0.13
    2     1     1     1.05197355    -0.30221713  -289.72754552    -0.30221713    -0.00664579  0.12D-02  0.48D-03     3.43
    2     2     2     1.05157131    -0.30159167  -289.72692005    -0.30159167    -0.00659910  0.12D-02  0.47D-03     3.43
    2     3     3     1.05136295    -0.30038540  -289.72571378    -0.30038540    -0.00648465  0.12D-02  0.42D-03     3.43
    2     4     4     1.05255603    -0.30016982  -289.72549821    -0.30016982    -0.00669392  0.14D-02  0.42D-03     3.43
    2     5     5     1.05232021    -0.30003230  -289.72536069    -0.30003230    -0.00663389  0.14D-02  0.41D-03     3.43
    2     6     6     1.02526065    -0.27829245  -289.67249676    -0.27829245    -0.00803365  0.12D-02  0.62D-03     3.43
    3     1     1     1.04646755    -0.31309083  -289.73841922    -0.01087370    -0.00285165  0.36D-03  0.24D-03     6.69
    3     2     2     1.04616655    -0.31277111  -289.73809950    -0.01117944    -0.00309235  0.38D-03  0.27D-03     6.69
    3     3     3     1.04519161    -0.31192819  -289.73725658    -0.01154279    -0.00318160  0.54D-03  0.20D-03     6.69
    3     4     4     1.04462706    -0.31170199  -289.73703037    -0.01153217    -0.00318654  0.57D-03  0.20D-03     6.69
    3     5     5     1.04464681    -0.31151415  -289.73684253    -0.01148185    -0.00320307  0.56D-03  0.19D-03     6.69
    3     6     6     1.02598058    -0.29519163  -289.68939594    -0.01689918    -0.00587215  0.10D-02  0.48D-03     6.69
    4     1     1     1.05423836    -0.31903958  -289.74436797    -0.00594875    -0.00116721  0.96D-04  0.90D-04     9.96
    4     2     2     1.05436303    -0.31901484  -289.74434323    -0.00624374    -0.00119269  0.91D-04  0.95D-04     9.96
    4     3     3     1.05475793    -0.31898335  -289.74431174    -0.00705516    -0.00112739  0.70D-04  0.11D-03     9.96
    4     4     4     1.05399922    -0.31891088  -289.74423927    -0.00720889    -0.00125641  0.97D-04  0.99D-04     9.96
    4     5     5     1.05346081    -0.31846179  -289.74379017    -0.00694764    -0.00154105  0.98D-04  0.19D-03     9.96
    4     6     6     1.04047061    -0.30637766  -289.70058197    -0.01118603    -0.00243145  0.13D-03  0.36D-03     9.96
    5     1     1     1.05664727    -0.32058611  -289.74591450    -0.00154653    -0.00043373  0.35D-04  0.43D-04    13.25
    5     2     2     1.05651107    -0.32056541  -289.74589380    -0.00155057    -0.00044806  0.35D-04  0.45D-04    13.25
    5     3     3     1.05657234    -0.32053322  -289.74586161    -0.00154987    -0.00046017  0.41D-04  0.44D-04    13.25
    5     4     4     1.05707008    -0.32048116  -289.74580955    -0.00157028    -0.00044211  0.48D-04  0.39D-04    13.25
    5     5     5     1.05670129    -0.32020416  -289.74553255    -0.00174237    -0.00050060  0.71D-04  0.39D-04    13.25
    5     6     6     1.04268676    -0.30957242  -289.70377673    -0.00319476    -0.00084345  0.10D-03  0.68D-04    13.25
    6     1     1     1.05597076    -0.32120405  -289.74653244    -0.00061794    -0.00021385  0.20D-04  0.16D-04    16.54
    6     2     2     1.05595661    -0.32119114  -289.74651952    -0.00062573    -0.00021385  0.18D-04  0.17D-04    16.54
    6     3     3     1.05588592    -0.32117336  -289.74650174    -0.00064013    -0.00021951  0.20D-04  0.17D-04    16.54
    6     4     4     1.05610383    -0.32115672  -289.74648511    -0.00067556    -0.00022331  0.21D-04  0.16D-04    16.54
    6     5     5     1.05581219    -0.32098921  -289.74631760    -0.00078505    -0.00027914  0.20D-04  0.23D-04    16.54
    6     6     6     1.04377365    -0.31095975  -289.70516406    -0.00138733    -0.00050782  0.46D-04  0.47D-04    16.54
    7     1     1     1.05748086    -0.32154192  -289.74687031    -0.00033787    -0.00012135  0.48D-05  0.10D-04    19.82
    7     2     2     1.05746314    -0.32153103  -289.74685942    -0.00033989    -0.00012710  0.43D-05  0.11D-04    19.82
    7     3     3     1.05732686    -0.32152487  -289.74685325    -0.00035151    -0.00013290  0.45D-05  0.11D-04    19.82
    7     4     4     1.05751966    -0.32150029  -289.74682867    -0.00034357    -0.00013486  0.32D-05  0.13D-04    19.82
    7     5     5     1.05697912    -0.32138281  -289.74671120    -0.00039360    -0.00019321  0.26D-05  0.24D-04    19.82
    7     6     6     1.04699002    -0.31167444  -289.70587875    -0.00071469    -0.00030756  0.53D-05  0.38D-04    19.82
    8     1     1     1.05847526    -0.32169955  -289.74702793    -0.00015763    -0.00006649  0.31D-05  0.68D-05    23.18
    8     2     2     1.05844244    -0.32169266  -289.74702105    -0.00016163    -0.00006917  0.33D-05  0.70D-05    23.18
    8     3     3     1.05840898    -0.32169249  -289.74702088    -0.00016762    -0.00007008  0.38D-05  0.68D-05    23.18
    8     4     4     1.05851120    -0.32167116  -289.74699955    -0.00017087    -0.00007269  0.54D-05  0.71D-05    23.18
    8     5     5     1.05817137    -0.32159763  -289.74692601    -0.00021481    -0.00009178  0.82D-05  0.90D-05    23.18
    8     6     6     1.04876791    -0.31204788  -289.70625219    -0.00037345    -0.00013726  0.13D-04  0.13D-04    23.18
    9     1     1     1.05858355    -0.32178393  -289.74711232    -0.00008438    -0.00003852  0.18D-05  0.38D-05    26.59
    9     2     2     1.05853221    -0.32177953  -289.74710792    -0.00008687    -0.00003975  0.16D-05  0.41D-05    26.59
    9     3     3     1.05855401    -0.32177876  -289.74710714    -0.00008627    -0.00003985  0.15D-05  0.42D-05    26.59
    9     4     4     1.05853768    -0.32176862  -289.74709701    -0.00009746    -0.00004269  0.21D-05  0.41D-05    26.59
    9     5     5     1.05834426    -0.32171515  -289.74704353    -0.00011752    -0.00005940  0.11D-05  0.69D-05    26.59
    9     6     6     1.04949703    -0.31223870  -289.70644301    -0.00019082    -0.00008914  0.44D-05  0.10D-04    26.59
   10     1     1     1.05887452    -0.32183562  -289.74716401    -0.00005169    -0.00002665  0.24D-06  0.31D-05    29.87
   10     2     2     1.05880058    -0.32183209  -289.74716047    -0.00005255    -0.00002838  0.25D-06  0.32D-05    29.87
   10     3     3     1.05883343    -0.32183122  -289.74715960    -0.00005246    -0.00002799  0.23D-06  0.32D-05    29.87
   10     4     4     1.05883219    -0.32182569  -289.74715407    -0.00005707    -0.00002959  0.27D-06  0.36D-05    29.87
   10     5     5     1.05857836    -0.32178886  -289.74711724    -0.00007371    -0.00004214  0.10D-05  0.51D-05    29.87
   10     6     6     1.05040346    -0.31235010  -289.70655441    -0.00011140    -0.00006161  0.87D-06  0.85D-05    29.87
   11     1     1     1.05922362    -0.32186720  -289.74719559    -0.00003158    -0.00001581  0.44D-06  0.17D-05    33.15
   11     2     2     1.05918872    -0.32186561  -289.74719399    -0.00003352    -0.00001653  0.52D-06  0.16D-05    33.15
   11     3     3     1.05920480    -0.32186454  -289.74719293    -0.00003332    -0.00001668  0.46D-06  0.17D-05    33.15
   11     4     4     1.05921383    -0.32186126  -289.74718965    -0.00003558    -0.00001735  0.81D-06  0.18D-05    33.15
   11     5     5     1.05900151    -0.32183755  -289.74716593    -0.00004869    -0.00002408  0.74D-06  0.28D-05    33.15
   11     6     6     1.05112610    -0.31242185  -289.70662616    -0.00007175    -0.00003174  0.19D-05  0.35D-05    33.15
   12     1     1     1.05937438    -0.32188699  -289.74721538    -0.00001979    -0.00001030  0.18D-06  0.11D-05    36.46
   12     2     2     1.05934754    -0.32188574  -289.74721413    -0.00002013    -0.00001059  0.14D-06  0.12D-05    36.46
   12     3     3     1.05935749    -0.32188495  -289.74721334    -0.00002041    -0.00001084  0.14D-06  0.13D-05    36.46
   12     4     4     1.05935183    -0.32188359  -289.74721198    -0.00002233    -0.00001127  0.19D-06  0.13D-05    36.46
   12     5     5     1.05921419    -0.32186507  -289.74719346    -0.00002753    -0.00001631  0.15D-06  0.22D-05    36.46
   12     6     6     1.05148408    -0.31246319  -289.70666750    -0.00004133    -0.00002230  0.35D-06  0.31D-05    36.46
   13     1     1     1.05949295    -0.32189979  -289.74722817    -0.00001280    -0.00000758  0.66D-07  0.10D-05    39.83
   13     2     2     1.05946060    -0.32189871  -289.74722710    -0.00001297    -0.00000797  0.94D-07  0.10D-05    39.83
   13     3     3     1.05946731    -0.32189814  -289.74722652    -0.00001319    -0.00000802  0.81D-07  0.10D-05    39.83
   13     4     4     1.05945596    -0.32189773  -289.74722612    -0.00001414    -0.00000812  0.11D-06  0.11D-05    39.83
   13     5     5     1.05932083    -0.32188472  -289.74721311    -0.00001965    -0.00001217  0.22D-06  0.15D-05    39.83
   13     6     6     1.05179065    -0.31249032  -289.70669463    -0.00002713    -0.00001655  0.28D-06  0.23D-05    39.83
   14     1     1     1.05961275    -0.32190841  -289.74723679    -0.00000862    -0.00000483  0.63D-07  0.54D-06    43.19
   14     2     2     1.05959585    -0.32190780  -289.74723619    -0.00000909    -0.00000506  0.58D-07  0.55D-06    43.19
   14     3     3     1.05959749    -0.32190733  -289.74723572    -0.00000920    -0.00000515  0.57D-07  0.57D-06    43.19
   14     4     4     1.05959370    -0.32190723  -289.74723562    -0.00000950    -0.00000519  0.99D-07  0.61D-06    43.19
   14     5     5     1.05946370    -0.32189842  -289.74722681    -0.00001370    -0.00000748  0.48D-07  0.95D-06    43.19
   14     6     6     1.05206564    -0.31250881  -289.70671312    -0.00001850    -0.00000950  0.21D-06  0.12D-05    43.19
   15     1     1     1.05968555    -0.32191417  -289.74724256    -0.00000576    -0.00000325  0.17D-07  0.37D-06    46.52
   15     2     2     1.05967521    -0.32191369  -289.74724208    -0.00000589    -0.00000332  0.19D-07  0.40D-06    46.52
   15     3     3     1.05967865    -0.32191346  -289.74724184    -0.00000612    -0.00000345  0.21D-07  0.42D-06    46.52
   15     4     4     1.05967674    -0.32191338  -289.74724177    -0.00000615    -0.00000343  0.19D-07  0.42D-06    46.52
   15     5     5     1.05959287    -0.32190672  -289.74723510    -0.00000830    -0.00000518  0.50D-07  0.72D-06    46.52
   15     6     6     1.05225875    -0.31252031  -289.70672462    -0.00001150    -0.00000669  0.21D-07  0.96D-06    46.52
   16     1     1     1.05974709    -0.32191814  -289.74724653    -0.00000397    -0.00000248  0.18D-07  0.35D-06    49.84
   16     2     2     1.05973060    -0.32191774  -289.74724613    -0.00000405    -0.00000257  0.27D-07  0.35D-06    49.84
   16     3     3     1.05973341    -0.32191774  -289.74724613    -0.00000428    -0.00000262  0.20D-07  0.36D-06    49.84
   16     4     4     1.05973442    -0.32191752  -289.74724591    -0.00000414    -0.00000265  0.19D-07  0.36D-06    49.84
   16     5     5     1.05965845    -0.32191283  -289.74724121    -0.00000611    -0.00000404  0.20D-07  0.54D-06    49.84
   16     6     6     1.05239866    -0.31252858  -289.70673289    -0.00000827    -0.00000530  0.58D-07  0.76D-06    49.84
   17     1     1     1.05980593    -0.32192089  -289.74724927    -0.00000274    -0.00000165  0.79D-08  0.20D-06    53.31
   17     2     2     1.05979217    -0.32192067  -289.74724906    -0.00000292    -0.00000173  0.96D-08  0.23D-06    53.31
   17     3     3     1.05979611    -0.32192062  -289.74724901    -0.00000288    -0.00000173  0.66D-08  0.20D-06    53.31
   17     4     4     1.05979515    -0.32192046  -289.74724885    -0.00000294    -0.00000176  0.69D-08  0.21D-06    53.31
   17     5     5     1.05971425    -0.32191726  -289.74724565    -0.00000444    -0.00000254  0.12D-07  0.33D-06    53.31
   17     6     6     1.05250943    -0.31253422  -289.70673853    -0.00000564    -0.00000320  0.11D-07  0.44D-06    53.31
   18     1     1     1.05984494    -0.32192279  -289.74725117    -0.00000190    -0.00000112  0.58D-08  0.13D-06    56.60
   18     2     2     1.05984120    -0.32192265  -289.74725103    -0.00000198    -0.00000116  0.78D-08  0.14D-06    56.60
   18     3     3     1.05983984    -0.32192259  -289.74725097    -0.00000196    -0.00000115  0.68D-08  0.14D-06    56.60
   18     4     4     1.05983877    -0.32192248  -289.74725087    -0.00000202    -0.00000119  0.67D-08  0.15D-06    56.60
   18     5     5     1.05978501    -0.32192007  -289.74724846    -0.00000281    -0.00000181  0.89D-08  0.26D-06    56.60
   18     6     6     1.05261056    -0.31253795  -289.70674226    -0.00000373    -0.00000225  0.82D-08  0.32D-06    56.60
   19     1     1     1.05987433    -0.32192415  -289.74725253    -0.00000136    -0.00000087  0.32D-08  0.12D-06    59.90
   19     2     2     1.05986836    -0.32192408  -289.74725247    -0.00000143    -0.00000088  0.38D-08  0.12D-06    59.90
   19     3     3     1.05986901    -0.32192398  -289.74725237    -0.00000139    -0.00000093  0.30D-08  0.13D-06    59.90
   19     4     4     1.05986822    -0.32192391  -289.74725230    -0.00000143    -0.00000094  0.30D-08  0.13D-06    59.90
   19     5     5     1.05982717    -0.32192217  -289.74725055    -0.00000210    -0.00000143  0.52D-08  0.19D-06    59.90
   19     6     6     1.05268446    -0.31254073  -289.70674504    -0.00000278    -0.00000186  0.61D-08  0.27D-06    59.90
   20     1     1     1.05990390    -0.32192510  -289.74725349    -0.00000096    -0.00000060  0.17D-08  0.75D-07    63.29
   20     2     2     1.05989675    -0.32192507  -289.74725346    -0.00000099    -0.00000061  0.21D-08  0.84D-07    63.29
   20     3     3     1.05989889    -0.32192499  -289.74725337    -0.00000101    -0.00000063  0.18D-08  0.77D-07    63.29
   20     4     4     1.05989776    -0.32192494  -289.74725332    -0.00000103    -0.00000064  0.18D-08  0.79D-07    63.29
   20     5     5     1.05985328    -0.32192373  -289.74725212    -0.00000156    -0.00000092  0.36D-08  0.12D-06    63.29
   20     6     6     1.05273619    -0.31254265  -289.70674696    -0.00000192    -0.00000114  0.19D-08  0.16D-06    63.29
   21     1     1     1.05992744    -0.32192577  -289.74725416    -0.00000067    -0.00000041  0.18D-08  0.51D-07    66.66
   21     2     2     1.05992469    -0.32192575  -289.74725414    -0.00000068    -0.00000042  0.19D-08  0.53D-07    66.66
   21     3     3     1.05992408    -0.32192569  -289.74725408    -0.00000070    -0.00000042  0.17D-08  0.55D-07    66.66
   21     4     4     1.05992296    -0.32192566  -289.74725404    -0.00000072    -0.00000044  0.18D-08  0.57D-07    66.66
   21     5     5     1.05988953    -0.32192474  -289.74725313    -0.00000101    -0.00000066  0.18D-08  0.97D-07    66.66
   21     6     6     1.05278880    -0.31254397  -289.70674828    -0.00000131    -0.00000081  0.18D-08  0.12D-06    66.66
   22     1     1     1.05994420    -0.32192627  -289.74725465    -0.00000049    -0.00000032  0.69D-09  0.46D-07    70.01
   22     2     2     1.05994208    -0.32192626  -289.74725465    -0.00000051    -0.00000032  0.79D-09  0.46D-07    70.01
   22     3     3     1.05994167    -0.32192620  -289.74725458    -0.00000051    -0.00000034  0.78D-09  0.50D-07    70.01
   22     4     4     1.05994063    -0.32192618  -289.74725456    -0.00000052    -0.00000035  0.77D-09  0.50D-07    70.01
   22     5     5     1.05991558    -0.32192551  -289.74725389    -0.00000077    -0.00000053  0.19D-08  0.73D-07    70.01
   22     6     6     1.05283107    -0.31254496  -289.70674927    -0.00000099    -0.00000068  0.86D-09  0.10D-06    70.01
   23     1     1     1.05995600    -0.32192662  -289.74725501    -0.00000035    -0.00000023  0.65D-09  0.32D-07    73.42
   23     2     2     1.05995915    -0.32192662  -289.74725501    -0.00000036    -0.00000022  0.56D-09  0.29D-07    73.42
   23     3     3     1.05995687    -0.32192657  -289.74725496    -0.00000037    -0.00000024  0.57D-09  0.30D-07    73.42
   23     4     4     1.05995590    -0.32192655  -289.74725494    -0.00000038    -0.00000024  0.59D-09  0.31D-07    73.42
   23     5     5     1.05993108    -0.32192609  -289.74725447    -0.00000058    -0.00000035  0.11D-08  0.48D-07    73.42
   23     6     6     1.05285896    -0.31254566  -289.70674997    -0.00000070    -0.00000043  0.65D-09  0.60D-07    73.42
   24     1     1     1.05997057    -0.32192687  -289.74725526    -0.00000025    -0.00000016  0.43D-09  0.20D-07    76.77
   24     2     2     1.05997229    -0.32192687  -289.74725525    -0.00000025    -0.00000016  0.45D-09  0.20D-07    76.77
   24     3     3     1.05997020    -0.32192683  -289.74725522    -0.00000026    -0.00000016  0.44D-09  0.22D-07    76.77
   24     4     4     1.05996945    -0.32192682  -289.74725521    -0.00000027    -0.00000017  0.47D-09  0.22D-07    76.77
   24     5     5     1.05994997    -0.32192647  -289.74725485    -0.00000038    -0.00000025  0.59D-09  0.37D-07    76.77
   24     6     6     1.05288625    -0.31254614  -289.70675045    -0.00000048    -0.00000031  0.35D-09  0.44D-07    76.77
   25     1     1     1.05998190    -0.32192706  -289.74725544    -0.00000019    -0.00000012  0.27D-09  0.17D-07    80.12
   25     2     2     1.05998278    -0.32192705  -289.74725544    -0.00000018    -0.00000012  0.23D-09  0.17D-07    80.12
   25     3     3     1.05998120    -0.32192702  -289.74725541    -0.00000019    -0.00000013  0.27D-09  0.19D-07    80.12
   25     4     4     1.05998043    -0.32192702  -289.74725540    -0.00000020    -0.00000013  0.27D-09  0.19D-07    80.12
   25     5     5     1.05996475    -0.32192676  -289.74725514    -0.00000029    -0.00000020  0.56D-09  0.28D-07    80.12
   25     6     6     1.05291099    -0.31254651  -289.70675082    -0.00000037    -0.00000026  0.30D-09  0.39D-07    80.12
   26     1     1     1.05998991    -0.32192719  -289.74725558    -0.00000013    -0.00000009  0.22D-09  0.12D-07    83.48
   26     2     2     1.05999123    -0.32192718  -289.74725557    -0.00000013    -0.00000009  0.19D-09  0.12D-07    83.48
   26     3     3     1.05999005    -0.32192716  -289.74725555    -0.00000014    -0.00000009  0.19D-09  0.12D-07    83.48
   26     4     4     1.05998936    -0.32192716  -289.74725555    -0.00000014    -0.00000009  0.20D-09  0.12D-07    83.48
   26     5     5     1.05997469    -0.32192698  -289.74725536    -0.00000022    -0.00000014  0.38D-09  0.19D-07    83.48
   26     6     6     1.05292761    -0.31254677  -289.70675108    -0.00000026    -0.00000016  0.19D-09  0.23D-07    83.48
   27     1     1     1.05999746    -0.32192728  -289.74725567    -0.00000009    -0.00000006  0.14D-09  0.79D-08    86.76
   27     2     2     1.05999835    -0.32192728  -289.74725567    -0.00000009    -0.00000006  0.14D-09  0.78D-08    86.76
   27     3     3     1.05999668    -0.32192726  -289.74725565    -0.00000010    -0.00000006  0.16D-09  0.85D-08    86.76
   27     4     4     1.05999714    -0.32192726  -289.74725565    -0.00000010    -0.00000006  0.15D-09  0.85D-08    86.76
   27     5     5     1.05998537    -0.32192712  -289.74725551    -0.00000015    -0.00000010  0.21D-09  0.14D-07    86.76
   27     6     6     1.05294234    -0.31254695  -289.70675126    -0.00000018    -0.00000012  0.15D-09  0.17D-07    86.76
   28     1     1     1.06004072    -0.32192753  -289.74725592    -0.00000025    -0.00000001  0.88D-10  0.16D-08    88.15
   28     2     2     1.05999751    -0.32192728  -289.74725567    -0.00000001    -0.00000006  0.14D-09  0.79D-08    88.15
   28     3     3     1.05999835    -0.32192728  -289.74725567    -0.00000002    -0.00000006  0.14D-09  0.78D-08    88.15
   28     4     4     1.05999668    -0.32192726  -289.74725565    -0.00000000    -0.00000006  0.16D-09  0.85D-08    88.15
   28     5     5     1.05999714    -0.32192726  -289.74725565    -0.00000014    -0.00000006  0.15D-09  0.85D-08    88.15
   28     6     6     1.05302833    -0.31254744  -289.70675175    -0.00000049    -0.00000004  0.74D-10  0.57D-08    88.15


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.7%
 P   0.7%   8.9%  66.0%

 Initialization:   0.1%
 Other:           23.4%

 Total CPU:       88.2 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222/\0           0.0003316   0.0027566  -0.0004832   0.9643173  -0.0071045   0.0000000
 22222/0\          -0.0000303   0.0002516  -0.0065128   0.0071004   0.9642992  -0.0000000
 222220/\          -0.0000011  -0.0173003   0.9641695   0.0005806   0.0065122   0.0000000
 22222200           0.7656364  -0.1836892  -0.0032956   0.0002605   0.0000478   0.5479576
 22222002          -0.2237159   0.7548102   0.0135453  -0.0020747  -0.0000972   0.5479574
 22222020          -0.5419202  -0.5711199  -0.0102497   0.0018142   0.0000494   0.5479572
 20222220          -0.0268439   0.0905640   0.0016252  -0.0002489  -0.0000117  -0.1275593
 20222202          -0.0650255  -0.0685246  -0.0012298   0.0002177   0.0000059  -0.1275589
 20222022           0.0918680  -0.0220393  -0.0003954   0.0000313   0.0000057  -0.1275582
 20222/\2          -0.0000398  -0.0003307   0.0000580  -0.1156991   0.0008524  -0.0000000
 20222/2\           0.0000036  -0.0000302   0.0007814  -0.0008519  -0.1156970  -0.0000000
 202222/\           0.0000001   0.0020757  -0.1156811  -0.0000697  -0.0007813  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\222/\0  14.1     0.0000291   0.0002420  -0.0000424   0.0846644  -0.0006238   0.0000000
 2\222/\0  15.1     0.0821861   0.0206198   0.0003701  -0.0000870   0.0000003   0.0054601
 2\2220/\  12.1    -0.0232406  -0.0814797  -0.0014622   0.0002402   0.0000089   0.0054590
 2\222/0\  11.1    -0.0000024   0.0000196  -0.0005073   0.0005531   0.0751098  -0.0000000
 2\2220/\  11.1    -0.0000001  -0.0013475   0.0750993   0.0000452   0.0005072   0.0000000
 2\222/0\  13.1     0.0638829  -0.0556660  -0.0009989   0.0001367   0.0000088   0.0054594
 2\222/\0   8.1     0.0000178   0.0001479  -0.0000259   0.0517425  -0.0003812   0.0000000
 2\2220/\   5.1    -0.0123148  -0.0502519  -0.0009018   0.0001475   0.0000056   0.0004442

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.790056    0.000334   -0.000001   -0.000030   -0.564846    0.000000
 2          -0.564764    0.002776   -0.017424    0.000253    0.789942    0.000001
 3          -0.010136   -0.000487    0.971046   -0.006559    0.014175    0.000000
 4           0.001881    0.971195    0.000585    0.007151   -0.002058   -0.000000
 5           0.000040   -0.007155    0.006559    0.971177   -0.000113    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.974363

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971206    0.000000    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.971225    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.971225   -0.000000   -0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.971226   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.971226   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.974363


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.79005633 (fixed)   0.97126721 (relaxed)   0.97120574 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012659   -0.00000000   -0.25672645
 Singles      0.03125143   -0.04979328   -0.05645768
 Pairs        0.02879689   -0.00000007   -0.00874340
 Total        1.06017490   -0.04979334   -0.32192753
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42532839
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45583203
 One electron energy                 -401.11109392
 Two electron energy                  111.36383800
 Virial quotient                       -0.98736240
 Correlation energy                    -0.32192753
 !MRCI STATE 1.1 Energy              -289.747255921176

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76662788 (Davidson, fixed reference)
 Cluster corrected energies          -289.76658468 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76662788 (Davidson, rotated reference)

 Cluster corrected energies          -289.76406473 (Pople, fixed reference)
 Cluster corrected energies          -289.76402573 (Pople, relaxed reference)
 Cluster corrected energies          -289.76406473 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.78994248 (fixed)   0.97128700 (relaxed)   0.97122546 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012674   -0.00000000   -0.25673281
 Singles      0.03125684   -0.04979725   -0.05646182
 Pairs        0.02874827   -0.00000021   -0.00873265
 Total        1.06013185   -0.04979745   -0.32192728
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42532839
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45593563
 One electron energy                 -401.11127484
 Two electron energy                  111.36401917
 Virial quotient                       -0.98736206
 Correlation energy                    -0.32192728
 !MRCI STATE 2.1 Energy              -289.747255670674

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76661375 (Davidson, fixed reference)
 Cluster corrected energies          -289.76657051 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76661375 (Davidson, rotated reference)

 Cluster corrected energies          -289.76405195 (Pople, fixed reference)
 Cluster corrected energies          -289.76401291 (Pople, relaxed reference)
 Cluster corrected energies          -289.76405195 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97104642 (fixed)   0.97128662 (relaxed)   0.97122505 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012679    0.00000000   -0.25673264
 Singles      0.03125709   -0.04979741   -0.05646193
 Pairs        0.02874886   -0.00000000   -0.00873271
 Total        1.06013275   -0.04979742   -0.32192728
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42532839
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45592405
 One electron energy                 -401.11126761
 Two electron energy                  111.36401194
 Virial quotient                       -0.98736209
 Correlation energy                    -0.32192728
 !MRCI STATE 3.1 Energy              -289.747255665409

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76661404 (Davidson, fixed reference)
 Cluster corrected energies          -289.76657077 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76661404 (Davidson, rotated reference)

 Cluster corrected energies          -289.76405221 (Pople, fixed reference)
 Cluster corrected energies          -289.76401314 (Pople, relaxed reference)
 Cluster corrected energies          -289.76405221 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97119531 (fixed)   0.97128738 (relaxed)   0.97122582 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012679    0.00000000   -0.25673297
 Singles      0.03125731   -0.04979748   -0.05646209
 Pairs        0.02874697    0.00000000   -0.00873221
 Total        1.06013107   -0.04979748   -0.32192726
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42532839
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45592584
 One electron energy                 -401.11127473
 Two electron energy                  111.36401908
 Virial quotient                       -0.98736209
 Correlation energy                    -0.32192726
 !MRCI STATE 4.1 Energy              -289.747255650173

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76661348 (Davidson, fixed reference)
 Cluster corrected energies          -289.76657022 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76661348 (Davidson, rotated reference)

 Cluster corrected energies          -289.76405170 (Pople, fixed reference)
 Cluster corrected energies          -289.76401264 (Pople, relaxed reference)
 Cluster corrected energies          -289.76405170 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97117710 (fixed)   0.97128717 (relaxed)   0.97122561 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00012678    0.00000000   -0.25673296
 Singles      0.03125717   -0.04979737   -0.05646205
 Pairs        0.02874758   -0.00000000   -0.00873226
 Total        1.06013153   -0.04979737   -0.32192726
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.42532839
 Nuclear energy                         0.00000000
 Kinetic energy                       293.45592424
 One electron energy                 -401.11127476
 Two electron energy                  111.36401911
 Virial quotient                       -0.98736209
 Correlation energy                    -0.32192726
 !MRCI STATE 5.1 Energy              -289.747255649246

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.76661363 (Davidson, fixed reference)
 Cluster corrected energies          -289.76657036 (Davidson, relaxed reference)
 Cluster corrected energies          -289.76661363 (Davidson, rotated reference)

 Cluster corrected energies          -289.76405184 (Pople, fixed reference)
 Cluster corrected energies          -289.76401278 (Pople, relaxed reference)
 Cluster corrected energies          -289.76405184 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97436336 (fixed)   0.97449580 (relaxed)   0.97436336 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027188    0.00000000   -0.00008068
 Singles      0.00732278   -0.01986849   -0.02103597
 Pairs        0.04571997   -0.29267895   -0.29143079
 Total        1.05331463   -0.31254744   -0.31254744
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -289.39420431
 Nuclear energy                         0.00000000
 Kinetic energy                       293.42067915
 One electron energy                 -400.96868467
 Two electron energy                  111.26193291
 Virial quotient                       -0.98734265
 Correlation energy                    -0.31254744
 !MRCI STATE 6.1 Energy              -289.706751754360

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -289.72341510 (Davidson, fixed reference)
 Cluster corrected energies          -289.72332562 (Davidson, relaxed reference)
 Cluster corrected energies          -289.72341510 (Davidson, rotated reference)

 Cluster corrected energies          -289.72114352 (Pople, fixed reference)
 Cluster corrected energies          -289.72106347 (Pople, relaxed reference)
 Cluster corrected energies          -289.72114352 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       28.17       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       102.82     88.87      8.88      4.28      0.11      0.42
 REAL TIME  *       116.07 SEC
 DISK USED  *        58.64 MB (local),      754.65 MB (total)
 SF USED    *       213.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -289.76662788  AU                              
 SETTING HLSDIAG(5)     =      -289.76661375  AU                              
 SETTING HLSDIAG(6)     =      -289.76661404  AU                              
 SETTING HLSDIAG(7)     =      -289.76661348  AU                              
 SETTING HLSDIAG(8)     =      -289.76661363  AU                              
 SETTING HLSDIAG(9)     =      -289.72341510  AU                              


         HLSDIAG
    -289.7941657
    -289.7941656
    -289.7941654
    -289.7666279
    -289.7666138
    -289.7666140
    -289.7666135
    -289.7666136
    -289.7234151
                                                  

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

 Time for Seward_LS:       0.68 sec

        2402978. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.68 sec, REAL time:      0.70 sec


 SORTLS1 read     2507997. and wrote     2507997. SO integrals in    36 records. CPU time:      0.02 sec, REAL time:      0.04 sec
 SORTLS2 read     2507997. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    72.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    72.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       28.17       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       104.31      1.48     88.87      8.88      4.28      0.11      0.42
 REAL TIME  *       117.66 SEC
 DISK USED  *        58.67 MB (local),      944.15 MB (total)
 SF USED    *       213.89 MB
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

 Original energies:   -289.777997   -289.777997   -289.777997
 Replaced energies:   -289.794166   -289.794166   -289.794165

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -289.747256   -289.747256   -289.747256   -289.747256   -289.747256   -289.706752
 Replaced energies:   -289.766628   -289.766614   -289.766614   -289.766613   -289.766614   -289.723415



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -289.79416574

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      51.84       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      51.84       0.00       0.00       0.00      -0.00

    2   2.1  1.0  1.0       0.00       0.04       0.00     -51.84       0.00       0.00       0.00       0.00       0.00      -0.02
                            0.00      -0.00      73.31       0.00       0.00      -0.00       0.00       0.00       0.00      41.10

    3   3.1  1.0  1.0       0.00       0.00       0.08      -0.00      -0.00       0.00       0.00       0.00       0.00      58.06
                           -0.00     -73.31      -0.00     -51.84       0.00      -0.00       0.00       0.00       0.00       0.02

    4   1.1  1.0  0.0       0.00     -51.84      -0.00       0.00       0.00       0.00       0.00      51.84       0.00       0.00
                           -0.00      -0.00      51.84       0.00       0.00       0.00       0.00      -0.00      51.84      23.99

    5   2.1  1.0  0.0      51.84       0.00      -0.00       0.00       0.04       0.00     -51.84       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.08      -0.00      -0.00       0.00       0.00
                          -51.84       0.00       0.00      -0.00      -0.00       0.00     -51.84       0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00     -51.84      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      51.84       0.00       0.00      -0.00       0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      51.84       0.00      -0.00       0.00       0.04       0.00      -0.02
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     -73.31     -41.10

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.08      58.06
                           -0.00      -0.00      -0.00     -51.84       0.00       0.00       0.00      73.31       0.00      -0.02

   10   1.1  0.0  0.0      -0.00      -0.02      58.06       0.00       0.00       0.00      -0.00      -0.02      58.06    6043.86
                            0.00     -41.10      -0.02     -23.99       0.00      -0.00      -0.00      41.10       0.02       0.00

   11   2.1  0.0  0.0       0.01      -0.15     -13.93       0.00       0.00       0.00       0.01      -0.15     -13.93       0.00
                            0.93     -43.31      -0.15      80.95       1.31       0.02      -0.93      43.31       0.15      -0.00

   12   3.1  0.0  0.0      -0.35       0.03      -0.25       0.00       0.00       0.00      -0.35       0.03      -0.25       0.00
                          -51.70      -0.78       0.03       1.45     -73.12      -0.49      51.70       0.78      -0.03      -0.00

   13   4.1  0.0  0.0       0.38     -51.71       0.02       0.00       0.00       0.00       0.38     -51.71       0.02       0.00
                           -0.03       0.14     -51.71      -0.22      -0.04       0.54       0.03      -0.14      51.71      -0.00

   14   5.1  0.0  0.0      51.71       0.38       0.00       0.00       0.00       0.00      51.71       0.38       0.00       0.00
                           -0.35       0.00       0.38      -0.01      -0.49      73.12       0.35      -0.00      -0.38      -0.00

   15   6.1  0.0  0.0      -0.00      -0.00     -85.48       0.00       0.00       0.00      -0.00      -0.00     -85.48       0.00
                            0.00     -85.49      -0.00    -120.89      -0.00       0.00      -0.00      85.49       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.01      -0.35       0.38      51.71      -0.00
                           -0.93      51.70       0.03       0.35      -0.00

    2   2.1  1.0  1.0      -0.15       0.03     -51.71       0.38      -0.00
                           43.31       0.78      -0.14      -0.00      85.49

    3   3.1  1.0  1.0     -13.93      -0.25       0.02       0.00     -85.48
                            0.15      -0.03      51.71      -0.38       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                          -80.95      -1.45       0.22       0.01     120.89

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -1.31      73.12       0.04       0.49       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.49      -0.54     -73.12      -0.00

    7   1.1  1.0 -1.0       0.01      -0.35       0.38      51.71      -0.00
                            0.93     -51.70      -0.03      -0.35       0.00

    8   2.1  1.0 -1.0      -0.15       0.03     -51.71       0.38      -0.00
                          -43.31      -0.78       0.14       0.00     -85.49

    9   3.1  1.0 -1.0     -13.93      -0.25       0.02       0.00     -85.48
                           -0.15       0.03     -51.71       0.38      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6046.96       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6046.90       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6047.02       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6046.99       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15527.97
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -289.79416574 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      73.313      -0.000      -0.000

    2    1  |1 1>+              0.000       0.040       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.080      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -73.313       0.000       0.000      -0.000     -73.313

    1    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000     -73.313
                                0.000      -0.000      73.313       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.040       0.000      73.313       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.080       0.000       0.000
                              -73.313       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      73.313       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000     -73.313       0.000       0.000       0.000       0.040
                                0.000      -0.000      73.313       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000     -73.313      -0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.002      -0.025      82.104       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -23.992       0.000      -0.002       0.000     -58.120

    2    1  |0 0>               0.019      -0.209     -19.699       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      80.949       1.312       0.019       1.312     -61.253

    3    1  |0 0>              -0.494       0.037      -0.353       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       1.453     -73.118      -0.494     -73.118      -1.099

    4    1  |0 0>               0.538     -73.127       0.028       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.222      -0.044       0.538      -0.044       0.195

    5    1  |0 0>              73.124       0.539       0.005       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.010      -0.494      73.124      -0.494       0.005

    6    1  |0 0>              -0.000      -0.000    -120.891       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -120.893      -0.000       0.000       0.000    -120.896

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.002       0.019      -0.494       0.538      73.124      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.025      -0.209       0.037     -73.127       0.539      -0.000
                               73.313       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      82.104     -19.699      -0.353       0.028       0.005    -120.891
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      23.992     -80.949      -1.453       0.222       0.010     120.893

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -1.312      73.118       0.044       0.494       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.002      -0.019       0.494      -0.538     -73.124      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -1.312      73.118       0.044       0.494      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      58.120      61.253       1.099      -0.195      -0.005     120.896

    3    1  |1 1>-              0.080       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.025       0.209      -0.037      73.128      -0.539       0.000

    1    1  |0 0>               0.000    6043.862       0.000       0.000       0.000       0.000       0.000
                               -0.025       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6046.963       0.000       0.000       0.000       0.000
                               -0.209      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6046.901       0.000       0.000       0.000
                                0.037      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6047.023       0.000       0.000
                              -73.128      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6046.990       0.000
                                0.539      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15527.970
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -289.79484638    -0.00068064     -149.38      0.00000000        0.00      0.0000
    2  -289.79449969    -0.00033395      -73.29      0.00034669       76.09      0.0094
    3  -289.79449960    -0.00033386      -73.27      0.00034678       76.11      0.0094
    4  -289.79449951    -0.00033377      -73.25      0.00034687       76.13      0.0094
    5  -289.79383978     0.00032596       71.54      0.00100660      220.92      0.0274
    6  -289.79383977     0.00032597       71.54      0.00100661      220.93      0.0274
    7  -289.79383968     0.00032607       71.56      0.00100671      220.95      0.0274
    8  -289.79383959     0.00032616       71.58      0.00100680      220.97      0.0274
    9  -289.79383957     0.00032617       71.59      0.00100681      220.97      0.0274
   10  -289.76661972     0.02754602     6045.65      0.02822666     6195.04      0.7681
   11  -289.76660588     0.02755986     6048.69      0.02824050     6198.07      0.7685
   12  -289.76660560     0.02756014     6048.75      0.02824078     6198.14      0.7685
   13  -289.76660547     0.02756027     6048.78      0.02824091     6198.16      0.7685
   14  -289.76660533     0.02756042     6048.81      0.02824106     6198.20      0.7685
   15  -289.72340236     0.07076338    15530.77      0.07144402    15680.15      1.9441

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.00000000  0.00000000  0.70730286  0.00000000 -0.00000009 -0.00000628 -0.70680474  0.00000260
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000 -0.00000000  0.70720634  0.00000082  0.00000034 -0.00000260 -0.70690131
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.57719310 -0.00000000 -0.00000000 -0.00000000  0.20640906  0.00002295  0.00000090  0.00007168
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.57740295 -0.00000000  0.00000000 -0.00000000  0.78715859  0.00008776  0.00000015  0.00002046

   2    1  |1 0>           0.00000000  0.00280237 -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000
                          -0.00000000 -0.70700468  0.00000000  0.00000000 -0.00007885  0.70709743 -0.00000628  0.00000034

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.70691065  0.00000000  0.00000009  0.00000628  0.70719701 -0.00000260

   1    1  |1 1>-         -0.00000000 -0.00280314  0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000
                           0.00000000  0.70719776 -0.00000000  0.00000000 -0.00007883  0.70690432 -0.00000628  0.00000034

   2    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.57730027 -0.00000000 -0.00000000 -0.00000000 -0.58092786 -0.00006483  0.00000075  0.00005120

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.70700721 -0.00000082 -0.00000034  0.00000260  0.70710047

   1    1  |0 0>          -0.00000262  0.00000000  0.00000000  0.00000000 -0.00034644 -0.00000002 -0.00000056 -0.00000752
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000139  0.00000004 -0.00000000  0.00000001  0.01729906  0.00031239  0.00000451 -0.00004948
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000002 -0.00000232  0.00000003 -0.00000000  0.00031238 -0.01730259 -0.00011672  0.00000866
                           0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000000 -0.00000000 -0.00000003  0.00000235 -0.00004917 -0.00001042  0.00012735 -0.01730457
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000002 -0.00000466 -0.00000002 -0.00000205 -0.00011671  0.01730382  0.00012743
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.01335522  0.00000000  0.00000000 -0.00000000  0.00000146  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000083 -0.00000038 -0.00008281  0.00000321  0.01223555  0.00008981 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00006393 -0.00000421  0.00000614 -0.00003501  0.00008986 -0.01223612 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.78992668  0.01374558 -0.00005917 -0.00329579  0.00000086  0.00000468 -0.00771051
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.21616678  0.00401701 -0.00024322 -0.01354481  0.00000176  0.00003726  0.00771061

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000006 -0.00000001  0.01223483 -0.00021967  0.00008281  0.00000737  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000083  0.00000038  0.00008281 -0.00000321 -0.01223574 -0.00008981 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000006 -0.00000001  0.01223476 -0.00021967  0.00008281  0.00000737 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.57357475  0.00972983  0.00018406  0.01024964 -0.00000090 -0.00003258  0.00771079

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00006395  0.00000421 -0.00000614  0.00003501 -0.00008987  0.01223624  0.00000000

   1    1  |0 0>          -0.01730973  0.99985011  0.00000054  0.00002982 -0.00000000 -0.00000009  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00034710 -0.00002983  0.00001123  0.99985025 -0.00000129 -0.00000254  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000625 -0.00000054  0.99985024 -0.00001123  0.00001393  0.00000042  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000850  0.00000009 -0.00000042  0.00000254  0.00002326  0.99985026 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000058  0.00000000 -0.00001393  0.00000129  0.99985026 -0.00002326  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000124 -0.00000002 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.99991082
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -289.79484638     -0.00068064     -149.38      0.00000000        0.00      0.0000
     2   1   -289.79449969     -0.00033395      -73.29      0.00034669       76.09      0.0094
     3   1   -289.79449960     -0.00033386      -73.27      0.00034678       76.11      0.0094
     4   1   -289.79449951     -0.00033377      -73.25      0.00034687       76.13      0.0094
     5   1   -289.79383978      0.00032596       71.54      0.00100660      220.92      0.0274
     6   1   -289.79383977      0.00032597       71.54      0.00100661      220.93      0.0274
     7   1   -289.79383968      0.00032607       71.56      0.00100671      220.95      0.0274
     8   1   -289.79383959      0.00032616       71.58      0.00100680      220.97      0.0274
     9   1   -289.79383957      0.00032617       71.59      0.00100681      220.97      0.0274
    10   1   -289.76661972      0.02754602     6045.65      0.02822666     6195.04      0.7681
    11   1   -289.76660588      0.02755986     6048.69      0.02824050     6198.07      0.7685
    12   1   -289.76660560      0.02756014     6048.75      0.02824078     6198.14      0.7685
    13   1   -289.76660547      0.02756027     6048.78      0.02824091     6198.16      0.7685
    14   1   -289.76660533      0.02756042     6048.81      0.02824106     6198.20      0.7685
    15   1   -289.72340236      0.07076338    15530.77      0.07144402    15680.15      1.9441

 E0 =   -289.79416574 is the energy of the lowest zeroth-order state
 E1 =   -289.79484638 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.00000000  0.00000000  0.70730286  0.00000000 -0.00000009 -0.00000628 -0.70680474  0.00000260
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000 -0.00000000  0.70720634  0.00000082  0.00000034 -0.00000260 -0.70690131
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+      -0.57719310 -0.00000000 -0.00000000 -0.00000000  0.20640906  0.00002295  0.00000090  0.00007168
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.57740295 -0.00000000  0.00000000 -0.00000000  0.78715859  0.00008776  0.00000015  0.00002046

  5  1     2    1  |1 0>        0.00000000  0.00280237 -0.00000000 -0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000
                               -0.00000000 -0.70700468  0.00000000  0.00000000 -0.00007885  0.70709743 -0.00000628  0.00000034

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.70691065  0.00000000  0.00000009  0.00000628  0.70719701 -0.00000260

  7  1     1    1  |1 1>-      -0.00000000 -0.00280314  0.00000000  0.00000000  0.00000000 -0.00000006  0.00000000 -0.00000000
                                0.00000000  0.70719776 -0.00000000  0.00000000 -0.00007883  0.70690432 -0.00000628  0.00000034

  8  1     2    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.57730027 -0.00000000 -0.00000000 -0.00000000 -0.58092786 -0.00006483  0.00000075  0.00005120

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.70700721 -0.00000082 -0.00000034  0.00000260  0.70710047

 10  1     1    1  |0 0>       -0.00000262  0.00000000  0.00000000  0.00000000 -0.00034644 -0.00000002 -0.00000056 -0.00000752
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000139  0.00000004 -0.00000000  0.00000001  0.01729906  0.00031239  0.00000451 -0.00004948
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000002 -0.00000232  0.00000003 -0.00000000  0.00031238 -0.01730259 -0.00011672  0.00000866
                                0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000000 -0.00000000 -0.00000003  0.00000235 -0.00004917 -0.00001042  0.00012735 -0.01730457
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000002 -0.00000466 -0.00000002 -0.00000205 -0.00011671  0.01730382  0.00012743
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.01335522  0.00000000  0.00000000 -0.00000000  0.00000146  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000083 -0.00000038 -0.00008281  0.00000321  0.01223555  0.00008981 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00006393 -0.00000421  0.00000614 -0.00003501  0.00008986 -0.01223612 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.78992668  0.01374558 -0.00005917 -0.00329579  0.00000086  0.00000468 -0.00771051
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.21616678  0.00401701 -0.00024322 -0.01354481  0.00000176  0.00003726  0.00771061

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000006 -0.00000001  0.01223483 -0.00021967  0.00008281  0.00000737  0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000083  0.00000038  0.00008281 -0.00000321 -0.01223574 -0.00008981 -0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000006 -0.00000001  0.01223476 -0.00021967  0.00008281  0.00000737 -0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.57357475  0.00972983  0.00018406  0.01024964 -0.00000090 -0.00003258  0.00771079

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00006395  0.00000421 -0.00000614  0.00003501 -0.00008987  0.01223624  0.00000000

 10  1     1    1  |0 0>       -0.01730973  0.99985011  0.00000054  0.00002982 -0.00000000 -0.00000009  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00034710 -0.00002983  0.00001123  0.99985025 -0.00000129 -0.00000254  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000625 -0.00000054  0.99985024 -0.00001123  0.00001393  0.00000042  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000850  0.00000009 -0.00000042  0.00000254  0.00002326  0.99985026 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000058  0.00000000 -0.00001393  0.00000129  0.99985026 -0.00002326  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 15  1     6    1  |0 0>        0.00000124 -0.00000002 -0.00000000 -0.00000001 -0.00000000  0.00000000  0.99991082
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   50.03%    0.00%    0.00%    0.00%   49.96%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.01%    0.00%    0.00%    0.00%   49.97%
  3  1     3    1  |1 1>+        33.32%    0.00%    0.00%    0.00%    4.26%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         33.34%    0.00%    0.00%    0.00%   61.96%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%   49.99%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   49.97%    0.00%    0.00%    0.00%   50.01%    0.00%
  7  1     1    1  |1 1>-         0.00%   50.01%    0.00%    0.00%    0.00%   49.97%    0.00%    0.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   33.75%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%   49.99%    0.00%    0.00%    0.00%   50.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.00%
 15  1     6    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  3  1     3    1  |1 1>+        62.40%    0.02%    0.00%    0.00%    0.00%    0.00%    0.01%
  4  1     1    1  |1 0>          4.67%    0.00%    0.00%    0.02%    0.00%    0.00%    0.01%
  5  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        32.90%    0.01%    0.00%    0.01%    0.00%    0.00%    0.01%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
 10  1     1    1  |0 0>          0.03%   99.97%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   99.97%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%   99.97%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.97%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.97%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.98%


 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       28.17       700     1000      520     2100     2140     5102     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       129.50     25.18      1.48     88.87      8.88      4.28      0.11      0.42
 REAL TIME  *       144.42 SEC
 DISK USED  *        58.67 MB (local),      944.15 MB (total)
 SF USED    *       213.89 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -289.723402361788

              CI              CI           MULTI         RHF-SCF
   -289.70675175   -289.77799732   -289.39420431   -289.45517525
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
