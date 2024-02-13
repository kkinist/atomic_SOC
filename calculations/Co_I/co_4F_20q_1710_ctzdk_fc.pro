
 Working directory              : /scratch/irikura/molpro.5fFCo2tDem/
 Global scratch directory       : /scratch/irikura/molpro.5fFCo2tDem/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /scratch/irikura/molpro.5fFCo2tDem/

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
 
                                                                                 ! Add other terms but with zero weights
 {multi
     closed,2,3
     wf,nelec=27,sym=1,spin=3; state,20;
       weight,99,99,99,99,99,99,99, 1,1,1, 1,1,1,1,1,1,1, 1,1,1
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, CASSCF energies and LL values
 
                                                                                 ! MRCI and SO-CI
                                                                                 ! 4F + 4F + 4P
 {ci;option,nstati=21;wf,sym=1,spin=3; state,20;save,5103.2}
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
  (32 PROC) 64 bit mpp version                                                           DATE: 09-Feb-24          TIME: 16:08:50  
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

     Node minimum: 3.146 MB, node maximum: 4.981 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    1755030.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    1755030      RECORD LENGTH: 524288

 Memory used in sort:       2.31 MW

 SORT1 READ    12883698. AND WROTE      339780. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1353984. AND WROTE     7035726. INTEGRALS IN     48 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.05 SEC

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
 CPU TIMES  *         1.04      0.89
 REAL TIME  *         2.06 SEC
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
    1    1    0   -1391.67818110   -1391.67818110    1.15985222    1.15985222    0.00000000    0    0.32E+00      0.07
    2    1    0   -1391.67721185       0.00096926    1.29906538    1.29906538    0.00000000    0    0.25E+00      0.11
    3    1    0   -1391.72408802      -0.04687617    1.15055795    1.15055795    0.00000000    0    0.22E+00      0.14
    4    1    0   -1391.72726894      -0.00318092    1.06376305    1.06376305    0.00000000    0    0.23E+00      0.18
    5    1    0   -1391.72396147       0.00330747    1.12013828    1.12013828    0.00000000    0    0.21E+00      0.22
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

 !RHF STATE 1.1 Energy              -1391.810341090510
  RHF One-electron energy           -1932.565598114649
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
 CPU TIMES  *         1.61      0.57      0.89
 REAL TIME  *         2.74 SEC
 DISK USED  *        30.16 MB (local),      144.24 MB (total)
 SF USED    *         1.93 MB
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
   2    4    4    0  -1391.80758443   -1391.80758452   -0.00000009    0.00057964 0.00000032 0.00000000  0.45E-03      0.38
   3   20   20    0  -1391.80758452   -1391.80758452    0.00000000    0.00000032 0.00000024 0.00000000  0.33E-06      0.72

 CONVERGENCE REACHED!  Final gradient:    0.00000015 ( 0.15E-06)
                       Final energy:  -1391.80758452
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -1391.807584524187
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949371
 One electron energy                         -1932.57186676
 Two electron energy                           540.76428223
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -1391.807584523740
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949384
 One electron energy                         -1932.57186699
 Two electron energy                           540.76428246
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -1391.807584521628
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949375
 One electron energy                         -1932.57186683
 Two electron energy                           540.76428231
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -1391.807584520326
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949403
 One electron energy                         -1932.57186734
 Two electron energy                           540.76428282
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -1391.807584518129
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949421
 One electron energy                         -1932.57186767
 Two electron energy                           540.76428315
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -1391.807584517569
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949416
 One electron energy                         -1932.57186758
 Two electron energy                           540.76428306
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -1391.807584516982
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.62949421
 One electron energy                         -1932.57186767
 Two electron energy                           540.76428315
 Virial ratio                                    1.95681243
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     1.009958938710
 !MCSCF expec                      <2.1|LXLX|2.1>     1.037911519106
 !MCSCF expec                      <3.1|LXLX|3.1>     3.999999933307
 !MCSCF expec                      <4.1|LXLX|4.1>     2.514804282665
 !MCSCF expec                      <5.1|LXLX|5.1>     2.962125687750
 !MCSCF expec                      <6.1|LXLX|6.1>     8.990039855475
 !MCSCF expec                      <7.1|LXLX|7.1>     7.485142282289
 
 !MCSCF expec                      <1.1|LYLY|1.1>     2.635319231444
 !MCSCF expec                      <2.1|LYLY|2.1>     2.085614087599
 !MCSCF expec                      <3.1|LYLY|3.1>     4.000000046379
 !MCSCF expec                      <4.1|LYLY|4.1>     5.657162489076
 !MCSCF expec                      <5.1|LYLY|5.1>     7.914327984779
 !MCSCF expec                      <6.1|LYLY|6.1>     1.364673083092
 !MCSCF expec                      <7.1|LYLY|7.1>     4.342904772997
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     8.354721829846
 !MCSCF expec                      <2.1|LZLZ|2.1>     8.876474393295
 !MCSCF expec                      <3.1|LZLZ|3.1>     4.000000020314
 !MCSCF expec                      <4.1|LZLZ|4.1>     3.828033228259
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.123546327471
 !MCSCF expec                      <6.1|LZLZ|6.1>     1.645287061433
 !MCSCF expec                      <7.1|LZLZ|7.1>     0.171952944714
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 4 2 5 6 1 1   3 4 2 5 6 1 3 4 2 5   6 1 3 4 2 5 6121415  101311 8 7 9 1 3 4 5
                                        2 6121514111013 8 7   9 5 6 2 4 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 1 2 3 1   2 3 1 2 3 4 9 7 6 8   510 1 2 3 4 7 9 8 6  10 5 1 2 310 7 9 5 8
                                        4 6 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.56626     1  1  s    0.97812
    2.1     2.00000   -35.23764     1  2  s    0.99666
    3.1     2.00000    -4.40321     1  3  s    0.99089
    4.1     1.60000    -0.24529     1  1  d2-  0.99764
    5.1     1.60000    -0.24529     1  1  d1+  0.99764
    6.1     1.60000    -0.24529     1  1  d0   0.99764
    7.1     1.60000    -0.24529     1  1  d2+  0.99764
    8.1     1.60000    -0.24529     1  1  d1-  0.99764
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
 
 222aa2a 222      0.00001015      0.00011802      0.99999999     -0.00006642     -0.00008258     -0.00000094     -0.00002754
 2a2a22a 222     -0.00001643      0.00002584      0.00007069      0.97826801      0.00007076      0.00012188      0.20734434
 22a22aa 222     -0.00001916     -0.00001497      0.00001179     -0.18545442      0.00013562      0.00003994      0.87498946
 22a2a2a 222      0.83354663     -0.00000524     -0.00000876      0.00004536      0.00003271     -0.32434561      0.00004267
 2aa222a 222      0.00000553      0.76968677     -0.00012846     -0.00000490     -0.45561202     -0.00004416      0.00008276
 2a222aa 222      0.52243289     -0.00000806     -0.00000463     -0.00007376     -0.00007764      0.72599165     -0.00003732
 2222aaa 222      0.00000643      0.63356609     -0.00002264     -0.00004207      0.63134303      0.00006991     -0.00009593
 222a2aa 222     -0.00000052      0.07858926     -0.00006109      0.00002146     -0.62755368     -0.00006586      0.00010317
 22aa22a 222      0.17962153      0.00000163     -0.00000238      0.00006877      0.00006371     -0.60641242      0.00004618
 2a22a2a 222     -0.00000958     -0.00000749      0.00000590     -0.09272725      0.00006781      0.00001997      0.43749484
 
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
 CPU TIMES  *         2.50      0.89      0.57      0.89
 REAL TIME  *         4.28 SEC
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
 Number of states:            20
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 4 2 5 6 1 1   3 4 2 5 6 1 3 4 2 5   6 1 3 4 2 5 6121415  101311 8 7 9 1 3 4 5
                                        2 6121514111013 8 7   9 5 6 2 4 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 1 2 1 2 3 1   2 3 1 2 3 4 9 7 6 8   510 1 2 3 4 7 9 8 6  10 5 1 2 310 7 9 5 8
                                        4 6 1 3 2

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14023   0.14023   0.14023   0.14023   0.14023   0.14023   0.14023   0.00142
                                          0.00142   0.00142   0.00142   0.00142   0.00142   0.00142   0.00142   0.00142
                                          0.00142   0.00142   0.00142   0.00142
 
 Number of orbital rotations:  689  ( 23 closed/active, 213 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    1809
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   15   11    0  -1391.80616303   -1391.80623749   -0.00007447    0.01335918 0.00290531 0.00000000  0.66E-01      0.34
   2    7    6    0  -1391.80606232   -1391.80619457   -0.00013225    0.04459287 0.00000023 0.00000000  0.76E-02      0.61
   3   42   41    0  -1391.80619483   -1391.80619483   -0.00000000    0.00006785 0.00000018 0.00000000  0.12E-03      1.35
   4   21   21    0  -1391.80619483   -1391.80619483    0.00000000    0.00000024 0.00000021 0.00000000  0.10E-06      1.77

 CONVERGENCE REACHED!  Final gradient:    0.00000064 ( 0.64E-06)
                       Final energy:  -1391.80619483
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -1391.807556901849
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.72374277
 One electron energy                         -1932.73694828
 Two electron energy                           540.92939138
 Virial ratio                                    1.95675042
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -1391.807556901841
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.72374286
 One electron energy                         -1932.73694846
 Two electron energy                           540.92939155
 Virial ratio                                    1.95675042
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -1391.807556901374
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.72374285
 One electron energy                         -1932.73694844
 Two electron energy                           540.92939153
 Virial ratio                                    1.95675042
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -1391.807556900986
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.72374286
 One electron energy                         -1932.73694845
 Two electron energy                           540.92939155
 Virial ratio                                    1.95675042
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -1391.807556898680
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.72374312
 One electron energy                         -1932.73694892
 Two electron energy                           540.92939203
 Virial ratio                                    1.95675042
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -1391.807556897991
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.72374327
 One electron energy                         -1932.73694920
 Two electron energy                           540.92939230
 Virial ratio                                    1.95675042
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -1391.807556897877
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.72374341
 One electron energy                         -1932.73694945
 Two electron energy                           540.92939256
 Virial ratio                                    1.95675042
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy                     -1391.752794610058
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.06244606
 One electron energy                         -1916.36536673
 Two electron energy                           524.61257212
 Virial ratio                                    1.96111380
 
 !MCSCF STATE 8.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy                     -1391.752794607043
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.06244598
 One electron energy                         -1916.36536657
 Two electron energy                           524.61257197
 Virial ratio                                    1.96111380
 
 !MCSCF STATE 9.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy                    -1391.752794605913
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.06244594
 One electron energy                         -1916.36536651
 Two electron energy                           524.61257190
 Virial ratio                                    1.96111380
 
 !MCSCF STATE 10.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1
 ======================
 !MCSCF STATE 11.1 Energy                    -1391.752794605442
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.06244594
 One electron energy                         -1916.36536651
 Two electron energy                           524.61257190
 Virial ratio                                    1.96111380
 
 !MCSCF STATE 11.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1
 ======================
 !MCSCF STATE 12.1 Energy                    -1391.752794596452
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.06244565
 One electron energy                         -1916.36536599
 Two electron energy                           524.61257139
 Virial ratio                                    1.96111380
 
 !MCSCF STATE 12.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1
 ======================
 !MCSCF STATE 13.1 Energy                    -1391.752794591208
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.06244550
 One electron energy                         -1916.36536571
 Two electron energy                           524.61257112
 Virial ratio                                    1.96111380
 
 !MCSCF STATE 13.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1
 ======================
 !MCSCF STATE 14.1 Energy                    -1391.752794587242
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.06244539
 One electron energy                         -1916.36536550
 Two electron energy                           524.61257092
 Virial ratio                                    1.96111380
 
 !MCSCF STATE 14.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1
 ======================
 !MCSCF STATE 15.1 Energy                    -1391.738813955935
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.71536941
 One electron energy                         -1932.71803353
 Two electron energy                           540.97921957
 Virial ratio                                    1.95670868
 
 !MCSCF STATE 15.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1
 ======================
 !MCSCF STATE 16.1 Energy                    -1391.738813955213
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.71536951
 One electron energy                         -1932.71803371
 Two electron energy                           540.97921975
 Virial ratio                                    1.95670868
 
 !MCSCF STATE 16.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1
 ======================
 !MCSCF STATE 17.1 Energy                    -1391.738813950988
 Nuclear energy                                  0.00000000
 Kinetic energy                               1454.71536977
 One electron energy                         -1932.71803418
 Two electron energy                           540.97922023
 Virial ratio                                    1.95670868
 
 !MCSCF STATE 17.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 18.1
 ======================
 !MCSCF STATE 18.1 Energy                    -1391.683538909943
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.05521823
 One electron energy                         -1916.34905482
 Two electron energy                           524.66551591
 Virial ratio                                    1.96107077
 
 !MCSCF STATE 18.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 19.1
 ======================
 !MCSCF STATE 19.1 Energy                    -1391.683538907003
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.05521814
 One electron energy                         -1916.34905463
 Two electron energy                           524.66551573
 Virial ratio                                    1.96107077
 
 !MCSCF STATE 19.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 20.1
 ======================
 !MCSCF STATE 20.1 Energy                    -1391.683538901586
 Nuclear energy                                  0.00000000
 Kinetic energy                               1448.05521787
 One electron energy                         -1916.34905416
 Two electron energy                           524.66551526
 Virial ratio                                    1.96107077
 
 !MCSCF STATE 20.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     8.462368952903
 !MCSCF expec                      <2.1|LXLX|2.1>     7.015773658279
 !MCSCF expec                      <3.1|LXLX|3.1>     1.292352279353
 !MCSCF expec                      <4.1|LXLX|4.1>     2.983968674401
 !MCSCF expec                      <5.1|LXLX|5.1>     2.707718932380
 !MCSCF expec                      <6.1|LXLX|6.1>     1.537253164207
 !MCSCF expec                      <7.1|LXLX|7.1>     3.999997510299
 !MCSCF expec                      <8.1|LXLX|8.1>     7.103973075522
 !MCSCF expec                      <9.1|LXLX|9.1>     0.299014552998
 !MCSCF expec                    <10.1|LXLX|10.1>     4.178237958839
 !MCSCF expec                    <11.1|LXLX|11.1>     5.822348651568
 !MCSCF expec                    <12.1|LXLX|12.1>     3.700984840429
 !MCSCF expec                    <13.1|LXLX|13.1>     2.896030400302
 !MCSCF expec                    <14.1|LXLX|14.1>     4.000000000112
 !MCSCF expec                    <15.1|LXLX|15.1>     0.000000006617
 !MCSCF expec                    <16.1|LXLX|16.1>     0.999999991688
 !MCSCF expec                    <17.1|LXLX|17.1>     0.999999999992
 !MCSCF expec                    <18.1|LXLX|18.1>     0.000000000827
 !MCSCF expec                    <19.1|LXLX|19.1>     0.999999999173
 !MCSCF expec                    <20.1|LXLX|20.1>     0.999999999998
 
 !MCSCF expec                      <1.1|LYLY|1.1>     0.598769899065
 !MCSCF expec                      <2.1|LYLY|2.1>     4.908455843085
 !MCSCF expec                      <3.1|LYLY|3.1>     8.976271688534
 !MCSCF expec                      <4.1|LYLY|4.1>     5.091481720804
 !MCSCF expec                      <5.1|LYLY|5.1>     1.023744702822
 !MCSCF expec                      <6.1|LYLY|6.1>     3.402224165558
 !MCSCF expec                      <7.1|LYLY|7.1>     3.999999331939
 !MCSCF expec                      <8.1|LYLY|8.1>     0.090039070044
 !MCSCF expec                      <9.1|LYLY|9.1>     7.887630866745
 !MCSCF expec                    <10.1|LYLY|10.1>     3.823856230587
 !MCSCF expec                    <11.1|LYLY|11.1>     6.175570827393
 !MCSCF expec                    <12.1|LYLY|12.1>     2.112367515783
 !MCSCF expec                    <13.1|LYLY|13.1>     3.909961586656
 !MCSCF expec                    <14.1|LYLY|14.1>     3.999999997891
 !MCSCF expec                    <15.1|LYLY|15.1>     0.999999993386
 !MCSCF expec                    <16.1|LYLY|16.1>     0.000000008609
 !MCSCF expec                    <17.1|LYLY|17.1>     0.999999998711
 !MCSCF expec                    <18.1|LYLY|18.1>     0.999999999173
 !MCSCF expec                    <19.1|LYLY|19.1>     0.000000000996
 !MCSCF expec                    <20.1|LYLY|20.1>     0.999999999980
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     2.938861148032
 !MCSCF expec                      <2.1|LZLZ|2.1>     0.075770498636
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.731376032113
 !MCSCF expec                      <4.1|LZLZ|4.1>     3.924549604794
 !MCSCF expec                      <5.1|LZLZ|5.1>     8.268536364798
 !MCSCF expec                      <6.1|LZLZ|6.1>     7.060522670235
 !MCSCF expec                      <7.1|LZLZ|7.1>     4.000003157762
 !MCSCF expec                      <8.1|LZLZ|8.1>     4.805987854434
 !MCSCF expec                      <9.1|LZLZ|9.1>     3.813354580257
 !MCSCF expec                    <10.1|LZLZ|10.1>     3.997905810574
 !MCSCF expec                    <11.1|LZLZ|11.1>     0.002080521039
 !MCSCF expec                    <12.1|LZLZ|12.1>     6.186647643788
 !MCSCF expec                    <13.1|LZLZ|13.1>     5.194008013042
 !MCSCF expec                    <14.1|LZLZ|14.1>     4.000000001998
 !MCSCF expec                    <15.1|LZLZ|15.1>     0.999999999997
 !MCSCF expec                    <16.1|LZLZ|16.1>     0.999999999704
 !MCSCF expec                    <17.1|LZLZ|17.1>     0.000000001297
 !MCSCF expec                    <18.1|LZLZ|18.1>     1.000000000000
 !MCSCF expec                    <19.1|LZLZ|19.1>     0.999999999831
 !MCSCF expec                    <20.1|LZLZ|20.1>     0.000000000021
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000000
 !MCSCF expec                      <8.1|L**2|8.1>    12.000000000000
 !MCSCF expec                      <9.1|L**2|9.1>    12.000000000000
 !MCSCF expec                    <10.1|L**2|10.1>    12.000000000000
 !MCSCF expec                    <11.1|L**2|11.1>    12.000000000000
 !MCSCF expec                    <12.1|L**2|12.1>    12.000000000000
 !MCSCF expec                    <13.1|L**2|13.1>    12.000000000000
 !MCSCF expec                    <14.1|L**2|14.1>    12.000000000000
 !MCSCF expec                    <15.1|L**2|15.1>     2.000000000000
 !MCSCF expec                    <16.1|L**2|16.1>     2.000000000000
 !MCSCF expec                    <17.1|L**2|17.1>     2.000000000000
 !MCSCF expec                    <18.1|L**2|18.1>     2.000000000000
 !MCSCF expec                    <19.1|L**2|19.1>     2.000000000000
 !MCSCF expec                    <20.1|L**2|20.1>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 2 5 4 6 1 1   3 2 4 5 6 1 2 3 4 5   6 1 2 3 4 5 6 912 7   81415111013 1 4 2 3
                                        5 6 912 71514 81110  13 4 2 5 6 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 3 1 1 3 2 1   3 2 1 3 2 4 6 9 7 8   510 1 3 2 4 6 8 7 9  10 5 1 3 2 4 610 8 5
                                        7 9 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.56843     1  1  s    0.97812
    2.1     2.00000   -35.22087     1  2  s    0.99665
    3.1     2.00000    -4.42641     1  3  s    0.99114
    4.1     1.59719    -0.24658     1  1  d2-  0.99776
    5.1     1.59718    -0.24658     1  1  d0   0.99776
    6.1     1.59717    -0.24657     1  1  d2+  0.99776
    7.1     1.59717    -0.24657     1  1  d1+  0.99776
    8.1     1.59717    -0.24657     1  1  d1-  0.99776
    9.1     1.01416    -0.09891     1  4  s    0.96727
    1.2     2.00000   -29.94073     1  1  px   0.99908
    2.2     2.00000   -29.94073     1  1  pz   0.99908
    3.2     2.00000   -29.94073     1  1  py   0.99908
    4.2     1.99998    -2.89954     1  2  py   1.00051
    5.2     1.99998    -2.89954     1  2  pz   1.00051
    6.2     1.99998    -2.89954     1  2  px   1.00051
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================

 State:                1               2               3               4               5               6               7
 22aa22a 222      0.00002676      0.00002364     -0.00002203      0.00000295      0.00016182     -0.00030706      0.99999994
 2a22aa2 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 222aaa2 222      0.00000000      0.00000001      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2aa222a 222      0.00168776      0.13726190      0.00003135      0.99053335      0.00000132     -0.00006401     -0.00000623
 2aaa222 222      0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000000      0.00000000
 2aa2a22 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a2a22a 222      0.00663839      0.44293023     -0.00002116     -0.06138980     -0.00002306     -0.00001399     -0.00001047
 22a2aa2 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2aa22a2 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2222aaa 222      0.01327679      0.88586056     -0.00004232     -0.12277962     -0.00004612     -0.00002799     -0.00002094
 222aa2a 222      0.12854718     -0.00188485     -0.00001425      0.00009937      0.00004686      0.88513951      0.00026839
 22aaa22 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000000
 22aa2a2 222     -0.00000000     -0.00000000     -0.00000001      0.00000000     -0.00000001      0.00000000      0.00000000
 222a2aa 222     -0.00002266      0.00002994     -0.30828430      0.00000452      0.83961941     -0.00004602     -0.00014267
 2a222aa 222      0.82480018     -0.01233358     -0.00005245      0.00028140     -0.00001554     -0.34576357     -0.00012795
 22a2a2a 222      0.55041538     -0.00820901     -0.00003851      0.00021983      0.00001809      0.31140889      0.00008108
 22a22aa 222      0.00004082      0.00001532      0.60285258     -0.00002102     -0.19122971      0.00001392      0.00004423
 2a2a2a2 222     -0.00000001      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2a2aa22 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2a22a2a 222      0.00004804      0.00005649      0.73588692     -0.00003188      0.50839986     -0.00002190     -0.00006607
 
 Energy:      -1391.80755690  -1391.80755690  -1391.80755690  -1391.80755690  -1391.80755690  -1391.80755690  -1391.80755690

 State:                8               9              10              11              12              13              14
 22aa22a 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2a22aa2 222     -0.00000380      0.00000370      0.00000382     -0.00000292      0.00003999      0.00000742      0.99956135
 222aaa2 222     -0.00007883     -0.00000601      0.99929966     -0.02287119      0.00000402     -0.00001318     -0.00000389
 2aa222a 222     -0.00000000      0.00000000     -0.00000000     -0.00000001      0.00000000     -0.00000000     -0.00000000
 2aaa222 222      0.00001849     -0.00002137      0.02045662      0.89380083     -0.00000730      0.00001324      0.00000253
 2aa2a22 222     -0.00000246      0.02168468     -0.00000328      0.00000789      0.89377180     -0.00000066     -0.00003584
 2a2a22a 222      0.00000000     -0.00000000     -0.00000002      0.00000002     -0.00000000      0.00000000     -0.00000000
 22a2aa2 222     -0.00000925      0.00001068     -0.01022831     -0.44690031      0.00000365     -0.00000662     -0.00000127
 2aa22a2 222      0.09110383     -0.00000278      0.00001856     -0.00001549      0.00000098      0.88938088     -0.00000626
 2222aaa 222     -0.00000000      0.00000000      0.00000000     -0.00000001      0.00000000     -0.00000000      0.00000000
 222aa2a 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000001     -0.00000000
 22aaa22 222      0.88391535     -0.00002046      0.00007100     -0.00002190      0.00000303      0.13413434      0.00000236
 22aa2a2 222      0.00002062      0.85996968      0.00000657      0.00001841     -0.24443910      0.00000084      0.00000659
 222a2aa 222      0.00000000     -0.00000002      0.00000000     -0.00000000      0.00000001      0.00000000     -0.00000000
 2a222aa 222     -0.00000001      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 22a2a2a 222      0.00000002     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000002     -0.00000000
 22a22aa 222      0.00000000     -0.00000004      0.00000000     -0.00000000      0.00000001     -0.00000000      0.00000000
 2a2a2a2 222      0.45772987     -0.00001021      0.00003027     -0.00000370      0.00000118     -0.43604190      0.00000498
 2a2aa22 222      0.00001048      0.50902340      0.00000190      0.00001518      0.37489251      0.00000010     -0.00001688
 2a22a2a 222     -0.00000000      0.00000003     -0.00000000      0.00000000     -0.00000001      0.00000000     -0.00000000
 
 Energy:      -1391.75279461  -1391.75279461  -1391.75279461  -1391.75279461  -1391.75279460  -1391.75279459  -1391.75279459

 State:               15              16              17              18              19              20
 22aa22a 222     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2a22aa2 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 222aaa2 222     -0.00000000      0.00000000      0.00000002     -0.00000000     -0.00000000      0.00000000
 2aa222a 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2aaa222 222      0.00000000      0.00000000     -0.00015999     -0.00000027      0.00000581      0.44672651
 2aa2a22 222     -0.00015999     -0.00000001     -0.00000000     -0.44672666     -0.00001284     -0.00000027
 2a2a22a 222     -0.00000156     -0.00001539      0.89375263     -0.00000000      0.00000000      0.00032727
 22a2aa2 222      0.00000000      0.00000001     -0.00031993     -0.00000054      0.00001162      0.89345324
 2aa22a2 222      0.00000001     -0.00015995     -0.00000000     -0.00001284      0.44672668     -0.00000581
 2222aaa 222      0.00000078      0.00000769     -0.44687626      0.00000000     -0.00000000     -0.00016363
 222aa2a 222      0.00003634     -0.44687633     -0.00000769      0.00000000     -0.00016364      0.00000000
 22aaa22 222     -0.00000001      0.00015995      0.00000000      0.00001284     -0.44672653      0.00000581
 22aa2a2 222     -0.00015993     -0.00000001     -0.00000000     -0.44672659     -0.00001284     -0.00000027
 222a2aa 222      0.44687632      0.00003634      0.00000078     -0.00016364     -0.00000000     -0.00000000
 2a222aa 222      0.00003634     -0.44687631     -0.00000769      0.00000000     -0.00016363      0.00000000
 22a2a2a 222     -0.00006295      0.77401244      0.00001333     -0.00000001      0.00028342     -0.00000000
 22a22aa 222      0.77401244      0.00006295      0.00000135     -0.00028343     -0.00000001     -0.00000000
 2a2a2a2 222      0.00000002     -0.00027709     -0.00000000     -0.00002225      0.77375316     -0.00001006
 2a2aa22 222      0.00027710      0.00000002      0.00000000      0.77375313      0.00002225      0.00000047
 2a22a2a 222     -0.44687632     -0.00003634     -0.00000078      0.00016364      0.00000000      0.00000000
 
 Energy:      -1391.73881396  -1391.73881396  -1391.73881395  -1391.68353891  -1391.68353891  -1391.68353890
 


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
 CPU TIMES  *         4.14      1.64      0.89      0.57      0.89
 REAL TIME  *         6.23 SEC
 DISK USED  *        37.97 MB (local),      175.51 MB (total)
 SF USED    *        22.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CASSCF energies and LL values

          ENERGY     LL
    -1391.807557   12.0
    -1391.807557   12.0
    -1391.807557   12.0
    -1391.807557   12.0
    -1391.807557   12.0
    -1391.807557   12.0
    -1391.807557   12.0
    -1391.752795   12.0
    -1391.752795   12.0
    -1391.752795   12.0
    -1391.752795   12.0
    -1391.752795   12.0
    -1391.752795   12.0
    -1391.752795   12.0
    -1391.738814    2.0
    -1391.738814    2.0
    -1391.738814    2.0
    -1391.683539    2.0
    -1391.683539    2.0
    -1391.683539    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 20  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20
 Number of reference states: 20  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20

 Program parameters:       NSTATE= 20    NSTATI= 21    NSTATR= 20    NCEPA = -1    NOKOP =  0    ITRDM =  0    ITRANS=  0
                           IDIP  =200    MAXIT = 30    MAXITI= 50    MAXDAV= 60    MAXVI = 63    NOSING=  0    NOPAIR=  0
                           MXSHRF=  3    IKCPS =  0    IOPTGM=  2    IOPTOR=  0    REFOPT=  1    IAVDEN=  0    IDELCG=  1
                           IREST =  0    NATORB=  0    IPUNRF=  0    ISEP  =  0    OLDDEN=  0    NSTPRI=  1    GPSFLI= -1
                           CLUSTE=  0    CLOSED=  1    ILSTYP=  0    ITRLS =  0    ICCSD =  0    LOCAL =  0    IBASO =  0
                           MP    =  0    ITEDIS=  2    INCDIS=  1    MAXDIS=  6    ITYDIS=  1    BRUECK=  0    IBRSTR=  3
                           INCBRK=  1    TRIPLE=  0    ICCTYP=  2    IHPPD =  0    ICCNEW=  0    I3EXT = -1    IDEB  =  0
                           IDLEIG=  1    IDFTYP=  1    IMP3  =  0    IPROCS=  0    NOINT =  0    NOREF =  1    IMP2G =  0
                           IHINT =  0    IFDIA =  0    ISPARO=  1    JKSYM =  0    CPHF  =  0    MP2D  = -1    DKINT =  0
                           NPKEX =  1    DRVK  =  1    HLSTRA=  1    WIGNER=  1    DIIS_C=  1    MAXIT_= 50    MATEL =  0
                           SPDEG =  1    MEMCPH=  0    DISM  =  1    KDCPMA=  5    IKDCP_=  0    IREDTH=  0    USECS =  0
                           IPROCC=  0    I3SAVE=  1    IKDCP =  1    USECI =  0    OLDPAI=  0    IPROCI=  0    KEEPCL=  1
                           DISCON=  0    SHIFTE=  0    DIISIN=  0    MOLCAS=  0    MEM_PT=  0    RECORD=  0    RS2C  =  0
                           KEXT  = -1    CIPT2 =  0    DECP0S=  0    I4EXT = -1    NATCOR=  0    RIMP2 =  0    DDCI  = -1
                           IPOLAR=  0    OVBK  =  0

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

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  25
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.1214511E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.1071583E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.2531997E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.1897786E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.2044945E-15. Vector removed
 Catastrophic failure in diagonalization(hsdel)
 The expansion set has become singular
 This difficulty can arise for many reasons
 Sometimes it helps to redefine P space
 Otherwise, try increasing or decreasing reference space or nstati

 GLOBAL ERROR fehler on processor   0                                         
