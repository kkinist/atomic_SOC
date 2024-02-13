
 Working directory              : /wrk/irikura/molpro.XewhtYQn6S/
 Global scratch directory       : /wrk/irikura/molpro.XewhtYQn6S/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.XewhtYQn6S/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   10
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Co atom
                                                                                 ! 4F + 4F + 4P
 memory,2000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Co}
 
 basis=cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf,so-sci;wf,nelec=27,sym=1, spin=3}
 
                                                                                 ! seek second 4F to favor d8s1 config
 {multi
     closed,2,3
     wf,nelec=27,sym=1,spin=3; state,17;
       weight,1,1,1,1,1,1,1, 5,5,5, 5,5,5,5,5,5,5,5
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3; state,17;save,5101.2}
 hlsdiag = energd4
                                                                                 !{ci;wf,sym=1,spin=1;state,24;save,5102.2}
                                                                                 !hlsdiag(21) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
                                                                                 !{ci;hlsmat,ls,5101.2,5102.2;print,vls=0,hls=0}
 {ci;hlsmat,ls,5101.2;print,vls=0,hls=0}
 
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Co ato                                                                        
  64 bit mpp version                                                                     DATE: 02-Feb-24          TIME: 13:25:05  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      2000 MW
 Total memory per node:  20000 MW

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

     15.991 MB (compressed) written to integral file ( 16.0%)

     Node minimum: 0.524 MB, node maximum: 2.884 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     701287.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     701287      RECORD LENGTH: 524288

 Memory used in sort:       1.26 MW

 SORT1 READ    12883698. AND WROTE      138706. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.09 SEC
 SORT2 READ     1353984. AND WROTE     7035726. INTEGRALS IN     20 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

 Node minimum:      700215.  Node maximum:      707056. integrals

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
              1      22       29.06       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.07      0.90
 REAL TIME  *         1.91 SEC
 DISK USED  *        29.34 MB (local),      341.78 MB (total)
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
    1    1    0   -1391.62971487   -1391.62971487    1.20096368    1.20096368    0.00000000    0    0.41E+00      0.05
    2    1    0   -1391.61087770       0.01883716    1.38023306    1.38023306    0.00000000    0    0.26E+00      0.08
    3    1    0   -1391.66738801      -0.05651031    1.21618599    1.21618599    0.00000000    0    0.28E+00      0.12
    4    1    0   -1391.66078530       0.00660271    1.15393956    1.15393956    0.00000000    0    0.21E+00      0.16
    5    1    0   -1391.70116040      -0.04037510    0.95652513    0.95652513    0.00000000    1    0.88E-01      0.19
    6    2    0   -1391.75353801      -0.05237761    0.16225294    0.16225294    0.00000000    2    0.32E+00      0.23
    7    2    0   -1391.76526926      -0.01173124    0.11064179    0.11064179    0.00000000    2    0.36E+00      0.28
    8    2    0   -1391.78927868      -0.02400942    0.19803979    0.19803979    0.00000000    2    0.36E+00      0.34
    9    2    0   -1391.82904119      -0.03976252    0.27530342    0.27530342    0.00000000    3    0.50E+00      0.38
   10    1    0   -1391.82468183       0.00435937    0.29446212    0.29446212    0.00000000    0    0.16E+00      0.41
   11    2    0   -1391.86432482      -0.03964299    0.15745776    0.15745776    0.00000000    1    0.14E+00      0.45
   12    2    0   -1391.87445655      -0.01013173    0.07443055    0.07443055    0.00000000    2    0.36E+00      0.58
   13    2    0   -1391.87719153      -0.00273498    0.11071360    0.11071360    0.00000000    3    0.42E+00      0.62
   14    2    0   -1391.87595689       0.00123464    0.17519938    0.17519938    0.00000000    0    0.46E-01      0.66
   15    2    0   -1391.87848885      -0.00253196    0.02555545    0.02555545    0.00000000    1    0.35E-01      0.70
   16    2    0   -1391.87883737      -0.00034853    0.01652502    0.01652502    0.00000000    2    0.36E-01      0.74
   17    2    0   -1391.87896403      -0.00012666    0.00844087    0.00844087    0.00000000    3    0.87E-02      0.78
   18    2    0   -1391.87897116      -0.00000713    0.00500939    0.00500939    0.00000000    4    0.91E-03      0.82
   19    2    0   -1391.87897310      -0.00000194    0.00065212    0.00065212    0.00000000    5    0.45E-03      0.86
   20    2    0   -1391.87897316      -0.00000005    0.00013357    0.00013357    0.00000000    6    0.13E-03      0.90
   21    2    0   -1391.87897316      -0.00000000    0.00001182    0.00001182    0.00000000    7    0.24E-04      0.94

 CONVERGENCE REACHED!  Final gradient:     0.00000264 ( 0.26E-05)
                       Final energy:   -1391.87897316
 

 Final alpha occupancy:   9   6
 Final beta  occupancy:   6   6

 !RHF STATE 1.1 Energy              -1391.878973161690
  RHF One-electron energy           -1927.325480354861
  RHF Two-electron energy             535.446507193170
  RHF Kinetic energy                 1454.770710763376
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.956768625367

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.76981     1  1  s    0.97814
    2.1     2.00000   -35.46442     1  2  s    0.99654
    3.1     2.00000    -4.62008     1  3  s    0.98440
    4.1     2.00000    -0.61914     1  1  d1+ -0.36646    1  1  d2+ -0.53074    1  1  d1-  0.73415
    5.1     2.00000    -0.61914     1  1  d2- -0.53396    1  1  d1+  0.72962    1  1  d1-  0.36734
    6.1     2.00000    -0.27156     1  4  s    1.01964
    7.1     1.00000    -0.71738     1  1  d2-  0.35764    1  1  d2+  0.73293    1  1  d1-  0.52276
    8.1     1.00000    -0.71738     1  1  d2-  0.73059    1  1  d1+  0.52999    1  1  d2+ -0.35454
    9.1     1.00000    -0.71738     1  1  d0  -0.99606
    1.2     2.00000   -30.23332     1  1  px  -0.39529    1  1  py   0.91822
    2.2     2.00000   -30.23332     1  1  px   0.91825    1  1  py   0.39519
    3.2     2.00000   -30.23332     1  1  pz   0.99963
    4.2     2.00000    -3.02535     1  2  px  -0.54136    1  2  py   0.83850
    5.2     2.00000    -3.02535     1  2  px   0.83850    1  2  py   0.54136
    6.2     2.00000    -3.02535     1  2  pz   0.99807


 HOMO      9.1    -0.717375 =     -19.5208eV
 LUMO      7.2     0.043352 =       1.1797eV
 LUMO-HOMO         0.760727 =      20.7004eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      23       29.51       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380   
                                         AOSYM     SMH     JKOP   

              2       4        0.50       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.94      0.87      0.90
 REAL TIME  *         2.88 SEC
 DISK USED  *        30.06 MB (local),      348.98 MB (total)
 SF USED    *         1.81 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   5 (    2    3)
 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Quartet   Space symmetry=1
 Number of states:            17
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.1)
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.278D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.179D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.606D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.608D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.372D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.612D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.609D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.790D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 1 5 3 2 1   3 5 2 4 6 1 3 5 2 4   6 1 5 3 2 4 61310 7   81215 91114 1 5 3 2
                                        4 61310 712 81511 9  14 5 3 2 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.307D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.307D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.204D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.399D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.400D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.191D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 1   2 3 1 2 3 6 9 5 4 7  10 8 2 1 3 6 9 5 4 7   810 2 1 3 6 9 5 4 7
                                        810 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.01754   0.01754   0.01754   0.01754   0.01754   0.01754   0.01754   0.08772
                                          0.08772   0.08772   0.08772   0.08772   0.08772   0.08772   0.08772   0.08772
                                          0.08772
 
 Number of orbital rotations:  689  ( 23 closed/active, 213 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    1641
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0  -1391.71945044   -1391.78373464   -0.06428420    0.69886791 0.00001294 0.00000000  0.14E+00      0.27
   2    7    6    0  -1391.78559198   -1391.78573382   -0.00014183    0.02804653 0.00000750 0.00000000  0.86E-02      0.65
   3   21   21    0  -1391.78573410   -1391.78573410   -0.00000000    0.00007642 0.00000021 0.00000000  0.32E-04      1.20
   4   20   20    0  -1391.78573410   -1391.78573410    0.00000000    0.00000009 0.00000016 0.00000000  0.11E-06      1.68

 CONVERGENCE REACHED!  Final gradient:    0.00000013 ( 0.13E-06)
                       Final energy:  -1391.78573410
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -1391.828778519196
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276129
 One electron energy                         -1920.67961148
 Two electron energy                           528.85083296
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -1391.828778516713
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276116
 One electron energy                         -1920.67961127
 Two electron energy                           528.85083275
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -1391.828778513354
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276096
 One electron energy                         -1920.67961094
 Two electron energy                           528.85083243
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -1391.828778508993
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276074
 One electron energy                         -1920.67961057
 Two electron energy                           528.85083206
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -1391.828778506949
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276053
 One electron energy                         -1920.67961022
 Two electron energy                           528.85083171
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -1391.828778506484
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276055
 One electron energy                         -1920.67961026
 Two electron energy                           528.85083175
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -1391.828778498267
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276006
 One electron energy                         -1920.67960944
 Two electron energy                           528.85083095
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy                     -1391.789287283293
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829686
 One electron energy                         -1936.90226981
 Two electron energy                           545.11298253
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 8.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy                     -1391.789287281753
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829700
 One electron energy                         -1936.90227002
 Two electron energy                           545.11298274
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 9.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy                    -1391.789287277645
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829719
 One electron energy                         -1936.90227035
 Two electron energy                           545.11298307
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 10.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1
 ======================
 !MCSCF STATE 11.1 Energy                    -1391.789287274621
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829740
 One electron energy                         -1936.90227070
 Two electron energy                           545.11298343
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 11.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1
 ======================
 !MCSCF STATE 12.1 Energy                    -1391.789287269736
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829759
 One electron energy                         -1936.90227102
 Two electron energy                           545.11298375
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 12.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1
 ======================
 !MCSCF STATE 13.1 Energy                    -1391.789287267446
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829762
 One electron energy                         -1936.90227106
 Two electron energy                           545.11298379
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 13.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1
 ======================
 !MCSCF STATE 14.1 Energy                    -1391.789287259765
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829808
 One electron energy                         -1936.90227183
 Two electron energy                           545.11298457
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 14.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1
 ======================
 !MCSCF STATE 15.1 Energy                    -1391.757355975186
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.51557067
 One electron energy                         -1920.66321666
 Two electron energy                           528.90586068
 Virial ratio                                    1.95949150
 
 !MCSCF STATE 15.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1
 ======================
 !MCSCF STATE 16.1 Energy                    -1391.757355972344
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.51557027
 One electron energy                         -1920.66321598
 Two electron energy                           528.90586001
 Virial ratio                                    1.95949150
 
 !MCSCF STATE 16.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1
 ======================
 !MCSCF STATE 17.1 Energy                    -1391.757355969117
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.51556982
 One electron energy                         -1920.66321523
 Two electron energy                           528.90585926
 Virial ratio                                    1.95949150
 
 !MCSCF STATE 17.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     3.675427723722
 !MCSCF expec                      <2.1|LXLX|2.1>     7.115184415202
 !MCSCF expec                      <3.1|LXLX|3.1>     2.109384326875
 !MCSCF expec                      <4.1|LXLX|4.1>     6.324579063216
 !MCSCF expec                      <5.1|LXLX|5.1>     1.890622641851
 !MCSCF expec                      <6.1|LXLX|6.1>     3.999999950929
 !MCSCF expec                      <7.1|LXLX|7.1>     2.884802513408
 !MCSCF expec                      <8.1|LXLX|8.1>     4.827649411528
 !MCSCF expec                      <9.1|LXLX|9.1>     7.901017604874
 !MCSCF expec                    <10.1|LXLX|10.1>     2.517701124347
 !MCSCF expec                    <11.1|LXLX|11.1>     5.172316725928
 !MCSCF expec                    <12.1|LXLX|12.1>     3.999999995088
 !MCSCF expec                    <13.1|LXLX|13.1>     1.482301921994
 !MCSCF expec                    <14.1|LXLX|14.1>     2.098979361940
 !MCSCF expec                    <15.1|LXLX|15.1>     0.000000009799
 !MCSCF expec                    <16.1|LXLX|16.1>     0.999999988821
 !MCSCF expec                    <17.1|LXLX|17.1>     0.999999999813
 
 !MCSCF expec                      <1.1|LYLY|1.1>     4.331764849618
 !MCSCF expec                      <2.1|LYLY|2.1>     0.092006878949
 !MCSCF expec                      <3.1|LYLY|3.1>     8.812494296738
 !MCSCF expec                      <4.1|LYLY|4.1>     5.668228036695
 !MCSCF expec                      <5.1|LYLY|5.1>     1.187501466826
 !MCSCF expec                      <6.1|LYLY|6.1>     3.999999947572
 !MCSCF expec                      <7.1|LYLY|7.1>     3.907990902556
 !MCSCF expec                      <8.1|LYLY|8.1>     3.216113519091
 !MCSCF expec                      <9.1|LYLY|9.1>     0.304135131812
 !MCSCF expec                    <10.1|LYLY|10.1>     8.482131365506
 !MCSCF expec                    <11.1|LYLY|11.1>     6.783916814851
 !MCSCF expec                    <12.1|LYLY|12.1>     3.999999999850
 !MCSCF expec                    <13.1|LYLY|13.1>     1.517865538398
 !MCSCF expec                    <14.1|LYLY|14.1>     3.695863709374
 !MCSCF expec                    <15.1|LYLY|15.1>     0.999999990351
 !MCSCF expec                    <16.1|LYLY|16.1>     0.000000011299
 !MCSCF expec                    <17.1|LYLY|17.1>     0.999999999998
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     3.992807426660
 !MCSCF expec                      <2.1|LZLZ|2.1>     4.792808705849
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.078121376387
 !MCSCF expec                      <4.1|LZLZ|4.1>     0.007192900090
 !MCSCF expec                      <5.1|LZLZ|5.1>     8.921875891323
 !MCSCF expec                      <6.1|LZLZ|6.1>     4.000000101499
 !MCSCF expec                      <7.1|LZLZ|7.1>     5.207206584036
 !MCSCF expec                      <8.1|LZLZ|8.1>     3.956237069382
 !MCSCF expec                      <9.1|LZLZ|9.1>     3.794847263313
 !MCSCF expec                    <10.1|LZLZ|10.1>     1.000167510147
 !MCSCF expec                    <11.1|LZLZ|11.1>     0.043766459221
 !MCSCF expec                    <12.1|LZLZ|12.1>     4.000000005062
 !MCSCF expec                    <13.1|LZLZ|13.1>     8.999832539608
 !MCSCF expec                    <14.1|LZLZ|14.1>     6.205156928686
 !MCSCF expec                    <15.1|LZLZ|15.1>     0.999999999850
 !MCSCF expec                    <16.1|LZLZ|16.1>     0.999999999880
 !MCSCF expec                    <17.1|LZLZ|17.1>     0.000000000189
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 5 6 3 2 1 1   2 6 4 3 5 1 2 6 4 3   5 1 4 3 2 6 5 91013   71514 81211 1 4 3 5
                                        2 6 91013141512 8 7  11 4 3 5 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 3 1 2 1   3 2 1 2 3 410 8 7 9   6 5 1 2 3 4 8 6 9 7  10 5 1 2 3 4 7 9 810
                                        6 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.64347     1  1  s    0.97813
    2.1     2.00000   -35.30552     1  2  s    0.99662
    3.1     2.00000    -4.50254     1  3  s    0.98907
    4.1     1.52310    -0.28562     1  1  d1+  1.00058
    5.1     1.52310    -0.28562     1  1  d2+  1.00058
    6.1     1.52310    -0.28562     1  1  d1-  1.00058
    7.1     1.52310    -0.28562     1  1  d2-  1.00058
    8.1     1.52310    -0.28562     1  1  d0  -1.00058
    9.1     1.38596    -0.15815     1  4  s    1.01632
    1.2     2.00000   -30.02187     1  1  px   0.99894
    2.2     2.00000   -30.02187     1  1  py   0.99894
    3.2     2.00000   -30.02187     1  1  pz   0.99894
    4.2     1.99952    -2.97126     1  2  px   0.99960
    5.2     1.99952    -2.97126     1  2  py   0.99960
    6.2     1.99952    -2.97126     1  2  pz   0.99960
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================

 State:                1               2               3               4               5               6               7
 22a22aa 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2a2aa22 222      0.00000560     -0.00001367     -0.00001045     -0.00003630      0.00006890      0.99953184     -0.00003294
 2aaa222 222      0.99863279      0.00000834     -0.00001532      0.04238467      0.00000961     -0.00000405     -0.00000178
 2222aaa 222     -0.00000000     -0.00000000     -0.00000000      0.00000001      0.00000000      0.00000000     -0.00000000
 2aa222a 222     -0.00000000      0.00000002      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000001
 2a2a2a2 222      0.01895501      0.00000715     -0.00001213     -0.44660213      0.00001730     -0.00001632      0.00000675
 22a2aa2 222     -0.03791000     -0.00001431      0.00002426      0.89320433     -0.00003459      0.00003265     -0.00001350
 2a2a22a 222     -0.00000001     -0.00000000     -0.00000000     -0.00000001      0.00000000      0.00000000      0.00000000
 222aaa2 222      0.00000182     -0.08963406     -0.00000599      0.00001208     -0.00002191      0.00002809      0.88950368
 2aa22a2 222     -0.00000812      0.88366680      0.00008164      0.00001176     -0.00000818      0.00000762     -0.13558814
 222aa2a 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000002
 22aaa22 222     -0.00000364      0.45843497      0.00004367      0.00001376     -0.00001737      0.00002062      0.43527344
 2aa2a22 222      0.00000966     -0.00005754      0.62906536     -0.00001426      0.06246930      0.00000227     -0.00000002
 2a22aa2 222     -0.00000070     -0.00003404      0.47494372      0.00001641      0.75741636     -0.00004725      0.00001843
 2a22a2a 222     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000001     -0.00000000      0.00000000
 22aa22a 222      0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000001      0.00000000     -0.00000000
 22aa2a2 222      0.00001742     -0.00006562      0.61462927     -0.00004110     -0.64921641      0.00005117     -0.00001847
 222a2aa 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000001      0.00000000     -0.00000000
 2a222aa 222      0.00000000     -0.00000001     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 22a2a2a 222     -0.00000000     -0.00000000      0.00000000      0.00000002     -0.00000000      0.00000000     -0.00000000
 
 Energy:      -1391.82877852  -1391.82877852  -1391.82877851  -1391.82877851  -1391.82877851  -1391.82877851  -1391.82877850

 State:                8               9              10              11              12              13              14
 22a22aa 222     -0.00000520      0.00000145      0.00001205     -0.00001846      1.00000000     -0.00003593      0.00001656
 2a2aa22 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2aaa222 222     -0.00000000     -0.00000000     -0.00000000      0.00000001      0.00000000      0.00000000      0.00000000
 2222aaa 222      0.99451459     -0.00002388     -0.00002318      0.10459796      0.00000710      0.00001133      0.00000434
 2aa222a 222     -0.00000392      0.02386186      0.00000488      0.00000558     -0.00001484     -0.00000991      0.89410877
 2a2a2a2 222     -0.00000000     -0.00000000      0.00000000     -0.00000001     -0.00000000     -0.00000000      0.00000000
 22a2aa2 222     -0.00000001     -0.00000000     -0.00000000      0.00000001      0.00000000     -0.00000000     -0.00000000
 2a2a22a 222     -0.09355525     -0.00000909     -0.00002911      0.88952095      0.00001594      0.00000663     -0.00000571
 222aaa2 222     -0.00000000     -0.00000002     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000001
 2aa22a2 222      0.00000000     -0.00000001     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000001
 222aa2a 222      0.00002073      0.85975170     -0.00001190      0.00000938      0.00000284      0.00001003     -0.24663143
 22aaa22 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000001
 2aa2a22 222     -0.00000000     -0.00000000      0.00000001      0.00000000      0.00000000      0.00000001      0.00000000
 2a22aa2 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000002     -0.00000000
 2a22a2a 222     -0.00001814     -0.00001261     -0.54448112     -0.00002501      0.00003205      0.70960567      0.00001117
 22aa22a 222     -0.00000343     -0.00000077     -0.55095237     -0.00001314     -0.00001868     -0.70459309     -0.00000478
 22aa2a2 222      0.00000000      0.00000000     -0.00000001      0.00000000     -0.00000000      0.00000001      0.00000000
 222a2aa 222      0.00001246      0.00000773      0.63244905      0.00002203     -0.00000772     -0.00289405     -0.00000369
 2a222aa 222     -0.00000971     -0.51015452      0.00000405     -0.00000863      0.00000693     -0.00000007     -0.37382142
 22a2a2a 222      0.04677764      0.00000454      0.00001456     -0.44476033     -0.00000797     -0.00000331      0.00000286
 
 Energy:      -1391.78928728  -1391.78928728  -1391.78928728  -1391.78928727  -1391.78928727  -1391.78928727  -1391.78928726

 State:               15              16              17
 22a22aa 222     -0.00000000     -0.00000000      0.00000000
 2a2aa22 222     -0.00000000      0.00000000     -0.00000000
 2aaa222 222      0.00000000     -0.00000000     -0.00000001
 2222aaa 222      0.00000000     -0.00000000      0.00000001
 2aa222a 222      0.00000003     -0.00027826      0.00000000
 2a2a2a2 222      0.00001094      0.00000980      0.89338976
 22a2aa2 222      0.00000547      0.00000490      0.44669485
 2a2a22a 222     -0.00000000     -0.00000000     -0.00027826
 222aaa2 222      0.00004388     -0.44669494      0.00000490
 2aa22a2 222      0.00004388     -0.44669483      0.00000490
 222aa2a 222      0.00000003     -0.00027828      0.00000000
 22aaa22 222     -0.00007600      0.77369820     -0.00000848
 2aa2a22 222      0.77369816      0.00007600     -0.00000948
 2a22aa2 222     -0.44669493     -0.00004388      0.00000547
 2a22a2a 222     -0.00027828     -0.00000003      0.00000000
 22aa22a 222     -0.00027827     -0.00000003      0.00000000
 22aa2a2 222     -0.44669490     -0.00004388      0.00000547
 222a2aa 222     -0.00048200     -0.00000005      0.00000001
 2a222aa 222      0.00000005     -0.00048198      0.00000001
 22a2a2a 222     -0.00000001     -0.00000001     -0.00055653
 
 Energy:      -1391.75735598  -1391.75735597  -1391.75735597
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.44       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.80       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.43      1.49      0.87      0.90
 REAL TIME  *         4.80 SEC
 DISK USED  *        37.30 MB (local),      421.40 MB (total)
 SF USED    *        22.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

          ENERGY     LL
    -1391.828779   12.0
    -1391.828779   12.0
    -1391.828779   12.0
    -1391.828779   12.0
    -1391.828779   12.0
    -1391.828779   12.0
    -1391.828778   12.0
    -1391.789287   12.0
    -1391.789287   12.0
    -1391.789287   12.0
    -1391.789287   12.0
    -1391.789287   12.0
    -1391.789287   12.0
    -1391.789287   12.0
    -1391.757356    2.0
    -1391.757356    2.0
    -1391.757356    2.0
                                                  


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

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  20
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.1180109E-15. Vector removed

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1391.82877852
     2     -1391.82877852
     3     -1391.82877851
     4     -1391.82877851
     5     -1391.82877851
     6     -1391.82877851
     7     -1391.82877850
     8     -1391.78928728
     9     -1391.78928728
    10     -1391.78928728
    11     -1391.78928727
    12     -1391.78928727
    13     -1391.78928727
    14     -1391.78928726
    15     -1391.75735598
    16     -1391.75735597
    17     -1391.75735597

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2443D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3046D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2198D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.4785D-06

 Number of blocks in overlap matrix:    70   Smallest eigenvalue:  0.22D-06
 Number of N-2 electron functions:    1593
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       3020436
 Total number of contracted configurations:      3072548
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  745968 words, CPU-Time:      0.39 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  567403 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1391.82877852    -0.00000000    -0.80143560  0.77D-01  0.63D-01     0.99
    1     2     2     1.00000000     0.00000000 -1391.82877852     0.00000000    -0.79924792  0.75D-01  0.63D-01     0.99
    1     3     3     1.00000000     0.00000000 -1391.82877851     0.00000000    -0.79920333  0.75D-01  0.63D-01     0.99
    1     4     4     1.00000000     0.00000000 -1391.82877851    -0.00000000    -0.79871491  0.75D-01  0.63D-01     0.99
    1     5     5     1.00000000     0.00000000 -1391.82877851    -0.00000000    -0.79987956  0.76D-01  0.63D-01     0.99
    1     6     6     1.00000000     0.00000000 -1391.82877851    -0.00000000    -0.80311279  0.77D-01  0.64D-01     0.99
    1     7     7     1.00000000     0.00000000 -1391.82877850     0.00000000    -0.79999431  0.76D-01  0.63D-01     0.99
    1     8     8     1.00000000     0.00000000 -1391.78928728    -0.00000000    -0.85771823  0.62D-01  0.88D-01     0.99
    1     9     9     1.00000000     0.00000000 -1391.78928728     0.00000000    -0.85694249  0.61D-01  0.88D-01     0.99
    1    10    10     1.00000000     0.00000000 -1391.78928728    -0.00000000    -0.85714348  0.60D-01  0.88D-01     0.99
    1    11    11     1.00000000     0.00000000 -1391.78928727     0.00000000    -0.85649845  0.61D-01  0.88D-01     0.99
    1    12    12     1.00000000     0.00000000 -1391.78928727    -0.00000000    -0.85839049  0.62D-01  0.88D-01     0.99
    1    13    13     1.00000000     0.00000000 -1391.78928727     0.00000000    -0.85738840  0.61D-01  0.88D-01     0.99
    1    14    14     1.00000000     0.00000000 -1391.78928726     0.00000000    -0.85693009  0.61D-01  0.88D-01     0.99
    1    15    15     1.00000000     0.00000000 -1391.75735598    -0.00000000    -0.80621320  0.80D-01  0.64D-01     0.99
    1    16    16     1.00000000     0.00000000 -1391.75735597     0.00000000    -0.80570862  0.80D-01  0.64D-01     0.99
    1    17    17     1.00000000     0.00000000 -1391.75735597    -0.00000000    -0.80542875  0.78D-01  0.65D-01     0.99
    2     1     1     1.08287944    -0.61949533 -1392.44827384    -0.61949533    -0.05398139  0.99D-02  0.40D-02   106.66
    2     2     2     1.08284879    -0.61941997 -1392.44819849    -0.61941997    -0.05394378  0.99D-02  0.40D-02   106.66
    2     3     3     1.08370781    -0.61912483 -1392.44790334    -0.61912483    -0.05544970  0.11D-01  0.40D-02   106.66
    2     4     4     1.08293915    -0.61883841 -1392.44761692    -0.61883841    -0.05427149  0.99D-02  0.40D-02   106.66
    2     5     5     1.08321599    -0.61871954 -1392.44749805    -0.61871954    -0.05472137  0.10D-01  0.40D-02   106.66
    2     6     6     1.08319679    -0.61857630 -1392.44735481    -0.61857630    -0.05469688  0.10D-01  0.40D-02   106.66
    2     7     7     1.08354360    -0.61830498 -1392.44708347    -0.61830498    -0.05550872  0.11D-01  0.40D-02   106.66
    2     8     8     1.08695079    -0.65555500 -1392.44484228    -0.65555500    -0.04108921  0.80D-02  0.28D-02   106.66
    2     9     9     1.08694082    -0.65544762 -1392.44473490    -0.65544762    -0.04112438  0.80D-02  0.28D-02   106.66
    2    10    10     1.08715892    -0.65513898 -1392.44442626    -0.65513898    -0.04139705  0.82D-02  0.28D-02   106.66
    2    11    11     1.08733554    -0.65509866 -1392.44438594    -0.65509866    -0.04163877  0.83D-02  0.28D-02   106.66
    2    12    12     1.08732526    -0.65507048 -1392.44435775    -0.65507048    -0.04162473  0.83D-02  0.28D-02   106.66
    2    13    13     1.08775279    -0.65478079 -1392.44406806    -0.65478079    -0.04224425  0.88D-02  0.28D-02   106.66
    2    14    14     1.08770753    -0.65457866 -1392.44386592    -0.65457866    -0.04234204  0.88D-02  0.28D-02   106.66
    2    15    15     1.08582647    -0.62500804 -1392.38236402    -0.62500804    -0.05673462  0.11D-01  0.40D-02   106.66
    2    16    16     1.08626637    -0.62401552 -1392.38137149    -0.62401552    -0.05783337  0.12D-01  0.41D-02   106.66
    2    17    17     1.08624289    -0.62373145 -1392.38108742    -0.62373145    -0.05792390  0.12D-01  0.41D-02   106.66
    3     1     1     1.06850033    -0.66540418 -1392.49418270    -0.04590885    -0.00378686  0.14D-03  0.49D-03   212.34
    3     2     2     1.06827835    -0.66509123 -1392.49386974    -0.04567125    -0.00390092  0.14D-03  0.50D-03   212.34
    3     3     3     1.06823952    -0.66500244 -1392.49378095    -0.04587761    -0.00393252  0.15D-03  0.50D-03   212.34
    3     4     4     1.06825074    -0.66485795 -1392.49363646    -0.04601954    -0.00400275  0.15D-03  0.50D-03   212.34
    3     5     5     1.06817292    -0.66483676 -1392.49361527    -0.04611722    -0.00395913  0.14D-03  0.50D-03   212.34
    3     6     6     1.06819432    -0.66477281 -1392.49355132    -0.04619651    -0.00403750  0.15D-03  0.50D-03   212.34
    3     7     7     1.06822100    -0.66474525 -1392.49352375    -0.04644027    -0.00405021  0.15D-03  0.50D-03   212.34
    3     8     8     1.07412597    -0.69139011 -1392.48067739    -0.03583511    -0.00269354  0.28D-03  0.33D-03   212.34
    3     9     9     1.07410232    -0.69134998 -1392.48063726    -0.03590236    -0.00271843  0.28D-03  0.34D-03   212.34
    3    10    10     1.07424857    -0.69133378 -1392.48062106    -0.03619480    -0.00278235  0.30D-03  0.35D-03   212.34
    3    11    11     1.07414601    -0.69131689 -1392.48060417    -0.03621823    -0.00275008  0.29D-03  0.34D-03   212.34
    3    12    12     1.07412816    -0.69129553 -1392.48058280    -0.03622505    -0.00275946  0.29D-03  0.34D-03   212.34
    3    13    13     1.07409800    -0.69126883 -1392.48055609    -0.03648804    -0.00276637  0.29D-03  0.34D-03   212.34
    3    14    14     1.07417198    -0.69125243 -1392.48053969    -0.03667378    -0.00282027  0.30D-03  0.35D-03   212.34
    3    15    15     1.07130607    -0.67197311 -1392.42932909    -0.04696507    -0.00405510  0.17D-03  0.51D-03   212.34
    3    16    16     1.07114246    -0.67171974 -1392.42907571    -0.04770422    -0.00411880  0.17D-03  0.52D-03   212.34
    3    17    17     1.07107167    -0.67156211 -1392.42891808    -0.04783066    -0.00417313  0.17D-03  0.52D-03   212.34
    4     1     1     1.07469768    -0.67132908 -1392.50010760    -0.00592490    -0.00088251  0.48D-04  0.95D-04   318.49
    4     2     2     1.07473271    -0.67127242 -1392.50005093    -0.00618119    -0.00091421  0.50D-04  0.96D-04   318.49
    4     3     3     1.07476368    -0.67125516 -1392.50003368    -0.00625272    -0.00092408  0.50D-04  0.96D-04   318.49
    4     4     4     1.07471667    -0.67122631 -1392.50000482    -0.00636836    -0.00093919  0.51D-04  0.97D-04   318.49
    4     5     5     1.07476913    -0.67121994 -1392.49999845    -0.00638318    -0.00094538  0.51D-04  0.96D-04   318.49
    4     6     6     1.07475761    -0.67120935 -1392.49998786    -0.00643654    -0.00094985  0.51D-04  0.97D-04   318.49
    4     7     7     1.07444777    -0.67114611 -1392.49992461    -0.00640087    -0.00096310  0.52D-04  0.10D-03   318.49
    4     8     8     1.07470761    -0.69453010 -1392.48381738    -0.00313999    -0.00048803  0.29D-04  0.66D-04   318.49
    4     9     9     1.07469419    -0.69452429 -1392.48381157    -0.00317430    -0.00049339  0.29D-04  0.66D-04   318.49
    4    10    10     1.07471013    -0.69452252 -1392.48380979    -0.00318873    -0.00049151  0.29D-04  0.67D-04   318.49
    4    11    11     1.07467620    -0.69451137 -1392.48379864    -0.00319448    -0.00049696  0.29D-04  0.67D-04   318.49
    4    12    12     1.07466632    -0.69450662 -1392.48379389    -0.00321109    -0.00049982  0.30D-04  0.67D-04   318.49
    4    13    13     1.07466877    -0.69450528 -1392.48379255    -0.00323646    -0.00050292  0.29D-04  0.68D-04   318.49
    4    14    14     1.07465269    -0.69449924 -1392.48378650    -0.00324680    -0.00050588  0.30D-04  0.67D-04   318.49
    4    15    15     1.07782326    -0.67826461 -1392.43562058    -0.00629150    -0.00094907  0.64D-04  0.96D-04   318.49
    4    16    16     1.07752159    -0.67815152 -1392.43550749    -0.00643178    -0.00099463  0.66D-04  0.10D-03   318.49
    4    17    17     1.07748448    -0.67810765 -1392.43546362    -0.00654554    -0.00101588  0.66D-04  0.10D-03   318.49
    5     1     1     1.07818613    -0.67262712 -1392.50140564    -0.00129804    -0.00016915  0.95D-05  0.19D-04   424.58
    5     2     2     1.07818938    -0.67261365 -1392.50139216    -0.00134123    -0.00017555  0.98D-05  0.19D-04   424.58
    5     3     3     1.07820532    -0.67260872 -1392.50138724    -0.00135356    -0.00017773  0.98D-05  0.19D-04   424.58
    5     4     4     1.07817672    -0.67260239 -1392.50138090    -0.00137608    -0.00018163  0.10D-04  0.20D-04   424.58
    5     5     5     1.07820195    -0.67260143 -1392.50137993    -0.00138149    -0.00018197  0.10D-04  0.19D-04   424.58
    5     6     6     1.07818687    -0.67259809 -1392.50137659    -0.00138873    -0.00018356  0.10D-04  0.20D-04   424.58
    5     7     7     1.07803771    -0.67257458 -1392.50135308    -0.00142847    -0.00019551  0.11D-04  0.21D-04   424.58
    5     8     8     1.07651967    -0.69516990 -1392.48445718    -0.00063980    -0.00008869  0.38D-05  0.14D-04   424.58
    5     9     9     1.07652144    -0.69516963 -1392.48445691    -0.00064534    -0.00008829  0.37D-05  0.14D-04   424.58
    5    10    10     1.07651468    -0.69516810 -1392.48445537    -0.00064558    -0.00008933  0.37D-05  0.14D-04   424.58
    5    11    11     1.07650299    -0.69516580 -1392.48445307    -0.00065443    -0.00009106  0.37D-05  0.14D-04   424.58
    5    12    12     1.07650173    -0.69516347 -1392.48445074    -0.00065685    -0.00009075  0.38D-05  0.14D-04   424.58
    5    13    13     1.07649790    -0.69516252 -1392.48444978    -0.00065723    -0.00009120  0.38D-05  0.14D-04   424.58
    5    14    14     1.07649689    -0.69516252 -1392.48444978    -0.00066328    -0.00009210  0.39D-05  0.14D-04   424.58
    5    15    15     1.08162546    -0.67963141 -1392.43698739    -0.00136680    -0.00017859  0.11D-04  0.20D-04   424.58
    5    16    16     1.08147152    -0.67960008 -1392.43695606    -0.00144857    -0.00019539  0.12D-04  0.22D-04   424.58
    5    17    17     1.08145417    -0.67958863 -1392.43694460    -0.00148098    -0.00020128  0.12D-04  0.22D-04   424.58
    6     1     1     1.07815570    -0.67282843 -1392.50160695    -0.00020132    -0.00004649  0.56D-05  0.49D-05   530.91
    6     2     2     1.07813939    -0.67282497 -1392.50160349    -0.00021133    -0.00004870  0.57D-05  0.50D-05   530.91
    6     3     3     1.07814373    -0.67282369 -1392.50160220    -0.00021497    -0.00004963  0.57D-05  0.51D-05   530.91
    6     4     4     1.07813547    -0.67282184 -1392.50160035    -0.00021945    -0.00005106  0.59D-05  0.52D-05   530.91
    6     5     5     1.07811811    -0.67282130 -1392.50159980    -0.00021987    -0.00005093  0.60D-05  0.52D-05   530.91
    6     6     6     1.07811976    -0.67282018 -1392.50159868    -0.00022209    -0.00005157  0.59D-05  0.52D-05   530.91
    6     7     7     1.07799219    -0.67280942 -1392.50158792    -0.00023484    -0.00005647  0.68D-05  0.59D-05   530.91
    6     8     8     1.07701087    -0.69528467 -1392.48457195    -0.00011477    -0.00002597  0.29D-05  0.32D-05   530.91
    6     9     9     1.07701303    -0.69528419 -1392.48457148    -0.00011456    -0.00002612  0.29D-05  0.32D-05   530.91
    6    10    10     1.07701049    -0.69528367 -1392.48457095    -0.00011557    -0.00002664  0.31D-05  0.33D-05   530.91
    6    11    11     1.07699972    -0.69528335 -1392.48457063    -0.00011755    -0.00002689  0.32D-05  0.33D-05   530.91
    6    12    12     1.07699204    -0.69528195 -1392.48456922    -0.00011848    -0.00002732  0.31D-05  0.33D-05   530.91
    6    13    13     1.07699919    -0.69528160 -1392.48456887    -0.00011909    -0.00002731  0.30D-05  0.33D-05   530.91
    6    14    14     1.07699563    -0.69528136 -1392.48456862    -0.00011884    -0.00002745  0.30D-05  0.33D-05   530.91
    6    15    15     1.08154492    -0.67984012 -1392.43719610    -0.00020871    -0.00004863  0.61D-05  0.49D-05   530.91
    6    16    16     1.08140304    -0.67982868 -1392.43718466    -0.00022860    -0.00005457  0.70D-05  0.56D-05   530.91
    6    17    17     1.08137668    -0.67982472 -1392.43718069    -0.00023609    -0.00005682  0.73D-05  0.58D-05   530.91
    7     1     1     1.07884560    -0.67288071 -1392.50165922    -0.00005227    -0.00001186  0.14D-05  0.13D-05   636.75
    7     2     2     1.07884481    -0.67287969 -1392.50165821    -0.00005472    -0.00001240  0.15D-05  0.13D-05   636.75
    7     3     3     1.07884852    -0.67287945 -1392.50165796    -0.00005576    -0.00001260  0.15D-05  0.13D-05   636.75
    7     4     4     1.07884806    -0.67287905 -1392.50165756    -0.00005721    -0.00001286  0.16D-05  0.13D-05   636.75
    7     5     5     1.07883527    -0.67287855 -1392.50165706    -0.00005725    -0.00001301  0.16D-05  0.14D-05   636.75
    7     6     6     1.07883660    -0.67287816 -1392.50165666    -0.00005798    -0.00001319  0.16D-05  0.14D-05   636.75
    7     7     7     1.07876179    -0.67287355 -1392.50165205    -0.00006413    -0.00001518  0.18D-05  0.17D-05   636.75
    7     8     8     1.07737083    -0.69531540 -1392.48460268    -0.00003073    -0.00000874  0.16D-05  0.10D-05   636.75
    7     9     9     1.07737212    -0.69531517 -1392.48460245    -0.00003098    -0.00000886  0.17D-05  0.10D-05   636.75
    7    10    10     1.07737273    -0.69531494 -1392.48460222    -0.00003128    -0.00000903  0.17D-05  0.10D-05   636.75
    7    11    11     1.07736745    -0.69531484 -1392.48460212    -0.00003149    -0.00000908  0.17D-05  0.10D-05   636.75
    7    12    12     1.07736196    -0.69531429 -1392.48460156    -0.00003234    -0.00000929  0.17D-05  0.11D-05   636.75
    7    13    13     1.07736635    -0.69531407 -1392.48460133    -0.00003246    -0.00000943  0.18D-05  0.11D-05   636.75
    7    14    14     1.07736490    -0.69531397 -1392.48460123    -0.00003261    -0.00000948  0.18D-05  0.11D-05   636.75
    7    15    15     1.08220717    -0.67989439 -1392.43725036    -0.00005427    -0.00001245  0.17D-05  0.12D-05   636.75
    7    16    16     1.08213099    -0.67988996 -1392.43724594    -0.00006128    -0.00001452  0.20D-05  0.15D-05   636.75
    7    17    17     1.08211938    -0.67988860 -1392.43724456    -0.00006387    -0.00001521  0.21D-05  0.15D-05   636.75
    8     1     1     1.07907427    -0.67289653 -1392.50167505    -0.00001582    -0.00000372  0.31D-06  0.48D-06   743.35
    8     2     2     1.07907605    -0.67289625 -1392.50167477    -0.00001656    -0.00000384  0.30D-06  0.48D-06   743.35
    8     3     3     1.07907781    -0.67289622 -1392.50167473    -0.00001677    -0.00000385  0.29D-06  0.48D-06   743.35
    8     4     4     1.07907708    -0.67289613 -1392.50167464    -0.00001708    -0.00000390  0.29D-06  0.48D-06   743.35
    8     5     5     1.07906940    -0.67289590 -1392.50167440    -0.00001735    -0.00000402  0.31D-06  0.50D-06   743.35
    8     6     6     1.07907075    -0.67289577 -1392.50167427    -0.00001761    -0.00000408  0.31D-06  0.51D-06   743.35
    8     7     7     1.07902489    -0.67289402 -1392.50167251    -0.00002046    -0.00000501  0.42D-06  0.63D-06   743.35
    8     8     8     1.07744213    -0.69532521 -1392.48461249    -0.00000981    -0.00000267  0.16D-06  0.47D-06   743.35
    8     9     9     1.07744156    -0.69532510 -1392.48461239    -0.00000993    -0.00000272  0.16D-06  0.47D-06   743.35
    8    10    10     1.07744034    -0.69532503 -1392.48461231    -0.00001009    -0.00000276  0.16D-06  0.49D-06   743.35
    8    11    11     1.07743864    -0.69532501 -1392.48461228    -0.00001017    -0.00000278  0.16D-06  0.49D-06   743.35
    8    12    12     1.07743566    -0.69532476 -1392.48461203    -0.00001047    -0.00000289  0.18D-06  0.50D-06   743.35
    8    13    13     1.07743607    -0.69532465 -1392.48461192    -0.00001058    -0.00000293  0.17D-06  0.51D-06   743.35
    8    14    14     1.07743536    -0.69532462 -1392.48461188    -0.00001065    -0.00000294  0.18D-06  0.51D-06   743.35
    8    15    15     1.08246408    -0.67991052 -1392.43726650    -0.00001613    -0.00000378  0.31D-06  0.48D-06   743.35
    8    16    16     1.08241829    -0.67990895 -1392.43726492    -0.00001899    -0.00000463  0.39D-06  0.59D-06   743.35
    8    17    17     1.08241221    -0.67990850 -1392.43726447    -0.00001990    -0.00000486  0.41D-06  0.61D-06   743.35
    9     1     1     1.07915163    -0.67290090 -1392.50167942    -0.00000437    -0.00000119  0.16D-06  0.13D-06   849.60
    9     2     2     1.07915147    -0.67290083 -1392.50167934    -0.00000458    -0.00000125  0.16D-06  0.13D-06   849.60
    9     3     3     1.07915204    -0.67290083 -1392.50167934    -0.00000461    -0.00000126  0.16D-06  0.13D-06   849.60
    9     4     4     1.07915129    -0.67290081 -1392.50167932    -0.00000468    -0.00000128  0.17D-06  0.13D-06   849.60
    9     5     5     1.07914536    -0.67290070 -1392.50167921    -0.00000481    -0.00000132  0.17D-06  0.14D-06   849.60
    9     6     6     1.07914557    -0.67290066 -1392.50167917    -0.00000490    -0.00000135  0.18D-06  0.14D-06   849.60
    9     7     7     1.07910946    -0.67289997 -1392.50167847    -0.00000596    -0.00000171  0.23D-06  0.18D-06   849.60
    9     8     8     1.07749787    -0.69532854 -1392.48461582    -0.00000333    -0.00000091  0.78D-07  0.13D-06   849.60
    9     9     9     1.07749693    -0.69532849 -1392.48461578    -0.00000339    -0.00000093  0.79D-07  0.13D-06   849.60
    9    10    10     1.07749445    -0.69532847 -1392.48461575    -0.00000345    -0.00000096  0.88D-07  0.13D-06   849.60
    9    11    11     1.07749528    -0.69532847 -1392.48461575    -0.00000346    -0.00000096  0.86D-07  0.14D-06   849.60
    9    12    12     1.07749234    -0.69532836 -1392.48461563    -0.00000361    -0.00000100  0.87D-07  0.14D-06   849.60
    9    13    13     1.07749180    -0.69532831 -1392.48461558    -0.00000366    -0.00000102  0.87D-07  0.15D-06   849.60
    9    14    14     1.07749125    -0.69532831 -1392.48461557    -0.00000369    -0.00000103  0.88D-07  0.14D-06   849.60
    9    15    15     1.08252683    -0.67991496 -1392.43727094    -0.00000444    -0.00000122  0.17D-06  0.12D-06   849.60
    9    16    16     1.08249116    -0.67991439 -1392.43727036    -0.00000544    -0.00000154  0.22D-06  0.16D-06   849.60
    9    17    17     1.08248505    -0.67991422 -1392.43727019    -0.00000573    -0.00000163  0.23D-06  0.17D-06   849.60
   10     1     1     1.07926977    -0.67290220 -1392.50168071    -0.00000130    -0.00000035  0.49D-07  0.43D-07   956.06
   10     2     2     1.07927184    -0.67290218 -1392.50168070    -0.00000136    -0.00000036  0.52D-07  0.41D-07   956.06
   10     3     3     1.07927191    -0.67290219 -1392.50168070    -0.00000136    -0.00000036  0.53D-07  0.41D-07   956.06
   10     4     4     1.07927134    -0.67290219 -1392.50168070    -0.00000138    -0.00000036  0.52D-07  0.42D-07   956.06
   10     5     5     1.07926876    -0.67290214 -1392.50168065    -0.00000144    -0.00000039  0.55D-07  0.44D-07   956.06
   10     6     6     1.07926868    -0.67290213 -1392.50168064    -0.00000147    -0.00000039  0.56D-07  0.45D-07   956.06
   10     7     7     1.07925128    -0.67290185 -1392.50168035    -0.00000188    -0.00000053  0.73D-07  0.63D-07   956.06
   10     8     8     1.07755236    -0.69532960 -1392.48461688    -0.00000106    -0.00000036  0.73D-07  0.40D-07   956.06
   10     9     9     1.07755188    -0.69532958 -1392.48461686    -0.00000109    -0.00000037  0.75D-07  0.41D-07   956.06
   10    10    10     1.07755150    -0.69532958 -1392.48461685    -0.00000110    -0.00000038  0.79D-07  0.42D-07   956.06
   10    11    11     1.07755165    -0.69532957 -1392.48461685    -0.00000110    -0.00000038  0.78D-07  0.42D-07   956.06
   10    12    12     1.07754979    -0.69532953 -1392.48461680    -0.00000117    -0.00000040  0.80D-07  0.44D-07   956.06
   10    13    13     1.07754945    -0.69532951 -1392.48461678    -0.00000120    -0.00000042  0.84D-07  0.45D-07   956.06
   10    14    14     1.07754931    -0.69532951 -1392.48461677    -0.00000120    -0.00000042  0.85D-07  0.45D-07   956.06
   10    15    15     1.08263942    -0.67991626 -1392.43727224    -0.00000131    -0.00000036  0.59D-07  0.39D-07   956.06
   10    16    16     1.08262173    -0.67991605 -1392.43727202    -0.00000166    -0.00000047  0.75D-07  0.53D-07   956.06
   10    17    17     1.08261959    -0.67991599 -1392.43727196    -0.00000176    -0.00000050  0.81D-07  0.55D-07   956.06
   11     1     1     1.07929302    -0.67290263 -1392.50168115    -0.00000043    -0.00000012  0.13D-07  0.17D-07  1062.41
   11     2     2     1.07929147    -0.67290263 -1392.50168115    -0.00000045    -0.00000013  0.15D-07  0.18D-07  1062.41
   11     3     3     1.07929310    -0.67290263 -1392.50168115    -0.00000045    -0.00000012  0.13D-07  0.17D-07  1062.41
   11     4     4     1.07929249    -0.67290263 -1392.50168114    -0.00000045    -0.00000013  0.14D-07  0.18D-07  1062.41
   11     5     5     1.07929072    -0.67290262 -1392.50168113    -0.00000048    -0.00000014  0.15D-07  0.18D-07  1062.41
   11     6     6     1.07929062    -0.67290262 -1392.50168112    -0.00000049    -0.00000014  0.15D-07  0.19D-07  1062.41
   11     7     7     1.07927743    -0.67290251 -1392.50168101    -0.00000066    -0.00000020  0.23D-07  0.27D-07  1062.41
   11     8     8     1.07755705    -0.69532999 -1392.48461727    -0.00000039    -0.00000012  0.11D-07  0.20D-07  1062.41
   11     9     9     1.07755648    -0.69532998 -1392.48461726    -0.00000040    -0.00000012  0.11D-07  0.21D-07  1062.41
   11    10    10     1.07755618    -0.69532998 -1392.48461726    -0.00000041    -0.00000012  0.11D-07  0.22D-07  1062.41
   11    11    11     1.07755621    -0.69532998 -1392.48461726    -0.00000041    -0.00000012  0.11D-07  0.22D-07  1062.41
   11    12    12     1.07755485    -0.69532997 -1392.48461724    -0.00000044    -0.00000013  0.13D-07  0.23D-07  1062.41
   11    13    13     1.07755417    -0.69532996 -1392.48461723    -0.00000045    -0.00000014  0.13D-07  0.24D-07  1062.41
   11    14    14     1.07755402    -0.69532996 -1392.48461722    -0.00000045    -0.00000014  0.13D-07  0.24D-07  1062.41
   11    15    15     1.08266548    -0.67991670 -1392.43727267    -0.00000043    -0.00000012  0.14D-07  0.17D-07  1062.41
   11    16    16     1.08265274    -0.67991662 -1392.43727259    -0.00000057    -0.00000017  0.20D-07  0.23D-07  1062.41
   11    17    17     1.08265123    -0.67991660 -1392.43727257    -0.00000061    -0.00000018  0.21D-07  0.25D-07  1062.41
   12     1     1     1.07931235    -0.67290277 -1392.50168129    -0.00000015    -0.00000004  0.54D-08  0.47D-08  1168.46
   12     2     2     1.07931244    -0.67290278 -1392.50168129    -0.00000015    -0.00000004  0.54D-08  0.46D-08  1168.46
   12     3     3     1.07931177    -0.67290278 -1392.50168129    -0.00000014    -0.00000004  0.52D-08  0.49D-08  1168.46
   12     4     4     1.07931218    -0.67290278 -1392.50168129    -0.00000015    -0.00000004  0.54D-08  0.49D-08  1168.46
   12     5     5     1.07931050    -0.67290278 -1392.50168128    -0.00000016    -0.00000005  0.59D-08  0.53D-08  1168.46
   12     6     6     1.07931081    -0.67290278 -1392.50168128    -0.00000016    -0.00000005  0.58D-08  0.51D-08  1168.46
   12     7     7     1.07930120    -0.67290274 -1392.50168124    -0.00000023    -0.00000007  0.89D-08  0.79D-08  1168.46
   12     8     8     1.07757282    -0.69533013 -1392.48461742    -0.00000014    -0.00000004  0.32D-08  0.66D-08  1168.46
   12     9     9     1.07757194    -0.69533013 -1392.48461741    -0.00000015    -0.00000005  0.35D-08  0.70D-08  1168.46
   12    10    10     1.07757245    -0.69533013 -1392.48461741    -0.00000015    -0.00000004  0.33D-08  0.69D-08  1168.46
   12    11    11     1.07757201    -0.69533013 -1392.48461741    -0.00000015    -0.00000005  0.34D-08  0.72D-08  1168.46
   12    12    12     1.07757131    -0.69533013 -1392.48461740    -0.00000017    -0.00000005  0.39D-08  0.75D-08  1168.46
   12    13    13     1.07757086    -0.69533013 -1392.48461740    -0.00000017    -0.00000005  0.37D-08  0.79D-08  1168.46
   12    14    14     1.07757077    -0.69533013 -1392.48461739    -0.00000017    -0.00000005  0.38D-08  0.79D-08  1168.46
   12    15    15     1.08268042    -0.67991684 -1392.43727282    -0.00000014    -0.00000004  0.58D-08  0.46D-08  1168.46
   12    16    16     1.08267182    -0.67991681 -1392.43727279    -0.00000020    -0.00000006  0.80D-08  0.68D-08  1168.46
   12    17    17     1.08267050    -0.67991681 -1392.43727278    -0.00000021    -0.00000006  0.87D-08  0.71D-08  1168.46
   13     1     1     1.07933319    -0.67290282 -1392.50168134    -0.00000005    -0.00000001  0.21D-08  0.16D-08  1268.79
   13     2     2     1.07933325    -0.67290282 -1392.50168134    -0.00000005    -0.00000001  0.21D-08  0.16D-08  1268.79
   13     3     3     1.07933311    -0.67290282 -1392.50168134    -0.00000005    -0.00000001  0.21D-08  0.17D-08  1268.79
   13     4     4     1.07933275    -0.67290283 -1392.50168134    -0.00000005    -0.00000001  0.20D-08  0.17D-08  1268.79
   13     5     5     1.07933235    -0.67290283 -1392.50168134    -0.00000005    -0.00000001  0.23D-08  0.18D-08  1268.79
   13     6     6     1.07933258    -0.67290283 -1392.50168133    -0.00000005    -0.00000001  0.23D-08  0.18D-08  1268.79
   13     7     7     1.07932840    -0.67290282 -1392.50168132    -0.00000008    -0.00000002  0.36D-08  0.29D-08  1268.79
   13     8     8     1.07758554    -0.69533018 -1392.48461747    -0.00000005    -0.00000002  0.41D-08  0.20D-08  1268.79
   13     9     9     1.07758558    -0.69533018 -1392.48461746    -0.00000005    -0.00000002  0.39D-08  0.20D-08  1268.79
   13    10    10     1.07758551    -0.69533018 -1392.48461746    -0.00000005    -0.00000002  0.40D-08  0.21D-08  1268.79
   13    11    11     1.07758516    -0.69533018 -1392.48461746    -0.00000005    -0.00000002  0.43D-08  0.22D-08  1268.79
   13    12    12     1.07758505    -0.69533019 -1392.48461746    -0.00000005    -0.00000002  0.45D-08  0.23D-08  1268.79
   13    13    13     1.07758501    -0.69533018 -1392.48461745    -0.00000006    -0.00000002  0.46D-08  0.23D-08  1268.79
   13    14    14     1.07757282    -0.69533016 -1392.48461742    -0.00000003    -0.00000004  0.32D-08  0.66D-08  1268.79
   13    15    15     1.08271270    -0.67991691 -1392.43727288    -0.00000007    -0.00000000  0.17D-09  0.28D-09  1268.79
   13    16    16     1.08270010    -0.67991689 -1392.43727286    -0.00000008    -0.00000001  0.24D-08  0.15D-08  1268.79
   13    17    17     1.08269596    -0.67991688 -1392.43727285    -0.00000007    -0.00000002  0.34D-08  0.23D-08  1268.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.2%   4.3%  76.6%

 Initialization:   0.1%
 Other:           18.7%

 Total CPU:     1268.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/22//222           0.0000000  -0.0000000  -0.0000000  -0.0069918  -0.0000000  -0.0000000  -0.0000000   0.0003756  -0.0000000
                      0.9633016   0.0000005  -0.0000001   0.0000000   0.0002533   0.0000000   0.0000000  -0.0000000
 2/2//22222           0.0000000   0.0000000   0.0000000   0.9622276   0.0000000   0.0000000   0.0000000   0.0000028  -0.0000000
                      0.0070866   0.0000000  -0.0000000   0.0000000   0.0000019   0.0000000  -0.0000000   0.0000000
 2///222222          -0.0001331  -0.0245410  -0.0000000  -0.0000000  -0.0000000  -0.0000005   0.9619165   0.0070749  -0.0000000
                     -0.0000028   0.0004060  -0.0000019   0.0000000  -0.0000000  -0.0000000  -0.0000003   0.0000000
 2222///222           0.0000010   0.0001783   0.0000000   0.0000000   0.0000000   0.0000000  -0.0069895   0.9617197  -0.0000014
                     -0.0003750   0.0551828  -0.0002573   0.0000000  -0.0000001  -0.0000000   0.0000000   0.0000000
 22/2//2222           0.0015240   0.8603610  -0.0000000  -0.0000000  -0.0000000   0.0000096   0.0219503   0.0003631  -0.0000000
                     -0.0000001  -0.0063280  -0.0000002   0.0000000  -0.0000000   0.0000603   0.4294448  -0.0000000
 222///2222          -0.0265502   0.0000374  -0.0000000  -0.0000000   0.0000000   0.8602330  -0.0000023   0.0000000   0.0000009
                     -0.0000002   0.0000000  -0.0000000   0.0062961   0.0007308  -0.4294422   0.0000603   0.0000000
 2/2/22/222           0.0000111   0.0062514  -0.0000000   0.0000000  -0.0000000   0.0000001   0.0001595  -0.0493569   0.0000026
                      0.0000188   0.8601881   0.0000328  -0.0000000   0.0000000  -0.0000001  -0.0006634   0.0000000
 2/2/2/2222          -0.0007620  -0.4301804   0.0000000   0.0000000   0.0000000  -0.0000048  -0.0109753  -0.0001815   0.0000000
                      0.0000001   0.0031639   0.0000001  -0.0000000   0.0000000   0.0001207   0.8588896   0.0000000
 2//222/222           0.0001929  -0.0000003   0.0000000  -0.0000000   0.0000000  -0.0062507   0.0000000  -0.0000000   0.0001266
                     -0.0000261  -0.0000000  -0.0000006   0.8558571   0.0993363  -0.0006634   0.0000001  -0.0000000
 2//22/2222           0.8395530  -0.0014871   0.0000000  -0.0000000  -0.0000000  -0.1893512   0.0000782  -0.0000000  -0.0000003
                     -0.0000016  -0.0000000   0.0000000  -0.0022816   0.0059137  -0.4294424   0.0000603   0.0000000
 22//22/222           0.0000000   0.0000000  -0.0057474  -0.0000000  -0.0024649   0.0000000   0.0000000   0.0002248   0.2132193
                     -0.0000000  -0.0000196   0.8348032  -0.0000309  -0.0000000  -0.0000000   0.0000000  -0.0006633
 222//2/222          -0.0061004   0.0000108  -0.0000000   0.0000000   0.0000000   0.0013759  -0.0000006  -0.0000000  -0.0000458
                     -0.0002114  -0.0000000   0.0000002  -0.3101466   0.8038520  -0.0006634   0.0000001   0.0000000
 2/22//2222           0.0000000   0.0000000   0.7909700  -0.0000000   0.3392226  -0.0000000   0.0000000   0.0000017   0.0015685
                     -0.0000000  -0.0000001   0.0061412  -0.0000002  -0.0000000  -0.0000000  -0.0000000  -0.4294456
 2/22/2/222          -0.0000000   0.0000000   0.0038235   0.0000000  -0.0049487   0.0000000   0.0000000  -0.0001104   0.7549893
                      0.0000000   0.0000072  -0.4151511  -0.0001120  -0.0000000   0.0000000   0.0000000  -0.0006633
 2//2/22222           0.0000000   0.0000000   0.1528691  -0.0000000   0.5890535  -0.0000000   0.0000000   0.0000005   0.0041123
                     -0.0000000  -0.0000001   0.0017824  -0.0000006  -0.0000000  -0.0000000  -0.0000000   0.7438217
 22///22222           0.4693873  -0.0008369  -0.0000000  -0.0000000   0.0000000   0.3873337   0.0000438  -0.0000000   0.0000003
                     -0.0000010  -0.0000000  -0.0000000   0.0023178   0.0038361   0.7438158  -0.0001045   0.0000000
 22//2/2222           0.0000000  -0.0000000  -0.5261930   0.0000000   0.6810480  -0.0000000  -0.0000000  -0.0000008   0.0055541
                      0.0000000   0.0000001  -0.0030541  -0.0000008  -0.0000000   0.0000000   0.0000000  -0.4294455
 222/2//222          -0.0000000  -0.0000000   0.0011108   0.0000000   0.0042802  -0.0000000  -0.0000000  -0.0000661  -0.5589980
                      0.0000000   0.0000071  -0.2422883   0.0000825   0.0000000   0.0000000  -0.0000000  -0.0011488
 2/222//222           0.0034107  -0.0000061  -0.0000000  -0.0000000  -0.0000000   0.0028145   0.0000003   0.0000000  -0.0000466
                      0.0001371   0.0000000   0.0000002  -0.3150687  -0.5214550  -0.0011491   0.0000002   0.0000000
 22/2/2/222          -0.0000055  -0.0031261   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000798   0.0246785  -0.0000013
                     -0.0000094  -0.4300951  -0.0000164   0.0000000  -0.0000000  -0.0000002  -0.0013267  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000205    0.960176    0.000000    0.001697   -0.000000    0.000000    0.066911   -0.000000   -0.006980   -0.000000
             0.000012    0.000000   -0.000000    0.000402   -0.000000   -0.000000    0.000000
 2          -0.065330   -0.001702    0.000000    0.960285    0.000000    0.000000   -0.000129   -0.000554    0.000012   -0.000000
             0.006970   -0.000000    0.000000   -0.000001    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.148483   -0.000000    0.950984    0.000000   -0.000000    0.000000   -0.000000    0.001787
             0.000000   -0.000000    0.006760    0.000000   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.962506   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.006992    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000    0.950984   -0.000000   -0.148482    0.000000    0.000000    0.000000    0.000000    0.006760
            -0.000000   -0.000000   -0.001787    0.000000   -0.000000    0.000000    0.000000
 6          -0.000001   -0.066911   -0.000000    0.000011    0.000000    0.000000    0.960177   -0.000000   -0.000402   -0.000000
             0.000000   -0.000000   -0.000000   -0.006980    0.000000   -0.000000   -0.000000
 7           0.960288    0.000089    0.000000    0.065331    0.000000    0.000000    0.000006   -0.006970   -0.000001   -0.000000
            -0.000554   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 8           0.007055   -0.000000    0.000001    0.000706    0.000002    0.000003    0.000000    0.962217   -0.000000   -0.000106
             0.045708    0.000376   -0.000237   -0.000000   -0.000000   -0.000000    0.000000
 9          -0.000000   -0.000000    0.006752   -0.000000   -0.002163   -0.000000    0.000001   -0.000002   -0.000013   -0.882094
             0.000003   -0.000000    0.387119    0.000142    0.000000   -0.000000   -0.000000
 10         -0.000003   -0.000002   -0.000000   -0.000000   -0.000000    0.007090   -0.000000   -0.000375   -0.000252    0.000000
            -0.000018    0.963302    0.000000   -0.000022    0.000000   -0.000000   -0.000000
 11          0.000706   -0.000000   -0.000000   -0.007055   -0.000000    0.000000    0.000000   -0.045708   -0.000000    0.000011
             0.962217    0.000000    0.000019   -0.000000   -0.000000   -0.000000   -0.000000
 12         -0.000002    0.000000    0.002163   -0.000000    0.006752   -0.000000   -0.000000   -0.000260    0.000000   -0.387119
             0.000010   -0.000000   -0.882094   -0.000001    0.000000    0.000000   -0.000000
 13          0.000000   -0.001519   -0.000001    0.000000    0.000000    0.000000    0.006925    0.000000   -0.085491    0.000130
            -0.000000    0.000000   -0.000058    0.959501    0.000000    0.000000   -0.000000
 14         -0.000000    0.006925   -0.000000   -0.000000    0.000000    0.000002    0.001519   -0.000000    0.959506    0.000000
            -0.000000    0.000253   -0.000000    0.085492   -0.000000   -0.000000    0.000000
 15         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.961014    0.000135
 16         -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000135    0.961020
 17          0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.961022   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962531   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000007    0.000046   -0.000000    0.000000    0.000000
 2          -0.000000    0.962531    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000001   -0.000000   -0.000000
            -0.000046   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.962531    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000007    0.000000
            -0.000000    0.000046    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.962531    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000046
             0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.962532   -0.000000   -0.000000    0.000000    0.000046   -0.000000
            -0.000000    0.000007   -0.000000   -0.000000    0.000000    0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.962531   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000    0.000046    0.000007    0.000000    0.000000    0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.962533    0.000046   -0.000000   -0.000000
             0.000001   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 8          -0.000000    0.000001    0.000000    0.000000    0.000000    0.000000    0.000046    0.963328   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 9          -0.000000   -0.000000   -0.000007    0.000000    0.000046    0.000000   -0.000000   -0.000000    0.963328    0.000000
             0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000   -0.000000    0.000000    0.000046   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.963328
             0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
 11         -0.000000   -0.000046   -0.000000    0.000000   -0.000000   -0.000000    0.000001   -0.000000    0.000000    0.000000
             0.963328    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 12          0.000000   -0.000000    0.000046   -0.000000    0.000007   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.963328   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 13         -0.000007    0.000000    0.000000    0.000000   -0.000000    0.000046   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.963328   -0.000000    0.000000   -0.000000    0.000000
 14          0.000046   -0.000000   -0.000000    0.000000   -0.000000    0.000007    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000    0.963333   -0.000000    0.000000   -0.000000
 15         -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.961014    0.000000   -0.000000
 16          0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.961020    0.000000
 17          0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.961022


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96017572 (fixed)   0.96254764 (relaxed)   0.96253119 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003419   -0.00000001   -0.49365136
 Singles      0.02512375   -0.14009332   -0.14544811
 Pairs        0.05421215    0.00000000   -0.03380335
 Total        1.07937009   -0.14009333   -0.67290282
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82877641
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.53313194
 One electron energy                -1924.97277654
 Two electron energy                  532.47109520
 Virial quotient                       -0.95735302
 Correlation energy                    -0.67290494
 !MRCI STATE 1.1 Energy             -1392.501681340341

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55508987 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55506503 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55508987 (Davidson, rotated reference)

 Cluster corrected energies         -1392.55016939 (Pople, fixed reference)
 Cluster corrected energies         -1392.55014553 (Pople, relaxed reference)
 Cluster corrected energies         -1392.55016939 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96028452 (fixed)   0.96254761 (relaxed)   0.96253116 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003419   -0.00000001   -0.49365138
 Singles      0.02512381   -0.14009345   -0.14544829
 Pairs        0.05421215    0.00000019   -0.03380315
 Total        1.07937016   -0.14009327   -0.67290282
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82877640
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.53313583
 One electron energy                -1924.97279645
 Two electron energy                  532.47111511
 Virial quotient                       -0.95735301
 Correlation energy                    -0.67290494
 !MRCI STATE 2.1 Energy             -1392.501681339199

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55508991 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55506508 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55508991 (Davidson, rotated reference)

 Cluster corrected energies         -1392.55016943 (Pople, fixed reference)
 Cluster corrected energies         -1392.55014557 (Pople, relaxed reference)
 Cluster corrected energies         -1392.55016943 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95098391 (fixed)   0.96254768 (relaxed)   0.96253122 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003419   -0.00000001   -0.49365148
 Singles      0.02512370   -0.14009323   -0.14544801
 Pairs        0.05421212   -0.00000000   -0.03380333
 Total        1.07937001   -0.14009324   -0.67290282
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82877640
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.53312471
 One electron energy                -1924.97275943
 Two electron energy                  532.47107809
 Virial quotient                       -0.95735302
 Correlation energy                    -0.67290494
 !MRCI STATE 3.1 Energy             -1392.501681337881

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55508981 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55506498 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55508981 (Davidson, rotated reference)

 Cluster corrected energies         -1392.55016934 (Pople, fixed reference)
 Cluster corrected energies         -1392.55014548 (Pople, relaxed reference)
 Cluster corrected energies         -1392.55016934 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96250599 (fixed)   0.96254784 (relaxed)   0.96253138 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003419   -0.00000001   -0.49365202
 Singles      0.02512356   -0.14009283   -0.14544764
 Pairs        0.05421190   -0.00000000   -0.03380316
 Total        1.07936966   -0.14009284   -0.67290283
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82877640
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.53308393
 One electron energy                -1924.97267708
 Two electron energy                  532.47099574
 Virial quotient                       -0.95735305
 Correlation energy                    -0.67290494
 !MRCI STATE 4.1 Energy             -1392.501681337346

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55508957 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55506474 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55508957 (Davidson, rotated reference)

 Cluster corrected energies         -1392.55016911 (Pople, fixed reference)
 Cluster corrected energies         -1392.55014525 (Pople, relaxed reference)
 Cluster corrected energies         -1392.55016911 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95098429 (fixed)   0.96254801 (relaxed)   0.96253156 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003419   -0.00000001   -0.49365150
 Singles      0.02512397   -0.14009358   -0.14544831
 Pairs        0.05421110   -0.00000000   -0.03380302
 Total        1.07936926   -0.14009359   -0.67290283
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82877640
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.53317538
 One electron energy                -1924.97282000
 Two electron energy                  532.47113867
 Virial quotient                       -0.95735299
 Correlation energy                    -0.67290493
 !MRCI STATE 5.1 Energy             -1392.501681336246

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55508930 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55506447 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55508930 (Davidson, rotated reference)

 Cluster corrected energies         -1392.55016885 (Pople, fixed reference)
 Cluster corrected energies         -1392.55014499 (Pople, relaxed reference)
 Cluster corrected energies         -1392.55016885 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96017749 (fixed)   0.96254791 (relaxed)   0.96253146 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003419   -0.00000001   -0.49365141
 Singles      0.02512395   -0.14009357   -0.14544830
 Pairs        0.05421134    0.00000000   -0.03380312
 Total        1.07936949   -0.14009358   -0.67290283
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82877639
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.53315884
 One electron energy                -1924.97280681
 Two electron energy                  532.47112547
 Virial quotient                       -0.95735300
 Correlation energy                    -0.67290495
 !MRCI STATE 6.1 Energy             -1392.501681333857

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55508946 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55506462 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55508946 (Davidson, rotated reference)

 Cluster corrected energies         -1392.55016899 (Pople, fixed reference)
 Cluster corrected energies         -1392.55014513 (Pople, relaxed reference)
 Cluster corrected energies         -1392.55016899 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96028818 (fixed)   0.96254978 (relaxed)   0.96253332 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003420   -0.00000001   -0.49365184
 Singles      0.02512534   -0.14009510   -0.14544943
 Pairs        0.05420577   -0.00000006   -0.03380155
 Total        1.07936531   -0.14009518   -0.67290282
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82877641
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.53333445
 One electron energy                -1924.97300784
 Two electron energy                  532.47132652
 Virial quotient                       -0.95735288
 Correlation energy                    -0.67290491
 !MRCI STATE 7.1 Energy             -1392.501681320405

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55508663 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55506179 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55508663 (Davidson, rotated reference)

 Cluster corrected energies         -1392.55016628 (Pople, fixed reference)
 Cluster corrected energies         -1392.55014241 (Pople, relaxed reference)
 Cluster corrected energies         -1392.55016628 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96221652 (fixed)   0.96332786 (relaxed)   0.96332776 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000022   -0.00000001   -0.55999120
 Singles      0.01881000   -0.09189177   -0.09740250
 Pairs        0.05877556   -0.00000001   -0.03793648
 Total        1.07758578   -0.09189180   -0.69533018
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78928939
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.05696421
 One electron energy                -1933.03768268
 Two electron energy                  540.55306521
 Virial quotient                       -0.95633938
 Correlation energy                    -0.69532807
 !MRCI STATE 8.1 Energy             -1392.484617465316

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53856503 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53856487 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53856503 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53353080 (Pople, fixed reference)
 Cluster corrected energies         -1392.53353065 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53353080 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.88209361 (fixed)   0.96332785 (relaxed)   0.96332774 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000022   -0.00000001   -0.55999147
 Singles      0.01880981   -0.09189147   -0.09740244
 Pairs        0.05877578    0.00000000   -0.03793628
 Total        1.07758581   -0.09189148   -0.69533018
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78928939
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.05696505
 One electron energy                -1933.03769906
 Two electron energy                  540.55308160
 Virial quotient                       -0.95633938
 Correlation energy                    -0.69532808
 !MRCI STATE 9.1 Energy             -1392.484617462815

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53856506 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53856489 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53856506 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53353082 (Pople, fixed reference)
 Cluster corrected energies         -1392.53353067 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53353082 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.96330158 (fixed)   0.96332788 (relaxed)   0.96332777 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000022   -0.00000001   -0.55999120
 Singles      0.01880998   -0.09189180   -0.09740248
 Pairs        0.05877555    0.00000000   -0.03793650
 Total        1.07758574   -0.09189182   -0.69533018
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78928938
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.05697881
 One electron energy                -1933.03769999
 Two electron energy                  540.55308253
 Virial quotient                       -0.95633937
 Correlation energy                    -0.69532808
 !MRCI STATE 10.1 Energy            -1392.484617460938

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53856500 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53856484 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53856500 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53353077 (Pople, fixed reference)
 Cluster corrected energies         -1392.53353062 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53353077 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.96221680 (fixed)   0.96332803 (relaxed)   0.96332793 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000022   -0.00000001   -0.55999106
 Singles      0.01881023   -0.09189210   -0.09740269
 Pairs        0.05877496   -0.00000005   -0.03793644
 Total        1.07758540   -0.09189216   -0.69533018
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78928939
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.05689525
 One electron energy                -1933.03761035
 Two electron energy                  540.55299289
 Virial quotient                       -0.95633943
 Correlation energy                    -0.69532807
 !MRCI STATE 11.1 Energy            -1392.484617458096

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53856476 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53856460 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53856476 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53353054 (Pople, fixed reference)
 Cluster corrected energies         -1392.53353039 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53353054 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.88209375 (fixed)   0.96332808 (relaxed)   0.96332798 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000022   -0.00000001   -0.55999091
 Singles      0.01881038   -0.09189237   -0.09740282
 Pairs        0.05877469    0.00000000   -0.03793645
 Total        1.07758529   -0.09189238   -0.69533019
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78928938
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.05685743
 One electron energy                -1933.03756207
 Two electron energy                  540.55294462
 Virial quotient                       -0.95633945
 Correlation energy                    -0.69532807
 !MRCI STATE 12.1 Energy            -1392.484617455180

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53856468 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53856452 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53856468 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53353046 (Pople, fixed reference)
 Cluster corrected energies         -1392.53353031 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53353046 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.95950079 (fixed)   0.96332810 (relaxed)   0.96332800 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000022   -0.00000001   -0.55999091
 Singles      0.01881043   -0.09189240   -0.09740288
 Pairs        0.05877459    0.00000000   -0.03793640
 Total        1.07758524   -0.09189241   -0.69533018
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78928937
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.05683868
 One electron energy                -1933.03754062
 Two electron energy                  540.55292317
 Virial quotient                       -0.95633946
 Correlation energy                    -0.69532808
 !MRCI STATE 13.1 Energy            -1392.484617451663

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53856465 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53856449 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53856465 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53353043 (Pople, fixed reference)
 Cluster corrected energies         -1392.53353028 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53353043 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95950621 (fixed)   0.96333355 (relaxed)   0.96333345 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000022   -0.00000001   -0.56000671
 Singles      0.01880114   -0.09188216   -0.09739589
 Pairs        0.05877170   -0.00000000   -0.03792756
 Total        1.07757305   -0.09188218   -0.69533016
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.78928939
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.05964925
 One electron energy                -1933.04100385
 Two electron energy                  540.55638643
 Virial quotient                       -0.95633762
 Correlation energy                    -0.69532802
 !MRCI STATE 14.1 Energy            -1392.484617417389

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53855614 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53855597 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53855614 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53352227 (Pople, fixed reference)
 Cluster corrected energies         -1392.53352212 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53352227 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.96101419 (fixed)   0.96104425 (relaxed)   0.96101420 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006253   -0.00000000   -0.49763576
 Singles      0.02746932   -0.14105347   -0.14751824
 Pairs        0.05524856   -0.00007570   -0.03476291
 Total        1.08278040   -0.14112918   -0.67991691
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75735597
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.47895071
 One electron energy                -1924.74859274
 Two electron energy                  532.31131985
 Virial quotient                       -0.95734440
 Correlation energy                    -0.67991691
 !MRCI STATE 15.1 Energy            -1392.437272883534

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.49355668 (Davidson, fixed reference)
 Cluster corrected energies         -1392.49351065 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.49355668 (Davidson, rotated reference)

 Cluster corrected energies         -1392.48849947 (Pople, fixed reference)
 Cluster corrected energies         -1392.48845502 (Pople, relaxed reference)
 Cluster corrected energies         -1392.48849947 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.96101978 (fixed)   0.96104984 (relaxed)   0.96101979 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006254   -0.00000000   -0.00003927
 Singles      0.02747325   -0.14106082   -0.14752395
 Pairs        0.05523203   -0.53885607   -0.53235367
 Total        1.08276781   -0.67991689   -0.67991689
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75735597
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.47990138
 One electron energy                -1924.74989727
 Two electron energy                  532.31262441
 Virial quotient                       -0.95734377
 Correlation energy                    -0.67991689
 !MRCI STATE 16.1 Energy            -1392.437272862405

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.49354809 (Davidson, fixed reference)
 Cluster corrected energies         -1392.49350206 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.49354809 (Davidson, rotated reference)

 Cluster corrected energies         -1392.48849117 (Pople, fixed reference)
 Cluster corrected energies         -1392.48844673 (Pople, relaxed reference)
 Cluster corrected energies         -1392.48849117 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.96102163 (fixed)   0.96105168 (relaxed)   0.96102163 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006254    0.00000000   -0.49770519
 Singles      0.02747442   -0.14106231   -0.14752521
 Pairs        0.05522671   -0.00000000   -0.03468649
 Total        1.08276366   -0.14106231   -0.67991688
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75735598
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.48005744
 One electron energy                -1924.75006392
 Two electron energy                  532.31279107
 Virial quotient                       -0.95734367
 Correlation energy                    -0.67991688
 !MRCI STATE 17.1 Energy            -1392.437272851245

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.49354526 (Davidson, fixed reference)
 Cluster corrected energies         -1392.49349923 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.49354526 (Davidson, rotated reference)

 Cluster corrected energies         -1392.48848844 (Pople, fixed reference)
 Cluster corrected energies         -1392.48844400 (Pople, relaxed reference)
 Cluster corrected energies         -1392.48848844 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.44       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      405.55       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1324.35   1320.92      1.49      0.87      0.90
 REAL TIME  *      1448.38 SEC
 DISK USED  *       442.05 MB (local),        4.36 GB (total)
 SF USED    *         3.92 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1392.55508987  AU                              
 SETTING HLSDIAG(2)     =     -1392.55508991  AU                              
 SETTING HLSDIAG(3)     =     -1392.55508981  AU                              
 SETTING HLSDIAG(4)     =     -1392.55508957  AU                              
 SETTING HLSDIAG(5)     =     -1392.55508930  AU                              
 SETTING HLSDIAG(6)     =     -1392.55508946  AU                              
 SETTING HLSDIAG(7)     =     -1392.55508663  AU                              
 SETTING HLSDIAG(8)     =     -1392.53856503  AU                              
 SETTING HLSDIAG(9)     =     -1392.53856506  AU                              
 SETTING HLSDIAG(10)    =     -1392.53856500  AU                              
 SETTING HLSDIAG(11)    =     -1392.53856476  AU                              
 SETTING HLSDIAG(12)    =     -1392.53856468  AU                              
 SETTING HLSDIAG(13)    =     -1392.53856465  AU                              
 SETTING HLSDIAG(14)    =     -1392.53855614  AU                              
 SETTING HLSDIAG(15)    =     -1392.49355668  AU                              
 SETTING HLSDIAG(16)    =     -1392.49354809  AU                              
 SETTING HLSDIAG(17)    =     -1392.49354526  AU                              


         HLSDIAG
    -1392.555090
    -1392.555090
    -1392.555090
    -1392.555090
    -1392.555089
    -1392.555089
    -1392.555087
    -1392.538565
    -1392.538565
    -1392.538565
    -1392.538565
    -1392.538565
    -1392.538565
    -1392.538556
    -1392.493557
    -1392.493548
    -1392.493545
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

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

 Time for Seward_LS:       4.74 sec

        8281165. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2036 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.74 sec, REAL time:      4.77 sec


 SORTLS1 read     8314052. and wrote     8314052. SO integrals in    50 records. CPU time:      0.08 sec, REAL time:      0.13 sec
 SORTLS2 read     8314052. and wrote     8314052. SO integrals in    30 records. CPU time:      0.02 sec, REAL time:      0.07 sec

 FILE SIZES: FILE 1:   171.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.7 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 1.5  NSTATE=  17

 Original energies:  -1392.501681  -1392.501681  -1392.501681  -1392.501681  -1392.501681  -1392.501681  -1392.501681  -1392.484617
                     -1392.484617  -1392.484617  -1392.484617  -1392.484617  -1392.484617  -1392.484617  -1392.437273  -1392.437273
                     -1392.437273
 Replaced energies:  -1392.555090  -1392.555090  -1392.555090  -1392.555090  -1392.555089  -1392.555089  -1392.555087  -1392.538565
                     -1392.538565  -1392.538565  -1392.538565  -1392.538565  -1392.538565  -1392.538556  -1392.493557  -1392.493548
                     -1392.493545



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1392.55508991

 Wigner-Eckart theorem used for 13 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     557.55       0.08      72.90      -0.00       0.00      -0.00       0.03      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.98      13.93      -0.13       0.00       0.00      -0.00      -0.00      -0.03

    3   3.1  1.5  1.5       0.00       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -557.55       0.98       0.00       0.00       0.00     567.90      -0.05       0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.07       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.08     -13.93      -0.00       0.00      -0.00      -0.00     545.93      -1.07       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.13       0.00       0.00       0.00       0.00       0.00
                          -72.90       0.13      -0.00       0.00      -0.00    -326.93      -0.01      -0.00       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.10       0.00       0.00       0.00       0.00
                            0.00      -0.00    -567.90       0.00     326.93      -0.00      -0.00       0.00      -0.81      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.72       0.00       0.00       0.00
                           -0.00      -0.00       0.05    -545.93       0.01       0.00       0.00       0.00       0.00       1.07

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3626.79       0.00       0.00
                            0.00       0.00      -0.00       1.07       0.00      -0.00      -0.00       0.00       0.00    -496.45

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3626.79       0.00
                           -0.03       0.00       0.00      -0.00      -0.00       0.81      -0.00      -0.00      -0.00       0.01

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3626.80
                            0.00       0.03       0.00      -0.00       0.00       0.00      -1.07     496.45      -0.01       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.06      -0.00       0.00      -0.00      -0.01      -0.00     -28.49

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.10      -0.00      -0.00      -0.00       0.00      -1.00       0.00       0.00       0.08       0.25

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       1.26       0.00      -0.61      -0.00      -0.00      -0.14     371.86       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.92      -0.00      -0.23      -0.00      -0.00       0.25      41.85      -0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.02      -0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00       0.00      -0.00      -0.00       0.01       0.00       0.00      -0.00       0.00

   18   1.1  1.5  0.5       0.00      -0.00       0.15      69.37       0.70      -0.00       0.00      -0.00      -0.00      -0.14
                           -0.00     289.72      -0.00      -0.00       0.00      -0.43     322.65      -0.65       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00      93.80      -0.13     381.05      -0.00       0.00      -0.00      -0.71       0.00
                         -289.72      -0.00       0.00       0.00      -0.00    -245.46      -0.60       0.00       0.00      -0.00

   20   3.1  1.5  0.5      -0.15     -93.80      -0.00       0.00       0.00      -0.00    -126.72       0.25      -0.00      -0.00
                            0.00      -0.00      -0.00    -249.51       0.00       0.00      -0.00       0.00      -0.00       0.49

   21   4.1  1.5  0.5     -69.37       0.13      -0.00       0.00       0.00    -307.58      -0.01      -0.00       0.00      -0.00
                            0.00      -0.00     249.51      -0.00     192.78      -0.00      -0.00      -0.00      -0.30       0.00

   22   5.1  1.5  0.5      -0.70    -381.05      -0.00      -0.00      -0.00      -0.00     280.16      -0.53      -0.00       0.00
                           -0.00       0.00      -0.00    -192.78      -0.00      -0.00      -0.00       0.00      -0.00       0.38

   23   6.1  1.5  0.5       0.00       0.00       0.00     307.58       0.00       0.00       0.00      -0.00      -0.00      -0.60
                            0.43     245.46      -0.00       0.00       0.00      -0.00      15.99      -0.05       0.00       0.00

   24   7.1  1.5  0.5      -0.00      -0.00     126.72       0.01    -280.16      -0.00       0.00      -0.00       0.58      -0.00
                         -322.65       0.60       0.00       0.00       0.00     -15.99       0.00      -0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00      -0.25       0.00       0.53       0.00       0.00       0.00    -259.23       0.00
                            0.65      -0.00      -0.00       0.00      -0.00       0.05       0.00       0.00       0.06       0.01

   26   9.1  1.5  0.5       0.00       0.71       0.00      -0.00       0.00       0.00      -0.58     259.23       0.00      -0.06
                           -0.00      -0.00       0.00       0.30       0.00      -0.00       0.00      -0.06      -0.00    -138.34

   27  10.1  1.5  0.5       0.14      -0.00       0.00       0.00      -0.00       0.60       0.00      -0.00       0.06       0.00
                           -0.00       0.00      -0.49      -0.00      -0.38      -0.00       0.00      -0.01     138.34      -0.00

   28  11.1  1.5  0.5       0.00      -0.00       0.18      -0.00       0.76       0.00      -0.00      -0.04    -338.03       0.00
                           -0.55       0.00      -0.00      -0.00      -0.00      -0.48      -0.00      -0.00       0.03      -0.07

   29  12.1  1.5  0.5       0.00       0.30       0.00       0.00      -0.00       0.00       0.16     -78.94       0.06       0.03
                           -0.00       0.00       0.00       0.54       0.00      -0.00      -0.00      -0.10      -0.00    -251.58

   30  13.1  1.5  0.5      -0.00      -0.00      -0.00      -0.58      -0.00      -0.00       0.00       0.07      -0.00     267.86
                           -0.00      -0.39      -0.00      -0.00       0.00      -0.00       0.06     -22.63      -0.00       0.03

   31  14.1  1.5  0.5       0.00      -0.00       0.00      -0.22      -0.00       0.00       0.00       0.04       0.00     103.35
                           -0.00      -0.63      -0.00      -0.00      -0.00      -0.00      -0.63     301.96       0.04      -0.12

   32  15.1  1.5  0.5      -0.00       0.00       0.00      -0.01       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.01       0.00       0.00       0.00      -0.00      -0.01       0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   34  17.1  1.5  0.5      -0.00      -0.01      -0.00      -0.00      -0.00      -0.00      -0.01       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.01       0.00       0.00       0.00      -0.00      -0.00      -0.00

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


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.15
                            0.00      -1.10      -0.00      -0.00      -0.00      -0.00      -0.01       0.00     289.72      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -93.80
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00    -289.72       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.15      93.80      -0.00
                            0.00       0.00      -1.26       0.92       0.00      -0.00      -0.00       0.00      -0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      69.37      -0.13       0.00
                           -0.06       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00     249.51

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.70     381.05       0.00
                            0.00      -0.00       0.61       0.23       0.02      -0.00       0.00      -0.00       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       1.00       0.00       0.00       0.00       0.00      -0.01       0.43     245.46      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -126.72
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00    -322.65       0.60       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.25
                            0.01      -0.00       0.14      -0.25      -0.00      -0.00      -0.00       0.65      -0.00      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.71      -0.00
                            0.00      -0.08    -371.86     -41.85      -0.00       0.00       0.00      -0.00      -0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.14       0.00      -0.00
                           28.49      -0.25      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.49

   11  11.1  1.5  1.5    3626.85       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.18
                            0.00       0.00      -0.01       0.00       0.00       0.00       0.00      -0.55       0.00      -0.00

   12  12.1  1.5  1.5       0.00    3626.87       0.00       0.00       0.00       0.00       0.00      -0.00      -0.30      -0.00
                           -0.00      -0.00     534.62    -438.55      -0.00       0.00      -0.00      -0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00    3626.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01    -534.62      -0.00       0.01       0.00       0.00       0.00      -0.00      -0.39      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00    3628.74       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00     438.55      -0.01       0.00      -0.00       0.00       0.00      -0.00      -0.63      -0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00   13504.98       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00     253.81       0.00       0.01       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00   13506.87       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.04      -0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   13507.49       0.00       0.01       0.00
                           -0.00       0.00      -0.00      -0.00    -253.81       0.04       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.01       0.00       0.00
                            0.55       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00     185.85

   19   2.1  1.5  0.5       0.00      -0.30       0.00       0.00      -0.00      -0.00       0.01       0.00       0.00       0.00
                           -0.00      -0.00       0.39       0.63      -0.01      -0.00      -0.00      -0.00       0.00      -0.33

   20   3.1  1.5  0.5      -0.18      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.02
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -185.85       0.33       0.00

   21   4.1  1.5  0.5       0.00      -0.00       0.58       0.22       0.01      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.54       0.00       0.00      -0.00      -0.00      -0.01      -0.03      -4.64      -0.00

   22   5.1  1.5  0.5      -0.76       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     -24.30       0.04      -0.00

   23   6.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.48       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -189.30

   24   7.1  1.5  0.5       0.00      -0.16      -0.00      -0.00       0.00      -0.00       0.01       0.00       0.00       0.00
                            0.00       0.00      -0.06       0.63       0.01      -0.00      -0.00      -0.00      -0.00       0.02

   25   8.1  1.5  0.5       0.04      78.94      -0.07      -0.04      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.10      22.63    -301.96      -0.00       0.00       0.00       0.00       0.00      -0.00

   26   9.1  1.5  0.5     338.03      -0.06       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00       0.00      -0.04      -0.00       0.00       0.00      -0.01       0.00       0.00

   27  10.1  1.5  0.5      -0.00      -0.03    -267.86    -103.35      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.07     251.58      -0.03       0.12       0.00      -0.00       0.00       0.00       0.01       0.00

   28  11.1  1.5  0.5      -0.00    -135.54       0.05      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     183.44     284.13      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   29  12.1  1.5  0.5     135.54      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.02       0.00       0.00       0.00       0.37      -0.00      -0.00

   30  13.1  1.5  0.5      -0.05      -0.00       0.00       0.07       0.00       0.00      -0.00       0.00       0.00       0.00
                         -183.44       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.42

   31  14.1  1.5  0.5       0.00      -0.00      -0.07      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -284.13      -0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.31

   32  15.1  1.5  0.5      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.02       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     146.54       0.00       0.00       0.00      -0.00

   33  16.1  1.5  0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     146.55       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -146.54      -0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5      -0.00      -0.00       0.00      -0.00      -0.02    -146.55      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.18
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     334.54      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     108.31
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -334.54      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.18    -108.31      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -80.10       0.15      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     288.11

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.81    -440.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.50     283.43      -0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     146.32
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -372.57       0.69       0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.29
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.75      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.82       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.16      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.56

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.20
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.63       0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.34       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.45      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.73      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.01       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

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


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5     -69.37      -0.70       0.00      -0.00       0.00       0.00       0.14       0.00       0.00      -0.00
                           -0.00       0.00      -0.43     322.65      -0.65       0.00       0.00       0.55       0.00       0.00

    2   2.1  1.5  1.5       0.13    -381.05       0.00      -0.00       0.00       0.71      -0.00      -0.00       0.30      -0.00
                            0.00      -0.00    -245.46      -0.60       0.00       0.00      -0.00      -0.00      -0.00       0.39

    3   3.1  1.5  1.5      -0.00      -0.00       0.00     126.72      -0.25       0.00       0.00       0.18       0.00      -0.00
                         -249.51       0.00       0.00      -0.00       0.00      -0.00       0.49       0.00      -0.00       0.00

    4   4.1  1.5  1.5       0.00      -0.00     307.58       0.01       0.00      -0.00       0.00      -0.00       0.00      -0.58
                            0.00     192.78      -0.00      -0.00      -0.00      -0.30       0.00       0.00      -0.54       0.00

    5   5.1  1.5  1.5       0.00      -0.00       0.00    -280.16       0.53       0.00      -0.00       0.76      -0.00      -0.00
                         -192.78       0.00      -0.00      -0.00       0.00      -0.00       0.38       0.00      -0.00      -0.00

    6   6.1  1.5  1.5    -307.58      -0.00       0.00      -0.00       0.00       0.00       0.60       0.00       0.00      -0.00
                            0.00       0.00       0.00      15.99      -0.05       0.00       0.00       0.48       0.00       0.00

    7   7.1  1.5  1.5      -0.01     280.16       0.00       0.00       0.00      -0.58       0.00      -0.00       0.16       0.00
                            0.00       0.00     -15.99      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.06

    8   8.1  1.5  1.5      -0.00      -0.53      -0.00      -0.00       0.00     259.23      -0.00      -0.04     -78.94       0.07
                            0.00      -0.00       0.05       0.00      -0.00       0.06       0.01       0.00       0.10      22.63

    9   9.1  1.5  1.5       0.00      -0.00      -0.00       0.58    -259.23       0.00       0.06    -338.03       0.06      -0.00
                            0.30       0.00      -0.00       0.00      -0.06       0.00    -138.34      -0.03       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00      -0.60      -0.00       0.00      -0.06       0.00       0.00       0.03     267.86
                           -0.00      -0.38      -0.00       0.00      -0.01     138.34       0.00       0.07     251.58      -0.03

   11  11.1  1.5  1.5       0.00      -0.76      -0.00       0.00       0.04     338.03      -0.00      -0.00     135.54      -0.05
                           -0.00      -0.00      -0.48      -0.00      -0.00       0.03      -0.07      -0.00      -0.00     183.44

   12  12.1  1.5  1.5      -0.00       0.00      -0.00      -0.16      78.94      -0.06      -0.03    -135.54      -0.00      -0.00
                            0.54       0.00      -0.00      -0.00      -0.10      -0.00    -251.58       0.00       0.00      -0.00

   13  13.1  1.5  1.5       0.58       0.00       0.00      -0.00      -0.07       0.00    -267.86       0.05       0.00       0.00
                           -0.00       0.00      -0.00       0.06     -22.63      -0.00       0.03    -183.44       0.00      -0.00

   14  14.1  1.5  1.5       0.22       0.00      -0.00      -0.00      -0.04      -0.00    -103.35      -0.00       0.00       0.07
                           -0.00      -0.00      -0.00      -0.63     301.96       0.04      -0.12    -284.13      -0.02      -0.00

   15  15.1  1.5  1.5       0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.01       0.00       0.00      -0.00       0.00      -0.00      -0.00

   16  16.1  1.5  1.5      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00      -0.00
                            0.01       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      24.30      -0.00       0.00      -0.00       0.01      -0.00       0.00      -0.37      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.64      -0.04       0.00       0.00      -0.00      -0.00      -0.01      -0.00       0.00      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     189.30      -0.02       0.00      -0.00      -0.00       0.00       0.00      -0.42

   21   4.1  1.5  0.5       0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     181.98      -0.36       0.00       0.00      -0.02       0.00      -0.00

   22   5.1  1.5  0.5       0.00       0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -108.98      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.20

   23   6.1  1.5  0.5       0.00       0.00       0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     108.98      -0.00      -0.00       0.00      -0.27      -0.00      -0.00       0.33       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.72       0.00       0.00       0.00       0.00       0.00       0.00
                         -181.98       0.00       0.00       0.00       0.00       0.00       0.36       0.00      -0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00    3626.79       0.00       0.00       0.00       0.00       0.00
                            0.36       0.00      -0.00      -0.00       0.00       0.00    -165.48       0.00      -0.00       0.05

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    3626.79       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.27      -0.00      -0.00      -0.00       0.00       0.00      -0.03    -123.95

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    3626.80       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.36     165.48      -0.00       0.00       9.50      -0.08      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3626.85       0.00       0.00
                            0.02      -0.00       0.00      -0.00      -0.00      -0.00      -9.50       0.00       0.00      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3626.87       0.00
                           -0.00       0.00      -0.33       0.00       0.00       0.03       0.08      -0.00      -0.00     178.21

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3626.88
                            0.00      -0.20      -0.00      -0.00      -0.05     123.95       0.00       0.00    -178.21      -0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.08      -0.00      -0.00       0.08      13.95      -0.00      -0.00     146.18      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.01      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   35   1.1  1.5 -0.5      80.10       0.81      -0.00       0.00      -0.00      -0.00      -0.16      -0.00      -0.00       0.00
                           -0.00       0.00      -0.50     372.57      -0.75       0.00       0.00       0.63       0.00       0.00

   36   2.1  1.5 -0.5      -0.15     440.00      -0.00       0.00      -0.00      -0.82       0.00       0.00      -0.34       0.00
                            0.00      -0.00    -283.43      -0.69       0.00       0.00      -0.00      -0.00      -0.00       0.45

   37   3.1  1.5 -0.5       0.00       0.00      -0.00    -146.32       0.29      -0.00      -0.00      -0.20      -0.00       0.00
                         -288.11       0.00       0.00      -0.00       0.00      -0.00       0.56       0.00      -0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00    -355.17      -0.01      -0.00       0.00      -0.00       0.00      -0.00       0.67
                           -0.00     222.60      -0.00      -0.00      -0.00      -0.34       0.00       0.00      -0.63       0.00

   39   5.1  1.5 -0.5      -0.00      -0.00      -0.01     323.50      -0.61      -0.00       0.00      -0.88       0.00       0.00
                         -222.60      -0.00      -0.00      -0.00       0.00      -0.00       0.44       0.00      -0.00      -0.00

   40   6.1  1.5 -0.5     355.17       0.01       0.00       0.00      -0.00      -0.00      -0.70      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      18.46      -0.05       0.00       0.00       0.55       0.00       0.00

   41   7.1  1.5 -0.5       0.01    -323.50      -0.00       0.00      -0.00       0.67      -0.00       0.00      -0.19      -0.00
                            0.00       0.00     -18.46       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.07

   42   8.1  1.5 -0.5       0.00       0.61       0.00       0.00       0.00    -299.34       0.00       0.04      91.16      -0.08
                            0.00      -0.00       0.05       0.00       0.00       0.07       0.01       0.00       0.11      26.13

   43   9.1  1.5 -0.5      -0.00       0.00       0.00      -0.67     299.34       0.00      -0.07     390.32      -0.07       0.00
                            0.34       0.00      -0.00       0.00      -0.07      -0.00    -159.74      -0.03       0.00       0.00

   44  10.1  1.5 -0.5       0.00      -0.00       0.70       0.00      -0.00       0.07       0.00      -0.00      -0.04    -309.29
                           -0.00      -0.44      -0.00       0.00      -0.01     159.74      -0.00       0.08     290.50      -0.03

   45  11.1  1.5 -0.5      -0.00       0.88       0.00      -0.00      -0.04    -390.32       0.00      -0.00    -156.50       0.06
                           -0.00      -0.00      -0.55      -0.00      -0.00       0.03      -0.08       0.00      -0.00     211.82

   46  12.1  1.5 -0.5       0.00      -0.00       0.00       0.19     -91.16       0.07       0.04     156.50      -0.00       0.00
                            0.63       0.00      -0.00      -0.00      -0.11      -0.00    -290.50       0.00      -0.00      -0.00

   47  13.1  1.5 -0.5      -0.67      -0.00      -0.00       0.00       0.08      -0.00     309.29      -0.06      -0.00       0.00
                           -0.00       0.00      -0.00       0.07     -26.13      -0.00       0.03    -211.82       0.00       0.00

   48  14.1  1.5 -0.5      -0.26      -0.00       0.00       0.00       0.05       0.00     119.33       0.00      -0.00      -0.08
                           -0.00      -0.00      -0.00      -0.73     348.68       0.04      -0.14    -328.08      -0.02      -0.00

   49  15.1  1.5 -0.5      -0.01       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.01       0.00       0.00      -0.00       0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.01       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.01       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

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


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5      -0.00       0.00       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.63      -0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.22      -0.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00      -0.00       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.63       0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -301.96      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5     103.35       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.12       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          284.13      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5      -0.07      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5      -0.00      -0.00      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     146.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00      -0.00    -146.55       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -146.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.02     146.55      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.18     -80.10      -0.81       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     334.54      -0.00      -0.00       0.00      -0.50

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00    -108.31       0.15    -440.00       0.00
                           -0.00      -0.00      -0.00       0.00    -334.54       0.00       0.00       0.00      -0.00    -283.43

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.18     108.31      -0.00      -0.00      -0.00       0.00
                            0.31       0.00      -0.00      -0.00       0.00      -0.00       0.00    -288.11       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00      80.10      -0.15       0.00       0.00      -0.00     355.17
                            0.00      -0.00      -0.00       0.00       0.00      -0.00     288.11       0.00     222.60      -0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.81     440.00       0.00       0.00      -0.00       0.01
                            0.08       0.01      -0.00       0.00      -0.00       0.00      -0.00    -222.60       0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    -355.17      -0.01       0.00
                            0.00       0.00       0.00      -0.00       0.50     283.43      -0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -146.32      -0.01     323.50       0.00
                            0.00      -0.00       0.00      -0.00    -372.57       0.69       0.00       0.00       0.00     -18.46

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.29      -0.00      -0.61      -0.00
                           -0.08      -0.00      -0.00      -0.00       0.75      -0.00      -0.00       0.00      -0.00       0.05

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.82      -0.00       0.00      -0.00      -0.00
                          -13.95      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.34       0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.16       0.00      -0.00      -0.00       0.00      -0.70
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.56      -0.00      -0.44      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.20       0.00      -0.88      -0.00
                            0.00       0.00       0.00       0.00      -0.63       0.00      -0.00      -0.00      -0.00      -0.55

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.34      -0.00      -0.00       0.00      -0.00
                         -146.18      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.63       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.67       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.45      -0.00      -0.00       0.00      -0.00

   31  14.1  1.5  0.5    3628.74       0.00       0.00       0.00      -0.00       0.00      -0.00       0.26       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.73      -0.00      -0.00      -0.00      -0.00

   32  15.1  1.5  0.5       0.00   13504.98       0.00       0.00       0.00      -0.00      -0.00       0.01      -0.00       0.00
                            0.00       0.00      -0.00      84.60       0.00       0.01       0.00       0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00   13506.87       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.01      -0.00       0.00       0.00       0.00       0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00   13507.49       0.00       0.01       0.00       0.00       0.00       0.00
                           -0.00     -84.60       0.01       0.00       0.00       0.00       0.00       0.01       0.00       0.00

   35   1.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00    -185.85      -0.03     -24.30       0.00

   36   2.1  1.5 -0.5       0.00      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.73      -0.01      -0.00      -0.00       0.00      -0.00       0.33      -4.64       0.04      -0.00

   37   3.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.02       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00     185.85      -0.33      -0.00      -0.00      -0.00    -189.30

   38   4.1  1.5 -0.5       0.26       0.01      -0.00       0.00       0.00       0.00       0.00       0.07       0.00       0.00
                            0.00      -0.00      -0.00      -0.01       0.03       4.64       0.00      -0.00       0.00       0.00

   39   5.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.13       0.00
                            0.00      -0.00      -0.00      -0.00      24.30      -0.04       0.00      -0.00       0.00     108.98

   40   6.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.10
                            0.00       0.00       0.00      -0.00      -0.00       0.00     189.30      -0.00    -108.98       0.00

   41   7.1  1.5 -0.5      -0.00       0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.73       0.01      -0.00      -0.00       0.00       0.00      -0.02     181.98      -0.00      -0.00

   42   8.1  1.5 -0.5      -0.05      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -348.68      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.36      -0.00       0.00

   43   9.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04      -0.00       0.00       0.00       0.01      -0.00      -0.00       0.00       0.00      -0.27

   44  10.1  1.5 -0.5    -119.33      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.14       0.00      -0.00       0.00      -0.00      -0.01      -0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          328.08      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.02       0.00      -0.00

   46  12.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00       0.00       0.00      -0.37       0.00       0.00       0.00      -0.00       0.33

   47  13.1  1.5 -0.5       0.08       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.42      -0.00       0.20       0.00

   48  14.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.31       0.00       0.08       0.00

   49  15.1  1.5 -0.5       0.00      -0.00       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     169.21       0.00      -0.00      -0.00       0.00      -0.00       0.01       0.00

   50  16.1  1.5 -0.5      -0.00      -0.00      -0.00     169.22       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -169.21      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  17.1  1.5 -0.5      -0.00      -0.02    -169.22      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.15      69.37       0.70      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     289.72      -0.00      -0.00       0.00      -0.43

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      93.80      -0.13     381.05      -0.00
                           -0.00      -0.00      -0.00      -0.00    -289.72      -0.00       0.00       0.00      -0.00    -245.46

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.15     -93.80      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -249.51       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00     -69.37       0.13      -0.00       0.00       0.00    -307.58
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     249.51      -0.00     192.78      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.70    -381.05      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -192.78      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     307.58       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.43     245.46      -0.00       0.00       0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00     126.72       0.01    -280.16      -0.00
                           -0.00      -0.00      -0.00      -0.00    -322.65       0.60       0.00       0.00       0.00     -15.99

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.25       0.00       0.53       0.00
                           -0.00      -0.00      -0.00      -0.00       0.65      -0.00      -0.00       0.00      -0.00       0.05

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.71       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.30       0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.14      -0.00       0.00       0.00      -0.00       0.60
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.49      -0.00      -0.38      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.18      -0.00       0.76       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.55       0.00      -0.00      -0.00      -0.00      -0.48

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.30       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.54       0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.58      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.39      -0.00      -0.00       0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.22      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.63      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.01       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.01       0.00       0.00       0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.01      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.01       0.00       0.00


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

   18   1.1  1.5  0.5      -0.00       0.00       0.00       0.16       0.00       0.00      -0.00       0.00      -0.00       0.00
                          372.57      -0.75       0.00       0.00       0.63       0.00       0.00       0.00      -0.00       0.00

   19   2.1  1.5  0.5      -0.00       0.00       0.82      -0.00      -0.00       0.34      -0.00      -0.00       0.00       0.00
                           -0.69       0.00       0.00      -0.00      -0.00      -0.00       0.45       0.73      -0.01      -0.00

   20   3.1  1.5  0.5     146.32      -0.29       0.00       0.00       0.20       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.56       0.00      -0.00       0.00       0.00      -0.00      -0.00

   21   4.1  1.5  0.5       0.01       0.00      -0.00       0.00      -0.00       0.00      -0.67      -0.26      -0.01       0.00
                           -0.00      -0.00      -0.34       0.00       0.00      -0.63       0.00       0.00      -0.00      -0.00

   22   5.1  1.5  0.5    -323.50       0.61       0.00      -0.00       0.88      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.44       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   23   6.1  1.5  0.5      -0.00       0.00       0.00       0.70       0.00       0.00      -0.00       0.00      -0.00       0.00
                           18.46      -0.05       0.00       0.00       0.55       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00      -0.67       0.00      -0.00       0.19       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.07       0.73       0.01      -0.00

   25   8.1  1.5  0.5      -0.00       0.00     299.34      -0.00      -0.04     -91.16       0.08       0.05       0.00       0.00
                            0.00      -0.00       0.07       0.01       0.00       0.11      26.13    -348.68      -0.00       0.00

   26   9.1  1.5  0.5       0.67    -299.34       0.00       0.07    -390.32       0.07      -0.00       0.00       0.00       0.00
                            0.00      -0.07       0.00    -159.74      -0.03       0.00       0.00      -0.04      -0.00       0.00

   27  10.1  1.5  0.5      -0.00       0.00      -0.07       0.00       0.00       0.04     309.29     119.33       0.00      -0.00
                            0.00      -0.01     159.74       0.00       0.08     290.50      -0.03       0.14       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.04     390.32      -0.00      -0.00     156.50      -0.06       0.00      -0.00      -0.00
                           -0.00      -0.00       0.03      -0.08      -0.00      -0.00     211.82     328.08      -0.00       0.00

   29  12.1  1.5  0.5      -0.19      91.16      -0.07      -0.04    -156.50      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.11      -0.00    -290.50       0.00       0.00      -0.00       0.02       0.00       0.00

   30  13.1  1.5  0.5      -0.00      -0.08       0.00    -309.29       0.06       0.00       0.00      -0.08      -0.00      -0.00
                            0.07     -26.13      -0.00       0.03    -211.82       0.00      -0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5      -0.00      -0.05      -0.00    -119.33      -0.00       0.00       0.08      -0.00       0.00      -0.00
                           -0.73     348.68       0.04      -0.14    -328.08      -0.02      -0.00      -0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.01       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     169.21

   33  16.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00    -169.21       0.00

   34  17.1  1.5  0.5       0.01      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.02     169.22
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.00      -0.00       0.37       0.00       0.00       0.00       0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.01       0.00      -0.00       0.00       0.00       0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00       0.00      -0.00      -0.00       0.42      -0.31      -0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -181.98       0.36      -0.00      -0.00       0.02      -0.00       0.00      -0.00       0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.20      -0.08      -0.01       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.27       0.00       0.00      -0.33      -0.00      -0.00      -0.00      -0.00

   41   7.1  1.5 -0.5       0.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.36      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   42   8.1  1.5 -0.5       0.00    3626.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     165.48      -0.00       0.00      -0.05       0.08       0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00    3626.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.03     123.95      13.95       0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00    3626.80       0.00       0.00       0.00       0.00       0.00       0.00
                            0.36    -165.48       0.00      -0.00      -9.50       0.08       0.00      -0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00    3626.85       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       9.50      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00    3626.87       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.03      -0.08       0.00       0.00    -178.21     146.18       0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    3626.88       0.00       0.00       0.00
                            0.00       0.05    -123.95      -0.00      -0.00     178.21       0.00      -0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3628.74       0.00       0.00
                            0.00      -0.08     -13.95       0.00       0.00    -146.18       0.00      -0.00       0.00      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   13504.98       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   13506.87
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      84.60      -0.01

   52   1.1  1.5 -1.5       0.00      -0.00      -0.00      -0.14      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                          322.65      -0.65       0.00       0.00       0.55       0.00       0.00       0.00      -0.00       0.00

   53   2.1  1.5 -1.5       0.00      -0.00      -0.71       0.00       0.00      -0.30       0.00       0.00      -0.00      -0.00
                           -0.60       0.00       0.00      -0.00      -0.00      -0.00       0.39       0.63      -0.01      -0.00

   54   3.1  1.5 -1.5    -126.72       0.25      -0.00      -0.00      -0.18      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.49       0.00      -0.00       0.00       0.00      -0.00      -0.00

   55   4.1  1.5 -1.5      -0.01      -0.00       0.00      -0.00       0.00      -0.00       0.58       0.22       0.01      -0.00
                           -0.00      -0.00      -0.30       0.00       0.00      -0.54       0.00       0.00      -0.00      -0.00

   56   5.1  1.5 -1.5     280.16      -0.53      -0.00       0.00      -0.76       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.38       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00      -0.00      -0.00      -0.60      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                           15.99      -0.05       0.00       0.00       0.48       0.00       0.00       0.00       0.00       0.00

   58   7.1  1.5 -1.5       0.00      -0.00       0.58      -0.00       0.00      -0.16      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.06       0.63       0.01      -0.00

   59   8.1  1.5 -1.5       0.00       0.00    -259.23       0.00       0.04      78.94      -0.07      -0.04      -0.00      -0.00
                            0.00       0.00       0.06       0.01       0.00       0.10      22.63    -301.96      -0.00       0.00

   60   9.1  1.5 -1.5      -0.58     259.23       0.00      -0.06     338.03      -0.06       0.00      -0.00      -0.00      -0.00
                            0.00      -0.06      -0.00    -138.34      -0.03       0.00       0.00      -0.04      -0.00       0.00

   61  10.1  1.5 -1.5       0.00      -0.00       0.06       0.00      -0.00      -0.03    -267.86    -103.35      -0.00       0.00
                            0.00      -0.01     138.34      -0.00       0.07     251.58      -0.03       0.12       0.00      -0.00

   62  11.1  1.5 -1.5      -0.00      -0.04    -338.03       0.00      -0.00    -135.54       0.05      -0.00       0.00       0.00
                           -0.00      -0.00       0.03      -0.07       0.00      -0.00     183.44     284.13      -0.00       0.00

   63  12.1  1.5 -1.5       0.16     -78.94       0.06       0.03     135.54      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.10      -0.00    -251.58       0.00      -0.00      -0.00       0.02       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.07      -0.00     267.86      -0.05      -0.00       0.00       0.07       0.00       0.00
                            0.06     -22.63      -0.00       0.03    -183.44       0.00       0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.04       0.00     103.35       0.00      -0.00      -0.07      -0.00      -0.00       0.00
                           -0.63     301.96       0.04      -0.12    -284.13      -0.02      -0.00       0.00       0.00       0.00

   66  15.1  1.5 -1.5      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.01       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     146.54

   67  16.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00    -146.54      -0.00

   68  17.1  1.5 -1.5      -0.01       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.02    -146.55
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00


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

   18   1.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5    -169.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00      -0.15     -69.37      -0.70       0.00      -0.00       0.00       0.00
                            0.00       0.00     289.72      -0.00      -0.00       0.00      -0.43     322.65      -0.65       0.00

   36   2.1  1.5 -0.5       0.00      -0.00       0.00     -93.80       0.13    -381.05       0.00      -0.00       0.00       0.71
                           -0.00    -289.72       0.00       0.00       0.00      -0.00    -245.46      -0.60       0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.15      93.80      -0.00      -0.00      -0.00       0.00     126.72      -0.25       0.00
                            0.00       0.00      -0.00       0.00    -249.51       0.00       0.00      -0.00       0.00      -0.00

   38   4.1  1.5 -0.5       0.00      69.37      -0.13       0.00       0.00      -0.00     307.58       0.01       0.00      -0.00
                           -0.00       0.00      -0.00     249.51       0.00     192.78      -0.00      -0.00      -0.00      -0.30

   39   5.1  1.5 -0.5       0.00       0.70     381.05       0.00       0.00      -0.00       0.00    -280.16       0.53       0.00
                           -0.00      -0.00       0.00      -0.00    -192.78       0.00      -0.00      -0.00       0.00      -0.00

   40   6.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00    -307.58      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.43     245.46      -0.00       0.00       0.00       0.00      15.99      -0.05       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00    -126.72      -0.01     280.16       0.00       0.00       0.00      -0.58
                            0.00    -322.65       0.60       0.00       0.00       0.00     -15.99      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00      -0.00      -0.00       0.25      -0.00      -0.53      -0.00      -0.00       0.00     259.23
                            0.00       0.65      -0.00      -0.00       0.00      -0.00       0.05       0.00      -0.00       0.06

   43   9.1  1.5 -0.5       0.00      -0.00      -0.71      -0.00       0.00      -0.00      -0.00       0.58    -259.23       0.00
                           -0.00      -0.00      -0.00       0.00       0.30       0.00      -0.00       0.00      -0.06       0.00

   44  10.1  1.5 -0.5       0.00      -0.14       0.00      -0.00      -0.00       0.00      -0.60      -0.00       0.00      -0.06
                            0.00      -0.00       0.00      -0.49      -0.00      -0.38      -0.00       0.00      -0.01     138.34

   45  11.1  1.5 -0.5       0.00      -0.00       0.00      -0.18       0.00      -0.76      -0.00       0.00       0.04     338.03
                           -0.00      -0.55       0.00      -0.00      -0.00      -0.00      -0.48      -0.00      -0.00       0.03

   46  12.1  1.5 -0.5       0.00      -0.00      -0.30      -0.00      -0.00       0.00      -0.00      -0.16      78.94      -0.06
                            0.00      -0.00       0.00       0.00       0.54       0.00      -0.00      -0.00      -0.10      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.58       0.00       0.00      -0.00      -0.07       0.00
                           -0.00      -0.00      -0.39      -0.00      -0.00       0.00      -0.00       0.06     -22.63      -0.00

   48  14.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.22       0.00      -0.00      -0.00      -0.04      -0.00
                           -0.00      -0.00      -0.63      -0.00      -0.00      -0.00      -0.00      -0.63     301.96       0.04

   49  15.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.01      -0.00       0.00       0.00      -0.00      -0.00
                          -84.60       0.00       0.01       0.00       0.00       0.00      -0.00      -0.01       0.00       0.00

   50  16.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.01      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   51  17.1  1.5 -0.5   13507.49       0.00       0.01       0.00       0.00       0.00       0.00       0.01      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.01       0.00       0.00       0.00      -0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -557.55      -0.08     -72.90       0.00      -0.00       0.00      -0.03

   53   2.1  1.5 -1.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.98     -13.93       0.13      -0.00      -0.00       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     557.55      -0.98      -0.00      -0.00      -0.00    -567.90       0.05      -0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.07       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.08      13.93       0.00      -0.00       0.00       0.00    -545.93       1.07      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.13       0.00       0.00       0.00       0.00
                           -0.00      72.90      -0.13       0.00      -0.00       0.00     326.93       0.01       0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.10       0.00       0.00       0.00
                           -0.00      -0.00       0.00     567.90      -0.00    -326.93       0.00       0.00      -0.00       0.81

   58   7.1  1.5 -1.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.72       0.00       0.00
                           -0.00       0.00       0.00      -0.05     545.93      -0.01      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3626.79       0.00
                            0.00      -0.00      -0.00       0.00      -1.07      -0.00       0.00       0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3626.79
                            0.00       0.03      -0.00      -0.00       0.00       0.00      -0.81       0.00       0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.03      -0.00       0.00      -0.00      -0.00       1.07    -496.45       0.01

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.06       0.00      -0.00       0.00       0.01       0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -1.10       0.00       0.00       0.00      -0.00       1.00      -0.00      -0.00      -0.08

   64  13.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -1.26      -0.00       0.61       0.00       0.00       0.14    -371.86

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.92       0.00       0.23       0.00       0.00      -0.25     -41.85

   66  15.1  1.5 -1.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.02       0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5     146.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   68  17.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01       0.00      -0.00       0.00       0.00      -0.01      -0.00      -0.00       0.00


   Nr   State  S   Sz       61         62         63         64         65         66         67         68

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

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.14       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.55       0.00       0.00       0.00      -0.00       0.00      -0.00

   36   2.1  1.5 -0.5      -0.00      -0.00       0.30      -0.00      -0.00       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00       0.39       0.63      -0.01      -0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.18       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.49       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00      -0.00       0.00      -0.58      -0.22      -0.01       0.00      -0.00
                            0.00       0.00      -0.54       0.00       0.00      -0.00      -0.00      -0.01

   39   5.1  1.5 -0.5      -0.00       0.76      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.38       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   40   6.1  1.5 -0.5       0.60       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.48       0.00       0.00       0.00       0.00       0.00      -0.00

   41   7.1  1.5 -0.5       0.00      -0.00       0.16       0.00       0.00      -0.00       0.00      -0.01
                           -0.00       0.00       0.00      -0.06       0.63       0.01      -0.00      -0.00

   42   8.1  1.5 -0.5      -0.00      -0.04     -78.94       0.07       0.04       0.00       0.00       0.00
                            0.01       0.00       0.10      22.63    -301.96      -0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.06    -338.03       0.06      -0.00       0.00       0.00       0.00      -0.00
                         -138.34      -0.03       0.00       0.00      -0.04      -0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.03     267.86     103.35       0.00      -0.00      -0.00
                            0.00       0.07     251.58      -0.03       0.12       0.00      -0.00       0.00

   45  11.1  1.5 -0.5      -0.00      -0.00     135.54      -0.05       0.00      -0.00      -0.00      -0.00
                           -0.07      -0.00      -0.00     183.44     284.13      -0.00       0.00      -0.00

   46  12.1  1.5 -0.5      -0.03    -135.54      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                         -251.58       0.00       0.00      -0.00       0.02       0.00       0.00       0.00

   47  13.1  1.5 -0.5    -267.86       0.05       0.00       0.00      -0.07      -0.00      -0.00       0.00
                            0.03    -183.44       0.00      -0.00       0.00       0.00       0.00      -0.00

   48  14.1  1.5 -0.5    -103.35      -0.00       0.00       0.07      -0.00       0.00      -0.00      -0.00
                           -0.12    -284.13      -0.02      -0.00      -0.00       0.00       0.00       0.00

   49  15.1  1.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.02
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00     146.54       0.00

   50  16.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00    -146.55
                            0.00      -0.00      -0.00      -0.00      -0.00    -146.54       0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.02     146.55      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       1.10       0.00       0.00       0.00       0.00       0.01

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       1.26      -0.92      -0.00       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.06      -0.00       0.00      -0.00       0.00       0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.61      -0.23      -0.02       0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -1.00      -0.00      -0.00      -0.00      -0.00       0.01

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.07      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          496.45      -0.01       0.00      -0.14       0.25       0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.08     371.86      41.85       0.00      -0.00      -0.00

   61  10.1  1.5 -1.5    3626.80       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -28.49       0.25       0.00      -0.00       0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00    3626.85       0.00       0.00       0.00       0.00       0.00       0.00
                           28.49      -0.00      -0.00       0.01      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00    3626.87       0.00       0.00       0.00       0.00       0.00
                           -0.25       0.00       0.00    -534.62     438.55       0.00      -0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00    3626.88       0.00       0.00       0.00       0.00
                           -0.00      -0.01     534.62       0.00      -0.01      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00    3628.74       0.00       0.00       0.00
                            0.00       0.00    -438.55       0.01      -0.00       0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   13504.98       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -253.81

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   13506.87       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.04

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   13507.49
                           -0.00       0.00      -0.00       0.00       0.00     253.81      -0.04      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1392.55882218    -0.00373227     -819.14      0.00000000        0.00      0.0000
     2 -1392.55882218    -0.00373227     -819.14      0.00000000        0.00      0.0000
     3 -1392.55882213    -0.00373222     -819.13      0.00000005        0.01      0.0000
     4 -1392.55882213    -0.00373222     -819.13      0.00000005        0.01      0.0000
     5 -1392.55882199    -0.00373208     -819.10      0.00000019        0.04      0.0000
     6 -1392.55882199    -0.00373208     -819.10      0.00000019        0.04      0.0000
     7 -1392.55882108    -0.00373116     -818.90      0.00000111        0.24      0.0000
     8 -1392.55882108    -0.00373116     -818.90      0.00000111        0.24      0.0000
     9 -1392.55882102    -0.00373111     -818.88      0.00000116        0.26      0.0000
    10 -1392.55882102    -0.00373111     -818.88      0.00000116        0.26      0.0000
    11 -1392.55508974     0.00000018        0.04      0.00373245      819.18      0.1016
    12 -1392.55508974     0.00000018        0.04      0.00373245      819.18      0.1016
    13 -1392.55508955     0.00000036        0.08      0.00373263      819.22      0.1016
    14 -1392.55508955     0.00000036        0.08      0.00373263      819.22      0.1016
    15 -1392.55508893     0.00000099        0.22      0.00373326      819.36      0.1016
    16 -1392.55508893     0.00000099        0.22      0.00373326      819.36      0.1016
    17 -1392.55508867     0.00000124        0.27      0.00373351      819.41      0.1016
    18 -1392.55508867     0.00000124        0.27      0.00373351      819.41      0.1016
    19 -1392.55218669     0.00290322      637.18      0.00663550     1456.32      0.1806
    20 -1392.55218669     0.00290322      637.18      0.00663550     1456.32      0.1806
    21 -1392.55218597     0.00290394      637.34      0.00663622     1456.48      0.1806
    22 -1392.55218597     0.00290394      637.34      0.00663622     1456.48      0.1806
    23 -1392.55218594     0.00290397      637.35      0.00663624     1456.49      0.1806
    24 -1392.55218594     0.00290397      637.35      0.00663624     1456.49      0.1806
    25 -1392.55011268     0.00497723     1092.38      0.00870950     1911.52      0.2370
    26 -1392.55011268     0.00497723     1092.38      0.00870950     1911.52      0.2370
    27 -1392.55011255     0.00497736     1092.40      0.00870963     1911.54      0.2370
    28 -1392.55011255     0.00497736     1092.40      0.00870963     1911.54      0.2370
    29 -1392.54196357     0.01312634     2880.90      0.01685861     3700.04      0.4587
    30 -1392.54196357     0.01312634     2880.90      0.01685861     3700.04      0.4587
    31 -1392.54196348     0.01312643     2880.92      0.01685871     3700.06      0.4587
    32 -1392.54196348     0.01312643     2880.92      0.01685871     3700.06      0.4587
    33 -1392.54196337     0.01312654     2880.94      0.01685882     3700.08      0.4588
    34 -1392.54196337     0.01312654     2880.94      0.01685882     3700.08      0.4588
    35 -1392.54196148     0.01312843     2881.36      0.01686070     3700.50      0.4588
    36 -1392.54196148     0.01312843     2881.36      0.01686070     3700.50      0.4588
    37 -1392.54195920     0.01313071     2881.86      0.01686299     3701.00      0.4589
    38 -1392.54195920     0.01313071     2881.86      0.01686299     3701.00      0.4589
    39 -1392.53856492     0.01652499     3626.82      0.02025727     4445.96      0.5512
    40 -1392.53856492     0.01652499     3626.82      0.02025727     4445.96      0.5512
    41 -1392.53856487     0.01652504     3626.83      0.02025732     4445.97      0.5512
    42 -1392.53856487     0.01652504     3626.83      0.02025732     4445.97      0.5512
    43 -1392.53856423     0.01652568     3626.97      0.02025796     4446.11      0.5512
    44 -1392.53856423     0.01652568     3626.97      0.02025796     4446.11      0.5512
    45 -1392.53856046     0.01652945     3627.80      0.02026173     4446.94      0.5513
    46 -1392.53856046     0.01652945     3627.80      0.02026173     4446.94      0.5513
    47 -1392.53592152     0.01916839     4206.98      0.02290067     5026.12      0.6232
    48 -1392.53592152     0.01916839     4206.98      0.02290067     5026.12      0.6232
    49 -1392.53592006     0.01916985     4207.30      0.02290212     5026.44      0.6232
    50 -1392.53592006     0.01916985     4207.30      0.02290212     5026.44      0.6232
    51 -1392.53591919     0.01917072     4207.49      0.02290299     5026.63      0.6232
    52 -1392.53591919     0.01917072     4207.49      0.02290299     5026.63      0.6232
    53 -1392.53403332     0.02105660     4621.39      0.02478887     5440.53      0.6745
    54 -1392.53403332     0.02105660     4621.39      0.02478887     5440.53      0.6745
    55 -1392.53403097     0.02105895     4621.90      0.02479122     5441.04      0.6746
    56 -1392.53403097     0.02105895     4621.90      0.02479122     5441.04      0.6746
    57 -1392.49470937     0.06038054    13252.00      0.06411282    14071.14      1.7446
    58 -1392.49470937     0.06038054    13252.00      0.06411282    14071.14      1.7446
    59 -1392.49470701     0.06038291    13252.52      0.06411518    14071.66      1.7447
    60 -1392.49470701     0.06038291    13252.52      0.06411518    14071.66      1.7447
    61 -1392.49470316     0.06038675    13253.36      0.06411903    14072.50      1.7448
    62 -1392.49470316     0.06038675    13253.36      0.06411903    14072.50      1.7448
    63 -1392.49278176     0.06230815    13675.06      0.06604042    14494.20      1.7971
    64 -1392.49278176     0.06230815    13675.06      0.06604042    14494.20      1.7971
    65 -1392.49277626     0.06231365    13676.27      0.06604592    14495.40      1.7972
    66 -1392.49277626     0.06231365    13676.27      0.06604592    14495.40      1.7972
    67 -1392.49162252     0.06346739    13929.48      0.06719966    14748.62      1.8286
    68 -1392.49162252     0.06346739    13929.48      0.06719966    14748.62      1.8286


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.183944941  -0.001961325   0.395044121   0.001711201   0.001143156  -0.309417365   0.209174484  -0.005434298
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000774922  -0.055879508   0.001043305  -0.301591293   0.121441845   0.000638393   0.002785008   0.116434798
                         0.000906387   0.084996205   0.000643631  -0.148605072  -0.187258712  -0.000691877   0.001556286   0.059904327

    3    3.1  1.5  1.5  -0.000000813  -0.000072745   0.000001304  -0.000297278  -0.000593558  -0.000002191  -0.000000656  -0.000025309
                        -0.056018395   0.000549545   0.449838575   0.002551806   0.001588218  -0.534075243  -0.008019487   0.000257562

    4    4.1  1.5  1.5  -0.002383637  -0.223546087   0.000123348  -0.028466518  -0.048134659  -0.000177821   0.004980846   0.191718731
                        -0.001257116  -0.146975321  -0.000326203   0.057771782  -0.031216857  -0.000066773  -0.010175955  -0.372606794

    5    5.1  1.5  1.5  -0.000002911  -0.000268775   0.000000121  -0.000020788   0.000258685   0.000000966   0.000003052   0.000117926
                        -0.255175386   0.002544218   0.072855342   0.000357601  -0.000574361   0.200857572   0.227504979  -0.006139870

    6    6.1  1.5  1.5   0.096990555  -0.000985308  -0.076716648  -0.000478930  -0.001672402   0.571992678   0.198286758  -0.005371663
                        -0.000000804  -0.000074311   0.000000304  -0.000072228  -0.000679812  -0.000002524  -0.000002937  -0.000113223

    7    7.1  1.5  1.5  -0.000124889  -0.015895555   0.000139849  -0.024430381   0.011895557   0.000014393   0.011329777   0.414474249
                         0.000257798   0.024176589   0.000052143  -0.012037865  -0.018342219  -0.000067773   0.005540520   0.213261085

    8    8.1  1.5  1.5   0.000000069   0.000007773  -0.000000069   0.000014765  -0.000006826  -0.000000020  -0.000004953  -0.000181521
                        -0.000000114  -0.000011741  -0.000000085   0.000007263   0.000010543   0.000000097  -0.000002428  -0.000093319

    9    9.1  1.5  1.5  -0.000000003   0.000000111   0.000000009  -0.000000011  -0.000000151  -0.000000040  -0.000000012  -0.000000052
                         0.000105838  -0.000001056  -0.000001028   0.000000018   0.000000353  -0.000121995  -0.000098071   0.000002650

   10   10.1  1.5  1.5   0.000001058   0.000097104  -0.000000010   0.000012356   0.000020904   0.000000052  -0.000002132  -0.000083091
                         0.000000546   0.000063850   0.000000142  -0.000025090   0.000013551   0.000000029   0.000004415   0.000161661

   11   11.1  1.5  1.5  -0.000000192  -0.000024041   0.000000755  -0.000130613   0.000052565   0.000000041   0.000001215   0.000044817
                         0.000000389   0.000036565   0.000000283  -0.000064359  -0.000081052  -0.000000304   0.000000600   0.000023060

   12   12.1  1.5  1.5   0.000000001   0.000000047  -0.000000001   0.000000122   0.000000240   0.000000001   0.000000001   0.000000053
                         0.000041194  -0.000000403  -0.000197898  -0.000001122  -0.000000648   0.000215722  -0.000011791   0.000000326

   13   13.1  1.5  1.5  -0.000030075   0.000000306   0.000058026   0.000000347   0.000000778  -0.000265402  -0.000071913   0.000001953
                        -0.000000015   0.000000023  -0.000000000   0.000000047   0.000000312   0.000000019   0.000000016   0.000000043

   14   14.1  1.5  1.5  -0.000085247   0.000000889  -0.000164803  -0.000000930  -0.000000287   0.000096678  -0.000102334   0.000002723
                         0.000000001   0.000000085   0.000000001  -0.000000115  -0.000000095  -0.000000000   0.000000002   0.000000087

   15   15.1  1.5  1.5   0.000000795  -0.000000008  -0.000000394  -0.000000002   0.000000000  -0.000000120  -0.000000487   0.000000013
                        -0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   16   16.1  1.5  1.5  -0.000000000  -0.000000042   0.000000001  -0.000000203   0.000000080   0.000000000   0.000000002   0.000000066
                         0.000000001   0.000000065   0.000000000  -0.000000100  -0.000000124  -0.000000000   0.000000001   0.000000034

   17   17.1  1.5  1.5  -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000
                        -0.000000665   0.000000007  -0.000000624  -0.000000003   0.000000001  -0.000000378  -0.000000738   0.000000020

   18    1.1  1.5  0.5   0.002955656   0.277186431   0.000351008  -0.081053131  -0.108718286  -0.000401701   0.005152697   0.198334346
                         0.002711643   0.182230081  -0.000728444   0.164495107  -0.070508208   0.000099898  -0.010368196  -0.385468465

   19    2.1  1.5  0.5   0.000001444   0.000127383  -0.000000285   0.000056509   0.000301514   0.000001113  -0.000008073  -0.000311190
                         0.656009415  -0.006911177   0.101890522   0.000326908  -0.000149239   0.093332708   0.088502751  -0.001694083

   20    3.1  1.5  0.5   0.000699853   0.079052176   0.001181817  -0.205422276   0.075711226   0.000080751   0.005237296   0.191518116
                        -0.001282023  -0.120236959   0.000438441  -0.101220061  -0.116742034  -0.000431323   0.002560135   0.098542623

   21    4.1  1.5  0.5  -0.100180176   0.000971648   0.466567343   0.002564040  -0.000702769   0.251746894   0.181250145  -0.004883950
                         0.000001622   0.000147048  -0.000001212   0.000267676  -0.000350620  -0.000001321  -0.000002336  -0.000090025

   22    5.1  1.5  0.5   0.001287399   0.146223717   0.001984093  -0.335763699   0.145415890   0.000122344   0.000922750   0.034273556
                        -0.002371378  -0.222403568   0.000716636  -0.165444788  -0.224222135  -0.000828418   0.000458115   0.017634697

   23    6.1  1.5  0.5   0.003572270   0.335013156   0.000460521  -0.106342724  -0.106594338  -0.000393871  -0.002296649  -0.088400430
                         0.001862545   0.220262074  -0.001231599   0.215818476  -0.069130302  -0.000019657   0.004702608   0.171806622

   24    7.1  1.5  0.5   0.000000665   0.000061737   0.000000076  -0.000018539  -0.000053674  -0.000000205   0.000005185   0.000199820
                         0.053943240  -0.000534598   0.017327156   0.000112686   0.000134840  -0.045920949   0.374919362  -0.010128922

   25    8.1  1.5  0.5   0.000000017  -0.000000036  -0.000000079   0.000000036   0.000000006  -0.000000043  -0.000000033  -0.000000101
                        -0.000032517   0.000000349  -0.000008873  -0.000000036  -0.000000040   0.000018690  -0.000164040   0.000004404

   26    9.1  1.5  0.5  -0.000000506  -0.000057518  -0.000000772   0.000130343  -0.000057329  -0.000000047  -0.000000044  -0.000001849
                         0.000000933   0.000087443  -0.000000278   0.000064211   0.000088411   0.000000327  -0.000000025  -0.000000970

   27   10.1  1.5  0.5   0.000043518  -0.000000385  -0.000202649  -0.000001125   0.000000291  -0.000109349  -0.000078650   0.000002140
                         0.000000012  -0.000000040   0.000000004  -0.000000094   0.000000143  -0.000000007   0.000000064  -0.000000003

   28   11.1  1.5  0.5   0.000000003   0.000000271   0.000000000  -0.000000041   0.000000048   0.000000000   0.000000000   0.000000017
                         0.000284127  -0.000002854   0.000044005   0.000000267  -0.000000123   0.000041173   0.000033228  -0.000000891

   29   12.1  1.5  0.5  -0.000000387  -0.000043752  -0.000000640   0.000110676  -0.000042245  -0.000000043  -0.000002308  -0.000084444
                         0.000000725   0.000066546  -0.000000233   0.000054535   0.000065139   0.000000237  -0.000001084  -0.000043450

   30   13.1  1.5  0.5  -0.000001348  -0.000126427  -0.000000176   0.000040539   0.000038919   0.000000144   0.000001313   0.000050525
                        -0.000000699  -0.000083141   0.000000472  -0.000082320   0.000025222   0.000000004  -0.000002683  -0.000098195

   31   14.1  1.5  0.5  -0.000001485  -0.000140362  -0.000000233   0.000041551   0.000053443   0.000000169  -0.000002088  -0.000079560
                        -0.000000785  -0.000092284   0.000000468  -0.000084328   0.000034660   0.000000031   0.000004206   0.000154626

   32   15.1  1.5  0.5   0.000000004   0.000000413  -0.000000000   0.000000111   0.000000158   0.000000001  -0.000000000  -0.000000001
                         0.000000002   0.000000272   0.000000001  -0.000000224   0.000000102   0.000000000   0.000000000   0.000000001

   33   16.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000471  -0.000000005   0.000000037   0.000000000  -0.000000000   0.000000118   0.000000043  -0.000000001

   34   17.1  1.5  0.5   0.000000003   0.000000330  -0.000000000   0.000000092  -0.000000026  -0.000000000  -0.000000004  -0.000000131
                        -0.000000005  -0.000000503  -0.000000000   0.000000045   0.000000041   0.000000000  -0.000000002  -0.000000067

   35    1.1  1.5 -0.5   0.331722957  -0.003959373  -0.183380070  -0.000808571   0.000282674  -0.129580373   0.433500231  -0.011576857
                         0.000006783   0.000642085   0.000000081  -0.000007108   0.000302388   0.000001139  -0.000004231  -0.000161748

   36    2.1  1.5 -0.5  -0.003690294  -0.360387380  -0.000268266   0.091397714  -0.050785112   0.000171769   0.001364014   0.078700747
                         0.005844855   0.548150790  -0.000195181   0.045034836   0.078306237   0.000289272   0.001051771   0.040483694

   37    3.1  1.5 -0.5   0.000001277   0.000119507   0.000000572  -0.000129067   0.000166941   0.000000630  -0.000003148  -0.000119630
                         0.143896396  -0.001455711   0.229006140   0.001253899  -0.000405821   0.139143423  -0.215383001   0.005828315

   38    4.1  1.5 -0.5   0.000892677   0.083708154   0.000893183  -0.206221478  -0.211216816  -0.000780408  -0.002154405  -0.082925786
                         0.000410915   0.055036465  -0.002418300   0.418518563  -0.136981588  -0.000088217   0.004384018   0.161167394

   39    5.1  1.5 -0.5   0.000002426   0.000227012   0.000001034  -0.000234124   0.000348111   0.000001310  -0.000000367  -0.000014809
                         0.266166719  -0.002688735   0.374311688   0.002096516  -0.000761619   0.267247725  -0.038544250   0.001030106

   40    6.1  1.5 -0.5   0.400935401  -0.004008145  -0.240595905  -0.001308314   0.000341156  -0.127048619  -0.193215298   0.005232320
                        -0.000004413  -0.000406152   0.000000622  -0.000131265   0.000197821   0.000000749   0.000002864   0.000109298

   41    7.1  1.5 -0.5  -0.000242101  -0.029634883  -0.000109275   0.015542729   0.024986672   0.000028336   0.009098103   0.333377650
                         0.000480618   0.045073793  -0.000033177   0.007658583  -0.038527910  -0.000142337   0.004456400   0.171533876

   42    8.1  1.5 -0.5   0.000000161   0.000017850   0.000000048  -0.000007924  -0.000010134  -0.000000017  -0.000003963  -0.000145850
                        -0.000000311  -0.000027180  -0.000000016  -0.000003993   0.000015704   0.000000037  -0.000001925  -0.000075080

   43    9.1  1.5 -0.5  -0.000000023  -0.000000090   0.000000013   0.000000092  -0.000000138   0.000000006   0.000000016  -0.000000002
                        -0.000104664   0.000001058  -0.000145301  -0.000000816   0.000000300  -0.000105371   0.000002088  -0.000000051

   44   10.1  1.5 -0.5  -0.000000344  -0.000036370  -0.000000413   0.000089573   0.000091748   0.000000322   0.000000982   0.000036040
                        -0.000000178  -0.000023897   0.000001050  -0.000181778   0.000059493   0.000000038  -0.000001902  -0.000069907

   45   11.1  1.5 -0.5  -0.000001341  -0.000156091  -0.000000258   0.000039474  -0.000022403  -0.000000026   0.000000800   0.000029546
                         0.000002534   0.000237411  -0.000000081   0.000019450   0.000034544   0.000000130   0.000000393   0.000015203

   46   12.1  1.5 -0.5  -0.000000001  -0.000000075  -0.000000000   0.000000074  -0.000000093  -0.000000000   0.000000002   0.000000092
                        -0.000079640   0.000000818  -0.000123382  -0.000000677   0.000000222  -0.000077639   0.000094967  -0.000002548

   47   13.1  1.5 -0.5  -0.000151315   0.000001511   0.000091760   0.000000501  -0.000000123   0.000046377   0.000110431  -0.000002987
                         0.000000017   0.000000156   0.000000021   0.000000051  -0.000000075   0.000000015  -0.000000002  -0.000000061

   48   14.1  1.5 -0.5  -0.000167981   0.000001672   0.000094009   0.000000523  -0.000000159   0.000063698  -0.000173893   0.000004696
                         0.000000002   0.000000160   0.000000000  -0.000000002  -0.000000066  -0.000000000   0.000000002   0.000000068

   49   15.1  1.5 -0.5   0.000000494  -0.000000005   0.000000250   0.000000001  -0.000000001   0.000000188  -0.000000001   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   50   16.1  1.5 -0.5  -0.000000002  -0.000000259  -0.000000000   0.000000034  -0.000000064  -0.000000000   0.000000001   0.000000039
                         0.000000004   0.000000394  -0.000000000   0.000000017   0.000000099   0.000000000   0.000000001   0.000000020

   51   17.1  1.5 -0.5   0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000602  -0.000000006  -0.000000102  -0.000000001   0.000000000  -0.000000048   0.000000147  -0.000000004

   52    1.1  1.5 -1.5   0.001638854   0.153701622  -0.000756342   0.174607491  -0.259603492  -0.000959116   0.002486245   0.095699367
                         0.001077476   0.101052229   0.001534977  -0.354361512  -0.168360128  -0.000622014  -0.004832203  -0.185998914

   53    2.1  1.5 -1.5  -0.000001549  -0.000149579   0.000000458  -0.000116213   0.000159153   0.000000562  -0.000002852  -0.000109689
                         0.101719587  -0.001183075  -0.336215371  -0.001220344   0.000927852  -0.223190383   0.130941172  -0.003188458

   54    3.1  1.5 -1.5  -0.000241114  -0.030775017   0.002420410  -0.403512524  -0.290602776  -0.000366182   0.000240605   0.007130665
                         0.000499155   0.046807681   0.000861222  -0.198827531   0.448091946   0.001655494   0.000095332   0.003669577

   55    4.1  1.5 -1.5   0.267534293  -0.002682342   0.064404360   0.000347129  -0.000185525   0.057371052  -0.419036866   0.011327292
                        -0.000002799  -0.000259050  -0.000000133   0.000033535  -0.000040733  -0.000000154   0.000005936   0.000226607

   56    5.1  1.5 -1.5  -0.001173111  -0.140185909   0.000329962  -0.065352468   0.109291401   0.000095483  -0.005513553  -0.202297078
                         0.002273564   0.213219109   0.000139411  -0.032201799  -0.168520485  -0.000622648  -0.002704190  -0.104088461

   57    6.1  1.5 -1.5   0.000864132   0.081043405   0.000146895  -0.033908641   0.479904777   0.001773057   0.002356910   0.090720738
                         0.000479197   0.053283528  -0.000461533   0.068816046   0.311234683   0.000339619  -0.004828308  -0.176316154

   58    7.1  1.5 -1.5   0.000000404   0.000037269  -0.000000072   0.000015040  -0.000024801  -0.000000096   0.000006727   0.000256828
                         0.028933996  -0.000284022  -0.027235156  -0.000148494   0.000064694  -0.021861868   0.466121437  -0.012609332

   59    8.1  1.5 -1.5  -0.000000045  -0.000000005  -0.000000011   0.000000046   0.000000036  -0.000000010   0.000000068  -0.000000107
                        -0.000014081   0.000000133   0.000016454   0.000000099  -0.000000092   0.000012560  -0.000204103   0.000005515

   60    9.1  1.5 -1.5   0.000000488   0.000058141   0.000000021   0.000000926  -0.000066413  -0.000000066   0.000002380   0.000087200
                        -0.000000943  -0.000088439  -0.000000002   0.000000447   0.000102333   0.000000378   0.000001166   0.000044879

   61   10.1  1.5 -1.5  -0.000116215   0.000001184  -0.000027968  -0.000000132   0.000000059  -0.000024912   0.000181764  -0.000004901
                         0.000000007   0.000000125  -0.000000006  -0.000000053   0.000000004  -0.000000005   0.000000076  -0.000000124

   62   11.1  1.5 -1.5   0.000000001   0.000000053  -0.000000000   0.000000080  -0.000000131  -0.000000001   0.000000001   0.000000023
                         0.000043760  -0.000000430  -0.000145609  -0.000000803   0.000000277  -0.000096605   0.000050401  -0.000001355

   63   12.1  1.5 -1.5   0.000000182   0.000022631  -0.000001061   0.000177517   0.000117379   0.000000151   0.000000266   0.000010485
                        -0.000000362  -0.000034421  -0.000000387   0.000087470  -0.000180992  -0.000000674   0.000000196   0.000005393

   64   13.1  1.5 -1.5  -0.000000268  -0.000025138  -0.000000111   0.000025648  -0.000222664  -0.000000823  -0.000000855  -0.000032915
                        -0.000000149  -0.000016509   0.000000332  -0.000052051  -0.000144427  -0.000000162   0.000001756   0.000063939

   65   14.1  1.5 -1.5  -0.000000790  -0.000071231   0.000000308  -0.000072842   0.000081114   0.000000293  -0.000001169  -0.000046821
                        -0.000000417  -0.000046832  -0.000000885   0.000147831   0.000052605   0.000000076   0.000002461   0.000090995

   66   15.1  1.5 -1.5   0.000000007   0.000000664   0.000000001  -0.000000174  -0.000000101  -0.000000000  -0.000000006  -0.000000223
                         0.000000004   0.000000437  -0.000000002   0.000000353  -0.000000065  -0.000000000   0.000000012   0.000000433

   67   16.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000077  -0.000000001  -0.000000226  -0.000000001   0.000000000  -0.000000148   0.000000074  -0.000000002

   68   17.1  1.5 -1.5  -0.000000003  -0.000000365  -0.000000003   0.000000560  -0.000000206  -0.000000000   0.000000018   0.000000656
                         0.000000006   0.000000556  -0.000000001   0.000000276   0.000000317   0.000000001   0.000000009   0.000000338


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.186862112  -0.003602494   0.482222228   0.005291198  -0.006587197  -0.043271891   0.144042584   0.004144774
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.003292118   0.164187818   0.001992757  -0.230460400  -0.019973038   0.001119576  -0.008157462   0.410299309
                        -0.002788510  -0.144640757   0.002627552  -0.239465549   0.204550817  -0.031138330   0.010431081  -0.362510020

    3    3.1  1.5  1.5  -0.000000758  -0.000039513  -0.000000337   0.000030476  -0.000498724   0.000075913   0.000028362  -0.000985379
                         0.011991912  -0.000276070  -0.056811317  -0.000652697   0.007719508   0.051032843   0.208514617   0.004884003

    4    4.1  1.5  1.5   0.004078288   0.211544190  -0.001881431   0.171468307   0.461082356  -0.070189594  -0.001091676   0.037938886
                         0.005349330   0.240122474   0.002147222  -0.165012304   0.045047980  -0.002350614  -0.000776116   0.042942552

    5    5.1  1.5  1.5  -0.000009608  -0.000498715   0.000001926  -0.000175660  -0.004377452   0.000666333   0.000016349  -0.000568207
                         0.346840364  -0.007253011   0.201212082   0.002376885   0.068976034   0.455942254   0.119838515   0.002804820

    6    6.1  1.5  1.5   0.166382871  -0.003460868   0.261135079   0.003105416  -0.018182129  -0.120148570   0.341557759   0.008031092
                         0.000004303   0.000222968  -0.000002736   0.000249469  -0.001095079   0.000166696  -0.000045674   0.001586877

    7    7.1  1.5  1.5  -0.006178197  -0.277977471   0.000475692  -0.036891922  -0.002195711   0.000111465   0.002457858  -0.127298935
                         0.004721224   0.244893614   0.000420641  -0.038335244   0.022469119  -0.003420428  -0.003236283   0.112470041

    8    8.1  1.5  1.5   0.000002638   0.000118340  -0.000000000   0.000000025   0.000000000   0.000000000  -0.000000001   0.000000066
                        -0.000002019  -0.000104328  -0.000000000   0.000000026  -0.000000001   0.000000000   0.000000002  -0.000000058

    9    9.1  1.5  1.5  -0.000000005   0.000000211  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000
                        -0.000147945   0.000003092   0.000000051   0.000000001  -0.000000010  -0.000000063   0.000000014   0.000000000

   10   10.1  1.5  1.5  -0.000001746  -0.000091799   0.000000001  -0.000000050  -0.000000114   0.000000017   0.000000000  -0.000000006
                        -0.000002319  -0.000104107  -0.000000001   0.000000049  -0.000000011   0.000000001   0.000000000  -0.000000007

   11   11.1  1.5  1.5   0.000001659   0.000075099   0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000025
                        -0.000001274  -0.000066161   0.000000000  -0.000000002   0.000000000  -0.000000000  -0.000000001   0.000000022

   12   12.1  1.5  1.5   0.000000000   0.000000020   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000028390   0.000000631   0.000000001  -0.000000000  -0.000000004  -0.000000027   0.000000042   0.000000001

   13   13.1  1.5  1.5  -0.000059600   0.000001238  -0.000000032  -0.000000000   0.000000004   0.000000026   0.000000023   0.000000001
                         0.000000020  -0.000000079  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   14   14.1  1.5  1.5  -0.000090691   0.000001877  -0.000000012  -0.000000000   0.000000010   0.000000064  -0.000000010  -0.000000000
                        -0.000000003  -0.000000161  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000

   15   15.1  1.5  1.5  -0.000000832   0.000000017   0.000000006   0.000000000  -0.000000103  -0.000000680  -0.000000066  -0.000000002
                        -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000006   0.000000001   0.000000000  -0.000000000

   16   16.1  1.5  1.5   0.000000002   0.000000098  -0.000000000   0.000000014   0.000000000   0.000000000  -0.000000000   0.000000024
                        -0.000000002  -0.000000086  -0.000000000   0.000000015  -0.000000003   0.000000001   0.000000001  -0.000000021

   17   17.1  1.5  1.5   0.000000000   0.000000001  -0.000000000   0.000000001  -0.000000004   0.000000001  -0.000000000   0.000000002
                        -0.000000591   0.000000012  -0.000000693  -0.000000008   0.000000057   0.000000380  -0.000000397  -0.000000009

   18    1.1  1.5  0.5  -0.000497454  -0.025801793   0.003249284  -0.296130483  -0.305226436   0.046463983  -0.001653734   0.057472036
                        -0.000904352  -0.029282548  -0.003456016   0.284983563  -0.029869922   0.001233248  -0.001141017   0.065052888

   19    2.1  1.5  0.5   0.000004876   0.000253656  -0.000004483   0.000408542   0.002438587  -0.000371207   0.000011974  -0.000416023
                        -0.137221428   0.002933503   0.125700098   0.000986028  -0.030279803  -0.200488540   0.069323252   0.001523616

   20    3.1  1.5  0.5  -0.004859242  -0.218094751  -0.001875810   0.150940059   0.040515411  -0.002059185  -0.005725034   0.297998876
                         0.003704172   0.192138131  -0.001720995   0.156844472  -0.414605007   0.063114436   0.007575917  -0.263284635

   21    4.1  1.5  0.5   0.182134676  -0.003819988  -0.420585980  -0.004935869  -0.035163111  -0.232436236   0.228085448   0.005333017
                         0.000005238   0.000271793   0.000003662  -0.000333483  -0.002235554   0.000340299  -0.000031265   0.001086157

   22    5.1  1.5  0.5   0.006386881   0.288132985  -0.000931244   0.071787531  -0.035047760   0.001813974   0.000429194  -0.023754220
                        -0.004893738  -0.253840210  -0.000818500   0.074596138   0.358703596  -0.054604687  -0.000603871   0.020986376

   23    6.1  1.5  0.5  -0.002302708  -0.119443050  -0.002014030   0.183552718  -0.012053805   0.001834912  -0.000076859   0.002670987
                        -0.003005299  -0.135579343   0.002300165  -0.176641707  -0.001184849   0.000014210  -0.000024928   0.003024115

   24    7.1  1.5  0.5  -0.000012669  -0.000657591   0.000000101  -0.000009195  -0.000361764   0.000055073  -0.000067708   0.002352405
                         0.459212909  -0.009599849   0.030228279   0.000340542   0.005871795   0.038806436  -0.498765311  -0.011687733

   25    8.1  1.5  0.5  -0.000000025   0.000000302  -0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000
                        -0.000197535   0.000004111  -0.000000150  -0.000000002  -0.000000011  -0.000000074  -0.000000019  -0.000000000

   26    9.1  1.5  0.5  -0.000003066  -0.000138228  -0.000000001   0.000000045   0.000000002  -0.000000000   0.000000002  -0.000000088
                         0.000002348   0.000121791  -0.000000001   0.000000046  -0.000000021   0.000000003  -0.000000002   0.000000078

   27   10.1  1.5  0.5  -0.000079020   0.000001652  -0.000000185  -0.000000002  -0.000000016  -0.000000105  -0.000000060  -0.000000001
                         0.000000075  -0.000000125   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000

   28   11.1  1.5  0.5   0.000000002   0.000000097  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000065910   0.000001384   0.000000004   0.000000000  -0.000000003  -0.000000017  -0.000000005  -0.000000000

   29   12.1  1.5  0.5   0.000001655   0.000074203  -0.000000001   0.000000046   0.000000002  -0.000000000  -0.000000000   0.000000008
                        -0.000001209  -0.000065373  -0.000000001   0.000000048  -0.000000025   0.000000004   0.000000000  -0.000000007

   30   13.1  1.5  0.5   0.000000958   0.000049690  -0.000000000   0.000000028  -0.000000054   0.000000008  -0.000000001   0.000000034
                         0.000001251   0.000056362   0.000000000  -0.000000027  -0.000000005   0.000000000  -0.000000001   0.000000038

   31   14.1  1.5  0.5   0.000000339   0.000018637  -0.000000000   0.000000018  -0.000000069   0.000000011  -0.000000003   0.000000099
                         0.000000456   0.000021154   0.000000000  -0.000000017  -0.000000007   0.000000000  -0.000000002   0.000000112

   32   15.1  1.5  0.5   0.000000003   0.000000139   0.000000002  -0.000000227   0.000000545  -0.000000083   0.000000016  -0.000000571
                         0.000000003   0.000000158  -0.000000003   0.000000218   0.000000053  -0.000000003   0.000000012  -0.000000646

   33   16.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000055   0.000000001   0.000000041   0.000000000  -0.000000007  -0.000000048   0.000000004   0.000000000

   34   17.1  1.5  0.5  -0.000000001  -0.000000034   0.000000006  -0.000000447  -0.000000004   0.000000000  -0.000000010   0.000000536
                         0.000000001   0.000000030   0.000000005  -0.000000465   0.000000044  -0.000000007   0.000000014  -0.000000473

   35    1.1  1.5 -0.5   0.039028197  -0.001007424  -0.410985272  -0.004737689   0.046368410   0.306684118  -0.086803876  -0.001950105
                         0.000004354   0.000224525   0.000002604  -0.000237056   0.003223841  -0.000490743   0.000013917  -0.000483578

   36    2.1  1.5 -0.5  -0.002368873  -0.102963052  -0.000389363   0.087166201  -0.019577020   0.000473544  -0.000866177   0.051953062
                         0.001748777   0.090710143  -0.000993757   0.090568029   0.199530781  -0.030374149   0.001320688  -0.045897633

   37    3.1  1.5 -0.5  -0.000008304  -0.000432585  -0.000001729   0.000158211   0.003996876  -0.000608406  -0.000054265   0.001885589
                         0.290658531  -0.006094751  -0.217676571  -0.002540759  -0.063021403  -0.416579452  -0.397645730  -0.009306723

   38    4.1  1.5 -0.5   0.002321155   0.120399094  -0.003325216   0.303048849  -0.231334488   0.035215544  -0.004345458   0.151017220
                         0.003046050   0.136664181   0.003662916  -0.291640124  -0.022606958   0.001143481  -0.003276859   0.170929143

   39    5.1  1.5 -0.5   0.000010572   0.000549779  -0.000001136   0.000103428  -0.003425695   0.000521461   0.000004841  -0.000168275
                        -0.383999309   0.008027370  -0.103527936  -0.001235500   0.054527305   0.360411353   0.031696859   0.000721493

   40    6.1  1.5 -0.5   0.180688683  -0.003777216   0.254742797   0.003046156   0.001827833   0.012111874  -0.004034779  -0.000069576
                         0.000004958   0.000258698  -0.000002864   0.000260777   0.000161647  -0.000024601   0.000001184  -0.000041085

   41    7.1  1.5 -0.5   0.007638082   0.344569317  -0.000242764   0.020960822   0.003772615  -0.000202440   0.007200036  -0.373778460
                        -0.005852284  -0.303559683  -0.000238996   0.021780559  -0.038622660   0.005879445  -0.009502442   0.330237041

   42    8.1  1.5 -0.5  -0.000003284  -0.000148240   0.000000001  -0.000000104  -0.000000007   0.000000000   0.000000000  -0.000000014
                         0.000002491   0.000130556   0.000000001  -0.000000108   0.000000074  -0.000000011  -0.000000000   0.000000013

   43    9.1  1.5 -0.5  -0.000000016  -0.000000265   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001
                         0.000184228  -0.000003853  -0.000000064  -0.000000001  -0.000000003  -0.000000021   0.000000118   0.000000003

   44   10.1  1.5 -0.5  -0.000000998  -0.000052178  -0.000000001   0.000000133  -0.000000104   0.000000016   0.000000001  -0.000000039
                        -0.000001323  -0.000059343   0.000000002  -0.000000128  -0.000000010   0.000000001   0.000000001  -0.000000045

   45   11.1  1.5 -0.5  -0.000001103  -0.000049455  -0.000000000   0.000000003  -0.000000002   0.000000000   0.000000000  -0.000000004
                         0.000000842   0.000043569  -0.000000000   0.000000003   0.000000017  -0.000000003  -0.000000000   0.000000003

   46   12.1  1.5 -0.5   0.000000004   0.000000187  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000098892   0.000002041  -0.000000067  -0.000000001  -0.000000004  -0.000000025  -0.000000011  -0.000000000

   47   13.1  1.5 -0.5  -0.000075138   0.000001572   0.000000039   0.000000000   0.000000008   0.000000055  -0.000000051  -0.000000001
                        -0.000000029  -0.000000108   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000

   48   14.1  1.5 -0.5  -0.000028193   0.000000566   0.000000025   0.000000000   0.000000011   0.000000070  -0.000000150  -0.000000004
                        -0.000000001  -0.000000047  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000001

   49   15.1  1.5 -0.5  -0.000000211   0.000000004  -0.000000315  -0.000000004  -0.000000083  -0.000000547   0.000000862   0.000000020
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000005   0.000000001  -0.000000000   0.000000004

   50   16.1  1.5 -0.5  -0.000000001  -0.000000041  -0.000000000   0.000000028  -0.000000005   0.000000000  -0.000000000   0.000000003
                         0.000000001   0.000000037  -0.000000000   0.000000029   0.000000048  -0.000000007   0.000000000  -0.000000002

   51   17.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000003
                         0.000000045  -0.000000001   0.000000645   0.000000008   0.000000007   0.000000045  -0.000000715  -0.000000017

   52    1.1  1.5 -1.5  -0.002381330  -0.123520106  -0.003812486   0.347457294   0.043072851  -0.006556897   0.002744714  -0.095386555
                        -0.002703188  -0.140214951   0.003669023  -0.334382575   0.004145602  -0.000631077   0.003105752  -0.107933642

   53    2.1  1.5 -1.5  -0.000001605  -0.000083763   0.000004230  -0.000386149   0.001868738  -0.000284467   0.000069497  -0.002414233
                         0.218811764  -0.004313562  -0.332348830  -0.003275057  -0.031102361  -0.205523425   0.547502541   0.013020104

   54    3.1  1.5 -1.5  -0.000233272  -0.008997820  -0.000474552   0.039393865  -0.004964692   0.000243127   0.003007141  -0.156262453
                         0.000152839   0.007927496  -0.000449158   0.040934694   0.050790832  -0.007731779  -0.003972602   0.138059379

   55    4.1  1.5 -1.5   0.320015229  -0.006709796  -0.237971512  -0.002844561   0.070091937   0.463277254   0.057301150   0.001304477
                         0.000009123   0.000475821   0.000002666  -0.000242523   0.004384613  -0.000667431  -0.000008747   0.000304060

   56    5.1  1.5 -1.5  -0.005772074  -0.260250819   0.001774749  -0.139523109  -0.044344169   0.002250835   0.001725428  -0.089807934
                         0.004420187   0.229276579   0.001590819  -0.144981392   0.453781200  -0.069078138  -0.002283150   0.079346108

   57    6.1  1.5 -1.5  -0.002120405  -0.109986091  -0.002064570   0.188158482   0.119579947  -0.018203408   0.006507350  -0.226149013
                        -0.002744304  -0.124845182   0.002333109  -0.181074335   0.011676593  -0.000651871   0.004966991  -0.255965484

   58    7.1  1.5 -1.5   0.000010378   0.000541284  -0.000000560   0.000051071   0.000216737  -0.000032989  -0.000022949   0.000797383
                        -0.370465054   0.007756745  -0.053203429  -0.000632941  -0.003415374  -0.022576124  -0.169866207  -0.003984818

   59    8.1  1.5 -1.5  -0.000000059  -0.000000229   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000157761  -0.000003314   0.000000035   0.000000000   0.000000000   0.000000001   0.000000088   0.000000002

   60    9.1  1.5 -1.5   0.000002460   0.000111016   0.000000000  -0.000000036   0.000000006  -0.000000000   0.000000000  -0.000000010
                        -0.000001885  -0.000097791   0.000000000  -0.000000037  -0.000000063   0.000000010  -0.000000000   0.000000009

   61   10.1  1.5 -1.5  -0.000138799   0.000002895   0.000000070   0.000000001  -0.000000017  -0.000000114  -0.000000009  -0.000000000
                        -0.000000066  -0.000000223  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000

   62   11.1  1.5 -1.5  -0.000000003  -0.000000140  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000100085  -0.000002087  -0.000000002  -0.000000000  -0.000000000  -0.000000000  -0.000000034  -0.000000001

   63   12.1  1.5 -1.5   0.000000487   0.000021302   0.000000000  -0.000000001   0.000000003  -0.000000000   0.000000001  -0.000000031
                        -0.000000402  -0.000018766  -0.000000000  -0.000000001  -0.000000027   0.000000004  -0.000000001   0.000000028

   64   13.1  1.5 -1.5   0.000000759   0.000039382   0.000000000  -0.000000023  -0.000000026   0.000000004   0.000000000  -0.000000015
                         0.000000982   0.000044735  -0.000000000   0.000000022  -0.000000002   0.000000000   0.000000000  -0.000000017

   65   14.1  1.5 -1.5   0.000001119   0.000059951   0.000000000  -0.000000008  -0.000000064   0.000000010  -0.000000000   0.000000006
                         0.000001515   0.000068049  -0.000000000   0.000000008  -0.000000006   0.000000000  -0.000000000   0.000000007

   66   15.1  1.5 -1.5   0.000000011   0.000000550  -0.000000000   0.000000004   0.000000677  -0.000000103  -0.000000001   0.000000044
                         0.000000014   0.000000625   0.000000000  -0.000000004   0.000000066  -0.000000003  -0.000000001   0.000000050

   67   16.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000131  -0.000000003   0.000000021   0.000000000   0.000000000   0.000000003   0.000000032   0.000000001

   68   17.1  1.5 -1.5   0.000000010   0.000000443  -0.000000006   0.000000480  -0.000000037   0.000000002  -0.000000006   0.000000297
                        -0.000000008  -0.000000391  -0.000000005   0.000000499   0.000000378  -0.000000058   0.000000008  -0.000000263


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.137860459   0.000963993   0.325439728  -0.018919643  -0.143031920   0.000000000   0.291499835   0.002201162
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000748372  -0.101636997   0.021770462   0.362746763   0.000086880   0.092512352  -0.001510652   0.141134114
                         0.000770190   0.110144751  -0.017848972  -0.307022935  -0.000000023   0.002235910  -0.000328479   0.043498917

    3    3.1  1.5  1.5  -0.000001495  -0.000214018   0.000034951   0.000601203  -0.000000136  -0.000007110  -0.000000030  -0.000004800
                         0.149201566  -0.001240803  -0.354330558   0.021312031   0.191746214   0.000295419   0.058724221   0.000459074

    4    4.1  1.5  1.5   0.000408003   0.058346651   0.001393737   0.023973916   0.000000020  -0.007339902  -0.000771821   0.102213790
                         0.000572084   0.053838633   0.001722077   0.028323836  -0.000367607   0.303683856   0.002138121  -0.331647167

    5    5.1  1.5  1.5  -0.000003775  -0.000539827  -0.000013903  -0.000239022  -0.000000207  -0.000014010   0.000000518  -0.000080915
                         0.370078626  -0.003085957   0.134005452  -0.008073877   0.422174058   0.000581643  -0.211635884  -0.001335452

    6    6.1  1.5  1.5  -0.047037714   0.000364763  -0.219794619   0.013238894  -0.014882580   0.000070418   0.383181783   0.002597373
                        -0.000000275  -0.000038850  -0.000022607  -0.000388823   0.000000101   0.000001675   0.000000743  -0.000091262

    7    7.1  1.5  1.5  -0.003384166  -0.341509339   0.002323845   0.037598804  -0.000385570   0.306340161   0.002142162  -0.328360892
                         0.002587975   0.370102749  -0.001850246  -0.031826309  -0.000000018   0.007404102   0.000764171  -0.101201020

    8    8.1  1.5  1.5   0.000000002   0.000000161   0.000001051   0.000017192  -0.000000132   0.000108108   0.000000728  -0.000113179
                        -0.000000001  -0.000000175  -0.000000877  -0.000014543   0.000000024   0.000002654   0.000000266  -0.000034931

    9    9.1  1.5  1.5   0.000000000   0.000000000  -0.000000020  -0.000000115   0.000000000  -0.000000005   0.000000018  -0.000000028
                        -0.000000033   0.000000000   0.000065531  -0.000003946   0.000135677   0.000000185  -0.000076376  -0.000000487

   10   10.1  1.5  1.5   0.000000000   0.000000005   0.000000460   0.000008377   0.000000013  -0.000002611  -0.000000302   0.000035821
                         0.000000000   0.000000004   0.000000602   0.000009909  -0.000000129   0.000106291   0.000000748  -0.000116069

   11   11.1  1.5  1.5   0.000000000   0.000000016  -0.000007798  -0.000126573   0.000000054  -0.000029000   0.000000370  -0.000053075
                        -0.000000000  -0.000000017   0.000006231   0.000107139  -0.000000002  -0.000000701   0.000000124  -0.000016358

   12   12.1  1.5  1.5  -0.000000000  -0.000000000   0.000000011   0.000000188  -0.000000000  -0.000000033  -0.000000000   0.000000023
                         0.000000009  -0.000000000  -0.000115371   0.000006945   0.000089204   0.000000133   0.000008871   0.000000096

   13   13.1  1.5  1.5   0.000000028  -0.000000000  -0.000092777   0.000005585   0.000002157   0.000000031   0.000117875   0.000000801
                         0.000000000   0.000000000  -0.000000019  -0.000000161  -0.000000020   0.000000001   0.000000012  -0.000000027

   14   14.1  1.5  1.5   0.000000029  -0.000000000   0.000101469  -0.000006096  -0.000050292  -0.000000044   0.000120514   0.000000807
                         0.000000000   0.000000000   0.000000010   0.000000171  -0.000000000   0.000000027   0.000000000  -0.000000065

   15   15.1  1.5  1.5  -0.000000606   0.000000005   0.000000048  -0.000000003  -0.000000159  -0.000000000   0.000000306   0.000000002
                        -0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   16   16.1  1.5  1.5  -0.000000000  -0.000000021  -0.000000013  -0.000000215   0.000000000  -0.000000019   0.000000000  -0.000000045
                         0.000000000   0.000000023   0.000000011   0.000000182   0.000000000  -0.000000000   0.000000000  -0.000000014

   17   17.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000388  -0.000000003   0.000000021  -0.000000001   0.000000306   0.000000000  -0.000000253  -0.000000002

   18    1.1  1.5  0.5  -0.000804871  -0.115102489   0.007521767   0.129383114   0.000000069  -0.008367243   0.000528929  -0.070041857
                        -0.001412900  -0.106207384   0.009355405   0.152855276  -0.000045233   0.346197409  -0.002122429   0.227256368

   19    2.1  1.5  0.5   0.000003141   0.000449121  -0.000010873  -0.000186967  -0.000000088   0.000006493  -0.000000253   0.000028305
                        -0.183299275   0.001696181  -0.034219249   0.001767688   0.280597625  -0.000267863  -0.302759492  -0.002377984

   20    3.1  1.5  0.5   0.002276527   0.231589310  -0.012276767  -0.199429092  -0.000604388   0.357525407  -0.001716292   0.245428993
                        -0.001754995  -0.250979347   0.009813793   0.168808630  -0.000000074   0.008641021  -0.000571213   0.075641441

   21    4.1  1.5  0.5   0.038029642  -0.000298024  -0.316076093   0.019007625  -0.270221812  -0.000460796  -0.202564699  -0.001418370
                         0.000000244   0.000034793  -0.000031012  -0.000533348  -0.000000232  -0.000011081  -0.000000365   0.000034305

   22    5.1  1.5  0.5   0.000980210   0.101351208  -0.015580094  -0.252799050   0.000238048  -0.121103212   0.001645246  -0.239302126
                        -0.000768037  -0.109836817   0.012440153   0.213985004   0.000000037  -0.002926897   0.000556939  -0.073753141

   23    6.1  1.5  0.5   0.002835315   0.405474255   0.014472570   0.248944964  -0.000000050   0.004895469  -0.000461501   0.061113659
                         0.003725294   0.374147990   0.018106901   0.294101361   0.000365372  -0.202552660   0.001353249  -0.198291778

   24    7.1  1.5  0.5   0.000001846   0.000264396  -0.000003403  -0.000058529   0.000000305   0.000013259   0.000000583  -0.000058037
                        -0.184907740   0.001536958   0.038080473  -0.002283224  -0.338049906  -0.000551620  -0.314061478  -0.002183322

   25    8.1  1.5  0.5  -0.000000000   0.000000000  -0.000000046  -0.000000044  -0.000000037   0.000000036  -0.000000028  -0.000000000
                        -0.000000027   0.000000000   0.000013137  -0.000000774  -0.000115013  -0.000000199  -0.000113162  -0.000000787

   26    9.1  1.5  0.5   0.000000001   0.000000054  -0.000004726  -0.000076675   0.000000115  -0.000061305   0.000000662  -0.000095989
                        -0.000000000  -0.000000059   0.000003775   0.000064926  -0.000000000  -0.000001495   0.000000224  -0.000029597

   27   10.1  1.5  0.5  -0.000000053   0.000000000  -0.000110780   0.000006647  -0.000094480  -0.000000160  -0.000070791  -0.000000490
                         0.000000000  -0.000000000  -0.000000017  -0.000000205   0.000000045  -0.000000033   0.000000044  -0.000000006

   28   11.1  1.5  0.5   0.000000000  -0.000000000  -0.000000001  -0.000000015  -0.000000000   0.000000001  -0.000000000   0.000000031
                         0.000000009  -0.000000000   0.000012405  -0.000000743  -0.000101999  -0.000000127   0.000102530   0.000000667

   29   12.1  1.5  0.5   0.000000000   0.000000041  -0.000005091  -0.000082678  -0.000000196   0.000117147  -0.000000505   0.000072020
                        -0.000000000  -0.000000044   0.000004065   0.000069983   0.000000029   0.000002831  -0.000000135   0.000022197

   30   13.1  1.5  0.5   0.000000000   0.000000042   0.000004630   0.000079639  -0.000000000   0.000002134  -0.000000187   0.000024756
                         0.000000000   0.000000038   0.000005791   0.000094062   0.000000155  -0.000087913   0.000000552  -0.000080273

   31   14.1  1.5  0.5  -0.000000000  -0.000000010   0.000003315   0.000057528  -0.000000025  -0.000002646   0.000000141  -0.000021162
                        -0.000000000  -0.000000009   0.000004187   0.000067960  -0.000000180   0.000109484  -0.000000490   0.000068662

   32   15.1  1.5  0.5  -0.000000000  -0.000000008  -0.000000010  -0.000000173   0.000000000  -0.000000012  -0.000000002   0.000000214
                        -0.000000000  -0.000000008  -0.000000013  -0.000000204  -0.000000001   0.000000488   0.000000005  -0.000000695

   33   16.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000035  -0.000000000  -0.000000007   0.000000000  -0.000000153  -0.000000000   0.000000165   0.000000001

   34   17.1  1.5  0.5  -0.000000003  -0.000000320   0.000000019   0.000000312  -0.000000001   0.000000606   0.000000003  -0.000000539
                         0.000000002   0.000000346  -0.000000015  -0.000000264   0.000000000   0.000000015   0.000000001  -0.000000166

   35    1.1  1.5 -0.5  -0.156616064   0.001549680  -0.200261643   0.012000391   0.346298508   0.000045221   0.237805211   0.002184069
                        -0.000003438  -0.000492540  -0.000017554  -0.000302000   0.000000289   0.000001024  -0.000000765   0.000119655

   36    2.1  1.5 -0.5   0.001480341   0.124302946  -0.001228556  -0.026127756  -0.000267941  -0.280515703  -0.002280837   0.289329543
                        -0.000941983  -0.134712293   0.001284651   0.022097454   0.000000019  -0.006779929  -0.000673342   0.089172450

   37    3.1  1.5 -0.5  -0.000003370  -0.000482905  -0.000025563  -0.000439627  -0.000000307  -0.000014530  -0.000000449   0.000040373
                         0.341502915  -0.002833617   0.261282062  -0.015711024   0.357629814   0.000604214   0.256820984   0.001808400

   38    4.1  1.5 -0.5  -0.000195429  -0.027948880  -0.011871868  -0.204209923   0.000000056  -0.006529076   0.000450538  -0.059661336
                        -0.000227676  -0.025789799  -0.014853720  -0.241251746  -0.000460929   0.270142923  -0.001345350   0.193579396

   39    5.1  1.5 -0.5  -0.000001395  -0.000199527  -0.000033069  -0.000568797   0.000000147   0.000005715   0.000000432  -0.000047657
                         0.149452981  -0.001229179   0.331205284  -0.019929205  -0.121138576  -0.000237979  -0.250409731  -0.001736302

   40    6.1  1.5 -0.5   0.551721025  -0.004610053  -0.385317018   0.023170952  -0.202611810  -0.000365267  -0.207495804  -0.001429148
                         0.000005691   0.000815009  -0.000037777  -0.000649709  -0.000000195  -0.000008779  -0.000000410   0.000042456

   41    7.1  1.5 -0.5   0.001236605   0.125394685   0.001780673   0.029065940  -0.000551779   0.337951215  -0.002069380   0.300130439
                        -0.000950239  -0.135893507  -0.001430293  -0.024602715  -0.000000074   0.008167918  -0.000698519   0.092500441

   42    8.1  1.5 -0.5   0.000000000   0.000000019   0.000000619   0.000009998  -0.000000200   0.000114978  -0.000000752   0.000108134
                        -0.000000000  -0.000000020  -0.000000466  -0.000008522   0.000000031   0.000002816  -0.000000232   0.000033356

   43    9.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000028  -0.000000172  -0.000000013   0.000000003  -0.000000012  -0.000000019
                         0.000000080  -0.000000001   0.000100471  -0.000006046  -0.000061323  -0.000000115  -0.000100449  -0.000000698

   44   10.1  1.5 -0.5   0.000000000   0.000000039  -0.000004138  -0.000071578  -0.000000029  -0.000002328   0.000000139  -0.000020892
                         0.000000000   0.000000036  -0.000005206  -0.000084551  -0.000000161   0.000094451  -0.000000470   0.000067638

   45   11.1  1.5 -0.5  -0.000000000  -0.000000006   0.000000576   0.000009469  -0.000000127   0.000101969   0.000000629  -0.000097982
                         0.000000000   0.000000007  -0.000000469  -0.000008014  -0.000000002   0.000002465   0.000000227  -0.000030198

   46   12.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000011  -0.000000185   0.000000000  -0.000000033   0.000000000  -0.000000020
                         0.000000060  -0.000000001   0.000108320  -0.000006512   0.000117182   0.000000195   0.000075364   0.000000522

   47   13.1  1.5 -0.5   0.000000057  -0.000000000  -0.000123248   0.000007411  -0.000087939  -0.000000155  -0.000084003  -0.000000583
                        -0.000000000   0.000000000  -0.000000027  -0.000000207   0.000000009  -0.000000004   0.000000015   0.000000016

   48   14.1  1.5 -0.5  -0.000000014   0.000000000  -0.000089039   0.000005338   0.000109516   0.000000180   0.000071849   0.000000510
                        -0.000000000  -0.000000000  -0.000000010  -0.000000174   0.000000000   0.000000029  -0.000000000   0.000000010

   49   15.1  1.5 -0.5  -0.000000011   0.000000000   0.000000267  -0.000000016   0.000000488   0.000000001  -0.000000727  -0.000000005
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   50   16.1  1.5 -0.5  -0.000000000  -0.000000024  -0.000000000  -0.000000005  -0.000000000   0.000000153   0.000000001  -0.000000157
                         0.000000000   0.000000026   0.000000000   0.000000004   0.000000000   0.000000004   0.000000000  -0.000000049

   51   17.1  1.5 -0.5   0.000000000   0.000000001   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000471   0.000000004  -0.000000409   0.000000025   0.000000606   0.000000001  -0.000000564  -0.000000004

   52    1.1  1.5 -1.5  -0.000708457  -0.101316303  -0.012222155  -0.210235192   0.000000000   0.003456048   0.000648311  -0.085855884
                        -0.000653736  -0.093490710  -0.014442016  -0.248419365  -0.000000000  -0.142990160  -0.002103522   0.278569419

   53    2.1  1.5 -1.5  -0.000000190  -0.000027685  -0.000025526  -0.000439059   0.000000098  -0.000002122  -0.000000939   0.000131027
                         0.149873097  -0.001073539   0.475234990  -0.028148642  -0.092539368   0.000086854  -0.147685456  -0.001540389

   54    3.1  1.5 -1.5   0.000998742   0.101180635   0.016656587   0.270450153  -0.000295504   0.191690235  -0.000440124   0.056119328
                        -0.000766753  -0.109652115  -0.013308726  -0.228925447  -0.000000030   0.004632985  -0.000130625   0.017296104

   55    4.1  1.5 -1.5  -0.079390995   0.000687811   0.037107793  -0.002214880  -0.303772543  -0.000367500   0.347041067   0.002270604
                        -0.000001005  -0.000143746   0.000002820   0.000048580  -0.000000085  -0.000008862   0.000000771  -0.000107841

   56    5.1  1.5 -1.5   0.002489486   0.250967763  -0.006317478  -0.102282001  -0.000581811   0.422050804   0.001252382  -0.202248244
                        -0.001901843  -0.271980461   0.005033299   0.086578599  -0.000000048   0.010200689   0.000470658  -0.062332940

   57    6.1  1.5 -1.5  -0.000241725  -0.034569108   0.008255570   0.142005342   0.000000027   0.000359705   0.000852222  -0.112858397
                        -0.000275918  -0.031898642   0.010356885   0.167762206  -0.000070438  -0.014878232  -0.002455279   0.366184737

   58    7.1  1.5 -1.5  -0.000005114  -0.000732041  -0.000005162  -0.000088855   0.000000088   0.000009299  -0.000000705   0.000099339
                         0.503591772  -0.004196941   0.049260369  -0.002969137  -0.306429624  -0.000385458   0.343602273   0.002272212

   59    8.1  1.5 -1.5   0.000000000   0.000000000   0.000000005  -0.000000010  -0.000000041   0.000000027   0.000000047   0.000000040
                        -0.000000238   0.000000002   0.000022518  -0.000001369  -0.000108141  -0.000000131   0.000118447   0.000000774

   60    9.1  1.5 -1.5  -0.000000000  -0.000000022  -0.000003086  -0.000050009  -0.000000185   0.000135637   0.000000457  -0.000072993
                         0.000000000   0.000000024   0.000002461   0.000042349   0.000000000   0.000003279   0.000000170  -0.000022478

   61   10.1  1.5 -1.5  -0.000000006   0.000000000   0.000012976  -0.000000757  -0.000106323  -0.000000129   0.000121471   0.000000804
                         0.000000000  -0.000000000  -0.000000006   0.000000038   0.000000042   0.000000010  -0.000000046  -0.000000068

   62   11.1  1.5 -1.5   0.000000000   0.000000000   0.000000016   0.000000281  -0.000000000  -0.000000004  -0.000000000   0.000000009
                        -0.000000023   0.000000000  -0.000165830   0.000009978   0.000029009   0.000000054   0.000055539   0.000000390

   63   12.1  1.5 -1.5   0.000000000   0.000000006   0.000005423   0.000088059  -0.000000134   0.000089178  -0.000000085   0.000008477
                         0.000000000  -0.000000007  -0.000004343  -0.000074538   0.000000030   0.000002155  -0.000000050   0.000002612

   64   13.1  1.5 -1.5   0.000000000   0.000000020   0.000003485   0.000059949   0.000000000  -0.000000072   0.000000262  -0.000034707
                         0.000000000   0.000000019   0.000004367   0.000070807  -0.000000031   0.000002156  -0.000000758   0.000112650

   65   14.1  1.5 -1.5   0.000000000   0.000000021  -0.000003808  -0.000065557  -0.000000028   0.000001215   0.000000300  -0.000035495
                         0.000000000   0.000000020  -0.000004763  -0.000077449   0.000000043  -0.000050277  -0.000000752   0.000115168

   66   15.1  1.5 -1.5  -0.000000003  -0.000000445  -0.000000002  -0.000000031   0.000000000   0.000000004   0.000000001  -0.000000090
                        -0.000000004  -0.000000411  -0.000000002  -0.000000036   0.000000000  -0.000000159  -0.000000002   0.000000293

   67   16.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000032  -0.000000000  -0.000000282   0.000000017   0.000000019   0.000000000   0.000000047   0.000000000

   68   17.1  1.5 -1.5   0.000000003   0.000000263  -0.000000001  -0.000000016  -0.000000000   0.000000306   0.000000002  -0.000000242
                        -0.000000002  -0.000000285   0.000000001   0.000000013   0.000000000   0.000000007   0.000000001  -0.000000075


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.003482090  -0.386100836   0.000883337  -0.024459731   0.000002890   0.000000000   0.000008965  -0.000000245
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.005411746   0.000644026  -0.016596977  -0.001280329   0.000009454   0.000112404   0.000001149   0.000027866
                        -0.137955777  -0.001244155  -0.096418806  -0.003482255   0.000000536  -0.000042417  -0.000000534  -0.000029750

    3    3.1  1.5  1.5   0.000287660   0.000002580   0.001631046   0.000059134   0.000000024  -0.000001086  -0.000000025  -0.000000301
                        -0.004228944   0.470169252  -0.008359296   0.223662185   0.000033634  -0.000002420   0.000028049  -0.000000849

    4    4.1  1.5  1.5   0.200601732   0.001809193  -0.315455981  -0.011393074  -0.000000309   0.000023832   0.000003313   0.000159916
                         0.007877932  -0.000024358   0.054297613   0.004274916   0.000005321   0.000063257   0.000006255   0.000149720

    5    5.1  1.5  1.5  -0.000012456  -0.000000091  -0.001910807  -0.000069322  -0.000000142   0.000005041   0.000000020   0.000001479
                        -0.000081899   0.009023092   0.009977583  -0.267131287  -0.000156277   0.000011247  -0.000135302   0.000004073

    6    6.1  1.5  1.5  -0.002414347   0.268497578  -0.012983048   0.347508154  -0.000043178   0.000003101  -0.000086683   0.000002568
                        -0.000180331  -0.000001601  -0.002505189  -0.000090863   0.000000017  -0.000001414  -0.000000028  -0.000000986

    7    7.1  1.5  1.5   0.008022323  -0.000061262   0.053914918   0.004242240  -0.000010927  -0.000129878  -0.000004861  -0.000116386
                        -0.204270118  -0.001842269   0.313232082   0.011312757  -0.000000627   0.000048989   0.000002561   0.000124291

    8    8.1  1.5  1.5   0.000005018  -0.000000016   0.000032302   0.000002546  -0.024471511  -0.290824323  -0.011107281  -0.265812219
                        -0.000126558  -0.000001065   0.000188112   0.000006824  -0.001394961   0.109759963   0.005867119   0.284154339

    9    9.1  1.5  1.5  -0.000000035   0.000000029  -0.000001300  -0.000000016  -0.000347065   0.011853755   0.000024051   0.003470939
                         0.000000348  -0.000038666   0.000006769  -0.000181228  -0.367427803   0.026441783  -0.317664385   0.009563233

   10   10.1  1.5  1.5   0.000121766   0.000001153  -0.000191513  -0.000006922  -0.000700762   0.055010805   0.007637991   0.368469606
                         0.000004831  -0.000000014   0.000032889   0.000002592   0.012258755   0.145672441   0.014405702   0.344768899

   11   11.1  1.5  1.5  -0.000003136   0.000000022   0.000011114   0.000000883  -0.022550448  -0.267999926  -0.003032739  -0.072603019
                         0.000079842   0.000000714   0.000064574   0.000002330  -0.001278033   0.101131507   0.001415081   0.077515624

   12   12.1  1.5  1.5   0.000000170   0.000000001   0.000000791   0.000000028   0.000010797  -0.000611117  -0.000046651  -0.000089165
                        -0.000002509   0.000282979  -0.000004129   0.000109133   0.021142345  -0.001548331   0.015628427  -0.000556699

   13   13.1  1.5  1.5  -0.000001758   0.000195511  -0.000007882   0.000210957  -0.099218466   0.007122510  -0.200561436   0.005954854
                        -0.000000127   0.000000005  -0.000001523  -0.000000028   0.000092204  -0.003247757  -0.000016806  -0.002268995

   14   14.1  1.5  1.5   0.000001904  -0.000208046  -0.000000649   0.000016099  -0.008148251   0.000587199  -0.008715170   0.000263733
                         0.000000121   0.000000001  -0.000000093  -0.000000003   0.000006716  -0.000260731  -0.000002826  -0.000093905

   15   15.1  1.5  1.5  -0.000000000   0.000000007   0.000000000  -0.000000012  -0.000000018   0.000000001  -0.000000018   0.000000001
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000

   16   16.1  1.5  1.5  -0.000000006   0.000000000   0.000000015   0.000000001   0.000000002   0.000000022   0.000000000   0.000000007
                         0.000000153   0.000000001   0.000000088   0.000000003   0.000000000  -0.000000008  -0.000000000  -0.000000007

   17   17.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000042   0.000000002  -0.000000052  -0.000000008   0.000000001  -0.000000010   0.000000000

   18    1.1  1.5  0.5   0.325609907   0.002936567  -0.170016841  -0.006140394  -0.000000024   0.000002253   0.000000504   0.000023335
                         0.012783468   0.000369860   0.029292981   0.001501613   0.000000824   0.000005991   0.000001112   0.000021841

   19    2.1  1.5  0.5  -0.000457895  -0.000004096  -0.002786925  -0.000101180   0.000000177  -0.000005470   0.000000004  -0.000001159
                        -0.002371329   0.260937365   0.016164200  -0.434240854   0.000170475  -0.000012291   0.000108715  -0.000003384

   20    3.1  1.5  0.5   0.000172012   0.000006950   0.020331119   0.001605392  -0.000004041  -0.000048031  -0.000002944  -0.000070476
                        -0.004381585  -0.000039534   0.118119818   0.004266030  -0.000000247   0.000018114   0.000001620   0.000075250

   21    4.1  1.5  0.5   0.002880160  -0.320227772   0.007493772  -0.200534360  -0.000013919   0.000000991  -0.000118682   0.000003513
                         0.000199120   0.000001778   0.001455768   0.000052785  -0.000000020  -0.000000477  -0.000000002  -0.000001353

   22    5.1  1.5  0.5   0.000655584   0.000026832   0.078396184   0.006190343   0.000019376   0.000230265  -0.000000029  -0.000000687
                        -0.016699410  -0.000150666   0.455466480   0.016449686   0.000001103  -0.000086915   0.000000113   0.000000784

   23    6.1  1.5  0.5   0.268616115   0.002422561  -0.140341159  -0.005068614   0.000000181  -0.000014804  -0.000002982  -0.000147655
                         0.010549079  -0.000048715   0.024156705   0.001885045  -0.000003307  -0.000039346  -0.000005773  -0.000138215

   24    7.1  1.5  0.5   0.000232862   0.000002083   0.001362721   0.000049411  -0.000000170   0.000005348   0.000000031   0.000000738
                        -0.002941908   0.327220916  -0.007085896   0.189685732  -0.000165837   0.000011936  -0.000067124   0.000002020

   25    8.1  1.5  0.5   0.000000126  -0.000000075   0.000000783  -0.000000019  -0.000392588   0.011905965  -0.000036888   0.001572139
                        -0.000001830   0.000203379  -0.000003950   0.000106546  -0.369338705   0.026582662  -0.146595829   0.004445835

   26    9.1  1.5  0.5   0.000000396   0.000000016   0.000045113   0.000003563   0.045512716   0.540869869   0.000981660   0.023506214
                        -0.000009591  -0.000000087   0.000262159   0.000009469   0.002594899  -0.204165397  -0.000322063  -0.025084624

   27   10.1  1.5  0.5   0.000001689  -0.000194239   0.000004576  -0.000121644  -0.032070606   0.002278988  -0.273322396   0.008088439
                         0.000000119  -0.000000078   0.000000879  -0.000000010   0.000098011  -0.001110259   0.000053403  -0.003118749

   28   11.1  1.5  0.5  -0.000000071  -0.000000001   0.000001902   0.000000069  -0.000419261   0.012963117  -0.000008869   0.002630918
                         0.000001370  -0.000152169  -0.000009987   0.000267333  -0.404233869   0.029119836  -0.254941341   0.007841000

   29   12.1  1.5  0.5   0.000000165   0.000000007   0.000019554   0.000001544  -0.002334293  -0.027757398  -0.006708286  -0.160584769
                        -0.000004197  -0.000000096   0.000113608   0.000004080  -0.000082325   0.010434395   0.003760040   0.171479770

   30   13.1  1.5  0.5   0.000132525   0.000001195  -0.000069251  -0.000002501   0.000413912  -0.034558842  -0.006967023  -0.344449409
                         0.000005206  -0.000000025   0.000011880   0.000000931  -0.007707998  -0.091608719  -0.013470576  -0.322422044

   31   14.1  1.5  0.5   0.000219286   0.000001927  -0.000114498  -0.000004167  -0.000001450   0.000152710   0.000080218   0.003795307
                         0.000008612  -0.000000042   0.000019709   0.000001542   0.000034010   0.000404116   0.000148492   0.003554761

   32   15.1  1.5  0.5   0.000000263   0.000000002  -0.000000030  -0.000000001   0.000000000  -0.000000004  -0.000000000  -0.000000004
                         0.000000010  -0.000000000   0.000000005   0.000000000  -0.000000001  -0.000000010  -0.000000000  -0.000000004

   33   16.1  1.5  0.5  -0.000000000  -0.000000000   0.000000003   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000
                         0.000000002  -0.000000266  -0.000000017   0.000000449   0.000000030  -0.000000002   0.000000024  -0.000000001

   34   17.1  1.5  0.5  -0.000000003   0.000000000   0.000000049   0.000000004   0.000000001   0.000000008   0.000000000   0.000000001
                         0.000000076   0.000000001   0.000000286   0.000000010   0.000000000  -0.000000003  -0.000000000  -0.000000001

   35    1.1  1.5 -0.5   0.002948818  -0.325860750  -0.006306238   0.172521896   0.000006400  -0.000000762  -0.000031961   0.000001128
                        -0.000254353  -0.000002280  -0.000436630  -0.000015995  -0.000000016   0.000000314   0.000000007  -0.000000467

   36    2.1  1.5 -0.5   0.010234265   0.000550586   0.073670947   0.005492457  -0.000013432  -0.000159484   0.000003158   0.000074276
                        -0.260736588  -0.002351537   0.427945933   0.015455783  -0.000000762   0.000060222  -0.000001680  -0.000079385

   37    3.1  1.5 -0.5   0.000005394   0.000000040   0.000857325   0.000031104  -0.000000075   0.000001663   0.000000054  -0.000001043
                         0.000039777  -0.004384960  -0.004476750   0.119856768  -0.000051333   0.000003692   0.000103099  -0.000003194

   38    4.1  1.5 -0.5  -0.319981107  -0.002885755  -0.197628367  -0.007137531  -0.000000095   0.000004949  -0.000001641  -0.000086668
                        -0.012566503   0.000085958   0.034015600   0.002707681   0.000001096   0.000013010  -0.000003388  -0.000081081

   39    5.1  1.5 -0.5   0.000020899   0.000000153   0.003305819   0.000119936   0.000000288  -0.000007895  -0.000000034   0.000000056
                         0.000151603  -0.016712274  -0.017262215   0.462164107   0.000246122  -0.000017729   0.000001042  -0.000000103

   40    6.1  1.5 -0.5   0.002418784  -0.268823177  -0.005315176   0.142405007  -0.000042038   0.000003029   0.000202251  -0.000006122
                         0.000143731   0.000001308  -0.000996567  -0.000036181   0.000000094  -0.000001341  -0.000000054   0.000002179

   41    7.1  1.5 -0.5   0.012841197  -0.000117251  -0.032175914  -0.002546694   0.000013056   0.000155144  -0.000001919  -0.000045836
                        -0.326968854  -0.002948779  -0.186936860  -0.006751391   0.000000773  -0.000058585   0.000000971   0.000049037

   42    8.1  1.5 -0.5   0.000007905  -0.000000054  -0.000018119  -0.000001442   0.029076452   0.345528937  -0.004185392  -0.100179863
                        -0.000203225  -0.000001834  -0.000104994  -0.000003760   0.001717519  -0.130464504   0.002172455   0.107024920

   43    9.1  1.5 -0.5   0.000000012  -0.000000020   0.000001902   0.000000079   0.000666677  -0.018548705  -0.000027590   0.000496817
                         0.000000088  -0.000009599  -0.000009936   0.000266012   0.578120472  -0.041642362  -0.034377023   0.000905844

   44   10.1  1.5 -0.5  -0.000194092  -0.000001693  -0.000119874  -0.000004360  -0.000230976   0.011268783  -0.003775800  -0.199554430
                        -0.000007543   0.000000053   0.000020675   0.000001644   0.002524502   0.030025787  -0.007803382  -0.186770353

   45   11.1  1.5 -0.5  -0.000005971   0.000000017  -0.000045348  -0.000003571   0.031823587   0.378170861  -0.007278101  -0.174180063
                         0.000152051   0.000001371  -0.000263459  -0.000009519   0.001807375  -0.142800549   0.003928392   0.186162276

   46   12.1  1.5 -0.5   0.000000003   0.000000000   0.000000828   0.000000030  -0.000074759   0.000903869   0.000111996  -0.002329833
                         0.000000096  -0.000004200  -0.000004283   0.000115278  -0.029653738   0.002153770   0.234931409  -0.007328771

   47   13.1  1.5 -0.5   0.000001193  -0.000132628  -0.000002623   0.000070263  -0.097910435   0.007061572   0.471806480  -0.014290573
                         0.000000072   0.000000002  -0.000000493  -0.000000057   0.000132790  -0.003117493  -0.000120757   0.005076946

   48   14.1  1.5 -0.5   0.000001923  -0.000219455  -0.000004369   0.000116182   0.000432007  -0.000031291  -0.005200065   0.000160027
                         0.000000118   0.000000001  -0.000000812  -0.000000029  -0.000000343   0.000013404   0.000002909  -0.000053631

   49   15.1  1.5 -0.5   0.000000002  -0.000000264  -0.000000001   0.000000030  -0.000000010   0.000000001   0.000000006  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   50   16.1  1.5 -0.5  -0.000000010   0.000000000  -0.000000076  -0.000000006  -0.000000002  -0.000000028   0.000000001   0.000000016
                         0.000000265   0.000000002  -0.000000443  -0.000000016  -0.000000000   0.000000011  -0.000000000  -0.000000017

   51   17.1  1.5 -0.5   0.000000000   0.000000000   0.000000002   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000001   0.000000076  -0.000000011   0.000000290   0.000000008  -0.000000001  -0.000000002   0.000000000

   52    1.1  1.5 -1.5   0.385803514   0.003479409   0.024104185   0.000870497   0.000000000   0.000001024  -0.000000179  -0.000006547
                         0.015149377   0.000136626  -0.004155322  -0.000150065  -0.000000000   0.000002702  -0.000000168  -0.000006125

   53    2.1  1.5 -1.5  -0.000594713  -0.000005370   0.000670139   0.000024307  -0.000000150   0.000003850   0.000000024  -0.000000475
                        -0.001268467   0.138061883  -0.003649145   0.097836829  -0.000120141   0.000008651   0.000040762  -0.000001175

   54    3.1  1.5 -1.5  -0.018450534   0.000121508   0.037938395   0.003027450   0.000002648   0.000031462  -0.000000800  -0.000019145
                         0.469807092   0.004236974   0.220421085   0.007960697   0.000000158  -0.000011892   0.000000414   0.000020500

   55    4.1  1.5 -1.5  -0.001806844   0.200756361   0.011953705  -0.320094830  -0.000067597   0.000004867   0.000219064  -0.000006692
                        -0.000095326  -0.000000887   0.002277272   0.000082639   0.000000121  -0.000002174  -0.000000078   0.000002304

   56    5.1  1.5 -1.5  -0.000353947  -0.000015660  -0.045313068  -0.003578065  -0.000012303  -0.000146194   0.000003862   0.000092423
                         0.009016147   0.000081347  -0.263260052  -0.009507934  -0.000000731   0.000055225  -0.000001964  -0.000098816

   57    6.1  1.5 -1.5  -0.268290755  -0.002419563  -0.342472224  -0.012368735   0.000000224  -0.000015280   0.000001202   0.000063318
                        -0.010536597   0.000085461   0.058946600   0.004674388  -0.000003401  -0.000040384   0.000002475   0.000059200

   58    7.1  1.5 -1.5   0.000133499   0.000001231  -0.002258717  -0.000081967   0.000000194  -0.000004457  -0.000000075   0.000001800
                        -0.001838447   0.204427588   0.011869005  -0.317838243   0.000138810  -0.000009997  -0.000170276   0.000005191

   59    8.1  1.5 -1.5   0.000000057   0.000000048  -0.000001350  -0.000000125   0.000376464  -0.009973104   0.000024955   0.004102617
                        -0.000001064   0.000126657   0.000007157  -0.000190865   0.310847060  -0.022390578  -0.389101302   0.011872797

   60    9.1  1.5 -1.5   0.000001489  -0.000000021  -0.000030772  -0.000002432  -0.028926213  -0.343725817   0.009068131   0.217007832
                        -0.000038637  -0.000000349  -0.000178596  -0.000006450  -0.001718599   0.129830173  -0.004612141  -0.231987635

   61   10.1  1.5 -1.5  -0.000001151   0.000121862   0.000007261  -0.000194317  -0.155713274   0.011215635   0.504614153  -0.015419409
                        -0.000000060  -0.000000050   0.000001379   0.000000125   0.000158091  -0.004997768  -0.000028944   0.005301413

   62   11.1  1.5 -1.5  -0.000000050  -0.000000000  -0.000000474  -0.000000017   0.000360294  -0.009183256  -0.000059657   0.001247856
                         0.000000712  -0.000079903   0.000002446  -0.000065524   0.286446177  -0.020635501  -0.106206717   0.003105288

   63   12.1  1.5 -1.5  -0.000011105   0.000000071   0.000018512   0.000001481   0.001664411   0.019775248  -0.000445443  -0.010643131
                         0.000282761   0.000002514   0.000107551   0.000003934   0.000023022  -0.007479201   0.000345607   0.011444372

   64   13.1  1.5 -1.5  -0.000195361  -0.000001762  -0.000207896  -0.000007508   0.000514143  -0.035060143   0.002798315   0.146469441
                        -0.000007666   0.000000058   0.000035810   0.000002840  -0.007811129  -0.092817557   0.005725212   0.137009462

   65   14.1  1.5 -1.5   0.000207886   0.000001907  -0.000015866  -0.000000624   0.000035820  -0.002880091   0.000128433   0.006366096
                         0.000008164  -0.000000046   0.000002732   0.000000202  -0.000641483  -0.007622277   0.000248753   0.005952061

   66   15.1  1.5 -1.5  -0.000000007  -0.000000000   0.000000012   0.000000000   0.000000000  -0.000000006   0.000000000   0.000000013
                        -0.000000000  -0.000000000  -0.000000002  -0.000000000  -0.000000001  -0.000000017   0.000000001   0.000000012

   67   16.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000
                         0.000000001  -0.000000153   0.000000003  -0.000000089  -0.000000023   0.000000002   0.000000010  -0.000000000

   68   17.1  1.5 -1.5   0.000000002  -0.000000000  -0.000000009  -0.000000001  -0.000000001  -0.000000008   0.000000000   0.000000007
                        -0.000000042  -0.000000000  -0.000000051  -0.000000002  -0.000000000   0.000000003  -0.000000000  -0.000000008


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5  -0.000024978  -0.000000292   0.000002351   0.000169798   0.000001039   0.000198179   0.000000000  -0.000000083
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000882   0.000048455   0.000109796  -0.000001699  -0.000098348   0.000000262  -0.000000001   0.000000000
                         0.000000663  -0.000053403   0.000006616  -0.000000183  -0.000042384   0.000000285   0.000000000  -0.000000000

    3    3.1  1.5  1.5  -0.000000002  -0.000000473   0.000000063  -0.000000002  -0.000000053   0.000000000  -0.000000000   0.000000000
                        -0.000164018  -0.000002604   0.000002987   0.000234229   0.000000563   0.000093965   0.000000000   0.000000013

    4    4.1  1.5  1.5   0.000001160  -0.000078360   0.000003408  -0.000000008  -0.000006528   0.000000084  -0.000000009  -0.000000000
                         0.000001355  -0.000071140  -0.000056537   0.000000720   0.000015148  -0.000000094  -0.000000038  -0.000000000

    5    5.1  1.5  1.5  -0.000000022   0.000000279   0.000000055  -0.000000000  -0.000000030   0.000000000   0.000000000  -0.000000000
                         0.000088232   0.000001374   0.000000660   0.000051572   0.000000023   0.000005766  -0.000000000  -0.000000004

    6    6.1  1.5  1.5   0.000243826   0.000003868  -0.000001165  -0.000091524   0.000000010   0.000002469   0.000000000  -0.000000081
                         0.000000002  -0.000000707   0.000000011  -0.000000001   0.000000009  -0.000000000   0.000000000  -0.000000000

    7    7.1  1.5  1.5  -0.000000639   0.000033429   0.000082000  -0.000001029  -0.000090035   0.000000580  -0.000000006  -0.000000000
                         0.000000573  -0.000036814   0.000004941  -0.000000072  -0.000038802   0.000000272   0.000000001   0.000000000

    8    8.1  1.5  1.5  -0.001533140   0.080447419   0.197039538  -0.002509810  -0.214923561   0.001340227  -0.317945852   0.000004437
                         0.001278438  -0.088740553   0.011824106  -0.000031416  -0.092606928   0.000706440   0.073213464   0.000101451

    9    9.1  1.5  1.5   0.000034476   0.000802546   0.000101996  -0.000039326  -0.000047440  -0.000008136   0.000057440  -0.000018024
                         0.259033052   0.004051876   0.000438772   0.033959564  -0.000145941  -0.020125310  -0.000005000   0.587998359

   10   10.1  1.5  1.5   0.002665143  -0.180536273   0.007773327  -0.000110392  -0.014939382   0.000073397  -0.037943401  -0.000074416
                         0.003121846  -0.163837652  -0.130270334   0.001659368   0.034895465  -0.000217607  -0.165202752   0.000002313

   11   11.1  1.5  1.5   0.002076551  -0.108978822  -0.246671981   0.003141962   0.219916767  -0.001371343  -0.028917054   0.000000489
                        -0.001476677   0.120110080  -0.014862950   0.000403588   0.094776029  -0.000641219   0.006600301  -0.000240228

   12   12.1  1.5  1.5  -0.000012315  -0.000999920   0.000103670  -0.000002994  -0.000068788   0.000000735   0.000188204  -0.000029480
                        -0.341510120  -0.005405618   0.007033786   0.551719136   0.001318057   0.216125107  -0.000039866   0.251076266

   13   13.1  1.5  1.5   0.563833774   0.008936036  -0.003382222  -0.265397719  -0.000380992  -0.061194699  -0.000011781   0.002577933
                        -0.000033501  -0.001640722   0.000028390  -0.000007669  -0.000001398   0.000003088  -0.000051029  -0.000064055

   14   14.1  1.5  1.5   0.024838268   0.000394108   0.004527554   0.355185744   0.002740020   0.451512227   0.000002844   0.011052011
                        -0.000001094  -0.000071860  -0.000056103   0.000000718   0.000175225  -0.000001161   0.000011672  -0.000000525

   15   15.1  1.5  1.5   0.000000012   0.000000000   0.000000000   0.000000017   0.000000000   0.000000009  -0.000000000   0.000000010
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   16   16.1  1.5  1.5  -0.000000000   0.000000010   0.000000023  -0.000000000  -0.000000018   0.000000000  -0.000000003  -0.000000000
                         0.000000000  -0.000000011   0.000000001  -0.000000000  -0.000000008   0.000000000   0.000000001  -0.000000000

   17   17.1  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000016   0.000000000   0.000000000   0.000000016   0.000000000   0.000000021   0.000000000  -0.000000010

   18    1.1  1.5  0.5   0.000000054  -0.000005713   0.000007257  -0.000000202  -0.000088870   0.000000558   0.000000016   0.000000000
                         0.000000322  -0.000005187  -0.000120461   0.000001440   0.000206213  -0.000000997   0.000000069  -0.000000000

   19    2.1  1.5  0.5   0.000000030   0.000000330  -0.000000108   0.000000002   0.000000132  -0.000000001  -0.000000000   0.000000000
                         0.000128416   0.000002104  -0.000000450  -0.000051724   0.000000695   0.000172059  -0.000000000   0.000000005

   20    3.1  1.5  0.5  -0.000001677   0.000088006   0.000107489  -0.000001369  -0.000000483   0.000000003   0.000000084  -0.000000000
                         0.000001354  -0.000096973   0.000006478  -0.000000100  -0.000000208   0.000000061  -0.000000019   0.000000000

   21    4.1  1.5  0.5   0.000147804   0.000002319   0.000002229   0.000174507   0.000000139   0.000027060   0.000000000  -0.000000005
                         0.000000010  -0.000000451  -0.000000105   0.000000001   0.000000070  -0.000000001  -0.000000000   0.000000000

   22    5.1  1.5  0.5  -0.000001644   0.000086301   0.000062439  -0.000000795  -0.000007442   0.000000046  -0.000000015  -0.000000000
                         0.000001245  -0.000095096   0.000003763  -0.000000092  -0.000003207   0.000000047   0.000000003  -0.000000000

   23    6.1  1.5  0.5  -0.000000235   0.000008840   0.000005398  -0.000000193  -0.000032013   0.000000202  -0.000000002   0.000000000
                        -0.000000152   0.000008058  -0.000089599   0.000001141   0.000074282  -0.000000461  -0.000000008  -0.000000000

   24    7.1  1.5  0.5  -0.000000014   0.000000137  -0.000000029   0.000000001  -0.000000052   0.000000000  -0.000000000   0.000000000
                         0.000052748   0.000000853   0.000000279   0.000022931   0.000001111   0.000178197   0.000000000  -0.000000018

   25    8.1  1.5  0.5   0.000101763   0.000404382  -0.000001600   0.000157679  -0.000104583   0.000025293  -0.000189268  -0.000019263
                         0.130856939   0.002049288   0.000624407   0.049042475   0.002596641   0.423642575   0.000041069  -0.183096471

   26    9.1  1.5  0.5  -0.003141323   0.164863660   0.103714989  -0.001321061  -0.016906445   0.000105419   0.312750396  -0.000004384
                         0.002348020  -0.181659932   0.006225757  -0.000172177  -0.007268937   0.000083759  -0.072009922  -0.000072339

   27   10.1  1.5  0.5   0.340399190   0.005343169   0.005132320   0.402158219   0.000375589   0.062362156  -0.000034738  -0.185428477
                        -0.000029047  -0.001037576  -0.000162672  -0.000018303   0.000029877  -0.000165633  -0.000139608   0.000102175

   28   11.1  1.5  0.5  -0.000070602  -0.000730631   0.000209380  -0.000003858   0.000057823   0.000000483   0.000030751  -0.000003170
                        -0.291452801  -0.004749399   0.001549793   0.120679388  -0.002365559  -0.383348639  -0.000004095   0.212043942

   29   12.1  1.5  0.5  -0.004402807   0.231062556   0.267191666  -0.003403420  -0.003733014   0.000023261  -0.054631506   0.000000732
                         0.003482849  -0.254606184   0.016101731  -0.000270371  -0.001608500   0.000032644   0.012599342   0.000097657

   30   13.1  1.5  0.5  -0.000551381   0.021931433   0.009851201  -0.000371757  -0.042953589   0.000272017   0.108925679   0.000022140
                        -0.000381399   0.020034934  -0.163768970   0.002085997   0.099675903  -0.000621577   0.472794538  -0.000006609

   31   14.1  1.5  0.5   0.000132493  -0.010011958   0.018298935  -0.000418487  -0.212847585   0.001352691   0.005571974  -0.000003841
                         0.000173142  -0.009086762  -0.303702534   0.003868408   0.493888109  -0.003079794   0.024200631  -0.000000340

   32   15.1  1.5  0.5   0.000000000  -0.000000005   0.000000001  -0.000000000  -0.000000003   0.000000000   0.000000003  -0.000000000
                         0.000000000  -0.000000005  -0.000000010   0.000000000   0.000000006  -0.000000000   0.000000012   0.000000000

   33   16.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000032   0.000000001  -0.000000000  -0.000000014   0.000000000   0.000000029  -0.000000000   0.000000002

   34   17.1  1.5  0.5  -0.000000000   0.000000005   0.000000010  -0.000000000  -0.000000009   0.000000000   0.000000011  -0.000000000
                         0.000000000  -0.000000005   0.000000001  -0.000000000  -0.000000004   0.000000000  -0.000000003  -0.000000000

   35    1.1  1.5 -0.5  -0.000007717  -0.000000256  -0.000001450  -0.000120680   0.000001137   0.000224548   0.000000000   0.000000070
                         0.000000002   0.000000202   0.000000115  -0.000000002  -0.000000118   0.000000001  -0.000000000   0.000000000

   36    2.1  1.5 -0.5   0.000001658  -0.000086309   0.000051630  -0.000000443  -0.000158010   0.000000586  -0.000000005  -0.000000000
                        -0.000001337   0.000095086   0.000003109  -0.000000135  -0.000068096   0.000000396   0.000000001   0.000000000

   37    3.1  1.5 -0.5   0.000000020   0.000000332   0.000000017  -0.000000000  -0.000000055   0.000000000  -0.000000000  -0.000000000
                         0.000130954   0.000002129   0.000001373   0.000107684  -0.000000027  -0.000000526   0.000000000   0.000000086

   38    4.1  1.5 -0.5   0.000001414  -0.000109472   0.000010496  -0.000000239   0.000010710   0.000000009   0.000000001  -0.000000000
                         0.000001892  -0.000099307  -0.000174191   0.000002219  -0.000024851   0.000000155   0.000000005   0.000000000

   39    5.1  1.5 -0.5   0.000000018   0.000000381   0.000000044  -0.000000000  -0.000000025  -0.000000000   0.000000000  -0.000000000
                         0.000128418   0.000002027   0.000000799   0.000062552  -0.000000061  -0.000008104   0.000000000  -0.000000015

   40    6.1  1.5 -0.5   0.000011961   0.000000276  -0.000001150  -0.000089762   0.000000504   0.000080886   0.000000000  -0.000000008
                        -0.000000028   0.000000045   0.000000124  -0.000000002  -0.000000003   0.000000000  -0.000000000   0.000000000

   41    7.1  1.5 -0.5   0.000000675  -0.000035432  -0.000022889   0.000000280  -0.000163646   0.000001041   0.000000017   0.000000000
                        -0.000000540   0.000039075  -0.000001380  -0.000000012  -0.000070526   0.000000392  -0.000000004  -0.000000000

   42    8.1  1.5 -0.5   0.001676467  -0.088001876  -0.048944180   0.000623372  -0.389041048   0.002426010   0.178424711  -0.000002482
                        -0.001246019   0.096846366  -0.003107498   0.000035964  -0.167690474   0.000931643  -0.041096726  -0.000193656

   43    9.1  1.5 -0.5   0.000038177   0.000748812   0.000092398  -0.000024396  -0.000035198   0.000015743   0.000071476   0.000059257
                         0.245316848   0.003849726   0.001329026   0.103901676  -0.000129961  -0.018402855  -0.000011972   0.320933382

   44   10.1  1.5 -0.5   0.003260060  -0.252085571   0.024209726  -0.000471107   0.024833507  -0.000121211   0.041539598  -0.000143843
                         0.004358673  -0.228745435  -0.401428851   0.005113240  -0.057204571   0.000356746   0.180715777  -0.000002501

   45   11.1  1.5 -0.5  -0.003732374   0.195887736  -0.120461082   0.001534391   0.352047418  -0.002195290  -0.206627857   0.000002915
                         0.003026549  -0.215807170  -0.007255506   0.000302227   0.151719460  -0.000883128   0.047618927   0.000030885

   46   12.1  1.5 -0.5   0.000051472   0.000920564   0.000065152  -0.000000095  -0.000020773   0.000000272  -0.000095327   0.000009711
                         0.343822936   0.005537825   0.003413521   0.267676395  -0.000034281  -0.004064808   0.000021216  -0.056065540

   47   13.1  1.5 -0.5   0.029704814   0.000664635  -0.002104582  -0.164064992   0.000678481   0.108537074   0.000001469   0.485179841
                        -0.000101838   0.000088018   0.000245603  -0.000018009  -0.000003802   0.000002939  -0.000023059  -0.000025236

   48   14.1  1.5 -0.5  -0.013520671  -0.000214466  -0.003886576  -0.304253316   0.003363682   0.537800668   0.000001194   0.024833796
                         0.000002481   0.000039206   0.000185029  -0.000003148  -0.000023334   0.000000664   0.000003667  -0.000004737

   49   15.1  1.5 -0.5  -0.000000007  -0.000000000  -0.000000000  -0.000000010   0.000000000   0.000000007   0.000000000   0.000000012
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   50   16.1  1.5 -0.5   0.000000000  -0.000000021   0.000000014  -0.000000000  -0.000000027   0.000000000  -0.000000002  -0.000000000
                        -0.000000000   0.000000023   0.000000001  -0.000000000  -0.000000012   0.000000000   0.000000000   0.000000000

   51   17.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000007   0.000000000   0.000000000   0.000000010  -0.000000000  -0.000000009  -0.000000000   0.000000012

   52    1.1  1.5 -1.5   0.000000217  -0.000018499  -0.000010214   0.000000141  -0.000078434   0.000000411  -0.000000019   0.000000000
                         0.000000196  -0.000016783   0.000169490  -0.000002346   0.000181997  -0.000000954  -0.000000081   0.000000000

   53    2.1  1.5 -1.5  -0.000000004  -0.000000207  -0.000000081   0.000000001   0.000000158  -0.000000001   0.000000000  -0.000000000
                        -0.000072109  -0.000001084  -0.000001707  -0.000109995   0.000000353   0.000107092   0.000000000   0.000000001

   54    3.1  1.5 -1.5   0.000002100  -0.000110210   0.000233805  -0.000002978   0.000086293  -0.000000538   0.000000013   0.000000000
                        -0.000001611   0.000121473   0.000014088  -0.000000242   0.000037190  -0.000000174  -0.000000003   0.000000000

   55    4.1  1.5 -1.5   0.000105836   0.000001770   0.000000719   0.000056639  -0.000000120  -0.000016495  -0.000000000   0.000000039
                        -0.000000035  -0.000000225   0.000000036  -0.000000000   0.000000040  -0.000000000  -0.000000000  -0.000000000

   56    5.1  1.5 -1.5  -0.000001129   0.000059270   0.000051479  -0.000000656   0.000005295  -0.000000033  -0.000000004   0.000000000
                         0.000000830  -0.000065361   0.000003102  -0.000000095   0.000002282   0.000000018   0.000000001  -0.000000000

   57    6.1  1.5 -1.5  -0.000002390   0.000180583   0.000005504  -0.000000081  -0.000000977  -0.000000005  -0.000000018  -0.000000000
                        -0.000003123   0.000163832  -0.000091358   0.000001162   0.000002267  -0.000000013  -0.000000079  -0.000000000

   58    7.1  1.5 -1.5  -0.000000021  -0.000000088  -0.000000010   0.000000000   0.000000020  -0.000000000   0.000000000   0.000000000
                        -0.000049727  -0.000000854  -0.000001031  -0.000082149   0.000000640   0.000098041  -0.000000000   0.000000006

   59    8.1  1.5 -1.5   0.000046662  -0.000276449   0.000119617   0.000050038   0.000118328  -0.000016095   0.000099856   0.000053126
                        -0.119777588  -0.001976992  -0.002507155  -0.197393988   0.001510385   0.234026024  -0.000018457   0.326266415

   60    9.1  1.5 -1.5  -0.003316950   0.174077227   0.033900432  -0.000431842  -0.018478806   0.000115249   0.572977467  -0.000008026
                         0.002461630  -0.191820859   0.002003552  -0.000128206  -0.007972571   0.000101326  -0.132056397  -0.000057096

   61   10.1  1.5 -1.5   0.243795244   0.004071505   0.001663004   0.130502025  -0.000228888  -0.037958798  -0.000014457   0.169504088
                        -0.000033317  -0.000521303  -0.000010375   0.000077041  -0.000018719  -0.000091219  -0.000073035  -0.000122979

   62   11.1  1.5 -1.5   0.000006072   0.000545706   0.000213856  -0.000002290  -0.000046119   0.000000293  -0.000233983   0.000061775
                         0.162181426   0.002488944   0.003160550   0.247119350  -0.001513148  -0.239469999   0.000054421   0.029660685

   63   12.1  1.5 -1.5   0.004372746  -0.229479509   0.550720210  -0.007014813   0.198477640  -0.001237659   0.244657429  -0.000003414
                        -0.003331613   0.252919586   0.033185165  -0.000526593   0.085537643  -0.000458483  -0.056409526  -0.000192350

   64   13.1  1.5 -1.5  -0.005515724   0.417561808   0.015957100  -0.000231793   0.024222183  -0.000149503   0.000516472   0.000052371
                        -0.007219523   0.378880802  -0.264917572   0.003374389  -0.056196771   0.000350436   0.002526479   0.000000022

   65   14.1  1.5 -1.5  -0.000243598   0.018394884  -0.021365153   0.000328352  -0.178698431   0.000923515   0.002481289  -0.000012012
                        -0.000318033   0.016690351   0.354542583  -0.004515980   0.414644621  -0.002585640   0.010769873  -0.000000150

   66   15.1  1.5 -1.5  -0.000000000   0.000000009  -0.000000001   0.000000000  -0.000000004   0.000000000   0.000000002   0.000000000
                        -0.000000000   0.000000008   0.000000017  -0.000000000   0.000000008  -0.000000000   0.000000009   0.000000000

   67   16.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000015  -0.000000000  -0.000000000  -0.000000023   0.000000000   0.000000020  -0.000000000   0.000000003

   68   17.1  1.5 -1.5  -0.000000000   0.000000011   0.000000016  -0.000000000   0.000000019  -0.000000000  -0.000000010   0.000000000
                         0.000000000  -0.000000012   0.000000001  -0.000000000   0.000000008  -0.000000000   0.000000002   0.000000000


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.000000009  -0.000000095   0.000000004  -0.000000133  -0.000000214   0.000000251  -0.000007732  -0.000000075
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000011  -0.000000001  -0.000000001   0.000000000  -0.000000051  -0.000000045  -0.000002987   0.000066640
                         0.000000003   0.000000000   0.000000004   0.000000000  -0.000000019  -0.000000016  -0.000000427   0.000072667

    3    3.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000006  -0.000000740
                        -0.000000017   0.000000171   0.000000000  -0.000000013   0.000000042  -0.000000049   0.000037741   0.000000892

    4    4.1  1.5  1.5   0.000000004   0.000000000   0.000000095   0.000000003   0.000000055   0.000000047  -0.000000443   0.000075669
                         0.000000018   0.000000002   0.000000016   0.000000000  -0.000000149  -0.000000127   0.000003123  -0.000069392

    5    5.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000025   0.000003038
                         0.000000003  -0.000000032  -0.000000002   0.000000060   0.000000096  -0.000000112  -0.000156760  -0.000003743

    6    6.1  1.5  1.5  -0.000000013   0.000000137   0.000000001  -0.000000039   0.000000067  -0.000000079   0.000092034   0.000002174
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000015   0.000001807

    7    7.1  1.5  1.5  -0.000000007  -0.000000001  -0.000000013  -0.000000000  -0.000000054  -0.000000046   0.000003047  -0.000067712
                         0.000000002   0.000000000   0.000000074   0.000000002  -0.000000020  -0.000000017   0.000000433  -0.000073837

    8    8.1  1.5  1.5   0.061615659   0.005948427   0.066212075   0.001941050   0.095588633   0.081595837  -0.008433227   0.187286255
                        -0.015076123  -0.001750656  -0.391686340  -0.011108408   0.035407208   0.030272882  -0.001209643   0.204394666

    9    9.1  1.5  1.5   0.000132378   0.000033021   0.000027005  -0.000008392  -0.000091406  -0.000025100   0.000033351  -0.008898021
                        -0.004177994   0.042932250   0.003956835  -0.140379198  -0.020886519   0.024419446   0.458845292   0.010950056

   10   10.1  1.5  1.5  -0.011125057  -0.001178334  -0.362049349  -0.010107122  -0.091369826  -0.077996435   0.001274695  -0.216317449
                        -0.045219363  -0.004365434  -0.061186102  -0.001793637   0.247158527   0.210978010  -0.008925564   0.198228249

   11   11.1  1.5  1.5   0.649243742   0.062678073  -0.022421474  -0.000657111  -0.053515606  -0.045681640  -0.008834775   0.196279902
                        -0.159306353  -0.015155311   0.132349854   0.003491280  -0.019721457  -0.016941533  -0.001258589   0.214033463

   12   12.1  1.5  1.5   0.000131630   0.000024896  -0.000030080  -0.000004770  -0.000033898  -0.000029989  -0.000004596   0.000699687
                         0.020254478  -0.210144611   0.000380004  -0.006867178   0.008699997  -0.010217799  -0.037254350  -0.000913903

   13   13.1  1.5  1.5   0.023008828  -0.238522268   0.001281952  -0.039646943  -0.195298390   0.228815319  -0.263260616  -0.006222455
                        -0.000073722  -0.000001453   0.000019682   0.000020070  -0.000039830  -0.000021829  -0.000024480  -0.005160570

   14   14.1  1.5  1.5  -0.001073006   0.011124640   0.004598360  -0.161799474  -0.355656946   0.416614080  -0.016758954  -0.000403992
                         0.000004040  -0.000001015  -0.000024238  -0.000007261   0.000029213   0.000058505   0.000001730  -0.000321275

   15   15.1  1.5  1.5   0.000000000  -0.000000001  -0.000000000   0.000000001   0.000000006  -0.000000007  -0.000000003  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   16   16.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000002  -0.000000002  -0.000000001   0.000000017
                         0.000000000   0.000000000   0.000000002   0.000000000  -0.000000001  -0.000000001  -0.000000000   0.000000019

   17   17.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000004   0.000000005  -0.000000012  -0.000000000

   18    1.1  1.5  0.5   0.000000003   0.000000000   0.000000294   0.000000008   0.000000060   0.000000051  -0.000000112   0.000012589
                         0.000000011   0.000000001   0.000000050   0.000000002  -0.000000161  -0.000000138   0.000000350  -0.000011547

   19    2.1  1.5  0.5   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000015   0.000001792
                        -0.000000000   0.000000002  -0.000000001   0.000000037   0.000000086  -0.000000100  -0.000093055  -0.000002191

   20    3.1  1.5  0.5  -0.000000016  -0.000000002  -0.000000003  -0.000000000   0.000000132   0.000000113   0.000003695  -0.000082088
                         0.000000004   0.000000000   0.000000015   0.000000000   0.000000049   0.000000042   0.000000584  -0.000089511

   21    4.1  1.5  0.5   0.000000004  -0.000000040   0.000000000  -0.000000009  -0.000000068   0.000000080   0.000117483   0.000002827
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000018   0.000002256

   22    5.1  1.5  0.5   0.000000003   0.000000000   0.000000000   0.000000000   0.000000057   0.000000048   0.000002120  -0.000047092
                        -0.000000001  -0.000000000  -0.000000002  -0.000000000   0.000000021   0.000000018   0.000000287  -0.000051352

   23    6.1  1.5  0.5  -0.000000005  -0.000000000  -0.000000048  -0.000000001   0.000000056   0.000000048   0.000000548  -0.000085227
                        -0.000000020  -0.000000002  -0.000000008  -0.000000000  -0.000000151  -0.000000129  -0.000003519   0.000078159

   24    7.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000006  -0.000000817
                        -0.000000004   0.000000041  -0.000000001   0.000000028  -0.000000035   0.000000041   0.000043661   0.000001072

   25    8.1  1.5  0.5  -0.000238368  -0.000172662   0.000011146   0.000077066  -0.000019691  -0.000127814  -0.000149317   0.002233215
                        -0.046889894   0.486351634   0.000703634  -0.026694824   0.071557420  -0.083884506  -0.116119673  -0.002790462

   26    9.1  1.5  0.5   0.040861562   0.003944748   0.042290471   0.001239678  -0.131792603  -0.112500021  -0.004346237   0.096589950
                        -0.010061976  -0.000964773  -0.249892793  -0.007022345  -0.048742497  -0.041461809  -0.000549089   0.105255717

   27   10.1  1.5  0.5   0.038786348  -0.402003041  -0.005170642   0.184799365   0.150593640  -0.176446307  -0.335581973  -0.008077008
                        -0.000078827  -0.000161355   0.000041264   0.000016935   0.000016276   0.000055241   0.000096289  -0.006444354

   28   11.1  1.5  0.5   0.000043091   0.000026108   0.000012833  -0.000003129  -0.000037500  -0.000020058  -0.000043072   0.005243254
                        -0.005084046   0.052546419  -0.000326604   0.008570871   0.142410126  -0.166855617  -0.269489863  -0.006412231

   29   12.1  1.5  0.5  -0.167995337  -0.016218332  -0.102685471  -0.003010015  -0.162895285  -0.139049669  -0.011366362   0.252525127
                         0.041218305   0.004002332   0.606070070   0.017226856  -0.060135863  -0.051443959  -0.001751075   0.275361689

   30   13.1  1.5  0.5  -0.010609545  -0.001336389  -0.347669531  -0.009767176  -0.064619497  -0.055078709  -0.001593879   0.246126437
                        -0.043526936  -0.004202190  -0.058858682  -0.001725355   0.174833812   0.149240652   0.010160325  -0.225744113

   31   14.1  1.5  0.5  -0.001936981  -0.000184383   0.196394711   0.005478490   0.119239335   0.101564758   0.000001097  -0.000203485
                        -0.007901224  -0.000762787   0.033274957   0.000975347  -0.322401934  -0.275206871  -0.000008384   0.000185927

   32   15.1  1.5  0.5  -0.000000007  -0.000000001   0.000000008   0.000000000   0.000000002   0.000000001  -0.000000000   0.000000011
                        -0.000000029  -0.000000003   0.000000001   0.000000000  -0.000000005  -0.000000004   0.000000000  -0.000000010

   33   16.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000002  -0.000000000   0.000000007  -0.000000001   0.000000001  -0.000000020  -0.000000000

   34   17.1  1.5  0.5   0.000000028   0.000000003  -0.000000001  -0.000000000  -0.000000011  -0.000000009   0.000000001  -0.000000015
                        -0.000000007  -0.000000001   0.000000008   0.000000000  -0.000000004  -0.000000003   0.000000000  -0.000000016

   35    1.1  1.5 -0.5   0.000000001  -0.000000011   0.000000008  -0.000000298   0.000000147  -0.000000172  -0.000017083  -0.000000319
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000182

   36    2.1  1.5 -0.5   0.000000002   0.000000000   0.000000006   0.000000001   0.000000093   0.000000080  -0.000002802   0.000062894
                        -0.000000000  -0.000000000  -0.000000036  -0.000000001   0.000000035   0.000000030  -0.000000403   0.000068582

   37    3.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000018   0.000002328
                        -0.000000002   0.000000016  -0.000000000   0.000000015  -0.000000120   0.000000141  -0.000121452  -0.000002928

   38    4.1  1.5 -0.5  -0.000000010  -0.000000001  -0.000000009  -0.000000000   0.000000028   0.000000023  -0.000000558   0.000086586
                        -0.000000039  -0.000000004  -0.000000001  -0.000000000  -0.000000075  -0.000000064   0.000003574  -0.000079405

   39    5.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000012   0.000001368
                         0.000000000  -0.000000003   0.000000000  -0.000000002  -0.000000052   0.000000060  -0.000069676  -0.000001644

   40    6.1  1.5 -0.5  -0.000000002   0.000000020  -0.000000001   0.000000048   0.000000138  -0.000000161   0.000115640   0.000002782
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000018   0.000002223

   41    7.1  1.5 -0.5   0.000000039   0.000000004   0.000000005   0.000000000  -0.000000038  -0.000000033   0.000001327  -0.000029510
                        -0.000000010  -0.000000001  -0.000000028  -0.000000001  -0.000000014  -0.000000012   0.000000238  -0.000032178

   42    8.1  1.5 -0.5   0.472296275   0.045595573  -0.004384405  -0.000128558   0.078638977   0.067127360  -0.003532011   0.078386701
                        -0.116078292  -0.010943617   0.026332424   0.000691880   0.029198251   0.024786738  -0.000546650   0.085669866

   43    9.1  1.5 -0.5   0.000003166   0.000033637   0.000048900   0.000058164  -0.000106875  -0.000034651  -0.000024703  -0.002831571
                         0.004061011  -0.042082176   0.007130760  -0.253446027   0.119897143  -0.140517330   0.142857915   0.003342675

   44   10.1  1.5 -0.5  -0.095964784  -0.009167269   0.182204279   0.005091058  -0.061216504  -0.052187657   0.001595597  -0.247356430
                        -0.390380880  -0.037687507   0.030861079   0.000904637   0.165486682   0.141261790  -0.010208909   0.226781980

   45   11.1  1.5 -0.5   0.051038518   0.004927280   0.001429006   0.000041919   0.156502855   0.133593048  -0.008198428   0.182143023
                        -0.012497862  -0.001253514  -0.008450904  -0.000324157   0.057858913   0.049330954  -0.001180760   0.198616986

   46   12.1  1.5 -0.5   0.000021743   0.000007182  -0.000089297  -0.000025186   0.000052965   0.000060093   0.000057603  -0.007192182
                        -0.016704864   0.172977981  -0.017487618   0.614707439   0.148260880  -0.173640987   0.373621461   0.008974017

   47   13.1  1.5 -0.5  -0.004399602   0.044801247  -0.009918155   0.352616567  -0.159079953   0.186393511  -0.333973990  -0.008042899
                        -0.000296387  -0.000069802   0.000069121   0.000060200  -0.000070336  -0.000007073   0.000029622  -0.006409714

   48   14.1  1.5 -0.5  -0.000784750   0.008135185   0.005564442  -0.199193637   0.293349969  -0.343745572   0.000275635   0.000006476
                         0.000002722  -0.000001906  -0.000046245  -0.000008044   0.000132521   0.000086097  -0.000000545   0.000005436

   49   15.1  1.5 -0.5  -0.000000003   0.000000030   0.000000000  -0.000000009   0.000000004  -0.000000005  -0.000000015  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   50   16.1  1.5 -0.5   0.000000002   0.000000000   0.000000001   0.000000000  -0.000000001  -0.000000001  -0.000000001   0.000000014
                        -0.000000000  -0.000000000  -0.000000007  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000015

   51   17.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000003  -0.000000029  -0.000000000   0.000000008   0.000000010  -0.000000012  -0.000000022  -0.000000001

   52    1.1  1.5 -1.5   0.000000023   0.000000002   0.000000132   0.000000004  -0.000000087  -0.000000074  -0.000000055   0.000005697
                         0.000000092   0.000000009   0.000000022   0.000000001   0.000000235   0.000000201   0.000000051  -0.000005227

   53    2.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000016   0.000001912
                         0.000000001  -0.000000011   0.000000000  -0.000000004  -0.000000047   0.000000055  -0.000098597  -0.000002334

   54    3.1  1.5 -1.5  -0.000000166  -0.000000016   0.000000002   0.000000000  -0.000000046  -0.000000039  -0.000001148   0.000025508
                         0.000000041   0.000000004  -0.000000013  -0.000000000  -0.000000017  -0.000000014  -0.000000157   0.000027816

   55    4.1  1.5 -1.5  -0.000000002   0.000000019  -0.000000003   0.000000096  -0.000000136   0.000000159   0.000102670   0.000002438
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000017   0.000002002

   56    5.1  1.5 -1.5   0.000000031   0.000000003  -0.000000010  -0.000000000  -0.000000105  -0.000000090   0.000004769  -0.000105951
                        -0.000000008  -0.000000001   0.000000059   0.000000002  -0.000000039  -0.000000033   0.000000704  -0.000115533

   57    6.1  1.5 -1.5  -0.000000033  -0.000000003   0.000000038   0.000000001   0.000000027   0.000000023   0.000000381  -0.000067830
                        -0.000000133  -0.000000013   0.000000006   0.000000000  -0.000000074  -0.000000063  -0.000002801   0.000062204

   58    7.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000016  -0.000001953
                         0.000000001  -0.000000008   0.000000002  -0.000000075  -0.000000049   0.000000058   0.000100184   0.000002379

   59    8.1  1.5 -1.5   0.000282541   0.000042955  -0.000057680  -0.000164866   0.000110825  -0.000076229  -0.000158712   0.005396753
                        -0.006194251   0.063433249  -0.011276572   0.397243252   0.087030545  -0.101935525  -0.277224270  -0.006592239

   60    9.1  1.5 -1.5  -0.041703029  -0.004026056   0.023463968   0.000687765   0.022914030   0.019559773  -0.013959200   0.310154187
                         0.010199834   0.001124292  -0.138404341  -0.003896698   0.008441399   0.007326000  -0.002054079   0.338146985

   61   10.1  1.5 -1.5   0.004520472  -0.046567767   0.010264731  -0.367183118   0.224933688  -0.263506701  -0.293406975  -0.006972995
                         0.000103980  -0.000027505  -0.000079642  -0.000168196  -0.000025280   0.000027571   0.000155309  -0.005715582

   62   11.1  1.5 -1.5  -0.000219250   0.000016207   0.000064522   0.000007814  -0.000055650  -0.000052419  -0.000047081   0.005659567
                        -0.064483922   0.668502767   0.003551995  -0.134235637  -0.048721912   0.057033790  -0.290406820  -0.006899753

   63   12.1  1.5 -1.5   0.204083367   0.019702216   0.001152127   0.000033837  -0.009573853  -0.008172308   0.001133398  -0.025180501
                        -0.050107261  -0.004699347  -0.006769842  -0.000379688  -0.003570105  -0.002984037   0.000200471  -0.027455947

   64   13.1  1.5 -1.5   0.056847648   0.005412021   0.039086232   0.001267219  -0.079338755  -0.067662357  -0.001096807   0.193980971
                         0.231648909   0.022363399   0.006644321   0.000194794   0.214620158   0.183202806   0.008009210  -0.177981840

   65   14.1  1.5 -1.5  -0.002650314  -0.000251803   0.159526105   0.004529666  -0.144363393  -0.123315028  -0.000080521   0.012350892
                        -0.010804326  -0.001043050   0.027027610   0.000792228   0.390802387   0.333594466   0.000509847  -0.011327754

   66   15.1  1.5 -1.5   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000002   0.000000002  -0.000000000   0.000000003
                         0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000007  -0.000000006   0.000000000  -0.000000002

   67   16.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000002   0.000000003  -0.000000025  -0.000000001

   68   17.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000005   0.000000004   0.000000000  -0.000000008
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000002   0.000000001   0.000000000  -0.000000009


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.000073318  -0.000004404   0.000142813   0.000006665   0.000085179   0.000000000   0.000007227  -0.000218792
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000003744  -0.000061763   0.000006162  -0.000132883   0.000000005  -0.000048411  -0.000053383  -0.000001402
                        -0.000000016   0.000000779   0.000000868  -0.000017594  -0.000000034  -0.000066246  -0.000031471  -0.000001053

    3    3.1  1.5  1.5  -0.000000001  -0.000000066  -0.000000001  -0.000000013   0.000000001   0.000000370   0.000000025   0.000000001
                         0.000046199  -0.000002701  -0.000129586  -0.000006259  -0.000216045  -0.000000178  -0.000007720   0.000230688

    4    4.1  1.5  1.5   0.000000072   0.000000894  -0.000000625   0.000013530  -0.000000128  -0.000119755   0.000088790   0.000002883
                         0.000004150   0.000070958   0.000004934  -0.000102180  -0.000000277   0.000087515  -0.000150574  -0.000005049

    5    5.1  1.5  1.5  -0.000000003  -0.000000061  -0.000000001   0.000000006  -0.000000002  -0.000000292   0.000000046   0.000000001
                        -0.000011593   0.000000679  -0.000069394  -0.000003350   0.000152998   0.000000085  -0.000001799   0.000054480

    6    6.1  1.5  1.5   0.000122342  -0.000007155  -0.000022055  -0.000001072  -0.000250637  -0.000000174  -0.000003070   0.000091131
                         0.000000000   0.000000062  -0.000000000   0.000000043  -0.000000002  -0.000000454   0.000000023  -0.000000000

    7    7.1  1.5  1.5   0.000004063   0.000069360   0.000005114  -0.000105635  -0.000000265   0.000086304  -0.000152001  -0.000005117
                        -0.000000072  -0.000000873   0.000000648  -0.000013988   0.000000127   0.000118099  -0.000089632  -0.000002911

    8    8.1  1.5  1.5  -0.011249812  -0.192354979  -0.015140063   0.313565141   0.000442279  -0.139531184   0.252973260   0.008482265
                         0.000170000   0.002345074  -0.001826526   0.041641354  -0.000124129  -0.191095955   0.149305479   0.004746288

    9    9.1  1.5  1.5  -0.000039719   0.000146494   0.000019176  -0.000022562   0.000066713   0.000568917  -0.000068649  -0.000030755
                         0.053186089  -0.003112377   0.138631118   0.006690471  -0.303935175  -0.000184120   0.000961441  -0.029899483

   10   10.1  1.5  1.5  -0.000133304  -0.002480743   0.001894706  -0.038751661   0.000231692   0.197370001  -0.146320140  -0.004839320
                        -0.011851301  -0.202639445  -0.014086964   0.291754351   0.000456802  -0.144119483   0.247917038   0.008312735

   11   11.1  1.5  1.5  -0.010673619  -0.182502451   0.017826624  -0.369206094   0.000266609  -0.084172389  -0.079828343  -0.002676647
                        -0.000035281   0.002301874   0.002407282  -0.048887584  -0.000069385  -0.115183556  -0.047072171  -0.001570522

   12   12.1  1.5  1.5   0.000006530   0.000261765   0.000007609  -0.000057933  -0.000002242  -0.000492668  -0.000122271  -0.000004627
                        -0.124975432   0.007305899   0.395930141   0.019109199   0.312773067   0.000316540   0.012977380  -0.389191366

   13   13.1  1.5  1.5  -0.314856290   0.018412044   0.121567573   0.005884229   0.428968395   0.000305224   0.006756934  -0.201063151
                        -0.000008603  -0.000175419  -0.000020573  -0.000110307   0.000048908   0.000769827  -0.000026049   0.000004718

   14   14.1  1.5  1.5  -0.258830895   0.015136698  -0.395208003  -0.019078664  -0.078786679  -0.000059616  -0.011225664   0.335104199
                        -0.000003246  -0.000075185   0.000000535  -0.000025763   0.000000561  -0.000138768  -0.000017670  -0.000000388

   15   15.1  1.5  1.5   0.000000016  -0.000000001   0.000000006   0.000000000  -0.000000003  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   16   16.1  1.5  1.5  -0.000000000  -0.000000008   0.000000001  -0.000000028   0.000000000  -0.000000011  -0.000000011  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000004  -0.000000000  -0.000000015  -0.000000006  -0.000000000

   17   17.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000012  -0.000000001  -0.000000006  -0.000000000  -0.000000003  -0.000000000  -0.000000000   0.000000003

   18    1.1  1.5  0.5   0.000000032  -0.000001563  -0.000000701   0.000013646  -0.000000074  -0.000032281   0.000111872   0.000003667
                        -0.000007329  -0.000123733   0.000004805  -0.000103068   0.000000302   0.000023591  -0.000189733  -0.000005966

   19    2.1  1.5  0.5  -0.000000001  -0.000000018   0.000000000  -0.000000001  -0.000000003  -0.000000352  -0.000000091  -0.000000004
                        -0.000059429   0.000003695  -0.000093740  -0.000004339   0.000203535   0.000000042  -0.000007347   0.000231120

   20    3.1  1.5  0.5  -0.000007605  -0.000130035  -0.000000944   0.000019551  -0.000000128   0.000040511  -0.000021279  -0.000000713
                        -0.000000016   0.000001643  -0.000000077   0.000002589   0.000000046   0.000055436  -0.000012548  -0.000000396

   21    4.1  1.5  0.5  -0.000100855   0.000005897  -0.000047722  -0.000002299   0.000175017   0.000000137   0.000004962  -0.000148145
                        -0.000000003  -0.000000082   0.000000001  -0.000000037   0.000000001   0.000000305   0.000000009   0.000000001

   22    5.1  1.5  0.5   0.000005753   0.000098362  -0.000004400   0.000091132  -0.000000494   0.000156083  -0.000081540  -0.000002734
                         0.000000005  -0.000001241  -0.000000616   0.000012067   0.000000179   0.000213586  -0.000048082  -0.000001519

   23    6.1  1.5  0.5   0.000000005   0.000001176  -0.000000475   0.000010584  -0.000000061  -0.000026630   0.000092243   0.000003023
                         0.000005442   0.000093068   0.000003858  -0.000079927  -0.000000059   0.000019461  -0.000156431  -0.000005243

   24    7.1  1.5  0.5   0.000000003   0.000000127  -0.000000000   0.000000053   0.000000001   0.000000292   0.000000022   0.000000001
                        -0.000146834   0.000008574   0.000051778   0.000002497  -0.000169863  -0.000000133  -0.000005186   0.000154359

   25    8.1  1.5  0.5   0.000109840  -0.000280464   0.000054396  -0.000172342  -0.000114128  -0.000492658  -0.000013111   0.000094083
                         0.424501808  -0.024823357  -0.139282325  -0.006748211   0.269036790   0.000177910   0.008919831  -0.266200515

   26    9.1  1.5  0.5  -0.019579059  -0.334772442   0.011981576  -0.248149711   0.000771597  -0.243595735   0.127171147   0.004264072
                        -0.000026299   0.004179150   0.001698997  -0.032829868  -0.000278079  -0.333350198   0.075032001   0.002371724

   27   10.1  1.5  0.5   0.287833474  -0.016831834   0.136290061   0.006577787  -0.288301617  -0.000240787  -0.008116219   0.243919817
                        -0.000163026   0.000160737   0.000056364   0.000024134  -0.000107201  -0.000491305  -0.000109168   0.000099268

   28   11.1  1.5  0.5  -0.000004101  -0.000078104  -0.000002805   0.000065439  -0.000005096  -0.000686423   0.000176020   0.000004013
                        -0.156265525   0.009140100  -0.271915468  -0.013120361   0.343802398   0.000149654  -0.012370718   0.372041978

   29   12.1  1.5  0.5   0.018931346   0.323697338   0.004595515  -0.095178132   0.000334531  -0.105607109   0.055357745   0.001856125
                        -0.000074871  -0.004083799   0.000519838  -0.012602547  -0.000185358  -0.144514089   0.032640484   0.001111234

   30   13.1  1.5  0.5   0.000003448  -0.003926044   0.001047370  -0.024154311   0.000082058   0.035674598  -0.123351353  -0.004042792
                        -0.018403444  -0.314671310  -0.008820942   0.182690207   0.000082536  -0.025995638   0.209143655   0.007012619

   31   14.1  1.5  0.5  -0.000016573   0.003933865   0.002219538  -0.043055949   0.000060369   0.059115960  -0.204690717  -0.006644203
                         0.018235992   0.311807882  -0.015701083   0.325184292   0.000136814  -0.043202313   0.347123022   0.011639077

   32   15.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000003  -0.000000000   0.000000003   0.000000013   0.000000000
                         0.000000001   0.000000014   0.000000001  -0.000000020   0.000000000  -0.000000002  -0.000000022  -0.000000001

   33   16.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000013   0.000000001  -0.000000021  -0.000000001   0.000000045   0.000000000  -0.000000002   0.000000050

   34   17.1  1.5  0.5   0.000000001   0.000000012   0.000000001  -0.000000016  -0.000000000   0.000000016  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000002   0.000000000   0.000000022  -0.000000000  -0.000000000

   35    1.1  1.5 -0.5   0.000123743  -0.000007328  -0.000103967  -0.000004855  -0.000039982   0.000000238   0.000007001  -0.000220259
                         0.000000002   0.000000124  -0.000000000   0.000000064  -0.000000001   0.000000200  -0.000000128  -0.000000005

   36    2.1  1.5 -0.5  -0.000003695  -0.000059424  -0.000004301   0.000092929  -0.000000309   0.000120090  -0.000199088  -0.000006282
                         0.000000065   0.000000748  -0.000000570   0.000012304   0.000000174   0.000164331  -0.000117389  -0.000003810

   37    3.1  1.5 -0.5  -0.000000003  -0.000000112   0.000000001  -0.000000047   0.000000001   0.000000131  -0.000000021  -0.000000000
                         0.000130046  -0.000007604   0.000019721   0.000000946  -0.000068661  -0.000000038   0.000000816  -0.000024703

   38    4.1  1.5 -0.5   0.000000007  -0.000001274   0.000000265  -0.000006265  -0.000000069  -0.000141307  -0.000075248  -0.000002513
                        -0.000005898  -0.000100847  -0.000002284   0.000047309  -0.000000327   0.000103263   0.000127611   0.000004279

   39    5.1  1.5 -0.5   0.000000001   0.000000078   0.000000001   0.000000033   0.000000003   0.000000504  -0.000000080  -0.000000001
                        -0.000098370   0.000005752   0.000091927   0.000004443  -0.000264539  -0.000000148   0.000003127  -0.000094661

   40    6.1  1.5 -0.5  -0.000093075   0.000005442  -0.000080625  -0.000003887  -0.000032983   0.000000015   0.000006052  -0.000181603
                        -0.000000002  -0.000000064   0.000000001  -0.000000035  -0.000000001  -0.000000084   0.000000059   0.000000002

   41    7.1  1.5 -0.5  -0.000008575  -0.000146822   0.000002469  -0.000051330   0.000000314  -0.000100222  -0.000132964  -0.000004479
                        -0.000000019   0.000001854   0.000000380  -0.000006796  -0.000000065  -0.000137146  -0.000078405  -0.000002615

   42    8.1  1.5 -0.5   0.024824920   0.424469436  -0.006667206   0.138084424  -0.000502739   0.158826518   0.229352251   0.007690179
                        -0.000032607  -0.005243586  -0.001056609   0.018228026   0.000147030   0.217151893   0.135130559   0.004519369

   43    9.1  1.5 -0.5   0.000043017  -0.000273209   0.000025859  -0.000111618   0.000001696  -0.000787054   0.000122859   0.000038160
                         0.334798524  -0.019577171  -0.250311963  -0.012100922   0.412869515   0.000230730  -0.004877734   0.147656020

   44   10.1  1.5 -0.5   0.000051543   0.003466872  -0.000839463   0.017833315   0.000095464   0.232710325   0.123809026   0.004028445
                         0.016832522   0.287812641   0.006524045  -0.135118307   0.000538745  -0.170187364  -0.210162346  -0.007046741

   45   11.1  1.5 -0.5  -0.009138388  -0.156253150  -0.013015435   0.269562545  -0.000642512   0.202850935  -0.320473999  -0.010745512
                         0.000193364   0.001966572  -0.001657283   0.035693922   0.000284166   0.277581675  -0.188975261  -0.006131853

   46   12.1  1.5 -0.5   0.000001309   0.000163880  -0.000000600   0.000087859  -0.000002014  -0.000379462  -0.000014430  -0.000001505
                        -0.323723098   0.018930785  -0.096008859  -0.004623988   0.178989338   0.000047719  -0.002163292   0.064264151

   47   13.1  1.5 -0.5   0.314695798  -0.018401937   0.184280062   0.008882101   0.044141212  -0.000017556  -0.008094114   0.242809852
                        -0.000042606   0.000235535   0.000034259   0.000119513  -0.000059592   0.000115054  -0.000079478  -0.000023919

   48   14.1  1.5 -0.5  -0.311832697   0.018234332   0.328022314   0.015856573   0.073219782   0.000031980  -0.013400672   0.402979754
                        -0.000001326  -0.000246547  -0.000000326  -0.000139439   0.000002373   0.000146081  -0.000188553  -0.000005392

   49   15.1  1.5 -0.5  -0.000000014   0.000000001  -0.000000020  -0.000000001   0.000000003   0.000000000   0.000000001  -0.000000026
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   50   16.1  1.5 -0.5  -0.000000001  -0.000000013  -0.000000001   0.000000021  -0.000000000   0.000000027  -0.000000043  -0.000000001
                         0.000000000   0.000000000  -0.000000000   0.000000003   0.000000000   0.000000036  -0.000000026  -0.000000001

   51   17.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000012   0.000000001  -0.000000016  -0.000000001  -0.000000027  -0.000000000   0.000000000  -0.000000000

   52    1.1  1.5 -1.5  -0.000000056  -0.000000925   0.000000875  -0.000018745  -0.000000000   0.000068773   0.000111131   0.000003671
                        -0.000004404  -0.000073312  -0.000006607   0.000141578   0.000000000  -0.000050256  -0.000188467  -0.000006226

   53    2.1  1.5 -1.5   0.000000000   0.000000063  -0.000000000   0.000000052   0.000000001   0.000000024  -0.000000195  -0.000000006
                        -0.000061768   0.000003744   0.000134042   0.000006223  -0.000082050   0.000000025  -0.000001743   0.000061969

   54    3.1  1.5 -1.5  -0.000002702  -0.000046196   0.000006203  -0.000128464  -0.000000404   0.000127470   0.000198713   0.000006663
                        -0.000000032   0.000000583   0.000000835  -0.000017010   0.000000075   0.000174433   0.000117175   0.000003900

   55    4.1  1.5 -1.5   0.000070964  -0.000004151   0.000103072   0.000004973   0.000148325   0.000000060  -0.000005813   0.000174803
                        -0.000000001  -0.000000020  -0.000000001   0.000000028   0.000000002   0.000000299  -0.000000081  -0.000000002

   56    5.1  1.5 -1.5   0.000000678   0.000011592   0.000003322  -0.000068794   0.000000286  -0.000090272   0.000046928   0.000001574
                        -0.000000070  -0.000000144   0.000000434  -0.000009109  -0.000000103  -0.000123529   0.000027673   0.000000874

   57    6.1  1.5 -1.5  -0.000000028  -0.000001543  -0.000000183   0.000002895  -0.000000127  -0.000202362  -0.000046288  -0.000001579
                        -0.000007155  -0.000122332   0.000001057  -0.000021864  -0.000000469   0.000147880   0.000078500   0.000002633

   58    7.1  1.5 -1.5   0.000000001   0.000000021   0.000000001  -0.000000029  -0.000000002  -0.000000289   0.000000091   0.000000002
                         0.000069366  -0.000004064   0.000106557   0.000005155   0.000146273   0.000000054  -0.000005886   0.000176460

   59    8.1  1.5 -1.5  -0.000080912  -0.000028115  -0.000123078   0.000176535  -0.000091586   0.000430331  -0.000219968  -0.000118306
                        -0.192369256   0.011251062  -0.316318012  -0.015248821  -0.236614892  -0.000160728   0.009717391  -0.293747480

   60    9.1  1.5 -1.5  -0.003110282  -0.053181359  -0.006635548   0.137429194  -0.000567973   0.179378628  -0.025739719  -0.000863052
                         0.000185733   0.000710449  -0.000855813   0.018215485   0.000187009   0.245356685  -0.015213379  -0.000429212

   61   10.1  1.5 -1.5  -0.202654615   0.011852040  -0.294316629  -0.014213782  -0.244387673  -0.000082450   0.009618612  -0.287875716
                         0.000074952  -0.000016164   0.000121232   0.000029283   0.000088762  -0.000505521   0.000053721   0.000114957

   62   11.1  1.5 -1.5   0.000000142   0.000169883   0.000003283   0.000046564   0.000001012   0.000256197   0.000006709   0.000000529
                        -0.182516967   0.010672325   0.372428699   0.017988368  -0.142661286  -0.000101281  -0.003103375   0.092673371

   63   12.1  1.5 -1.5   0.007308619   0.124965411  -0.018951475   0.392503639   0.000584540  -0.184541018  -0.335246128  -0.011240788
                         0.000169609  -0.001582602  -0.002450808   0.051976629  -0.000035106  -0.252530402  -0.197686503  -0.006486295

   64   13.1  1.5 -1.5   0.000056790   0.003979273   0.000881706  -0.015977139   0.000207769   0.346318513   0.102130353   0.003454498
                         0.018412792   0.314831143  -0.005818841   0.120513096   0.000801640  -0.253135091  -0.173192903  -0.005807175

   65   14.1  1.5 -1.5   0.000115710   0.003267377  -0.002478691   0.051874830  -0.000033740  -0.063612381  -0.170210281  -0.005686646
                         0.015136442   0.258810271   0.018916981  -0.391788677  -0.000147215   0.046484469   0.288657729   0.009678734

   66   15.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000002  -0.000000000  -0.000000000
                        -0.000000001  -0.000000016  -0.000000000   0.000000006  -0.000000000   0.000000002   0.000000000   0.000000000

   67   16.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000008   0.000000000   0.000000028   0.000000001  -0.000000018  -0.000000000  -0.000000000   0.000000013

   68   17.1  1.5 -1.5  -0.000000001  -0.000000012   0.000000000  -0.000000006  -0.000000000   0.000000002   0.000000003   0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000003   0.000000002   0.000000000


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5   0.000000002   0.000000177   0.000000642  -0.000000024  -0.000000546  -0.000000002   0.000000442  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000397  -0.000000003  -0.000000016  -0.000000412  -0.000000001   0.000000256  -0.000000000   0.000000124
                        -0.000000007   0.000000000   0.000000010   0.000000281   0.000000001  -0.000000343   0.000000000  -0.000000374

    3    3.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000002   0.000000250   0.000000136  -0.000000005   0.000000033   0.000000000  -0.000000137   0.000000000

    4    4.1  1.5  1.5  -0.000000004   0.000000000   0.000000001   0.000000040  -0.000000001   0.000000250   0.000000000  -0.000000385
                        -0.000000256   0.000000002   0.000000002   0.000000059  -0.000000001   0.000000187  -0.000000001  -0.000000127

    5    5.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001
                         0.000000006   0.000000888   0.000000600  -0.000000022   0.000000113   0.000000001  -0.000000561   0.000000000

    6    6.1  1.5  1.5   0.000000001   0.000000150   0.000000587  -0.000000021  -0.000000555  -0.000000003   0.000000431  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000001

    7    7.1  1.5  1.5  -0.000000252   0.000000002   0.000000002   0.000000046  -0.000000001   0.000000204  -0.000000001  -0.000000129
                         0.000000004  -0.000000000  -0.000000001  -0.000000031   0.000000001  -0.000000273  -0.000000000   0.000000390

    8    8.1  1.5  1.5   0.000000010  -0.000000000  -0.000000000  -0.000000002   0.000000000  -0.000000008   0.000000000   0.000000006
                        -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000   0.000000011   0.000000000  -0.000000018

    9    9.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000008  -0.000000017   0.000000001   0.000000025   0.000000000   0.000000001   0.000000000

   10   10.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000003   0.000000000  -0.000000011  -0.000000000   0.000000020
                         0.000000013  -0.000000000  -0.000000000  -0.000000004   0.000000000  -0.000000008   0.000000000   0.000000007

   11   11.1  1.5  1.5   0.000000006  -0.000000000  -0.000000000  -0.000000006  -0.000000000   0.000000003   0.000000000   0.000000001
                        -0.000000000   0.000000000   0.000000000   0.000000004   0.000000000  -0.000000004  -0.000000000  -0.000000004

   12   12.1  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000006  -0.000000007   0.000000000   0.000000015   0.000000000  -0.000000001   0.000000000

   13   13.1  1.5  1.5  -0.000000000  -0.000000016   0.000000002  -0.000000000  -0.000000014  -0.000000000   0.000000003  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   14   14.1  1.5  1.5  -0.000000000  -0.000000022  -0.000000007   0.000000000  -0.000000013  -0.000000000  -0.000000001   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   15   15.1  1.5  1.5   0.003779843   0.559355099   0.485589688  -0.017565052  -0.056092081  -0.000269071  -0.357161262   0.000208209
                         0.000035407  -0.000000384  -0.000013157  -0.000354647  -0.000000265   0.000064798   0.000000015  -0.000631425

   16   16.1  1.5  1.5  -0.316665232   0.002164189   0.011948522   0.336641200   0.001479109  -0.218174893   0.000733050   0.145854781
                         0.005428984  -0.000056736  -0.008543566  -0.229382948  -0.001148237   0.291909869   0.000000621  -0.441264248

   17   17.1  1.5  1.5  -0.000017903   0.000000193   0.000015830   0.000426623   0.000001686  -0.000413979   0.000000015  -0.000573094
                         0.001831674   0.275224917   0.563472754  -0.020360100  -0.392749288  -0.001854309   0.359284318  -0.000188925

   18    1.1  1.5  0.5  -0.000000003   0.000000000   0.000000000   0.000000008  -0.000000001   0.000000227  -0.000000000   0.000000087
                        -0.000000194   0.000000000   0.000000001   0.000000011  -0.000000002   0.000000170  -0.000000000   0.000000029

   19    2.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000
                        -0.000000004  -0.000000585   0.000000151  -0.000000005  -0.000000627  -0.000000003  -0.000000200   0.000000000

   20    3.1  1.5  0.5  -0.000000098   0.000000001   0.000000000   0.000000003  -0.000000000   0.000000064  -0.000000000  -0.000000033
                         0.000000002  -0.000000000  -0.000000000  -0.000000002   0.000000000  -0.000000086  -0.000000000   0.000000098

   21    4.1  1.5  0.5   0.000000000   0.000000066   0.000000868  -0.000000031   0.000000156   0.000000001  -0.000000274   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000

   22    5.1  1.5  0.5  -0.000000304   0.000000002   0.000000003   0.000000098  -0.000000001   0.000000186  -0.000000001  -0.000000118
                         0.000000005  -0.000000000  -0.000000002  -0.000000067   0.000000001  -0.000000249  -0.000000000   0.000000358

   23    6.1  1.5  0.5  -0.000000004   0.000000000   0.000000001   0.000000039  -0.000000001   0.000000233  -0.000000000   0.000000121
                        -0.000000213   0.000000001   0.000000002   0.000000057  -0.000000001   0.000000174   0.000000000   0.000000040

   24    7.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000
                         0.000000005   0.000000696   0.000000088  -0.000000003  -0.000000616  -0.000000003   0.000000289  -0.000000000

   25    8.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000031  -0.000000005   0.000000000   0.000000028   0.000000000  -0.000000014   0.000000000

   26    9.1  1.5  0.5  -0.000000007   0.000000000  -0.000000000  -0.000000010  -0.000000000   0.000000024  -0.000000000  -0.000000001
                         0.000000000   0.000000000   0.000000000   0.000000007   0.000000000  -0.000000032   0.000000000   0.000000003

   27   10.1  1.5  0.5  -0.000000000  -0.000000005  -0.000000048   0.000000002  -0.000000006  -0.000000000   0.000000017  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   28   11.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000011   0.000000003  -0.000000000  -0.000000010  -0.000000000  -0.000000001   0.000000000

   29   12.1  1.5  0.5  -0.000000003   0.000000000  -0.000000000  -0.000000005  -0.000000000   0.000000015  -0.000000000  -0.000000001
                         0.000000000   0.000000000   0.000000000   0.000000003   0.000000000  -0.000000019   0.000000000   0.000000003

   30   13.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000008  -0.000000000   0.000000006  -0.000000000   0.000000019
                        -0.000000025   0.000000000   0.000000000   0.000000012  -0.000000000   0.000000004   0.000000000   0.000000006

   31   14.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000012  -0.000000000   0.000000006   0.000000000   0.000000024
                        -0.000000029   0.000000000   0.000000001   0.000000017  -0.000000000   0.000000004   0.000000000   0.000000008

   32   15.1  1.5  0.5   0.008924142  -0.000093261  -0.008903530  -0.239047524  -0.000074347   0.018901021  -0.000000907   0.645816341
                         0.520532417  -0.003600668  -0.012468062  -0.350824279  -0.000081951   0.014126775   0.001056978   0.213467105

   33   16.1  1.5  0.5  -0.000030044   0.000000329  -0.000005583  -0.000150268  -0.000002735   0.000674032  -0.000000008   0.000240199
                         0.003357106   0.488951476  -0.139352461   0.004969474   0.583923641   0.002800672  -0.207765637   0.000079103

   34   17.1  1.5  0.5  -0.030210831   0.000230255   0.008407553   0.233463634   0.002381164  -0.363289897   0.000303070   0.046067730
                         0.000517944  -0.000005415  -0.005925154  -0.159082163  -0.001911964   0.486067905   0.000000195  -0.139371785

   35    1.1  1.5 -0.5  -0.000000000  -0.000000194   0.000000014  -0.000000001  -0.000000284  -0.000000002   0.000000092   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000000585  -0.000000004  -0.000000004  -0.000000125   0.000000003  -0.000000376   0.000000000   0.000000063
                        -0.000000010   0.000000000   0.000000003   0.000000085  -0.000000002   0.000000503   0.000000000  -0.000000190

   37    3.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000001  -0.000000098   0.000000003  -0.000000000  -0.000000107  -0.000000001  -0.000000104   0.000000000

   38    4.1  1.5 -0.5  -0.000000001   0.000000000  -0.000000018  -0.000000489  -0.000000000   0.000000125  -0.000000000   0.000000260
                        -0.000000066   0.000000000  -0.000000026  -0.000000718  -0.000000001   0.000000093   0.000000000   0.000000086

   39    5.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001
                        -0.000000002  -0.000000304   0.000000119  -0.000000004  -0.000000310  -0.000000001  -0.000000378   0.000000000

   40    6.1  1.5 -0.5  -0.000000001  -0.000000213   0.000000069  -0.000000002  -0.000000290  -0.000000001   0.000000127  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   41    7.1  1.5 -0.5  -0.000000696   0.000000005  -0.000000003  -0.000000073   0.000000002  -0.000000369  -0.000000000  -0.000000091
                         0.000000012  -0.000000000   0.000000002   0.000000050  -0.000000002   0.000000493  -0.000000000   0.000000274

   42    8.1  1.5 -0.5   0.000000031  -0.000000000   0.000000000   0.000000004  -0.000000000   0.000000016   0.000000000   0.000000004
                        -0.000000001   0.000000000  -0.000000000  -0.000000003   0.000000000  -0.000000022   0.000000000  -0.000000014

   43    9.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000007  -0.000000013   0.000000000  -0.000000040  -0.000000000  -0.000000003   0.000000000

   44   10.1  1.5 -0.5   0.000000000   0.000000000   0.000000001   0.000000027   0.000000000  -0.000000005  -0.000000000  -0.000000016
                         0.000000005  -0.000000000   0.000000001   0.000000040   0.000000000  -0.000000004  -0.000000000  -0.000000005

   45   11.1  1.5 -0.5   0.000000011  -0.000000000  -0.000000000  -0.000000002   0.000000000  -0.000000006   0.000000000   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000   0.000000008  -0.000000000  -0.000000001

   46   12.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000003  -0.000000006   0.000000000  -0.000000024  -0.000000000  -0.000000003   0.000000000

   47   13.1  1.5 -0.5  -0.000000000  -0.000000025   0.000000015  -0.000000001  -0.000000007  -0.000000000   0.000000020  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   48   14.1  1.5 -0.5  -0.000000000  -0.000000029   0.000000021  -0.000000001  -0.000000007  -0.000000000   0.000000025  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   49   15.1  1.5 -0.5   0.003601738   0.520608911  -0.424524903   0.015317052  -0.023596915  -0.000108614   0.680181558  -0.000330859
                         0.000031523  -0.000000348   0.000012500   0.000336668  -0.000000084   0.000021133  -0.000000026   0.001003860

   50   16.1  1.5 -0.5  -0.488879634   0.003356098   0.004022036   0.115160689  -0.002216583   0.349577290   0.000252888   0.065204839
                         0.008381475  -0.000087588  -0.002922582  -0.078467344   0.001839794  -0.467720576   0.000000277  -0.197268570

   51   17.1  1.5 -0.5   0.000001467  -0.000000018   0.000006007   0.000161957  -0.000003085   0.000762655   0.000000007  -0.000287819
                        -0.000230314  -0.030215270   0.282510890  -0.010284365   0.606829101   0.002957009   0.146788045  -0.000094930

   52    1.1  1.5 -1.5   0.000000003  -0.000000000   0.000000013   0.000000362  -0.000000002   0.000000437  -0.000000000   0.000000420
                         0.000000177  -0.000000002   0.000000020   0.000000531  -0.000000001   0.000000327   0.000000000   0.000000139

   53    2.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000003  -0.000000397   0.000000498  -0.000000019   0.000000428   0.000000002  -0.000000394  -0.000000000

   54    3.1  1.5 -1.5   0.000000250  -0.000000002   0.000000004   0.000000112   0.000000000  -0.000000020  -0.000000000  -0.000000043
                        -0.000000004   0.000000000  -0.000000003  -0.000000077  -0.000000000   0.000000027  -0.000000000   0.000000130

   55    4.1  1.5 -1.5   0.000000002   0.000000256  -0.000000071   0.000000003   0.000000313   0.000000001   0.000000406  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001

   56    5.1  1.5 -1.5   0.000000888  -0.000000006   0.000000018   0.000000496   0.000000000  -0.000000068  -0.000000001  -0.000000176
                        -0.000000015   0.000000000  -0.000000013  -0.000000338  -0.000000000   0.000000091  -0.000000000   0.000000533

   57    6.1  1.5 -1.5   0.000000003  -0.000000000   0.000000012   0.000000331  -0.000000002   0.000000445  -0.000000000   0.000000409
                         0.000000150  -0.000000001   0.000000017   0.000000485  -0.000000002   0.000000332   0.000000001   0.000000135

   58    7.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001
                         0.000000002   0.000000252  -0.000000056   0.000000002   0.000000341   0.000000002   0.000000410  -0.000000000

   59    8.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000010   0.000000002  -0.000000000  -0.000000014  -0.000000000  -0.000000019   0.000000000

   60    9.1  1.5 -1.5   0.000000008  -0.000000000  -0.000000000  -0.000000014   0.000000000  -0.000000015   0.000000000   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000009  -0.000000000   0.000000020   0.000000000  -0.000000001

   61   10.1  1.5 -1.5  -0.000000000  -0.000000013   0.000000005  -0.000000000  -0.000000014  -0.000000000  -0.000000021   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   62   11.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000006   0.000000007  -0.000000000   0.000000005   0.000000000  -0.000000004   0.000000000

   63   12.1  1.5 -1.5   0.000000006  -0.000000000  -0.000000000  -0.000000005   0.000000000  -0.000000009  -0.000000000  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000004  -0.000000000   0.000000012   0.000000000   0.000000001

   64   13.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000011   0.000000000   0.000000003
                        -0.000000016   0.000000000   0.000000000   0.000000002  -0.000000000   0.000000008   0.000000000   0.000000001

   65   14.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000004  -0.000000000   0.000000010  -0.000000000  -0.000000001
                        -0.000000022   0.000000000  -0.000000000  -0.000000006  -0.000000000   0.000000008  -0.000000000  -0.000000000

   66   15.1  1.5 -1.5   0.009588308  -0.000100197   0.010184278   0.273433695  -0.000176731   0.044929541   0.000000476  -0.339116191
                         0.559272913  -0.003778681   0.014315631   0.401287129  -0.000212988   0.033580618  -0.000664867  -0.112090927

   67   16.1  1.5 -1.5  -0.000019629   0.000000217  -0.000012319  -0.000331764   0.000002006  -0.000497338  -0.000000017   0.000696208
                         0.002164844   0.316711766  -0.407362044   0.014685014  -0.364433335  -0.001805233  -0.464744826   0.000229470

   68   17.1  1.5 -1.5   0.275184478  -0.001831098   0.016584860   0.465649339  -0.001441719   0.235127153   0.000603431   0.112757223
                        -0.004717825   0.000049300  -0.011817701  -0.317288886   0.001237451  -0.314590567   0.000000479  -0.341131983


   Nr   State  S   Sz       65            66            67            68

    1    1.1  1.5  1.5   0.000000342  -0.000000000   0.000000390   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000001   0.000000096  -0.000000001   0.000000011
                         0.000000000  -0.000000482   0.000000000  -0.000000001

    3    3.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000119   0.000000000  -0.000000096   0.000000000

    4    4.1  1.5  1.5  -0.000000000   0.000000301   0.000000000  -0.000000017
                         0.000000001   0.000000060  -0.000000000  -0.000000271

    5    5.1  1.5  1.5  -0.000000000   0.000000001  -0.000000000   0.000000000
                        -0.000000414   0.000000000  -0.000000467   0.000000000

    6    6.1  1.5  1.5   0.000000308  -0.000000000   0.000000332  -0.000000000
                        -0.000000000   0.000000001  -0.000000000   0.000000000

    7    7.1  1.5  1.5   0.000000001   0.000000066   0.000000000  -0.000000285
                         0.000000000  -0.000000335   0.000000000   0.000000018

    8    8.1  1.5  1.5  -0.000000000  -0.000000003   0.000000000   0.000000014
                         0.000000000   0.000000016   0.000000000  -0.000000001

    9    9.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000033  -0.000000000

   10   10.1  1.5  1.5  -0.000000000  -0.000000019   0.000000000   0.000000001
                        -0.000000000  -0.000000004   0.000000000   0.000000016

   11   11.1  1.5  1.5   0.000000000   0.000000001  -0.000000000   0.000000001
                        -0.000000000  -0.000000003  -0.000000000  -0.000000000

   12   12.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000017  -0.000000000

   13   13.1  1.5  1.5   0.000000003   0.000000000  -0.000000018   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000

   14   14.1  1.5  1.5  -0.000000001  -0.000000000  -0.000000029   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000

   15   15.1  1.5  1.5  -0.267360983   0.000144706  -0.498806694   0.000060831
                         0.000000012  -0.000732679   0.000000157  -0.000003927

   16   16.1  1.5  1.5   0.001698807   0.120623867   0.000070262  -0.000618814
                         0.000001258  -0.608418055  -0.000000000   0.000039618

   17   17.1  1.5  1.5   0.000000012  -0.000651420   0.000000157  -0.000003947
                         0.268945875  -0.000128593   0.500657670  -0.000061144

   18    1.1  1.5  0.5  -0.000000000   0.000000334   0.000000000   0.000000004
                         0.000000001   0.000000066   0.000000002   0.000000061

   19    2.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000120  -0.000000000   0.000001085  -0.000000000

   20    3.1  1.5  0.5  -0.000000000  -0.000000018   0.000000000   0.000000047
                        -0.000000000   0.000000090   0.000000000  -0.000000003

   21    4.1  1.5  0.5   0.000000379  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000001   0.000000000  -0.000000000

   22    5.1  1.5  0.5  -0.000000001  -0.000000048   0.000000000   0.000000095
                        -0.000000000   0.000000244   0.000000000  -0.000000006

   23    6.1  1.5  0.5  -0.000000000   0.000000334  -0.000000000   0.000000006
                         0.000000001   0.000000066   0.000000000   0.000000092

   24    7.1  1.5  0.5   0.000000000   0.000000001   0.000000000   0.000000000
                        -0.000000402   0.000000000   0.000000050  -0.000000000

   25    8.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000020  -0.000000000  -0.000000002   0.000000000

   26    9.1  1.5  0.5  -0.000000000  -0.000000006   0.000000000   0.000000027
                        -0.000000000   0.000000031   0.000000000  -0.000000002

   27   10.1  1.5  0.5  -0.000000023   0.000000000   0.000000001  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

   28   11.1  1.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000001   0.000000000   0.000000007   0.000000000

   29   12.1  1.5  0.5  -0.000000000  -0.000000004   0.000000000   0.000000016
                        -0.000000000   0.000000018   0.000000000  -0.000000001

   30   13.1  1.5  0.5   0.000000000   0.000000010  -0.000000000   0.000000001
                         0.000000000   0.000000002   0.000000000   0.000000018

   31   14.1  1.5  0.5  -0.000000000   0.000000009  -0.000000000   0.000000001
                         0.000000000   0.000000002   0.000000000   0.000000023

   32   15.1  1.5  0.5  -0.000000099   0.048577873  -0.000000019   0.018389303
                         0.000176031   0.009630960   0.000116094   0.287230914

   33   16.1  1.5  0.5  -0.000000007   0.000363872   0.000000181  -0.000007139
                        -0.153317208   0.000071823   0.577774437  -0.000110914

   34   17.1  1.5  0.5  -0.001722236  -0.129802234   0.000035291   0.289011969
                        -0.000001354   0.654713069   0.000000019  -0.018503331

   35    1.1  1.5 -0.5  -0.000000341   0.000000000  -0.000000062   0.000000002
                         0.000000000  -0.000000001  -0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000000000  -0.000000023   0.000000000   0.000001082
                        -0.000000000   0.000000118   0.000000000  -0.000000069

   37    3.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000092  -0.000000000  -0.000000047   0.000000000

   38    4.1  1.5 -0.5  -0.000000000   0.000000372   0.000000000  -0.000000000
                         0.000000001   0.000000074  -0.000000000  -0.000000000

   39    5.1  1.5 -0.5   0.000000000  -0.000000001  -0.000000000   0.000000000
                         0.000000249  -0.000000000  -0.000000095   0.000000000

   40    6.1  1.5 -0.5  -0.000000341   0.000000000  -0.000000092   0.000000000
                         0.000000000  -0.000000001  -0.000000000  -0.000000000

   41    7.1  1.5 -0.5  -0.000000001  -0.000000078   0.000000000   0.000000050
                        -0.000000000   0.000000395  -0.000000000  -0.000000003

   42    8.1  1.5 -0.5   0.000000000   0.000000004  -0.000000000  -0.000000002
                         0.000000000  -0.000000019  -0.000000000   0.000000000

   43    9.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000031  -0.000000000  -0.000000027   0.000000000

   44   10.1  1.5 -0.5   0.000000000  -0.000000023   0.000000000   0.000000000
                        -0.000000000  -0.000000004  -0.000000000   0.000000001

   45   11.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000007
                         0.000000000  -0.000000001   0.000000000  -0.000000000

   46   12.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000018  -0.000000000  -0.000000016   0.000000000

   47   13.1  1.5 -0.5  -0.000000011   0.000000000  -0.000000018   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

   48   14.1  1.5 -0.5  -0.000000009  -0.000000000  -0.000000023   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000

   49   15.1  1.5 -0.5  -0.049523379   0.000034136  -0.287818979   0.000115856
                         0.000000001  -0.000172690   0.000000090  -0.000007436

   50   16.1  1.5 -0.5  -0.000370893  -0.029816062   0.000111144   0.576593942
                        -0.000000311   0.150390055   0.000000037  -0.036915109

   51   17.1  1.5 -0.5   0.000000029  -0.001689618  -0.000000091   0.000002274
                         0.667456233  -0.000333600  -0.289603680   0.000035218

   52    1.1  1.5 -1.5  -0.000000000  -0.000000336   0.000000000  -0.000000025
                         0.000000000  -0.000000067  -0.000000000  -0.000000390

   53    2.1  1.5 -1.5   0.000000000  -0.000000001  -0.000000000   0.000000000
                         0.000000492  -0.000000000   0.000000011   0.000000001

   54    3.1  1.5 -1.5   0.000000000   0.000000023   0.000000000   0.000000096
                         0.000000000  -0.000000117   0.000000000  -0.000000006

   55    4.1  1.5 -1.5   0.000000306  -0.000000000  -0.000000271   0.000000000
                         0.000000000   0.000000001   0.000000000  -0.000000000

   56    5.1  1.5 -1.5   0.000000001   0.000000080   0.000000000   0.000000466
                         0.000000000  -0.000000406  -0.000000000  -0.000000030

   57    6.1  1.5 -1.5   0.000000000  -0.000000302  -0.000000000  -0.000000021
                        -0.000000001  -0.000000060  -0.000000000  -0.000000331

   58    7.1  1.5 -1.5   0.000000000  -0.000000001  -0.000000000  -0.000000000
                         0.000000341  -0.000000000  -0.000000286  -0.000000000

   59    8.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000016   0.000000000   0.000000014  -0.000000000

   60    9.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000033
                         0.000000000   0.000000000  -0.000000000   0.000000002

   61   10.1  1.5 -1.5  -0.000000019   0.000000000   0.000000017  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

   62   11.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000003  -0.000000000   0.000000001   0.000000000

   63   12.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000017
                         0.000000000   0.000000000  -0.000000000   0.000000001

   64   13.1  1.5 -1.5   0.000000000  -0.000000003  -0.000000000   0.000000001
                        -0.000000000  -0.000000001   0.000000000   0.000000018

   65   14.1  1.5 -1.5  -0.000000000   0.000000001   0.000000000   0.000000002
                         0.000000000   0.000000000   0.000000000   0.000000029

   66   15.1  1.5 -1.5  -0.000000543   0.262256491  -0.000000032   0.031869710
                         0.000746832   0.051994501   0.000060958   0.497787545

   67   16.1  1.5 -1.5   0.000000026  -0.001666618  -0.000000000  -0.000004489
                         0.620260145  -0.000329138  -0.000620081  -0.000070118

   68   17.1  1.5 -1.5  -0.000663991  -0.052302719  -0.000061271  -0.499634739
                        -0.000000546   0.263811125  -0.000000032   0.031987972


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   3.384%   0.000%  15.606%   0.000%   0.000%   9.574%   4.375%   0.003%   3.492%   0.001%
    2    2.1  1.5  1.5   0.000%   1.035%   0.000%  11.304%   4.981%   0.000%   0.001%   1.715%   0.002%   4.788%
    3    3.1  1.5  1.5   0.314%   0.000%  20.235%   0.001%   0.000%  28.524%   0.006%   0.000%   0.014%   0.000%
    4    4.1  1.5  1.5   0.001%   7.157%   0.000%   0.415%   0.329%   0.000%   0.013%  17.559%   0.005%  10.241%
    5    5.1  1.5  1.5   6.511%   0.001%   0.531%   0.000%   0.000%   4.034%   5.176%   0.004%  12.030%   0.005%
    6    6.1  1.5  1.5   0.941%   0.000%   0.589%   0.000%   0.000%  32.718%   3.932%   0.003%   2.768%   0.001%
    7    7.1  1.5  1.5   0.000%   0.084%   0.000%   0.074%   0.048%   0.000%   0.016%  21.727%   0.006%  13.724%
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
   18    1.1  1.5  0.5   0.002%  11.004%   0.000%   3.363%   1.679%   0.000%   0.013%  18.792%   0.000%   0.152%
   19    2.1  1.5  0.5  43.035%   0.005%   1.038%   0.000%   0.000%   0.871%   0.783%   0.000%   1.883%   0.001%
   20    3.1  1.5  0.5   0.000%   2.071%   0.000%   5.244%   1.936%   0.000%   0.003%   4.639%   0.004%   8.448%
   21    4.1  1.5  0.5   1.004%   0.000%  21.769%   0.001%   0.000%   6.338%   3.285%   0.002%   3.317%   0.001%
   22    5.1  1.5  0.5   0.001%   7.084%   0.000%  14.011%   7.142%   0.000%   0.000%   0.149%   0.006%  14.746%
   23    6.1  1.5  0.5   0.002%  16.075%   0.000%   5.789%   1.614%   0.000%   0.003%   3.733%   0.001%   3.265%
   24    7.1  1.5  0.5   0.291%   0.000%   0.030%   0.000%   0.000%   0.211%  14.056%   0.010%  21.088%   0.009%
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
   35    1.1  1.5 -0.5  11.004%   0.002%   3.363%   0.000%   0.000%   1.679%  18.792%   0.013%   0.152%   0.000%
   36    2.1  1.5 -0.5   0.005%  43.035%   0.000%   1.038%   0.871%   0.000%   0.000%   0.783%   0.001%   1.883%
   37    3.1  1.5 -0.5   2.071%   0.000%   5.244%   0.000%   0.000%   1.936%   4.639%   0.003%   8.448%   0.004%
   38    4.1  1.5 -0.5   0.000%   1.004%   0.001%  21.769%   6.338%   0.000%   0.002%   3.285%   0.001%   3.317%
   39    5.1  1.5 -0.5   7.084%   0.001%  14.011%   0.000%   0.000%   7.142%   0.149%   0.000%  14.746%   0.006%
   40    6.1  1.5 -0.5  16.075%   0.002%   5.789%   0.000%   0.000%   1.614%   3.733%   0.003%   3.265%   0.001%
   41    7.1  1.5 -0.5   0.000%   0.291%   0.000%   0.030%   0.211%   0.000%   0.010%  14.056%   0.009%  21.088%
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
   52    1.1  1.5 -1.5   0.000%   3.384%   0.000%  15.606%   9.574%   0.000%   0.003%   4.375%   0.001%   3.492%
   53    2.1  1.5 -1.5   1.035%   0.000%  11.304%   0.000%   0.000%   4.981%   1.715%   0.001%   4.788%   0.002%
   54    3.1  1.5 -1.5   0.000%   0.314%   0.001%  20.235%  28.524%   0.000%   0.000%   0.006%   0.000%   0.014%
   55    4.1  1.5 -1.5   7.157%   0.001%   0.415%   0.000%   0.000%   0.329%  17.559%   0.013%  10.241%   0.005%
   56    5.1  1.5 -1.5   0.001%   6.511%   0.000%   0.531%   4.034%   0.000%   0.004%   5.176%   0.005%  12.030%
   57    6.1  1.5 -1.5   0.000%   0.941%   0.000%   0.589%  32.718%   0.000%   0.003%   3.932%   0.001%   2.768%
   58    7.1  1.5 -1.5   0.084%   0.000%   0.074%   0.000%   0.000%   0.048%  21.727%   0.016%  13.724%   0.006%
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

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5  23.254%   0.003%   0.004%   0.187%   2.075%   0.002%   1.901%   0.000%  10.591%   0.036%
    2    2.1  1.5  1.5   0.001%  11.046%   4.224%   0.097%   0.018%  29.976%   0.000%   2.246%   0.079%  22.585%
    3    3.1  1.5  1.5   0.323%   0.000%   0.006%   0.260%   4.348%   0.002%   2.226%   0.000%  12.555%   0.045%
    4    4.1  1.5  1.5   0.001%   5.663%  21.463%   0.493%   0.000%   0.328%   0.000%   0.630%   0.000%   0.138%
    5    5.1  1.5  1.5   4.049%   0.001%   0.478%  20.788%   1.436%   0.001%  13.696%   0.001%   1.796%   0.007%
    6    6.1  1.5  1.5   6.819%   0.001%   0.033%   1.444%  11.666%   0.007%   0.221%   0.000%   4.831%   0.018%
    7    7.1  1.5  1.5   0.000%   0.283%   0.051%   0.001%   0.002%   2.885%   0.002%  25.360%   0.001%   0.243%
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
   18    1.1  1.5  0.5   0.002%  16.891%   9.406%   0.216%   0.000%   0.753%   0.000%   2.453%   0.014%   4.010%
   19    2.1  1.5  0.5   1.580%   0.000%   0.092%   4.020%   0.481%   0.000%   3.360%   0.000%   0.117%   0.000%
   20    3.1  1.5  0.5   0.001%   4.738%  17.354%   0.399%   0.009%  15.812%   0.001%  11.662%   0.025%   6.827%
   21    4.1  1.5  0.5  17.689%   0.002%   0.124%   5.403%   5.202%   0.003%   0.145%   0.000%   9.990%   0.036%
   22    5.1  1.5  0.5   0.000%   1.072%  12.990%   0.298%   0.000%   0.100%   0.000%   2.234%   0.040%  10.970%
   23    6.1  1.5  0.5   0.001%   6.489%   0.015%   0.000%   0.000%   0.002%   0.002%  30.440%   0.054%  14.847%
   24    7.1  1.5  0.5   0.091%   0.000%   0.003%   0.151%  24.877%   0.014%   3.419%   0.000%   0.145%   0.001%
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
   35    1.1  1.5 -0.5  16.891%   0.002%   0.216%   9.406%   0.753%   0.000%   2.453%   0.000%   4.010%   0.014%
   36    2.1  1.5 -0.5   0.000%   1.580%   4.020%   0.092%   0.000%   0.481%   0.000%   3.360%   0.000%   0.117%
   37    3.1  1.5 -0.5   4.738%   0.001%   0.399%  17.354%  15.812%   0.009%  11.662%   0.001%   6.827%   0.025%
   38    4.1  1.5 -0.5   0.002%  17.689%   5.403%   0.124%   0.003%   5.202%   0.000%   0.145%   0.036%   9.990%
   39    5.1  1.5 -0.5   1.072%   0.000%   0.298%  12.990%   0.100%   0.000%   2.234%   0.000%  10.970%   0.040%
   40    6.1  1.5 -0.5   6.489%   0.001%   0.000%   0.015%   0.002%   0.000%  30.440%   0.002%  14.847%   0.054%
   41    7.1  1.5 -0.5   0.000%   0.091%   0.151%   0.003%   0.014%  24.877%   0.000%   3.419%   0.001%   0.145%
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
   52    1.1  1.5 -1.5   0.003%  23.254%   0.187%   0.004%   0.002%   2.075%   0.000%   1.901%   0.036%  10.591%
   53    2.1  1.5 -1.5  11.046%   0.001%   0.097%   4.224%  29.976%   0.018%   2.246%   0.000%  22.585%   0.079%
   54    3.1  1.5 -1.5   0.000%   0.323%   0.260%   0.006%   0.002%   4.348%   0.000%   2.226%   0.045%  12.555%
   55    4.1  1.5 -1.5   5.663%   0.001%   0.493%  21.463%   0.328%   0.000%   0.630%   0.000%   0.138%   0.000%
   56    5.1  1.5 -1.5   0.001%   4.049%  20.788%   0.478%   0.001%   1.436%   0.001%  13.696%   0.007%   1.796%
   57    6.1  1.5 -1.5   0.001%   6.819%   1.444%   0.033%   0.007%  11.666%   0.000%   0.221%   0.018%   4.831%
   58    7.1  1.5 -1.5   0.283%   0.000%   0.001%   0.051%   2.885%   0.002%  25.360%   0.002%   0.243%   0.001%
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

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   2.046%   0.000%   8.497%   0.000%   0.001%  14.907%   0.000%   0.060%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.856%   0.000%   2.181%   1.906%   0.000%   0.957%   0.001%   0.000%   0.000%
    3    3.1  1.5  1.5   3.677%   0.000%   0.345%   0.000%   0.002%  22.106%   0.007%   5.002%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   9.228%   0.001%  12.044%   4.030%   0.000%  10.246%   0.015%   0.000%   0.000%
    5    5.1  1.5  1.5  17.823%   0.000%   4.479%   0.000%   0.000%   0.008%   0.010%   7.136%   0.000%   0.000%
    6    6.1  1.5  1.5   0.022%   0.000%  14.683%   0.001%   0.001%   7.209%   0.017%  12.076%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   9.390%   0.001%  11.806%   4.179%   0.000%  10.102%   0.015%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.060%   9.663%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.500%   0.084%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   2.425%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.051%   8.205%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.984%   0.006%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.000%  11.992%   0.000%   5.655%  10.619%   0.001%   2.976%   0.004%   0.000%   0.000%
   19    2.1  1.5  0.5   7.874%   0.000%   9.166%   0.001%   0.001%   6.809%   0.027%  18.857%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%  12.790%   0.000%   6.596%   0.002%   0.000%   1.437%   0.002%   0.000%   0.000%
   21    4.1  1.5  0.5   7.302%   0.000%   4.103%   0.000%   0.001%  10.255%   0.006%   4.021%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   1.467%   0.000%   6.271%   0.028%   0.000%  21.360%   0.031%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   4.105%   0.000%   4.305%   7.227%   0.001%   2.028%   0.003%   0.000%   0.000%
   24    7.1  1.5  0.5  11.428%   0.000%   9.863%   0.000%   0.001%  10.707%   0.005%   3.598%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.641%   0.085%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.208%  33.422%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.103%   0.001%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  16.341%   0.102%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.088%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.959%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5  11.992%   0.000%   5.655%   0.000%   0.001%  10.619%   0.004%   2.976%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   7.874%   0.001%   9.166%   6.809%   0.001%  18.857%   0.027%   0.000%   0.000%
   37    3.1  1.5 -0.5  12.790%   0.000%   6.596%   0.000%   0.000%   0.002%   0.002%   1.437%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   7.302%   0.000%   4.103%  10.255%   0.001%   4.021%   0.006%   0.000%   0.000%
   39    5.1  1.5 -0.5   1.467%   0.000%   6.271%   0.000%   0.000%   0.028%   0.031%  21.360%   0.000%   0.000%
   40    6.1  1.5 -0.5   4.105%   0.000%   4.305%   0.000%   0.001%   7.227%   0.003%   2.028%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%  11.428%   0.000%   9.863%  10.707%   0.001%   3.598%   0.005%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.085%  13.641%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.422%   0.208%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.103%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.102%  16.341%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.088%   0.001%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.959%   0.006%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.000%   2.046%   0.000%   8.497%  14.907%   0.001%   0.060%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.856%   0.000%   2.181%   0.000%   0.000%   1.906%   0.001%   0.957%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   3.677%   0.000%   0.345%  22.106%   0.002%   5.002%   0.007%   0.000%   0.000%
   55    4.1  1.5 -1.5   9.228%   0.000%  12.044%   0.001%   0.000%   4.030%   0.015%  10.246%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%  17.823%   0.000%   4.479%   0.008%   0.000%   7.136%   0.010%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.022%   0.001%  14.683%   7.209%   0.001%  12.076%   0.017%   0.000%   0.000%
   58    7.1  1.5 -1.5   9.390%   0.000%  11.806%   0.001%   0.000%   4.179%   0.015%  10.102%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.663%   0.060%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.084%  13.500%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.425%   0.015%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.205%   0.051%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.984%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.016%  15.140%   0.000%   1.435%   3.896%   0.001%   5.477%   0.000%  10.645%   0.000%
    9    9.1  1.5  1.5  10.091%   0.010%   6.710%   0.002%   0.000%   0.115%   0.000%   0.041%   0.000%  34.574%
   10   10.1  1.5  1.5   0.027%  25.464%   0.002%   5.944%   1.703%   0.000%   0.144%   0.000%   2.873%   0.000%
   11   11.1  1.5  1.5   0.001%   1.128%   0.001%   2.630%   6.107%   0.001%   5.735%   0.000%   0.088%   0.000%
   12   12.1  1.5  1.5   0.024%   0.000%  11.663%   0.003%   0.005%  30.439%   0.000%   4.671%   0.000%   6.304%
   13   13.1  1.5  1.5   4.022%   0.004%  31.791%   0.008%   0.001%   7.044%   0.000%   0.374%   0.000%   0.001%
   14   14.1  1.5  1.5   0.008%   0.000%   0.062%   0.000%   0.002%  12.616%   0.001%  20.386%   0.000%   0.012%
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
   25    8.1  1.5  0.5   2.149%   0.002%   1.712%   0.000%   0.000%   0.241%   0.001%  17.947%   0.000%   3.352%
   26    9.1  1.5  0.5   0.000%   0.118%   0.002%   6.018%   1.080%   0.000%   0.034%   0.000%  10.300%   0.000%
   27   10.1  1.5  0.5   7.471%   0.008%  11.587%   0.003%   0.003%  16.173%   0.000%   0.389%   0.000%   3.438%
   28   11.1  1.5  0.5   6.500%   0.007%   8.494%   0.002%   0.000%   1.456%   0.001%  14.696%   0.000%   4.496%
   29   12.1  1.5  0.5   0.006%   5.519%   0.003%  11.821%   7.165%   0.001%   0.002%   0.000%   0.314%   0.000%
   30   13.1  1.5  0.5   0.023%  22.260%   0.000%   0.088%   2.692%   0.000%   1.178%   0.000%  23.540%   0.000%
   31   14.1  1.5  0.5   0.000%   0.003%   0.000%   0.018%   9.257%   0.002%  28.923%   0.001%   0.062%   0.000%
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
   42    8.1  1.5 -0.5   0.002%   2.149%   0.000%   1.712%   0.241%   0.000%  17.947%   0.001%   3.352%   0.000%
   43    9.1  1.5 -0.5   0.118%   0.000%   6.018%   0.002%   0.000%   1.080%   0.000%   0.034%   0.000%  10.300%
   44   10.1  1.5 -0.5   0.008%   7.471%   0.003%  11.587%  16.173%   0.003%   0.389%   0.000%   3.438%   0.000%
   45   11.1  1.5 -0.5   0.007%   6.500%   0.002%   8.494%   1.456%   0.000%  14.696%   0.001%   4.496%   0.000%
   46   12.1  1.5 -0.5   5.519%   0.006%  11.821%   0.003%   0.001%   7.165%   0.000%   0.002%   0.000%   0.314%
   47   13.1  1.5 -0.5  22.260%   0.023%   0.088%   0.000%   0.000%   2.692%   0.000%   1.178%   0.000%  23.540%
   48   14.1  1.5 -0.5   0.003%   0.000%   0.018%   0.000%   0.002%   9.257%   0.001%  28.923%   0.000%   0.062%
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
   59    8.1  1.5 -1.5  15.140%   0.016%   1.435%   0.000%   0.001%   3.896%   0.000%   5.477%   0.000%  10.645%
   60    9.1  1.5 -1.5   0.010%  10.091%   0.002%   6.710%   0.115%   0.000%   0.041%   0.000%  34.574%   0.000%
   61   10.1  1.5 -1.5  25.464%   0.027%   5.944%   0.002%   0.000%   1.703%   0.000%   0.144%   0.000%   2.873%
   62   11.1  1.5 -1.5   1.128%   0.001%   2.630%   0.001%   0.001%   6.107%   0.000%   5.735%   0.000%   0.088%
   63   12.1  1.5 -1.5   0.000%   0.024%   0.003%  11.663%  30.439%   0.005%   4.671%   0.000%   6.304%   0.000%
   64   13.1  1.5 -1.5   0.004%   4.022%   0.008%  31.791%   7.044%   0.001%   0.374%   0.000%   0.001%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.008%   0.000%   0.062%  12.616%   0.002%  20.386%   0.001%   0.012%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.402%   0.004%  15.780%   0.013%   1.039%   0.757%   0.007%   7.685%   0.013%   3.701%
    9    9.1  1.5  1.5   0.002%   0.184%   0.002%   1.971%   0.044%   0.060%  21.054%   0.020%   0.283%   0.001%
   10   10.1  1.5  1.5   0.217%   0.002%  13.482%   0.011%   6.944%   5.060%   0.008%   8.609%   0.014%   4.107%
   11   11.1  1.5  1.5  44.690%   0.416%   1.802%   0.001%   0.325%   0.237%   0.008%   8.434%   0.011%   3.331%
   12   12.1  1.5  1.5   0.041%   4.416%   0.000%   0.005%   0.008%   0.010%   0.139%   0.000%   1.562%   0.005%
   13   13.1  1.5  1.5   0.053%   5.689%   0.000%   0.157%   3.814%   5.236%   6.931%   0.007%   9.913%   0.034%
   14   14.1  1.5  1.5   0.000%   0.012%   0.002%   2.618%  12.649%  17.357%   0.028%   0.000%   6.699%   0.023%
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
   25    8.1  1.5  0.5   0.220%  23.654%   0.000%   0.071%   0.512%   0.704%   1.348%   0.001%  18.020%   0.062%
   26    9.1  1.5  0.5   0.177%   0.002%   6.423%   0.005%   1.975%   1.438%   0.002%   2.041%   0.038%  11.209%
   27   10.1  1.5  0.5   0.150%  16.161%   0.003%   3.415%   2.268%   3.113%  11.262%   0.011%   8.285%   0.028%
   28   11.1  1.5  0.5   0.003%   0.276%   0.000%   0.007%   2.028%   2.784%   7.262%   0.007%   2.442%   0.008%
   29   12.1  1.5  0.5   2.992%   0.028%  37.787%   0.031%   3.015%   2.198%   0.013%  13.959%   0.036%  10.480%
   30   13.1  1.5  0.5   0.201%   0.002%  12.434%   0.010%   3.474%   2.531%   0.011%  11.154%   0.034%   9.903%
   31   14.1  1.5  0.5   0.007%   0.000%   3.968%   0.003%  11.816%   8.605%   0.000%   0.000%   0.033%   9.724%
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
   42    8.1  1.5 -0.5  23.654%   0.220%   0.071%   0.000%   0.704%   0.512%   0.001%   1.348%   0.062%  18.020%
   43    9.1  1.5 -0.5   0.002%   0.177%   0.005%   6.423%   1.438%   1.975%   2.041%   0.002%  11.209%   0.038%
   44   10.1  1.5 -0.5  16.161%   0.150%   3.415%   0.003%   3.113%   2.268%   0.011%  11.262%   0.028%   8.285%
   45   11.1  1.5 -0.5   0.276%   0.003%   0.007%   0.000%   2.784%   2.028%   0.007%   7.262%   0.008%   2.442%
   46   12.1  1.5 -0.5   0.028%   2.992%   0.031%  37.787%   2.198%   3.015%  13.959%   0.013%  10.480%   0.036%
   47   13.1  1.5 -0.5   0.002%   0.201%   0.010%  12.434%   2.531%   3.474%  11.154%   0.011%   9.903%   0.034%
   48   14.1  1.5 -0.5   0.000%   0.007%   0.003%   3.968%   8.605%  11.816%   0.000%   0.000%   9.724%   0.033%
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
   59    8.1  1.5 -1.5   0.004%   0.402%   0.013%  15.780%   0.757%   1.039%   7.685%   0.007%   3.701%   0.013%
   60    9.1  1.5 -1.5   0.184%   0.002%   1.971%   0.002%   0.060%   0.044%   0.020%  21.054%   0.001%   0.283%
   61   10.1  1.5 -1.5   0.002%   0.217%   0.011%  13.482%   5.060%   6.944%   8.609%   0.008%   4.107%   0.014%
   62   11.1  1.5 -1.5   0.416%  44.690%   0.001%   1.802%   0.237%   0.325%   8.434%   0.008%   3.331%   0.011%
   63   12.1  1.5 -1.5   4.416%   0.041%   0.005%   0.000%   0.010%   0.008%   0.000%   0.139%   0.005%   1.562%
   64   13.1  1.5 -1.5   5.689%   0.053%   0.157%   0.000%   5.236%   3.814%   0.007%   6.931%   0.034%   9.913%
   65   14.1  1.5 -1.5   0.012%   0.000%   2.618%   0.002%  17.357%  12.649%   0.000%   0.028%   0.023%   6.699%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.023%  10.006%   0.000%   5.599%   8.629%   0.009%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   1.922%   0.004%   9.238%   0.000%   0.000%   0.089%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.020%   8.662%   0.000%   5.973%   8.287%   0.009%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.032%  13.870%   0.000%   2.035%   0.859%   0.001%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5  15.676%   0.037%   9.783%   0.000%   0.017%  15.147%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   1.478%   0.003%  18.401%   0.000%   0.005%   4.043%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5  15.619%   0.036%   0.621%   0.000%   0.013%  11.229%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  31.288%  23.580%   0.031%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.031%   0.000%   0.022%  16.594%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.575%  31.750%   0.041%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   1.940%   0.005%   7.238%   0.000%   0.008%   7.086%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.015%   6.266%   0.000%  17.046%   2.180%   0.002%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   1.857%   0.004%   8.312%   0.000%   0.007%   5.950%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   7.394%   0.017%  11.820%   0.000%   0.015%  13.842%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.002%   0.922%   0.000%   3.204%   0.413%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.008%   3.396%   0.000%   0.195%   5.896%   0.007%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.025%  10.760%   0.000%   0.536%  16.239%   0.018%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  27.103%   0.001%   0.023%  18.022%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  23.907%   1.942%   0.002%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.091%   0.000%   0.011%   7.981%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.005%   1.940%   0.000%   7.238%   7.086%   0.008%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   6.266%   0.015%  17.046%   0.000%   0.002%   2.180%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.004%   1.857%   0.000%   8.312%   5.950%   0.007%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.017%   7.394%   0.000%  11.820%  13.842%   0.015%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.922%   0.002%   3.204%   0.000%   0.000%   0.413%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   3.396%   0.008%   0.195%   0.000%   0.007%   5.896%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5  10.760%   0.025%   0.536%   0.000%   0.018%  16.239%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  27.103%  18.022%   0.023%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  23.907%   0.001%   0.002%   1.942%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.091%   7.981%   0.011%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5  10.006%   0.023%   5.599%   0.000%   0.009%   8.629%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.004%   1.922%   0.000%   9.238%   0.089%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   8.662%   0.020%   5.973%   0.000%   0.009%   8.287%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5  13.870%   0.032%   2.035%   0.000%   0.001%   0.859%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.037%  15.676%   0.000%   9.783%  15.147%   0.017%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.003%   1.478%   0.000%  18.401%   4.043%   0.005%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.036%  15.619%   0.000%   0.621%  11.229%   0.013%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  31.288%   0.001%   0.031%  23.580%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  10.031%  16.594%   0.022%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.575%   0.000%   0.041%  31.750%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.315%   0.000%  12.756%   0.000%   7.148%   0.000%  24.881%   0.000%
   16   16.1  1.5  1.5   0.000%  13.281%   0.000%  21.599%   0.000%  38.472%   0.000%   0.000%
   17   17.1  1.5  1.5  15.425%   0.000%  12.909%   0.000%   7.233%   0.000%  25.066%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.056%   0.000%  46.265%   0.000%   0.245%   0.000%   8.284%
   33   16.1  1.5  0.5  34.097%   0.001%   4.317%   0.000%   2.351%   0.000%  33.382%   0.000%
   34   17.1  1.5  0.5   0.001%  36.824%   0.000%   2.155%   0.000%  44.550%   0.000%   8.387%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.056%   0.000%  46.265%   0.000%   0.245%   0.000%   8.284%   0.000%
   50   16.1  1.5 -0.5   0.001%  34.097%   0.000%   4.317%   0.000%   2.351%   0.000%  33.382%
   51   17.1  1.5 -0.5  36.824%   0.001%   2.155%   0.000%  44.550%   0.000%   8.387%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.315%   0.000%  12.756%   0.000%   7.148%   0.000%  24.881%
   67   16.1  1.5 -1.5  13.281%   0.000%  21.599%   0.000%  38.472%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%  15.425%   0.000%  12.909%   0.000%   7.233%   0.000%  25.066%


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
              1      24      163.76       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      405.55       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4482.86   3158.50   1320.92      1.49      0.87      0.90
 REAL TIME  *      4750.81 SEC
 DISK USED  *       442.11 MB (local),        4.64 GB (total)
 SF USED    *         3.92 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-DK energy=  -1392.491622520581

              CI           MULTI         RHF-SCF
  -1392.43727285  -1391.78928728  -1391.87897316
 **********************************************************************************************************************************
 Molpro calculation terminated
