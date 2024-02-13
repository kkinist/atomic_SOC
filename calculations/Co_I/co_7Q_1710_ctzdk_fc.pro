
 Working directory              : /scratch/irikura/molpro.nChmWNHy4u/
 Global scratch directory       : /scratch/irikura/molpro.nChmWNHy4u/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /scratch/irikura/molpro.nChmWNHy4u/

 id        : nistki

 Nodes     nprocs
 n622.becn    4
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.00 sec
 ***,Co atom
                                                                                 ! Ground 4F term only
 memory,2000,M;
 
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
 
 {ci;wf,sym=1,spin=3; state,7; save,5103.2}
 hlsdiag = energd4
 
 table, hlsdiag
 
 lsint
 {ci;hlsmat,ls,5103.2;print,vls=0,hls=0}
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Co atom                                                                                                                                                       
  (32 PROC) 64 bit mpp version                                                           DATE: 09-Feb-24          TIME: 11:13:00  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:   8000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 2000.0 MW


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

     15.729 MB (compressed) written to integral file ( 14.7%)

     Node minimum: 3.146 MB, node maximum: 5.243 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1755030.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1755030      RECORD LENGTH: 524288

 Memory used in sort:       2.31 MW

 SORT1 READ    12883698. AND WROTE      339780. INTEGRALS IN      1 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC
 SORT2 READ     1353984. AND WROTE     7035726. INTEGRALS IN     80 RECORDS. CPU TIME:     0.04 SEC, REAL TIME:     0.05 SEC

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
 CPU TIMES  *         1.04      0.90
 REAL TIME  *         2.05 SEC
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
    1    1    0   -1391.67818110   -1391.67818110    1.15985222    1.15985222    0.00000000    0    0.32E+00      0.06
    2    1    0   -1391.67721185       0.00096926    1.29906538    1.29906538    0.00000000    0    0.25E+00      0.10
    3    1    0   -1391.72408802      -0.04687617    1.15055795    1.15055795    0.00000000    0    0.22E+00      0.14
    4    1    0   -1391.72726894      -0.00318092    1.06376305    1.06376305    0.00000000    0    0.23E+00      0.17
    5    1    0   -1391.72396147       0.00330747    1.12013828    1.12013828    0.00000000    0    0.21E+00      0.21
    6    2    0   -1391.74343674      -0.01947527    0.99765626    0.99765626    0.00000000    1    0.10E+00      0.26
    7    2    0   -1391.80691102      -0.06347428    0.20083897    0.20083897    0.00000000    2    0.96E-01      0.30
    8    1    0   -1391.81005149      -0.00314047    0.04686277    0.04686277    0.00000000    3    0.35E-01      0.34
    9    2    0   -1391.81031972      -0.00026823    0.00711235    0.00711235    0.00000000    4    0.12E-01      0.38
   10    2    0   -1391.81033885      -0.00001913    0.00270113    0.00270113    0.00000000    5    0.16E-02      0.42
   11    1    0   -1391.81034087      -0.00000202    0.00107588    0.00107588    0.00000000    6    0.37E-03      0.46
   12    2    0   -1391.81034108      -0.00000020    0.00018989    0.00018989    0.00000000    7    0.23E-03      0.50
   13    2    0   -1391.81034109      -0.00000001    0.00004131    0.00004131    0.00000000    8    0.25E-04      0.54
   14    2    0   -1391.81034109      -0.00000000    0.00001721    0.00001721    0.00000000    9    0.10E-04      0.58
   15    2    0   -1391.81034109      -0.00000000    0.00000450    0.00000450    0.00000000   10    0.62E-05      0.62

 CONVERGENCE REACHED!  Final gradient:     0.00000132 ( 0.13E-05)
                       Final energy:   -1391.81034109
 

 Final alpha occupancy:   9   6
 Final beta  occupancy:   6   6

 !RHF STATE 1.1 Energy              -1391.810341090509
  RHF One-electron energy           -1932.565598114648
  RHF Two-electron energy             540.755257024139
  RHF Kinetic energy                 1454.632320360907
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.956812468422

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.56635     1  1  s    0.97812
    2.1     2.00000   -35.23766     1  2  s    0.99666
    3.1     2.00000    -4.40336     1  3  s    0.99088
    4.1     2.00000    -0.40428     1  1  d1+  0.99672
    5.1     2.00000    -0.40428     1  1  d2-  0.99457
    6.1     2.00000    -0.40428     1  1  d0   0.86072    1  1  d2+  0.49723
    7.1     1.00000    -0.48242     1  1  d1-  0.99801
    8.1     1.00000    -0.48242     1  1  d0  -0.49902    1  1  d2+  0.86447
    9.1     1.00000    -0.23846     1  4  s    0.96027
    1.2     2.00000   -30.01080     1  1  py   0.99995
    2.2     2.00000   -30.01080     1  1  px   0.99960
    3.2     2.00000   -30.01080     1  1  pz   0.99960
    4.2     2.00000    -2.82443     1  2  pz   1.00136
    5.2     2.00000    -2.82443     1  2  px   1.00129
    6.2     2.00000    -2.82443     1  2  py   1.00125


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
 CPU TIMES  *         1.60      0.55      0.90
 REAL TIME  *         2.73 SEC
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.230D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.154D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.392D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.960D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.417D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.322D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.373D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.782D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 3 2 6 5 1 1   6 5 4 2 3 1 6 5 4 2   3 1 6 5 4 2 3121411  13 715 910 8 1 6 5 4
                                        2 312111314 715 810   9 6 5 2 3 4 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.188D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.362D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.366D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.243D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.310D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.355D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 1 2 3   1 2 2 3 1 5 710 6 8   9 4 2 3 110 7 5 9 8   6 4 3 1 210 7 5 9 8
                                        6 4 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  689  ( 23 closed/active, 213 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    1081
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0  -1391.80634565   -1391.80758013   -0.00123448    0.06020388 0.00001360 0.00000000  0.33E-01      0.19
   2    4    4    0  -1391.80758443   -1391.80758452   -0.00000009    0.00057964 0.00000019 0.00000000  0.45E-03      0.39
   3   20   20    0  -1391.80758452   -1391.80758452    0.00000000    0.00000021 0.00000311 0.00000000  0.84E-07      0.75

 CONVERGENCE REACHED!  Final gradient:    0.00000022 ( 0.22E-06)
                       Final energy:  -1391.80758452
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -1391.807584524138
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949329
 One electron energy                         -1932.57186597
 Two electron energy                           540.76428145
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -1391.807584523245
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949389
 One electron energy                         -1932.57186707
 Two electron energy                           540.76428255
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -1391.807584522669
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949404
 One electron energy                         -1932.57186735
 Two electron energy                           540.76428283
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -1391.807584522212
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949364
 One electron energy                         -1932.57186662
 Two electron energy                           540.76428210
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -1391.807584517765
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949410
 One electron energy                         -1932.57186746
 Two electron energy                           540.76428294
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -1391.807584517340
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949440
 One electron energy                         -1932.57186801
 Two electron energy                           540.76428349
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -1391.807584515188
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949458
 One electron energy                         -1932.57186834
 Two electron energy                           540.76428383
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     3.492656520329
 !MCSCF expec                      <2.1|LXLX|2.1>     0.433600541329
 !MCSCF expec                      <3.1|LXLX|3.1>     1.282716255174
 !MCSCF expec                      <4.1|LXLX|4.1>     3.999999729201
 !MCSCF expec                      <5.1|LXLX|5.1>     8.717232858832
 !MCSCF expec                      <6.1|LXLX|6.1>     3.566386759361
 !MCSCF expec                      <7.1|LXLX|7.1>     6.507338055839
 
 !MCSCF expec                      <1.1|LYLY|1.1>     4.525191809837
 !MCSCF expec                      <2.1|LYLY|2.1>     3.375094331575
 !MCSCF expec                      <3.1|LYLY|3.1>     1.749566744243
 !MCSCF expec                      <4.1|LYLY|4.1>     3.999999907609
 !MCSCF expec                      <5.1|LYLY|5.1>     2.250502029830
 !MCSCF expec                      <6.1|LYLY|6.1>     6.624943754817
 !MCSCF expec                      <7.1|LYLY|7.1>     5.474813863027
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     3.982151669835
 !MCSCF expec                      <2.1|LZLZ|2.1>     8.191305127096
 !MCSCF expec                      <3.1|LZLZ|3.1>     8.967717000583
 !MCSCF expec                      <4.1|LZLZ|4.1>     4.000000363189
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.032265111338
 !MCSCF expec                      <6.1|LZLZ|6.1>     1.808669485822
 !MCSCF expec                      <7.1|LZLZ|7.1>     0.017848081134
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 2 5 4 1 1   3 6 2 5 4 1 3 6 2 5   4 1 6 3 2 4 5 912 7   81415101311 1 4 2 3
                                        6 5 912 71514 81013  11 4 2 5 3 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 1 3 2 1   3 2 1 3 2 8 5 6 4 9   710 1 3 2 4 8 6 5 7   910 1 3 2 4 610 8 7
                                        9 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.56626     1  1  s    0.97812
    2.1     2.00000   -35.23764     1  2  s    0.99666
    3.1     2.00000    -4.40321     1  3  s    0.99089
    4.1     1.60000    -0.24529     1  1  d1-  0.99764
    5.1     1.60000    -0.24529     1  1  d2-  0.99764
    6.1     1.60000    -0.24529     1  1  d0   0.99764
    7.1     1.60000    -0.24529     1  1  d2+  0.99764
    8.1     1.60000    -0.24529     1  1  d1+  0.99764
    9.1     1.00000    -0.09695     1  4  s    0.96202
    1.2     2.00000   -30.01076     1  1  px   1.00003
    2.2     2.00000   -30.01076     1  1  pz   1.00003
    3.2     2.00000   -30.01076     1  1  py   1.00003
    4.2     2.00000    -2.82396     1  2  pz   1.00146
    5.2     2.00000    -2.82396     1  2  px   1.00146
    6.2     2.00000    -2.82396     1  2  py   1.00146
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 222aa2a 222      0.00001877      0.00014603      0.00024106      0.99999996     -0.00001876      0.00006928      0.00000808
 22aa22a 222      0.99776643     -0.00000122     -0.00016080     -0.00001815      0.00004018     -0.00000396     -0.06679907
 2a222aa 222      0.05974689     -0.00000708     -0.00001751     -0.00000833     -0.00008610      0.00001694      0.89242939
 22a22aa 222      0.00000226      0.84455902      0.00003034     -0.00014374      0.00004910      0.29448277      0.00000096
 2a22a2a 222      0.00000113     -0.49627142     -0.00001232      0.00002092      0.00012835      0.74412007     -0.00001813
 2222aaa 222      0.00010288     -0.00002426      0.74047225     -0.00016907      0.50169797     -0.00009045      0.00005605
 2aa222a 222      0.00012842     -0.00002368      0.67088497     -0.00017283     -0.59153472      0.00009735     -0.00005251
 222a2aa 222     -0.00001475     -0.00000034      0.04017620      0.00000217      0.63117810     -0.00010842      0.00006267
 2a2a22a 222     -0.00000196     -0.20108387     -0.00001040      0.00007091     -0.00010245     -0.59963754      0.00000991
 22a2a2a 222     -0.02987347      0.00000354      0.00000876      0.00000416      0.00004305     -0.00000847     -0.44621482
 
 Energy:      -1391.80758452  -1391.80758452  -1391.80758452  -1391.80758452  -1391.80758452  -1391.80758452  -1391.80758452
 


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
 CPU TIMES  *         2.51      0.90      0.55      0.90
 REAL TIME  *         4.30 SEC
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
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

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

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  20

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1391.80758452
     2     -1391.80758452
     3     -1391.80758452
     4     -1391.80758452
     5     -1391.80758452
     6     -1391.80758452
     7     -1391.80758452

 Number of blocks in overlap matrix:   180   Smallest eigenvalue:  0.17D+00
 Number of N-2 electron functions:     608
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1149936
 Total number of contracted configurations:      1202048
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:    403151 words, CPU-Time:      0.07 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    413743 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1391.80758452    -0.00000000    -0.85441195  0.15D-01  0.11D+00     0.20
    1     2     2     1.00000000     0.00000000 -1391.80758452     0.00000000    -0.85419137  0.15D-01  0.11D+00     0.20
    1     3     3     1.00000000     0.00000000 -1391.80758452    -0.00000000    -0.85421825  0.15D-01  0.11D+00     0.20
    1     4     4     1.00000000     0.00000000 -1391.80758452     0.00000000    -0.85437684  0.15D-01  0.11D+00     0.20
    1     5     5     1.00000000     0.00000000 -1391.80758452     0.00000000    -0.85394515  0.15D-01  0.11D+00     0.20
    1     6     6     1.00000000     0.00000000 -1391.80758452     0.00000000    -0.85400491  0.15D-01  0.11D+00     0.20
    1     7     7     1.00000000     0.00000000 -1391.80758452     0.00000000    -0.85402677  0.15D-01  0.11D+00     0.20
    2     1     1     1.07258306    -0.65510388 -1392.46268840    -0.65510388    -0.02934593  0.21D-02  0.37D-02    17.70
    2     2     2     1.07264831    -0.65508857 -1392.46267309    -0.65508857    -0.02937535  0.21D-02  0.37D-02    17.70
    2     3     3     1.07260162    -0.65508096 -1392.46266548    -0.65508096    -0.02937750  0.21D-02  0.37D-02    17.70
    2     4     4     1.07267029    -0.65504775 -1392.46263227    -0.65504775    -0.02944462  0.21D-02  0.37D-02    17.70
    2     5     5     1.07267632    -0.65503962 -1392.46262414    -0.65503962    -0.02945719  0.21D-02  0.37D-02    17.70
    2     6     6     1.07267345    -0.65496838 -1392.46255290    -0.65496838    -0.02957389  0.22D-02  0.37D-02    17.70
    2     7     7     1.07268267    -0.65495309 -1392.46253761    -0.65495309    -0.02959523  0.22D-02  0.37D-02    17.70
    3     1     1     1.06860972    -0.67944983 -1392.48703436    -0.02434596    -0.00085903  0.14D-03  0.83D-04    35.07
    3     2     2     1.06857862    -0.67944980 -1392.48703432    -0.02436123    -0.00085727  0.14D-03  0.84D-04    35.07
    3     3     3     1.06858265    -0.67944928 -1392.48703380    -0.02436832    -0.00085818  0.14D-03  0.84D-04    35.07
    3     4     4     1.06861251    -0.67944466 -1392.48702918    -0.02439691    -0.00086702  0.14D-03  0.84D-04    35.07
    3     5     5     1.06861213    -0.67944422 -1392.48702874    -0.02440459    -0.00086751  0.14D-03  0.84D-04    35.07
    3     6     6     1.06862767    -0.67943338 -1392.48701789    -0.02446499    -0.00088522  0.15D-03  0.85D-04    35.07
    3     7     7     1.06863136    -0.67943264 -1392.48701715    -0.02447955    -0.00088612  0.15D-03  0.86D-04    35.07
    4     1     1     1.06894934    -0.68017349 -1392.48775802    -0.00072366    -0.00004918  0.12D-04  0.39D-05    52.61
    4     2     2     1.06894796    -0.68017348 -1392.48775801    -0.00072369    -0.00004915  0.12D-04  0.39D-05    52.61
    4     3     3     1.06894412    -0.68017341 -1392.48775794    -0.00072414    -0.00004916  0.12D-04  0.39D-05    52.61
    4     4     4     1.06894212    -0.68017311 -1392.48775763    -0.00072845    -0.00004951  0.12D-04  0.39D-05    52.61
    4     5     5     1.06893597    -0.68017303 -1392.48775754    -0.00072881    -0.00004948  0.12D-04  0.39D-05    52.61
    4     6     6     1.06895234    -0.68017278 -1392.48775729    -0.00073940    -0.00005013  0.12D-04  0.40D-05    52.61
    4     7     7     1.06895098    -0.68017275 -1392.48775727    -0.00074011    -0.00005014  0.12D-04  0.40D-05    52.61
    5     1     1     1.06933739    -0.68022135 -1392.48780588    -0.00004786    -0.00000333  0.39D-06  0.38D-06    70.32
    5     2     2     1.06933648    -0.68022134 -1392.48780587    -0.00004786    -0.00000334  0.39D-06  0.38D-06    70.32
    5     3     3     1.06933686    -0.68022134 -1392.48780586    -0.00004792    -0.00000334  0.40D-06  0.38D-06    70.32
    5     4     4     1.06933622    -0.68022133 -1392.48780586    -0.00004822    -0.00000335  0.39D-06  0.38D-06    70.32
    5     5     5     1.06933698    -0.68022133 -1392.48780585    -0.00004831    -0.00000335  0.40D-06  0.38D-06    70.32
    5     6     6     1.06933370    -0.68022130 -1392.48780582    -0.00004852    -0.00000337  0.40D-06  0.38D-06    70.32
    5     7     7     1.06933306    -0.68022128 -1392.48780579    -0.00004853    -0.00000339  0.41D-06  0.38D-06    70.32
    6     1     1     1.06947495    -0.68022479 -1392.48780932    -0.00000344    -0.00000020  0.28D-07  0.33D-07    88.11
    6     2     2     1.06947496    -0.68022479 -1392.48780932    -0.00000345    -0.00000020  0.28D-07  0.33D-07    88.11
    6     3     3     1.06947541    -0.68022479 -1392.48780932    -0.00000346    -0.00000020  0.28D-07  0.32D-07    88.11
    6     4     4     1.06947529    -0.68022479 -1392.48780931    -0.00000346    -0.00000020  0.28D-07  0.32D-07    88.11
    6     5     5     1.06947523    -0.68022479 -1392.48780931    -0.00000346    -0.00000020  0.29D-07  0.32D-07    88.11
    6     6     6     1.06947445    -0.68022479 -1392.48780931    -0.00000349    -0.00000020  0.30D-07  0.33D-07    88.11
    6     7     7     1.06947440    -0.68022479 -1392.48780930    -0.00000351    -0.00000021  0.30D-07  0.33D-07    88.11
    7     1     1     1.06950288    -0.68022500 -1392.48780952    -0.00000020    -0.00000003  0.12D-07  0.20D-08   105.86
    7     2     2     1.06950288    -0.68022500 -1392.48780952    -0.00000020    -0.00000003  0.12D-07  0.20D-08   105.86
    7     3     3     1.06950307    -0.68022500 -1392.48780952    -0.00000020    -0.00000003  0.11D-07  0.20D-08   105.86
    7     4     4     1.06950310    -0.68022500 -1392.48780952    -0.00000021    -0.00000003  0.11D-07  0.20D-08   105.86
    7     5     5     1.06950285    -0.68022500 -1392.48780952    -0.00000021    -0.00000003  0.12D-07  0.21D-08   105.86
    7     6     6     1.06950286    -0.68022500 -1392.48780952    -0.00000021    -0.00000003  0.12D-07  0.21D-08   105.86
    7     7     7     1.06950306    -0.68022500 -1392.48780952    -0.00000021    -0.00000003  0.11D-07  0.20D-08   105.86
    8     1     1     1.06950785    -0.68022502 -1392.48780954    -0.00000002    -0.00000000  0.54D-09  0.25D-09   123.44
    8     2     2     1.06950785    -0.68022502 -1392.48780954    -0.00000002    -0.00000000  0.53D-09  0.25D-09   123.44
    8     3     3     1.06950790    -0.68022502 -1392.48780954    -0.00000002    -0.00000000  0.53D-09  0.25D-09   123.44
    8     4     4     1.06950790    -0.68022502 -1392.48780954    -0.00000002    -0.00000000  0.52D-09  0.25D-09   123.44
    8     5     5     1.06950778    -0.68022502 -1392.48780954    -0.00000002    -0.00000000  0.54D-09  0.26D-09   123.44
    8     6     6     1.06950779    -0.68022502 -1392.48780954    -0.00000002    -0.00000000  0.54D-09  0.26D-09   123.44
    8     7     7     1.06950791    -0.68022503 -1392.48780954    -0.00000002    -0.00000000  0.53D-09  0.25D-09   123.44


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.5%
 P   0.3%   6.4%  67.5%

 Initialization:   0.1%
 Other:           25.2%

 Total CPU:      123.4 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222//2/222          -0.0000000   0.9669579  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 22//22/222           0.9640623  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0747764
 2/222//222           0.0668820  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.8622847
 22/22//222          -0.0000000   0.0000000   0.8133803   0.0000000  -0.0000000   0.2939716   0.0000000
 2222///222           0.0000000  -0.0000000  -0.0000000   0.7527251  -0.4259239   0.0000000  -0.0000000
 2/22/2/222          -0.0000000   0.0000000  -0.4879812   0.0000000  -0.0000000   0.7140590   0.0000000
 2//222/222          -0.0000000   0.0000000   0.0000000   0.6005801   0.6223422  -0.0000000   0.0000000
 222/2//222          -0.0000000   0.0000000   0.0000000   0.0878409  -0.6052163  -0.0000000   0.0000000
 2/2/22/222          -0.0000000   0.0000000  -0.1878680   0.0000000  -0.0000000  -0.5819864   0.0000000
 22/2/2/222          -0.0334410  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.4311394

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966904   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.010207
 2          -0.000000   -0.000000   -0.000000    0.966958    0.000000    0.000000    0.000000
 3           0.000000    0.966896    0.000000   -0.000000    0.000000   -0.010953   -0.000000
 4          -0.000000   -0.000000    0.963826   -0.000000    0.077768   -0.000000   -0.000000
 5           0.000000   -0.000000    0.077768    0.000000   -0.963826   -0.000000    0.000000
 6           0.000000    0.010953   -0.000000    0.000000   -0.000000    0.966896   -0.000000
 7          -0.010207    0.000000    0.000000    0.000000    0.000000    0.000000    0.966904

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966958   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.966958   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.966958    0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.966958   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.966958    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.966958    0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.966958


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96690406 (fixed)   0.96695889 (relaxed)   0.96695793 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000199    0.00000000   -0.56509302
 Singles      0.01046183   -0.06940627   -0.07155177
 Pairs        0.05904616   -0.00644748   -0.04358023
 Total        1.06950998   -0.07585375   -0.68022502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80758452
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.34406919
 One electron energy                -1931.57429956
 Two electron energy                  539.08649002
 Virial quotient                       -0.95681003
 Correlation energy                    -0.68022502
 !MRCI STATE 1.1 Energy             -1392.487809544203

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53509197 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53509053 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53509197 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53042677 (Pople, fixed reference)
 Cluster corrected energies         -1392.53042540 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53042677 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96695793 (fixed)   0.96695889 (relaxed)   0.96695793 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000199    0.00000000   -0.57112146
 Singles      0.01046184   -0.06940628   -0.07155178
 Pairs        0.05904615    0.00000000   -0.03755178
 Total        1.06950998   -0.06940628   -0.68022502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80758452
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.34406937
 One electron energy                -1931.57430105
 Two electron energy                  539.08649151
 Virial quotient                       -0.95681003
 Correlation energy                    -0.68022502
 !MRCI STATE 2.1 Energy             -1392.487809543808

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53509197 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53509052 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53509197 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53042677 (Pople, fixed reference)
 Cluster corrected energies         -1392.53042540 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53042677 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96689587 (fixed)   0.96695887 (relaxed)   0.96695791 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000199    0.00000000   -0.57112141
 Singles      0.01046193   -0.06940630   -0.07155182
 Pairs        0.05904611    0.00000000   -0.03755179
 Total        1.06951003   -0.06940630   -0.68022502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80758452
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.34406969
 One electron energy                -1931.57430020
 Two electron energy                  539.08649066
 Virial quotient                       -0.95681003
 Correlation energy                    -0.68022502
 !MRCI STATE 3.1 Energy             -1392.487809543519

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53509200 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53509055 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53509200 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53042680 (Pople, fixed reference)
 Cluster corrected energies         -1392.53042543 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53042680 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96382560 (fixed)   0.96695887 (relaxed)   0.96695791 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000199   -0.00000000   -0.57112140
 Singles      0.01046193   -0.06940631   -0.07155182
 Pairs        0.05904611   -0.00000000   -0.03755180
 Total        1.06951003   -0.06940631   -0.68022502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80758452
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.34407076
 One electron energy                -1931.57430094
 Two electron energy                  539.08649140
 Virial quotient                       -0.95681003
 Correlation energy                    -0.68022502
 !MRCI STATE 4.1 Energy             -1392.487809543374

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53509201 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53509056 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53509201 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53042680 (Pople, fixed reference)
 Cluster corrected energies         -1392.53042543 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53042680 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96382566 (fixed)   0.96695892 (relaxed)   0.96695796 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000199   -0.00000000   -0.57112155
 Singles      0.01046186   -0.06940622   -0.07155178
 Pairs        0.05904606   -0.00000000   -0.03755170
 Total        1.06950991   -0.06940622   -0.68022502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80758452
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.34406239
 One electron energy                -1931.57429307
 Two electron energy                  539.08648353
 Virial quotient                       -0.95681004
 Correlation energy                    -0.68022502
 !MRCI STATE 5.1 Energy             -1392.487809541384

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53509192 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53509048 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53509192 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53042673 (Pople, fixed reference)
 Cluster corrected energies         -1392.53042535 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53042673 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96689592 (fixed)   0.96695892 (relaxed)   0.96695796 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000199   -0.00000000   -0.57112154
 Singles      0.01046186   -0.06940623   -0.07155178
 Pairs        0.05904606   -0.00000000   -0.03755170
 Total        1.06950992   -0.06940623   -0.68022502
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80758452
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.34406350
 One electron energy                -1931.57429394
 Two electron energy                  539.08648440
 Virial quotient                       -0.95681004
 Correlation energy                    -0.68022502
 !MRCI STATE 6.1 Energy             -1392.487809541383

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53509193 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53509048 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53509193 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53042673 (Pople, fixed reference)
 Cluster corrected energies         -1392.53042536 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53042673 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96690403 (fixed)   0.96695887 (relaxed)   0.96695790 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000199   -0.00000000   -0.00003308
 Singles      0.01046195   -0.06940629   -0.07155184
 Pairs        0.05904609   -0.61078470   -0.60864011
 Total        1.06951004   -0.68019100   -0.68022503
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.80758452
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.34406799
 One electron energy                -1931.57429782
 Two electron energy                  539.08648828
 Virial quotient                       -0.95681004
 Correlation energy                    -0.68022503
 !MRCI STATE 7.1 Energy             -1392.487809540361

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53509201 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53509056 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53509201 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53042680 (Pople, fixed reference)
 Cluster corrected energies         -1392.53042543 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53042680 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.48       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       66.18       700     1000      520     2100     2140     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       128.93    126.41      0.90      0.55      0.90
 REAL TIME  *       136.79 SEC
 DISK USED  *       102.75 MB (local),      434.61 MB (total)
 SF USED    *       661.05 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1392.53509197  AU                              
 SETTING HLSDIAG(2)     =     -1392.53509197  AU                              
 SETTING HLSDIAG(3)     =     -1392.53509200  AU                              
 SETTING HLSDIAG(4)     =     -1392.53509201  AU                              
 SETTING HLSDIAG(5)     =     -1392.53509192  AU                              
 SETTING HLSDIAG(6)     =     -1392.53509193  AU                              
 SETTING HLSDIAG(7)     =     -1392.53509201  AU                              


         HLSDIAG
    -1392.535092
    -1392.535092
    -1392.535092
    -1392.535092
    -1392.535092
    -1392.535092
    -1392.535092
                                                  

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

 Time for Seward_LS:       3.43 sec

        8293450. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2036 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      3.43 sec, REAL time:      3.47 sec


 SORTLS1 read     8314052. and wrote     8314052. SO integrals in    36 records. CPU time:      0.07 sec, REAL time:      0.12 sec
 SORTLS2 read     8314052. and wrote    41413707. SO integrals in    12 records. CPU time:      0.10 sec, REAL time:      0.16 sec

 FILE SIZES: FILE 1:   171.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      163.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       66.18       700     1000      520     2100     2140     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       132.81      3.86    126.41      0.90      0.55      0.90
 REAL TIME  *       141.89 SEC
 DISK USED  *       102.81 MB (local),      878.94 MB (total)
 SF USED    *       661.05 MB
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

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=   7

 Original energies:  -1392.487810  -1392.487810  -1392.487810  -1392.487810  -1392.487810  -1392.487810  -1392.487810
 Replaced energies:  -1392.535092  -1392.535092  -1392.535092  -1392.535092  -1392.535092  -1392.535092  -1392.535092



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1392.53509201

 Wigner-Eckart theorem used for 13 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     243.76
                            0.00     493.90       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                         -493.90      -0.00      -0.00      -0.00       0.00      -0.00      38.31      -0.00       0.00      97.22

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -243.76      -0.00      -0.00
                           -0.00       0.00       0.00    -710.72     -26.27      -0.00       0.00      -0.00     -97.22       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     205.82       0.00
                            0.00       0.00     710.72       0.00       0.00    -192.04       0.00    -144.33      -0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.02       0.00       0.00      -0.00    -198.62      -0.00
                            0.00      -0.00      26.27      -0.00      -0.00    -266.06       0.00    -221.38      -0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.02       0.00    -186.68       0.00       0.00
                            0.00       0.00       0.00     192.04     266.06      -0.00       0.00       0.00     268.99       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      89.03
                            0.00     -38.31      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    8   1.1  1.5  0.5      -0.00      -0.00    -243.76       0.00      -0.00    -186.68       0.00       0.01       0.00       0.00
                            0.00       0.00       0.00     144.33     221.38      -0.00       0.00       0.00     164.63       0.00

    9   2.1  1.5  0.5       0.00      -0.00      -0.00     205.82    -198.62       0.00      -0.00       0.00       0.01       0.00
                           -0.00      -0.00      97.22       0.00       0.00    -268.99       0.00    -164.63      -0.00      -0.00

   10   3.1  1.5  0.5     243.76       0.00      -0.00       0.00      -0.00       0.00      89.03       0.00       0.00       0.00
                           -0.00     -97.22      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   11   4.1  1.5  0.5      -0.00    -205.82      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -144.33      -0.00       0.00      -0.00      -0.00      -0.00     -39.27       0.00       0.00     236.91

   12   5.1  1.5  0.5       0.00     198.62       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                         -221.38      -0.00       0.00       0.00       0.00      -0.00     364.88       0.00      -0.00       8.76

   13   6.1  1.5  0.5     186.68      -0.00      -0.00      -0.00       0.00       0.00     319.88       0.00       0.00       0.00
                            0.00     268.99       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   14   7.1  1.5  0.5      -0.00       0.00     -89.03      -0.00       0.00    -319.88       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      39.27    -364.88       0.00      -0.00       0.00     -12.77      -0.00

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -281.47
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     112.26

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     281.47       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -112.26      -0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -237.66      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -166.66      -0.00       0.00

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     229.34       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -255.63      -0.00       0.00

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     215.55      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     310.61       0.00

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -102.80
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5      -0.00       0.00     186.68      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          144.33     221.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5    -205.82     198.62      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -268.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00       0.00      -0.00     -89.03       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -39.27       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     364.88       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00      -0.00       0.00    -319.88       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00      -0.00     319.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           39.27    -364.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00     281.47      -0.00       0.00     215.55
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     166.66     255.63      -0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -237.66     229.34      -0.00
                           -0.00       0.00      -0.00      12.77      -0.00       0.00     112.26       0.00       0.00    -310.61

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00    -281.47      -0.00      -0.00      -0.00       0.00      -0.00
                         -236.91      -8.76      -0.00       0.00      -0.00    -112.26       0.00      -0.00      -0.00      -0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00     237.66       0.00      -0.00       0.00      -0.00
                            0.00       0.00     -64.01       0.00    -166.66      -0.00       0.00       0.00      -0.00      -0.00

   12   5.1  1.5  0.5       0.00       0.02       0.00       0.00      -0.00    -229.34      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00     -88.69       0.00    -255.63      -0.00       0.00       0.00      -0.00      -0.00

   13   6.1  1.5  0.5       0.00       0.00       0.02       0.00    -215.55       0.00       0.00       0.00      -0.00       0.00
                           64.01      88.69      -0.00       0.00       0.00     310.61       0.00       0.00       0.00       0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00     102.80       0.00      -0.00     369.37
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      45.35    -421.33       0.00

   15   1.1  1.5 -0.5       0.00      -0.00    -215.55       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                          166.66     255.63      -0.00       0.00      -0.00    -164.63      -0.00       0.00       0.00       0.00

   16   2.1  1.5 -0.5     237.66    -229.34       0.00      -0.00       0.00       0.01       0.00       0.00       0.00       0.00
                            0.00       0.00    -310.61       0.00     164.63       0.00       0.00       0.00      -0.00       0.00

   17   3.1  1.5 -0.5       0.00      -0.00       0.00     102.80       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     236.91       8.76       0.00

   18   4.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     -45.35      -0.00      -0.00    -236.91      -0.00      -0.00      64.01

   19   5.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.02       0.00
                            0.00       0.00      -0.00     421.33      -0.00       0.00      -8.76       0.00       0.00      88.69

   20   6.1  1.5 -0.5      -0.00       0.00       0.00     369.37       0.00       0.00       0.00       0.00       0.00       0.02
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -64.01     -88.69       0.00

   21   7.1  1.5 -0.5      -0.00       0.00    -369.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           45.35    -421.33       0.00      -0.00      -0.00      12.77       0.00       0.00       0.00       0.00

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00    -243.76       0.00      -0.00    -186.68
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     144.33     221.38      -0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     205.82    -198.62       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      97.22       0.00       0.00    -268.99

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00     243.76       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     -97.22      -0.00      -0.00      -0.00      -0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    -205.82      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -144.33      -0.00       0.00      -0.00      -0.00      -0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     198.62       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00    -221.38      -0.00       0.00       0.00       0.00      -0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00     186.68      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     268.99       0.00       0.00       0.00      -0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00     -89.03      -0.00       0.00    -319.88
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      39.27    -364.88       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.5  0.5    -102.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -45.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          421.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.5  0.5    -369.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   1.1  1.5 -0.5       0.00      -0.00       0.00     243.76      -0.00       0.00     186.68      -0.00
                            0.00      -0.00       0.00       0.00     144.33     221.38      -0.00       0.00

   16   2.1  1.5 -0.5       0.00      -0.00      -0.00       0.00    -205.82     198.62      -0.00       0.00
                          -12.77      -0.00       0.00      97.22       0.00       0.00    -268.99       0.00

   17   3.1  1.5 -0.5       0.00    -243.76      -0.00      -0.00      -0.00       0.00      -0.00     -89.03
                           -0.00      -0.00     -97.22       0.00      -0.00      -0.00      -0.00       0.00

   18   4.1  1.5 -0.5       0.00       0.00     205.82       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00    -144.33      -0.00       0.00       0.00      -0.00      -0.00     -39.27

   19   5.1  1.5 -0.5       0.00      -0.00    -198.62      -0.00      -0.00       0.00       0.00       0.00
                           -0.00    -221.38      -0.00       0.00       0.00      -0.00      -0.00     364.88

   20   6.1  1.5 -0.5       0.00    -186.68       0.00       0.00       0.00      -0.00       0.00    -319.88
                           -0.00       0.00     268.99       0.00       0.00       0.00       0.00      -0.00

   21   7.1  1.5 -0.5       0.00       0.00      -0.00      89.03       0.00      -0.00     319.88       0.00
                            0.00      -0.00      -0.00      -0.00      39.27    -364.88       0.00       0.00

   22   1.1  1.5 -1.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -493.90      -0.00       0.00       0.00       0.00       0.00

   23   2.1  1.5 -1.5      -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                            0.00     493.90       0.00       0.00       0.00      -0.00       0.00     -38.31

   24   3.1  1.5 -1.5      89.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     710.72      26.27       0.00      -0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -39.27      -0.00      -0.00    -710.72      -0.00      -0.00     192.04      -0.00

   26   5.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.02       0.00       0.00
                          364.88      -0.00       0.00     -26.27       0.00       0.00     266.06      -0.00

   27   6.1  1.5 -1.5     319.88       0.00       0.00       0.00       0.00       0.00       0.02       0.00
                           -0.00      -0.00      -0.00      -0.00    -192.04    -266.06       0.00      -0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      38.31       0.00       0.00       0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1392.53847779    -0.00338579     -743.09      0.00000000        0.00      0.0000
     2 -1392.53847779    -0.00338579     -743.09      0.00000000        0.00      0.0000
     3 -1392.53847779    -0.00338578     -743.09      0.00000001        0.00      0.0000
     4 -1392.53847779    -0.00338578     -743.09      0.00000001        0.00      0.0000
     5 -1392.53847778    -0.00338578     -743.09      0.00000001        0.00      0.0000
     6 -1392.53847778    -0.00338578     -743.09      0.00000001        0.00      0.0000
     7 -1392.53847775    -0.00338575     -743.09      0.00000004        0.01      0.0000
     8 -1392.53847775    -0.00338575     -743.09      0.00000004        0.01      0.0000
     9 -1392.53847760    -0.00338559     -743.05      0.00000019        0.04      0.0000
    10 -1392.53847760    -0.00338559     -743.05      0.00000019        0.04      0.0000
    11 -1392.53509204    -0.00000003       -0.01      0.00338575      743.09      0.0921
    12 -1392.53509204    -0.00000003       -0.01      0.00338575      743.09      0.0921
    13 -1392.53509200     0.00000001        0.00      0.00338580      743.10      0.0921
    14 -1392.53509200     0.00000001        0.00      0.00338580      743.10      0.0921
    15 -1392.53509198     0.00000003        0.01      0.00338581      743.10      0.0921
    16 -1392.53509198     0.00000003        0.01      0.00338581      743.10      0.0921
    17 -1392.53509188     0.00000013        0.03      0.00338592      743.12      0.0921
    18 -1392.53509188     0.00000013        0.03      0.00338592      743.12      0.0921
    19 -1392.53245864     0.00263336      577.96      0.00601915     1321.05      0.1638
    20 -1392.53245864     0.00263336      577.96      0.00601915     1321.05      0.1638
    21 -1392.53245860     0.00263341      577.97      0.00601920     1321.06      0.1638
    22 -1392.53245860     0.00263341      577.97      0.00601920     1321.06      0.1638
    23 -1392.53245855     0.00263346      577.98      0.00601924     1321.07      0.1638
    24 -1392.53245855     0.00263346      577.98      0.00601924     1321.07      0.1638
    25 -1392.53057766     0.00451435      990.79      0.00790014     1733.88      0.2150
    26 -1392.53057766     0.00451435      990.79      0.00790014     1733.88      0.2150
    27 -1392.53057757     0.00451444      990.80      0.00790022     1733.90      0.2150
    28 -1392.53057757     0.00451444      990.80      0.00790022     1733.90      0.2150


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5  -0.154357650  -0.006567994  -0.003856144  -0.087113712   0.006187727  -0.149090354   0.000021983   0.550170425
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000001   0.000000000  -0.000000000
                        -0.002379732  -0.000101259  -0.005014157  -0.113274246  -0.004936239   0.118936355   0.000022957   0.574548878

    3    3.1  1.5  1.5   0.003146285  -0.073942391  -0.029313028   0.001297560  -0.004103212  -0.000170296  -0.008175717   0.000000327
                        -0.007609520   0.178835079  -0.065305824   0.002890804  -0.017038840  -0.000707166   0.007688271  -0.000000307

    4    4.1  1.5  1.5  -0.000275964   0.006485576  -0.108101745   0.004785193  -0.058990165  -0.002448281  -0.013271817   0.000000530
                        -0.000114102   0.002681571   0.048522310  -0.002147871   0.014205730   0.000589583  -0.014113267   0.000000564

    5    5.1  1.5  1.5   0.007711586  -0.181233781   0.206913339  -0.009159152   0.396095162   0.016439217   0.016784112  -0.000000671
                         0.003188486  -0.074934174  -0.092874662   0.004111156  -0.095385747  -0.003958814   0.017848246  -0.000000713

    6    6.1  1.5  1.5   0.005800552  -0.136321624  -0.131258293   0.005810232   0.006702922   0.000278193   0.004160344  -0.000000166
                        -0.014029059   0.329703817  -0.292427348   0.012944484   0.027834290   0.001155212  -0.003912299   0.000000156

    7    7.1  1.5  1.5  -0.291806944  -0.012416529  -0.015850391  -0.358074362  -0.003631961   0.087510391  -0.000005265  -0.131754390
                         0.000000000  -0.000000000   0.000000001  -0.000000002  -0.000000001   0.000000002   0.000000000   0.000000000

    8    1.1  1.5  0.5   0.008930326  -0.209875964  -0.031339475   0.001387262  -0.050618737  -0.002100840  -0.033724861   0.000001347
                        -0.021598645   0.507600365  -0.069820501   0.003090649  -0.210197406  -0.008723865   0.031714145  -0.000001267

    9    2.1  1.5  0.5   0.004805613  -0.112939067   0.506689982  -0.022428957   0.158321537   0.006570851   0.051702760  -0.000002066
                         0.001986962  -0.046696569  -0.227431744   0.010067411  -0.038126235  -0.001582361   0.054980779  -0.000002197

   10    3.1  1.5  0.5   0.324337801   0.013800733   0.001451710   0.032795401  -0.000829950   0.019997252  -0.000014060  -0.351875837
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   11    4.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000000
                         0.063902709   0.002719092  -0.011163943  -0.252203340   0.001393975  -0.033587163   0.000015171   0.379684634

   12    5.1  1.5  0.5   0.000000000   0.000000000   0.000000001  -0.000000004  -0.000000001   0.000000003   0.000000000   0.000000000
                         0.155463530   0.006615050   0.018950511   0.428108820   0.019324744  -0.465620577   0.000005130   0.128380908

   13    6.1  1.5  0.5   0.418404679   0.017803325   0.014030377   0.316958623  -0.012612697   0.303896980   0.000009404   0.235362038
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   14    7.1  1.5  0.5   0.004009245  -0.094223245  -0.047265459   0.002092235   0.147979714   0.006141632  -0.023260680   0.000000929
                        -0.009696653   0.227885809  -0.105301629   0.004661244   0.614494823   0.025503501   0.021873851  -0.000000874

   15    1.1  1.5 -0.5   0.549277754   0.023372038  -0.003387714  -0.076531464   0.008973257  -0.216206397   0.000001850   0.046294203
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   16    2.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000001  -0.000000002  -0.000000000   0.000000002   0.000000000   0.000000000
                        -0.122212121  -0.005200186   0.024584769   0.555391696  -0.006758694   0.162847533   0.000003016   0.075472256

   17    3.1  1.5 -0.5  -0.005273183   0.123927663  -0.013429649   0.000594472  -0.004681802  -0.000194310  -0.256338006   0.000010243
                         0.012753579  -0.299728116  -0.029919607   0.001324411  -0.019441471  -0.000806883   0.241054831  -0.000009632

   18    4.1  1.5 -0.5   0.002512776  -0.059053982   0.230087894  -0.010184988   0.032653680   0.001355232  -0.260105428   0.000010393
                         0.001038950  -0.024416869  -0.103276743   0.004571611  -0.007863502  -0.000326360  -0.276596435   0.000011052

   19    5.1  1.5 -0.5   0.006113121  -0.143667469  -0.390568406   0.017288761   0.452679656   0.018787654  -0.087948176   0.000003514
                         0.002527574  -0.059401747   0.175309673  -0.007760194  -0.109012158  -0.004524354  -0.093524200   0.000003737

   20    6.1  1.5 -0.5  -0.006802551   0.159870092  -0.129793896   0.005745410  -0.071149056  -0.002952913   0.171458876  -0.000006851
                         0.016452467  -0.386657508  -0.289164855   0.012800068  -0.295450819  -0.012262154  -0.161236294   0.000006443

   21    7.1  1.5 -0.5   0.246596760   0.010492813  -0.005109271  -0.115422947  -0.026232580   0.632061613   0.000001276   0.031929996
                         0.000000000   0.000000000   0.000000001  -0.000000003  -0.000000001   0.000000002  -0.000000000   0.000000000

   22    1.1  1.5 -1.5  -0.002509594   0.058979197  -0.035672884   0.001579083  -0.034905375  -0.001448685  -0.400793618   0.000016015
                         0.006069636  -0.142645500  -0.079474802   0.003518003  -0.144946709  -0.006015752   0.376897828  -0.000015060

   23    2.1  1.5 -1.5   0.000093576  -0.002199166  -0.103341346   0.004574471   0.115630775   0.004799047   0.393598445  -0.000015727
                         0.000038690  -0.000909282   0.046385569  -0.002053287  -0.027845652  -0.001155684   0.418553075  -0.000016724

   24    3.1  1.5 -1.5  -0.193518637  -0.008234313   0.003168661   0.071582849  -0.000727382   0.017525935  -0.000000448  -0.011222828
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   25    4.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.007018085  -0.000298623   0.005245133   0.118492202  -0.002518271   0.060676538   0.000000774   0.019373317

   26    5.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.196114287   0.008344759  -0.010039505  -0.226801307   0.016909171  -0.407418480  -0.000000979  -0.024500332

   27    6.1  1.5 -1.5  -0.356774708  -0.015180939   0.014188674   0.320534699   0.001188236  -0.028629999   0.000000228   0.005710915
                         0.000000000   0.000000000  -0.000000001   0.000000002   0.000000000  -0.000000001  -0.000000000  -0.000000000

   28    7.1  1.5 -1.5  -0.004744286   0.111497805  -0.146630707   0.006490702   0.020488135   0.000850324   0.095981747  -0.000003835
                         0.011474404  -0.269665594  -0.326675197   0.014460487   0.085078228   0.003531019  -0.090259201   0.000003606


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5  -0.000000000  -0.000880582  -0.002119540   0.065077020  -0.017080007  -0.268962757  -0.039980114  -0.195669467
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000689990   0.000528720  -0.016233483   0.017203889   0.270913561   0.044547693   0.218023977

    3    3.1  1.5  1.5  -0.580421693  -0.000000002   0.213828379   0.006964330   0.181267869  -0.011511097   0.000616160  -0.000125897
                        -0.321729243   0.000000007  -0.010036346  -0.000326881   0.055867132  -0.003547744  -0.038924544   0.007953247

    4    4.1  1.5  1.5  -0.336882590   0.000000007   0.010204116   0.000332345   0.000496821  -0.000031550  -0.087898797   0.017959899
                         0.607759374   0.000000002   0.217402773   0.007080747  -0.001611997   0.000102367  -0.001391402   0.000284298

    5    5.1  1.5  1.5  -0.060969026   0.000000001   0.000829104   0.000027004   0.013139213  -0.000834383   0.633453174  -0.129430158
                         0.109992319   0.000000000   0.017664385   0.000575324  -0.042631812   0.002707258   0.010027303  -0.002048826

    6    6.1  1.5  1.5   0.212448252   0.000000001  -0.046215289  -0.001505219   0.586676622  -0.037255867   0.001702880  -0.000347941
                         0.117760615  -0.000000002   0.002169182   0.000070650   0.180814947  -0.011482335  -0.107575753   0.021980388

    7    7.1  1.5  1.5   0.000000000   0.001389019  -0.022346619   0.686116455   0.002952468   0.046493179   0.005691859   0.027856926
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    8    1.1  1.5  0.5   0.024294284   0.000000000   0.459157841   0.014954641  -0.154572507   0.009815855  -0.003351417   0.000684777
                         0.013466384  -0.000000000  -0.021551242  -0.000701918  -0.047639566   0.003025267   0.211718483  -0.043259325

    9    2.1  1.5  0.5  -0.014222285   0.000000000  -0.021775048  -0.000709207   0.043229652  -0.002745223  -0.214911068   0.043911649
                         0.025657980   0.000000000  -0.463926105  -0.015109942  -0.140263990   0.008907218  -0.003401954   0.000695103

   10    3.1  1.5  0.5   0.000000000   0.011430222   0.000360984  -0.011083416   0.021940264   0.345498331  -0.048428608  -0.237017835
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   11    4.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.011923201   0.000086255  -0.002648330   0.019572054   0.308205592  -0.064475991  -0.315556450

   12    5.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.001998623  -0.000493008   0.015137004  -0.016231499  -0.255601112  -0.056316266  -0.275621372

   13    6.1  1.5  0.5  -0.000000000  -0.002746757   0.000409678  -0.012578484   0.012751055   0.200793763   0.064465694   0.315506053
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   14    7.1  1.5  0.5   0.001401506   0.000000000  -0.023043401  -0.000750517   0.244607642  -0.015533378  -0.002688184   0.000549262
                         0.000776859  -0.000000000   0.001081576   0.000035227   0.075388581  -0.004787419   0.169820180  -0.034698465

   15    1.1  1.5 -0.5   0.000000000   0.027776892  -0.014971105   0.459663333   0.010271477   0.161747297  -0.043264744  -0.211745007
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   16    2.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.029336075  -0.015126577   0.464436845  -0.009320664  -0.146774622   0.043917150   0.214937992

   17    3.1  1.5 -0.5  -0.009997125  -0.000000000   0.011071227   0.000360587   0.330172709  -0.020967037   0.003751425  -0.000766509
                        -0.005541432   0.000000000  -0.000519644  -0.000016925   0.101759911  -0.006462084  -0.236988145   0.048422542

   18    4.1  1.5 -0.5  -0.005780431   0.000000000  -0.000124167  -0.000004044   0.090776050  -0.005764573  -0.315516922   0.064467914
                         0.010428295   0.000000000  -0.002645417  -0.000086160  -0.294534201   0.018703876  -0.004994503   0.001020501

   19    5.1  1.5 -0.5   0.000968943  -0.000000000   0.000709696   0.000023115  -0.075282408   0.004780677  -0.275586846   0.056309212
                        -0.001748040  -0.000000000   0.015120358   0.000492466   0.244263152  -0.015511502  -0.004362426   0.000891352

   20    6.1  1.5 -0.5   0.002402375   0.000000000   0.012564652   0.000409227   0.191886948  -0.012185443  -0.004993706   0.001020338
                         0.001331642  -0.000000000  -0.000589740  -0.000019208   0.059139954  -0.003755579   0.315466532  -0.064457618

   21    7.1  1.5 -0.5   0.000000000   0.001602414   0.000751343  -0.023068769  -0.016254391  -0.255961592  -0.034702812  -0.169841455
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   22    1.1  1.5 -1.5  -0.000770176  -0.000000000   0.065005455   0.002117209   0.257032101  -0.016322371  -0.003096979   0.000632789
                        -0.000426911   0.000000000  -0.003051126  -0.000099374   0.079217825  -0.005030589   0.195644956  -0.039975106

   23    2.1  1.5 -1.5   0.000334511  -0.000000000   0.000761104   0.000024789  -0.079792397   0.005067076  -0.217996666   0.044542113
                        -0.000603480  -0.000000000   0.016215631   0.000528139   0.258896371  -0.016440758  -0.003450798   0.000705083

   24    3.1  1.5 -1.5   0.000000002   0.663625683   0.006971997  -0.214063785   0.012045408   0.189681778  -0.007954244  -0.038929420
                        -0.000000007   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   25    4.1  1.5 -1.5   0.000000007  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000002   0.694882246  -0.007088542   0.217642114   0.000107119   0.001686821  -0.017962149  -0.087909809

   26    5.1  1.5 -1.5   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.125759820  -0.000575957   0.017683831   0.002832921   0.044610652   0.129446373   0.633532533

   27    6.1  1.5 -1.5  -0.000000001  -0.242902907  -0.001506876   0.046266168   0.038985172   0.613908384  -0.021983142  -0.107589230
                         0.000000002  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   28    7.1  1.5 -1.5   0.001214867   0.000000000   0.685361933   0.022322044  -0.044430834   0.002821502   0.000440908  -0.000090089
                         0.000673404  -0.000000000  -0.032168461  -0.001047718  -0.013693675   0.000869593  -0.027853437   0.005691146


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5   0.001101885  -0.412439261   0.093458172  -0.002709331  -0.025730730  -0.452798129  -0.001299263  -0.010292443
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.001076143  -0.402803897  -0.054711008   0.001586060   0.026072831   0.458818271   0.001202047   0.009522317

    3    3.1  1.5  1.5  -0.000018714  -0.000000050  -0.011304270  -0.389939916  -0.082083409   0.004664476   0.071333554  -0.009004768
                        -0.000069267  -0.000000185   0.001399511   0.048276040   0.029517911  -0.001677386   0.038518135  -0.004862324

    4    4.1  1.5  1.5  -0.003388637  -0.000009053  -0.001431591  -0.049382612  -0.005455734   0.000310028   0.011205605  -0.001414536
                         0.000915530   0.000002446  -0.011563383  -0.398878028  -0.015171306   0.000862125  -0.020752190   0.002619646

    5    5.1  1.5  1.5   0.016088128   0.000042982  -0.000001939  -0.000066891   0.149483632  -0.008494565  -0.104241529   0.013158895
                        -0.004346635  -0.000011613  -0.000015663  -0.000540300   0.415684101  -0.023621686   0.193049811  -0.024369579

    6    6.1  1.5  1.5  -0.000975080  -0.000002605   0.002239872   0.077264200  -0.399768881   0.022717287   0.197572891  -0.024940549
                        -0.003609046  -0.000009642  -0.000277305  -0.009565601   0.143760380  -0.008169335   0.106683866  -0.013467203

    7    7.1  1.5  1.5  -0.000076298   0.028558774   0.497449641  -0.014420952   0.005419816   0.095375557  -0.001207735  -0.009567382
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    8    1.1  1.5  0.5   0.002156775   0.000005762  -0.005546176  -0.191314904   0.043678336  -0.002482067  -0.364853910   0.046057213
                         0.007982837   0.000021327   0.000686638   0.023685510  -0.015707111   0.000892573  -0.197010964   0.024869614

    9    2.1  1.5  0.5  -0.003228351  -0.000008625   0.000633442   0.021850536  -0.010168216   0.000577820   0.200947365  -0.025366524
                         0.000872225   0.000002330   0.005116500   0.176493269  -0.028275776   0.001606801  -0.372143916   0.046977464

   10    3.1  1.5  0.5   0.001485975  -0.556205400   0.141835745  -0.004111786  -0.001104728  -0.019440519   0.061258222   0.485272565
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000002

   11    4.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000002
                        -0.001503819   0.562884580  -0.046485975   0.001347618  -0.001615951  -0.028436795   0.064240133   0.508894535

   12    5.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000202581   0.075826691   0.402611672  -0.011671621   0.007421893   0.130607226   0.008458086   0.067002877

   13    6.1  1.5  0.5  -0.000495992   0.185651355   0.400904245  -0.011622123  -0.001686706  -0.029681913  -0.021136095  -0.167434948
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001

   14    7.1  1.5  0.5   0.001073569   0.000002868   0.001842282   0.063549392   0.383938352  -0.021817701   0.020779020  -0.002623033
                         0.003973582   0.000010616  -0.000228082  -0.007867656  -0.138067584   0.007845836   0.011220093  -0.001416365

   15    1.1  1.5 -0.5   0.000022092  -0.008269061  -0.192775507   0.005588518  -0.002637678  -0.046416703  -0.052342760  -0.414646471
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000002

   16    2.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000002
                        -0.000008934   0.003344103  -0.177840715   0.005155562  -0.001707537  -0.030048496   0.053388601   0.422931363

   17    3.1  1.5 -0.5  -0.145072102  -0.000387579  -0.004080632  -0.140761098  -0.018293620   0.001039554  -0.426998914   0.053902067
                        -0.536953008  -0.001434539   0.000505198   0.017426758   0.006578545  -0.000373833  -0.230567538   0.029105617

   18    4.1  1.5 -0.5   0.543400995   0.001451766  -0.000165576  -0.005711535   0.009622827  -0.000546827  -0.241791044   0.030522412
                        -0.146814197  -0.000392233  -0.001337407  -0.046133765   0.026759158  -0.001520617   0.447784255  -0.056525897

   19    5.1  1.5 -0.5   0.073202039   0.000195569   0.001434043   0.049467192  -0.044196637   0.002511520  -0.031835075   0.004018690
                        -0.019777473  -0.000052838   0.011583189   0.399561204  -0.122902013   0.006984036   0.058956879  -0.007442402

   20    6.1  1.5 -0.5   0.048422458   0.000129367  -0.011534066  -0.397866714  -0.027930819   0.001587198   0.147328627  -0.018597981
                         0.179225253   0.000478823   0.001427961   0.049257407   0.010044167  -0.000570770   0.079553361  -0.010042392

   21    7.1  1.5 -0.5   0.000010997  -0.004116054   0.064034562  -0.001856347  -0.023185538  -0.408008965   0.002981005   0.023614787
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   22    1.1  1.5 -1.5   0.107574343   0.000287399   0.002688803   0.092750067   0.426085165  -0.024212738  -0.009056481   0.001143242
                         0.398163163   0.001063744  -0.000332884  -0.011482810  -0.153223946   0.008707112  -0.004890248   0.000617319

   23    2.1  1.5 -1.5   0.388861316   0.001038893   0.000194872   0.006722110   0.155261123  -0.008822877   0.004524338  -0.000571128
                        -0.105061202  -0.000280685   0.001574043   0.054296479   0.431750147  -0.024534656  -0.008378836   0.001057700

   24    3.1  1.5 -1.5   0.000000192  -0.000071750   0.392916931  -0.011390573  -0.004956910  -0.087229543  -0.010233672  -0.081068629
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   25    4.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000009378  -0.003510136  -0.401923280   0.011651665   0.000916175   0.016122455  -0.002977156  -0.023584295

   26    5.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001
                        -0.000044523   0.016664966  -0.000544425   0.000015783  -0.025102623  -0.441744981   0.027695359   0.219395820

   27    6.1  1.5 -1.5   0.000009988  -0.003738448  -0.077854077   0.002256972  -0.024141524  -0.424831972  -0.028344250  -0.224536177
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001

   28    7.1  1.5 -1.5  -0.007448833  -0.000019901   0.014311689   0.493680613  -0.089748847   0.005100073  -0.008418489   0.001062705
                        -0.027570245  -0.000073657  -0.001771841  -0.061119531   0.032274469  -0.001834031  -0.004545750   0.000573831


   Nr   State  S   Sz       25            26            27            28

    1    1.1  1.5  1.5   0.000000000   0.033103418  -0.375598801   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.020109620   0.377425050  -0.000000000

    3    3.1  1.5  1.5   0.508009203   0.000000000   0.000000000  -0.045612457
                         0.062473421   0.000000000   0.000000000  -0.007765087

    4    4.1  1.5  1.5  -0.064694146  -0.000000000  -0.000000000   0.001031371
                         0.526067268   0.000000000   0.000000000  -0.006058317

    5    5.1  1.5  1.5  -0.007821363  -0.000000000  -0.000000000  -0.040331628
                         0.063600235   0.000000000   0.000000000   0.236909727

    6    6.1  1.5  1.5  -0.150728174  -0.000000000  -0.000000000  -0.232555227
                        -0.018536091  -0.000000000  -0.000000000  -0.039590316

    7    7.1  1.5  1.5  -0.000000000   0.166749833   0.038153056  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000

    8    1.1  1.5  0.5  -0.375573438  -0.000000000  -0.000000000   0.018838188
                        -0.046186875  -0.000000000  -0.000000000   0.003207022

    9    2.1  1.5  0.5  -0.046070426  -0.000000000  -0.000000000  -0.003374590
                         0.374626523   0.000000000   0.000000000   0.019822486

   10    3.1  1.5  0.5  -0.000000000   0.080102810  -0.123102536  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000

   11    4.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.031126312  -0.061211451   0.000000000

   12    5.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.214455931   0.421756195  -0.000000000

   13    6.1  1.5  0.5  -0.000000000   0.248151341  -0.381361439  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000

   14    7.1  1.5  0.5   0.002274827   0.000000000   0.000000000   0.499230320
                         0.000279751   0.000000000   0.000000000   0.084989215

   15    1.1  1.5 -0.5   0.000000000  -0.378402741   0.019109221   0.000000000
                        -0.000000000   0.000000001   0.000000000  -0.000000000

   16    2.1  1.5 -0.5   0.000000000  -0.000000001  -0.000000000   0.000000000
                         0.000000000  -0.377448693  -0.020107680   0.000000000

   17    3.1  1.5 -0.5  -0.079503884  -0.000000000  -0.000000000   0.121356530
                        -0.009777145  -0.000000000  -0.000000000   0.020659795

   18    4.1  1.5 -0.5   0.003799198   0.000000000   0.000000000   0.010272868
                        -0.030893582  -0.000000000  -0.000000000  -0.060343268

   19    5.1  1.5 -0.5  -0.026175945  -0.000000000  -0.000000000  -0.070781617
                         0.212852452   0.000000000   0.000000000   0.415774279

   20    6.1  1.5 -0.5  -0.246295923  -0.000000000  -0.000000000   0.375952456
                        -0.030288720  -0.000000000  -0.000000000   0.064002331

   21    7.1  1.5 -0.5  -0.000000000   0.002291964   0.506412953  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000

   22    1.1  1.5 -1.5   0.032855905   0.000000000   0.000000000  -0.370271551
                         0.004040519  -0.000000000  -0.000000000  -0.063035211

   23    2.1  1.5 -1.5  -0.002454529   0.000000000   0.000000000   0.063341702
                         0.019959261  -0.000000000  -0.000000000  -0.372071897

   24    3.1  1.5 -1.5   0.000000000  -0.511836183   0.046268702   0.000000000
                        -0.000000000   0.000000001   0.000000000  -0.000000000

   25    4.1  1.5 -1.5  -0.000000000   0.000000001   0.000000000  -0.000000000
                        -0.000000000   0.530030285  -0.006145480  -0.000000000

   26    5.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.064079354   0.240318245  -0.000000000

   27    6.1  1.5 -1.5  -0.000000000   0.151863653   0.235901095  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000

   28    7.1  1.5 -1.5   0.165503051   0.000000000   0.000000000   0.037611918
                         0.020353060   0.000000000   0.000000000   0.006403071


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   2.383%   0.004%   0.001%   0.759%   0.004%   2.223%   0.000%  30.269%   0.000%   0.000%
    2    2.1  1.5  1.5   0.001%   0.000%   0.003%   1.283%   0.002%   1.415%   0.000%  33.011%   0.000%   0.000%
    3    3.1  1.5  1.5   0.007%   3.745%   0.512%   0.001%   0.031%   0.000%   0.013%   0.000%  44.040%   0.000%
    4    4.1  1.5  1.5   0.000%   0.005%   1.404%   0.003%   0.368%   0.001%   0.038%   0.000%  48.286%   0.000%
    5    5.1  1.5  1.5   0.007%   3.846%   5.144%   0.010%  16.599%   0.029%   0.060%   0.000%   1.582%   0.000%
    6    6.1  1.5  1.5   0.023%  12.729%  10.274%   0.020%   0.082%   0.000%   0.003%   0.000%   5.900%   0.000%
    7    7.1  1.5  1.5   8.515%   0.015%   0.025%  12.822%   0.001%   0.766%   0.000%   1.736%   0.000%   0.000%
    8    1.1  1.5  0.5   0.055%  30.171%   0.586%   0.001%   4.675%   0.008%   0.214%   0.000%   0.077%   0.000%
    9    2.1  1.5  0.5   0.003%   1.494%  30.846%   0.060%   2.652%   0.005%   0.570%   0.000%   0.086%   0.000%
   10    3.1  1.5  0.5  10.520%   0.019%   0.000%   0.108%   0.000%   0.040%   0.000%  12.382%   0.000%   0.013%
   11    4.1  1.5  0.5   0.408%   0.001%   0.012%   6.361%   0.000%   0.113%   0.000%  14.416%   0.000%   0.014%
   12    5.1  1.5  0.5   2.417%   0.004%   0.036%  18.328%   0.037%  21.680%   0.000%   1.648%   0.000%   0.000%
   13    6.1  1.5  0.5  17.506%   0.032%   0.020%  10.046%   0.016%   9.235%   0.000%   5.540%   0.000%   0.001%
   14    7.1  1.5  0.5   0.011%   6.081%   1.332%   0.003%  39.950%   0.069%   0.102%   0.000%   0.000%   0.000%
   15    1.1  1.5 -0.5  30.171%   0.055%   0.001%   0.586%   0.008%   4.675%   0.000%   0.214%   0.000%   0.077%
   16    2.1  1.5 -0.5   1.494%   0.003%   0.060%  30.846%   0.005%   2.652%   0.000%   0.570%   0.000%   0.086%
   17    3.1  1.5 -0.5   0.019%  10.520%   0.108%   0.000%   0.040%   0.000%  12.382%   0.000%   0.013%   0.000%
   18    4.1  1.5 -0.5   0.001%   0.408%   6.361%   0.012%   0.113%   0.000%  14.416%   0.000%   0.014%   0.000%
   19    5.1  1.5 -0.5   0.004%   2.417%  18.328%   0.036%  21.680%   0.037%   1.648%   0.000%   0.000%   0.000%
   20    6.1  1.5 -0.5   0.032%  17.506%  10.046%   0.020%   9.235%   0.016%   5.540%   0.000%   0.001%   0.000%
   21    7.1  1.5 -0.5   6.081%   0.011%   0.003%   1.332%   0.069%  39.950%   0.000%   0.102%   0.000%   0.000%
   22    1.1  1.5 -1.5   0.004%   2.383%   0.759%   0.001%   2.223%   0.004%  30.269%   0.000%   0.000%   0.000%
   23    2.1  1.5 -1.5   0.000%   0.001%   1.283%   0.003%   1.415%   0.002%  33.011%   0.000%   0.000%   0.000%
   24    3.1  1.5 -1.5   3.745%   0.007%   0.001%   0.512%   0.000%   0.031%   0.000%   0.013%   0.000%  44.040%
   25    4.1  1.5 -1.5   0.005%   0.000%   0.003%   1.404%   0.001%   0.368%   0.000%   0.038%   0.000%  48.286%
   26    5.1  1.5 -1.5   3.846%   0.007%   0.010%   5.144%   0.029%  16.599%   0.000%   0.060%   0.000%   1.582%
   27    6.1  1.5 -1.5  12.729%   0.023%   0.020%  10.274%   0.000%   0.082%   0.000%   0.003%   0.000%   5.900%
   28    7.1  1.5 -1.5   0.015%   8.515%  12.822%   0.025%   0.766%   0.001%   1.736%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5   0.000%   0.424%   0.029%   7.234%   0.160%   3.829%   0.000%  17.011%   0.873%   0.001%
    2    2.1  1.5  1.5   0.000%   0.026%   0.030%   7.339%   0.198%   4.753%   0.000%  16.225%   0.299%   0.000%
    3    3.1  1.5  1.5   4.582%   0.005%   3.598%   0.015%   0.152%   0.006%   0.000%   0.000%   0.013%  15.438%
    4    4.1  1.5  1.5   4.737%   0.005%   0.000%   0.000%   0.773%   0.032%   0.001%   0.000%   0.014%  16.154%
    5    5.1  1.5  1.5   0.031%   0.000%   0.199%   0.001%  40.136%   1.676%   0.028%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.214%   0.000%  37.688%   0.152%   1.158%   0.048%   0.001%   0.000%   0.001%   0.606%
    7    7.1  1.5  1.5   0.050%  47.076%   0.001%   0.216%   0.003%   0.078%   0.000%   0.082%  24.746%   0.021%
    8    1.1  1.5  0.5  21.129%   0.022%   2.616%   0.011%   4.484%   0.187%   0.007%   0.000%   0.003%   3.716%
    9    2.1  1.5  0.5  21.570%   0.023%   2.154%   0.009%   4.620%   0.193%   0.001%   0.000%   0.003%   3.163%
   10    3.1  1.5  0.5   0.000%   0.012%   0.048%  11.937%   0.235%   5.618%   0.000%  30.936%   2.012%   0.002%
   11    4.1  1.5  0.5   0.000%   0.001%   0.038%   9.499%   0.416%   9.958%   0.000%  31.684%   0.216%   0.000%
   12    5.1  1.5  0.5   0.000%   0.023%   0.026%   6.533%   0.317%   7.597%   0.000%   0.575%  16.210%   0.014%
   13    6.1  1.5  0.5   0.000%   0.016%   0.016%   4.032%   0.416%   9.954%   0.000%   3.447%  16.072%   0.014%
   14    7.1  1.5  0.5   0.053%   0.000%   6.552%   0.026%   2.885%   0.120%   0.002%   0.000%   0.000%   0.410%
   15    1.1  1.5 -0.5   0.022%  21.129%   0.011%   2.616%   0.187%   4.484%   0.000%   0.007%   3.716%   0.003%
   16    2.1  1.5 -0.5   0.023%  21.570%   0.009%   2.154%   0.193%   4.620%   0.000%   0.001%   3.163%   0.003%
   17    3.1  1.5 -0.5   0.012%   0.000%  11.937%   0.048%   5.618%   0.235%  30.936%   0.000%   0.002%   2.012%
   18    4.1  1.5 -0.5   0.001%   0.000%   9.499%   0.038%   9.958%   0.416%  31.684%   0.000%   0.000%   0.216%
   19    5.1  1.5 -0.5   0.023%   0.000%   6.533%   0.026%   7.597%   0.317%   0.575%   0.000%   0.014%  16.210%
   20    6.1  1.5 -0.5   0.016%   0.000%   4.032%   0.016%   9.954%   0.416%   3.447%   0.000%   0.014%  16.072%
   21    7.1  1.5 -0.5   0.000%   0.053%   0.026%   6.552%   0.120%   2.885%   0.000%   0.002%   0.410%   0.000%
   22    1.1  1.5 -1.5   0.424%   0.000%   7.234%   0.029%   3.829%   0.160%  17.011%   0.000%   0.001%   0.873%
   23    2.1  1.5 -1.5   0.026%   0.000%   7.339%   0.030%   4.753%   0.198%  16.225%   0.000%   0.000%   0.299%
   24    3.1  1.5 -1.5   0.005%   4.582%   0.015%   3.598%   0.006%   0.152%   0.000%   0.000%  15.438%   0.013%
   25    4.1  1.5 -1.5   0.005%   4.737%   0.000%   0.000%   0.032%   0.773%   0.000%   0.001%  16.154%   0.014%
   26    5.1  1.5 -1.5   0.000%   0.031%   0.001%   0.199%   1.676%  40.136%   0.000%   0.028%   0.000%   0.000%
   27    6.1  1.5 -1.5   0.000%   0.214%   0.152%  37.688%   0.048%   1.158%   0.000%   0.001%   0.606%   0.001%
   28    7.1  1.5 -1.5  47.076%   0.050%   0.216%   0.001%   0.078%   0.003%   0.082%   0.000%   0.021%  24.746%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28

    1    1.1  1.5  1.5   0.066%  20.503%   0.000%   0.011%   0.000%   0.110%  14.107%   0.000%
    2    2.1  1.5  1.5   0.068%  21.051%   0.000%   0.009%   0.000%   0.040%  14.245%   0.000%
    3    3.1  1.5  1.5   0.761%   0.002%   0.657%   0.010%  26.198%   0.000%   0.000%   0.214%
    4    4.1  1.5  1.5   0.026%   0.000%   0.056%   0.001%  28.093%   0.000%   0.000%   0.004%
    5    5.1  1.5  1.5  19.514%   0.063%   4.813%   0.077%   0.411%   0.000%   0.000%   5.775%
    6    6.1  1.5  1.5  18.048%   0.058%   5.042%   0.080%   2.306%   0.000%   0.000%   5.565%
    7    7.1  1.5  1.5   0.003%   0.910%   0.000%   0.009%   0.000%   2.781%   0.146%   0.000%
    8    1.1  1.5  0.5   0.215%   0.001%  17.193%   0.274%  14.319%   0.000%   0.000%   0.037%
    9    2.1  1.5  0.5   0.090%   0.000%  17.887%   0.285%  14.247%   0.000%   0.000%   0.040%
   10    3.1  1.5  0.5   0.000%   0.038%   0.375%  23.549%   0.000%   0.642%   1.515%   0.000%
   11    4.1  1.5  0.5   0.000%   0.081%   0.413%  25.897%   0.000%   0.097%   0.375%   0.000%
   12    5.1  1.5  0.5   0.006%   1.706%   0.007%   0.449%   0.000%   4.599%  17.788%   0.000%
   13    6.1  1.5  0.5   0.000%   0.088%   0.045%   2.803%   0.000%   6.158%  14.544%   0.000%
   14    7.1  1.5  0.5  16.647%   0.054%   0.056%   0.001%   0.001%   0.000%   0.000%  25.645%
   15    1.1  1.5 -0.5   0.001%   0.215%   0.274%  17.193%   0.000%  14.319%   0.037%   0.000%
   16    2.1  1.5 -0.5   0.000%   0.090%   0.285%  17.887%   0.000%  14.247%   0.040%   0.000%
   17    3.1  1.5 -0.5   0.038%   0.000%  23.549%   0.375%   0.642%   0.000%   0.000%   1.515%
   18    4.1  1.5 -0.5   0.081%   0.000%  25.897%   0.413%   0.097%   0.000%   0.000%   0.375%
   19    5.1  1.5 -0.5   1.706%   0.006%   0.449%   0.007%   4.599%   0.000%   0.000%  17.788%
   20    6.1  1.5 -0.5   0.088%   0.000%   2.803%   0.045%   6.158%   0.000%   0.000%  14.544%
   21    7.1  1.5 -0.5   0.054%  16.647%   0.001%   0.056%   0.000%   0.001%  25.645%   0.000%
   22    1.1  1.5 -1.5  20.503%   0.066%   0.011%   0.000%   0.110%   0.000%   0.000%  14.107%
   23    2.1  1.5 -1.5  21.051%   0.068%   0.009%   0.000%   0.040%   0.000%   0.000%  14.245%
   24    3.1  1.5 -1.5   0.002%   0.761%   0.010%   0.657%   0.000%  26.198%   0.214%   0.000%
   25    4.1  1.5 -1.5   0.000%   0.026%   0.001%   0.056%   0.000%  28.093%   0.004%   0.000%
   26    5.1  1.5 -1.5   0.063%  19.514%   0.077%   4.813%   0.000%   0.411%   5.775%   0.000%
   27    6.1  1.5 -1.5   0.058%  18.048%   0.080%   5.042%   0.000%   2.306%   5.565%   0.000%
   28    7.1  1.5 -1.5   0.910%   0.003%   0.009%   0.000%   2.781%   0.000%   0.000%   0.146%


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
              1      24      163.79       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       66.18       700     1000      520     2100     2140     5103   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       221.16     88.34      3.86    126.41      0.90      0.55      0.90
 REAL TIME  *       234.76 SEC
 DISK USED  *       102.81 MB (local),      878.94 MB (total)
 SF USED    *       661.05 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-DK energy=  -1392.530577569721

              CI           MULTI         RHF-SCF
  -1392.48780954  -1391.80758452  -1391.81034109
 **********************************************************************************************************************************
 Molpro calculation terminated
