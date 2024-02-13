
 Working directory              : /scratch/irikura/molpro.QFT1T6gfDY/
 Global scratch directory       : /scratch/irikura/molpro.QFT1T6gfDY/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /scratch/irikura/molpro.QFT1T6gfDY/

 id        : nistki

 Nodes     nprocs
 n1328.becn    4
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Co atom
                                                                                 ! Orbitals optimized mostly for ground 4F term
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Co}
 
 basis=cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf,so-sci;wf,nelec=27,sym=1, spin=3}
 
                                                                                 ! 4F term only
 {multi
     closed,2,3
     wf,nelec=27,sym=1,spin=3; state,7;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, 4F energies and LL values
 
                                                                                 ! Add other terms but with low weights
 {multi
     closed,2,3
     wf,nelec=27,sym=1,spin=3; state,17;
       weight,99,99,99,99,99,99,99, 1,1,1, 1,1,1,1,1,1,1
     wf,nelec=27,sym=1,spin=1; state,7;
       weight,1,1,1,1,1,1,1
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, CASSCF energies and LL values
 
                                                                                 ! MRCI and SO-CI
                                                                                 ! 4F + 4F + 4P + 2F
 {ci;wf,sym=1,spin=3; state,17;save,5103.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1; state,7;save,5101.2}
 hlsdiag(18) = energd4
 
 table, hlsdiag
 
 lsint
 {ci;hlsmat,ls,5103.2,5101.2;print,vls=0,hls=0}
 
 Commands initialized (846), CPU time= 0.00 sec, 717 directives.
 Default parameters read. Elapsed time= 0.16 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Co atom                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 09-Feb-24          TIME: 16:20:10  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:   6000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry CO     S cc-pwCVTZ-DK         selected for orbital group  1
 Library entry CO     P cc-pwCVTZ-DK         selected for orbital group  1
 Library entry CO     D cc-pwCVTZ-DK         selected for orbital group  1
 Library entry CO     F cc-pwCVTZ-DK         selected for orbital group  1
 Library entry CO     G cc-pwCVTZ-DK         selected for orbital group  1


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

   1  CO     27.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   27
 NUMBER OF PRIMITIVE AOS:         196
 NUMBER OF SYMMETRY AOS:          165
 NUMBER OF CONTRACTIONS:          102   (   57Ag  +   45Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        6   (    6Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     15.466 MB (compressed) written to integral file ( 15.0%)

     Node minimum: 2.884 MB, node maximum: 6.029 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1755030.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1755030      RECORD LENGTH: 524288

 Memory used in sort:       2.31 MW

 SORT1 READ    12883698. AND WROTE      339780. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC
 SORT2 READ     1353984. AND WROTE     7035726. INTEGRALS IN     92 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.04 SEC

 Node minimum:     1755030.  Node maximum:     1760662. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 7
                                        8 9101112131415 7 8   9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910

 Eigenvalues of metric

         1 0.366E-03 0.267E-02 0.154E-01 0.154E-01 0.154E-01 0.154E-01 0.154E-01 0.248E-01
         2 0.242E-03 0.242E-03 0.242E-03 0.177E-02 0.177E-02 0.177E-02 0.125E+00 0.125E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.09       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.00      0.85
 REAL TIME  *         1.84 SEC
 DISK USED  *        29.44 MB (local),      141.36 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    9   6

 Initial alpha occupancy:   9   6
 Initial beta  occupancy:   6   6
 
 SO-SCI SOLVER WITH NELEC=27 SYM=1 MS2=3 THRE=1.0D-08 THRG=3.2D-06
 
 Authors: D.A. Kreplin, H.-J. Werner (2022)
 
 Number of closed-shell orbitals:                12   (    6    6)
 Number of singly occupied active orbitals:       3   (    3    0)
 Number of virtual orbitals:                     87   (   48   39)
 
 ITER.  MIC  NCI          ENERGY    ENERGY CHANGE          GRAD      ORB GRAD        CI RES  NQN        STEP      TIME
    1    1    0   -1391.67817788   -1391.67817788    1.15985490    1.15985490    0.00000000    0    0.32E+00      0.06
    2    1    0   -1391.67720981       0.00096807    1.29906376    1.29906376    0.00000000    0    0.25E+00      0.11
    3    1    0   -1391.72408670      -0.04687689    1.15055801    1.15055801    0.00000000    0    0.22E+00      0.14
    4    1    0   -1391.72726816      -0.00318145    1.06376263    1.06376263    0.00000000    0    0.23E+00      0.18
    5    1    0   -1391.72396131       0.00330685    1.12013629    1.12013629    0.00000000    0    0.21E+00      0.22
    6    2    0   -1391.74343669      -0.01947538    0.99765378    0.99765378    0.00000000    1    0.10E+00      0.26
    7    2    0   -1391.80691074      -0.06347405    0.20084249    0.20084249    0.00000000    2    0.96E-01      0.30
    8    1    0   -1391.81005144      -0.00314069    0.04686630    0.04686630    0.00000000    3    0.35E-01      0.34
    9    2    0   -1391.81031972      -0.00026828    0.00711305    0.00711305    0.00000000    4    0.12E-01      0.38
   10    2    0   -1391.81033885      -0.00001913    0.00270118    0.00270118    0.00000000    5    0.16E-02      0.42
   11    1    0   -1391.81034087      -0.00000202    0.00107607    0.00107607    0.00000000    6    0.37E-03      0.46
   12    2    0   -1391.81034108      -0.00000020    0.00019001    0.00019001    0.00000000    7    0.23E-03      0.50
   13    2    0   -1391.81034109      -0.00000001    0.00004185    0.00004185    0.00000000    8    0.38E-04      0.54
   14    2    0   -1391.81034109      -0.00000000    0.00001849    0.00001849    0.00000000    9    0.30E-04      0.59
   15    2    0   -1391.81034109      -0.00000000    0.00000817    0.00000817    0.00000000   10    0.22E-04      0.63
   16    2    0   -1391.81034109      -0.00000000    0.00000392    0.00000392    0.00000000   10    0.72E-05      0.67

 CONVERGENCE REACHED!  Final gradient:     0.00000029 ( 0.29E-06)
                       Final energy:   -1391.81034109
 

 Final alpha occupancy:   9   6
 Final beta  occupancy:   6   6

 !RHF STATE 1.1 Energy              -1391.810341090510
  RHF One-electron energy           -1932.565594344084
  RHF Two-electron energy             540.755253253574
  RHF Kinetic energy                 1454.632316830834
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.956812470744

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.56635     1  1  s    0.97812
    2.1     2.00000   -35.23766     1  2  s    0.99666
    3.1     2.00000    -4.40336     1  3  s    0.99088
    4.1     2.00000    -0.40428     1  1  d1+  0.99693
    5.1     2.00000    -0.40428     1  1  d0   0.85884    1  1  d2+  0.49591
    6.1     2.00000    -0.40428     1  1  d2-  0.99199
    7.1     1.00000    -0.48242     1  1  d1-  0.99802
    8.1     1.00000    -0.48242     1  1  d0  -0.49908    1  1  d2+  0.86446
    9.1     1.00000    -0.23846     1  4  s    0.96027
    1.2     2.00000   -30.01080     1  1  py   0.99687
    2.2     2.00000   -30.01080     1  1  pz   0.97740
    3.2     2.00000   -30.01080     1  1  px   0.97467
    4.2     2.00000    -2.82443     1  2  pz   1.00138
    5.2     2.00000    -2.82443     1  2  px   1.00128
    6.2     2.00000    -2.82443     1  2  py   1.00124


 HOMO      9.1    -0.238458 =      -6.4888eV
 LUMO      7.2     0.046874 =       1.2755eV
 LUMO-HOMO         0.285331 =       7.7643eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      23       29.54       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380   
                                         AOSYM     SMH     JKOP   

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.61      0.61      0.85
 REAL TIME  *         2.58 SEC
 DISK USED  *        30.16 MB (local),      144.24 MB (total)
 SF USED    *         1.97 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Quartet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.1)
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.229D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.154D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.314D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.424D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.135D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.318D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.371D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.779D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 2 3 6 5 1 1   6 5 4 2 3 1 6 5 4 2   3 1 6 5 4 2 3121411  13 715 910 8 1 6 5 4
                                        2 312111314 715 910   8 6 5 4 2 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.843D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.197D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.227D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.224D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.305D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.360D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 1 2 3 1 2 3   1 2 3 2 1 5 710 6 8   9 4 2 3 1 5 710 6 8   9 4 3 1 2 5 710 6 8
                                        9 4 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  689  ( 23 closed/active, 213 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    1081
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0  -1391.80634565   -1391.80758013   -0.00123447    0.06020350 0.00001360 0.00000000  0.33E-01      0.18
   2    4    4    0  -1391.80758443   -1391.80758452   -0.00000009    0.00057963 0.00000050 0.00000000  0.45E-03      0.37
   3   20   20    0  -1391.80758452   -1391.80758452    0.00000000    0.00000051 0.00000036 0.00000000  0.40E-06      0.71

 CONVERGENCE REACHED!  Final gradient:    0.00000026 ( 0.26E-06)
                       Final energy:  -1391.80758452
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -1391.807584528244
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949297
 One electron energy                         -1932.57186539
 Two electron energy                           540.76428087
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -1391.807584525586
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949350
 One electron energy                         -1932.57186637
 Two electron energy                           540.76428184
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -1391.807584522373
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949369
 One electron energy                         -1932.57186671
 Two electron energy                           540.76428219
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -1391.807584518918
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949374
 One electron energy                         -1932.57186681
 Two electron energy                           540.76428229
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -1391.807584518101
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949397
 One electron energy                         -1932.57186723
 Two electron energy                           540.76428271
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -1391.807584515522
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949480
 One electron energy                         -1932.57186876
 Two electron energy                           540.76428425
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -1391.807584513815
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949524
 One electron energy                         -1932.57186956
 Two electron energy                           540.76428504
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.114075231735
 !MCSCF expec                      <2.1|LXLX|2.1>     2.189153822676
 !MCSCF expec                      <3.1|LXLX|3.1>     1.772069502529
 !MCSCF expec                      <4.1|LXLX|4.1>     8.227949003791
 !MCSCF expec                      <5.1|LXLX|5.1>     7.810854739145
 !MCSCF expec                      <6.1|LXLX|6.1>     3.885925266561
 !MCSCF expec                      <7.1|LXLX|7.1>     4.000000000168
 
 !MCSCF expec                      <1.1|LYLY|1.1>     4.653648963797
 !MCSCF expec                      <2.1|LYLY|2.1>     0.973590647198
 !MCSCF expec                      <3.1|LYLY|3.1>     6.680795223249
 !MCSCF expec                      <4.1|LYLY|4.1>     3.319176272722
 !MCSCF expec                      <5.1|LYLY|5.1>     3.026404295424
 !MCSCF expec                      <6.1|LYLY|6.1>     5.346348049827
 !MCSCF expec                      <7.1|LYLY|7.1>     4.000000040291
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     7.232275804468
 !MCSCF expec                      <2.1|LZLZ|2.1>     8.837255530127
 !MCSCF expec                      <3.1|LZLZ|3.1>     3.547135274223
 !MCSCF expec                      <4.1|LZLZ|4.1>     0.452874723488
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.162740965431
 !MCSCF expec                      <6.1|LZLZ|6.1>     2.767726683613
 !MCSCF expec                      <7.1|LZLZ|7.1>     3.999999959541
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000001
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000001
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000001
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000001
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000001
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 5 6 2 3 1 1   3 4 5 6 2 1 4 3 6 5   2 1 6 4 5 3 2111013   7 8141512 9 1 6 3 5
                                        2 411 71013 8121514   9 6 2 3 5 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 1 2 2 1 3 2   1 3 2 1 310 5 8 9 7   6 4 2 1 3 810 5 7 9   6 4 2 3 1 5 6 7 9 8
                                       10 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.56626     1  1  s    0.97812
    2.1     2.00000   -35.23764     1  2  s    0.99666
    3.1     2.00000    -4.40321     1  3  s    0.99089
    4.1     1.60000    -0.24529     1  1  d1+  0.99764
    5.1     1.60000    -0.24529     1  1  d2+  0.99764
    6.1     1.60000    -0.24529     1  1  d1-  0.99764
    7.1     1.60000    -0.24529     1  1  d0   0.99764
    8.1     1.60000    -0.24529     1  1  d2-  0.99764
    9.1     1.00000    -0.09695     1  4  s    0.96202
    1.2     2.00000   -30.01076     1  1  py   1.00003
    2.2     2.00000   -30.01076     1  1  pz   1.00003
    3.2     2.00000   -30.01076     1  1  px   1.00003
    4.2     2.00000    -2.82396     1  2  pz   1.00146
    5.2     2.00000    -2.82396     1  2  px   1.00146
    6.2     2.00000    -2.82396     1  2  py   1.00146
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 22a2a2a 222      0.00000759     -0.00000688      0.00000230     -0.00001236      0.00002991     -0.00020328      0.99999998
 2222aaa 222      0.00000132     -0.00008342      0.94169199     -0.33647614     -0.00002343      0.00000006     -0.00000632
 2a222aa 222      0.88158099     -0.00001525      0.00000329      0.00001271      0.00001750      0.15104653      0.00002402
 2a2a22a 222     -0.00001112      0.00000056      0.30095338      0.84227486      0.00020125     -0.00001254      0.00000971
 22aa22a 222     -0.36664533      0.00001122      0.00000273      0.00000633      0.00000729      0.81582547      0.00016862
 222a2aa 222      0.00000669      0.77799862      0.00003728     -0.00011927      0.44126879     -0.00001163     -0.00000785
 2aa222a 222     -0.00002228     -0.62175631     -0.00008320     -0.00012349      0.64297677     -0.00000720     -0.00002351
 2a22a2a 222     -0.00000900      0.09020656     -0.00002651     -0.00014016      0.62598935     -0.00001087     -0.00001810
 222aa2a 222      0.29729809     -0.00000232      0.00000347      0.00001099      0.00001431      0.55822371      0.00011122
 22a22aa 222      0.00000556     -0.00000028     -0.15047676     -0.42113753     -0.00010063      0.00000627     -0.00000485
 
 Energy:      -1391.80758453  -1391.80758453  -1391.80758452  -1391.80758452  -1391.80758452  -1391.80758452  -1391.80758451
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.48       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         2.68      1.07      0.61      0.85
 REAL TIME  *         4.12 SEC
 DISK USED  *        37.40 MB (local),      173.21 MB (total)
 SF USED    *        22.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 4F energies and LL values

          ENERGY     LL
    -1391.807585   12.0
    -1391.807585   12.0
    -1391.807585   12.0
    -1391.807585   12.0
    -1391.807585   12.0
    -1391.807585   12.0
    -1391.807585   12.0
                                                  

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Quartet   Space symmetry=1
 Number of states:            17
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 State symmetry 2

 Number of active electrons:  17    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 5 6 2 3 1 1   3 4 5 6 2 1 4 3 6 5   2 1 6 4 5 3 2111013   7 8141512 9 1 6 3 5
                                        2 411 71013 8121514   9 6 2 3 5 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 1 2 2 1 3 2   1 3 2 1 310 5 8 9 7   6 4 2 1 3 810 5 7 9   6 4 2 3 1 5 6 7 9 8
                                       10 4 2 3 1

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.13944   0.13944   0.13944   0.13944   0.13944   0.13944   0.13944   0.00141
                                          0.00141   0.00141   0.00141   0.00141   0.00141   0.00141   0.00141   0.00141
                                          0.00141
 Weight factors for state symmetry  2:    0.00141   0.00141   0.00141   0.00141   0.00141   0.00141   0.00141
 
 Number of orbital rotations:  689  ( 23 closed/active, 213 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3258
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   19   30    0  -1391.80649187   -1391.80652019   -0.00002832    0.00935980 0.00014136 0.00000000  0.56E-01      0.81
   2    8   14    0  -1391.80643025   -1391.80650702   -0.00007677    0.03414231 0.00000027 0.00000000  0.57E-02      1.34
   3   24   48    0  -1391.80650711   -1391.80650711   -0.00000000    0.00003946 0.00000025 0.00000000  0.15E-04      2.53
   4   24   48    0  -1391.80650711   -1391.80650711    0.00000000    0.00000017 0.00000022 0.00000000  0.10E-06      3.71

 CONVERGENCE REACHED!  Final gradient:    0.00000019 ( 0.19E-06)
                       Final energy:  -1391.80650711
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy             -1391.807571831659
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69495420
 One electron energy                         -1932.68601377
 Two electron energy                           540.87844194
 Virial ratio                                    1.95676937
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy             -1391.807571830951
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69495434
 One electron energy                         -1932.68601405
 Two electron energy                           540.87844222
 Virial ratio                                    1.95676937
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy             -1391.807571829496
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69495438
 One electron energy                         -1932.68601412
 Two electron energy                           540.87844229
 Virial ratio                                    1.95676937
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy             -1391.807571829348
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69495452
 One electron energy                         -1932.68601436
 Two electron energy                           540.87844253
 Virial ratio                                    1.95676937
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy             -1391.807571828696
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69495459
 One electron energy                         -1932.68601449
 Two electron energy                           540.87844266
 Virial ratio                                    1.95676937
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy             -1391.807571828023
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69495466
 One electron energy                         -1932.68601462
 Two electron energy                           540.87844280
 Virial ratio                                    1.95676937
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy             -1391.807571826852
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69495495
 One electron energy                         -1932.68601515
 Two electron energy                           540.87844332
 Virial ratio                                    1.95676937
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy             -1391.751522200614
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.03073683
 One electron energy                         -1916.30099590
 Two electron energy                           524.54947370
 Virial ratio                                    1.96113396
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy             -1391.751522195171
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.03073667
 One electron energy                         -1916.30099561
 Two electron energy                           524.54947342
 Virial ratio                                    1.96113396
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy            -1391.751522194186
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.03073663
 One electron energy                         -1916.30099553
 Two electron energy                           524.54947334
 Virial ratio                                    1.96113396
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy            -1391.751522189246
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.03073649
 One electron energy                         -1916.30099528
 Two electron energy                           524.54947309
 Virial ratio                                    1.96113396
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy            -1391.751522186288
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.03073640
 One electron energy                         -1916.30099513
 Two electron energy                           524.54947294
 Virial ratio                                    1.96113396
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy            -1391.751522183651
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.03073632
 One electron energy                         -1916.30099498
 Two electron energy                           524.54947280
 Virial ratio                                    1.96113396
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy            -1391.751522174176
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.03073604
 One electron energy                         -1916.30099448
 Two electron energy                           524.54947230
 Virial ratio                                    1.96113396
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy            -1391.738846700157
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.68659101
 One electron energy                         -1932.66710483
 Two electron energy                           540.92825813
 Virial ratio                                    1.95672762
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy            -1391.738846697617
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.68659118
 One electron energy                         -1932.66710513
 Two electron energy                           540.92825844
 Virial ratio                                    1.95672762
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy            -1391.738846696177
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.68659129
 One electron energy                         -1932.66710534
 Two electron energy                           540.92825865
 Virial ratio                                    1.95672762
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy             -1391.785081726640
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69097790
 One electron energy                         -1932.67256774
 Two electron energy                           540.88748602
 Virial ratio                                    1.95675652
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy             -1391.785081725327
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69097806
 One electron energy                         -1932.67256802
 Two electron energy                           540.88748630
 Virial ratio                                    1.95675652
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy             -1391.785081723729
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69097810
 One electron energy                         -1932.67256810
 Two electron energy                           540.88748637
 Virial ratio                                    1.95675652
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy             -1391.785081723058
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69097823
 One electron energy                         -1932.67256835
 Two electron energy                           540.88748662
 Virial ratio                                    1.95675652
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy             -1391.785081722096
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69097831
 One electron energy                         -1932.67256849
 Two electron energy                           540.88748677
 Virial ratio                                    1.95675652
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy             -1391.785081721127
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69097839
 One electron energy                         -1932.67256863
 Two electron energy                           540.88748691
 Virial ratio                                    1.95675652
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy             -1391.785081718834
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.69097867
 One electron energy                         -1932.67256915
 Two electron energy                           540.88748743
 Virial ratio                                    1.95675652
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     1.417265950301
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     2.235761671132
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     5.233676080008
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     3.999999795438
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     1.764201057110
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     8.582786304402
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     4.766207621537
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     2.458953063897
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     3.117428574009
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     6.040475825176
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     3.999999985209
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     0.882568212913
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     7.541059492914
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     3.959537373523
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     0.999999995121
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     0.999999982809
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     0.000000024076
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     1.698275894190
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     2.510283477605
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     5.596720046787
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     3.999999798519
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     1.489666093473
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     8.301687061643
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     4.403315185202
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     3.308984226012
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     1.036139395389
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     6.728717727648
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.000000350354
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     8.963870334304
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     0.691060600145
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     3.271387272518
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     3.813177416584
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     1.229187469232
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     5.959414641700
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     3.999999992532
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     8.770809933919
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     0.186826013716
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     4.040572071908
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     0.999999995909
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     0.000000021834
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     0.999999980804
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     3.505870797313
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     1.000056570802
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     6.392692293132
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     4.000000100361
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     8.999942674448
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     0.494107716486
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     3.607274190351
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     7.273749823687
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     8.728098933479
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     0.037606192344
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     3.999999854208
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     1.271928608586
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     2.726153095453
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     3.962405105945
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     5.727869519519
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     7.653383956758
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.000109533125
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     4.000000022259
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     2.346621853168
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     4.272114493370
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     3.999890554568
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     0.000000008970
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     0.999999995357
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     0.999999995120
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     6.795853308497
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     8.489659951593
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     0.010587660081
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     4.000000101120
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     1.510391232080
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     3.204205221871
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     3.989410624446
 
 !MCSCF expec      <1.1 Quartet|L**2|1.1 Quartet>    12.000000000000
 !MCSCF expec      <2.1 Quartet|L**2|2.1 Quartet>    12.000000000000
 !MCSCF expec      <3.1 Quartet|L**2|3.1 Quartet>    12.000000000000
 !MCSCF expec      <4.1 Quartet|L**2|4.1 Quartet>    12.000000000000
 !MCSCF expec      <5.1 Quartet|L**2|5.1 Quartet>    12.000000000000
 !MCSCF expec      <6.1 Quartet|L**2|6.1 Quartet>    12.000000000000
 !MCSCF expec      <7.1 Quartet|L**2|7.1 Quartet>    12.000000000000
 !MCSCF expec      <8.1 Quartet|L**2|8.1 Quartet>    12.000000000000
 !MCSCF expec      <9.1 Quartet|L**2|9.1 Quartet>    12.000000000000
 !MCSCF expec    <10.1 Quartet|L**2|10.1 Quartet>    12.000000000000
 !MCSCF expec    <11.1 Quartet|L**2|11.1 Quartet>    12.000000000000
 !MCSCF expec    <12.1 Quartet|L**2|12.1 Quartet>    12.000000000000
 !MCSCF expec    <13.1 Quartet|L**2|13.1 Quartet>    12.000000000000
 !MCSCF expec    <14.1 Quartet|L**2|14.1 Quartet>    12.000000000000
 !MCSCF expec    <15.1 Quartet|L**2|15.1 Quartet>     2.000000000000
 !MCSCF expec    <16.1 Quartet|L**2|16.1 Quartet>     2.000000000000
 !MCSCF expec    <17.1 Quartet|L**2|17.1 Quartet>     2.000000000000
 !MCSCF expec      <1.1 Doublet|L**2|1.1 Doublet>    12.000000000000
 !MCSCF expec      <2.1 Doublet|L**2|2.1 Doublet>    12.000000000000
 !MCSCF expec      <3.1 Doublet|L**2|3.1 Doublet>    12.000000000000
 !MCSCF expec      <4.1 Doublet|L**2|4.1 Doublet>    12.000000000000
 !MCSCF expec      <5.1 Doublet|L**2|5.1 Doublet>    12.000000000000
 !MCSCF expec      <6.1 Doublet|L**2|6.1 Doublet>    12.000000000000
 !MCSCF expec      <7.1 Doublet|L**2|7.1 Doublet>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 5 3 2 4 1 1   6 5 3 2 4 1 6 5 3 2   4 1 6 5 4 2 3 9 7 8  121415101311 1 4 2 5
                                        3 6 9 7 81215141013  11 4 2 3 5 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 1   3 2 1 3 210 5 8 6 4   9 7 1 3 2 410 6 8 5   7 9 1 3 2 4 6 810 7
                                        9 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.56806     1  1  s    0.97812
    2.1     2.00000   -35.23980     1  2  s    0.99666
    3.1     2.00000    -4.40530     1  3  s    0.99083
    4.1     1.59804    -0.24625     1  1  d1-  0.99774
    5.1     1.59803    -0.24625     1  1  d2+  0.99774
    6.1     1.59803    -0.24625     1  1  d2-  0.99774
    7.1     1.59803    -0.24625     1  1  d0   0.99774
    8.1     1.59803    -0.24625     1  1  d1+  0.99774
    9.1     1.00987    -0.09839     1  4  s    0.96487
    1.2     2.00000   -29.93964     1  1  px   0.99907
    2.2     2.00000   -29.93964     1  1  pz   0.99907
    3.2     2.00000   -29.93964     1  1  py   0.99907
    4.2     1.99999    -2.89900     1  2  py   1.00052
    5.2     1.99999    -2.89900     1  2  pz   1.00052
    6.2     1.99999    -2.89900     1  2  px   1.00052
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 22a2a2a 222     -0.00002164      0.00020619     -0.00016554      0.99999993     -0.00026092     -0.00004942      0.00005365
 2a2a2a2 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2aa22a2 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 222aa2a 222      0.00001406      0.00000225      0.09696139     -0.00003731      0.00010046      0.00028096      0.99528810
 22aaa22 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 22aa22a 222     -0.00000947      0.00000119      0.44510641      0.00007601      0.00002771     -0.00003917     -0.04336244
 2a2aa22 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2a222aa 222     -0.00001893      0.00000238      0.89021275      0.00015203      0.00005541     -0.00007834     -0.08672489
 22a22aa 222      0.88061589     -0.00008929      0.00000797      0.00001134      0.00000663     -0.15657478      0.00003099
 22a2aa2 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 222aaa2 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2a2a22a 222      0.37175683     -0.00005862      0.00005607      0.00004827     -0.00003785      0.81350894     -0.00024036
 2aa222a 222      0.00008436      0.79596309     -0.00003139     -0.00005767      0.40797396      0.00003779     -0.00003994
 2aa2a22 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2a22a2a 222     -0.00001274     -0.11659778      0.00004474     -0.00013815     -0.62161475     -0.00003148      0.00005865
 2222aaa 222      0.29378988     -0.00001771     -0.00002777     -0.00002133      0.00002568     -0.56007808      0.00015666
 222a2aa 222     -0.00006229     -0.59400981     -0.00004609      0.00029695      0.66869445      0.00001674     -0.00006165
 22aa2a2 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2aaa222 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2a22aa2 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 
 Energy:      -1391.80757183  -1391.80757183  -1391.80757183  -1391.80757183  -1391.80757183  -1391.80757183  -1391.80757183

 State:                8               9              10              11              12              13              14
 22a2a2a 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2a2a2a2 222     -0.00000078      0.00005643     -0.00000884      0.99956167      0.00003858      0.00000239      0.00000205
 2aa22a2 222     -0.00000598     -0.00000365      0.00523026     -0.00000201     -0.00000861      0.00001543      0.99954798
 222aa2a 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 22aaa22 222     -0.00003361      0.00001287      0.89402290      0.00000792     -0.00000620      0.00000863     -0.00467808
 22aa22a 222     -0.00000000      0.00000000      0.00000003      0.00000000      0.00000000     -0.00000000     -0.00000002
 2a2aa22 222      0.89349243     -0.00001132      0.00003392      0.00000077     -0.00000362     -0.03114787      0.00000565
 2a222aa 222      0.00000000     -0.00000000     -0.00000002     -0.00000000      0.00000000     -0.00000000      0.00000001
 22a22aa 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22a2aa2 222     -0.19321426      0.00000011     -0.00001576     -0.00000224      0.00000444      0.87290724     -0.00001455
 222aaa2 222      0.00001028      0.86919055     -0.00001395     -0.00004099     -0.20930043      0.00000323      0.00000144
 2a2a22a 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2aa222a 222      0.00000000      0.00000001      0.00000000     -0.00000000      0.00000001      0.00000000     -0.00000000
 2aa2a22 222      0.00000845      0.41995184     -0.00000052     -0.00005417      0.78926503     -0.00000219      0.00000833
 2a22a2a 222      0.00000000      0.00000002      0.00000000     -0.00000000      0.00000002      0.00000000     -0.00000000
 2222aaa 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000001     -0.00000000
 222a2aa 222      0.00000000      0.00000002      0.00000000     -0.00000000      0.00000001      0.00000000      0.00000000
 22aa2a2 222     -0.00000106     -0.25936800      0.00000775     -0.00000761      0.57652195     -0.00000313      0.00000398
 2aaa222 222      0.40430566     -0.00000647      0.00001048     -0.00000085      0.00000047      0.48599002     -0.00000514
 2a22aa2 222      0.00001680     -0.00000643     -0.44701144     -0.00000396      0.00000310     -0.00000431      0.00233904
 
 Energy:      -1391.75152220  -1391.75152220  -1391.75152219  -1391.75152219  -1391.75152219  -1391.75152218  -1391.75152217

 State:               15              16              17
 22a2a2a 222     -0.00000000      0.00000000     -0.00000000
 2a2a2a2 222     -0.00000000     -0.00000000      0.00000000
 2aa22a2 222      0.00000002     -0.00000000      0.00000000
 222aa2a 222     -0.00000001     -0.00000000      0.00000000
 22aaa22 222      0.00015560     -0.00000001      0.00000001
 22aa22a 222      0.89375303     -0.00005715      0.00006244
 2a2aa22 222     -0.00000001     -0.00015563      0.00000002
 2a222aa 222     -0.44687655      0.00002858     -0.00003122
 22a22aa 222     -0.00002858     -0.44687649      0.00005859
 22a2aa2 222     -0.00000001     -0.00015564      0.00000002
 222aaa2 222     -0.00000001      0.00000002      0.00015561
 2a2a22a 222      0.00002858      0.44687652     -0.00005859
 2aa222a 222     -0.00003121      0.00005859      0.44687650
 2aa2a22 222      0.00000001     -0.00000002     -0.00015566
 2a22a2a 222     -0.00005406      0.00010148      0.77401286
 2222aaa 222      0.00004950      0.77401285     -0.00010148
 222a2aa 222     -0.00003121      0.00005859      0.44687650
 22aa2a2 222     -0.00000002      0.00000004      0.00026955
 2aaa222 222      0.00000002      0.00026956     -0.00000004
 2a22aa2 222      0.00031128     -0.00000002      0.00000002
 
 Energy:      -1391.73884670  -1391.73884670  -1391.73884670
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================
 
 22a2a2b 222      0.00000678      0.00012195      0.00008350      0.81612594     -0.00014545     -0.00001199      0.00000247
 222aa2b 222      0.00001991     -0.00000167      0.04198798     -0.00000676     -0.00001695      0.00008857      0.81504515
 2a222ab 222     -0.00006617     -0.00002042      0.72899853     -0.00007447     -0.00001410      0.00001119     -0.03755520
 22a22ab 222      0.72583238      0.00007088      0.00006642     -0.00000719     -0.00001370     -0.07756706     -0.00001273
 2a2a22b 222      0.25656205      0.00002089      0.00000863      0.00000789     -0.00004960      0.68339241     -0.00008097
 2aa222b 222     -0.00005779      0.67128020      0.00002465     -0.00004921      0.28676155      0.00002199      0.00000607
 222a2ab 222      0.00005803     -0.44547569     -0.00000070      0.00016962      0.57827387      0.00003380      0.00001115
 2a22a2b 222     -0.00000014     -0.13036828     -0.00001383     -0.00006952     -0.49942839     -0.00003221     -0.00000994
 2222aab 222      0.27093331      0.00002886      0.00003336     -0.00000871      0.00002073     -0.43934014      0.00003940
 22b2a2a 222     -0.00000339     -0.00006098     -0.00004175     -0.40806299      0.00007272      0.00000599     -0.00000123
 22a2b2a 222     -0.00000339     -0.00006098     -0.00004175     -0.40806295      0.00007272      0.00000599     -0.00000123
 222ba2a 222     -0.00000996      0.00000084     -0.02099399      0.00000338      0.00000848     -0.00004428     -0.40752258
 222ab2a 222     -0.00000996      0.00000084     -0.02099399      0.00000338      0.00000848     -0.00004428     -0.40752257
 22aa22b 222     -0.00003308     -0.00001021      0.36449929     -0.00003724     -0.00000705      0.00000559     -0.01877759
 2a222ba 222      0.00003308      0.00001021     -0.36449927      0.00003724      0.00000705     -0.00000559      0.01877760
 2b222aa 222      0.00003308      0.00001021     -0.36449926      0.00003724      0.00000705     -0.00000559      0.01877760
 22b22aa 222     -0.36291619     -0.00003544     -0.00003321      0.00000359      0.00000685      0.03878353      0.00000636
 22a22ba 222     -0.36291619     -0.00003544     -0.00003321      0.00000359      0.00000685      0.03878353      0.00000636
 2b2a22a 222     -0.12828103     -0.00001044     -0.00000431     -0.00000395      0.00002480     -0.34169621      0.00004049
 2a2b22a 222     -0.12828102     -0.00001044     -0.00000431     -0.00000395      0.00002480     -0.34169620      0.00004049
 2ab222a 222      0.00002889     -0.33564011     -0.00001232      0.00002460     -0.14338078     -0.00001100     -0.00000303
 2ba222a 222      0.00002889     -0.33564009     -0.00001232      0.00002460     -0.14338078     -0.00001100     -0.00000303
 222a2ba 222     -0.00002902      0.22273785      0.00000035     -0.00008481     -0.28913694     -0.00001690     -0.00000557
 222b2aa 222     -0.00002902      0.22273784      0.00000035     -0.00008481     -0.28913693     -0.00001690     -0.00000557
 2b22a2a 222      0.00000007      0.06518414      0.00000691      0.00003476      0.24971420      0.00001611      0.00000497
 2a22b2a 222      0.00000007      0.06518414      0.00000691      0.00003476      0.24971419      0.00001611      0.00000497
 2222aba 222     -0.13546666     -0.00001443     -0.00001668      0.00000435     -0.00001036      0.21967008     -0.00001970
 2222baa 222     -0.13546665     -0.00001443     -0.00001668      0.00000435     -0.00001036      0.21967006     -0.00001970
 22ba22a 222      0.00001654      0.00000510     -0.18224965      0.00001862      0.00000352     -0.00000280      0.00938880
 22ab22a 222      0.00001654      0.00000510     -0.18224964      0.00001862      0.00000352     -0.00000280      0.00938880
 
 Energy:      -1391.78508173  -1391.78508173  -1391.78508172  -1391.78508172  -1391.78508172  -1391.78508172  -1391.78508172
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.58       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       6        1.31       700     1000      520     2100     2140     2141   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.48      3.80      1.07      0.61      0.85
 REAL TIME  *         8.31 SEC
 DISK USED  *        37.97 MB (local),      175.51 MB (total)
 SF USED    *        22.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CASSCF energies and LL values

          ENERGY     LL
    -1391.807572   12.0
    -1391.807572   12.0
    -1391.807572   12.0
    -1391.807572   12.0
    -1391.807572   12.0
    -1391.807572   12.0
    -1391.807572   12.0
    -1391.751522   12.0
    -1391.751522   12.0
    -1391.751522   12.0
    -1391.751522   12.0
    -1391.751522   12.0
    -1391.751522   12.0
    -1391.751522   12.0
    -1391.738847    2.0
    -1391.738847    2.0
    -1391.738847    2.0
    -1391.785082   12.0
    -1391.785082   12.0
    -1391.785082   12.0
    -1391.785082   12.0
    -1391.785082   12.0
    -1391.785082   12.0
    -1391.785082   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
 Number of reference states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17

 Reference symmetry:                   1   Quartet 
 Number of electrons:                 27
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:       56 conf       56 CSFs
 N elec internal:      120 conf      120 CSFs
 N-1 el internal:      570 conf     1200 CSFs
 N-2 el internal:     1260 conf     7056 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           5 (   2   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      87 (  48  39 )

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.02 sec, npass=  1  Memory used:   0.40 MW


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1391.80757183
     2     -1391.80757183
     3     -1391.80757183
     4     -1391.80757183
     5     -1391.80757183
     6     -1391.80757183
     7     -1391.80757183
     8     -1391.75152220
     9     -1391.75152220
    10     -1391.75152219
    11     -1391.75152219
    12     -1391.75152219
    13     -1391.75152218
    14     -1391.75152217
    15     -1391.73884670
    16     -1391.73884670
    17     -1391.73884670

 Number of blocks in overlap matrix:    62   Smallest eigenvalue:  0.21D-04
 Number of N-2 electron functions:    1575
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       2985228
 Total number of contracted configurations:      3037340
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:    931066 words, CPU-Time:      0.74 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    564595 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1391.80757183     0.00000000    -0.80260799  0.15D-01  0.86D-01     3.50
    1     2     2     1.00000000     0.00000000 -1391.80757183    -0.00000000    -0.80280398  0.15D-01  0.86D-01     3.50
    1     3     3     1.00000000     0.00000000 -1391.80757183    -0.00000000    -0.80139777  0.15D-01  0.86D-01     3.50
    1     4     4     1.00000000     0.00000000 -1391.80757183    -0.00000000    -0.80474661  0.15D-01  0.87D-01     3.50
    1     5     5     1.00000000     0.00000000 -1391.80757183    -0.00000000    -0.80210811  0.15D-01  0.86D-01     3.50
    1     6     6     1.00000000     0.00000000 -1391.80757183     0.00000000    -0.80246796  0.15D-01  0.86D-01     3.50
    1     7     7     1.00000000     0.00000000 -1391.80757183    -0.00000000    -0.80347707  0.15D-01  0.87D-01     3.50
    1     8     8     1.00000000     0.00000000 -1391.75152220     0.00000000    -0.93284662  0.16D+00  0.64D-01     3.50
    1     9     9     1.00000000     0.00000000 -1391.75152220     0.00000000    -0.93374406  0.16D+00  0.64D-01     3.50
    1    10    10     1.00000000     0.00000000 -1391.75152219     0.00000000    -0.93111883  0.16D+00  0.63D-01     3.50
    1    11    11     1.00000000     0.00000000 -1391.75152219    -0.00000000    -0.93606152  0.17D+00  0.64D-01     3.50
    1    12    12     1.00000000     0.00000000 -1391.75152219     0.00000000    -0.93092206  0.16D+00  0.63D-01     3.50
    1    13    13     1.00000000     0.00000000 -1391.75152218    -0.00000000    -0.93206354  0.16D+00  0.64D-01     3.50
    1    14    14     1.00000000     0.00000000 -1391.75152217     0.00000000    -0.93649455  0.17D+00  0.64D-01     3.50
    1    15    15     1.00000000     0.00000000 -1391.73884670    -0.00000000    -0.81338656  0.22D-01  0.88D-01     3.50
    1    16    16     1.00000000     0.00000000 -1391.73884670    -0.00000000    -0.81295858  0.22D-01  0.88D-01     3.50
    1    17    17     1.00000000     0.00000000 -1391.73884670     0.00000000    -0.81350709  0.22D-01  0.88D-01     3.50
    2     1     1     1.06670572    -0.65152739 -1392.45909922    -0.65152739    -0.02695772  0.15D-02  0.33D-02   347.03
    2     2     2     1.06660615    -0.65121162 -1392.45878345    -0.65121162    -0.02700144  0.15D-02  0.33D-02   347.03
    2     3     3     1.06659174    -0.65108639 -1392.45865822    -0.65108639    -0.02698782  0.14D-02  0.33D-02   347.03
    2     4     4     1.06654866    -0.65102429 -1392.45859612    -0.65102429    -0.02697425  0.14D-02  0.33D-02   347.03
    2     5     5     1.06653724    -0.65084170 -1392.45841353    -0.65084170    -0.02701137  0.14D-02  0.33D-02   347.03
    2     6     6     1.06648181    -0.65074611 -1392.45831794    -0.65074611    -0.02700232  0.14D-02  0.33D-02   347.03
    2     7     7     1.06646581    -0.65065863 -1392.45823046    -0.65065863    -0.02699043  0.14D-02  0.33D-02   347.03
    2     8     8     1.10977497    -0.65194028 -1392.40346248    -0.65194028    -0.07971363  0.12D-01  0.63D-02   347.03
    2     9     9     1.11000351    -0.65131047 -1392.40283267    -0.65131047    -0.08010647  0.12D-01  0.63D-02   347.03
    2    10    10     1.10984828    -0.65130452 -1392.40282672    -0.65130452    -0.07990848  0.12D-01  0.63D-02   347.03
    2    11    11     1.11038741    -0.65123293 -1392.40275512    -0.65123293    -0.08070614  0.12D-01  0.64D-02   347.03
    2    12    12     1.11037592    -0.65069315 -1392.40221534    -0.65069315    -0.08084417  0.12D-01  0.64D-02   347.03
    2    13    13     1.11119126    -0.65014622 -1392.40166840    -0.65014622    -0.08206029  0.13D-01  0.64D-02   347.03
    2    14    14     1.11101347    -0.64962166 -1392.40114383    -0.64962166    -0.08218613  0.13D-01  0.64D-02   347.03
    2    15    15     1.07214799    -0.65986317 -1392.39870987    -0.65986317    -0.02731673  0.14D-02  0.33D-02   347.03
    2    16    16     1.07204874    -0.65983053 -1392.39867723    -0.65983053    -0.02728080  0.13D-02  0.33D-02   347.03
    2    17    17     1.07210448    -0.65967307 -1392.39851976    -0.65967307    -0.02735436  0.14D-02  0.33D-02   347.03
    3     1     1     1.06449107    -0.67735873 -1392.48493056    -0.02583134    -0.00210949  0.13D-03  0.28D-03   680.28
    3     2     2     1.06438855    -0.67720775 -1392.48477958    -0.02599613    -0.00217354  0.13D-03  0.28D-03   680.28
    3     3     3     1.06432747    -0.67713510 -1392.48470693    -0.02604871    -0.00218146  0.13D-03  0.28D-03   680.28
    3     4     4     1.06429701    -0.67710745 -1392.48467928    -0.02608316    -0.00219046  0.12D-03  0.28D-03   680.28
    3     5     5     1.06424992    -0.67700144 -1392.48457327    -0.02615974    -0.00223242  0.13D-03  0.29D-03   680.28
    3     6     6     1.06420844    -0.67696045 -1392.48453228    -0.02621434    -0.00224667  0.13D-03  0.29D-03   680.28
    3     7     7     1.06418333    -0.67690839 -1392.48448022    -0.02624976    -0.00226212  0.13D-03  0.29D-03   680.28
    3     8     8     1.08919986    -0.71826098 -1392.46978318    -0.06632070    -0.00351621  0.14D-03  0.45D-03   680.28
    3     9     9     1.08891295    -0.71812898 -1392.46965117    -0.06681851    -0.00351691  0.14D-03  0.45D-03   680.28
    3    10    10     1.08899680    -0.71796013 -1392.46948233    -0.06665561    -0.00353719  0.14D-03  0.45D-03   680.28
    3    11    11     1.08889413    -0.71774829 -1392.46927048    -0.06651537    -0.00353980  0.14D-03  0.44D-03   680.28
    3    12    12     1.08874842    -0.71765411 -1392.46917630    -0.06696096    -0.00355886  0.14D-03  0.44D-03   680.28
    3    13    13     1.08850058    -0.71752382 -1392.46904600    -0.06737760    -0.00357178  0.14D-03  0.44D-03   680.28
    3    14    14     1.08880348    -0.71747299 -1392.46899517    -0.06785134    -0.00355635  0.13D-03  0.44D-03   680.28
    3    15    15     1.06906431    -0.68636462 -1392.42521132    -0.02650145    -0.00209522  0.91D-04  0.28D-03   680.28
    3    16    16     1.06901259    -0.68633883 -1392.42518553    -0.02650830    -0.00209332  0.86D-04  0.28D-03   680.28
    3    17    17     1.06900025    -0.68626109 -1392.42510778    -0.02658802    -0.00212963  0.91D-04  0.29D-03   680.28
    4     1     1     1.06754036    -0.68019382 -1392.48776566    -0.00283510    -0.00055434  0.11D-03  0.50D-04  1025.29
    4     2     2     1.06750058    -0.68015865 -1392.48773048    -0.00295090    -0.00057609  0.11D-03  0.52D-04  1025.29
    4     3     3     1.06750451    -0.68013715 -1392.48770898    -0.00300205    -0.00057807  0.11D-03  0.52D-04  1025.29
    4     4     4     1.06750018    -0.68013706 -1392.48770889    -0.00302961    -0.00057694  0.11D-03  0.52D-04  1025.29
    4     5     5     1.06744325    -0.68009215 -1392.48766398    -0.00309071    -0.00059761  0.11D-03  0.53D-04  1025.29
    4     6     6     1.06744750    -0.68009156 -1392.48766339    -0.00313111    -0.00059981  0.12D-03  0.53D-04  1025.29
    4     7     7     1.06743457    -0.68007484 -1392.48764667    -0.00316645    -0.00060710  0.12D-03  0.54D-04  1025.29
    4     8     8     1.09488804    -0.72369466 -1392.47521686    -0.00543368    -0.00091022  0.51D-04  0.11D-03  1025.29
    4     9     9     1.09475838    -0.72360840 -1392.47513059    -0.00547942    -0.00093426  0.51D-04  0.11D-03  1025.29
    4    10    10     1.09465170    -0.72352199 -1392.47504419    -0.00556186    -0.00096772  0.53D-04  0.11D-03  1025.29
    4    11    11     1.09431079    -0.72328299 -1392.47480518    -0.00553470    -0.00102682  0.56D-04  0.11D-03  1025.29
    4    12    12     1.09427956    -0.72327427 -1392.47479645    -0.00562015    -0.00102078  0.56D-04  0.11D-03  1025.29
    4    13    13     1.09423058    -0.72321581 -1392.47473799    -0.00569199    -0.00104132  0.56D-04  0.11D-03  1025.29
    4    14    14     1.09404056    -0.72311815 -1392.47464033    -0.00564516    -0.00107153  0.60D-04  0.12D-03  1025.29
    4    15    15     1.07230273    -0.68943105 -1392.42827775    -0.00306644    -0.00052362  0.91D-04  0.55D-04  1025.29
    4    16    16     1.07229664    -0.68942466 -1392.42827136    -0.00308583    -0.00051993  0.86D-04  0.55D-04  1025.29
    4    17    17     1.07225562    -0.68939239 -1392.42823908    -0.00313130    -0.00053839  0.92D-04  0.56D-04  1025.29
    5     1     1     1.06935412    -0.68083602 -1392.48840785    -0.00064219    -0.00011547  0.67D-05  0.13D-04  1370.87
    5     2     2     1.06932427    -0.68082618 -1392.48839801    -0.00066753    -0.00012092  0.72D-05  0.13D-04  1370.87
    5     3     3     1.06931633    -0.68081411 -1392.48838594    -0.00067695    -0.00012406  0.77D-05  0.13D-04  1370.87
    5     4     4     1.06931562    -0.68081227 -1392.48838410    -0.00067521    -0.00012388  0.76D-05  0.13D-04  1370.87
    5     5     5     1.06927243    -0.68079405 -1392.48836588    -0.00070190    -0.00013124  0.82D-05  0.14D-04  1370.87
    5     6     6     1.06927057    -0.68079176 -1392.48836359    -0.00070020    -0.00013122  0.80D-05  0.14D-04  1370.87
    5     7     7     1.06925717    -0.68078624 -1392.48835807    -0.00071140    -0.00013481  0.84D-05  0.14D-04  1370.87
    5     8     8     1.09835248    -0.72504927 -1392.47657147    -0.00135461    -0.00022651  0.17D-04  0.23D-04  1370.87
    5     9     9     1.09830747    -0.72501586 -1392.47653806    -0.00140746    -0.00024152  0.18D-04  0.25D-04  1370.87
    5    10    10     1.09820680    -0.72497678 -1392.47649897    -0.00145479    -0.00026695  0.19D-04  0.30D-04  1370.87
    5    11    11     1.09804942    -0.72488211 -1392.47640430    -0.00159912    -0.00030354  0.22D-04  0.32D-04  1370.87
    5    12    12     1.09799884    -0.72487077 -1392.47639296    -0.00159651    -0.00031129  0.22D-04  0.33D-04  1370.87
    5    13    13     1.09804144    -0.72485914 -1392.47638133    -0.00164334    -0.00030873  0.22D-04  0.31D-04  1370.87
    5    14    14     1.09790447    -0.72482453 -1392.47634671    -0.00170638    -0.00032958  0.25D-04  0.33D-04  1370.87
    5    15    15     1.07412868    -0.69005364 -1392.42890034    -0.00062258    -0.00012704  0.13D-04  0.13D-04  1370.87
    5    16    16     1.07412650    -0.69004809 -1392.42889479    -0.00062343    -0.00012740  0.13D-04  0.13D-04  1370.87
    5    17    17     1.07409007    -0.69003391 -1392.42888061    -0.00064152    -0.00013386  0.13D-04  0.14D-04  1370.87
    6     1     1     1.06956094    -0.68098056 -1392.48855240    -0.00014455    -0.00003293  0.15D-05  0.47D-05  1714.93
    6     2     2     1.06953200    -0.68097785 -1392.48854968    -0.00015167    -0.00003427  0.15D-05  0.49D-05  1714.93
    6     3     3     1.06950857    -0.68097209 -1392.48854392    -0.00015799    -0.00003582  0.15D-05  0.50D-05  1714.93
    6     4     4     1.06950989    -0.68097004 -1392.48854187    -0.00015776    -0.00003627  0.15D-05  0.50D-05  1714.93
    6     5     5     1.06946850    -0.68096206 -1392.48853389    -0.00016800    -0.00003924  0.16D-05  0.54D-05  1714.93
    6     6     6     1.06946889    -0.68095982 -1392.48853165    -0.00016806    -0.00004002  0.17D-05  0.55D-05  1714.93
    6     7     7     1.06945256    -0.68095837 -1392.48853020    -0.00017213    -0.00004106  0.17D-05  0.56D-05  1714.93
    6     8     8     1.09820528    -0.72531362 -1392.47683583    -0.00026436    -0.00006030  0.56D-05  0.66D-05  1714.93
    6     9     9     1.09812394    -0.72529885 -1392.47682105    -0.00028299    -0.00006711  0.61D-05  0.73D-05  1714.93
    6    10    10     1.09803937    -0.72527787 -1392.47680006    -0.00030109    -0.00007974  0.59D-05  0.95D-05  1714.93
    6    11    11     1.09780924    -0.72523807 -1392.47676026    -0.00035596    -0.00009430  0.80D-05  0.10D-04  1714.93
    6    12    12     1.09779429    -0.72523130 -1392.47675349    -0.00036053    -0.00009819  0.78D-05  0.11D-04  1714.93
    6    13    13     1.09773992    -0.72523066 -1392.47675285    -0.00037152    -0.00009557  0.91D-05  0.96D-05  1714.93
    6    14    14     1.09764041    -0.72521764 -1392.47673982    -0.00039311    -0.00010143  0.10D-04  0.10D-04  1714.93
    6    15    15     1.07434593    -0.69020863 -1392.42905533    -0.00015499    -0.00003789  0.25D-05  0.47D-05  1714.93
    6    16    16     1.07433943    -0.69020458 -1392.42905128    -0.00015649    -0.00003901  0.24D-05  0.48D-05  1714.93
    6    17    17     1.07430949    -0.69019765 -1392.42904435    -0.00016374    -0.00004166  0.26D-05  0.51D-05  1714.93
    7     1     1     1.06980403    -0.68102444 -1392.48859627    -0.00004388    -0.00001470  0.30D-05  0.17D-05  2058.95
    7     2     2     1.06978849    -0.68102368 -1392.48859551    -0.00004583    -0.00001508  0.31D-05  0.18D-05  2058.95
    7     3     3     1.06978048    -0.68102136 -1392.48859319    -0.00004926    -0.00001568  0.31D-05  0.18D-05  2058.95
    7     4     4     1.06977931    -0.68101992 -1392.48859175    -0.00004988    -0.00001631  0.32D-05  0.19D-05  2058.95
    7     5     5     1.06975131    -0.68101635 -1392.48858818    -0.00005429    -0.00001796  0.35D-05  0.20D-05  2058.95
    7     6     6     1.06974682    -0.68101502 -1392.48858685    -0.00005520    -0.00001872  0.37D-05  0.21D-05  2058.95
    7     7     7     1.06973224    -0.68101423 -1392.48858606    -0.00005586    -0.00001916  0.36D-05  0.22D-05  2058.95
    7     8     8     1.09901597    -0.72538645 -1392.47690865    -0.00007282    -0.00001815  0.21D-05  0.23D-05  2058.95
    7     9     9     1.09895129    -0.72537986 -1392.47690206    -0.00008101    -0.00002104  0.23D-05  0.26D-05  2058.95
    7    10    10     1.09883420    -0.72536950 -1392.47689169    -0.00009163    -0.00002619  0.25D-05  0.34D-05  2058.95
    7    11    11     1.09873054    -0.72535102 -1392.47687321    -0.00011295    -0.00003325  0.31D-05  0.42D-05  2058.95
    7    12    12     1.09873989    -0.72534865 -1392.47687084    -0.00011735    -0.00003327  0.35D-05  0.38D-05  2058.95
    7    13    13     1.09869321    -0.72534733 -1392.47686951    -0.00011666    -0.00003510  0.33D-05  0.45D-05  2058.95
    7    14    14     1.09871202    -0.72534339 -1392.47686556    -0.00012574    -0.00003560  0.40D-05  0.40D-05  2058.95
    7    15    15     1.07465934    -0.69026163 -1392.42910833    -0.00005300    -0.00001579  0.23D-05  0.21D-05  2058.95
    7    16    16     1.07464891    -0.69025927 -1392.42910597    -0.00005469    -0.00001666  0.23D-05  0.22D-05  2058.95
    7    17    17     1.07462586    -0.69025572 -1392.42910242    -0.00005807    -0.00001842  0.27D-05  0.24D-05  2058.95
    8     1     1     1.06997749    -0.68104016 -1392.48861199    -0.00001571    -0.00000548  0.69D-06  0.54D-06  2404.58
    8     2     2     1.06996837    -0.68103990 -1392.48861173    -0.00001622    -0.00000568  0.74D-06  0.56D-06  2404.58
    8     3     3     1.06996337    -0.68103875 -1392.48861058    -0.00001739    -0.00000615  0.92D-06  0.56D-06  2404.58
    8     4     4     1.06996237    -0.68103793 -1392.48860976    -0.00001801    -0.00000645  0.93D-06  0.58D-06  2404.58
    8     5     5     1.06994527    -0.68103627 -1392.48860810    -0.00001991    -0.00000721  0.10D-05  0.65D-06  2404.58
    8     6     6     1.06994115    -0.68103562 -1392.48860745    -0.00002060    -0.00000746  0.11D-05  0.67D-06  2404.58
    8     7     7     1.06993420    -0.68103520 -1392.48860703    -0.00002097    -0.00000766  0.10D-05  0.71D-06  2404.58
    8     8     8     1.09912743    -0.72540941 -1392.47693161    -0.00002296    -0.00000693  0.77D-06  0.85D-06  2404.58
    8     9     9     1.09908769    -0.72540659 -1392.47692879    -0.00002673    -0.00000833  0.93D-06  0.10D-05  2404.58
    8    10    10     1.09905119    -0.72540172 -1392.47692391    -0.00003222    -0.00001064  0.12D-05  0.12D-05  2404.58
    8    11    11     1.09896032    -0.72539278 -1392.47691497    -0.00004176    -0.00001470  0.16D-05  0.16D-05  2404.58
    8    12    12     1.09891229    -0.72539241 -1392.47691460    -0.00004376    -0.00001481  0.17D-05  0.16D-05  2404.58
    8    13    13     1.09895641    -0.72539115 -1392.47691334    -0.00004383    -0.00001532  0.18D-05  0.17D-05  2404.58
    8    14    14     1.09887134    -0.72539014 -1392.47691231    -0.00004675    -0.00001588  0.20D-05  0.17D-05  2404.58
    8    15    15     1.07486172    -0.69028025 -1392.42912695    -0.00001861    -0.00000687  0.14D-05  0.66D-06  2404.58
    8    16    16     1.07485673    -0.69027895 -1392.42912565    -0.00001968    -0.00000735  0.14D-05  0.70D-06  2404.58
    8    17    17     1.07484067    -0.69027711 -1392.42912380    -0.00002139    -0.00000820  0.15D-05  0.76D-06  2404.58
    9     1     1     1.07005011    -0.68104659 -1392.48861842    -0.00000643    -0.00000188  0.12D-06  0.26D-06  2749.39
    9     2     2     1.07004411    -0.68104652 -1392.48861835    -0.00000662    -0.00000193  0.12D-06  0.27D-06  2749.39
    9     3     3     1.07003772    -0.68104589 -1392.48861772    -0.00000714    -0.00000213  0.12D-06  0.28D-06  2749.39
    9     4     4     1.07003605    -0.68104545 -1392.48861728    -0.00000752    -0.00000228  0.13D-06  0.30D-06  2749.39
    9     5     5     1.07002211    -0.68104468 -1392.48861651    -0.00000842    -0.00000257  0.15D-06  0.34D-06  2749.39
    9     6     6     1.07001848    -0.68104438 -1392.48861621    -0.00000876    -0.00000269  0.16D-06  0.35D-06  2749.39
    9     7     7     1.07001432    -0.68104423 -1392.48861605    -0.00000902    -0.00000276  0.16D-06  0.37D-06  2749.39
    9     8     8     1.09924107    -0.72541743 -1392.47693964    -0.00000803    -0.00000238  0.26D-06  0.27D-06  2749.39
    9     9     9     1.09920236    -0.72541627 -1392.47693847    -0.00000968    -0.00000294  0.31D-06  0.33D-06  2749.39
    9    10    10     1.09914158    -0.72541421 -1392.47693640    -0.00001249    -0.00000399  0.40D-06  0.45D-06  2749.39
    9    11    11     1.09904604    -0.72541004 -1392.47693222    -0.00001726    -0.00000578  0.61D-06  0.61D-06  2749.39
    9    12    12     1.09904698    -0.72540988 -1392.47693206    -0.00001747    -0.00000582  0.62D-06  0.60D-06  2749.39
    9    13    13     1.09903790    -0.72540933 -1392.47693151    -0.00001818    -0.00000622  0.60D-06  0.70D-06  2749.39
    9    14    14     1.09901825    -0.72540889 -1392.47693107    -0.00001876    -0.00000629  0.68D-06  0.64D-06  2749.39
    9    15    15     1.07492834    -0.69028767 -1392.42913437    -0.00000742    -0.00000249  0.24D-06  0.28D-06  2749.39
    9    16    16     1.07492310    -0.69028697 -1392.42913367    -0.00000802    -0.00000271  0.25D-06  0.30D-06  2749.39
    9    17    17     1.07490994    -0.69028609 -1392.42913278    -0.00000898    -0.00000305  0.29D-06  0.34D-06  2749.39
   10     1     1     1.07009314    -0.68104908 -1392.48862091    -0.00000249    -0.00000097  0.19D-06  0.13D-06  3085.23
   10     2     2     1.07009669    -0.68104908 -1392.48862091    -0.00000256    -0.00000097  0.18D-06  0.14D-06  3085.23
   10     3     3     1.07008870    -0.68104880 -1392.48862063    -0.00000291    -0.00000107  0.20D-06  0.14D-06  3085.23
   10     4     4     1.07008714    -0.68104856 -1392.48862039    -0.00000311    -0.00000118  0.22D-06  0.16D-06  3085.23
   10     5     5     1.07007674    -0.68104822 -1392.48862005    -0.00000354    -0.00000135  0.25D-06  0.18D-06  3085.23
   10     6     6     1.07007365    -0.68104806 -1392.48861989    -0.00000368    -0.00000144  0.26D-06  0.20D-06  3085.23
   10     7     7     1.07007071    -0.68104798 -1392.48861981    -0.00000376    -0.00000149  0.26D-06  0.20D-06  3085.23
   10     8     8     1.09943020    -0.72542011 -1392.47694231    -0.00000267    -0.00000083  0.11D-06  0.12D-06  3085.23
   10     9     9     1.09941313    -0.72541961 -1392.47694180    -0.00000334    -0.00000107  0.13D-06  0.15D-06  3085.23
   10    10    10     1.09937704    -0.72541862 -1392.47694082    -0.00000441    -0.00000158  0.16D-06  0.24D-06  3085.23
   10    11    11     1.09934430    -0.72541666 -1392.47693885    -0.00000663    -0.00000239  0.26D-06  0.34D-06  3085.23
   10    12    12     1.09934797    -0.72541662 -1392.47693881    -0.00000674    -0.00000233  0.30D-06  0.29D-06  3085.23
   10    13    13     1.09933539    -0.72541617 -1392.47693835    -0.00000684    -0.00000255  0.34D-06  0.32D-06  3085.23
   10    14    14     1.09931510    -0.72541614 -1392.47693832    -0.00000725    -0.00000275  0.22D-06  0.44D-06  3085.23
   10    15    15     1.07498570    -0.69029098 -1392.42913768    -0.00000331    -0.00000119  0.18D-06  0.18D-06  3085.23
   10    16    16     1.07498005    -0.69029062 -1392.42913732    -0.00000365    -0.00000134  0.18D-06  0.20D-06  3085.23
   10    17    17     1.07497117    -0.69029017 -1392.42913686    -0.00000408    -0.00000157  0.22D-06  0.24D-06  3085.23
   11     1     1     1.07011631    -0.68105009 -1392.48862192    -0.00000101    -0.00000040  0.53D-07  0.41D-07  3421.99
   11     2     2     1.07011880    -0.68105008 -1392.48862191    -0.00000100    -0.00000040  0.48D-07  0.41D-07  3421.99
   11     3     3     1.07011238    -0.68104996 -1392.48862179    -0.00000116    -0.00000046  0.77D-07  0.40D-07  3421.99
   11     4     4     1.07011078    -0.68104983 -1392.48862166    -0.00000127    -0.00000051  0.81D-07  0.45D-07  3421.99
   11     5     5     1.07010340    -0.68104967 -1392.48862150    -0.00000145    -0.00000059  0.92D-07  0.53D-07  3421.99
   11     6     6     1.07010104    -0.68104959 -1392.48862142    -0.00000153    -0.00000063  0.88D-07  0.58D-07  3421.99
   11     7     7     1.07009941    -0.68104954 -1392.48862137    -0.00000156    -0.00000065  0.82D-07  0.65D-07  3421.99
   11     8     8     1.09942927    -0.72542110 -1392.47694331    -0.00000100    -0.00000034  0.43D-07  0.46D-07  3421.99
   11     9     9     1.09941530    -0.72542089 -1392.47694308    -0.00000128    -0.00000046  0.54D-07  0.62D-07  3421.99
   11    10    10     1.09939640    -0.72542040 -1392.47694260    -0.00000178    -0.00000070  0.80D-07  0.93D-07  3421.99
   11    11    11     1.09934729    -0.72541951 -1392.47694170    -0.00000284    -0.00000110  0.14D-06  0.14D-06  3421.99
   11    12    12     1.09936637    -0.72541941 -1392.47694160    -0.00000280    -0.00000119  0.10D-06  0.16D-06  3421.99
   11    13    13     1.09933185    -0.72541931 -1392.47694149    -0.00000314    -0.00000120  0.16D-06  0.15D-06  3421.99
   11    14    14     1.09937241    -0.72541909 -1392.47694127    -0.00000295    -0.00000130  0.13D-06  0.17D-06  3421.99
   11    15    15     1.07501179    -0.69029236 -1392.42913906    -0.00000138    -0.00000056  0.11D-06  0.60D-07  3421.99
   11    16    16     1.07500777    -0.69029216 -1392.42913886    -0.00000154    -0.00000065  0.11D-06  0.70D-07  3421.99
   11    17    17     1.07500088    -0.69029192 -1392.42913861    -0.00000175    -0.00000077  0.12D-06  0.83D-07  3421.99
   12     1     1     1.07013327    -0.68105054 -1392.48862237    -0.00000045    -0.00000015  0.11D-07  0.22D-07  3756.28
   12     2     2     1.07013467    -0.68105053 -1392.48862236    -0.00000045    -0.00000015  0.12D-07  0.23D-07  3756.28
   12     3     3     1.07013118    -0.68105047 -1392.48862230    -0.00000051    -0.00000017  0.13D-07  0.23D-07  3756.28
   12     4     4     1.07012946    -0.68105041 -1392.48862224    -0.00000058    -0.00000019  0.14D-07  0.26D-07  3756.28
   12     5     5     1.07012410    -0.68105033 -1392.48862216    -0.00000066    -0.00000022  0.16D-07  0.31D-07  3756.28
   12     6     6     1.07012196    -0.68105030 -1392.48862212    -0.00000071    -0.00000024  0.18D-07  0.33D-07  3756.28
   12     7     7     1.07012048    -0.68105027 -1392.48862210    -0.00000073    -0.00000025  0.19D-07  0.37D-07  3756.28
   12     8     8     1.09946315    -0.72542149 -1392.47694369    -0.00000039    -0.00000013  0.14D-07  0.16D-07  3756.28
   12     9     9     1.09945037    -0.72542140 -1392.47694360    -0.00000051    -0.00000017  0.19D-07  0.22D-07  3756.28
   12    10    10     1.09942633    -0.72542119 -1392.47694338    -0.00000079    -0.00000028  0.30D-07  0.34D-07  3756.28
   12    11    11     1.09939760    -0.72542077 -1392.47694296    -0.00000127    -0.00000047  0.48D-07  0.55D-07  3756.28
   12    12    12     1.09938580    -0.72542069 -1392.47694288    -0.00000128    -0.00000051  0.49D-07  0.66D-07  3756.28
   12    13    13     1.09938929    -0.72542069 -1392.47694288    -0.00000139    -0.00000051  0.58D-07  0.56D-07  3756.28
   12    14    14     1.09937863    -0.72542057 -1392.47694275    -0.00000148    -0.00000057  0.57D-07  0.72D-07  3756.28
   12    15    15     1.07503138    -0.69029294 -1392.42913964    -0.00000058    -0.00000022  0.30D-07  0.24D-07  3756.28
   12    16    16     1.07502810    -0.69029284 -1392.42913953    -0.00000068    -0.00000026  0.32D-07  0.29D-07  3756.28
   12    17    17     1.07502137    -0.69029271 -1392.42913941    -0.00000080    -0.00000031  0.38D-07  0.37D-07  3756.28
   13     1     1     1.07014944    -0.68105072 -1392.48862256    -0.00000019    -0.00000008  0.15D-07  0.11D-07  4101.58
   13     2     2     1.07015041    -0.68105072 -1392.48862255    -0.00000019    -0.00000008  0.16D-07  0.11D-07  4101.58
   13     3     3     1.07014863    -0.68105070 -1392.48862253    -0.00000022    -0.00000009  0.16D-07  0.13D-07  4101.58
   13     4     4     1.07014761    -0.68105067 -1392.48862250    -0.00000026    -0.00000010  0.19D-07  0.15D-07  4101.58
   13     5     5     1.07014402    -0.68105063 -1392.48862246    -0.00000030    -0.00000012  0.23D-07  0.17D-07  4101.58
   13     6     6     1.07014284    -0.68105061 -1392.48862244    -0.00000032    -0.00000013  0.24D-07  0.18D-07  4101.58
   13     7     7     1.07014125    -0.68105060 -1392.48862242    -0.00000033    -0.00000014  0.26D-07  0.19D-07  4101.58
   13     8     8     1.09950390    -0.72542163 -1392.47694383    -0.00000014    -0.00000005  0.59D-08  0.67D-08  4101.58
   13     9     9     1.09949898    -0.72542159 -1392.47694379    -0.00000019    -0.00000007  0.84D-08  0.92D-08  4101.58
   13    10    10     1.09948894    -0.72542150 -1392.47694369    -0.00000031    -0.00000011  0.13D-07  0.17D-07  4101.58
   13    11    11     1.09947769    -0.72542130 -1392.47694349    -0.00000053    -0.00000020  0.25D-07  0.26D-07  4101.58
   13    12    12     1.09947526    -0.72542127 -1392.47694346    -0.00000058    -0.00000021  0.29D-07  0.27D-07  4101.58
   13    13    13     1.09947607    -0.72542127 -1392.47694345    -0.00000057    -0.00000022  0.28D-07  0.30D-07  4101.58
   13    14    14     1.09946387    -0.72542119 -1392.47694337    -0.00000062    -0.00000027  0.18D-07  0.47D-07  4101.58
   13    15    15     1.07505359    -0.69029322 -1392.42913992    -0.00000028    -0.00000011  0.17D-07  0.16D-07  4101.58
   13    16    16     1.07505148    -0.69029317 -1392.42913986    -0.00000033    -0.00000013  0.20D-07  0.20D-07  4101.58
   13    17    17     1.07504755    -0.69029310 -1392.42913980    -0.00000039    -0.00000016  0.24D-07  0.25D-07  4101.58
   14     1     1     1.07015534    -0.68105081 -1392.48862264    -0.00000008    -0.00000003  0.46D-08  0.31D-08  4445.78
   14     2     2     1.07015611    -0.68105080 -1392.48862263    -0.00000008    -0.00000003  0.43D-08  0.34D-08  4445.78
   14     3     3     1.07015396    -0.68105079 -1392.48862262    -0.00000010    -0.00000004  0.70D-08  0.33D-08  4445.78
   14     4     4     1.07015310    -0.68105078 -1392.48862261    -0.00000011    -0.00000005  0.81D-08  0.39D-08  4445.78
   14     5     5     1.07015060    -0.68105076 -1392.48862259    -0.00000013    -0.00000005  0.89D-08  0.46D-08  4445.78
   14     6     6     1.07014975    -0.68105075 -1392.48862258    -0.00000014    -0.00000006  0.87D-08  0.53D-08  4445.78
   14     7     7     1.07014902    -0.68105075 -1392.48862257    -0.00000015    -0.00000006  0.80D-08  0.62D-08  4445.78
   14     8     8     1.09950016    -0.72542168 -1392.47694389    -0.00000005    -0.00000002  0.27D-08  0.28D-08  4445.78
   14     9     9     1.09949516    -0.72542167 -1392.47694387    -0.00000008    -0.00000003  0.37D-08  0.41D-08  4445.78
   14    10    10     1.09948712    -0.72542163 -1392.47694382    -0.00000013    -0.00000005  0.63D-08  0.75D-08  4445.78
   14    11    11     1.09947105    -0.72542154 -1392.47694373    -0.00000024    -0.00000010  0.13D-07  0.12D-07  4445.78
   14    12    12     1.09946522    -0.72542152 -1392.47694371    -0.00000026    -0.00000010  0.15D-07  0.13D-07  4445.78
   14    13    13     1.09947572    -0.72542152 -1392.47694370    -0.00000025    -0.00000011  0.82D-08  0.17D-07  4445.78
   14    14    14     1.09948036    -0.72542147 -1392.47694364    -0.00000027    -0.00000014  0.10D-07  0.20D-07  4445.78
   14    15    15     1.07505916    -0.69029335 -1392.42914005    -0.00000013    -0.00000005  0.10D-07  0.57D-08  4445.78
   14    16    16     1.07505736    -0.69029332 -1392.42914002    -0.00000015    -0.00000007  0.11D-07  0.76D-08  4445.78
   14    17    17     1.07505480    -0.69029329 -1392.42913998    -0.00000018    -0.00000008  0.11D-07  0.97D-08  4445.78
   15     1     1     1.07015819    -0.68105083 -1392.48862267    -0.00000003    -0.00000001  0.14D-08  0.20D-08  4712.69
   15     2     2     1.07015745    -0.68105083 -1392.48862266    -0.00000003    -0.00000002  0.16D-08  0.24D-08  4712.69
   15     3     3     1.07015554    -0.68105082 -1392.48862265    -0.00000003    -0.00000002  0.17D-08  0.32D-08  4712.69
   15     4     4     1.07015450    -0.68105082 -1392.48862265    -0.00000004    -0.00000002  0.19D-08  0.36D-08  4712.69
   15     5     5     1.07015382    -0.68105081 -1392.48862264    -0.00000005    -0.00000003  0.20D-08  0.43D-08  4712.69
   15     6     6     1.07015534    -0.68105081 -1392.48862264    -0.00000006    -0.00000003  0.46D-08  0.31D-08  4712.69
   15     7     7     1.07015611    -0.68105081 -1392.48862263    -0.00000006    -0.00000003  0.43D-08  0.34D-08  4712.69
   15     8     8     1.09952069    -0.72542170 -1392.47694390    -0.00000001    -0.00000003  0.30D-08  0.26D-08  4712.69
   15     9     9     1.09950016    -0.72542169 -1392.47694389    -0.00000002    -0.00000002  0.27D-08  0.28D-08  4712.69
   15    10    10     1.09949763    -0.72542168 -1392.47694388    -0.00000006    -0.00000002  0.25D-08  0.32D-08  4712.69
   15    11    11     1.09949514    -0.72542168 -1392.47694387    -0.00000014    -0.00000003  0.38D-08  0.41D-08  4712.69
   15    12    12     1.09948766    -0.72542165 -1392.47694384    -0.00000012    -0.00000004  0.42D-08  0.51D-08  4712.69
   15    13    13     1.09948541    -0.72542164 -1392.47694383    -0.00000013    -0.00000004  0.49D-08  0.52D-08  4712.69
   15    14    14     1.09948172    -0.72542164 -1392.47694382    -0.00000018    -0.00000005  0.35D-08  0.83D-08  4712.69
   15    15    15     1.07507728    -0.69029345 -1392.42914015    -0.00000010    -0.00000001  0.29D-09  0.68D-09  4712.69
   15    16    16     1.07507702    -0.69029345 -1392.42914015    -0.00000013    -0.00000001  0.45D-09  0.11D-08  4712.69
   15    17    17     1.07507583    -0.69029344 -1392.42914014    -0.00000016    -0.00000002  0.83D-09  0.22D-08  4712.69
   16     1     1     1.07015819    -0.68105083 -1392.48862267    -0.00000000    -0.00000001  0.14D-08  0.20D-08  4763.82
   16     2     2     1.07015745    -0.68105083 -1392.48862266    -0.00000000    -0.00000002  0.16D-08  0.24D-08  4763.82
   16     3     3     1.07015554    -0.68105082 -1392.48862265    -0.00000000    -0.00000002  0.17D-08  0.32D-08  4763.82
   16     4     4     1.07015450    -0.68105082 -1392.48862265    -0.00000000    -0.00000002  0.19D-08  0.36D-08  4763.82
   16     5     5     1.07015382    -0.68105081 -1392.48862264    -0.00000000    -0.00000003  0.20D-08  0.43D-08  4763.82
   16     6     6     1.07015534    -0.68105081 -1392.48862264    -0.00000000    -0.00000003  0.46D-08  0.31D-08  4763.82
   16     7     7     1.07015611    -0.68105081 -1392.48862263    -0.00000000    -0.00000003  0.43D-08  0.34D-08  4763.82
   16     8     8     1.09952357    -0.72542172 -1392.47694392    -0.00000002    -0.00000000  0.11D-09  0.10D-09  4763.82
   16     9     9     1.09951915    -0.72542172 -1392.47694391    -0.00000002    -0.00000002  0.13D-08  0.19D-08  4763.82
   16    10    10     1.09952069    -0.72542170 -1392.47694390    -0.00000002    -0.00000003  0.30D-08  0.26D-08  4763.82
   16    11    11     1.09950016    -0.72542170 -1392.47694389    -0.00000002    -0.00000002  0.27D-08  0.28D-08  4763.82
   16    12    12     1.09949763    -0.72542169 -1392.47694388    -0.00000004    -0.00000002  0.25D-08  0.32D-08  4763.82
   16    13    13     1.09949523    -0.72542168 -1392.47694387    -0.00000004    -0.00000003  0.38D-08  0.41D-08  4763.82
   16    14    14     1.09948766    -0.72542166 -1392.47694384    -0.00000002    -0.00000004  0.42D-08  0.51D-08  4763.82
   16    15    15     1.07507728    -0.69029345 -1392.42914015     0.00000000    -0.00000001  0.29D-09  0.68D-09  4763.82
   16    16    16     1.07507702    -0.69029345 -1392.42914015     0.00000000    -0.00000001  0.45D-09  0.11D-08  4763.82
   16    17    17     1.07507583    -0.69029344 -1392.42914014    -0.00000000    -0.00000002  0.83D-09  0.22D-08  4763.82


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   1.9%  88.0%

 Initialization:   0.1%
 Other:            9.9%

 Total CPU:     4763.8 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/2/2/222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000001   0.0000000   0.9666302  -0.0084152   0.0000000
                     -0.0000026  -0.0000000  -0.0000004   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
 222//2/222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0885414   0.9625669   0.0000000  -0.0000019  -0.0000000
                      0.0069913  -0.0000000  -0.0046836  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 2/2/2/2222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0082079   0.9533499   0.0000000
                      0.0002930   0.0000000   0.0000421  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 22//22/222          -0.0000000   0.0000000  -0.0000000   0.0000000   0.4304733   0.0395966  -0.0000001   0.0000008   0.0000000
                     -0.0020946   0.0000000  -0.0031267  -0.0000000   0.0000000   0.0000000   0.8622004  -0.0000000
 2/222//222          -0.0000000  -0.0000000   0.0000000   0.0000000   0.8609466   0.0791938  -0.0000001   0.0000016   0.0000000
                     -0.0041891  -0.0000000  -0.0062535  -0.0000000   0.0000000  -0.0000000  -0.4311001  -0.0000000
 2/2//22222           0.0028294  -0.0000021   0.0000000  -0.0067740   0.0000000  -0.0000000   0.0000000  -0.0000000   0.8092822
                      0.0000000  -0.0016559   0.0000000   0.2686482  -0.0002554  -0.0000021   0.0000000  -0.0005518
 22/22//222          -0.3331934   0.0002480  -0.0000000   0.7977981  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0071435
                      0.0000000  -0.0000146   0.0000000   0.0023714  -0.0000023  -0.0016509  -0.0000000  -0.4310973
 2//22/2222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0007518  -0.0081732  -0.0000000  -0.0002200  -0.0000000
                      0.7920477   0.0000000  -0.5306100  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
 2222///222          -0.5902589   0.0004394  -0.0000001   0.1591957   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0017676
                      0.0000000  -0.0000072   0.0000000   0.0050201   0.0000078   0.0028594   0.0000000   0.7466823
 2/22/2/222          -0.0000112  -0.0149710   0.6111675   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000037
                     -0.0000000   0.0007397  -0.0000000   0.0000106  -0.0052706   0.7466817  -0.0000000  -0.0028594
 2//2/22222          -0.0000042  -0.0056921  -0.0046366   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0009170
                      0.0000000   0.7401657  -0.0000000   0.0013973  -0.4234151  -0.0005517  -0.0000000   0.0000021
 22/2//2222           0.0058519  -0.0000044   0.0000000   0.0044333  -0.0000000   0.0000000   0.0000000   0.0000000  -0.4624288
                     -0.0000000   0.0002462  -0.0000000   0.7164263   0.0017932  -0.0000021   0.0000000  -0.0005518
 22///22222           0.0000000   0.0000000   0.0000000   0.0000000   0.0073106   0.0006728  -0.0000000  -0.0001772  -0.0000000
                      0.4745898   0.0000000   0.7084415   0.0000000  -0.0000000   0.0000000   0.0005515  -0.0000000
 2//222/222           0.0005183   0.6962708  -0.5125479   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000144
                     -0.0000000   0.0052521   0.0000000  -0.0000060   0.0053917   0.4310967  -0.0000000  -0.0016509
 2/2/22/222           0.6891648  -0.0005130   0.0000001   0.5220634  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0040819
                      0.0000000  -0.0000022   0.0000000  -0.0063238  -0.0000158   0.0016509   0.0000000   0.4310972
 222/2//222          -0.0004989  -0.6703395  -0.5460251  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000081
                      0.0000000  -0.0065335   0.0000000  -0.0000123   0.0037373   0.4310974  -0.0000000  -0.0016509
 222///2222          -0.0000044  -0.0059118   0.0043523  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0016352
                     -0.0000000   0.5949986   0.0000000  -0.0006778   0.6108213   0.0005517  -0.0000000  -0.0000021
 22//2/2222           0.0000001   0.0001276  -0.0051889  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0004146
                      0.0000000   0.0838063  -0.0000000   0.0011980  -0.5970919   0.0009557  -0.0000000  -0.0000037
 2///222222           0.0050114  -0.0000037   0.0000000  -0.0013522   0.0000000   0.0000000  -0.0000000   0.0000000   0.2002448
                      0.0000000  -0.0008139  -0.0000000   0.5687331   0.0008879   0.0000037  -0.0000000   0.0009558
 2/22//2222          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0036546  -0.0003355   0.0000000   0.0000886   0.0000000
                     -0.2372835   0.0000000  -0.3542052  -0.0000000   0.0000000  -0.0000000   0.0011033   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/2/2\/222  16.1     0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0004475  -0.0533317  -0.0000000
                     -0.0000164  -0.0000000  -0.0000024   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.210596    0.000710   -0.000000    0.000000   -0.000115    0.943409    0.000000    0.003425   -0.000006    0.000000
            -0.000000   -0.000002    0.007460   -0.000000    0.000000   -0.000000    0.000000
 2           0.000157    0.954123   -0.000000    0.000000   -0.154988   -0.000702    0.000000   -0.000003   -0.007566    0.000000
            -0.000000   -0.003183   -0.000006    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000   -0.154988   -0.000000    0.000000   -0.954124    0.000000    0.000000    0.000000    0.003183    0.000000
             0.000000   -0.007566    0.000000    0.000000   -0.000000   -0.000000    0.000000
 4           0.943411    0.000000    0.000000   -0.000000   -0.000000    0.210596   -0.000000   -0.007460   -0.000000    0.000000
            -0.000000   -0.000000    0.003426   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000    0.000000    0.949451    0.000000    0.000000   -0.000000   -0.181435    0.000000    0.000000    0.008178
             0.000000   -0.000000   -0.000000    0.000709   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000    0.181435    0.000000    0.000000   -0.000000    0.949450   -0.000000    0.000000    0.000709
             0.000000   -0.000000    0.000000   -0.008178   -0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000    0.966630    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.008209    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000    0.000002   -0.008415    0.000000    0.000000   -0.000002   -0.000000    0.000000   -0.000199
             0.953619    0.000000    0.000000   -0.000219    0.000000    0.000000    0.000000
 9           0.008328    0.000017    0.000000    0.000000    0.000003    0.001212   -0.000000    0.894037    0.001915   -0.000000
             0.000000    0.000143   -0.331793   -0.000000    0.000000    0.000000    0.000000
 10          0.000000   -0.000000   -0.003984   -0.000003    0.000000    0.000000    0.007412    0.000000   -0.000000    0.534887
             0.000293    0.000000   -0.000000    0.789485   -0.000000    0.000000   -0.000000
 11         -0.000016    0.007975   -0.000000   -0.000000   -0.002687    0.000005   -0.000000   -0.001857    0.806842    0.000000
             0.000000    0.508340   -0.000129    0.000000    0.000000   -0.000000   -0.000000
 12          0.000000    0.000000   -0.007413   -0.000000    0.000000    0.000000   -0.003984    0.000000    0.000000    0.789492
             0.000042   -0.000000   -0.000000   -0.534894   -0.000000    0.000000   -0.000000
 13          0.001212    0.000001   -0.000000    0.000000   -0.000017   -0.008328   -0.000000    0.331798   -0.000313    0.000000
            -0.000000    0.001937    0.894046   -0.000000    0.000000   -0.000000    0.000000
 14         -0.000006    0.002687    0.000000   -0.000000    0.007975   -0.000017    0.000000   -0.000216    0.508343   -0.000000
             0.000000   -0.806846    0.002006    0.000000    0.000000   -0.000000    0.000000
 15         -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000    0.003693    0.964417
 16          0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.964424    0.000000   -0.000000
 17         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.964418   -0.003693

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966664    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000012   -0.000000
             0.000000   -0.000000   -0.000159   -0.000000   -0.000000   -0.000000   -0.000000
 2           0.000000    0.966664    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000158   -0.000000    0.000000    0.000026   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.966665   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000026   -0.000000    0.000000   -0.000158   -0.000000    0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.966666    0.000000   -0.000000   -0.000000   -0.000000    0.000159   -0.000000
            -0.000000    0.000000   -0.000012   -0.000000    0.000000   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.966666   -0.000000   -0.000000    0.000000    0.000000   -0.000101
             0.000000   -0.000124   -0.000000    0.000000    0.000000    0.000000    0.000000
 6           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.966665   -0.000000   -0.000000    0.000000    0.000124
             0.000000   -0.000101   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 7           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.966665   -0.000160   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000160    0.953656    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 9          -0.000012    0.000000   -0.000000    0.000159    0.000000    0.000000   -0.000000    0.000000    0.953658   -0.000000
             0.000000    0.000000    0.000001   -0.000000   -0.000000    0.000000    0.000000
 10         -0.000000    0.000000    0.000000   -0.000000   -0.000101    0.000124   -0.000000   -0.000000   -0.000000    0.953657
             0.000000   -0.000001    0.000000    0.000000   -0.000000   -0.000000    0.000000
 11          0.000000    0.000158    0.000026   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.953666   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000   -0.000124   -0.000101   -0.000000   -0.000000    0.000000   -0.000001
            -0.000000    0.953667    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 13         -0.000159    0.000000    0.000000   -0.000012   -0.000000   -0.000000    0.000000   -0.000000    0.000001    0.000000
            -0.000000    0.000000    0.953668   -0.000000    0.000000   -0.000000   -0.000000
 14         -0.000000    0.000026   -0.000158   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.953671   -0.000000    0.000000    0.000000
 15         -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.964424    0.000000    0.000000
 16         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000    0.964424   -0.000000
 17         -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.964425


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94340918 (fixed)   0.96666504 (relaxed)   0.96666409 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000196   -0.00000008   -0.56985051
 Singles      0.01091377   -0.07122078   -0.07349241
 Pairs        0.05924456    0.00000000   -0.03770792
 Total        1.07016028   -0.07122086   -0.68105083
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80756763
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.40196768
 One electron energy                -1931.61169459
 Two electron energy                  539.12307192
 Virial quotient                       -0.95677253
 Correlation energy                    -0.68105504
 !MRCI STATE 1.1 Energy             -1392.488622666345

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53640568 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53640425 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53640568 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53171159 (Pople, fixed reference)
 Cluster corrected energies         -1392.53171024 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53171159 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95412306 (fixed)   0.96666537 (relaxed)   0.96666442 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000196   -0.00000008   -0.56985112
 Singles      0.01091377   -0.07122084   -0.07349241
 Pairs        0.05924382    0.00000030   -0.03770730
 Total        1.07015955   -0.07122063   -0.68105083
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80756763
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.40200993
 One electron energy                -1931.61173532
 Two electron energy                  539.12311266
 Virial quotient                       -0.95677250
 Correlation energy                    -0.68105503
 !MRCI STATE 2.1 Energy             -1392.488622660512

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53640518 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53640375 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53640518 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53171111 (Pople, fixed reference)
 Cluster corrected energies         -1392.53170976 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53171111 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95412421 (fixed)   0.96666623 (relaxed)   0.96666529 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000196   -0.00000008   -0.56985162
 Singles      0.01091400   -0.07122140   -0.07349250
 Pairs        0.05924168    0.00000031   -0.03770670
 Total        1.07015764   -0.07122117   -0.68105082
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80756763
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.40196521
 One electron energy                -1931.61167053
 Two electron energy                  539.12304788
 Virial quotient                       -0.95677253
 Correlation energy                    -0.68105502
 !MRCI STATE 3.1 Energy             -1392.488622650556

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53640386 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53640243 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53640386 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53170987 (Pople, fixed reference)
 Cluster corrected energies         -1392.53170851 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53170987 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94341107 (fixed)   0.96666670 (relaxed)   0.96666576 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000196   -0.00000008   -0.56985184
 Singles      0.01091408   -0.07122145   -0.07349251
 Pairs        0.05924056   -0.00000000   -0.03770647
 Total        1.07015659   -0.07122153   -0.68105082
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80756763
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.40192464
 One electron energy                -1931.61160879
 Two electron energy                  539.12298614
 Virial quotient                       -0.95677256
 Correlation energy                    -0.68105502
 !MRCI STATE 4.1 Energy             -1392.488622646402

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53640315 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53640172 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53640315 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53170919 (Pople, fixed reference)
 Cluster corrected energies         -1392.53170783 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53170919 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94945103 (fixed)   0.96666701 (relaxed)   0.96666606 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000196   -0.00000008   -0.56985240
 Singles      0.01091427   -0.07122123   -0.07349259
 Pairs        0.05923969   -0.00000000   -0.03770583
 Total        1.07015592   -0.07122131   -0.68105081
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80756763
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.40169765
 One electron energy                -1931.61133198
 Two electron energy                  539.12270934
 Virial quotient                       -0.95677271
 Correlation energy                    -0.68105501
 !MRCI STATE 5.1 Energy             -1392.488622640920

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53640268 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53640125 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53640268 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53170875 (Pople, fixed reference)
 Cluster corrected energies         -1392.53170739 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53170875 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.94945037 (fixed)   0.96666632 (relaxed)   0.96666538 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000196   -0.00000008   -0.56985963
 Singles      0.01091331   -0.07121262   -0.07349309
 Pairs        0.05924217   -0.00000000   -0.03769809
 Total        1.07015744   -0.07121270   -0.68105081
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80756763
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.39944744
 One electron energy                -1931.60885967
 Two electron energy                  539.12023704
 Virial quotient                       -0.95677419
 Correlation energy                    -0.68105501
 !MRCI STATE 6.1 Energy             -1392.488622637490

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53640371 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53640229 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53640371 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53170972 (Pople, fixed reference)
 Cluster corrected energies         -1392.53170837 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53170972 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96663019 (fixed)   0.96666598 (relaxed)   0.96666503 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000196   -0.00000008   -0.56985945
 Singles      0.01091321   -0.07121237   -0.07349315
 Pairs        0.05924304    0.00000000   -0.03769820
 Total        1.07015820   -0.07121245   -0.68105081
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80756763
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.39946875
 One electron energy                -1931.60890699
 Two electron energy                  539.12028436
 Virial quotient                       -0.95677417
 Correlation energy                    -0.68105500
 !MRCI STATE 7.1 Energy             -1392.488622633285

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53640423 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53640280 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53640423 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53171021 (Pople, fixed reference)
 Cluster corrected energies         -1392.53170886 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53171021 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95361862 (fixed)   0.95366914 (relaxed)   0.95365578 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002800   -0.00000008   -0.46985404
 Singles      0.05001421   -0.20881198   -0.22290138
 Pairs        0.04951215   -0.00000000   -0.03266630
 Total        1.09955436   -0.20881206   -0.72542172
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75152639
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.09049120
 One electron energy                -1923.96543263
 Two electron energy                  531.48848871
 Virial quotient                       -0.95762743
 Correlation energy                    -0.72541753
 !MRCI STATE 8.1 Energy             -1392.476943918834

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.54916240 (Davidson, fixed reference)
 Cluster corrected energies         -1392.54914006 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.54916240 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54349082 (Pople, fixed reference)
 Cluster corrected energies         -1392.54346872 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54349082 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.89403696 (fixed)   0.95367106 (relaxed)   0.95365770 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002800   -0.00000008   -0.46985742
 Singles      0.05001320   -0.20881033   -0.22290168
 Pairs        0.04950873   -0.00000000   -0.03266261
 Total        1.09954993   -0.20881041   -0.72542172
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75152640
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.09057825
 One electron energy                -1923.96537865
 Two electron energy                  531.48843474
 Virial quotient                       -0.95762738
 Correlation energy                    -0.72541751
 !MRCI STATE 9.1 Energy             -1392.476943910320

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.54915918 (Davidson, fixed reference)
 Cluster corrected energies         -1392.54913684 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.54915918 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54348763 (Pople, fixed reference)
 Cluster corrected energies         -1392.54346554 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54348763 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.78948519 (fixed)   0.95367039 (relaxed)   0.95365703 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002801   -0.00000008   -0.46985378
 Singles      0.05001440   -0.20881360   -0.22290355
 Pairs        0.04950908    0.00000000   -0.03266437
 Total        1.09955148   -0.20881368   -0.72542170
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75152638
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.09151784
 One electron energy                -1923.96628229
 Two electron energy                  531.48933840
 Virial quotient                       -0.95762676
 Correlation energy                    -0.72541752
 !MRCI STATE 10.1 Energy            -1392.476943897666

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.54916029 (Davidson, fixed reference)
 Cluster corrected energies         -1392.54913795 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.54916029 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54348873 (Pople, fixed reference)
 Cluster corrected energies         -1392.54346663 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54348873 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.80684228 (fixed)   0.95367929 (relaxed)   0.95366593 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002801   -0.00000008   -0.46986392
 Singles      0.05001005   -0.20881212   -0.22290673
 Pairs        0.04949289    0.00000003   -0.03265105
 Total        1.09953096   -0.20881217   -0.72542170
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75152639
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.09116216
 One electron energy                -1923.96586334
 Two electron energy                  531.48891946
 Virial quotient                       -0.95762699
 Correlation energy                    -0.72541749
 !MRCI STATE 11.1 Energy            -1392.476943885587

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.54914538 (Davidson, fixed reference)
 Cluster corrected energies         -1392.54912304 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.54914538 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54347398 (Pople, fixed reference)
 Cluster corrected energies         -1392.54345188 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54347398 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.78949220 (fixed)   0.95368039 (relaxed)   0.95366703 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002801   -0.00000008   -0.46986865
 Singles      0.05000909   -0.20880807   -0.22290561
 Pairs        0.04949132   -0.00000000   -0.03264743
 Total        1.09952842   -0.20880815   -0.72542169
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75152639
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.09077928
 One electron energy                -1923.96538975
 Two electron energy                  531.48844588
 Virial quotient                       -0.95762724
 Correlation energy                    -0.72541749
 !MRCI STATE 12.1 Energy            -1392.476943876469

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.54914353 (Davidson, fixed reference)
 Cluster corrected energies         -1392.54912119 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.54914353 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54347216 (Pople, fixed reference)
 Cluster corrected energies         -1392.54345006 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54347216 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.89404591 (fixed)   0.95368143 (relaxed)   0.95366807 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002801   -0.00000008   -0.46986519
 Singles      0.05000989   -0.20881300   -0.22290810
 Pairs        0.04948813   -0.00000000   -0.03264839
 Total        1.09952603   -0.20881308   -0.72542168
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75152639
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.09129142
 One electron energy                -1923.96597212
 Two electron energy                  531.48902826
 Virial quotient                       -0.95762691
 Correlation energy                    -0.72541748
 !MRCI STATE 13.1 Energy            -1392.476943866656

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.54914179 (Davidson, fixed reference)
 Cluster corrected energies         -1392.54911945 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.54914179 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54347043 (Pople, fixed reference)
 Cluster corrected energies         -1392.54344833 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54347043 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.80684640 (fixed)   0.95368471 (relaxed)   0.95367136 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002800   -0.00000008   -0.46987309
 Singles      0.05000960   -0.20880791   -0.22290743
 Pairs        0.04948085    0.00000007   -0.03264114
 Total        1.09951845   -0.20880793   -0.72542166
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75152639
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.09067993
 One electron energy                -1923.96524093
 Two electron energy                  531.48829709
 Virial quotient                       -0.95762731
 Correlation energy                    -0.72541745
 !MRCI STATE 14.1 Energy            -1392.476943835068

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.54913625 (Davidson, fixed reference)
 Cluster corrected energies         -1392.54911392 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.54913625 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54346496 (Pople, fixed reference)
 Cluster corrected energies         -1392.54344286 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54346496 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.96441716 (fixed)   0.96445098 (relaxed)   0.96442423 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005548   -0.00000000   -0.00003981
 Singles      0.01478631   -0.07542468   -0.07965050
 Pairs        0.06029513   -0.61486426   -0.61060314
 Total        1.07513692   -0.69028894   -0.69029345
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.73884670
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.36550869
 One electron energy                -1931.40925598
 Two electron energy                  538.98011583
 Virial quotient                       -0.95675563
 Correlation energy                    -0.69029345
 !MRCI STATE 15.1 Energy            -1392.429140147626

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.48100667 (Davidson, fixed reference)
 Cluster corrected energies         -1392.48096550 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.48100667 (Davidson, rotated reference)

 Cluster corrected energies         -1392.47608225 (Pople, fixed reference)
 Cluster corrected energies         -1392.47604294 (Pople, relaxed reference)
 Cluster corrected energies         -1392.47608225 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.96442435 (fixed)   0.96445110 (relaxed)   0.96442435 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005547   -0.00000000   -0.57193422
 Singles      0.01478641   -0.07542430   -0.07965053
 Pairs        0.06029477    0.00000000   -0.03870870
 Total        1.07513666   -0.07542430   -0.69029345
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.73884670
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.36534484
 One electron energy                -1931.40904201
 Two electron energy                  538.97990186
 Virial quotient                       -0.95675573
 Correlation energy                    -0.69029345
 !MRCI STATE 16.1 Energy            -1392.429140146309

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.48100649 (Davidson, fixed reference)
 Cluster corrected energies         -1392.48096532 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.48100649 (Davidson, rotated reference)

 Cluster corrected energies         -1392.47608207 (Pople, fixed reference)
 Cluster corrected energies         -1392.47604276 (Pople, relaxed reference)
 Cluster corrected energies         -1392.47608207 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.96441781 (fixed)   0.96445163 (relaxed)   0.96442488 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005547    0.00000000   -0.57412557
 Singles      0.01478628   -0.07542356   -0.07965058
 Pairs        0.06029372    0.00235459   -0.03651730
 Total        1.07513547   -0.07306898   -0.69029344
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.73884670
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.36514785
 One electron energy                -1931.40880064
 Two electron energy                  538.97966050
 Virial quotient                       -0.95675586
 Correlation energy                    -0.69029344
 !MRCI STATE 17.1 Energy            -1392.429140140345

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.48100566 (Davidson, fixed reference)
 Cluster corrected energies         -1392.48096450 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.48100566 (Davidson, rotated reference)

 Cluster corrected energies         -1392.47608129 (Pople, fixed reference)
 Cluster corrected energies         -1392.47604198 (Pople, relaxed reference)
 Cluster corrected energies         -1392.47608129 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.58       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       7      403.05       700     1000      520     2100     2140     2141     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4833.05   4826.56      3.80      1.07      0.61      0.85
 REAL TIME  *      4994.69 SEC
 DISK USED  *       439.71 MB (local),        1.74 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1392.53640568  AU                              
 SETTING HLSDIAG(2)     =     -1392.53640518  AU                              
 SETTING HLSDIAG(3)     =     -1392.53640386  AU                              
 SETTING HLSDIAG(4)     =     -1392.53640315  AU                              
 SETTING HLSDIAG(5)     =     -1392.53640268  AU                              
 SETTING HLSDIAG(6)     =     -1392.53640371  AU                              
 SETTING HLSDIAG(7)     =     -1392.53640423  AU                              
 SETTING HLSDIAG(8)     =     -1392.54916240  AU                              
 SETTING HLSDIAG(9)     =     -1392.54915918  AU                              
 SETTING HLSDIAG(10)    =     -1392.54916029  AU                              
 SETTING HLSDIAG(11)    =     -1392.54914538  AU                              
 SETTING HLSDIAG(12)    =     -1392.54914353  AU                              
 SETTING HLSDIAG(13)    =     -1392.54914179  AU                              
 SETTING HLSDIAG(14)    =     -1392.54913625  AU                              
 SETTING HLSDIAG(15)    =     -1392.48100667  AU                              
 SETTING HLSDIAG(16)    =     -1392.48100649  AU                              
 SETTING HLSDIAG(17)    =     -1392.48100566  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 27
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:      119 conf      175 CSFs
 N elec internal:      210 conf      330 CSFs
 N-1 el internal:      615 conf     1815 CSFs
 N-2 el internal:     1449 conf     8442 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           5 (   2   3 )
 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      87 (  48  39 )

 Molecular orbitals read from record     2141.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  70

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1391.78508173
     2     -1391.78508173
     3     -1391.78508172
     4     -1391.78508172
     5     -1391.78508172
     6     -1391.78508172
     7     -1391.78508172

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.10D-04
 Number of N-2 electron functions:     700
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       1329888
 Total number of contracted configurations:      1409119
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:    570570 words, CPU-Time:      0.27 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    429037 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1391.78508173    -0.00000000    -0.83116301  0.20D-01  0.95D-01     0.49
    1     2     2     1.00000000     0.00000000 -1391.78508173     0.00000000    -0.83184927  0.20D-01  0.95D-01     0.49
    1     3     3     1.00000000     0.00000000 -1391.78508172    -0.00000000    -0.83122297  0.20D-01  0.95D-01     0.49
    1     4     4     1.00000000     0.00000000 -1391.78508172     0.00000000    -0.83057901  0.20D-01  0.96D-01     0.49
    1     5     5     1.00000000     0.00000000 -1391.78508172     0.00000000    -0.83013467  0.20D-01  0.94D-01     0.49
    1     6     6     1.00000000     0.00000000 -1391.78508172     0.00000000    -0.83023092  0.20D-01  0.95D-01     0.49
    1     7     7     1.00000000     0.00000000 -1391.78508172     0.00000000    -0.82936367  0.20D-01  0.95D-01     0.49
    2     1     1     1.07182659    -0.65828509 -1392.44336681    -0.65828509    -0.02695478  0.22D-02  0.33D-02    49.87
    2     2     2     1.07205856    -0.65821116 -1392.44329289    -0.65821116    -0.02701324  0.22D-02  0.33D-02    49.87
    2     3     3     1.07211082    -0.65819569 -1392.44327741    -0.65819569    -0.02698774  0.21D-02  0.33D-02    49.87
    2     4     4     1.07187837    -0.65814938 -1392.44323110    -0.65814938    -0.02703623  0.22D-02  0.33D-02    49.87
    2     5     5     1.07194821    -0.65813186 -1392.44321359    -0.65813186    -0.02697027  0.21D-02  0.33D-02    49.87
    2     6     6     1.07259544    -0.65792278 -1392.44300450    -0.65792278    -0.02717385  0.24D-02  0.33D-02    49.87
    2     7     7     1.07249571    -0.65771654 -1392.44279826    -0.65771654    -0.02724809  0.24D-02  0.33D-02    49.87
    3     1     1     1.06842106    -0.68224366 -1392.46732539    -0.02395858    -0.00130972  0.14D-03  0.21D-03    99.12
    3     2     2     1.06845980    -0.68221773 -1392.46729946    -0.02400657    -0.00132149  0.14D-03  0.21D-03    99.12
    3     3     3     1.06846152    -0.68217985 -1392.46726157    -0.02398416    -0.00134866  0.14D-03  0.22D-03    99.12
    3     4     4     1.06851933    -0.68217156 -1392.46725328    -0.02402218    -0.00130828  0.15D-03  0.19D-03    99.12
    3     5     5     1.06827100    -0.68216293 -1392.46724465    -0.02403106    -0.00135803  0.14D-03  0.22D-03    99.12
    3     6     6     1.06832697    -0.68213997 -1392.46722169    -0.02421719    -0.00137206  0.14D-03  0.23D-03    99.12
    3     7     7     1.06843483    -0.68208785 -1392.46716957    -0.02437131    -0.00136556  0.15D-03  0.20D-03    99.12
    4     1     1     1.07014677    -0.68356879 -1392.46865051    -0.00132512    -0.00022553  0.45D-04  0.27D-04   148.51
    4     2     2     1.07004751    -0.68354721 -1392.46862893    -0.00132947    -0.00028252  0.31D-04  0.59D-04   148.51
    4     3     3     1.07010068    -0.68354361 -1392.46862533    -0.00136376    -0.00025253  0.44D-04  0.34D-04   148.51
    4     4     4     1.07006697    -0.68354133 -1392.46862305    -0.00136977    -0.00028689  0.31D-04  0.61D-04   148.51
    4     5     5     1.06997991    -0.68350938 -1392.46859111    -0.00134646    -0.00033185  0.27D-04  0.80D-04   148.51
    4     6     6     1.07003055    -0.68350839 -1392.46859011    -0.00136842    -0.00032942  0.27D-04  0.80D-04   148.51
    4     7     7     1.06998688    -0.68349955 -1392.46858127    -0.00141171    -0.00033797  0.27D-04  0.81D-04   148.51
    5     1     1     1.07142002    -0.68381014 -1392.46889186    -0.00024135    -0.00003568  0.11D-05  0.68D-05   197.92
    5     2     2     1.07135187    -0.68379924 -1392.46888096    -0.00025203    -0.00005200  0.13D-05  0.13D-04   197.92
    5     3     3     1.07117345    -0.68378262 -1392.46886434    -0.00023901    -0.00007348  0.55D-05  0.20D-04   197.92
    5     4     4     1.07117432    -0.68378086 -1392.46886258    -0.00023953    -0.00007502  0.57D-05  0.20D-04   197.92
    5     5     5     1.07108553    -0.68376728 -1392.46884900    -0.00025790    -0.00008632  0.91D-05  0.22D-04   197.92
    5     6     6     1.07110983    -0.68376662 -1392.46884834    -0.00025822    -0.00008686  0.87D-05  0.22D-04   197.92
    5     7     7     1.07109594    -0.68376542 -1392.46884714    -0.00026586    -0.00008739  0.89D-05  0.22D-04   197.92
    6     1     1     1.07163360    -0.68384106 -1392.46892279    -0.00003093    -0.00000827  0.56D-06  0.19D-05   247.18
    6     2     2     1.07158692    -0.68383703 -1392.46891876    -0.00003779    -0.00001192  0.95D-06  0.28D-05   247.18
    6     3     3     1.07153014    -0.68383547 -1392.46891719    -0.00005285    -0.00001186  0.12D-05  0.22D-05   247.18
    6     4     4     1.07152953    -0.68383502 -1392.46891675    -0.00005416    -0.00001223  0.12D-05  0.23D-05   247.18
    6     5     5     1.07149452    -0.68383234 -1392.46891406    -0.00006506    -0.00001402  0.14D-05  0.26D-05   247.18
    6     6     6     1.07150275    -0.68383196 -1392.46891368    -0.00006534    -0.00001444  0.14D-05  0.27D-05   247.18
    6     7     7     1.07149482    -0.68383174 -1392.46891346    -0.00006633    -0.00001454  0.14D-05  0.27D-05   247.18
    7     1     1     1.07170482    -0.68384751 -1392.46892924    -0.00000645    -0.00000172  0.17D-06  0.33D-06   296.46
    7     2     2     1.07167682    -0.68384665 -1392.46892838    -0.00000962    -0.00000240  0.17D-06  0.49D-06   296.46
    7     3     3     1.07166526    -0.68384617 -1392.46892789    -0.00001070    -0.00000314  0.14D-06  0.81D-06   296.46
    7     4     4     1.07166421    -0.68384600 -1392.46892772    -0.00001098    -0.00000333  0.14D-06  0.90D-06   296.46
    7     5     5     1.07165034    -0.68384502 -1392.46892675    -0.00001268    -0.00000428  0.12D-06  0.12D-05   296.46
    7     6     6     1.07165124    -0.68384491 -1392.46892663    -0.00001295    -0.00000438  0.12D-06  0.12D-05   296.46
    7     7     7     1.07164672    -0.68384480 -1392.46892652    -0.00001306    -0.00000448  0.12D-06  0.13D-05   296.46
    8     1     1     1.07176160    -0.68384920 -1392.46893093    -0.00000169    -0.00000049  0.14D-07  0.12D-06   345.70
    8     2     2     1.07174216    -0.68384888 -1392.46893060    -0.00000223    -0.00000083  0.29D-07  0.23D-06   345.70
    8     3     3     1.07173020    -0.68384863 -1392.46893036    -0.00000246    -0.00000108  0.87D-07  0.30D-06   345.70
    8     4     4     1.07172846    -0.68384857 -1392.46893029    -0.00000257    -0.00000113  0.98D-07  0.31D-06   345.70
    8     5     5     1.07172071    -0.68384821 -1392.46892994    -0.00000319    -0.00000146  0.14D-06  0.40D-06   345.70
    8     6     6     1.07172023    -0.68384820 -1392.46892992    -0.00000330    -0.00000147  0.14D-06  0.40D-06   345.70
    8     7     7     1.07171768    -0.68384817 -1392.46892989    -0.00000336    -0.00000149  0.15D-06  0.39D-06   345.70
    9     1     1     1.07178399    -0.68384957 -1392.46893130    -0.00000037    -0.00000014  0.55D-08  0.36D-07   395.00
    9     2     2     1.07177498    -0.68384948 -1392.46893121    -0.00000060    -0.00000022  0.75D-08  0.60D-07   395.00
    9     3     3     1.07176981    -0.68384943 -1392.46893116    -0.00000080    -0.00000027  0.79D-08  0.73D-07   395.00
    9     4     4     1.07176883    -0.68384942 -1392.46893114    -0.00000085    -0.00000028  0.86D-08  0.80D-07   395.00
    9     5     5     1.07176326    -0.68384929 -1392.46893101    -0.00000108    -0.00000039  0.80D-08  0.11D-06   395.00
    9     6     6     1.07176226    -0.68384929 -1392.46893101    -0.00000109    -0.00000040  0.82D-08  0.12D-06   395.00
    9     7     7     1.07176134    -0.68384928 -1392.46893100    -0.00000112    -0.00000041  0.86D-08  0.12D-06   395.00
   10     1     1     1.07179690    -0.68384969 -1392.46893141    -0.00000012    -0.00000004  0.83D-09  0.11D-07   444.40
   10     2     2     1.07179038    -0.68384965 -1392.46893138    -0.00000017    -0.00000007  0.47D-09  0.23D-07   444.40
   10     3     3     1.07178783    -0.68384963 -1392.46893135    -0.00000020    -0.00000009  0.86D-09  0.29D-07   444.40
   10     4     4     1.07178698    -0.68384962 -1392.46893135    -0.00000021    -0.00000010  0.10D-08  0.32D-07   444.40
   10     5     5     1.07178296    -0.68384958 -1392.46893130    -0.00000029    -0.00000014  0.23D-08  0.42D-07   444.40
   10     6     6     1.07178389    -0.68384958 -1392.46893130    -0.00000029    -0.00000014  0.19D-08  0.42D-07   444.40
   10     7     7     1.07178239    -0.68384957 -1392.46893129    -0.00000029    -0.00000014  0.21D-08  0.44D-07   444.40
   11     1     1     1.07180287    -0.68384972 -1392.46893144    -0.00000003    -0.00000001  0.34D-09  0.38D-08   493.79
   11     2     2     1.07179921    -0.68384970 -1392.46893143    -0.00000006    -0.00000002  0.94D-09  0.71D-08   493.79
   11     3     3     1.07179895    -0.68384970 -1392.46893143    -0.00000007    -0.00000003  0.17D-08  0.96D-08   493.79
   11     4     4     1.07179837    -0.68384970 -1392.46893142    -0.00000008    -0.00000003  0.20D-08  0.10D-07   493.79
   11     5     5     1.07179636    -0.68384969 -1392.46893141    -0.00000011    -0.00000005  0.23D-08  0.16D-07   493.79
   11     6     6     1.07179694    -0.68384969 -1392.46893141    -0.00000011    -0.00000005  0.23D-08  0.17D-07   493.79
   11     7     7     1.07179616    -0.68384969 -1392.46893141    -0.00000011    -0.00000005  0.26D-08  0.16D-07   493.79
   12     1     1     1.07181001    -0.68384973 -1392.46893146    -0.00000001    -0.00000001  0.12D-08  0.17D-08   530.43
   12     2     2     1.07181000    -0.68384973 -1392.46893146    -0.00000003    -0.00000001  0.12D-08  0.16D-08   530.43
   12     3     3     1.07180385    -0.68384972 -1392.46893145    -0.00000002    -0.00000001  0.88D-10  0.35D-08   530.43
   12     4     4     1.07180366    -0.68384972 -1392.46893145    -0.00000002    -0.00000001  0.12D-09  0.38D-08   530.43
   12     5     5     1.07180287    -0.68384972 -1392.46893144    -0.00000004    -0.00000001  0.34D-09  0.38D-08   530.43
   12     6     6     1.07180237    -0.68384972 -1392.46893144    -0.00000004    -0.00000002  0.23D-09  0.57D-08   530.43
   12     7     7     1.07179922    -0.68384971 -1392.46893143    -0.00000002    -0.00000002  0.95D-09  0.71D-08   530.43


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.3%
 P   0.2%   4.3%  83.6%

 Initialization:   0.1%
 Other:           11.5%

 Total CPU:      530.4 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/2/2\222           0.0000000   0.0000000   0.0000000  -0.0000000   0.9655175  -0.0000000  -0.0000000
 222//2\222          -0.0000000   0.1241077  -0.0000000   0.0000000  -0.0000000   0.0000000   0.9575094
 2/2/22\222           0.0258573  -0.0000000  -0.0000000   0.8631983   0.0000000  -0.0000000   0.0000000
 2//222\222           0.0000000  -0.0000000   0.0885456   0.0000000  -0.0000000   0.8590351  -0.0000000
 2/222/\222           0.0000000   0.8564188  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.1110066
 22/22/\222           0.8422492   0.0000000   0.0000000   0.1907634  -0.0000000   0.0000000  -0.0000000
 222/2/\222           0.0000000  -0.0000000   0.8096192   0.0000000  -0.0000000  -0.3004909  -0.0000000
 2/22/2\222           0.0000000  -0.0000000  -0.5185552   0.0000000  -0.0000000  -0.3224722  -0.0000000
 2222//\222           0.4713443  -0.0000000  -0.0000000  -0.3882285   0.0000000  -0.0000000   0.0000000
 22//22\222          -0.0000000   0.4282078   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0555012

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.914067    0.000000   -0.000000    0.000000    0.000000   -0.312219   -0.000000
 2           0.000000   -0.000000    0.963025   -0.000000   -0.000000    0.000000    0.074722
 3          -0.000000   -0.286335    0.000000    0.000000    0.922506   -0.000000   -0.000000
 4           0.312221   -0.000000    0.000000    0.000000   -0.000000    0.914070    0.000000
 5           0.000000    0.000000   -0.000000    0.965922   -0.000000    0.000000   -0.000000
 6          -0.000000    0.922507   -0.000000    0.000000    0.286335    0.000000    0.000000
 7           0.000000   -0.000000   -0.074723   -0.000000   -0.000000    0.000000    0.963029

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.965919   -0.000000    0.000000    0.000001    0.000000    0.000000   -0.000000
 2          -0.000000    0.965919   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 3           0.000000   -0.000000    0.965922   -0.000000   -0.000000    0.000000    0.000000
 4           0.000001    0.000000   -0.000000    0.965922    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.965922    0.000000   -0.000000
 6           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.965923   -0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.965924


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.91406717 (fixed)   0.96591986 (relaxed)   0.96591914 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000148   -0.00000000   -0.57028514
 Singles      0.01196060   -0.07261251   -0.07537709
 Pairs        0.05984952    0.00000000   -0.03818750
 Total        1.07181160   -0.07261251   -0.68384973
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78508173
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.39209109
 One electron energy                -1931.59351724
 Two electron energy                  539.12458578
 Virial quotient                       -0.95676549
 Correlation energy                    -0.68384973
 !MRCI STATE 1.1 Energy             -1392.468931456161

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51803980 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51803871 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51803980 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51431872 (Pople, fixed reference)
 Cluster corrected energies         -1392.51431766 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51431872 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96302459 (fixed)   0.96591987 (relaxed)   0.96591915 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000148    0.00000000   -0.52616871
 Singles      0.01196056   -0.07261250   -0.07537707
 Pairs        0.05984955   -0.04728452   -0.08230395
 Total        1.07181159   -0.11989702   -0.68384973
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78508172
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.39208770
 One electron energy                -1931.59351627
 Two electron energy                  539.12458482
 Virial quotient                       -0.95676550
 Correlation energy                    -0.68384973
 !MRCI STATE 2.1 Energy             -1392.468931455546

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51803979 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51803870 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51803979 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51431871 (Pople, fixed reference)
 Cluster corrected energies         -1392.51431764 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51431871 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.92250603 (fixed)   0.96592264 (relaxed)   0.96592192 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000148   -0.00000000   -0.57028936
 Singles      0.01196013   -0.07261150   -0.07537708
 Pairs        0.05984382    0.00000000   -0.03818329
 Total        1.07180544   -0.07261150   -0.68384972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78508172
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.39137631
 One electron energy                -1931.59275418
 Two electron energy                  539.12382273
 Virial quotient                       -0.95676596
 Correlation energy                    -0.68384973
 !MRCI STATE 3.1 Energy             -1392.468931448590

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51803558 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51803449 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51803558 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51431460 (Pople, fixed reference)
 Cluster corrected energies         -1392.51431354 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51431460 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.91406955 (fixed)   0.96592272 (relaxed)   0.96592201 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000148    0.00000000   -0.57028942
 Singles      0.01196008   -0.07261154   -0.07537706
 Pairs        0.05984368   -0.00000000   -0.03818324
 Total        1.07180525   -0.07261154   -0.68384972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78508172
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.39138983
 One electron energy                -1931.59277351
 Two electron energy                  539.12384207
 Virial quotient                       -0.95676595
 Correlation energy                    -0.68384973
 !MRCI STATE 4.1 Energy             -1392.468931447928

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51803545 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51803436 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51803545 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51431447 (Pople, fixed reference)
 Cluster corrected energies         -1392.51431341 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51431447 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96592236 (fixed)   0.96592308 (relaxed)   0.96592236 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000148    0.00000000   -0.57028866
 Singles      0.01196056   -0.07261281   -0.07537751
 Pairs        0.05984242   -0.00000000   -0.03818355
 Total        1.07180446   -0.07261281   -0.68384972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78508172
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.39167218
 One electron energy                -1931.59309896
 Two electron energy                  539.12416751
 Virial quotient                       -0.95676577
 Correlation energy                    -0.68384972
 !MRCI STATE 5.1 Energy             -1392.468931444858

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51803490 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51803382 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51803490 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51431394 (Pople, fixed reference)
 Cluster corrected energies         -1392.51431288 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51431394 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.92250661 (fixed)   0.96592330 (relaxed)   0.96592259 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000148    0.00000000   -0.57028982
 Singles      0.01196011   -0.07261185   -0.07537736
 Pairs        0.05984237    0.00000000   -0.03818254
 Total        1.07180396   -0.07261185   -0.68384972
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78508173
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.39152228
 One electron energy                -1931.59296742
 Two electron energy                  539.12403598
 Virial quotient                       -0.95676587
 Correlation energy                    -0.68384972
 !MRCI STATE 6.1 Energy             -1392.468931441956

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51803456 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51803347 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51803456 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51431360 (Pople, fixed reference)
 Cluster corrected energies         -1392.51431254 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51431360 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96302945 (fixed)   0.96592472 (relaxed)   0.96592401 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000148    0.00000000   -0.00170991
 Singles      0.01195944   -0.07261336   -0.07537716
 Pairs        0.05983989   -0.60940468   -0.60676263
 Total        1.07180080   -0.68201804   -0.68384971
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78508172
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.39197942
 One electron energy                -1931.59355654
 Two electron energy                  539.12462511
 Virial quotient                       -0.95676557
 Correlation energy                    -0.68384971
 !MRCI STATE 7.1 Energy             -1392.468931430300

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51803239 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51803130 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51803239 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51431149 (Pople, fixed reference)
 Cluster corrected energies         -1392.51431043 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51431149 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.58       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       8      479.44       700     1000      520     2100     2140     2141     5103     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5367.97    534.91   4826.56      3.80      1.07      0.61      0.85
 REAL TIME  *      5545.99 SEC
 DISK USED  *       516.11 MB (local),        2.04 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(18)    =     -1392.51803980  AU                              
 SETTING HLSDIAG(19)    =     -1392.51803979  AU                              
 SETTING HLSDIAG(20)    =     -1392.51803558  AU                              
 SETTING HLSDIAG(21)    =     -1392.51803545  AU                              
 SETTING HLSDIAG(22)    =     -1392.51803490  AU                              
 SETTING HLSDIAG(23)    =     -1392.51803456  AU                              
 SETTING HLSDIAG(24)    =     -1392.51803239  AU                              


         HLSDIAG
    -1392.536406
    -1392.536405
    -1392.536404
    -1392.536403
    -1392.536403
    -1392.536404
    -1392.536404
    -1392.549162
    -1392.549159
    -1392.549160
    -1392.549145
    -1392.549144
    -1392.549142
    -1392.549136
    -1392.481007
    -1392.481006
    -1392.481006
    -1392.518040
    -1392.518040
    -1392.518036
    -1392.518035
    -1392.518035
    -1392.518035
    -1392.518032
                                                  

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

 Time for Seward_LS:       3.54 sec

        8293450. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2036 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      3.54 sec, REAL time:      3.58 sec


 SORTLS1 read     8314052. and wrote     8314052. SO integrals in    36 records. CPU time:      0.08 sec, REAL time:      0.11 sec
 SORTLS2 read     8314052. and wrote    41413707. SO integrals in    12 records. CPU time:      0.11 sec, REAL time:      0.16 sec

 FILE SIZES: FILE 1:   171.8 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.8 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       8      479.44       700     1000      520     2100     2140     2141     5103     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5372.18      4.19    534.91   4826.56      3.80      1.07      0.61      0.85
 REAL TIME  *      5550.36 SEC
 DISK USED  *       516.11 MB (local),        2.47 GB (total)
 SF USED    *         3.88 GB
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
  
 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=  17

 Original energies:  -1392.488623  -1392.488623  -1392.488623  -1392.488623  -1392.488623  -1392.488623  -1392.488623  -1392.476944
                     -1392.476944  -1392.476944  -1392.476944  -1392.476944  -1392.476944  -1392.476944  -1392.429140  -1392.429140
                     -1392.429140
 Replaced energies:  -1392.536406  -1392.536405  -1392.536404  -1392.536403  -1392.536403  -1392.536404  -1392.536404  -1392.549162
                     -1392.549159  -1392.549160  -1392.549145  -1392.549144  -1392.549142  -1392.549136  -1392.481007  -1392.481006
                     -1392.481006

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:  -1392.468931  -1392.468931  -1392.468931  -1392.468931  -1392.468931  -1392.468931  -1392.468931
 Replaced energies:  -1392.518040  -1392.518040  -1392.518036  -1392.518035  -1392.518035  -1392.518035  -1392.518032



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1392.54916240

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5    2799.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -198.27     233.13       0.53       0.00      -0.00       0.00      -0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00    2799.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          198.27       0.00      -0.17     711.99      -0.00      -0.00      -0.00       0.00      -2.28      -0.00

    3   3.1  1.5  1.5       0.00       0.00    2800.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -233.13       0.17      -0.00      81.63      -0.00      -0.00      -0.00       0.00      -0.32       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00    2800.33       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.53    -711.99     -81.63       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00    2800.43       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      45.14       0.15       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00    2800.21       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00    -490.76      -1.61       0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00    2800.09       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00     -45.14     490.76      -0.00       0.00      -0.00      -1.34

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.15       1.61      -0.00       0.00       0.00    -450.54

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.71       0.00
                           -0.00       2.28       0.32      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.46
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       1.34     450.54      -0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.52      -0.00      -0.00      -2.35      -0.00      -0.00       0.00       0.00     772.40       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.90    -301.84       0.00      -0.11

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.82       0.74      -0.00       0.00       0.00       0.00      -0.00       1.28      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.86      -0.00       0.00      -0.12      -0.00      -0.00      -0.00       0.00      17.47       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00       0.01       0.00      -0.00       0.00      -0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.01      -0.00      -0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.03      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   18   1.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.02      -0.12    -171.81      -0.56      -0.00       0.00
                            0.00      -0.00      -0.00       0.00     359.08    -230.62      -0.13      -0.00      -0.00       1.33

   19   2.1  1.5  0.5       0.00       0.00      -0.00      -0.00      23.95    -167.18       0.13       0.00      -0.00       0.47
                            0.00       0.00       0.00       0.00      -0.27       0.17    -179.68      -0.59      -0.00      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00      -0.00    -325.92    -260.09       0.00       0.00      -0.00      -0.01
                            0.00      -0.00      -0.00       0.00       0.00      -0.00     220.59       0.72       0.00       0.00

   21   4.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00      -0.00     226.80       0.74       0.00       0.00
                           -0.00      -0.00      -0.00       0.00     -80.31    -117.49       0.00      -0.00       0.00       0.13

   22   5.1  1.5  0.5      -0.02     -23.95     325.92      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                         -359.08       0.27      -0.00      80.31       0.00       0.00      -0.00       0.00      -0.35      -0.00

   23   6.1  1.5  0.5       0.12     167.18     260.09       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                          230.62      -0.17       0.00     117.49      -0.00       0.00      -0.00       0.00      -0.33       0.00

   24   7.1  1.5  0.5     171.81      -0.13      -0.00    -226.80       0.00       0.00      -0.00       0.00       0.79      -0.00
                            0.13     179.68    -220.59      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.56      -0.00      -0.00      -0.74      -0.00       0.00      -0.00       0.00     263.03       0.00
                            0.00       0.59      -0.72       0.00      -0.00      -0.00      -0.00       0.00      -0.53       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.79    -263.03      -0.00      -0.39
                            0.00       0.00      -0.00      -0.00       0.35       0.33       0.00       0.53       0.00     -11.05

   27  10.1  1.5  0.5      -0.00      -0.47       0.01      -0.00      -0.00      -0.00       0.00      -0.00       0.39      -0.00
                           -1.33       0.00      -0.00      -0.13       0.00      -0.00       0.00      -0.00      11.05       0.00

   28  11.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.10       0.68       0.00       0.65       0.00    -156.65
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.46     155.42       0.00      -0.29

   29  12.1  1.5  0.5       0.00       0.28       1.37      -0.00       0.00       0.00      -0.00      -0.00       0.12      -0.00
                           -0.44       0.00      -0.00       0.45       0.00       0.00       0.00       0.00    -160.66      -0.00

   30  13.1  1.5  0.5       0.00       0.00      -0.00       0.00       0.00       0.00      -0.50    -169.78      -0.00      -0.12
                           -0.00       0.00       0.00      -0.00       1.15      -0.78      -0.00      -0.53      -0.00     448.12

   31  14.1  1.5  0.5      -0.00       0.00      -0.00      -0.00      -1.07      -0.75      -0.00      -0.04       0.00     -29.84
                            0.00      -0.00       0.00       0.00       0.00      -0.00       0.81     271.70       0.00       0.94

   32  15.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.01      -0.00      -0.00       0.00

   33  16.1  1.5  0.5      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.01      -0.00       0.00       0.00      -0.00      -0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.02       0.02      -0.00       0.00      -0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   1.1  0.5  0.5      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -196.71       7.59      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     189.24     -26.25      -0.00       0.00       0.00      -5.38

   70   2.1  0.5  0.5      -0.01      -9.14    -259.33      -0.00      -0.00       0.00       0.00       0.00       0.01      -0.00
                          207.44      -0.15       0.00     -71.99      -0.00      -0.00       0.00       0.00      -3.37      -0.00

   71   3.1  0.5  0.5       0.00       0.00      -0.00       0.00    -185.89    -213.69       0.00       0.00       0.00      -1.88
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      68.48      -2.64      -0.00      -0.00

   72   4.1  0.5  0.5      -0.00       0.00      -0.00       0.00       0.00      -0.00       5.89      -0.23       0.00      -0.00
                            0.00       0.00       0.00       0.00    -170.17     177.09       0.00      -0.00      -0.00       9.44

   73   5.1  0.5  0.5    -118.84       0.09      -0.00     156.87       0.00       0.00      -0.00       0.00       6.38       0.00
                           -0.09    -124.29     152.58      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00    -128.60       8.43       0.00      -0.00      -0.00       3.38
                            0.00      -0.00      -0.00       0.00       0.00       0.00     184.50      -7.12       0.00      -0.00

   75   7.1  0.5  0.5      -0.09    -116.46    -126.20      -0.00      -0.00      -0.00       0.00       0.00      -0.01      -0.00
                         -210.00       0.16      -0.00     -67.14      -0.00       0.00       0.00       0.00      -1.98      -0.00

   76   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.52       0.00      -0.00       0.86       0.01       0.00      -0.00      -0.00      -0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.82       0.00       0.00      -0.00       0.01       0.00      -0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.74      -0.00       0.00      -0.00       0.03       0.00      -0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            2.35       0.00       0.00       0.12      -0.01       0.00       0.00      -0.00      -0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02      23.95    -325.92
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    -359.08       0.27      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.12    -167.18    -260.09
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00     230.62      -0.17       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -171.81       0.13       0.00
                           -0.00       0.90      -0.00       0.00      -0.00       0.01      -0.00       0.13     179.68    -220.59

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.56       0.00       0.00
                           -0.00     301.84       0.00      -0.00       0.00       0.00       0.00       0.00       0.59      -0.72

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                         -772.40      -0.00      -1.28     -17.47      -0.00       0.00       0.00       0.00       0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.47      -0.01
                           -0.00       0.11       0.00      -0.00      -0.00       0.00       0.00      -1.33       0.00      -0.00

   11  11.1  1.5  1.5       3.73       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00    -231.99      -1.37       0.00      -0.00       0.00      -0.00      -0.00       0.00

   12  12.1  1.5  1.5       0.00       4.14       0.00       0.00       0.00       0.00       0.00      -0.00      -0.28      -1.37
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.44       0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00       4.52       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                          231.99       0.00       0.00     290.82       0.00      -0.00      -0.00      -0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       5.74       0.00       0.00       0.00       0.00      -0.00       0.00
                            1.37       0.00    -290.82      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00   14958.45       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00     267.07      -0.00      -0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00   14958.49       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   14958.67      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00    -267.07       0.00      -0.00       0.00       0.00      -0.00

   18   1.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    2799.78       0.00       0.00
                            0.00       0.44       0.00      -0.00       0.00       0.00      -0.00       0.00     -66.09      77.71

   19   2.1  1.5  0.5       0.00      -0.28      -0.00      -0.00       0.00       0.00      -0.00       0.00    2799.89       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      66.09       0.00      -0.06

   20   3.1  1.5  0.5       0.00      -1.37       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    2800.18
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00     -77.71       0.06      -0.00

   21   4.1  1.5  0.5      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.45       0.00      -0.00       0.00      -0.01      -0.00      -0.18    -237.33     -27.21

   22   5.1  1.5  0.5      -0.10      -0.00      -0.00       1.07      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.15      -0.00      -0.00       0.00      -0.02      -0.00       0.00       0.00

   23   6.1  1.5  0.5      -0.68      -0.00      -0.00       0.75       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.78       0.00      -0.00      -0.00      -0.02       0.00       0.00       0.00

   24   7.1  1.5  0.5      -0.00       0.00       0.50       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.46      -0.00       0.00      -0.81      -0.01      -0.00       0.00      -0.00       0.00       0.00

   25   8.1  1.5  0.5      -0.65       0.00     169.78       0.04       0.00      -0.00       0.00       0.00       0.00       0.00
                         -155.42      -0.00       0.53    -271.70       0.00       0.00      -0.00       0.00      -0.00      -0.00

   26   9.1  1.5  0.5      -0.00      -0.12       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00     160.66       0.00      -0.00       0.00       0.00       0.00      -0.00       0.76       0.11

   27  10.1  1.5  0.5     156.65       0.00       0.12      29.84       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.29       0.00    -448.12      -0.94      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   28  11.1  1.5  0.5      -0.00     169.10       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.39      -0.00       0.00      -0.00      -0.00       0.00      -0.17      -0.00      -0.00

   29  12.1  1.5  0.5    -169.10       0.00      -0.96     437.06      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.39      -0.00    -135.11      -0.12      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   30  13.1  1.5  0.5      -0.00       0.96       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00     135.11       0.00       0.00       0.00       0.00      -0.00       0.00      -0.27       0.25

   31  14.1  1.5  0.5       0.00    -437.06      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.12      -0.00       0.00       0.00       0.00       0.00      -0.29      -0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00      -0.00       0.00       0.00     154.18       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.59      -0.00      -0.00      -0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00    -154.18       0.00       0.59       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.59       0.00    -154.17      -0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.59      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00     154.17      -0.00       0.00      -0.00      -0.01

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02     -27.65     376.34
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -414.63       0.31      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.14     193.05     300.32
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     266.29      -0.20       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     198.38      -0.15      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.15     207.47    -254.72

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.65      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.68      -0.84

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.55       0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.53       0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.33       1.58
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.50       0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -5.03      -0.00       0.00      -0.00       0.00      -0.00      -0.16    -214.51     -92.99

   70   2.1  0.5  0.5      -1.98       0.00      -0.02       9.81      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.01       0.00      -7.77      -0.01       0.00      -0.00       0.00      -0.00       0.00       0.00

   71   3.1  0.5  0.5       0.00      10.76       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      46.29      -0.03       0.00

   72   4.1  0.5  0.5      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.79       0.00       0.00       0.00       0.00       0.00      -0.20    -264.80      65.77

   73   5.1  0.5  0.5      -0.01       0.00       4.11       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -3.77      -0.00       0.01      -6.59       0.00       0.00      -0.00       0.00       0.00       0.00

   74   6.1  0.5  0.5       0.00       3.65       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     133.31      -0.10       0.00

   75   7.1  0.5  0.5      -5.23       0.00      -0.01       4.07       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       8.27       0.02       0.00       0.00       0.00      -0.00       0.00       0.00

   76   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -5.28    -149.73
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     119.76      -0.09       0.00

   78   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   79   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   80   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -68.61       0.05      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.05     -71.76      88.09

   81   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   82   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.05     -67.24     -72.86
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -121.25       0.09      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5      -0.00      -0.02       0.12     171.81       0.56       0.00      -0.00       0.00       0.00       0.00
                            0.00     359.08    -230.62      -0.13      -0.00      -0.00       1.33       0.00       0.44       0.00

    2   2.1  1.5  1.5       0.00     -23.95     167.18      -0.13      -0.00       0.00      -0.47      -0.00       0.28       0.00
                            0.00      -0.27       0.17    -179.68      -0.59      -0.00      -0.00       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00     325.92     260.09      -0.00      -0.00       0.00       0.01      -0.00       1.37      -0.00
                            0.00       0.00      -0.00     220.59       0.72       0.00       0.00      -0.00       0.00      -0.00

    4   4.1  1.5  1.5       0.00      -0.00       0.00    -226.80      -0.74      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00     -80.31    -117.49       0.00      -0.00       0.00       0.13       0.00      -0.45       0.00

    5   5.1  1.5  1.5       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.10       0.00       0.00
                           80.31      -0.00       0.00      -0.00       0.00      -0.35      -0.00       0.00      -0.00      -1.15

    6   6.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.68       0.00       0.00
                          117.49      -0.00      -0.00      -0.00       0.00      -0.33       0.00      -0.00      -0.00       0.78

    7   7.1  1.5  1.5     226.80      -0.00      -0.00      -0.00      -0.00      -0.79       0.00       0.00      -0.00      -0.50
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.46      -0.00       0.00

    8   8.1  1.5  1.5       0.74       0.00      -0.00       0.00       0.00    -263.03      -0.00       0.65      -0.00    -169.78
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.53       0.00    -155.42      -0.00       0.53

    9   9.1  1.5  1.5       0.00       0.00      -0.00       0.79     263.03      -0.00       0.39       0.00       0.12      -0.00
                           -0.00       0.35       0.33       0.00       0.53      -0.00     -11.05      -0.00     160.66       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00      -0.00       0.00      -0.39      -0.00    -156.65      -0.00      -0.12
                           -0.13       0.00      -0.00       0.00      -0.00      11.05      -0.00       0.29       0.00    -448.12

   11  11.1  1.5  1.5      -0.00      -0.10      -0.68      -0.00      -0.65      -0.00     156.65      -0.00    -169.10      -0.00
                           -0.00      -0.00       0.00       0.46     155.42       0.00      -0.29       0.00      -0.39      -0.00

   12  12.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00      -0.12       0.00     169.10       0.00       0.96
                            0.45       0.00       0.00       0.00       0.00    -160.66      -0.00       0.39       0.00    -135.11

   13  13.1  1.5  1.5      -0.00      -0.00      -0.00       0.50     169.78       0.00       0.12       0.00      -0.96       0.00
                           -0.00       1.15      -0.78      -0.00      -0.53      -0.00     448.12       0.00     135.11      -0.00

   14  14.1  1.5  1.5       0.00       1.07       0.75       0.00       0.04      -0.00      29.84      -0.00     437.06       0.00
                            0.00       0.00      -0.00       0.81     271.70       0.00       0.94      -0.00       0.12      -0.00

   15  15.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.01      -0.00      -0.00       0.00       0.00       0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.01      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.02       0.02      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.18       0.00      -0.00       0.00      -0.00       0.00       0.00       0.17       0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          237.33      -0.00      -0.00      -0.00       0.00      -0.76      -0.00       0.00      -0.00       0.27

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           27.21      -0.00      -0.00      -0.00       0.00      -0.11       0.00       0.00       0.00      -0.25

   21   4.1  1.5  0.5    2800.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.78       0.00       0.00

   22   5.1  1.5  0.5       0.00    2800.43       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      15.05       0.05       0.00       0.00       0.00       0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00    2800.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -163.59      -0.54       0.00      -0.00       0.00      -0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00    2800.09       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -15.05     163.59      -0.00       0.00      -0.00      -0.45      -0.00       0.30      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.05       0.54      -0.00       0.00       0.00    -150.18      -0.00     100.61       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.71       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -257.47      -0.00      -0.43

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.46       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.45     150.18      -0.00       0.00      -0.00       0.04       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.73       0.00       0.00
                           -0.78      -0.00      -0.00       0.00       0.00     257.47       0.00       0.00       0.00     -77.33

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.14       0.00
                           -0.00      -0.00       0.00      -0.30    -100.61       0.00      -0.04      -0.00       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.52
                           -0.00       0.00       0.00       0.00      -0.00       0.43      -0.00      77.33       0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.00      -0.00      -0.00       0.00       5.82       0.00       0.46       0.00     -96.94

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.02      -0.14    -198.38      -0.65      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00     414.63    -266.29      -0.15      -0.00      -0.00       1.53       0.00       0.50       0.00

   36   2.1  1.5 -0.5      -0.00      27.65    -193.05       0.15       0.00      -0.00       0.55       0.00      -0.33      -0.00
                            0.00      -0.31       0.20    -207.47      -0.68      -0.00      -0.00       0.00      -0.00      -0.00

   37   3.1  1.5 -0.5      -0.00    -376.34    -300.32       0.00       0.00      -0.00      -0.01       0.00      -1.58       0.00
                            0.00       0.00      -0.00     254.72       0.84       0.00       0.00      -0.00       0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00      -0.00     261.89       0.86       0.00       0.00      -0.00       0.00      -0.00
                            0.00     -92.74    -135.67       0.00      -0.00       0.00       0.15       0.00      -0.52       0.00

   39   5.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.11      -0.00      -0.00
                           92.74       0.00       0.00      -0.00       0.00      -0.41      -0.00       0.00      -0.00      -1.33

   40   6.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.79      -0.00      -0.00
                          135.67      -0.00       0.00      -0.00       0.00      -0.38       0.00      -0.00      -0.00       0.90

   41   7.1  1.5 -0.5    -261.89       0.00       0.00      -0.00       0.00       0.91      -0.00      -0.00       0.00       0.58
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.54      -0.00       0.00

   42   8.1  1.5 -0.5      -0.86      -0.00       0.00      -0.00       0.00     303.72       0.00      -0.75       0.00     196.05
                            0.00      -0.00      -0.00      -0.00       0.00      -0.61       0.00    -179.46      -0.00       0.62

   43   9.1  1.5 -0.5      -0.00      -0.00       0.00      -0.91    -303.72      -0.00      -0.45      -0.00      -0.14       0.00
                           -0.00       0.41       0.38       0.00       0.61       0.00     -12.76      -0.00     185.51       0.00

   44  10.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00       0.45      -0.00     180.88       0.00       0.14
                           -0.15       0.00      -0.00       0.00      -0.00      12.76       0.00       0.34       0.00    -517.44

   45  11.1  1.5 -0.5       0.00       0.11       0.79       0.00       0.75       0.00    -180.88      -0.00     195.26       0.00
                           -0.00      -0.00       0.00       0.54     179.46       0.00      -0.34      -0.00      -0.45      -0.00

   46  12.1  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00       0.14      -0.00    -195.26       0.00      -1.10
                            0.52       0.00       0.00       0.00       0.00    -185.51      -0.00       0.45      -0.00    -156.01

   47  13.1  1.5 -0.5       0.00       0.00       0.00      -0.58    -196.05      -0.00      -0.14      -0.00       1.10       0.00
                           -0.00       1.33      -0.90      -0.00      -0.62      -0.00     517.44       0.00     156.01       0.00

   48  14.1  1.5 -0.5      -0.00      -1.23      -0.87      -0.00      -0.05       0.00     -34.46       0.00    -504.67      -0.00
                            0.00       0.00      -0.00       0.93     313.74       0.00       1.09      -0.00       0.13      -0.00

   49  15.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.01      -0.00      -0.00       0.00       0.00       0.00      -0.00

   50  16.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   51  17.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.02       0.02      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -0.00      -8.75       0.00      -0.01

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -29.21       1.12       0.00       0.00       0.00       0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -198.93      -0.00      -0.00       0.00       0.00      -7.78      -0.00       0.01      -0.00      -1.20

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.02       0.00      -9.66       0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -20.81     226.29       0.00      -0.00      -0.00       7.28       0.00      -4.88      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          263.86       0.00       0.00      -0.00       0.00       9.76       0.00      -0.01       0.00      -5.89

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -225.36       8.69       0.00       0.00       0.00       0.00      -0.00

   76   1.1  0.5 -0.5       0.00      -0.00      -0.00    -113.57       4.38      -0.00       0.00       0.00       0.00       0.00
                           -0.00     109.26     -15.15      -0.00       0.00       0.00      -3.11       0.00      -2.90      -0.00

   77   2.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -1.14       0.00      -0.01
                          -41.56      -0.00      -0.00       0.00       0.00      -1.95      -0.00       0.01       0.00      -4.48

   78   3.1  0.5 -0.5       0.00    -107.32    -123.37       0.00       0.00       0.00      -1.08       0.00       6.21       0.00
                           -0.00       0.00       0.00      39.53      -1.53      -0.00      -0.00      -0.00      -0.00       0.00

   79   4.1  0.5 -0.5       0.00       0.00      -0.00       3.40      -0.13       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00     -98.25     102.24       0.00      -0.00      -0.00       5.45       0.00       0.45       0.00

   80   5.1  0.5 -0.5      90.57       0.00       0.00      -0.00       0.00       3.68       0.00      -0.01       0.00       2.38
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.01       0.00      -2.18      -0.00       0.01

   81   6.1  0.5 -0.5       0.00     -74.25       4.87       0.00      -0.00      -0.00       1.95       0.00       2.11       0.00
                            0.00       0.00       0.00     106.52      -4.11       0.00      -0.00      -0.00      -0.00       0.00

   82   7.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -3.02       0.00      -0.01
                          -38.77      -0.00       0.00       0.00       0.00      -1.14      -0.00      -0.00      -0.00       4.77


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -1.07       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.75      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.81      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5      -0.04      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -271.70       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5     -29.84      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.94      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5    -437.06       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5      -0.00       0.00    -154.18      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.59      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5      -0.00     154.18       0.00      -0.59       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.59      -0.00    -154.17       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.59      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     154.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.02       0.14
                            0.29       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00     414.63    -266.29

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     -27.65     193.05
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.31       0.20

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     376.34     300.32
                           -0.00       0.00      -0.00       0.01       0.00      -0.00       0.00       0.00       0.00      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.04      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     -92.74    -135.67

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.02      27.65    -376.34       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00    -414.63       0.31      -0.00      92.74      -0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.14    -193.05    -300.32      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00     266.29      -0.20       0.00     135.67      -0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00    -198.38       0.15       0.00     261.89      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.15     207.47    -254.72      -0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.65       0.00       0.00       0.86       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.68      -0.84       0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -5.82      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.41       0.38

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.55      -0.01       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -1.53       0.00      -0.00      -0.15       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.11      -0.79
                           -0.46       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.33      -1.58       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.50       0.00      -0.00       0.52       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           96.94       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       1.33      -0.90

   31  14.1  1.5  0.5       5.74       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       1.23       0.87
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   32  15.1  1.5  0.5       0.00   14958.45       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      89.02      -0.00      -0.00       0.00      -0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00   14958.49       0.00       0.00       0.01      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.02      -0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00   14958.67      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00     -89.02       0.00      -0.00       0.00       0.00      -0.00       0.00       0.02       0.02

   35   1.1  1.5 -0.5       0.00       0.00       0.00      -0.00    2799.78       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      66.09     -77.71      -0.18      -0.00       0.00

   36   2.1  1.5 -0.5      -0.00       0.00       0.01      -0.00       0.00    2799.89       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     -66.09      -0.00       0.06    -237.33       0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.00    2800.18       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      77.71      -0.06       0.00     -27.21       0.00       0.00

   38   4.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    2800.33       0.00       0.00
                           -0.00       0.00      -0.02      -0.00       0.18     237.33      27.21      -0.00      -0.00       0.00

   39   5.1  1.5 -0.5       1.23      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    2800.43       0.00
                           -0.00      -0.00       0.00      -0.02       0.00      -0.00      -0.00       0.00       0.00      -0.00

   40   6.1  1.5 -0.5       0.87       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    2800.21
                            0.00      -0.00      -0.00      -0.02      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.93      -0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.00      15.05    -163.59

   42   8.1  1.5 -0.5       0.05       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -313.74       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.05      -0.54

   43   9.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.76      -0.11       0.00       0.00       0.00

   44  10.1  1.5 -0.5      34.46       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.09      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   45  11.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.17       0.00       0.00       0.78       0.00       0.00

   46  12.1  1.5 -0.5     504.67      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.13      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.27      -0.25       0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.29       0.00      -0.00       0.04       0.00       0.00

   49  15.1  1.5 -0.5       0.00       0.00     178.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.68      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   50  16.1  1.5 -0.5       0.00    -178.03       0.00       0.68       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.68       0.00    -178.02       0.00      -0.00      -0.00       0.00       0.00       0.00

   51  17.1  1.5 -0.5      -0.00      -0.00      -0.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     178.02      -0.00      -0.00       0.00       0.01       0.00       0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.02      -0.12
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     359.08    -230.62

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      23.95    -167.18
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.27       0.17

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -325.92    -260.09
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -80.31    -117.49

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.02     -23.95     325.92      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00    -359.08       0.27      -0.00      80.31       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.12     167.18     260.09       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     230.62      -0.17       0.00     117.49      -0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00     171.81      -0.13      -0.00    -226.80       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.13     179.68    -220.59      -0.00       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.56      -0.00      -0.00      -0.74      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.59      -0.72       0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.35       0.33

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.47       0.01      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -1.33       0.00      -0.00      -0.13       0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.10       0.68
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.28       1.37      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.44       0.00      -0.00       0.45       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       1.15      -0.78

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -1.07      -0.75
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.01      -0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.02       0.02

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                            2.19      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -109.26      15.15

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -5.28    -149.73      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00    -119.76       0.09      -0.00      41.56       0.00       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -107.32    -123.37
                            0.01      -0.00       0.00      -0.01      -0.00       0.00       0.00       0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -4.17      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      98.25    -102.24

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00     -68.61       0.05      -0.00      90.57       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.05      71.76     -88.09       0.00       0.00       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -74.25       4.87
                           -0.02      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.05     -67.24     -72.86      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00     121.25      -0.09       0.00      38.77       0.00      -0.00

   76   1.1  0.5 -0.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.16    -214.51     -92.99      -0.00      -0.00      -0.00

   77   2.1  0.5 -0.5       5.66      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   78   3.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      46.29      -0.03       0.00    -198.93      -0.00      -0.00

   79   4.1  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.20    -264.80      65.77      -0.00      -0.00      -0.00

   80   5.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.80       0.00       0.00      -0.00       0.00       0.00       0.00       0.00     -20.81     226.29

   81   6.1  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     133.31      -0.10       0.00     263.86       0.00       0.00

   82   7.1  0.5 -0.5       2.35       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5     198.38       0.65       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.15      -0.00      -0.00       1.53       0.00       0.50       0.00      -0.00       0.00       0.00

   19   2.1  1.5  0.5      -0.15      -0.00       0.00      -0.55      -0.00       0.33       0.00       0.00      -0.00      -0.01
                         -207.47      -0.68      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   20   3.1  1.5  0.5      -0.00      -0.00       0.00       0.01      -0.00       1.58      -0.00      -0.00      -0.00       0.00
                          254.72       0.84       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   21   4.1  1.5  0.5    -261.89      -0.86      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.15       0.00      -0.52       0.00      -0.00       0.00      -0.02

   22   5.1  1.5  0.5       0.00      -0.00      -0.00      -0.00       0.11       0.00       0.00      -1.23       0.00      -0.00
                           -0.00       0.00      -0.41      -0.00       0.00      -0.00      -1.33      -0.00      -0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.79       0.00       0.00      -0.87      -0.00      -0.00
                           -0.00       0.00      -0.38       0.00      -0.00      -0.00       0.90       0.00      -0.00      -0.00

   24   7.1  1.5  0.5      -0.00      -0.00      -0.91       0.00       0.00      -0.00      -0.58      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.54      -0.00       0.00      -0.93      -0.01      -0.00

   25   8.1  1.5  0.5       0.00       0.00    -303.72      -0.00       0.75      -0.00    -196.05      -0.05      -0.00       0.00
                           -0.00      -0.00      -0.61       0.00    -179.46      -0.00       0.62    -313.74       0.00       0.00

   26   9.1  1.5  0.5       0.91     303.72      -0.00       0.45       0.00       0.14      -0.00       0.00       0.00       0.00
                            0.00       0.61      -0.00     -12.76      -0.00     185.51       0.00      -0.00       0.00       0.00

   27  10.1  1.5  0.5      -0.00       0.00      -0.45      -0.00    -180.88      -0.00      -0.14     -34.46      -0.00       0.00
                            0.00      -0.00      12.76      -0.00       0.34       0.00    -517.44      -1.09      -0.00      -0.00

   28  11.1  1.5  0.5      -0.00      -0.75      -0.00     180.88      -0.00    -195.26      -0.00       0.00       0.00       0.00
                            0.54     179.46       0.00      -0.34       0.00      -0.45      -0.00       0.00      -0.00      -0.00

   29  12.1  1.5  0.5       0.00       0.00      -0.14       0.00     195.26       0.00       1.10    -504.67       0.00       0.00
                            0.00       0.00    -185.51      -0.00       0.45       0.00    -156.01      -0.13      -0.00       0.00

   30  13.1  1.5  0.5       0.58     196.05       0.00       0.14       0.00      -1.10       0.00      -0.00      -0.00       0.00
                           -0.00      -0.62      -0.00     517.44       0.00     156.01      -0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5       0.00       0.05      -0.00      34.46      -0.00     504.67       0.00       0.00       0.00       0.00
                            0.93     313.74       0.00       1.09      -0.00       0.13      -0.00      -0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00    -178.03
                            0.01      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.68

   33  16.1  1.5  0.5      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     178.03       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.68      -0.00

   34  17.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.68
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00     178.02

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.17      -0.00       0.00      -0.29      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.76       0.00      -0.00       0.00      -0.27      -0.00      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.11      -0.00      -0.00      -0.00       0.25       0.00      -0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.78      -0.00      -0.00      -0.04       0.00      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -15.05      -0.05      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          163.59       0.54      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   41   7.1  1.5 -0.5    2800.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.45       0.00      -0.30       0.00      -0.00       0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     150.18       0.00    -100.61      -0.00       0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     257.47       0.00       0.43       5.82       0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.46       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.45    -150.18       0.00      -0.00       0.00      -0.04      -0.00       0.00       0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       3.73       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -257.47      -0.00      -0.00      -0.00      77.33       0.46      -0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       4.14       0.00       0.00       0.00       0.00
                            0.30     100.61      -0.00       0.04       0.00      -0.00       0.00       0.00       0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       4.52       0.00       0.00       0.00
                           -0.00       0.00      -0.43       0.00     -77.33      -0.00      -0.00     -96.94      -0.00       0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.74       0.00       0.00
                            0.00      -0.00      -5.82      -0.00      -0.46      -0.00      96.94       0.00      -0.00      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   14958.45       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   14958.49
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      89.02      -0.00

   52   1.1  1.5 -1.5    -171.81      -0.56      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.13      -0.00      -0.00       1.33       0.00       0.44       0.00      -0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.13       0.00      -0.00       0.47       0.00      -0.28      -0.00      -0.00       0.00       0.00
                         -179.68      -0.59      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00      -0.00      -0.01       0.00      -1.37       0.00       0.00       0.00      -0.00
                          220.59       0.72       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   55   4.1  1.5 -1.5     226.80       0.74       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.13       0.00      -0.45       0.00      -0.00       0.00      -0.01

   56   5.1  1.5 -1.5      -0.00       0.00       0.00       0.00      -0.10      -0.00      -0.00       1.07      -0.00       0.00
                           -0.00       0.00      -0.35      -0.00       0.00      -0.00      -1.15      -0.00      -0.00       0.00

   57   6.1  1.5 -1.5      -0.00      -0.00      -0.00       0.00      -0.68      -0.00      -0.00       0.75       0.00       0.00
                           -0.00       0.00      -0.33       0.00      -0.00      -0.00       0.78       0.00      -0.00      -0.00

   58   7.1  1.5 -1.5      -0.00       0.00       0.79      -0.00      -0.00       0.00       0.50       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.46      -0.00       0.00      -0.81      -0.01      -0.00

   59   8.1  1.5 -1.5      -0.00       0.00     263.03       0.00      -0.65       0.00     169.78       0.04       0.00      -0.00
                           -0.00       0.00      -0.53       0.00    -155.42      -0.00       0.53    -271.70       0.00       0.00

   60   9.1  1.5 -1.5      -0.79    -263.03      -0.00      -0.39      -0.00      -0.12       0.00      -0.00      -0.00      -0.00
                            0.00       0.53       0.00     -11.05      -0.00     160.66       0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5       0.00      -0.00       0.39      -0.00     156.65       0.00       0.12      29.84       0.00      -0.00
                            0.00      -0.00      11.05       0.00       0.29       0.00    -448.12      -0.94      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.65       0.00    -156.65      -0.00     169.10       0.00      -0.00      -0.00      -0.00
                            0.46     155.42       0.00      -0.29      -0.00      -0.39      -0.00       0.00      -0.00      -0.00

   63  12.1  1.5 -1.5      -0.00      -0.00       0.12      -0.00    -169.10       0.00      -0.96     437.06      -0.00      -0.00
                            0.00       0.00    -160.66      -0.00       0.39      -0.00    -135.11      -0.12      -0.00       0.00

   64  13.1  1.5 -1.5      -0.50    -169.78      -0.00      -0.12      -0.00       0.96       0.00       0.00       0.00      -0.00
                           -0.00      -0.53      -0.00     448.12       0.00     135.11       0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5      -0.00      -0.04       0.00     -29.84       0.00    -437.06      -0.00       0.00      -0.00      -0.00
                            0.81     271.70       0.00       0.94      -0.00       0.12      -0.00       0.00       0.00       0.00

   66  15.1  1.5 -1.5      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     154.18
                            0.01      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.59

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -154.18       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.59       0.00

   68  17.1  1.5 -1.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.59
                           -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00     154.17

   69   1.1  0.5  0.5    -113.57       4.38      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       3.11      -0.00       2.90       0.00      -0.00       0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00      -0.00      -1.14       0.00      -0.01       5.66      -0.00      -0.00
                           -0.00      -0.00       1.95       0.00      -0.01      -0.00       4.48       0.01      -0.00       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00      -1.08       0.00       6.21       0.00      -0.00       0.00       0.00
                          -39.53       1.53       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   72   4.1  0.5  0.5       3.40      -0.13       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -5.45      -0.00      -0.45      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5      -0.00       0.00       3.68       0.00      -0.01       0.00       2.38       0.00      -0.00      -0.00
                            0.00       0.00       0.01      -0.00       2.18       0.00      -0.01       3.80      -0.00      -0.00

   74   6.1  0.5  0.5       0.00      -0.00      -0.00       1.95       0.00       2.11       0.00      -0.00       0.00      -0.00
                         -106.52       4.11      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   75   7.1  0.5  0.5       0.00       0.00      -0.00      -0.00      -3.02       0.00      -0.01       2.35       0.00      -0.00
                           -0.00      -0.00       1.14       0.00       0.00       0.00      -4.77      -0.01      -0.00      -0.00

   76   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.01      -0.00      -8.75       0.00      -0.01       2.19      -0.00      -0.00

   77   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -29.21       1.12       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   78   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -7.78      -0.00       0.01      -0.00      -1.20       0.01      -0.00       0.00

   79   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.02       0.00      -9.66       0.00       0.00      -4.17      -0.00       0.00

   80   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       7.28       0.00      -4.88      -0.00       0.00      -0.00       0.00

   81   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       9.76       0.00      -0.01       0.00      -5.89      -0.02      -0.00       0.00

   82   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -225.36       8.69       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5      -0.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -178.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.02       0.12     171.81       0.56       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     359.08    -230.62      -0.13      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00     -23.95     167.18      -0.13      -0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.27       0.17    -179.68      -0.59      -0.00

   37   3.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00     325.92     260.09      -0.00      -0.00       0.00
                           -0.01       0.00      -0.00       0.00       0.00       0.00      -0.00     220.59       0.72       0.00

   38   4.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00    -226.80      -0.74      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -80.31    -117.49       0.00      -0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.02      23.95    -325.92       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00    -359.08       0.27      -0.00      80.31      -0.00       0.00      -0.00       0.00      -0.35

   40   6.1  1.5 -0.5       0.00      -0.12    -167.18    -260.09      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00     230.62      -0.17       0.00     117.49      -0.00      -0.00      -0.00       0.00      -0.33

   41   7.1  1.5 -0.5       0.00    -171.81       0.13       0.00     226.80      -0.00      -0.00      -0.00      -0.00      -0.79
                            0.00       0.13     179.68    -220.59      -0.00       0.00       0.00      -0.00       0.00      -0.00

   42   8.1  1.5 -0.5       0.00      -0.56       0.00       0.00       0.74       0.00      -0.00       0.00       0.00    -263.03
                           -0.00       0.00       0.59      -0.72       0.00      -0.00      -0.00      -0.00      -0.00      -0.53

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.79     263.03      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.35       0.33       0.00       0.53      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.47      -0.01       0.00       0.00       0.00      -0.00       0.00      -0.39
                           -0.00      -1.33       0.00      -0.00      -0.13       0.00      -0.00       0.00      -0.00      11.05

   45  11.1  1.5 -0.5       0.00      -0.00       0.00       0.00      -0.00      -0.10      -0.68      -0.00      -0.65      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.46     155.42       0.00

   46  12.1  1.5 -0.5       0.00      -0.00      -0.28      -1.37       0.00      -0.00      -0.00       0.00       0.00      -0.12
                            0.00      -0.44       0.00      -0.00       0.45       0.00       0.00       0.00       0.00    -160.66

   47  13.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.50     169.78       0.00
                            0.00      -0.00       0.00       0.00      -0.00       1.15      -0.78      -0.00      -0.53      -0.00

   48  14.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00       1.07       0.75       0.00       0.04      -0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.81     271.70       0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                          -89.02      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.01      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.01      -0.00       0.00       0.00      -0.00      -0.00

   51  17.1  1.5 -0.5   14958.67      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.02       0.02      -0.00       0.00      -0.00

   52   1.1  1.5 -1.5      -0.00    2799.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     198.27    -233.13      -0.53      -0.00       0.00      -0.00       0.00      -0.00

   53   2.1  1.5 -1.5      -0.00       0.00    2799.89       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -198.27      -0.00       0.17    -711.99       0.00       0.00       0.00      -0.00       2.28

   54   3.1  1.5 -1.5       0.00       0.00       0.00    2800.18       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     233.13      -0.17       0.00     -81.63       0.00       0.00       0.00      -0.00       0.32

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00    2800.33       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.53     711.99      81.63      -0.00      -0.00       0.00       0.00       0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    2800.43       0.00       0.00       0.00       0.00
                           -0.02       0.00      -0.00      -0.00       0.00       0.00      -0.00     -45.14      -0.15      -0.00

   57   6.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00    2800.21       0.00       0.00       0.00
                           -0.02      -0.00      -0.00      -0.00      -0.00       0.00       0.00     490.76       1.61      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    2800.09       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      45.14    -490.76       0.00      -0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.15      -1.61       0.00      -0.00      -0.00

   60   9.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.71
                            0.00       0.00      -2.28      -0.32       0.00       0.00       0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -1.34    -450.54       0.00

   62  11.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.52       0.00       0.00       2.35       0.00       0.00      -0.00      -0.00    -772.40

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.90     301.84      -0.00

   64  13.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.82      -0.74       0.00      -0.00      -0.00      -0.00       0.00      -1.28

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.86       0.00      -0.00       0.12       0.00       0.00       0.00      -0.00     -17.47

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00       0.00      -0.01      -0.00       0.00      -0.00       0.00      -0.00

   67  16.1  1.5 -1.5       0.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -154.17       0.00      -0.00      -0.00       0.00       0.00       0.00       0.01       0.00       0.00

   68  17.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.01       0.03       0.00       0.00      -0.00      -0.00       0.00       0.00

   69   1.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   1.1  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -196.71       7.59      -0.00
                            0.00       0.00       0.00       0.00       0.00    -189.24      26.25       0.00      -0.00      -0.00

   77   2.1  0.5 -0.5       0.00      -0.01      -9.14    -259.33      -0.00      -0.00       0.00       0.00       0.00       0.01
                           -0.00    -207.44       0.15      -0.00      71.99       0.00       0.00      -0.00      -0.00       3.37

   78   3.1  0.5 -0.5       0.00       0.00       0.00      -0.00       0.00    -185.89    -213.69       0.00       0.00       0.00
                           -0.01      -0.00       0.00       0.00       0.00      -0.00      -0.00     -68.48       2.64       0.00

   79   4.1  0.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       5.89      -0.23       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     170.17    -177.09      -0.00       0.00       0.00

   80   5.1  0.5 -0.5       0.00    -118.84       0.09      -0.00     156.87       0.00       0.00      -0.00       0.00       6.38
                            0.00       0.09     124.29    -152.58       0.00       0.00       0.00       0.00       0.00       0.01

   81   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00    -128.60       8.43       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -184.50       7.12      -0.00

   82   7.1  0.5 -0.5       0.00      -0.09    -116.46    -126.20      -0.00      -0.00      -0.00       0.00       0.00      -0.01
                           -0.00     210.00      -0.16       0.00      67.14       0.00      -0.00      -0.00      -0.00       1.98


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -207.44

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -9.14
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.15

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -259.33
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      71.99

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -189.24       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      26.25       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -196.71       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       7.59       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       3.37

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.38       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.98
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.03      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       7.77

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       9.81
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.16       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     214.51      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      92.99      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      29.21

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.12

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       8.75      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.19       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   35   1.1  1.5 -0.5      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                            1.33       0.00       0.44       0.00      -0.00       0.00       0.00      -0.00      -0.00     119.76

   36   2.1  1.5 -0.5      -0.47      -0.00       0.28       0.00       0.00      -0.00      -0.00       0.00      -0.00      -5.28
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.09

   37   3.1  1.5 -0.5       0.01      -0.00       1.37      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -149.73
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   38   4.1  1.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.13       0.00      -0.45       0.00      -0.00       0.00      -0.01      -0.00      -0.00     -41.56

   39   5.1  1.5 -0.5      -0.00       0.10       0.00       0.00      -1.07       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -1.15      -0.00      -0.00       0.00      -0.02     109.26      -0.00

   40   6.1  1.5 -0.5      -0.00       0.68       0.00       0.00      -0.75      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.78       0.00      -0.00      -0.00      -0.02     -15.15      -0.00

   41   7.1  1.5 -0.5       0.00       0.00      -0.00      -0.50      -0.00      -0.00       0.00      -0.00    -113.57       0.00
                           -0.00      -0.46      -0.00       0.00      -0.81      -0.01      -0.00       0.00      -0.00       0.00

   42   8.1  1.5 -0.5      -0.00       0.65      -0.00    -169.78      -0.04      -0.00       0.00      -0.00       4.38       0.00
                            0.00    -155.42      -0.00       0.53    -271.70       0.00       0.00      -0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.39       0.00       0.12      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                          -11.05      -0.00     160.66       0.00      -0.00       0.00       0.00       0.00       0.00      -1.95

   44  10.1  1.5 -0.5      -0.00    -156.65      -0.00      -0.12     -29.84      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.29       0.00    -448.12      -0.94      -0.00      -0.00      -0.00      -3.11      -0.00

   45  11.1  1.5 -0.5     156.65      -0.00    -169.10      -0.00       0.00       0.00       0.00       0.00       0.00      -1.14
                           -0.29       0.00      -0.39      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.01

   46  12.1  1.5 -0.5       0.00     169.10       0.00       0.96    -437.06       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.39       0.00    -135.11      -0.12      -0.00       0.00      -0.00      -2.90       0.00

   47  13.1  1.5 -0.5       0.12       0.00      -0.96       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.01
                          448.12       0.00     135.11      -0.00       0.00       0.00       0.00      -0.00      -0.00      -4.48

   48  14.1  1.5 -0.5      29.84      -0.00     437.06       0.00       0.00       0.00       0.00      -0.00      -0.00       5.66
                            0.94      -0.00       0.12      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.01

   49  15.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00    -154.18      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.59      -0.00      -0.00       0.00

   50  16.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00      -0.00     154.18       0.00      -0.59       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.59      -0.00    -154.17       0.00      -0.00

   51  17.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.59      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00     154.17       0.00      -0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.52      -0.00       0.00      -0.86      -0.01      -0.00       0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.82      -0.00      -0.00       0.00      -0.01       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.74       0.00      -0.00       0.00      -0.03       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.35      -0.00      -0.00      -0.12       0.01      -0.00      -0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.34       0.00      -0.90       0.00      -0.00       0.00      -0.01       0.00       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          450.54       0.00    -301.84      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     772.40       0.00       1.28      17.47       0.00      -0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5       0.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.11      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00       3.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     231.99       1.37      -0.00       0.00      -0.00       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00       4.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.11       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       4.52       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -231.99      -0.00      -0.00    -290.82      -0.00       0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       5.74       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.37      -0.00     290.82       0.00      -0.00      -0.00      -0.00       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   14958.45       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00    -267.07       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   14958.49       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   14958.67       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     267.07      -0.00       0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    6830.62       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    6830.62
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -269.64       0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      41.69

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     196.55       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   76   1.1  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                            5.38      -0.00       5.03       0.00      -0.00       0.00      -0.00       0.00       0.00    -294.87

   77   2.1  0.5 -0.5      -0.00      -1.98       0.00      -0.02       9.81      -0.00      -0.00       0.00      -0.00       0.00
                            0.00      -0.01      -0.00       7.77       0.01      -0.00       0.00      -0.00     294.87      -0.00

   78   3.1  0.5 -0.5      -1.88       0.00      10.76       0.00      -0.00       0.00       0.00       0.00      -0.00     376.01
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   79   4.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -9.44      -0.00      -0.79      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     209.80

   80   5.1  0.5 -0.5       0.00      -0.01       0.00       4.11       0.00      -0.00      -0.00      -0.00    -324.21       0.00
                           -0.00       3.77       0.00      -0.01       6.59      -0.00      -0.00       0.00      -0.00       0.00

   81   6.1  0.5 -0.5       3.38       0.00       3.65       0.00      -0.00       0.00      -0.00       0.00      -0.00     203.77
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   82   7.1  0.5 -0.5      -0.00      -5.23       0.00      -0.01       4.07       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -8.27      -0.02      -0.00      -0.00      -0.00    -110.47      -0.00


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

    1   1.1  1.5  1.5       0.00      -0.00    -118.84       0.00      -0.09       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.09      -0.00     210.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.09       0.00    -116.46       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     124.29       0.00      -0.16       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00      -0.00      -0.00       0.00    -126.20       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -152.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00     156.87       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      67.14       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5    -185.89       0.00       0.00    -128.60      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     170.17       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5    -213.69      -0.00       0.00       8.43      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -177.09       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       5.89      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.48      -0.00       0.00    -184.50      -0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00      -0.23       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.64       0.00       0.00       7.12      -0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       6.38      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.01      -0.00       1.98       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -1.88      -0.00       0.00       3.38      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -9.44      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00      -0.00      -0.01       0.00      -5.23       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       3.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      10.76      -0.00       0.00       3.65       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00      -0.00       4.11       0.00      -0.01       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.01      -0.00      -8.27       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.00       0.00       0.00      -0.00       4.07       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       6.59      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00     -68.61
                          -46.29       0.20      -0.00    -133.31       0.00       0.00    -119.76      -0.00      -0.00       0.05

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -5.28       0.00       0.00       0.05
                            0.03     264.80      -0.00       0.10      -0.00       0.00       0.09       0.00      -0.00      71.76

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -149.73      -0.00      -0.00      -0.00
                           -0.00     -65.77      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00     -88.09

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      90.57
                          198.93       0.00      -0.00    -263.86      -0.00       0.00      41.56       0.00      -0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -107.32       0.00       0.00
                            0.00       0.00      20.81      -0.00       0.00    -109.26       0.00      -0.00      98.25       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -123.37      -0.00       0.00
                            0.00       0.00    -226.29      -0.00       0.00      15.15       0.00      -0.00    -102.24       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    -113.57       0.00       0.00       3.40      -0.00
                           -0.00       0.00      -0.00       0.00     225.36       0.00      -0.00     -39.53      -0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       4.38       0.00       0.00      -0.13       0.00
                           -0.00       0.00       0.00      -0.00      -8.69      -0.00      -0.00       1.53       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       3.68
                            7.78       0.02       0.00      -9.76      -0.00      -0.00       1.95       0.00       0.00       0.01

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.08      -0.00       0.00
                            0.00      -0.00      -7.28      -0.00      -0.00       3.11       0.00       0.00      -5.45      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -1.14       0.00      -0.00      -0.01
                           -0.01       9.66      -0.00       0.01      -0.00      -0.00      -0.01       0.00      -0.00       2.18

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       6.21      -0.00       0.00
                            0.00      -0.00       4.88      -0.00      -0.00       2.90      -0.00       0.00      -0.45       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00      -0.00       2.38
                            1.20      -0.00       0.00       5.89       0.00       0.00       4.48      -0.00      -0.00      -0.01

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       5.66      -0.00       0.00       0.00
                           -0.01       4.17      -0.00       0.02       0.00      -0.00       0.01      -0.00      -0.00       3.80

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.01      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00     -68.61       0.00      -0.05       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.05       0.00    -121.25       0.16       0.00     -46.29       0.20      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.05       0.00     -67.24       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -71.76      -0.00       0.09     214.51      -0.00       0.03     264.80      -0.00

   37   3.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00     -72.86       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      88.09      -0.00      -0.00      92.99      -0.00      -0.00     -65.77      -0.00

   38   4.1  1.5 -0.5       0.00       0.00      90.57       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -38.77       0.00      -0.00     198.93       0.00      -0.00

   39   5.1  1.5 -0.5    -107.32       0.00       0.00     -74.25      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -98.25      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      20.81

   40   6.1  1.5 -0.5    -123.37      -0.00       0.00       4.87      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     102.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    -226.29

   41   7.1  1.5 -0.5       0.00       3.40      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           39.53       0.00      -0.00     106.52       0.00       0.00      29.21      -0.00       0.00      -0.00

   42   8.1  1.5 -0.5       0.00      -0.13       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.53      -0.00      -0.00      -4.11       0.00       0.00      -1.12      -0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       3.68      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.01       0.00      -1.14       0.01      -0.00       7.78       0.02       0.00

   44  10.1  1.5 -0.5      -1.08      -0.00       0.00       1.95      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       5.45       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -7.28

   45  11.1  1.5 -0.5       0.00      -0.00      -0.01       0.00      -3.02       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -2.18      -0.00      -0.00       8.75      -0.00      -0.01       9.66      -0.00

   46  12.1  1.5 -0.5       6.21      -0.00       0.00       2.11       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.45      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       4.88

   47  13.1  1.5 -0.5       0.00      -0.00       2.38       0.00      -0.01       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.01       0.00       4.77       0.01       0.00       1.20      -0.00       0.00

   48  14.1  1.5 -0.5      -0.00       0.00       0.00      -0.00       2.35       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -3.80       0.00       0.01      -2.19       0.00      -0.01       4.17      -0.00

   49  15.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.01      -0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01       0.00      -0.00    -118.84
                            0.00       0.00       0.00       0.00       0.00      -0.00     207.44       0.00       0.00      -0.09

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -9.14       0.00       0.00       0.09
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.15      -0.00       0.00    -124.29

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00    -259.33      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00     152.58

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     156.87
                            0.00       0.00       0.00       0.00       0.00      -0.00     -71.99      -0.00       0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -185.89       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     189.24      -0.00       0.00    -170.17      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -213.69      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     -26.25      -0.00       0.00     177.09      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    -196.71       0.00       0.00       5.89      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      68.48       0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       7.59       0.00       0.00      -0.23       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.64      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.01       0.00       0.00       6.38
                            0.00       0.00       0.00       0.00       0.00       0.00      -3.37      -0.00      -0.00      -0.01

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.88      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -5.38      -0.00      -0.00       9.44       0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -1.98       0.00      -0.00      -0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00       0.00      -3.77

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      10.76      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -5.03       0.00      -0.00       0.79      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.02       0.00      -0.00       4.11
                            0.00       0.00       0.00       0.00       0.00      -0.00      -7.77       0.00       0.00       0.01

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       9.81      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00       0.00      -6.59

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -324.21
                          269.64      -0.00       0.00    -196.55       0.00      -0.00    -294.87      -0.00      -0.00       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     376.01      -0.00       0.00
                           -0.00       0.00     -41.69      -0.00      -0.00     294.87       0.00      -0.00    -209.80      -0.00

   71   3.1  0.5  0.5    6831.55       0.00       0.00       0.00       0.00       0.00    -376.01      -0.00      -0.00      -0.00
                            0.00    -110.75       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    -112.86

   72   4.1  0.5  0.5       0.00    6831.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00       9.71
                          110.75       0.00      -0.00    -373.33      -0.00       0.00     209.80       0.00       0.00      -0.00

   73   5.1  0.5  0.5       0.00       0.00    6831.70       0.00       0.00     324.21      -0.00       0.00      -9.71       0.00
                           -0.00       0.00       0.00      -0.00     321.65      -0.00       0.00     112.86       0.00       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00    6831.77       0.00       0.00    -203.77       0.00       0.00       0.00
                            0.00     373.33       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -304.09

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00    6832.25      -0.00      -0.00     276.61       0.00      -0.00
                           -0.00       0.00    -321.65      -0.00       0.00    -110.47      -0.00      -0.00     346.18      -0.00

   76   1.1  0.5 -0.5       0.00       0.00     324.21       0.00      -0.00    6830.62       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     110.47       0.00      -0.00    -269.64       0.00      -0.00

   77   2.1  0.5 -0.5    -376.01       0.00      -0.00    -203.77      -0.00       0.00    6830.62       0.00       0.00       0.00
                           -0.00    -209.80      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      41.69

   78   3.1  0.5 -0.5      -0.00       0.00       0.00       0.00     276.61       0.00       0.00    6831.55       0.00       0.00
                           -0.00      -0.00    -112.86       0.00       0.00     269.64      -0.00      -0.00     110.75      -0.00

   79   4.1  0.5 -0.5      -0.00       0.00      -9.71       0.00       0.00       0.00       0.00       0.00    6831.58       0.00
                            0.00      -0.00      -0.00      -0.00    -346.18      -0.00       0.00    -110.75      -0.00       0.00

   80   5.1  0.5 -0.5      -0.00       9.71       0.00       0.00      -0.00       0.00       0.00       0.00       0.00    6831.70
                          112.86       0.00      -0.00     304.09       0.00       0.00     -41.69       0.00      -0.00      -0.00

   81   6.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00     -59.95       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -304.09      -0.00      -0.00    -196.55      -0.00      -0.00    -373.33      -0.00

   82   7.1  0.5 -0.5    -276.61      -0.00       0.00      59.95       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     346.18      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     321.65


   Nr   State  S   Sz       81         82

    1   1.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   18   1.1  1.5  0.5       0.00      -0.05
                           -0.00     121.25

   19   2.1  1.5  0.5       0.00     -67.24
                            0.00      -0.09

   20   3.1  1.5  0.5       0.00     -72.86
                            0.00       0.00

   21   4.1  1.5  0.5       0.00      -0.00
                           -0.00      38.77

   22   5.1  1.5  0.5     -74.25      -0.00
                           -0.00       0.00

   23   6.1  1.5  0.5       4.87      -0.00
                           -0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00
                         -106.52      -0.00

   25   8.1  1.5  0.5      -0.00       0.00
                            4.11      -0.00

   26   9.1  1.5  0.5      -0.00      -0.00
                           -0.00       1.14

   27  10.1  1.5  0.5       1.95      -0.00
                            0.00       0.00

   28  11.1  1.5  0.5       0.00      -3.02
                            0.00       0.00

   29  12.1  1.5  0.5       2.11       0.00
                            0.00       0.00

   30  13.1  1.5  0.5       0.00      -0.01
                           -0.00      -4.77

   31  14.1  1.5  0.5      -0.00       2.35
                           -0.00      -0.01

   32  15.1  1.5  0.5       0.00       0.00
                            0.00      -0.00

   33  16.1  1.5  0.5      -0.00      -0.00
                            0.00      -0.00

   34  17.1  1.5  0.5       0.00      -0.00
                           -0.00      -0.00

   35   1.1  1.5 -0.5       0.00       0.00
                         -133.31       0.00

   36   2.1  1.5 -0.5       0.00       0.00
                            0.10      -0.00

   37   3.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00
                         -263.86      -0.00

   39   5.1  1.5 -0.5       0.00       0.00
                           -0.00       0.00

   40   6.1  1.5 -0.5       0.00       0.00
                           -0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00
                            0.00     225.36

   42   8.1  1.5 -0.5       0.00       0.00
                           -0.00      -8.69

   43   9.1  1.5 -0.5       0.00       0.00
                           -9.76      -0.00

   44  10.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00
                            0.01      -0.00

   46  12.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00
                            5.89       0.00

   48  14.1  1.5 -0.5       0.00       0.00
                            0.02       0.00

   49  15.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00
                            0.00       0.00

   52   1.1  1.5 -1.5       0.00      -0.09
                            0.00    -210.00

   53   2.1  1.5 -1.5       0.00    -116.46
                           -0.00       0.16

   54   3.1  1.5 -1.5       0.00    -126.20
                           -0.00      -0.00

   55   4.1  1.5 -1.5       0.00      -0.00
                            0.00     -67.14

   56   5.1  1.5 -1.5    -128.60      -0.00
                            0.00      -0.00

   57   6.1  1.5 -1.5       8.43      -0.00
                            0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00
                          184.50       0.00

   59   8.1  1.5 -1.5      -0.00       0.00
                           -7.12       0.00

   60   9.1  1.5 -1.5      -0.00      -0.01
                            0.00      -1.98

   61  10.1  1.5 -1.5       3.38      -0.00
                           -0.00      -0.00

   62  11.1  1.5 -1.5       0.00      -5.23
                           -0.00      -0.00

   63  12.1  1.5 -1.5       3.65       0.00
                           -0.00      -0.00

   64  13.1  1.5 -1.5       0.00      -0.01
                            0.00       8.27

   65  14.1  1.5 -1.5      -0.00       4.07
                            0.00       0.02

   66  15.1  1.5 -1.5       0.00       0.00
                           -0.00       0.00

   67  16.1  1.5 -1.5      -0.00      -0.00
                           -0.00       0.00

   68  17.1  1.5 -1.5       0.00      -0.00
                            0.00       0.00

   69   1.1  0.5  0.5      -0.00       0.00
                           -0.00     110.47

   70   2.1  0.5  0.5     203.77       0.00
                            0.00       0.00

   71   3.1  0.5  0.5      -0.00    -276.61
                            0.00       0.00

   72   4.1  0.5  0.5      -0.00      -0.00
                           -0.00    -346.18

   73   5.1  0.5  0.5      -0.00       0.00
                          304.09       0.00

   74   6.1  0.5  0.5      -0.00      59.95
                            0.00      -0.00

   75   7.1  0.5  0.5     -59.95       0.00
                            0.00       0.00

   76   1.1  0.5 -0.5       0.00       0.00
                          196.55      -0.00

   77   2.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   78   3.1  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   79   4.1  0.5 -0.5       0.00       0.00
                          373.33       0.00

   80   5.1  0.5 -0.5       0.00       0.00
                            0.00    -321.65

   81   6.1  0.5 -0.5    6831.77       0.00
                           -0.00      -0.00

   82   7.1  0.5 -0.5       0.00    6832.25
                            0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1392.55286257    -0.00370018     -812.09      0.00000000        0.00      0.0000
     2 -1392.55286257    -0.00370018     -812.09      0.00000000        0.00      0.0000
     3 -1392.55286012    -0.00369772     -811.56      0.00000246        0.54      0.0001
     4 -1392.55286012    -0.00369772     -811.56      0.00000246        0.54      0.0001
     5 -1392.55285567    -0.00369327     -810.58      0.00000691        1.52      0.0002
     6 -1392.55285567    -0.00369327     -810.58      0.00000691        1.52      0.0002
     7 -1392.55285477    -0.00369237     -810.38      0.00000781        1.71      0.0002
     8 -1392.55285477    -0.00369237     -810.38      0.00000781        1.71      0.0002
     9 -1392.55284653    -0.00368413     -808.57      0.00001605        3.52      0.0004
    10 -1392.55284653    -0.00368413     -808.57      0.00001605        3.52      0.0004
    11 -1392.54915655     0.00000585        1.28      0.00370603      813.38      0.1008
    12 -1392.54915655     0.00000585        1.28      0.00370603      813.38      0.1008
    13 -1392.54915292     0.00000948        2.08      0.00370966      814.18      0.1009
    14 -1392.54915292     0.00000948        2.08      0.00370966      814.18      0.1009
    15 -1392.54914611     0.00001628        3.57      0.00371646      815.67      0.1011
    16 -1392.54914611     0.00001628        3.57      0.00371646      815.67      0.1011
    17 -1392.54914451     0.00001789        3.93      0.00371807      816.02      0.1012
    18 -1392.54914451     0.00001789        3.93      0.00371807      816.02      0.1012
    19 -1392.54627187     0.00289053      634.40      0.00659071     1446.49      0.1793
    20 -1392.54627187     0.00289053      634.40      0.00659071     1446.49      0.1793
    21 -1392.54626603     0.00289637      635.68      0.00659654     1447.77      0.1795
    22 -1392.54626603     0.00289637      635.68      0.00659654     1447.77      0.1795
    23 -1392.54626447     0.00289793      636.02      0.00659810     1448.12      0.1795
    24 -1392.54626447     0.00289793      636.02      0.00659810     1448.12      0.1795
    25 -1392.54421123     0.00495117     1086.66      0.00865134     1898.75      0.2354
    26 -1392.54421123     0.00495117     1086.66      0.00865134     1898.75      0.2354
    27 -1392.54420555     0.00495685     1087.90      0.00865703     1900.00      0.2356
    28 -1392.54420555     0.00495685     1087.90      0.00865703     1900.00      0.2356
    29 -1392.53977274     0.00938966     2060.79      0.01308984     2872.89      0.3562
    30 -1392.53977274     0.00938966     2060.79      0.01308984     2872.89      0.3562
    31 -1392.53977241     0.00938999     2060.86      0.01309016     2872.96      0.3562
    32 -1392.53977241     0.00938999     2060.86      0.01309016     2872.96      0.3562
    33 -1392.53977236     0.00939004     2060.88      0.01309022     2872.97      0.3562
    34 -1392.53977236     0.00939004     2060.88      0.01309022     2872.97      0.3562
    35 -1392.53977205     0.00939035     2060.94      0.01309052     2873.04      0.3562
    36 -1392.53977205     0.00939035     2060.94      0.01309052     2873.04      0.3562
    37 -1392.53977157     0.00939083     2061.05      0.01309100     2873.14      0.3562
    38 -1392.53977157     0.00939083     2061.05      0.01309100     2873.14      0.3562
    39 -1392.53662587     0.01253653     2751.45      0.01623671     3563.55      0.4418
    40 -1392.53662587     0.01253653     2751.45      0.01623671     3563.55      0.4418
    41 -1392.53662548     0.01253692     2751.54      0.01623710     3563.63      0.4418
    42 -1392.53662548     0.01253692     2751.54      0.01623710     3563.63      0.4418
    43 -1392.53662463     0.01253776     2751.72      0.01623794     3563.82      0.4419
    44 -1392.53662463     0.01253776     2751.72      0.01623794     3563.82      0.4419
    45 -1392.53662427     0.01253813     2751.80      0.01623831     3563.90      0.4419
    46 -1392.53662427     0.01253813     2751.80      0.01623831     3563.90      0.4419
    47 -1392.53392680     0.01523560     3343.83      0.01893578     4155.92      0.5153
    48 -1392.53392680     0.01523560     3343.83      0.01893578     4155.92      0.5153
    49 -1392.53392662     0.01523577     3343.87      0.01893595     4155.96      0.5153
    50 -1392.53392662     0.01523577     3343.87      0.01893595     4155.96      0.5153
    51 -1392.53392632     0.01523608     3343.93      0.01893626     4156.03      0.5153
    52 -1392.53392632     0.01523608     3343.93      0.01893626     4156.03      0.5153
    53 -1392.53191342     0.01724898     3785.71      0.02094916     4597.81      0.5701
    54 -1392.53191342     0.01724898     3785.71      0.02094916     4597.81      0.5701
    55 -1392.53191291     0.01724949     3785.83      0.02094967     4597.92      0.5701
    56 -1392.53191291     0.01724949     3785.83      0.02094967     4597.92      0.5701
    57 -1392.52003451     0.02912788     6392.83      0.03282806     7204.93      0.8933
    58 -1392.52003451     0.02912788     6392.83      0.03282806     7204.93      0.8933
    59 -1392.52003233     0.02913007     6393.31      0.03283025     7205.41      0.8934
    60 -1392.52003233     0.02913007     6393.31      0.03283025     7205.41      0.8934
    61 -1392.52003045     0.02913194     6393.72      0.03283212     7205.82      0.8934
    62 -1392.52003045     0.02913194     6393.72      0.03283212     7205.82      0.8934
    63 -1392.52002927     0.02913312     6393.98      0.03283330     7206.08      0.8934
    64 -1392.52002927     0.02913312     6393.98      0.03283330     7206.08      0.8934
    65 -1392.51494040     0.03422200     7510.86      0.03792218     8322.96      1.0319
    66 -1392.51494040     0.03422200     7510.86      0.03792218     8322.96      1.0319
    67 -1392.51493766     0.03422473     7511.46      0.03792491     8323.56      1.0320
    68 -1392.51493766     0.03422473     7511.46      0.03792491     8323.56      1.0320
    69 -1392.51493611     0.03422629     7511.80      0.03792647     8323.90      1.0320
    70 -1392.51493611     0.03422629     7511.80      0.03792647     8323.90      1.0320
    71 -1392.48222337     0.06693903    14691.42      0.07063921    15503.51      1.9222
    72 -1392.48222337     0.06693903    14691.42      0.07063921    15503.51      1.9222
    73 -1392.48222304     0.06693936    14691.49      0.07063954    15503.59      1.9222
    74 -1392.48222304     0.06693936    14691.49      0.07063954    15503.59      1.9222
    75 -1392.48222274     0.06693966    14691.56      0.07063984    15503.65      1.9222
    76 -1392.48222274     0.06693966    14691.56      0.07063984    15503.65      1.9222
    77 -1392.48019534     0.06896706    15136.52      0.07266724    15948.62      1.9774
    78 -1392.48019534     0.06896706    15136.52      0.07266724    15948.62      1.9774
    79 -1392.48019485     0.06896755    15136.63      0.07266773    15948.72      1.9774
    80 -1392.48019485     0.06896755    15136.63      0.07266773    15948.72      1.9774
    81 -1392.47897832     0.07018408    15403.62      0.07388426    16215.72      2.0105
    82 -1392.47897832     0.07018408    15403.62      0.07388426    16215.72      2.0105


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.000022360  -0.000021424   0.000036191   0.000155940   0.000032721   0.000335809  -0.000002064  -0.000249402
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000094   0.000000091  -0.000000291  -0.000001255   0.000000107   0.000001095   0.000000002   0.000000168
                         0.000025277  -0.000024219   0.000096604   0.000416248  -0.000021447  -0.000220113   0.000002946   0.000355983

    3    3.1  1.5  1.5   0.000000444  -0.000000425   0.000000014   0.000000060  -0.000000102  -0.000001045  -0.000000011  -0.000001295
                         0.000051975  -0.000049800   0.000046072   0.000198516   0.000001488   0.000015276  -0.000002163  -0.000261413

    4    4.1  1.5  1.5  -0.000033016   0.000031634  -0.000113756  -0.000490151   0.000020511   0.000210502  -0.000001793  -0.000216630
                        -0.000000131   0.000000126  -0.000000246  -0.000001063   0.000000075   0.000000762  -0.000000006  -0.000000712

    5    5.1  1.5  1.5   0.000031229   0.000032594   0.000038960  -0.000009042   0.000170799  -0.000016643   0.000221119  -0.000001830
                         0.000001422   0.000001485   0.000016102  -0.000003737   0.000157428  -0.000015341   0.000098859  -0.000000820

    6    6.1  1.5  1.5  -0.000324183  -0.000338345  -0.000023162   0.000005376  -0.000046347   0.000004516  -0.000034246   0.000000283
                        -0.000012907  -0.000013477  -0.000010423   0.000002419  -0.000042518   0.000004143  -0.000015697   0.000000130

    7    7.1  1.5  1.5  -0.000013571  -0.000014171  -0.000033261   0.000007719   0.000049143  -0.000004789  -0.000002250   0.000000019
                         0.000338271   0.000353049   0.000079167  -0.000018373  -0.000053799   0.000005242   0.000005016  -0.000000041

    8    8.1  1.5  1.5  -0.016183869  -0.016898821  -0.039500531   0.009167092   0.058380848  -0.005688952  -0.002754819   0.000022802
                         0.401153836   0.418678598   0.093974056  -0.021809755  -0.064029290   0.006238926   0.005958270  -0.000049285

    9    9.1  1.5  1.5   0.041055629  -0.039337185   0.137862961   0.594023549  -0.021389897  -0.219524379   0.001938934   0.234317762
                         0.000135551  -0.000130381   0.000101565   0.000439087  -0.000037114  -0.000378220  -0.000001858  -0.000185300

   10   10.1  1.5  1.5   0.321496643   0.335541565   0.050301468  -0.011674088   0.170953984  -0.016657834   0.197349531  -0.001633178
                         0.013056752   0.013633467   0.021606519  -0.005014356   0.157347309  -0.015332637   0.088590950  -0.000734692

   11   11.1  1.5  1.5  -0.000086475   0.000082245   0.000034710   0.000150829  -0.000128547  -0.001314727   0.000000214   0.000104889
                        -0.039463386   0.037811579  -0.121565263  -0.523800075   0.024733371   0.253840418  -0.003023515  -0.365373465

   12   12.1  1.5  1.5  -0.212576019  -0.221862580   0.018277481  -0.004241903   0.122285443  -0.011915489   0.177368226  -0.001467748
                        -0.008281762  -0.008647683   0.006927162  -0.001607962   0.112855603  -0.010997532   0.079011206  -0.000654821

   13   13.1  1.5  1.5   0.023290007  -0.022315139   0.032551558   0.140258209   0.040414504   0.414768134  -0.002583090  -0.312197388
                        -0.000169571   0.000162561  -0.000270372  -0.001165030   0.000033778   0.000346301   0.000000275   0.000031206

   14   14.1  1.5  1.5   0.000534947  -0.000511943  -0.000000796  -0.000003846  -0.000047795  -0.000485089  -0.000020229  -0.002315539
                         0.055407662  -0.053088485   0.034974900   0.150699655   0.005807681   0.059611176  -0.003083200  -0.372552012

   15   15.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000011   0.000000010  -0.000000012  -0.000000052   0.000000003   0.000000030   0.000000000   0.000000014

   16   16.1  1.5  1.5  -0.000000014  -0.000000014  -0.000000001   0.000000000   0.000000006  -0.000000001   0.000000008  -0.000000000
                        -0.000000001  -0.000000001  -0.000000000   0.000000000   0.000000006  -0.000000001   0.000000003  -0.000000000

   17   17.1  1.5  1.5  -0.000000004   0.000000003   0.000000005   0.000000024   0.000000002   0.000000024   0.000000000   0.000000021
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   18    1.1  1.5  0.5   0.000001863   0.000001946  -0.000019151   0.000004445   0.000309363  -0.000030146   0.000121096  -0.000001004
                        -0.000050026  -0.000052212   0.000047427  -0.000011007  -0.000336731   0.000032811  -0.000269533   0.000002231

   19    2.1  1.5  0.5  -0.000217580  -0.000227086  -0.000136547   0.000031690   0.000044510  -0.000004337  -0.000117801   0.000000975
                        -0.000008844  -0.000009235  -0.000056504   0.000013113   0.000040405  -0.000003937  -0.000051793   0.000000429

   20    3.1  1.5  0.5   0.000013773   0.000014375   0.000107866  -0.000025034   0.000018442  -0.000001797   0.000159811  -0.000001322
                         0.000000852   0.000000889   0.000044079  -0.000010230   0.000017875  -0.000001742   0.000070909  -0.000000587

   21    4.1  1.5  0.5   0.000009700   0.000010129  -0.000019149   0.000004444  -0.000035623   0.000003472  -0.000064814   0.000000537
                        -0.000247164  -0.000257962   0.000048315  -0.000011213   0.000037962  -0.000003699   0.000146628  -0.000001213

   22    5.1  1.5  0.5  -0.000000618   0.000000592  -0.000000022  -0.000000094   0.000000159   0.000001629   0.000000018   0.000001997
                        -0.000025752   0.000024674   0.000034286   0.000147734   0.000036855   0.000378223   0.000000936   0.000113002

   23    6.1  1.5  0.5  -0.000000432   0.000000414  -0.000000001  -0.000000004  -0.000000042  -0.000000432  -0.000000006  -0.000000648
                        -0.000048101   0.000046088  -0.000050138  -0.000216036  -0.000026880  -0.000275863   0.000000824   0.000099577

   24    7.1  1.5  0.5  -0.000043668   0.000041840  -0.000065380  -0.000281710  -0.000000691  -0.000007099   0.000003369   0.000407043
                         0.000000097  -0.000000093   0.000000029   0.000000123  -0.000000167  -0.000001711  -0.000000019  -0.000002165

   25    8.1  1.5  0.5  -0.051914187   0.049741250  -0.077676753  -0.334693258  -0.000806625  -0.008289213   0.004007050   0.484172217
                         0.000110474  -0.000105477   0.000012432   0.000052589  -0.000215846  -0.002207233  -0.000022877  -0.002580929

   26    9.1  1.5  0.5  -0.010794285  -0.011271325   0.021435449  -0.004975129   0.069765023  -0.006798777   0.088210343  -0.000730811
                         0.288039117   0.300622339  -0.052981151   0.012296053  -0.075151703   0.007322817  -0.198088125   0.001639161

   27   10.1  1.5  0.5  -0.000079190   0.000075793  -0.000039412  -0.000169810   0.000158461   0.001619299   0.000019881   0.002246060
                         0.025115168  -0.024063861   0.071857256   0.309618678   0.052465841   0.538439335  -0.000057375  -0.007044325

   28   11.1  1.5  0.5   0.250947675   0.261910586   0.138636859  -0.032175255  -0.056406578   0.005496111   0.106512359  -0.000881337
                         0.009742465   0.010173216   0.057479173  -0.013339775  -0.050058375   0.004877640   0.047697778  -0.000395047

   29   12.1  1.5  0.5  -0.000888773   0.000850620  -0.000024259  -0.000104284   0.000114810   0.001173930   0.000012311   0.001373894
                        -0.059265057   0.056784440  -0.005870803  -0.025295926   0.013818631   0.141811630   0.001473808   0.178048135

   30   13.1  1.5  0.5   0.003341869   0.003489308  -0.024472636   0.005679583   0.362022300  -0.035277027   0.136816763  -0.001134910
                        -0.080957350  -0.084494137   0.060517833  -0.014045161  -0.394343037   0.038424775  -0.304858598   0.002522956

   31   14.1  1.5  0.5   0.057996065   0.060529677   0.151794838  -0.035229004   0.013241442  -0.001290334   0.209100112  -0.001730262
                         0.002280161   0.002381114   0.062349697  -0.014470410   0.012192067  -0.001188630   0.092263664  -0.000764306

   32   15.1  1.5  0.5   0.000000017   0.000000018  -0.000000009   0.000000002  -0.000000001   0.000000000  -0.000000014   0.000000000
                         0.000000001   0.000000001  -0.000000004   0.000000001  -0.000000001   0.000000000  -0.000000007   0.000000000

   33   16.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000007   0.000000007   0.000000003   0.000000013   0.000000001   0.000000007   0.000000000   0.000000016

   34   17.1  1.5  0.5  -0.000000001  -0.000000001  -0.000000001   0.000000000   0.000000040  -0.000000004   0.000000021  -0.000000000
                         0.000000025   0.000000027   0.000000002  -0.000000000  -0.000000044   0.000000004  -0.000000047   0.000000000

   35    1.1  1.5 -0.5   0.000052244  -0.000050057   0.000011870   0.000051147   0.000044556   0.000457260   0.000002446   0.000295468
                        -0.000000650   0.000000622   0.000000047   0.000000200  -0.000000264  -0.000002700  -0.000000030  -0.000003358

   36    2.1  1.5 -0.5   0.000003600  -0.000003445  -0.000000160  -0.000000688   0.000000000   0.000000004   0.000000004   0.000000429
                         0.000227245  -0.000217733  -0.000034296  -0.000147774  -0.000005857  -0.000060114   0.000001065   0.000128684

   37    3.1  1.5 -0.5  -0.000000533   0.000000510   0.000000007   0.000000028  -0.000000082  -0.000000838  -0.000000010  -0.000001175
                        -0.000014392   0.000013790   0.000027043   0.000116525  -0.000002502  -0.000025670  -0.000001447  -0.000174833

   38    4.1  1.5 -0.5   0.000258134  -0.000247329   0.000012061   0.000051968  -0.000005072  -0.000052051  -0.000001327  -0.000160312
                        -0.000003728   0.000003567   0.000000125   0.000000538   0.000000084   0.000000857   0.000000008   0.000000852

   39    5.1  1.5 -0.5  -0.000024652  -0.000025728  -0.000136805   0.000031750   0.000278934  -0.000027179   0.000102799  -0.000000851
                        -0.000001204  -0.000001257  -0.000055764   0.000012942   0.000255443  -0.000024891   0.000046967  -0.000000390

   40    6.1  1.5 -0.5  -0.000046063  -0.000048076   0.000200001  -0.000046417  -0.000203953   0.000019873   0.000091547  -0.000000757
                        -0.000001557  -0.000001625   0.000081677  -0.000018956  -0.000185752   0.000018100   0.000039180  -0.000000324

   41    7.1  1.5 -0.5   0.000001130   0.000001180  -0.000106615   0.000024744   0.000003505  -0.000000341  -0.000164568   0.000001363
                        -0.000041825  -0.000043652   0.000260756  -0.000060517  -0.000006406   0.000000624   0.000372298  -0.000003081

   42    8.1  1.5 -0.5   0.001339127   0.001398016  -0.126580714   0.029377494   0.003937716  -0.000382395  -0.195756788   0.001621490
                        -0.049723333  -0.051895478   0.309833669  -0.071907169  -0.007620848   0.000742299   0.442841593  -0.003664389

   43    9.1  1.5 -0.5  -0.300809414   0.288218231  -0.013264351  -0.057152835   0.009991727   0.102536066   0.001794631   0.216833850
                         0.003811822  -0.003647018  -0.000042675  -0.000185132  -0.000111375  -0.001136619  -0.000015260  -0.001746789

   44   10.1  1.5 -0.5   0.024058338   0.025109406  -0.286704111   0.066539174   0.397561617  -0.038738180  -0.007355129   0.000060541
                         0.000521062   0.000543741  -0.116895283   0.027129415   0.363131245  -0.035384219  -0.000754572   0.000004691

   45   11.1  1.5 -0.5  -0.003674180   0.003515464   0.000185771   0.000801100  -0.000083108  -0.000853558  -0.000010137  -0.001183945
                        -0.262082334   0.251112112   0.034830477   0.150077954   0.007347905   0.075410970  -0.000965772  -0.116698582

   46   12.1  1.5 -0.5  -0.056745876  -0.059224782   0.023379130  -0.005425923   0.104205492  -0.010153874   0.162679655  -0.001346219
                        -0.002258726  -0.002358392   0.009659763  -0.002241938   0.096193201  -0.009373718   0.072376486  -0.000599962

   47   13.1  1.5 -0.5   0.084554687  -0.081015331   0.015149969   0.065278392   0.052161748   0.535310942   0.002766272   0.334131997
                        -0.001392611   0.001332937   0.000051760   0.000222625  -0.000289765  -0.002961748  -0.000032714  -0.003660648

   48   14.1  1.5 -0.5  -0.000879125   0.000841041   0.000078014   0.000335730  -0.000012692  -0.000126036  -0.000009579  -0.001064267
                        -0.060570113   0.058034777   0.038085029   0.164100716  -0.001754320  -0.017999067  -0.001891528  -0.228548261

   49   15.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000018   0.000000017  -0.000000002  -0.000000010   0.000000000   0.000000002   0.000000000   0.000000016

   50   16.1  1.5 -0.5  -0.000000007  -0.000000007  -0.000000012   0.000000003   0.000000005  -0.000000000   0.000000015  -0.000000000
                        -0.000000000  -0.000000000  -0.000000005   0.000000001   0.000000005  -0.000000000   0.000000007  -0.000000000

   51   17.1  1.5 -0.5  -0.000000027   0.000000025   0.000000000   0.000000002   0.000000006   0.000000060   0.000000000   0.000000052
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001

   52    1.1  1.5 -1.5   0.000000531   0.000000555  -0.000058954   0.000013682   0.000225727  -0.000021995  -0.000099617   0.000000824
                        -0.000021417  -0.000022353   0.000144366  -0.000033505  -0.000248627   0.000024226   0.000228643  -0.000001892

   53    2.1  1.5 -1.5  -0.000024214  -0.000025272   0.000385830  -0.000089545   0.000163704  -0.000015951  -0.000326286   0.000002700
                        -0.000000510  -0.000000533   0.000156202  -0.000036252   0.000147147  -0.000014337  -0.000142343   0.000001179

   54    3.1  1.5 -1.5  -0.000049774  -0.000051948   0.000183760  -0.000042648  -0.000012012   0.000001170   0.000239137  -0.000001979
                        -0.000001660  -0.000001733   0.000075105  -0.000017431  -0.000009495   0.000000925   0.000105603  -0.000000875

   55    4.1  1.5 -1.5  -0.000000658  -0.000000688   0.000184319  -0.000042778   0.000140932  -0.000013732  -0.000085875   0.000000711
                         0.000031627   0.000033009  -0.000454175   0.000105406  -0.000156364   0.000015236   0.000198883  -0.000001646

   56    5.1  1.5 -1.5   0.000000676  -0.000000647  -0.000000041  -0.000000178   0.000000171   0.000001747   0.000000020   0.000002309
                         0.000032620  -0.000031255  -0.000009784  -0.000042156   0.000022634   0.000232278   0.000002005   0.000242201

   57    6.1  1.5 -1.5  -0.000005081   0.000004862   0.000000207   0.000000893  -0.000000032  -0.000000325  -0.000000006  -0.000000712
                        -0.000338576   0.000324404   0.000005891   0.000025383  -0.000006128  -0.000062894  -0.000000312  -0.000037665

   58    7.1  1.5 -1.5   0.000353292  -0.000338504  -0.000019928  -0.000085866  -0.000007100  -0.000072866   0.000000045   0.000005497
                        -0.000005410   0.000005177   0.000000200   0.000000863   0.000000022   0.000000222  -0.000000000  -0.000000060

   59    8.1  1.5 -1.5   0.418968929  -0.401431826  -0.023656768  -0.101932968  -0.008443224  -0.086648943   0.000054290   0.006562682
                        -0.006509556   0.006229473   0.000241485   0.001041705   0.000018261   0.000184346  -0.000001219  -0.000145640

   60    9.1  1.5 -1.5   0.000845300   0.000882752  -0.224166306   0.052025577  -0.147281581   0.014350549   0.093762342  -0.000776163
                        -0.039328318  -0.041046361   0.550103296  -0.127669674   0.162785847  -0.015861615  -0.214740474   0.001776806

   61   10.1  1.5 -1.5   0.005307171  -0.005078976  -0.000228777  -0.000986305   0.000154796   0.001583730   0.000021208   0.002390729
                         0.335776484  -0.321721579  -0.012703376  -0.054736702   0.022639550   0.232337970   0.001790696   0.216308757

   62   11.1  1.5 -1.5   0.037797907   0.039449102  -0.484982574   0.112556257  -0.188822289   0.018398518   0.335003756  -0.002771940
                         0.001020023   0.001065219  -0.197884926   0.045926065  -0.169655031   0.016530297   0.145843283  -0.001207472

   63   12.1  1.5 -1.5  -0.003142387   0.003006904   0.000115042   0.000496816   0.000132914   0.001357328   0.000014062   0.001589390
                        -0.222008811   0.212716031  -0.004534981  -0.019539833   0.016214405   0.166397939   0.001607133   0.194164189

   64   13.1  1.5 -1.5   0.000715971   0.000747158  -0.054103703   0.012556543   0.278545681  -0.027141127  -0.124728175   0.001032004
                        -0.022304243  -0.023278637   0.129408315  -0.030033485  -0.307319099   0.029944824   0.286199393  -0.002367979

   65   14.1  1.5 -1.5  -0.053059457  -0.055377350   0.139516733  -0.032379492  -0.044461035   0.004332022   0.340618022  -0.002818492
                        -0.001828486  -0.001909003   0.056969003  -0.013221654  -0.039710754   0.003868466   0.150929543  -0.001250054

   66   15.1  1.5 -1.5   0.000000010   0.000000011  -0.000000048   0.000000011  -0.000000022   0.000000002  -0.000000013   0.000000000
                         0.000000000   0.000000000  -0.000000020   0.000000005  -0.000000020   0.000000002  -0.000000006   0.000000000

   67   16.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000014   0.000000014   0.000000000   0.000000001   0.000000001   0.000000009   0.000000000   0.000000008

   68   17.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000009   0.000000002   0.000000016  -0.000000002   0.000000009  -0.000000000
                         0.000000003   0.000000004   0.000000022  -0.000000005  -0.000000017   0.000000002  -0.000000019   0.000000000

   69    1.1  0.5  0.5   0.000000032   0.000000034   0.000000213  -0.000000050   0.000000361  -0.000000035   0.000000252  -0.000000002
                        -0.000000812  -0.000000847  -0.000000511   0.000000119  -0.000000389   0.000000038  -0.000000560   0.000000005

   70    2.1  0.5  0.5   0.000000010  -0.000000010  -0.000000001  -0.000000004  -0.000000000  -0.000000002  -0.000000000  -0.000000010
                         0.000000800  -0.000000767   0.000000381   0.000001642  -0.000000040  -0.000000410  -0.000000008  -0.000000929

   71    3.1  0.5  0.5  -0.000001268  -0.000001324   0.000001022  -0.000000237   0.000000811  -0.000000079   0.000001882  -0.000000016
                        -0.000000047  -0.000000049   0.000000417  -0.000000097   0.000000752  -0.000000073   0.000000838  -0.000000007

   72    4.1  0.5  0.5   0.000000047   0.000000049   0.000000212  -0.000000049   0.000000051  -0.000000005   0.000000224  -0.000000002
                        -0.000001221  -0.000001274  -0.000000508   0.000000118  -0.000000053   0.000000005  -0.000000497   0.000000004

   73    5.1  0.5  0.5   0.000000538  -0.000000516   0.000000043   0.000000186   0.000000250   0.000002567  -0.000000016  -0.000001887
                        -0.000000004   0.000000004   0.000000000   0.000000002  -0.000000000  -0.000000002   0.000000000   0.000000001

   74    6.1  0.5  0.5  -0.000001099  -0.000001147   0.000000149  -0.000000035  -0.000000364   0.000000035  -0.000000783   0.000000006
                        -0.000000046  -0.000000048   0.000000055  -0.000000013  -0.000000337   0.000000033  -0.000000353   0.000000003

   75    7.1  0.5  0.5   0.000000008  -0.000000008   0.000000000   0.000000001  -0.000000001  -0.000000015  -0.000000000  -0.000000018
                         0.000000998  -0.000000956   0.000000578   0.000002491   0.000000019   0.000000191  -0.000000031  -0.000003763

   76    1.1  0.5 -0.5  -0.000000848   0.000000813   0.000000129   0.000000554  -0.000000052  -0.000000530  -0.000000005  -0.000000614
                         0.000000013  -0.000000012  -0.000000001  -0.000000004   0.000000001   0.000000006   0.000000000   0.000000007

   77    2.1  0.5 -0.5  -0.000000766  -0.000000800   0.000001522  -0.000000353   0.000000303  -0.000000029   0.000000847  -0.000000007
                        -0.000000029  -0.000000030   0.000000617  -0.000000143   0.000000277  -0.000000027   0.000000380  -0.000000003

   78    3.1  0.5 -0.5  -0.000000016   0.000000016   0.000000000   0.000000000   0.000000001   0.000000011   0.000000000   0.000000017
                        -0.000001324   0.000001269  -0.000000256  -0.000001103   0.000000108   0.000001106   0.000000017   0.000002060

   79    4.1  0.5 -0.5  -0.000001275   0.000001221   0.000000128   0.000000551  -0.000000007  -0.000000074  -0.000000005  -0.000000545
                         0.000000017  -0.000000017  -0.000000001  -0.000000004   0.000000000   0.000000002   0.000000000   0.000000007

   80    5.1  0.5 -0.5   0.000000017   0.000000018  -0.000000068   0.000000016   0.000001727  -0.000000168  -0.000000755   0.000000006
                        -0.000000515  -0.000000538   0.000000172  -0.000000040  -0.000001899   0.000000185   0.000001730  -0.000000014

   81    6.1  0.5 -0.5  -0.000000019   0.000000019   0.000000001   0.000000006  -0.000000000  -0.000000005  -0.000000000  -0.000000011
                        -0.000001148   0.000001100  -0.000000037  -0.000000159  -0.000000048  -0.000000496  -0.000000007  -0.000000859

   82    7.1  0.5 -0.5  -0.000000956  -0.000000997   0.000002306  -0.000000535  -0.000000151   0.000000015   0.000003443  -0.000000028
                        -0.000000031  -0.000000033   0.000000943  -0.000000219  -0.000000117   0.000000011   0.000001520  -0.000000013


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.000000871   0.000016155  -0.000011779   0.000000346   0.000022390   0.000106649  -0.000082245  -0.000003584
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000006  -0.000000109   0.000000924  -0.000000027   0.000000023   0.000000109   0.000000095   0.000000004
                        -0.000002098  -0.000038923   0.000046330  -0.000001360   0.000013456   0.000064092   0.000006457   0.000000281

    3    3.1  1.5  1.5   0.000000018   0.000000336  -0.000001029   0.000000030  -0.000000040  -0.000000189  -0.000001230  -0.000000054
                        -0.000014855  -0.000275652  -0.000059880   0.000001758   0.000004005   0.000019078  -0.000228437  -0.000009955

    4    4.1  1.5  1.5  -0.000001984  -0.000036820   0.000050123  -0.000001471   0.000008061   0.000038398   0.000023416   0.000001020
                        -0.000000010  -0.000000186  -0.000000918   0.000000027  -0.000000037  -0.000000176   0.000000001   0.000000000

    5    5.1  1.5  1.5  -0.000185468   0.000009995  -0.000002129  -0.000072543  -0.000158111   0.000033195  -0.000000163   0.000003732
                         0.000136251  -0.000007343  -0.000004009  -0.000136584   0.000121261  -0.000025458  -0.000000067   0.000001546

    6    6.1  1.5  1.5  -0.000134774   0.000007263   0.000001751   0.000059649  -0.000047987   0.000010075   0.000000311  -0.000007135
                         0.000099201  -0.000005346   0.000003297   0.000112315   0.000036857  -0.000007738   0.000000132  -0.000003021

    7    7.1  1.5  1.5  -0.000025796   0.000001390   0.000002891   0.000098502   0.000062991  -0.000013225  -0.000001794   0.000041170
                        -0.000035254   0.000001900  -0.000001539  -0.000052422   0.000082033  -0.000017222   0.000004304  -0.000098772

    8    8.1  1.5  1.5  -0.030842270   0.001662166  -0.007468735  -0.254459704  -0.164597504   0.034556573   0.004625782  -0.106149138
                        -0.042185372   0.002273353   0.003969662   0.135239094  -0.214220825   0.044974690  -0.011099007   0.254686956

    9    9.1  1.5  1.5   0.002441058   0.045296688   0.132630847  -0.003892943   0.016368849   0.077967247   0.077541232   0.003379258
                         0.000005507   0.000101810  -0.002049197   0.000060046  -0.000034600  -0.000164724   0.000408445   0.000017783

   10   10.1  1.5  1.5  -0.014431594   0.000777679   0.007020056   0.239159685   0.162734653  -0.034165420   0.000921945  -0.021155819
                         0.010405500  -0.000560791   0.013222534   0.450498240  -0.124804736   0.026202062   0.000383752  -0.008805386

   11   11.1  1.5  1.5  -0.000002491  -0.000045379   0.001673592  -0.000049037   0.000103693   0.000493779  -0.000752267  -0.000032751
                         0.005339891   0.099088007   0.094578507  -0.002775983   0.036471787   0.173720316  -0.080611712  -0.003512954

   12   12.1  1.5  1.5  -0.271172234   0.014613470   0.001460471   0.049756066   0.401495558  -0.084292194  -0.000246998   0.005669906
                         0.199352340  -0.010743252   0.002750065   0.093697718  -0.308027829   0.064669025  -0.000107664   0.002472876

   13   13.1  1.5  1.5   0.000883130   0.016386341   0.022792727  -0.000669151  -0.060084339  -0.286190205   0.213147554   0.009288912
                         0.000037438   0.000693936  -0.000013727   0.000000458   0.000071188   0.000339011  -0.001192168  -0.000051949

   14   14.1  1.5  1.5   0.000021615   0.000399296   0.002982405  -0.000087388  -0.000010067  -0.000047991   0.003533573   0.000153882
                        -0.016921067  -0.313991566   0.175554819  -0.005152855  -0.004934353  -0.023502934   0.595072586   0.025932732

   15   15.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000004   0.000000066   0.000000006  -0.000000000  -0.000000001  -0.000000007   0.000000008   0.000000000

   16   16.1  1.5  1.5   0.000000001  -0.000000000  -0.000000000  -0.000000006   0.000000009  -0.000000002   0.000000001  -0.000000020
                        -0.000000001   0.000000000  -0.000000000  -0.000000012  -0.000000007   0.000000001   0.000000000  -0.000000008

   17   17.1  1.5  1.5   0.000000003   0.000000059  -0.000000011   0.000000000   0.000000003   0.000000014  -0.000000070  -0.000000003
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   18    1.1  1.5  0.5   0.000002713  -0.000000146   0.000001024   0.000034873   0.000043434  -0.000009119  -0.000000685   0.000015724
                         0.000003960  -0.000000213  -0.000000551  -0.000018770   0.000056427  -0.000011847   0.000001642  -0.000037675

   19    2.1  1.5  0.5  -0.000063278   0.000003410  -0.000001881  -0.000064088   0.000041635  -0.000008741   0.000008407  -0.000192905
                         0.000046585  -0.000002510  -0.000003548  -0.000120899  -0.000031798   0.000006676   0.000003472  -0.000079672

   20    3.1  1.5  0.5  -0.000420129   0.000022641   0.000000157   0.000005360   0.000026523  -0.000005568   0.000002689  -0.000061703
                         0.000308782  -0.000016640   0.000000299   0.000010202  -0.000020352   0.000004273   0.000001121  -0.000025728

   21    4.1  1.5  0.5   0.000011237  -0.000000606   0.000005499   0.000187362   0.000085195  -0.000017886   0.000001439  -0.000033024
                         0.000015395  -0.000000830  -0.000002929  -0.000099784   0.000110609  -0.000023222  -0.000003516   0.000080686

   22    5.1  1.5  0.5  -0.000000030  -0.000000556   0.000000516  -0.000000015   0.000000023   0.000000112   0.000000471   0.000000021
                         0.000021292   0.000395100   0.000024485  -0.000000719   0.000007841   0.000037348   0.000059056   0.000002574

   23    6.1  1.5  0.5  -0.000000020  -0.000000371  -0.000002196   0.000000064  -0.000000091  -0.000000432  -0.000000306  -0.000000013
                         0.000018193   0.000337598  -0.000117049   0.000003436  -0.000021840  -0.000104026  -0.000083712  -0.000003648

   24    7.1  1.5  0.5  -0.000001478  -0.000027426   0.000072095  -0.000002116   0.000035300   0.000168138  -0.000085175  -0.000003712
                        -0.000000002  -0.000000032  -0.000001549   0.000000045  -0.000000070  -0.000000335   0.000000335   0.000000015

   25    8.1  1.5  0.5  -0.001768698  -0.032819590  -0.189062757   0.005549158  -0.091839391  -0.437444077   0.219825947   0.009579791
                        -0.000003344  -0.000060935   0.004134059  -0.000121151   0.000200218   0.000953387  -0.000778064  -0.000033840

   26    9.1  1.5  0.5  -0.013318436   0.000717752   0.014150281   0.482100750   0.212504290  -0.044614438   0.003863407  -0.088652526
                        -0.017861078   0.000962516  -0.007559492  -0.257536688   0.275535582  -0.057847449  -0.009324511   0.213966728

   27   10.1  1.5  0.5  -0.000004519  -0.000083673  -0.005367083   0.000157303  -0.000250232  -0.001191651  -0.001322225  -0.000057605
                        -0.000852988  -0.015829614  -0.277959147   0.008158500  -0.056944378  -0.271234293  -0.265963171  -0.011590492

   28   11.1  1.5  0.5   0.155607567  -0.008385700  -0.004857145  -0.165474332   0.118910114  -0.024964626   0.022809520  -0.523402741
                        -0.114419791   0.006166124  -0.009111784  -0.310443118  -0.091251926   0.019158031   0.009451817  -0.216890695

   29   12.1  1.5  0.5  -0.000042819  -0.000790061   0.002588735  -0.000075883   0.000099348   0.000473060  -0.000445343  -0.000019371
                         0.033174732   0.615597421   0.144610573  -0.004244569   0.020388661   0.097114112   0.017343388   0.000755917

   30   13.1  1.5  0.5   0.005103566  -0.000275024  -0.003837122  -0.130728853  -0.130372366   0.027371120   0.001565318  -0.035920785
                         0.004992864  -0.000269007   0.002046232   0.069711326  -0.169921970   0.035674351  -0.003622034   0.083115360

   31   14.1  1.5  0.5  -0.477989081   0.025758826  -0.001276075  -0.043473112  -0.051614483   0.010836229  -0.003394205   0.077887396
                         0.351333531  -0.018933698  -0.002364101  -0.080547381   0.038761504  -0.008137783  -0.001426357   0.032731574

   32   15.1  1.5  0.5   0.000000098  -0.000000005  -0.000000000  -0.000000001  -0.000000011   0.000000002   0.000000000  -0.000000001
                        -0.000000072   0.000000004  -0.000000000  -0.000000001   0.000000008  -0.000000002   0.000000000  -0.000000000

   33   16.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000003   0.000000007  -0.000000000  -0.000000003  -0.000000013  -0.000000002  -0.000000000

   34   17.1  1.5  0.5  -0.000000021   0.000000001   0.000000000   0.000000003  -0.000000012   0.000000003   0.000000000  -0.000000005
                        -0.000000028   0.000000001  -0.000000000  -0.000000002  -0.000000016   0.000000003  -0.000000001   0.000000013

   35    1.1  1.5 -0.5  -0.000000259  -0.000004798   0.000039600  -0.000001162  -0.000014950  -0.000071207  -0.000040823  -0.000001779
                         0.000000008   0.000000154  -0.000000565   0.000000017   0.000000016   0.000000077   0.000000356   0.000000016

   36    2.1  1.5 -0.5  -0.000000009  -0.000000159   0.000002820  -0.000000083  -0.000000054  -0.000000255  -0.000001047  -0.000000046
                         0.000004235   0.000078576   0.000136806  -0.000004015  -0.000010999  -0.000052388  -0.000208707  -0.000009095

   37    3.1  1.5 -0.5  -0.000000035  -0.000000642  -0.000000280   0.000000008  -0.000000018  -0.000000087  -0.000000561  -0.000000024
                         0.000028098   0.000521397  -0.000011521   0.000000338  -0.000007019  -0.000033431  -0.000066850  -0.000002913

   38    4.1  1.5 -0.5  -0.000001027  -0.000019060   0.000212240  -0.000006230  -0.000029312  -0.000139616   0.000087182   0.000003799
                         0.000000002   0.000000039  -0.000003965   0.000000116   0.000000022   0.000000107  -0.000000160  -0.000000007

   39    5.1  1.5 -0.5   0.000318322  -0.000017154   0.000000336   0.000011460   0.000029639  -0.000006223   0.000002376  -0.000054519
                        -0.000234042   0.000012613   0.000000635   0.000021644  -0.000022725   0.000004771   0.000000989  -0.000022706

   40    6.1  1.5 -0.5   0.000272055  -0.000014661  -0.000001615  -0.000055022  -0.000082628   0.000017347  -0.000003374   0.000077416
                        -0.000199897   0.000010773  -0.000003033  -0.000103334   0.000063199  -0.000013268  -0.000001388   0.000031851

   41    7.1  1.5 -0.5  -0.000016241   0.000000875  -0.000001871  -0.000063743   0.000102437  -0.000021506   0.000001413  -0.000032429
                        -0.000022100   0.000001191   0.000000990   0.000033719   0.000133332  -0.000027992  -0.000003432   0.000078760

   42    8.1  1.5 -0.5  -0.019452980   0.001048400   0.004907221   0.167194722  -0.266445174   0.055938904  -0.003643825   0.083615701
                        -0.026433138   0.001424487  -0.002593649  -0.088361424  -0.346936880   0.072837853   0.008859802  -0.203303878

   43    9.1  1.5 -0.5   0.001200629   0.022279272   0.546493988  -0.016040529  -0.073053237  -0.347962538   0.231600969   0.010092997
                         0.000009805   0.000181430  -0.009518386   0.000278978   0.000010122   0.000048678  -0.001422147  -0.000061972

   44   10.1  1.5 -0.5  -0.012816133   0.000690611  -0.003831430  -0.130529553  -0.215482711   0.045239623  -0.010713100   0.245829819
                         0.009291416  -0.000500665  -0.007204583  -0.245463091   0.164732095  -0.034584697  -0.004424059   0.101517767

   45   11.1  1.5 -0.5   0.000015156   0.000280705   0.006446750  -0.000188934  -0.000080189  -0.000382377  -0.003506615  -0.000152700
                        -0.010408689  -0.193146381   0.351731607  -0.010323796  -0.031468337  -0.149887901  -0.566550710  -0.024689831

   46   12.1  1.5 -0.5   0.496015310  -0.026730273   0.001998556   0.068086920   0.077180870  -0.016203788   0.000707416  -0.016230947
                        -0.364595146   0.019648339   0.003745383   0.127605214  -0.058944787   0.012375163   0.000267111  -0.006127624

   47   13.1  1.5 -0.5  -0.000379557  -0.007044137  -0.148129913   0.004347914   0.044964690   0.214173080   0.090524881   0.003944910
                        -0.000062764  -0.001164135   0.002689052  -0.000078857  -0.000119047  -0.000567151  -0.001926615  -0.000083911

   48   14.1  1.5 -0.5  -0.000040803  -0.000752099   0.001201534  -0.000035161   0.000175755   0.000837065   0.000944283   0.000041121
                         0.031968740   0.593218548   0.091522393  -0.002686281   0.013550516   0.064543073   0.084480239   0.003681498

   49   15.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000007  -0.000000122   0.000000001  -0.000000000   0.000000003   0.000000013  -0.000000001  -0.000000000

   50   16.1  1.5 -0.5   0.000000003  -0.000000000   0.000000000   0.000000003  -0.000000011   0.000000002  -0.000000000   0.000000002
                        -0.000000002   0.000000000   0.000000000   0.000000007   0.000000008  -0.000000002  -0.000000000   0.000000001

   51   17.1  1.5 -0.5   0.000000002   0.000000035   0.000000003  -0.000000000   0.000000004   0.000000020   0.000000014   0.000000001
                         0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   52    1.1  1.5 -1.5  -0.000009551   0.000000515  -0.000000302  -0.000010291  -0.000065143   0.000013676  -0.000001352   0.000031014
                        -0.000013029   0.000000702   0.000000168   0.000005730  -0.000084441   0.000017728   0.000003320  -0.000076173

   53    2.1  1.5 -1.5   0.000031456  -0.000001695  -0.000000638  -0.000021731  -0.000050812   0.000010668  -0.000000259   0.000005945
                        -0.000022924   0.000001235  -0.000001201  -0.000040927   0.000039063  -0.000008201  -0.000000110   0.000002523

   54    3.1  1.5 -1.5   0.000222116  -0.000011970   0.000000829   0.000028230  -0.000014990   0.000003147   0.000009200  -0.000211109
                        -0.000163244   0.000008797   0.000001550   0.000052818   0.000011803  -0.000002478   0.000003804  -0.000087281

   55    4.1  1.5 -1.5   0.000021919  -0.000001181   0.000001298   0.000044239  -0.000023315   0.000004895   0.000000385  -0.000008829
                         0.000029586  -0.000001594  -0.000000692  -0.000023582  -0.000030510   0.000006405  -0.000000945   0.000021688

   56    5.1  1.5 -1.5   0.000000013   0.000000234  -0.000003063   0.000000090  -0.000000119  -0.000000567  -0.000000025  -0.000000001
                        -0.000012402  -0.000230136  -0.000154624   0.000004538  -0.000041833  -0.000199256  -0.000004040  -0.000000176

   57    6.1  1.5 -1.5   0.000000017   0.000000324   0.000002523  -0.000000074  -0.000000027  -0.000000129   0.000000108   0.000000005
                        -0.000009018  -0.000167346   0.000127146  -0.000003732  -0.000012703  -0.000060507   0.000007747   0.000000338

   58    7.1  1.5 -1.5  -0.000002354  -0.000043684  -0.000111563   0.000003275   0.000021714   0.000103427   0.000107005   0.000004663
                         0.000000002   0.000000039   0.000002117  -0.000000062  -0.000000049  -0.000000233  -0.000000884  -0.000000038

   59    8.1  1.5 -1.5  -0.002816188  -0.052257504   0.288110514  -0.008456535  -0.056717434  -0.270152960  -0.275912893  -0.012023977
                         0.000003523   0.000066695  -0.005628951   0.000165031   0.000110673   0.000527430   0.002271711   0.000098913

   60    9.1  1.5 -1.5  -0.026862746   0.001447662   0.003430465   0.116876090  -0.047493610   0.009971042   0.001257828  -0.028862053
                        -0.036471813   0.001965469  -0.001841338  -0.062730537  -0.061832643   0.012981477  -0.003136490   0.071970767

   61   10.1  1.5 -1.5  -0.000007504  -0.000140263   0.010200655  -0.000298960   0.000122984   0.000585262   0.000177592   0.000007761
                        -0.000958757  -0.017791168   0.509943100  -0.014967539   0.043055880   0.205081562   0.022914449   0.000998593

   62   11.1  1.5 -1.5  -0.079888146   0.004305176  -0.001307589  -0.044547384  -0.137847920   0.028940557   0.003241260  -0.074376872
                         0.058620126  -0.003159098  -0.002449223  -0.083447141   0.105721061  -0.022195633   0.001355047  -0.031094936

   63   12.1  1.5 -1.5   0.000024605   0.000454255   0.002109378  -0.000061814   0.000284533   0.001355130  -0.000152227  -0.000006574
                        -0.018137540  -0.336564303   0.106068275  -0.003113200   0.106241121   0.506041490  -0.006183832  -0.000269363

   64   13.1  1.5 -1.5  -0.010247714   0.000552324   0.000584858   0.019920623   0.174542574  -0.036644413   0.003550908  -0.081480850
                        -0.012805393   0.000690114  -0.000325121  -0.011075982   0.226803523  -0.047616383  -0.008583568   0.196962361

   65   14.1  1.5 -1.5   0.252999702  -0.013634146  -0.002430358  -0.082796416   0.018638201  -0.003913015  -0.023960218   0.549808822
                        -0.185962398   0.010021629  -0.004544547  -0.154832628  -0.014318088   0.003006036  -0.009921603   0.227671096

   66   15.1  1.5 -1.5  -0.000000053   0.000000003  -0.000000000  -0.000000003   0.000000005  -0.000000001  -0.000000000   0.000000008
                         0.000000039  -0.000000002  -0.000000000  -0.000000005  -0.000000004   0.000000001  -0.000000000   0.000000003

   67   16.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000001  -0.000000013   0.000000000   0.000000002   0.000000011   0.000000022   0.000000001

   68   17.1  1.5 -1.5  -0.000000035   0.000000002  -0.000000000  -0.000000010  -0.000000009   0.000000002  -0.000000001   0.000000027
                        -0.000000048   0.000000003   0.000000000   0.000000005  -0.000000011   0.000000002   0.000000003  -0.000000065

   69    1.1  0.5  0.5   0.000000224  -0.000000012   0.000002113   0.000071995   0.000932805  -0.000195838  -0.000018996   0.000435897
                         0.000000307  -0.000000017  -0.000001127  -0.000038396   0.001216509  -0.000255401   0.000045764  -0.001050128

   70    2.1  0.5  0.5  -0.000000000  -0.000000001  -0.000004279   0.000000125  -0.000000199  -0.000000950  -0.000007830  -0.000000341
                         0.000000006   0.000000102  -0.000193448   0.000005678  -0.000057379  -0.000273304  -0.001005672  -0.000043826

   71    3.1  0.5  0.5  -0.000000084   0.000000005   0.000003605   0.000122817  -0.001056172   0.000221739   0.000017231  -0.000395404
                         0.000000060  -0.000000003   0.000006766   0.000230529   0.000810984  -0.000170262   0.000007136  -0.000163751

   72    4.1  0.5  0.5   0.000000157  -0.000000008   0.000041632   0.001418429  -0.000262555   0.000055122  -0.000009088   0.000208546
                         0.000000215  -0.000000012  -0.000022097  -0.000752786  -0.000341791   0.000071758   0.000022054  -0.000506074

   73    5.1  0.5  0.5  -0.000000068  -0.000001256  -0.000912138   0.000026773  -0.000052705  -0.000251042  -0.001431644  -0.000062390
                        -0.000000000  -0.000000002   0.000016087  -0.000000472   0.000000630   0.000003000   0.000005597   0.000000244

   74    6.1  0.5  0.5   0.000000003  -0.000000000  -0.000023945  -0.000815766   0.000323828  -0.000067986   0.000009990  -0.000229247
                         0.000000003  -0.000000000  -0.000044996  -0.001533034  -0.000250034   0.000052494   0.000004262  -0.000097797

   75    7.1  0.5  0.5   0.000000000   0.000000002   0.000005239  -0.000000154   0.000000290   0.000001378  -0.000004546  -0.000000198
                        -0.000000007  -0.000000122   0.000161125  -0.000004729   0.000272176   0.001296412  -0.001290223  -0.000056227

   76    1.1  0.5 -0.5   0.000000020   0.000000380  -0.000081580   0.000002395   0.000321840   0.001532971   0.001136977   0.000049548
                        -0.000000000  -0.000000001   0.000001477  -0.000000043  -0.000000945  -0.000004503  -0.000007719  -0.000000336

   77    2.1  0.5 -0.5  -0.000000081   0.000000004   0.000002653   0.000090368   0.000216974  -0.000045553   0.000040462  -0.000928475
                         0.000000061  -0.000000003   0.000005022   0.000171096  -0.000166187   0.000034890   0.000016842  -0.000386485

   78    3.1  0.5 -0.5  -0.000000000  -0.000000001   0.000004840  -0.000000142  -0.000000634  -0.000003021   0.000002558   0.000000111
                        -0.000000006  -0.000000104   0.000261160  -0.000007666  -0.000279566  -0.001331610   0.000427963   0.000018650

   79    4.1  0.5 -0.5   0.000000014   0.000000266  -0.001605485   0.000047123  -0.000090485  -0.000430994   0.000547354   0.000023853
                        -0.000000000  -0.000000000   0.000032316  -0.000000947   0.000000187   0.000000891  -0.000002312  -0.000000101

   80    5.1  0.5 -0.5   0.000000745  -0.000000040  -0.000023621  -0.000804759   0.000150966  -0.000031694  -0.000023753   0.000545048
                         0.000001012  -0.000000055   0.000012612   0.000429672   0.000200600  -0.000042115   0.000057692  -0.001323843

   81    6.1  0.5 -0.5   0.000000000   0.000000004  -0.000033042   0.000000969  -0.000000036  -0.000000168   0.000004129   0.000000180
                         0.000000000   0.000000001  -0.001736253   0.000050962   0.000085894   0.000409123   0.000249201   0.000010860

   82    7.1  0.5 -0.5   0.000000097  -0.000000005  -0.000002166  -0.000073805  -0.001027300   0.000215677   0.000052001  -0.001193258
                        -0.000000074   0.000000004  -0.000004206  -0.000143323   0.000790784  -0.000166022   0.000021386  -0.000490746


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.000007506  -0.000199919   0.000028177   0.000380535   0.000246090  -0.000087707   0.000086022  -0.000002930
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000006   0.000000160  -0.000000035  -0.000000471  -0.000000694   0.000000247   0.000003699  -0.000000126
                         0.000000838   0.000022310   0.000004443   0.000060009  -0.000050130   0.000017867   0.000376372  -0.000012818

    3    3.1  1.5  1.5   0.000000018   0.000000470  -0.000000016  -0.000000210   0.000000285  -0.000000102  -0.000000001   0.000000000
                         0.000002830   0.000075383   0.000001180   0.000015933  -0.000443071   0.000157912  -0.000074516   0.000002538

    4    4.1  1.5  1.5   0.000002991   0.000079670  -0.000002945  -0.000039776  -0.000130186   0.000046399   0.000365361  -0.000012443
                        -0.000000001  -0.000000018   0.000000016   0.000000213   0.000000513  -0.000000183  -0.000003823   0.000000130

    5    5.1  1.5  1.5   0.000059965  -0.000002251  -0.000093549   0.000006927   0.000015394   0.000043193  -0.000015801  -0.000463962
                        -0.000011948   0.000000449  -0.000016791   0.000001243   0.000000985   0.000002763   0.000003541   0.000103972

    6    6.1  1.5  1.5   0.000146814  -0.000005512   0.000181659  -0.000013451   0.000135712   0.000380784  -0.000000158  -0.000004641
                        -0.000029089   0.000001092   0.000033247  -0.000002462   0.000006644   0.000018641   0.000000011   0.000000311

    7    7.1  1.5  1.5   0.000017003  -0.000000638  -0.000034458   0.000002551  -0.000006546  -0.000018366   0.000000305   0.000008968
                         0.000085576  -0.000003213   0.000188464  -0.000013955   0.000134113   0.000376297   0.000001252   0.000036769

    8    8.1  1.5  1.5  -0.043917093   0.001648865   0.035856864  -0.002655010   0.006764644   0.018980559  -0.000328551  -0.009651372
                        -0.220814225   0.008290529  -0.196455521   0.014546682  -0.139152712  -0.390437362  -0.001334583  -0.039187413

    9    9.1  1.5  1.5   0.009156295   0.243871640  -0.005296238  -0.071526672  -0.153565550   0.054731111   0.371676111  -0.012658284
                        -0.000002246  -0.000057931   0.000024624   0.000332574   0.000724675  -0.000258112  -0.003142863   0.000107033

   10   10.1  1.5  1.5   0.196224778  -0.007367369   0.207951080  -0.015397897   0.099550342   0.279320318   0.010205759   0.299665466
                        -0.038840736   0.001458349   0.037779091  -0.002797345   0.004679689   0.013130223  -0.002307423  -0.067755432

   11   11.1  1.5  1.5  -0.000022987  -0.000612638   0.000015872   0.000214425  -0.000006732   0.000002232   0.003298900  -0.000112357
                         0.003384507   0.090144604   0.004779504   0.064547605  -0.127174502   0.045325273   0.374394679  -0.012750854

   12   12.1  1.5  1.5  -0.364932404   0.013701583  -0.043869370   0.003248312  -0.101754766  -0.285505422   0.012874074   0.378012117
                         0.072432149  -0.002719432  -0.008304920   0.000614930  -0.005174333  -0.014518848  -0.002868797  -0.084233151

   13   13.1  1.5  1.5   0.018947795   0.504661062  -0.029140943  -0.393552871  -0.245154861   0.087373739  -0.117292015   0.003994596
                         0.000017818   0.000477614   0.000006930   0.000094052  -0.001026908   0.000365980   0.000621079  -0.000021258

   14   14.1  1.5  1.5  -0.000018194  -0.000488020  -0.000036544  -0.000493128  -0.000699542   0.000249394   0.000061920  -0.000002276
                        -0.006996035  -0.186337155  -0.000469676  -0.006342280   0.447767912  -0.159585404   0.140357767  -0.004780123

   15   15.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000001   0.000000029  -0.000000001  -0.000000020   0.000000060  -0.000000021  -0.000000007   0.000000000

   16   16.1  1.5  1.5   0.000000007  -0.000000000  -0.000000003   0.000000000   0.000000007   0.000000020  -0.000000000  -0.000000001
                        -0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000000   0.000000000

   17   17.1  1.5  1.5   0.000000001   0.000000033   0.000000003   0.000000037  -0.000000021   0.000000007  -0.000000013   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   18    1.1  1.5  0.5   0.000024568  -0.000000922  -0.000003579   0.000000265   0.000000797   0.000002237  -0.000003067  -0.000090057
                         0.000123811  -0.000004649   0.000017089  -0.000001265  -0.000019833  -0.000055647  -0.000013680  -0.000401674

   19    2.1  1.5  0.5  -0.000102492   0.000003848  -0.000432714   0.000032041   0.000068872   0.000193244   0.000003268   0.000095949
                         0.000020508  -0.000000770  -0.000078631   0.000005822   0.000003242   0.000009096  -0.000000727  -0.000021341

   20    3.1  1.5  0.5   0.000119457  -0.000004485   0.000016770  -0.000001242  -0.000046057  -0.000129226   0.000012776   0.000375140
                        -0.000023684   0.000000889   0.000002818  -0.000000209  -0.000002443  -0.000006855  -0.000002857  -0.000083879

   21    4.1  1.5  0.5  -0.000002031   0.000000076  -0.000080318   0.000005947   0.000003090   0.000008671  -0.000000003  -0.000000084
                        -0.000012013   0.000000451   0.000442262  -0.000032748  -0.000065033  -0.000182471   0.000000006   0.000000172

   22    5.1  1.5  0.5  -0.000000006  -0.000000171  -0.000000011  -0.000000143   0.000000038  -0.000000014   0.000000534  -0.000000018
                        -0.000003524  -0.000093847  -0.000014868  -0.000200794  -0.000321597   0.000114618  -0.000008490   0.000000289

   23    6.1  1.5  0.5   0.000000003   0.000000072  -0.000000002  -0.000000021   0.000000603  -0.000000215  -0.000002473   0.000000084
                        -0.000003651  -0.000097238   0.000023213   0.000313492  -0.000158219   0.000056390  -0.000265286   0.000009035

   24    7.1  1.5  0.5   0.000000525   0.000013985   0.000028818   0.000389184  -0.000184977   0.000065926   0.000088009  -0.000002997
                        -0.000000007  -0.000000181   0.000000014   0.000000189  -0.000000129   0.000000046  -0.000001016   0.000000035

   25    8.1  1.5  0.5  -0.001253507  -0.033387616  -0.029912584  -0.403973234   0.191577307  -0.068278508  -0.091753902   0.003124903
                         0.000017325   0.000461611  -0.000023154  -0.000312623   0.000091370  -0.000032679   0.001113869  -0.000037896

   26    9.1  1.5  0.5  -0.010512664   0.000394808  -0.084077948   0.006225625   0.003309587   0.009286383   0.000234554   0.006885687
                        -0.053797342   0.002019809   0.458066116  -0.033917946  -0.065801990  -0.184628638   0.001073946   0.031533280

   27   10.1  1.5  0.5   0.000015519   0.000415930  -0.000003495  -0.000047061   0.000520357  -0.000185395  -0.002377396   0.000080959
                        -0.001631373  -0.043449685   0.028424237   0.383873278   0.083509335  -0.029762964  -0.208887506   0.007114142

   28   11.1  1.5  0.5  -0.212869225   0.007992414  -0.443003892   0.032802640   0.063110634   0.177077240   0.005520437   0.162093191
                         0.043297303  -0.001625545  -0.081326512   0.006021901   0.003005968   0.008434279  -0.001255383  -0.036862990

   29   12.1  1.5  0.5   0.000008559   0.000226166   0.000008141   0.000110387  -0.000416735   0.000148562   0.001187018  -0.000040574
                         0.013160825   0.350529896  -0.003199175  -0.043204763   0.363625517  -0.129596876   0.180816442  -0.006158047

   30   13.1  1.5  0.5  -0.063239810   0.002374323   0.009600383  -0.000710887  -0.001071667  -0.003006545   0.003226323   0.094734682
                        -0.319901133   0.012010845  -0.053085070   0.003930735   0.025585975   0.071789736   0.014244787   0.418260427

   31   14.1  1.5  0.5  -0.353833835   0.013284869  -0.091714624   0.006791115   0.059073823   0.165750440  -0.012593149  -0.369763998
                         0.069694029  -0.002616684  -0.016980801   0.001257365   0.003172273   0.008901361   0.002841917   0.083445288

   32   15.1  1.5  0.5   0.000000002  -0.000000000   0.000000021  -0.000000002  -0.000000000  -0.000000001  -0.000000003  -0.000000076
                        -0.000000000   0.000000000   0.000000004  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000017

   33   16.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000000003  -0.000000001  -0.000000015   0.000000002  -0.000000001   0.000000000  -0.000000000

   34   17.1  1.5  0.5   0.000000002  -0.000000000   0.000000005  -0.000000000  -0.000000001  -0.000000001  -0.000000000  -0.000000012
                         0.000000009  -0.000000000  -0.000000028   0.000000002   0.000000010   0.000000029  -0.000000002  -0.000000054

   35    1.1  1.5 -0.5   0.000004739   0.000126225   0.000001292   0.000017454  -0.000055690   0.000019848  -0.000411626   0.000014019
                        -0.000000007  -0.000000187  -0.000000034  -0.000000462  -0.000000494   0.000000176   0.000004034  -0.000000137

   36    2.1  1.5 -0.5   0.000000000   0.000000012   0.000000008   0.000000112  -0.000000389   0.000000139   0.000001130  -0.000000039
                        -0.000003924  -0.000104524  -0.000032565  -0.000439801   0.000193457  -0.000068949   0.000098287  -0.000003347

   37    3.1  1.5 -0.5   0.000000007   0.000000199  -0.000000017  -0.000000230  -0.000000511   0.000000182   0.000003991  -0.000000136
                         0.000004572   0.000121782   0.000001259   0.000017004  -0.000129407   0.000046121   0.000384382  -0.000013091

   38    4.1  1.5 -0.5  -0.000000457  -0.000012178   0.000033283   0.000449496  -0.000182677   0.000065106   0.000000148  -0.000000005
                         0.000000014   0.000000364   0.000000012   0.000000161  -0.000000286   0.000000102  -0.000000121   0.000000004

   39    5.1  1.5 -0.5   0.000092059  -0.000003456   0.000197524  -0.000014626   0.000114481   0.000321212   0.000000277   0.000008144
                        -0.000018235   0.000000685   0.000036090  -0.000002672   0.000005606   0.000015730  -0.000000084  -0.000002459

   40    6.1  1.5 -0.5   0.000095336  -0.000003579  -0.000308431   0.000022838   0.000056332   0.000158059   0.000008815   0.000258843
                        -0.000019138   0.000000718  -0.000056106   0.000004154   0.000002550   0.000007155  -0.000001981  -0.000058164

   41    7.1  1.5 -0.5  -0.000002565   0.000000096   0.000069493  -0.000005146  -0.000003186  -0.000008941  -0.000000651  -0.000019106
                        -0.000013749   0.000000516  -0.000382930   0.000028354   0.000065849   0.000184760  -0.000002926  -0.000085916

   42    8.1  1.5 -0.5   0.006094292  -0.000228810  -0.072018565   0.005332678   0.003314947   0.009301471   0.000676603   0.019865393
                         0.032829949  -0.001232569   0.397501947  -0.029433412  -0.068197998  -0.191351392   0.003051010   0.089584515

   43    9.1  1.5 -0.5  -0.002058014  -0.054814344   0.034484528   0.465717903  -0.184861898   0.065885119   0.032272501  -0.001099132
                         0.000008919   0.000240491  -0.000052468  -0.000708684   0.000223167  -0.000079440  -0.000496082   0.000016852

   44   10.1  1.5 -0.5   0.042524598  -0.001596658  -0.377679213   0.027965594  -0.029718081  -0.083383394   0.006944705   0.203912489
                        -0.008927857   0.000335112  -0.068681201   0.005085550  -0.001644403  -0.004614061  -0.001545526  -0.045379938

   45   11.1  1.5 -0.5   0.000026763   0.000715435  -0.000051716  -0.000698400  -0.000257679   0.000091861   0.001120915  -0.000038239
                        -0.008156002  -0.217226728  -0.033350769  -0.450406441   0.177277803  -0.063182114   0.166228235  -0.005661250

   46   12.1  1.5 -0.5  -0.343769098   0.012907001   0.042526439  -0.003148941  -0.129448305  -0.363208647  -0.006004645  -0.176311138
                         0.068513259  -0.002572299   0.007626646  -0.000564761  -0.006205545  -0.017411746   0.001366543   0.040129506

   47   13.1  1.5 -0.5  -0.012243246  -0.326091236  -0.003994499  -0.053946163   0.071850807  -0.025607747   0.428842356  -0.014605161
                         0.000026966   0.000716993  -0.000004346  -0.000058925   0.000516807  -0.000184061  -0.003267671   0.000111363

   48   14.1  1.5 -0.5  -0.000039132  -0.001041903  -0.000021188  -0.000286125   0.000764176  -0.000272163  -0.003185836   0.000108502
                        -0.013540061  -0.360630773  -0.006906501  -0.093272922   0.165987526  -0.059158311  -0.379049312   0.012909381

   49   15.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000
                         0.000000000   0.000000002   0.000000002   0.000000021  -0.000000001   0.000000000  -0.000000078   0.000000003

   50   16.1  1.5 -0.5   0.000000003  -0.000000000   0.000000015  -0.000000001  -0.000000001  -0.000000002  -0.000000000  -0.000000000
                        -0.000000001   0.000000000   0.000000003  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   51   17.1  1.5 -0.5   0.000000000   0.000000009  -0.000000002  -0.000000029   0.000000029  -0.000000010  -0.000000055   0.000000002
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000

   52    1.1  1.5 -1.5  -0.000039202   0.000001472  -0.000068130   0.000005045  -0.000004300  -0.000012065   0.000000669   0.000019641
                        -0.000196038   0.000007360   0.000374386  -0.000027722   0.000087602   0.000245794   0.000002852   0.000083749

   53    2.1  1.5 -1.5   0.000021908  -0.000000823   0.000059124  -0.000004378  -0.000017833  -0.000050036   0.000012508   0.000367275
                        -0.000004218   0.000000158   0.000010280  -0.000000761  -0.000001123  -0.000003151  -0.000002804  -0.000082334

   54    3.1  1.5 -1.5   0.000074012  -0.000002779   0.000015713  -0.000001163  -0.000157727  -0.000442553  -0.000002471  -0.000072548
                        -0.000014321   0.000000538   0.000002646  -0.000000196  -0.000007641  -0.000021438   0.000000579   0.000017013

   55    4.1  1.5 -1.5   0.000015604  -0.000000586   0.000007331  -0.000000543   0.000002457   0.000006895   0.000002714   0.000079700
                         0.000078127  -0.000002933  -0.000039096   0.000002895  -0.000046334  -0.000130005   0.000012144   0.000356583

   56    5.1  1.5 -1.5  -0.000000002  -0.000000042  -0.000000017  -0.000000229  -0.000000642   0.000000229   0.000004709  -0.000000160
                        -0.000002296  -0.000061144   0.000007038   0.000095044  -0.000043276   0.000015424   0.000475446  -0.000016192

   57    6.1  1.5 -1.5  -0.000000010  -0.000000264  -0.000000014  -0.000000186   0.000000050  -0.000000018   0.000000757  -0.000000026
                        -0.000005619  -0.000149667  -0.000013674  -0.000184676  -0.000381240   0.000135875   0.000004589  -0.000000156

   58    7.1  1.5 -1.5  -0.000003276  -0.000087249  -0.000014186  -0.000191588  -0.000376745   0.000134273  -0.000037845   0.000001289
                         0.000000004   0.000000108   0.000000012   0.000000160  -0.000000105   0.000000038  -0.000000335   0.000000011

   59    8.1  1.5 -1.5   0.008452902   0.225139019   0.014786987   0.199700965   0.390898402  -0.139317024   0.040355927  -0.001374346
                        -0.000008827  -0.000234735  -0.000007718  -0.000104703   0.000184789  -0.000065927   0.000448906  -0.000015151

   60    9.1  1.5 -1.5   0.047763724  -0.001793246   0.013133117  -0.000972449   0.002941181   0.008252878   0.002786015   0.081803629
                         0.239148503  -0.008978976  -0.070311426   0.005206254  -0.054652636  -0.153345340   0.012348350   0.362575751

   61   10.1  1.5 -1.5  -0.000014622  -0.000390821   0.000004646   0.000062258   0.000580198  -0.000206734  -0.002455892   0.000083773
                        -0.007510306  -0.200031531  -0.015649931  -0.211354933  -0.279628157   0.099660059  -0.307220050   0.010463016

   62   11.1  1.5 -1.5   0.088274416  -0.003314293   0.063466278  -0.004699437  -0.045270654  -0.127021230   0.012439689   0.365258135
                        -0.018277104   0.000686205   0.011767367  -0.000871324  -0.002224455  -0.006241887  -0.002801968  -0.082272435

   63   12.1  1.5 -1.5   0.000020092   0.000533247   0.000023426   0.000316494   0.000503512  -0.000179236  -0.004302048   0.000146475
                         0.013968832   0.372050791   0.003305922   0.044647432   0.285873904  -0.101886083  -0.387259444   0.013189022

   64   13.1  1.5 -1.5   0.099426792  -0.003732925   0.070553039  -0.005224123   0.003918255   0.010993879  -0.000891375  -0.026176192
                         0.494769975  -0.018576451  -0.387177143   0.028668853  -0.087286606  -0.244910382  -0.003893931  -0.114335513

   65   14.1  1.5 -1.5  -0.182815323   0.006863782  -0.006151516   0.000455544   0.159405712   0.447263716   0.004654374   0.136664304
                         0.036060109  -0.001354004  -0.001620663   0.000120043   0.007575124   0.021254647  -0.001089212  -0.031987100

   66   15.1  1.5 -1.5   0.000000028  -0.000000001  -0.000000020   0.000000001   0.000000021   0.000000060  -0.000000000  -0.000000006
                        -0.000000006   0.000000000  -0.000000003   0.000000000   0.000000001   0.000000003   0.000000000   0.000000001

   67   16.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000000007   0.000000000   0.000000003  -0.000000020   0.000000007   0.000000001  -0.000000000

   68   17.1  1.5 -1.5   0.000000006  -0.000000000  -0.000000007   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000003
                         0.000000033  -0.000000001   0.000000036  -0.000000003  -0.000000007  -0.000000021  -0.000000000  -0.000000012

   69    1.1  0.5  0.5   0.000015871  -0.000000596   0.000053726  -0.000003978  -0.000016044  -0.000045016   0.000006369   0.000187026
                         0.000084299  -0.000003165  -0.000296395   0.000021947   0.000339648   0.000952990   0.000028186   0.000827595

   70    2.1  0.5  0.5   0.000000111   0.000002953  -0.000000043  -0.000000584   0.000000177  -0.000000063   0.000002434  -0.000000082
                         0.000060706   0.001616865  -0.000036652  -0.000494996  -0.001196117   0.000426299   0.000023860  -0.000000813

   71    3.1  0.5  0.5   0.001260612  -0.000047330  -0.000327521   0.000024252   0.000419089   0.001175889  -0.000013764  -0.000404132
                        -0.000249378   0.000009363  -0.000058729   0.000004349   0.000020573   0.000057725   0.000003022   0.000088724

   72    4.1  0.5  0.5  -0.000160608   0.000006030   0.000234731  -0.000017381   0.000001977   0.000005547  -0.000002389  -0.000070141
                        -0.000807137   0.000030305  -0.001291231   0.000095610  -0.000039437  -0.000110654  -0.000010544  -0.000309600

   73    5.1  0.5  0.5  -0.000033715  -0.000897972   0.000021702   0.000293083  -0.000018656   0.000006649  -0.001324420   0.000045106
                        -0.000000072  -0.000001927  -0.000000036  -0.000000489  -0.000002109   0.000000751   0.000013110  -0.000000447

   74    6.1  0.5  0.5   0.000696431  -0.000026148   0.001185673  -0.000087794   0.000042281   0.000118633  -0.000020032  -0.000588176
                        -0.000139698   0.000005245   0.000215904  -0.000015987   0.000002587   0.000007259   0.000004466   0.000131142

   75    7.1  0.5  0.5   0.000000077   0.000002065  -0.000000051  -0.000000687  -0.000001153   0.000000410   0.000010862  -0.000000370
                        -0.000020777  -0.000553370   0.000056073   0.000757278  -0.000258722   0.000092209   0.001091661  -0.000037179

   76    1.1  0.5 -0.5  -0.000003220  -0.000085775   0.000022305   0.000301225  -0.000954051   0.000340026  -0.000848437   0.000028895
                         0.000000036   0.000000967   0.000000015   0.000000207  -0.000001762   0.000000628   0.000006876  -0.000000235

   77    2.1  0.5 -0.5   0.001586055  -0.000059549  -0.000486893   0.000036052  -0.000425789  -0.001194688   0.000000810   0.000023785
                        -0.000314153   0.000011795  -0.000089197   0.000006605  -0.000020837  -0.000058467  -0.000000105  -0.000003079

   78    3.1  0.5 -0.5  -0.000000100  -0.000002656  -0.000000063  -0.000000858  -0.000000004   0.000000001   0.000005893  -0.000000200
                        -0.000048247  -0.001285039   0.000024638   0.000332744  -0.001177305   0.000419594   0.000413715  -0.000014090

   79    4.1  0.5 -0.5   0.000030899   0.000822960   0.000097177   0.001312393   0.000110793  -0.000039487   0.000317437  -0.000010811
                        -0.000000029  -0.000000781   0.000000018   0.000000240  -0.000000115   0.000000041  -0.000002402   0.000000082

   80    5.1  0.5 -0.5  -0.000177971   0.000006682  -0.000052953   0.000003921  -0.000000424  -0.000001192  -0.000009864  -0.000289636
                        -0.000880161   0.000033046   0.000288260  -0.000021344  -0.000006678  -0.000018737  -0.000044017  -0.001292428

   81    6.1  0.5 -0.5   0.000000016   0.000000423  -0.000000010  -0.000000136  -0.000001434   0.000000511   0.000006618  -0.000000225
                        -0.000026669  -0.000710304  -0.000089238  -0.001205170  -0.000118846   0.000042357   0.000602582  -0.000020522

   82    7.1  0.5 -0.5  -0.000542222   0.000020358   0.000745165  -0.000055176  -0.000092078  -0.000258355   0.000036281   0.001065304
                         0.000110534  -0.000004150   0.000134905  -0.000009989  -0.000004931  -0.000013836  -0.000008129  -0.000238680


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.000254355   0.000003221  -0.000025949   0.000197770  -0.408606204  -0.003329451  -0.287958535  -0.009306501
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000597   0.000000008  -0.000000050   0.000000382  -0.000708462  -0.000005751   0.000544014   0.000017694
                         0.000600427   0.000007604   0.000028396  -0.000216425   0.606108377   0.004938782  -0.343596050  -0.011104682

    3    3.1  1.5  1.5  -0.000000235  -0.000000003  -0.000000043   0.000000328   0.000156766   0.000001296   0.000159927   0.000005236
                        -0.000086849  -0.000001100   0.000035653  -0.000271727  -0.171449979  -0.001397009  -0.234962150  -0.007593731

    4    4.1  1.5  1.5   0.000551783   0.000006988   0.000037407  -0.000285103  -0.503592652  -0.004103449   0.363436066   0.011745893
                        -0.000000680  -0.000000009   0.000000079  -0.000000604  -0.000877127  -0.000007129   0.000407151   0.000013294

    5    5.1  1.5  1.5  -0.000002421   0.000191178   0.000016300   0.000002139  -0.000182779   0.022429712   0.002778843  -0.085984229
                        -0.000000894   0.000070604   0.000029461   0.000003865   0.000192870  -0.023670134   0.006613845  -0.204642759

    6    6.1  1.5  1.5   0.000001680  -0.000132655   0.000204027   0.000026770   0.000257856  -0.031648252   0.001444272  -0.044681406
                         0.000000623  -0.000049186   0.000370978   0.000048675  -0.000270634   0.033214094   0.003375036  -0.104429780

    7    7.1  1.5  1.5  -0.000000701   0.000055329  -0.000367299  -0.000048192  -0.000573870   0.070428666   0.005510050  -0.170490516
                         0.000001891  -0.000149290   0.000201993   0.000026503  -0.000547478   0.067190404  -0.002341264   0.072436187

    8    8.1  1.5  1.5   0.000584631  -0.046150792   0.305834779   0.040127716   0.000000484  -0.000059421  -0.000004642   0.000143621
                        -0.001579443   0.124709035  -0.168269811  -0.022078271   0.000000462  -0.000056708   0.000001973  -0.000061045

    9    9.1  1.5  1.5   0.443139177   0.005612307   0.032730445  -0.249457459  -0.000398181  -0.000003245   0.000323600   0.000010458
                         0.000463111   0.000005949   0.000093475  -0.000711461   0.000000357   0.000000003  -0.000000099  -0.000000003

   10   10.1  1.5  1.5   0.002358347  -0.186209224   0.123807126   0.016244428   0.000000266  -0.000032633  -0.000000529   0.000016385
                         0.000872102  -0.068852028   0.224986450   0.029519872  -0.000000279   0.000034280  -0.000001297   0.000040125

   11   11.1  1.5  1.5   0.000022725   0.000000218  -0.000137341   0.001045791  -0.000000413  -0.000000003  -0.000000457  -0.000000015
                         0.483895028   0.006128479   0.028321459  -0.215854303   0.000481352   0.000003922  -0.000318792  -0.000010303

   12   12.1  1.5  1.5   0.000681913  -0.053842369  -0.117971819  -0.015478793  -0.000000018   0.000002194  -0.000002592   0.000080194
                         0.000250365  -0.019775224  -0.214423536  -0.028133844   0.000000018  -0.000002222  -0.000006135   0.000189825

   13   13.1  1.5  1.5  -0.246689457  -0.003124337   0.019342465  -0.147418667   0.000375465   0.000003059   0.000219183   0.000007084
                         0.000515716   0.000006586   0.000083942  -0.000639832   0.000000394   0.000000003  -0.000000779  -0.000000025

   14   14.1  1.5  1.5  -0.000586011  -0.000007353   0.000031609  -0.000240730   0.000000818   0.000000007   0.000000021   0.000000001
                         0.153758301   0.001947373  -0.025534545   0.194612138   0.000226634   0.000001847   0.000148683   0.000004805

   15   15.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000004   0.000000000
                        -0.000000035  -0.000000000  -0.000000010   0.000000072  -0.000000093  -0.000000001  -0.000000623  -0.000000020

   16   16.1  1.5  1.5   0.000000000  -0.000000001   0.000000005   0.000000001  -0.000000000   0.000000001   0.000000003  -0.000000094
                         0.000000000  -0.000000001   0.000000010   0.000000001   0.000000000  -0.000000002   0.000000007  -0.000000222

   17   17.1  1.5  1.5  -0.000000023  -0.000000000  -0.000000004   0.000000028   0.000000132   0.000000001   0.000001030   0.000000033
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000003   0.000000000

   18    1.1  1.5  0.5   0.000001872  -0.000147829   0.000303091   0.000039768  -0.000281930   0.034599513   0.010986768  -0.339947969
                        -0.000005063   0.000399797  -0.000166539  -0.000021851  -0.000272171   0.033402205  -0.004610402   0.142656874

   19    2.1  1.5  0.5  -0.000000025   0.000001969   0.000006209   0.000000815   0.000869024  -0.106653041   0.002886338  -0.089302649
                        -0.000000005   0.000000383   0.000011814   0.000001550  -0.000910385   0.111727271   0.006825780  -0.211201408

   20    3.1  1.5  0.5   0.000001100  -0.000086842  -0.000270369  -0.000035474  -0.000522159   0.064077498   0.001563093  -0.048365496
                         0.000000403  -0.000031833  -0.000491376  -0.000064472   0.000548017  -0.067255358   0.003712765  -0.114878821

   21    4.1  1.5  0.5  -0.000000501   0.000039586  -0.000081726  -0.000010723  -0.000221782   0.027217799  -0.001857811   0.057483807
                         0.000001356  -0.000107056   0.000044907   0.000005892  -0.000211516   0.025957618   0.000789807  -0.024434716

   22    5.1  1.5  0.5  -0.000000589  -0.000000008  -0.000000083   0.000000630   0.000046884   0.000000365  -0.000436123  -0.000014135
                        -0.000253478  -0.000003210   0.000071914  -0.000548097  -0.129189830  -0.001052696  -0.250035179  -0.008080857

   23    6.1  1.5  0.5   0.000000499   0.000000006  -0.000000058   0.000000441  -0.000116060  -0.000000969   0.000222798   0.000007178
                         0.000402807   0.000005102   0.000027654  -0.000210766   0.216200752   0.001761649   0.462476016   0.014946723

   24    7.1  1.5  0.5  -0.000423609  -0.000005365  -0.000020887   0.000159189   0.265168359   0.002160669   0.172799521   0.005584706
                         0.000000548   0.000000007  -0.000000050   0.000000384   0.000305805   0.000002496   0.000274046   0.000008948

   25    8.1  1.5  0.5   0.352687358   0.004466752   0.017339062  -0.132151222  -0.000223962  -0.000001825  -0.000145661  -0.000004708
                        -0.000575713  -0.000007250   0.000050656  -0.000385412  -0.000000322  -0.000000003  -0.000000361  -0.000000012

   26    9.1  1.5  0.5  -0.000537997   0.042476082  -0.086976737  -0.011412003  -0.000000169   0.000020683  -0.000002241   0.000069331
                         0.001452952  -0.114722525   0.048158899   0.006318804  -0.000000164   0.000020125   0.000000960  -0.000029696

   27   10.1  1.5  0.5   0.000740486   0.000009435   0.000011257  -0.000086052  -0.000000169  -0.000000001   0.000000332   0.000000011
                         0.393425603   0.004982742  -0.019867893   0.151422821   0.000210252   0.000001713   0.000435153   0.000014064

   28   11.1  1.5  0.5   0.000133587  -0.010547906  -0.031165603  -0.004089162   0.000000654  -0.000080260   0.000002646  -0.000081853
                         0.000042227  -0.003335951  -0.057482470  -0.007542099  -0.000000685   0.000084080   0.000006208  -0.000192086

   29   12.1  1.5  0.5   0.000135693   0.000001881   0.000084888  -0.000646079   0.000000022   0.000000000   0.000000160   0.000000005
                        -0.047705527  -0.000604116  -0.061084932   0.465561261  -0.000030970  -0.000000252  -0.000082346  -0.000002661

   30   13.1  1.5  0.5  -0.001532533   0.120997025  -0.248245507  -0.032571682   0.000000252  -0.000030972  -0.000009122   0.000282251
                         0.004149964  -0.327672311   0.135348821   0.017758798   0.000000243  -0.000029875   0.000003843  -0.000118911

   31   14.1  1.5  0.5  -0.000914214   0.072185373   0.223507925   0.029325923   0.000000558  -0.000068520  -0.000000915   0.000028315
                        -0.000327583   0.025879563   0.407125775   0.053417716  -0.000000585   0.000071737  -0.000002139   0.000066169

   32   15.1  1.5  0.5  -0.000000000   0.000000022   0.000000058   0.000000008  -0.000000001   0.000000073   0.000000000  -0.000000011
                        -0.000000000   0.000000008   0.000000104   0.000000014   0.000000001  -0.000000077   0.000000001  -0.000000028

   33   16.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000
                        -0.000000007  -0.000000000   0.000000001  -0.000000006   0.000000685   0.000000006  -0.000000825  -0.000000027

   34   17.1  1.5  0.5   0.000000000  -0.000000022   0.000000032   0.000000004   0.000000001  -0.000000079  -0.000000002   0.000000051
                        -0.000000001   0.000000060  -0.000000018  -0.000000002   0.000000001  -0.000000075   0.000000001  -0.000000021

   35    1.1  1.5 -0.5   0.000426252   0.000005398  -0.000045376   0.000345831  -0.048091372  -0.000391864  -0.368666217  -0.011914865
                        -0.000000758  -0.000000010  -0.000000037   0.000000283   0.000231368   0.000001883   0.000908307   0.000029467

   36    2.1  1.5 -0.5  -0.000000320  -0.000000004   0.000000031  -0.000000237  -0.000125946  -0.000001037  -0.000055991  -0.000001978
                         0.000001980   0.000000025   0.000001751  -0.000013344   0.154459828   0.001258572   0.229305462   0.007410952

   37    3.1  1.5 -0.5   0.000000096   0.000000001   0.000000103  -0.000000786   0.000164988   0.000001318   0.000161982   0.000005263
                        -0.000092493  -0.000001171  -0.000073587   0.000560847  -0.092893389  -0.000756948   0.124644850   0.004028381

   38    4.1  1.5 -0.5  -0.000114140  -0.000001446   0.000012235  -0.000093251  -0.037611224  -0.000306473   0.062461392   0.002018722
                         0.000000204   0.000000003   0.000000010  -0.000000077  -0.000048065  -0.000000390   0.000133828   0.000004422

   39    5.1  1.5 -0.5  -0.000003011   0.000237698  -0.000264101  -0.000034652   0.000727233  -0.089246599   0.003132239  -0.096917835
                        -0.000001115   0.000088039  -0.000480271  -0.000063015  -0.000761118   0.093408023   0.007449129  -0.230487992

   40    6.1  1.5 -0.5   0.000004786  -0.000377882  -0.000101732  -0.000013348  -0.001216740   0.149328093  -0.005811003   0.179801304
                         0.000001767  -0.000139495  -0.000184589  -0.000024219   0.001273952  -0.156345448  -0.013770868   0.426093425

   41    7.1  1.5 -0.5   0.000001858  -0.000146720  -0.000139393  -0.000018289  -0.001563410   0.191869307   0.005140833  -0.159066464
                        -0.000005033   0.000397389   0.000076882   0.000010087  -0.001491391   0.183031476  -0.002181941   0.067510070

   42    8.1  1.5 -0.5  -0.001548471   0.122267809   0.115685705   0.015178642   0.000001321  -0.000162098  -0.000004332   0.000134035
                         0.004189769  -0.330816093  -0.063882014  -0.008381794   0.000001259  -0.000154543   0.000001843  -0.000057027

   43    9.1  1.5 -0.5  -0.122333161  -0.001549354   0.013044474  -0.099418657  -0.000028857  -0.000000235   0.000075422   0.000002438
                         0.000270292   0.000003461   0.000052978  -0.000403812   0.000000252   0.000000002   0.000000369   0.000000012

   44   10.1  1.5 -0.5   0.004673298  -0.368994111   0.072886160   0.009563222  -0.000001183   0.000145178  -0.000005464   0.000169066
                         0.001728612  -0.136482965   0.132727110   0.017414882   0.000001239  -0.000152082  -0.000012959   0.000400968

   45   11.1  1.5 -0.5   0.000509575   0.000006475  -0.000041168   0.000313886  -0.000000096  -0.000000001  -0.000000634  -0.000000021
                        -0.011051118  -0.000139953  -0.008579208   0.065386777   0.000116238   0.000000947   0.000208798   0.000006748

   46   12.1  1.5 -0.5  -0.000567643   0.044820866   0.224428685   0.029446735   0.000000174  -0.000021387   0.000001041  -0.000032199
                        -0.000206741   0.016337861   0.407896397   0.053518837  -0.000000182   0.000022399   0.000002449  -0.000075790

   47   13.1  1.5 -0.5  -0.349298160  -0.004423892   0.037098263  -0.282744859   0.000043032   0.000000351   0.000306277   0.000009899
                         0.000468072   0.000006029  -0.000090862   0.000692585  -0.000000189  -0.000000002  -0.000000325  -0.000000011

   48   14.1  1.5 -0.5  -0.000624987  -0.000008081  -0.000027583   0.000209300  -0.000000051  -0.000000000   0.000000328   0.000000011
                         0.076681740   0.000971099   0.060938177  -0.464442834   0.000099203   0.000000808  -0.000071972  -0.000002326

   49   15.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000   0.000000001   0.000000000
                         0.000000024   0.000000000   0.000000016  -0.000000119  -0.000000106  -0.000000001   0.000000030   0.000000001

   50   16.1  1.5 -0.5  -0.000000000   0.000000007  -0.000000003  -0.000000000  -0.000000004   0.000000473   0.000000010  -0.000000321
                        -0.000000000   0.000000002  -0.000000005  -0.000000001   0.000000004  -0.000000496   0.000000025  -0.000000759

   51   17.1  1.5 -0.5   0.000000064   0.000000001  -0.000000005   0.000000036   0.000000109   0.000000001   0.000000055   0.000000002
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000

   52    1.1  1.5 -1.5   0.000001112  -0.000087789   0.000173406   0.000022752  -0.002406455   0.295331753   0.008572622  -0.265251089
                        -0.000003023   0.000238725  -0.000095096  -0.000012477  -0.002300916   0.282379507  -0.003622309   0.112080228

   53    2.1  1.5 -1.5  -0.000007134   0.000563325   0.000104402   0.000013698   0.003408935  -0.418357215  -0.004338502   0.134236772
                        -0.000002632   0.000207794   0.000189578   0.000024874  -0.003573620   0.438571667  -0.010222117   0.316289473

   54    3.1  1.5 -1.5   0.000001031  -0.000081431   0.000130946   0.000017181  -0.000964508   0.118372316  -0.002960482   0.091600106
                         0.000000383  -0.000030196   0.000238094   0.000031240   0.001010624  -0.124028685  -0.006992877   0.216371574

   55    4.1  1.5 -1.5   0.000002420  -0.000191082  -0.000249690  -0.000032761  -0.002970811   0.364592074  -0.010814477   0.334618242
                        -0.000006556   0.000517641   0.000137620   0.000018057  -0.002830658   0.347388757   0.004584023  -0.141832901

   56    5.1  1.5 -1.5  -0.000000281  -0.000000004   0.000000017  -0.000000126  -0.000146240  -0.000001180  -0.000447969  -0.000014551
                        -0.000203799  -0.000002581  -0.000004418   0.000033670   0.032608984   0.000265718  -0.221972399  -0.007173890

   57    6.1  1.5 -1.5   0.000000379   0.000000005   0.000000067  -0.000000510   0.000078917   0.000000657   0.000511456   0.000016738
                         0.000141480   0.000001792  -0.000055551   0.000423381  -0.045877900  -0.000373808  -0.113585850  -0.003671037

   58    7.1  1.5 -1.5   0.000159212   0.000002017  -0.000054999   0.000419177   0.097338254   0.000793132   0.185240071   0.005986821
                        -0.000000402  -0.000000005  -0.000000065   0.000000496   0.000108056   0.000000885   0.000365197   0.000011999

   59    8.1  1.5 -1.5  -0.132974301  -0.001684168   0.045800433  -0.349069348  -0.000082138  -0.000000669  -0.000156055  -0.000005044
                         0.000272421   0.000003572   0.000063208  -0.000481309  -0.000000077  -0.000000001  -0.000000331  -0.000000011

   60    9.1  1.5 -1.5   0.001931464  -0.152511607  -0.218383777  -0.028653314  -0.000002343   0.000287550  -0.000009635   0.000298120
                        -0.005269485   0.416068208   0.120573861   0.015820187  -0.000002244   0.000275433   0.000004068  -0.000125862

   61   10.1  1.5 -1.5   0.000352328   0.000004546   0.000048773  -0.000371555   0.000000104   0.000000001   0.000000524   0.000000017
                         0.198530483   0.002514427  -0.033694241   0.256801419  -0.000047329  -0.000000386   0.000043339   0.000001401

   62   11.1  1.5 -1.5  -0.005751810   0.454151939   0.104709138   0.013738617   0.000002708  -0.000332354  -0.000003997   0.000123660
                        -0.002115404   0.167034174   0.188759557   0.024766395  -0.000002837   0.000348197  -0.000009496   0.000293831

   63   12.1  1.5 -1.5  -0.000023261  -0.000000377  -0.000043922   0.000334231   0.000000050   0.000000000   0.000000014   0.000000000
                         0.057359041   0.000726422   0.032110813  -0.244733919   0.000003122   0.000000025   0.000206070   0.000006660

   64   13.1  1.5 -1.5  -0.001084523   0.085627095  -0.128949961  -0.016919232   0.000002213  -0.000271650  -0.000006535   0.000202202
                         0.002930074  -0.231352447   0.071446346   0.009374304   0.000002112  -0.000259191   0.000002734  -0.000084593

   65   14.1  1.5 -1.5  -0.001830245   0.144512144  -0.093789094  -0.012305840   0.000001281  -0.000157213   0.000001870  -0.000057852
                        -0.000665220   0.052518557  -0.170521400  -0.022373652  -0.000001330   0.000163241   0.000004427  -0.000136967

   66   15.1  1.5 -1.5   0.000000000  -0.000000033  -0.000000035  -0.000000005  -0.000000001   0.000000064  -0.000000008   0.000000246
                         0.000000000  -0.000000012  -0.000000064  -0.000000008   0.000000001  -0.000000067  -0.000000019   0.000000573

   67   16.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000002   0.000000000  -0.000000001   0.000000011   0.000000002   0.000000000  -0.000000241  -0.000000008

   68   17.1  1.5 -1.5  -0.000000000   0.000000008   0.000000025   0.000000003   0.000000001  -0.000000095  -0.000000031   0.000000947
                         0.000000000  -0.000000022  -0.000000013  -0.000000002   0.000000001  -0.000000091   0.000000013  -0.000000404

   69    1.1  0.5  0.5  -0.000000001   0.000000116   0.000004612   0.000000605  -0.000000003   0.000000366  -0.000000106   0.000003288
                         0.000000004  -0.000000319  -0.000002534  -0.000000332  -0.000000003   0.000000347   0.000000045  -0.000001397

   70    2.1  0.5  0.5   0.000000004   0.000000000   0.000000000  -0.000000002  -0.000000012  -0.000000000  -0.000000009  -0.000000000
                        -0.000002027  -0.000000026   0.000000109  -0.000000830   0.000009084   0.000000074  -0.000001926  -0.000000062

   71    3.1  0.5  0.5  -0.000000010   0.000000789  -0.000000454  -0.000000059   0.000000014  -0.000001719  -0.000000087   0.000002705
                        -0.000000004   0.000000289  -0.000000832  -0.000000109  -0.000000015   0.000001808  -0.000000208   0.000006425

   72    4.1  0.5  0.5  -0.000000003   0.000000272  -0.000002135  -0.000000280   0.000000019  -0.000002301  -0.000000052   0.000001622
                         0.000000009  -0.000000736   0.000001176   0.000000154   0.000000018  -0.000002192   0.000000023  -0.000000699

   73    5.1  0.5  0.5  -0.000000597  -0.000000008   0.000000577  -0.000004396  -0.000013023  -0.000000106   0.000000964   0.000000031
                         0.000000001   0.000000000   0.000000000  -0.000000003  -0.000000017  -0.000000000   0.000000012   0.000000000

   74    6.1  0.5  0.5  -0.000000029   0.000002261  -0.000000446  -0.000000059   0.000000027  -0.000003333  -0.000000082   0.000002550
                        -0.000000011   0.000000836  -0.000000800  -0.000000105  -0.000000029   0.000003500  -0.000000196   0.000006074

   75    7.1  0.5  0.5   0.000000006   0.000000000  -0.000000000   0.000000003  -0.000000003  -0.000000000  -0.000000002  -0.000000000
                         0.000002147   0.000000027  -0.000000096   0.000000730  -0.000001592  -0.000000013  -0.000003883  -0.000000125

   76    1.1  0.5 -0.5   0.000000340   0.000000004   0.000000690  -0.000005262   0.000000504   0.000000004  -0.000003572  -0.000000115
                         0.000000001   0.000000000   0.000000001  -0.000000004   0.000000002  -0.000000000  -0.000000007  -0.000000000

   77    2.1  0.5 -0.5   0.000000024  -0.000001904   0.000000398   0.000000052   0.000000051  -0.000006269  -0.000000024   0.000000741
                         0.000000009  -0.000000696   0.000000729   0.000000096  -0.000000054   0.000006574  -0.000000057   0.000001778

   78    3.1  0.5 -0.5   0.000000001   0.000000000   0.000000000  -0.000000002   0.000000007   0.000000000   0.000000009   0.000000000
                        -0.000000840  -0.000000011   0.000000124  -0.000000948  -0.000002495  -0.000000020   0.000006971   0.000000225

   79    4.1  0.5 -0.5   0.000000785   0.000000010  -0.000000320   0.000002438  -0.000003178  -0.000000026  -0.000001766  -0.000000057
                        -0.000000001  -0.000000000  -0.000000001   0.000000004  -0.000000006  -0.000000000  -0.000000012  -0.000000000

   80    5.1  0.5 -0.5  -0.000000003   0.000000208  -0.000003853  -0.000000506  -0.000000077   0.000009425  -0.000000029   0.000000883
                         0.000000007  -0.000000560   0.000002117   0.000000278  -0.000000073   0.000008988   0.000000012  -0.000000386

   81    6.1  0.5 -0.5  -0.000000004  -0.000000000  -0.000000001   0.000000006   0.000000010   0.000000000   0.000000015   0.000000000
                        -0.000002411  -0.000000031   0.000000120  -0.000000916  -0.000004833  -0.000000039   0.000006588   0.000000213

   82    7.1  0.5 -0.5  -0.000000025   0.000002013  -0.000000348  -0.000000046  -0.000000009   0.000001103  -0.000000049   0.000001510
                        -0.000000009   0.000000746  -0.000000641  -0.000000084   0.000000009  -0.000001148  -0.000000116   0.000003577


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.027947747  -0.026329250   0.148282309   0.021456775   0.101151766   0.004547156   0.525297879   0.055968669
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.001166978  -0.001098840  -0.000137477  -0.000019881  -0.000081679  -0.000003665  -0.000380618  -0.000040553
                        -0.065425757   0.061636593   0.097846820   0.014158651   0.050188544   0.002256191   0.003304812   0.000352120

    3    3.1  1.5  1.5   0.002176523  -0.002049565   0.000049502   0.000007239  -0.000076676  -0.000003511  -0.000125514  -0.000013374
                        -0.142058956   0.133831668   0.255231162   0.036932510  -0.280269549  -0.012599478   0.215161424   0.022924672

    4    4.1  1.5  1.5   0.132056818  -0.124408763  -0.219483932  -0.031759812  -0.147140520  -0.006614581  -0.132909246  -0.014161016
                         0.002119940  -0.001996235  -0.000006367  -0.000000954   0.000023157   0.000001053  -0.000006977  -0.000000744

    5    5.1  1.5  1.5   0.116959843   0.124150915   0.000753809  -0.005208376  -0.009709495   0.215985614  -0.006014591   0.056450289
                         0.189661740   0.201320399   0.026459810  -0.182856959   0.002037132  -0.045316101   0.000028788  -0.000270194

    6    6.1  1.5  1.5  -0.146618983  -0.155633693   0.001626356  -0.011239314  -0.004456372   0.099133278   0.034321627  -0.322128229
                        -0.237230643  -0.251813366   0.058219250  -0.402338344   0.000935700  -0.020814741  -0.000181460   0.001703090

    7    7.1  1.5  1.5  -0.186111513  -0.197551904   0.060364038  -0.417160420  -0.001692118   0.037641264  -0.000053919   0.000506040
                         0.115113450   0.122191103  -0.001688817   0.011671424  -0.008067948   0.179466243  -0.007236582   0.067919857

    8    8.1  1.5  1.5   0.000157047   0.000166701  -0.000050845   0.000351377   0.000001428  -0.000031759  -0.000000031   0.000000289
                        -0.000097028  -0.000102994   0.000001417  -0.000009794   0.000006812  -0.000151537  -0.000004913   0.000046109

    9    9.1  1.5  1.5   0.000109532  -0.000103189  -0.000194226  -0.000028105  -0.000130691  -0.000005875   0.000116856   0.000012451
                         0.000001755  -0.000001653   0.000000018   0.000000002   0.000000253   0.000000011   0.000000093   0.000000010

   10   10.1  1.5  1.5  -0.000157962  -0.000167674   0.000000650  -0.000004491   0.000002229  -0.000049589  -0.000020650   0.000193811
                        -0.000255913  -0.000271645   0.000024096  -0.000166525  -0.000000465   0.000010346   0.000000106  -0.000000998

   11   11.1  1.5  1.5   0.000001117  -0.000001051   0.000000419   0.000000061   0.000000278   0.000000012  -0.000000483  -0.000000051
                        -0.000073812   0.000069537   0.000116248   0.000016821   0.000002843   0.000000128  -0.000026301  -0.000002802

   12   12.1  1.5  1.5   0.000001569   0.000001666  -0.000001364   0.000009424   0.000008729  -0.000194172   0.000011514  -0.000108062
                         0.000002248   0.000002386  -0.000048395   0.000334447  -0.000001832   0.000040741  -0.000000063   0.000000588

   13   13.1  1.5  1.5  -0.000032061   0.000030204  -0.000110471  -0.000015985  -0.000075662  -0.000003401   0.000349855   0.000037276
                        -0.000000445   0.000000419   0.000000533   0.000000077  -0.000000423  -0.000000019  -0.000000295  -0.000000031

   14   14.1  1.5  1.5  -0.000001819   0.000001713  -0.000000071  -0.000000010   0.000000043   0.000000002   0.000000467   0.000000050
                         0.000109691  -0.000103339  -0.000199655  -0.000028890   0.000240517   0.000010812   0.000143659   0.000015306

   15   15.1  1.5  1.5   0.000000004  -0.000000004  -0.000000003  -0.000000000   0.000000006   0.000000000  -0.000000000  -0.000000000
                        -0.000000132   0.000000124   0.000000414   0.000000060   0.000000231   0.000000010   0.000000314   0.000000033

   16   16.1  1.5  1.5  -0.000000041  -0.000000043   0.000000003  -0.000000023   0.000000013  -0.000000279   0.000000033  -0.000000312
                        -0.000000065  -0.000000070   0.000000118  -0.000000814  -0.000000003   0.000000059  -0.000000000   0.000000002

   17   17.1  1.5  1.5   0.000000526  -0.000000495  -0.000000841  -0.000000122   0.000001666   0.000000075  -0.000000129  -0.000000014
                         0.000000009  -0.000000008  -0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000002  -0.000000000

   18    1.1  1.5  0.5   0.294040066   0.312114941   0.024328786  -0.168129990  -0.000890439   0.019807930   0.000025053  -0.000235150
                        -0.181470220  -0.192627573  -0.000679699   0.004696609  -0.004246249   0.094455799   0.016221212  -0.152245128

   19    2.1  1.5  0.5  -0.114108297  -0.121124219   0.000696092  -0.004810633   0.000818398  -0.018204069  -0.066080367   0.620202481
                        -0.183846917  -0.195148097   0.025667512  -0.177381600  -0.000167871   0.003734282   0.000346972  -0.003256498

   20    3.1  1.5  0.5   0.049583895   0.052632468   0.000783000  -0.005409547  -0.026582816   0.591327505   0.013451098  -0.126246082
                         0.080429358   0.085373422   0.027667994  -0.191206418   0.005577529  -0.124072496  -0.000062145   0.000583275

   21    4.1  1.5  0.5   0.054356739   0.057698079  -0.064165076   0.443428421   0.000897801  -0.019971645   0.000002794  -0.000026240
                        -0.033573174  -0.035637335   0.001801159  -0.012447480   0.004280837  -0.095222813   0.002264165  -0.021250248

   22    5.1  1.5  0.5  -0.002338325   0.002201980   0.000031774   0.000004492   0.000161258   0.000007340   0.000049102   0.000005232
                         0.192707820  -0.181547368  -0.064666114  -0.009357330   0.566329066   0.025459061   0.097537861   0.010392334

   23    6.1  1.5  0.5   0.000071324  -0.000067216  -0.000060692  -0.000008926   0.000078264   0.000003576  -0.000045476  -0.000004846
                        -0.041377794   0.038981546  -0.107499907  -0.015555466   0.286437609   0.012876730   0.199097912   0.021213178

   24    7.1  1.5  0.5   0.220844379  -0.208054306  -0.395093622  -0.057170923  -0.074015811  -0.003327213   0.225273316   0.024002089
                         0.003190780  -0.003004682   0.000066711   0.000009593   0.000025429   0.000001125   0.000018760   0.000001999

   25    8.1  1.5  0.5  -0.000186250   0.000175464   0.000332935   0.000048176   0.000062554   0.000002812   0.000153454   0.000016350
                        -0.000002646   0.000002492  -0.000000049  -0.000000007   0.000000036   0.000000002   0.000000026   0.000000003

   26    9.1  1.5  0.5   0.000027090   0.000028756  -0.000055661   0.000384656   0.000000830  -0.000018470   0.000000094  -0.000000880
                        -0.000017223  -0.000018282   0.000001590  -0.000010986   0.000003881  -0.000086323  -0.000000669   0.000006277

   27   10.1  1.5  0.5   0.000001231  -0.000001159   0.000000046   0.000000006  -0.000000015  -0.000000001   0.000000092   0.000000010
                        -0.000129355   0.000121863  -0.000036176  -0.000005235  -0.000112724  -0.000005067  -0.000063580  -0.000006774

   28   11.1  1.5  0.5  -0.000088071  -0.000093486   0.000000815  -0.000005629  -0.000002983   0.000066357   0.000042886  -0.000402511
                        -0.000142569  -0.000151333   0.000025170  -0.000173943   0.000000616  -0.000013710  -0.000000242   0.000002271

   29   12.1  1.5  0.5   0.000001484  -0.000001398   0.000000026   0.000000004  -0.000000145  -0.000000007   0.000000013   0.000000001
                        -0.000104100   0.000098071   0.000099722   0.000014430  -0.000523396  -0.000023529   0.000137282   0.000014627

   30   13.1  1.5  0.5  -0.000250791  -0.000266208  -0.000016329   0.000112848   0.000000647  -0.000014399   0.000000054  -0.000000507
                         0.000154705   0.000164217   0.000000529  -0.000003655   0.000003306  -0.000073542   0.000011126  -0.000104428

   31   14.1  1.5  0.5  -0.000057742  -0.000061292  -0.000000533   0.000003679   0.000022279  -0.000495597   0.000016416  -0.000154076
                        -0.000092434  -0.000098117  -0.000019528   0.000134953  -0.000004672   0.000103925  -0.000000060   0.000000564

   32   15.1  1.5  0.5   0.000000116   0.000000123   0.000000001  -0.000000008   0.000000001  -0.000000030   0.000000010  -0.000000095
                         0.000000187   0.000000199   0.000000022  -0.000000152  -0.000000001   0.000000011  -0.000000000   0.000000004

   33   16.1  1.5  0.5   0.000000003  -0.000000003  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000147   0.000000138  -0.000000493  -0.000000071   0.000000392   0.000000018   0.000000077   0.000000008

   34   17.1  1.5  0.5   0.000000062   0.000000066   0.000000129  -0.000000894  -0.000000012   0.000000265  -0.000000001   0.000000005
                        -0.000000039  -0.000000042  -0.000000004   0.000000026  -0.000000057   0.000001262  -0.000000098   0.000000918

   35    1.1  1.5 -0.5   0.366740655  -0.345501270  -0.168195558  -0.024338277   0.096510366   0.004338607  -0.152244351  -0.016221129
                         0.004733944  -0.004457990   0.000078623   0.000011288  -0.000038132  -0.000001738   0.000540414   0.000057580

   36    2.1  1.5 -0.5  -0.003547320   0.003340586   0.000227305   0.000032909  -0.000088788  -0.000004002  -0.000097043  -0.000010343
                         0.229654681  -0.216354415   0.177446675   0.025676929  -0.018582925  -0.000835428   0.620211023   0.066081277

   37    3.1  1.5 -0.5   0.001245709  -0.001173078   0.000021129   0.000002832   0.000172490   0.000007837  -0.000059851  -0.000006378
                        -0.100285822   0.094477871   0.191282924   0.027679071   0.604203751   0.027161644  -0.126247415  -0.013451240

   38    4.1  1.5 -0.5   0.067810616  -0.063883458   0.443603069   0.064190347  -0.097294652  -0.004373970  -0.021250106  -0.002264150
                         0.000899042  -0.000846657  -0.000146808  -0.000021263   0.000035636   0.000001645   0.000082012   0.000008740

   39    5.1  1.5 -0.5   0.095234963   0.101090282   0.000270152  -0.001867682   0.024916516  -0.554259885   0.010392226  -0.097536845
                         0.154578774   0.164080854   0.009353430  -0.064639145  -0.005227916   0.116295385  -0.000047708   0.000447772

   40    6.1  1.5 -0.5  -0.020100822  -0.021336427   0.000432709  -0.002991337   0.012602292  -0.280332588   0.021212878  -0.199095097
                        -0.033399437  -0.035452558   0.015549449  -0.107458297  -0.002644319   0.058823044  -0.000112909   0.001059713

   41    7.1  1.5 -0.5  -0.176900727  -0.187774930  -0.057148150   0.394936254  -0.000683068   0.015194848   0.000124269  -0.001166339
                         0.109552524   0.116288419   0.001613537  -0.011150325  -0.003256343   0.072439336   0.024001767  -0.225270297

   42    8.1  1.5 -0.5   0.000149212   0.000158384   0.000048157  -0.000332802   0.000000580  -0.000012898   0.000000086  -0.000000808
                        -0.000092356  -0.000098034  -0.000001361   0.000009403   0.000002752  -0.000061210   0.000016350  -0.000153452

   43    9.1  1.5 -0.5   0.000034063  -0.000032091   0.000384813   0.000055683  -0.000088276  -0.000003969   0.000006272   0.000000668
                         0.000000895  -0.000000843   0.000000061   0.000000009  -0.000000324  -0.000000015  -0.000000912  -0.000000097

   44   10.1  1.5 -0.5  -0.000063653  -0.000067566   0.000000155  -0.000001073  -0.000004959   0.000110318  -0.000006774   0.000063579
                        -0.000103925  -0.000110313   0.000005232  -0.000036160   0.000001041  -0.000023165   0.000000044  -0.000000416

   45   11.1  1.5 -0.5  -0.000002371   0.000002233  -0.000000688  -0.000000100   0.000000227   0.000000010   0.000000221   0.000000024
                         0.000177865  -0.000167564   0.000174033   0.000025183   0.000067758   0.000003046  -0.000402518  -0.000042887

   46   12.1  1.5 -0.5  -0.000051624  -0.000054798  -0.000000406   0.000002805  -0.000023028   0.000512241   0.000014627  -0.000137281
                        -0.000083395  -0.000088522  -0.000014424   0.000099682   0.000004832  -0.000107484  -0.000000073   0.000000686

   47   13.1  1.5 -0.5  -0.000312758   0.000294645   0.000112907   0.000016338  -0.000074931  -0.000003368  -0.000104429  -0.000011127
                        -0.000003970   0.000003739   0.000000450   0.000000065   0.000001031   0.000000046   0.000000025   0.000000003

   48   14.1  1.5 -0.5  -0.000002121   0.000001997  -0.000000154  -0.000000022  -0.000000204  -0.000000009  -0.000000221  -0.000000023
                         0.000115668  -0.000108969  -0.000135003  -0.000019535  -0.000506376  -0.000022764  -0.000154076  -0.000016416

   49   15.1  1.5 -0.5   0.000000003  -0.000000003  -0.000000003  -0.000000000   0.000000005   0.000000000   0.000000003   0.000000000
                        -0.000000234   0.000000220   0.000000152   0.000000022  -0.000000031  -0.000000001  -0.000000095  -0.000000010

   50   16.1  1.5 -0.5  -0.000000073  -0.000000078   0.000000002  -0.000000014   0.000000017  -0.000000384   0.000000008  -0.000000077
                        -0.000000117  -0.000000125   0.000000071  -0.000000493  -0.000000004   0.000000080  -0.000000000   0.000000000

   51   17.1  1.5 -0.5   0.000000078  -0.000000073  -0.000000894  -0.000000129   0.000001290   0.000000058   0.000000918   0.000000098
                         0.000000002  -0.000000002  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000

   52    1.1  1.5 -1.5   0.022582277   0.023970442  -0.021448126   0.148222537  -0.000935023   0.020799650  -0.000285114   0.002675953
                        -0.013537731  -0.014369915   0.000609174  -0.004209848  -0.004449984   0.098990173  -0.055967943   0.525291063

   53    2.1  1.5 -1.5   0.032634197   0.034640915   0.000421848  -0.002915368  -0.002207223   0.049099229  -0.000351909   0.003302830
                         0.052299965   0.055514849   0.014152379  -0.097803475   0.000467523  -0.010400111   0.000042347  -0.000397449

   54    3.1  1.5 -1.5   0.070570219   0.074909341   0.001041306  -0.007196725   0.012330952  -0.274296011  -0.022924306   0.215157993
                         0.113731966   0.120723133   0.036917829  -0.255129684  -0.002587371   0.057556271   0.000130156  -0.001221580

   55    4.1  1.5 -1.5   0.105677476   0.112173515   0.031746983  -0.219395278   0.001359113  -0.030233570   0.000072882  -0.000684038
                        -0.065679497  -0.069718003  -0.000902639   0.006237680   0.006473445  -0.144000918   0.014160829  -0.132907486

   56    5.1  1.5 -1.5  -0.002969663   0.002796510   0.000014828   0.000002291  -0.000065017  -0.000002947  -0.000017376  -0.000001852
                         0.236504828  -0.222807899  -0.182931119  -0.026470545  -0.220688310  -0.009920896  -0.056450933  -0.006014660

   57    6.1  1.5 -1.5   0.004010051  -0.003776253  -0.000187909  -0.000027189  -0.000014658  -0.000000651  -0.000062094  -0.000006617
                        -0.295999556   0.278857032  -0.402495255  -0.058241956  -0.101294917  -0.004553547   0.322132725   0.034322107

   58    7.1  1.5 -1.5   0.232264957  -0.218813551   0.417323623   0.060387653  -0.183371189  -0.008243484  -0.067921554  -0.007236762
                         0.003226406  -0.003038304  -0.000176783  -0.000025645   0.000066434   0.000003039  -0.000160039  -0.000017054

   59    8.1  1.5 -1.5  -0.000195934   0.000184587  -0.000351513  -0.000050865   0.000154829   0.000006960  -0.000046110  -0.000004913
                        -0.000002624   0.000002471   0.000000186   0.000000027  -0.000000080  -0.000000004  -0.000000054  -0.000000006

   60    9.1  1.5 -1.5   0.000087654   0.000093042   0.000028094  -0.000194148   0.000001197  -0.000026626  -0.000000073   0.000000688
                        -0.000054474  -0.000057824  -0.000000795   0.000005497   0.000005752  -0.000127950  -0.000012450   0.000116854

   61   10.1  1.5 -1.5   0.000004140  -0.000003899  -0.000000239  -0.000000035   0.000000072   0.000000003   0.000000011   0.000000001
                        -0.000319199   0.000300713  -0.000166585  -0.000024105   0.000050657   0.000002277  -0.000193813  -0.000020650

   62   11.1  1.5 -1.5   0.000036655   0.000038909   0.000000417  -0.000002882  -0.000000128   0.000002839   0.000002803  -0.000026303
                         0.000059100   0.000062733   0.000016816  -0.000116213   0.000000014  -0.000000312   0.000000037  -0.000000349

   63   12.1  1.5 -1.5  -0.000000202   0.000000190   0.000000075   0.000000011   0.000000057   0.000000003  -0.000000038  -0.000000004
                         0.000002903  -0.000002735   0.000334580   0.000048415   0.000198400   0.000008919   0.000108064   0.000011514

   64   13.1  1.5 -1.5  -0.000025690  -0.000027270   0.000015981  -0.000110442   0.000000718  -0.000015972  -0.000000158   0.000001487
                         0.000015890   0.000016866  -0.000000377   0.000002603   0.000003325  -0.000073958  -0.000037275   0.000349852

   65   14.1  1.5 -1.5  -0.000054603  -0.000057960  -0.000000810   0.000005598  -0.000010582   0.000235386  -0.000015306   0.000143660
                        -0.000087751  -0.000093146  -0.000028879   0.000199577   0.000002221  -0.000049414   0.000000028  -0.000000265

   66   15.1  1.5 -1.5   0.000000067   0.000000072   0.000000002  -0.000000015  -0.000000010   0.000000227  -0.000000033   0.000000314
                         0.000000104   0.000000111   0.000000060  -0.000000414   0.000000002  -0.000000041   0.000000000  -0.000000002

   67   16.1  1.5 -1.5   0.000000001  -0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000082   0.000000077  -0.000000814  -0.000000118   0.000000285   0.000000013   0.000000312   0.000000033

   68   17.1  1.5 -1.5   0.000000421   0.000000446   0.000000122  -0.000000840  -0.000000015   0.000000341   0.000000000  -0.000000002
                        -0.000000262  -0.000000278  -0.000000004   0.000000025  -0.000000073   0.000001630   0.000000014  -0.000000129

   69    1.1  0.5  0.5   0.000002454   0.000002605  -0.000000309   0.000002137  -0.000000068   0.000001507  -0.000015033   0.000141091
                        -0.000001518  -0.000001611   0.000000009  -0.000000060  -0.000000323   0.000007186  -0.002440115   0.022901937

   70    2.1  0.5  0.5  -0.000000075   0.000000070  -0.000000001  -0.000000000   0.000000001   0.000000000  -0.000013671  -0.000001457
                         0.000005573  -0.000005250  -0.000005161  -0.000000747   0.000002374   0.000000107  -0.024797406  -0.002642081

   71    3.1  0.5  0.5  -0.000002357  -0.000002502  -0.000000010   0.000000070  -0.000000013   0.000000278   0.002450313  -0.022997606
                        -0.000003826  -0.000004061  -0.000000356   0.000002458   0.000000003  -0.000000058  -0.000013011   0.000122111

   72    4.1  0.5  0.5   0.000005225   0.000005547  -0.000000391   0.000002705   0.000000039  -0.000000874  -0.000036021   0.000338073
                        -0.000003227  -0.000003426   0.000000011  -0.000000075   0.000000187  -0.000004166  -0.006783009   0.063662446

   73    5.1  0.5  0.5   0.000003975  -0.000003744   0.000005389   0.000000780   0.000001564   0.000000070   0.057273008   0.006102237
                         0.000000051  -0.000000048  -0.000000002  -0.000000000  -0.000000001  -0.000000000   0.000011233   0.000001197

   74    6.1  0.5  0.5  -0.000003957  -0.000004201  -0.000000041   0.000000282  -0.000000127   0.000002820  -0.000424766   0.003986717
                        -0.000006414  -0.000006808  -0.000001446   0.000009995   0.000000027  -0.000000591   0.000004115  -0.000038623

   75    7.1  0.5  0.5  -0.000000001   0.000000001   0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000006587  -0.000000702
                         0.000000555  -0.000000523   0.000007701   0.000001114  -0.000000120  -0.000000005   0.064401270   0.006861731

   76    1.1  0.5 -0.5  -0.000003063   0.000002885  -0.000002137  -0.000000309  -0.000007342  -0.000000330  -0.022902358  -0.002440160
                        -0.000000043   0.000000040   0.000000000   0.000000000   0.000000002   0.000000000  -0.000024423  -0.000002603

   77    2.1  0.5 -0.5  -0.000002760  -0.000002930  -0.000000021   0.000000146  -0.000000104   0.000002323   0.002642054  -0.024797154
                        -0.000004467  -0.000004742  -0.000000747   0.000005159   0.000000022  -0.000000488  -0.000012003   0.000112651

   78    3.1  0.5 -0.5   0.000000058  -0.000000055  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000004956  -0.000000528
                        -0.000004770   0.000004494   0.000002459   0.000000356  -0.000000284  -0.000000013   0.022997930   0.002450348

   79    4.1  0.5 -0.5  -0.000006519   0.000006141  -0.000002706  -0.000000392   0.000004257   0.000000191  -0.063663342  -0.006783105
                        -0.000000086   0.000000081   0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000013761  -0.000001466

   80    5.1  0.5 -0.5   0.000003187   0.000003383  -0.000000779   0.000005386  -0.000000014   0.000000321  -0.000032283   0.000302991
                        -0.000001967  -0.000002088   0.000000022  -0.000000151  -0.000000069   0.000001531  -0.006102152   0.057272208

   81    6.1  0.5 -0.5   0.000000102  -0.000000096   0.000000002   0.000000000  -0.000000001  -0.000000000   0.000018314   0.000001952
                        -0.000007999   0.000007536   0.000009999   0.000001447  -0.000002881  -0.000000129  -0.003986862  -0.000424781

   82    7.1  0.5 -0.5  -0.000000269  -0.000000286   0.000000031  -0.000000216   0.000000005  -0.000000118  -0.006861638   0.064400400
                        -0.000000448  -0.000000475   0.000001114  -0.000007697  -0.000000001   0.000000025   0.000035657  -0.000334657


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.005883012   0.338136402   0.001004154  -0.063099147   0.004509170   0.004902003  -0.348015292  -0.005539906
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000004391  -0.000252646  -0.000000008  -0.000000365   0.002736004   0.002974719   0.000298653   0.000004720
                         0.000333332   0.019158893   0.001098250  -0.069012951  -0.138809525  -0.150902515  -0.021089894  -0.000335637

    3    3.1  1.5  1.5   0.000003320   0.000193655   0.000004848  -0.000303774  -0.002525909  -0.002746199  -0.000072710  -0.000001096
                        -0.005226019  -0.300375377   0.007956349  -0.499961360   0.127663928   0.138785903  -0.083819021  -0.001334429

    4    4.1  1.5  1.5  -0.001375202  -0.079042071   0.001068679  -0.067154816  -0.141796205  -0.154149391   0.069937524   0.001113389
                        -0.000000006  -0.000000101  -0.000000669   0.000042908  -0.002802017  -0.003046491  -0.000043398  -0.000000657

    5    5.1  1.5  1.5   0.008196959  -0.000142604  -0.162594806  -0.002587452   0.092995252  -0.085541806  -0.000624196   0.039219085
                         0.034647801  -0.000602815   0.148178386   0.002358096   0.465109064  -0.427836448  -0.000248217   0.015592872

    6    6.1  1.5  1.5   0.003630474  -0.000063135  -0.305345988  -0.004859260  -0.012517295   0.011514108   0.002062613  -0.129576789
                         0.014917814  -0.000259543   0.278307988   0.004428964  -0.062604217   0.057587281   0.000822568  -0.051673456

    7    7.1  1.5  1.5   0.509679954  -0.008867582   0.021452688   0.000341395  -0.029313986   0.026964841  -0.000842272   0.052911243
                        -0.121126943   0.002107340   0.023555773   0.000374873   0.005868391  -0.005398044   0.002112184  -0.132691451

    8    8.1  1.5  1.5   0.000346131  -0.000006022   0.000014482   0.000000230  -0.000019528   0.000017963  -0.000000959   0.000060236
                        -0.000082263   0.000001431   0.000015939   0.000000254   0.000003825  -0.000003519   0.000002407  -0.000151181

    9    9.1  1.5  1.5   0.000001230   0.000070710  -0.000000667   0.000041888   0.000096124   0.000104498  -0.000109160  -0.000001738
                        -0.000000003  -0.000000157   0.000000002  -0.000000155   0.000002136   0.000002322   0.000000036   0.000000001

   10   10.1  1.5  1.5   0.000001756  -0.000000031   0.000091431   0.000001455   0.000046438  -0.000042716  -0.000002272   0.000142714
                         0.000007170  -0.000000125  -0.000083334  -0.000001326   0.000232287  -0.000213672  -0.000000905   0.000056825

   11   11.1  1.5  1.5  -0.000000006  -0.000000329  -0.000000000   0.000000028  -0.000001723  -0.000001873   0.000000477   0.000000008
                         0.000000354   0.000020372  -0.000001618   0.000101660   0.000078824   0.000085691   0.000039452   0.000000628

   12   12.1  1.5  1.5   0.000005858  -0.000000102  -0.000216865  -0.000003451   0.000043775  -0.000040266   0.000000930  -0.000058432
                         0.000024510  -0.000000426   0.000197653   0.000003145   0.000218939  -0.000201394   0.000000372  -0.000023351

   13   13.1  1.5  1.5   0.000003929   0.000225820   0.000000731  -0.000045956  -0.000004128  -0.000004487  -0.000389613  -0.000006202
                         0.000000007   0.000000393  -0.000000012   0.000000740  -0.000000200  -0.000000217   0.000000216   0.000000003

   14   14.1  1.5  1.5   0.000000008   0.000000491   0.000000005  -0.000000326  -0.000002099  -0.000002282  -0.000000724  -0.000000011
                        -0.000003554  -0.000204275   0.000005226  -0.000328374   0.000101155   0.000109967  -0.000089965  -0.000001432

   15   15.1  1.5  1.5   0.000000000   0.000000004  -0.000000000   0.000000006  -0.000000002  -0.000000002  -0.000000000  -0.000000000
                         0.000000005   0.000000279  -0.000000002   0.000000135   0.000000153   0.000000166   0.000000012   0.000000000

   16   16.1  1.5  1.5   0.000000090  -0.000000002   0.000000431   0.000000007   0.000000039  -0.000000036   0.000000009  -0.000000588
                         0.000000379  -0.000000007  -0.000000393  -0.000000006   0.000000193  -0.000000178   0.000000004  -0.000000235

   17   17.1  1.5  1.5   0.000000018   0.000001024  -0.000000024   0.000001519   0.000000190   0.000000207  -0.000000077  -0.000000001
                        -0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000003   0.000000003  -0.000000000  -0.000000000

   18    1.1  1.5  0.5   0.364578941  -0.006343067  -0.033002554  -0.000525199  -0.006036539   0.005552788  -0.000472615   0.029689639
                        -0.086854212   0.001511087  -0.036262204  -0.000577071   0.001225621  -0.001127379   0.001166074  -0.073242705

   19    2.1  1.5  0.5  -0.081651070   0.001420503   0.045798375   0.000728840   0.002754942  -0.002534132  -0.007228788   0.454097334
                        -0.341657870   0.005944275  -0.041685952  -0.000663385   0.013782926  -0.012678399  -0.002886796   0.181347813

   20    3.1  1.5  0.5  -0.066794706   0.001162093  -0.144446004  -0.002298705  -0.008196417   0.007539519  -0.000205325   0.012893272
                        -0.281246226   0.004893217   0.131666084   0.002095320  -0.041013103   0.037726421  -0.000082527   0.005184393

   21    4.1  1.5  0.5   0.304310831  -0.005294501   0.386604353   0.006152381  -0.181818582   0.167248122  -0.002865949   0.180038241
                        -0.072292032   0.001257725   0.424175430   0.006750318   0.036367591  -0.033452865   0.007179649  -0.451012464

   22    5.1  1.5  0.5  -0.000001161  -0.000067804  -0.000001453   0.000090878   0.001226357   0.001333325  -0.000012175  -0.000000176
                         0.003986582   0.229136063  -0.002512637   0.157889004  -0.062267649  -0.067692358   0.162932687   0.002593612

   23    6.1  1.5  0.5   0.000000723   0.000042701  -0.000000464   0.000031241  -0.006531740  -0.007101609  -0.000110794  -0.000001681
                         0.000155656   0.008946308  -0.000614139   0.038593626   0.330686687   0.359495877  -0.375313784  -0.005974660

   24    7.1  1.5  0.5   0.000656008   0.037705101   0.005104079  -0.320732549  -0.240577848  -0.261536830  -0.410329886  -0.006531986
                        -0.000001122  -0.000064820  -0.000003311   0.000209556  -0.004741522  -0.005155251   0.000073443   0.000001119

   25    8.1  1.5  0.5   0.000000452   0.000025980   0.000003479  -0.000218611  -0.000163676  -0.000177936  -0.000467388  -0.000007440
                        -0.000000001  -0.000000078  -0.000000002   0.000000124  -0.000003169  -0.000003445  -0.000000049  -0.000000001

   26    9.1  1.5  0.5  -0.000187645   0.000003265  -0.000263897  -0.000004200   0.000122863  -0.000113017   0.000003235  -0.000203198
                         0.000044917  -0.000000781  -0.000289295  -0.000004604  -0.000024613   0.000022640  -0.000008058   0.000506198

   27   10.1  1.5  0.5  -0.000000001  -0.000000044   0.000000001  -0.000000045   0.000003926   0.000004269  -0.000000054  -0.000000001
                         0.000001626   0.000093466  -0.000000752   0.000047244  -0.000201394  -0.000218939   0.000448620   0.000007141

   28   11.1  1.5  0.5   0.000062253  -0.000001083  -0.000014490  -0.000000231  -0.000001168   0.000001074   0.000008175  -0.000513555
                         0.000260950  -0.000004540   0.000014149   0.000000225  -0.000004776   0.000004393   0.000003279  -0.000205959

   29   12.1  1.5  0.5  -0.000000000  -0.000000016  -0.000000001   0.000000052  -0.000002166  -0.000002354  -0.000000111  -0.000000002
                         0.000002170   0.000124717  -0.000001592   0.000100011   0.000109176   0.000118687  -0.000125543  -0.000001999

   30   13.1  1.5  0.5   0.000263610  -0.000004586  -0.000002632  -0.000000042  -0.000013522   0.000012439  -0.000000774   0.000048598
                        -0.000062083   0.000001080  -0.000003242  -0.000000052   0.000002764  -0.000002542   0.000001948  -0.000122386

   31   14.1  1.5  0.5  -0.000035212   0.000000613  -0.000102115  -0.000001625  -0.000006038   0.000005554   0.000001114  -0.000069983
                        -0.000151377   0.000002634   0.000093570   0.000001489  -0.000029477   0.000027114   0.000000457  -0.000028721

   32   15.1  1.5  0.5  -0.000000077   0.000000001   0.000000222   0.000000004  -0.000000049   0.000000045   0.000000001  -0.000000049
                        -0.000000326   0.000000006  -0.000000197  -0.000000003  -0.000000265   0.000000243   0.000000000  -0.000000020

   33   16.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000005  -0.000000006   0.000000000   0.000000000
                         0.000000012   0.000000681   0.000000013  -0.000000831   0.000000275   0.000000299   0.000000053   0.000000001

   34   17.1  1.5  0.5   0.000000047  -0.000000001   0.000000661   0.000000011   0.000001012  -0.000000931  -0.000000001   0.000000055
                        -0.000000010   0.000000000   0.000000727   0.000000012  -0.000000201   0.000000185   0.000000002  -0.000000137

   35    1.1  1.5 -0.5  -0.006520570  -0.374781696   0.000780285  -0.049031741  -0.005664618  -0.006158117  -0.079030240  -0.001258192
                        -0.000006444  -0.000372154  -0.000001055   0.000066379  -0.000128605  -0.000139835   0.000435610   0.000006875

   36    2.1  1.5 -0.5   0.000010338   0.000599190  -0.000001289   0.000080552   0.000254310   0.000276505   0.000169789   0.000002624
                        -0.006111639  -0.351278577  -0.000985538   0.061929018  -0.012926676  -0.014052840   0.488969722   0.007783891

   37    3.1  1.5 -0.5   0.000001467   0.000085655   0.000001808  -0.000113363  -0.000755598  -0.000821488   0.000037654   0.000000568
                        -0.005029317  -0.289069136   0.003110371  -0.195449720   0.038465000   0.041816038   0.013896509   0.000221289

   38    4.1  1.5 -0.5  -0.005441838  -0.312779807  -0.009133376   0.573922981  -0.170527468  -0.185383683  -0.485619193  -0.007730526
                        -0.000001909  -0.000111738   0.000005815  -0.000363907  -0.003378049  -0.003672687   0.000096558   0.000001470

   39    5.1  1.5 -0.5  -0.052945984   0.000921153  -0.116686499  -0.001856947  -0.013271904   0.012208208   0.002409040  -0.151338115
                        -0.222935109   0.003878700   0.106363559   0.001692659  -0.066391940   0.061071465   0.000960912  -0.060364192

   40    6.1  1.5 -0.5  -0.002023080   0.000035219  -0.028528370  -0.000453949   0.070503859  -0.064853089  -0.005548704   0.348554357
                        -0.008714666   0.000151621   0.025992327   0.000413639   0.352586053  -0.324330735  -0.002215501   0.139177257

   41    7.1  1.5 -0.5   0.036702247  -0.000638559   0.216046368   0.003438140   0.256511850  -0.235955664   0.002421499  -0.152117951
                        -0.008638512   0.000150302   0.237051426   0.003772377  -0.051281196   0.047171046  -0.006066563   0.381091524

   42    8.1  1.5 -0.5   0.000025297  -0.000000440   0.000147271   0.000002344   0.000174528  -0.000160542   0.000002756  -0.000173148
                        -0.000005920   0.000000103   0.000161561   0.000002571  -0.000034828   0.000032036  -0.000006911   0.000434133

   43    9.1  1.5 -0.5   0.000003357   0.000192945   0.000006232  -0.000391578   0.000115240   0.000125279   0.000545458   0.000008683
                         0.000000007   0.000000400  -0.000000001   0.000000081   0.000002317   0.000002519  -0.000001158  -0.000000018

   44   10.1  1.5 -0.5  -0.000021613   0.000000376  -0.000034867  -0.000000555  -0.000042883   0.000039446   0.000006633  -0.000416703
                        -0.000090933   0.000001582   0.000031880   0.000000507  -0.000214741   0.000197532   0.000002645  -0.000166188

   45   11.1  1.5 -0.5  -0.000000006  -0.000000350  -0.000000011   0.000000684  -0.000000281  -0.000000306  -0.000000997  -0.000000016
                         0.000004667   0.000268272   0.000000322  -0.000020241   0.000004514   0.000004907  -0.000553314  -0.000008808

   46   12.1  1.5 -0.5  -0.000028798   0.000000501  -0.000073908  -0.000001176   0.000023286  -0.000021420  -0.000001856   0.000116565
                        -0.000121346   0.000002111   0.000067378   0.000001072   0.000116404  -0.000107076  -0.000000742   0.000046624

   47   13.1  1.5 -0.5  -0.000004712  -0.000270822   0.000000066  -0.000004169  -0.000012692  -0.000013798  -0.000131682  -0.000002096
                         0.000000007   0.000000429  -0.000000004   0.000000241  -0.000000305  -0.000000331  -0.000000212  -0.000000003

   48   14.1  1.5 -0.5  -0.000000012  -0.000000674  -0.000000005   0.000000281  -0.000000676  -0.000000735  -0.000000743  -0.000000012
                        -0.000002704  -0.000155417   0.000002204  -0.000138502   0.000027669   0.000030080  -0.000075644  -0.000001204

   49   15.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000004  -0.000000001  -0.000000001  -0.000000000  -0.000000000
                        -0.000000006  -0.000000335  -0.000000005   0.000000297   0.000000247   0.000000269  -0.000000053  -0.000000001

   50   16.1  1.5 -0.5  -0.000000157   0.000000003   0.000000614   0.000000010   0.000000059  -0.000000054   0.000000001  -0.000000049
                        -0.000000662   0.000000012  -0.000000560  -0.000000009   0.000000293  -0.000000270   0.000000000  -0.000000020

   51   17.1  1.5 -0.5  -0.000000001  -0.000000048  -0.000000016   0.000000983   0.000000949   0.000001032  -0.000000147  -0.000000002
                         0.000000000   0.000000001   0.000000000  -0.000000002   0.000000018   0.000000019   0.000000000   0.000000000

   52    1.1  1.5 -1.5  -0.329008737   0.005724206  -0.042534219  -0.000676885   0.004824890  -0.004438237  -0.002052839   0.128958761
                         0.078035105  -0.001357681  -0.046608395  -0.000741721  -0.000866062   0.000796658   0.005145523  -0.323240285

   53    2.1  1.5 -1.5   0.004667314  -0.000081198  -0.050976893  -0.000811221   0.029588639  -0.027217149   0.000313492  -0.019699184
                         0.018583412  -0.000323321   0.046520359   0.000740320   0.148003143  -0.136142560   0.000119988  -0.007537571

   54    3.1  1.5 -1.5  -0.069509044   0.001209291  -0.369502896  -0.005880252  -0.027223010   0.025041210   0.001239026  -0.077825050
                        -0.292222343   0.005084182   0.336792314   0.005359678  -0.136117509   0.125209411   0.000495497  -0.031127080

   55    4.1  1.5 -1.5   0.076908384  -0.001338078  -0.045236393  -0.000719887  -0.151186264   0.139070594   0.000413181  -0.025955998
                        -0.018241425   0.000317375  -0.049633052  -0.000789834   0.030232924  -0.027809796  -0.001033884   0.064942631

   56    5.1  1.5 -1.5  -0.000000363  -0.000020328  -0.000002349   0.000150340  -0.008608127  -0.009359182   0.000049998   0.000000752
                        -0.000619453  -0.035604211  -0.003500788   0.219986096   0.436219356   0.474222484  -0.042205115  -0.000671738

   57    6.1  1.5 -1.5   0.000001534   0.000089740  -0.000004088   0.000256176   0.001158744   0.001259783  -0.000020457  -0.000000301
                        -0.000267108  -0.015352962  -0.006574809   0.413148209  -0.058715645  -0.063830899   0.139500143   0.002220584

   58    7.1  1.5 -1.5   0.009114542   0.523875307   0.000507031  -0.031860496   0.027494364   0.029889653   0.142851741   0.002273927
                         0.000003995   0.000233320  -0.000000524   0.000032505   0.000549113   0.000597025   0.000024941   0.000000369

   59    8.1  1.5 -1.5   0.000006190   0.000355772   0.000000343  -0.000021535   0.000018302   0.000019897   0.000162739   0.000002591
                         0.000000003   0.000000162  -0.000000001   0.000000047   0.000000290   0.000000315   0.000000073   0.000000001

   60    9.1  1.5 -1.5  -0.000068837   0.000001198   0.000028121   0.000000448   0.000102444  -0.000094235  -0.000000644   0.000040483
                         0.000016166  -0.000000281   0.000031045   0.000000494  -0.000020748   0.000019085   0.000001614  -0.000101375

   61   10.1  1.5 -1.5   0.000000001   0.000000053   0.000000001  -0.000000077  -0.000004293  -0.000004668   0.000000104   0.000000002
                        -0.000000128  -0.000007382   0.000001969  -0.000123710   0.000217857   0.000236837  -0.000153611  -0.000002445

   62   11.1  1.5 -1.5   0.000005021  -0.000000087   0.000075110   0.000001195  -0.000016983   0.000015622  -0.000000580   0.000036467
                         0.000019746  -0.000000344  -0.000068507  -0.000001090  -0.000084012   0.000077279  -0.000000240   0.000015062

   63   12.1  1.5 -1.5   0.000000001   0.000000043  -0.000000003   0.000000188  -0.000004051  -0.000004405   0.000000037   0.000000001
                        -0.000000438  -0.000025200  -0.000004669   0.000293422   0.000205340   0.000223229   0.000062926   0.000001002

   64   13.1  1.5 -1.5  -0.000219634   0.000003821  -0.000030432  -0.000000484  -0.000004378   0.000004027  -0.000002301   0.000144574
                         0.000052498  -0.000000913  -0.000034445  -0.000000548   0.000001007  -0.000000926   0.000005759  -0.000361796

   65   14.1  1.5 -1.5  -0.000047620   0.000000828  -0.000242774  -0.000003863  -0.000021675   0.000019938   0.000001326  -0.000083292
                        -0.000198648   0.000003456   0.000221112   0.000003519  -0.000107834   0.000099192   0.000000541  -0.000034009

   66   15.1  1.5 -1.5   0.000000061  -0.000000001   0.000000104   0.000000002  -0.000000032   0.000000029  -0.000000000   0.000000011
                         0.000000272  -0.000000005  -0.000000087  -0.000000001  -0.000000163   0.000000150  -0.000000000   0.000000004

   67   16.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000004  -0.000000004   0.000000000   0.000000000
                        -0.000000007  -0.000000389   0.000000009  -0.000000583   0.000000181   0.000000197   0.000000633   0.000000010

   68   17.1  1.5 -1.5  -0.000000997   0.000000017   0.000001023   0.000000016   0.000000203  -0.000000187  -0.000000000   0.000000029
                         0.000000236  -0.000000004   0.000001123   0.000000018  -0.000000040   0.000000037   0.000000001  -0.000000072

   69    1.1  0.5  0.5   0.065208417  -0.001134518   0.009732426   0.000154881   0.035208527  -0.032387008   0.000127873  -0.008032935
                        -0.015499772   0.000269660   0.010681741   0.000169984  -0.007039266   0.006475080  -0.000320023   0.020102120

   70    2.1  0.5  0.5   0.000000345   0.000020117   0.000000497  -0.000031194  -0.000140945  -0.000153233  -0.000003044  -0.000000045
                        -0.001111245  -0.063870806   0.000841917  -0.052904442   0.007173200   0.007798123   0.014191043   0.000225893

   71    3.1  0.5  0.5  -0.000337373   0.000005872  -0.057143311  -0.000909370   0.004769238  -0.004386981  -0.000263793   0.016570602
                        -0.001436819   0.000024998   0.052082054   0.000828828   0.023854538  -0.021942898  -0.000105339   0.006617387

   72    4.1  0.5  0.5   0.012404913  -0.000215824   0.014110235   0.000224549  -0.038921041   0.035802011   0.000305640  -0.019200248
                        -0.002966918   0.000051614   0.015479853   0.000246351   0.007781610  -0.007157929  -0.000765854   0.048110199

   73    5.1  0.5  0.5   0.000021765   0.001250910   0.000411431  -0.025853255   0.040734384   0.044283134  -0.018948715  -0.000301656
                        -0.000000263  -0.000015395  -0.000000251   0.000015543   0.000805511   0.000875784   0.000009919   0.000000150

   74    6.1  0.5  0.5  -0.015289501   0.000266004   0.016509893   0.000262743   0.007524296  -0.006921239   0.000772213  -0.048508999
                        -0.064339069   0.001119393  -0.015046663  -0.000239451   0.037624366  -0.034609249   0.000308256  -0.019364551

   75    7.1  0.5  0.5   0.000000249   0.000014455   0.000000537  -0.000033856   0.000292597   0.000318134   0.000000275   0.000000003
                         0.000248788   0.014299454   0.000830448  -0.052183920  -0.014917339  -0.016216929  -0.026969278  -0.000429310

   76    1.1  0.5 -0.5   0.001166125   0.067025216   0.000229962  -0.014450590  -0.033021521  -0.035898333  -0.021647705  -0.000344624
                         0.000000557   0.000032575  -0.000000180   0.000011517  -0.000651245  -0.000708064   0.000012137   0.000000183

   77    2.1  0.5 -0.5  -0.014759676   0.000256788  -0.039099070  -0.000622220  -0.001528556   0.001406053  -0.000209828   0.013181919
                        -0.062142033   0.001081168   0.035639075   0.000567157  -0.007648380   0.007035459  -0.000083664   0.005255733

   78    3.1  0.5 -0.5   0.000000055   0.000003323  -0.000000776   0.000048893  -0.000441207  -0.000479711  -0.000005982  -0.000000090
                         0.000025679   0.001475893  -0.001230411   0.077316854   0.022372789   0.024321893  -0.017843055  -0.000284047

   79    4.1  0.5 -0.5   0.000221910   0.012754760   0.000333333  -0.020945750   0.036503446   0.039683599  -0.051800007  -0.000824590
                         0.000000412   0.000024023  -0.000000198   0.000012172   0.000720006   0.000782821   0.000005925   0.000000091

   80    5.1  0.5 -0.5  -0.001220695   0.000021238  -0.017415823  -0.000277154   0.043431797  -0.039951287  -0.000111919   0.007030751
                         0.000273706  -0.000004767  -0.019107070  -0.000304074  -0.008685733   0.007989591   0.000280125  -0.017596091

   81    6.1  0.5 -0.5  -0.000000490  -0.000028608   0.000000240  -0.000014812  -0.000697770  -0.000758645   0.000010754   0.000000164
                         0.001150564   0.066130808   0.000355486  -0.022337825   0.035287629   0.038361862   0.052231300   0.000831466

   82    7.1  0.5 -0.5   0.003285962  -0.000057173  -0.038568648  -0.000613775   0.003178257  -0.002923517   0.000398748  -0.025049452
                         0.013916790  -0.000242129   0.035151416   0.000559396   0.015905618  -0.014630983   0.000159080  -0.009993342


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5  -0.315110094  -0.005909682  -0.005165879  -0.134553268  -0.011697672   0.250976215   0.000355392   0.097385026
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000054828  -0.000000908  -0.000007884  -0.000206135  -0.000018522   0.000397368   0.000002210   0.000600703
                        -0.251059415  -0.004708490   0.011885979   0.309587338  -0.019844461   0.425766692  -0.001175937  -0.322255600

    3    3.1  1.5  1.5   0.000276213   0.000005013  -0.000017148  -0.000446739   0.000007343  -0.000157549   0.000001646   0.000449676
                         0.384524426   0.007211555   0.011480765   0.299034022   0.006326570  -0.135738221  -0.000719187  -0.197079608

    4    4.1  1.5  1.5  -0.165267507  -0.003099519   0.013996285   0.364553454  -0.017236316   0.369808316  -0.001332026  -0.365028343
                         0.000242315   0.000004425   0.000014971   0.000390746   0.000024030  -0.000515544  -0.000002840  -0.000773327

    5    5.1  1.5  1.5  -0.001933287   0.103076313  -0.306233075   0.011757222   0.153981514   0.007176886  -0.073875629   0.000269574
                        -0.005995661   0.319694782   0.215401287  -0.008269867  -0.007289391  -0.000339749   0.016324825  -0.000059575

    6    6.1  1.5  1.5   0.001812397  -0.096635448  -0.251573264   0.009658624  -0.217578642  -0.010141039  -0.299887516   0.001094355
                         0.005610411  -0.299152656   0.177124405  -0.006800306   0.010339656   0.000481917   0.066351202  -0.000242138

    7    7.1  1.5  1.5  -0.006135060   0.327127471  -0.156613469   0.006012833  -0.010963544  -0.000510996  -0.064571698   0.000235644
                         0.001981555  -0.105654356  -0.222414279   0.008539122  -0.230761044  -0.010755454  -0.291836299   0.001064976

    8    8.1  1.5  1.5  -0.000006999   0.000373169  -0.000178463   0.000006852  -0.000013232  -0.000000617  -0.000077391   0.000000282
                         0.000002264  -0.000120695  -0.000253484   0.000009732  -0.000276464  -0.000012886  -0.000349511   0.000001275

    9    9.1  1.5  1.5   0.000160952   0.000003019  -0.000016341  -0.000425632   0.000019541  -0.000419248   0.000001622   0.000444600
                         0.000000568   0.000000011  -0.000000035  -0.000000918   0.000000023  -0.000000490   0.000000006   0.000001530

   10   10.1  1.5  1.5  -0.000002993   0.000159571   0.000002917  -0.000000112   0.000318115   0.000014827   0.000223049  -0.000000814
                        -0.000009265   0.000494022  -0.000002319   0.000000089  -0.000015181  -0.000000708  -0.000049479   0.000000181

   11   11.1  1.5  1.5   0.000000288   0.000000005   0.000000049   0.000001284   0.000000008  -0.000000182  -0.000000006  -0.000001742
                         0.000211035   0.000003958  -0.000015510  -0.000403977   0.000022232  -0.000476995   0.000001531   0.000419565

   12   12.1  1.5  1.5  -0.000000407   0.000021679  -0.000452162   0.000017360  -0.000021484  -0.000001001  -0.000295441   0.000001078
                        -0.000001268   0.000067589   0.000318152  -0.000012215   0.000001035   0.000000048   0.000065332  -0.000000238

   13   13.1  1.5  1.5  -0.000372708  -0.000006990  -0.000004683  -0.000121980  -0.000015521   0.000333005   0.000000304   0.000083359
                        -0.000000505  -0.000000009  -0.000000042  -0.000001083   0.000000016  -0.000000347   0.000000003   0.000000876

   14   14.1  1.5  1.5  -0.000000493  -0.000000009  -0.000000011  -0.000000275  -0.000000034   0.000000726   0.000000000   0.000000138
                         0.000480050   0.000009003   0.000010723   0.000279307   0.000011371  -0.000243973  -0.000000621  -0.000170151

   15   15.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000000001
                        -0.000000062  -0.000000001  -0.000000014  -0.000000378   0.000000003  -0.000000064   0.000000001   0.000000187

   16   16.1  1.5  1.5  -0.000000002   0.000000110   0.000000436  -0.000000017  -0.000000047  -0.000000002   0.000000197  -0.000000001
                        -0.000000006   0.000000340  -0.000000307   0.000000012   0.000000002   0.000000000  -0.000000043   0.000000000

   17   17.1  1.5  1.5  -0.000000015  -0.000000000  -0.000000029  -0.000000755  -0.000000000   0.000000005  -0.000000001  -0.000000215
                         0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000001

   18    1.1  1.5  0.5   0.006096412  -0.325066913  -0.144964040   0.005565582   0.020206561   0.000941801   0.037801743  -0.000137952
                        -0.001963988   0.104711297  -0.206035506   0.007910342   0.426093480   0.019859657   0.170758452  -0.000623156

   19    2.1  1.5  0.5   0.000799036  -0.042592934  -0.068216104   0.002618999  -0.001555452  -0.000072497  -0.011316748   0.000041297
                         0.002494448  -0.133006541   0.048281735  -0.001853672  -0.000243103  -0.000011331   0.002369877  -0.000008648

   20    3.1  1.5  0.5   0.001108826  -0.059117437   0.309523750  -0.011883551   0.064133395   0.002989141   0.462441673  -0.001687531
                         0.003441458  -0.183502119  -0.217758118   0.008360352  -0.003084340  -0.000143756  -0.102290224   0.000373292

   21    4.1  1.5  0.5   0.001025206  -0.054665060   0.083461212  -0.003204312  -0.005454175  -0.000254212  -0.010207681   0.000037251
                        -0.000330189   0.017595802   0.118567767  -0.004552155  -0.115004560  -0.005360211  -0.046099430   0.000168233

   22    5.1  1.5  0.5   0.000162059   0.000002996  -0.000013909  -0.000362461   0.000018673  -0.000400645   0.000003185   0.000870401
                         0.284849162   0.005342172   0.009617698   0.250507451   0.015662745  -0.336048137  -0.001380514  -0.378302237

   23    6.1  1.5  0.5   0.000300650   0.000005395   0.000000426   0.000011565  -0.000017485   0.000375129   0.000002079   0.000565942
                         0.258973797   0.004856958  -0.002535646  -0.066044016  -0.012535519   0.268951849  -0.000974556  -0.267067231

   24    7.1  1.5  0.5   0.004085272   0.000076658   0.008065387   0.210075003   0.013919616  -0.298648012   0.000843749   0.231222004
                        -0.000018212  -0.000000212   0.000009755   0.000254329  -0.000019124   0.000410301   0.000001778   0.000483724

   25    8.1  1.5  0.5   0.000004346   0.000000082   0.000009207   0.000239801   0.000016659  -0.000357421   0.000001009   0.000276633
                        -0.000000032  -0.000000000   0.000000008   0.000000209  -0.000000030   0.000000650   0.000000002   0.000000614

   26    9.1  1.5  0.5  -0.000000647   0.000034487  -0.000106935   0.000004106   0.000008374   0.000000390   0.000015951  -0.000000058
                         0.000000205  -0.000010914  -0.000152728   0.000005864   0.000175449   0.000008177   0.000070235  -0.000000256

   27   10.1  1.5  0.5  -0.000000148  -0.000000003  -0.000000007  -0.000000197   0.000000035  -0.000000760   0.000000001   0.000000215
                        -0.000024812  -0.000000465   0.000009150   0.000238338   0.000023432  -0.000502734  -0.000000134  -0.000036801

   28   11.1  1.5  0.5  -0.000001116   0.000059502   0.000019577  -0.000000752  -0.000010722  -0.000000500  -0.000077185   0.000000282
                        -0.000003448   0.000183838  -0.000013166   0.000000505  -0.000000199  -0.000000009   0.000016773  -0.000000061

   29   12.1  1.5  0.5   0.000000360   0.000000007  -0.000000012  -0.000000302   0.000000005  -0.000000105   0.000000005   0.000001249
                         0.000438684   0.000008227   0.000006678   0.000173946   0.000005088  -0.000109166  -0.000002019  -0.000553343

   30   13.1  1.5  0.5   0.000007015  -0.000374071  -0.000158294   0.000006077   0.000023470   0.000001094   0.000043124  -0.000000157
                        -0.000002273   0.000121163  -0.000223689   0.000008588   0.000498108   0.000023216   0.000199971  -0.000000730

   31   14.1  1.5  0.5   0.000001114  -0.000059385   0.000361030  -0.000013861   0.000076382   0.000003560   0.000549066  -0.000002004
                         0.000003409  -0.000181796  -0.000254424   0.000009768  -0.000002894  -0.000000135  -0.000121124   0.000000442

   32   15.1  1.5  0.5   0.000000002  -0.000000119  -0.000000147   0.000000006  -0.000000002  -0.000000000  -0.000000320   0.000000001
                         0.000000007  -0.000000360   0.000000111  -0.000000004   0.000000000   0.000000000   0.000000070  -0.000000000

   33   16.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000001
                         0.000000125   0.000000002  -0.000000020  -0.000000510  -0.000000002   0.000000044   0.000000002   0.000000561

   34   17.1  1.5  0.5   0.000000012  -0.000000649   0.000000892  -0.000000034   0.000000003   0.000000000  -0.000000022   0.000000000
                        -0.000000004   0.000000211   0.000001266  -0.000000049   0.000000054   0.000000003  -0.000000103   0.000000000

   35    1.1  1.5 -0.5   0.341515342   0.006404953  -0.009672079  -0.251922857  -0.019881960   0.426571996   0.000638241   0.174892094
                        -0.000474081  -0.000008703  -0.000010621  -0.000277447   0.000025116  -0.000538870   0.000001532   0.000419696

   36    2.1  1.5 -0.5  -0.000433198  -0.000007902   0.000012511   0.000325721   0.000014843  -0.000318459  -0.000000381  -0.000104429
                        -0.139659265  -0.002619287  -0.003208598  -0.083573062   0.000071860  -0.001541790  -0.000042191  -0.011561755

   37    3.1  1.5 -0.5  -0.000260662  -0.000004776  -0.000015374  -0.000401275  -0.000001780   0.000038206  -0.000003868  -0.001055478
                        -0.192789603  -0.003615675   0.014529764   0.378448661  -0.002992596   0.064207508   0.001728321   0.473618493

   38    4.1  1.5 -0.5   0.057427107   0.001077065   0.005566837   0.144996734   0.005366232  -0.115133730  -0.000172307  -0.047215896
                        -0.000092123  -0.000001545   0.000007335   0.000191088  -0.000006763   0.000145111  -0.000000422  -0.000115645

   39    5.1  1.5 -0.5   0.001642157  -0.087559021  -0.204828176   0.007863944   0.335670007   0.015645120   0.369368920  -0.001347912
                         0.005083516  -0.271058092   0.144220431  -0.005537030  -0.015942321  -0.000743050  -0.081730908   0.000298264

   40    6.1  1.5 -0.5   0.001490464  -0.079459398   0.054049347  -0.002075142  -0.268651867  -0.012521537   0.260771018  -0.000951578
                         0.004622617  -0.246482701  -0.037953660   0.001457150   0.012704820   0.000592155  -0.057651558   0.000210390

   41    7.1  1.5 -0.5  -0.000072998   0.003892374  -0.120902319   0.004641783   0.014113855   0.000657829  -0.049907568   0.000182129
                         0.000023404  -0.001240645  -0.171796976   0.006595788   0.298314603   0.013904076  -0.225772195   0.000823859

   42    8.1  1.5 -0.5  -0.000000078   0.000004144  -0.000137944   0.000005296   0.000016732   0.000000780  -0.000059744   0.000000218
                         0.000000025  -0.000001308  -0.000196153   0.000007531   0.000357029   0.000016641  -0.000270105   0.000000986

   43    9.1  1.5 -0.5  -0.000036172  -0.000000678  -0.000007158  -0.000186442  -0.000008187   0.000175648   0.000000263   0.000072021
                         0.000000236   0.000000004   0.000000009   0.000000222   0.000000008  -0.000000168   0.000000002   0.000000566

   44   10.1  1.5 -0.5  -0.000000141   0.000007499  -0.000194963   0.000007485   0.000502176   0.000023406   0.000035905  -0.000000131
                        -0.000000444   0.000023652   0.000137093  -0.000005263  -0.000023690  -0.000001104  -0.000008078   0.000000030

   45   11.1  1.5 -0.5  -0.000000002  -0.000000000   0.000000018   0.000000472   0.000000034  -0.000000720  -0.000000000  -0.000000117
                         0.000193227   0.000003624   0.000000906   0.000023588   0.000000499  -0.000010700  -0.000000288  -0.000078987

   46   12.1  1.5 -0.5   0.000002527  -0.000134741  -0.000142199   0.000005459   0.000109042   0.000005082   0.000540282  -0.000001972
                         0.000007830  -0.000417479   0.000100184  -0.000003846  -0.000005204  -0.000000243  -0.000119524   0.000000436

   47   13.1  1.5 -0.5   0.000393204   0.000007374  -0.000010521  -0.000274031  -0.000023242   0.000498660   0.000000747   0.000204567
                         0.000000089   0.000000002  -0.000000040  -0.000001045   0.000000036  -0.000000782  -0.000000002  -0.000000627

   48   14.1  1.5 -0.5   0.000000519   0.000000010  -0.000000031  -0.000000820  -0.000000039   0.000000824  -0.000000003  -0.000000934
                        -0.000191249  -0.000003587   0.000016957   0.000441671  -0.000003562   0.000076432   0.000002052   0.000562266

   49   15.1  1.5 -0.5   0.000000002   0.000000000   0.000000000   0.000000006  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000379  -0.000000007  -0.000000007  -0.000000184   0.000000000  -0.000000002  -0.000000001  -0.000000327

   50   16.1  1.5 -0.5   0.000000001  -0.000000038   0.000000417  -0.000000016  -0.000000044  -0.000000002  -0.000000548   0.000000002
                         0.000000002  -0.000000119  -0.000000293   0.000000011   0.000000002   0.000000000   0.000000121  -0.000000000

   51   17.1  1.5 -0.5   0.000000682   0.000000013   0.000000059   0.000001549  -0.000000003   0.000000054  -0.000000000  -0.000000106
                         0.000000001   0.000000000   0.000000000   0.000000003   0.000000000  -0.000000000   0.000000000   0.000000001

   52    1.1  1.5 -1.5  -0.005622528   0.299798727  -0.077304737   0.002967947   0.012205325   0.000568874   0.020820819  -0.000075983
                         0.001819760  -0.097031411  -0.110129740   0.004228191   0.250679258   0.011683831   0.095133258  -0.000347175

   53    2.1  1.5 -1.5   0.001449014  -0.077256211   0.253273950  -0.009723958   0.425282247   0.019821882  -0.314675872   0.001148274
                         0.004479981  -0.238877187  -0.178035582   0.006835292  -0.020308732  -0.000946564   0.069484732  -0.000253573

   54    3.1  1.5 -1.5  -0.002215875   0.118143278   0.244497993  -0.009386974  -0.135585277  -0.006319441  -0.192426530   0.000702206
                        -0.006862685   0.365925233  -0.172169327   0.006610067   0.006443777   0.000300336   0.042574698  -0.000155370

   55    4.1  1.5 -1.5  -0.002950274   0.157311687   0.209766303  -0.008053524   0.017469362   0.000814225  -0.078798134   0.000287561
                         0.000950221  -0.050660052   0.298156790  -0.011447139   0.369395828   0.017217090  -0.356422703   0.001300619

   56    5.1  1.5 -1.5  -0.000375388  -0.000006888  -0.000013893  -0.000362833   0.000009675  -0.000207571  -0.000000563  -0.000152823
                        -0.335900787  -0.006299643   0.014374379   0.374401227   0.007184916  -0.154153815   0.000276077   0.075657684

   57    6.1  1.5 -1.5   0.000177779   0.000003274  -0.000016786  -0.000437445  -0.000011826   0.000253731  -0.000002567  -0.000701363
                         0.314373488   0.005895887   0.011812405   0.307671855  -0.010152476   0.217824033   0.001120820   0.307139240

   58    7.1  1.5 -1.5   0.343766171   0.006447132   0.010443684   0.272021559  -0.010767579   0.231021178   0.001090731   0.298893729
                        -0.000211351  -0.000003890   0.000015438   0.000402244   0.000012661  -0.000271661   0.000002505   0.000684347

   59    8.1  1.5 -1.5   0.000392202   0.000007356   0.000011902   0.000310005  -0.000012900   0.000276780   0.000001306   0.000357976
                        -0.000000079  -0.000000001   0.000000017   0.000000435   0.000000011  -0.000000229   0.000000003   0.000000876

   60    9.1  1.5 -1.5   0.000002869  -0.000152956  -0.000245289   0.000009417  -0.000020878  -0.000000973   0.000096550  -0.000000352
                        -0.000000940   0.000050102  -0.000347845   0.000013355  -0.000418728  -0.000019516   0.000433993  -0.000001584

   61   10.1  1.5 -1.5  -0.000000306  -0.000000006   0.000000009   0.000000222   0.000000014  -0.000000307   0.000000002   0.000000647
                        -0.000519154  -0.000009736  -0.000000143  -0.000003720   0.000014844  -0.000318477  -0.000000834  -0.000228471

   62   11.1  1.5 -1.5  -0.000001214   0.000064710  -0.000329911   0.000012666  -0.000476440  -0.000022206   0.000409491  -0.000001494
                        -0.000003767   0.000200869   0.000233147  -0.000008951   0.000023015   0.000001073  -0.000091405   0.000000334

   63   12.1  1.5 -1.5  -0.000000187  -0.000000003  -0.000000024  -0.000000622  -0.000000001   0.000000011  -0.000000002  -0.000000657
                        -0.000070981  -0.000001331   0.000021227   0.000552876  -0.000001002   0.000021508   0.000001104   0.000302578

   64   13.1  1.5 -1.5  -0.000006647   0.000354443  -0.000070967   0.000002725   0.000015848   0.000000739   0.000018678  -0.000000068
                         0.000002161  -0.000115248  -0.000099216   0.000003809   0.000332628   0.000015503   0.000081245  -0.000000297

   65   14.1  1.5 -1.5  -0.000002781   0.000148290   0.000228450  -0.000008771  -0.000243649  -0.000011356  -0.000166187   0.000000606
                        -0.000008563   0.000456572  -0.000160695   0.000006170   0.000012590   0.000000587   0.000036513  -0.000000133

   66   15.1  1.5 -1.5   0.000000000  -0.000000019  -0.000000310   0.000000012  -0.000000064  -0.000000003   0.000000183  -0.000000001
                         0.000000001  -0.000000059   0.000000215  -0.000000008   0.000000003   0.000000000  -0.000000041   0.000000000

   67   16.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000358  -0.000000007  -0.000000020  -0.000000533  -0.000000002   0.000000047  -0.000000001  -0.000000201

   68   17.1  1.5 -1.5  -0.000000000   0.000000015  -0.000000433   0.000000017   0.000000000   0.000000000  -0.000000047   0.000000000
                         0.000000000  -0.000000005  -0.000000618   0.000000024   0.000000005   0.000000000  -0.000000210   0.000000001

   69    1.1  0.5  0.5  -0.000927920   0.049477655  -0.003583933   0.000137597   0.000000162   0.000000008   0.000002894  -0.000000011
                         0.000299426  -0.015964097  -0.005070831   0.000194680   0.000003322   0.000000155   0.000013074  -0.000000048

   70    2.1  0.5  0.5   0.000022091   0.000000406  -0.000002112  -0.000055045  -0.000000000   0.000000001   0.000000000   0.000000014
                         0.038664680   0.000725133   0.001491914   0.038859138  -0.000000134   0.000002882  -0.000000019  -0.000005230

   71    3.1  0.5  0.5   0.000120258  -0.006411631  -0.040510150   0.001555303   0.000005489   0.000000256   0.000003578  -0.000000013
                         0.000372079  -0.019839607   0.028513734  -0.001094723  -0.000000261  -0.000000012  -0.000000792   0.000000003

   72    4.1  0.5  0.5   0.000397358  -0.021187529  -0.003136490   0.000120419   0.000000049   0.000000002  -0.000000818   0.000000003
                        -0.000128352   0.006844335  -0.004465253   0.000171435   0.000000935   0.000000044  -0.000003704   0.000000014

   73    5.1  0.5  0.5   0.037765957   0.000708283  -0.001447267  -0.037696111   0.000000429  -0.000009207  -0.000000020  -0.000005346
                        -0.000044904  -0.000000817  -0.000001352  -0.000035312  -0.000000000   0.000000009  -0.000000000  -0.000000012

   74    6.1  0.5  0.5  -0.000032708   0.001742789  -0.017319582   0.000664952  -0.000006655  -0.000000310  -0.000002685   0.000000010
                        -0.000102102   0.005444208   0.012185505  -0.000467836   0.000000317   0.000000015   0.000000595  -0.000000002

   75    7.1  0.5  0.5  -0.000031355  -0.000000582  -0.000001535  -0.000040084  -0.000000000   0.000000003  -0.000000000  -0.000000005
                        -0.029996187  -0.000562560   0.001524015   0.039695159  -0.000000063   0.000001352   0.000000002   0.000000640

   76    1.1  0.5 -0.5   0.051989311   0.000975034   0.000238396   0.006209469   0.000000155  -0.000003326  -0.000000049  -0.000013390
                        -0.000047192  -0.000000856   0.000000772   0.000020054   0.000000000  -0.000000000  -0.000000000  -0.000000032

   77    2.1  0.5 -0.5  -0.000222903   0.011884943   0.031773971  -0.001219894   0.000002878   0.000000134  -0.000005106   0.000000019
                        -0.000690024   0.036792745  -0.022370750   0.000858876  -0.000000140  -0.000000007   0.000001132  -0.000000004

   78    3.1  0.5 -0.5   0.000009096   0.000000159  -0.000002447  -0.000063794   0.000000000  -0.000000007   0.000000000   0.000000009
                         0.020849914   0.000391030   0.001901941   0.049538886   0.000000256  -0.000005495  -0.000000013  -0.000003664

   79    4.1  0.5 -0.5  -0.022265583  -0.000417574   0.000209501   0.005456744   0.000000044  -0.000000936   0.000000014   0.000003793
                         0.000012481   0.000000242   0.000000067   0.000001751   0.000000000  -0.000000003   0.000000000   0.000000007

   80    5.1  0.5 -0.5   0.000674119  -0.035944717  -0.021686406   0.000832603  -0.000000439  -0.000000020  -0.000001154   0.000000004
                        -0.000217323   0.011586497  -0.030833388   0.001183789  -0.000009196  -0.000000429  -0.000005220   0.000000019

   81    6.1  0.5 -0.5  -0.000018322  -0.000000321  -0.000000883  -0.000023045  -0.000000000   0.000000007  -0.000000000  -0.000000007
                        -0.005716326  -0.000107213   0.000813038   0.021176731  -0.000000311   0.000006663   0.000000010   0.000002750

   82    7.1  0.5 -0.5   0.000172675  -0.009206852   0.032466836  -0.001246500   0.000001351   0.000000063   0.000000624  -0.000000002
                         0.000535405  -0.028548312  -0.022838823   0.000876847  -0.000000062  -0.000000003  -0.000000141   0.000000001


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5  -0.000000000   0.032583904   0.000121891  -0.027665969  -0.000005292  -0.009682987   0.000199806  -0.058665874
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000000  -0.000022362  -0.000000062   0.000014157  -0.000000007  -0.000012719  -0.000000146   0.000042967
                         0.000000000   0.009069710  -0.000068184   0.015475992   0.000008798   0.016099362   0.000025396  -0.007456705

    3    3.1  1.5  1.5  -0.000000000  -0.000011717   0.000000027  -0.000006132   0.000000008   0.000014441   0.000000015  -0.000004425
                        -0.000000000  -0.056340855  -0.000064439   0.014625910  -0.000006371  -0.011658273   0.000159087  -0.046710156

    4    4.1  1.5  1.5   0.000000000  -0.000825794  -0.000105120   0.023859486   0.000010377   0.018987794  -0.000023567   0.006919576
                        -0.000000000   0.000000160  -0.000000044   0.000009927   0.000000013   0.000023501   0.000000002  -0.000000658

    5    5.1  1.5  1.5  -0.017671104   0.000000000  -0.045108010  -0.000198738   0.014871681  -0.000008128   0.005748548   0.000019579
                         0.019277866   0.000000000   0.006626723   0.000029196  -0.050781460   0.000027752  -0.026990333  -0.000091925

    6    6.1  1.5  1.5   0.012371045   0.000000000  -0.050655034  -0.000223177  -0.008248844   0.000004508  -0.000538497  -0.000001834
                        -0.013495944   0.000000000   0.007441658   0.000032787   0.028166917  -0.000015393   0.002528269   0.000008611

    7    7.1  1.5  1.5   0.036188548   0.000000000   0.001392808   0.000006137   0.034392351  -0.000018795  -0.004248498  -0.000014470
                         0.033172302  -0.000000000   0.009480872   0.000041771   0.010072019  -0.000005505  -0.000904853  -0.000003082

    8    8.1  1.5  1.5  -0.000784615  -0.000000000  -0.000030159  -0.000000133  -0.000745483   0.000000407   0.000092204   0.000000314
                        -0.000718930   0.000000000  -0.000205351  -0.000000905  -0.000218731   0.000000120   0.000019486   0.000000066

    9    9.1  1.5  1.5  -0.000000000  -0.000070853  -0.000002472   0.000560979   0.000000233   0.000426361  -0.000000833   0.000244701
                         0.000000000   0.000001173  -0.000000003   0.000000671   0.000000001   0.000001357  -0.000000001   0.000000317

   10   10.1  1.5  1.5   0.000449122  -0.000000000  -0.000236274  -0.000001041  -0.000342142   0.000000187  -0.000087555  -0.000000298
                        -0.000490443  -0.000000000   0.000034647   0.000000153   0.001167445  -0.000000638   0.000411224   0.000001401

   11   11.1  1.5  1.5  -0.000000000   0.000000691   0.000000007  -0.000001608  -0.000000001  -0.000001278   0.000000005  -0.000001478
                        -0.000000000  -0.000005213  -0.000001688   0.000383116   0.000000166   0.000303423   0.000001107  -0.000324981

   12   12.1  1.5  1.5   0.000128280   0.000000000   0.001452157   0.000006398  -0.000137643   0.000000075  -0.000089393  -0.000000304
                        -0.000140013   0.000000000  -0.000213343  -0.000000940   0.000469880  -0.000000257   0.000419733   0.000001430

   13   13.1  1.5  1.5   0.000000000  -0.000703230  -0.000002464   0.000559364   0.000000098   0.000178447  -0.000004283   0.001257564
                        -0.000000000  -0.000002202  -0.000000005   0.000001030  -0.000000000  -0.000000116   0.000000008  -0.000002223

   14   14.1  1.5  1.5   0.000000000  -0.000001007  -0.000000003   0.000000638  -0.000000000  -0.000000445  -0.000000008   0.000002243
                        -0.000000000   0.001238139   0.000001137  -0.000258170   0.000000168   0.000306676  -0.000003315   0.000973332

   15   15.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000146   0.000000000  -0.000000053   0.000000000   0.000000019   0.000000000  -0.000000077

   16   16.1  1.5  1.5   0.000000069   0.000000000   0.000000134   0.000000001  -0.000000015   0.000000000   0.000000009   0.000000000
                        -0.000000075   0.000000000  -0.000000020  -0.000000000   0.000000050  -0.000000000  -0.000000043  -0.000000000

   17   17.1  1.5  1.5  -0.000000000  -0.000000088  -0.000000001   0.000000145   0.000000000   0.000000084   0.000000000  -0.000000080
                         0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   18    1.1  1.5  0.5   0.028915460   0.000000000  -0.001637168  -0.000007213   0.016203667  -0.000008855  -0.016682687  -0.000056818
                         0.026474788  -0.000000000  -0.011393608  -0.000050198   0.004716167  -0.000002578  -0.003589394  -0.000012225

   19    2.1  1.5  0.5   0.020468331  -0.000000000   0.048209058   0.000212400   0.010562023  -0.000005773   0.009927804   0.000033813
                        -0.022372589  -0.000000000  -0.007073633  -0.000031165  -0.036110280   0.000019734  -0.046551448  -0.000158546

   20    3.1  1.5  0.5   0.026329471  -0.000000000  -0.019014055  -0.000083772   0.000531325  -0.000000290  -0.000837012  -0.000002851
                        -0.028723531   0.000000000   0.002793339   0.000012307  -0.001814259   0.000000991   0.003929895   0.000013385

   21    4.1  1.5  0.5  -0.000932243   0.000000000   0.005194426   0.000022886   0.056478097  -0.000030865  -0.042519721  -0.000144815
                        -0.000854524  -0.000000000   0.035358127   0.000155781   0.016539947  -0.000009040  -0.009056084  -0.000030843

   22    5.1  1.5  0.5   0.000000000   0.000006896  -0.000000024   0.000005445  -0.000000002  -0.000003650   0.000000001  -0.000000311
                         0.000000000   0.033169276   0.000057425  -0.013033806   0.000001611   0.002947192   0.000011058  -0.003246739

   23    6.1  1.5  0.5  -0.000000000  -0.000004217  -0.000000074   0.000016657   0.000000027   0.000050324   0.000000003  -0.000001031
                        -0.000000000  -0.020177498   0.000176522  -0.040065763  -0.000022220  -0.040657599   0.000036873  -0.010826500

   24    7.1  1.5  0.5  -0.000000000   0.009525579  -0.000125469   0.028478050   0.000014385   0.026322336   0.000160071  -0.046999016
                        -0.000000000  -0.000001992  -0.000000052   0.000011856   0.000000017   0.000032574  -0.000000015   0.000004437

   25    8.1  1.5  0.5  -0.000000000  -0.000206677   0.000002719  -0.000617209  -0.000000312  -0.000570789  -0.000003471   0.001019140
                         0.000000000   0.000000299   0.000000001  -0.000000138  -0.000000000  -0.000000506   0.000000000  -0.000000063

   26    9.1  1.5  0.5  -0.000066662  -0.000000000   0.000117243   0.000000517   0.001195212  -0.000000653  -0.000891867  -0.000003038
                        -0.000062073   0.000000000   0.000782352   0.000003447   0.000348429  -0.000000190  -0.000192027  -0.000000654

   27   10.1  1.5  0.5  -0.000000000  -0.000000229  -0.000000000   0.000000016   0.000000000   0.000000721  -0.000000001   0.000000300
                        -0.000000000  -0.000792527   0.000002186  -0.000496121  -0.000000396  -0.000724520   0.000000470  -0.000138045

   28   11.1  1.5  0.5   0.000532200  -0.000000000   0.000964142   0.000004248   0.000226410  -0.000000124   0.000210532   0.000000717
                        -0.000579343  -0.000000000  -0.000143218  -0.000000631  -0.000779673   0.000000426  -0.000982382  -0.000003346

   29   12.1  1.5  0.5  -0.000000000  -0.000000068   0.000000002  -0.000000347  -0.000000000  -0.000000652  -0.000000000   0.000000064
                         0.000000000  -0.000282547  -0.000003380   0.000767251   0.000000277   0.000506588  -0.000000691   0.000202753

   30   13.1  1.5  0.5  -0.000622151  -0.000000000   0.000027412   0.000000121  -0.000442307   0.000000242   0.000430325   0.000001466
                        -0.000573021  -0.000000000   0.000188803   0.000000832  -0.000130030   0.000000071   0.000091320   0.000000311

   31   14.1  1.5  0.5  -0.000492204  -0.000000000   0.000577677   0.000002545   0.000024137  -0.000000013   0.000054745   0.000000186
                         0.000534716  -0.000000000  -0.000085256  -0.000000376  -0.000089711   0.000000049  -0.000248896  -0.000000848

   32   15.1  1.5  0.5   0.000000011   0.000000000  -0.000000012  -0.000000000  -0.000000053   0.000000000  -0.000000010  -0.000000000
                        -0.000000012   0.000000000   0.000000002   0.000000000   0.000000179  -0.000000000   0.000000047   0.000000000

   33   16.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000050  -0.000000000   0.000000001   0.000000000   0.000000181  -0.000000000   0.000000091

   34   17.1  1.5  0.5  -0.000000072   0.000000000  -0.000000005  -0.000000000  -0.000000007   0.000000000  -0.000000107  -0.000000000
                        -0.000000065   0.000000000  -0.000000033  -0.000000000  -0.000000003   0.000000000  -0.000000023  -0.000000000

   35    1.1  1.5 -0.5  -0.000000000  -0.039204821  -0.000050714   0.011510588   0.000009223   0.016875979  -0.000058119   0.017064420
                         0.000000000  -0.000014415   0.000000139  -0.000031467   0.000000027   0.000048891   0.000000126  -0.000037037

   36    2.1  1.5 -0.5  -0.000000000   0.000022841  -0.000000052   0.000011698  -0.000000032  -0.000059141   0.000000059  -0.000017220
                        -0.000000000  -0.030323007   0.000214674  -0.048725244   0.000020561   0.037623200   0.000162112  -0.047598301

   37    3.1  1.5 -0.5  -0.000000000  -0.000008102   0.000000035  -0.000008016  -0.000000001  -0.000002332  -0.000000001   0.000000380
                        -0.000000000  -0.038965141  -0.000084672   0.019218142   0.000001033   0.001890459  -0.000013685   0.004018042

   38    4.1  1.5 -0.5  -0.000000000   0.001264630   0.000157453  -0.035737641   0.000032162   0.058850149  -0.000148063   0.043473433
                         0.000000000  -0.000000250   0.000000066  -0.000014900   0.000000039   0.000072863   0.000000014  -0.000004097

   39    5.1  1.5 -0.5   0.022413096  -0.000000000  -0.012895393  -0.000056815  -0.000828313   0.000000453  -0.000676343  -0.000002304
                        -0.024451054  -0.000000000   0.001894460   0.000008347   0.002828400  -0.000001546   0.003175512   0.000010815

   40    6.1  1.5 -0.5  -0.013634327   0.000000000  -0.039640294  -0.000174648   0.011426911  -0.000006245  -0.002255312  -0.000007681
                         0.014874024   0.000000000   0.005823466   0.000025657  -0.039018824   0.000021324   0.010588988   0.000036064

   41    7.1  1.5 -0.5   0.007021865   0.000000000   0.004139235   0.000018237  -0.025261366   0.000013805  -0.045967959  -0.000156559
                         0.006436619  -0.000000000   0.028175632   0.000124137  -0.007397958   0.000004044  -0.009790517  -0.000033345

   42    8.1  1.5 -0.5  -0.000152181  -0.000000000  -0.000089593  -0.000000395   0.000547726  -0.000000299   0.000996789   0.000003395
                        -0.000139844   0.000000000  -0.000610672  -0.000002691   0.000160614  -0.000000088   0.000212268   0.000000723

   43    9.1  1.5 -0.5   0.000000000   0.000091084   0.000003485  -0.000791084   0.000000680   0.001244960  -0.000003107   0.000912303
                        -0.000000000  -0.000000732   0.000000012  -0.000002614   0.000000002   0.000003073   0.000000007  -0.000002113

   44   10.1  1.5 -0.5  -0.000535573   0.000000000  -0.000490880  -0.000002163   0.000203796  -0.000000111  -0.000028450  -0.000000097
                         0.000584176  -0.000000000   0.000071922   0.000000317  -0.000695267   0.000000380   0.000135082   0.000000460

   45   11.1  1.5 -0.5  -0.000000000  -0.000001007  -0.000000009   0.000001967  -0.000000002  -0.000002850   0.000000005  -0.000001365
                         0.000000000  -0.000786686   0.000004294  -0.000974719   0.000000444   0.000811877   0.000003422  -0.001004687

   46   12.1  1.5 -0.5  -0.000190929  -0.000000000   0.000759099   0.000003344  -0.000142354   0.000000078   0.000042280   0.000000144
                         0.000208276   0.000000000  -0.000111545  -0.000000491   0.000486176  -0.000000266  -0.000198296  -0.000000675

   47   13.1  1.5 -0.5  -0.000000000   0.000845825   0.000000841  -0.000190783  -0.000000252  -0.000461024   0.000001498  -0.000439908
                         0.000000000  -0.000002185  -0.000000001   0.000000241  -0.000000000  -0.000000093   0.000000001  -0.000000285

   48   14.1  1.5 -0.5  -0.000000000   0.000001667  -0.000000003   0.000000630  -0.000000001  -0.000002165   0.000000006  -0.000001719
                         0.000000000   0.000726762   0.000002573  -0.000583934   0.000000051   0.000092876   0.000000868  -0.000254840

   49   15.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000016  -0.000000000   0.000000012  -0.000000000  -0.000000187  -0.000000000   0.000000048

   50   16.1  1.5 -0.5  -0.000000034   0.000000000   0.000000001   0.000000000  -0.000000051   0.000000000   0.000000019   0.000000000
                         0.000000037   0.000000000  -0.000000000  -0.000000000   0.000000174  -0.000000000  -0.000000089  -0.000000000

   51   17.1  1.5 -0.5   0.000000000   0.000000097  -0.000000000   0.000000034  -0.000000000  -0.000000008  -0.000000000   0.000000110
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000

   52    1.1  1.5 -1.5  -0.024024118  -0.000000000   0.004009804   0.000017666  -0.009289315   0.000005077   0.057380025   0.000195427
                        -0.022012554  -0.000000000   0.027373844   0.000120604  -0.002732923   0.000001494   0.012215461   0.000041604

   53    2.1  1.5 -1.5  -0.006110694   0.000000000  -0.015314633  -0.000067473   0.004531677  -0.000002477   0.001510616   0.000005145
                         0.006702205   0.000000000   0.002229026   0.000009821  -0.015448414   0.000008443  -0.007302215  -0.000024870

   54    3.1  1.5 -1.5   0.038070565  -0.000000000  -0.014470586  -0.000063755  -0.003276573   0.000001791   0.009730359   0.000033140
                        -0.041532206   0.000000000   0.002125893   0.000009366   0.011188369  -0.000006114  -0.045685433  -0.000155597

   55    4.1  1.5 -1.5   0.000608750  -0.000000000  -0.003467929  -0.000015279   0.018222458  -0.000009959  -0.006767774  -0.000023050
                         0.000557996   0.000000000  -0.023606114  -0.000104004   0.005336564  -0.000002917  -0.001441444  -0.000004909

   56    5.1  1.5 -1.5  -0.000000000  -0.000005451  -0.000000084   0.000018961   0.000000035   0.000065487  -0.000000009   0.000002599
                         0.000000000  -0.026151558   0.000200871  -0.045592166  -0.000028918  -0.052914263  -0.000093987   0.027595722

   57    6.1  1.5 -1.5  -0.000000000   0.000003782  -0.000000094   0.000021326  -0.000000019  -0.000036344   0.000000001  -0.000000256
                         0.000000000   0.018308011   0.000225572  -0.051198734   0.000016040   0.029349912   0.000008804  -0.002584980

   58    7.1  1.5 -1.5   0.000000000   0.049091878  -0.000042219   0.009582632  -0.000019585  -0.035836816   0.000014794  -0.004343788
                        -0.000000000  -0.000010217  -0.000000018   0.000003979  -0.000000024  -0.000044356  -0.000000001   0.000000395

   59    8.1  1.5 -1.5  -0.000000000  -0.001064181   0.000000914  -0.000207554   0.000000425   0.000776909  -0.000000321   0.000094241
                         0.000000000   0.000000009   0.000000000  -0.000000077   0.000000000   0.000000566  -0.000000000   0.000000140

   60    9.1  1.5 -1.5   0.000051447  -0.000000000  -0.000081970  -0.000000361   0.000409410  -0.000000224  -0.000239404  -0.000000815
                         0.000048731  -0.000000000  -0.000554959  -0.000002445   0.000119035  -0.000000065  -0.000050642  -0.000000172

   61   10.1  1.5 -1.5   0.000000000  -0.000000189  -0.000000000   0.000000036  -0.000000001  -0.000001267   0.000000000  -0.000000011
                         0.000000000   0.000665015   0.000001052  -0.000238800   0.000000665   0.001216548   0.000001432  -0.000420441

   62   11.1  1.5 -1.5   0.000003012  -0.000000000  -0.000378837  -0.000001669   0.000084412  -0.000000046   0.000069113   0.000000235
                        -0.000004311   0.000000000   0.000057118   0.000000252  -0.000291448   0.000000159  -0.000317550  -0.000001082

   63   12.1  1.5 -1.5  -0.000000000  -0.000000007   0.000000003  -0.000000620  -0.000000000  -0.000000572   0.000000000  -0.000000036
                         0.000000000   0.000189893  -0.000006467   0.001467745   0.000000268   0.000489625   0.000001462  -0.000429146

   64   13.1  1.5 -1.5   0.000519979  -0.000000000  -0.000082091  -0.000000362   0.000171160  -0.000000094  -0.001229538  -0.000004188
                         0.000473454   0.000000000  -0.000553309  -0.000002438   0.000050476  -0.000000028  -0.000264025  -0.000000899

   65   14.1  1.5 -1.5  -0.000835701   0.000000000   0.000255352   0.000001125   0.000086130  -0.000000047  -0.000204862  -0.000000698
                         0.000913560   0.000000000  -0.000038049  -0.000000168  -0.000294333   0.000000161   0.000951531   0.000003241

   66   15.1  1.5 -1.5  -0.000000098   0.000000000   0.000000053   0.000000000   0.000000006  -0.000000000   0.000000016   0.000000000
                         0.000000108  -0.000000000  -0.000000008  -0.000000000  -0.000000018   0.000000000  -0.000000075  -0.000000000

   67   16.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000102  -0.000000001   0.000000135   0.000000000   0.000000053  -0.000000000   0.000000044

   68   17.1  1.5 -1.5   0.000000066  -0.000000000  -0.000000021  -0.000000000   0.000000080  -0.000000000   0.000000078   0.000000000
                         0.000000059  -0.000000000  -0.000000144  -0.000000001   0.000000024  -0.000000000   0.000000017   0.000000000

   69    1.1  0.5  0.5  -0.459303818  -0.000000001  -0.060688999  -0.000267386  -0.011581705   0.000006329   0.037029490   0.000126117
                        -0.421021952   0.000000001  -0.413110153  -0.001820086  -0.003391713   0.000001853   0.007886570   0.000026860

   70    2.1  0.5  0.5   0.000000000   0.000136266  -0.000000671   0.000152291   0.000000018   0.000033723  -0.000000002   0.000000597
                         0.000000000   0.655766171   0.001608553  -0.365097640  -0.000014938  -0.027333742  -0.000020906   0.006138155

   71    3.1  0.5  0.5  -0.072050290  -0.000000000   0.690794476   0.003043512  -0.004830295   0.000002641  -0.052883995  -0.000180114
                         0.078602042  -0.000000001  -0.101483526  -0.000447119   0.016493105  -0.000009014   0.248298897   0.000845665

   72    4.1  0.5  0.5   0.119554590  -0.000000000  -0.037476873  -0.000165116  -0.561299913   0.000306751  -0.351341431  -0.001196610
                         0.109589647   0.000000000  -0.255103035  -0.001123936  -0.164380129   0.000089843  -0.074830819  -0.000254863

   73    5.1  0.5  0.5   0.000000000   0.258194021  -0.001515109   0.343888506   0.000211948   0.387826460  -0.001627698   0.477915231
                        -0.000000001  -0.000053938  -0.000000630   0.000142831   0.000000258   0.000480075   0.000000153  -0.000045236

   74    6.1  0.5  0.5  -0.166849653   0.000000000  -0.008675410  -0.000038221  -0.196028044   0.000107139   0.026451332   0.000090087
                         0.182020717   0.000000000   0.001274544   0.000005615   0.669366219  -0.000365809  -0.124193462  -0.000422982

   75    7.1  0.5  0.5  -0.000000000  -0.000011543  -0.000000151   0.000034191   0.000000051   0.000099886  -0.000000238   0.000069886
                         0.000000000  -0.055814381   0.000360671  -0.081862482  -0.000044137  -0.080760829  -0.002519353   0.739717027

   76    1.1  0.5 -0.5  -0.000000000  -0.623072600   0.001839622  -0.417544157   0.000006595   0.012068115  -0.000128945   0.037860020
                         0.000000001   0.000129842   0.000000766  -0.000173508   0.000000009   0.000014998   0.000000011  -0.000003397

   77    2.1  0.5 -0.5  -0.443113331   0.000000000   0.361220495   0.001591471  -0.007682315   0.000004199  -0.001278677  -0.000004355
                         0.483404454  -0.000000000  -0.053066599  -0.000233802   0.026231977  -0.000014336   0.006003494   0.000020447

   78    3.1  0.5 -0.5   0.000000001  -0.000021879   0.000001283  -0.000290734  -0.000000010  -0.000021095   0.000000081  -0.000023856
                        -0.000000000  -0.106627974  -0.003076180   0.698209015   0.000009393   0.017185861   0.000864633  -0.253868192

   79    4.1  0.5 -0.5  -0.000000000   0.162182581   0.001136000  -0.257841159   0.000319637   0.584874256   0.001223451  -0.359222009
                         0.000000000  -0.000033535   0.000000473  -0.000107453   0.000000387   0.000724039  -0.000000118   0.000034037

   80    5.1  0.5 -0.5  -0.190330057  -0.000000000  -0.049983265  -0.000220218   0.372194453  -0.000203404  -0.467430782  -0.001591990
                        -0.174466687   0.000000001  -0.340236679  -0.001499020   0.108999464  -0.000059573  -0.099556182  -0.000339071

   81    6.1  0.5 -0.5  -0.000000000  -0.000051400  -0.000000016   0.000003704  -0.000000462  -0.000863405  -0.000000039   0.000011893
                        -0.000000000  -0.246921739   0.000038632  -0.008768534   0.000381175   0.697479307  -0.000432469   0.126979089

   82    7.1  0.5 -0.5   0.037714769   0.000000000   0.080993139   0.000356841  -0.022698087   0.000012408  -0.154092896  -0.000524815
                        -0.041144155  -0.000000000  -0.011898679  -0.000052424   0.077505602  -0.000042358   0.723489229   0.002464083


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  1.5  1.5  -0.000000000   0.026747740   0.000181693   0.025639873  -0.000000000  -0.020701426  -0.000000003   0.000000453
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000  -0.000019102  -0.000000079  -0.000011080  -0.000000000  -0.000016925  -0.000000000   0.000000000
                        -0.000000000   0.005368871  -0.000117711  -0.016610980  -0.000000000  -0.029988294  -0.000000002   0.000000253

    3    3.1  1.5  1.5  -0.000000000  -0.000006336   0.000000001   0.000000140  -0.000000000  -0.000007439  -0.000000000   0.000000004
                         0.000000000  -0.042397208  -0.000001994  -0.000281354   0.000000000  -0.006902755  -0.000000002   0.000000264

    4    4.1  1.5  1.5   0.000000000  -0.002730197  -0.000170952  -0.024124159  -0.000000000  -0.025643895   0.000000006  -0.000000925
                         0.000000000   0.000000404  -0.000000082  -0.000011628   0.000000000   0.000027650   0.000000000  -0.000000001

    5    5.1  1.5  1.5  -0.007821838  -0.000000000   0.002560276  -0.000018143   0.037935772  -0.000000000   0.000000182   0.000000001
                        -0.003959600  -0.000000000  -0.019256488   0.000136458  -0.005309542  -0.000000000  -0.000000012  -0.000000000

    6    6.1  1.5  1.5   0.031907944   0.000000000   0.002393667  -0.000016962  -0.000251745   0.000000000  -0.000000060  -0.000000000
                         0.016152550  -0.000000000  -0.018003443   0.000127579   0.000035232  -0.000000000   0.000000000   0.000000000

    7    7.1  1.5  1.5  -0.016439921  -0.000000000   0.016176318  -0.000114631  -0.000521292   0.000000000  -0.000000033  -0.000000000
                         0.032475620   0.000000000   0.002150742  -0.000015241  -0.003724530   0.000000000  -0.000000633  -0.000000004

    8    8.1  1.5  1.5   0.000376596  -0.000000000  -0.000371013   0.000002629   0.000012158  -0.000000000  -0.000000000   0.000000000
                        -0.000744416   0.000000000  -0.000049342   0.000000350   0.000085417   0.000000000   0.000000002   0.000000000

    9    9.1  1.5  1.5  -0.000000000  -0.000108437  -0.000004221  -0.000595616   0.000000000  -0.000550892   0.000000000  -0.000000028
                        -0.000000000   0.000000874  -0.000000007  -0.000001010  -0.000000000  -0.000000618  -0.000000000   0.000000000

   10   10.1  1.5  1.5   0.000680536  -0.000000000   0.000005505  -0.000000039  -0.000552370  -0.000000000  -0.000000003  -0.000000000
                         0.000344216  -0.000000000  -0.000042282   0.000000300   0.000077337  -0.000000000   0.000000000  -0.000000000

   11   11.1  1.5  1.5   0.000000000   0.000000676   0.000000012   0.000001680  -0.000000000  -0.000000196  -0.000000000   0.000000000
                        -0.000000000  -0.000037152  -0.000002672  -0.000377014   0.000000000  -0.000704548   0.000000000  -0.000000010

   12   12.1  1.5  1.5  -0.000321997   0.000000000  -0.000080228   0.000000569  -0.000671508  -0.000000000   0.000000075   0.000000001
                        -0.000163044   0.000000000   0.000603294  -0.000004275   0.000093989  -0.000000000  -0.000000004  -0.000000000

   13   13.1  1.5  1.5   0.000000000  -0.000606737  -0.000003859  -0.000544631  -0.000000000   0.000517471  -0.000000000   0.000000009
                        -0.000000000  -0.000001794  -0.000000003  -0.000000460  -0.000000000  -0.000001208   0.000000000  -0.000000000

   14   14.1  1.5  1.5   0.000000000  -0.000000900  -0.000000003  -0.000000442  -0.000000000   0.000001547   0.000000000   0.000000000
                         0.000000000   0.000979515  -0.000000396  -0.000055880   0.000000000   0.000043749  -0.000000000   0.000000011

   15   15.1  1.5  1.5  -0.000000000  -0.000000001  -0.000000000  -0.000000001   0.000000000  -0.000000002   0.000002979  -0.000430953
                         0.000000000   0.000000150  -0.000000000  -0.000000011  -0.000000000  -0.000000114   0.002992424  -0.442860667

   16   16.1  1.5  1.5   0.000000236   0.000000000  -0.000000051   0.000000000   0.000000091  -0.000000000  -0.360877575  -0.002438178
                         0.000000119   0.000000000   0.000000384  -0.000000003  -0.000000013  -0.000000000   0.019370860   0.000130834

   17   17.1  1.5  1.5  -0.000000000  -0.000000262  -0.000000002  -0.000000264   0.000000000  -0.000000374  -0.000826504   0.122303933
                        -0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000772   0.000117612

   18    1.1  1.5  0.5   0.006975752   0.000000000   0.022740440  -0.000161147   0.003533466   0.000000000   0.000000010   0.000000000
                        -0.013750487  -0.000000000   0.003049251  -0.000021608   0.025125210  -0.000000000   0.000000215   0.000000001

   19    2.1  1.5  0.5   0.015958369   0.000000000  -0.004539829   0.000032171   0.022274964   0.000000000  -0.000000406  -0.000000003
                         0.008091364   0.000000000   0.034015724  -0.000241048  -0.003136711  -0.000000000   0.000000020   0.000000000

   20    3.1  1.5  0.5  -0.001506639  -0.000000000  -0.002787288   0.000019752  -0.029934181   0.000000000   0.000000016   0.000000000
                        -0.000762692   0.000000000   0.020963956  -0.000148558   0.004189632   0.000000000   0.000000001   0.000000000

   21    4.1  1.5  0.5   0.006480563   0.000000000   0.029641446  -0.000210050  -0.004070861  -0.000000000  -0.000000019  -0.000000000
                        -0.012801787  -0.000000000   0.003941012  -0.000027927  -0.029085559  -0.000000000  -0.000000454  -0.000000003

   22    5.1  1.5  0.5  -0.000000000  -0.000004623   0.000000061   0.000008611  -0.000000000   0.000003961  -0.000000000   0.000000001
                         0.000000000  -0.030905987  -0.000126516  -0.017853486  -0.000000000   0.003675479  -0.000000000   0.000000001

   23    6.1  1.5  0.5  -0.000000000  -0.000002924  -0.000000119  -0.000016772   0.000000000  -0.000003471  -0.000000000   0.000000002
                         0.000000000  -0.019545477   0.000246550   0.034792169   0.000000000  -0.003225844   0.000000003  -0.000000395

   24    7.1  1.5  0.5   0.000000000  -0.012533551   0.000146052   0.020610242   0.000000000  -0.031987688  -0.000000002   0.000000310
                         0.000000000   0.000001874   0.000000070   0.000009941   0.000000000   0.000034484  -0.000000000   0.000000002

   25    8.1  1.5  0.5  -0.000000000   0.000287044  -0.000003348  -0.000472462   0.000000000   0.000733249  -0.000000000   0.000000004
                        -0.000000000  -0.000000110  -0.000000003  -0.000000489   0.000000000  -0.000000756   0.000000000  -0.000000000

   26    9.1  1.5  0.5   0.000136779   0.000000000   0.000638383  -0.000004524  -0.000097651  -0.000000000  -0.000000001  -0.000000000
                        -0.000268406  -0.000000000   0.000086078  -0.000000610  -0.000708011   0.000000000  -0.000000012  -0.000000000

   27   10.1  1.5  0.5   0.000000000   0.000000103  -0.000000004  -0.000000568  -0.000000000   0.000000107   0.000000000   0.000000000
                        -0.000000000   0.000098514   0.000006215   0.000876985   0.000000000  -0.000110317   0.000000000  -0.000000018

   28   11.1  1.5  0.5   0.000355261   0.000000000  -0.000113426   0.000000804   0.000392306   0.000000000   0.000000019   0.000000000
                         0.000180102   0.000000000   0.000847930  -0.000006009  -0.000053193  -0.000000000  -0.000000001  -0.000000000

   29   12.1  1.5  0.5  -0.000000000   0.000000137   0.000000000   0.000000068   0.000000000   0.000000012   0.000000000  -0.000000000
                        -0.000000000   0.000832674  -0.000001312  -0.000185148  -0.000000000  -0.000018790  -0.000000001   0.000000130

   30   13.1  1.5  0.5  -0.000170206  -0.000000000  -0.000571426   0.000004049  -0.000074527   0.000000000   0.000000000   0.000000000
                         0.000336496   0.000000000  -0.000074612   0.000000529  -0.000524288  -0.000000000   0.000000005   0.000000000

   31   14.1  1.5  0.5   0.000093311  -0.000000000   0.000044454  -0.000000315   0.000760806   0.000000000  -0.000000002  -0.000000000
                         0.000048356  -0.000000000  -0.000347248   0.000002461  -0.000106814  -0.000000000   0.000000000   0.000000000

   32   15.1  1.5  0.5   0.000000062  -0.000000000   0.000000030  -0.000000000  -0.000000168  -0.000000000   0.589852163   0.003985326
                         0.000000033  -0.000000000  -0.000000223   0.000000002   0.000000025   0.000000000  -0.029718384  -0.000200719

   33   16.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000007867   0.001175665
                        -0.000000000   0.000000205  -0.000000002  -0.000000215  -0.000000000  -0.000000138   0.003751046  -0.555155885

   34   17.1  1.5  0.5  -0.000000182   0.000000000   0.000000096  -0.000000001   0.000000040   0.000000000   0.001442017   0.000009739
                         0.000000359  -0.000000000   0.000000014  -0.000000000   0.000000284   0.000000000   0.035386424   0.000238939

   35    1.1  1.5 -0.5   0.000000000  -0.015418715   0.000162589   0.022943961   0.000000000   0.025372454  -0.000000001   0.000000215
                        -0.000000000   0.000015628  -0.000000103  -0.000014483  -0.000000000  -0.000010613   0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000000000   0.000014152  -0.000000004  -0.000000534   0.000000000   0.000005361  -0.000000000   0.000000002
                        -0.000000000   0.017892443  -0.000243185  -0.034317336  -0.000000000   0.022494732   0.000000003  -0.000000406

   37    3.1  1.5 -0.5  -0.000000000  -0.000000249   0.000000072   0.000010195  -0.000000000  -0.000032587  -0.000000000   0.000000002
                         0.000000000  -0.001688686  -0.000149865  -0.021148435  -0.000000000  -0.030225935  -0.000000000   0.000000016

   38    4.1  1.5 -0.5   0.000000000  -0.014348639   0.000211898   0.029902286   0.000000000  -0.029369043   0.000000003  -0.000000455
                        -0.000000000   0.000002144   0.000000102   0.000014417   0.000000000   0.000031660  -0.000000000   0.000000001

   39    5.1  1.5 -0.5   0.027574171   0.000000000   0.002353021  -0.000016674  -0.003640001  -0.000000000  -0.000000001  -0.000000000
                         0.013958695  -0.000000000  -0.017697749   0.000125413   0.000509461  -0.000000000  -0.000000001  -0.000000000

   40    6.1  1.5 -0.5   0.017438379   0.000000000  -0.004585483   0.000032494   0.003194706   0.000000000   0.000000394   0.000000003
                         0.008827718   0.000000000   0.034488674  -0.000244399  -0.000447142   0.000000000  -0.000000019  -0.000000000

   41    7.1  1.5 -0.5  -0.005660780  -0.000000000  -0.020430458   0.000144778   0.004433832   0.000000000  -0.000000016  -0.000000000
                         0.011182373   0.000000000  -0.002716351   0.000019249   0.031678928   0.000000000  -0.000000310  -0.000000002

   42    8.1  1.5 -0.5   0.000129703  -0.000000000   0.000468375  -0.000003319  -0.000101670   0.000000000   0.000000000   0.000000000
                        -0.000256069  -0.000000000   0.000062010  -0.000000439  -0.000726167   0.000000000  -0.000000004  -0.000000000

   43    9.1  1.5 -0.5   0.000000000  -0.000301247   0.000004565   0.000644160  -0.000000000  -0.000714710   0.000000000  -0.000000012
                         0.000000000   0.000000852  -0.000000006  -0.000000880   0.000000000   0.000002199   0.000000000  -0.000000000

   44   10.1  1.5 -0.5  -0.000087854  -0.000000000  -0.000115439   0.000000818   0.000109220  -0.000000000   0.000000018   0.000000000
                        -0.000044572   0.000000000   0.000869354  -0.000006161  -0.000015514  -0.000000000  -0.000000001   0.000000000

   45   11.1  1.5 -0.5  -0.000000000   0.000000292  -0.000000002  -0.000000270   0.000000000   0.000002125  -0.000000000  -0.000000000
                        -0.000000000   0.000398306  -0.000006062  -0.000855483  -0.000000000   0.000395890  -0.000000000   0.000000019

   46   12.1  1.5 -0.5  -0.000742902  -0.000000000   0.000024423  -0.000000173   0.000018604  -0.000000000  -0.000000130  -0.000000001
                        -0.000376089  -0.000000000  -0.000183530   0.000001301  -0.000002636   0.000000000   0.000000006   0.000000000

   47   13.1  1.5 -0.5  -0.000000000   0.000377094  -0.000004084  -0.000576274   0.000000000  -0.000529558  -0.000000000   0.000000005
                        -0.000000000   0.000000065  -0.000000012  -0.000001629  -0.000000000  -0.000000565   0.000000000   0.000000000

   48   14.1  1.5 -0.5   0.000000000   0.000001014  -0.000000013  -0.000001869   0.000000000   0.000000501  -0.000000000   0.000000000
                         0.000000000   0.000105091   0.000002481   0.000350077  -0.000000000   0.000768267   0.000000000  -0.000000002

   49   15.1  1.5 -0.5   0.000000000   0.000000002   0.000000000   0.000000000   0.000000000   0.000000001   0.000021210  -0.003150080
                         0.000000000   0.000000070   0.000000002   0.000000225   0.000000000  -0.000000170  -0.003990321   0.590591935

   50   16.1  1.5 -0.5  -0.000000183  -0.000000000   0.000000028  -0.000000000   0.000000137   0.000000000   0.554540827   0.003746894
                        -0.000000092   0.000000000  -0.000000213   0.000000002  -0.000000019   0.000000000  -0.026151654  -0.000176624

   51   17.1  1.5 -0.5   0.000000000   0.000000403   0.000000001   0.000000097  -0.000000000   0.000000286  -0.000239136   0.035415469
                         0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000   0.000001021  -0.000151524

   52    1.1  1.5 -1.5  -0.012077052  -0.000000000   0.025414579  -0.000180097  -0.002891535   0.000000000   0.000000020   0.000000000
                         0.023866010   0.000000000   0.003391495  -0.000024033  -0.020498489  -0.000000000   0.000000452   0.000000003

   53    2.1  1.5 -1.5   0.004799068  -0.000000000  -0.002208188   0.000015648  -0.029696682   0.000000000   0.000000253   0.000000002
                         0.002407091   0.000000000   0.016463557  -0.000116667   0.004171948   0.000000000  -0.000000011  -0.000000000

   54    3.1  1.5 -1.5  -0.037826585  -0.000000000  -0.000037077   0.000000263  -0.006836126  -0.000000000   0.000000264   0.000000002
                        -0.019148701  -0.000000000   0.000278901  -0.000001976   0.000956797   0.000000000  -0.000000008  -0.000000000

   55    4.1  1.5 -1.5   0.001233090  -0.000000000  -0.023913722   0.000169461  -0.003554511  -0.000000000  -0.000000042  -0.000000000
                        -0.002435871  -0.000000000  -0.003179479   0.000022531  -0.025396369   0.000000000  -0.000000924  -0.000000006

   56    5.1  1.5 -1.5  -0.000000000   0.000001313   0.000000066   0.000009358  -0.000000000  -0.000041303  -0.000000000   0.000000004
                        -0.000000000   0.008766960  -0.000137659  -0.019425943  -0.000000000  -0.038305513   0.000000001  -0.000000183

   57    6.1  1.5 -1.5  -0.000000000  -0.000005348   0.000000062   0.000008757  -0.000000000   0.000000277  -0.000000000   0.000000002
                         0.000000000  -0.035763413  -0.000128702  -0.018161870   0.000000000   0.000254198  -0.000000000   0.000000060

   58    7.1  1.5 -1.5   0.000000000  -0.036399683  -0.000115640  -0.016318667   0.000000000   0.003760832  -0.000000004   0.000000633
                         0.000000000   0.000005442  -0.000000056  -0.000007867   0.000000000  -0.000004053  -0.000000000   0.000000004

   59    8.1  1.5 -1.5   0.000000000   0.000834254   0.000002652   0.000374279   0.000000000  -0.000086278   0.000000000  -0.000000002
                        -0.000000000   0.000000094   0.000000001   0.000000167  -0.000000000  -0.000000108  -0.000000000   0.000000000

   60    9.1  1.5 -1.5   0.000049741   0.000000000  -0.000590516   0.000004185  -0.000077559  -0.000000000  -0.000000001  -0.000000000
                        -0.000096360   0.000000000  -0.000077783   0.000000551  -0.000545406  -0.000000000  -0.000000028  -0.000000000

   61   10.1  1.5 -1.5  -0.000000000   0.000000142   0.000000001   0.000000136  -0.000000000   0.000000575  -0.000000000   0.000000000
                        -0.000000000  -0.000762636  -0.000000302  -0.000042639  -0.000000000   0.000557757  -0.000000000   0.000000003

   62   11.1  1.5 -1.5  -0.000033454   0.000000000  -0.000048204   0.000000342  -0.000697669   0.000000000  -0.000000010  -0.000000000
                        -0.000016172   0.000000000   0.000373923  -0.000002650   0.000098216   0.000000000   0.000000001   0.000000000

   63   12.1  1.5 -1.5   0.000000000   0.000000091  -0.000000002  -0.000000277  -0.000000000   0.000000727  -0.000000000   0.000000001
                         0.000000000   0.000360923   0.000004313   0.000608605  -0.000000000   0.000678053   0.000000001  -0.000000075

   64   13.1  1.5 -1.5   0.000272351   0.000000000  -0.000539906   0.000003826   0.000071083   0.000000000   0.000000000   0.000000000
                        -0.000542178  -0.000000000  -0.000071584   0.000000507   0.000512567   0.000000000   0.000000009   0.000000000

   65   14.1  1.5 -1.5   0.000874391   0.000000000  -0.000007829   0.000000055   0.000043537   0.000000000   0.000000011   0.000000000
                         0.000441464  -0.000000000   0.000055331  -0.000000392  -0.000004579   0.000000000  -0.000000000  -0.000000000

   66   15.1  1.5 -1.5   0.000000134  -0.000000000  -0.000000002   0.000000000  -0.000000113   0.000000000  -0.442431606  -0.002989528
                         0.000000067  -0.000000000   0.000000011  -0.000000000   0.000000014  -0.000000000   0.019494356   0.000131657

   67   16.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000021005  -0.003114897
                         0.000000000  -0.000000264   0.000000003   0.000000387  -0.000000000  -0.000000091  -0.002441595   0.361383663

   68   17.1  1.5 -1.5   0.000000118   0.000000000  -0.000000262   0.000000002  -0.000000051   0.000000000   0.005620105   0.000037956
                        -0.000000234   0.000000000  -0.000000035   0.000000000  -0.000000371  -0.000000000   0.122174794   0.000825633

   69    1.1  0.5  0.5   0.259629091   0.000000000   0.291597774  -0.002066367   0.012429251   0.000000000  -0.000000018  -0.000000000
                        -0.512874376  -0.000000000   0.038769759  -0.000274736   0.088805648  -0.000000000  -0.000000360  -0.000000002

   70    2.1  0.5  0.5   0.000000000   0.000088456  -0.000000933  -0.000131654   0.000000000   0.000024031  -0.000000000   0.000000002
                        -0.000000000   0.591608057   0.001934913   0.273047522  -0.000000000   0.022335940  -0.000000001   0.000000081

   71    3.1  0.5  0.5  -0.453775668  -0.000000000  -0.009129580   0.000064696  -0.398700186   0.000000000  -0.000000019  -0.000000000
                        -0.229711843   0.000000000   0.068665901  -0.000486591   0.055802707   0.000000000  -0.000000000  -0.000000000

   72    4.1  0.5  0.5  -0.061795555   0.000000000   0.411128045  -0.002913401  -0.067126053  -0.000000000  -0.000000015  -0.000000000
                         0.122071574  -0.000000000   0.054661951  -0.000387354  -0.479603770  -0.000000000  -0.000000295  -0.000000002

   73    5.1  0.5  0.5  -0.000000000   0.180487237  -0.003488374  -0.492266043  -0.000000000  -0.387970607  -0.000000002   0.000000283
                         0.000000000  -0.000027064  -0.000001681  -0.000237262   0.000000000   0.000418376  -0.000000000   0.000000001

   74    6.1  0.5  0.5  -0.008854320   0.000000000  -0.084428149   0.000598288   0.121474100   0.000000000   0.000000067   0.000000000
                        -0.004482254   0.000000000   0.635007465  -0.004499891  -0.017001759   0.000000000  -0.000000004  -0.000000000

   75    7.1  0.5  0.5   0.000000000  -0.000006751  -0.000000147  -0.000020767   0.000000000   0.000700237  -0.000000000   0.000000001
                        -0.000000000  -0.044535628   0.000306359   0.043232287   0.000000000   0.649461485  -0.000000000   0.000000013

   76    1.1  0.5 -0.5  -0.000000000   0.574845530  -0.002084550  -0.294163791  -0.000000000  -0.089671177  -0.000000002   0.000000360
                        -0.000000000  -0.000085988  -0.000001005  -0.000141777   0.000000000   0.000096792  -0.000000000   0.000000002

   77    2.1  0.5 -0.5   0.527829839   0.000000000   0.035986655  -0.000255015   0.022120337   0.000000000   0.000000081   0.000000001
                         0.267199854  -0.000000000  -0.270665711   0.001918034  -0.003096045  -0.000000000  -0.000000002  -0.000000000

   78    3.1  0.5 -0.5   0.000000000   0.000075999  -0.000000236  -0.000033370   0.000000000   0.000433992  -0.000000000   0.000000001
                        -0.000000000   0.508605821   0.000490873   0.069270152  -0.000000000   0.402586130  -0.000000000   0.000000019

   79    4.1  0.5 -0.5  -0.000000000  -0.136821633  -0.002939038  -0.414745896  -0.000000000   0.484278237  -0.000000002   0.000000295
                        -0.000000000   0.000020510  -0.000001417  -0.000200002  -0.000000000  -0.000522104  -0.000000000   0.000000002

   80    5.1  0.5 -0.5  -0.081517153  -0.000000000  -0.487971963   0.003457944  -0.053776702  -0.000000000   0.000000014   0.000000000
                         0.161029802   0.000000000  -0.064878937   0.000459756  -0.384225758   0.000000000   0.000000283   0.000000002

   81    6.1  0.5 -0.5   0.000000000   0.000001474  -0.000002188  -0.000308834   0.000000000  -0.000132175  -0.000000000   0.000000001
                         0.000000000   0.009924191   0.004539489   0.640595425   0.000000000  -0.122658059   0.000000000  -0.000000067

   82    7.1  0.5 -0.5  -0.039734429   0.000000000   0.005697933  -0.000040378   0.643192604  -0.000000000   0.000000013   0.000000000
                        -0.020114604  -0.000000000  -0.042855158   0.000303687  -0.090022139  -0.000000000   0.000000000   0.000000000


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  1.5  1.5   0.000000008  -0.000000366  -0.000000000  -0.000000065   0.000000001   0.000000175   0.000000001   0.000000330
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000003  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000008  -0.000000362   0.000000000   0.000000100  -0.000000000  -0.000000085  -0.000000000  -0.000000183

    3    3.1  1.5  1.5   0.000000000  -0.000000001   0.000000000   0.000000025   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000030  -0.000001312   0.000000004   0.000001081  -0.000000002  -0.000000489  -0.000000002  -0.000000950

    4    4.1  1.5  1.5  -0.000000009   0.000000394   0.000000002   0.000000489  -0.000000001  -0.000000267  -0.000000001  -0.000000522
                         0.000000000  -0.000000000  -0.000000000  -0.000000008   0.000000000  -0.000000000  -0.000000000  -0.000000000

    5    5.1  1.5  1.5   0.000000516   0.000000012   0.000000694  -0.000000002  -0.000000061   0.000000000   0.000000287  -0.000000001
                         0.000000052   0.000000001   0.000000322  -0.000000001   0.000000335  -0.000000001  -0.000000764   0.000000001

    6    6.1  1.5  1.5   0.000000417   0.000000010   0.000000728  -0.000000003  -0.000000019   0.000000000   0.000000344  -0.000000001
                         0.000000042   0.000000001   0.000000339  -0.000000001   0.000000118  -0.000000000  -0.000000914   0.000000002

    7    7.1  1.5  1.5   0.000000050   0.000000001   0.000000136  -0.000000000  -0.000000295   0.000000001   0.000000399  -0.000000001
                        -0.000000497  -0.000000012  -0.000000297   0.000000001  -0.000000055   0.000000000   0.000000149  -0.000000000

    8    8.1  1.5  1.5   0.000000002   0.000000000   0.000000018  -0.000000000  -0.000000038   0.000000000  -0.000000024   0.000000000
                        -0.000000022  -0.000000001  -0.000000038   0.000000000  -0.000000007   0.000000000  -0.000000009   0.000000000

    9    9.1  1.5  1.5  -0.000000001   0.000000039  -0.000000000  -0.000000016  -0.000000000  -0.000000013  -0.000000000  -0.000000026
                         0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000

   10   10.1  1.5  1.5   0.000000014   0.000000000   0.000000025  -0.000000000  -0.000000000  -0.000000000   0.000000012  -0.000000000
                         0.000000001   0.000000000   0.000000012  -0.000000000   0.000000001  -0.000000000  -0.000000031   0.000000000

   11   11.1  1.5  1.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000006   0.000000000   0.000000014  -0.000000000  -0.000000005  -0.000000000  -0.000000011

   12   12.1  1.5  1.5   0.000000059   0.000000001   0.000000035  -0.000000000  -0.000000016   0.000000000   0.000000003  -0.000000000
                         0.000000006   0.000000000   0.000000016  -0.000000000   0.000000085  -0.000000000  -0.000000010   0.000000000

   13   13.1  1.5  1.5   0.000000000  -0.000000005  -0.000000000  -0.000000003   0.000000000   0.000000004   0.000000000   0.000000007
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   14   14.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000049   0.000000000   0.000000041  -0.000000000  -0.000000019  -0.000000000  -0.000000035

   15   15.1  1.5  1.5   0.000039309  -0.001689605  -0.000011004  -0.003244056  -0.000002093  -0.000711679  -0.000001904  -0.001355380
                        -0.013291638   0.572704427  -0.000563109  -0.160787081  -0.000713149  -0.212878397  -0.000698665  -0.393111896

   16   16.1  1.5  1.5  -0.377037105  -0.008750359  -0.322054108   0.001127895  -0.126703653   0.000423789   0.127698187  -0.000226641
                        -0.037855854  -0.000878515  -0.148539126   0.000519501   0.669232931  -0.002242120  -0.345970432   0.000615044

   17   17.1  1.5  1.5   0.012956151  -0.558255553   0.001653335   0.472155982  -0.000713514  -0.212987228  -0.000699022  -0.393312814
                         0.000038679  -0.001663221  -0.000034916  -0.010236003   0.000002094   0.000712019   0.000001905   0.001356028

   18    1.1  1.5  0.5   0.000000005   0.000000000   0.000000111  -0.000000000  -0.000000285   0.000000001   0.000000128  -0.000000000
                        -0.000000046  -0.000000001  -0.000000238   0.000000001  -0.000000054   0.000000000   0.000000047  -0.000000000

   19    2.1  1.5  0.5  -0.000000240  -0.000000006  -0.000000022   0.000000000  -0.000000058   0.000000000  -0.000000031   0.000000000
                        -0.000000024  -0.000000001  -0.000000008   0.000000000   0.000000301  -0.000000001   0.000000079  -0.000000000

   20    3.1  1.5  0.5  -0.000000278  -0.000000006  -0.000000389   0.000000001   0.000000019  -0.000000000  -0.000000190   0.000000000
                        -0.000000028  -0.000000001  -0.000000181   0.000000001  -0.000000109   0.000000000   0.000000504  -0.000000001

   21    4.1  1.5  0.5  -0.000000039  -0.000000001  -0.000000443   0.000000002   0.000000718  -0.000000002  -0.000000610   0.000000001
                         0.000000386   0.000000009   0.000000950  -0.000000003   0.000000135  -0.000000000  -0.000000227   0.000000000

   22    5.1  1.5  0.5  -0.000000000   0.000000006  -0.000000000  -0.000000026  -0.000000000  -0.000000004   0.000000000   0.000000002
                        -0.000000004   0.000000169  -0.000000005  -0.000001395   0.000000001   0.000000368  -0.000000001  -0.000000485

   23    6.1  1.5  0.5  -0.000000000   0.000000008  -0.000000000  -0.000000029  -0.000000000  -0.000000006   0.000000000   0.000000003
                        -0.000000006   0.000000237  -0.000000006  -0.000001594   0.000000002   0.000000595  -0.000000001  -0.000000538

   24    7.1  1.5  0.5  -0.000000008   0.000000349  -0.000000001  -0.000000191  -0.000000001  -0.000000380  -0.000000001  -0.000000319
                        -0.000000000   0.000000002   0.000000000   0.000000005  -0.000000000  -0.000000002   0.000000000   0.000000001

   25    8.1  1.5  0.5   0.000000002  -0.000000076  -0.000000000  -0.000000013   0.000000000   0.000000026  -0.000000000  -0.000000039
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   26    9.1  1.5  0.5   0.000000001   0.000000000   0.000000004  -0.000000000   0.000000009  -0.000000000   0.000000013  -0.000000000
                        -0.000000009  -0.000000000  -0.000000008   0.000000000   0.000000002  -0.000000000   0.000000005  -0.000000000

   27   10.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000009  -0.000000000  -0.000000055   0.000000000   0.000000022  -0.000000000  -0.000000019

   28   11.1  1.5  0.5   0.000000004   0.000000000  -0.000000006   0.000000000   0.000000002  -0.000000000  -0.000000002   0.000000000
                         0.000000000   0.000000000  -0.000000003   0.000000000  -0.000000012   0.000000000   0.000000005  -0.000000000

   29   12.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000017  -0.000000000  -0.000000041  -0.000000000  -0.000000041  -0.000000000  -0.000000009

   30   13.1  1.5  0.5   0.000000000   0.000000000   0.000000002  -0.000000000  -0.000000008   0.000000000   0.000000007  -0.000000000
                        -0.000000001  -0.000000000  -0.000000005   0.000000000  -0.000000001   0.000000000   0.000000003  -0.000000000

   31   14.1  1.5  0.5  -0.000000010  -0.000000000  -0.000000015   0.000000000   0.000000002  -0.000000000  -0.000000007   0.000000000
                        -0.000000001  -0.000000000  -0.000000007   0.000000000  -0.000000013   0.000000000   0.000000018  -0.000000000

   32   15.1  1.5  0.5   0.314209734   0.007292113   0.033663320  -0.000117895  -0.121551839   0.000406484  -0.084771054   0.000150294
                         0.032777888   0.000760673   0.016027384  -0.000056057   0.627501825  -0.002102313   0.225651671  -0.000401151

   33   16.1  1.5  0.5   0.000003254  -0.000138798   0.000034200   0.010048956   0.000000369   0.000059861   0.000000445   0.000086642
                        -0.000571737   0.024623571   0.001889247   0.539571035  -0.000412308  -0.123075947  -0.000403446  -0.227004341

   34   17.1  1.5  0.5  -0.035280759  -0.000818757  -0.243290653   0.000850893  -0.144677833   0.000484711   0.624848015  -0.001110818
                         0.338486566   0.007855804   0.522960458  -0.001831512  -0.027707452   0.000092764   0.233854736  -0.000414895

   35    1.1  1.5 -0.5   0.000000001  -0.000000046  -0.000000001  -0.000000263  -0.000000001  -0.000000290   0.000000000   0.000000137
                         0.000000000  -0.000000001   0.000000000   0.000000005  -0.000000000  -0.000000003   0.000000000   0.000000001

   36    2.1  1.5 -0.5  -0.000000000   0.000000003   0.000000000   0.000000001   0.000000000   0.000000002  -0.000000000  -0.000000001
                         0.000000006  -0.000000241  -0.000000000  -0.000000024  -0.000000001  -0.000000307  -0.000000000  -0.000000085

   37    3.1  1.5 -0.5  -0.000000000   0.000000003  -0.000000000  -0.000000006  -0.000000000  -0.000000003   0.000000000   0.000000002
                         0.000000006  -0.000000279  -0.000000002  -0.000000429   0.000000000   0.000000110  -0.000000001  -0.000000539

   38    4.1  1.5 -0.5  -0.000000009   0.000000388   0.000000004   0.000001048   0.000000002   0.000000731  -0.000000001  -0.000000650
                        -0.000000000   0.000000004  -0.000000000  -0.000000017   0.000000000   0.000000008  -0.000000000  -0.000000004

   39    5.1  1.5 -0.5  -0.000000167  -0.000000004   0.000001263  -0.000000004  -0.000000067   0.000000000   0.000000170  -0.000000000
                        -0.000000024  -0.000000001   0.000000592  -0.000000002   0.000000362  -0.000000001  -0.000000454   0.000000001

   40    6.1  1.5 -0.5  -0.000000235  -0.000000005   0.000001444  -0.000000005  -0.000000110   0.000000000   0.000000188  -0.000000000
                        -0.000000034  -0.000000001   0.000000677  -0.000000002   0.000000585  -0.000000002  -0.000000504   0.000000001

   41    7.1  1.5 -0.5   0.000000037   0.000000001  -0.000000083   0.000000000   0.000000373  -0.000000001   0.000000298  -0.000000001
                        -0.000000347  -0.000000008   0.000000173  -0.000000001   0.000000072  -0.000000000   0.000000114  -0.000000000

   42    8.1  1.5 -0.5  -0.000000008  -0.000000000  -0.000000005   0.000000000  -0.000000025   0.000000000   0.000000036  -0.000000000
                         0.000000075   0.000000002   0.000000012  -0.000000000  -0.000000005   0.000000000   0.000000014  -0.000000000

   43    9.1  1.5 -0.5   0.000000000  -0.000000009  -0.000000000  -0.000000009   0.000000000   0.000000009   0.000000000   0.000000014
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   44   10.1  1.5 -0.5  -0.000000009  -0.000000000   0.000000049  -0.000000000  -0.000000004   0.000000000   0.000000007  -0.000000000
                        -0.000000001  -0.000000000   0.000000023  -0.000000000   0.000000021  -0.000000000  -0.000000018   0.000000000

   45   11.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000004  -0.000000000  -0.000000006   0.000000000   0.000000012  -0.000000000  -0.000000005

   46   12.1  1.5 -0.5   0.000000016   0.000000000   0.000000037  -0.000000000   0.000000008  -0.000000000   0.000000003  -0.000000000
                         0.000000002   0.000000000   0.000000017  -0.000000000  -0.000000041   0.000000000  -0.000000008   0.000000000

   47   13.1  1.5 -0.5   0.000000000  -0.000000001  -0.000000000  -0.000000005  -0.000000000  -0.000000008   0.000000000   0.000000008
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   48   14.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000011  -0.000000000  -0.000000017   0.000000000   0.000000013  -0.000000000  -0.000000019

   49   15.1  1.5 -0.5   0.000060618  -0.002610741   0.000003108   0.000906786   0.000011334   0.003163533   0.000001795   0.000795665
                        -0.007331430   0.315903990   0.000130507   0.037272965  -0.002141219  -0.639158339  -0.000428378  -0.241048077

   50   16.1  1.5 -0.5  -0.024484266  -0.000568505  -0.488572194   0.001711082   0.023944709  -0.000080050   0.080451760  -0.000142711
                        -0.002619211  -0.000060785  -0.229205356   0.000801637  -0.120724245   0.000404462  -0.212269858   0.000377362

   51   17.1  1.5 -0.5  -0.007898080   0.340308406   0.002019295   0.576713973  -0.000493495  -0.147303410   0.001185756   0.667168572
                        -0.000066017   0.002841921  -0.000030064  -0.008886844  -0.000003551  -0.001041024   0.000006168   0.003029088

   52    1.1  1.5 -1.5   0.000000041   0.000000001   0.000000026  -0.000000000   0.000000172  -0.000000001   0.000000308  -0.000000001
                        -0.000000363  -0.000000008  -0.000000059   0.000000000   0.000000034  -0.000000000   0.000000117  -0.000000000

   53    2.1  1.5 -1.5  -0.000000360  -0.000000008   0.000000090  -0.000000000  -0.000000017   0.000000000  -0.000000065   0.000000000
                        -0.000000041  -0.000000001   0.000000044  -0.000000000   0.000000084  -0.000000000   0.000000171  -0.000000000

   54    3.1  1.5 -1.5  -0.000001303  -0.000000030   0.000000977  -0.000000003  -0.000000095   0.000000000  -0.000000337   0.000000001
                        -0.000000148  -0.000000003   0.000000464  -0.000000002   0.000000479  -0.000000002   0.000000888  -0.000000002

   55    4.1  1.5 -1.5  -0.000000044  -0.000000001  -0.000000207   0.000000001  -0.000000262   0.000000001  -0.000000489   0.000000001
                         0.000000391   0.000000009   0.000000444  -0.000000002  -0.000000052   0.000000000  -0.000000185   0.000000000

   56    5.1  1.5 -1.5  -0.000000000   0.000000006  -0.000000000  -0.000000011  -0.000000000  -0.000000005   0.000000000   0.000000003
                         0.000000012  -0.000000519  -0.000000003  -0.000000765   0.000000001   0.000000341  -0.000000001  -0.000000816

   57    6.1  1.5 -1.5  -0.000000000   0.000000005  -0.000000000  -0.000000013  -0.000000000  -0.000000004   0.000000000   0.000000003
                         0.000000010  -0.000000419  -0.000000003  -0.000000803   0.000000000   0.000000120  -0.000000002  -0.000000976

   58    7.1  1.5 -1.5  -0.000000012   0.000000499   0.000000001   0.000000327   0.000000001   0.000000300  -0.000000001  -0.000000426
                        -0.000000000   0.000000006  -0.000000000  -0.000000003   0.000000000   0.000000004  -0.000000000  -0.000000002

   59    8.1  1.5 -1.5  -0.000000001   0.000000022   0.000000000   0.000000042   0.000000000   0.000000039   0.000000000   0.000000026
                        -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000

   60    9.1  1.5 -1.5  -0.000000004  -0.000000000   0.000000007  -0.000000000  -0.000000013   0.000000000  -0.000000024   0.000000000
                         0.000000039   0.000000001  -0.000000015   0.000000000  -0.000000002   0.000000000  -0.000000009   0.000000000

   61   10.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000014  -0.000000000  -0.000000028   0.000000000   0.000000001  -0.000000000  -0.000000033

   62   11.1  1.5 -1.5  -0.000000006  -0.000000000   0.000000013  -0.000000000  -0.000000001   0.000000000  -0.000000004   0.000000000
                        -0.000000001  -0.000000000   0.000000006  -0.000000000   0.000000004  -0.000000000   0.000000010  -0.000000000

   63   12.1  1.5 -1.5  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000000
                         0.000000001  -0.000000059  -0.000000000  -0.000000039   0.000000000   0.000000086  -0.000000000  -0.000000011

   64   13.1  1.5 -1.5   0.000000001   0.000000000   0.000000001  -0.000000000   0.000000003  -0.000000000   0.000000006  -0.000000000
                        -0.000000005  -0.000000000  -0.000000003   0.000000000   0.000000001  -0.000000000   0.000000002  -0.000000000

   65   14.1  1.5 -1.5  -0.000000049  -0.000000001   0.000000037  -0.000000000  -0.000000004   0.000000000  -0.000000012   0.000000000
                        -0.000000006  -0.000000000   0.000000018  -0.000000000   0.000000018  -0.000000000   0.000000033  -0.000000000

   66   15.1  1.5 -1.5   0.569292123   0.013212455  -0.145488139   0.000509675  -0.042215545   0.000141138  -0.140728821   0.000249641
                         0.062447536   0.001449221  -0.068528904   0.000239676   0.208651782  -0.000699047   0.367061574  -0.000652545

   67   16.1  1.5 -1.5   0.000106799  -0.004599577   0.000014404   0.004298317  -0.000021628  -0.006249438   0.000006295   0.003345334
                        -0.008793700   0.378904853   0.001241701   0.354632549   0.002281717   0.681092854  -0.000655443  -0.368769814

   68   17.1  1.5 -1.5   0.060855894   0.001412283  -0.201885182   0.000706089  -0.208758457   0.000699404  -0.367249193   0.000652879
                        -0.554931157  -0.012879007   0.426940769  -0.001495384  -0.042237103   0.000141210  -0.140800706   0.000249768

   69    1.1  0.5  0.5   0.000000015   0.000000000  -0.000000001   0.000000000  -0.000000298   0.000000001   0.000000142  -0.000000000
                        -0.000000147  -0.000000003  -0.000000000   0.000000000  -0.000000057   0.000000000   0.000000052  -0.000000000

   70    2.1  0.5  0.5  -0.000000000   0.000000001   0.000000000   0.000000003  -0.000000000  -0.000000002   0.000000000   0.000000001
                         0.000000012  -0.000000516   0.000000000   0.000000063   0.000000000   0.000000032  -0.000000001  -0.000000363

   71    3.1  0.5  0.5   0.000000174   0.000000004   0.000000180  -0.000000001  -0.000000027   0.000000000   0.000000163  -0.000000000
                         0.000000018   0.000000000   0.000000083  -0.000000000   0.000000151  -0.000000001  -0.000000435   0.000000001

   72    4.1  0.5  0.5   0.000000016   0.000000000   0.000000012  -0.000000000   0.000000041  -0.000000000   0.000000119  -0.000000000
                        -0.000000163  -0.000000004  -0.000000028   0.000000000   0.000000008  -0.000000000   0.000000045  -0.000000000

   73    5.1  0.5  0.5  -0.000000002   0.000000083  -0.000000001  -0.000000330   0.000000000   0.000000114   0.000000000   0.000000134
                        -0.000000000   0.000000000   0.000000000   0.000000007   0.000000000   0.000000000   0.000000000  -0.000000000

   74    6.1  0.5  0.5   0.000000164   0.000000004   0.000000180  -0.000000001   0.000000030  -0.000000000  -0.000000026   0.000000000
                         0.000000017   0.000000000   0.000000083  -0.000000000  -0.000000161   0.000000001   0.000000070  -0.000000000

   75    7.1  0.5  0.5  -0.000000000   0.000000001   0.000000000   0.000000002  -0.000000000  -0.000000001   0.000000000   0.000000001
                         0.000000005  -0.000000215   0.000000000   0.000000043  -0.000000000  -0.000000132  -0.000000001  -0.000000431

   76    1.1  0.5 -0.5  -0.000000003   0.000000148  -0.000000000  -0.000000000   0.000000001   0.000000304  -0.000000000  -0.000000151
                        -0.000000000   0.000000002   0.000000000   0.000000001   0.000000000   0.000000003  -0.000000000  -0.000000002

   77    2.1  0.5 -0.5  -0.000000513  -0.000000012   0.000000056  -0.000000000   0.000000005  -0.000000000  -0.000000128   0.000000000
                        -0.000000056  -0.000000001   0.000000029  -0.000000000  -0.000000032   0.000000000   0.000000339  -0.000000001

   78    3.1  0.5 -0.5  -0.000000000   0.000000001  -0.000000000  -0.000000003  -0.000000000  -0.000000003   0.000000000   0.000000002
                         0.000000004  -0.000000175  -0.000000001  -0.000000198   0.000000001   0.000000153  -0.000000001  -0.000000465

   79    4.1  0.5 -0.5  -0.000000004   0.000000164   0.000000000   0.000000031  -0.000000000  -0.000000042  -0.000000000  -0.000000128
                        -0.000000000   0.000000002   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   80    5.1  0.5 -0.5  -0.000000009  -0.000000000   0.000000141  -0.000000000   0.000000112  -0.000000000   0.000000125  -0.000000000
                         0.000000083   0.000000002  -0.000000299   0.000000001   0.000000022  -0.000000000   0.000000048  -0.000000000

   81    6.1  0.5 -0.5  -0.000000000   0.000000002  -0.000000000  -0.000000003   0.000000000   0.000000002  -0.000000000  -0.000000001
                         0.000000004  -0.000000165  -0.000000001  -0.000000198  -0.000000001  -0.000000164   0.000000000   0.000000075

   82    7.1  0.5 -0.5  -0.000000213  -0.000000005   0.000000039  -0.000000000  -0.000000026   0.000000000  -0.000000152   0.000000000
                        -0.000000023  -0.000000001   0.000000019  -0.000000000   0.000000129  -0.000000000   0.000000403  -0.000000001


   Nr   State  S   Sz       81            82

    1    1.1  1.5  1.5   0.000000000   0.000000139
                        -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000000   0.000000001
                         0.000000000  -0.000000502

    3    3.1  1.5  1.5   0.000000000   0.000000003
                         0.000000000  -0.000001084

    4    4.1  1.5  1.5  -0.000000000   0.000000282
                        -0.000000000   0.000000001

    5    5.1  1.5  1.5   0.000000310   0.000000000
                        -0.000000010  -0.000000000

    6    6.1  1.5  1.5   0.000000441   0.000000000
                        -0.000000014  -0.000000000

    7    7.1  1.5  1.5   0.000000004  -0.000000000
                         0.000000114   0.000000000

    8    8.1  1.5  1.5  -0.000000001  -0.000000000
                        -0.000000023   0.000000000

    9    9.1  1.5  1.5  -0.000000000  -0.000000041
                         0.000000000  -0.000000000

   10   10.1  1.5  1.5   0.000000016  -0.000000000
                        -0.000000001  -0.000000000

   11   11.1  1.5  1.5  -0.000000000   0.000000000
                        -0.000000000  -0.000000002

   12   12.1  1.5  1.5  -0.000000017  -0.000000000
                         0.000000001   0.000000000

   13   13.1  1.5  1.5   0.000000000  -0.000000003
                         0.000000000   0.000000000

   14   14.1  1.5  1.5  -0.000000000   0.000000000
                         0.000000000  -0.000000034

   15   15.1  1.5  1.5   0.000000022  -0.000583274
                         0.000001037  -0.499974222

   16   16.1  1.5  1.5   0.000036343   0.000000000
                        -0.000001582   0.000000000

   17   17.1  1.5  1.5   0.000001037  -0.500120149
                        -0.000000022   0.000583515

   18    1.1  1.5  0.5   0.000000005  -0.000000000
                         0.000000145   0.000000000

   19    2.1  1.5  0.5  -0.000000301  -0.000000000
                         0.000000010   0.000000000

   20    3.1  1.5  0.5  -0.000000164  -0.000000000
                         0.000000005  -0.000000000

   21    4.1  1.5  0.5  -0.000000022  -0.000000000
                        -0.000000659   0.000000000

   22    5.1  1.5  0.5  -0.000000000  -0.000000003
                        -0.000000000   0.000001186

   23    6.1  1.5  0.5  -0.000000000  -0.000000003
                        -0.000000000   0.000000978

   24    7.1  1.5  0.5   0.000000000  -0.000000261
                        -0.000000000  -0.000000001

   25    8.1  1.5  0.5   0.000000000  -0.000000013
                         0.000000000  -0.000000000

   26    9.1  1.5  0.5   0.000000001  -0.000000000
                         0.000000015   0.000000000

   27   10.1  1.5  0.5   0.000000000  -0.000000000
                         0.000000000   0.000000031

   28   11.1  1.5  0.5   0.000000007   0.000000000
                        -0.000000000  -0.000000000

   29   12.1  1.5  0.5   0.000000000  -0.000000000
                         0.000000000   0.000000145

   30   13.1  1.5  0.5   0.000000000   0.000000000
                         0.000000008  -0.000000000

   31   14.1  1.5  0.5   0.000000002   0.000000000
                        -0.000000000  -0.000000000

   32   15.1  1.5  0.5  -0.288402170  -0.000000598
                         0.010513238   0.000000010

   33   16.1  1.5  0.5  -0.000000021  -0.001537167
                        -0.000001197   0.577284163

   34   17.1  1.5  0.5   0.010518014   0.000000010
                         0.288528328   0.000000599

   35    1.1  1.5 -0.5   0.000000000  -0.000000145
                        -0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000000000  -0.000000001
                        -0.000000000   0.000000301

   37    3.1  1.5 -0.5  -0.000000000  -0.000000000
                        -0.000000000   0.000000164

   38    4.1  1.5 -0.5   0.000000000   0.000000660
                        -0.000000000   0.000000002

   39    5.1  1.5 -0.5   0.000001186   0.000000000
                        -0.000000039   0.000000000

   40    6.1  1.5 -0.5   0.000000977   0.000000000
                        -0.000000032   0.000000000

   41    7.1  1.5 -0.5  -0.000000009   0.000000000
                        -0.000000261  -0.000000000

   42    8.1  1.5 -0.5  -0.000000000  -0.000000000
                        -0.000000013  -0.000000000

   43    9.1  1.5 -0.5   0.000000000  -0.000000015
                        -0.000000000  -0.000000000

   44   10.1  1.5 -0.5   0.000000031  -0.000000000
                        -0.000000001  -0.000000000

   45   11.1  1.5 -0.5  -0.000000000   0.000000000
                         0.000000000  -0.000000007

   46   12.1  1.5 -0.5   0.000000145  -0.000000000
                        -0.000000005  -0.000000000

   47   13.1  1.5 -0.5  -0.000000000  -0.000000008
                         0.000000000  -0.000000000

   48   14.1  1.5 -0.5  -0.000000000  -0.000000000
                         0.000000000  -0.000000002

   49   15.1  1.5 -0.5  -0.000000008  -0.001873500
                        -0.000000598   0.288587647

   50   16.1  1.5 -0.5   0.576979325   0.000001197
                        -0.018820893  -0.000000015

   51   17.1  1.5 -0.5   0.000000599  -0.288713891
                        -0.000000008  -0.001874496

   52    1.1  1.5 -1.5  -0.000000004   0.000000000
                        -0.000000139  -0.000000000

   53    2.1  1.5 -1.5   0.000000502   0.000000000
                        -0.000000016   0.000000000

   54    3.1  1.5 -1.5   0.000001083   0.000000000
                        -0.000000035   0.000000000

   55    4.1  1.5 -1.5  -0.000000009  -0.000000000
                        -0.000000282  -0.000000000

   56    5.1  1.5 -1.5   0.000000000  -0.000000001
                        -0.000000000   0.000000310

   57    6.1  1.5 -1.5   0.000000000  -0.000000001
                        -0.000000000   0.000000441

   58    7.1  1.5 -1.5  -0.000000000   0.000000114
                         0.000000000   0.000000000

   59    8.1  1.5 -1.5  -0.000000000  -0.000000023
                         0.000000000  -0.000000000

   60    9.1  1.5 -1.5   0.000000001   0.000000000
                         0.000000041  -0.000000000

   61   10.1  1.5 -1.5   0.000000000  -0.000000000
                         0.000000000   0.000000016

   62   11.1  1.5 -1.5   0.000000002  -0.000000000
                        -0.000000000  -0.000000000

   63   12.1  1.5 -1.5  -0.000000000   0.000000000
                         0.000000000  -0.000000017

   64   13.1  1.5 -1.5   0.000000000   0.000000000
                         0.000000003   0.000000000

   65   14.1  1.5 -1.5   0.000000034   0.000000000
                        -0.000000001  -0.000000000

   66   15.1  1.5 -1.5   0.499767533   0.000001037
                        -0.014386673  -0.000000009

   67   16.1  1.5 -1.5  -0.000000000  -0.000000493
                        -0.000000000   0.000036374

   68   17.1  1.5 -1.5   0.014390801   0.000000009
                         0.499913402   0.000001037

   69    1.1  0.5  0.5  -0.000000004  -0.000000000
                        -0.000000118   0.000000000

   70    2.1  0.5  0.5  -0.000000000   0.000000000
                         0.000000000  -0.000000113

   71    3.1  0.5  0.5   0.000000151  -0.000000000
                        -0.000000005  -0.000000000

   72    4.1  0.5  0.5   0.000000001  -0.000000000
                         0.000000026  -0.000000000

   73    5.1  0.5  0.5  -0.000000000   0.000000011
                        -0.000000000   0.000000000

   74    6.1  0.5  0.5  -0.000000064  -0.000000000
                         0.000000002  -0.000000000

   75    7.1  0.5  0.5  -0.000000000   0.000000000
                         0.000000000  -0.000000166

   76    1.1  0.5 -0.5  -0.000000000  -0.000000118
                         0.000000000  -0.000000000

   77    2.1  0.5 -0.5   0.000000113   0.000000000
                        -0.000000004  -0.000000000

   78    3.1  0.5 -0.5   0.000000000  -0.000000000
                         0.000000000   0.000000151

   79    4.1  0.5 -0.5   0.000000000   0.000000026
                         0.000000000   0.000000000

   80    5.1  0.5 -0.5  -0.000000000  -0.000000000
                        -0.000000011  -0.000000000

   81    6.1  0.5 -0.5   0.000000000   0.000000000
                         0.000000000  -0.000000064

   82    7.1  0.5 -0.5   0.000000166   0.000000000
                        -0.000000005  -0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5  16.119%  17.558%   1.039%   0.056%   0.751%   0.007%   0.004%   0.000%   0.273%   0.001%
    9    9.1  1.5  1.5   0.169%   0.155%   1.901%  35.286%   0.046%   4.819%   0.000%   5.490%   0.001%   0.205%
   10   10.1  1.5  1.5  10.353%  11.277%   0.300%   0.016%   5.398%   0.051%   4.680%   0.000%   0.032%   0.000%
   11   11.1  1.5  1.5   0.156%   0.143%   1.478%  27.437%   0.061%   6.444%   0.001%  13.350%   0.003%   0.982%
   12   12.1  1.5  1.5   4.526%   4.930%   0.038%   0.002%   2.769%   0.026%   3.770%   0.000%  11.328%   0.033%
   13   13.1  1.5  1.5   0.054%   0.050%   0.106%   1.967%   0.163%  17.203%   0.001%   9.747%   0.000%   0.027%
   14   14.1  1.5  1.5   0.307%   0.282%   0.122%   2.271%   0.003%   0.355%   0.001%  13.880%   0.029%   9.859%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.270%   0.247%   0.603%  11.202%   0.000%   0.007%   0.002%  23.443%   0.000%   0.108%
   26    9.1  1.5  0.5   8.308%   9.050%   0.327%   0.018%   1.051%   0.010%   4.702%   0.000%   0.050%   0.000%
   27   10.1  1.5  0.5   0.063%   0.058%   0.516%   9.586%   0.275%  28.992%   0.000%   0.005%   0.000%   0.025%
   28   11.1  1.5  0.5   6.307%   6.870%   2.252%   0.121%   0.569%   0.005%   1.362%   0.000%   3.731%   0.011%
   29   12.1  1.5  0.5   0.351%   0.323%   0.003%   0.064%   0.019%   2.011%   0.000%   3.170%   0.110%  37.896%
   30   13.1  1.5  0.5   0.657%   0.715%   0.426%   0.023%  28.657%   0.272%  11.166%   0.001%   0.005%   0.000%
   31   14.1  1.5  0.5   0.337%   0.367%   2.693%   0.145%   0.032%   0.000%   5.224%   0.000%  35.191%   0.102%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.247%   0.270%  11.202%   0.603%   0.007%   0.000%  23.443%   0.002%   0.108%   0.000%
   43    9.1  1.5 -0.5   9.050%   8.308%   0.018%   0.327%   0.010%   1.051%   0.000%   4.702%   0.000%   0.050%
   44   10.1  1.5 -0.5   0.058%   0.063%   9.586%   0.516%  28.992%   0.275%   0.005%   0.000%   0.025%   0.000%
   45   11.1  1.5 -0.5   6.870%   6.307%   0.121%   2.252%   0.005%   0.569%   0.000%   1.362%   0.011%   3.731%
   46   12.1  1.5 -0.5   0.323%   0.351%   0.064%   0.003%   2.011%   0.019%   3.170%   0.000%  37.896%   0.110%
   47   13.1  1.5 -0.5   0.715%   0.657%   0.023%   0.426%   0.272%  28.657%   0.001%  11.166%   0.000%   0.005%
   48   14.1  1.5 -0.5   0.367%   0.337%   0.145%   2.693%   0.000%   0.032%   0.000%   5.224%   0.102%  35.191%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5  17.558%  16.119%   0.056%   1.039%   0.007%   0.751%   0.000%   0.004%   0.001%   0.273%
   60    9.1  1.5 -1.5   0.155%   0.169%  35.286%   1.901%   4.819%   0.046%   5.490%   0.000%   0.205%   0.001%
   61   10.1  1.5 -1.5  11.277%  10.353%   0.016%   0.300%   0.051%   5.398%   0.000%   4.680%   0.000%   0.032%
   62   11.1  1.5 -1.5   0.143%   0.156%  27.437%   1.478%   6.444%   0.061%  13.350%   0.001%   0.982%   0.003%
   63   12.1  1.5 -1.5   4.930%   4.526%   0.002%   0.038%   0.026%   2.769%   0.000%   3.770%   0.033%  11.328%
   64   13.1  1.5 -1.5   0.050%   0.054%   1.967%   0.106%  17.203%   0.163%   9.747%   0.001%   0.027%   0.000%
   65   14.1  1.5 -1.5   0.282%   0.307%   2.271%   0.122%   0.355%   0.003%  13.880%   0.001%   9.859%   0.029%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.007%   8.304%   7.298%   0.322%   0.014%   7.613%   5.069%   0.007%   3.988%   0.022%
    9    9.1  1.5  1.5   1.760%   0.002%   0.027%   0.608%   0.601%   0.001%   0.008%   5.947%   0.003%   0.512%
   10   10.1  1.5  1.5   0.022%  26.015%   4.206%   0.185%   0.000%   0.053%   4.001%   0.006%   4.467%   0.024%
   11   11.1  1.5  1.5   0.895%   0.001%   0.133%   3.018%   0.650%   0.001%   0.001%   0.813%   0.002%   0.417%
   12   12.1  1.5  1.5   0.001%   1.125%  25.608%   1.129%   0.000%   0.004%  13.842%   0.020%   0.199%   0.001%
   13   13.1  1.5  1.5   0.052%   0.000%   0.361%   8.190%   4.543%   0.009%   0.036%  25.468%   0.085%  15.488%
   14   14.1  1.5  1.5   3.083%   0.003%   0.002%   0.055%  35.412%   0.067%   0.005%   3.472%   0.000%   0.004%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   3.576%   0.003%   0.843%  19.136%   4.832%   0.009%   0.000%   0.111%   0.089%  16.319%
   26    9.1  1.5  0.5   0.026%  29.875%  12.108%   0.534%   0.010%   5.364%   0.300%   0.000%  21.689%   0.119%
   27   10.1  1.5  0.5   7.729%   0.007%   0.324%   7.357%   7.074%   0.013%   0.000%   0.189%   0.081%  14.736%
   28   11.1  1.5  0.5   0.011%  12.376%   2.247%   0.099%   0.061%  32.099%   4.719%   0.007%  20.287%   0.111%
   29   12.1  1.5  0.5   2.092%   0.002%   0.042%   0.943%   0.030%   0.000%   0.017%  12.287%   0.001%   0.187%
   30   13.1  1.5  0.5   0.002%   2.195%   4.587%   0.202%   0.002%   0.820%  10.634%   0.015%   0.291%   0.002%
   31   14.1  1.5  0.5   0.001%   0.838%   0.417%   0.018%   0.001%   0.714%  13.006%   0.018%   0.870%   0.005%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.003%   3.576%  19.136%   0.843%   0.009%   4.832%   0.111%   0.000%  16.319%   0.089%
   43    9.1  1.5 -0.5  29.875%   0.026%   0.534%  12.108%   5.364%   0.010%   0.000%   0.300%   0.119%  21.689%
   44   10.1  1.5 -0.5   0.007%   7.729%   7.357%   0.324%   0.013%   7.074%   0.189%   0.000%  14.736%   0.081%
   45   11.1  1.5 -0.5  12.376%   0.011%   0.099%   2.247%  32.099%   0.061%   0.007%   4.719%   0.111%  20.287%
   46   12.1  1.5 -0.5   0.002%   2.092%   0.943%   0.042%   0.000%   0.030%  12.287%   0.017%   0.187%   0.001%
   47   13.1  1.5 -0.5   2.195%   0.002%   0.202%   4.587%   0.820%   0.002%   0.015%  10.634%   0.002%   0.291%
   48   14.1  1.5 -0.5   0.838%   0.001%   0.018%   0.417%   0.714%   0.001%   0.018%  13.006%   0.005%   0.870%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   8.304%   0.007%   0.322%   7.298%   7.613%   0.014%   0.007%   5.069%   0.022%   3.988%
   60    9.1  1.5 -1.5   0.002%   1.760%   0.608%   0.027%   0.001%   0.601%   5.947%   0.008%   0.512%   0.003%
   61   10.1  1.5 -1.5  26.015%   0.022%   0.185%   4.206%   0.053%   0.000%   0.006%   4.001%   0.024%   4.467%
   62   11.1  1.5 -1.5   0.001%   0.895%   3.018%   0.133%   0.001%   0.650%   0.813%   0.001%   0.417%   0.002%
   63   12.1  1.5 -1.5   1.125%   0.001%   1.129%  25.608%   0.004%   0.000%   0.020%  13.842%   0.001%   0.199%
   64   13.1  1.5 -1.5   0.000%   0.052%   8.190%   0.361%   0.009%   4.543%  25.468%   0.036%  15.488%   0.085%
   65   14.1  1.5 -1.5   0.003%   3.083%   0.055%   0.002%   0.067%  35.412%   3.472%   0.005%   0.004%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  16.696%   0.001%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  36.737%   0.002%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.940%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  25.361%   0.002%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.106%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.210%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.947%
    8    8.1  1.5  1.5   1.941%  15.280%   0.000%   0.163%   0.000%   1.768%  12.185%   0.210%   0.000%   0.000%
    9    9.1  1.5  1.5   2.358%   0.300%  13.815%   0.016%  19.637%   0.003%   0.107%   6.223%   0.000%   0.000%
   10   10.1  1.5  1.5   0.993%   7.819%   0.011%   9.439%   0.001%   3.941%   6.595%   0.114%   0.000%   0.000%
   11   11.1  1.5  1.5   1.617%   0.205%  14.018%   0.016%  23.415%   0.004%   0.080%   4.659%   0.000%   0.000%
   12   12.1  1.5  1.5   1.038%   8.172%   0.017%  14.999%   0.000%   0.329%   5.989%   0.103%   0.000%   0.000%
   13   13.1  1.5  1.5   6.010%   0.763%   1.376%   0.002%   6.086%   0.001%   0.037%   2.173%   0.000%   0.000%
   14   14.1  1.5  1.5  20.050%   2.547%   1.970%   0.002%   2.364%   0.000%   0.065%   3.787%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.231%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.386%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.863%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.141%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.669%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.674%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.031%   0.000%
   25    8.1  1.5  0.5   3.670%   0.466%   0.842%   0.001%  12.439%   0.002%   0.030%   1.746%   0.000%   0.000%
   26    9.1  1.5  0.5   0.434%   3.417%   0.000%   0.104%   0.000%   1.497%   0.988%   0.017%   0.000%   0.000%
   27   10.1  1.5  0.5   0.697%   0.089%   4.364%   0.005%  15.478%   0.002%   0.039%   2.293%   0.000%   0.000%
   28   11.1  1.5  0.5   0.399%   3.143%   0.003%   2.763%   0.000%   0.012%   0.428%   0.007%   0.000%   0.000%
   29   12.1  1.5  0.5  13.222%   1.680%   3.270%   0.004%   0.228%   0.000%   0.373%  21.675%   0.000%   0.000%
   30   13.1  1.5  0.5   0.066%   0.516%   0.021%  18.392%   0.002%  12.201%   7.995%   0.138%   0.000%   0.000%
   31   14.1  1.5  0.5   0.350%   2.755%   0.017%  14.369%   0.000%   0.588%  21.571%   0.371%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.231%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.386%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.863%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.141%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.669%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.674%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.031%
   42    8.1  1.5 -0.5   0.466%   3.670%   0.001%   0.842%   0.002%  12.439%   1.746%   0.030%   0.000%   0.000%
   43    9.1  1.5 -0.5   3.417%   0.434%   0.104%   0.000%   1.497%   0.000%   0.017%   0.988%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.089%   0.697%   0.005%   4.364%   0.002%  15.478%   2.293%   0.039%   0.000%   0.000%
   45   11.1  1.5 -0.5   3.143%   0.399%   2.763%   0.003%   0.012%   0.000%   0.007%   0.428%   0.000%   0.000%
   46   12.1  1.5 -0.5   1.680%  13.222%   0.004%   3.270%   0.000%   0.228%  21.675%   0.373%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.516%   0.066%  18.392%   0.021%  12.201%   0.002%   0.138%   7.995%   0.000%   0.000%
   48   14.1  1.5 -0.5   2.755%   0.350%  14.369%   0.017%   0.588%   0.000%   0.371%  21.571%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  16.696%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  36.737%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.940%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  25.361%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.106%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.210%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.947%   0.000%
   59    8.1  1.5 -1.5  15.280%   1.941%   0.163%   0.000%   1.768%   0.000%   0.210%  12.185%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.300%   2.358%   0.016%  13.815%   0.003%  19.637%   6.223%   0.107%   0.000%   0.000%
   61   10.1  1.5 -1.5   7.819%   0.993%   9.439%   0.011%   3.941%   0.001%   0.114%   6.595%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.205%   1.617%   0.016%  14.018%   0.004%  23.415%   4.659%   0.080%   0.000%   0.000%
   63   12.1  1.5 -1.5   8.172%   1.038%  14.999%   0.017%   0.329%   0.000%   0.103%   5.989%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.763%   6.010%   0.002%   1.376%   0.001%   6.086%   2.173%   0.037%   0.000%   0.000%
   65   14.1  1.5 -1.5   2.547%  20.050%   0.002%   1.970%   0.000%   2.364%   3.787%   0.065%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   8.292%   0.009%   0.078%   0.069%   2.199%   0.046%   1.023%   0.002%  27.594%   0.313%
    2    2.1  1.5  1.5  11.806%   0.012%   0.428%   0.380%   0.957%   0.020%   0.252%   0.001%   0.001%   0.000%
    3    3.1  1.5  1.5   5.521%   0.006%   2.019%   1.792%   6.514%   0.136%   7.855%   0.016%   4.629%   0.053%
    4    4.1  1.5  1.5  13.209%   0.014%   1.744%   1.548%   4.817%   0.101%   2.165%   0.004%   1.766%   0.020%
    5    5.1  1.5  1.5   0.005%   4.927%   4.965%   5.594%   0.070%   3.346%   0.010%   4.870%   0.004%   0.319%
    6    6.1  1.5  1.5   0.001%   1.290%   7.778%   8.763%   0.339%  16.200%   0.002%   1.026%   0.118%  10.377%
    7    7.1  1.5  1.5   0.004%   3.431%   4.789%   5.396%   0.365%  17.416%   0.007%   3.362%   0.005%   0.461%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.014%  13.592%  11.939%  13.452%   0.059%   2.829%   0.002%   0.931%   0.026%   2.318%
   19    2.1  1.5  0.5   0.005%   5.258%   4.682%   5.275%   0.066%   3.149%   0.000%   0.035%   0.437%  38.466%
   20    3.1  1.5  0.5   0.002%   1.554%   0.893%   1.006%   0.077%   3.659%   0.074%  36.506%   0.018%   1.594%
   21    4.1  1.5  0.5   0.000%   0.390%   0.408%   0.460%   0.412%  19.678%   0.002%   0.947%   0.001%   0.045%
   22    5.1  1.5  0.5   6.252%   0.007%   3.714%   3.296%   0.418%   0.009%  32.073%   0.065%   0.951%   0.011%
   23    6.1  1.5  0.5  21.388%   0.022%   0.171%   0.152%   1.156%   0.024%   8.205%   0.017%   3.964%   0.045%
   24    7.1  1.5  0.5   2.986%   0.003%   4.878%   4.330%  15.610%   0.327%   0.548%   0.001%   5.075%   0.058%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5  13.592%   0.014%  13.452%  11.939%   2.829%   0.059%   0.931%   0.002%   2.318%   0.026%
   36    2.1  1.5 -0.5   5.258%   0.005%   5.275%   4.682%   3.149%   0.066%   0.035%   0.000%  38.466%   0.437%
   37    3.1  1.5 -0.5   1.554%   0.002%   1.006%   0.893%   3.659%   0.077%  36.506%   0.074%   1.594%   0.018%
   38    4.1  1.5 -0.5   0.390%   0.000%   0.460%   0.408%  19.678%   0.412%   0.947%   0.002%   0.045%   0.001%
   39    5.1  1.5 -0.5   0.007%   6.252%   3.296%   3.714%   0.009%   0.418%   0.065%  32.073%   0.011%   0.951%
   40    6.1  1.5 -0.5   0.022%  21.388%   0.152%   0.171%   0.024%   1.156%   0.017%   8.205%   0.045%   3.964%
   41    7.1  1.5 -0.5   0.003%   2.986%   4.330%   4.878%   0.327%  15.610%   0.001%   0.548%   0.058%   5.075%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.009%   8.292%   0.069%   0.078%   0.046%   2.199%   0.002%   1.023%   0.313%  27.594%
   53    2.1  1.5 -1.5   0.012%  11.806%   0.380%   0.428%   0.020%   0.957%   0.001%   0.252%   0.000%   0.001%
   54    3.1  1.5 -1.5   0.006%   5.521%   1.792%   2.019%   0.136%   6.514%   0.016%   7.855%   0.053%   4.629%
   55    4.1  1.5 -1.5   0.014%  13.209%   1.548%   1.744%   0.101%   4.817%   0.004%   2.165%   0.020%   1.766%
   56    5.1  1.5 -1.5   4.927%   0.005%   5.594%   4.965%   3.346%   0.070%   4.870%   0.010%   0.319%   0.004%
   57    6.1  1.5 -1.5   1.290%   0.001%   8.763%   7.778%  16.200%   0.339%   1.026%   0.002%  10.377%   0.118%
   58    7.1  1.5 -1.5   3.431%   0.004%   5.396%   4.789%  17.416%   0.365%   3.362%   0.007%   0.461%   0.005%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.052%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.061%   0.001%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.053%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.405%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.328%   0.004%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.415%   0.005%
   76    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.052%   0.001%
   77    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.061%
   78    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   0.001%
   79    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.405%   0.005%
   80    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.328%
   81    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   82    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.415%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.003%  11.434%   0.000%   0.398%   0.002%   0.002%  12.111%   0.003%   9.929%   0.003%
    2    2.1  1.5  1.5   0.000%   0.037%   0.000%   0.476%   1.928%   2.278%   0.044%   0.000%   6.303%   0.002%
    3    3.1  1.5  1.5   0.003%   9.023%   0.006%  24.996%   1.630%   1.927%   0.703%   0.000%  14.786%   0.005%
    4    4.1  1.5  1.5   0.000%   0.625%   0.000%   0.451%   2.011%   2.377%   0.489%   0.000%   2.731%   0.001%
    5    5.1  1.5  1.5   0.127%   0.000%   4.839%   0.001%  22.497%  19.036%   0.000%   0.178%   0.004%  11.283%
    6    6.1  1.5  1.5   0.024%   0.000%  17.069%   0.004%   0.408%   0.345%   0.000%   1.946%   0.003%   9.883%
    7    7.1  1.5  1.5  27.445%   0.008%   0.102%   0.000%   0.089%   0.076%   0.001%   2.041%   0.004%  11.818%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5  14.046%   0.004%   0.240%   0.000%   0.004%   0.003%   0.000%   0.625%   0.004%  11.663%
   19    2.1  1.5  0.5  12.340%   0.004%   0.384%   0.000%   0.020%   0.017%   0.006%  23.909%   0.001%   1.950%
   20    3.1  1.5  0.5   8.356%   0.003%   3.820%   0.001%   0.175%   0.148%   0.000%   0.019%   0.001%   3.717%
   21    4.1  1.5  0.5   9.783%   0.003%  32.939%   0.008%   3.438%   2.909%   0.006%  23.583%   0.000%   0.330%
   22    5.1  1.5  0.5   0.002%   5.250%   0.001%   2.493%   0.388%   0.458%   2.655%   0.001%   8.114%   0.003%
   23    6.1  1.5  0.5   0.000%   0.008%   0.000%   0.149%  10.940%  12.929%  14.086%   0.004%   6.707%   0.002%
   24    7.1  1.5  0.5   0.000%   0.142%   0.003%  10.287%   5.790%   6.843%  16.837%   0.004%   0.002%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.004%  14.046%   0.000%   0.240%   0.003%   0.004%   0.625%   0.000%  11.663%   0.004%
   36    2.1  1.5 -0.5   0.004%  12.340%   0.000%   0.384%   0.017%   0.020%  23.909%   0.006%   1.950%   0.001%
   37    3.1  1.5 -0.5   0.003%   8.356%   0.001%   3.820%   0.148%   0.175%   0.019%   0.000%   3.717%   0.001%
   38    4.1  1.5 -0.5   0.003%   9.783%   0.008%  32.939%   2.909%   3.438%  23.583%   0.006%   0.330%   0.000%
   39    5.1  1.5 -0.5   5.250%   0.002%   2.493%   0.001%   0.458%   0.388%   0.001%   2.655%   0.003%   8.114%
   40    6.1  1.5 -0.5   0.008%   0.000%   0.149%   0.000%  12.929%  10.940%   0.004%  14.086%   0.002%   6.707%
   41    7.1  1.5 -0.5   0.142%   0.000%  10.287%   0.003%   6.843%   5.790%   0.004%  16.837%   0.000%   0.002%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5  11.434%   0.003%   0.398%   0.000%   0.002%   0.002%   0.003%  12.111%   0.003%   9.929%
   53    2.1  1.5 -1.5   0.037%   0.000%   0.476%   0.000%   2.278%   1.928%   0.000%   0.044%   0.002%   6.303%
   54    3.1  1.5 -1.5   9.023%   0.003%  24.996%   0.006%   1.927%   1.630%   0.000%   0.703%   0.005%  14.786%
   55    4.1  1.5 -1.5   0.625%   0.000%   0.451%   0.000%   2.377%   2.011%   0.000%   0.489%   0.001%   2.731%
   56    5.1  1.5 -1.5   0.000%   0.127%   0.001%   4.839%  19.036%  22.497%   0.178%   0.000%  11.283%   0.004%
   57    6.1  1.5 -1.5   0.000%   0.024%   0.004%  17.069%   0.345%   0.408%   1.946%   0.000%   9.883%   0.003%
   58    7.1  1.5 -1.5   0.008%  27.445%   0.000%   0.102%   0.076%   0.089%   2.041%   0.001%  11.818%   0.004%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.449%   0.000%   0.021%   0.000%   0.129%   0.109%   0.000%   0.047%   0.000%   0.270%
   70    2.1  0.5  0.5   0.000%   0.408%   0.000%   0.280%   0.005%   0.006%   0.020%   0.000%   0.149%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.598%   0.000%   0.059%   0.050%   0.000%   0.032%   0.000%   0.043%
   72    4.1  0.5  0.5   0.016%   0.000%   0.044%   0.000%   0.158%   0.133%   0.000%   0.268%   0.000%   0.050%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.067%   0.166%   0.196%   0.036%   0.000%   0.143%   0.000%
   74    6.1  0.5  0.5   0.437%   0.000%   0.050%   0.000%   0.147%   0.125%   0.000%   0.273%   0.000%   0.003%
   75    7.1  0.5  0.5   0.000%   0.020%   0.000%   0.272%   0.022%   0.026%   0.073%   0.000%   0.090%   0.000%
   76    1.1  0.5 -0.5   0.000%   0.449%   0.000%   0.021%   0.109%   0.129%   0.047%   0.000%   0.270%   0.000%
   77    2.1  0.5 -0.5   0.408%   0.000%   0.280%   0.000%   0.006%   0.005%   0.000%   0.020%   0.000%   0.149%
   78    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.598%   0.050%   0.059%   0.032%   0.000%   0.043%   0.000%
   79    4.1  0.5 -0.5   0.000%   0.016%   0.000%   0.044%   0.133%   0.158%   0.268%   0.000%   0.050%   0.000%
   80    5.1  0.5 -0.5   0.000%   0.000%   0.067%   0.000%   0.196%   0.166%   0.000%   0.036%   0.000%   0.143%
   81    6.1  0.5 -0.5   0.000%   0.437%   0.000%   0.050%   0.125%   0.147%   0.273%   0.000%   0.003%   0.000%
   82    7.1  0.5 -0.5   0.020%   0.000%   0.272%   0.000%   0.026%   0.022%   0.000%   0.073%   0.000%   0.090%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.003%   1.810%   0.014%   6.299%   0.000%   0.948%   0.000%   0.106%   0.000%   0.077%
    2    2.1  1.5  1.5   0.014%   9.584%   0.039%  18.128%   0.000%  10.385%   0.000%   0.008%   0.000%   0.024%
    3    3.1  1.5  1.5   0.013%   8.942%   0.004%   1.842%   0.000%   3.884%   0.000%   0.317%   0.000%   0.021%
    4    4.1  1.5  1.5   0.020%  13.290%   0.030%  13.676%   0.000%  13.325%   0.000%   0.000%   0.000%   0.057%
    5    5.1  1.5  1.5  14.018%   0.021%   2.376%   0.005%   0.572%   0.000%   0.068%   0.000%   0.208%   0.000%
    6    6.1  1.5  1.5   9.466%   0.014%   4.745%   0.010%   9.434%   0.000%   0.034%   0.000%   0.262%   0.000%
    7    7.1  1.5  1.5   7.400%   0.011%   5.337%   0.012%   8.934%   0.000%   0.241%   0.000%   0.009%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   6.347%   0.009%  18.196%   0.040%   3.059%   0.000%   0.154%   0.000%   0.013%   0.000%
   19    2.1  1.5  0.5   0.698%   0.001%   0.000%   0.000%   0.013%   0.000%   0.092%   0.000%   0.237%   0.000%
   20    3.1  1.5  0.5  14.322%   0.021%   0.412%   0.001%  22.432%   0.000%   0.152%   0.000%   0.037%   0.000%
   21    4.1  1.5  0.5   2.102%   0.003%   1.326%   0.003%   0.223%   0.000%   0.000%   0.000%   0.128%   0.000%
   22    5.1  1.5  0.5   0.009%   6.275%   0.025%  11.293%   0.000%  14.311%   0.000%   0.110%   0.000%   0.017%
   23    6.1  1.5  0.5   0.001%   0.436%   0.016%   7.234%   0.000%   7.133%   0.000%   0.041%   0.000%   0.161%
   24    7.1  1.5  0.5   0.007%   4.413%   0.019%   8.919%   0.000%   5.346%   0.000%   0.009%   0.000%   0.081%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.009%   6.347%   0.040%  18.196%   0.000%   3.059%   0.000%   0.154%   0.000%   0.013%
   36    2.1  1.5 -0.5   0.001%   0.698%   0.000%   0.000%   0.000%   0.013%   0.000%   0.092%   0.000%   0.237%
   37    3.1  1.5 -0.5   0.021%  14.322%   0.001%   0.412%   0.000%  22.432%   0.000%   0.152%   0.000%   0.037%
   38    4.1  1.5 -0.5   0.003%   2.102%   0.003%   1.326%   0.000%   0.223%   0.000%   0.000%   0.000%   0.128%
   39    5.1  1.5 -0.5   6.275%   0.009%  11.293%   0.025%  14.311%   0.000%   0.110%   0.000%   0.017%   0.000%
   40    6.1  1.5 -0.5   0.436%   0.001%   7.234%   0.016%   7.133%   0.000%   0.041%   0.000%   0.161%   0.000%
   41    7.1  1.5 -0.5   4.413%   0.007%   8.919%   0.019%   5.346%   0.000%   0.009%   0.000%   0.081%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   1.810%   0.003%   6.299%   0.014%   0.948%   0.000%   0.106%   0.000%   0.077%   0.000%
   53    2.1  1.5 -1.5   9.584%   0.014%  18.128%   0.039%  10.385%   0.000%   0.008%   0.000%   0.024%   0.000%
   54    3.1  1.5 -1.5   8.942%   0.013%   1.842%   0.004%   3.884%   0.000%   0.317%   0.000%   0.021%   0.000%
   55    4.1  1.5 -1.5  13.290%   0.020%  13.676%   0.030%  13.325%   0.000%   0.000%   0.000%   0.057%   0.000%
   56    5.1  1.5 -1.5   0.021%  14.018%   0.005%   2.376%   0.000%   0.572%   0.000%   0.068%   0.000%   0.208%
   57    6.1  1.5 -1.5   0.014%   9.466%   0.010%   4.745%   0.000%   9.434%   0.000%   0.034%   0.000%   0.262%
   58    7.1  1.5 -1.5   0.011%   7.400%   0.012%   5.337%   0.000%   8.934%   0.000%   0.241%   0.000%   0.009%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%  38.822%   0.000%  17.434%   0.000%
   70    2.1  0.5  0.5   0.000%   0.151%   0.000%   0.000%   0.000%   0.000%   0.000%  43.003%   0.000%  13.330%
   71    3.1  0.5  0.5   0.245%   0.000%   0.000%   0.000%   0.000%   0.000%   1.137%   0.000%  48.750%   0.001%
   72    4.1  0.5  0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   2.630%   0.000%   6.648%   0.000%
   73    5.1  0.5  0.5   0.000%   0.142%   0.000%   0.000%   0.000%   0.000%   0.000%   6.666%   0.000%  11.826%
   74    6.1  0.5  0.5   0.045%   0.000%   0.000%   0.000%   0.000%   0.000%   6.097%   0.000%   0.008%   0.000%
   75    7.1  0.5  0.5   0.000%   0.158%   0.000%   0.000%   0.000%   0.000%   0.000%   0.312%   0.000%   0.670%
   76    1.1  0.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%  38.822%   0.000%  17.434%
   77    2.1  0.5 -0.5   0.151%   0.000%   0.000%   0.000%   0.000%   0.000%  43.003%   0.000%  13.330%   0.000%
   78    3.1  0.5 -0.5   0.000%   0.245%   0.000%   0.000%   0.000%   0.000%   0.000%   1.137%   0.001%  48.750%
   79    4.1  0.5 -0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   2.630%   0.000%   6.648%
   80    5.1  0.5 -0.5   0.142%   0.000%   0.000%   0.000%   0.000%   0.000%   6.666%   0.000%  11.826%   0.000%
   81    6.1  0.5 -0.5   0.000%   0.045%   0.000%   0.000%   0.000%   0.000%   0.000%   6.097%   0.000%   0.008%
   82    7.1  0.5 -0.5   0.158%   0.000%   0.000%   0.000%   0.000%   0.000%   0.312%   0.000%   0.670%   0.000%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  1.5  1.5   0.000%   0.009%   0.000%   0.344%   0.000%   0.072%   0.000%   0.066%   0.000%   0.043%
    2    2.1  1.5  1.5   0.000%   0.026%   0.000%   0.006%   0.000%   0.003%   0.000%   0.028%   0.000%   0.090%
    3    3.1  1.5  1.5   0.000%   0.014%   0.000%   0.218%   0.000%   0.180%   0.000%   0.000%   0.000%   0.005%
    4    4.1  1.5  1.5   0.000%   0.036%   0.000%   0.005%   0.000%   0.001%   0.000%   0.058%   0.000%   0.066%
    5    5.1  1.5  1.5   0.280%   0.000%   0.076%   0.000%   0.008%   0.000%   0.038%   0.000%   0.147%   0.000%
    6    6.1  1.5  1.5   0.086%   0.000%   0.001%   0.000%   0.128%   0.000%   0.033%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.128%   0.000%   0.002%   0.000%   0.132%   0.000%   0.027%   0.000%   0.001%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.028%   0.000%   0.029%   0.000%   0.024%   0.000%   0.053%   0.000%   0.064%   0.000%
   19    2.1  1.5  0.5   0.142%   0.000%   0.227%   0.000%   0.032%   0.000%   0.118%   0.000%   0.051%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.045%   0.000%   0.091%   0.000%
   21    4.1  1.5  0.5   0.346%   0.000%   0.189%   0.000%   0.021%   0.000%   0.089%   0.000%   0.086%   0.000%
   22    5.1  1.5  0.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.096%   0.000%   0.032%   0.000%   0.001%
   23    6.1  1.5  0.5   0.000%   0.165%   0.000%   0.012%   0.000%   0.038%   0.000%   0.121%   0.000%   0.001%
   24    7.1  1.5  0.5   0.000%   0.069%   0.000%   0.221%   0.000%   0.016%   0.000%   0.042%   0.000%   0.102%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.028%   0.000%   0.029%   0.000%   0.024%   0.000%   0.053%   0.000%   0.064%
   36    2.1  1.5 -0.5   0.000%   0.142%   0.000%   0.227%   0.000%   0.032%   0.000%   0.118%   0.000%   0.051%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.045%   0.000%   0.091%
   38    4.1  1.5 -0.5   0.000%   0.346%   0.000%   0.189%   0.000%   0.021%   0.000%   0.089%   0.000%   0.086%
   39    5.1  1.5 -0.5   0.001%   0.000%   0.001%   0.000%   0.096%   0.000%   0.032%   0.000%   0.001%   0.000%
   40    6.1  1.5 -0.5   0.165%   0.000%   0.012%   0.000%   0.038%   0.000%   0.121%   0.000%   0.001%   0.000%
   41    7.1  1.5 -0.5   0.069%   0.000%   0.221%   0.000%   0.016%   0.000%   0.042%   0.000%   0.102%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.009%   0.000%   0.344%   0.000%   0.072%   0.000%   0.066%   0.000%   0.043%   0.000%
   53    2.1  1.5 -1.5   0.026%   0.000%   0.006%   0.000%   0.003%   0.000%   0.028%   0.000%   0.090%   0.000%
   54    3.1  1.5 -1.5   0.014%   0.000%   0.218%   0.000%   0.180%   0.000%   0.000%   0.000%   0.005%   0.000%
   55    4.1  1.5 -1.5   0.036%   0.000%   0.005%   0.000%   0.001%   0.000%   0.058%   0.000%   0.066%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.280%   0.000%   0.076%   0.000%   0.008%   0.000%   0.038%   0.000%   0.147%
   57    6.1  1.5 -1.5   0.000%   0.086%   0.000%   0.001%   0.000%   0.128%   0.000%   0.033%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.128%   0.000%   0.002%   0.000%   0.132%   0.000%   0.027%   0.000%   0.001%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.015%   0.000%   0.143%   0.000%  33.045%   0.000%   8.653%   0.000%   0.804%   0.000%
   70    2.1  0.5  0.5   0.000%   0.075%   0.000%   0.004%   0.000%  35.000%   0.000%   7.455%   0.000%   0.050%
   71    3.1  0.5  0.5   0.030%   0.000%   6.445%   0.000%  25.868%   0.000%   0.480%   0.000%  16.208%   0.000%
   72    4.1  0.5  0.5  34.208%   0.000%  12.904%   0.000%   1.872%   0.000%  17.201%   0.001%  23.453%   0.000%
   73    5.1  0.5  0.5   0.000%  15.041%   0.000%  22.840%   0.000%   3.258%   0.001%  24.233%   0.000%  15.052%
   74    6.1  0.5  0.5  48.648%   0.000%   1.612%   0.000%   0.010%   0.000%  41.036%   0.002%   1.505%   0.000%
   75    7.1  0.5  0.5   0.000%   0.652%   0.001%  54.718%   0.000%   0.198%   0.000%   0.187%   0.000%  42.180%
   76    1.1  0.5 -0.5   0.000%   0.015%   0.000%   0.143%   0.000%  33.045%   0.000%   8.653%   0.000%   0.804%
   77    2.1  0.5 -0.5   0.075%   0.000%   0.004%   0.000%  35.000%   0.000%   7.455%   0.000%   0.050%   0.000%
   78    3.1  0.5 -0.5   0.000%   0.030%   0.000%   6.445%   0.000%  25.868%   0.000%   0.480%   0.000%  16.208%
   79    4.1  0.5 -0.5   0.000%  34.208%   0.000%  12.904%   0.000%   1.872%   0.001%  17.201%   0.000%  23.453%
   80    5.1  0.5 -0.5  15.041%   0.000%  22.840%   0.000%   3.258%   0.000%  24.233%   0.001%  15.052%   0.000%
   81    6.1  0.5 -0.5   0.000%  48.648%   0.000%   1.612%   0.000%   0.010%   0.002%  41.036%   0.000%   1.505%
   82    7.1  0.5 -0.5   0.652%   0.000%  54.718%   0.001%   0.198%   0.000%   0.187%   0.000%  42.180%   0.000%

   Nr   State  S   Sz      71       72       73       74       75       76       77       78       79       80

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.001%  19.613%   0.018%  32.799%   0.000%   2.586%   0.000%   4.532%   0.000%  15.454%
   16   16.1  1.5  1.5  13.061%   0.001%  14.359%   0.008%  12.578%   0.000%  46.393%   0.001%  13.600%   0.000%
   17   17.1  1.5  1.5   0.000%   1.496%   0.017%  31.165%   0.000%  22.304%   0.000%   4.536%   0.000%  15.470%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5  34.881%   0.002%   9.980%   0.005%   0.139%   0.000%  40.853%   0.000%   5.810%   0.000%
   33   16.1  1.5  0.5   0.001%  30.820%   0.000%   0.061%   0.000%  29.124%   0.000%   1.515%   0.000%   5.153%
   34   17.1  1.5  0.5   0.125%   0.000%  11.582%   0.006%  33.268%   0.000%   2.170%   0.000%  44.512%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.002%  34.881%   0.005%   9.980%   0.000%   0.139%   0.000%  40.853%   0.000%   5.810%
   50   16.1  1.5 -0.5  30.820%   0.001%   0.061%   0.000%  29.124%   0.000%   1.515%   0.000%   5.153%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.125%   0.006%  11.582%   0.000%  33.268%   0.000%   2.170%   0.000%  44.512%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5  19.613%   0.001%  32.799%   0.018%   2.586%   0.000%   4.532%   0.000%  15.454%   0.000%
   67   16.1  1.5 -1.5   0.001%  13.061%   0.008%  14.359%   0.000%  12.578%   0.001%  46.393%   0.000%  13.600%
   68   17.1  1.5 -1.5   1.496%   0.000%  31.165%   0.017%  22.304%   0.000%   4.536%   0.000%  15.470%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      81       82

    1    1.1  1.5  1.5   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%  24.997%
   16   16.1  1.5  1.5   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%  25.012%
   18    1.1  1.5  0.5   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%
   32   15.1  1.5  0.5   8.329%   0.000%
   33   16.1  1.5  0.5   0.000%  33.326%
   34   17.1  1.5  0.5   8.336%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   8.329%
   50   16.1  1.5 -0.5  33.326%   0.000%
   51   17.1  1.5 -0.5   0.000%   8.336%
   52    1.1  1.5 -1.5   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%
   66   15.1  1.5 -1.5  24.997%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%
   68   17.1  1.5 -1.5  25.012%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%
   76    1.1  0.5 -0.5   0.000%   0.000%
   77    2.1  0.5 -0.5   0.000%   0.000%
   78    3.1  0.5 -0.5   0.000%   0.000%
   79    4.1  0.5 -0.5   0.000%   0.000%
   80    5.1  0.5 -0.5   0.000%   0.000%
   81    6.1  0.5 -0.5   0.000%   0.000%
   82    7.1  0.5 -0.5   0.000%   0.000%


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
              1      24      163.83       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       8      479.44       700     1000      520     2100     2140     2141     5103     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11198.52   5826.33      4.19    534.91   4826.56      3.80      1.07      0.61      0.85
 REAL TIME  *     11533.62 SEC
 DISK USED  *       516.11 MB (local),        2.47 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-DK energy=  -1392.478978318940

              CI              CI           MULTI           MULTI         RHF-SCF
  -1392.46893143  -1392.42914014  -1391.78508172  -1391.80758451  -1391.81034109
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
