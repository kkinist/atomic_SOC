
 Working directory              : /wrk/irikura/molpro.aCaAadBjOx/
 Global scratch directory       : /wrk/irikura/molpro.aCaAadBjOx/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.aCaAadBjOx/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Ge SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ge};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! spherical anion (4S) orbitals
 {rhf;wf,nelec=33,sym=2,spin=3}
 
 NTRIP=3
 NSING=6
 
 {multi
     wf,nelec=32,sym=1,spin=2;state,NTRIP;
 weight,all,99
     wf,nelec=32,sym=1,spin=0;state,NSING;
 weight,all,1
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
                                                                                 ! free KL shells
 core,2,3
 
 {ci;wf,sym=1,spin=2;state,NTRIP; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,NSING; save,5201.2}
 hlsdiag(NTRIP+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5203.2,5201.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 17:31:48  
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

 Library entry GE     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     F aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry GE     G aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  GE     32.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   32
 NUMBER OF PRIMITIVE AOS:         198
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          100   (   48Ag  +   52Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     16.253 MB (compressed) written to integral file ( 15.4%)

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107437. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1292714. AND WROTE     6503791. INTEGRALS IN     48 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      538852.  Node maximum:      543546. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.180E-03 0.254E-02 0.170E-01 0.535E-01 0.535E-01 0.535E-01 0.535E-01 0.535E-01
         2 0.390E-02 0.390E-02 0.390E-02 0.183E-01 0.183E-01 0.183E-01 0.759E-01 0.759E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.98      0.78
 REAL TIME  *         1.56 SEC
 DISK USED  *        29.42 MB (local),      408.95 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   9

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   6

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2097.09248454   -2097.09248454     0.00D+00     0.15D+00     0     0       0.00      0.01    start
   2    -2097.09533107      -0.00284652     0.12D-02     0.56D-02     1     0       0.01      0.02    diag2
   3    -2097.09562311      -0.00029204     0.73D-03     0.14D-02     2     0       0.00      0.02    diag2
   4    -2097.09573009      -0.00010698     0.34D-03     0.93D-03     3     0       0.00      0.02    diag2
   5    -2097.09574569      -0.00001560     0.96D-04     0.30D-03     4     0       0.01      0.03    diag2
   6    -2097.09574676      -0.00000107     0.14D-04     0.68D-04     5     0       0.00      0.03    diag2
   7    -2097.09574690      -0.00000014     0.42D-05     0.19D-04     6     0       0.01      0.04    diag2
   8    -2097.09574691      -0.00000002     0.11D-05     0.13D-04     7     0       0.00      0.04    fixocc
   9    -2097.09574691      -0.00000000     0.17D-06     0.26D-05     8     0       0.01      0.05    diag2
  10    -2097.09574691      -0.00000000     0.14D-07     0.96D-07     0     0       0.00      0.05    diag/orth

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2097.095746912982
  RHF One-electron energy           -2930.714707295608
  RHF Two-electron energy             833.618960382626
  RHF Kinetic energy                 2226.566287188196
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.941851926430

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.56824     1  1  s    0.99373
    2.1     2.00000   -53.17910     1  2  s    1.03257
    3.1     2.00000    -7.15128     1  3  s    0.97036
    4.1     2.00000    -1.34711     1  1  d0   0.60491    1  1  d2+  0.79614
    5.1     2.00000    -1.34711     1  1  d1-  0.99988
    6.1     2.00000    -1.34711     1  1  d2-  0.99988
    7.1     2.00000    -1.34711     1  1  d1+  0.99984
    8.1     2.00000    -1.34711     1  1  d0   0.79611    1  1  d2+ -0.60489
    9.1     2.00000    -0.33256     1  4  s    0.90641
    1.2     2.00000   -46.27158     1  1  py   0.99994
    2.2     2.00000   -46.27158     1  1  pz   0.99994
    3.2     2.00000   -46.27158     1  1  px   0.99994
    4.2     2.00000    -4.95671     1  2  py   0.99993
    5.2     2.00000    -4.95671     1  2  pz   0.99993
    6.2     2.00000    -4.95671     1  2  px   0.99993
    7.2     1.00000    -0.05786     1  3  px   0.80493
    8.2     1.00000    -0.05786     1  3  pz   0.80493
    9.2     1.00000    -0.05786     1  3  py   0.80493


 HOMO      9.2    -0.057860 =      -1.5744eV
 LUMO     10.1     0.185382 =       5.0445eV
 LUMO-HOMO         0.243242 =       6.6189eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.54       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.06      0.08      0.78
 REAL TIME  *         2.05 SEC
 DISK USED  *        30.37 MB (local),      420.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         6.00000000                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)


 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      82 (   39   43)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.138D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.124D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.435D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 3 4 2 1 1   2 6 3 4 5 1 2 4 3 6   5 2 4 3 6 5 1 4 2 3   6 5 912 81510141311
                                        7 1 5 6 3 2 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.634D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.114D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.103D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.125D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.679D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.679D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 3 2 1   3 2 1 3 2 9 7 4 5 6   810 4 6 5 7 8 910 2   3 1 4 6 9 8 710 5 2
                                        3 110 5 8 7 9 6 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32673   0.32673   0.32673
 Weight factors for state symmetry  2:    0.00330   0.00330   0.00330   0.00330   0.00330   0.00330
 
 Number of orbital rotations:  764  ( 26 closed/active, 570 closed/virtual, 0 active/active, 168 active/virtual )
 Total number of variables:    890
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   17   26    0  -2097.04295239   -2097.07247193   -0.02951954    0.13181004 0.00088211 0.00000000  0.44E+00      0.38
   2    8   14    0  -2097.06251026   -2097.06993758   -0.00742732    0.38925934 0.00003239 0.00000000  0.47E-01      0.74
   3    6   10    0  -2097.06999796   -2097.06999948   -0.00000151    0.00347368 0.00000009 0.00000000  0.14E-02      1.09
   4    3    6    0  -2097.06999948   -2097.06999948    0.00000000    0.00000083 0.00000000 0.00000000  0.64E-06      1.29

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.93E-10)
                       Final energy:  -2097.06999948
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2097.070894131707
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54720278
 One electron energy                         -2922.79373099
 Two electron energy                           825.72283686
 Virial ratio                                    1.94184884
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2097.070894131376
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54720278
 One electron energy                         -2922.79373098
 Two electron energy                           825.72283685
 Virial ratio                                    1.94184884
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2097.070894131208
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54720278
 One electron energy                         -2922.79373098
 Two electron energy                           825.72283685
 Virial ratio                                    1.94184884
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2097.031431044603
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54720278
 One electron energy                         -2922.79373099
 Two electron energy                           825.76229995
 Virial ratio                                    1.94183111
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2097.031431044598
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54720278
 One electron energy                         -2922.79373099
 Two electron energy                           825.76229995
 Virial ratio                                    1.94183111
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2097.031431044289
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54720278
 One electron energy                         -2922.79373098
 Two electron energy                           825.76229994
 Virial ratio                                    1.94183111
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2097.031431044126
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54720278
 One electron energy                         -2922.79373098
 Two electron energy                           825.76229994
 Virial ratio                                    1.94183111
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2097.031431044049
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.54720278
 One electron energy                         -2922.79373098
 Two electron energy                           825.76229994
 Virial ratio                                    1.94183111
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2096.997128874435
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.48945191
 One electron energy                         -2922.55430200
 Two electron energy                           825.55717312
 Virial ratio                                    1.94184014
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999990138
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999998950
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000011712
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.472491789162
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000032784
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000637
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999949183
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.527508805200
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000157997
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999851838
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999990141
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.881805063134
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999462256
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000507477
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000163404
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.118195102518
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999851865
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000149212
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999998147
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.645703147704
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000504960
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999491886
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999887413
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.354296092283
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 5 2 4 1 1   2 4 6 5 3 1 2 4 3 5   6 4 5 3 2 6 1 4 2 3   5 6 912 8 715141013
                                       11 1 6 5 3 2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 3 1 2 1   3 2 1 2 3 4 7 9 510   8 6 4 6 5 9 7 810 2   3 1 4 6 810 7 9 5 2
                                        3 1 510 8 7 9 6 4 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.81762     1  1  s    0.99373
    2.1     2.00000   -53.42862     1  2  s    1.03257
    3.1     2.00000    -7.40124     1  3  s    0.97043
    4.1     2.00000    -1.59666     1  1  d1-  0.99992
    5.1     2.00000    -1.59666     1  1  d2-  0.99992
    6.1     2.00000    -1.59666     1  1  d2+  0.99992
    7.1     2.00000    -1.59666     1  1  d0   0.99992
    8.1     2.00000    -1.59666     1  1  d1+  0.99992
    9.1     1.97377    -0.56089     1  4  s    1.00788
    1.2     2.00000   -46.52081     1  1  py   0.99994
    2.2     2.00000   -46.52081     1  1  pz   0.99994
    3.2     2.00000   -46.52081     1  1  px   0.99994
    4.2     2.00000    -5.20604     1  2  py   0.99980
    5.2     2.00000    -5.20604     1  2  pz   0.99980
    6.2     2.00000    -5.20604     1  2  px   0.99980
    7.2     0.67541    -0.06266     1  3  pz   1.02555
    8.2     0.67541    -0.06266     1  3  px   1.02555
    9.2     0.67541    -0.06266     1  3  py   1.02555
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a         -0.00009866      0.00003219      0.99347774
 2 0aa         -0.00038237      0.99347767     -0.00003222
 2 aa0          0.99347767      0.00038238      0.00009865
 0 a2a          0.00001132     -0.00000369     -0.11402617
 0 2aa          0.00004389     -0.11402616      0.00000370
 0 aa2         -0.11402616     -0.00004389     -0.00001132
 
 Energy:    -2097.07089413  -2097.07089413  -2097.07089413
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 002         -0.13943807      0.00002797     -0.00014087      0.00047954      0.79909665      0.56372017
 2 020          0.76175711     -0.00020846      0.00014549      0.00004053     -0.27879155      0.56372015
 2 0ab         -0.00009482      0.00028789      0.70249478     -0.00002960      0.00010730      0.00000000
 2 0ba          0.00009482     -0.00028789     -0.70249478      0.00002960     -0.00010730     -0.00000000
 2 ab0          0.00019577      0.70249476     -0.00028786      0.00007367      0.00000947     -0.00000000
 2 ba0         -0.00019577     -0.70249476      0.00028786     -0.00007367     -0.00000947      0.00000000
 2 a0b         -0.00020476     -0.00007359      0.00002967      0.70249467     -0.00045729     -0.00000000
 2 b0a          0.00020476      0.00007359     -0.00002967     -0.70249467      0.00045729      0.00000000
 2 200         -0.62231903      0.00018049     -0.00000462     -0.00052007     -0.52030511      0.56372016
 0 202          0.08743049     -0.00002393      0.00001670      0.00000465     -0.03199823     -0.12471133
 0 022         -0.07142652      0.00002072     -0.00000053     -0.00005969     -0.05971789     -0.12471133
 0 220         -0.01600397      0.00000321     -0.00001617      0.00005504      0.09171613     -0.12471133
 0 2ba         -0.00001088      0.00003304      0.08062867     -0.00000340      0.00001232      0.00000000
 0 2ab          0.00001088     -0.00003304     -0.08062867      0.00000340     -0.00001232     -0.00000000
 0 ba2          0.00002247      0.08062867     -0.00003304      0.00000846      0.00000109     -0.00000000
 0 ab2         -0.00002247     -0.08062867      0.00003304     -0.00000846     -0.00000109      0.00000000
 0 a2b          0.00002350      0.00000845     -0.00000341     -0.08062866      0.00005249      0.00000000
 0 b2a         -0.00002350     -0.00000845      0.00000341      0.08062866     -0.00005249     -0.00000000
 
 Energy:    -2097.03143104  -2097.03143104  -2097.03143104  -2097.03143104  -2097.03143104  -2096.99712887
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.82       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.22      1.16      0.08      0.78
 REAL TIME  *         3.56 SEC
 DISK USED  *        40.00 MB (local),      535.89 MB (total)
 SF USED    *        24.30 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2097.070894   2.0
    -2097.070894   2.0
    -2097.070894   2.0
    -2097.031431   6.0
    -2097.031431   6.0
    -2097.031431   6.0
    -2097.031431   6.0
    -2097.031431   6.0
    -2096.997129  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 32
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:        6 conf        6 CSFs
 N elec internal:      571 conf     1077 CSFs
 N-1 el internal:      772 conf     2940 CSFs
 N-2 el internal:      397 conf     2695 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.06 sec, npass=  1  Memory used:   0.64 MW


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.07089413
     2     -2097.07089413
     3     -2097.07089413

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        120612
 Number of doubly external configurations:        802686
 Total number of contracted configurations:       923835
 Total number of uncontracted configurations:    4632525

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    451690 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.07089413     0.00000000    -0.89220308  0.36D-01  0.71D-01     0.21
    1     2     2     1.00000000     0.00000000 -2097.07089413    -0.00000000    -0.89188576  0.35D-01  0.71D-01     0.21
    1     3     3     1.00000000     0.00000000 -2097.07089413    -0.00000000    -0.89203354  0.36D-01  0.71D-01     0.21
    2     1     1     1.06704854    -0.70824295 -2097.77913708    -0.70824295    -0.01979070  0.25D-02  0.11D-02     2.58
    2     2     2     1.06718180    -0.70817075 -2097.77906488    -0.70817075    -0.01986030  0.26D-02  0.11D-02     2.58
    2     3     3     1.06734620    -0.70808405 -2097.77897818    -0.70808405    -0.01994173  0.26D-02  0.11D-02     2.58
    3     1     1     1.06049427    -0.72628285 -2097.79717698    -0.01803990    -0.00058569  0.91D-04  0.42D-04     4.83
    3     2     2     1.06049225    -0.72628156 -2097.79717569    -0.01811081    -0.00058693  0.91D-04  0.42D-04     4.83
    3     3     3     1.06049121    -0.72627993 -2097.79717406    -0.01819587    -0.00058857  0.91D-04  0.42D-04     4.83
    4     1     1     1.05970241    -0.72683184 -2097.79772597    -0.00054898    -0.00002886  0.47D-05  0.21D-05     7.07
    4     2     2     1.05969898    -0.72683174 -2097.79772587    -0.00055018    -0.00002897  0.47D-05  0.21D-05     7.07
    4     3     3     1.05969484    -0.72683165 -2097.79772578    -0.00055172    -0.00002908  0.47D-05  0.21D-05     7.07
    5     1     1     1.05980937    -0.72685962 -2097.79775375    -0.00002778    -0.00000117  0.12D-06  0.12D-06     9.33
    5     2     2     1.05980903    -0.72685962 -2097.79775375    -0.00002787    -0.00000118  0.12D-06  0.12D-06     9.33
    5     3     3     1.05980860    -0.72685962 -2097.79775375    -0.00002797    -0.00000118  0.12D-06  0.12D-06     9.33
    6     1     1     1.05984200    -0.72686082 -2097.79775495    -0.00000120    -0.00000005  0.35D-08  0.73D-08    11.58
    6     2     2     1.05984228    -0.72686082 -2097.79775495    -0.00000120    -0.00000005  0.35D-08  0.73D-08    11.58
    6     3     3     1.05984214    -0.72686082 -2097.79775495    -0.00000121    -0.00000005  0.35D-08  0.73D-08    11.58
    7     1     1     1.05984212    -0.72686087 -2097.79775501    -0.00000005    -0.00000000  0.43D-09  0.42D-09    13.89
    7     2     2     1.05984219    -0.72686088 -2097.79775501    -0.00000005    -0.00000000  0.43D-09  0.41D-09    13.89
    7     3     3     1.05984215    -0.72686088 -2097.79775501    -0.00000005    -0.00000000  0.43D-09  0.42D-09    13.89


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.5%   4.1%
 P   0.5%  27.3%  25.1%

 Initialization:   1.2%
 Other:           40.7%

 Total CPU:       13.9 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0           0.9657845   0.0000000  -0.0000000
 2222222222/0/           0.0000000  -0.0000000   0.9657845
 22222222220//          -0.0000000   0.9657845   0.0000000
 2222220222//2          -0.1026421  -0.0000000   0.0000000
 2222220222/2/          -0.0000000   0.0000000  -0.1026420
 22222202222//           0.0000000  -0.1026420  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971189   -0.000000    0.000000
 2           0.000000    0.971189   -0.000000
 3          -0.000000    0.000000    0.971189

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971189   -0.000000   -0.000000
 2          -0.000000    0.971189    0.000000
 3          -0.000000    0.000000    0.971189


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97118930 (fixed)   0.97122352 (relaxed)   0.97118930 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00034785   -0.00066808   -0.64405620
 Singles      0.01435763   -0.04427838   -0.05160890
 Pairs        0.04550531   -0.00000000   -0.03119577
 Total        1.06021079   -0.04494646   -0.72686087
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07089413
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.80993434
 One electron energy                -2921.40253332
 Two electron energy                  823.60477831
 Virial quotient                       -0.94206413
 Correlation energy                    -0.72686087
 !MRCI STATE 1.1 Energy             -2097.797755006684

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84151987 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84146558 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84151987 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83912179 (Pople, fixed reference)
 Cluster corrected energies         -2097.83906792 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83912179 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97118927 (fixed)   0.97122349 (relaxed)   0.97118927 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00034785   -0.00066808   -0.64405613
 Singles      0.01435769   -0.04427842   -0.05160893
 Pairs        0.04550532    0.00000000   -0.03119582
 Total        1.06021085   -0.04494650   -0.72686088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07089413
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.80993645
 One electron energy                -2921.40253494
 Two electron energy                  823.60477993
 Virial quotient                       -0.94206413
 Correlation energy                    -0.72686088
 !MRCI STATE 2.1 Energy             -2097.797755006419

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84151992 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84146563 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84151992 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83912184 (Pople, fixed reference)
 Cluster corrected energies         -2097.83906797 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83912184 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97118929 (fixed)   0.97122350 (relaxed)   0.97118929 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00034785   -0.00066808   -0.00086862
 Singles      0.01435766   -0.04427840   -0.05160891
 Pairs        0.04550531   -0.68191439   -0.67438334
 Total        1.06021082   -0.72686088   -0.72686088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07089413
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.80993558
 One electron energy                -2921.40253432
 Two electron energy                  823.60477931
 Virial quotient                       -0.94206413
 Correlation energy                    -0.72686088
 !MRCI STATE 3.1 Energy             -2097.797755006268

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84151990 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84146560 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84151990 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83912182 (Pople, fixed reference)
 Cluster corrected energies         -2097.83906794 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83912182 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       22.53       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.58     14.35      1.16      0.08      0.78
 REAL TIME  *        19.96 SEC
 DISK USED  *        61.71 MB (local),      796.41 MB (total)
 SF USED    *       234.61 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2097.84151987  AU                              
 SETTING HLSDIAG(2)     =     -2097.84151992  AU                              
 SETTING HLSDIAG(3)     =     -2097.84151990  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 32
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:       12 conf       12 CSFs
 N elec internal:      613 conf      866 CSFs
 N-1 el internal:      907 conf     2099 CSFs
 N-2 el internal:      694 conf     2086 CSFs

 Number of electrons in valence space:                     22
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      82 (  39  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2097.03143104
     2     -2097.03143104
     3     -2097.03143104
     4     -2097.03143104
     5     -2097.03143104
     6     -2096.99712887

 Number of blocks in overlap matrix:   643   Smallest eigenvalue:  0.26D-01
 Number of N-2 electron functions:     808
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         86093
 Number of doubly external configurations:       1360738
 Total number of contracted configurations:      1447281
 Total number of uncontracted configurations:    3590838

 Diagonal Coupling coefficients finished.               Storage:    700785 words, CPU-Time:      0.10 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    506062 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.03143104    -0.00000000    -0.90078106  0.40D-01  0.74D-01     0.22
    1     2     2     1.00000000     0.00000000 -2097.03143104    -0.00000000    -0.90169346  0.42D-01  0.75D-01     0.22
    1     3     3     1.00000000     0.00000000 -2097.03143104    -0.00000000    -0.90165549  0.41D-01  0.75D-01     0.22
    1     4     4     1.00000000     0.00000000 -2097.03143104    -0.00000000    -0.90195697  0.42D-01  0.75D-01     0.22
    1     5     5     1.00000000     0.00000000 -2097.03143104    -0.00000000    -0.90095953  0.40D-01  0.75D-01     0.22
    1     6     6     1.00000000     0.00000000 -2096.99712887    -0.00000000    -0.88720542  0.17D-01  0.90D-01     0.22
    2     1     1     1.07197702    -0.71392263 -2097.74535367    -0.71392263    -0.02087878  0.28D-02  0.13D-02     7.89
    2     2     2     1.07195580    -0.71390293 -2097.74533397    -0.71390293    -0.02090124  0.28D-02  0.13D-02     7.89
    2     3     3     1.07251778    -0.71358854 -2097.74501959    -0.71358854    -0.02126413  0.30D-02  0.14D-02     7.89
    2     4     4     1.07257947    -0.71353303 -2097.74496408    -0.71353303    -0.02132645  0.30D-02  0.14D-02     7.89
    2     5     5     1.07274279    -0.71348998 -2097.74492102    -0.71348998    -0.02136485  0.31D-02  0.14D-02     7.89
    2     6     6     1.06767325    -0.70809153 -2097.70522041    -0.70809153    -0.02020129  0.28D-02  0.15D-02     7.89
    3     1     1     1.06439165    -0.73293563 -2097.76436668    -0.01901301    -0.00057579  0.78D-04  0.48D-04    15.35
    3     2     2     1.06441696    -0.73293428 -2097.76436532    -0.01903135    -0.00057756  0.78D-04  0.49D-04    15.35
    3     3     3     1.06445290    -0.73292318 -2097.76435422    -0.01933463    -0.00059333  0.82D-04  0.50D-04    15.35
    3     4     4     1.06444168    -0.73292176 -2097.76435281    -0.01938873    -0.00059423  0.83D-04  0.50D-04    15.35
    3     5     5     1.06446524    -0.73291997 -2097.76435101    -0.01942999    -0.00059617  0.83D-04  0.51D-04    15.35
    3     6     6     1.06181137    -0.72644926 -2097.72357813    -0.01835772    -0.00058705  0.73D-04  0.68D-04    15.35
    4     1     1     1.06361183    -0.73349661 -2097.76492765    -0.00056098    -0.00003174  0.54D-05  0.24D-05    22.62
    4     2     2     1.06361267    -0.73349660 -2097.76492764    -0.00056232    -0.00003177  0.54D-05  0.24D-05    22.62
    4     3     3     1.06361508    -0.73349533 -2097.76492638    -0.00057216    -0.00003342  0.57D-05  0.26D-05    22.62
    4     4     4     1.06361343    -0.73349531 -2097.76492636    -0.00057355    -0.00003348  0.57D-05  0.26D-05    22.62
    4     5     5     1.06361398    -0.73349531 -2097.76492635    -0.00057534    -0.00003350  0.57D-05  0.26D-05    22.62
    4     6     6     1.06107070    -0.72702829 -2097.72415717    -0.00057904    -0.00003316  0.60D-05  0.30D-05    22.62
    5     1     1     1.06366908    -0.73352747 -2097.76495851    -0.00003086    -0.00000144  0.21D-06  0.11D-06    29.97
    5     2     2     1.06366997    -0.73352746 -2097.76495851    -0.00003086    -0.00000144  0.22D-06  0.12D-06    29.97
    5     3     3     1.06366895    -0.73352742 -2097.76495846    -0.00003208    -0.00000150  0.23D-06  0.12D-06    29.97
    5     4     4     1.06366985    -0.73352741 -2097.76495846    -0.00003210    -0.00000150  0.23D-06  0.12D-06    29.97
    5     5     5     1.06366952    -0.73352741 -2097.76495846    -0.00003210    -0.00000150  0.23D-06  0.12D-06    29.97
    5     6     6     1.06107873    -0.72706072 -2097.72418960    -0.00003243    -0.00000177  0.28D-06  0.17D-06    29.97
    6     1     1     1.06366323    -0.73352895 -2097.76496000    -0.00000148    -0.00000005  0.54D-08  0.60D-08    37.40
    6     2     2     1.06366344    -0.73352895 -2097.76496000    -0.00000149    -0.00000005  0.55D-08  0.60D-08    37.40
    6     3     3     1.06366270    -0.73352895 -2097.76496000    -0.00000154    -0.00000006  0.54D-08  0.65D-08    37.40
    6     4     4     1.06366256    -0.73352895 -2097.76496000    -0.00000154    -0.00000006  0.55D-08  0.64D-08    37.40
    6     5     5     1.06366307    -0.73352895 -2097.76496000    -0.00000154    -0.00000006  0.54D-08  0.65D-08    37.40
    6     6     6     1.06106676    -0.72706253 -2097.72419140    -0.00000181    -0.00000008  0.95D-08  0.90D-08    37.40
    7     1     1     1.06366063    -0.73352901 -2097.76496005    -0.00000005    -0.00000000  0.60D-09  0.24D-09    44.71
    7     2     2     1.06366057    -0.73352901 -2097.76496005    -0.00000005    -0.00000000  0.63D-09  0.25D-09    44.71
    7     3     3     1.06366057    -0.73352901 -2097.76496005    -0.00000006    -0.00000000  0.63D-09  0.25D-09    44.71
    7     4     4     1.06366058    -0.73352901 -2097.76496005    -0.00000006    -0.00000000  0.59D-09  0.24D-09    44.71
    7     5     5     1.06366053    -0.73352901 -2097.76496005    -0.00000006    -0.00000000  0.63D-09  0.24D-09    44.71
    7     6     6     1.06106048    -0.72706260 -2097.72419148    -0.00000008    -0.00000000  0.84D-09  0.40D-09    44.71


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   1.7%
 P   0.4%  17.9%  32.4%

 Initialization:   0.3%
 Other:           46.6%

 Total CPU:       44.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/0\          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.9639828   0.0000000
 22222222220/\          -0.0000000  -0.0000000   0.9639828  -0.0000000   0.0000000   0.0000000
 2222222222/\0          -0.0000000   0.9639828   0.0000000   0.0000000   0.0000000  -0.0000000
 2222222222002          -0.0851171  -0.0000000   0.0000000   0.7824728  -0.0000000   0.5488708
 2222222222020           0.7201998   0.0000000  -0.0000000  -0.3175228  -0.0000000   0.5488708
 2222222222200          -0.6350828  -0.0000000  -0.0000000  -0.4649499  -0.0000000   0.5488708
 2222220222022          -0.0675002  -0.0000000  -0.0000000  -0.0494175   0.0000000  -0.1130851
 2222220222202           0.0765469   0.0000000  -0.0000000  -0.0337481   0.0000000  -0.1130850
 2222220222220          -0.0090467  -0.0000000   0.0000000   0.0831656   0.0000000  -0.1130850
 2222220222/\2           0.0000000  -0.1024576  -0.0000000  -0.0000000  -0.0000000   0.0000000
 2222220222/2\           0.0000000   0.0000000   0.0000000  -0.0000000  -0.1024575  -0.0000000
 22222202222/\           0.0000000   0.0000000  -0.1024575   0.0000000  -0.0000000  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222\2220/\  20.1     0.0000000   0.0000000  -0.0517092   0.0000000  -0.0000000   0.0000000
 222222\222/\0  18.1    -0.0512182  -0.0000000  -0.0000000  -0.0073153   0.0000000   0.0025871

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.967372   -0.000000   -0.000000   -0.000000    0.062335   -0.000000
 2           0.000000    0.969378   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.969378   -0.000000    0.000000   -0.000000
 4          -0.062335    0.000000   -0.000000    0.000000    0.967372    0.000000
 5           0.000000    0.000000    0.000000    0.969378   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.970538

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969378   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.969378   -0.000000    0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.969378   -0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.969378    0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.969378   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.970538


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96737205 (fixed)   0.96941240 (relaxed)   0.96937831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048441   -0.00097804   -0.64400728
 Singles      0.01681515   -0.04854734   -0.05721191
 Pairs        0.04687632    0.00000001   -0.03230982
 Total        1.06417587   -0.04952537   -0.73352901
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03143104
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.80710396
 One electron energy                -2921.32422916
 Two electron energy                  823.55926911
 Virial quotient                       -0.94205060
 Correlation energy                    -0.73352901
 !MRCI STATE 1.1 Energy             -2097.764960052057

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81203492 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81198001 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81203492 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81010987 (Pople, fixed reference)
 Cluster corrected energies         -2097.81005434 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81010987 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96937833 (fixed)   0.96941242 (relaxed)   0.96937833 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048440   -0.00097804   -0.64400724
 Singles      0.01681511   -0.04854740   -0.05721193
 Pairs        0.04687630   -0.00000000   -0.03230984
 Total        1.06417581   -0.04952544   -0.73352901
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03143104
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.80714076
 One electron energy                -2921.32427891
 Two electron energy                  823.55931885
 Virial quotient                       -0.94205058
 Correlation energy                    -0.73352901
 !MRCI STATE 2.1 Energy             -2097.764960051949

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81203487 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81197997 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81203487 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81010983 (Pople, fixed reference)
 Cluster corrected energies         -2097.81005430 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81010983 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96937833 (fixed)   0.96941243 (relaxed)   0.96937833 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048440   -0.00097804   -0.64400727
 Singles      0.01681510   -0.04854737   -0.05721193
 Pairs        0.04687630    0.00000000   -0.03230980
 Total        1.06417581   -0.04952541   -0.73352901
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03143104
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.80714089
 One electron energy                -2921.32427973
 Two electron energy                  823.55931968
 Virial quotient                       -0.94205058
 Correlation energy                    -0.73352901
 !MRCI STATE 3.1 Energy             -2097.764960051667

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81203487 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81197997 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81203487 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81010983 (Pople, fixed reference)
 Cluster corrected energies         -2097.81005430 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81010983 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96737207 (fixed)   0.96941242 (relaxed)   0.96937833 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048441   -0.00097804   -0.64400726
 Singles      0.01681514   -0.04854732   -0.05721191
 Pairs        0.04687628   -0.00000006   -0.03230984
 Total        1.06417583   -0.04952542   -0.73352901
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03143104
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.80710160
 One electron energy                -2921.32422681
 Two electron energy                  823.55926676
 Virial quotient                       -0.94205060
 Correlation energy                    -0.73352901
 !MRCI STATE 4.1 Energy             -2097.764960051596

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81203488 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81197998 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81203488 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81010984 (Pople, fixed reference)
 Cluster corrected energies         -2097.81005431 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81010984 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96937835 (fixed)   0.96941244 (relaxed)   0.96937835 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00048440   -0.00097804   -0.64400727
 Singles      0.01681511   -0.04854740   -0.05721193
 Pairs        0.04687626    0.00000000   -0.03230981
 Total        1.06417578   -0.04952544   -0.73352901
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03143104
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.80713865
 One electron energy                -2921.32427676
 Two electron energy                  823.55931671
 Virial quotient                       -0.94205058
 Correlation energy                    -0.73352901
 !MRCI STATE 5.1 Energy             -2097.764960051567

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81203484 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81197994 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81203484 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81010980 (Pople, fixed reference)
 Cluster corrected energies         -2097.81005427 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81010980 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97053757 (fixed)   0.97064008 (relaxed)   0.97053757 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00054162   -0.00078110   -0.00110667
 Singles      0.00688707   -0.02890556   -0.03194483
 Pairs        0.05420648   -0.69737595   -0.69401110
 Total        1.06163517   -0.72706260   -0.72706260
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2096.99712887
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.77465795
 One electron energy                -2921.08148713
 Two electron energy                  823.35729565
 Virial quotient                       -0.94204601
 Correlation energy                    -0.72706260
 !MRCI STATE 6.1 Energy             -2097.724191478712

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.76900411 (Davidson, fixed reference)
 Cluster corrected energies         -2097.76884108 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.76900411 (Davidson, rotated reference)

 Cluster corrected energies         -2097.76707881 (Pople, fixed reference)
 Cluster corrected energies         -2097.76691465 (Pople, relaxed reference)
 Cluster corrected energies         -2097.76707881 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       89.60       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        63.87     47.27     14.35      1.16      0.08      0.78
 REAL TIME  *        73.89 SEC
 DISK USED  *       128.79 MB (local),        1.56 GB (total)
 SF USED    *       702.58 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2097.81203492  AU                              
 SETTING HLSDIAG(5)     =     -2097.81203487  AU                              
 SETTING HLSDIAG(6)     =     -2097.81203487  AU                              
 SETTING HLSDIAG(7)     =     -2097.81203488  AU                              
 SETTING HLSDIAG(8)     =     -2097.81203484  AU                              
 SETTING HLSDIAG(9)     =     -2097.76900411  AU                              


         HLSDIAG
    -2097.841520
    -2097.841520
    -2097.841520
    -2097.812035
    -2097.812035
    -2097.812035
    -2097.812035
    -2097.812035
    -2097.769004
                                                  

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

 Time for Seward_LS:       4.16 sec

 CPU time:      4.16 sec, REAL time:      4.40 sec


 SORTLS1 read     7822434. and wrote     7822434. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.12 sec
 SORTLS2 read     7822434. and wrote    38256242. SO integrals in    36 records. CPU time:      0.04 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:    41.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    41.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       89.60       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        68.94      5.06     47.27     14.35      1.16      0.08      0.78
 REAL TIME  *        79.31 SEC
 DISK USED  *       128.85 MB (local),        1.94 GB (total)
 SF USED    *       702.58 MB
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
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:  -2097.797755  -2097.797755  -2097.797755
 Replaced energies:  -2097.841520  -2097.841520  -2097.841520

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2097.764960  -2097.764960  -2097.764960  -2097.764960  -2097.764960  -2097.724191
 Replaced energies:  -2097.812035  -2097.812035  -2097.812035  -2097.812035  -2097.812035  -2097.769004



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2097.84151992

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.01       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      40.53
                            0.00       0.00    -460.89      -0.00    -325.90      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00     325.90       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     325.90       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.01       0.00    -325.90      -0.00       0.00       0.00       0.00      -0.00
                          460.89       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00     342.96

    4   1.1  1.0  0.0      -0.00       0.00       0.00       0.01       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00    -325.90      -0.00       0.00       0.00       0.00      -0.00    -325.90      -0.00       0.00

    5   2.1  1.0  0.0      -0.00       0.00    -325.90       0.00       0.00       0.00       0.00       0.00     325.90       0.00
                          325.90      -0.00      -0.00      -0.00       0.00       0.00     325.90       0.00      -0.00    -427.70

    6   3.1  1.0  0.0      -0.00     325.90      -0.00       0.00       0.00       0.01       0.00    -325.90      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.01       0.00       0.00      40.53
                           -0.00      -0.00      -0.00       0.00    -325.90      -0.00      -0.00      -0.00     460.89      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00       0.00    -325.90       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     325.90      -0.00      -0.00       0.00       0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00     325.90      -0.00       0.00       0.00       0.01      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00    -460.89      -0.00       0.00    -342.96

   10   1.1  0.0  0.0      40.53       0.00      -0.00       0.00       0.00       0.00      40.53       0.00      -0.00    6471.21
                           -0.00       0.00    -342.96      -0.00     427.70       0.00       0.00      -0.00     342.96       0.00

   11   2.1  0.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00     324.59      -0.00       0.00      -0.00     459.05       0.00    -324.59       0.00      -0.00

   12   3.1  0.0  0.0      -0.00      -0.00     324.59       0.00       0.00       0.00      -0.00      -0.00     324.59       0.00
                          324.59       0.00       0.00       0.00       0.00       0.00    -324.59      -0.00      -0.00      -0.00

   13   4.1  0.0  0.0    -372.62      -0.00      -0.00       0.00       0.00       0.00    -372.62      -0.00      -0.00       0.00
                           -0.00      -0.00     151.21      -0.00     313.13       0.00       0.00       0.00    -151.21      -0.00

   14   5.1  0.0  0.0      -0.00    -324.59      -0.00       0.00       0.00       0.00      -0.00    -324.59      -0.00       0.00
                            0.00       0.00      -0.00    -459.05      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   15   6.1  0.0  0.0     539.46      -0.00       0.00       0.00       0.00       0.00     539.46      -0.00       0.00       0.00
                            0.00      -0.00     539.47      -0.00     762.92       0.00      -0.00       0.00    -539.47      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0       0.00      -0.00    -372.62      -0.00     539.46
                            0.00    -324.59       0.00      -0.00      -0.00

    2   2.1  1.0  1.0       0.00      -0.00      -0.00    -324.59      -0.00
                         -324.59      -0.00       0.00      -0.00       0.00

    3   3.1  1.0  1.0      -0.00     324.59      -0.00      -0.00       0.00
                            0.00      -0.00    -151.21       0.00    -539.47

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     459.05       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -313.13       0.00    -762.92

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -459.05      -0.00      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00      -0.00    -372.62      -0.00     539.46
                           -0.00     324.59      -0.00       0.00       0.00

    8   2.1  1.0 -1.0       0.00      -0.00      -0.00    -324.59      -0.00
                          324.59       0.00      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0      -0.00     324.59      -0.00      -0.00       0.00
                           -0.00       0.00     151.21      -0.00     539.47

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6471.22       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6471.22       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6471.22       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6471.23       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   15915.38
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by  -2097.84151992 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.010       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    -460.887      -0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000     460.887       0.000      -0.000      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.005      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     460.888       0.000

    1    1  |1 0>              -0.000      -0.000      -0.000       0.010       0.000       0.000       0.000       0.000
                                0.000    -460.887      -0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                              460.887       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.005      -0.000     460.887
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.010       0.000
                                0.000       0.000    -460.888      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     460.887       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000    -460.887       0.000       0.000       0.000
                              460.888       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              57.322       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     427.705       0.000      -0.000       0.000

    2    1  |0 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     459.047      -0.000     459.046

    3    1  |0 0>              -0.000      -0.000     459.043       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000     459.044       0.000

    4    1  |0 0>            -526.959      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     313.127       0.000      -0.000      -0.000

    5    1  |0 0>              -0.000    -459.044      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -459.046      -0.000       0.000       0.000       0.000

    6    1  |0 0>             762.917      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     762.923       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      57.322       0.000      -0.000    -526.959      -0.000     762.917
                             -460.888       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000    -459.044      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000     459.043      -0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000     459.046       0.000

    2    1  |1 0>            -460.887       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -427.705       0.000      -0.000    -313.127       0.000    -762.923

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -459.047      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -459.044       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -459.046      -0.000       0.000      -0.000       0.000

    3    1  |1 1>-              0.005       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     485.024       0.000      -0.000    -213.838       0.000    -762.920

    1    1  |0 0>               0.000    6471.211       0.000       0.000       0.000       0.000       0.000
                             -485.024       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6471.220       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6471.220       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6471.218       0.000       0.000
                              213.838      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6471.226       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   15915.382
                              762.920      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2097.84618946    -0.00466954    -1024.85      0.00000000        0.00      0.0000
    2 -2097.84361986    -0.00209994     -460.88      0.00256960      563.96      0.0699
    3 -2097.84361985    -0.00209993     -460.88      0.00256961      563.96      0.0699
    4 -2097.84361984    -0.00209992     -460.88      0.00256962      563.97      0.0699
    5 -2097.83973582     0.00178410      391.57      0.00645365     1416.41      0.1756
    6 -2097.83973580     0.00178412      391.57      0.00645366     1416.42      0.1756
    7 -2097.83973579     0.00178413      391.57      0.00645368     1416.42      0.1756
    8 -2097.83973578     0.00178414      391.57      0.00645368     1416.42      0.1756
    9 -2097.83973577     0.00178415      391.58      0.00645369     1416.42      0.1756
   10 -2097.81171905     0.02980087     6540.53      0.03447041     7565.38      0.9380
   11 -2097.81171903     0.02980089     6540.54      0.03447044     7565.39      0.9380
   12 -2097.81171902     0.02980090     6540.54      0.03447044     7565.39      0.9380
   13 -2097.81171902     0.02980090     6540.54      0.03447044     7565.39      0.9380
   14 -2097.81171900     0.02980092     6540.55      0.03447047     7565.39      0.9380
   15 -2097.76853445     0.07298547    16018.46      0.07765501    17043.30      2.1131

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.57559949 -0.00000000 -0.00000000  0.00000000  0.21768114  0.00000000 -0.00000002  0.78215616
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00000001  0.70711077 -0.00000000 -0.00000000 -0.00000000 -0.70301438 -0.00000002
                          -0.00000000  0.00000000  0.00001611  0.00000000  0.00000000 -0.00000000 -0.01133219 -0.00000000

   3    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.70710608  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00190641  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00001611 -0.00000000  0.00000000 -0.00000000 -0.01133232 -0.00000000
                          -0.00000000  0.00000001  0.70710279 -0.00000000  0.00000000  0.00000000  0.70302237  0.00000002

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.57560406  0.00000000  0.00000000  0.00000000  0.78620438  0.00000000 -0.00000001  0.20255995

   3    1  |1 0>          -0.00000000 -0.00000030  0.00000000 -0.00000000  0.00000000 -0.00431524  0.00000000  0.00000000
                           0.00000000 -0.70710468  0.00000001  0.00000000  0.00000000  0.70309853 -0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00190640  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.70710234 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000030 -0.00000000  0.00000000  0.00000000 -0.00431522  0.00000000  0.00000000
                          -0.00000000  0.70710888 -0.00000001 -0.00000000  0.00000000  0.70309432 -0.00000000 -0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.57560165  0.00000000 -0.00000000 -0.00000000 -0.56852746  0.00000000 -0.00000001  0.57959233

   1    1  |0 0>           0.00000036 -0.00000000  0.00000000  0.00000000  0.09861348 -0.00000000  0.00000000 -0.03936345
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000018 -0.00000000  0.00000000  0.00000000  0.10617516 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00065165 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000014 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000073  0.00000000  0.00000000 -0.00000000  0.03936367  0.00000000 -0.00000000  0.09861266
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000036 -0.00000000 -0.00000000 -0.00000000 -0.10616294 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00171129 -0.00000000

   6    1  |0 0>           0.07776839 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.01406033  0.00000000  0.00000001 -0.08554666 -0.00000000  0.04489941
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.07507659 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00047983 -0.00000000

   3    1  |1 1>+         -0.70310021 -0.00000000  0.07507800  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00327658 -0.00000000  0.00007893  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00047983 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.07507692  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.06705629  0.00000000  0.00000000 -0.05495054 -0.00000000 -0.04489980

   3    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00001627 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.07507869 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00327659 -0.00000000  0.00007893  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.70310395  0.00000000 -0.07507819 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00001627 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.07507849 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.08111630  0.00000000  0.00000000 -0.03059685 -0.00000000 -0.04489961

   1    1  |0 0>           0.00000000  0.99286797  0.00000000 -0.00000000  0.05421344 -0.00000000  0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.99434720  0.00000006  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00021542 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.10617536 -0.00000000  0.99434675  0.00000000  0.00000001 -0.00000000 -0.00000000
                           0.00049480 -0.00000000  0.00104539  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.05421349 -0.00000001 -0.00000006  0.99286804  0.00000000  0.00000005
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.99432697 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00635496  0.00000000

   6    1  |0 0>           0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000011  0.00000000  0.99697145
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2097.84618946     -0.00466954    -1024.85      0.00000000        0.00      0.0000
     2   1  -2097.84361986     -0.00209994     -460.88      0.00256960      563.96      0.0699
     3   1  -2097.84361985     -0.00209993     -460.88      0.00256961      563.96      0.0699
     4   1  -2097.84361984     -0.00209992     -460.88      0.00256962      563.97      0.0699
     5   1  -2097.83973582      0.00178410      391.57      0.00645365     1416.41      0.1756
     6   1  -2097.83973580      0.00178412      391.57      0.00645366     1416.42      0.1756
     7   1  -2097.83973579      0.00178413      391.57      0.00645368     1416.42      0.1756
     8   1  -2097.83973578      0.00178414      391.57      0.00645368     1416.42      0.1756
     9   1  -2097.83973577      0.00178415      391.58      0.00645369     1416.42      0.1756
    10   1  -2097.81171905      0.02980087     6540.53      0.03447041     7565.38      0.9380
    11   1  -2097.81171903      0.02980089     6540.54      0.03447044     7565.39      0.9380
    12   1  -2097.81171902      0.02980090     6540.54      0.03447044     7565.39      0.9380
    13   1  -2097.81171902      0.02980090     6540.54      0.03447044     7565.39      0.9380
    14   1  -2097.81171900      0.02980092     6540.55      0.03447047     7565.39      0.9380
    15   1  -2097.76853445      0.07298547    16018.46      0.07765501    17043.30      2.1131

 E0 =  -2097.84151992 is the energy of the lowest zeroth-order state
 E1 =  -2097.84618946 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.57559949 -0.00000000 -0.00000000  0.00000000  0.21768114  0.00000000 -0.00000002  0.78215616
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+      -0.00000000  0.00000001  0.70711077 -0.00000000 -0.00000000 -0.00000000 -0.70301438 -0.00000002
                               -0.00000000  0.00000000  0.00001611  0.00000000  0.00000000 -0.00000000 -0.01133219 -0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.70710608  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00190641  0.00000000  0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00001611 -0.00000000  0.00000000 -0.00000000 -0.01133232 -0.00000000
                               -0.00000000  0.00000001  0.70710279 -0.00000000  0.00000000  0.00000000  0.70302237  0.00000002

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.57560406  0.00000000  0.00000000  0.00000000  0.78620438  0.00000000 -0.00000001  0.20255995

  6  1     3    1  |1 0>       -0.00000000 -0.00000030  0.00000000 -0.00000000  0.00000000 -0.00431524  0.00000000  0.00000000
                                0.00000000 -0.70710468  0.00000001  0.00000000  0.00000000  0.70309853 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00190640  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.70710234 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000030 -0.00000000  0.00000000  0.00000000 -0.00431522  0.00000000  0.00000000
                               -0.00000000  0.70710888 -0.00000001 -0.00000000  0.00000000  0.70309432 -0.00000000 -0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.57560165  0.00000000 -0.00000000 -0.00000000 -0.56852746  0.00000000 -0.00000001  0.57959233

 10  1     1    1  |0 0>        0.00000036 -0.00000000  0.00000000  0.00000000  0.09861348 -0.00000000  0.00000000 -0.03936345
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000  0.00000018 -0.00000000  0.00000000  0.00000000  0.10617516 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00065165 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000014 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>        0.00000073  0.00000000  0.00000000 -0.00000000  0.03936367  0.00000000 -0.00000000  0.09861266
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000036 -0.00000000 -0.00000000 -0.00000000 -0.10616294 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00171129 -0.00000000

 15  1     6    1  |0 0>        0.07776839 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000002
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.01406033  0.00000000  0.00000001 -0.08554666 -0.00000000  0.04489941
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.07507659 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00047983 -0.00000000

  3  1     3    1  |1 1>+      -0.70310021 -0.00000000  0.07507800  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00327658 -0.00000000  0.00007893  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00047983 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.07507692  0.00000000

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.06705629  0.00000000  0.00000000 -0.05495054 -0.00000000 -0.04489980

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00001627 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.07507869 -0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00327659 -0.00000000  0.00007893  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.70310395  0.00000000 -0.07507819 -0.00000000 -0.00000000  0.00000000 -0.00000000

  8  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00001627 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.07507849 -0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.08111630  0.00000000  0.00000000 -0.03059685 -0.00000000 -0.04489961

 10  1     1    1  |0 0>        0.00000000  0.99286797  0.00000000 -0.00000000  0.05421344 -0.00000000  0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.99434720  0.00000006  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00021542 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.10617536 -0.00000000  0.99434675  0.00000000  0.00000001 -0.00000000 -0.00000000
                                0.00049480 -0.00000000  0.00104539  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000 -0.05421349 -0.00000001 -0.00000006  0.99286804  0.00000000  0.00000005
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.99432697 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00635496  0.00000000

 15  1     6    1  |0 0>        0.00000000 -0.00000004  0.00000000 -0.00000000 -0.00000011  0.00000000  0.99697145
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.13%    0.00%    0.00%    0.00%    4.74%    0.00%    0.00%   61.18%
  2  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%
  5  1     2    1  |1 0>         33.13%    0.00%    0.00%    0.00%   61.81%    0.00%    0.00%    4.10%
  6  1     3    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   49.44%    0.00%    0.00%
  9  1     3    1  |1 1>-        33.13%    0.00%    0.00%    0.00%   32.32%    0.00%    0.00%   33.59%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.97%    0.00%    0.00%    0.15%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.13%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.15%    0.00%    0.00%    0.97%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.13%    0.00%
 15  1     6    1  |0 0>          0.60%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.73%    0.00%    0.20%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.56%    0.00%
  3  1     3    1  |1 1>+        49.44%    0.00%    0.56%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.56%    0.00%
  5  1     2    1  |1 0>          0.00%    0.45%    0.00%    0.00%    0.30%    0.00%    0.20%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.56%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        49.44%    0.00%    0.56%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.56%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.66%    0.00%    0.00%    0.09%    0.00%    0.20%
 10  1     1    1  |0 0>          0.00%   98.58%    0.00%    0.00%    0.29%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%   98.87%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          1.13%    0.00%   98.87%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.29%    0.00%    0.00%   98.58%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   98.87%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   99.40%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.16       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       89.60       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       107.67     38.72      5.06     47.27     14.35      1.16      0.08      0.78
 REAL TIME  *       122.46 SEC
 DISK USED  *       128.85 MB (local),        1.94 GB (total)
 SF USED    *       702.58 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -2097.768534454038

              CI              CI           MULTI         RHF-SCF
  -2097.72419148  -2097.79775501  -2096.99712887  -2097.09574691
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
