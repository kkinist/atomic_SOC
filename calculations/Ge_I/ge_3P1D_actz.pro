
 Working directory              : /wrk/irikura/molpro.avNZGAPgmc/
 Global scratch directory       : /wrk/irikura/molpro.avNZGAPgmc/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.avNZGAPgmc/

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
 NSING=5
 
 {multi
     wf,nelec=32,sym=1,spin=2;state,NTRIP;
     wf,nelec=32,sym=1,spin=0;state,NSING;
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
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ge SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Apr-24          TIME: 16:52:03  
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

     15.991 MB (compressed) written to integral file ( 15.6%)

     Node minimum: 0.786 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     539064.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     539064      RECORD LENGTH: 524288

 Memory used in sort:       1.10 MW

 SORT1 READ    12736444. AND WROTE      107437. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1292714. AND WROTE     6503791. INTEGRALS IN    108 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         1.00      0.80
 REAL TIME  *         1.57 SEC
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
   1    -2097.09248454   -2097.09248454     0.00D+00     0.15D+00     0     0       0.01      0.01    start
   2    -2097.09533107      -0.00284652     0.12D-02     0.56D-02     1     0       0.00      0.01    diag2
   3    -2097.09562311      -0.00029204     0.73D-03     0.14D-02     2     0       0.01      0.02    diag2
   4    -2097.09573009      -0.00010698     0.34D-03     0.93D-03     3     0       0.00      0.02    diag2
   5    -2097.09574569      -0.00001560     0.96D-04     0.30D-03     4     0       0.01      0.03    diag2
   6    -2097.09574676      -0.00000107     0.14D-04     0.68D-04     5     0       0.00      0.03    diag2
   7    -2097.09574690      -0.00000014     0.42D-05     0.19D-04     6     0       0.00      0.03    diag2
   8    -2097.09574691      -0.00000002     0.11D-05     0.13D-04     7     0       0.01      0.04    fixocc
   9    -2097.09574691      -0.00000000     0.17D-06     0.26D-05     8     0       0.00      0.04    diag2
  10    -2097.09574691      -0.00000000     0.14D-07     0.96D-07     0     0       0.00      0.04    diag/orth

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2097.095746912982
  RHF One-electron energy           -2930.714707295604
  RHF Two-electron energy             833.618960382622
  RHF Kinetic energy                 2226.566287188195
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
    4.1     2.00000    -1.34711     1  1  d0   0.60490    1  1  d2+  0.79615
    5.1     2.00000    -1.34711     1  1  d1-  0.99988
    6.1     2.00000    -1.34711     1  1  d2-  0.99988
    7.1     2.00000    -1.34711     1  1  d1+  0.99984
    8.1     2.00000    -1.34711     1  1  d0   0.79612    1  1  d2+ -0.60488
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
 CPU TIMES  *         1.11      0.11      0.80
 REAL TIME  *         2.07 SEC
 DISK USED  *        30.37 MB (local),      420.33 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING NTRIP          =         3.00000000                                  
 SETTING NSING          =         5.00000000                                  

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
 Number of states:             5
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.135D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.123D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.126D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.435D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 3 4 2 1 1   2 6 3 4 5 1 2 4 3 6   5 2 4 3 6 5 1 4 2 3   6 5 912 81510141311
                                        7 1 5 6 3 2 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.170D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.207D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.974D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.125D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.670D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.670D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 3 2 1   3 2 1 3 2 9 7 4 5 6   810 4 6 5 7 8 910 2   3 1 4 6 9 8 710 5 2
                                        3 110 5 8 7 9 6 4 1   2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  764  ( 26 closed/active, 570 closed/virtual, 0 active/active, 168 active/virtual )
 Total number of variables:    872
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   18   28    0  -2097.02353114   -2097.04859270   -0.02506157    0.12888945 0.00098035 0.00000000  0.41E+00      0.39
   2    8   14    0  -2097.03972063   -2097.04640733   -0.00668670    0.36070062 0.00002857 0.00000000  0.48E-01      0.76
   3    6   10    0  -2097.04646171   -2097.04646308   -0.00000137    0.00314738 0.00000011 0.00000000  0.14E-02      1.10
   4    3    6    0  -2097.04646308   -2097.04646308    0.00000000    0.00000075 0.00000001 0.00000000  0.64E-06      1.31

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.82E-08)
                       Final energy:  -2097.04646308
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2097.070642151735
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52289993
 One electron energy                         -2922.58912671
 Two electron energy                           825.51848455
 Virial ratio                                    1.94185900
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2097.070642151368
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52289993
 One electron energy                         -2922.58912672
 Two electron energy                           825.51848457
 Virial ratio                                    1.94185900
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2097.070642151259
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52289992
 One electron energy                         -2922.58912668
 Two electron energy                           825.51848453
 Virial ratio                                    1.94185900
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2097.031955644153
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52289993
 One electron energy                         -2922.58912671
 Two electron energy                           825.55717106
 Virial ratio                                    1.94184163
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2097.031955644140
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52289993
 One electron energy                         -2922.58912671
 Two electron energy                           825.55717106
 Virial ratio                                    1.94184163
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2097.031955643758
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52289993
 One electron energy                         -2922.58912672
 Two electron energy                           825.55717108
 Virial ratio                                    1.94184163
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2097.031955643740
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52289992
 One electron energy                         -2922.58912668
 Two electron energy                           825.55717104
 Virial ratio                                    1.94184163
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2097.031955643601
 Nuclear energy                                  0.00000000
 Kinetic energy                               2226.52289993
 One electron energy                         -2922.58912670
 Two electron energy                           825.55717105
 Virial ratio                                    1.94184163
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999992423
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999996738
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000010840
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000026899
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.933072202568
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000402881
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999612715
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.066924312672
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000091302
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999915899
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999992426
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.999999758835
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.998471761435
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000212299
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000097000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.001528016661
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999916275
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000087364
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999996735
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.000000214266
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.068456035997
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999384820
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000290285
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.931547670667
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 2 4 3 5 1 1   2 6 4 5 3 1 2 6 4 3   5 2 6 4 5 3 1 2 6 4   3 511 7 912 8151410
                                       13 1 6 2 4 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 1 2 3 3   2 1 3 2 1 5 6 410 8   7 9 5 6 4 810 9 7 2   3 1 5 6 4 810 7 9 2
                                        3 1 5 6 410 8 7 9 3   1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -410.82478     1  1  s    0.99373
    2.1     2.00000   -53.43557     1  2  s    1.03257
    3.1     2.00000    -7.40809     1  3  s    0.97043
    4.1     2.00000    -1.60348     1  1  d1-  0.99998
    5.1     2.00000    -1.60348     1  1  d0   0.99998
    6.1     2.00000    -1.60348     1  1  d1+  0.99998
    7.1     2.00000    -1.60348     1  1  d2-  0.99998
    8.1     2.00000    -1.60348     1  1  d2+  0.99998
    9.1     1.97490    -0.56545     1  4  s    1.00785
    1.2     2.00000   -46.52775     1  1  py   0.99994
    2.2     2.00000   -46.52775     1  1  pz   0.99994
    3.2     2.00000   -46.52775     1  1  px   0.99994
    4.2     2.00000    -5.21281     1  2  py   0.99979
    5.2     2.00000    -5.21281     1  2  pz   0.99979
    6.2     2.00000    -5.21281     1  2  px   0.99979
    7.2     0.67503    -0.06728     1  3  px   0.99036
    8.2     0.67503    -0.06728     1  3  py   0.99036
    9.2     0.67503    -0.06728     1  3  pz   0.99036
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 0aa         -0.00008650     -0.00005676      0.99370548
 2 aa0          0.00028753      0.99370544      0.00005678
 2 a0a          0.99370544     -0.00028754      0.00008648
 0 2aa          0.00000975      0.00000640     -0.11202413
 0 aa2         -0.00003241     -0.11202412     -0.00000640
 0 a2a         -0.11202412      0.00003242     -0.00000975
 
 Energy:    -2097.07064215  -2097.07064215  -2097.07064215
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020         -0.00000993     -0.01585776     -0.00014142      0.00033117      0.81120206
 2 200          0.00004746      0.71045052      0.00014161      0.00003007     -0.39186789
 2 b0a         -0.70265586      0.00004266      0.00018651     -0.00006934     -0.00000770
 2 a0b          0.70265586     -0.00004266     -0.00018651      0.00006934      0.00000770
 2 ab0          0.00018653     -0.00007322      0.70265580     -0.00025765      0.00012118
 2 ba0         -0.00018653      0.00007322     -0.70265580      0.00025765     -0.00012118
 2 0ab         -0.00006928     -0.00019003      0.00025770      0.70265575     -0.00029053
 2 0ba          0.00006928      0.00019003     -0.00025770     -0.70265575      0.00029053
 2 002         -0.00003753     -0.69459276     -0.00000018     -0.00036124     -0.41933420
 0 202         -0.00000112     -0.00178770     -0.00001594      0.00003733      0.09144984
 0 022          0.00000535      0.08009174      0.00001596      0.00000339     -0.04417673
 0 b2a          0.07921302     -0.00000481     -0.00002103      0.00000782      0.00000087
 0 a2b         -0.07921302      0.00000481      0.00002103     -0.00000782     -0.00000087
 0 ab2         -0.00002103      0.00000825     -0.07921301      0.00002905     -0.00001366
 0 ba2          0.00002103     -0.00000825      0.07921301     -0.00002905      0.00001366
 0 2ab          0.00000781      0.00002142     -0.00002905     -0.07921300      0.00003275
 0 2ba         -0.00000781     -0.00002142      0.00002905      0.07921300     -0.00003275
 0 220         -0.00000423     -0.07830403     -0.00000002     -0.00004072     -0.04727311
 
 Energy:    -2097.03195564  -2097.03195564  -2097.03195564  -2097.03195564  -2097.03195564
 


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
 CPU TIMES  *         2.29      1.17      0.11      0.80
 REAL TIME  *         3.59 SEC
 DISK USED  *        40.00 MB (local),      535.89 MB (total)
 SF USED    *        24.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2097.070642   2.0
    -2097.070642   2.0
    -2097.070642   2.0
    -2097.031956   6.0
    -2097.031956   6.0
    -2097.031956   6.0
    -2097.031956   6.0
    -2097.031956   6.0
                                                  


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
     1     -2097.07064215
     2     -2097.07064215
     3     -2097.07064215

 Number of blocks in overlap matrix:   382   Smallest eigenvalue:  0.13D-01
 Number of N-2 electron functions:     477
 Number of N-1 electron functions:    2940

 Number of internal configurations:                  537
 Number of singly external configurations:        120612
 Number of doubly external configurations:        802686
 Total number of contracted configurations:       923835
 Total number of uncontracted configurations:    4632525

 Diagonal Coupling coefficients finished.               Storage:    543671 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    451690 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.07064215    -0.00000000    -0.89171379  0.35D-01  0.72D-01     0.18
    1     2     2     1.00000000     0.00000000 -2097.07064215    -0.00000000    -0.89195023  0.36D-01  0.72D-01     0.18
    1     3     3     1.00000000     0.00000000 -2097.07064215     0.00000000    -0.89154910  0.35D-01  0.71D-01     0.18
    2     1     1     1.06697281    -0.70837525 -2097.77901740    -0.70837525    -0.01965432  0.24D-02  0.11D-02     2.64
    2     2     2     1.06713645    -0.70828882 -2097.77893097    -0.70828882    -0.01973557  0.25D-02  0.11D-02     2.64
    2     3     3     1.06737332    -0.70816559 -2097.77880774    -0.70816559    -0.01984964  0.26D-02  0.11D-02     2.64
    3     1     1     1.06065724    -0.72625668 -2097.79689883    -0.01788143    -0.00058284  0.88D-04  0.42D-04     4.90
    3     2     2     1.06065623    -0.72625508 -2097.79689723    -0.01796626    -0.00058448  0.88D-04  0.42D-04     4.90
    3     3     3     1.06065526    -0.72625289 -2097.79689505    -0.01808730    -0.00058681  0.89D-04  0.43D-04     4.90
    4     1     1     1.05986970    -0.72680212 -2097.79744427    -0.00054544    -0.00002852  0.46D-05  0.21D-05     7.22
    4     2     2     1.05986552    -0.72680202 -2097.79744417    -0.00054694    -0.00002864  0.46D-05  0.21D-05     7.22
    4     3     3     1.05985943    -0.72680190 -2097.79744405    -0.00054900    -0.00002878  0.46D-05  0.21D-05     7.22
    5     1     1     1.05997110    -0.72682962 -2097.79747177    -0.00002750    -0.00000116  0.12D-06  0.12D-06     9.48
    5     2     2     1.05997070    -0.72682962 -2097.79747177    -0.00002760    -0.00000117  0.12D-06  0.12D-06     9.48
    5     3     3     1.05997015    -0.72682962 -2097.79747177    -0.00002772    -0.00000117  0.12D-06  0.12D-06     9.48
    6     1     1     1.06000558    -0.72683081 -2097.79747297    -0.00000119    -0.00000005  0.34D-08  0.76D-08    11.76
    6     2     2     1.06000570    -0.72683081 -2097.79747297    -0.00000120    -0.00000005  0.34D-08  0.76D-08    11.76
    6     3     3     1.06000546    -0.72683081 -2097.79747297    -0.00000120    -0.00000005  0.34D-08  0.77D-08    11.76
    7     1     1     1.06000595    -0.72683087 -2097.79747302    -0.00000005    -0.00000000  0.43D-09  0.45D-09    14.04
    7     2     2     1.06000592    -0.72683087 -2097.79747302    -0.00000005    -0.00000000  0.43D-09  0.46D-09    14.04
    7     3     3     1.06000598    -0.72683087 -2097.79747302    -0.00000005    -0.00000000  0.43D-09  0.45D-09    14.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.6%   4.1%
 P   0.4%  27.1%  24.9%

 Initialization:   1.1%
 Other:           41.2%

 Total CPU:       14.0 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222//0          -0.0000000   0.9658909  -0.0000000
 2222222222/0/           0.9658909   0.0000000  -0.0000000
 22222222220//           0.0000000   0.0000000   0.9658909
 2222220222//2           0.0000000  -0.1009717   0.0000000
 2222220222/2/          -0.1009716  -0.0000000   0.0000000
 22222202222//          -0.0000000  -0.0000000  -0.1009716

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971122   -0.000000    0.000000
 2           0.000000    0.971122    0.000000
 3          -0.000000   -0.000000    0.971122

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971122   -0.000000    0.000000
 2          -0.000000    0.971122   -0.000000
 3           0.000000   -0.000000    0.971122


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97112235 (fixed)   0.97115421 (relaxed)   0.97112235 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033117   -0.00063795   -0.64446455
 Singles      0.01434956   -0.04370909   -0.05105893
 Pairs        0.04567626   -0.00000000   -0.03130740
 Total        1.06035699   -0.04434704   -0.72683087
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07064215
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.79289732
 One electron energy                -2921.26264173
 Two electron energy                  823.46516871
 Virial quotient                       -0.94207121
 Correlation energy                    -0.72683087
 !MRCI STATE 1.1 Energy             -2097.797473019359

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84134234 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84129177 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84134234 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83894356 (Pople, fixed reference)
 Cluster corrected energies         -2097.83889336 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83894356 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97112236 (fixed)   0.97115423 (relaxed)   0.97112236 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033117   -0.00063795   -0.64446459
 Singles      0.01434953   -0.04370906   -0.05105891
 Pairs        0.04567626   -0.00000000   -0.03130737
 Total        1.06035696   -0.04434701   -0.72683087
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07064215
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.79289521
 One electron energy                -2921.26263976
 Two electron energy                  823.46516674
 Virial quotient                       -0.94207121
 Correlation energy                    -0.72683087
 !MRCI STATE 2.1 Energy             -2097.797473019061

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84134232 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84129175 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84134232 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83894354 (Pople, fixed reference)
 Cluster corrected energies         -2097.83889334 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83894354 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97112233 (fixed)   0.97115420 (relaxed)   0.97112233 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00033117   -0.00063795   -0.00082864
 Singles      0.01434959   -0.04370911   -0.05105894
 Pairs        0.04567626   -0.68248381   -0.67494329
 Total        1.06035702   -0.72683087   -0.72683087
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.07064215
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.79289855
 One electron energy                -2921.26264279
 Two electron energy                  823.46516977
 Virial quotient                       -0.94207121
 Correlation energy                    -0.72683087
 !MRCI STATE 3.1 Energy             -2097.797473018928

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.84134236 (Davidson, fixed reference)
 Cluster corrected energies         -2097.84129179 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.84134236 (Davidson, rotated reference)

 Cluster corrected energies         -2097.83894358 (Pople, fixed reference)
 Cluster corrected energies         -2097.83889338 (Pople, relaxed reference)
 Cluster corrected energies         -2097.83894358 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       22.51       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        16.81     14.49      1.17      0.11      0.80
 REAL TIME  *        20.06 SEC
 DISK USED  *        61.69 MB (local),      796.18 MB (total)
 SF USED    *       234.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2097.84134234  AU                              
 SETTING HLSDIAG(2)     =     -2097.84134232  AU                              
 SETTING HLSDIAG(3)     =     -2097.84134236  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

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
     1     -2097.03195564
     2     -2097.03195564
     3     -2097.03195564
     4     -2097.03195564
     5     -2097.03195564

 Number of blocks in overlap matrix:   580   Smallest eigenvalue:  0.47D-01
 Number of N-2 electron functions:     654
 Number of N-1 electron functions:    2099

 Number of internal configurations:                  450
 Number of singly external configurations:         86093
 Number of doubly external configurations:       1101462
 Total number of contracted configurations:      1188005
 Total number of uncontracted configurations:    3590838

 Diagonal Coupling coefficients finished.               Storage:    643996 words, CPU-Time:      0.07 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    478188 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2097.03195564     0.00000000    -0.90128060  0.40D-01  0.75D-01     0.17
    1     2     2     1.00000000     0.00000000 -2097.03195564    -0.00000000    -0.90057117  0.39D-01  0.75D-01     0.17
    1     3     3     1.00000000     0.00000000 -2097.03195564     0.00000000    -0.90164854  0.39D-01  0.75D-01     0.17
    1     4     4     1.00000000     0.00000000 -2097.03195564    -0.00000000    -0.90218895  0.40D-01  0.76D-01     0.17
    1     5     5     1.00000000     0.00000000 -2097.03195564    -0.00000000    -0.90146443  0.39D-01  0.75D-01     0.17
    2     1     1     1.07145457    -0.71379958 -2097.74575522    -0.71379958    -0.02055511  0.26D-02  0.13D-02     4.93
    2     2     2     1.07151333    -0.71372015 -2097.74567579    -0.71372015    -0.02068191  0.27D-02  0.13D-02     4.93
    2     3     3     1.07174391    -0.71354601 -2097.74550165    -0.71354601    -0.02090915  0.28D-02  0.13D-02     4.93
    2     4     4     1.07192625    -0.71347063 -2097.74542628    -0.71347063    -0.02094873  0.29D-02  0.13D-02     4.93
    2     5     5     1.07215613    -0.71339224 -2097.74534789    -0.71339224    -0.02105270  0.29D-02  0.13D-02     4.93
    3     1     1     1.06420271    -0.73252168 -2097.76447732    -0.01872210    -0.00056033  0.74D-04  0.46D-04     9.65
    3     2     2     1.06421325    -0.73251909 -2097.76447473    -0.01879894    -0.00056101  0.74D-04  0.47D-04     9.65
    3     3     3     1.06423579    -0.73251366 -2097.76446930    -0.01896765    -0.00057330  0.78D-04  0.46D-04     9.65
    3     4     4     1.06423334    -0.73251052 -2097.76446617    -0.01903989    -0.00057461  0.78D-04  0.47D-04     9.65
    3     5     5     1.06426945    -0.73250903 -2097.76446467    -0.01911679    -0.00057777  0.78D-04  0.48D-04     9.65
    4     1     1     1.06342746    -0.73305760 -2097.76501324    -0.00053592    -0.00002935  0.50D-05  0.23D-05    14.42
    4     2     2     1.06342456    -0.73305711 -2097.76501276    -0.00053803    -0.00002983  0.51D-05  0.23D-05    14.42
    4     3     3     1.06343195    -0.73305643 -2097.76501207    -0.00054277    -0.00003081  0.52D-05  0.24D-05    14.42
    4     4     4     1.06343047    -0.73305633 -2097.76501198    -0.00054581    -0.00003097  0.52D-05  0.24D-05    14.42
    4     5     5     1.06342882    -0.73305609 -2097.76501173    -0.00054706    -0.00003122  0.53D-05  0.24D-05    14.42
    5     1     1     1.06349722    -0.73308620 -2097.76504184    -0.00002860    -0.00000122  0.18D-06  0.97D-07    19.19
    5     2     2     1.06349707    -0.73308615 -2097.76504179    -0.00002904    -0.00000126  0.18D-06  0.10D-06    19.19
    5     3     3     1.06349802    -0.73308614 -2097.76504178    -0.00002971    -0.00000128  0.19D-06  0.10D-06    19.19
    5     4     4     1.06349704    -0.73308614 -2097.76504178    -0.00002981    -0.00000129  0.19D-06  0.10D-06    19.19
    5     5     5     1.06349806    -0.73308611 -2097.76504175    -0.00003002    -0.00000131  0.19D-06  0.11D-06    19.19
    6     1     1     1.06349907    -0.73308745 -2097.76504310    -0.00000126    -0.00000005  0.43D-08  0.53D-08    23.97
    6     2     2     1.06349924    -0.73308745 -2097.76504310    -0.00000130    -0.00000005  0.44D-08  0.53D-08    23.97
    6     3     3     1.06349904    -0.73308745 -2097.76504310    -0.00000131    -0.00000005  0.45D-08  0.57D-08    23.97
    6     4     4     1.06349865    -0.73308745 -2097.76504310    -0.00000131    -0.00000005  0.45D-08  0.57D-08    23.97
    6     5     5     1.06349910    -0.73308745 -2097.76504310    -0.00000134    -0.00000005  0.45D-08  0.57D-08    23.97
    7     1     1     1.06349620    -0.73308750 -2097.76504314    -0.00000005    -0.00000000  0.51D-09  0.21D-09    29.04
    7     2     2     1.06349621    -0.73308750 -2097.76504314    -0.00000005    -0.00000000  0.54D-09  0.22D-09    29.04
    7     3     3     1.06349622    -0.73308750 -2097.76504314    -0.00000005    -0.00000000  0.52D-09  0.23D-09    29.04
    7     4     4     1.06349618    -0.73308750 -2097.76504314    -0.00000005    -0.00000000  0.48D-09  0.21D-09    29.04
    7     5     5     1.06349615    -0.73308750 -2097.76504314    -0.00000005    -0.00000000  0.52D-09  0.22D-09    29.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   2.2%
 P   0.6%  20.3%  26.8%

 Initialization:   0.4%
 Other:           48.9%

 Total CPU:       29.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222220/\           0.0000000   0.0000000   0.0000000  -0.0000000   0.9642362
 2222222222/0\          -0.0000000   0.9642362  -0.0000000   0.0000000  -0.0000000
 2222222222/\0           0.0000000   0.0000000   0.9642362   0.0000000  -0.0000000
 2222222222200           0.7612617   0.0000000  -0.0000000  -0.2007860  -0.0000000
 2222222222020          -0.2067448  -0.0000000  -0.0000000   0.7596651   0.0000000
 2222222222002          -0.5545166   0.0000000   0.0000000  -0.5588787  -0.0000000
 2222220222/2\           0.0000000  -0.1008602   0.0000000  -0.0000000   0.0000000
 2222220222/\2          -0.0000000  -0.0000000  -0.1008602  -0.0000000   0.0000000
 22222202222/\          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1008601
 2222220222022           0.0796287   0.0000000  -0.0000000  -0.0210024  -0.0000000
 2222220222202          -0.0216258  -0.0000000  -0.0000000   0.0794616   0.0000000
 2222220222220          -0.0580030   0.0000000   0.0000000  -0.0584593  -0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 222222\222/\0  21.1    -0.0000000  -0.0000000  -0.0509677  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.940250    0.000000    0.000000   -0.236205
 2           0.969466   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.969466    0.000000   -0.000000
 4           0.000000    0.236205    0.000000   -0.000000    0.940250
 5          -0.000000    0.000000   -0.000000    0.969466    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969466    0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.969466    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.969466    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.969466   -0.000000
 5           0.000000    0.000000   -0.000000   -0.000000    0.969466


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94025024 (fixed)   0.96949689 (relaxed)   0.96946557 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045897   -0.00093134   -0.80139288
 Singles      0.01648066   -0.04755430   -0.05605178
 Pairs        0.04704468    0.16679978    0.12435716
 Total        1.06398430    0.11831414   -0.73308750
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03195564
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78945073
 One electron energy                -2921.18337822
 Two electron energy                  823.41833507
 Virial quotient                       -0.94205810
 Correlation energy                    -0.73308750
 !MRCI STATE 1.1 Energy             -2097.765043144976

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81194924 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81189885 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81194924 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81002377 (Pople, fixed reference)
 Cluster corrected energies         -2097.80997282 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81002377 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96946557 (fixed)   0.96949688 (relaxed)   0.96946557 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045896   -0.00093134   -0.64462375
 Singles      0.01648070   -0.04755441   -0.05605186
 Pairs        0.04704465    0.00000000   -0.03241190
 Total        1.06398431   -0.04848575   -0.73308750
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03195564
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78948865
 One electron energy                -2921.18342749
 Two electron energy                  823.41838434
 Virial quotient                       -0.94205809
 Correlation energy                    -0.73308750
 !MRCI STATE 2.1 Energy             -2097.765043144850

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81194924 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81189885 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81194924 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81002377 (Pople, fixed reference)
 Cluster corrected energies         -2097.80997282 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81002377 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96946556 (fixed)   0.96949688 (relaxed)   0.96946556 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045896   -0.00093134   -0.64462377
 Singles      0.01648070   -0.04755437   -0.05605182
 Pairs        0.04704466    0.00000000   -0.03241191
 Total        1.06398432   -0.04848571   -0.73308750
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03195564
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78947736
 One electron energy                -2921.18340807
 Two electron energy                  823.41836492
 Virial quotient                       -0.94205809
 Correlation energy                    -0.73308750
 !MRCI STATE 3.1 Energy             -2097.765043144575

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81194925 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81189886 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81194925 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81002378 (Pople, fixed reference)
 Cluster corrected energies         -2097.80997283 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81002378 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94025024 (fixed)   0.96949689 (relaxed)   0.96946558 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045897   -0.00093134   -0.02058172
 Singles      0.01648070   -0.04755431   -0.05605177
 Pairs        0.04704462   -0.66397103   -0.65645401
 Total        1.06398429   -0.71245668   -0.73308750
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03195564
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78943048
 One electron energy                -2921.18334970
 Two electron energy                  823.41830656
 Virial quotient                       -0.94205811
 Correlation energy                    -0.73308750
 !MRCI STATE 4.1 Energy             -2097.765043144550

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81194923 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81189884 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81194923 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81002375 (Pople, fixed reference)
 Cluster corrected energies         -2097.80997280 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81002375 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96946559 (fixed)   0.96949691 (relaxed)   0.96946559 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00045896   -0.00093134   -0.64462380
 Singles      0.01648070   -0.04755439   -0.05605182
 Pairs        0.04704459   -0.00000000   -0.03241187
 Total        1.06398425   -0.04848573   -0.73308750
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2097.03195564
 Nuclear energy                         0.00000000
 Kinetic energy                      2226.78947374
 One electron energy                -2921.18340665
 Two electron energy                  823.41836351
 Virial quotient                       -0.94205809
 Correlation energy                    -0.73308750
 !MRCI STATE 5.1 Energy             -2097.765043144499

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2097.81194920 (Davidson, fixed reference)
 Cluster corrected energies         -2097.81189881 (Davidson, relaxed reference)
 Cluster corrected energies         -2097.81194920 (Davidson, rotated reference)

 Cluster corrected energies         -2097.81002373 (Pople, fixed reference)
 Cluster corrected energies         -2097.80997278 (Pople, relaxed reference)
 Cluster corrected energies         -2097.81002373 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       39.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       68.42       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        47.16     30.35     14.49      1.17      0.11      0.80
 REAL TIME  *        54.83 SEC
 DISK USED  *       107.60 MB (local),        1.32 GB (total)
 SF USED    *       485.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =     -2097.81194924  AU                              
 SETTING HLSDIAG(5)     =     -2097.81194924  AU                              
 SETTING HLSDIAG(6)     =     -2097.81194925  AU                              
 SETTING HLSDIAG(7)     =     -2097.81194923  AU                              
 SETTING HLSDIAG(8)     =     -2097.81194920  AU                              


         HLSDIAG
    -2097.841342
    -2097.841342
    -2097.841342
    -2097.811949
    -2097.811949
    -2097.811949
    -2097.811949
    -2097.811949
                                                  

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

 Time for Seward_LS:       4.52 sec

        6868600. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     1914 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.52 sec, REAL time:      4.65 sec


 SORTLS1 read     7822434. and wrote     7822434. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.11 sec
 SORTLS2 read     7822434. and wrote    38256242. SO integrals in    36 records. CPU time:      0.03 sec, REAL time:      0.06 sec

 FILE SIZES: FILE 1:   166.5 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   166.5 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       68.42       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        52.52      5.36     30.35     14.49      1.17      0.11      0.80
 REAL TIME  *        60.44 SEC
 DISK USED  *       107.66 MB (local),        1.70 GB (total)
 SF USED    *       485.13 MB
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

 Original energies:  -2097.797473  -2097.797473  -2097.797473
 Replaced energies:  -2097.841342  -2097.841342  -2097.841342

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:  -2097.765043  -2097.765043  -2097.765043  -2097.765043  -2097.765043
 Replaced energies:  -2097.811949  -2097.811949  -2097.811949  -2097.811949  -2097.811949



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2097.84134236

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     -96.95
                           -0.00      -0.00    -453.95       0.00     320.99      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0       0.00       0.01       0.00      -0.00       0.00    -320.99       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00    -320.99       0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00     320.99      -0.00       0.00       0.00       0.00      -0.00
                          453.95       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00    -356.96

    4   1.1  1.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00     320.99      -0.00       0.00       0.00       0.00       0.00     320.99      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00     320.99       0.00       0.01       0.00      -0.00       0.00    -320.99       0.00
                         -320.99      -0.00       0.00      -0.00       0.00       0.00    -320.99       0.00       0.00    -367.73

    6   3.1  1.0  0.0       0.00    -320.99      -0.00       0.00       0.00       0.00      -0.00     320.99      -0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -96.95
                           -0.00      -0.00      -0.00      -0.00     320.99      -0.00       0.00       0.00     453.95      -0.00

    8   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00     320.99       0.00       0.01       0.00      -0.00
                           -0.00      -0.00      -0.00    -320.99      -0.00       0.00      -0.00       0.00       0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00    -320.99      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00    -453.95      -0.00       0.00     356.96

   10   1.1  0.0  0.0     -96.95      -0.00      -0.00       0.00       0.00       0.00     -96.95      -0.00      -0.00    6451.05
                           -0.00       0.00     356.96      -0.00     367.73      -0.00       0.00      -0.00    -356.96       0.00

   11   2.1  0.0  0.0      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00     319.71      -0.00       0.00      -0.00    -452.13       0.00    -319.71       0.00      -0.00

   12   3.1  0.0  0.0      -0.00      -0.00    -319.71       0.00       0.00       0.00      -0.00      -0.00    -319.71       0.00
                         -319.71      -0.00      -0.00       0.00      -0.00       0.00     319.71       0.00       0.00      -0.00

   13   4.1  0.0  0.0     356.22       0.00      -0.00       0.00       0.00       0.00     356.22       0.00      -0.00       0.00
                           -0.00       0.00     -94.15      -0.00     370.62      -0.00       0.00      -0.00      94.15      -0.00

   14   5.1  0.0  0.0       0.00    -319.71       0.00       0.00       0.00       0.00       0.00    -319.71       0.00       0.00
                            0.00      -0.00      -0.00     452.13       0.00       0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0      -0.00      -0.00     356.22       0.00
                            0.00     319.71       0.00      -0.00

    2   2.1  1.0  1.0      -0.00      -0.00       0.00    -319.71
                         -319.71       0.00      -0.00       0.00

    3   3.1  1.0  1.0      -0.00    -319.71      -0.00       0.00
                            0.00       0.00      94.15       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -452.13

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00    -370.62      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                          452.13      -0.00       0.00      -0.00

    7   1.1  1.0 -1.0      -0.00      -0.00     356.22       0.00
                           -0.00    -319.71      -0.00       0.00

    8   2.1  1.0 -1.0      -0.00      -0.00       0.00    -319.71
                          319.71      -0.00       0.00      -0.00

    9   3.1  1.0 -1.0      -0.00    -319.71      -0.00       0.00
                           -0.00      -0.00     -94.15      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    6451.04       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    6451.04       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    6451.05       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    6451.05
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by  -2097.84134236 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.004       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     453.953      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.009       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -453.953       0.000       0.000       0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000     453.953       0.000

    1    1  |1 0>              -0.000       0.000      -0.000       0.004       0.000       0.000       0.000      -0.000
                                0.000     453.953      -0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.009       0.000       0.000       0.000
                             -453.953       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000    -453.953
                                0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.004       0.000
                               -0.000      -0.000    -453.953       0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000    -453.953       0.000       0.009
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000     453.953       0.000       0.000       0.000
                              453.953       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000

    1    1  |0 0>            -137.101      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     367.727      -0.000      -0.000       0.000

    2    1  |0 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -452.134      -0.000     452.133

    3    1  |0 0>              -0.000      -0.000    -452.133       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000    -452.132      -0.000

    4    1  |0 0>             503.765       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     370.620      -0.000      -0.000       0.000

    5    1  |0 0>               0.000    -452.134       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     452.134       0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000    -137.101      -0.000      -0.000     503.765       0.000
                             -453.953       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000    -452.134
                               -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000      -0.000      -0.000    -452.133      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000    -452.134

    2    1  |1 0>             453.953       0.000       0.000       0.000       0.000       0.000
                               -0.000    -367.727       0.000       0.000    -370.620      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000     452.134      -0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     452.132       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -452.133       0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -504.825       0.000       0.000     133.151       0.000

    1    1  |0 0>               0.000    6451.045       0.000       0.000       0.000       0.000
                              504.825       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    6451.044       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    6451.042       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    6451.048       0.000
                             -133.151      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    6451.054
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2097.84547907    -0.00413670     -907.90      0.00000000        0.00      0.0000
    2 -2097.84341071    -0.00206835     -453.95      0.00206835      453.95      0.0563
    3 -2097.84341070    -0.00206834     -453.95      0.00206836      453.95      0.0563
    4 -2097.84341069    -0.00206833     -453.95      0.00206837      453.96      0.0563
    5 -2097.83958118     0.00176118      386.54      0.00589789     1294.44      0.1605
    6 -2097.83958116     0.00176120      386.54      0.00589790     1294.44      0.1605
    7 -2097.83958116     0.00176121      386.54      0.00589791     1294.44      0.1605
    8 -2097.83958115     0.00176121      386.54      0.00589791     1294.44      0.1605
    9 -2097.83958114     0.00176122      386.54      0.00589792     1294.44      0.1605
   10 -2097.81164208     0.02970028     6518.46      0.03383699     7426.36      0.9208
   11 -2097.81164207     0.02970029     6518.46      0.03383700     7426.36      0.9208
   12 -2097.81164205     0.02970031     6518.46      0.03383701     7426.37      0.9208
   13 -2097.81164204     0.02970032     6518.47      0.03383703     7426.37      0.9208
   14 -2097.81164203     0.02970034     6518.47      0.03383704     7426.37      0.9208

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+         -0.57735022  0.00000000  0.00000000  0.00000000  0.56772921  0.00000001 -0.58053460 -0.00000001
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00000000 -0.00000001 -0.70710470  0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.70710858  0.00000000 -0.00000000  0.00000000 -0.70320677 -0.00000001  0.00000000
                           0.00000000  0.00030723  0.00000000  0.00000000 -0.00000000  0.00065257  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000001  0.70710886  0.00000000 -0.00000000 -0.00000000  0.00000001

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.57734841 -0.00000000  0.00000000  0.00000000  0.21889571 -0.00000001  0.78193572  0.00000001

   3    1  |1 0>          -0.00000000 -0.00000000  0.00049943 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004
                           0.00000000 -0.00000000  0.70711057 -0.00000001 -0.00000000 -0.00000000  0.00000001 -0.70320494

   1    1  |1 1>-         -0.00000000 -0.00030723 -0.00000000 -0.00000000 -0.00000000  0.00065257  0.00000000 -0.00000000
                           0.00000000  0.70710485  0.00000000 -0.00000000 -0.00000000  0.70321053  0.00000001 -0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00049942 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004
                           0.00000000 -0.00000000  0.70710264 -0.00000001  0.00000000  0.00000000 -0.00000001  0.70321291

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.57735219 -0.00000000 -0.00000000  0.00000000  0.78662151 -0.00000000  0.20139806  0.00000000

   1    1  |0 0>          -0.00000004  0.00000000 -0.00000000 -0.00000000  0.09158796 -0.00000000  0.05105398  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000061  0.00000000  0.00000000  0.00000000 -0.00000000  0.10485426
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

   3    1  |0 0>          -0.00000000  0.00000035  0.00000000  0.00000000  0.00000000 -0.10485385 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00009730  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000045 -0.00000000 -0.00000000 -0.00000000 -0.05105346 -0.00000000  0.09158828  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000021  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000000 -0.03404016  0.07855646 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.70320783  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.07414316
                           0.00211552 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004426

   3    1  |1 1>+         -0.00000000 -0.07414233 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00030351  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00211550  0.00000000 -0.00000000  0.00000000  0.00000000  0.00004426
                           0.70320366  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.07414302

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000000  0.00000000 -0.05101232 -0.06875866  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001 -0.00000000  0.07414317  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00030351  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.07414223  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00000000 -0.07414315 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.08505208  0.00979875  0.00000000

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.98431104  0.14190459 -0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.99448760  0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000  0.99447930  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00407099 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.14190466  0.98431103 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.10485370 -0.00000000 -0.00000000  0.00000000  0.00000001  0.99448743
                           0.00031544  0.00000000 -0.00000000  0.00000000  0.00000000  0.00059371


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2097.84547907     -0.00413670     -907.90      0.00000000        0.00      0.0000
     2   1  -2097.84341071     -0.00206835     -453.95      0.00206835      453.95      0.0563
     3   1  -2097.84341070     -0.00206834     -453.95      0.00206836      453.95      0.0563
     4   1  -2097.84341069     -0.00206833     -453.95      0.00206837      453.96      0.0563
     5   1  -2097.83958118      0.00176118      386.54      0.00589789     1294.44      0.1605
     6   1  -2097.83958116      0.00176120      386.54      0.00589790     1294.44      0.1605
     7   1  -2097.83958116      0.00176121      386.54      0.00589791     1294.44      0.1605
     8   1  -2097.83958115      0.00176121      386.54      0.00589791     1294.44      0.1605
     9   1  -2097.83958114      0.00176122      386.54      0.00589792     1294.44      0.1605
    10   1  -2097.81164208      0.02970028     6518.46      0.03383699     7426.36      0.9208
    11   1  -2097.81164207      0.02970029     6518.46      0.03383700     7426.36      0.9208
    12   1  -2097.81164205      0.02970031     6518.46      0.03383701     7426.37      0.9208
    13   1  -2097.81164204      0.02970032     6518.47      0.03383703     7426.37      0.9208
    14   1  -2097.81164203      0.02970034     6518.47      0.03383704     7426.37      0.9208

 E0 =  -2097.84134236 is the energy of the lowest zeroth-order state
 E1 =  -2097.84547907 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+      -0.57735022  0.00000000  0.00000000  0.00000000  0.56772921  0.00000001 -0.58053460 -0.00000001
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+      -0.00000000 -0.00000000 -0.00000001 -0.70710470  0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.70710858  0.00000000 -0.00000000  0.00000000 -0.70320677 -0.00000001  0.00000000
                                0.00000000  0.00030723  0.00000000  0.00000000 -0.00000000  0.00065257  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000001  0.70710886  0.00000000 -0.00000000 -0.00000000  0.00000001

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.57734841 -0.00000000  0.00000000  0.00000000  0.21889571 -0.00000001  0.78193572  0.00000001

  6  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00049943 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000004
                                0.00000000 -0.00000000  0.70711057 -0.00000001 -0.00000000 -0.00000000  0.00000001 -0.70320494

  7  1     1    1  |1 1>-      -0.00000000 -0.00030723 -0.00000000 -0.00000000 -0.00000000  0.00065257  0.00000000 -0.00000000
                                0.00000000  0.70710485  0.00000000 -0.00000000 -0.00000000  0.70321053  0.00000001 -0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00049942 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000004
                                0.00000000 -0.00000000  0.70710264 -0.00000001  0.00000000  0.00000000 -0.00000001  0.70321291

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.57735219 -0.00000000 -0.00000000  0.00000000  0.78662151 -0.00000000  0.20139806  0.00000000

 10  1     1    1  |0 0>       -0.00000004  0.00000000 -0.00000000 -0.00000000  0.09158796 -0.00000000  0.05105398  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000061  0.00000000  0.00000000  0.00000000 -0.00000000  0.10485426
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001

 12  1     3    1  |0 0>       -0.00000000  0.00000035  0.00000000  0.00000000  0.00000000 -0.10485385 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00009730  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000045 -0.00000000 -0.00000000 -0.00000000 -0.05105346 -0.00000000  0.09158828  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     5    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000021  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000000 -0.03404016  0.07855646 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |1 1>+       0.70320783  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.07414316
                                0.00211552 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00004426

  3  1     3    1  |1 1>+      -0.00000000 -0.07414233 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00030351  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     1    1  |1 0>       -0.00211550  0.00000000 -0.00000000  0.00000000  0.00000000  0.00004426
                                0.70320366  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.07414302

  5  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000000  0.00000000 -0.05101232 -0.06875866  0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001 -0.00000000  0.07414317  0.00000000 -0.00000000 -0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00030351  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.07414223  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00000000 -0.07414315 -0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.08505208  0.00979875  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.98431104  0.14190459 -0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000  0.99448760  0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000000

 12  1     3    1  |0 0>       -0.00000000  0.99447930  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00407099 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.14190466  0.98431103 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>        0.10485370 -0.00000000 -0.00000000  0.00000000  0.00000001  0.99448743
                                0.00031544  0.00000000 -0.00000000  0.00000000  0.00000000  0.00059371



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%   32.23%    0.00%   33.70%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   49.45%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>         33.33%    0.00%    0.00%    0.00%    4.79%    0.00%   61.14%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.45%
  7  1     1    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   49.45%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%    0.00%   49.45%
  9  1     3    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   61.88%    0.00%    4.06%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.84%    0.00%    0.26%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.10%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.10%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.26%    0.00%    0.84%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.12%    0.62%    0.00%
  2  1     2    1  |1 1>+        49.45%    0.00%    0.00%    0.00%    0.00%    0.55%
  3  1     3    1  |1 1>+         0.00%    0.55%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         49.45%    0.00%    0.00%    0.00%    0.00%    0.55%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.26%    0.47%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.55%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.55%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.55%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.72%    0.01%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%   96.89%    2.01%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%   98.90%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%   98.90%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    2.01%   96.89%    0.00%
 14  1     5    1  |0 0>          1.10%    0.00%    0.00%    0.00%    0.00%   98.90%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      158.78       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       68.42       700     1000      520     2100     2140     5203     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        83.38     30.84      5.36     30.35     14.49      1.17      0.11      0.80
 REAL TIME  *        94.59 SEC
 DISK USED  *       107.66 MB (local),        1.70 GB (total)
 SF USED    *       485.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=  -2097.811642026296

              CI              CI           MULTI         RHF-SCF
  -2097.76504314  -2097.79747302  -2097.03195564  -2097.09574691
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
