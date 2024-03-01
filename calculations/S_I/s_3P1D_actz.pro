
 Working directory              : /wrk/irikura/molpro.8D8a5MKr24/
 Global scratch directory       : /wrk/irikura/molpro.8D8a5MKr24/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.8D8a5MKr24/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,S SO-CI
                                                                                 ! Active space (6,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={S};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=16,sym=1,spin=2}
 
 {multi
     wf,sym=1,spin=2;state,3;
     wf,sym=1,spin=0;state,5;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,1,0
 
 {ci;wf,sym=1,spin=2;state,3; save,5202.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,5; save,5201.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5202.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.13 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   S SO-CI                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 13:21:03  
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

 Library entry S      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry S      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry S      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry S      F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  S      16.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   16
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

     7.340 MB (compressed) written to integral file ( 18.3%)

     Node minimum: 0.262 MB, node maximum: 0.786 MB


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

         1 0.220E-02 0.550E-02 0.598E-01 0.149E+00 0.149E+00 0.149E+00 0.149E+00 0.149E+00
         2 0.135E-01 0.135E-01 0.135E-01 0.300E-01 0.300E-01 0.300E-01 0.116E+00 0.116E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.81       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.62      0.40
 REAL TIME  *         1.16 SEC
 DISK USED  *        29.14 MB (local),      400.73 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    3   6

 Initial alpha occupancy:   3   6
 Initial beta  occupancy:   3   4

 NELEC=   16   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -398.57777024    -398.57777024     0.00D+00     0.14D+00     0     0       0.00      0.00    start
   2     -398.58502631      -0.00725607     0.33D-02     0.69D-02     1     0       0.00      0.00    diag2
   3     -398.58534467      -0.00031836     0.10D-02     0.13D-02     2     0       0.01      0.01    diag2
   4     -398.58539497      -0.00005030     0.24D-03     0.58D-03     3     0       0.00      0.01    diag2
   5     -398.58540304      -0.00000808     0.76D-04     0.29D-03     4     0       0.00      0.01    diag2
   6     -398.58540352      -0.00000048     0.19D-04     0.78D-04     5     0       0.00      0.01    diag2
   7     -398.58540353      -0.00000001     0.29D-05     0.11D-04     6     0       0.00      0.01    diag2
   8     -398.58540353      -0.00000000     0.33D-06     0.17D-05     7     0       0.00      0.01    fixocc
   9     -398.58540353      -0.00000000     0.29D-07     0.78D-07     0     0       0.01      0.02    diag

 Final alpha occupancy:   3   6
 Final beta  occupancy:   3   4

 !RHF STATE 1.1 Energy               -398.585403528641
  RHF One-electron energy            -550.851178789679
  RHF Two-electron energy             152.265775261038
  RHF Kinetic energy                  405.263482256420
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.983521637107

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.29506     1  1  s    0.99908
    2.1     2.00000    -9.05460     1  2  s    1.00053
    3.1     2.00000    -0.88464     1  3  s    1.00808
    1.2     2.00000    -6.68315     1  1  px   0.99865
    2.2     2.00000    -6.68315     1  1  py   0.99853
    3.2     2.00000    -6.68153     1  1  pz   1.00179
    4.2     2.00000    -0.39732     1  2  pz   0.97133
    5.2     1.00000    -0.48037     1  2  px   1.04382
    6.2     1.00000    -0.48037     1  2  py   1.04370


 HOMO      6.2    -0.480372 =     -13.0716eV
 LUMO      7.2     0.091800 =       2.4980eV
 LUMO-HOMO         0.572171 =      15.5696eV

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
 CPU TIMES  *         0.71      0.08      0.40
 REAL TIME  *         2.29 SEC
 DISK USED  *        29.72 MB (local),      407.69 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      66 (   30   36)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.240D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.141D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.789D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 3 5 4 6 2 1   3 5 4 6 2 3 5 6 4 2   1 3 5 6 4 2 1 5 3 6   4 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.622D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.157D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.158D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.263D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.195D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.346D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 1 2 1 2 3 1   2 3 7 9 810 4 5 6 1   2 3 9 710 8 5 4 6 7   9 810 4 5 6 1 2 3 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  317  ( 11 closed/active, 168 closed/virtual, 0 active/active, 138 active/virtual )
 Total number of variables:    376
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -398.54874643    -398.55015869   -0.00141226    0.05245774 0.00002278 0.00000000  0.44E-01      0.12
   2    4    8    0   -398.55016373    -398.55016379   -0.00000006    0.00027306 0.00000005 0.00000000  0.27E-03      0.23
   3   20   40    0   -398.55016379    -398.55016379    0.00000000    0.00000006 0.00000009 0.00000000  0.53E-07      0.41

 CONVERGENCE REACHED!  Final gradient:    0.00000008 ( 0.84E-07)
                       Final energy:   -398.55016379
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -398.582924231046
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22817483
 One electron energy                          -550.76602389
 Two electron energy                           152.18309966
 Virial ratio                                    1.98360121
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -398.582924229235
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22817490
 One electron energy                          -550.76602401
 Two electron energy                           152.18309978
 Virial ratio                                    1.98360121
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -398.582924227975
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22817494
 One electron energy                          -550.76602410
 Two electron energy                           152.18309987
 Virial ratio                                    1.98360121
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -398.530507521204
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22817483
 One electron energy                          -550.76602388
 Two electron energy                           152.23551636
 Virial ratio                                    1.98347186
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -398.530507521127
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22817483
 One electron energy                          -550.76602389
 Two electron energy                           152.23551637
 Virial ratio                                    1.98347186
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -398.530507520093
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22817490
 One electron energy                          -550.76602401
 Two electron energy                           152.23551649
 Virial ratio                                    1.98347186
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -398.530507519374
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22817494
 One electron energy                          -550.76602410
 Two electron energy                           152.23551658
 Virial ratio                                    1.98347186
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -398.530507519170
 Nuclear energy                                  0.00000000
 Kinetic energy                                405.22817495
 One electron energy                          -550.76602412
 Two electron energy                           152.23551660
 Virial ratio                                    1.98347186
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.380357953989
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000002
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000017
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999999967
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.619640236075
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000010
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999985
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.825975406963
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999999916
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000026
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000061
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.174023334405
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999999990
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000015
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.793666639048
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000081
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999999956
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999999971
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.206336429520
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 5 3 6 4 2 1   5 3 4 6 2 5 3 4 6 2   1 5 3 6 4 2 1 5 3 6   4 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 1 3 2 1   3 2 7 910 8 4 5 6 2   1 3 7 910 8 4 5 6 7   9 810 5 4 6 2 1 3 2
                                        1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -92.30270     1  1  s    0.99908
    2.1     2.00000    -9.06145     1  2  s    1.00059
    3.1     2.00000    -0.88837     1  3  s    1.00910
    1.2     2.00000    -6.68939     1  1  py   0.99977
    2.2     2.00000    -6.68939     1  1  pz   0.99977
    3.2     2.00000    -6.68939     1  1  px   0.99977
    4.2     1.33333    -0.28615     1  2  pz   0.99502
    5.2     1.33333    -0.28615     1  2  py   0.99502
    6.2     1.33333    -0.28615     1  2  px   0.99502
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 aa2          0.00000051     -0.00000071      1.00000000
 2 a2a          1.00000000     -0.00000317     -0.00000051
 2 2aa          0.00000317      1.00000000      0.00000071
 
 Energy:     -398.58292423   -398.58292423   -398.58292423
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 202         -0.17030589      0.00000001     -0.00000144     -0.00000375      0.79853776
 2 220          0.77670695      0.00000004      0.00000116     -0.00000040     -0.25177966
 2 a2b         -0.00000004      0.70710678     -0.00000368     -0.00000063     -0.00000002
 2 b2a          0.00000004     -0.70710678      0.00000368      0.00000063      0.00000002
 2 2ab         -0.00000069      0.00000368      0.70710678     -0.00000169      0.00000112
 2 2ba          0.00000069     -0.00000368     -0.70710678      0.00000169     -0.00000112
 2 ab2          0.00000155      0.00000063      0.00000169      0.70710678      0.00000365
 2 ba2         -0.00000155     -0.00000063     -0.00000169     -0.70710678     -0.00000365
 2 022         -0.60640104     -0.00000004      0.00000028      0.00000415     -0.54675813
 
 Energy:     -398.53050752   -398.53050752   -398.53050752   -398.53050752   -398.53050752
 


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
 CPU TIMES  *         1.15      0.44      0.08      0.40
 REAL TIME  *         2.81 SEC
 DISK USED  *        31.13 MB (local),      424.64 MB (total)
 SF USED    *         4.12 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -398.5829242   2.0
    -398.5829242   2.0
    -398.5829242   2.0
    -398.5305075   6.0
    -398.5305075   6.0
    -398.5305075   6.0
    -398.5305075   6.0
    -398.5305075   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 16
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       28 conf       28 CSFs
 N-1 el internal:       82 conf      174 CSFs
 N-2 el internal:       86 conf      462 CSFs

 Number of electrons in valence space:                     14
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.19 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.58292423
     2      -398.58292423
     3      -398.58292423

 Number of blocks in overlap matrix:   154   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     177
 Number of N-1 electron functions:     174

 Number of internal configurations:                   16
 Number of singly external configurations:          5796
 Number of doubly external configurations:        193347
 Total number of contracted configurations:       199159
 Total number of uncontracted configurations:     506428

 Diagonal Coupling coefficients finished.               Storage:    201340 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    252133 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.58292423     0.00000000    -0.43427919  0.34D-01  0.57D-01     0.03
    1     2     2     1.00000000     0.00000000  -398.58292423    -0.00000000    -0.43411374  0.34D-01  0.57D-01     0.03
    1     3     3     1.00000000     0.00000000  -398.58292423    -0.00000000    -0.43445189  0.34D-01  0.57D-01     0.03
    2     1     1     1.07339592    -0.38995682  -398.97288105    -0.38995682    -0.00629135  0.14D-02  0.86D-03     0.33
    2     2     2     1.07352210    -0.38994672  -398.97287095    -0.38994672    -0.00629631  0.14D-02  0.85D-03     0.33
    2     3     3     1.07366604    -0.38990150  -398.97282572    -0.38990150    -0.00634553  0.14D-02  0.85D-03     0.33
    3     1     1     1.06418207    -0.39585056  -398.97877479    -0.00589374    -0.00007698  0.56D-05  0.14D-04     0.64
    3     2     2     1.06417103    -0.39585015  -398.97877438    -0.00590343    -0.00007721  0.55D-05  0.14D-04     0.64
    3     3     3     1.06415951    -0.39584906  -398.97877328    -0.00594756    -0.00007809  0.55D-05  0.15D-04     0.64
    4     1     1     1.06437350    -0.39593360  -398.97885784    -0.00008304    -0.00000202  0.36D-06  0.43D-06     0.94
    4     2     2     1.06437049    -0.39593354  -398.97885776    -0.00008338    -0.00000208  0.38D-06  0.44D-06     0.94
    4     3     3     1.06436731    -0.39593346  -398.97885769    -0.00008440    -0.00000214  0.40D-06  0.45D-06     0.94
    5     1     1     1.06453968    -0.39593596  -398.97886020    -0.00000236    -0.00000011  0.25D-07  0.18D-07     1.22
    5     2     2     1.06453997    -0.39593596  -398.97886019    -0.00000243    -0.00000011  0.25D-07  0.18D-07     1.22
    5     3     3     1.06454009    -0.39593596  -398.97886019    -0.00000250    -0.00000011  0.25D-07  0.19D-07     1.22
    6     1     1     1.06454137    -0.39593609  -398.97886032    -0.00000012    -0.00000000  0.47D-09  0.70D-09     1.50
    6     2     2     1.06454144    -0.39593609  -398.97886032    -0.00000012    -0.00000000  0.47D-09  0.71D-09     1.50
    6     3     3     1.06454133    -0.39593609  -398.97886032    -0.00000012    -0.00000000  0.47D-09  0.69D-09     1.50


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.7%  18.7%  22.7%

 Initialization:   2.0%
 Other:           56.0%

 Total CPU:        1.5 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222//2          -0.0000000  -0.0000000   0.9692097
 22222/2/           0.9692097   0.0000000  -0.0000000
 222222//           0.0000000   0.9692097  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969210    0.000000   -0.000000
 2           0.000000    0.969210   -0.000000
 3          -0.000000   -0.000000    0.969210

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969210    0.000000   -0.000000
 2           0.000000    0.969210   -0.000000
 3          -0.000000   -0.000000    0.969210


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96920969 (fixed)   0.96920969 (relaxed)   0.96920969 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000451   -0.00004227   -0.33004637
 Singles      0.02073058   -0.04458827   -0.04959679
 Pairs        0.04381109   -0.00000000   -0.01629293
 Total        1.06454617   -0.04463054   -0.39593609
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58292423
 Nuclear energy                         0.00000000
 Kinetic energy                       405.53983278
 One electron energy                 -550.61220644
 Two electron energy                  151.63334613
 Virial quotient                       -0.98382163
 Correlation energy                    -0.39593609
 !MRCI STATE 1.1 Energy              -398.978860316293

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00441647 (Davidson, fixed reference)
 Cluster corrected energies          -399.00441647 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00441647 (Davidson, rotated reference)

 Cluster corrected energies          -399.00110070 (Pople, fixed reference)
 Cluster corrected energies          -399.00110070 (Pople, relaxed reference)
 Cluster corrected energies          -399.00110070 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96920966 (fixed)   0.96920966 (relaxed)   0.96920966 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000451   -0.00004227   -0.33004632
 Singles      0.02073064   -0.04458831   -0.04959682
 Pairs        0.04381109    0.00000000   -0.01629295
 Total        1.06454624   -0.04463058   -0.39593609
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58292423
 Nuclear energy                         0.00000000
 Kinetic energy                       405.53983562
 One electron energy                 -550.61220948
 Two electron energy                  151.63334916
 Virial quotient                       -0.98382163
 Correlation energy                    -0.39593609
 !MRCI STATE 2.1 Energy              -398.978860315703

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00441650 (Davidson, fixed reference)
 Cluster corrected energies          -399.00441650 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00441650 (Davidson, rotated reference)

 Cluster corrected energies          -399.00110072 (Pople, fixed reference)
 Cluster corrected energies          -399.00110072 (Pople, relaxed reference)
 Cluster corrected energies          -399.00110072 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96920971 (fixed)   0.96920971 (relaxed)   0.96920971 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000451   -0.00004227   -0.00004138
 Singles      0.02073053   -0.04458826   -0.04959677
 Pairs        0.04381109   -0.35130556   -0.34629793
 Total        1.06454612   -0.39593609   -0.39593609
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.58292423
 Nuclear energy                         0.00000000
 Kinetic energy                       405.53983218
 One electron energy                 -550.61220627
 Two electron energy                  151.63334596
 Virial quotient                       -0.98382163
 Correlation energy                    -0.39593609
 !MRCI STATE 3.1 Energy              -398.978860315364

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -399.00441645 (Davidson, fixed reference)
 Cluster corrected energies          -399.00441645 (Davidson, relaxed reference)
 Cluster corrected energies          -399.00441645 (Davidson, rotated reference)

 Cluster corrected energies          -399.00110068 (Pople, fixed reference)
 Cluster corrected energies          -399.00110068 (Pople, relaxed reference)
 Cluster corrected energies          -399.00110068 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        5.53       700     1000      520     2100     2140     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.76      1.60      0.44      0.08      0.40
 REAL TIME  *         4.88 SEC
 DISK USED  *        36.00 MB (local),      483.01 MB (total)
 SF USED    *        49.90 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -399.00441647  AU                              
 SETTING HLSDIAG(2)     =      -399.00441650  AU                              
 SETTING HLSDIAG(3)     =      -399.00441645  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 16
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       36 conf       36 CSFs
 N-1 el internal:       96 conf      148 CSFs
 N-2 el internal:      153 conf      389 CSFs

 Number of electrons in valence space:                     14
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of core orbitals:           1 (   1   0 )
 Number of closed-shell orbitals:   4 (   1   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      66 (  30  36 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -398.53050752
     2      -398.53050752
     3      -398.53050752
     4      -398.53050752
     5      -398.53050752

 Number of blocks in overlap matrix:   183   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     214
 Number of N-1 electron functions:     148

 Number of internal configurations:                   24
 Number of singly external configurations:          4938
 Number of doubly external configurations:        234240
 Total number of contracted configurations:       239202
 Total number of uncontracted configurations:     429219

 Diagonal Coupling coefficients finished.               Storage:    213712 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    256086 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -398.53050752    -0.00000000    -0.43983404  0.34D-01  0.58D-01     0.02
    1     2     2     1.00000000     0.00000000  -398.53050752    -0.00000000    -0.44110967  0.34D-01  0.59D-01     0.02
    1     3     3     1.00000000     0.00000000  -398.53050752    -0.00000000    -0.44120181  0.34D-01  0.59D-01     0.02
    1     4     4     1.00000000     0.00000000  -398.53050752    -0.00000000    -0.44077596  0.34D-01  0.59D-01     0.02
    1     5     5     1.00000000     0.00000000  -398.53050752    -0.00000000    -0.43948292  0.34D-01  0.58D-01     0.02
    2     1     1     1.07475193    -0.39780165  -398.92830917    -0.39780165    -0.00669825  0.12D-02  0.99D-03     0.82
    2     2     2     1.07539608    -0.39760186  -398.92810938    -0.39760186    -0.00690974  0.12D-02  0.11D-02     0.82
    2     3     3     1.07488122    -0.39754767  -398.92805519    -0.39754767    -0.00698101  0.14D-02  0.10D-02     0.82
    2     4     4     1.07555411    -0.39746008  -398.92796760    -0.39746008    -0.00707869  0.13D-02  0.11D-02     0.82
    2     5     5     1.07553621    -0.39740363  -398.92791115    -0.39740363    -0.00715189  0.13D-02  0.11D-02     0.82
    3     1     1     1.06804955    -0.40402569  -398.93453321    -0.00622404    -0.00013199  0.16D-04  0.25D-04     1.61
    3     2     2     1.06799849    -0.40402554  -398.93453306    -0.00642368    -0.00013157  0.17D-04  0.24D-04     1.61
    3     3     3     1.06804197    -0.40402070  -398.93452822    -0.00647303    -0.00013607  0.17D-04  0.25D-04     1.61
    3     4     4     1.06802150    -0.40401708  -398.93452460    -0.00655700    -0.00013867  0.18D-04  0.25D-04     1.61
    3     5     5     1.06791075    -0.40401085  -398.93451837    -0.00660722    -0.00014259  0.19D-04  0.25D-04     1.61
    4     1     1     1.06886275    -0.40417236  -398.93467988    -0.00014667    -0.00000567  0.88D-06  0.12D-05     2.31
    4     2     2     1.06885173    -0.40417232  -398.93467985    -0.00014679    -0.00000574  0.88D-06  0.13D-05     2.31
    4     3     3     1.06883894    -0.40417186  -398.93467938    -0.00015116    -0.00000610  0.96D-06  0.14D-05     2.31
    4     4     4     1.06883174    -0.40417156  -398.93467908    -0.00015448    -0.00000633  0.10D-05  0.13D-05     2.31
    4     5     5     1.06883368    -0.40417113  -398.93467865    -0.00016028    -0.00000664  0.11D-05  0.14D-05     2.31
    5     1     1     1.06921995    -0.40417909  -398.93468662    -0.00000673    -0.00000025  0.26D-07  0.52D-07     2.97
    5     2     2     1.06921829    -0.40417909  -398.93468661    -0.00000676    -0.00000026  0.30D-07  0.53D-07     2.97
    5     3     3     1.06921859    -0.40417906  -398.93468658    -0.00000720    -0.00000028  0.34D-07  0.57D-07     2.97
    5     4     4     1.06921879    -0.40417905  -398.93468657    -0.00000750    -0.00000029  0.36D-07  0.58D-07     2.97
    5     5     5     1.06922147    -0.40417904  -398.93468656    -0.00000791    -0.00000030  0.32D-07  0.60D-07     2.97
    6     1     1     1.06921714    -0.40417938  -398.93468690    -0.00000028    -0.00000001  0.98D-09  0.18D-08     3.60
    6     2     2     1.06921699    -0.40417938  -398.93468690    -0.00000029    -0.00000001  0.11D-08  0.19D-08     3.60
    6     3     3     1.06921689    -0.40417938  -398.93468690    -0.00000031    -0.00000001  0.12D-08  0.21D-08     3.60
    6     4     4     1.06921685    -0.40417938  -398.93468690    -0.00000032    -0.00000001  0.12D-08  0.21D-08     3.60
    6     5     5     1.06921679    -0.40417938  -398.93468690    -0.00000033    -0.00000001  0.12D-08  0.22D-08     3.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.0%   0.0%
 P   0.6%  16.7%  21.9%

 Initialization:   0.3%
 Other:           60.0%

 Total CPU:        3.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222/\           0.0000000   0.0000000   0.0000000   0.0000000   0.9670852
 22222/2\          -0.0000000  -0.0000000   0.9670851   0.0000000  -0.0000000
 22222/\2           0.0000000   0.9670851  -0.0000000  -0.0000000  -0.0000000
 22222022           0.7802443   0.0000000   0.0000000  -0.1213586  -0.0000000
 22222220          -0.2850200   0.0000000   0.0000000   0.7363822  -0.0000000
 22222202          -0.4952130   0.0000000   0.0000000  -0.6150342   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2\2222/\  11.1    -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0717980
 2\2222/\  12.1     0.0087173   0.0000000   0.0000000   0.0713058  -0.0000000
 2\222/\2  14.1    -0.0661108   0.0000000   0.0000000  -0.0281042   0.0000000
 2\222/2\  15.1    -0.0000000  -0.0000000  -0.0633516  -0.0000000  -0.0000000
 2\222/\2  15.1     0.0000000  -0.0633515   0.0000000  -0.0000000  -0.0000000
 2\222/2\  13.1    -0.0544526   0.0000000   0.0000000   0.0468552   0.0000000
 2\2222/\   5.1    -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0525146
 2\2222/\   6.1     0.0080615  -0.0000000   0.0000000   0.0518935  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.610184   -0.000000    0.000000    0.000000   -0.750286
 2          -0.000000   -0.000000    0.000000    0.967085   -0.000000
 3          -0.000000    0.967085    0.000000   -0.000000    0.000000
 4           0.750286    0.000000    0.000000   -0.000000   -0.610185
 5          -0.000000   -0.000000    0.967085   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967085    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.967085   -0.000000   -0.000000   -0.000000
 3          -0.000000   -0.000000    0.967085    0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.967085    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.967085


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.75028553 (fixed)   0.96708503 (relaxed)   0.96708503 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001097   -0.00009125   -0.58822609
 Singles      0.02377258   -0.04996888   -0.05572084
 Pairs        0.04544532    0.27473338    0.23976756
 Total        1.06922887    0.22467326   -0.40417938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53050752
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51393140
 One electron energy                 -550.53149110
 Two electron energy                  151.59680420
 Virial quotient                       -0.98377554
 Correlation energy                    -0.40417938
 !MRCI STATE 1.1 Energy              -398.934686897357

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96266778 (Davidson, fixed reference)
 Cluster corrected energies          -398.96266778 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96266778 (Davidson, rotated reference)

 Cluster corrected energies          -398.95990181 (Pople, fixed reference)
 Cluster corrected energies          -398.95990181 (Pople, relaxed reference)
 Cluster corrected energies          -398.95990181 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96708510 (fixed)   0.96708510 (relaxed)   0.96708510 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001097   -0.00009125   -0.33128097
 Singles      0.02377218   -0.04996868   -0.05572076
 Pairs        0.04544557   -0.00000000   -0.01717764
 Total        1.06922872   -0.05005993   -0.40417938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53050752
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51387330
 One electron energy                 -550.53144699
 Two electron energy                  151.59676009
 Virial quotient                       -0.98377568
 Correlation energy                    -0.40417938
 !MRCI STATE 2.1 Energy              -398.934686896769

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96266772 (Davidson, fixed reference)
 Cluster corrected energies          -398.96266772 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96266772 (Davidson, rotated reference)

 Cluster corrected energies          -398.95990175 (Pople, fixed reference)
 Cluster corrected energies          -398.95990175 (Pople, relaxed reference)
 Cluster corrected energies          -398.95990175 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96708515 (fixed)   0.96708515 (relaxed)   0.96708515 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001097   -0.00009125   -0.33128116
 Singles      0.02377199   -0.04996851   -0.05572072
 Pairs        0.04544565    0.00000000   -0.01717749
 Total        1.06922862   -0.05005976   -0.40417938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53050752
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51386568
 One electron energy                 -550.53144517
 Two electron energy                  151.59675827
 Virial quotient                       -0.98377570
 Correlation energy                    -0.40417938
 !MRCI STATE 3.1 Energy              -398.934686896274

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96266768 (Davidson, fixed reference)
 Cluster corrected energies          -398.96266768 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96266768 (Davidson, rotated reference)

 Cluster corrected energies          -398.95990171 (Pople, fixed reference)
 Cluster corrected energies          -398.95990171 (Pople, relaxed reference)
 Cluster corrected energies          -398.95990171 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.75028564 (fixed)   0.96708516 (relaxed)   0.96708516 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001097   -0.00009125   -0.54024746
 Singles      0.02377218   -0.04996843   -0.05572067
 Pairs        0.04544543    0.22343264    0.19178875
 Total        1.06922858    0.17337296   -0.40417938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53050752
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51395656
 One electron energy                 -550.53151959
 Two electron energy                  151.59683270
 Virial quotient                       -0.98377548
 Correlation energy                    -0.40417938
 !MRCI STATE 4.1 Energy              -398.934686895747

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96266766 (Davidson, fixed reference)
 Cluster corrected energies          -398.96266766 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96266766 (Davidson, rotated reference)

 Cluster corrected energies          -398.95990170 (Pople, fixed reference)
 Cluster corrected energies          -398.95990170 (Pople, relaxed reference)
 Cluster corrected energies          -398.95990170 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96708519 (fixed)   0.96708519 (relaxed)   0.96708519 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001097   -0.00009125   -0.33128132
 Singles      0.02377184   -0.04996837   -0.05572062
 Pairs        0.04544571   -0.00000000   -0.01717743
 Total        1.06922852   -0.05005963   -0.40417938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -398.53050752
 Nuclear energy                         0.00000000
 Kinetic energy                       405.51387224
 One electron energy                 -550.53145102
 Two electron energy                  151.59676412
 Virial quotient                       -0.98377568
 Correlation energy                    -0.40417938
 !MRCI STATE 5.1 Energy              -398.934686895605

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -398.96266764 (Davidson, fixed reference)
 Cluster corrected energies          -398.96266764 (Davidson, relaxed reference)
 Cluster corrected energies          -398.96266764 (Davidson, rotated reference)

 Cluster corrected energies          -398.95990167 (Pople, fixed reference)
 Cluster corrected energies          -398.95990167 (Pople, relaxed reference)
 Cluster corrected energies          -398.95990167 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       30.39       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       14.93       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.55      3.79      1.60      0.44      0.08      0.40
 REAL TIME  *         9.68 SEC
 DISK USED  *        45.39 MB (local),      595.74 MB (total)
 SF USED    *        96.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -398.96266778  AU                              
 SETTING HLSDIAG(5)     =      -398.96266772  AU                              
 SETTING HLSDIAG(6)     =      -398.96266768  AU                              
 SETTING HLSDIAG(7)     =      -398.96266766  AU                              
 SETTING HLSDIAG(8)     =      -398.96266764  AU                              


         HLSDIAG
    -399.0044165
    -399.0044165
    -399.0044165
    -398.9626678
    -398.9626677
    -398.9626677
    -398.9626677
    -398.9626676
                                                  

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

 Time for Seward_LS:       0.67 sec

        2402996. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      614 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.67 sec, REAL time:      0.70 sec


 SORTLS1 read     2508011. and wrote     2508011. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.04 sec
 SORTLS2 read     2508011. and wrote    12192876. SO integrals in    36 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    72.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    72.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       14.93       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.08      1.52      3.79      1.60      0.44      0.08      0.40
 REAL TIME  *        11.32 SEC
 DISK USED  *        45.42 MB (local),      785.24 MB (total)
 SF USED    *        96.60 MB
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
  
 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -398.978860   -398.978860   -398.978860
 Replaced energies:   -399.004416   -399.004416   -399.004416

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:   -398.934687   -398.934687   -398.934687   -398.934687   -398.934687
 Replaced energies:   -398.962668   -398.962668   -398.962668   -398.962668   -398.962668



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -399.00441650

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     102.09
                            0.00       0.00     198.15       0.00    -140.12      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00     140.12       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     140.12       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01       0.00    -140.12       0.00       0.00       0.00       0.00      -0.00
                         -198.15      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     -58.76

    4   1.1  1.0  0.0      -0.00      -0.00       0.00       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00    -140.12      -0.00       0.00       0.00       0.00       0.00    -140.12      -0.00       0.00

    5   2.1  1.0  0.0       0.00      -0.00    -140.12       0.00       0.00       0.00      -0.00      -0.00     140.12       0.00
                          140.12      -0.00      -0.00      -0.00       0.00       0.00     140.12       0.00      -0.00    -227.46

    6   3.1  1.0  0.0      -0.00     140.12       0.00       0.00       0.00       0.01       0.00    -140.12       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.01       0.00       0.00     102.09
                           -0.00      -0.00      -0.00      -0.00    -140.12      -0.00      -0.00      -0.00    -198.15      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00      -0.00    -140.12       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     140.12      -0.00      -0.00       0.00       0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00     140.12       0.00       0.00       0.00       0.01      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00     198.15       0.00      -0.00      58.76

   10   1.1  0.0  0.0     102.09       0.00      -0.00       0.00       0.00       0.00     102.09       0.00      -0.00    9162.79
                           -0.00       0.00      58.76      -0.00     227.46       0.00       0.00      -0.00     -58.76       0.00

   11   2.1  0.0  0.0       0.00    -140.96      -0.00       0.00       0.00       0.00       0.00    -140.96      -0.00       0.00
                           -0.00       0.00       0.00     199.36      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   12   3.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00     140.97       0.00       0.00      -0.00    -199.36       0.00    -140.97      -0.00      -0.00

   13   4.1  0.0  0.0     126.78       0.00      -0.00       0.00       0.00       0.00     126.78       0.00      -0.00       0.00
                           -0.00      -0.00    -151.80      -0.00     -35.38       0.00       0.00       0.00     151.80      -0.00

   14   5.1  0.0  0.0       0.00      -0.00    -140.96       0.00       0.00       0.00       0.00      -0.00    -140.96       0.00
                         -140.97      -0.00      -0.00      -0.00      -0.00       0.00     140.97       0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0       0.00       0.00     126.78       0.00
                            0.00       0.00       0.00     140.97

    2   2.1  1.0  1.0    -140.96      -0.00       0.00      -0.00
                           -0.00    -140.97       0.00       0.00

    3   3.1  1.0  1.0      -0.00       0.00      -0.00    -140.96
                           -0.00      -0.00     151.80       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                         -199.36      -0.00       0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00      35.38       0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00     199.36      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00     126.78       0.00
                           -0.00      -0.00      -0.00    -140.97

    8   2.1  1.0 -1.0    -140.96      -0.00       0.00      -0.00
                            0.00     140.97      -0.00      -0.00

    9   3.1  1.0 -1.0      -0.00       0.00      -0.00    -140.96
                            0.00       0.00    -151.80      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    9162.80       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    9162.81       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    9162.81       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    9162.82
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by   -399.00441650 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.006       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -198.155      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     198.155       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.010       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000    -198.155      -0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.006       0.000       0.000       0.000      -0.000
                                0.000    -198.155      -0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              198.155       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.010      -0.000     198.155
                                0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000       0.006       0.000
                                0.000       0.000     198.155       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000     198.155       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000    -198.155       0.000       0.000       0.000
                             -198.155      -0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>             144.372       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     227.464       0.000      -0.000       0.000

    2    1  |0 0>               0.000    -199.352      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     199.365      -0.000      -0.000      -0.000       0.000

    3    1  |0 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -199.361      -0.000     199.361

    4    1  |0 0>             179.296       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -35.377       0.000      -0.000      -0.000

    5    1  |0 0>               0.000      -0.000    -199.352       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000    -199.365      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000     144.372       0.000       0.000     179.296       0.000
                              198.155       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000    -199.352      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000       0.000      -0.000    -199.352
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000    -199.365      -0.000       0.000       0.000

    2    1  |1 0>            -198.155       0.000       0.000       0.000       0.000       0.000
                                0.000    -227.464       0.000       0.000      35.377       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     199.361      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000     199.365

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000    -199.361       0.000       0.000

    3    1  |1 1>-              0.010       0.000       0.000       0.000       0.000       0.000
                                0.000     -83.098      -0.000      -0.000     214.684       0.000

    1    1  |0 0>               0.000    9162.785       0.000       0.000       0.000       0.000
                               83.098       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    9162.798       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    9162.808       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    9162.811       0.000
                             -214.684      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    9162.816
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -399.00535800    -0.00094150     -206.64      0.00000000        0.00      0.0000
    2  -399.00535800    -0.00094150     -206.64      0.00000000        0.00      0.0000
    3  -399.00535799    -0.00094149     -206.63      0.00000001        0.00      0.0000
    4  -399.00535798    -0.00094148     -206.63      0.00000003        0.01      0.0000
    5  -399.00535798    -0.00094148     -206.63      0.00000003        0.01      0.0000
    6  -399.00351363     0.00090287      198.16      0.00184437      404.79      0.0502
    7  -399.00351362     0.00090288      198.16      0.00184438      404.80      0.0502
    8  -399.00351361     0.00090289      198.16      0.00184440      404.80      0.0502
    9  -399.00261076     0.00180574      396.31      0.00274724      602.95      0.0748
   10  -398.96262912     0.04178738     9171.27      0.04272888     9377.90      1.1627
   11  -398.96262906     0.04178743     9171.28      0.04272894     9377.92      1.1627
   12  -398.96262902     0.04178748     9171.29      0.04272898     9377.93      1.1627
   13  -398.96262901     0.04178749     9171.29      0.04272900     9377.93      1.1627
   14  -398.96262898     0.04178752     9171.30      0.04272902     9377.94      1.1627

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.53795578  0.00000000  0.00000000  0.00000001  0.61373166  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000  0.69901242 -0.00000000  0.00000001 -0.00000000 -0.70710248  0.00000000 -0.00000001
                          -0.00000000 -0.10457258 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000001

   3    1  |1 1>+          0.00000000  0.00000001  0.00000000 -0.70675748  0.00000001  0.00000001  0.00000000 -0.34287877
                           0.00000000 -0.00000000  0.00000000  0.00596516 -0.00000000  0.00000000 -0.00000000  0.61841745

   1    1  |1 0>           0.00000000  0.10457130  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000001
                           0.00000000  0.69900387 -0.00000000  0.00000001 -0.00000000  0.70711108 -0.00000000  0.00000001

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.80048772 -0.00000000  0.00000002  0.00000000  0.15902330  0.00000000 -0.00000000 -0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                           0.00000002 -0.00000000 -0.70677833 -0.00000000  0.00000002  0.00000000  0.70711531  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00596523 -0.00000000 -0.00000000  0.00000000 -0.61841004
                          -0.00000000 -0.00000001 -0.00000000  0.70676591 -0.00000001  0.00000001  0.00000000 -0.34287466

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                          -0.00000002  0.00000000  0.70679540  0.00000000 -0.00000002  0.00000000  0.70709825  0.00000000

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.26252301  0.00000000  0.00000002  0.00000001  0.77274859 -0.00000000  0.00000000  0.00000000

   1    1  |0 0>           0.03005130 -0.00000000  0.00000000  0.00000000  0.00125727  0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.02974631 -0.00000000  0.00000000 -0.00000000  0.00000121 -0.00000000  0.00000000
                          -0.00000000 -0.00445006 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000  0.03007770  0.00000000 -0.00000000 -0.00000000 -0.00000038 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00125673 -0.00000000 -0.00000000 -0.00000000 -0.03005115 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.03007620  0.00000000 -0.00000000  0.00000000  0.00000040
                           0.00000000 -0.00000000  0.00000000  0.00025385 -0.00000000 -0.00000000  0.00000000 -0.00000073

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+         -0.57735079  0.01551343  0.00000000  0.00000000  0.01903721  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000000 -0.02126714 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00002200 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.02126710
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00003013

   1    1  |1 0>           0.00000000  0.00000000 -0.00002200  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.02126860 -0.00000000  0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.57734557 -0.02424384 -0.00000000  0.00000000  0.00391579  0.00000000

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.02126816 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00003013
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.02126854

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.02126813  0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.57735444 -0.00873102  0.00000000  0.00000000  0.02295435  0.00000000

   1    1  |0 0>           0.00000052  0.99953050  0.00000000 -0.00000000 -0.00584158 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.99954704  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00103382  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.99954756 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000088  0.00584160  0.00000000  0.00000000  0.99953050  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.99954657
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00141598


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -399.00535800     -0.00094150     -206.64      0.00000000        0.00      0.0000
     2   1   -399.00535800     -0.00094150     -206.64      0.00000000        0.00      0.0000
     3   1   -399.00535799     -0.00094149     -206.63      0.00000001        0.00      0.0000
     4   1   -399.00535798     -0.00094148     -206.63      0.00000003        0.01      0.0000
     5   1   -399.00535798     -0.00094148     -206.63      0.00000003        0.01      0.0000
     6   1   -399.00351363      0.00090287      198.16      0.00184437      404.79      0.0502
     7   1   -399.00351362      0.00090288      198.16      0.00184438      404.80      0.0502
     8   1   -399.00351361      0.00090289      198.16      0.00184440      404.80      0.0502
     9   1   -399.00261076      0.00180574      396.31      0.00274724      602.95      0.0748
    10   1   -398.96262912      0.04178738     9171.27      0.04272888     9377.90      1.1627
    11   1   -398.96262906      0.04178743     9171.28      0.04272894     9377.92      1.1627
    12   1   -398.96262902      0.04178748     9171.29      0.04272898     9377.93      1.1627
    13   1   -398.96262901      0.04178749     9171.29      0.04272900     9377.93      1.1627
    14   1   -398.96262898      0.04178752     9171.30      0.04272902     9377.94      1.1627

 E0 =   -399.00441650 is the energy of the lowest zeroth-order state
 E1 =   -399.00535800 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.53795578  0.00000000  0.00000000  0.00000001  0.61373166  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.69901242 -0.00000000  0.00000001 -0.00000000 -0.70710248  0.00000000 -0.00000001
                               -0.00000000 -0.10457258 -0.00000000 -0.00000000  0.00000000 -0.00000004  0.00000000  0.00000001

  3  1     3    1  |1 1>+       0.00000000  0.00000001  0.00000000 -0.70675748  0.00000001  0.00000001  0.00000000 -0.34287877
                                0.00000000 -0.00000000  0.00000000  0.00596516 -0.00000000  0.00000000 -0.00000000  0.61841745

  4  1     1    1  |1 0>        0.00000000  0.10457130  0.00000000  0.00000000 -0.00000000 -0.00000004  0.00000000  0.00000001
                                0.00000000  0.69900387 -0.00000000  0.00000001 -0.00000000  0.70711108 -0.00000000  0.00000001

  5  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.80048772 -0.00000000  0.00000002  0.00000000  0.15902330  0.00000000 -0.00000000 -0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000001 -0.00000000
                                0.00000002 -0.00000000 -0.70677833 -0.00000000  0.00000002  0.00000000  0.70711531  0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00596523 -0.00000000 -0.00000000  0.00000000 -0.61841004
                               -0.00000000 -0.00000001 -0.00000000  0.70676591 -0.00000001  0.00000001  0.00000000 -0.34287466

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000
                               -0.00000002  0.00000000  0.70679540  0.00000000 -0.00000002  0.00000000  0.70709825  0.00000000

  9  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.26252301  0.00000000  0.00000002  0.00000001  0.77274859 -0.00000000  0.00000000  0.00000000

 10  1     1    1  |0 0>        0.03005130 -0.00000000  0.00000000  0.00000000  0.00125727  0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.02974631 -0.00000000  0.00000000 -0.00000000  0.00000121 -0.00000000  0.00000000
                               -0.00000000 -0.00445006 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000  0.03007770  0.00000000 -0.00000000 -0.00000000 -0.00000038 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00125673 -0.00000000 -0.00000000 -0.00000000 -0.03005115 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.03007620  0.00000000 -0.00000000  0.00000000  0.00000040
                                0.00000000 -0.00000000  0.00000000  0.00025385 -0.00000000 -0.00000000  0.00000000 -0.00000073


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+      -0.57735079  0.01551343  0.00000000  0.00000000  0.01903721  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000000 -0.02126714 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00002200 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.02126710
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00003013

  4  1     1    1  |1 0>        0.00000000  0.00000000 -0.00002200  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.02126860 -0.00000000  0.00000000 -0.00000000

  5  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.57734557 -0.02424384 -0.00000000  0.00000000  0.00391579  0.00000000

  6  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.02126816 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00003013
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.02126854

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.02126813  0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.57735444 -0.00873102  0.00000000  0.00000000  0.02295435  0.00000000

 10  1     1    1  |0 0>        0.00000052  0.99953050  0.00000000 -0.00000000 -0.00584158 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.99954704  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00103382  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.99954756 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000088  0.00584160  0.00000000  0.00000000  0.99953050  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.99954657
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00141598



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        28.94%    0.00%    0.00%    0.00%   37.67%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%   49.96%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%
  4  1     1    1  |1 0>          0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  5  1     2    1  |1 0>         64.08%    0.00%    0.00%    0.00%    2.53%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   49.95%    0.00%    0.00%    0.00%   50.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   49.96%    0.00%    0.00%    0.00%   50.00%    0.00%
  9  1     3    1  |1 1>-         6.89%    0.00%    0.00%    0.00%   59.71%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.09%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+        33.33%    0.02%    0.00%    0.00%    0.04%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
  4  1     1    1  |1 0>          0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         33.33%    0.06%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.05%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    0.00%    0.00%
  9  1     3    1  |1 1>-        33.33%    0.01%    0.00%    0.00%    0.05%    0.00%
 10  1     1    1  |0 0>          0.00%   99.91%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   99.91%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%   99.91%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   99.91%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   99.91%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       68.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       14.93       700     1000      520     2100     2140     5202     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        10.85      2.77      1.52      3.79      1.60      0.44      0.08      0.40
 REAL TIME  *        14.83 SEC
 DISK USED  *        45.42 MB (local),      785.24 MB (total)
 SF USED    *        96.60 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -398.962628981343

              CI              CI           MULTI         RHF-SCF
   -398.93468690   -398.97886032   -398.53050752   -398.58540353
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
