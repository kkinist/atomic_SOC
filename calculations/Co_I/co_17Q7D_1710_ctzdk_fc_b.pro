
 Working directory              : /wrk/irikura/molpro.vOxGFoALbo/
 Global scratch directory       : /wrk/irikura/molpro.vOxGFoALbo/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.vOxGFoALbo/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   10
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Co atom
                                                                                 ! 4F + 4F + 4P  + 2F
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
 title, Preparatory quartets
 
                                                                                 ! add 2F
 {multi
     closed,2,3
     wf,nelec=27,sym=1,spin=3; state,17;
       weight,1,1,1,1,1,1,1, 5,5,5, 5,5,5,5,5,5,5,5
     wf,nelec=27,sym=1,spin=1; state,7;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3; state,17;save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,7;save,5102.2}
 hlsdiag(18) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ls,5101.2,5102.2;print,vls=0,hls=0}
 
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.08 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Co ato                                                                        
  64 bit mpp version                                                                     DATE: 02-Feb-24          TIME: 23:06:35  
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

     16.253 MB (compressed) written to integral file ( 15.7%)

     Node minimum: 0.786 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     701287.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     701287      RECORD LENGTH: 524288

 Memory used in sort:       1.26 MW

 SORT1 READ    12883698. AND WROTE      138706. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.08 SEC
 SORT2 READ     1353984. AND WROTE     7035726. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         1.01      0.83
 REAL TIME  *         1.83 SEC
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
    1    1    0   -1391.62971478   -1391.62971478    1.20096375    1.20096375    0.00000000    0    0.41E+00      0.04
    2    1    0   -1391.61079662       0.01891816    1.38052821    1.38052821    0.00000000    0    0.26E+00      0.08
    3    1    0   -1391.66735478      -0.05655816    1.21641999    1.21641999    0.00000000    0    0.28E+00      0.12
    4    1    0   -1391.66072944       0.00662534    1.15427322    1.15427322    0.00000000    0    0.21E+00      0.15
    5    1    0   -1391.70113846      -0.04040902    0.95674120    0.95674120    0.00000000    1    0.91E-01      0.19
    6    2    0   -1391.75347421      -0.05233575    0.16866695    0.16866695    0.00000000    2    0.31E+00      0.23
    7    2    0   -1391.76582331      -0.01234910    0.10420503    0.10420503    0.00000000    2    0.37E+00      0.29
    8    2    0   -1391.79471826      -0.02889496    0.22126102    0.22126102    0.00000000    2    0.36E+00      0.33
    9    2    0   -1391.83495591      -0.04023764    0.27910681    0.27910681    0.00000000    3    0.37E+00      0.37
   10    2    0   -1391.84581563      -0.01085973    0.21873497    0.21873497    0.00000000    4    0.31E+00      0.41
   11    2    0   -1391.86492604      -0.01911041    0.19443059    0.19443059    0.00000000    5    0.28E+00      0.45
   12    2    0   -1391.87385367      -0.00892763    0.12925330    0.12925330    0.00000000    6    0.81E-01      0.49
   13    2    0   -1391.87789795      -0.00404429    0.07025870    0.07025870    0.00000000    7    0.25E-01      0.53
   14    2    0   -1391.87880567      -0.00090772    0.03376230    0.03376230    0.00000000    8    0.19E-01      0.57
   15    2    0   -1391.87896647      -0.00016079    0.00536331    0.00536331    0.00000000    9    0.34E-02      0.61
   16    2    0   -1391.87897249      -0.00000602    0.00195332    0.00195332    0.00000000   10    0.18E-02      0.65
   17    2    0   -1391.87897310      -0.00000061    0.00073346    0.00073346    0.00000000   10    0.89E-03      0.69
   18    2    0   -1391.87897316      -0.00000006    0.00019270    0.00019270    0.00000000   10    0.26E-03      0.73
   19    2    0   -1391.87897316      -0.00000000    0.00004876    0.00004876    0.00000000   10    0.57E-04      0.77
   20    2    0   -1391.87897316      -0.00000000    0.00001636    0.00001636    0.00000000   10    0.14E-04      0.81
   21    2    0   -1391.87897316      -0.00000000    0.00000342    0.00000342    0.00000000   10    0.31E-05      0.85

 CONVERGENCE REACHED!  Final gradient:     0.00000049 ( 0.49E-06)
                       Final energy:   -1391.87897316
 

 Final alpha occupancy:   9   6
 Final beta  occupancy:   6   6

 !RHF STATE 1.1 Energy              -1391.878973161691
  RHF One-electron energy           -1927.325490925431
  RHF Two-electron energy             535.446517763740
  RHF Kinetic energy                 1454.770717755028
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.956768620769

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.76981     1  1  s    0.97814
    2.1     2.00000   -35.46442     1  2  s    0.99654
    3.1     2.00000    -4.62008     1  3  s    0.98440
    4.1     2.00000    -0.61914     1  1  d2+ -0.57922    1  1  d1-  0.80970
    5.1     2.00000    -0.61914     1  1  d2- -0.57764    1  1  d1+  0.81095
    6.1     2.00000    -0.27156     1  4  s    1.01964
    7.1     1.00000    -0.71737     1  1  d0  -0.99227
    8.1     1.00000    -0.71737     1  1  d1+  0.25914    1  1  d2+  0.78019    1  1  d1-  0.51360
    9.1     1.00000    -0.71737     1  1  d2-  0.77986    1  1  d1+  0.51212    1  1  d1- -0.25765
    1.2     2.00000   -30.23332     1  1  pz   0.99682
    2.2     2.00000   -30.23332     1  1  px   0.44127    1  1  py   0.89605
    3.2     2.00000   -30.23332     1  1  px   0.89629    1  1  py  -0.43836
    4.2     2.00000    -3.02535     1  2  pz   0.99712
    5.2     2.00000    -3.02535     1  2  px   0.35265    1  2  py   0.93333
    6.2     2.00000    -3.02535     1  2  px   0.93340    1  2  py  -0.35169


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
 CPU TIMES  *         1.80      0.79      0.83
 REAL TIME  *         2.73 SEC
 DISK USED  *        30.06 MB (local),      348.98 MB (total)
 SF USED    *         1.89 MB
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.242D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.156D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.472D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.470D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.322D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.165D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.574D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.581D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 1 2 5 3 1   2 3 5 6 4 1 2 5 3 6   4 1 2 5 3 6 4 711 9   81210131415 1 2 5 3
                                        6 4 711 912 8141013  15 2 5 3 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.954D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.351D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.359D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.693D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.296D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.300D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 1 3   2 1 3 2 1 6 5 4 7 8  10 9 2 1 3 6 5 4 7 8  10 9 3 2 1 6 5 4 7 8
                                       10 9 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.01754   0.01754   0.01754   0.01754   0.01754   0.01754   0.01754   0.08772
                                          0.08772   0.08772   0.08772   0.08772   0.08772   0.08772   0.08772   0.08772
                                          0.08772
 
 Number of orbital rotations:  689  ( 23 closed/active, 213 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    1641
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0  -1391.71945044   -1391.78373464   -0.06428420    0.69886800 0.00001295 0.00000000  0.14E+00      0.26
   2    7    6    0  -1391.78559198   -1391.78573382   -0.00014183    0.02804652 0.00000675 0.00000000  0.86E-02      0.64
   3   21   21    0  -1391.78573410   -1391.78573410   -0.00000000    0.00007642 0.00000011 0.00000000  0.32E-04      1.18
   4   20   20    0  -1391.78573410   -1391.78573410   -0.00000000    0.00000032 0.00000044 0.00000000  0.25E-06      1.72

 CONVERGENCE REACHED!  Final gradient:    0.00000033 ( 0.33E-06)
                       Final energy:  -1391.78573410
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -1391.828778544463
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276277
 One electron energy                         -1920.67961391
 Two electron energy                           528.85083537
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -1391.828778533616
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276215
 One electron energy                         -1920.67961287
 Two electron energy                           528.85083434
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -1391.828778508206
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276065
 One electron energy                         -1920.67961043
 Two electron energy                           528.85083192
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -1391.828778507933
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52276065
 One electron energy                         -1920.67961045
 Two electron energy                           528.85083194
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -1391.828778495348
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52275986
 One electron energy                         -1920.67960915
 Two electron energy                           528.85083065
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -1391.828778494344
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52275983
 One electron energy                         -1920.67960904
 Two electron energy                           528.85083055
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -1391.828778486042
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.52275937
 One electron energy                         -1920.67960834
 Two electron energy                           528.85082985
 Virial ratio                                    1.95953598
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy                     -1391.789287310014
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829539
 One electron energy                         -1936.90226738
 Two electron energy                           545.11298007
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 8.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy                     -1391.789287298339
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829601
 One electron energy                         -1936.90226842
 Two electron energy                           545.11298112
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 9.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy                    -1391.789287272773
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829749
 One electron energy                         -1936.90227083
 Two electron energy                           545.11298356
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 10.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1
 ======================
 !MCSCF STATE 11.1 Energy                    -1391.789287271808
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829750
 One electron energy                         -1936.90227086
 Two electron energy                           545.11298359
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 11.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1
 ======================
 !MCSCF STATE 12.1 Energy                    -1391.789287256614
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829827
 One electron energy                         -1936.90227213
 Two electron energy                           545.11298487
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 12.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1
 ======================
 !MCSCF STATE 13.1 Energy                    -1391.789287255164
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829831
 One electron energy                         -1936.90227223
 Two electron energy                           545.11298498
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 13.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1
 ======================
 !MCSCF STATE 14.1 Energy                    -1391.789287249543
 Nuclear energy                                  0.00000000
 Kinetic energy                               1457.22829876
 One electron energy                         -1936.90227294
 Two electron energy                           545.11298569
 Virial ratio                                    1.95509351
 
 !MCSCF STATE 14.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1
 ======================
 !MCSCF STATE 15.1 Energy                    -1391.757355973614
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.51557037
 One electron energy                         -1920.66321613
 Two electron energy                           528.90586015
 Virial ratio                                    1.95949150
 
 !MCSCF STATE 15.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1
 ======================
 !MCSCF STATE 16.1 Energy                    -1391.757355972880
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.51557042
 One electron energy                         -1920.66321625
 Two electron energy                           528.90586028
 Virial ratio                                    1.95949150
 
 !MCSCF STATE 16.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1
 ======================
 !MCSCF STATE 17.1 Energy                    -1391.757355970153
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.51556997
 One electron energy                         -1920.66321550
 Two electron energy                           528.90585953
 Virial ratio                                    1.95949150
 
 !MCSCF STATE 17.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     4.037583399993
 !MCSCF expec                      <2.1|LXLX|2.1>     3.999999998981
 !MCSCF expec                      <3.1|LXLX|3.1>     8.988254740165
 !MCSCF expec                      <4.1|LXLX|4.1>     0.958421949030
 !MCSCF expec                      <5.1|LXLX|5.1>     1.011742316919
 !MCSCF expec                      <6.1|LXLX|6.1>     3.041578612834
 !MCSCF expec                      <7.1|LXLX|7.1>     5.962422258755
 !MCSCF expec                      <8.1|LXLX|8.1>     3.948507439220
 !MCSCF expec                      <9.1|LXLX|9.1>     4.000000000036
 !MCSCF expec                    <10.1|LXLX|10.1>     1.100582196953
 !MCSCF expec                    <11.1|LXLX|11.1>     8.992033836236
 !MCSCF expec                    <12.1|LXLX|12.1>     1.007964104940
 !MCSCF expec                    <13.1|LXLX|13.1>     2.899418420136
 !MCSCF expec                    <14.1|LXLX|14.1>     6.051489269230
 !MCSCF expec                    <15.1|LXLX|15.1>     0.000000059883
 !MCSCF expec                    <16.1|LXLX|16.1>     0.999999877970
 !MCSCF expec                    <17.1|LXLX|17.1>     0.999999999836
 
 !MCSCF expec                      <1.1|LYLY|1.1>     3.962510534426
 !MCSCF expec                      <2.1|LYLY|2.1>     4.000000001535
 !MCSCF expec                      <3.1|LYLY|3.1>     1.353200403679
 !MCSCF expec                      <4.1|LYLY|4.1>     8.827093107539
 !MCSCF expec                      <5.1|LYLY|5.1>     2.646803754387
 !MCSCF expec                      <6.1|LYLY|6.1>     1.172901979537
 !MCSCF expec                      <7.1|LYLY|7.1>     6.037483831622
 !MCSCF expec                      <8.1|LYLY|8.1>     4.051669943656
 !MCSCF expec                      <9.1|LYLY|9.1>     3.999999999917
 !MCSCF expec                    <10.1|LYLY|10.1>     8.908960522928
 !MCSCF expec                    <11.1|LYLY|11.1>     1.623145857560
 !MCSCF expec                    <12.1|LYLY|12.1>     2.376865937914
 !MCSCF expec                    <13.1|LYLY|13.1>     1.091038790523
 !MCSCF expec                    <14.1|LYLY|14.1>     5.948333364469
 !MCSCF expec                    <15.1|LYLY|15.1>     0.999999941008
 !MCSCF expec                    <16.1|LYLY|16.1>     0.000000122053
 !MCSCF expec                    <17.1|LYLY|17.1>     0.999999999968
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     3.999906065581
 !MCSCF expec                      <2.1|LZLZ|2.1>     3.999999999485
 !MCSCF expec                      <3.1|LZLZ|3.1>     1.658544856157
 !MCSCF expec                      <4.1|LZLZ|4.1>     2.214484943432
 !MCSCF expec                      <5.1|LZLZ|5.1>     8.341453928695
 !MCSCF expec                      <6.1|LZLZ|6.1>     7.785519407630
 !MCSCF expec                      <7.1|LZLZ|7.1>     0.000093909624
 !MCSCF expec                      <8.1|LZLZ|8.1>     3.999822617124
 !MCSCF expec                      <9.1|LZLZ|9.1>     4.000000000048
 !MCSCF expec                    <10.1|LZLZ|10.1>     1.990457280119
 !MCSCF expec                    <11.1|LZLZ|11.1>     1.384820306205
 !MCSCF expec                    <12.1|LZLZ|12.1>     8.615169957147
 !MCSCF expec                    <13.1|LZLZ|13.1>     8.009542789343
 !MCSCF expec                    <14.1|LZLZ|14.1>     0.000177366302
 !MCSCF expec                    <15.1|LZLZ|15.1>     0.999999999111
 !MCSCF expec                    <16.1|LZLZ|16.1>     0.999999999979
 !MCSCF expec                    <17.1|LZLZ|17.1>     0.000000000197
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000001
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000001
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000001
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000001
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000001
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000001
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000001
 !MCSCF expec                      <8.1|L**2|8.1>    12.000000000001
 !MCSCF expec                      <9.1|L**2|9.1>    12.000000000001
 !MCSCF expec                    <10.1|L**2|10.1>    12.000000000001
 !MCSCF expec                    <11.1|L**2|11.1>    12.000000000001
 !MCSCF expec                    <12.1|L**2|12.1>    12.000000000001
 !MCSCF expec                    <13.1|L**2|13.1>    12.000000000001
 !MCSCF expec                    <14.1|L**2|14.1>    12.000000000001
 !MCSCF expec                    <15.1|L**2|15.1>     2.000000000002
 !MCSCF expec                    <16.1|L**2|16.1>     2.000000000002
 !MCSCF expec                    <17.1|L**2|17.1>     2.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 2 5 4 1 1   2 3 5 6 4 1 2 3 6 5   4 1 2 3 6 5 4 912 7   81514111013 1 2 3 4
                                        5 6 9121415 7 81013  11 2 4 5 3 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 1 3 3 1 2 1   3 2 1 2 3 810 5 4 6   7 9 1 2 3 6 4 5 9 7   810 1 2 3 4 610 5 7
                                        9 8 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.64347     1  1  s    0.97813
    2.1     2.00000   -35.30552     1  2  s    0.99662
    3.1     2.00000    -4.50254     1  3  s    0.98907
    4.1     1.52310    -0.28562     1  1  d1-  1.00058
    5.1     1.52310    -0.28562     1  1  d2-  1.00058
    6.1     1.52310    -0.28562     1  1  d0  -1.00058
    7.1     1.52310    -0.28562     1  1  d2+  1.00058
    8.1     1.52310    -0.28562     1  1  d1+  1.00058
    9.1     1.38596    -0.15815     1  4  s    1.01632
    1.2     2.00000   -30.02187     1  1  px   0.99894
    2.2     2.00000   -30.02187     1  1  pz   0.99894
    3.2     2.00000   -30.02187     1  1  py   0.99894
    4.2     1.99952    -2.97126     1  2  py   0.99960
    5.2     1.99952    -2.97126     1  2  px   0.99960
    6.2     1.99952    -2.97126     1  2  pz   0.99960
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================

 State:                1               2               3               4               5               6               7
 222aa2a 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22aa22a 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000001
 2aa22a2 222     -0.00000668      0.99953185      0.00000076     -0.00001831     -0.00000564     -0.00000025      0.00000137
 2a22aa2 222      0.99952011      0.00000667      0.00000039      0.00000396      0.00000109     -0.00000199      0.00484372
 2a222aa 222     -0.00000001      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22aaa22 222     -0.00433235     -0.00000126     -0.00000069      0.00000439      0.00001636      0.00000754      0.89399789
 2a2a2a2 222      0.00216619      0.00000063      0.00000035     -0.00000219     -0.00000818     -0.00000377     -0.44699913
 22aa2a2 222      0.00000086      0.00000441     -0.00013803      0.22882064     -0.00011528      0.86422920     -0.00000840
 2a22a2a 222      0.00000000     -0.00000000      0.00000000     -0.00000001     -0.00000000      0.00000001      0.00000000
 2aaa222 222     -0.00000071      0.00000495     -0.32166706     -0.00020008      0.83413505      0.00011287     -0.00001551
 2222aaa 222     -0.00000000     -0.00000000      0.00000001      0.00000000      0.00000001      0.00000000      0.00000000
 2a2aa22 222     -0.00000396      0.00001417     -0.00049255      0.77958098      0.00005627     -0.43761207     -0.00000016
 22a2aa2 222      0.00000179     -0.00001073      0.00036407     -0.58220110      0.00003407     -0.24630763      0.00000494
 2aa2a22 222      0.00000006      0.00000148     -0.60558165     -0.00037995      0.18137373      0.00002807     -0.00000379
 22a22aa 222      0.00000000     -0.00000000     -0.00000000      0.00000001      0.00000000     -0.00000001      0.00000000
 222aaa2 222     -0.00000081      0.00000239      0.72723083      0.00045801      0.51998672      0.00006425     -0.00000895
 2aa222a 222      0.00000000      0.00000000     -0.00000001     -0.00000000      0.00000001      0.00000000     -0.00000000
 222a2aa 222     -0.00000000      0.00000000     -0.00000001     -0.00000000      0.00000000     -0.00000000      0.00000000
 2a2a22a 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000001     -0.00000000
 22a2a2a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000002
 
 Energy:      -1391.82877854  -1391.82877853  -1391.82877851  -1391.82877851  -1391.82877850  -1391.82877849  -1391.82877849

 State:                8               9              10              11              12              13              14
 222aa2a 222      0.00000567      1.00000000     -0.00000018     -0.00000075      0.00000266      0.00000259      0.00000121
 22aa22a 222      0.99997783     -0.00000568     -0.00000331      0.00000034     -0.00000120      0.00000186      0.00665926
 2aa22a2 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2a22aa2 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000001
 2a222aa 222     -0.00595622     -0.00000105      0.00000483     -0.00000084      0.00002169      0.00000826      0.89440730
 22aaa22 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000001
 2a2a2a2 222      0.00000001     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000005
 22aa2a2 222     -0.00000000      0.00000000     -0.00000001      0.00000000      0.00000000     -0.00000001      0.00000000
 2a22a2a 222     -0.00000065     -0.00000217      0.26389225     -0.00008400      0.00000136      0.85461145     -0.00000933
 2aaa222 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000002      0.00000000      0.00000000
 2222aaa 222      0.00000123     -0.00000244     -0.00012214     -0.37930197      0.81001844     -0.00000085     -0.00001999
 2a2aa22 222      0.00000000     -0.00000000     -0.00000002      0.00000000      0.00000000      0.00000000     -0.00000000
 22a2aa2 222     -0.00000000     -0.00000000     -0.00000002      0.00000000      0.00000000     -0.00000001      0.00000000
 2aa2a22 222     -0.00000000      0.00000000     -0.00000000     -0.00000003      0.00000002     -0.00000000     -0.00000000
 22a22aa 222      0.00000339      0.00000135      0.76150085     -0.00022565      0.00000867     -0.46916560      0.00000024
 222aaa2 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2aa222a 222      0.00000054     -0.00000099      0.00020081      0.68947137      0.56976231      0.00000486     -0.00001317
 222a2aa 222     -0.00000040      0.00000083      0.00018645      0.61705685     -0.13871203      0.00000330      0.00000394
 2a2a22a 222      0.00000158     -0.00000047      0.59201119     -0.00017877      0.00000579      0.22253744     -0.00000525
 22a2a2a 222      0.00297812      0.00000053     -0.00000242      0.00000042     -0.00001085     -0.00000413     -0.44720379
 
 Energy:      -1391.78928731  -1391.78928730  -1391.78928727  -1391.78928727  -1391.78928726  -1391.78928726  -1391.78928725

 State:               15              16              17
 222aa2a 222      0.00000000     -0.00000000      0.00000000
 22aa22a 222      0.00000000      0.00000000     -0.00000001
 2aa22a2 222      0.00000000      0.00000000     -0.00000000
 2a22aa2 222      0.00000000      0.00000000     -0.00000001
 2a222aa 222     -0.00000001     -0.00000000      0.00027822
 22aaa22 222     -0.00001332     -0.00000203      0.44669503
 2a2a2a2 222     -0.00002664     -0.00000406      0.89338967
 22aa2a2 222      0.44669497     -0.00010850      0.00001332
 2a22a2a 222     -0.00027826      0.00000007     -0.00000001
 2aaa222 222     -0.00010850     -0.44669498     -0.00000203
 2222aaa 222      0.00000007      0.00027824      0.00000000
 2a2aa22 222      0.44669491     -0.00010850      0.00001332
 22a2aa2 222      0.77369810     -0.00018792      0.00002307
 2aa2a22 222      0.00018792      0.77369810      0.00000352
 22a22aa 222     -0.00027826      0.00000007     -0.00000001
 222aaa2 222      0.00010850      0.44669491      0.00000203
 2aa222a 222     -0.00000007     -0.00027827     -0.00000000
 222a2aa 222      0.00000012      0.00048200      0.00000000
 2a2a22a 222      0.00048201     -0.00000012      0.00000001
 22a2a2a 222     -0.00000002     -0.00000000      0.00055655
 
 Energy:      -1391.75735597  -1391.75735597  -1391.75735597
 


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
 CPU TIMES  *         3.34      1.54      0.79      0.83
 REAL TIME  *         4.72 SEC
 DISK USED  *        37.30 MB (local),      421.40 MB (total)
 SF USED    *        22.47 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Preparatory quartets

          ENERGY     LL
    -1391.828779   12.0
    -1391.828779   12.0
    -1391.828779   12.0
    -1391.828779   12.0
    -1391.828778   12.0
    -1391.828778   12.0
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

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 3 2 5 4 1 1   2 3 5 6 4 1 2 3 6 5   4 1 2 3 6 5 4 912 7   81514111013 1 2 3 4
                                        5 6 9121415 7 81013  11 2 4 5 3 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 1 3 3 1 2 1   3 2 1 2 3 810 5 4 6   7 9 1 2 3 6 4 5 9 7   810 1 2 3 4 610 5 7
                                        9 8 3 1 2

 Wavefunction dump at record             2141.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.01562   0.01562   0.01562   0.01562   0.01562   0.01562   0.01562   0.07812
                                          0.07812   0.07812   0.07812   0.07812   0.07812   0.07812   0.07812   0.07812
                                          0.07812
 Weight factors for state symmetry  2:    0.01562   0.01562   0.01562   0.01562   0.01562   0.01562   0.01562
 
 Number of orbital rotations:  689  ( 23 closed/active, 213 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3258
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -1391.78350514   -1391.78373586   -0.00023072    0.04024437 0.00000056 0.00000000  0.12E-01      0.49
   2    6   12    0  -1391.78373651   -1391.78373651   -0.00000000    0.00011560 0.00000056 0.00000000  0.66E-04      1.13
   3   22   44    0  -1391.78373651   -1391.78373651    0.00000000    0.00000022 0.00000035 0.00000000  0.16E-06      2.87

 CONVERGENCE REACHED!  Final gradient:    0.00000016 ( 0.16E-06)
                       Final energy:  -1391.78373651
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy             -1391.822077779019
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.23199433
 One electron energy                         -1920.17792991
 Two electron energy                           528.35585213
 Virial ratio                                    1.95972374
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy             -1391.822077777554
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.23199426
 One electron energy                         -1920.17792979
 Two electron energy                           528.35585201
 Virial ratio                                    1.95972374
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy             -1391.822077777094
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.23199424
 One electron energy                         -1920.17792974
 Two electron energy                           528.35585197
 Virial ratio                                    1.95972374
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy             -1391.822077776178
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.23199418
 One electron energy                         -1920.17792966
 Two electron energy                           528.35585189
 Virial ratio                                    1.95972374
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy             -1391.822077775536
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.23199415
 One electron energy                         -1920.17792961
 Two electron energy                           528.35585183
 Virial ratio                                    1.95972374
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy             -1391.822077775405
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.23199414
 One electron energy                         -1920.17792959
 Two electron energy                           528.35585181
 Virial ratio                                    1.95972374
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy             -1391.822077774676
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.23199411
 One electron energy                         -1920.17792953
 Two electron energy                           528.35585176
 Virial ratio                                    1.95972374
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy             -1391.793024032884
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.94080046
 One electron energy                         -1936.43897678
 Two electron energy                           544.64595275
 Virial ratio                                    1.95528454
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy             -1391.793024031690
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.94080053
 One electron energy                         -1936.43897690
 Two electron energy                           544.64595287
 Virial ratio                                    1.95528454
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy            -1391.793024031137
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.94080055
 One electron energy                         -1936.43897695
 Two electron energy                           544.64595292
 Virial ratio                                    1.95528454
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy            -1391.793024030348
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.94080061
 One electron energy                         -1936.43897703
 Two electron energy                           544.64595300
 Virial ratio                                    1.95528454
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy            -1391.793024029744
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.94080063
 One electron energy                         -1936.43897708
 Two electron energy                           544.64595305
 Virial ratio                                    1.95528454
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy            -1391.793024029325
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.94080065
 One electron energy                         -1936.43897711
 Two electron energy                           544.64595308
 Virial ratio                                    1.95528454
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy            -1391.793024028981
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.94080068
 One electron energy                         -1936.43897716
 Two electron energy                           544.64595313
 Virial ratio                                    1.95528454
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy            -1391.750877010921
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.22483154
 One electron energy                         -1920.16155702
 Two electron energy                           528.41068001
 Virial ratio                                    1.95967939
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy            -1391.750877010544
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.22483148
 One electron energy                         -1920.16155693
 Two electron energy                           528.41067992
 Virial ratio                                    1.95967939
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy            -1391.750877010296
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.22483146
 One electron energy                         -1920.16155688
 Two electron energy                           528.41067987
 Virial ratio                                    1.95967939
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy             -1391.769370846058
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.93498740
 One electron energy                         -1936.41468214
 Two electron energy                           544.64531129
 Virial ratio                                    1.95527212
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy             -1391.769370844573
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.93498747
 One electron energy                         -1936.41468226
 Two electron energy                           544.64531142
 Virial ratio                                    1.95527212
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy             -1391.769370843920
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.93498750
 One electron energy                         -1936.41468231
 Two electron energy                           544.64531146
 Virial ratio                                    1.95527212
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy             -1391.769370842993
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.93498755
 One electron energy                         -1936.41468239
 Two electron energy                           544.64531154
 Virial ratio                                    1.95527212
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy             -1391.769370842260
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.93498758
 One electron energy                         -1936.41468244
 Two electron energy                           544.64531160
 Virial ratio                                    1.95527212
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy             -1391.769370841773
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.93498759
 One electron energy                         -1936.41468246
 Two electron energy                           544.64531162
 Virial ratio                                    1.95527212
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy             -1391.769370841330
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.93498762
 One electron energy                         -1936.41468252
 Two electron energy                           544.64531167
 Virial ratio                                    1.95527212
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2141.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     3.936589403686
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     6.609686653836
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     0.115275432034
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     3.999999652316
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     3.884707714155
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     6.063198388978
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     3.390400915655
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     4.134865369376
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     6.022679040923
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     0.005956256514
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     3.999999964344
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     3.994034526639
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     5.865169570662
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     3.977239703203
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     0.999999930695
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     0.000001837928
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     0.999998764899
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     4.109022708135
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     6.111065109903
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     0.000278427817
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     3.999999610291
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     3.999723133100
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     5.890965791454
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     3.888990804949
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     4.063679796764
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     0.026020008261
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     7.238237240509
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     3.999999563144
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     2.761671269898
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     5.936530641901
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     3.973988520026
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     3.866336759927
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.000034486230
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     5.698344341617
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     4.000000030139
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     4.301902106503
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     6.133628147801
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     3.999965945795
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     0.999999997934
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     0.999998203667
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     0.000001235339
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     3.891764120972
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     0.000830042445
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     5.935479159204
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     3.999999642573
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     4.064591236865
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     6.108246826836
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     3.999172307755
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     3.999730799550
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     5.364293337903
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     4.646487327456
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     4.000000784540
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     5.353621015947
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     0.000270969121
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     4.635610564318
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     3.998797870697
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     5.977286472847
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     6.295699401869
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     4.000000005517
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     3.704063366858
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     0.001202281537
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     4.022794351003
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     0.000000071371
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     0.999999958405
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     0.999999999762
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     3.999213170893
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     5.888104847652
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     6.064242412979
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     4.000000747136
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     3.935685630035
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     0.000787381710
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     4.111836887296
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 5 6 4 3 2 1 1   4 5 6 2 3 1 4 5 6 2   3 1 4 2 6 5 3 9 7 8  111215141013 1 4 2 6
                                        5 3 9 7 81112141510  13 2 4 6 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 3 2 3 1 2 3   1 2 3 1 2 410 6 5 8   7 9 3 1 2 4 610 5 8   9 7 3 1 2 4 6 5 810
                                        7 9 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.63561     1  1  s    0.97814
    2.1     2.00000   -34.99576     1  2  s    0.99275
    3.1     2.00000    -4.79390     1  3  s    0.98633
    4.1     1.53147    -0.28154     1  1  d2+  1.00046
    5.1     1.53147    -0.28154     1  1  d1-  1.00046
    6.1     1.53147    -0.28154     1  1  d1+  1.00046
    7.1     1.53147    -0.28154     1  1  d2-  1.00046
    8.1     1.53147    -0.28154     1  1  d0  -1.00046
    9.1     1.34395    -0.15147     1  4  s    1.01213
    1.2     2.00000   -30.01206     1  1  pz   0.99895
    2.2     2.00000   -30.01206     1  1  px   0.99895
    3.2     2.00000   -30.01206     1  1  py   0.99895
    4.2     1.99957    -2.96411     1  2  px   0.99969
    5.2     1.99957    -2.96411     1  2  pz   0.99969
    6.2     1.99957    -2.96411     1  2  py   0.99969
 
 Natural orbital dump (state averaged) at molpro section 2141.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a222aa 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2222aaa 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 22aaa22 222     -0.00002237      0.00020887     -0.00019279      0.99953496      0.00025679     -0.00011032      0.00020691
 2aaa222 222      0.99950142     -0.00002630     -0.00008677      0.00002326      0.00001932      0.00820009     -0.00001042
 22a2a2a 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 22aa22a 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2a22aa2 222     -0.00733440     -0.00001849      0.00001927      0.00009838      0.00068406      0.89398096     -0.00019440
 222aa2a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 22aa2a2 222     -0.00366720     -0.00000925      0.00000964      0.00004919      0.00034203      0.44699049     -0.00009720
 2a2a2a2 222      0.00002394      0.89109885      0.00024963     -0.00020108     -0.00002368      0.00003434      0.07210424
 222aaa2 222     -0.00001800      0.00004376     -0.07330991     -0.00024313      0.89100022     -0.00068032      0.00000527
 2aa22a2 222      0.00007860     -0.00024301      0.88103497      0.00020901     -0.15176803      0.00009773     -0.00009634
 22a2aa2 222      0.00001163      0.15296001      0.00013832     -0.00021425     -0.00000125      0.00019483      0.88082881
 2a2a22a 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2aa222a 222     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2aa2a22 222     -0.00000711     -0.42616464     -0.00006427     -0.00000761      0.00001295      0.00009266      0.46691736
 2a2aa22 222     -0.00003499      0.00011504     -0.46634027      0.00001970     -0.42679592      0.00033635      0.00005258
 22a22aa 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 222a2aa 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2a22a2a 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 
 Energy:      -1391.82207778  -1391.82207778  -1391.82207778  -1391.82207778  -1391.82207778  -1391.82207778  -1391.82207777

 State:                8               9              10              11              12              13              14
 2a222aa 222     -0.00002112     -0.00007247     -0.00012866      0.99999996     -0.00001946     -0.00011164     -0.00005278
 2222aaa 222      0.99984969     -0.00004041      0.00010031      0.00001919      0.00000988     -0.01733605     -0.00000612
 22aaa22 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2aaa222 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 22a2a2a 222      0.00003560      0.89442332      0.00015485      0.00006497     -0.00005782     -0.00003207      0.00262079
 22aa22a 222      0.01550584      0.00003242     -0.00004318      0.00010014     -0.00025803      0.89429264     -0.00033778
 2a22aa2 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 222aa2a 222     -0.00008907     -0.00015234      0.89376099      0.00011566      0.03451398      0.00005463     -0.00005798
 22aa2a2 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 2a2a2a2 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 222aaa2 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2aa22a2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 22a2aa2 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2a2a22a 222      0.00001976      0.22106827      0.00008261      0.00006182      0.00029190      0.00031907      0.86667675
 2aa222a 222      0.00002137      0.00010071     -0.25685829     -0.00001636      0.85675179      0.00023431     -0.00028985
 2aa2a22 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2a2aa22 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 22a22aa 222      0.00003909      0.00002981     -0.36771594     -0.00005733     -0.51457253     -0.00016682      0.00020082
 222a2aa 222     -0.00000914     -0.38876169     -0.00004171     -0.00000182      0.00020191      0.00020273      0.49886294
 2a22a2a 222      0.00775292      0.00001621     -0.00002159      0.00005007     -0.00012901      0.44714634     -0.00016889
 
 Energy:      -1391.79302403  -1391.79302403  -1391.79302403  -1391.79302403  -1391.79302403  -1391.79302403  -1391.79302403

 State:               15              16              17
 2a222aa 222     -0.00000000     -0.00000000     -0.00000000
 2222aaa 222     -0.00000000      0.00000000     -0.00000000
 22aaa22 222     -0.00000000     -0.00000000     -0.00000000
 2aaa222 222      0.00000000     -0.00000000     -0.00000000
 22a2a2a 222      0.00000002     -0.00000050     -0.00037212
 22aa22a 222     -0.00037212      0.00000010     -0.00000002
 2a22aa2 222     -0.44669828      0.00011757     -0.00002046
 222aa2a 222      0.00000010      0.00037212     -0.00000050
 22aa2a2 222      0.89339653     -0.00023514      0.00004092
 2a2a2a2 222     -0.00002030      0.00059870      0.44669787
 222aaa2 222      0.00011760      0.44669788     -0.00059869
 2aa22a2 222      0.00011760      0.44669786     -0.00059869
 22a2aa2 222      0.00002030     -0.00059870     -0.44669789
 2a2a22a 222     -0.00000002      0.00000050      0.00037211
 2aa222a 222      0.00000010      0.00037211     -0.00000050
 2aa2a22 222     -0.00003516      0.00103698      0.77370343
 2a2aa22 222      0.00020368      0.77370340     -0.00103697
 22a22aa 222      0.00000017      0.00064452     -0.00000086
 222a2aa 222      0.00000003     -0.00000086     -0.00064452
 2a22a2a 222      0.00074423     -0.00000020      0.00000003
 
 Energy:      -1391.75087701  -1391.75087701  -1391.75087701
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================
 
 2a222ab 222     -0.00000776     -0.00014061     -0.00029189      0.81574392      0.00018804     -0.00007418     -0.00005299
 2222aab 222      0.81566377     -0.00001613      0.00005696      0.00000673     -0.00000111     -0.01144111     -0.00000173
 222aa2b 222     -0.00005091      0.00034157      0.72959829      0.00025972      0.00606458      0.00000175     -0.00000933
 22aa22b 222      0.01023324      0.00002053      0.00000023      0.00006647     -0.00015630      0.72955179     -0.00021948
 22a2a2b 222      0.00001423      0.72954796     -0.00034161      0.00012630      0.00001870     -0.00001758      0.01050192
 2a2a22b 222      0.00000784      0.17221854     -0.00007083      0.00007575     -0.00009125      0.00020831      0.70900729
 2aa222b 222      0.00001622     -0.00010759     -0.18827151     -0.00022986      0.70491444      0.00015091      0.00009803
 22a22ab 222      0.00002003     -0.00013509     -0.31253516     -0.00001724     -0.41048393     -0.00008814     -0.00005121
 2a222ba 222      0.00000388      0.00007030      0.00014594     -0.40787196     -0.00009402      0.00003709      0.00002649
 2b222aa 222      0.00000388      0.00007030      0.00014594     -0.40787196     -0.00009402      0.00003709      0.00002649
 2222baa 222     -0.40783189      0.00000807     -0.00002848     -0.00000337      0.00000055      0.00572055      0.00000087
 2222aba 222     -0.40783188      0.00000807     -0.00002848     -0.00000337      0.00000055      0.00572055      0.00000087
 222a2ab 222     -0.00000369     -0.32177426      0.00015633     -0.00002919     -0.00006348      0.00013042      0.40328226
 222ab2a 222      0.00002546     -0.00017078     -0.36479915     -0.00012986     -0.00303229     -0.00000087      0.00000466
 222ba2a 222      0.00002546     -0.00017078     -0.36479914     -0.00012986     -0.00303229     -0.00000087      0.00000466
 2a22a2b 222      0.00511662      0.00001027      0.00000011      0.00003323     -0.00007815      0.36477592     -0.00010974
 22ba22a 222     -0.00511662     -0.00001027     -0.00000011     -0.00003323      0.00007815     -0.36477590      0.00010974
 22ab22a 222     -0.00511662     -0.00001027     -0.00000011     -0.00003323      0.00007815     -0.36477590      0.00010974
 22a2b2a 222     -0.00000711     -0.36477398      0.00017080     -0.00006315     -0.00000935      0.00000879     -0.00525096
 22b2a2a 222     -0.00000711     -0.36477397      0.00017080     -0.00006315     -0.00000935      0.00000879     -0.00525096
 2b2a22a 222     -0.00000392     -0.08610927      0.00003541     -0.00003788      0.00004563     -0.00010416     -0.35450365
 2a2b22a 222     -0.00000392     -0.08610927      0.00003541     -0.00003788      0.00004563     -0.00010416     -0.35450364
 2ba222a 222     -0.00000811      0.00005379      0.09413575      0.00011493     -0.35245722     -0.00007545     -0.00004901
 2ab222a 222     -0.00000811      0.00005379      0.09413575      0.00011493     -0.35245722     -0.00007545     -0.00004901
 22a22ba 222     -0.00001001      0.00006754      0.15626758      0.00000862      0.20524197      0.00004407      0.00002561
 22b22aa 222     -0.00001001      0.00006754      0.15626758      0.00000862      0.20524196      0.00004407      0.00002561
 222a2ba 222      0.00000184      0.16088713     -0.00007817      0.00001459      0.00003174     -0.00006521     -0.20164113
 222b2aa 222      0.00000184      0.16088713     -0.00007817      0.00001459      0.00003174     -0.00006521     -0.20164113
 2a22b2a 222     -0.00255831     -0.00000513     -0.00000006     -0.00001662      0.00003908     -0.18238796      0.00005487
 2b22a2a 222     -0.00255831     -0.00000513     -0.00000006     -0.00001662      0.00003908     -0.18238796      0.00005487
 
 Energy:      -1391.76937085  -1391.76937084  -1391.76937084  -1391.76937084  -1391.76937084  -1391.76937084  -1391.76937084
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.55       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       6        1.48       700     1000      520     2100     2140     2141   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF   

 PROGRAMS   *        TOTAL     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.15      2.81      1.54      0.79      0.83
 REAL TIME  *         7.93 SEC
 DISK USED  *        38.08 MB (local),      429.20 MB (total)
 SF USED    *        22.48 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

          ENERGY     LL
    -1391.822078   12.0
    -1391.822078   12.0
    -1391.822078   12.0
    -1391.822078   12.0
    -1391.822078   12.0
    -1391.822078   12.0
    -1391.822078   12.0
    -1391.793024   12.0
    -1391.793024   12.0
    -1391.793024   12.0
    -1391.793024   12.0
    -1391.793024   12.0
    -1391.793024   12.0
    -1391.793024   12.0
    -1391.750877    2.0
    -1391.750877    2.0
    -1391.750877    2.0
    -1391.769371   12.0
    -1391.769371   12.0
    -1391.769371   12.0
    -1391.769371   12.0
    -1391.769371   12.0
    -1391.769371   12.0
    -1391.769371   12.0
                                                  


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

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  20
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.2384995E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.5934075E-16. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.6606944E-15. Vector removed

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1391.82207778
     2     -1391.82207778
     3     -1391.82207778
     4     -1391.82207778
     5     -1391.82207778
     6     -1391.82207778
     7     -1391.82207777
     8     -1391.79302403
     9     -1391.79302403
    10     -1391.79302403
    11     -1391.79302403
    12     -1391.79302403
    13     -1391.79302403
    14     -1391.79302403
    15     -1391.75087701
    16     -1391.75087701
    17     -1391.75087701

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2248D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2396D-06

 Number of blocks in overlap matrix:    91   Smallest eigenvalue:  0.22D-06
 Number of N-2 electron functions:    1593
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       3020436
 Total number of contracted configurations:      3072548
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  763150 words, CPU-Time:      0.43 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  567403 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1391.82207778    -0.00000000    -0.81097656  0.85D-01  0.63D-01     1.43
    1     2     2     1.00000000     0.00000000 -1391.82207778     0.00000000    -0.80751744  0.83D-01  0.63D-01     1.43
    1     3     3     1.00000000     0.00000000 -1391.82207778     0.00000000    -0.80738627  0.83D-01  0.63D-01     1.43
    1     4     4     1.00000000     0.00000000 -1391.82207778     0.00000000    -0.81232347  0.85D-01  0.63D-01     1.43
    1     5     5     1.00000000     0.00000000 -1391.82207778     0.00000000    -0.80894476  0.83D-01  0.63D-01     1.43
    1     6     6     1.00000000     0.00000000 -1391.82207778     0.00000000    -0.80695675  0.83D-01  0.63D-01     1.43
    1     7     7     1.00000000     0.00000000 -1391.82207777    -0.00000000    -0.80879625  0.83D-01  0.63D-01     1.43
    1     8     8     1.00000000     0.00000000 -1391.79302403    -0.00000000    -0.84472886  0.52D-01  0.88D-01     1.43
    1     9     9     1.00000000     0.00000000 -1391.79302403    -0.00000000    -0.84442694  0.51D-01  0.88D-01     1.43
    1    10    10     1.00000000     0.00000000 -1391.79302403     0.00000000    -0.84455936  0.51D-01  0.88D-01     1.43
    1    11    11     1.00000000     0.00000000 -1391.79302403     0.00000000    -0.84534360  0.52D-01  0.88D-01     1.43
    1    12    12     1.00000000     0.00000000 -1391.79302403     0.00000000    -0.84425050  0.51D-01  0.88D-01     1.43
    1    13    13     1.00000000     0.00000000 -1391.79302403     0.00000000    -0.84420555  0.51D-01  0.88D-01     1.43
    1    14    14     1.00000000     0.00000000 -1391.79302403    -0.00000000    -0.84422538  0.51D-01  0.88D-01     1.43
    1    15    15     1.00000000     0.00000000 -1391.75087701     0.00000000    -0.81355240  0.86D-01  0.64D-01     1.43
    1    16    16     1.00000000     0.00000000 -1391.75087701     0.00000000    -0.81428457  0.88D-01  0.64D-01     1.43
    1    17    17     1.00000000     0.00000000 -1391.75087701    -0.00000000    -0.81406620  0.88D-01  0.64D-01     1.43
    2     1     1     1.08321007    -0.62533989 -1392.44741767    -0.62533989    -0.03728737  0.63D-02  0.28D-02   103.55
    2     2     2     1.08320965    -0.62530600 -1392.44738378    -0.62530600    -0.03730365  0.63D-02  0.28D-02   103.55
    2     3     3     1.08341489    -0.62516955 -1392.44724733    -0.62516955    -0.03748209  0.65D-02  0.28D-02   103.55
    2     4     4     1.08354817    -0.62513525 -1392.44721302    -0.62513525    -0.03765133  0.66D-02  0.28D-02   103.55
    2     5     5     1.08355102    -0.62510381 -1392.44718158    -0.62510381    -0.03767230  0.66D-02  0.28D-02   103.55
    2     6     6     1.08384000    -0.62480783 -1392.44688560    -0.62480783    -0.03816114  0.70D-02  0.28D-02   103.55
    2     7     7     1.08381151    -0.62463788 -1392.44671565    -0.62463788    -0.03824904  0.70D-02  0.28D-02   103.55
    2     8     8     1.08563131    -0.64965070 -1392.44267473    -0.64965070    -0.05678377  0.10D-01  0.42D-02   103.55
    2     9     9     1.08564360    -0.64960460 -1392.44262863    -0.64960460    -0.05684112  0.10D-01  0.42D-02   103.55
    2    10    10     1.08655851    -0.64935010 -1392.44237413    -0.64935010    -0.05837944  0.11D-01  0.42D-02   103.55
    2    11    11     1.08611753    -0.64887504 -1392.44189907    -0.64887504    -0.05778121  0.11D-01  0.42D-02   103.55
    2    12    12     1.08605616    -0.64883654 -1392.44186057    -0.64883654    -0.05770890  0.11D-01  0.42D-02   103.55
    2    13    13     1.08597058    -0.64879248 -1392.44181651    -0.64879248    -0.05753421  0.11D-01  0.42D-02   103.55
    2    14    14     1.08597549    -0.64873069 -1392.44175472    -0.64873069    -0.05759335  0.11D-01  0.42D-02   103.55
    2    15    15     1.08852342    -0.62540171 -1392.37627872    -0.62540171    -0.05993357  0.12D-01  0.42D-02   103.55
    2    16    16     1.08916783    -0.62432940 -1392.37520641    -0.62432940    -0.06117940  0.13D-01  0.43D-02   103.55
    2    17    17     1.08913480    -0.62428871 -1392.37516572    -0.62428871    -0.06113773  0.13D-01  0.43D-02   103.55
    3     1     1     1.07028375    -0.66886353 -1392.49094131    -0.04352364    -0.00372893  0.13D-03  0.49D-03   205.60
    3     2     2     1.07011671    -0.66852675 -1392.49060452    -0.04322075    -0.00384567  0.13D-03  0.50D-03   205.60
    3     3     3     1.07001481    -0.66844260 -1392.49052037    -0.04327304    -0.00388815  0.13D-03  0.50D-03   205.60
    3     4     4     1.07000738    -0.66843965 -1392.49051743    -0.04330440    -0.00388588  0.13D-03  0.50D-03   205.60
    3     5     5     1.06993316    -0.66814082 -1392.49021860    -0.04303701    -0.00401215  0.14D-03  0.50D-03   205.60
    3     6     6     1.06991869    -0.66812876 -1392.49020654    -0.04332094    -0.00401326  0.14D-03  0.50D-03   205.60
    3     7     7     1.06987693    -0.66805144 -1392.49012921    -0.04341356    -0.00404568  0.14D-03  0.50D-03   205.60
    3     8     8     1.07250473    -0.68745368 -1392.48047771    -0.03780298    -0.00253534  0.27D-03  0.31D-03   205.60
    3     9     9     1.07252420    -0.68744918 -1392.48047321    -0.03784458    -0.00254484  0.27D-03  0.31D-03   205.60
    3    10    10     1.07251846    -0.68744143 -1392.48046546    -0.03809133    -0.00254868  0.27D-03  0.31D-03   205.60
    3    11    11     1.07249315    -0.68743367 -1392.48045770    -0.03855863    -0.00254582  0.27D-03  0.31D-03   205.60
    3    12    12     1.07250232    -0.68742046 -1392.48044449    -0.03858392    -0.00255141  0.27D-03  0.31D-03   205.60
    3    13    13     1.07258288    -0.68741426 -1392.48043829    -0.03862178    -0.00260138  0.29D-03  0.32D-03   205.60
    3    14    14     1.07253698    -0.68735727 -1392.48038130    -0.03862659    -0.00263487  0.29D-03  0.32D-03   205.60
    3    15    15     1.07272055    -0.67491671 -1392.42579372    -0.04951500    -0.00407511  0.16D-03  0.51D-03   205.60
    3    16    16     1.07274264    -0.67472666 -1392.42560367    -0.05039726    -0.00414581  0.16D-03  0.52D-03   205.60
    3    17    17     1.07270930    -0.67467904 -1392.42555605    -0.05039033    -0.00416061  0.16D-03  0.52D-03   205.60
    4     1     1     1.07632775    -0.67470140 -1392.49677918    -0.00583788    -0.00086631  0.48D-04  0.95D-04   307.90
    4     2     2     1.07639902    -0.67462951 -1392.49670729    -0.00610276    -0.00090782  0.49D-04  0.95D-04   307.90
    4     3     3     1.07636932    -0.67462342 -1392.49670119    -0.00618082    -0.00090981  0.49D-04  0.95D-04   307.90
    4     4     4     1.07623893    -0.67461154 -1392.49668932    -0.00617189    -0.00090946  0.49D-04  0.97D-04   307.90
    4     5     5     1.07636966    -0.67456758 -1392.49664535    -0.00642676    -0.00094074  0.50D-04  0.97D-04   307.90
    4     6     6     1.07633801    -0.67455946 -1392.49663724    -0.00643070    -0.00094366  0.50D-04  0.97D-04   307.90
    4     7     7     1.07636884    -0.67455139 -1392.49662917    -0.00649996    -0.00094920  0.50D-04  0.97D-04   307.90
    4     8     8     1.07351968    -0.69043068 -1392.48345471    -0.00297699    -0.00048955  0.34D-04  0.63D-04   307.90
    4     9     9     1.07352435    -0.69042913 -1392.48345316    -0.00297996    -0.00048854  0.34D-04  0.64D-04   307.90
    4    10    10     1.07351845    -0.69042789 -1392.48345193    -0.00298647    -0.00049049  0.34D-04  0.64D-04   307.90
    4    11    11     1.07350904    -0.69042358 -1392.48344761    -0.00298992    -0.00049205  0.34D-04  0.64D-04   307.90
    4    12    12     1.07350903    -0.69042086 -1392.48344489    -0.00300040    -0.00049416  0.35D-04  0.64D-04   307.90
    4    13    13     1.07351176    -0.69042064 -1392.48344467    -0.00300638    -0.00049336  0.34D-04  0.65D-04   307.90
    4    14    14     1.07348468    -0.69040953 -1392.48343356    -0.00305226    -0.00050135  0.35D-04  0.66D-04   307.90
    4    15    15     1.07913020    -0.68131772 -1392.43219473    -0.00640101    -0.00097702  0.65D-04  0.10D-03   307.90
    4    16    16     1.07901631    -0.68125322 -1392.43213023    -0.00652656    -0.00100534  0.66D-04  0.10D-03   307.90
    4    17    17     1.07899625    -0.68123877 -1392.43211578    -0.00655973    -0.00101217  0.66D-04  0.10D-03   307.90
    5     1     1     1.07978614    -0.67597750 -1392.49805528    -0.00127610    -0.00016799  0.99D-05  0.19D-04   410.46
    5     2     2     1.07981845    -0.67596114 -1392.49803892    -0.00133164    -0.00017577  0.10D-04  0.19D-04   410.46
    5     3     3     1.07980225    -0.67595939 -1392.49803716    -0.00133597    -0.00017683  0.10D-04  0.19D-04   410.46
    5     4     4     1.07973158    -0.67595340 -1392.49803118    -0.00134186    -0.00018062  0.11D-04  0.20D-04   410.46
    5     5     5     1.07978890    -0.67594611 -1392.49802388    -0.00137853    -0.00018387  0.11D-04  0.19D-04   410.46
    5     6     6     1.07977435    -0.67594390 -1392.49802167    -0.00138444    -0.00018511  0.11D-04  0.20D-04   410.46
    5     7     7     1.07978944    -0.67594216 -1392.49801993    -0.00139076    -0.00018575  0.11D-04  0.19D-04   410.46
    5     8     8     1.07535206    -0.69106045 -1392.48408448    -0.00062977    -0.00008841  0.41D-05  0.14D-04   410.46
    5     9     9     1.07534914    -0.69105971 -1392.48408374    -0.00063058    -0.00008877  0.41D-05  0.14D-04   410.46
    5    10    10     1.07534693    -0.69105907 -1392.48408310    -0.00063117    -0.00008868  0.40D-05  0.14D-04   410.46
    5    11    11     1.07534088    -0.69105779 -1392.48408182    -0.00063420    -0.00008967  0.40D-05  0.14D-04   410.46
    5    12    12     1.07534144    -0.69105768 -1392.48408171    -0.00063682    -0.00008986  0.41D-05  0.14D-04   410.46
    5    13    13     1.07534190    -0.69105737 -1392.48408140    -0.00063674    -0.00008941  0.41D-05  0.14D-04   410.46
    5    14    14     1.07533456    -0.69105670 -1392.48408073    -0.00064717    -0.00009060  0.41D-05  0.14D-04   410.46
    5    15    15     1.08302625    -0.68273990 -1392.43361691    -0.00142217    -0.00019161  0.12D-04  0.21D-04   410.46
    5    16    16     1.08296089    -0.68272262 -1392.43359963    -0.00146940    -0.00020127  0.13D-04  0.22D-04   410.46
    5    17    17     1.08294974    -0.68271839 -1392.43359540    -0.00147962    -0.00020356  0.13D-04  0.22D-04   410.46
    6     1     1     1.07974156    -0.67617570 -1392.49825348    -0.00019819    -0.00004554  0.53D-05  0.49D-05   513.15
    6     2     2     1.07973632    -0.67617171 -1392.49824949    -0.00021057    -0.00004838  0.55D-05  0.49D-05   513.15
    6     3     3     1.07972378    -0.67617093 -1392.49824871    -0.00021155    -0.00004876  0.55D-05  0.50D-05   513.15
    6     4     4     1.07968107    -0.67616772 -1392.49824550    -0.00021432    -0.00005016  0.58D-05  0.52D-05   513.15
    6     5     5     1.07970066    -0.67616710 -1392.49824488    -0.00022100    -0.00005113  0.57D-05  0.51D-05   513.15
    6     6     6     1.07968873    -0.67616628 -1392.49824406    -0.00022238    -0.00005162  0.58D-05  0.52D-05   513.15
    6     7     7     1.07969115    -0.67616599 -1392.49824376    -0.00022383    -0.00005183  0.58D-05  0.52D-05   513.15
    6     8     8     1.07581477    -0.69117428 -1392.48419832    -0.00011383    -0.00002531  0.25D-05  0.32D-05   513.15
    6     9     9     1.07581320    -0.69117399 -1392.48419802    -0.00011428    -0.00002548  0.26D-05  0.32D-05   513.15
    6    10    10     1.07581340    -0.69117348 -1392.48419751    -0.00011441    -0.00002570  0.26D-05  0.32D-05   513.15
    6    11    11     1.07580582    -0.69117336 -1392.48419739    -0.00011557    -0.00002592  0.27D-05  0.32D-05   513.15
    6    12    12     1.07580898    -0.69117308 -1392.48419711    -0.00011540    -0.00002607  0.28D-05  0.32D-05   513.15
    6    13    13     1.07580425    -0.69117302 -1392.48419705    -0.00011565    -0.00002606  0.27D-05  0.32D-05   513.15
    6    14    14     1.07580846    -0.69117281 -1392.48419684    -0.00011610    -0.00002597  0.26D-05  0.33D-05   513.15
    6    15    15     1.08292094    -0.68296378 -1392.43384079    -0.00022388    -0.00005261  0.65D-05  0.53D-05   513.15
    6    16    16     1.08286303    -0.68295735 -1392.43383436    -0.00023473    -0.00005608  0.70D-05  0.57D-05   513.15
    6    17    17     1.08285141    -0.68295596 -1392.43383297    -0.00023757    -0.00005691  0.71D-05  0.57D-05   513.15
    7     1     1     1.08042585    -0.67622735 -1392.49830513    -0.00005166    -0.00001160  0.14D-05  0.13D-05   615.45
    7     2     2     1.08043193    -0.67622643 -1392.49830421    -0.00005472    -0.00001219  0.15D-05  0.13D-05   615.45
    7     3     3     1.08042458    -0.67622611 -1392.49830389    -0.00005518    -0.00001232  0.15D-05  0.13D-05   615.45
    7     4     4     1.08041765    -0.67622492 -1392.49830270    -0.00005720    -0.00001292  0.16D-05  0.14D-05   615.45
    7     5     5     1.08041566    -0.67622491 -1392.49830268    -0.00005781    -0.00001294  0.16D-05  0.14D-05   615.45
    7     6     6     1.08041148    -0.67622465 -1392.49830242    -0.00005837    -0.00001306  0.16D-05  0.14D-05   615.45
    7     7     7     1.08039806    -0.67622439 -1392.49830217    -0.00005841    -0.00001308  0.16D-05  0.14D-05   615.45
    7     8     8     1.07615043    -0.69120473 -1392.48422877    -0.00003045    -0.00000878  0.17D-05  0.97D-06   615.45
    7     9     9     1.07614998    -0.69120461 -1392.48422864    -0.00003061    -0.00000886  0.17D-05  0.97D-06   615.45
    7    10    10     1.07615182    -0.69120434 -1392.48422838    -0.00003087    -0.00000901  0.17D-05  0.99D-06   615.45
    7    11    11     1.07614821    -0.69120433 -1392.48422836    -0.00003098    -0.00000901  0.17D-05  0.99D-06   615.45
    7    12    12     1.07614710    -0.69120418 -1392.48422821    -0.00003110    -0.00000911  0.18D-05  0.10D-05   615.45
    7    13    13     1.07615022    -0.69120416 -1392.48422819    -0.00003114    -0.00000915  0.18D-05  0.10D-05   615.45
    7    14    14     1.07614895    -0.69120408 -1392.48422810    -0.00003127    -0.00000914  0.18D-05  0.10D-05   615.45
    7    15    15     1.08363066    -0.68302316 -1392.43390017    -0.00005938    -0.00001375  0.19D-05  0.14D-05   615.45
    7    16    16     1.08360415    -0.68302080 -1392.43389781    -0.00006345    -0.00001488  0.20D-05  0.15D-05   615.45
    7    17    17     1.08359816    -0.68302037 -1392.43389738    -0.00006441    -0.00001511  0.21D-05  0.15D-05   615.45
    8     1     1     1.08063623    -0.67624279 -1392.49832057    -0.00001543    -0.00000374  0.33D-06  0.48D-06   718.15
    8     2     2     1.08064201    -0.67624260 -1392.49832037    -0.00001616    -0.00000380  0.31D-06  0.47D-06   718.15
    8     3     3     1.08063763    -0.67624247 -1392.49832025    -0.00001636    -0.00000387  0.32D-06  0.48D-06   718.15
    8     4     4     1.08063367    -0.67624210 -1392.49831988    -0.00001718    -0.00000405  0.32D-06  0.50D-06   718.15
    8     5     5     1.08063311    -0.67624209 -1392.49831987    -0.00001718    -0.00000406  0.33D-06  0.50D-06   718.15
    8     6     6     1.08062915    -0.67624200 -1392.49831977    -0.00001735    -0.00000412  0.33D-06  0.51D-06   718.15
    8     7     7     1.08061717    -0.67624180 -1392.49831958    -0.00001741    -0.00000425  0.37D-06  0.54D-06   718.15
    8     8     8     1.07622781    -0.69121446 -1392.48423849    -0.00000972    -0.00000270  0.19D-06  0.46D-06   718.15
    8     9     9     1.07622717    -0.69121441 -1392.48423844    -0.00000980    -0.00000272  0.19D-06  0.47D-06   718.15
    8    10    10     1.07622557    -0.69121431 -1392.48423834    -0.00000996    -0.00000277  0.19D-06  0.48D-06   718.15
    8    11    11     1.07622677    -0.69121430 -1392.48423833    -0.00000996    -0.00000277  0.19D-06  0.48D-06   718.15
    8    12    12     1.07622483    -0.69121425 -1392.48423828    -0.00001007    -0.00000280  0.19D-06  0.48D-06   718.15
    8    13    13     1.07622544    -0.69121424 -1392.48423827    -0.00001008    -0.00000280  0.18D-06  0.49D-06   718.15
    8    14    14     1.07622508    -0.69121419 -1392.48423821    -0.00001011    -0.00000282  0.19D-06  0.48D-06   718.15
    8    15    15     1.08389416    -0.68304108 -1392.43391809    -0.00001792    -0.00000439  0.38D-06  0.56D-06   718.15
    8    16    16     1.08387679    -0.68304023 -1392.43391724    -0.00001943    -0.00000485  0.44D-06  0.61D-06   718.15
    8    17    17     1.08387295    -0.68304009 -1392.43391710    -0.00001972    -0.00000492  0.44D-06  0.62D-06   718.15
    9     1     1     1.08071466    -0.67624713 -1392.49832491    -0.00000435    -0.00000119  0.15D-06  0.13D-06   820.45
    9     2     2     1.08071669    -0.67624709 -1392.49832487    -0.00000450    -0.00000123  0.16D-06  0.13D-06   820.45
    9     3     3     1.08071353    -0.67624705 -1392.49832483    -0.00000457    -0.00000126  0.16D-06  0.13D-06   820.45
    9     4     4     1.08070991    -0.67624694 -1392.49832471    -0.00000483    -0.00000133  0.17D-06  0.13D-06   820.45
    9     5     5     1.08070945    -0.67624693 -1392.49832470    -0.00000483    -0.00000133  0.17D-06  0.14D-06   820.45
    9     6     6     1.08070664    -0.67624689 -1392.49832467    -0.00000489    -0.00000135  0.18D-06  0.14D-06   820.45
    9     7     7     1.08069842    -0.67624679 -1392.49832456    -0.00000498    -0.00000139  0.18D-06  0.15D-06   820.45
    9     8     8     1.07628866    -0.69121779 -1392.48424182    -0.00000333    -0.00000090  0.68D-07  0.13D-06   820.45
    9     9     9     1.07628800    -0.69121777 -1392.48424180    -0.00000336    -0.00000091  0.70D-07  0.13D-06   820.45
    9    10    10     1.07628610    -0.69121774 -1392.48424177    -0.00000343    -0.00000093  0.76D-07  0.13D-06   820.45
    9    11    11     1.07628680    -0.69121773 -1392.48424176    -0.00000343    -0.00000093  0.72D-07  0.13D-06   820.45
    9    12    12     1.07628579    -0.69121771 -1392.48424174    -0.00000346    -0.00000094  0.75D-07  0.13D-06   820.45
    9    13    13     1.07628548    -0.69121771 -1392.48424174    -0.00000347    -0.00000095  0.78D-07  0.14D-06   820.45
    9    14    14     1.07628560    -0.69121768 -1392.48424171    -0.00000349    -0.00000095  0.73D-07  0.14D-06   820.45
    9    15    15     1.08396479    -0.68304621 -1392.43392322    -0.00000513    -0.00000144  0.20D-06  0.15D-06   820.45
    9    16    16     1.08395078    -0.68304589 -1392.43392290    -0.00000566    -0.00000162  0.23D-06  0.17D-06   820.45
    9    17    17     1.08394793    -0.68304584 -1392.43392285    -0.00000575    -0.00000165  0.23D-06  0.17D-06   820.45
   10     1     1     1.08083253    -0.67624844 -1392.49832621    -0.00000130    -0.00000035  0.48D-07  0.45D-07   923.00
   10     2     2     1.08083566    -0.67624844 -1392.49832621    -0.00000134    -0.00000036  0.51D-07  0.42D-07   923.00
   10     3     3     1.08083393    -0.67624842 -1392.49832620    -0.00000137    -0.00000036  0.52D-07  0.43D-07   923.00
   10     4     4     1.08083335    -0.67624839 -1392.49832616    -0.00000145    -0.00000038  0.56D-07  0.44D-07   923.00
   10     5     5     1.08083258    -0.67624838 -1392.49832616    -0.00000145    -0.00000038  0.56D-07  0.45D-07   923.00
   10     6     6     1.08083118    -0.67624837 -1392.49832614    -0.00000148    -0.00000039  0.57D-07  0.46D-07   923.00
   10     7     7     1.08082587    -0.67624831 -1392.49832609    -0.00000153    -0.00000042  0.58D-07  0.52D-07   923.00
   10     8     8     1.07633951    -0.69121885 -1392.48424289    -0.00000107    -0.00000036  0.74D-07  0.38D-07   923.00
   10     9     9     1.07633929    -0.69121885 -1392.48424288    -0.00000108    -0.00000037  0.75D-07  0.39D-07   923.00
   10    10    10     1.07633899    -0.69121883 -1392.48424286    -0.00000109    -0.00000038  0.79D-07  0.40D-07   923.00
   10    11    11     1.07633894    -0.69121883 -1392.48424286    -0.00000110    -0.00000038  0.79D-07  0.40D-07   923.00
   10    12    12     1.07633851    -0.69121882 -1392.48424285    -0.00000111    -0.00000038  0.79D-07  0.40D-07   923.00
   10    13    13     1.07633869    -0.69121882 -1392.48424285    -0.00000111    -0.00000039  0.82D-07  0.41D-07   923.00
   10    14    14     1.07633821    -0.69121881 -1392.48424284    -0.00000113    -0.00000039  0.81D-07  0.41D-07   923.00
   10    15    15     1.08409137    -0.68304777 -1392.43392478    -0.00000156    -0.00000043  0.70D-07  0.49D-07   923.00
   10    16    16     1.08408498    -0.68304764 -1392.43392465    -0.00000175    -0.00000050  0.80D-07  0.55D-07   923.00
   10    17    17     1.08408360    -0.68304763 -1392.43392464    -0.00000179    -0.00000051  0.82D-07  0.56D-07   923.00
   11     1     1     1.08085341    -0.67624887 -1392.49832665    -0.00000043    -0.00000013  0.14D-07  0.17D-07  1025.50
   11     2     2     1.08085086    -0.67624887 -1392.49832665    -0.00000043    -0.00000013  0.16D-07  0.18D-07  1025.50
   11     3     3     1.08085206    -0.67624887 -1392.49832664    -0.00000045    -0.00000013  0.15D-07  0.18D-07  1025.50
   11     4     4     1.08085127    -0.67624886 -1392.49832663    -0.00000047    -0.00000013  0.14D-07  0.18D-07  1025.50
   11     5     5     1.08085069    -0.67624885 -1392.49832663    -0.00000047    -0.00000014  0.15D-07  0.19D-07  1025.50
   11     6     6     1.08084962    -0.67624885 -1392.49832662    -0.00000048    -0.00000014  0.15D-07  0.19D-07  1025.50
   11     7     7     1.08084551    -0.67624882 -1392.49832660    -0.00000051    -0.00000015  0.19D-07  0.22D-07  1025.50
   11     8     8     1.07634466    -0.69121924 -1392.48424327    -0.00000039    -0.00000012  0.13D-07  0.20D-07  1025.50
   11     9     9     1.07634445    -0.69121924 -1392.48424327    -0.00000039    -0.00000012  0.13D-07  0.20D-07  1025.50
   11    10    10     1.07634411    -0.69121923 -1392.48424326    -0.00000040    -0.00000012  0.12D-07  0.21D-07  1025.50
   11    11    11     1.07634391    -0.69121923 -1392.48424326    -0.00000040    -0.00000013  0.13D-07  0.21D-07  1025.50
   11    12    12     1.07634371    -0.69121923 -1392.48424326    -0.00000041    -0.00000013  0.13D-07  0.21D-07  1025.50
   11    13    13     1.07634372    -0.69121923 -1392.48424326    -0.00000041    -0.00000013  0.13D-07  0.22D-07  1025.50
   11    14    14     1.07634329    -0.69121922 -1392.48424325    -0.00000041    -0.00000013  0.13D-07  0.22D-07  1025.50
   11    15    15     1.08411805    -0.68304829 -1392.43392530    -0.00000052    -0.00000016  0.19D-07  0.21D-07  1025.50
   11    16    16     1.08411268    -0.68304824 -1392.43392525    -0.00000060    -0.00000018  0.22D-07  0.25D-07  1025.50
   11    17    17     1.08411179    -0.68304824 -1392.43392525    -0.00000061    -0.00000019  0.23D-07  0.25D-07  1025.50
   12     1     1     1.08087322    -0.67624902 -1392.49832679    -0.00000015    -0.00000004  0.53D-08  0.47D-08  1127.91
   12     2     2     1.08087199    -0.67624902 -1392.49832679    -0.00000015    -0.00000004  0.53D-08  0.51D-08  1127.91
   12     3     3     1.08087239    -0.67624902 -1392.49832679    -0.00000015    -0.00000004  0.55D-08  0.49D-08  1127.91
   12     4     4     1.08087184    -0.67624901 -1392.49832679    -0.00000016    -0.00000005  0.58D-08  0.50D-08  1127.91
   12     5     5     1.08087142    -0.67624901 -1392.49832679    -0.00000016    -0.00000005  0.58D-08  0.52D-08  1127.91
   12     6     6     1.08087082    -0.67624901 -1392.49832679    -0.00000016    -0.00000005  0.60D-08  0.53D-08  1127.91
   12     7     7     1.08086813    -0.67624900 -1392.49832678    -0.00000018    -0.00000005  0.65D-08  0.61D-08  1127.91
   12     8     8     1.07636075    -0.69121938 -1392.48424342    -0.00000015    -0.00000004  0.30D-08  0.66D-08  1127.91
   12     9     9     1.07636055    -0.69121939 -1392.48424342    -0.00000015    -0.00000004  0.30D-08  0.67D-08  1127.91
   12    10    10     1.07636002    -0.69121938 -1392.48424342    -0.00000015    -0.00000004  0.32D-08  0.69D-08  1127.91
   12    11    11     1.07636011    -0.69121938 -1392.48424341    -0.00000015    -0.00000004  0.30D-08  0.70D-08  1127.91
   12    12    12     1.07635978    -0.69121938 -1392.48424341    -0.00000015    -0.00000005  0.32D-08  0.71D-08  1127.91
   12    13    13     1.07636003    -0.69121938 -1392.48424341    -0.00000015    -0.00000004  0.33D-08  0.69D-08  1127.91
   12    14    14     1.07635975    -0.69121938 -1392.48424341    -0.00000016    -0.00000005  0.32D-08  0.72D-08  1127.91
   12    15    15     1.08413676    -0.68304847 -1392.43392548    -0.00000018    -0.00000005  0.73D-08  0.61D-08  1127.91
   12    16    16     1.08413320    -0.68304845 -1392.43392546    -0.00000021    -0.00000006  0.86D-08  0.71D-08  1127.91
   12    17    17     1.08413263    -0.68304845 -1392.43392546    -0.00000021    -0.00000007  0.87D-08  0.73D-08  1127.91
   13     1     1     1.08089361    -0.67624906 -1392.49832684    -0.00000005    -0.00000001  0.21D-08  0.17D-08  1208.03
   13     2     2     1.08089319    -0.67624906 -1392.49832684    -0.00000005    -0.00000001  0.20D-08  0.18D-08  1208.03
   13     3     3     1.08089344    -0.67624906 -1392.49832684    -0.00000005    -0.00000001  0.22D-08  0.17D-08  1208.03
   13     4     4     1.08089319    -0.67624906 -1392.49832684    -0.00000005    -0.00000001  0.22D-08  0.18D-08  1208.03
   13     5     5     1.08089294    -0.67624906 -1392.49832684    -0.00000005    -0.00000001  0.23D-08  0.19D-08  1208.03
   13     6     6     1.08089170    -0.67624906 -1392.49832683    -0.00000005    -0.00000002  0.26D-08  0.22D-08  1208.03
   13     7     7     1.08087327    -0.67624902 -1392.49832679    -0.00000002    -0.00000004  0.53D-08  0.47D-08  1208.03
   13     8     8     1.07638207    -0.69121946 -1392.48424349    -0.00000008    -0.00000000  0.14D-09  0.28D-09  1208.03
   13     9     9     1.07637287    -0.69121943 -1392.48424347    -0.00000005    -0.00000002  0.41D-08  0.19D-08  1208.03
   13    10    10     1.07637273    -0.69121943 -1392.48424347    -0.00000005    -0.00000002  0.41D-08  0.20D-08  1208.03
   13    11    11     1.07637275    -0.69121943 -1392.48424346    -0.00000005    -0.00000002  0.40D-08  0.20D-08  1208.03
   13    12    12     1.07636075    -0.69121939 -1392.48424342    -0.00000000    -0.00000004  0.30D-08  0.66D-08  1208.03
   13    13    13     1.07636055    -0.69121939 -1392.48424342    -0.00000000    -0.00000004  0.30D-08  0.67D-08  1208.03
   13    14    14     1.07636011    -0.69121938 -1392.48424341    -0.00000000    -0.00000004  0.30D-08  0.70D-08  1208.03
   13    15    15     1.08417473    -0.68304856 -1392.43392557    -0.00000009    -0.00000000  0.14D-09  0.24D-09  1208.03
   13    16    16     1.08417473    -0.68304856 -1392.43392557    -0.00000010    -0.00000000  0.17D-09  0.28D-09  1208.03
   13    17    17     1.08417475    -0.68304856 -1392.43392557    -0.00000011    -0.00000000  0.17D-09  0.29D-09  1208.03


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.2%   4.6%  75.4%

 Initialization:   0.1%
 Other:           19.6%

 Total CPU:     1208.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/222//222          -0.0000000   0.0084934   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.9638322  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 22///22222           0.0000000   0.9615218   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                     -0.0085756  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
 2222///222          -0.0000000  -0.0000000  -0.0010431   0.0000000   0.0000000  -0.0084291  -0.0000000   0.0000000   0.9546577
                     -0.0000000   0.1326691  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
 2///222222          -0.0000000  -0.0000000   0.1180896   0.0000000   0.0000000   0.9542433  -0.0000000   0.0000000   0.0084940
                      0.0000000   0.0011804   0.0000000   0.0000000  -0.0000000  -0.0000001   0.0000000   0.0000000
 2/2/22/222           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0034047  -0.0000000   0.0067910   0.8613416  -0.0000000
                     -0.0000000   0.0000000  -0.0000000  -0.0355207  -0.0000185  -0.0000000   0.0000000   0.0007523
 22//2/2222           0.0000000  -0.0000000   0.4267503   0.0000000   0.0000000  -0.0528112   0.0000000  -0.0000000  -0.0005279
                     -0.0000000   0.0037987   0.0000000   0.0000000  -0.0000000   0.8583075  -0.0000000  -0.0000000
 22//22/222          -0.0000000  -0.0000000  -0.0075390  -0.0000000   0.0000000   0.0009329  -0.0000000  -0.0000000  -0.1186626
                      0.0000000   0.8538716  -0.0000000   0.0000000   0.0000000  -0.0007523  -0.0000000  -0.0000000
 2/22//2222           0.0000000  -0.0000000   0.8535004   0.0000000   0.0000000  -0.1056226  -0.0000000   0.0000000  -0.0010558
                      0.0000000   0.0075973   0.0000000   0.0000000   0.0000000  -0.4291537   0.0000000   0.0000000
 222///2222           0.8447130  -0.0000000  -0.0000000   0.1614899  -0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0000000
                      0.0000000   0.0000000  -0.0046144   0.0000000   0.0061272   0.0000000   0.4291537  -0.0000000
 2/2/2/2222           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.8407492  -0.0000000  -0.1809995  -0.0022219  -0.0000000
                      0.0000000   0.0000000  -0.0000000  -0.0073415   0.0000000   0.0000000  -0.0000000   0.4291537
 22/2/2/222           0.0000000   0.0000000   0.0000000   0.0000000   0.0074265   0.0000000  -0.0015988   0.2497275   0.0000000
                     -0.0000000  -0.0000000   0.0000001   0.8251199  -0.0000053   0.0000000   0.0000000  -0.0007523
 2//22/2222          -0.3675401  -0.0000000  -0.0000000   0.7775175   0.0000000  -0.0000000   0.0000000  -0.0000001  -0.0000000
                      0.0000000   0.0000000  -0.0047791   0.0000000  -0.0059996   0.0000000   0.4291537  -0.0000000
 22/2//2222           0.0000000   0.0000000   0.0000000  -0.0000000   0.3854377   0.0000000   0.7688092  -0.0076637   0.0000000
                     -0.0000000  -0.0000000   0.0000000   0.0003161   0.0000002  -0.0000000  -0.0000000  -0.4291538
 2/2//22222          -0.2754959  -0.0000000  -0.0000000  -0.5421362   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                      0.0000000  -0.0000000   0.0054233  -0.0000000  -0.0000737   0.0000000   0.7433162  -0.0000000
 2//2/22222           0.0000000  -0.0000000   0.0000000  -0.0000000  -0.2628741  -0.0000000   0.5483728  -0.0031418  -0.0000000
                      0.0000000  -0.0000000   0.0000000   0.0044210   0.0000001   0.0000000   0.0000000   0.7433161
 2//222/222          -0.0074615   0.0000000   0.0000000  -0.0014264   0.0000000  -0.0000000  -0.0000000   0.0000148  -0.0000000
                      0.0000000  -0.0000000  -0.5186117   0.0000001   0.6886425   0.0000000   0.0007523   0.0000000
 222//2/222           0.0032466  -0.0000000  -0.0000000  -0.0068680   0.0000000  -0.0000000  -0.0000000  -0.0000145  -0.0000000
                     -0.0000000   0.0000000  -0.5371234   0.0000001  -0.6743044   0.0000000   0.0007523  -0.0000000
 22/22//222           0.0024335   0.0000000   0.0000000   0.0047889  -0.0000000  -0.0000000   0.0000000  -0.0000002  -0.0000000
                      0.0000000  -0.0000000   0.6095270  -0.0000001  -0.0082796   0.0000000   0.0013030  -0.0000000
 222/2//222          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0023221   0.0000000   0.0048439   0.3531167   0.0000000
                     -0.0000000  -0.0000000  -0.0000001  -0.4968888  -0.0000076  -0.0000000  -0.0000000  -0.0013030
 2/22/2/222          -0.0000000  -0.0000000  -0.0037698  -0.0000000   0.0000000   0.0004666  -0.0000000   0.0000000  -0.0593318
                      0.0000000   0.4269364   0.0000000  -0.0000000  -0.0000000   0.0015046  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000   -0.257490    0.000000    0.926691    0.000000    0.000000   -0.000000    0.000000    0.003923
            -0.000000   -0.007533   -0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.000000   -0.000000    0.961799   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.008493    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3           0.110284   -0.000000   -0.000000    0.000000   -0.000000    0.955455    0.000000   -0.001189    0.000000   -0.000000
             0.000000   -0.000000   -0.008410   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.926691    0.000000    0.257490    0.000000   -0.000000    0.000000    0.000000   -0.007533
             0.000000   -0.003923   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000    0.920913    0.000000   -0.000000   -0.000000    0.000000    0.277448    0.000000    0.008298    0.000000
             0.000000    0.000000    0.000000    0.001812    0.000000    0.000000    0.000000
 6           0.955456   -0.000000   -0.000000    0.000000    0.000000   -0.110284    0.000000   -0.008410   -0.000000   -0.000000
            -0.000000    0.000000    0.001189   -0.000000    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.277451    0.000000    0.000000   -0.000000   -0.000000    0.920921   -0.000000   -0.001812   -0.000000
            -0.000000   -0.000000   -0.000000    0.008298    0.000000    0.000000    0.000000
 8           0.000000   -0.001816   -0.000000    0.000000    0.000000    0.000000   -0.008385    0.000000    0.276500   -0.000017
            -0.000000    0.000012    0.000000    0.923316   -0.000000   -0.000000   -0.000000
 9           0.008507   -0.000000    0.000000   -0.000000    0.000000   -0.001111   -0.000000    0.952215    0.000000    0.000000
             0.000000    0.000000   -0.149196    0.000000    0.000000   -0.000000   -0.000000
 10          0.000000   -0.000000    0.000000   -0.008580   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.963832   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 11          0.001111    0.000000    0.000000   -0.000000    0.000000    0.008507   -0.000000    0.149196   -0.000000    0.000000
            -0.000000    0.000000    0.952215    0.000000    0.000000   -0.000000   -0.000000
 12          0.000000   -0.000000   -0.006407   -0.000000   -0.005706    0.000000    0.000000   -0.000000    0.000000   -0.571014
             0.000000   -0.776483   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 13         -0.000000   -0.008385    0.000000   -0.000000    0.000000    0.000000    0.001816   -0.000000    0.923325    0.000000
            -0.000000    0.000000    0.000000   -0.276503    0.000000    0.000000   -0.000000
 14         -0.000000    0.000000   -0.005706    0.000000    0.006407    0.000000    0.000000   -0.000000   -0.000006   -0.776483
            -0.000000    0.571014    0.000000   -0.000020   -0.000000   -0.000000   -0.000000
 15         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.960367    0.000000    0.000000
 16          0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.960367    0.000000
 17          0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.960367

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961836    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000015   -0.000000    0.000031   -0.000000   -0.000000    0.000000
 2           0.000000    0.961837   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000034
            -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.961837   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000001    0.000000
             0.000034    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.961837   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000   -0.000031   -0.000000   -0.000015    0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.961837    0.000000   -0.000000   -0.000017    0.000000    0.000000
             0.000000    0.000000   -0.000030    0.000000    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.961837   -0.000000    0.000000    0.000034   -0.000000
             0.000001    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.961846   -0.000030   -0.000000   -0.000000
            -0.000000   -0.000000    0.000017    0.000000   -0.000000    0.000000    0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000017    0.000000   -0.000030    0.963866    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 9          -0.000000   -0.000000   -0.000001    0.000000    0.000000    0.000034   -0.000000    0.000000    0.963870   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 10         -0.000000   -0.000034    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.963870
            -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 11          0.000000   -0.000000    0.000034   -0.000000    0.000000    0.000001   -0.000000    0.000000    0.000000   -0.000000
             0.963870   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 12         -0.000015    0.000000    0.000000   -0.000031    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.963876    0.000000    0.000000    0.000000    0.000000    0.000000
 13         -0.000000   -0.000000    0.000000   -0.000000   -0.000030   -0.000000    0.000017    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.963876    0.000000    0.000000    0.000000   -0.000000
 14          0.000031    0.000000    0.000000   -0.000015    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000    0.963876   -0.000000   -0.000000   -0.000000
 15         -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.000000   -0.000000    0.960367   -0.000000   -0.000000
 16         -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.960367   -0.000000
 17          0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.960367


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.92669093 (fixed)   0.96185260 (relaxed)   0.96183649 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003352   -0.00000001   -0.49030101
 Singles      0.02726734   -0.14629074   -0.15239037
 Pairs        0.05362899   -0.00000000   -0.03355769
 Total        1.08092984   -0.14629075   -0.67624906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82207549
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.45956351
 One electron energy                -1924.84463352
 Two electron energy                  532.34630668
 Virial quotient                       -0.95739913
 Correlation energy                    -0.67625135
 !MRCI STATE 1.1 Energy             -1392.498326839955

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55305575 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55303125 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55305575 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54807057 (Pople, fixed reference)
 Cluster corrected energies         -1392.54804698 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54807057 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96179917 (fixed)   0.96185279 (relaxed)   0.96183667 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003351   -0.00000001   -0.49030174
 Singles      0.02726704   -0.14629015   -0.15238979
 Pairs        0.05362886    0.00000000   -0.03355754
 Total        1.08092942   -0.14629016   -0.67624906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82207549
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.45951537
 One electron energy                -1924.84453104
 Two electron energy                  532.34620420
 Virial quotient                       -0.95739917
 Correlation energy                    -0.67625135
 !MRCI STATE 2.1 Energy             -1392.498326839646

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55305547 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55303097 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55305547 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54807029 (Pople, fixed reference)
 Cluster corrected energies         -1392.54804670 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54807029 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95545527 (fixed)   0.96185268 (relaxed)   0.96183656 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003351   -0.00000001   -0.49030069
 Singles      0.02726761   -0.14629117   -0.15239079
 Pairs        0.05362854    0.00000000   -0.03355759
 Total        1.08092967   -0.14629118   -0.67624906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82207549
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.45960417
 One electron energy                -1924.84470417
 Two electron energy                  532.34637733
 Virial quotient                       -0.95739911
 Correlation energy                    -0.67625135
 !MRCI STATE 3.1 Energy             -1392.498326839279

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55305563 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55303114 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55305563 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54807046 (Pople, fixed reference)
 Cluster corrected energies         -1392.54804687 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54807046 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.92669109 (fixed)   0.96185279 (relaxed)   0.96183667 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003352   -0.00000001   -0.49030093
 Singles      0.02726755   -0.14629103   -0.15239064
 Pairs        0.05362835    0.00000000   -0.03355750
 Total        1.08092942   -0.14629104   -0.67624906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82207549
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.45960147
 One electron energy                -1924.84468571
 Two electron energy                  532.34635887
 Virial quotient                       -0.95739911
 Correlation energy                    -0.67625135
 !MRCI STATE 4.1 Energy             -1392.498326838754

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55305546 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55303097 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55305546 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54807029 (Pople, fixed reference)
 Cluster corrected energies         -1392.54804670 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54807029 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.92091278 (fixed)   0.96185290 (relaxed)   0.96183679 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003352   -0.00000001   -0.49030101
 Singles      0.02726767   -0.14629118   -0.15239076
 Pairs        0.05362798    0.00000011   -0.03355729
 Total        1.08092916   -0.14629108   -0.67624906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82207549
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.45960597
 One electron energy                -1924.84469787
 Two electron energy                  532.34637103
 Virial quotient                       -0.95739911
 Correlation energy                    -0.67625134
 !MRCI STATE 5.1 Energy             -1392.498326838237

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55305529 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55303079 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55305529 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54807013 (Pople, fixed reference)
 Cluster corrected energies         -1392.54804654 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54807013 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95545604 (fixed)   0.96185345 (relaxed)   0.96183733 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003352   -0.00000001   -0.49030149
 Singles      0.02726783   -0.14629115   -0.15239062
 Pairs        0.05362659    0.00000000   -0.03355695
 Total        1.08092793   -0.14629115   -0.67624906
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82207550
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.45960047
 One electron energy                -1924.84466384
 Two electron energy                  532.34633700
 Virial quotient                       -0.95739911
 Correlation energy                    -0.67625134
 !MRCI STATE 6.1 Energy             -1392.498326834135

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55305446 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55302996 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55305446 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54806932 (Pople, fixed reference)
 Cluster corrected energies         -1392.54804573 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54806932 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.92092112 (fixed)   0.96186166 (relaxed)   0.96184554 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003351   -0.00000001   -0.49032140
 Singles      0.02725797   -0.14627824   -0.15238735
 Pairs        0.05361801   -0.00000039   -0.03354027
 Total        1.08090948   -0.14627864   -0.67624902
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.82207549
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.45763055
 One electron energy                -1924.84234544
 Two electron energy                  532.34401864
 Virial quotient                       -0.95740041
 Correlation energy                    -0.67625130
 !MRCI STATE 7.1 Energy             -1392.498326794743

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55304194 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55301745 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55304194 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54805727 (Pople, fixed reference)
 Cluster corrected energies         -1392.54803368 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54805727 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.92331588 (fixed)   0.96386625 (relaxed)   0.96386621 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000008   -0.00000001   -0.56030010
 Singles      0.01751622   -0.08812249   -0.09311538
 Pairs        0.05886586    0.00000001   -0.03780399
 Total        1.07638216   -0.08812249   -0.69121946
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79302631
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.00789635
 One electron energy                -1932.88513814
 Two electron energy                  540.40089465
 Virial quotient                       -0.95637135
 Correlation energy                    -0.69121718
 !MRCI STATE 8.1 Energy             -1392.484243493879

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53704016 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53704010 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53704016 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53207108 (Pople, fixed reference)
 Cluster corrected energies         -1392.53207102 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53207108 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95221469 (fixed)   0.96387037 (relaxed)   0.96387033 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000008   -0.00000001   -0.56029808
 Singles      0.01752155   -0.08812979   -0.09311907
 Pairs        0.05885132   -0.00000000   -0.03780228
 Total        1.07637295   -0.08812980   -0.69121943
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79302632
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.00657347
 One electron energy                -1932.88345184
 Two electron energy                  540.39920837
 Virial quotient                       -0.95637222
 Correlation energy                    -0.69121715
 !MRCI STATE 9.1 Energy             -1392.484243466536

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53703376 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53703370 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53703376 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53206496 (Pople, fixed reference)
 Cluster corrected energies         -1392.53206490 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53206496 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.96383221 (fixed)   0.96387043 (relaxed)   0.96387039 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000008   -0.00000001   -0.56029801
 Singles      0.01752161   -0.08812995   -0.09311911
 Pairs        0.05885112   -0.00000000   -0.03780232
 Total        1.07637282   -0.08812996   -0.69121943
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79302631
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.00656243
 One electron energy                -1932.88343757
 Two electron energy                  540.39919410
 Virial quotient                       -0.95637223
 Correlation energy                    -0.69121715
 !MRCI STATE 10.1 Energy            -1392.484243465265

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53703367 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53703360 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53703367 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53206487 (Pople, fixed reference)
 Cluster corrected energies         -1392.53206481 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53206487 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.95221474 (fixed)   0.96387042 (relaxed)   0.96387038 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000008   -0.00000001   -0.56029831
 Singles      0.01752146   -0.08812961   -0.09311905
 Pairs        0.05885130    0.00000000   -0.03780207
 Total        1.07637283   -0.08812962   -0.69121943
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79302631
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.00656783
 One electron energy                -1932.88345935
 Two electron energy                  540.39921589
 Virial quotient                       -0.95637223
 Correlation energy                    -0.69121715
 !MRCI STATE 11.1 Energy            -1392.484243464515

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53703368 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53703362 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53703368 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53206488 (Pople, fixed reference)
 Cluster corrected energies         -1392.53206482 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53206488 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.77648302 (fixed)   0.96387580 (relaxed)   0.96387576 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000008   -0.00000001   -0.56031039
 Singles      0.01751441   -0.08812328   -0.09311351
 Pairs        0.05884634   -0.00000000   -0.03779548
 Total        1.07636083   -0.08812329   -0.69121939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79302631
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.00916396
 One electron energy                -1932.88665521
 Two electron energy                  540.40241180
 Virial quotient                       -0.95637052
 Correlation energy                    -0.69121710
 !MRCI STATE 12.1 Energy            -1392.484243417651

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53702533 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53702527 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53702533 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53205689 (Pople, fixed reference)
 Cluster corrected energies         -1392.53205683 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53205689 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.92332511 (fixed)   0.96387588 (relaxed)   0.96387584 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000008   -0.00000001   -0.56031069
 Singles      0.01751431   -0.08812311   -0.09311345
 Pairs        0.05884625    0.00000004   -0.03779524
 Total        1.07636064   -0.08812308   -0.69121939
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79302632
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.00918651
 One electron energy                -1932.88668545
 Two electron energy                  540.40244203
 Virial quotient                       -0.95637051
 Correlation energy                    -0.69121710
 !MRCI STATE 13.1 Energy            -1392.484243416788

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53702520 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53702514 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53702520 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53205676 (Pople, fixed reference)
 Cluster corrected energies         -1392.53205670 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53205676 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.77648326 (fixed)   0.96387608 (relaxed)   0.96387604 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000008   -0.00000001   -0.56031101
 Singles      0.01751418   -0.08812297   -0.09311334
 Pairs        0.05884593    0.00000000   -0.03779503
 Total        1.07636020   -0.08812298   -0.69121938
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79302631
 Nuclear energy                         0.00000000
 Kinetic energy                      1456.00923244
 One electron energy                -1932.88674365
 Two electron energy                  540.40250024
 Virial quotient                       -0.95637048
 Correlation energy                    -0.69121710
 !MRCI STATE 14.1 Energy            -1392.484243413441

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53702489 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53702483 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53702489 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53205647 (Pople, fixed reference)
 Cluster corrected energies         -1392.53205641 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53205647 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.96036668 (fixed)   0.96039604 (relaxed)   0.96036668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006114    0.00000000   -0.49446300
 Singles      0.02949784   -0.14697325   -0.15413678
 Pairs        0.05468204   -0.00000000   -0.03444877
 Total        1.08424102   -0.14697325   -0.68304856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75087701
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.40145478
 One electron energy                -1924.61713254
 Two electron energy                  532.18320697
 Virial quotient                       -0.95739311
 Correlation energy                    -0.68304856
 !MRCI STATE 15.1 Energy            -1392.433925568891

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.49146628 (Davidson, fixed reference)
 Cluster corrected energies         -1392.49142100 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.49146628 (Davidson, rotated reference)

 Cluster corrected energies         -1392.48635238 (Pople, fixed reference)
 Cluster corrected energies         -1392.48630857 (Pople, relaxed reference)
 Cluster corrected energies         -1392.48635238 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.96036668 (fixed)   0.96039604 (relaxed)   0.96036668 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006114   -0.00000000   -0.49446291
 Singles      0.02949787   -0.14697335   -0.15413682
 Pairs        0.05468201   -0.00000000   -0.03444883
 Total        1.08424102   -0.14697335   -0.68304856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75087701
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.40143574
 One electron energy                -1924.61712466
 Two electron energy                  532.18319909
 Virial quotient                       -0.95739312
 Correlation energy                    -0.68304856
 !MRCI STATE 16.1 Energy            -1392.433925568404

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.49146628 (Davidson, fixed reference)
 Cluster corrected energies         -1392.49142100 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.49146628 (Davidson, rotated reference)

 Cluster corrected energies         -1392.48635239 (Pople, fixed reference)
 Cluster corrected energies         -1392.48630858 (Pople, relaxed reference)
 Cluster corrected energies         -1392.48635239 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Coefficient of reference function:   C(0) = 0.96036667 (fixed)   0.96039603 (relaxed)   0.96036667 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006114    0.00000000   -0.00003852
 Singles      0.02949786   -0.14697335   -0.15413681
 Pairs        0.05468204   -0.53607521   -0.52887323
 Total        1.08424104   -0.68304856   -0.68304856
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.75087701
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.40143250
 One electron energy                -1924.61712191
 Two electron energy                  532.18319634
 Virial quotient                       -0.95739312
 Correlation energy                    -0.68304856
 !MRCI STATE 17.1 Energy            -1392.433925568254

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.49146629 (Davidson, fixed reference)
 Cluster corrected energies         -1392.49142101 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.49146629 (Davidson, rotated reference)

 Cluster corrected energies         -1392.48635240 (Pople, fixed reference)
 Cluster corrected energies         -1392.48630859 (Pople, relaxed reference)
 Cluster corrected energies         -1392.48635240 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.55       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       7      406.50       700     1000      520     2100     2140     2141     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1267.00   1260.82      2.81      1.54      0.79      0.83
 REAL TIME  *      1386.32 SEC
 DISK USED  *       443.10 MB (local),        4.37 GB (total)
 SF USED    *         3.92 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1392.55305575  AU                              
 SETTING HLSDIAG(2)     =     -1392.55305547  AU                              
 SETTING HLSDIAG(3)     =     -1392.55305563  AU                              
 SETTING HLSDIAG(4)     =     -1392.55305546  AU                              
 SETTING HLSDIAG(5)     =     -1392.55305529  AU                              
 SETTING HLSDIAG(6)     =     -1392.55305446  AU                              
 SETTING HLSDIAG(7)     =     -1392.55304194  AU                              
 SETTING HLSDIAG(8)     =     -1392.53704016  AU                              
 SETTING HLSDIAG(9)     =     -1392.53703376  AU                              
 SETTING HLSDIAG(10)    =     -1392.53703367  AU                              
 SETTING HLSDIAG(11)    =     -1392.53703368  AU                              
 SETTING HLSDIAG(12)    =     -1392.53702533  AU                              
 SETTING HLSDIAG(13)    =     -1392.53702520  AU                              
 SETTING HLSDIAG(14)    =     -1392.53702489  AU                              
 SETTING HLSDIAG(15)    =     -1392.49146628  AU                              
 SETTING HLSDIAG(16)    =     -1392.49146628  AU                              
 SETTING HLSDIAG(17)    =     -1392.49146629  AU                              


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
     1     -1391.76937085
     2     -1391.76937084
     3     -1391.76937084
     4     -1391.76937084
     5     -1391.76937084
     6     -1391.76937084
     7     -1391.76937084

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.16D-04
 Number of N-2 electron functions:     700
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       1329888
 Total number of contracted configurations:      1409119
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:  570570 words, CPU-Time:      0.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  429037 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1391.76937085     0.00000000    -0.86659127  0.61D-01  0.96D-01     0.35
    1     2     2     1.00000000     0.00000000 -1391.76937084     0.00000000    -0.86760756  0.60D-01  0.95D-01     0.35
    1     3     3     1.00000000     0.00000000 -1391.76937084     0.00000000    -0.86765924  0.60D-01  0.95D-01     0.35
    1     4     4     1.00000000     0.00000000 -1391.76937084     0.00000000    -0.86709803  0.61D-01  0.96D-01     0.35
    1     5     5     1.00000000     0.00000000 -1391.76937084    -0.00000000    -0.86594437  0.59D-01  0.95D-01     0.35
    1     6     6     1.00000000     0.00000000 -1391.76937084     0.00000000    -0.86741693  0.59D-01  0.95D-01     0.35
    1     7     7     1.00000000     0.00000000 -1391.76937084     0.00000000    -0.86596333  0.59D-01  0.95D-01     0.35
    2     1     1     1.08971454    -0.66110039 -1392.43047123    -0.66110039    -0.03655492  0.66D-02  0.29D-02    18.46
    2     2     2     1.08971275    -0.66109746 -1392.43046830    -0.66109746    -0.03655436  0.66D-02  0.29D-02    18.46
    2     3     3     1.08995409    -0.66099338 -1392.43036423    -0.66099338    -0.03675156  0.67D-02  0.29D-02    18.46
    2     4     4     1.09014892    -0.66078775 -1392.43015859    -0.66078775    -0.03693035  0.69D-02  0.29D-02    18.46
    2     5     5     1.09015380    -0.66078389 -1392.43015474    -0.66078389    -0.03692505  0.69D-02  0.29D-02    18.46
    2     6     6     1.09101006    -0.66022751 -1392.42959835    -0.66022751    -0.03748332  0.74D-02  0.28D-02    18.46
    2     7     7     1.09097497    -0.66011026 -1392.42948110    -0.66011026    -0.03756228  0.74D-02  0.28D-02    18.46
    3     1     1     1.07765217    -0.69258638 -1392.46195722    -0.03148599    -0.00172485  0.24D-03  0.23D-03    36.61
    3     2     2     1.07765706    -0.69258592 -1392.46195677    -0.03148846    -0.00172563  0.24D-03  0.23D-03    36.61
    3     3     3     1.07765114    -0.69256329 -1392.46193414    -0.03156991    -0.00173843  0.24D-03  0.23D-03    36.61
    3     4     4     1.07753152    -0.69251990 -1392.46189074    -0.03173215    -0.00174879  0.25D-03  0.23D-03    36.61
    3     5     5     1.07753605    -0.69251798 -1392.46188882    -0.03173408    -0.00175029  0.25D-03  0.23D-03    36.61
    3     6     6     1.07775560    -0.69246912 -1392.46183996    -0.03224160    -0.00179805  0.27D-03  0.23D-03    36.61
    3     7     7     1.07770669    -0.69244034 -1392.46181118    -0.03233008    -0.00181468  0.27D-03  0.23D-03    36.61
    4     1     1     1.07749935    -0.69428801 -1392.46365886    -0.00170163    -0.00022082  0.20D-04  0.35D-04    54.75
    4     2     2     1.07747030    -0.69428193 -1392.46365278    -0.00169601    -0.00022413  0.20D-04  0.36D-04    54.75
    4     3     3     1.07753792    -0.69428146 -1392.46365230    -0.00171816    -0.00024977  0.15D-04  0.54D-04    54.75
    4     4     4     1.07754524    -0.69428137 -1392.46365221    -0.00176147    -0.00025078  0.15D-04  0.55D-04    54.75
    4     5     5     1.07748185    -0.69427364 -1392.46364448    -0.00175566    -0.00025642  0.15D-04  0.55D-04    54.75
    4     6     6     1.07747399    -0.69427308 -1392.46364392    -0.00180396    -0.00025602  0.15D-04  0.54D-04    54.75
    4     7     7     1.07753665    -0.69426427 -1392.46363511    -0.00182393    -0.00027290  0.14D-04  0.64D-04    54.75
    5     1     1     1.07831834    -0.69453814 -1392.46390898    -0.00025013    -0.00003095  0.12D-05  0.68D-05    72.88
    5     2     2     1.07831400    -0.69453783 -1392.46390867    -0.00025589    -0.00002994  0.13D-05  0.62D-05    72.88
    5     3     3     1.07820663    -0.69451599 -1392.46388683    -0.00023453    -0.00006622  0.13D-05  0.21D-04    72.88
    5     4     4     1.07820566    -0.69451542 -1392.46388626    -0.00023405    -0.00006653  0.14D-05  0.21D-04    72.88
    5     5     5     1.07818306    -0.69451055 -1392.46388139    -0.00023691    -0.00006972  0.19D-05  0.21D-04    72.88
    5     6     6     1.07818351    -0.69451014 -1392.46388098    -0.00023707    -0.00007004  0.20D-05  0.21D-04    72.88
    5     7     7     1.07816386    -0.69450327 -1392.46387411    -0.00023900    -0.00007677  0.26D-05  0.23D-04    72.88
    6     1     1     1.07855980    -0.69456584 -1392.46393669    -0.00002771    -0.00000752  0.63D-06  0.18D-05    91.09
    6     2     2     1.07855201    -0.69456530 -1392.46393615    -0.00002747    -0.00000833  0.67D-06  0.22D-05    91.09
    6     3     3     1.07848809    -0.69456069 -1392.46393154    -0.00004470    -0.00001026  0.14D-05  0.21D-05    91.09
    6     4     4     1.07848703    -0.69456065 -1392.46393150    -0.00004523    -0.00001034  0.14D-05  0.22D-05    91.09
    6     5     5     1.07847219    -0.69455992 -1392.46393077    -0.00004937    -0.00001088  0.14D-05  0.23D-05    91.09
    6     6     6     1.07847319    -0.69455992 -1392.46393077    -0.00004978    -0.00001086  0.14D-05  0.22D-05    91.09
    6     7     7     1.07847097    -0.69455871 -1392.46392955    -0.00005544    -0.00001159  0.15D-05  0.24D-05    91.09
    7     1     1     1.07868682    -0.69457191 -1392.46394276    -0.00000607    -0.00000164  0.84D-07  0.38D-06   109.20
    7     2     2     1.07867842    -0.69457179 -1392.46394264    -0.00000649    -0.00000172  0.78D-07  0.42D-06   109.20
    7     3     3     1.07866172    -0.69457093 -1392.46394178    -0.00001024    -0.00000252  0.94D-07  0.67D-06   109.20
    7     4     4     1.07865953    -0.69457093 -1392.46394177    -0.00001028    -0.00000250  0.93D-07  0.65D-06   109.20
    7     5     5     1.07865641    -0.69457074 -1392.46394159    -0.00001082    -0.00000269  0.10D-06  0.71D-06   109.20
    7     6     6     1.07865791    -0.69457072 -1392.46394156    -0.00001080    -0.00000272  0.10D-06  0.73D-06   109.20
    7     7     7     1.07865368    -0.69457018 -1392.46394102    -0.00001147    -0.00000329  0.86D-07  0.94D-06   109.20
    8     1     1     1.07875060    -0.69457349 -1392.46394434    -0.00000158    -0.00000038  0.10D-07  0.96D-07   127.33
    8     2     2     1.07874594    -0.69457344 -1392.46394428    -0.00000164    -0.00000045  0.96D-08  0.12D-06   127.33
    8     3     3     1.07872459    -0.69457305 -1392.46394390    -0.00000212    -0.00000091  0.18D-07  0.30D-06   127.33
    8     4     4     1.07872413    -0.69457305 -1392.46394390    -0.00000212    -0.00000091  0.17D-07  0.30D-06   127.33
    8     5     5     1.07872134    -0.69457298 -1392.46394382    -0.00000224    -0.00000097  0.23D-07  0.31D-06   127.33
    8     6     6     1.07872155    -0.69457297 -1392.46394381    -0.00000225    -0.00000097  0.25D-07  0.31D-06   127.33
    8     7     7     1.07871727    -0.69457277 -1392.46394361    -0.00000259    -0.00000113  0.43D-07  0.35D-06   127.33
    9     1     1     1.07876753    -0.69457381 -1392.46394465    -0.00000031    -0.00000012  0.51D-08  0.32D-07   145.52
    9     2     2     1.07876548    -0.69457379 -1392.46394463    -0.00000035    -0.00000013  0.51D-08  0.38D-07   145.52
    9     3     3     1.07875589    -0.69457370 -1392.46394455    -0.00000065    -0.00000020  0.14D-07  0.55D-07   145.52
    9     4     4     1.07875588    -0.69457370 -1392.46394454    -0.00000065    -0.00000020  0.13D-07  0.57D-07   145.52
    9     5     5     1.07875374    -0.69457368 -1392.46394452    -0.00000070    -0.00000022  0.14D-07  0.60D-07   145.52
    9     6     6     1.07875362    -0.69457368 -1392.46394452    -0.00000071    -0.00000022  0.14D-07  0.60D-07   145.52
    9     7     7     1.07875025    -0.69457362 -1392.46394446    -0.00000085    -0.00000027  0.16D-07  0.77D-07   145.52
   10     1     1     1.07877938    -0.69457391 -1392.46394475    -0.00000010    -0.00000003  0.56D-09  0.88D-08   163.64
   10     2     2     1.07877777    -0.69457390 -1392.46394474    -0.00000011    -0.00000004  0.46D-09  0.13D-07   163.64
   10     3     3     1.07877365    -0.69457387 -1392.46394471    -0.00000016    -0.00000007  0.26D-09  0.24D-07   163.64
   10     4     4     1.07877339    -0.69457386 -1392.46394471    -0.00000016    -0.00000007  0.27D-09  0.24D-07   163.64
   10     5     5     1.07877204    -0.69457386 -1392.46394470    -0.00000017    -0.00000008  0.29D-09  0.26D-07   163.64
   10     6     6     1.07877204    -0.69457386 -1392.46394470    -0.00000018    -0.00000008  0.30D-09  0.26D-07   163.64
   10     7     7     1.07876985    -0.69457383 -1392.46394467    -0.00000021    -0.00000010  0.84D-09  0.33D-07   163.64
   11     1     1     1.07879095    -0.69457393 -1392.46394478    -0.00000002    -0.00000002  0.99D-09  0.47D-08   179.88
   11     2     2     1.07878372    -0.69457393 -1392.46394477    -0.00000003    -0.00000001  0.20D-09  0.41D-08   179.88
   11     3     3     1.07878214    -0.69457392 -1392.46394476    -0.00000005    -0.00000002  0.11D-08  0.74D-08   179.88
   11     4     4     1.07878202    -0.69457392 -1392.46394476    -0.00000006    -0.00000002  0.10D-08  0.77D-08   179.88
   11     5     5     1.07878133    -0.69457392 -1392.46394476    -0.00000006    -0.00000003  0.10D-08  0.85D-08   179.88
   11     6     6     1.07878131    -0.69457392 -1392.46394476    -0.00000006    -0.00000003  0.99D-09  0.84D-08   179.88
   11     7     7     1.07877938    -0.69457391 -1392.46394475    -0.00000008    -0.00000003  0.56D-09  0.88D-08   179.88


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.5%
 P   0.3%   8.0%  71.4%

 Initialization:   0.1%
 Other:           19.4%

 Total CPU:      179.9 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/222/\222          -0.0000000   0.9620314  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
 2222//\222          -0.0087044   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9619940
 22//22\222           0.8604299   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0077856
 22/2/2\222           0.0000000   0.0000000   0.7964638  -0.0000000  -0.0000000  -0.3256588   0.0000000
 222//2\222           0.0000000  -0.0000000  -0.0000000   0.7239611  -0.4650684   0.0000000  -0.0000000
 2/2/22\222          -0.0000000  -0.0000000   0.5144304   0.0000000   0.0000000   0.6897578  -0.0000000
 2//222\222           0.0000000  -0.0000000   0.0000000  -0.6312875  -0.5847057   0.0000000   0.0000000
 22/22/\222           0.0000000  -0.0000000   0.0000000  -0.0535006   0.6060834   0.0000000  -0.0000000
 222/2/\222           0.0000000   0.0000000  -0.1628267  -0.0000000  -0.0000000   0.5862483   0.0000000
 2/22/2\222           0.4302127   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0038926

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.004809   -0.000000   -0.000000   -0.000000   -0.000000    0.962772   -0.000000
 2          -0.000000   -0.000000   -0.000000    0.962787   -0.000000    0.000000   -0.000000
 3           0.000000    0.885865   -0.000000   -0.000000    0.000000    0.000000    0.377100
 4           0.000000    0.000000    0.814355   -0.000000   -0.513601    0.000000    0.000000
 5          -0.000000   -0.000000   -0.513601   -0.000000   -0.814356   -0.000000    0.000000
 6          -0.000000   -0.377100   -0.000000    0.000000    0.000000    0.000000    0.885865
 7           0.962777   -0.000000   -0.000000    0.000000    0.000000   -0.004809    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.962784   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.962787   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.962788    0.000000   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.000000    0.962788    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.962788    0.000000   -0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.962788   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.962789


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96277191 (fixed)   0.96278952 (relaxed)   0.96278392 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001163    0.00000000   -0.56060253
 Singles      0.01918863   -0.08980204   -0.09559006
 Pairs        0.05960324    0.00000000   -0.03838134
 Total        1.07880350   -0.08980204   -0.69457393
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76937084
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.99331574
 One electron energy                -1932.84522045
 Two electron energy                  540.38127567
 Virial quotient                       -0.95636699
 Correlation energy                    -0.69457393
 !MRCI STATE 1.1 Energy             -1392.463944776135

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51867963 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51867091 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51867963 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51480719 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479859 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51480719 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96278715 (fixed)   0.96279274 (relaxed)   0.96278715 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001163    0.00000000   -0.56060902
 Singles      0.01918579   -0.08979908   -0.09558895
 Pairs        0.05959884   -0.00000000   -0.03837596
 Total        1.07879626   -0.08979908   -0.69457393
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76937084
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.99369671
 One electron energy                -1932.84576594
 Two electron energy                  540.38182117
 Virial quotient                       -0.95636674
 Correlation energy                    -0.69457393
 !MRCI STATE 2.1 Energy             -1392.463944773746

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51867460 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51866589 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51867460 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51480223 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479364 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51480223 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.88586461 (fixed)   0.96279345 (relaxed)   0.96278785 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001163    0.00000000   -0.34103394
 Singles      0.01918788   -0.08980208   -0.09559016
 Pairs        0.05959518   -0.23687431   -0.25794982
 Total        1.07879468   -0.32667639   -0.69457392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76937084
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.99330650
 One electron energy                -1932.84525904
 Two electron energy                  540.38131428
 Virial quotient                       -0.95636700
 Correlation energy                    -0.69457392
 !MRCI STATE 3.1 Energy             -1392.463944763525

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51867350 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51866478 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51867350 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51480114 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479255 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51480114 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.81435547 (fixed)   0.96279350 (relaxed)   0.96278790 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001163   -0.00000000   -0.56060719
 Singles      0.01918776   -0.08980200   -0.09559008
 Pairs        0.05959518   -0.00000000   -0.03837665
 Total        1.07879457   -0.08980200   -0.69457392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76937084
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.99332123
 One electron energy                -1932.84527919
 Two electron energy                  540.38133443
 Virial quotient                       -0.95636699
 Correlation energy                    -0.69457392
 !MRCI STATE 4.1 Energy             -1392.463944762657

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51867341 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51866470 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51867341 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51480106 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479247 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51480106 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.81435582 (fixed)   0.96279381 (relaxed)   0.96278821 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001163   -0.00000000   -0.56060752
 Singles      0.01918752   -0.08980204   -0.09558991
 Pairs        0.05959472    0.00000000   -0.03837649
 Total        1.07879387   -0.08980204   -0.69457392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76937084
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.99333600
 One electron energy                -1932.84531045
 Two electron energy                  540.38136569
 Virial quotient                       -0.95636698
 Correlation energy                    -0.69457392
 !MRCI STATE 5.1 Energy             -1392.463944759264

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51867293 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51866421 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51867293 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51480058 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479198 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51480058 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.88586499 (fixed)   0.96279382 (relaxed)   0.96278822 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001163    0.00000000   -0.04479724
 Singles      0.01918741   -0.08980194   -0.09558983
 Pairs        0.05959481   -0.55645307   -0.55418685
 Total        1.07879386   -0.64625501   -0.69457392
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76937084
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.99335223
 One electron energy                -1932.84533159
 Two electron energy                  540.38138683
 Virial quotient                       -0.95636697
 Correlation energy                    -0.69457392
 !MRCI STATE 6.1 Energy             -1392.463944759122

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51867292 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51866420 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51867292 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51480057 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479197 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51480057 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96277707 (fixed)   0.96279468 (relaxed)   0.96278908 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001163   -0.00000000   -0.56061052
 Singles      0.01918548   -0.08979989   -0.09558863
 Pairs        0.05959482    0.00000000   -0.03837476
 Total        1.07879193   -0.08979989   -0.69457391
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.76937085
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.99410290
 One electron energy                -1932.84626726
 Two electron energy                  540.38232251
 Virial quotient                       -0.95636647
 Correlation energy                    -0.69457391
 !MRCI STATE 7.1 Energy             -1392.463944752955

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51867157 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51866285 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51867157 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51479924 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479064 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51479924 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.55       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       8      482.89       700     1000      520     2100     2140     2141     5101     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1451.05    184.06   1260.82      2.81      1.54      0.79      0.83
 REAL TIME  *      1585.04 SEC
 DISK USED  *       519.50 MB (local),        5.12 GB (total)
 SF USED    *         3.92 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(18)    =     -1392.51867963  AU                              
 SETTING HLSDIAG(19)    =     -1392.51867460  AU                              
 SETTING HLSDIAG(20)    =     -1392.51867350  AU                              
 SETTING HLSDIAG(21)    =     -1392.51867341  AU                              
 SETTING HLSDIAG(22)    =     -1392.51867293  AU                              
 SETTING HLSDIAG(23)    =     -1392.51867292  AU                              
 SETTING HLSDIAG(24)    =     -1392.51867157  AU                              


         HLSDIAG
    -1392.553056
    -1392.553055
    -1392.553056
    -1392.553055
    -1392.553055
    -1392.553054
    -1392.553042
    -1392.537040
    -1392.537034
    -1392.537034
    -1392.537034
    -1392.537025
    -1392.537025
    -1392.537025
    -1392.491466
    -1392.491466
    -1392.491466
    -1392.518680
    -1392.518675
    -1392.518673
    -1392.518673
    -1392.518673
    -1392.518673
    -1392.518672
                                                  


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

 Time for Seward_LS:       4.68 sec

        8281165. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     2036 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      4.69 sec, REAL time:      4.71 sec


 SORTLS1 read     8314052. and wrote     8314052. SO integrals in    50 records. CPU time:      0.07 sec, REAL time:      0.13 sec
 SORTLS2 read     8314052. and wrote     8314052. SO integrals in    30 records. CPU time:      0.01 sec, REAL time:      0.07 sec

 FILE SIZES: FILE 1:   171.8 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   171.8 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 1.5  NSTATE=  17

 Original energies:  -1392.498327  -1392.498327  -1392.498327  -1392.498327  -1392.498327  -1392.498327  -1392.498327  -1392.484243
                     -1392.484243  -1392.484243  -1392.484243  -1392.484243  -1392.484243  -1392.484243  -1392.433926  -1392.433926
                     -1392.433926
 Replaced energies:  -1392.553056  -1392.553055  -1392.553056  -1392.553055  -1392.553055  -1392.553054  -1392.553042  -1392.537040
                     -1392.537034  -1392.537034  -1392.537034  -1392.537025  -1392.537025  -1392.537025  -1392.491466  -1392.491466
                     -1392.491466

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:  -1392.463945  -1392.463945  -1392.463945  -1392.463945  -1392.463945  -1392.463945  -1392.463945
 Replaced energies:  -1392.518680  -1392.518675  -1392.518673  -1392.518673  -1392.518673  -1392.518673  -1392.518672



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1392.55305575

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     711.49      -0.00     203.99       0.94      -0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -67.01      -0.00      -0.00    -541.60       0.00      -0.00       0.97       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      67.01       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.12

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.06       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -229.26      -0.00    -379.67      -0.80      -0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.10       0.00       0.00       0.00       0.00       0.00
                         -711.49       0.00       0.00     229.26      -0.00      -0.00       0.00       0.00      -0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.28       0.00       0.00       0.00       0.00
                            0.00     541.60       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.97

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       3.03       0.00       0.00       0.00
                         -203.99      -0.00       0.00     379.67      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3515.02       0.00       0.00
                           -0.94       0.00       0.00       0.80      -0.00       0.00      -0.00       0.00      -0.00      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3516.42       0.00
                            0.00      -0.97      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -491.99

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3516.44
                            0.00      -0.00      -0.12       0.00       0.00      -0.97       0.00       0.00     491.99       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.14      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00     -68.37

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.19       0.00      -0.45    -152.11      -0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.94       0.00      -0.00       0.03       0.00      -0.00       0.00       0.01       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -1.33       0.00      -0.63    -605.34      -0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.02       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.02      -0.00      -0.02       0.00      -0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.01      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   18   1.1  1.5  0.5      -0.00      -0.00    -180.76       0.00      -0.00     -37.25       0.00      -0.00       0.06      -0.00
                            0.00     284.82       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.51

   19   2.1  1.5  0.5       0.00      -0.00       0.00      -0.00      66.32       0.00     308.01       0.54       0.00      -0.00
                         -284.82       0.00      -0.00    -134.64       0.00      -0.00       0.00       0.00       0.00      -0.00

   20   3.1  1.5  0.5     180.76      -0.00      -0.00     303.40      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00     200.13      -0.00    -362.65      -0.40       0.00      -0.00

   21   4.1  1.5  0.5      -0.00       0.00    -303.40      -0.00      -0.00     349.38       0.00      -0.00      -0.64      -0.00
                           -0.00     134.64      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.24

   22   5.1  1.5  0.5       0.00     -66.32       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.12
                            0.00      -0.00    -200.13      -0.00      -0.00    -259.01       0.00       0.00       0.46      -0.00

   23   6.1  1.5  0.5      37.25      -0.00       0.00    -349.38      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     259.01       0.00     -97.40       0.07       0.00      -0.00

   24   7.1  1.5  0.5      -0.00    -308.01       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.55
                            0.00      -0.00     362.65       0.00      -0.00      97.40      -0.00      -0.00      -0.16       0.00

   25   8.1  1.5  0.5       0.00      -0.54       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00    -274.49
                           -0.00      -0.00       0.40       0.00      -0.00      -0.07       0.00       0.00      39.71      -0.00

   26   9.1  1.5  0.5      -0.06      -0.00       0.00       0.64      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.46      -0.00       0.16     -39.71      -0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.12      -0.00       0.55     274.49       0.00      -0.00
                           -0.51       0.00       0.00      -0.24       0.00       0.00      -0.00       0.00       0.00      -0.00

   28  11.1  1.5  0.5      -0.33      -0.00       0.00      -0.54       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.37       0.00       0.65     199.89      -0.00      -0.00

   29  12.1  1.5  0.5      -0.00       0.00      -0.63      -0.00       0.00       0.53      -0.00      -0.00    -275.25       0.00
                            0.00       0.44      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     224.31

   30  13.1  1.5  0.5      -0.00       0.17       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      83.08
                           -0.00       0.00      -0.63      -0.00      -0.00      -0.49       0.00      -0.00     244.40      -0.00

   31  14.1  1.5  0.5      -0.00       0.00       0.05      -0.00       0.00       0.34      -0.00      -0.00    -170.23       0.01
                            0.00      -0.35      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    -178.67

   32  15.1  1.5  0.5       0.00      -0.00      -0.00      -0.01       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.02      -0.00      -0.01      -0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.01       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.01      -0.00       0.00       0.02      -0.00       0.00      -0.00      -0.00

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

   69   1.1  0.5  0.5      -3.24      -0.00      -0.00      -6.45      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -3.05      -0.00       6.44    -140.75       0.00      -0.00

   70   2.1  0.5  0.5       0.00      -0.00      -0.00      -0.00       1.23       0.00       5.73    -189.79      -0.00      -0.00
                           -5.30      -0.00      -0.00      -2.50       0.00      -0.00       0.00      -0.00      -0.00       0.00

   71   3.1  0.5  0.5      -0.00      -2.21       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      75.05
                           -0.00       0.00      -2.48       0.00      -0.00      -4.42       0.00      -0.00    -148.49       0.00

   72   4.1  0.5  0.5       0.00       0.00       0.14      -0.00       0.00      -4.02       0.00      -0.00    -136.40      -0.00
                           -0.00       3.17      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -107.17

   73   5.1  0.5  0.5       0.00       0.00      -6.56      -0.00       0.00       5.14      -0.00       0.00     177.39      -0.00
                            0.00       4.93       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    -166.83

   74   6.1  0.5  0.5       0.00      -5.42       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     183.54
                           -0.00      -0.00       7.29       0.00       0.00       2.63       0.00       0.00      85.21       0.00

   75   7.1  0.5  0.5      -1.13       0.00      -0.00       5.69       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -5.26       0.00       2.68       6.90       0.00       0.00

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

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     180.76
                           -0.00       0.00       0.94      -0.00      -0.00      -0.00       0.01      -0.00     284.82       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.14       0.00      -0.00       0.00       0.02      -0.00      -0.00    -284.82      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -180.76       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     303.40
                           -0.00      -0.00      -0.03       0.00       0.00       0.00      -0.01      -0.00     134.64      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      66.32      -0.00
                           -0.00      -0.19      -0.00       1.33       0.00      -0.02       0.00       0.00      -0.00    -200.13

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -37.25       0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     308.01      -0.00
                           -0.00       0.45      -0.00       0.63       0.00       0.02       0.00       0.00      -0.00     362.65

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.54      -0.00
                            0.00     152.11      -0.01     605.34       0.00      -0.00       0.00      -0.00      -0.00       0.40

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.06       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           68.37       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.51       0.00       0.00

   11  11.1  1.5  1.5    3516.44       0.00       0.00       0.00       0.00       0.00       0.00       0.33       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   12  12.1  1.5  1.5       0.00    3518.27       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.63
                           -0.00      -0.00     196.57       0.00       0.00      -0.00      -0.00       0.00       0.44      -0.00

   13  13.1  1.5  1.5       0.00       0.00    3518.30       0.00       0.00       0.00       0.00       0.00      -0.17      -0.00
                            0.00    -196.57       0.00     434.33       0.00      -0.00      -0.00      -0.00       0.00      -0.63

   14  14.1  1.5  1.5       0.00       0.00       0.00    3518.37       0.00       0.00       0.00       0.00      -0.00      -0.05
                            0.00      -0.00    -434.33       0.00      -0.00      -0.00      -0.00       0.00      -0.35      -0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00   13517.33       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00   13517.33       0.00      -0.00      -0.00      -0.01
                           -0.00       0.00       0.00       0.00       0.00       0.00     253.70      -0.00      -0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   13517.32      -0.00      -0.01      -0.00
                            0.00       0.00       0.00       0.00      -0.00    -253.70      -0.00      -0.00      -0.00      -0.01

   18   1.1  1.5  0.5       0.33       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   19   2.1  1.5  0.5       0.00      -0.00      -0.17      -0.00       0.00      -0.00      -0.01       0.00       0.06       0.00
                            0.00      -0.44      -0.00       0.35       0.00       0.00       0.00      -0.00       0.00     -22.34

   20   3.1  1.5  0.5      -0.00       0.63      -0.00      -0.05       0.00      -0.01      -0.00       0.00       0.00       0.03
                           -0.00       0.00       0.63       0.00       0.00      -0.00       0.01       0.00      22.34       0.00

   21   4.1  1.5  0.5       0.54       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   22   5.1  1.5  0.5      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.37       0.00       0.00       0.00       0.02      -0.00      -0.00    -237.16       0.00       0.00

   23   6.1  1.5  0.5       0.00      -0.53      -0.00      -0.34       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.49      -0.00       0.00      -0.00      -0.02       0.00     180.53       0.00

   24   7.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.65      -0.00      -0.00      -0.00       0.01       0.00       0.00     -68.00      -0.00       0.00

   25   8.1  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                         -199.89      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.31       0.00       0.00

   26   9.1  1.5  0.5      -0.00     275.25      -0.00     170.23       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -244.40       0.00      -0.00      -0.00       0.00       0.00      -0.32      -0.00

   27  10.1  1.5  0.5      -0.00      -0.00     -83.08      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -224.31       0.00     178.67      -0.00      -0.00       0.00       0.00      -0.00      -0.04

   28  11.1  1.5  0.5      -0.00    -316.33       0.00      28.47      -0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00    -323.01      -0.00      -0.00      -0.00       0.00       0.00      -0.05      -0.00

   29  12.1  1.5  0.5     316.33       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30  13.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          323.01       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.31       0.00      -0.00

   31  14.1  1.5  0.5     -28.47      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   32  15.1  1.5  0.5       0.00      -0.00      -0.00      -0.00      -0.00     146.48      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00     146.46       0.00      -0.01       0.00

   33  16.1  1.5  0.5      -0.00       0.00      -0.00       0.00    -146.48      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -146.46       0.00      -0.00      -0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -208.72
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     328.88       0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -328.88       0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     208.72      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -350.33
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     155.46      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -76.58       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -231.09

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      43.01      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -355.66       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     418.75

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.63       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.46

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.07      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.59       0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.38      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.73
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.51      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.19       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.73

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.41      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01

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

   69   1.1  0.5  0.5       0.00     244.26      -0.00      -2.22      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00     196.16       0.00      -0.00       0.00      -0.00      -0.00      -0.06      -0.00

   70   2.1  0.5  0.5      -0.00       0.00      57.44       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00     155.10      -0.00    -123.55      -0.00       0.00      -0.00      -0.00       0.00       0.83

   71   3.1  0.5  0.5      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          -86.25      -0.00       0.00      -0.00       0.00       0.00       0.00       9.13       0.00       0.00

   72   4.1  0.5  0.5       2.60       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   73   5.1  0.5  0.5    -219.59      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   74   6.1  0.5  0.5      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                          248.09      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.94       0.00      -0.00

   75   7.1  0.5  0.5      -0.00    -156.20       0.00    -119.32      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00     199.91      -0.00       0.00       0.00       0.00      -0.00       6.76      -0.00

   76   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.87      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   77   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -3.06      -0.00      -0.00

   78   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.28       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -1.43

   79   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.08
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.83      -0.00

   80   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.79
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.85       0.00

   81   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.13       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.21

   82   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.65       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5      -0.00       0.00      37.25      -0.00       0.00      -0.06       0.00      -0.33      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.51       0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.00     -66.32      -0.00    -308.01      -0.54      -0.00       0.00      -0.00       0.00       0.17
                         -134.64       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.44      -0.00

    3   3.1  1.5  1.5    -303.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.63       0.00
                            0.00     200.13      -0.00    -362.65      -0.40       0.00      -0.00      -0.00       0.00       0.63

    4   4.1  1.5  1.5      -0.00       0.00    -349.38      -0.00       0.00       0.64       0.00      -0.54      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.24       0.00      -0.00       0.00

    5   5.1  1.5  1.5      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.12       0.00       0.00       0.00
                           -0.00       0.00    -259.01       0.00       0.00       0.46      -0.00       0.37       0.00       0.00

    6   6.1  1.5  1.5     349.38       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.53       0.00
                           -0.00     259.01      -0.00     -97.40       0.07       0.00      -0.00      -0.00       0.00       0.49

    7   7.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.55      -0.00      -0.00       0.00
                            0.00      -0.00      97.40       0.00      -0.00      -0.16       0.00      -0.65      -0.00      -0.00

    8   8.1  1.5  1.5      -0.00       0.00      -0.00      -0.00       0.00       0.00     274.49       0.00      -0.00       0.00
                            0.00      -0.00      -0.07       0.00      -0.00      39.71      -0.00    -199.89      -0.00       0.00

    9   9.1  1.5  1.5      -0.64       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00    -275.25       0.00
                           -0.00      -0.46      -0.00       0.16     -39.71       0.00      -0.00       0.00      -0.00    -244.40

   10  10.1  1.5  1.5      -0.00      -0.12       0.00      -0.55    -274.49      -0.00      -0.00       0.00       0.00      83.08
                           -0.24       0.00       0.00      -0.00       0.00       0.00       0.00       0.00    -224.31       0.00

   11  11.1  1.5  1.5       0.54      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     316.33      -0.00
                           -0.00      -0.37       0.00       0.65     199.89      -0.00      -0.00      -0.00      -0.00    -323.01

   12  12.1  1.5  1.5       0.00      -0.00      -0.53       0.00       0.00     275.25      -0.00    -316.33       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00     224.31       0.00       0.00      -0.00

   13  13.1  1.5  1.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -83.08       0.00       0.00       0.00
                           -0.00      -0.00      -0.49       0.00      -0.00     244.40      -0.00     323.01       0.00       0.00

   14  14.1  1.5  1.5       0.00      -0.00      -0.34       0.00       0.00     170.23      -0.01      28.47       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00    -178.67       0.00       0.00      -0.00

   15  15.1  1.5  1.5       0.01      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.02      -0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   17  17.1  1.5  1.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.02      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     237.16      -0.00      68.00       0.31      -0.00      -0.00      -0.00       0.00       0.31

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -180.53       0.00      -0.00       0.32       0.00       0.05       0.00      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.04       0.00      -0.00       0.00

   21   4.1  1.5  0.5       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -76.42      -0.00    -126.56      -0.27      -0.00      -0.00      -0.00      -0.00      -0.01

   22   5.1  1.5  0.5       0.00       0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           76.42      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.06      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.32       0.00      -0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       3.03       0.00       0.00       0.00       0.00       0.00       0.00
                          126.56      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.15      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00    3515.02       0.00       0.00       0.00       0.00       0.00
                            0.27      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      50.70      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    3516.42       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00    -164.00      -0.00       0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    3516.44       0.00       0.00       0.00
                            0.00       0.00      -0.32       0.00       0.00     164.00       0.00      22.79       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3516.44       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00     -22.79      -0.00       0.00      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3518.27       0.00
                            0.00       0.06       0.00      -0.15     -50.70      -0.00      -0.00      -0.00      -0.00      65.52

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3518.30
                            0.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     -65.52       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.44       0.00      -0.21    -201.78      -0.00       0.00       0.00      -0.00    -144.78

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.01       0.00      -0.00      -0.00      -0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00     -43.01       0.00      -0.00       0.07      -0.00       0.38       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.59       0.00      -0.00       0.00

   36   2.1  1.5 -0.5      -0.00      76.58       0.00     355.66       0.63       0.00      -0.00       0.00      -0.00      -0.19
                         -155.46       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.51      -0.00

   37   3.1  1.5 -0.5     350.33      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.73      -0.00
                            0.00     231.09      -0.00    -418.75      -0.46       0.00      -0.00      -0.00       0.00       0.73

   38   4.1  1.5 -0.5      -0.00      -0.00     403.43       0.00      -0.00      -0.73      -0.00       0.62       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.28       0.00      -0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.14      -0.00      -0.00      -0.00
                           -0.00      -0.00    -299.08       0.00       0.00       0.53      -0.00       0.42       0.00       0.00

   40   6.1  1.5 -0.5    -403.43      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.62      -0.00
                           -0.00     299.08       0.00    -112.47       0.08       0.00      -0.00      -0.00       0.00       0.57

   41   7.1  1.5 -0.5      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.64       0.00       0.00      -0.00
                            0.00      -0.00     112.47      -0.00      -0.00      -0.19       0.00      -0.76      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00      -0.00    -316.95      -0.00       0.00      -0.00
                            0.00      -0.00      -0.08       0.00       0.00      45.85      -0.00    -230.82      -0.00       0.00

   43   9.1  1.5 -0.5       0.73      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     317.83      -0.00
                           -0.00      -0.53      -0.00       0.19     -45.85      -0.00      -0.00       0.00      -0.00    -282.20

   44  10.1  1.5 -0.5       0.00       0.14      -0.00       0.64     316.95       0.00      -0.00      -0.00      -0.00     -95.93
                           -0.28       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    -259.01       0.00

   45  11.1  1.5 -0.5      -0.62       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    -365.26       0.00
                           -0.00      -0.42       0.00       0.76     230.82      -0.00      -0.00       0.00      -0.00    -372.98

   46  12.1  1.5 -0.5      -0.00       0.00       0.62      -0.00      -0.00    -317.83       0.00     365.26       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00     259.01       0.00      -0.00      -0.00

   47  13.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00      95.93      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.57       0.00      -0.00     282.20      -0.00     372.98       0.00      -0.00

   48  14.1  1.5 -0.5      -0.00       0.00       0.39      -0.00      -0.00    -196.56       0.01     -32.88      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00    -206.31       0.00       0.00      -0.00

   49  15.1  1.5 -0.5      -0.01       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.02      -0.00      -0.02      -0.00       0.00       0.00       0.00       0.00       0.00

   50  16.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   51  17.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.02      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

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
                            0.00       0.00       0.00       0.00       0.00       0.00       2.07       0.00      -0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       6.71      -0.00      -0.00     226.79      -0.00      31.52       0.00       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.62      -0.00      -0.00      -0.00       0.01      -0.00      -0.00      -0.00     -26.14      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -8.99      -0.00      -4.64     284.71      -0.00       0.00      -0.00       0.00     189.98

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.26      -0.00       2.65     -41.44      -0.00       0.00       0.00       0.00     110.46

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.13      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00     111.55      -0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00    -228.96      -0.00      -0.00       0.00

   76   1.1  0.5 -0.5      -3.72      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     141.02      -0.00
                           -0.00      -1.76      -0.00       3.72     -81.26       0.00      -0.00      -0.00       0.00     113.25

   77   2.1  0.5 -0.5      -0.00       0.71       0.00       3.31    -109.58      -0.00      -0.00      -0.00       0.00      33.16
                           -1.44       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      89.55      -0.00

   78   3.1  0.5 -0.5       0.00       0.00       0.00       0.00      -0.00       0.00      43.33      -0.00      -0.00      -0.00
                            0.00      -0.00      -2.55       0.00      -0.00     -85.73       0.00     -49.80      -0.00       0.00

   79   4.1  0.5 -0.5      -0.00       0.00      -2.32       0.00      -0.00     -78.75      -0.00       1.50       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00     -61.88       0.00      -0.00       0.00

   80   5.1  0.5 -0.5      -0.00       0.00       2.97      -0.00       0.00     102.42      -0.00    -126.78      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00     -96.32      -0.00       0.00      -0.00

   81   6.1  0.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00     105.97      -0.00       0.00       0.00
                            0.00       0.00       1.52       0.00       0.00      49.20       0.00     143.23      -0.00       0.00

   82   7.1  0.5 -0.5       3.29       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00     -90.18       0.00
                            0.00      -3.04       0.00       1.55       3.98       0.00       0.00      -0.00       0.00     115.42


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00      -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.05      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.34      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5    -170.23      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.01       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          178.67      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5     -28.47       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00      -0.00    -146.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     146.46       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5      -0.00     146.48      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -146.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00     208.72      -0.00       0.00      43.01
                           -0.00      -0.00      -0.00       0.00      -0.00     328.88       0.00       0.00      -0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00     -76.58      -0.00
                            0.00       0.01      -0.00      -0.00    -328.88      -0.00      -0.00    -155.46       0.00      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00    -208.72       0.00      -0.00    -350.33       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     231.09      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00     350.33      -0.00       0.00    -403.43
                            0.00       0.00       0.00      -0.00      -0.00     155.46      -0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      76.58      -0.00      -0.00       0.00      -0.00
                            0.44       0.00      -0.01       0.00       0.00      -0.00    -231.09      -0.00       0.00    -299.08

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00     -43.01       0.00      -0.00     403.43       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00     299.08      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00     355.66      -0.00       0.00      -0.00      -0.00
                            0.21       0.00       0.01       0.00       0.00      -0.00     418.75       0.00      -0.00     112.47

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.63      -0.00      -0.00       0.00      -0.00
                          201.78       0.00      -0.00       0.00      -0.00      -0.00       0.46       0.00      -0.00      -0.08

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.07       0.00      -0.00      -0.73       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.53      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.14       0.00
                           -0.00      -0.00       0.00       0.00      -0.59       0.00       0.00      -0.28       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.38       0.00      -0.00       0.62      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.42       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.73       0.00      -0.00      -0.62
                            0.00       0.00      -0.00      -0.00       0.00       0.51      -0.00       0.00      -0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.19      -0.00       0.00      -0.00      -0.00
                          144.78       0.00      -0.00      -0.00      -0.00       0.00      -0.73      -0.00      -0.00      -0.57

   31  14.1  1.5  0.5    3518.37       0.00       0.00       0.00       0.00      -0.00      -0.06       0.00      -0.00      -0.39
                            0.00      -0.00      -0.00      -0.00       0.00      -0.41      -0.00      -0.00      -0.00       0.00

   32  15.1  1.5  0.5       0.00   13517.33       0.00       0.00      -0.00       0.00       0.00       0.01      -0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.02      -0.00

   33  16.1  1.5  0.5       0.00       0.00   13517.33       0.00      -0.00      -0.00      -0.02       0.00      -0.00      -0.00
                            0.00       0.00       0.00      84.57      -0.00      -0.00       0.00      -0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00   13517.32      -0.00      -0.01      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00     -84.57      -0.00      -0.00      -0.00      -0.01      -0.00       0.00       0.02

   35   1.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -237.16       0.00

   36   2.1  1.5 -0.5      -0.00       0.00      -0.00      -0.01       0.00       0.06       0.00       0.00       0.00       0.00
                            0.41       0.00       0.00       0.00       0.00      -0.00      22.34       0.00       0.00     180.53

   37   3.1  1.5 -0.5      -0.06       0.00      -0.02      -0.00       0.00       0.00       0.03       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.01      -0.00     -22.34      -0.00      -0.00       0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.06       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      76.42       0.00

   39   5.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.10       0.00
                            0.00       0.02      -0.00      -0.00     237.16      -0.00      -0.00     -76.42       0.00       0.00

   40   6.1  1.5 -0.5      -0.39       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.28
                           -0.00       0.00      -0.00      -0.02      -0.00    -180.53      -0.00      -0.00      -0.00      -0.00

   41   7.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.02       0.00       0.00      68.00       0.00      -0.00    -126.56       0.00       0.00

   42   8.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.31      -0.00      -0.00      -0.27       0.00      -0.00

   43   9.1  1.5 -0.5     196.56       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.32       0.00      -0.00      -0.00       0.00

   44  10.1  1.5 -0.5      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          206.31      -0.00      -0.00       0.00      -0.00       0.00       0.04      -0.00      -0.00       0.32

   45  11.1  1.5 -0.5      32.88      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.05       0.00      -0.00      -0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.06      -0.00

   47  13.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.31      -0.00       0.00      -0.01      -0.00       0.00

   48  14.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.44      -0.00

   49  15.1  1.5 -0.5      -0.00      -0.00     169.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     169.12      -0.00       0.01      -0.00       0.00       0.00       0.00

   50  16.1  1.5 -0.5       0.00    -169.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00

   51  17.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -169.12       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00    -180.76       0.00      -0.00     -37.25
                           -0.00      -0.00      -0.00      -0.00       0.00     284.82       0.00       0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      66.32       0.00
                           -0.00      -0.00      -0.00      -0.00    -284.82       0.00      -0.00    -134.64       0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00     180.76      -0.00      -0.00     303.40      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     200.13      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00    -303.40      -0.00      -0.00     349.38
                           -0.00      -0.00      -0.00      -0.00      -0.00     134.64      -0.00      -0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     -66.32       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -200.13      -0.00      -0.00    -259.01

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00      37.25      -0.00       0.00    -349.38      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00     259.01       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    -308.01       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     362.65       0.00      -0.00      97.40

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.54       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.40       0.00      -0.00      -0.07

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.06      -0.00       0.00       0.64      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.46      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.12      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.51       0.00       0.00      -0.24       0.00       0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.33      -0.00       0.00      -0.54       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.37       0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.63      -0.00       0.00       0.53
                           -0.00      -0.00      -0.00      -0.00       0.00       0.44      -0.00       0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.17       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.63      -0.00      -0.00      -0.49

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.05      -0.00       0.00       0.34
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.35      -0.00      -0.00      -0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.02      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.01       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -0.00       0.00       0.02

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00      -1.87      -0.00      -0.00      -3.72      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       1.76       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.71       0.00
                           -0.00       0.00      -0.00       0.00       3.06       0.00       0.00       1.44      -0.00       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -1.28       0.00       0.00       0.00       0.00
                          331.32      -0.00       0.00       0.00       0.00      -0.00       1.43      -0.00       0.00       2.55

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.08      -0.00       0.00      -2.32
                           -0.01       0.00       0.00      -0.00       0.00      -1.83       0.00      -0.00       0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -3.79      -0.00       0.00       2.97
                            0.00       0.00       0.00       0.00      -0.00      -2.85      -0.00       0.00      -0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -3.13       0.00      -0.00      -0.00       0.00
                           90.41      -0.00      -0.00       0.00       0.00       0.00      -4.21      -0.00      -0.00      -1.52

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.65       0.00      -0.00       3.29       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       3.04      -0.00

   76   1.1  0.5 -0.5      -1.28      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.06      -0.00       0.00       0.00       0.00

   77   2.1  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -71.33      -0.00       0.00      -0.00      -0.00       0.00       0.83       0.00      -0.00       6.71

   78   3.1  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       9.13       0.00       0.00      -3.62      -0.00      -0.00

   79   4.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -8.99      -0.00

   80   5.1  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -2.26      -0.00

   81   6.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.94       0.00      -0.00      -4.13      -0.00       0.00

   82   7.1  0.5 -0.5     -68.89      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       6.76      -0.00      -0.00      -0.00       0.00


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

   18   1.1  1.5  0.5      -0.00       0.00      -0.07       0.00      -0.38      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.59       0.00      -0.00       0.00      -0.00       0.00       0.00

   19   2.1  1.5  0.5    -355.66      -0.63      -0.00       0.00      -0.00       0.00       0.19       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.51      -0.00       0.41       0.00       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.73       0.00       0.06      -0.00       0.02
                         -418.75      -0.46       0.00      -0.00      -0.00       0.00       0.73       0.00       0.00      -0.00

   21   4.1  1.5  0.5      -0.00       0.00       0.73       0.00      -0.62      -0.00      -0.00      -0.00      -0.01      -0.00
                           -0.00      -0.00       0.00       0.28       0.00      -0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00      -0.00      -0.00       0.14       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.53      -0.00       0.42       0.00       0.00       0.00       0.02      -0.00

   23   6.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       0.62       0.00       0.39      -0.00       0.00
                         -112.47       0.08       0.00      -0.00      -0.00       0.00       0.57      -0.00       0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.64      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.19       0.00      -0.76      -0.00      -0.00      -0.00       0.02       0.00

   25   8.1  1.5  0.5      -0.00       0.00       0.00     316.95       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      45.85      -0.00    -230.82      -0.00       0.00      -0.00       0.00      -0.00

   26   9.1  1.5  0.5      -0.00      -0.00       0.00       0.00       0.00    -317.83       0.00    -196.56      -0.00       0.00
                            0.19     -45.85       0.00      -0.00       0.00      -0.00    -282.20       0.00      -0.00      -0.00

   27  10.1  1.5  0.5      -0.64    -316.95      -0.00      -0.00       0.00       0.00      95.93       0.01       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00    -259.01       0.00     206.31      -0.00      -0.00

   28  11.1  1.5  0.5       0.00      -0.00      -0.00      -0.00      -0.00     365.26      -0.00     -32.88       0.00      -0.00
                            0.76     230.82      -0.00      -0.00      -0.00      -0.00    -372.98      -0.00      -0.00      -0.00

   29  12.1  1.5  0.5       0.00       0.00     317.83      -0.00    -365.26       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00     259.01       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   30  13.1  1.5  0.5      -0.00      -0.00      -0.00     -95.93       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00     282.20      -0.00     372.98       0.00       0.00       0.00      -0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00     196.56      -0.01      32.88       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00    -206.31       0.00       0.00      -0.00      -0.00      -0.00       0.00

   32  15.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    -169.14
                           -0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00     169.14      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   34  17.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -169.12       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -68.00      -0.31       0.00       0.00       0.00      -0.00      -0.31       0.00       0.00       0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.32      -0.00      -0.05      -0.00       0.00      -0.00      -0.01       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.04      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          126.56       0.27       0.00       0.00       0.00       0.00       0.01      -0.00      -0.00      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.06       0.00      -0.44      -0.00       0.01

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.32      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   41   7.1  1.5 -0.5       3.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.15       0.00      -0.21      -0.00      -0.01

   42   8.1  1.5 -0.5       0.00    3515.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00     -50.70       0.00    -201.78      -0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00    3516.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     164.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00    3516.44       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -164.00      -0.00     -22.79      -0.00       0.00       0.00       0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00    3516.44       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      22.79       0.00      -0.00       0.00       0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00    3518.27       0.00       0.00       0.00       0.00
                            0.15      50.70       0.00       0.00       0.00       0.00     -65.52      -0.00      -0.00       0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    3518.30       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      65.52      -0.00    -144.78      -0.00       0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3518.37       0.00       0.00
                            0.21     201.78       0.00      -0.00      -0.00       0.00     144.78      -0.00       0.00       0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   13517.33       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   13517.33
                            0.01      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      84.57

   52   1.1  1.5 -1.5       0.00      -0.00       0.06      -0.00       0.33       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.51       0.00      -0.00       0.00      -0.00       0.00       0.00

   53   2.1  1.5 -1.5     308.01       0.54       0.00      -0.00       0.00      -0.00      -0.17      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.44      -0.00       0.35       0.00       0.00

   54   3.1  1.5 -1.5      -0.00      -0.00      -0.00      -0.00      -0.00       0.63      -0.00      -0.05       0.00      -0.01
                         -362.65      -0.40       0.00      -0.00      -0.00       0.00       0.63       0.00       0.00      -0.00

   55   4.1  1.5 -1.5       0.00      -0.00      -0.64      -0.00       0.54       0.00       0.00       0.00       0.01       0.00
                           -0.00      -0.00       0.00       0.24       0.00      -0.00       0.00       0.00       0.00       0.00

   56   5.1  1.5 -1.5      -0.00       0.00       0.00      -0.12      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.46      -0.00       0.37       0.00       0.00       0.00       0.02      -0.00

   57   6.1  1.5 -1.5      -0.00      -0.00       0.00       0.00       0.00      -0.53      -0.00      -0.34       0.00      -0.00
                          -97.40       0.07       0.00      -0.00      -0.00       0.00       0.49      -0.00       0.00      -0.00

   58   7.1  1.5 -1.5       0.00      -0.00      -0.00      -0.55       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.16       0.00      -0.65      -0.00      -0.00      -0.00       0.01       0.00

   59   8.1  1.5 -1.5       0.00       0.00      -0.00    -274.49      -0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00      39.71      -0.00    -199.89      -0.00       0.00      -0.00       0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00     275.25      -0.00     170.23       0.00      -0.00
                            0.16     -39.71      -0.00      -0.00       0.00      -0.00    -244.40       0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.55     274.49       0.00      -0.00      -0.00      -0.00     -83.08      -0.01      -0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00    -224.31       0.00     178.67      -0.00      -0.00

   62  11.1  1.5 -1.5      -0.00       0.00       0.00       0.00      -0.00    -316.33       0.00      28.47      -0.00       0.00
                            0.65     199.89      -0.00      -0.00       0.00      -0.00    -323.01      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5      -0.00      -0.00    -275.25       0.00     316.33       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00     224.31       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00      83.08      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00     244.40      -0.00     323.01       0.00      -0.00       0.00      -0.00       0.00

   65  14.1  1.5 -1.5      -0.00      -0.00    -170.23       0.01     -28.47      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00    -178.67       0.00       0.00      -0.00       0.00      -0.00       0.00

   66  15.1  1.5 -1.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     146.48
                           -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00    -146.48      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -146.46       0.00

   69   1.1  0.5  0.5       0.00      -0.00       0.00       0.00       0.00     141.02      -0.00      -1.28      -0.00       0.00
                           -3.72      81.26      -0.00       0.00       0.00      -0.00    -113.25      -0.00       0.00      -0.00

   70   2.1  0.5  0.5       3.31    -109.58      -0.00      -0.00      -0.00       0.00      33.16       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00     -89.55       0.00      71.33       0.00      -0.00

   71   3.1  0.5  0.5       0.00      -0.00       0.00      43.33      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00      85.73      -0.00      49.80       0.00      -0.00       0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.00      -0.00     -78.75      -0.00       1.50       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      61.88      -0.00       0.00      -0.00       0.00       0.00      -0.00

   73   5.1  0.5  0.5      -0.00       0.00     102.42      -0.00    -126.78      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      96.32       0.00      -0.00       0.00      -0.00       0.00      -0.00

   74   6.1  0.5  0.5       0.00      -0.00       0.00     105.97      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     -49.20      -0.00    -143.23       0.00      -0.00      -0.00       0.00      -0.00

   75   7.1  0.5  0.5       0.00      -0.00      -0.00       0.00      -0.00     -90.18       0.00     -68.89      -0.00      -0.00
                           -1.55      -3.98      -0.00      -0.00       0.00      -0.00    -115.42       0.00      -0.00      -0.00

   76   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       2.07       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     226.79      -0.00      31.52       0.00       0.00      -0.00       0.00      -0.00

   78   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.00      -0.00     -26.14      -0.00     331.32      -0.00       0.00

   79   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -4.64     284.71      -0.00       0.00      -0.00       0.00     189.98      -0.01       0.00       0.00

   80   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.65     -41.44      -0.00       0.00       0.00       0.00     110.46       0.00       0.00       0.00

   81   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     111.55      -0.00      90.41      -0.00      -0.00

   82   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -228.96      -0.00      -0.00       0.00       0.00      -0.00       0.00


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
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          169.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00       0.00     180.76      -0.00       0.00      37.25      -0.00       0.00      -0.06
                           -0.00      -0.00     284.82       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   36   2.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00     -66.32      -0.00    -308.01      -0.54      -0.00
                            0.00    -284.82      -0.00      -0.00    -134.64       0.00      -0.00       0.00       0.00       0.00

   37   3.1  1.5 -0.5       0.00    -180.76       0.00      -0.00    -303.40       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00     200.13      -0.00    -362.65      -0.40       0.00

   38   4.1  1.5 -0.5       0.00       0.00      -0.00     303.40      -0.00       0.00    -349.38      -0.00       0.00       0.64
                            0.00      -0.00     134.64      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   39   5.1  1.5 -0.5       0.00      -0.00      66.32      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00    -200.13      -0.00       0.00    -259.01       0.00       0.00       0.46

   40   6.1  1.5 -0.5       0.00     -37.25       0.00      -0.00     349.38       0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00     259.01      -0.00     -97.40       0.07       0.00

   41   7.1  1.5 -0.5       0.00       0.00     308.01      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     362.65       0.00      -0.00      97.40       0.00      -0.00      -0.16

   42   8.1  1.5 -0.5       0.00      -0.00       0.54      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.40       0.00      -0.00      -0.07       0.00      -0.00      39.71

   43   9.1  1.5 -0.5       0.00       0.06       0.00      -0.00      -0.64       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.46      -0.00       0.16     -39.71       0.00

   44  10.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.12       0.00      -0.55    -274.49      -0.00
                           -0.00      -0.51       0.00       0.00      -0.24       0.00       0.00      -0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.33       0.00      -0.00       0.54      -0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.37       0.00       0.65     199.89      -0.00

   46  12.1  1.5 -0.5       0.00       0.00      -0.00       0.63       0.00      -0.00      -0.53       0.00       0.00     275.25
                            0.00       0.00       0.44      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   47  13.1  1.5 -0.5       0.00       0.00      -0.17      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.63      -0.00      -0.00      -0.49       0.00      -0.00     244.40

   48  14.1  1.5 -0.5       0.00       0.00      -0.00      -0.05       0.00      -0.00      -0.34       0.00       0.00     170.23
                            0.00       0.00      -0.35      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   49  15.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.01      -0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.02      -0.00      -0.01      -0.00       0.00

   50  16.1  1.5 -0.5       0.00      -0.00      -0.00      -0.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                          -84.57      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   51  17.1  1.5 -0.5   13517.32      -0.00      -0.01      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.01      -0.00       0.00       0.02      -0.00       0.00      -0.00

   52   1.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00    -711.49       0.00    -203.99      -0.94       0.00

   53   2.1  1.5 -1.5      -0.01       0.00       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      67.01       0.00       0.00     541.60      -0.00       0.00      -0.97

   54   3.1  1.5 -1.5      -0.00       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00     -67.01      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.06       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00     229.26       0.00     379.67       0.80       0.00

   56   5.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.10       0.00       0.00       0.00       0.00
                           -0.00     711.49      -0.00      -0.00    -229.26       0.00       0.00      -0.00      -0.00       0.00

   57   6.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.28       0.00       0.00       0.00
                           -0.02      -0.00    -541.60      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   58   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.03       0.00       0.00
                            0.00     203.99       0.00      -0.00    -379.67       0.00       0.00       0.00      -0.00       0.00

   59   8.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3515.02       0.00
                           -0.00       0.94      -0.00      -0.00      -0.80       0.00      -0.00       0.00      -0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3516.42
                            0.00      -0.00       0.97       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.12      -0.00      -0.00       0.97      -0.00      -0.00    -491.99

   62  11.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.14       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   63  12.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.19      -0.00       0.45     152.11       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.94      -0.00       0.00      -0.03      -0.00       0.00      -0.00      -0.01      -0.00

   65  14.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       1.33      -0.00       0.63     605.34       0.00

   66  15.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          146.46      -0.00       0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.02       0.00       0.02      -0.00       0.00

   68  17.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -0.00      -0.00      -0.01       0.00      -0.00       0.00       0.00      -0.00

   69   1.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   1.1  0.5 -0.5       0.00      -3.24      -0.00      -0.00      -6.45      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       3.05       0.00      -6.44     140.75      -0.00

   77   2.1  0.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00       1.23       0.00       5.73    -189.79      -0.00
                            0.00       5.30       0.00       0.00       2.50      -0.00       0.00      -0.00       0.00       0.00

   78   3.1  0.5 -0.5       0.00      -0.00      -2.21       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       2.48      -0.00       0.00       4.42      -0.00       0.00     148.49

   79   4.1  0.5 -0.5       0.00       0.00       0.00       0.14      -0.00       0.00      -4.02       0.00      -0.00    -136.40
                           -0.00       0.00      -3.17       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   80   5.1  0.5 -0.5       0.00       0.00       0.00      -6.56      -0.00       0.00       5.14      -0.00       0.00     177.39
                            0.00      -0.00      -4.93      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   81   6.1  0.5 -0.5       0.00       0.00      -5.42       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -7.29      -0.00      -0.00      -2.63      -0.00      -0.00     -85.21

   82   7.1  0.5 -0.5       0.00      -1.13       0.00      -0.00       5.69       0.00      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       5.26      -0.00      -2.68      -6.90      -0.00


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.24       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       5.30

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -6.45      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       2.50

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.23
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.05      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       5.73
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -6.44      -0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -189.79
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     140.75       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     244.26       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -155.10

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      57.44
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -196.16       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.22       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     123.55

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.06      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.83

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -6.71

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -226.79

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.07       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -31.52

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   35   1.1  1.5 -0.5       0.00      -0.33      -0.00      -0.00      -0.00       0.00       0.00       0.00      -1.87       0.00
                            0.51       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -3.06

   36   2.1  1.5 -0.5       0.00      -0.00       0.00       0.17       0.00      -0.00       0.00       0.01      -0.00      -0.00
                           -0.00       0.00      -0.44      -0.00       0.35       0.00       0.00       0.00       0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00      -0.63       0.00       0.05      -0.00       0.01       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.63       0.00       0.00      -0.00       0.01      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00      -0.54      -0.00      -0.00      -0.00      -0.01      -0.00      -0.00      -3.72      -0.00
                            0.24       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -1.44

   39   5.1  1.5 -0.5       0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.71
                           -0.00       0.37       0.00       0.00       0.00       0.02      -0.00      -0.00      -1.76       0.00

   40   6.1  1.5 -0.5      -0.00      -0.00       0.53       0.00       0.34      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.49      -0.00       0.00      -0.00      -0.02      -0.00      -0.00

   41   7.1  1.5 -0.5       0.55      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       3.31
                            0.00      -0.65      -0.00      -0.00      -0.00       0.01       0.00       0.00       3.72       0.00

   42   8.1  1.5 -0.5     274.49       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -109.58
                           -0.00    -199.89      -0.00       0.00      -0.00       0.00      -0.00      -0.00     -81.26      -0.00

   43   9.1  1.5 -0.5       0.00       0.00    -275.25       0.00    -170.23      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00    -244.40       0.00      -0.00      -0.00       0.00       0.00      -0.00

   44  10.1  1.5 -0.5      -0.00       0.00       0.00      83.08       0.01       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00    -224.31       0.00     178.67      -0.00      -0.00       0.00      -0.00       0.00

   45  11.1  1.5 -0.5      -0.00      -0.00     316.33      -0.00     -28.47       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00    -323.01      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   46  12.1  1.5 -0.5      -0.00    -316.33       0.00      -0.00      -0.00      -0.00       0.00       0.00     141.02       0.00
                          224.31       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      89.55

   47  13.1  1.5 -0.5     -83.08       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      33.16
                           -0.00     323.01       0.00       0.00       0.00      -0.00       0.00       0.00     113.25      -0.00

   48  14.1  1.5 -0.5      -0.01      28.47       0.00      -0.00       0.00      -0.00       0.00       0.00      -1.28       0.00
                         -178.67       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     -71.33

   49  15.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00      -0.00    -146.48       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     146.46      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00     146.48      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   51  17.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00    -146.46       0.00       0.00      -0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.94       0.00       0.00       0.00      -0.01       0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.14      -0.00       0.00      -0.00      -0.02       0.00       0.00       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.03      -0.00      -0.00      -0.00       0.01       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.19       0.00      -1.33      -0.00       0.02      -0.00       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.97      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.45       0.00      -0.63      -0.00      -0.02      -0.00       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -152.11       0.01    -605.34      -0.00       0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          491.99       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   61  10.1  1.5 -1.5    3516.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -68.37      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00    3516.44       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           68.37       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00    3518.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -196.57      -0.00      -0.00       0.00       0.00       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00    3518.30       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     196.57      -0.00    -434.33      -0.00       0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00    3518.37       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     434.33      -0.00       0.00       0.00       0.00       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   13517.33       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   13517.33       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -253.70       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   13517.32       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00     253.70       0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7544.69       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       2.95

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7545.79
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -2.95       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -326.39

   76   1.1  0.5 -0.5       0.00       0.00     244.26      -0.00      -2.22      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00    -196.16      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   77   2.1  0.5 -0.5      -0.00      -0.00       0.00      57.44       0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00    -155.10       0.00     123.55       0.00      -0.00       0.00       0.00       0.00

   78   3.1  0.5 -0.5      75.05      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -123.53
                           -0.00      86.25       0.00      -0.00       0.00      -0.00      -0.00      -0.00     104.60      -0.00

   79   4.1  0.5 -0.5      -0.00       2.60       0.00      -0.00      -0.00      -0.00      -0.00       0.00     -37.15      -0.00
                          107.17      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     176.40

   80   5.1  0.5 -0.5      -0.00    -219.59      -0.00      -0.00      -0.00       0.00      -0.00       0.00     400.34       0.00
                          166.83       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     274.61

   81   6.1  0.5 -0.5     183.54      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -302.11
                           -0.00    -248.09       0.00      -0.00      -0.00       0.00      -0.00       0.00    -383.37      -0.00

   82   7.1  0.5 -0.5       0.00      -0.00    -156.20       0.00    -119.32      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00    -199.91       0.00      -0.00      -0.00      -0.00      -0.00       0.00


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

    1   1.1  1.5  1.5      -0.00       0.00       0.00       0.00      -1.13       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5      -2.21       0.00       0.00      -5.42       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -3.17      -4.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.14      -6.56       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            2.48       0.00      -0.00      -7.29      -0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00      -0.00      -0.00      -0.00       5.69       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       5.26       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00      -4.02       5.14       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            4.42       0.00      -0.00      -2.63      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -2.68       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -6.90       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00    -136.40     177.39       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          148.49       0.00       0.00     -85.21      -0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      75.05      -0.00      -0.00     183.54       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     107.17     166.83      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5      -0.00       2.60    -219.59      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           86.25      -0.00       0.00    -248.09       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      -0.00       0.00      -0.00       0.00    -156.20       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00    -199.91       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00      -0.00      -0.00      -0.00    -119.32       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -1.87       0.00      -0.00       0.00       0.00
                           -9.13       0.00      -0.00      -0.94       0.00      -0.00       3.06       0.00       0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.28       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -6.76      -0.00       0.00      -0.00      -1.83      -2.85

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.08      -3.79
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       1.43       0.00      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -3.72      -0.00       0.00      -0.00      -0.00
                            3.62      -0.00       0.00       4.13       0.00       0.00       1.44      -0.00      -0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.71       0.00       0.00       0.00
                            0.00       8.99       2.26       0.00       0.00       1.76      -0.00       0.00       0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -2.32       2.97
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       2.55       0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       3.31       0.00       0.00      -0.00
                            0.00       4.64      -2.65       0.00      -0.00      -3.72      -0.00      -0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00    -109.58      -0.00      -0.00       0.00
                           -0.01    -284.71      41.44      -0.00       0.00      81.26       0.00       0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -78.75     102.42
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      85.73       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      43.33      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00     228.96       0.00      -0.00      -0.00      61.88      96.32

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.50    -126.78
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      49.80      -0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00     141.02       0.00      -0.00       0.00      -0.00
                           26.14      -0.00      -0.00    -111.55       0.00      -0.00     -89.55       0.00       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      33.16      -0.00      -0.00      -0.00
                            0.00    -189.98    -110.46       0.00      -0.00    -113.25       0.00      -0.00      -0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -1.28       0.00       0.00      -0.00      -0.00
                         -331.32       0.01      -0.00     -90.41      -0.00      -0.00      71.33       0.00       0.00      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   35   1.1  1.5 -0.5      -0.00       0.00       0.00       0.00      -0.65       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -9.13       0.00      -0.00

   36   2.1  1.5 -0.5      -1.28       0.00       0.00      -3.13       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.83       2.85      -0.00      -0.00       0.06      -0.00      -0.00      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.08      -3.79       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -1.43      -0.00       0.00       4.21       0.00       0.00      -0.83      -0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       3.29       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       3.62      -0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -3.04      -0.00       0.00       0.00       8.99       2.26

   40   6.1  1.5 -0.5       0.00      -2.32       2.97       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -2.55      -0.00       0.00       1.52       0.00      -0.00      -6.71       0.00       0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       1.55      -0.00       0.00       0.00       4.64      -2.65

   42   8.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       3.98      -0.00       0.00      -0.01    -284.71      41.44

   43   9.1  1.5 -0.5       0.00     -78.75     102.42       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          -85.73      -0.00      -0.00      49.20       0.00      -0.00    -226.79       0.00       0.00       0.00

   44  10.1  1.5 -0.5      43.33      -0.00      -0.00     105.97       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -61.88     -96.32       0.00       0.00      -2.07       0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5      -0.00       1.50    -126.78      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          -49.80       0.00      -0.00     143.23      -0.00      -0.00     -31.52       0.00       0.00      -0.00

   46  12.1  1.5 -0.5      -0.00       0.00      -0.00       0.00     -90.18       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      26.14      -0.00      -0.00

   47  13.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00     115.42       0.00      -0.00       0.00    -189.98    -110.46

   48  14.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00     -68.89       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -331.32       0.01      -0.00

   49  15.1  1.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -3.24       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -5.30      -0.00      -0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -2.21       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       3.17       4.93

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.14      -6.56
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -2.48      -0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -6.45      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -2.50       0.00       0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       1.23       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -3.05       0.00      -0.00      -0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -4.02       5.14
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -4.42      -0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       5.73       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       6.44       0.00       0.00       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00    -189.79      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00    -140.75      -0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -136.40     177.39
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -148.49      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      75.05      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -107.17    -166.83

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       2.60    -219.59
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -86.25       0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     244.26       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     155.10      -0.00      -0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      57.44      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00     196.16      -0.00       0.00       0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -2.22       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00    -123.55      -0.00      -0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -37.15     400.34
                            0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00    -104.60      -0.00       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -123.53      -0.00       0.00
                           -0.00       0.00      -0.00       0.00     326.39       0.00      -0.00       0.00    -176.40    -274.61

   71   3.1  0.5  0.5    7546.03       0.00       0.00       0.00       0.00      -0.00     123.53       0.00      -0.00       0.00
                           -0.00    -466.07     -84.99      -0.00       0.00     104.60      -0.00      -0.00       0.00      -0.00

   72   4.1  0.5  0.5       0.00    7546.05       0.00       0.00       0.00      37.15       0.00       0.00       0.00      -0.00
                          466.07       0.00      -0.00     144.35       0.00       0.00     176.40      -0.00       0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00    7546.16       0.00       0.00    -400.34      -0.00      -0.00       0.00       0.00
                           84.99       0.00       0.00    -145.12      -0.00      -0.00     274.61       0.00      -0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00    7546.16       0.00      -0.00     302.11       0.00      -0.00      -0.00
                            0.00    -144.35     145.12      -0.00      -0.00    -383.37      -0.00       0.00      -0.00      -0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00    7546.46       0.00      -0.00      -0.00     221.46    -235.84
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00    -262.59      -0.00      -0.00

   76   1.1  0.5 -0.5      -0.00      37.15    -400.34      -0.00       0.00    7544.69       0.00       0.00       0.00       0.00
                         -104.60      -0.00       0.00     383.37       0.00      -0.00      -2.95      -0.00       0.00      -0.00

   77   2.1  0.5 -0.5     123.53       0.00      -0.00     302.11      -0.00       0.00    7545.79       0.00       0.00       0.00
                            0.00    -176.40    -274.61       0.00      -0.00       2.95      -0.00       0.00      -0.00       0.00

   78   3.1  0.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    7546.03       0.00       0.00
                            0.00       0.00      -0.00      -0.00     262.59       0.00      -0.00       0.00     466.07      84.99

   79   4.1  0.5 -0.5      -0.00       0.00       0.00      -0.00     221.46       0.00       0.00       0.00    7546.05       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00    -466.07      -0.00       0.00

   80   5.1  0.5 -0.5       0.00      -0.00       0.00      -0.00    -235.84       0.00       0.00       0.00       0.00    7546.16
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     -84.99      -0.00      -0.00

   81   6.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00    -198.60      -0.00       0.00      -0.00     144.35    -145.12

   82   7.1  0.5 -0.5       0.00    -221.46     235.84      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -262.59      -0.00      -0.00     198.60      -0.00       0.00     326.39       0.00       0.00      -0.00


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

   18   1.1  1.5  0.5       0.00      -0.65
                            0.00      -0.00

   19   2.1  1.5  0.5      -3.13       0.00
                            0.00       0.00

   20   3.1  1.5  0.5       0.00      -0.00
                           -4.21      -0.00

   21   4.1  1.5  0.5      -0.00       3.29
                           -0.00      -0.00

   22   5.1  1.5  0.5      -0.00       0.00
                           -0.00       3.04

   23   6.1  1.5  0.5       0.00      -0.00
                           -1.52      -0.00

   24   7.1  1.5  0.5       0.00       0.00
                           -0.00      -1.55

   25   8.1  1.5  0.5      -0.00      -0.00
                           -0.00      -3.98

   26   9.1  1.5  0.5       0.00      -0.00
                          -49.20      -0.00

   27  10.1  1.5  0.5     105.97       0.00
                           -0.00      -0.00

   28  11.1  1.5  0.5      -0.00      -0.00
                         -143.23       0.00

   29  12.1  1.5  0.5       0.00     -90.18
                            0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00
                           -0.00    -115.42

   31  14.1  1.5  0.5      -0.00     -68.89
                           -0.00       0.00

   32  15.1  1.5  0.5       0.00      -0.00
                            0.00      -0.00

   33  16.1  1.5  0.5      -0.00      -0.00
                           -0.00      -0.00

   34  17.1  1.5  0.5      -0.00      -0.00
                            0.00      -0.00

   35   1.1  1.5 -0.5       0.00       0.00
                           -0.94       0.00

   36   2.1  1.5 -0.5       0.00       0.00
                           -0.00      -6.76

   37   3.1  1.5 -0.5       0.00       0.00
                            0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00
                            4.13       0.00

   39   5.1  1.5 -0.5       0.00       0.00
                            0.00       0.00

   40   6.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00
                           -0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00
                           -0.00     228.96

   45  11.1  1.5 -0.5       0.00       0.00
                            0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00
                         -111.55       0.00

   47  13.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00
                          -90.41      -0.00

   49  15.1  1.5 -0.5       0.00       0.00
                            0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   52   1.1  1.5 -1.5       0.00      -1.13
                           -0.00       0.00

   53   2.1  1.5 -1.5      -5.42       0.00
                           -0.00      -0.00

   54   3.1  1.5 -1.5       0.00      -0.00
                            7.29       0.00

   55   4.1  1.5 -1.5      -0.00       5.69
                            0.00       0.00

   56   5.1  1.5 -1.5      -0.00       0.00
                            0.00      -5.26

   57   6.1  1.5 -1.5       0.00      -0.00
                            2.63       0.00

   58   7.1  1.5 -1.5       0.00       0.00
                            0.00       2.68

   59   8.1  1.5 -1.5      -0.00      -0.00
                            0.00       6.90

   60   9.1  1.5 -1.5       0.00      -0.00
                           85.21       0.00

   61  10.1  1.5 -1.5     183.54       0.00
                            0.00       0.00

   62  11.1  1.5 -1.5      -0.00      -0.00
                          248.09      -0.00

   63  12.1  1.5 -1.5       0.00    -156.20
                           -0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00
                            0.00     199.91

   65  14.1  1.5 -1.5      -0.00    -119.32
                            0.00      -0.00

   66  15.1  1.5 -1.5       0.00      -0.00
                           -0.00       0.00

   67  16.1  1.5 -1.5      -0.00      -0.00
                            0.00       0.00

   68  17.1  1.5 -1.5      -0.00      -0.00
                           -0.00       0.00

   69   1.1  0.5  0.5       0.00      -0.00
                          383.37       0.00

   70   2.1  0.5  0.5    -302.11       0.00
                            0.00      -0.00

   71   3.1  0.5  0.5      -0.00       0.00
                           -0.00     262.59

   72   4.1  0.5  0.5       0.00    -221.46
                            0.00       0.00

   73   5.1  0.5  0.5       0.00     235.84
                            0.00       0.00

   74   6.1  0.5  0.5       0.00      -0.00
                           -0.00    -198.60

   75   7.1  0.5  0.5       0.00       0.00
                          198.60       0.00

   76   1.1  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   77   2.1  0.5 -0.5       0.00       0.00
                           -0.00    -326.39

   78   3.1  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   79   4.1  0.5 -0.5       0.00       0.00
                         -144.35      -0.00

   80   5.1  0.5 -0.5       0.00       0.00
                          145.12       0.00

   81   6.1  0.5 -0.5    7546.16       0.00
                            0.00       0.00

   82   7.1  0.5 -0.5       0.00    7546.46
                           -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1392.55678515    -0.00372940     -818.51      0.00000000        0.00      0.0000
     2 -1392.55678515    -0.00372940     -818.51      0.00000000        0.00      0.0000
     3 -1392.55678492    -0.00372916     -818.46      0.00000024        0.05      0.0000
     4 -1392.55678492    -0.00372916     -818.46      0.00000024        0.05      0.0000
     5 -1392.55678479    -0.00372904     -818.43      0.00000036        0.08      0.0000
     6 -1392.55678479    -0.00372904     -818.43      0.00000036        0.08      0.0000
     7 -1392.55678102    -0.00372527     -817.60      0.00000414        0.91      0.0001
     8 -1392.55678102    -0.00372527     -817.60      0.00000414        0.91      0.0001
     9 -1392.55677945    -0.00372370     -817.26      0.00000571        1.25      0.0002
    10 -1392.55677945    -0.00372370     -817.26      0.00000571        1.25      0.0002
    11 -1392.55305563     0.00000012        0.03      0.00372952      818.54      0.1015
    12 -1392.55305563     0.00000012        0.03      0.00372952      818.54      0.1015
    13 -1392.55305545     0.00000030        0.07      0.00372970      818.58      0.1015
    14 -1392.55305545     0.00000030        0.07      0.00372970      818.58      0.1015
    15 -1392.55305276     0.00000299        0.66      0.00373239      819.17      0.1016
    16 -1392.55305276     0.00000299        0.66      0.00373239      819.17      0.1016
    17 -1392.55305028     0.00000547        1.20      0.00373488      819.71      0.1016
    18 -1392.55305028     0.00000547        1.20      0.00373488      819.71      0.1016
    19 -1392.55015457     0.00290118      636.74      0.00663059     1455.25      0.1804
    20 -1392.55015457     0.00290118      636.74      0.00663059     1455.25      0.1804
    21 -1392.55015218     0.00290357      637.26      0.00663297     1455.77      0.1805
    22 -1392.55015218     0.00290357      637.26      0.00663297     1455.77      0.1805
    23 -1392.55015128     0.00290447      637.46      0.00663388     1455.97      0.1805
    24 -1392.55015128     0.00290447      637.46      0.00663388     1455.97      0.1805
    25 -1392.54808124     0.00497451     1091.78      0.00870392     1910.29      0.2368
    26 -1392.54808124     0.00497451     1091.78      0.00870392     1910.29      0.2368
    27 -1392.54807994     0.00497581     1092.06      0.00870521     1910.57      0.2369
    28 -1392.54807994     0.00497581     1092.06      0.00870521     1910.57      0.2369
    29 -1392.54042933     0.01262642     2771.18      0.01635582     3589.69      0.4451
    30 -1392.54042933     0.01262642     2771.18      0.01635582     3589.69      0.4451
    31 -1392.54042783     0.01262792     2771.51      0.01635732     3590.02      0.4451
    32 -1392.54042783     0.01262792     2771.51      0.01635732     3590.02      0.4451
    33 -1392.54042497     0.01263078     2772.14      0.01636019     3590.65      0.4452
    34 -1392.54042497     0.01263078     2772.14      0.01636019     3590.65      0.4452
    35 -1392.54042415     0.01263160     2772.32      0.01636100     3590.82      0.4452
    36 -1392.54042415     0.01263160     2772.32      0.01636100     3590.82      0.4452
    37 -1392.54042261     0.01263314     2772.65      0.01636254     3591.16      0.4452
    38 -1392.54042261     0.01263314     2772.65      0.01636254     3591.16      0.4452
    39 -1392.53725832     0.01579743     3467.14      0.01952683     4285.64      0.5314
    40 -1392.53725832     0.01579743     3467.14      0.01952683     4285.64      0.5314
    41 -1392.53725809     0.01579766     3467.19      0.01952706     4285.69      0.5314
    42 -1392.53725809     0.01579766     3467.19      0.01952706     4285.69      0.5314
    43 -1392.53725399     0.01580176     3468.09      0.01953116     4286.59      0.5315
    44 -1392.53725399     0.01580176     3468.09      0.01953116     4286.59      0.5315
    45 -1392.53725203     0.01580372     3468.51      0.01953312     4287.02      0.5315
    46 -1392.53725203     0.01580372     3468.51      0.01953312     4287.02      0.5315
    47 -1392.53453615     0.01851960     4064.58      0.02224901     4883.09      0.6054
    48 -1392.53453615     0.01851960     4064.58      0.02224901     4883.09      0.6054
    49 -1392.53453573     0.01852002     4064.68      0.02224943     4883.18      0.6054
    50 -1392.53453573     0.01852002     4064.68      0.02224943     4883.18      0.6054
    51 -1392.53453309     0.01852266     4065.25      0.02225206     4883.76      0.6055
    52 -1392.53453309     0.01852266     4065.25      0.02225206     4883.76      0.6055
    53 -1392.53250492     0.02055083     4510.39      0.02428023     5328.89      0.6607
    54 -1392.53250492     0.02055083     4510.39      0.02428023     5328.89      0.6607
    55 -1392.53250410     0.02055165     4510.57      0.02428105     5329.07      0.6607
    56 -1392.53250410     0.02055165     4510.57      0.02428105     5329.07      0.6607
    57 -1392.52068260     0.03237315     7105.08      0.03610255     7923.59      0.9824
    58 -1392.52068260     0.03237315     7105.08      0.03610255     7923.59      0.9824
    59 -1392.52067978     0.03237597     7105.70      0.03610538     7924.21      0.9825
    60 -1392.52067978     0.03237597     7105.70      0.03610538     7924.21      0.9825
    61 -1392.52067944     0.03237631     7105.78      0.03610571     7924.29      0.9825
    62 -1392.52067944     0.03237631     7105.78      0.03610571     7924.29      0.9825
    63 -1392.52067828     0.03237747     7106.03      0.03610687     7924.54      0.9825
    64 -1392.52067828     0.03237747     7106.03      0.03610687     7924.54      0.9825
    65 -1392.51555703     0.03749872     8230.02      0.04122812     9048.53      1.1219
    66 -1392.51555703     0.03749872     8230.02      0.04122812     9048.53      1.1219
    67 -1392.51555485     0.03750090     8230.50      0.04123030     9049.01      1.1219
    68 -1392.51555485     0.03750090     8230.50      0.04123030     9049.01      1.1219
    69 -1392.51555397     0.03750179     8230.69      0.04123119     9049.20      1.1220
    70 -1392.51555397     0.03750179     8230.69      0.04123119     9049.20      1.1220
    71 -1392.49262226     0.06043349    13263.62      0.06416289    14082.13      1.7460
    72 -1392.49262226     0.06043349    13263.62      0.06416289    14082.13      1.7460
    73 -1392.49262222     0.06043353    13263.63      0.06416293    14082.14      1.7460
    74 -1392.49262222     0.06043353    13263.63      0.06416293    14082.14      1.7460
    75 -1392.49262215     0.06043360    13263.64      0.06416300    14082.15      1.7460
    76 -1392.49262215     0.06043360    13263.64      0.06416300    14082.15      1.7460
    77 -1392.49069570     0.06236005    13686.45      0.06608946    14504.96      1.7984
    78 -1392.49069570     0.06236005    13686.45      0.06608946    14504.96      1.7984
    79 -1392.49069563     0.06236012    13686.46      0.06608953    14504.97      1.7984
    80 -1392.49069563     0.06236012    13686.46      0.06608953    14504.97      1.7984
    81 -1392.48953973     0.06351602    13940.15      0.06724542    14758.66      1.8298
    82 -1392.48953973     0.06351602    13940.15      0.06724542    14758.66      1.8298


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.433360767   0.000000000  -0.446805475  -0.041721596  -0.107603909  -0.020541726   0.000003114   0.139349038
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.066072813  -0.000373291   0.003997658  -0.079002126   0.413837551  -0.022896427   0.000000512
                         0.000000000  -0.084594444   0.007280841  -0.077972084   0.058764039  -0.307824190  -0.038667083   0.000000864

    3    3.1  1.5  1.5   0.000000000  -0.160193932  -0.014535915   0.155668216   0.024600767  -0.128866416   0.125106476  -0.000002796
                         0.000000000  -0.125120087  -0.000745261   0.007981159   0.033073167  -0.173247469  -0.074080875   0.000001655

    4    4.1  1.5  1.5  -0.298485930   0.000000000  -0.197352492  -0.018428290   0.020901214   0.003990069  -0.000009661  -0.432315438
                         0.000000002   0.000000000   0.000000001   0.000000000  -0.000000004  -0.000000001   0.000000000   0.000000000

    5    5.1  1.5  1.5   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000003
                         0.497117569  -0.000000000  -0.396741510  -0.037046746  -0.162341645  -0.030991231   0.000003625   0.162230518

    6    6.1  1.5  1.5   0.000000000   0.071268171   0.022593715  -0.241960913   0.058010005  -0.303874327  -0.095635060   0.000002137
                        -0.000000000   0.055664282   0.001158388  -0.012405419   0.077988407  -0.408527375   0.056629596  -0.000001266

    7    7.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001
                         0.013797506  -0.000000000  -0.021779584  -0.002033724  -0.016084427  -0.003070538   0.000011545   0.516608992

    8    8.1  1.5  1.5  -0.000000005   0.000000000   0.000000003   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000003
                         0.000103602  -0.000000000  -0.000086644  -0.000008091  -0.000038041  -0.000007262   0.000000005   0.000217821

    9    9.1  1.5  1.5  -0.000000000  -0.000030134  -0.000009342   0.000100041  -0.000023616   0.000123705   0.000039847  -0.000000001
                         0.000000000  -0.000023536  -0.000000479   0.000005129  -0.000031749   0.000166309  -0.000023595   0.000000001

   10   10.1  1.5  1.5   0.000000000   0.000027086  -0.000000153   0.000001637  -0.000032370   0.000169567  -0.000009402   0.000000000
                         0.000000000  -0.000034678   0.000002981  -0.000031920   0.000024078  -0.000126129  -0.000015879   0.000000000

   11   11.1  1.5  1.5  -0.000000000   0.000065305   0.000005816  -0.000062289  -0.000010454   0.000054762  -0.000050683   0.000000001
                        -0.000000000   0.000051006   0.000000298  -0.000003194  -0.000014054   0.000073621   0.000030011  -0.000000001

   12   12.1  1.5  1.5  -0.000031390   0.000000000  -0.000153350  -0.000014319  -0.000011792  -0.000002251  -0.000000003  -0.000133526
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   13   13.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000175485   0.000000000  -0.000138016  -0.000012888  -0.000054929  -0.000010486  -0.000000001  -0.000044923

   14   14.1  1.5  1.5  -0.000213204   0.000000000   0.000128767   0.000012024   0.000043365   0.000008278  -0.000000003  -0.000129137
                        -0.000000002   0.000000000   0.000000002   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000005

   15   15.1  1.5  1.5  -0.000000000   0.000000252   0.000000017  -0.000000187  -0.000000138   0.000000725   0.000000339  -0.000000000
                        -0.000000000   0.000000197   0.000000001  -0.000000010  -0.000000186   0.000000974  -0.000000201   0.000000000

   16   16.1  1.5  1.5   0.000001141   0.000000000  -0.000000428  -0.000000040  -0.000000338  -0.000000064  -0.000000000  -0.000000556
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   17   17.1  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000001177   0.000000000   0.000000667   0.000000062   0.000000130   0.000000025   0.000000000   0.000000295

   18    1.1  1.5  0.5   0.000000000  -0.196167567   0.002103295  -0.022524637   0.042846222  -0.224441748   0.176846674  -0.000003952
                         0.000000000  -0.153217431   0.000107837  -0.001154847   0.057602280  -0.301738546  -0.104718455   0.000002340

   19    2.1  1.5  0.5  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000003   0.000000000  -0.000000000  -0.000000000
                         0.215406473   0.000000000  -0.166651183  -0.015561477   0.054809973   0.010463295  -0.000011171  -0.499890833

   20    3.1  1.5  0.5   0.373440113  -0.000000000   0.267084335   0.024939678  -0.054085905  -0.010325070  -0.000003132  -0.140143854
                        -0.000000000  -0.000000000  -0.000000003  -0.000000000   0.000000005   0.000000001  -0.000000000  -0.000000002

   21    4.1  1.5  0.5  -0.000000000  -0.308255282  -0.042052575   0.450349996  -0.004028430   0.021102160   0.134433554  -0.000003004
                         0.000000000  -0.240763976  -0.002156049   0.023089593  -0.005415806   0.028369664  -0.079603836   0.000001779

   22    5.1  1.5  0.5  -0.000000000  -0.010773258   0.000053399  -0.000571866  -0.065925086   0.345335974  -0.073635920   0.000001646
                         0.000000000   0.013793231  -0.001041535   0.011154018   0.049036963  -0.256870760  -0.124355037   0.000002779

   23    6.1  1.5  0.5  -0.116853163   0.000000000  -0.450199653  -0.042038536  -0.143127678  -0.027323260  -0.000006100  -0.272976703
                         0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000001

   24    7.1  1.5  0.5  -0.000000000   0.001651178   0.000028512  -0.000305339  -0.000517047   0.002708452  -0.093097578   0.000002080
                         0.000000000  -0.002114039  -0.000556108   0.005955484   0.000384594  -0.002014624  -0.157221548   0.000003513

   25    8.1  1.5  0.5  -0.000000000  -0.000001549   0.000000021  -0.000000225  -0.000013279   0.000069560  -0.000048086   0.000000001
                         0.000000000   0.000001984  -0.000000412   0.000004417   0.000009877  -0.000051737  -0.000081205   0.000000002

   26    9.1  1.5  0.5   0.000050098  -0.000000000   0.000186009   0.000017369   0.000058276   0.000011125   0.000000002   0.000110756
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   27   10.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000088297   0.000000000  -0.000068284  -0.000006376   0.000022452   0.000004286  -0.000000005  -0.000204716

   28   11.1  1.5  0.5  -0.000152269   0.000000000  -0.000106838  -0.000009976   0.000022798   0.000004352   0.000000001   0.000059157
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   29   12.1  1.5  0.5  -0.000000000  -0.000148798  -0.000015083   0.000161530   0.000006265  -0.000032817   0.000081257  -0.000000002
                         0.000000000  -0.000116219  -0.000000773   0.000008282   0.000008422  -0.000044119  -0.000048116   0.000000001

   30   13.1  1.5  0.5  -0.000000000  -0.000004107   0.000000013  -0.000000143  -0.000023481   0.000123003  -0.000007674   0.000000000
                         0.000000000   0.000005259  -0.000000260   0.000002779   0.000017466  -0.000091493  -0.000012960   0.000000000

   31   14.1  1.5  0.5  -0.000000000   0.000016522  -0.000008349   0.000089411  -0.000016468   0.000086266  -0.000040627   0.000000001
                        -0.000000000   0.000012905  -0.000000428   0.000004584  -0.000022141   0.000115979   0.000024059  -0.000000001

   32   15.1  1.5  0.5  -0.000001258  -0.000000000   0.000000324   0.000000030   0.000001013   0.000000193  -0.000000000  -0.000000262
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   33   16.1  1.5  0.5   0.000000000   0.000000495   0.000000025  -0.000000266  -0.000000005   0.000000027  -0.000000319   0.000000000
                         0.000000000   0.000000387   0.000000001  -0.000000014  -0.000000007   0.000000037   0.000000189  -0.000000000

   34   17.1  1.5  0.5  -0.000000000  -0.000000128  -0.000000004   0.000000039   0.000000159  -0.000000833   0.000000560  -0.000000000
                         0.000000000   0.000000164   0.000000072  -0.000000767  -0.000000118   0.000000620   0.000000945  -0.000000000

   35    1.1  1.5 -0.5   0.248912224   0.000000000  -0.022554222  -0.002106058   0.376058837   0.071790121  -0.000004593  -0.205525427
                         0.000000002   0.000000000   0.000000002   0.000000000  -0.000000008  -0.000000001   0.000000000  -0.000000001

   36    2.1  1.5 -0.5   0.000000000   0.132593032  -0.000796795   0.008533052  -0.008395440   0.043977911   0.254702282  -0.000005692
                         0.000000000  -0.169761706   0.015541065  -0.166432580   0.006244768  -0.032712024   0.430136714  -0.000009612

   37    3.1  1.5 -0.5   0.000000000   0.294307915   0.024906964  -0.266733990   0.006162271  -0.032279879  -0.120588361   0.000002695
                        -0.000000000   0.229870330   0.001276988  -0.013675541   0.008284532  -0.043396941   0.071405511  -0.000001596

   38    4.1  1.5 -0.5   0.391137585  -0.000000000   0.450941513   0.042107809  -0.035357304  -0.006749755  -0.000003491  -0.156234283
                        -0.000000001  -0.000000000  -0.000000003  -0.000000000   0.000000005   0.000000001   0.000000000   0.000000001

   39    5.1  1.5 -0.5   0.000000001   0.000000000   0.000000004   0.000000000  -0.000000009  -0.000000001   0.000000000   0.000000002
                         0.017501895  -0.000000000  -0.011168668  -0.001042903  -0.430394612  -0.082162891  -0.000003230  -0.144521361

   40    6.1  1.5 -0.5  -0.000000000  -0.092091902  -0.041983392   0.449609109   0.016307237  -0.085422344  -0.234885886   0.000005249
                         0.000000000  -0.071928737  -0.002152502   0.023051605   0.021923379  -0.114841435   0.139085947  -0.000003108

   41    7.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000002
                        -0.002682452  -0.000000000  -0.005963306  -0.000556839  -0.003375562  -0.000644399  -0.000004083  -0.182717745

   42    8.1  1.5 -0.5  -0.000000000   0.000000000   0.000000002   0.000000000  -0.000000003  -0.000000001   0.000000000   0.000000001
                         0.000002517  -0.000000000  -0.000004423  -0.000000413  -0.000086691  -0.000016549  -0.000000002  -0.000094375

   43    9.1  1.5 -0.5   0.000000000   0.000039482   0.000017346  -0.000185765  -0.000006640   0.000034781   0.000095301  -0.000000002
                        -0.000000000   0.000030838   0.000000889  -0.000009524  -0.000008926   0.000046759  -0.000056432   0.000000001

   44   10.1  1.5 -0.5  -0.000000000   0.000054351  -0.000000326   0.000003496  -0.000003439   0.000018014   0.000104306  -0.000000002
                         0.000000000  -0.000069587   0.000006368  -0.000068195   0.000002558  -0.000013400   0.000176150  -0.000000004

   45   11.1  1.5 -0.5  -0.000000000  -0.000120003  -0.000009963   0.000106697  -0.000002597   0.000013606   0.000050902  -0.000000001
                         0.000000000  -0.000093729  -0.000000511   0.000005470  -0.000003492   0.000018292  -0.000030141   0.000000001

   46   12.1  1.5 -0.5   0.000188807  -0.000000000   0.000161742   0.000015103   0.000054986   0.000010497  -0.000000002  -0.000094434
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   47   13.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000006673  -0.000000000  -0.000002783  -0.000000260  -0.000153300  -0.000029265  -0.000000000  -0.000015062

   48   14.1  1.5 -0.5  -0.000020964  -0.000000000   0.000089528   0.000008360  -0.000144544  -0.000027594   0.000000001   0.000047217
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000002   0.000000000   0.000000000   0.000000002

   49   15.1  1.5 -0.5   0.000000000  -0.000000991   0.000000030  -0.000000323  -0.000000115   0.000000605  -0.000000225   0.000000000
                         0.000000000  -0.000000774   0.000000002  -0.000000017  -0.000000155   0.000000813   0.000000133  -0.000000000

   50   16.1  1.5 -0.5  -0.000000628   0.000000000  -0.000000266  -0.000000025  -0.000000046  -0.000000009   0.000000000   0.000000371
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   51   17.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000209  -0.000000000   0.000000768   0.000000072   0.000001039   0.000000198   0.000000000   0.000001099

   52    1.1  1.5 -1.5   0.000000000  -0.341531345   0.041666868  -0.446219383  -0.012259840   0.064220828  -0.119904454   0.000002680
                         0.000000000  -0.266754372   0.002136274  -0.022877813  -0.016482076   0.086338209   0.071000538  -0.000001587

   53    2.1  1.5 -1.5  -0.000000002  -0.000000000  -0.000000004  -0.000000000   0.000000010   0.000000001   0.000000000   0.000000001
                         0.107339819   0.000000000  -0.078074497  -0.007290404   0.515768602   0.098460897   0.000001004   0.044937620

   54    3.1  1.5 -1.5  -0.203266160  -0.000000000  -0.155872680  -0.014555007  -0.215919519  -0.041219317   0.000003249   0.145394658
                        -0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000003   0.000000000  -0.000000000  -0.000000002

   55    4.1  1.5 -1.5   0.000000000   0.235236571   0.018404117  -0.197093618   0.002381377  -0.012474389   0.371990701  -0.000008313
                        -0.000000000   0.183732431   0.000943585  -0.010105055   0.003201514  -0.016770521  -0.220271550   0.000004922

   56    5.1  1.5 -1.5   0.000000000  -0.305999746   0.001896907  -0.020314383  -0.024866452   0.130258159   0.082659012  -0.000001847
                         0.000000000   0.391778040  -0.036998150   0.396221089   0.018496377  -0.096889740   0.139593083  -0.000003120

   57    6.1  1.5 -1.5   0.090430440  -0.000000000   0.242278720   0.022623390  -0.509150491  -0.097197491  -0.000002484  -0.111143942
                        -0.000000002  -0.000000000  -0.000000005  -0.000000000   0.000000012   0.000000001   0.000000000  -0.000000000

   58    7.1  1.5 -1.5   0.000000000  -0.008493028   0.000104133  -0.001115182  -0.002463709   0.012905671   0.263220450  -0.000005882
                         0.000000000   0.010873806  -0.002031056   0.021751015   0.001832577  -0.009599607   0.444522042  -0.000009934

   59    8.1  1.5 -1.5   0.000000000  -0.000063768   0.000000414  -0.000004434  -0.000005827   0.000030522   0.000110986  -0.000000002
                         0.000000000   0.000081652  -0.000008080   0.000086530   0.000004334  -0.000022705   0.000187425  -0.000000004

   60    9.1  1.5 -1.5  -0.000038236   0.000000000  -0.000100172  -0.000009354   0.000207272   0.000039568   0.000000001   0.000046309
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   61   10.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000044002   0.000000000  -0.000031962  -0.000002985   0.000211332   0.000040344   0.000000000   0.000018454

   62   11.1  1.5 -1.5   0.000082864   0.000000000   0.000062371   0.000005824   0.000091755   0.000017516  -0.000000001  -0.000058902
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   63   12.1  1.5 -1.5   0.000000000   0.000024738   0.000014301  -0.000153149  -0.000001344   0.000007038   0.000114894  -0.000000003
                        -0.000000000   0.000019322   0.000000733  -0.000007852  -0.000001806   0.000009461  -0.000068033   0.000000002

   64   13.1  1.5 -1.5   0.000000000  -0.000108020   0.000000660  -0.000007067  -0.000008414   0.000044074  -0.000022889   0.000000001
                         0.000000000   0.000138300  -0.000012871   0.000137835   0.000006258  -0.000032783  -0.000038654   0.000000001

   65   14.1  1.5 -1.5   0.000000000   0.000168028  -0.000012008   0.000128599   0.000004941  -0.000025882   0.000111115  -0.000000002
                        -0.000000000   0.000131236  -0.000000615   0.000006591   0.000006642  -0.000034794  -0.000065801   0.000000001

   66   15.1  1.5 -1.5   0.000000320   0.000000000   0.000000187   0.000000017   0.000001214   0.000000232   0.000000000   0.000000394
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   67   16.1  1.5 -1.5  -0.000000000  -0.000000900   0.000000040  -0.000000428  -0.000000038   0.000000201   0.000000478  -0.000000000
                         0.000000000  -0.000000703   0.000000002  -0.000000022  -0.000000052   0.000000271  -0.000000283   0.000000000

   68   17.1  1.5 -1.5   0.000000000  -0.000000724  -0.000000003   0.000000034   0.000000020  -0.000000104   0.000000151  -0.000000000
                        -0.000000000   0.000000928   0.000000062  -0.000000666  -0.000000015   0.000000078   0.000000254  -0.000000000

   69    1.1  0.5  0.5   0.000000210   0.000000000  -0.000000160  -0.000000015   0.000000115   0.000000022  -0.000000000  -0.000001869
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   70    2.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000053  -0.000000000  -0.000000128  -0.000000012  -0.000000090  -0.000000017   0.000000000   0.000001038

   71    3.1  0.5  0.5   0.000000000  -0.000000089   0.000000001  -0.000000009   0.000000072  -0.000000376  -0.000000244   0.000000000
                        -0.000000000   0.000000114  -0.000000016   0.000000172  -0.000000053   0.000000280  -0.000000411   0.000000000

   72    4.1  0.5  0.5  -0.000000000  -0.000000019  -0.000000003   0.000000036  -0.000000051   0.000000266  -0.000000037   0.000000000
                        -0.000000000  -0.000000015  -0.000000000   0.000000002  -0.000000068   0.000000357   0.000000022  -0.000000000

   73    5.1  0.5  0.5  -0.000000000   0.000000005  -0.000000002   0.000000018  -0.000000010   0.000000050   0.000000566  -0.000000000
                        -0.000000000   0.000000004  -0.000000000   0.000000001  -0.000000013   0.000000068  -0.000000335   0.000000000

   74    6.1  0.5  0.5  -0.000000000   0.000000082  -0.000000000   0.000000001  -0.000000024   0.000000124   0.000000164  -0.000000000
                         0.000000000  -0.000000105   0.000000001  -0.000000010   0.000000018  -0.000000092   0.000000276  -0.000000000

   75    7.1  0.5  0.5   0.000000018   0.000000000  -0.000000004  -0.000000000   0.000000043   0.000000008  -0.000000000  -0.000000952
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   76    1.1  0.5 -0.5   0.000000000  -0.000000166   0.000000015  -0.000000160   0.000000013  -0.000000069   0.000001608  -0.000000000
                         0.000000000  -0.000000130   0.000000001  -0.000000008   0.000000018  -0.000000093  -0.000000952   0.000000000

   77    2.1  0.5 -0.5  -0.000000000  -0.000000033   0.000000001  -0.000000007  -0.000000014   0.000000072   0.000000529  -0.000000000
                         0.000000000   0.000000042  -0.000000012   0.000000128   0.000000010  -0.000000054   0.000000893  -0.000000000

   78    3.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000144  -0.000000000   0.000000172   0.000000016  -0.000000468  -0.000000089   0.000000000   0.000000478

   79    4.1  0.5 -0.5  -0.000000024   0.000000000  -0.000000036  -0.000000003   0.000000445   0.000000085  -0.000000000  -0.000000043
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   80    5.1  0.5 -0.5   0.000000006   0.000000000  -0.000000018  -0.000000002   0.000000084   0.000000016   0.000000000   0.000000658
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   81    6.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000134   0.000000000  -0.000000010  -0.000000001   0.000000154   0.000000029  -0.000000000  -0.000000321

   82    7.1  0.5 -0.5   0.000000000  -0.000000014   0.000000000  -0.000000004   0.000000005  -0.000000026   0.000000819  -0.000000000
                         0.000000000  -0.000000011   0.000000000  -0.000000000   0.000000007  -0.000000034  -0.000000485   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.000328808   0.191530026  -0.166256910   0.006112960   0.169403177   0.002715475  -0.263053010  -0.003625805
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.024990363  -0.000042902   0.012829023   0.348916648   0.000385759  -0.024065317   0.000409020  -0.029674484
                         0.247445467  -0.000424800  -0.011979001  -0.325798224   0.000761517  -0.047506760   0.000907343  -0.065827922

    3    3.1  1.5  1.5  -0.322108951   0.000552978  -0.000867626  -0.023597217  -0.009602644   0.599054738   0.001593202  -0.115587191
                         0.032530881  -0.000055847  -0.000929193  -0.025271670   0.004864373  -0.303460790  -0.000718198   0.052105397

    4    4.1  1.5  1.5   0.000061146   0.035617263  -0.335026847   0.012318320  -0.138626030  -0.002222128  -0.463023959  -0.006382116
                        -0.000000000  -0.000000002   0.000000005  -0.000000000   0.000000006   0.000000000   0.000000000  -0.000000000

    5    5.1  1.5  1.5  -0.000000000   0.000000000  -0.000000002   0.000000000  -0.000000003  -0.000000000   0.000000001   0.000000000
                        -0.000077060  -0.044887326  -0.008285420   0.000304640  -0.244704366  -0.003922528  -0.037690463  -0.000519509

    6    6.1  1.5  1.5   0.082823608  -0.000142187  -0.004720802  -0.128393767   0.001120643  -0.069910613   0.004653208  -0.337591292
                        -0.008364640   0.000014360  -0.005055787  -0.137504499  -0.000567680   0.035414345  -0.002097613   0.152182328

    7    7.1  1.5  1.5  -0.000000000  -0.000000003   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000003  -0.000000000
                         0.000357462   0.208221139   0.009108670  -0.000334909   0.015825516   0.000253678   0.136411380   0.001880234

    8    8.1  1.5  1.5  -0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000
                         0.000000113   0.000065861  -0.000000747   0.000000027   0.000022180   0.000000356  -0.000021130  -0.000000291

    9    9.1  1.5  1.5  -0.000035840   0.000000062  -0.000001001  -0.000027224   0.000000268  -0.000016704   0.000000985  -0.000071431
                         0.000003620  -0.000000006  -0.000001072  -0.000029156  -0.000000136   0.000008462  -0.000000444   0.000032200

   10   10.1  1.5  1.5   0.000010236  -0.000000018  -0.000002723  -0.000074065  -0.000000081   0.000005036  -0.000000089   0.000006432
                         0.000101352  -0.000000174   0.000002543   0.000069157  -0.000000159   0.000009941  -0.000000197   0.000014268

   11   11.1  1.5  1.5   0.000131133  -0.000000225  -0.000000192  -0.000005217  -0.000002035   0.000126937   0.000000350  -0.000025379
                        -0.000013244   0.000000023  -0.000000205  -0.000005587   0.000001031  -0.000064302  -0.000000158   0.000011441

   12   12.1  1.5  1.5   0.000000082   0.000047596   0.000079299  -0.000002916   0.000010515   0.000000169   0.000112974   0.000001557
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000098  -0.000057233   0.000002376  -0.000000087   0.000047272   0.000000758   0.000020761   0.000000286

   14   14.1  1.5  1.5  -0.000000110  -0.000063882  -0.000000364   0.000000013   0.000045252   0.000000725  -0.000006950  -0.000000096
                        -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   15   15.1  1.5  1.5  -0.000000637   0.000000001   0.000000016   0.000000441   0.000000001  -0.000000088   0.000000014  -0.000000984
                         0.000000064  -0.000000000   0.000000017   0.000000472  -0.000000001   0.000000045  -0.000000006   0.000000444

   16   16.1  1.5  1.5  -0.000000001  -0.000000872   0.000000152  -0.000000006  -0.000000602  -0.000000010   0.000000044   0.000000001
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   17   17.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000065   0.000000327  -0.000000012   0.000001187   0.000000019   0.000000194   0.000000003

   18    1.1  1.5  0.5   0.077781729  -0.000133531   0.012647886   0.343990201   0.000718642  -0.044832001  -0.001218374   0.088393348
                        -0.007855443   0.000013486   0.013545372   0.368399517  -0.000364039   0.022710363   0.000549229  -0.039846718

   19    2.1  1.5  0.5   0.000000000   0.000000003   0.000000006  -0.000000000   0.000000006   0.000000000   0.000000000   0.000000000
                         0.000297630   0.173369155   0.113164631  -0.004160855   0.499230688   0.008002498   0.130993918   0.001805562

   20    3.1  1.5  0.5  -0.000842315  -0.490647235   0.139111383  -0.005114869  -0.075853928  -0.001215913   0.166073603   0.002289084
                         0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000000

   21    4.1  1.5  0.5  -0.117083944   0.000201003  -0.010841860  -0.294870891   0.000144417  -0.009009334  -0.001780126   0.129148588
                         0.011824706  -0.000020300  -0.011611191  -0.315794735  -0.000073157   0.004563828   0.000802461  -0.058218718

   22    5.1  1.5  0.5  -0.020031007   0.000034388  -0.009091666  -0.247270091  -0.000810283   0.050548959  -0.002761505   0.200347843
                        -0.198339738   0.000340498   0.008489273   0.230886539  -0.001599560   0.099787493  -0.006125942   0.444438504

   23    6.1  1.5  0.5  -0.000365226  -0.212743615   0.081641543  -0.003001809  -0.401614041  -0.006437737   0.218057343   0.003005605
                         0.000000000  -0.000000001   0.000000003  -0.000000000   0.000000002   0.000000000   0.000000002   0.000000000

   24    7.1  1.5  0.5   0.060899733  -0.000104549   0.000316009   0.008594625  -0.000134070   0.008363901  -0.002392213   0.173555614
                         0.603006992  -0.001035208  -0.000295071  -0.008025164  -0.000264665   0.016510978  -0.005306729   0.385004390

   25    8.1  1.5  0.5   0.000017908  -0.000000031   0.000000876   0.000023831   0.000000109  -0.000006819   0.000000726  -0.000052673
                         0.000177333  -0.000000304  -0.000000818  -0.000022248   0.000000216  -0.000013461   0.000001611  -0.000116847

   26    9.1  1.5  0.5   0.000000144   0.000083895   0.000016846  -0.000000619  -0.000084891  -0.000001361   0.000045709   0.000000630
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   27   10.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000122   0.000071051  -0.000024043   0.000000884  -0.000105822  -0.000001696  -0.000027748  -0.000000382

   28   11.1  1.5  0.5   0.000000347   0.000201973   0.000029622  -0.000001089  -0.000017485  -0.000000280   0.000036294   0.000000500
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   29   12.1  1.5  0.5  -0.000028913   0.000000050   0.000000880   0.000023944  -0.000000093   0.000005805   0.000000452  -0.000032828
                         0.000002920  -0.000000005   0.000000943   0.000025643   0.000000047  -0.000002941  -0.000000204   0.000014799

   30   13.1  1.5  0.5  -0.000019265   0.000000033   0.000001711   0.000046531   0.000000139  -0.000008649   0.000000269  -0.000019506
                        -0.000190759   0.000000327  -0.000001597  -0.000043448   0.000000274  -0.000017073   0.000000596  -0.000043271

   31   14.1  1.5  0.5  -0.000049612   0.000000085   0.000003420   0.000093025   0.000000121  -0.000007533  -0.000000063   0.000004539
                         0.000005007  -0.000000009   0.000003663   0.000099627  -0.000000061   0.000003817   0.000000028  -0.000002043

   32   15.1  1.5  0.5  -0.000000001  -0.000000751   0.000000717  -0.000000026  -0.000000205  -0.000000003  -0.000001623  -0.000000022
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   33   16.1  1.5  0.5  -0.000000680   0.000000001   0.000000003   0.000000069   0.000000013  -0.000000799  -0.000000008   0.000000589
                         0.000000069  -0.000000000   0.000000003   0.000000074  -0.000000006   0.000000405   0.000000004  -0.000000265

   34   17.1  1.5  0.5  -0.000000090   0.000000000  -0.000000027  -0.000000734  -0.000000007   0.000000406  -0.000000001   0.000000049
                        -0.000000888   0.000000002   0.000000025   0.000000686  -0.000000013   0.000000802  -0.000000002   0.000000109

   35    1.1  1.5 -0.5  -0.000134210  -0.078177397   0.504031212  -0.018532300   0.050256033   0.000805587  -0.096959501  -0.001336446
                        -0.000000000  -0.000000000  -0.000000002   0.000000000  -0.000000006  -0.000000000   0.000000001   0.000000000

   36    2.1  1.5 -0.5  -0.017420524   0.000029907  -0.003041195  -0.082712729   0.003616276  -0.225599035   0.000742018  -0.053833587
                        -0.172491707   0.000296124   0.002839692   0.077232364   0.007138804  -0.445349700   0.001646044  -0.119420901

   37    3.1  1.5 -0.5  -0.488163996   0.000838052  -0.003490786  -0.094940455   0.001084682  -0.067667162  -0.002086849   0.151401375
                         0.049301349  -0.000084638  -0.003738490  -0.101677367  -0.000549463   0.034277888   0.000940728  -0.068250022

   38    4.1  1.5 -0.5   0.000202026   0.117679538  -0.432059205   0.015886021   0.010099338   0.000161889  -0.141664310  -0.001952638
                        -0.000000000  -0.000000001   0.000000002  -0.000000000   0.000000004   0.000000000   0.000000001   0.000000000

   39    5.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000002  -0.000000000  -0.000000004  -0.000000000
                        -0.000342230  -0.199348672  -0.338306210   0.012438896   0.111860364   0.001793084   0.487508812   0.006719604

   40    6.1  1.5 -0.5  -0.211666888   0.000363378  -0.002048669  -0.055718558   0.005742924  -0.358268624  -0.002740067   0.198792467
                         0.021376963  -0.000036699  -0.002194041  -0.059672304  -0.002909171   0.181486722   0.001235191  -0.089613392

   41    7.1  1.5 -0.5   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000
                         0.001040474   0.606074426   0.011758862  -0.000432352   0.018508572   0.000296686   0.422314967   0.005821001

   42    8.1  1.5 -0.5   0.000000000   0.000000001   0.000000003  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000306   0.000178234   0.000032602  -0.000001199  -0.000015090  -0.000000242  -0.000128171  -0.000001767

   43    9.1  1.5 -0.5   0.000083470  -0.000000143  -0.000000423  -0.000011497   0.000001214  -0.000075728  -0.000000574   0.000041671
                        -0.000008430   0.000000014  -0.000000453  -0.000012313  -0.000000615   0.000038361   0.000000259  -0.000018785

   44   10.1  1.5 -0.5  -0.000007139   0.000000012   0.000000646   0.000017573  -0.000000767   0.000047820  -0.000000157   0.000011403
                        -0.000070692   0.000000121  -0.000000603  -0.000016409  -0.000001513   0.000094401  -0.000000349   0.000025296

   45   11.1  1.5 -0.5   0.000200951  -0.000000345  -0.000000743  -0.000020216   0.000000250  -0.000015598  -0.000000456   0.000033087
                        -0.000020295   0.000000035  -0.000000796  -0.000021651  -0.000000127   0.000007902   0.000000206  -0.000014915

   46   12.1  1.5 -0.5   0.000000050   0.000029060   0.000035083  -0.000001290  -0.000006507  -0.000000104   0.000036010   0.000000496
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   47   13.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000329  -0.000191729   0.000063662  -0.000002341  -0.000019138  -0.000000307  -0.000047465  -0.000000654

   48   14.1  1.5 -0.5   0.000000086   0.000049864   0.000136305  -0.000005012   0.000008445   0.000000135  -0.000004978  -0.000000069
                        -0.000000000  -0.000000004  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000003   0.000000000

   49   15.1  1.5 -0.5  -0.000000747   0.000000001  -0.000000018  -0.000000490   0.000000003  -0.000000183   0.000000020  -0.000001480
                         0.000000075  -0.000000000  -0.000000019  -0.000000524  -0.000000001   0.000000093  -0.000000009   0.000000667

   50   16.1  1.5 -0.5   0.000000001   0.000000684   0.000000101  -0.000000004   0.000000895   0.000000014  -0.000000646  -0.000000009
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   51   17.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000002  -0.000000893  -0.000001005   0.000000037   0.000000899   0.000000014   0.000000120   0.000000002

   52    1.1  1.5 -1.5  -0.190560664   0.000327144  -0.004171961  -0.113466680   0.002422399  -0.151119823  -0.003305474   0.239812869
                         0.019245372  -0.000033039  -0.004468000  -0.121518199  -0.001227105   0.076552173   0.001490070  -0.108104922

   53    2.1  1.5 -1.5  -0.000000000   0.000000001  -0.000000001   0.000000000  -0.000000004  -0.000000000  -0.000000003  -0.000000000
                        -0.000426961  -0.248704196  -0.477375439   0.017552216   0.053254406   0.000853650   0.072207273   0.000995273

   54    3.1  1.5 -1.5  -0.000555791  -0.323747486   0.034575800  -0.001271289   0.671531853   0.010764428  -0.126788686  -0.001747599
                         0.000000000   0.000000001  -0.000000007   0.000000000  -0.000000007  -0.000000000  -0.000000002  -0.000000000

   55    4.1  1.5 -1.5  -0.035436999   0.000060836  -0.008406982  -0.228648441  -0.001982298   0.123664397  -0.005818270   0.422116834
                         0.003578902  -0.000006144  -0.009003536  -0.244873188   0.001004165  -0.062644180   0.002622810  -0.190285482

   56    5.1  1.5 -1.5  -0.004510381   0.000007743  -0.000222663  -0.006055866   0.001772564  -0.110580279   0.000213499  -0.015489367
                        -0.044660145   0.000076670   0.000207910   0.005654615   0.003499177  -0.218293904   0.000473611  -0.034360595

   57    6.1  1.5 -1.5   0.000142910   0.083244923   0.188128804  -0.006917150  -0.078368806  -0.001256225  -0.370307091  -0.005104148
                         0.000000000   0.000000001   0.000000003  -0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000000

   58    7.1  1.5 -1.5   0.020922535  -0.000035919   0.000244787   0.006657583  -0.000114635   0.007151445  -0.000772706   0.056059964
                         0.207167300  -0.000355653  -0.000228568  -0.006216467  -0.000226299   0.014117499  -0.001714119   0.124359741

   59    8.1  1.5 -1.5   0.000006619  -0.000000011  -0.000000020  -0.000000546  -0.000000161   0.000010022   0.000000120  -0.000008683
                         0.000065527  -0.000000112   0.000000019   0.000000510  -0.000000317   0.000019787   0.000000266  -0.000019263

   60    9.1  1.5 -1.5  -0.000000062  -0.000036022   0.000039890  -0.000001467  -0.000018725  -0.000000300  -0.000078353  -0.000001080
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   61   10.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000175  -0.000101867   0.000101332  -0.000003726  -0.000011144  -0.000000179  -0.000015651  -0.000000216

   62   11.1  1.5 -1.5   0.000000226   0.000131800   0.000007644  -0.000000281   0.000142295   0.000002281  -0.000027838  -0.000000384
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   63   12.1  1.5 -1.5  -0.000047355   0.000000081   0.000001990   0.000054120   0.000000150  -0.000009380   0.000001420  -0.000102993
                         0.000004783  -0.000000008   0.000002131   0.000057960  -0.000000076   0.000004752  -0.000000640   0.000046428

   64   13.1  1.5 -1.5  -0.000005751   0.000000010   0.000000064   0.000001737  -0.000000342   0.000021362  -0.000000118   0.000008532
                        -0.000056943   0.000000098  -0.000000060  -0.000001622  -0.000000676   0.000042170  -0.000000261   0.000018926

   65   14.1  1.5 -1.5   0.000063559  -0.000000109  -0.000000009  -0.000000249   0.000000647  -0.000040369  -0.000000087   0.000006336
                        -0.000006420   0.000000011  -0.000000010  -0.000000266  -0.000000328   0.000020449   0.000000039  -0.000002856

   66   15.1  1.5 -1.5  -0.000000001  -0.000000640  -0.000000646   0.000000024  -0.000000099  -0.000000002  -0.000001080  -0.000000015
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   67   16.1  1.5 -1.5   0.000000867  -0.000000001   0.000000004   0.000000104  -0.000000009   0.000000537   0.000000001  -0.000000040
                        -0.000000088   0.000000000   0.000000004   0.000000111   0.000000004  -0.000000272  -0.000000000   0.000000018

   68   17.1  1.5 -1.5   0.000000007  -0.000000000   0.000000009   0.000000239  -0.000000009   0.000000536  -0.000000001   0.000000080
                         0.000000065  -0.000000000  -0.000000008  -0.000000223  -0.000000017   0.000001059  -0.000000002   0.000000177

   69    1.1  0.5  0.5   0.000000001   0.000000646  -0.000560648   0.000020614   0.000104822   0.000001680  -0.000610030  -0.000008408
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   70    2.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000002   0.000001228  -0.000448078   0.000016475   0.000458326   0.000007347  -0.000875105  -0.000012062

   71    3.1  0.5  0.5   0.000000008  -0.000000000   0.000029106   0.000791597  -0.000002191   0.000136711   0.000002786  -0.000202158
                         0.000000082  -0.000000000  -0.000027177  -0.000739148  -0.000004326   0.000269878   0.000006181  -0.000448454

   72    4.1  0.5  0.5   0.000001304  -0.000000002  -0.000020182  -0.000548899   0.000003435  -0.000214303   0.000013109  -0.000951046
                        -0.000000132   0.000000000  -0.000021614  -0.000587848  -0.000001740   0.000108559  -0.000005909   0.000428721

   73    5.1  0.5  0.5  -0.000000629   0.000000001  -0.000010797  -0.000293662  -0.000013614   0.000849307  -0.000001952   0.000141632
                         0.000000064  -0.000000000  -0.000011564  -0.000314500   0.000006896  -0.000430230   0.000000880  -0.000063846

   74    6.1  0.5  0.5  -0.000000012   0.000000000   0.000017101   0.000465108   0.000007713  -0.000481201  -0.000002117   0.000153565
                        -0.000000123   0.000000000  -0.000015968  -0.000434291   0.000015227  -0.000949927  -0.000004695   0.000340657

   75    7.1  0.5  0.5  -0.000000000  -0.000000236   0.000464717  -0.000017087   0.000856090   0.000013723   0.000716368   0.000009874
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   76    1.1  0.5 -0.5  -0.000000642   0.000000001  -0.000014069  -0.000382630   0.000001499  -0.000093509  -0.000007666   0.000556136
                         0.000000065  -0.000000000  -0.000015067  -0.000409781  -0.000000759   0.000047369   0.000003456  -0.000250700

   77    2.1  0.5 -0.5   0.000000123  -0.000000000  -0.000012042  -0.000327503  -0.000003320   0.000207115   0.000004957  -0.000359635
                         0.000001222  -0.000000002   0.000011244   0.000305803  -0.000006554   0.000408860   0.000010996  -0.000797792

   78    3.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000082  -0.001083035   0.000039821  -0.000302529  -0.000004849   0.000491914   0.000006780

   79    4.1  0.5 -0.5   0.000000002   0.000001310   0.000804273  -0.000029572  -0.000240231  -0.000003851  -0.001043212  -0.000014379
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   80    5.1  0.5 -0.5  -0.000000001  -0.000000632   0.000430288  -0.000015821   0.000952061   0.000015261   0.000155358   0.000002141
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   81    6.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000124  -0.000636344   0.000023397   0.001064855   0.000017069  -0.000373670  -0.000005151

   82    7.1  0.5 -0.5   0.000000234  -0.000000000   0.000011661   0.000317159   0.000012242  -0.000763694   0.000009002  -0.000653078
                        -0.000000024   0.000000000   0.000012489   0.000339664  -0.000006201   0.000386861  -0.000004058   0.000294400


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.004877228  -0.000075237  -0.041302264   0.302938577  -0.001770429  -0.287494844   0.000217666   0.049981412
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.003040445  -0.197095622  -0.045842914  -0.006250165   0.008194977  -0.000050466  -0.251100849   0.001093528
                         0.001603247  -0.103929799   0.250508352   0.034153993   0.017996129  -0.000110822   0.290875363  -0.001266743

    3    3.1  1.5  1.5   0.000513608  -0.033294421  -0.188244483  -0.025665016   0.424317171  -0.002612999   0.028357693  -0.000123496
                        -0.000974022   0.063140552  -0.034448652  -0.004696686  -0.193223182   0.001189893   0.024480038  -0.000106609

    4    4.1  1.5  1.5   0.066818995   0.001030766  -0.042862513   0.314382494   0.001596745   0.259290773   0.001070270   0.245760369
                        -0.000000001  -0.000000000   0.000000000  -0.000000002  -0.000000000  -0.000000001   0.000000000   0.000000000

    5    5.1  1.5  1.5   0.000000007   0.000000000  -0.000000000   0.000000001   0.000000000   0.000000001   0.000000000  -0.000000001
                        -0.239375994  -0.003692673   0.019565105  -0.143503634   0.002249745   0.365329530  -0.000656040  -0.150643035

    6    6.1  1.5  1.5  -0.002386771   0.154721443  -0.229185794  -0.031246902  -0.070888942   0.000436543  -0.296615827   0.001291742
                         0.004526344  -0.293418433  -0.041940896  -0.005718169   0.032281011  -0.000198791  -0.256056358   0.001115109

    7    7.1  1.5  1.5  -0.000000017  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.581541184   0.008970996  -0.000547475   0.004015551   0.000633071   0.102802529   0.002045452   0.469686160

    8    8.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000004  -0.000000000  -0.000000001
                        -0.000082703  -0.000001276  -0.000004298   0.000031523  -0.000000791  -0.000128430  -0.000000706  -0.000162077

    9    9.1  1.5  1.5  -0.000000510   0.000033038  -0.000108824  -0.000014837  -0.000037138   0.000000229  -0.000142831   0.000000622
                         0.000000967  -0.000062655  -0.000019915  -0.000002715   0.000016912  -0.000000104  -0.000123300   0.000000537

   10   10.1  1.5  1.5  -0.000000646   0.000041855   0.000022043   0.000003005  -0.000003925   0.000000024   0.000120899  -0.000000527
                        -0.000000340   0.000022071  -0.000120456  -0.000016423  -0.000008619   0.000000053  -0.000140049   0.000000610

   11   11.1  1.5  1.5   0.000000100  -0.000006500  -0.000092252  -0.000012578   0.000203940  -0.000001256   0.000011268  -0.000000049
                        -0.000000190   0.000012327  -0.000016882  -0.000002302  -0.000092869   0.000000572   0.000009727  -0.000000042

   12   12.1  1.5  1.5  -0.000012308  -0.000000190   0.000027266  -0.000199984  -0.000000313  -0.000050821  -0.000000508  -0.000116762
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000104156   0.000001607  -0.000008358   0.000061306  -0.000000801  -0.000130053   0.000000752   0.000172649

   14   14.1  1.5  1.5  -0.000007582  -0.000000117  -0.000008771   0.000064329  -0.000001103  -0.000179146  -0.000000134  -0.000030876
                         0.000000002   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000003   0.000000000   0.000000004

   15   15.1  1.5  1.5  -0.000000001   0.000000047  -0.000001234  -0.000000168  -0.000000380   0.000000002   0.000000074  -0.000000000
                         0.000000001  -0.000000088  -0.000000226  -0.000000031   0.000000173  -0.000000001   0.000000064  -0.000000000

   16   16.1  1.5  1.5  -0.000001261  -0.000000019   0.000000022  -0.000000163   0.000000003   0.000000522  -0.000000002  -0.000000358
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   17   17.1  1.5  1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000617  -0.000000010  -0.000000063   0.000000464  -0.000000005  -0.000000741  -0.000000000  -0.000000010

   18    1.1  1.5  0.5   0.003047758  -0.197569663  -0.306350249  -0.041767407  -0.313397936   0.001929944   0.136763707  -0.000595597
                        -0.005779860   0.374677100  -0.056061956  -0.007643416   0.142713399  -0.000878847   0.118062536  -0.000514155

   19    2.1  1.5  0.5  -0.000000002  -0.000000000   0.000000000  -0.000000002  -0.000000000  -0.000000002  -0.000000000   0.000000001
                         0.080075804   0.001235269   0.035596446  -0.261088271  -0.002019217  -0.327894652   0.000836613   0.192107021

   20    3.1  1.5  0.5  -0.213106016  -0.003287425  -0.024433875   0.179214468   0.000118836   0.019297389   0.001621332   0.372297756
                        -0.000000005  -0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000001   0.000000000   0.000000000

   21    4.1  1.5  0.5   0.000847224  -0.054920925   0.251245497   0.034254495  -0.242567816   0.001493763  -0.189267911   0.000824249
                        -0.001606700   0.104153706   0.045977809   0.006268557   0.110459177  -0.000680222  -0.163387274   0.000711541

   22    5.1  1.5  0.5  -0.004042741   0.262069056  -0.077835545  -0.010612000   0.000671343  -0.000004134   0.161710883  -0.000704240
                        -0.002131764   0.138190710   0.425331913   0.057989217   0.001474273  -0.000009079  -0.187325978   0.000815792

   23    6.1  1.5  0.5   0.258739851   0.003991384   0.055417789  -0.406471330   0.000133299   0.021645970   0.000925232   0.212456054
                         0.000000009   0.000000000  -0.000000000   0.000000001   0.000000000   0.000000003   0.000000000   0.000000000

   24    7.1  1.5  0.5   0.002559098  -0.165892474  -0.001464094  -0.000199613   0.177875103  -0.001095377   0.077659985  -0.000338204
                         0.001349429  -0.087476180   0.008000532   0.001090782   0.390612866  -0.002405443  -0.089961368   0.000391776

   25    8.1  1.5  0.5  -0.000000058   0.000003762   0.000018784   0.000002561  -0.000074836   0.000000461  -0.000070265   0.000000306
                        -0.000000031   0.000001985  -0.000102670  -0.000013998  -0.000164335   0.000001012   0.000081399  -0.000000354

   26    9.1  1.5  0.5   0.000055650   0.000000858   0.000026829  -0.000196780   0.000000062   0.000010133   0.000000434   0.000099651
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   27   10.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000017196  -0.000000265  -0.000017142   0.000125730   0.000000973   0.000158010  -0.000000404  -0.000092801

   28   11.1  1.5  0.5  -0.000044448  -0.000000686  -0.000011387   0.000083523   0.000000061   0.000009825   0.000000787   0.000180792
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   29   12.1  1.5  0.5  -0.000000448   0.000029020  -0.000043374  -0.000005914   0.000171297  -0.000001055   0.000052830  -0.000000230
                         0.000000849  -0.000055035  -0.000007937  -0.000001082  -0.000078004   0.000000480   0.000045606  -0.000000199

   30   13.1  1.5  0.5   0.000001014  -0.000065756   0.000032395   0.000004417   0.000041008  -0.000000253  -0.000049783   0.000000217
                         0.000000535  -0.000034674  -0.000177025  -0.000024135   0.000090053  -0.000000555   0.000057669  -0.000000251

   31   14.1  1.5  0.5   0.000000502  -0.000032556  -0.000185467  -0.000025286  -0.000084000   0.000000517   0.000099064  -0.000000431
                        -0.000000952   0.000061741  -0.000033938  -0.000004627   0.000038256  -0.000000236   0.000085515  -0.000000372

   32   15.1  1.5  0.5  -0.000000524  -0.000000008  -0.000000003   0.000000025  -0.000000006  -0.000000914   0.000000000   0.000000073
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   33   16.1  1.5  0.5  -0.000000000   0.000000016   0.000000613   0.000000084  -0.000000593   0.000000004   0.000000430  -0.000000002
                         0.000000000  -0.000000031   0.000000112   0.000000015   0.000000270  -0.000000002   0.000000372  -0.000000002

   34   17.1  1.5  0.5   0.000000016  -0.000001056  -0.000000184  -0.000000025   0.000000368  -0.000000002  -0.000000171   0.000000001
                         0.000000009  -0.000000557   0.000001007   0.000000137   0.000000807  -0.000000005   0.000000198  -0.000000001

   35    1.1  1.5 -0.5   0.423576087   0.006534188  -0.042461019   0.311437663   0.002120626   0.344362281  -0.000786823  -0.180673944
                         0.000000012   0.000000000   0.000000000  -0.000000002  -0.000000000  -0.000000001  -0.000000000   0.000000000

   36    2.1  1.5 -0.5   0.001092665  -0.070831596  -0.046998553  -0.006407723   0.135888750  -0.000836820   0.125533554  -0.000546690
                         0.000576170  -0.037349960   0.256823327   0.035014969   0.298411042  -0.001837653  -0.145418137   0.000633286

   37    3.1  1.5 -0.5   0.001533362  -0.099399578   0.176286954   0.024034741   0.017562208  -0.000108150   0.281816072  -0.001227290
                        -0.002907914   0.188504371   0.032260432   0.004398347  -0.007997381   0.000049249   0.243280333  -0.001059470

   38    4.1  1.5 -0.5   0.117746773   0.001816390   0.034823343  -0.255417812   0.001641350   0.266534004   0.001088888   0.250035484
                         0.000000002   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000   0.000000002

   39    5.1  1.5 -0.5  -0.000000010  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000003   0.000000000   0.000000001
                         0.296271603   0.004570358  -0.058952217   0.432395199   0.000009976   0.001619933  -0.001077716  -0.247470063

   40    6.1  1.5 -0.5  -0.001861711   0.120684680  -0.399831516  -0.054512525   0.019699608  -0.000121313   0.160821627  -0.000700368
                         0.003530606  -0.228870090  -0.073168984  -0.009975767  -0.008970700   0.000055243   0.138830757  -0.000604599

   41    7.1  1.5 -0.5   0.000000003   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001
                        -0.187543048  -0.002893085  -0.001108897   0.008133393   0.002643106   0.429206201  -0.000517562  -0.118844945

   42    8.1  1.5 -0.5   0.000000002   0.000000000  -0.000000001   0.000000004   0.000000000   0.000000002  -0.000000000  -0.000000003
                         0.000004253   0.000000066   0.000014230  -0.000104374  -0.000001112  -0.000180572   0.000000468   0.000107531

   43    9.1  1.5 -0.5  -0.000000400   0.000025957  -0.000193566  -0.000026391   0.000009222  -0.000000057   0.000075432  -0.000000329
                         0.000000759  -0.000049226  -0.000035422  -0.000004829  -0.000004199   0.000000026   0.000065118  -0.000000284

   44   10.1  1.5 -0.5  -0.000000235   0.000015210   0.000022633   0.000003086  -0.000065484   0.000000403  -0.000060642   0.000000264
                        -0.000000124   0.000008021  -0.000123676  -0.000016862  -0.000143803   0.000000886   0.000070247  -0.000000306

   45   11.1  1.5 -0.5   0.000000320  -0.000020732   0.000082159   0.000011201   0.000008942  -0.000000055   0.000136853  -0.000000596
                        -0.000000607   0.000039317   0.000015035   0.000002050  -0.000004072   0.000000025   0.000118139  -0.000000514

   46   12.1  1.5 -0.5  -0.000062217  -0.000000960  -0.000006012   0.000044094  -0.000001159  -0.000188222  -0.000000304  -0.000069792
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   47   13.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000074338  -0.000001147   0.000024536  -0.000179964   0.000000609   0.000098950   0.000000332   0.000076185

   48   14.1  1.5 -0.5   0.000069799   0.000001077  -0.000025706   0.000188546   0.000000568   0.000092301  -0.000000570  -0.000130868
                        -0.000000000  -0.000000000  -0.000000000   0.000000002   0.000000000   0.000000004  -0.000000000  -0.000000002

   49   15.1  1.5 -0.5   0.000000004  -0.000000244   0.000000025   0.000000003  -0.000000831   0.000000005   0.000000055  -0.000000000
                        -0.000000007   0.000000463   0.000000004   0.000000001   0.000000379  -0.000000002   0.000000048  -0.000000000

   50   16.1  1.5 -0.5  -0.000000035  -0.000000001   0.000000085  -0.000000623   0.000000004   0.000000652  -0.000000002  -0.000000569
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   51   17.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000001193  -0.000000018  -0.000000140   0.000001024   0.000000005   0.000000887   0.000000001   0.000000262

   52    1.1  1.5 -1.5  -0.000035093   0.002274898  -0.297989998  -0.040627581   0.261643901  -0.001611236  -0.037834140   0.000164765
                         0.000066552  -0.004314185  -0.054532032  -0.007434829  -0.119145937   0.000733716  -0.032660671   0.000142235

   53    2.1  1.5 -1.5  -0.000000006  -0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.222818508   0.003437253   0.034721172  -0.254668426  -0.000121772  -0.019774183  -0.001673452  -0.384265681

   54    3.1  1.5 -1.5  -0.071381004  -0.001101141   0.026091222  -0.191370570   0.002871168   0.466240560   0.000163146   0.037462394
                        -0.000000003  -0.000000000   0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000   0.000000002

   55    4.1  1.5 -1.5   0.000480783  -0.031166555  -0.309246976  -0.042162343  -0.235975882   0.001453169  -0.186031801   0.000810156
                        -0.000911771   0.059105193  -0.056592056  -0.007715690   0.107457377  -0.000661736  -0.160593674   0.000699375

   56    5.1  1.5 -1.5   0.003266379  -0.211741659   0.025832116   0.003521918   0.151402816  -0.000932358   0.098438649  -0.000428694
                         0.001722383  -0.111652749  -0.141159466  -0.019245504   0.332479853  -0.002047453  -0.114031383   0.000496599

   57    6.1  1.5 -1.5   0.331712378   0.005117076   0.031765805  -0.232991774  -0.000479674  -0.077892912  -0.001706478  -0.391849216
                         0.000000009   0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000

   58    7.1  1.5 -1.5  -0.007935356   0.514406198  -0.000722840  -0.000098551   0.042604255  -0.000262362  -0.306919404   0.001336614
                        -0.004184365   0.271249722   0.003949956   0.000538532   0.093558738  -0.000576147   0.355535608  -0.001548334

   59    8.1  1.5 -1.5   0.000001129  -0.000073155  -0.000005676  -0.000000774  -0.000053221   0.000000328   0.000105911  -0.000000461
                         0.000000595  -0.000038575   0.000031008   0.000004228  -0.000116883   0.000000720  -0.000122686   0.000000534

   60    9.1  1.5 -1.5   0.000070832   0.000001093   0.000015083  -0.000110631  -0.000000251  -0.000040807  -0.000000822  -0.000188689
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   61   10.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000047318  -0.000000730  -0.000016696   0.000122456   0.000000058   0.000009471   0.000000806   0.000185014

   62   11.1  1.5 -1.5  -0.000013936  -0.000000215   0.000012786  -0.000093784   0.000001380   0.000224090   0.000000065   0.000014885
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   63   12.1  1.5 -1.5  -0.000000089   0.000005741   0.000196717   0.000026820   0.000046251  -0.000000285   0.000088384  -0.000000385
                         0.000000168  -0.000010887   0.000035999   0.000004908  -0.000021062   0.000000130   0.000076299  -0.000000332

   64   13.1  1.5 -1.5  -0.000001421   0.000092131  -0.000011036  -0.000001505  -0.000053897   0.000000332  -0.000112818   0.000000491
                        -0.000000749   0.000048582   0.000060304   0.000008222  -0.000118358   0.000000729   0.000130689  -0.000000569

   65   14.1  1.5 -1.5  -0.000000055   0.000003538  -0.000063279  -0.000008627   0.000163038  -0.000001004   0.000023370  -0.000000102
                         0.000000103  -0.000006706  -0.000011581  -0.000001579  -0.000074240   0.000000457   0.000020179  -0.000000088

   66   15.1  1.5 -1.5   0.000000100   0.000000002   0.000000171  -0.000001254  -0.000000003  -0.000000418   0.000000000   0.000000097
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   67   16.1  1.5 -1.5  -0.000000009   0.000000588   0.000000160   0.000000022  -0.000000475   0.000000003   0.000000271  -0.000000001
                         0.000000017  -0.000001115   0.000000029   0.000000004   0.000000217  -0.000000001   0.000000234  -0.000000001

   68   17.1  1.5 -1.5   0.000000008  -0.000000545  -0.000000084  -0.000000011  -0.000000307   0.000000002   0.000000007  -0.000000000
                         0.000000004  -0.000000288   0.000000457   0.000000062  -0.000000674   0.000000004  -0.000000008   0.000000000

   69    1.1  0.5  0.5   0.001047897   0.000016165  -0.000070577   0.000517657   0.000000289   0.000046969   0.000003409   0.000782682
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   70    2.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000786492  -0.000012133  -0.000077069   0.000565275  -0.000004083  -0.000663076  -0.000001522  -0.000349437

   71    3.1  0.5  0.5  -0.000007358   0.000476975  -0.000095349  -0.000013000   0.000187650  -0.000001156   0.000409717  -0.000001784
                        -0.000003880   0.000251512   0.000521032   0.000071037   0.000412078  -0.000002538  -0.000474616   0.000002067

   72    4.1  0.5  0.5   0.000000398  -0.000025818  -0.000722462  -0.000098500  -0.000351278   0.000002163   0.000327988  -0.000001428
                        -0.000000755   0.000048962  -0.000132210  -0.000018025   0.000159963  -0.000000985   0.000283138  -0.000001233

   73    5.1  0.5  0.5   0.000005944  -0.000385341   0.000183027   0.000024954   0.000460942  -0.000002839   0.000582468  -0.000002537
                        -0.000011273   0.000730772   0.000033494   0.000004567  -0.000209901   0.000001293   0.000502821  -0.000002190

   74    6.1  0.5  0.5   0.000004676  -0.000303109  -0.000137671  -0.000018770  -0.000151612   0.000000934  -0.000256537   0.000001117
                         0.000002466  -0.000159831   0.000752301   0.000102568  -0.000332940   0.000002050   0.000297173  -0.000001294

   75    7.1  0.5  0.5   0.000578787   0.000008929   0.000001886  -0.000013831  -0.000005774  -0.000937555   0.000000293   0.000067361
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   76    1.1  0.5 -0.5   0.000007540  -0.000488773  -0.000509201  -0.000069424  -0.000042745   0.000000263  -0.000592462   0.000002580
                        -0.000014299   0.000926924  -0.000093184  -0.000012705   0.000019465  -0.000000120  -0.000511449   0.000002227

   77    2.1  0.5 -0.5   0.000010732  -0.000695696  -0.000101755  -0.000013873  -0.000274797   0.000001692   0.000228342  -0.000000994
                         0.000005659  -0.000366845   0.000556041   0.000075810  -0.000603454   0.000003716  -0.000264512   0.000001152

   78    3.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000539224  -0.000008318   0.000072216  -0.000529684  -0.000002788  -0.000452792   0.000002731   0.000627000

   79    4.1  0.5 -0.5  -0.000055352  -0.000000854   0.000100135  -0.000734459  -0.000002377  -0.000385985   0.000001887   0.000433293
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   80    5.1  0.5 -0.5  -0.000826145  -0.000012744  -0.000025368   0.000186066   0.000003119   0.000506484   0.000003351   0.000769478
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   81    6.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000342667   0.000005286   0.000104271  -0.000764794   0.000002253   0.000365835  -0.000001710  -0.000392585

   82    7.1  0.5 -0.5   0.000004165  -0.000269965   0.000013605   0.000001855   0.000853252  -0.000005254  -0.000050990   0.000000222
                        -0.000007898   0.000511970   0.000002490   0.000000339  -0.000388549   0.000002393  -0.000044017   0.000000192


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.000912032  -0.428591342  -0.000892890   0.234045465   0.000000950  -0.000009330  -0.000000725  -0.000138019
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.095119252  -0.000202411   0.105420659   0.000402183   0.000039949   0.000004066  -0.000052559   0.000000276
                        -0.039747649  -0.000084582  -0.347817836  -0.001326935  -0.000176813  -0.000017997  -0.000087620   0.000000461

    3    3.1  1.5  1.5  -0.057317308  -0.000121970   0.086987655   0.000331860   0.000070624   0.000007189  -0.000001404   0.000000007
                         0.137164823   0.000291883   0.026365227   0.000100584   0.000015960   0.000001624   0.000000842  -0.000000004

    4    4.1  1.5  1.5  -0.000620007   0.291359796  -0.000529807   0.138873661   0.000011911  -0.000117019   0.000000667   0.000126959
                         0.000000000   0.000000002  -0.000000000   0.000000002  -0.000000005   0.000000045  -0.000000000  -0.000000000

    5    5.1  1.5  1.5   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000002   0.000000018  -0.000000000  -0.000000002
                        -0.000925961   0.435136887   0.000880454  -0.230785618  -0.000004458   0.000043800  -0.000000511  -0.000097241

    6    6.1  1.5  1.5   0.047165491   0.000100367   0.339667429   0.001295841  -0.000152268  -0.000015499  -0.000034436   0.000000181
                        -0.112870730  -0.000240186   0.102950339   0.000392758  -0.000034404  -0.000003502   0.000020660  -0.000000109

    7    7.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000003  -0.000000003   0.000000032   0.000000000   0.000000003
                        -0.000600128   0.282018409  -0.000551201   0.144481504  -0.000007966   0.000078262  -0.000001111  -0.000211316

    8    8.1  1.5  1.5   0.000000000  -0.000000006  -0.000000000   0.000000002   0.000008979  -0.000088217  -0.000000074  -0.000013996
                         0.000000558  -0.000262313   0.000000032  -0.000008290   0.022335315  -0.219428835   0.002982959   0.567569103

    9    9.1  1.5  1.5   0.000027532   0.000000059   0.000193869   0.000000740  -0.373584416  -0.038026569  -0.084264405   0.000442866
                        -0.000065887  -0.000000140   0.000058760   0.000000224  -0.084408362  -0.008591794   0.050554834  -0.000265700

   10   10.1  1.5  1.5   0.000054575   0.000000116  -0.000060565  -0.000000231  -0.097649893  -0.009939628   0.128215688  -0.000673860
                         0.000022805   0.000000049   0.000199824   0.000000762   0.432192126   0.043992155   0.213747078  -0.001123385

   11   11.1  1.5  1.5  -0.000032497  -0.000000069   0.000053165   0.000000203   0.166701692   0.016968302  -0.004595089   0.000024150
                         0.000077768   0.000000165   0.000016114   0.000000061   0.037671247   0.003834497   0.002755217  -0.000014481

   12   12.1  1.5  1.5   0.000000088  -0.000041447   0.000000499  -0.000130672  -0.026928177   0.264550489  -0.000678771  -0.129150206
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000009889  -0.000097158   0.000000002   0.000000346

   13   13.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000019  -0.000000187   0.000000045   0.000008577
                         0.000000298  -0.000140057  -0.000000594   0.000155697   0.000104257  -0.001024256  -0.000222833  -0.042398523

   14   14.1  1.5  1.5   0.000000626  -0.000294339  -0.000000325   0.000085317  -0.010721555   0.105331772  -0.002300947  -0.437802315
                        -0.000000000   0.000000006  -0.000000000   0.000000000   0.000004417  -0.000043396  -0.000000062  -0.000011821

   15   15.1  1.5  1.5   0.000000019   0.000000000   0.000000237   0.000000001   0.000000043   0.000000004   0.000000007  -0.000000000
                        -0.000000046  -0.000000000   0.000000072   0.000000000   0.000000010   0.000000001  -0.000000004   0.000000000

   16   16.1  1.5  1.5  -0.000000001   0.000000408  -0.000000000   0.000000015   0.000000001  -0.000000013   0.000000000   0.000000012
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   17   17.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000001   0.000000503  -0.000000001   0.000000349   0.000000004  -0.000000035   0.000000000   0.000000087

   18    1.1  1.5  0.5   0.059929427   0.000127528   0.143969995   0.000549250  -0.000048648  -0.000004952  -0.000104554   0.000000550
                        -0.143415832  -0.000305185   0.043636094   0.000166473  -0.000010988  -0.000001118   0.000062712  -0.000000330

   19    2.1  1.5  0.5  -0.000000000  -0.000000002   0.000000000  -0.000000001   0.000000006  -0.000000054  -0.000000000  -0.000000001
                        -0.000773829   0.363645355   0.000395173  -0.103583209   0.000015102  -0.000148371   0.000000561   0.000106760

   20    3.1  1.5  0.5  -0.000198207   0.093143560  -0.001894725   0.496647791  -0.000007718   0.000075824   0.000000794   0.000151106
                         0.000000000   0.000000003  -0.000000000   0.000000004   0.000000002  -0.000000024   0.000000000   0.000000006

   21    4.1  1.5  0.5   0.117867489   0.000250819   0.283728279   0.001082431   0.000076968   0.000007834  -0.000025582   0.000000134
                        -0.282066170  -0.000600230   0.085995652   0.000328076   0.000017391   0.000001770   0.000015341  -0.000000081

   22    5.1  1.5  0.5   0.046473236   0.000098894   0.058081710   0.000221583   0.000016240   0.000001653   0.000017062  -0.000000090
                         0.019419855   0.000041325  -0.191630889  -0.000731077  -0.000071873  -0.000007316   0.000028454  -0.000000150

   23    6.1  1.5  0.5   0.000803678  -0.377672294  -0.000162956   0.042714180   0.000003689  -0.000036243   0.000000489   0.000092986
                        -0.000000000  -0.000000002   0.000000000  -0.000000001  -0.000000002   0.000000015   0.000000000   0.000000002

   24    7.1  1.5  0.5  -0.097401090  -0.000207267  -0.121556791  -0.000463743   0.000043361   0.000004414  -0.000042347   0.000000223
                        -0.040701168  -0.000086611   0.401056304   0.001530041  -0.000191898  -0.000019533  -0.000070599   0.000000371

   25    8.1  1.5  0.5   0.000035716   0.000000076   0.000044705   0.000000171  -0.111882508  -0.011388344   0.070337147  -0.000369669
                         0.000014925   0.000000032  -0.000147498  -0.000000563   0.495125969   0.050398092   0.117260647  -0.000616284

   26    9.1  1.5  0.5   0.000000463  -0.000217348  -0.000000078   0.000020346   0.009249593  -0.090870779   0.001168170   0.222268362
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000003919   0.000038503   0.000000026   0.000004907

   27   10.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000013557   0.000133187   0.000000017   0.000003202
                         0.000000445  -0.000208967  -0.000000227   0.000059602  -0.036918863   0.362701986  -0.001371272  -0.260912718

   28   11.1  1.5  0.5  -0.000000107   0.000050442  -0.000001090   0.000285726  -0.018705039   0.183763916   0.001959233   0.372784288
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000005918  -0.000058137   0.000000078   0.000014894

   29   12.1  1.5  0.5  -0.000075834  -0.000000161  -0.000182564  -0.000000696  -0.115754608  -0.011782479   0.167358693  -0.000879583
                         0.000181477   0.000000386  -0.000055333  -0.000000211  -0.026159783  -0.002662763  -0.100375301   0.000527540

   30   13.1  1.5  0.5  -0.000050407  -0.000000107  -0.000062795  -0.000000240   0.016487298   0.001678216  -0.086138682   0.000452717
                        -0.000021064  -0.000000045   0.000207182   0.000000790  -0.072958452  -0.007426326  -0.143625651   0.000754850

   31   14.1  1.5  0.5   0.000001149   0.000000002   0.000002402   0.000000009  -0.188544157  -0.019191612  -0.200386272   0.001053165
                        -0.000002753  -0.000000006   0.000000731   0.000000003  -0.042604939  -0.004336690   0.120191553  -0.000631688

   32   15.1  1.5  0.5   0.000000001  -0.000000640  -0.000000001   0.000000255  -0.000000001   0.000000009  -0.000000000  -0.000000036
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   33   16.1  1.5  0.5   0.000000082   0.000000000   0.000000173   0.000000001   0.000000008   0.000000001  -0.000000004   0.000000000
                        -0.000000196  -0.000000000   0.000000052   0.000000000   0.000000002   0.000000000   0.000000002  -0.000000000

   34   17.1  1.5  0.5   0.000000093   0.000000000  -0.000000118  -0.000000000  -0.000000011  -0.000000001   0.000000009  -0.000000000
                         0.000000039   0.000000000   0.000000389   0.000000001   0.000000047   0.000000005   0.000000015  -0.000000000

   35    1.1  1.5 -0.5   0.000330759  -0.155433706   0.000573924  -0.150437589  -0.000005077   0.000049874   0.000000641   0.000121920
                        -0.000000000  -0.000000002   0.000000000  -0.000000001   0.000000001  -0.000000013   0.000000000   0.000000007

   36    2.1  1.5 -0.5  -0.335528903  -0.000713997  -0.030045462  -0.000114624  -0.000032706  -0.000003329  -0.000054910   0.000000289
                        -0.140208058  -0.000298359   0.099129972   0.000378184   0.000144721   0.000014731  -0.000091556   0.000000481

   37    3.1  1.5 -0.5   0.035912674   0.000076421   0.475295972   0.001813267   0.000073960   0.000007528   0.000129585  -0.000000681
                        -0.085941856  -0.000182882   0.144058209   0.000549586   0.000016711   0.000001701  -0.000077722   0.000000408

   38    4.1  1.5 -0.5   0.000650528  -0.305702583   0.001131058  -0.296474263   0.000008032  -0.000078909   0.000000157   0.000029830
                        -0.000000000  -0.000000003   0.000000000  -0.000000004  -0.000000003   0.000000026  -0.000000000  -0.000000001

   39    5.1  1.5 -0.5   0.000000000   0.000000001  -0.000000000   0.000000001   0.000000002  -0.000000024   0.000000000   0.000000002
                        -0.000107181   0.050367573   0.000763920  -0.200239563   0.000007500  -0.000073684   0.000000174   0.000033177

   40    6.1  1.5 -0.5  -0.145616321  -0.000309868   0.040877817   0.000155950  -0.000035351  -0.000003598   0.000079743  -0.000000419
                         0.348471303   0.000741539   0.012389724   0.000047267  -0.000007991  -0.000000813  -0.000047826   0.000000251

   41    7.1  1.5 -0.5  -0.000000000  -0.000000001   0.000000000  -0.000000003   0.000000007  -0.000000066   0.000000000   0.000000006
                         0.000224636  -0.105563050  -0.001598775   0.419073039   0.000020025  -0.000196736  -0.000000433  -0.000082325

   42    8.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000017711   0.000174002  -0.000000060  -0.000011318
                        -0.000000082   0.000038709   0.000000588  -0.000154124  -0.051668769   0.507609486   0.000718652   0.136738339

   43    9.1  1.5 -0.5  -0.000083801  -0.000000178   0.000019472   0.000000074  -0.088634397  -0.009021956   0.190614285  -0.001001807
                         0.000200543   0.000000427   0.000005902   0.000000023  -0.020036055  -0.002039438  -0.114321561   0.000600837

   44   10.1  1.5 -0.5   0.000192810   0.000000410   0.000017288   0.000000066   0.079952000   0.008138188   0.134195714  -0.000705289
                         0.000080570   0.000000171  -0.000057040  -0.000000218  -0.353780195  -0.036010728   0.223756468  -0.001175991

   45   11.1  1.5 -0.5   0.000019449   0.000000041   0.000273442   0.000001043   0.179245723   0.018245140   0.319691241  -0.001680193
                        -0.000046542  -0.000000099   0.000082878   0.000000316   0.040498778   0.004122307  -0.191743672   0.001007742

   46   12.1  1.5 -0.5  -0.000000419   0.000196684  -0.000000728   0.000190765  -0.012079615   0.118673762  -0.001025653  -0.195151564
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000004436  -0.000043580  -0.000000029  -0.000005475

   47   13.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000002713  -0.000026654   0.000000014   0.000002593
                         0.000000116  -0.000054631  -0.000000826   0.000216490   0.007613588  -0.074798169  -0.000880199  -0.167475969

   48   14.1  1.5 -0.5   0.000000006  -0.000002983   0.000000010  -0.000002510  -0.019675488   0.193297893   0.001228082   0.233667857
                         0.000000000  -0.000000001  -0.000000000   0.000000003   0.000006748  -0.000066297   0.000000069   0.000013057

   49   15.1  1.5 -0.5  -0.000000247  -0.000000001   0.000000244   0.000000001   0.000000009   0.000000001  -0.000000031   0.000000000
                         0.000000591   0.000000001   0.000000074   0.000000000   0.000000002   0.000000000   0.000000019  -0.000000000

   50   16.1  1.5 -0.5   0.000000000  -0.000000212   0.000000001  -0.000000181   0.000000001  -0.000000008   0.000000000   0.000000004
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   51   17.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000101  -0.000000002   0.000000406  -0.000000005   0.000000048   0.000000000   0.000000017

   52    1.1  1.5 -1.5   0.165248805   0.000351645  -0.223983411  -0.000854503   0.000009101   0.000000926   0.000118365  -0.000000622
                        -0.395453373  -0.000841515  -0.067887489  -0.000258993   0.000002053   0.000000209  -0.000070986   0.000000373

   53    2.1  1.5 -1.5  -0.000000000  -0.000000002   0.000000000  -0.000000003  -0.000000006   0.000000058  -0.000000000  -0.000000009
                        -0.000219373   0.103089998  -0.001386545   0.363442928  -0.000018451   0.000181270   0.000000537   0.000102175

   54    3.1  1.5 -1.5   0.000316343  -0.148658880  -0.000346769   0.090895420  -0.000007370   0.000072405  -0.000000009  -0.000001637
                         0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000003  -0.000000026   0.000000000   0.000000000

   55    4.1  1.5 -1.5  -0.112337448  -0.000239051  -0.132903223  -0.000507030   0.000114140   0.000011618  -0.000108879   0.000000572
                         0.268832342   0.000572069  -0.040281847  -0.000153676   0.000025797   0.000002626   0.000065297  -0.000000343

   56    5.1  1.5 -1.5   0.401492828   0.000854367   0.066941935   0.000255385  -0.000009657  -0.000000983  -0.000050011   0.000000263
                         0.167772522   0.000357016  -0.220863711  -0.000842601   0.000042722   0.000004349  -0.000083394   0.000000438

   57    6.1  1.5 -1.5  -0.000260313   0.122329004  -0.001354054   0.354926379   0.000015890  -0.000156106  -0.000000211  -0.000040158
                         0.000000000   0.000000002  -0.000000000   0.000000003  -0.000000005   0.000000050  -0.000000000  -0.000000007

   58    7.1  1.5 -1.5   0.260213216   0.000553727  -0.041908464  -0.000159882  -0.000017255  -0.000001756  -0.000108687   0.000000571
                         0.108735760   0.000231387   0.138269974   0.000527504   0.000076336   0.000007770  -0.000181222   0.000000952

   59    8.1  1.5 -1.5  -0.000242029  -0.000000515   0.000002403   0.000000009   0.048377121   0.004924231   0.291924881  -0.001534262
                        -0.000101144  -0.000000215  -0.000007934  -0.000000030  -0.214029614  -0.021785737   0.486738689  -0.002558140

   60    9.1  1.5 -1.5  -0.000000152   0.000071408  -0.000000773   0.000202578   0.038985109  -0.383001401  -0.000516456  -0.098266377
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000012403   0.000121853  -0.000000088  -0.000016725

   61   10.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000014309  -0.000140574   0.000000120   0.000022789
                         0.000000126  -0.000059148   0.000000797  -0.000208800   0.045101061  -0.443086352  -0.001309993  -0.249253035

   62   11.1  1.5 -1.5   0.000000179  -0.000084285  -0.000000212   0.000055553  -0.017396167   0.170905159  -0.000028159  -0.005357804
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000006166  -0.000060573   0.000000003   0.000000485

   63   12.1  1.5 -1.5   0.000015980   0.000000034   0.000125054   0.000000477  -0.258043038  -0.026265794   0.110759081  -0.000582114
                        -0.000038243  -0.000000081   0.000037903   0.000000145  -0.058316045  -0.005935898  -0.066424405   0.000349105

   64   13.1  1.5 -1.5  -0.000129228  -0.000000275  -0.000045162  -0.000000172   0.000225597   0.000022963  -0.021813819   0.000114646
                        -0.000054001  -0.000000115   0.000149003   0.000000568  -0.000999103  -0.000101697  -0.036356459   0.000191078

   65   14.1  1.5 -1.5   0.000113491   0.000000242  -0.000081649  -0.000000311  -0.102739769  -0.010457719   0.375452124  -0.001973254
                        -0.000271579  -0.000000578  -0.000024747  -0.000000094  -0.023223350  -0.002363868  -0.225181192   0.001183479

   66   15.1  1.5 -1.5  -0.000000000   0.000000050  -0.000000001   0.000000248  -0.000000004   0.000000044   0.000000000   0.000000008
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   67   16.1  1.5 -1.5  -0.000000157  -0.000000000  -0.000000015  -0.000000000   0.000000012   0.000000001  -0.000000010   0.000000000
                         0.000000376   0.000000001  -0.000000004  -0.000000000   0.000000003   0.000000000   0.000000006  -0.000000000

   68   17.1  1.5 -1.5   0.000000464   0.000000001  -0.000000101  -0.000000000   0.000000008   0.000000001   0.000000045  -0.000000000
                         0.000000194   0.000000000   0.000000334   0.000000001  -0.000000034  -0.000000003   0.000000075  -0.000000000

   69    1.1  0.5  0.5  -0.000000003   0.000001644   0.000000001  -0.000000309  -0.000006385   0.000062730  -0.000000314  -0.000059794
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000002  -0.000000023  -0.000000000  -0.000000001

   70    2.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000014  -0.000000000  -0.000000003
                         0.000000002  -0.000000796   0.000000005  -0.000001429  -0.000003951   0.000038812   0.000000389   0.000074005

   71    3.1  0.5  0.5  -0.000000059  -0.000000000  -0.000000145  -0.000000001   0.000003518   0.000000358  -0.000017873   0.000000094
                        -0.000000025  -0.000000000   0.000000480   0.000000002  -0.000015565  -0.000001584  -0.000029799   0.000000157

   72    4.1  0.5  0.5   0.000000166   0.000000000  -0.000001153  -0.000000004   0.000056430   0.000005744   0.000016500  -0.000000087
                        -0.000000397  -0.000000001  -0.000000350  -0.000000001   0.000012752   0.000001298  -0.000009896   0.000000052

   73    5.1  0.5  0.5   0.000000104   0.000000000   0.000000564   0.000000002  -0.000021790  -0.000002218   0.000031898  -0.000000168
                        -0.000000249  -0.000000001   0.000000171   0.000000001  -0.000004925  -0.000000501  -0.000019131   0.000000101

   74    6.1  0.5  0.5   0.000000200   0.000000000   0.000000081   0.000000000   0.000004716   0.000000480  -0.000001224   0.000000006
                         0.000000084   0.000000000  -0.000000268  -0.000000001  -0.000020866  -0.000002124  -0.000002039   0.000000011

   75    7.1  0.5  0.5  -0.000000001   0.000000283   0.000000003  -0.000000684   0.000005864  -0.000057605   0.000000025   0.000004795
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000002   0.000000021   0.000000000   0.000000001

   76    1.1  0.5 -0.5  -0.000000634  -0.000000001   0.000000295   0.000000001  -0.000061187  -0.000006228   0.000051279  -0.000000270
                         0.000001517   0.000000003   0.000000089   0.000000000  -0.000013828  -0.000001408  -0.000030754   0.000000162

   77    2.1  0.5 -0.5  -0.000000735  -0.000000002   0.000000414   0.000000002  -0.000008555  -0.000000871   0.000038065  -0.000000200
                        -0.000000307  -0.000000001  -0.000001368  -0.000000005   0.000037858   0.000003853   0.000063465  -0.000000334

   78    3.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000007  -0.000000000  -0.000000002
                        -0.000000000   0.000000064   0.000000002  -0.000000501  -0.000001624   0.000015958   0.000000183   0.000034748

   79    4.1  0.5 -0.5  -0.000000001   0.000000430   0.000000005  -0.000001205  -0.000005889   0.000057853   0.000000101   0.000019240
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000002  -0.000000020   0.000000000   0.000000000

   80    5.1  0.5 -0.5  -0.000000001   0.000000270  -0.000000002   0.000000589   0.000002274  -0.000022340   0.000000195   0.000037195
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000008   0.000000000   0.000000001

   81    6.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000008  -0.000000000  -0.000000001
                         0.000000000  -0.000000217  -0.000000001   0.000000280  -0.000002177   0.000021392   0.000000013   0.000002379

   82    7.1  0.5 -0.5  -0.000000109  -0.000000000   0.000000654   0.000000002   0.000056188   0.000005719  -0.000004112   0.000000022
                         0.000000261   0.000000001   0.000000198   0.000000001   0.000012698   0.000001293   0.000002467  -0.000000013


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.000000519   0.000064902   0.000021177  -0.000001287   0.000000124  -0.000230490   0.000005644  -0.000106719
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000015586  -0.000000125   0.000002039   0.000033554   0.000011399   0.000000006   0.000035528   0.000001879
                        -0.000103987   0.000000831  -0.000003308  -0.000054433   0.000030216   0.000000016  -0.000071577  -0.000003786

    3    3.1  1.5  1.5  -0.000075442   0.000000603  -0.000008739  -0.000143805   0.000016781   0.000000009  -0.000175371  -0.000009275
                        -0.000011310   0.000000090  -0.000005387  -0.000088648  -0.000006330  -0.000000003  -0.000087067  -0.000004605

    4    4.1  1.5  1.5   0.000000824   0.000103122   0.000106520  -0.000006473  -0.000000020   0.000037773   0.000004375  -0.000082723
                         0.000000000   0.000000002  -0.000000001   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000005

    5    5.1  1.5  1.5   0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000
                        -0.000000088  -0.000010973   0.000037418  -0.000002274   0.000000136  -0.000253869  -0.000001118   0.000021133

    6    6.1  1.5  1.5  -0.000180121   0.000001439   0.000000011   0.000000175  -0.000011003  -0.000000006  -0.000086729  -0.000004587
                        -0.000027001   0.000000216   0.000000007   0.000000110   0.000004150   0.000000002  -0.000043041  -0.000002276

    7    7.1  1.5  1.5   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000003  -0.000000000   0.000000005
                         0.000000080   0.000010051  -0.000022510   0.000001368  -0.000000016   0.000030012  -0.000004780   0.000090382

    8    8.1  1.5  1.5  -0.000000012  -0.000001517   0.000000680  -0.000000041   0.000000003  -0.000005519  -0.000000718   0.000013567
                        -0.000063638  -0.007964282   0.004160877  -0.000252842  -0.000127642   0.237627662  -0.011194310   0.211658463

    9    9.1  1.5  1.5  -0.438202372   0.003501430   0.000317963   0.005232536  -0.027363718  -0.000014698   0.200178098   0.010587130
                        -0.065689127   0.000524885   0.000196206   0.003228847   0.010320959   0.000005544   0.099341398   0.005254023

   10   10.1  1.5  1.5  -0.038172718   0.000305017  -0.004966788  -0.081735589  -0.027809106  -0.000014938   0.085032691   0.004497256
                         0.254680696  -0.002035011   0.008057403   0.132596062  -0.073714939  -0.000039596  -0.171311745  -0.009060430

   11   11.1  1.5  1.5  -0.191658778   0.001531438  -0.021393169  -0.352055122   0.040702972   0.000021864   0.420441497   0.022236543
                        -0.028733190   0.000229591  -0.013187692  -0.217022286  -0.015354155  -0.000008248   0.208736957   0.011039796

   12   12.1  1.5  1.5  -0.002355080  -0.294737172  -0.255772165   0.015542388  -0.000088613   0.164967788   0.015341601  -0.290074130
                        -0.000000030  -0.000003700   0.000001099  -0.000000067  -0.000000002   0.000003063   0.000000614  -0.000011615

   13   13.1  1.5  1.5  -0.000000012  -0.000001446  -0.000000206   0.000000013   0.000000003  -0.000005550   0.000000240  -0.000004532
                         0.000284021   0.035545153  -0.106135066   0.006449460  -0.000309927   0.576983015   0.003214904  -0.060786387

   14   14.1  1.5  1.5   0.000249825   0.031265498  -0.068134084   0.004140272   0.000292534  -0.544602494  -0.007515331   0.142097497
                        -0.000000013  -0.000001575   0.000000528  -0.000000032   0.000000002  -0.000003590   0.000000550  -0.000010395

   15   15.1  1.5  1.5   0.000000052  -0.000000000  -0.000000001  -0.000000023   0.000000005   0.000000000  -0.000000040  -0.000000002
                         0.000000008  -0.000000000  -0.000000001  -0.000000014  -0.000000002  -0.000000000  -0.000000020  -0.000000001

   16   16.1  1.5  1.5   0.000000000   0.000000014   0.000000008  -0.000000001  -0.000000000   0.000000039   0.000000000  -0.000000008
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   17   17.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000006   0.000000015  -0.000000001  -0.000000000   0.000000055   0.000000002  -0.000000037

   18    1.1  1.5  0.5  -0.000086930   0.000000695  -0.000005491  -0.000090367   0.000078358   0.000000042   0.000052360   0.000002769
                        -0.000013030   0.000000104  -0.000003385  -0.000055705  -0.000029559  -0.000000016   0.000025980   0.000001374

   19    2.1  1.5  0.5  -0.000000000  -0.000000002   0.000000001  -0.000000000  -0.000000000   0.000000003   0.000000000  -0.000000005
                         0.000000757   0.000094712  -0.000035674   0.000002168   0.000000068  -0.000126529   0.000003653  -0.000069077

   20    3.1  1.5  0.5  -0.000001486  -0.000185911  -0.000072173   0.000004386   0.000000056  -0.000104293  -0.000002087   0.000039456
                        -0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000003  -0.000000000   0.000000003

   21    4.1  1.5  0.5   0.000110488  -0.000000883  -0.000010985  -0.000180775   0.000041699   0.000000022  -0.000004561  -0.000000241
                         0.000016565  -0.000000132  -0.000006772  -0.000111439  -0.000015730  -0.000000008  -0.000002263  -0.000000120

   22    5.1  1.5  0.5   0.000021920  -0.000000175   0.000003418   0.000056244  -0.000017748  -0.000000010  -0.000087558  -0.000004631
                        -0.000146223   0.000001168  -0.000005544  -0.000091240  -0.000047050  -0.000000025   0.000176395   0.000009329

   23    6.1  1.5  0.5   0.000000367   0.000045949   0.000199971  -0.000012152   0.000000047  -0.000088309  -0.000009108   0.000172218
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000002   0.000000000  -0.000000005

   24    7.1  1.5  0.5  -0.000018060   0.000000144  -0.000002584  -0.000042531   0.000005843   0.000000003  -0.000053036  -0.000002805
                         0.000120449  -0.000000962   0.000004193   0.000068994   0.000015488   0.000000008   0.000106854   0.000005651

   25    8.1  1.5  0.5   0.012665754  -0.000101205   0.001490467   0.024527763   0.008670750   0.000004658  -0.210922533  -0.011155388
                        -0.084478794   0.000675023  -0.002417842  -0.039789042   0.022982670   0.000012345   0.424934116   0.022474151

   26    9.1  1.5  0.5   0.000953109   0.119281137   0.491821569  -0.029886292   0.000114044  -0.212313478   0.021619854  -0.408781338
                         0.000000008   0.000000956   0.000000715  -0.000000043   0.000000002  -0.000004339  -0.000000694   0.000013132

   27   10.1  1.5  0.5   0.000000031   0.000003841  -0.000003458   0.000000210   0.000000004  -0.000006762   0.000000692  -0.000013077
                        -0.001849119  -0.231416375   0.086692129  -0.005267980  -0.000165950   0.308945789   0.008754743  -0.165531904

   28   11.1  1.5  0.5  -0.003621754  -0.453260778  -0.168731858   0.010253250   0.000139232  -0.259204681   0.005313696  -0.100469687
                        -0.000000040  -0.000005063  -0.000000385   0.000000023   0.000000004  -0.000007987   0.000000307  -0.000005810

   29   12.1  1.5  0.5  -0.148492419   0.001186520   0.029918930   0.492358686  -0.175210599  -0.000094115   0.044880025   0.002373640
                        -0.022265164   0.000177909   0.018443448   0.303513243   0.066094549   0.000035503   0.022269964   0.001177826

   30   13.1  1.5  0.5  -0.068020163   0.000543511  -0.010333867  -0.170058519   0.044839950   0.000024086  -0.121635336  -0.006433117
                         0.453708546  -0.003625332   0.016763744   0.275871320   0.118867860   0.000063850   0.245038622   0.012959738

   31   14.1  1.5  0.5  -0.308005811   0.002461102  -0.000194130  -0.003194685   0.126707791   0.000068061  -0.116815936  -0.006178226
                        -0.046169584   0.000368915  -0.000119390  -0.001964728  -0.047798598  -0.000025675  -0.057973176  -0.003066117

   32   15.1  1.5  0.5  -0.000000000  -0.000000044  -0.000000081   0.000000005   0.000000000  -0.000000000   0.000000003  -0.000000050
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   33   16.1  1.5  0.5   0.000000025  -0.000000000  -0.000000001  -0.000000017   0.000000006   0.000000000   0.000000006   0.000000000
                         0.000000004  -0.000000000  -0.000000001  -0.000000011  -0.000000002  -0.000000000   0.000000003   0.000000000

   34   17.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000007  -0.000000001  -0.000000000   0.000000015   0.000000001
                        -0.000000002   0.000000000  -0.000000001  -0.000000011  -0.000000002  -0.000000000  -0.000000029  -0.000000002

   35    1.1  1.5 -0.5   0.000000702   0.000087901  -0.000106157   0.000006451   0.000000045  -0.000083748   0.000003091  -0.000058452
                         0.000000000   0.000000004  -0.000000002   0.000000000   0.000000000  -0.000000003   0.000000001  -0.000000012

   36    2.1  1.5 -0.5   0.000014043  -0.000000112   0.000001137   0.000018719   0.000044658   0.000000024  -0.000030720  -0.000001625
                        -0.000093665   0.000000748  -0.000001845  -0.000030368   0.000118386   0.000000064   0.000061870   0.000003272

   37    3.1  1.5 -0.5  -0.000183856   0.000001469   0.000003733   0.000061437  -0.000097581  -0.000000052   0.000035342   0.000001869
                        -0.000027566   0.000000220   0.000002301   0.000037873   0.000036811   0.000000020   0.000017542   0.000000928

   38    4.1  1.5 -0.5  -0.000000893  -0.000111723  -0.000212363   0.000012905   0.000000024  -0.000044567  -0.000000269   0.000005092
                        -0.000000000  -0.000000002  -0.000000001   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000002

   39    5.1  1.5 -0.5   0.000000000   0.000000005  -0.000000001   0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000009
                        -0.000001181  -0.000147856   0.000107182  -0.000006513   0.000000027  -0.000050286  -0.000010415   0.000196931

   40    6.1  1.5 -0.5   0.000045441  -0.000000363  -0.000010344  -0.000170226  -0.000082626  -0.000000044   0.000154254   0.000008158
                         0.000006813  -0.000000054  -0.000006377  -0.000104936   0.000031168   0.000000017   0.000076582   0.000004050

   41    7.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000009
                         0.000000973   0.000121796  -0.000081049   0.000004925  -0.000000009   0.000016554  -0.000006309   0.000119293

   42    8.1  1.5 -0.5   0.000000011   0.000001420  -0.000000355   0.000000022   0.000000001  -0.000001676   0.000001327  -0.000025081
                        -0.000682567  -0.085422994   0.046741620  -0.002840326  -0.000013195   0.024563897  -0.025090439   0.474402063

   43    9.1  1.5 -0.5   0.117962542  -0.000942573  -0.025440762  -0.418664032  -0.198650018  -0.000106705  -0.366140497  -0.019364641
                         0.017686951  -0.000141327  -0.015683051  -0.258086969   0.074934527   0.000040251  -0.181778212  -0.009613987

   44   10.1  1.5 -0.5  -0.034312347   0.000274171  -0.002764239  -0.045489493  -0.109040631  -0.000058571  -0.073616214  -0.003893455
                         0.228858475  -0.001828680   0.004484484   0.073798586  -0.289063386  -0.000155271   0.148261473   0.007841335

   45   11.1  1.5 -0.5  -0.448250414   0.003581719   0.008728103   0.143633384  -0.242522582  -0.000130271  -0.089993502  -0.004759626
                        -0.067207881   0.000537021   0.005380461   0.088543159   0.091486959   0.000049142  -0.044669091  -0.002362484

   46   12.1  1.5 -0.5   0.001199784   0.150152376   0.578392051  -0.035146880  -0.000100588   0.187262499   0.002649800  -0.050101576
                         0.000000004   0.000000556   0.000003449  -0.000000209  -0.000000003   0.000005523   0.000000468  -0.000008848

   47   13.1  1.5 -0.5  -0.000000089  -0.000011133   0.000003333  -0.000000202   0.000000002  -0.000003303   0.000000449  -0.000008482
                         0.003665847   0.458779018  -0.324075432   0.019692940  -0.000068242   0.127044044  -0.014468580   0.273567324

   48   14.1  1.5 -0.5   0.002488599   0.311446961  -0.003750487   0.000227904   0.000072743  -0.135423669  -0.006897213   0.130410321
                         0.000000114   0.000014251  -0.000003962   0.000000241   0.000000003  -0.000004670  -0.000000848   0.000016028

   49   15.1  1.5 -0.5  -0.000000043   0.000000000   0.000000004   0.000000069  -0.000000000  -0.000000000  -0.000000045  -0.000000002
                        -0.000000006   0.000000000   0.000000003   0.000000043   0.000000000   0.000000000  -0.000000022  -0.000000001

   50   16.1  1.5 -0.5  -0.000000000  -0.000000026  -0.000000020   0.000000001   0.000000000  -0.000000006   0.000000000  -0.000000006
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   51   17.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000000002   0.000000013  -0.000000001   0.000000000  -0.000000002   0.000000002  -0.000000033

   52    1.1  1.5 -1.5  -0.000064185   0.000000513   0.000001095   0.000018027   0.000215659   0.000000116   0.000095588   0.000005056
                        -0.000009624   0.000000077   0.000000675   0.000011113  -0.000081345  -0.000000044   0.000047453   0.000002510

   53    2.1  1.5 -1.5  -0.000000000  -0.000000006   0.000000001  -0.000000000  -0.000000000   0.000000002   0.000000000  -0.000000004
                         0.000000840   0.000105149  -0.000063944   0.000003886   0.000000017  -0.000032294  -0.000004226   0.000079910

   54    3.1  1.5 -1.5  -0.000000610  -0.000076285   0.000168933  -0.000010265  -0.000000010   0.000017936   0.000010355  -0.000195795
                        -0.000000000  -0.000000002   0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000006

   55    4.1  1.5 -1.5  -0.000101983   0.000000815   0.000005510   0.000090675  -0.000035343  -0.000000019   0.000074098   0.000003919
                        -0.000015290   0.000000122   0.000003397   0.000055898   0.000013330   0.000000007   0.000036778   0.000001945

   56    5.1  1.5 -1.5   0.000001626  -0.000000013   0.000001193   0.000019635  -0.000089597  -0.000000048  -0.000009397  -0.000000497
                        -0.000010852   0.000000087  -0.000001936  -0.000031853  -0.000237533  -0.000000128   0.000018928   0.000001001

   57    6.1  1.5 -1.5  -0.000001455  -0.000182134  -0.000000207   0.000000013   0.000000006  -0.000011760   0.000005121  -0.000096822
                        -0.000000000  -0.000000007   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000012

   58    7.1  1.5 -1.5  -0.000001491   0.000000012  -0.000000718  -0.000011813   0.000010595   0.000000006  -0.000040193  -0.000002126
                         0.000009940  -0.000000079   0.000001164   0.000019162   0.000028080   0.000000015   0.000080954   0.000004282

   59    8.1  1.5 -1.5   0.001182503  -0.000009449   0.000132716   0.002184035   0.083869608   0.000045051  -0.094127034  -0.004978243
                        -0.007876006   0.000062933  -0.000215210  -0.003541595   0.222334871   0.000119427   0.189576915   0.010026449

   60    9.1  1.5 -1.5  -0.003540554  -0.443098612  -0.006148567   0.000373627   0.000015709  -0.029245431  -0.011819140   0.223472556
                        -0.000000136  -0.000017026   0.000002741  -0.000000167  -0.000000000   0.000000479  -0.000001575   0.000029779

   61   10.1  1.5 -1.5   0.000000122   0.000015260  -0.000003407   0.000000207   0.000000002  -0.000003896   0.000000559  -0.000010566
                        -0.002057743  -0.257525558   0.155763995  -0.009465238  -0.000042320   0.078786031  -0.010115172   0.191254470

   62   11.1  1.5 -1.5  -0.001548553  -0.193800627   0.413571616  -0.025131313  -0.000023368   0.043502667  -0.024826214   0.469406188
                        -0.000000041  -0.000005068   0.000003476  -0.000000211  -0.000000001   0.000001102   0.000000791  -0.000014957

   63   12.1  1.5 -1.5   0.291479195  -0.002329047  -0.013230440  -0.217725763  -0.154351374  -0.000082910   0.259825196   0.013741779
                         0.043702166  -0.000349200  -0.008156058  -0.134219569   0.058223915   0.000031275   0.128972355   0.006821161

   64   13.1  1.5 -1.5  -0.005269470   0.000042105  -0.003384420  -0.055695459   0.203636198   0.000109383   0.027032998   0.001429736
                         0.035152391  -0.000280883   0.005490103   0.090347485   0.539853405   0.000289983  -0.054444485  -0.002879490

   65   14.1  1.5 -1.5  -0.030919603   0.000247061  -0.003524394  -0.057998938   0.509557194   0.000273709  -0.127272416  -0.006731254
                        -0.004637839   0.000037058  -0.002172671  -0.035754393  -0.192206510  -0.000103244  -0.063193598  -0.003342218

   66   15.1  1.5 -1.5   0.000000000   0.000000052   0.000000027  -0.000000002  -0.000000000   0.000000006   0.000000002  -0.000000045
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   67   16.1  1.5 -1.5  -0.000000014   0.000000000   0.000000000   0.000000007  -0.000000037  -0.000000000   0.000000007   0.000000000
                        -0.000000002   0.000000000   0.000000000   0.000000004   0.000000014   0.000000000   0.000000003   0.000000000

   68   17.1  1.5 -1.5  -0.000000001   0.000000000   0.000000000   0.000000008   0.000000019   0.000000000   0.000000017   0.000000001
                         0.000000005  -0.000000000  -0.000000001  -0.000000013   0.000000051   0.000000000  -0.000000033  -0.000000002

   69    1.1  0.5  0.5   0.000000014   0.000001750   0.000007073  -0.000000430   0.000000012  -0.000021603  -0.000647564   0.012243929
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000115   0.000002179

   70    2.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000057   0.000001078
                        -0.000000170  -0.000021242  -0.000030576   0.000001858  -0.000000037   0.000069798  -0.003406677   0.064412362

   71    3.1  0.5  0.5   0.000008771  -0.000000070   0.000000669   0.000011004   0.000002867   0.000000002  -0.020493330  -0.001083863
                        -0.000058514   0.000000468  -0.000001085  -0.000017852   0.000007598   0.000000004   0.041289194   0.002183726

   72    4.1  0.5  0.5  -0.000070601   0.000000564  -0.000001511  -0.000024858   0.000009378   0.000000005   0.053643948   0.002837151
                        -0.000010583   0.000000085  -0.000000931  -0.000015323  -0.000003538  -0.000000002   0.026625856   0.001408203

   73    5.1  0.5  0.5  -0.000019746   0.000000158  -0.000000436  -0.000007183   0.000008723   0.000000005   0.037680063   0.001992844
                        -0.000002960   0.000000024  -0.000000269  -0.000004428  -0.000003291  -0.000000002   0.018708780   0.000989480

   74    6.1  0.5  0.5   0.000003326  -0.000000027  -0.000000563  -0.000009268  -0.000002375  -0.000000001   0.018116055   0.000958132
                        -0.000022185   0.000000177   0.000000914   0.000015035  -0.000006297  -0.000000003  -0.036489018  -0.001929851

   75    7.1  0.5  0.5   0.000000205   0.000025626   0.000003154  -0.000000192   0.000000021  -0.000039814   0.000444857  -0.008411210
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000070  -0.000001323

   76    1.1  0.5 -0.5  -0.000001731   0.000000014   0.000000366   0.000006021   0.000020213   0.000000011  -0.010967883  -0.000580075
                        -0.000000260   0.000000002   0.000000226   0.000003711  -0.000007625  -0.000000004  -0.005442367  -0.000287839

   77    2.1  0.5 -0.5   0.000003150  -0.000000025  -0.000000975  -0.000016045   0.000024635   0.000000013  -0.028642210  -0.001514845
                        -0.000021008   0.000000168   0.000001582   0.000026028   0.000065306   0.000000035   0.057693814   0.003051342

   78    3.1  0.5 -0.5  -0.000000000  -0.000000003   0.000000001  -0.000000000  -0.000000000   0.000000001  -0.000000185   0.000003504
                         0.000000473   0.000059168  -0.000020971   0.000001274   0.000000004  -0.000008121   0.002437912  -0.046095272

   79    4.1  0.5 -0.5  -0.000000570  -0.000071390   0.000029202  -0.000001774  -0.000000005   0.000010024  -0.003167406   0.059888307
                        -0.000000000  -0.000000003   0.000000001  -0.000000000  -0.000000000   0.000000001  -0.000000221   0.000004184

   80    5.1  0.5 -0.5  -0.000000160  -0.000019966   0.000008438  -0.000000513  -0.000000005   0.000009323  -0.002224972   0.042069057
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000153  -0.000002887

   81    6.1  0.5 -0.5  -0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000084   0.000001586
                         0.000000179   0.000022433   0.000017662  -0.000001073  -0.000000004   0.000006730  -0.002154610   0.040738678

   82    7.1  0.5 -0.5  -0.000025343   0.000000203   0.000000163   0.000002685   0.000037252   0.000000020   0.007534527   0.000398490
                        -0.000003800   0.000000030   0.000000101   0.000001655  -0.000014052  -0.000000008   0.003738897   0.000197745


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5  -0.000007742   0.000004387   0.000004103  -0.000048924   0.000000000   0.000088843   0.000000871   0.000000038
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000005240   0.000009247   0.000095700   0.000008026   0.000053624   0.000000000   0.000007947  -0.000183503
                         0.000017382   0.000030674   0.000101714   0.000008530   0.000139805   0.000000000   0.000006746  -0.000155777

    3    3.1  1.5  1.5  -0.000090606  -0.000159896  -0.000058583  -0.000004913   0.000022104   0.000000000   0.000002380  -0.000054968
                         0.000027291   0.000048162   0.000055122   0.000004623  -0.000008479  -0.000000000  -0.000002805   0.000064762

    4    4.1  1.5  1.5   0.000112264  -0.000063615   0.000004119  -0.000049113  -0.000000000   0.000186448   0.000203126   0.000008796
                         0.000000060  -0.000000034  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000863   0.000000037

    5    5.1  1.5  1.5  -0.000000021   0.000000012  -0.000000000   0.000000002   0.000000000  -0.000000001   0.000000149   0.000000006
                         0.000043276  -0.000024523  -0.000010490   0.000125076  -0.000000000   0.000042928  -0.000036642  -0.000001587

    6    6.1  1.5  1.5   0.000079358   0.000140045  -0.000071494  -0.000005996   0.000050016  -0.000000000  -0.000007099   0.000163928
                        -0.000023911  -0.000042197   0.000067270   0.000005642  -0.000019188  -0.000000000   0.000008362  -0.000193106

    7    7.1  1.5  1.5  -0.000000019   0.000000011   0.000000000  -0.000000005  -0.000000000   0.000000001  -0.000001220  -0.000000053
                         0.000043708  -0.000024767   0.000017848  -0.000212812  -0.000000000  -0.000078265   0.000288650   0.000012500

    8    8.1  1.5  1.5  -0.000061364   0.000034773   0.000000559  -0.000006666  -0.000000000   0.000000970  -0.001633261  -0.000070739
                         0.140591152  -0.079667158   0.024947471  -0.297463952   0.000000000  -0.112600675   0.385963259   0.016713965

    9    9.1  1.5  1.5  -0.192167116  -0.339123385   0.168174923   0.014104361  -0.118066562  -0.000000000   0.011752515  -0.271392377
                         0.057901276   0.102180212  -0.158237041  -0.013270899   0.045294814   0.000000000  -0.013844455   0.319699599

   10   10.1  1.5  1.5   0.012398643   0.021880277   0.227878489   0.019111532   0.127318858   0.000000000   0.013102861  -0.302574528
                         0.041128520   0.072580799   0.242197769   0.020312450   0.331936176   0.000000000   0.011123061  -0.256856837

   11   11.1  1.5  1.5   0.213041606   0.375961258   0.141833584   0.011895187  -0.054203064  -0.000000000  -0.003739304   0.086349050
                        -0.064169219  -0.113241450  -0.133455520  -0.011192542   0.020791694  -0.000000000   0.004405605  -0.101735331

   12   12.1  1.5  1.5   0.232416262  -0.131700628   0.013077345  -0.155929186  -0.000000000   0.492303697   0.300907288   0.013030654
                         0.000128249  -0.000072673  -0.000000044   0.000000523   0.000000000   0.000000634   0.001276005   0.000055265

   13   13.1  1.5  1.5  -0.000021275   0.000012056  -0.000000891   0.000010619  -0.000000000  -0.000002006   0.001190458   0.000051560
                         0.039928804  -0.022625992  -0.042475850   0.506465532  -0.000000000   0.180278125  -0.283612267  -0.012281701

   14   14.1  1.5  1.5   0.135140266  -0.076578367  -0.004352652   0.051899327  -0.000000000   0.005530543   0.147052307   0.006368034
                         0.000060160  -0.000034090  -0.000000560   0.000006676   0.000000000   0.000002857   0.000622064   0.000026942

   15   15.1  1.5  1.5  -0.000000002  -0.000000003   0.000000006   0.000000001   0.000000014  -0.000000000   0.000000002  -0.000000054
                         0.000000000   0.000000001  -0.000000006  -0.000000000  -0.000000005   0.000000000  -0.000000003   0.000000064

   16   16.1  1.5  1.5   0.000000003  -0.000000002  -0.000000001   0.000000015   0.000000000   0.000000014   0.000000012   0.000000001
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   17   17.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000003   0.000000002  -0.000000001   0.000000016   0.000000000   0.000000036  -0.000000041  -0.000000002

   18    1.1  1.5  0.5  -0.000049355  -0.000087098   0.000081871   0.000006866  -0.000209315  -0.000000000   0.000000895  -0.000020675
                         0.000014872   0.000026246  -0.000077032  -0.000006460   0.000080286   0.000000000  -0.000001054   0.000024343

   19    2.1  1.5  0.5   0.000000070  -0.000000040   0.000000000  -0.000000001   0.000000000   0.000000001  -0.000000178  -0.000000008
                        -0.000143969   0.000081581   0.000007969  -0.000095019   0.000000000  -0.000092423   0.000043824   0.000001898

   20    3.1  1.5  0.5  -0.000028740   0.000016286  -0.000009150   0.000109098  -0.000000000  -0.000049971   0.000229536   0.000009940
                        -0.000000016   0.000000009   0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000970   0.000000042

   21    4.1  1.5  0.5  -0.000005775  -0.000010192   0.000068746   0.000005766   0.000159698  -0.000000000  -0.000004826   0.000111440
                         0.000001739   0.000003068  -0.000064683  -0.000005425  -0.000061252   0.000000000   0.000005685  -0.000131280

   22    5.1  1.5  0.5  -0.000017785  -0.000031387  -0.000103673  -0.000008695  -0.000012205   0.000000000  -0.000003889   0.000089794
                        -0.000059016  -0.000104148  -0.000110189  -0.000009241  -0.000031807   0.000000000  -0.000003301   0.000076230

   23    6.1  1.5  0.5   0.000106828  -0.000060535   0.000001475  -0.000017583   0.000000000  -0.000064385   0.000101870   0.000004411
                         0.000000048  -0.000000027  -0.000000000   0.000000002   0.000000000   0.000000000   0.000000429   0.000000019

   24    7.1  1.5  0.5  -0.000017820  -0.000031447   0.000052745   0.000004424   0.000014407   0.000000000  -0.000000005   0.000000126
                        -0.000059140  -0.000104365   0.000056057   0.000004701   0.000037573  -0.000000000  -0.000000005   0.000000117

   25    8.1  1.5  0.5  -0.057429409  -0.101347493  -0.009796621  -0.000821615   0.015781569   0.000000000  -0.003107220   0.071752697
                        -0.190589481  -0.336339282  -0.010414367  -0.000873424   0.041145442   0.000000000  -0.002638230   0.060922744

   26    9.1  1.5  0.5  -0.255185312   0.144602902  -0.003820279   0.045551519  -0.000000000   0.150693119  -0.162269095  -0.007026990
                        -0.000114651   0.000064968   0.000000386  -0.000004602  -0.000000000  -0.000000128  -0.000682902  -0.000029577

   27   10.1  1.5  0.5   0.000166641  -0.000094429   0.000000250  -0.000002984   0.000000000   0.000001658  -0.000295207  -0.000012786
                        -0.342027806   0.193812931   0.018917259  -0.225562050   0.000000000  -0.219569744   0.072527319   0.003140763

   28   11.1  1.5  0.5   0.064611957  -0.036612908   0.021684631  -0.258559122  -0.000000000   0.121346116  -0.380690022  -0.016485610
                         0.000036852  -0.000020883  -0.000000353   0.000004206   0.000000000  -0.000000538  -0.001608808  -0.000069680

   29   12.1  1.5  0.5  -0.064301493  -0.113474878   0.232945068   0.019536452   0.121659980   0.000000000  -0.006498118   0.150056357
                         0.019372577   0.034187399  -0.219176151  -0.018381692  -0.046659593  -0.000000000   0.007655329  -0.176778760

   30   13.1  1.5  0.5  -0.016548196  -0.029203125  -0.277075235  -0.023237526  -0.042164581  -0.000000000  -0.005611032   0.129571353
                        -0.054900207  -0.096884130  -0.294486266  -0.024697741  -0.109914764  -0.000000000  -0.004763089   0.109990585

   31   14.1  1.5  0.5   0.099643192   0.175843491  -0.102764835  -0.008618600   0.615582894   0.000000000  -0.004831874   0.111578978
                        -0.030023419  -0.052983276   0.096692786   0.008109354  -0.236113517  -0.000000000   0.005691437  -0.131428073

   32   15.1  1.5  0.5  -0.000000004   0.000000002  -0.000000002   0.000000027   0.000000000   0.000000015   0.000000000   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   33   16.1  1.5  0.5   0.000000002   0.000000004   0.000000006   0.000000001   0.000000008   0.000000000  -0.000000000   0.000000008
                        -0.000000001  -0.000000001  -0.000000006  -0.000000000  -0.000000003   0.000000000   0.000000000  -0.000000009

   34   17.1  1.5  0.5  -0.000000005  -0.000000010   0.000000012   0.000000001  -0.000000002   0.000000000   0.000000001  -0.000000026
                        -0.000000018  -0.000000032   0.000000013   0.000000001  -0.000000006   0.000000000   0.000000001  -0.000000022

   35    1.1  1.5 -0.5   0.000090967  -0.000051547   0.000009428  -0.000112413   0.000000000  -0.000224184  -0.000031938  -0.000001383
                         0.000000053  -0.000000030  -0.000000000   0.000000002  -0.000000000  -0.000000007  -0.000000128  -0.000000006

   36    2.1  1.5 -0.5   0.000023531   0.000041526   0.000065112   0.000005461  -0.000033097   0.000000000  -0.000001447   0.000033405
                         0.000078114   0.000137851   0.000069202   0.000005804  -0.000086294  -0.000000000  -0.000001228   0.000028367

   37    3.1  1.5 -0.5  -0.000015593  -0.000027518   0.000079457   0.000006664   0.000046657  -0.000000000   0.000006433  -0.000148549
                         0.000004699   0.000008292  -0.000074760  -0.000006270  -0.000017894   0.000000000  -0.000007578   0.000174989

   38    4.1  1.5 -0.5   0.000010644  -0.000006031   0.000007916  -0.000094392   0.000000000   0.000171042   0.000172200   0.000007457
                         0.000000003  -0.000000002  -0.000000000   0.000000002   0.000000000   0.000000003   0.000000730   0.000000032

   39    5.1  1.5 -0.5   0.000000066  -0.000000037   0.000000000  -0.000000005   0.000000000  -0.000000006   0.000000495   0.000000021
                        -0.000108774   0.000061638   0.000012689  -0.000151293   0.000000000   0.000034068  -0.000117787  -0.000005101

   40    6.1  1.5 -0.5   0.000057963   0.000102289  -0.000012807  -0.000001074   0.000060116   0.000000000   0.000002855  -0.000065929
                        -0.000017458  -0.000030809   0.000012047   0.000001010  -0.000023056  -0.000000000  -0.000003363   0.000077660

   41    7.1  1.5 -0.5   0.000000062  -0.000000035  -0.000000000   0.000000000  -0.000000000  -0.000000003  -0.000000007  -0.000000000
                        -0.000109000   0.000061766  -0.000006455   0.000076970  -0.000000000  -0.000040240  -0.000000172  -0.000000007

   42    8.1  1.5 -0.5   0.000200049  -0.000113360   0.000000155  -0.000001843   0.000000000   0.000001069   0.000389065   0.000016851
                        -0.351276796   0.199053948   0.001199133  -0.014298000   0.000000000  -0.044068189  -0.094126930  -0.004076124

   43    9.1  1.5 -0.5  -0.138458888  -0.244342777   0.033177913   0.002782539  -0.140700010  -0.000000000  -0.004547747   0.105017851
                         0.041702995   0.073594593  -0.031211649  -0.002617634   0.053962238   0.000000000   0.005357001  -0.123705199

   44   10.1  1.5 -0.5   0.055902043   0.098652102   0.154568292   0.012963211  -0.078628237  -0.000000000  -0.002394067   0.055284396
                         0.185575922   0.327491696   0.164276844   0.013777440  -0.205008470  -0.000000000  -0.002032977   0.046946083

   45   11.1  1.5 -0.5   0.035055991   0.061864415  -0.188309150  -0.015792963  -0.113299290  -0.000000000  -0.010668983   0.246371149
                        -0.010563286  -0.018641364   0.177179240   0.014859528   0.043452858   0.000000000   0.012567935  -0.290221877

   46   12.1  1.5 -0.5   0.118512962  -0.067156366   0.026824607  -0.319846197  -0.000000000   0.130300684   0.231876393   0.010041303
                         0.000062285  -0.000035294  -0.000000487   0.000005805   0.000000000  -0.000000373   0.000989238   0.000042845

   47   13.1  1.5 -0.5   0.000066721  -0.000037808   0.000000893  -0.000010642  -0.000000000  -0.000008596   0.000720798   0.000031219
                        -0.101189687   0.057339987   0.033911075  -0.404342487  -0.000000000   0.117724709  -0.169959245  -0.007360008

   48   14.1  1.5 -0.5  -0.183652254   0.104068093  -0.011833929   0.141103176  -0.000000000   0.659311680   0.172402685   0.007465820
                        -0.000101912   0.000057750   0.000000082  -0.000000977   0.000000000   0.000018976   0.000721814   0.000031263

   49   15.1  1.5 -0.5  -0.000000002  -0.000000004   0.000000020   0.000000002  -0.000000014   0.000000000   0.000000000  -0.000000000
                         0.000000001   0.000000001  -0.000000019  -0.000000002   0.000000005  -0.000000000  -0.000000000   0.000000000

   50   16.1  1.5 -0.5  -0.000000004   0.000000002   0.000000001  -0.000000008  -0.000000000   0.000000009   0.000000012   0.000000001
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   51   17.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000033   0.000000019  -0.000000001   0.000000018   0.000000000   0.000000006   0.000000035   0.000000001

   52    1.1  1.5 -1.5   0.000004201   0.000007414   0.000035631   0.000002988   0.000082952   0.000000000  -0.000000025   0.000000567
                        -0.000001263  -0.000002230  -0.000033526  -0.000002812  -0.000031814  -0.000000000   0.000000029  -0.000000662

   53    2.1  1.5 -1.5   0.000000022  -0.000000013   0.000000000  -0.000000004   0.000000000  -0.000000005   0.000001017   0.000000044
                        -0.000032038   0.000018155   0.000011713  -0.000139657  -0.000000000   0.000149736  -0.000240705  -0.000010424

   54    3.1  1.5 -1.5  -0.000166992   0.000094627   0.000006746  -0.000080439   0.000000000  -0.000023675   0.000084944   0.000003678
                        -0.000000077   0.000000044   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000366   0.000000016

   55    4.1  1.5 -1.5  -0.000060911  -0.000107491   0.000035768   0.000003000   0.000174084   0.000000000  -0.000005693   0.000131453
                         0.000018352   0.000032386  -0.000033655  -0.000002823  -0.000066766   0.000000000   0.000006706  -0.000154857

   56    5.1  1.5 -1.5   0.000007073   0.000012482   0.000085709   0.000007188  -0.000015373  -0.000000000  -0.000001210   0.000027930
                         0.000023481   0.000041437   0.000091093   0.000007640  -0.000040081  -0.000000000  -0.000001027   0.000023718

   57    6.1  1.5 -1.5   0.000146264  -0.000082882   0.000008233  -0.000098166  -0.000000000  -0.000053571  -0.000253300  -0.000010969
                         0.000000081  -0.000000046  -0.000000000   0.000000001   0.000000000  -0.000000005  -0.000001072  -0.000000046

   58    7.1  1.5 -1.5   0.000007143   0.000012605  -0.000145830  -0.000012230   0.000028027   0.000000000   0.000009529  -0.000220054
                         0.000023715   0.000041851  -0.000154992  -0.000012999   0.000073075  -0.000000000   0.000008089  -0.000186805

   59    8.1  1.5 -1.5   0.022974765   0.040544295  -0.203837686  -0.017095297   0.040322573   0.000000000   0.012742084  -0.294243379
                         0.076282484   0.134618111  -0.216644871  -0.018169400   0.105133259   0.000000000   0.010816696  -0.249782182

   60    9.1  1.5 -1.5  -0.354182760   0.200700638  -0.019366201   0.230915062  -0.000000000   0.126456842   0.419354872   0.018159974
                        -0.000195766   0.000110933   0.000000193  -0.000002296   0.000000000   0.000012136   0.001774183   0.000076842

   61   10.1  1.5 -1.5   0.000052607  -0.000029810   0.000000717  -0.000008551  -0.000000000  -0.000011284   0.001677703   0.000072664
                        -0.075807098   0.042956729   0.027889896  -0.332548290  -0.000000000   0.355516127  -0.396892889  -0.017187268

   62   11.1  1.5 -1.5   0.392645464  -0.222495852  -0.016333048   0.194748919  -0.000000000   0.058053998  -0.133438770  -0.005778506
                         0.000180386  -0.000102217  -0.000000036   0.000000425   0.000000000   0.000003089  -0.000575125  -0.000024909

   63   12.1  1.5 -1.5  -0.126100929  -0.222534296   0.113562173   0.009524142   0.459656547   0.000000000  -0.008432898   0.194734846
                         0.037994952   0.067050893  -0.106852908  -0.008961455  -0.176291773  -0.000000000   0.009934145  -0.229401751

   64   13.1  1.5 -1.5   0.006527071   0.011518528   0.347056911   0.029106694  -0.064558454  -0.000000000  -0.009362824   0.216208661
                         0.021664095   0.038231313   0.368861539   0.030935387  -0.168322335  -0.000000000  -0.007948608   0.183551491

   65   14.1  1.5 -1.5  -0.073324730  -0.129398469  -0.037793235  -0.003169613   0.005162764   0.000000000  -0.004121177   0.095167369
                         0.022084644   0.038973469   0.035569812   0.002983141  -0.001983124   0.000000000   0.004854738  -0.112106824

   66   15.1  1.5 -1.5  -0.000000003   0.000000002  -0.000000001   0.000000009  -0.000000000  -0.000000015   0.000000083   0.000000004
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   67   16.1  1.5 -1.5  -0.000000002  -0.000000003  -0.000000011  -0.000000001   0.000000013  -0.000000000  -0.000000000   0.000000007
                         0.000000001   0.000000001   0.000000010   0.000000001  -0.000000005  -0.000000000   0.000000000  -0.000000009

   68   17.1  1.5 -1.5  -0.000000000  -0.000000001   0.000000011   0.000000001  -0.000000013   0.000000000  -0.000000001   0.000000031
                        -0.000000002  -0.000000003   0.000000011   0.000000001  -0.000000033   0.000000000  -0.000000001   0.000000027

   69    1.1  0.5  0.5  -0.028755184   0.016294367  -0.006286952   0.074963174   0.000000000  -0.028983770  -0.049344855  -0.002136857
                        -0.000015151   0.000008585   0.000000115  -0.000001371  -0.000000000   0.000000146  -0.000208601  -0.000009035

   70    2.1  0.5  0.5  -0.000004733   0.000002682   0.000000088  -0.000001047   0.000000000   0.000000120  -0.000116862  -0.000005061
                         0.013781376  -0.007809333   0.001962157  -0.023396003   0.000000000  -0.052808360   0.027467733   0.001189478

   71    3.1  0.5  0.5  -0.003852994  -0.006799501   0.015363308   0.001288478  -0.023661562  -0.000000000   0.000863031  -0.019929336
                        -0.012783305  -0.022559102   0.016327825   0.001369369  -0.061687606  -0.000000000   0.000732695  -0.016919594

   72    4.1  0.5  0.5  -0.026555226  -0.046862848  -0.013727300  -0.001151270  -0.023487737  -0.000000000  -0.000411986   0.009513696
                         0.008002133   0.014121617   0.012915050   0.001083149   0.009010682   0.000000000   0.000485246  -0.011205427

   73    5.1  0.5  0.5   0.031295768   0.055228631  -0.023028480  -0.001931334  -0.022253212  -0.000000000  -0.001514146   0.034965078
                        -0.009427102  -0.016636305   0.021666715   0.001817127   0.008534999  -0.000000000   0.001783692  -0.041189467

   74    6.1  0.5  0.5  -0.005649174  -0.009969276  -0.040213457  -0.003372590  -0.011551472  -0.000000000  -0.000708827   0.016368411
                        -0.018754313  -0.033096329  -0.042739338  -0.003584429  -0.030117747  -0.000000000  -0.000601751   0.013895793

   75    7.1  0.5  0.5   0.042023314  -0.023812864  -0.003746117   0.044667245  -0.000000000   0.057645391   0.011304424   0.000489533
                         0.000021458  -0.000012160   0.000000081  -0.000000964   0.000000000   0.000000299   0.000049339   0.000002137

   76    1.1  0.5 -0.5   0.015601673   0.027532766  -0.054595940  -0.004578809  -0.027061775  -0.000000000   0.001382906  -0.031934456
                        -0.004700452  -0.008295036   0.051368869   0.004308164   0.010378789   0.000000000  -0.001629051   0.037618463

   77    2.1  0.5 -0.5   0.002251394   0.003973106  -0.016031771  -0.001344540   0.018910489   0.000000000   0.000906830  -0.020940740
                         0.007477761   0.013196241  -0.017039814  -0.001429082   0.049306351   0.000000000   0.000769768  -0.017775697

   78    3.1  0.5 -0.5  -0.000015214   0.000008621  -0.000000002   0.000000022   0.000000000   0.000002470   0.000109368   0.000004737
                         0.023561538  -0.013351343   0.001880252  -0.022419391   0.000000000  -0.066069889  -0.026142669  -0.001132096

   79    4.1  0.5 -0.5  -0.048944313   0.027734706   0.001580707  -0.018847739  -0.000000000   0.025156832  -0.014699260  -0.000636545
                        -0.000028506   0.000016153  -0.000000081   0.000000966   0.000000000   0.000002316  -0.000061098  -0.000002646

   80    5.1  0.5 -0.5   0.057679871  -0.032684784   0.002651792  -0.031618941  -0.000000000   0.023833835  -0.054028478  -0.002339679
                         0.000027609  -0.000015645  -0.000000085   0.000001009   0.000000000   0.000000254  -0.000229024  -0.000009919

   81    6.1  0.5 -0.5  -0.000016352   0.000009266  -0.000000068   0.000000806   0.000000000   0.000000445  -0.000090320  -0.000003912
                         0.034565202  -0.019586662  -0.004921636   0.058683671   0.000000000  -0.032257018   0.021471139   0.000929798

   82    7.1  0.5 -0.5  -0.022800662  -0.040237049  -0.032531411  -0.002728319   0.053822553   0.000000000  -0.000316759   0.007314694
                         0.006868949   0.012121852   0.030608333   0.002567035  -0.020642769  -0.000000000   0.000373243  -0.008619030


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5  -0.000070822  -0.000001721   0.000243965  -0.000023892   0.000133084   0.000007659  -0.000246774   0.000003804
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000337   0.000013856   0.000013473   0.000137576  -0.000008893   0.000154533   0.000001904   0.000123509
                        -0.000000173   0.000007113  -0.000002869  -0.000029294   0.000002936  -0.000051025  -0.000001102  -0.000071520

    3    3.1  1.5  1.5  -0.000001992   0.000081961   0.000004730   0.000048301   0.000000787  -0.000013676   0.000000692   0.000044920
                         0.000003878  -0.000159549   0.000022212   0.000226813   0.000002383  -0.000041406   0.000001196   0.000077564

    4    4.1  1.5  1.5   0.000178626   0.000004342   0.000102367  -0.000010025  -0.000183065  -0.000010535   0.000023678  -0.000000365
                        -0.000000004  -0.000000000  -0.000000004   0.000000000   0.000000010   0.000000001   0.000000005  -0.000000000

    5    5.1  1.5  1.5   0.000000006   0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000171847   0.000004177  -0.000182492   0.000017872  -0.000137633  -0.000007920   0.000247289  -0.000003812

    6    6.1  1.5  1.5   0.000000417  -0.000017137   0.000002299   0.000023479  -0.000003057   0.000053125   0.000001025   0.000066512
                        -0.000000811   0.000033368   0.000010799   0.000110272  -0.000009259   0.000160892   0.000001771   0.000114863

    7    7.1  1.5  1.5  -0.000000009  -0.000000000   0.000000002  -0.000000000  -0.000000010  -0.000000001  -0.000000005   0.000000000
                        -0.000025263  -0.000000614  -0.000015517   0.000001520  -0.000179986  -0.000010358   0.000018096  -0.000000279

    8    8.1  1.5  1.5  -0.000003083  -0.000000075  -0.000002699   0.000000264  -0.000022716  -0.000001307   0.000000451  -0.000000007
                         0.100549627   0.002443935  -0.167594866   0.016413068  -0.390033647  -0.022445587   0.235909474  -0.003636417

    9    9.1  1.5  1.5  -0.000733310   0.030170217  -0.003672035  -0.037495375   0.005347019  -0.092914367  -0.001768786  -0.114748450
                         0.001427861  -0.058745798  -0.017246169  -0.176101714   0.016193818  -0.281397582  -0.003054591  -0.198164004

   10   10.1  1.5  1.5  -0.000549509   0.022608180   0.022158496   0.226261793  -0.015501283   0.269363508   0.003317520   0.215221275
                        -0.000282097   0.011606178  -0.004718143  -0.048177250   0.005118296  -0.088939877  -0.001921058  -0.124626977

   11   11.1  1.5  1.5   0.003270592  -0.134560386  -0.007849564  -0.080152388  -0.001286538   0.022355986  -0.001235053  -0.080123031
                        -0.006366662   0.261940507  -0.036860285  -0.376382675  -0.003895137   0.067685215  -0.002132598  -0.138350504

   12   12.1  1.5  1.5   0.213064918   0.005178704   0.328781010  -0.032198511  -0.184310778  -0.010606684  -0.152365979   0.002348639
                        -0.000005641  -0.000000137  -0.000006247   0.000000612   0.000015423   0.000000888   0.000008414  -0.000000130

   13   13.1  1.5  1.5   0.000016267   0.000000395   0.000000420  -0.000000041   0.000008008   0.000000461   0.000004342  -0.000000067
                         0.268199951   0.006518802  -0.250550470   0.024537160  -0.057690125  -0.003319941   0.362010100  -0.005580191

   14   14.1  1.5  1.5   0.234676285   0.005703984  -0.286601035   0.028067699  -0.349490916  -0.020112441   0.404487115  -0.006234951
                        -0.000004893  -0.000000119   0.000000604  -0.000000059   0.000016004   0.000000921  -0.000000970   0.000000015

   15   15.1  1.5  1.5  -0.000000000   0.000000007  -0.000000000  -0.000000000   0.000000001  -0.000000025  -0.000000000  -0.000000025
                         0.000000000  -0.000000014  -0.000000000  -0.000000001   0.000000004  -0.000000077  -0.000000001  -0.000000044

   16   16.1  1.5  1.5   0.000000020   0.000000000  -0.000000000   0.000000000  -0.000000032  -0.000000002   0.000000020  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   17   17.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000002   0.000000000   0.000000063  -0.000000006   0.000000070   0.000000004  -0.000000074   0.000000001

   18    1.1  1.5  0.5   0.000003256  -0.000133979   0.000001379   0.000014084  -0.000002198   0.000038190   0.000000189   0.000012284
                        -0.000006339   0.000260787   0.000006479   0.000066158  -0.000006656   0.000115654   0.000000327   0.000021220

   19    2.1  1.5  0.5  -0.000000014  -0.000000000  -0.000000003   0.000000000  -0.000000003  -0.000000000  -0.000000002   0.000000000
                        -0.000273125  -0.000006639  -0.000044182   0.000004327  -0.000142571  -0.000008205   0.000162672  -0.000002508

   20    3.1  1.5  0.5  -0.000002717  -0.000000066   0.000099208  -0.000009716  -0.000199223  -0.000011465  -0.000210383   0.000003243
                         0.000000005   0.000000000  -0.000000002   0.000000000   0.000000018   0.000000001   0.000000010  -0.000000000

   21    4.1  1.5  0.5   0.000000257  -0.000010583  -0.000004192  -0.000042805  -0.000004322   0.000075102   0.000000368   0.000023872
                        -0.000000501   0.000020616  -0.000019685  -0.000201009  -0.000013088   0.000227436   0.000000636   0.000041237

   22    5.1  1.5  0.5  -0.000003499   0.000143968   0.000021705   0.000221636  -0.000002082   0.000036177   0.000001498   0.000097163
                        -0.000001798   0.000073969  -0.000004622  -0.000047194   0.000000687  -0.000011942  -0.000000867  -0.000056267

   23    6.1  1.5  0.5  -0.000137094  -0.000003332  -0.000219752   0.000021521   0.000168643   0.000009705  -0.000138149   0.000002129
                         0.000000012   0.000000000   0.000000002  -0.000000000  -0.000000005  -0.000000000  -0.000000003   0.000000000

   24    7.1  1.5  0.5  -0.000005232   0.000215251  -0.000011311  -0.000115498   0.000004336  -0.000075354  -0.000003118  -0.000202301
                        -0.000002688   0.000110582   0.000002409   0.000024598  -0.000001432   0.000024875   0.000001806   0.000117152

   25    8.1  1.5  0.5  -0.010312199   0.424269844   0.001029428   0.010511557   0.004848910  -0.084258793  -0.003485733  -0.226133960
                        -0.005297649   0.217958631  -0.000219192  -0.002238184  -0.001600683   0.027814840   0.002018580   0.130953671

   26    9.1  1.5  0.5   0.225784062   0.005487852   0.364129218  -0.035660267  -0.298822139  -0.017196563   0.235511701  -0.003630286
                        -0.000019209  -0.000000467  -0.000003166   0.000000310   0.000009941   0.000000572   0.000005364  -0.000000083

   27   10.1  1.5  0.5  -0.000022921  -0.000000557  -0.000005597   0.000000548  -0.000005532  -0.000000318  -0.000002994   0.000000046
                        -0.449696717  -0.010930218  -0.073014097   0.007150490  -0.248646598  -0.014309070   0.283618848  -0.004371832

   28   11.1  1.5  0.5   0.007633484   0.000185538  -0.157771795   0.015451065   0.342656946   0.019719161   0.370309587  -0.005708123
                        -0.000008536  -0.000000207   0.000003255  -0.000000319  -0.000031407  -0.000001807  -0.000017018   0.000000262

   29   12.1  1.5  0.5   0.002746499  -0.112997899  -0.005205713  -0.053155866  -0.008456745   0.146951612   0.000720936   0.046770100
                        -0.005346567   0.219971240  -0.024444411  -0.249603412  -0.025610291   0.445026238   0.001245348   0.080790912

   30   13.1  1.5  0.5  -0.000865809   0.035621555   0.040360228   0.412120816  -0.006841587   0.118885248   0.004925516   0.319538626
                        -0.000445079   0.018311680  -0.008594432  -0.087758286   0.002258505  -0.039245702  -0.002852356  -0.185044163

   31   14.1  1.5  0.5  -0.004633429   0.190630925  -0.005088023  -0.051954116   0.000114685  -0.001992870  -0.000012227  -0.000793217
                         0.009019088  -0.371068026  -0.023895852  -0.244002042   0.000347666  -0.006041340  -0.000021294  -0.001381410

   32   15.1  1.5  0.5  -0.000000016  -0.000000000   0.000000069  -0.000000007  -0.000000072  -0.000000004   0.000000011  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   33   16.1  1.5  0.5  -0.000000000   0.000000004  -0.000000001  -0.000000006  -0.000000000   0.000000006   0.000000000   0.000000002
                         0.000000000  -0.000000007  -0.000000003  -0.000000029  -0.000000001   0.000000018   0.000000000   0.000000003

   34   17.1  1.5  0.5   0.000000001  -0.000000056   0.000000002   0.000000018  -0.000000000   0.000000003   0.000000001   0.000000052
                         0.000000001  -0.000000029  -0.000000000  -0.000000004   0.000000000  -0.000000001  -0.000000000  -0.000000030

   35    1.1  1.5 -0.5   0.000293190   0.000007126   0.000067641  -0.000006624   0.000121797   0.000007009   0.000024519  -0.000000378
                        -0.000000015  -0.000000000  -0.000000004   0.000000000  -0.000000008  -0.000000000  -0.000000004   0.000000000

   36    2.1  1.5 -0.5  -0.000005905   0.000242939   0.000004232   0.000043214  -0.000007791   0.000135380  -0.000002170  -0.000140769
                        -0.000003034   0.000124810  -0.000000901  -0.000009199   0.000002573  -0.000044710   0.000001257   0.000081526

   37    3.1  1.5 -0.5   0.000000030  -0.000001246  -0.000002023  -0.000020661  -0.000003595   0.000062463   0.000001625   0.000105427
                        -0.000000059   0.000002415  -0.000009503  -0.000097032  -0.000010887   0.000189178   0.000002806   0.000182061

   38    4.1  1.5 -0.5   0.000023174   0.000000563  -0.000205516   0.000020127   0.000239515   0.000013784   0.000047649  -0.000000734
                         0.000000006   0.000000000  -0.000000001   0.000000000  -0.000000015  -0.000000001  -0.000000008   0.000000000

   39    5.1  1.5 -0.5   0.000000013   0.000000000   0.000000002  -0.000000000   0.000000006   0.000000000   0.000000003  -0.000000000
                         0.000161858   0.000003934   0.000226605  -0.000022192   0.000038097   0.000002192   0.000112280  -0.000001731

   40    6.1  1.5 -0.5   0.000001523  -0.000062652   0.000004482   0.000045767   0.000003043  -0.000052884   0.000001067   0.000069237
                        -0.000002964   0.000121940   0.000021049   0.000214933   0.000009216  -0.000160137   0.000001843   0.000119547

   41    7.1  1.5 -0.5   0.000000009   0.000000000   0.000000003  -0.000000000  -0.000000012  -0.000000001  -0.000000006   0.000000000
                         0.000241995   0.000005882  -0.000118089   0.000011565  -0.000079354  -0.000004567  -0.000233774   0.000003603

   42    8.1  1.5 -0.5   0.000014966   0.000000364   0.000000201  -0.000000020  -0.000013435  -0.000000773  -0.000007234   0.000000111
                         0.476980991   0.011593383   0.010747200  -0.001052506  -0.088731107  -0.005106282  -0.261314814   0.004028027

   43    9.1  1.5 -0.5  -0.002507961   0.103183838  -0.007426864  -0.075836170  -0.005392594   0.093706309  -0.001819417  -0.118033144
                         0.004881255  -0.200827136  -0.034878308  -0.356144581  -0.016329168   0.283749535  -0.003141448  -0.203798770

   44   10.1  1.5 -0.5  -0.009722222   0.399996728   0.006993795   0.071414075  -0.013587271   0.236103992  -0.003783168  -0.245429764
                        -0.004994803   0.205498796  -0.001488737  -0.015201588   0.004487268  -0.077974585   0.002191017   0.142140360

   45   11.1  1.5 -0.5  -0.000084962   0.003495535   0.003217770   0.032856847   0.006182551  -0.107433274  -0.002860443  -0.185568773
                         0.000164942  -0.006786118   0.015112292   0.154312562   0.018724887  -0.325379587  -0.004939689  -0.320458142

   46   12.1  1.5 -0.5   0.247297132   0.006010743  -0.255200723   0.024992573   0.468660995   0.026970420   0.093352094  -0.001438972
                        -0.000001408  -0.000000034  -0.000003842   0.000000376  -0.000030031  -0.000001728  -0.000016202   0.000000250

   47   13.1  1.5 -0.5   0.000011882   0.000000289   0.000000990  -0.000000097   0.000018716   0.000001077   0.000010171  -0.000000157
                         0.040052623   0.000973509   0.421360990  -0.041265146   0.125195554   0.007204732   0.369250965  -0.005691805

   48   14.1  1.5 -0.5  -0.417170983  -0.010139656  -0.249471895   0.024431531  -0.006361550  -0.000366093  -0.001592938   0.000024554
                         0.000016179   0.000000393   0.000004925  -0.000000482   0.000002339   0.000000135   0.000005889  -0.000000091

   49   15.1  1.5 -0.5   0.000000000  -0.000000007  -0.000000001  -0.000000014  -0.000000001   0.000000022  -0.000000000  -0.000000005
                        -0.000000000   0.000000014  -0.000000007  -0.000000068  -0.000000004   0.000000068  -0.000000000  -0.000000009

   50   16.1  1.5 -0.5  -0.000000008  -0.000000000  -0.000000029   0.000000003   0.000000019   0.000000001   0.000000003  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   51   17.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000063  -0.000000002   0.000000019  -0.000000002   0.000000003   0.000000000   0.000000060  -0.000000001

   52    1.1  1.5 -1.5  -0.000000787   0.000032360   0.000004976   0.000050812  -0.000002402   0.000041737  -0.000001906  -0.000123673
                         0.000001531  -0.000062996   0.000023368   0.000238615  -0.000007272   0.000126370  -0.000003292  -0.000213547

   53    2.1  1.5 -1.5   0.000000004   0.000000000  -0.000000002   0.000000000  -0.000000014  -0.000000001  -0.000000008   0.000000000
                        -0.000015575  -0.000000379  -0.000140660   0.000013775  -0.000162739  -0.000009365  -0.000142722   0.000002200

   54    3.1  1.5 -1.5   0.000179369   0.000004360  -0.000231899   0.000022711   0.000043606   0.000002509  -0.000089632   0.000001382
                        -0.000000003  -0.000000000  -0.000000002   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   55    4.1  1.5 -1.5   0.000001984  -0.000081622   0.000002088   0.000021316   0.000003303  -0.000057403   0.000000183   0.000011871
                        -0.000003862   0.000158887   0.000009805   0.000100123   0.000010004  -0.000173832   0.000000316   0.000020487

   56    5.1  1.5 -1.5  -0.000003715   0.000152856  -0.000017480  -0.000178489   0.000007521  -0.000130690   0.000003299   0.000213993
                        -0.000001909   0.000078527   0.000003722   0.000038010  -0.000002484   0.000043164  -0.000001910  -0.000123931

   57    6.1  1.5 -1.5  -0.000037511  -0.000000912  -0.000112744   0.000011041  -0.000169436  -0.000009751  -0.000132730   0.000002046
                        -0.000000004  -0.000000000   0.000000003  -0.000000000   0.000000014   0.000000001   0.000000008  -0.000000000

   58    7.1  1.5 -1.5   0.000000546  -0.000022467  -0.000001486  -0.000015176   0.000009835  -0.000170909   0.000000241   0.000015657
                         0.000000281  -0.000011551   0.000000317   0.000003233  -0.000003248   0.000056437  -0.000000140  -0.000009074

   59    8.1  1.5 -1.5  -0.002173925   0.089440743  -0.016053187  -0.163920099   0.021313606  -0.370363384   0.003146799   0.204145899
                        -0.001116632   0.045941061   0.003418185   0.034903298  -0.007038080   0.122299673  -0.001822413  -0.118227459

   60    9.1  1.5 -1.5   0.066040220   0.001605157   0.180049206  -0.017632759   0.296340477   0.017053749   0.228989474  -0.003529749
                         0.000005980   0.000000145  -0.000004600   0.000000451  -0.000024317  -0.000001399  -0.000013160   0.000000203

   61   10.1  1.5 -1.5   0.000006534   0.000000159  -0.000004103   0.000000402  -0.000024200  -0.000001393  -0.000013100   0.000000202
                        -0.025413247  -0.000617688  -0.231334058   0.022655239  -0.283667059  -0.016324422  -0.248700785   0.003833588

   62   11.1  1.5 -1.5  -0.294481454  -0.007157594   0.384822457  -0.037686818  -0.071281684  -0.004102106   0.159876709  -0.002464413
                         0.000004458   0.000000108   0.000003295  -0.000000323  -0.000000871  -0.000000050  -0.000000476   0.000000007

   63   12.1  1.5 -1.5   0.002366410  -0.097360054   0.006705569   0.068470984   0.003325595  -0.057788376  -0.001176927  -0.076352102
                        -0.004606417   0.189519601   0.031492530   0.321572195   0.010071850  -0.175017047  -0.002032474  -0.131855027

   64   13.1  1.5 -1.5  -0.005798323   0.238557600  -0.023999055  -0.245055850   0.003152304  -0.054777118   0.004828885   0.313269779
                        -0.002978966   0.122562171   0.005110534   0.052183985  -0.001041628   0.018100217  -0.002796498  -0.181420392

   65   14.1  1.5 -1.5   0.002606408  -0.107234197  -0.005845762  -0.059691439   0.006306732  -0.109591150   0.003124681   0.202710992
                        -0.005073665   0.208743349  -0.027452192  -0.280316045   0.019098048  -0.331863949   0.005395460   0.350025827

   66   15.1  1.5 -1.5   0.000000016   0.000000000   0.000000001  -0.000000000   0.000000081   0.000000005   0.000000051  -0.000000001
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   67   16.1  1.5 -1.5   0.000000000  -0.000000009  -0.000000000  -0.000000000   0.000000001  -0.000000010   0.000000000   0.000000010
                        -0.000000000   0.000000018  -0.000000000  -0.000000000   0.000000002  -0.000000030   0.000000000   0.000000018

   68   17.1  1.5 -1.5  -0.000000000   0.000000002   0.000000006   0.000000062  -0.000000004   0.000000067  -0.000000001  -0.000000064
                        -0.000000000   0.000000001  -0.000000001  -0.000000013   0.000000001  -0.000000022   0.000000001   0.000000037

   69    1.1  0.5  0.5  -0.003688531  -0.000089653  -0.028543645   0.002795365  -0.000063245  -0.000003640   0.000087439  -0.000001348
                        -0.000000794  -0.000000019   0.000000516  -0.000000051   0.000000003   0.000000000  -0.000000002   0.000000000

   70    2.1  0.5  0.5  -0.000000825  -0.000000020   0.000000174  -0.000000017   0.000000006   0.000000000   0.000000001  -0.000000000
                         0.012332360   0.000299747  -0.048201673   0.004720535   0.000071075   0.000004090   0.000031521  -0.000000486

   71    3.1  0.5  0.5   0.001053845  -0.043357846  -0.001390224  -0.014195663   0.000000378  -0.000006575  -0.000000458  -0.000029702
                         0.000541430  -0.022275790   0.000295992   0.003022393  -0.000000125   0.000002169   0.000000265   0.000017197

   72    4.1  0.5  0.5  -0.000526295   0.021653108  -0.000568970  -0.005809790   0.000000499  -0.000008669  -0.000000860  -0.000055765
                         0.001024392  -0.042146063  -0.002672196  -0.027285961   0.000001511  -0.000026263  -0.000001484  -0.000096297

   73    5.1  0.5  0.5   0.000200816  -0.008262090  -0.000048693  -0.000497212  -0.000000070   0.000001215  -0.000000262  -0.000017029
                        -0.000390968   0.016085398  -0.000228376  -0.002331965  -0.000000212   0.000003676  -0.000000453  -0.000029405

   74    6.1  0.5  0.5  -0.000089766   0.003693210  -0.005019652  -0.051255979  -0.000002064   0.000035873   0.000000362   0.000023483
                        -0.000046114   0.001897240   0.001068882   0.010914422   0.000000682  -0.000011846  -0.000000210  -0.000013598

   75    7.1  0.5  0.5   0.049739900   0.001208966  -0.025716614   0.002518505  -0.000029656  -0.000001707   0.000069078  -0.000001065
                        -0.000001573  -0.000000038  -0.000000627   0.000000061   0.000000001   0.000000000  -0.000000001   0.000000000

   76    1.1  0.5 -0.5  -0.000040947   0.001684682  -0.000582157  -0.005944443   0.000001141  -0.000019832   0.000000675   0.000043819
                         0.000079755  -0.003281327  -0.002734073  -0.027917795   0.000003456  -0.000060055   0.000001166   0.000075667

   77    2.1  0.5 -0.5  -0.000266636   0.010970065  -0.004617010  -0.047144582  -0.000003884   0.000067491   0.000000420   0.000027278
                        -0.000136945   0.005634250   0.000983189   0.010039407   0.000001282  -0.000022285  -0.000000243  -0.000015796

   78    3.1  0.5 -0.5   0.000003058   0.000000074   0.000000500  -0.000000049   0.000000002   0.000000000   0.000000004  -0.000000000
                         0.048745396   0.001184794   0.014513846  -0.001421384   0.000006924   0.000000398   0.000034322  -0.000000529

   79    4.1  0.5 -0.5   0.047382990   0.001151679   0.027897622  -0.002732098   0.000027656   0.000001592   0.000111278  -0.000001715
                        -0.000002876  -0.000000070  -0.000000620   0.000000061  -0.000000005  -0.000000000  -0.000000003   0.000000000

   80    5.1  0.5 -0.5  -0.018083201  -0.000439526   0.002384382  -0.000233510  -0.000003871  -0.000000223   0.000033980  -0.000000524
                        -0.000000682  -0.000000017   0.000000616  -0.000000060  -0.000000001  -0.000000000  -0.000000001   0.000000000

   81    6.1  0.5 -0.5  -0.000000077  -0.000000002   0.000000305  -0.000000030  -0.000000002  -0.000000000  -0.000000001   0.000000000
                        -0.004152026  -0.000100918   0.052405153  -0.005132194  -0.000037778  -0.000002174  -0.000027136   0.000000418

   82    7.1  0.5 -0.5   0.000552443  -0.022728885  -0.000524603  -0.005356759   0.000000535  -0.000009300   0.000000534   0.000034618
                        -0.001075363   0.044243141  -0.002463262  -0.025152522   0.000001621  -0.000028160   0.000000921   0.000059777


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5   0.000024384  -0.000343358  -0.000504359   0.000001146  -0.000081403   0.000017189   0.000006161   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000537235   0.000038152  -0.000000134  -0.000058849  -0.000103512  -0.000490219   0.000000000   0.000006522
                        -0.000225234  -0.000015995  -0.000000206  -0.000090696  -0.000104705  -0.000495867   0.000000000  -0.000012904

    3    3.1  1.5  1.5   0.000026892   0.000001910  -0.000001536  -0.000676144   0.000003288   0.000015572   0.000000000   0.000784089
                         0.000064143   0.000004555   0.000000997   0.000438695  -0.000003249  -0.000015389  -0.000000000   0.000396258

    4    4.1  1.5  1.5   0.000048265  -0.000679632  -0.000433609   0.000000985  -0.000086520   0.000018269   0.000630259  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000010  -0.000000000

    5    5.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000008   0.000000000
                        -0.000022945   0.000323093  -0.000040442   0.000000092  -0.000006268   0.000001324   0.000501553  -0.000000000

    6    6.1  1.5  1.5   0.000235010   0.000016690  -0.000000007  -0.000003075  -0.000102357  -0.000484747  -0.000000000  -0.000102033
                         0.000560552   0.000039808   0.000000005   0.000001999   0.000101191   0.000479226   0.000000000  -0.000051565

    7    7.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000007  -0.000000000
                         0.000048189  -0.000678567   0.000670045  -0.000001523   0.000090263  -0.000019060  -0.000398297   0.000000000

    8    8.1  1.5  1.5   0.000000002  -0.000000024  -0.000000367   0.000000001  -0.000000059   0.000000012  -0.000000505   0.000000000
                        -0.002078183   0.029263468  -0.037943984   0.000086221  -0.005084363   0.001073591   0.007061327  -0.000000000

    9    9.1  1.5  1.5   0.015719731   0.001116357   0.000001038   0.000456589  -0.006864676  -0.032510056  -0.000000000  -0.007618831
                         0.037495044   0.002662760  -0.000000673  -0.000296016   0.006786485   0.032139755   0.000000000  -0.003850414

   10   10.1  1.5  1.5  -0.036004426  -0.002556901   0.000008952   0.003939576   0.006940125   0.032867374  -0.000000000  -0.000434752
                         0.015094770   0.001071975   0.000013797   0.006071541   0.007020080   0.033246026   0.000000000   0.000860143

   11   11.1  1.5  1.5   0.002044907   0.000145222  -0.000103004  -0.045329404   0.000116049   0.000549591   0.000000000   0.052449512
                         0.004877571   0.000346387   0.000066831   0.029410575  -0.000114642  -0.000542927  -0.000000000   0.026506588

   12   12.1  1.5  1.5  -0.003625470   0.051051235   0.041015841  -0.000093202   0.007614058  -0.001607750  -0.038122207   0.000000000
                         0.000000000  -0.000000003  -0.000000016   0.000000000   0.000000061  -0.000000013  -0.000000639   0.000000000

   13   13.1  1.5  1.5  -0.000000000   0.000000006  -0.000000001   0.000000000  -0.000000042   0.000000009   0.000000715  -0.000000000
                         0.002913138  -0.041020685   0.024146452  -0.000054869   0.003301442  -0.000697117  -0.042366342   0.000000000

   14   14.1  1.5  1.5   0.000041497  -0.000584327  -0.017523192   0.000039819  -0.002338617   0.000493812  -0.018266646   0.000000000
                         0.000000045  -0.000000630   0.000000808  -0.000000002   0.000000139  -0.000000029  -0.000000464   0.000000000

   15   15.1  1.5  1.5  -0.000000080  -0.000000006  -0.000000000  -0.000000190  -0.000000002  -0.000000007   0.000000000   0.000000295
                        -0.000000191  -0.000000014   0.000000000   0.000000124   0.000000002   0.000000007   0.000000000   0.000000149

   16   16.1  1.5  1.5   0.000000012  -0.000000168  -0.000000114   0.000000000  -0.000000019   0.000000004   0.000000052   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   17   17.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000001  -0.000000011  -0.000000251   0.000000001  -0.000000043   0.000000009   0.000000258   0.000000000

   18    1.1  1.5  0.5  -0.000120371  -0.000008548  -0.000000689  -0.000303164   0.000140836   0.000666978  -0.000000000  -0.000397074
                        -0.000287111  -0.000020390   0.000000447   0.000196694  -0.000139232  -0.000659379   0.000000000  -0.000200670

   19    2.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000015  -0.000000000
                        -0.000000421   0.000005927  -0.000197856   0.000000450  -0.000016258   0.000003433  -0.000906640   0.000000000

   20    3.1  1.5  0.5  -0.000037626   0.000529821   0.000105199  -0.000000239   0.000025735  -0.000005434   0.000038400  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000

   21    4.1  1.5  0.5  -0.000222844  -0.000015826   0.000000344   0.000151339  -0.000073749  -0.000349263   0.000000000   0.000196712
                        -0.000531533  -0.000037748  -0.000000223  -0.000098189   0.000072909   0.000345284  -0.000000000   0.000099412

   22    5.1  1.5  0.5  -0.000240164  -0.000017056   0.000000785   0.000345418   0.000118834   0.000562780   0.000000000  -0.000214212
                         0.000100688   0.000007150   0.000001210   0.000532373   0.000120203   0.000569261   0.000000000   0.000423867

   23    6.1  1.5  0.5   0.000004730  -0.000066604   0.000868993  -0.000001975   0.000122560  -0.000025879   0.000279214  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000005  -0.000000000

   24    7.1  1.5  0.5   0.000554483   0.000039377   0.000000373   0.000164056   0.000054836   0.000259696   0.000000000  -0.000100346
                        -0.000232466  -0.000016509   0.000000575   0.000252851   0.000055468   0.000262686   0.000000000   0.000198556

   25    8.1  1.5  0.5  -0.024695253  -0.001753766  -0.000047304  -0.020817187  -0.007068821  -0.033476857  -0.000000000   0.012831215
                         0.010353401   0.000735260  -0.000072904  -0.032083336  -0.007150682  -0.033864537  -0.000000000  -0.025390994

   26    9.1  1.5  0.5   0.000354393  -0.004990307   0.058128134  -0.000132087   0.008197289  -0.001730902   0.018669389  -0.000000000
                         0.000000001  -0.000000009   0.000000018  -0.000000000  -0.000000042   0.000000009   0.000000325  -0.000000000

   27   10.1  1.5  0.5   0.000000000  -0.000000000  -0.000000027   0.000000000   0.000000089  -0.000000019  -0.000001024   0.000000000
                         0.000030076  -0.000423512   0.013258272  -0.000030127   0.001105817  -0.000233499   0.060765081  -0.000000000

   28   11.1  1.5  0.5  -0.002517315   0.035446994   0.007918449  -0.000017993   0.001855592  -0.000391818   0.002867512  -0.000000000
                        -0.000000000   0.000000007  -0.000000005   0.000000000   0.000000006  -0.000000001   0.000000050  -0.000000000

   29   12.1  1.5  0.5   0.016970617   0.001205191  -0.000000326  -0.000143408   0.000274997   0.001302342  -0.000000000  -0.000102267
                         0.040478701   0.002874648   0.000000211   0.000093025  -0.000271863  -0.001287500   0.000000000  -0.000051686

   30   13.1  1.5  0.5   0.032113051   0.002280550  -0.000033920  -0.014927457  -0.005186773  -0.024563766  -0.000000000   0.009304770
                        -0.013463333  -0.000956116  -0.000052279  -0.023006867  -0.005246506  -0.024846652  -0.000000000  -0.018411554

   31   14.1  1.5  0.5  -0.000654171  -0.000046457  -0.000051628  -0.022720086   0.010655326   0.050461994  -0.000000000  -0.029701566
                        -0.001561788  -0.000110912   0.000033498   0.014741810  -0.010533631  -0.049885669   0.000000000  -0.015009632

   32   15.1  1.5  0.5  -0.000000013   0.000000178  -0.000000181   0.000000000  -0.000000111   0.000000023  -0.000000085   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   33   16.1  1.5  0.5  -0.000000018  -0.000000001  -0.000000000  -0.000000068  -0.000000019  -0.000000089   0.000000000   0.000000070
                        -0.000000042  -0.000000003   0.000000000   0.000000044   0.000000018   0.000000088   0.000000000   0.000000035

   34   17.1  1.5  0.5  -0.000000038  -0.000000003  -0.000000000  -0.000000063  -0.000000028  -0.000000132   0.000000000  -0.000000005
                         0.000000016   0.000000001  -0.000000000  -0.000000097  -0.000000028  -0.000000134   0.000000000   0.000000010

   35    1.1  1.5 -0.5   0.000022109  -0.000311323   0.000361382  -0.000000821   0.000937891  -0.000198041  -0.000444900   0.000000000
                         0.000000000  -0.000000000  -0.000000004   0.000000000   0.000000024  -0.000000005  -0.000000008   0.000000000

   36    2.1  1.5 -0.5  -0.000005466  -0.000000388   0.000000245   0.000107692  -0.000002413  -0.000011429  -0.000000000   0.000408937
                         0.000002291   0.000000163   0.000000377   0.000165981  -0.000002442  -0.000011563  -0.000000000  -0.000809177

   37    3.1  1.5 -0.5  -0.000204851  -0.000014548   0.000000201   0.000088251  -0.000003865  -0.000018302  -0.000000000  -0.000034272
                        -0.000488617  -0.000034700  -0.000000130  -0.000057259   0.000003820   0.000018093   0.000000000  -0.000017320

   38    4.1  1.5 -0.5   0.000040931  -0.000576357  -0.000180401   0.000000410  -0.000491127   0.000103704   0.000220405  -0.000000000
                        -0.000000000   0.000000000   0.000000002  -0.000000000  -0.000000012   0.000000003   0.000000004  -0.000000000

   39    5.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000004   0.000000000   0.000000023  -0.000000005   0.000000007  -0.000000000
                         0.000018494  -0.000260416   0.000634614  -0.000001442  -0.000800487   0.000169027  -0.000474921   0.000000000

   40    6.1  1.5 -0.5   0.000025752   0.000001829   0.000001657   0.000728995  -0.000018404  -0.000087161  -0.000000000  -0.000249199
                         0.000061425   0.000004362  -0.000001075  -0.000472985   0.000018194   0.000086162   0.000000000  -0.000125938

   41    7.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000002   0.000000000   0.000000011  -0.000000002   0.000000003  -0.000000000
                        -0.000042698   0.000601242   0.000301410  -0.000000685  -0.000369386   0.000077998  -0.000222472   0.000000000

   42    8.1  1.5 -0.5   0.000000002  -0.000000024   0.000000807  -0.000000002   0.000000120  -0.000000025  -0.000001127   0.000000000
                         0.001901658  -0.026777760  -0.038245206   0.000086906   0.047618346  -0.010054874   0.028448948  -0.000000000

   43    9.1  1.5 -0.5   0.001929474   0.000137024   0.000110807   0.048763488  -0.001230962  -0.005829646  -0.000000000  -0.016662444
                         0.004602205   0.000326832  -0.000071894  -0.031638619   0.001216863   0.005762879   0.000000000  -0.008420750

   44   10.1  1.5 -0.5   0.000390575   0.000027737  -0.000016398  -0.007216377   0.000164143   0.000777355   0.000000000  -0.027407866
                        -0.000163748  -0.000011629  -0.000025274  -0.011122305   0.000166069   0.000786480   0.000000000   0.054232868

   45   11.1  1.5 -0.5  -0.013705325  -0.000973302   0.000015095   0.006642763  -0.000278646  -0.001319626  -0.000000000  -0.002559257
                        -0.032690266  -0.002321542  -0.000009794  -0.004309934   0.000275459   0.001304534   0.000000000  -0.001293379

   46   12.1  1.5 -0.5  -0.003117064   0.043892221   0.000170937  -0.000000388   0.001831325  -0.000386694  -0.000114587  -0.000000000
                        -0.000000001   0.000000015  -0.000000017   0.000000000   0.000000044  -0.000000009   0.000000001   0.000000000

   47   13.1  1.5 -0.5   0.000000001  -0.000000011   0.000000169  -0.000000000  -0.000001020   0.000000215  -0.000000298   0.000000000
                        -0.002472866   0.034821106  -0.027425260   0.000062319   0.034939014  -0.007377564   0.020629204  -0.000000000

   48   14.1  1.5 -0.5   0.000120249  -0.001693257   0.027083635  -0.000061543   0.070957683  -0.014983102  -0.033278703   0.000000000
                        -0.000000040   0.000000557   0.000000524  -0.000000001   0.000000789  -0.000000167  -0.000001238   0.000000000

   49   15.1  1.5 -0.5  -0.000000069  -0.000000005  -0.000000000  -0.000000151   0.000000017   0.000000079   0.000000000   0.000000076
                        -0.000000164  -0.000000012   0.000000000   0.000000098  -0.000000016  -0.000000078  -0.000000000   0.000000038

   50   16.1  1.5 -0.5   0.000000003  -0.000000046   0.000000081  -0.000000000  -0.000000124   0.000000026   0.000000078  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   51   17.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000003  -0.000000042  -0.000000115   0.000000000   0.000000188  -0.000000040  -0.000000012   0.000000000

   52    1.1  1.5 -1.5  -0.000132757  -0.000009428   0.000000961   0.000423105  -0.000012224  -0.000057891   0.000000000   0.000005498
                        -0.000316655  -0.000022488  -0.000000624  -0.000274518   0.000012084   0.000057228  -0.000000000   0.000002779

   53    2.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000003   0.000000000   0.000000019  -0.000000004  -0.000000001   0.000000000
                         0.000041370  -0.000582539   0.000108116  -0.000000246  -0.000697280   0.000147234  -0.000014459   0.000000000

   54    3.1  1.5 -1.5   0.000004939  -0.000069552  -0.000805993   0.000001831  -0.000021893   0.000004623  -0.000878530   0.000000000
                        -0.000000000   0.000000000  -0.000000001   0.000000000   0.000000004  -0.000000001  -0.000000015   0.000000000

   55    4.1  1.5 -1.5  -0.000262775  -0.000018661   0.000000827   0.000363754  -0.000012992  -0.000061529   0.000000000   0.000562506
                        -0.000626777  -0.000044511  -0.000000536  -0.000236009   0.000012844   0.000060827  -0.000000000   0.000284276

   56    5.1  1.5 -1.5   0.000297966   0.000021160  -0.000000050  -0.000022012   0.000000931   0.000004407  -0.000000000   0.000226224
                        -0.000124922  -0.000008871  -0.000000077  -0.000033927   0.000000941   0.000004457  -0.000000000  -0.000447636

   57    6.1  1.5 -1.5   0.000043165  -0.000607822  -0.000003668   0.000000008   0.000681643  -0.000143933   0.000114323  -0.000000000
                         0.000000000  -0.000000000  -0.000000003   0.000000000   0.000000018  -0.000000004   0.000000001  -0.000000000

   58    7.1  1.5 -1.5  -0.000625795  -0.000044442   0.000000829   0.000364700  -0.000013399  -0.000063458   0.000000000  -0.000179651
                         0.000262363   0.000018632   0.000001277   0.000562099  -0.000013554  -0.000064192   0.000000000   0.000355480

   59    8.1  1.5 -1.5   0.026987628   0.001916562  -0.000046929  -0.020652250   0.000754754   0.003574398  -0.000000000   0.003184641
                        -0.011314526  -0.000803516  -0.000072331  -0.031831281   0.000763508   0.003615857  -0.000000000  -0.006302412

   60    9.1  1.5 -1.5   0.002887307  -0.040656959   0.000544150  -0.000001236   0.045715070  -0.009652987   0.008536526  -0.000000000
                         0.000000001  -0.000000019  -0.000000191   0.000000000   0.000001216  -0.000000257   0.000000092  -0.000000000

   61   10.1  1.5 -1.5  -0.000000000   0.000000001   0.000000213  -0.000000000  -0.000001267   0.000000267   0.000000036  -0.000000000
                        -0.002772521   0.039040630  -0.007237670   0.000016446   0.046750001  -0.009871518   0.000963771  -0.000000000

   62   11.1  1.5 -1.5   0.000375597  -0.005288889  -0.054034589   0.000122785  -0.000772541   0.000163126  -0.058766917   0.000000000
                        -0.000000000   0.000000003  -0.000000060   0.000000000   0.000000267  -0.000000056  -0.000001005   0.000000000

   63   12.1  1.5 -1.5   0.019738580   0.001401761  -0.000078187  -0.034408060   0.001143365   0.005414801  -0.000000000  -0.034024089
                         0.047080963   0.003343516   0.000050729   0.022324528  -0.001130299  -0.005352925   0.000000000  -0.017194884

   64   13.1  1.5 -1.5  -0.037830488  -0.002686582   0.000029865   0.013142690  -0.000490098  -0.002321030   0.000000000  -0.019109182
                         0.015860350   0.001126344   0.000046029   0.020256378  -0.000495759  -0.002347837   0.000000000   0.037811983

   65   14.1  1.5 -1.5  -0.000226507  -0.000016086   0.000033405   0.014700587  -0.000351202  -0.001663238  -0.000000000  -0.016303062
                        -0.000538640  -0.000038252  -0.000021671  -0.009537033   0.000347142   0.001644010   0.000000000  -0.008238964

   66   15.1  1.5 -1.5  -0.000000015   0.000000207  -0.000000227   0.000000001   0.000000010  -0.000000002  -0.000000330   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   67   16.1  1.5 -1.5  -0.000000065  -0.000000005   0.000000000   0.000000095  -0.000000003  -0.000000013  -0.000000000   0.000000047
                        -0.000000155  -0.000000011  -0.000000000  -0.000000062   0.000000003   0.000000013   0.000000000   0.000000024

   68   17.1  1.5 -1.5  -0.000000010  -0.000000001  -0.000000000  -0.000000137   0.000000006   0.000000030  -0.000000000   0.000000117
                         0.000000004   0.000000000  -0.000000000  -0.000000210   0.000000006   0.000000030   0.000000000  -0.000000231

   69    1.1  0.5  0.5  -0.053201854   0.749149801  -0.001181853   0.000002686   0.015205100  -0.003210640  -0.000869222  -0.000000000
                        -0.000000012   0.000000165  -0.000000155   0.000000000   0.000000247  -0.000000052  -0.000000007  -0.000000000

   70    2.1  0.5  0.5  -0.000000008   0.000000114  -0.000000046   0.000000000  -0.000000053   0.000000011   0.000002554  -0.000000000
                        -0.000144688   0.002037389   0.725095096  -0.001647660   0.109028698  -0.023022005  -0.160283317   0.000000000

   71    3.1  0.5  0.5   0.123936332   0.008801501   0.000024160   0.010632182   0.099167615   0.469642678  -0.000000000   0.126792887
                        -0.051960223  -0.003690023   0.000037224   0.016381498   0.100310054   0.475053090  -0.000000000  -0.250890954

   72    4.1  0.5  0.5  -0.021826102  -0.001550009   0.000499423   0.219784118   0.097536668   0.461918757   0.000000000   0.201827356
                        -0.052059849  -0.003697098  -0.000324043  -0.142603264  -0.096425956  -0.456658601  -0.000000000   0.101999151

   73    5.1  0.5  0.5   0.176935125   0.012565280   0.000805744   0.354588223   0.002108398   0.009985053  -0.000000001  -0.372310850
                         0.422029736   0.029970994  -0.000522782  -0.230063708  -0.002085005  -0.009874264   0.000000000  -0.188155978

   74    6.1  0.5  0.5  -0.401561301  -0.028517401  -0.000499156  -0.219666261   0.036976341   0.175114304   0.000000000  -0.171830208
                         0.168353643   0.011955854  -0.000769334  -0.338565341   0.037403016   0.177134971   0.000000001   0.340005922

   75    7.1  0.5  0.5  -0.000097674   0.001375380  -0.223859717   0.000508685  -0.042845727   0.009047109   0.715154762  -0.000000001
                        -0.000000004   0.000000060   0.000000260  -0.000000001  -0.000000954   0.000000201   0.000011974  -0.000000001

   76    1.1  0.5 -0.5   0.289653389   0.020570115   0.000002253   0.000991368   0.002283255   0.010813146   0.000000000  -0.000775777
                         0.690888080   0.049064321  -0.000001462  -0.000643402  -0.002257201  -0.010689759  -0.000000000  -0.000392067

   77    2.1  0.5 -0.5   0.001878984   0.000133439   0.000896806   0.394662570  -0.016185080  -0.076650065   0.000000000  -0.072295330
                        -0.000787636  -0.000055935   0.001382216   0.608279832  -0.016372413  -0.077537246   0.000000000   0.143052881

   78    3.1  0.5 -0.5  -0.000000013   0.000000189   0.000003004  -0.000000007  -0.000018208   0.000003844   0.000005456  -0.000000000
                         0.009543725  -0.134387794  -0.019529382   0.000044377   0.668011739  -0.141054326  -0.281109778   0.000000000

   79    4.1  0.5 -0.5  -0.004008873   0.056450036   0.261993796  -0.000595338  -0.649542929   0.137154535  -0.226137366   0.000000000
                        -0.000000009   0.000000122   0.000002947  -0.000000007  -0.000018180   0.000003838  -0.000002997   0.000000000

   80    5.1  0.5 -0.5   0.032498411  -0.457618986   0.422684419  -0.000960481  -0.014042876   0.002965230   0.417154697  -0.000000000
                         0.000000010  -0.000000135   0.000000598  -0.000000001  -0.000002468   0.000000521   0.000007153  -0.000000001

   81    6.1  0.5 -0.5   0.000000000  -0.000000007   0.000000679  -0.000000002  -0.000004467   0.000000943  -0.000006282   0.000000001
                        -0.030922235   0.435424422   0.403583643  -0.000917078   0.249081949  -0.052595013   0.380958852  -0.000000000

   82    7.1  0.5 -0.5   0.000531836   0.000037769   0.000426734   0.187795312  -0.006433837  -0.030469668   0.000000001   0.638275981
                         0.001268393   0.000090077  -0.000276872  -0.121844548   0.006360498   0.030122345  -0.000000001   0.322567987


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  1.5  1.5  -0.000267629  -0.000000000  -0.000408286  -0.000000000  -0.000325513  -0.000003931  -0.000000296   0.000000010
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000000  -0.000514413  -0.000000000  -0.000010788   0.000000018  -0.000001470   0.000000003   0.000000077
                        -0.000000000   0.000386729   0.000000000   0.000006295  -0.000000001   0.000000084  -0.000000009  -0.000000263

    3    3.1  1.5  1.5  -0.000000000  -0.000041877  -0.000000000  -0.000201670   0.000000396  -0.000032775  -0.000000013  -0.000000368
                        -0.000000000  -0.000055703   0.000000000  -0.000345594   0.000006928  -0.000573591  -0.000000004  -0.000000108

    4    4.1  1.5  1.5  -0.000542759  -0.000000000  -0.000102210   0.000000000   0.000369796   0.000004466   0.000000626  -0.000000022
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    5    5.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000258980   0.000000000   0.000177465   0.000000000   0.000492607   0.000005950  -0.000001609   0.000000057

    6    6.1  1.5  1.5   0.000000000  -0.000384488  -0.000000000   0.000018647  -0.000000048   0.000003977  -0.000000003  -0.000000085
                         0.000000000  -0.000511432  -0.000000000   0.000031954  -0.000000841   0.000069607  -0.000000001  -0.000000025

    7    7.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000557424  -0.000000000   0.000364718   0.000000000   0.000031383   0.000000379   0.000000452  -0.000000016

    8    8.1  1.5  1.5  -0.000000005  -0.000000000  -0.000000431   0.000000000  -0.000000614  -0.000000007  -0.000000000   0.000000000
                         0.022712473   0.000000000  -0.025407387  -0.000000000  -0.016691038  -0.000201591  -0.000000030   0.000000001

    9    9.1  1.5  1.5   0.000000000  -0.024089971  -0.000000000   0.001352014  -0.000003388   0.000280527  -0.000000000  -0.000000000
                         0.000000000  -0.032043582  -0.000000000   0.002316898  -0.000059295   0.004909434  -0.000000000  -0.000000000

   10   10.1  1.5  1.5  -0.000000000   0.032288535   0.000000000   0.000689117  -0.000001005   0.000083226  -0.000000000  -0.000000006
                         0.000000000  -0.024274122  -0.000000000  -0.000402130   0.000000057  -0.000004753   0.000000001   0.000000019

   11   11.1  1.5  1.5  -0.000000000  -0.002998883  -0.000000000  -0.012645781   0.000024801  -0.002053466   0.000000000   0.000000009
                        -0.000000000  -0.003989007   0.000000000  -0.021670628   0.000434047  -0.035937525   0.000000000   0.000000003

   12   12.1  1.5  1.5   0.037993739   0.000000000   0.017066478  -0.000000000  -0.011831742  -0.000142902   0.000000040  -0.000000001
                        -0.000000001   0.000000000   0.000000008   0.000000000  -0.000000017  -0.000000000  -0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.000000004  -0.000000000  -0.000000011  -0.000000000   0.000000013   0.000000000   0.000000000  -0.000000000
                        -0.031199124  -0.000000000   0.001350282   0.000000000  -0.026106468  -0.000315309  -0.000000025   0.000000001

   14   14.1  1.5  1.5  -0.000064292   0.000000000  -0.020174054  -0.000000000  -0.028578985  -0.000345172   0.000000086  -0.000000003
                        -0.000000488   0.000000000   0.000000551   0.000000000   0.000000352   0.000000004   0.000000000  -0.000000000

   15   15.1  1.5  1.5   0.000000000   0.000000166   0.000000000  -0.000000007   0.000000000  -0.000000019  -0.006228623  -0.177231260
                        -0.000000000   0.000000220   0.000000000  -0.000000012   0.000000004  -0.000000338  -0.001835263  -0.052222443

   16   16.1  1.5  1.5  -0.000000164  -0.000000000  -0.000000102   0.000000000  -0.000000034  -0.000000000   0.697805322  -0.024523651
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000001466  -0.000000120

   17   17.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000001060   0.000000086
                        -0.000000023  -0.000000000  -0.000000114  -0.000000000   0.000000145   0.000000002   0.499492663  -0.017554156

   18    1.1  1.5  0.5   0.000000000  -0.000028086   0.000000000  -0.000190363  -0.000000401   0.000033193   0.000000005   0.000000156
                         0.000000000  -0.000037359  -0.000000000  -0.000326218  -0.000007016   0.000580897   0.000000002   0.000000046

   19    2.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000005659   0.000000000   0.000332537  -0.000000000  -0.000550540  -0.000006649  -0.000000626   0.000000022

   20    3.1  1.5  0.5  -0.000572630  -0.000000000   0.000066395   0.000000000  -0.000015676  -0.000000189  -0.000001626   0.000000057
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   21    4.1  1.5  0.5   0.000000000  -0.000069780  -0.000000000   0.000282777  -0.000000165   0.000013669  -0.000000010  -0.000000274
                         0.000000000  -0.000092818  -0.000000000   0.000484585  -0.000002889   0.000239226  -0.000000003  -0.000000081

   22    5.1  1.5  0.5  -0.000000000  -0.000029916  -0.000000000  -0.000584915  -0.000001968   0.000162985  -0.000000005  -0.000000132
                         0.000000000   0.000022491  -0.000000000   0.000341325   0.000000112  -0.000009313   0.000000016   0.000000447

   23    6.1  1.5  0.5   0.000058680  -0.000000000   0.000628474  -0.000000000  -0.000118069  -0.000001426   0.000000446  -0.000000016
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   24    7.1  1.5  0.5   0.000000000   0.000082762  -0.000000000   0.000039232  -0.000007332   0.000607054  -0.000000001  -0.000000033
                        -0.000000000  -0.000062220  -0.000000000  -0.000022893   0.000000419  -0.000034687   0.000000004   0.000000113

   25    8.1  1.5  0.5   0.000000000  -0.003624190   0.000000000   0.015624677   0.000462256  -0.038273129  -0.000000000  -0.000000004
                         0.000000000   0.002724635   0.000000000  -0.009118639  -0.000026420   0.002187499   0.000000000   0.000000012

   26    9.1  1.5  0.5   0.004214129  -0.000000000   0.039390650  -0.000000000  -0.007396647  -0.000089335  -0.000000019   0.000000001
                        -0.000000000   0.000000000   0.000000013   0.000000000  -0.000000016  -0.000000000   0.000000000   0.000000000

   27   10.1  1.5  0.5   0.000000001   0.000000000   0.000000017   0.000000000  -0.000000022  -0.000000000  -0.000000000   0.000000000
                         0.000338026  -0.000000000  -0.020877685   0.000000000   0.034563649   0.000417453   0.000000036  -0.000000001

   28   11.1  1.5  0.5  -0.035893105  -0.000000000   0.004754725   0.000000000  -0.001106313  -0.000013362   0.000000023  -0.000000001
                        -0.000000004  -0.000000000   0.000000003   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   29   12.1  1.5  0.5  -0.000000000   0.004707986   0.000000000  -0.010668287   0.000020406  -0.001689551  -0.000000002  -0.000000047
                        -0.000000000   0.006262383   0.000000000  -0.018281877   0.000357125  -0.029568702  -0.000000000  -0.000000014

   30   13.1  1.5  0.5   0.000000000   0.004167709   0.000000000   0.033315551  -0.000115059   0.009526486  -0.000000000  -0.000000001
                        -0.000000000  -0.003133232   0.000000000  -0.019441126   0.000006574  -0.000544328   0.000000000   0.000000002

   31   14.1  1.5  0.5  -0.000000000   0.000342569   0.000000000  -0.018556790  -0.000018025   0.001492384  -0.000000001  -0.000000015
                        -0.000000000   0.000455510  -0.000000000  -0.031799296  -0.000315271   0.026103298  -0.000000000  -0.000000004

   32   15.1  1.5  0.5  -0.000000243   0.000000000   0.000000015   0.000000000   0.000000032   0.000000000  -0.343509581   0.012072291
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000702   0.000000059

   33   16.1  1.5  0.5   0.000000000  -0.000000102   0.000000000   0.000000073   0.000000000  -0.000000005  -0.011184077  -0.318235329
                        -0.000000000  -0.000000135  -0.000000000   0.000000125   0.000000001  -0.000000079  -0.003295385  -0.093770300

   34   17.1  1.5  0.5  -0.000000000   0.000000052  -0.000000000   0.000000034   0.000000004  -0.000000349  -0.000116561  -0.003316785
                        -0.000000000  -0.000000039   0.000000000  -0.000000020  -0.000000000   0.000000020   0.000395595   0.011256386

   35    1.1  1.5 -0.5  -0.000046739  -0.000000000  -0.000377698   0.000000000   0.000581844   0.000007027   0.000000162  -0.000000006
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   36    2.1  1.5 -0.5  -0.000000000   0.000004523  -0.000000000  -0.000287212  -0.000006638   0.000549643   0.000000006   0.000000177
                        -0.000000000  -0.000003401  -0.000000000   0.000167601   0.000000379  -0.000031407  -0.000000021  -0.000000601

   37    3.1  1.5 -0.5  -0.000000000   0.000344101   0.000000000  -0.000033464  -0.000000011   0.000000894   0.000000055   0.000001560
                        -0.000000000   0.000457711   0.000000000  -0.000057345  -0.000000189   0.000015650   0.000000016   0.000000460

   38    4.1  1.5 -0.5  -0.000116123  -0.000000000   0.000561058   0.000000000   0.000239616   0.000002894  -0.000000285   0.000000010
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   39    5.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000037427   0.000000000  -0.000677221   0.000000000   0.000163250   0.000001972  -0.000000466   0.000000016

   40    6.1  1.5 -0.5  -0.000000000  -0.000035261   0.000000000  -0.000316756  -0.000000081   0.000006736  -0.000000015  -0.000000428
                        -0.000000000  -0.000046904  -0.000000000  -0.000542812  -0.000001424   0.000117877  -0.000000004  -0.000000126

   41    7.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000103542  -0.000000000   0.000045423   0.000000000   0.000608044   0.000007344  -0.000000118   0.000000004

   42    8.1  1.5 -0.5   0.000000011  -0.000000000  -0.000000809  -0.000000000   0.000000584   0.000000007  -0.000000000   0.000000000
                        -0.004534136   0.000000000   0.018090884  -0.000000000  -0.038335592  -0.000463010  -0.000000013   0.000000000

   43    9.1  1.5 -0.5  -0.000000000  -0.002532329   0.000000000  -0.019853191  -0.000005096   0.000421970   0.000000001   0.000000018
                        -0.000000000  -0.003368411  -0.000000000  -0.034021672  -0.000089190   0.007384600   0.000000000   0.000000005

   44   10.1  1.5 -0.5  -0.000000000  -0.000270190   0.000000000   0.018032034   0.000416774  -0.034507361  -0.000000000  -0.000000010
                         0.000000000   0.000203124   0.000000000  -0.010522523  -0.000023815   0.001971761   0.000000001   0.000000035

   45   11.1  1.5 -0.5  -0.000000000   0.021568673   0.000000000  -0.002396419  -0.000000762   0.000063111  -0.000000001  -0.000000022
                        -0.000000000   0.028689847   0.000000000  -0.004106651  -0.000013340   0.001104512  -0.000000000  -0.000000007

   46   12.1  1.5 -0.5   0.007834703   0.000000000  -0.021166941  -0.000000000  -0.029616933  -0.000357708  -0.000000049   0.000000002
                         0.000000004   0.000000000   0.000000009   0.000000000  -0.000000005  -0.000000000  -0.000000000   0.000000000

   47   13.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000002  -0.000000000   0.000000012   0.000000000  -0.000000000   0.000000000
                         0.005214109  -0.000000000   0.038573091   0.000000000   0.009542025   0.000115247  -0.000000002   0.000000000

   48   14.1  1.5 -0.5   0.000569950   0.000000000  -0.036817790   0.000000000   0.026145925   0.000315786  -0.000000016   0.000000001
                         0.000000097  -0.000000000  -0.000000406  -0.000000000   0.000000849   0.000000010   0.000000000  -0.000000000

   49   15.1  1.5 -0.5   0.000000000   0.000000146  -0.000000000  -0.000000008   0.000000000  -0.000000002   0.011580071   0.329503081
                         0.000000000   0.000000194   0.000000000  -0.000000013   0.000000000  -0.000000032   0.003412064   0.097090434

   50   16.1  1.5 -0.5  -0.000000169   0.000000000   0.000000145  -0.000000000  -0.000000079  -0.000000001  -0.331762858   0.011659465
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000668   0.000000056

   51   17.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000034  -0.000000003
                         0.000000065  -0.000000000   0.000000039   0.000000000  -0.000000349  -0.000000004  -0.011734874   0.000412410

   52    1.1  1.5 -1.5   0.000000000  -0.000160822   0.000000000  -0.000205779   0.000000224  -0.000018569  -0.000000010  -0.000000284
                         0.000000000  -0.000213919  -0.000000000  -0.000352637   0.000003925  -0.000324983  -0.000000003  -0.000000084

   53    2.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000643568   0.000000000   0.000012490  -0.000000000   0.000001473   0.000000018  -0.000000274   0.000000010

   54    3.1  1.5 -1.5   0.000069689  -0.000000000   0.000400133   0.000000000   0.000574526   0.000006939   0.000000384  -0.000000013
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   55    4.1  1.5 -1.5   0.000000000  -0.000326151   0.000000000  -0.000051515  -0.000000255   0.000021096   0.000000021   0.000000601
                         0.000000000  -0.000433834  -0.000000000  -0.000088279  -0.000004459   0.000369194   0.000000006   0.000000177

   56    5.1  1.5 -1.5  -0.000000000   0.000207006  -0.000000000   0.000153277  -0.000005940   0.000491805  -0.000000016  -0.000000455
                         0.000000000  -0.000155625  -0.000000000  -0.000089444   0.000000339  -0.000028102   0.000000054   0.000001544

   57    6.1  1.5 -1.5   0.000639839   0.000000000  -0.000036997  -0.000000000  -0.000069720  -0.000000842   0.000000089  -0.000000003
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   58    7.1  1.5 -1.5   0.000000000  -0.000445557  -0.000000000   0.000315007  -0.000000378   0.000031332   0.000000004   0.000000128
                        -0.000000000   0.000334964   0.000000000  -0.000183821   0.000000022  -0.000001790  -0.000000015  -0.000000434

   59    8.1  1.5 -1.5  -0.000000000   0.018154387   0.000000000  -0.021944560   0.000201263  -0.016663892  -0.000000000  -0.000000008
                         0.000000000  -0.013648247  -0.000000000   0.012805139  -0.000011493   0.000951554   0.000000001   0.000000028

   60    9.1  1.5 -1.5   0.040088874   0.000000000  -0.002682528  -0.000000000  -0.004917442  -0.000059392   0.000000000  -0.000000000
                         0.000000004   0.000000000  -0.000000000   0.000000000  -0.000000004  -0.000000000   0.000000000  -0.000000000

   61   10.1  1.5 -1.5   0.000000004   0.000000000  -0.000000001  -0.000000000  -0.000000003  -0.000000000  -0.000000000   0.000000000
                        -0.040395328  -0.000000000  -0.000797866   0.000000000  -0.000083361  -0.000001007   0.000000020  -0.000000001

   62   11.1  1.5 -1.5   0.004990539  -0.000000000   0.025090475   0.000000000   0.035996145   0.000434755  -0.000000010   0.000000000
                        -0.000000002  -0.000000000  -0.000000005  -0.000000000   0.000000008   0.000000000   0.000000000  -0.000000000

   63   12.1  1.5 -1.5  -0.000000000   0.022830970  -0.000000000   0.008601638   0.000008152  -0.000674978   0.000000001   0.000000038
                        -0.000000000   0.030368915   0.000000000   0.014740302   0.000142669  -0.011812474   0.000000000   0.000000011

   64   13.1  1.5 -1.5   0.000000000  -0.024937888   0.000000000   0.001166232   0.000314796  -0.026063953  -0.000000000  -0.000000007
                        -0.000000000   0.018747988   0.000000000  -0.000680562  -0.000017987   0.001489299   0.000000001   0.000000024

   65   14.1  1.5 -1.5  -0.000000000  -0.000039024   0.000000000  -0.010167397   0.000019687  -0.001629983   0.000000003   0.000000083
                        -0.000000000  -0.000051096   0.000000000  -0.017424594   0.000344610  -0.028532465   0.000000001   0.000000024

   66   15.1  1.5 -1.5  -0.000000276   0.000000000   0.000000014   0.000000000   0.000000338   0.000000004   0.184764995  -0.006493376
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000366  -0.000000030

   67   16.1  1.5 -1.5   0.000000000  -0.000000099  -0.000000000  -0.000000052   0.000000000  -0.000000002   0.023523754   0.669352507
                        -0.000000000  -0.000000131   0.000000000  -0.000000088   0.000000000  -0.000000034   0.006931265   0.197229532

   68   17.1  1.5 -1.5   0.000000000  -0.000000019   0.000000000  -0.000000099  -0.000000002   0.000000145   0.004961435   0.141177931
                        -0.000000000   0.000000014   0.000000000   0.000000058   0.000000000  -0.000000008  -0.016838425  -0.479125988

   69    1.1  0.5  0.5   0.651553993   0.000000001   0.011755235  -0.000000000  -0.004419358  -0.000053376   0.000000126  -0.000000004
                         0.000000067   0.000000000  -0.000000012  -0.000000000  -0.000000042  -0.000000001   0.000000000  -0.000000000

   70    2.1  0.5  0.5   0.000000034   0.000000000  -0.000000047  -0.000000000   0.000000026   0.000000000   0.000000000  -0.000000000
                        -0.011716960  -0.000000001   0.557954948   0.000000000   0.337115307   0.004071617   0.000000223  -0.000000008

   71    3.1  0.5  0.5   0.000000000  -0.120421706   0.000000000   0.393752476   0.005321092  -0.440567412   0.000000002   0.000000045
                        -0.000000000   0.090531538   0.000000001  -0.229772597  -0.000304050   0.025174210  -0.000000005  -0.000000152

   72    4.1  0.5  0.5  -0.000000000   0.022545307  -0.000000000   0.259896999   0.000273842  -0.022673111   0.000000001   0.000000028
                         0.000000000   0.029988913   0.000000001   0.445375582   0.004792424  -0.396795572   0.000000000   0.000000008

   73    5.1  0.5  0.5   0.000000001  -0.322295065  -0.000000000   0.126248173  -0.000188967   0.015645727   0.000000000   0.000000004
                         0.000000001  -0.428704870  -0.000000000   0.216346946  -0.003307078   0.273814202   0.000000000   0.000000001

   74    6.1  0.5  0.5  -0.000000000   0.404388160   0.000000000   0.311218040  -0.002406396   0.199240960  -0.000000000  -0.000000009
                         0.000000000  -0.304014010  -0.000000000  -0.181609756   0.000137500  -0.011384510   0.000000001   0.000000030

   75    7.1  0.5  0.5   0.002170416  -0.000000000   0.120866146   0.000000000   0.640965977   0.007741470  -0.000000187   0.000000007
                        -0.000000039  -0.000000000  -0.000000169  -0.000000000   0.000000245   0.000000003   0.000000000  -0.000000000

   76    1.1  0.5 -0.5  -0.000000001   0.391527990   0.000000000   0.005924715   0.000003046  -0.000252152   0.000000004   0.000000121
                        -0.000000001   0.520795966   0.000000000   0.010152994   0.000053289  -0.004412159   0.000000001   0.000000036

   77    2.1  0.5 -0.5   0.000000000  -0.009365505  -0.000000000   0.481905288  -0.004064987   0.336566321   0.000000002   0.000000063
                        -0.000000000   0.007040913   0.000000000  -0.281213473   0.000232272  -0.019231264  -0.000000008  -0.000000214

   78    3.1  0.5 -0.5  -0.000000002   0.000000000   0.000000268   0.000000001  -0.000000330  -0.000000005  -0.000000000   0.000000000
                         0.150656386   0.000000000  -0.455890841   0.000000000   0.441286058   0.005329772  -0.000000158   0.000000006

   79    4.1  0.5 -0.5  -0.037518339   0.000000000  -0.515660605   0.000000000   0.397442821   0.004800241  -0.000000029   0.000000001
                        -0.000000013  -0.000000000  -0.000000265  -0.000000001   0.000000340   0.000000005  -0.000000000  -0.000000000

   80    5.1  0.5 -0.5   0.536341285   0.000000001  -0.250488727  -0.000000001  -0.274260836  -0.003312473  -0.000000004   0.000000000
                         0.000000077   0.000000000   0.000000004   0.000000000  -0.000000072  -0.000000001  -0.000000000  -0.000000000

   81    6.1  0.5 -0.5   0.000000032   0.000000000   0.000000023   0.000000000  -0.000000054  -0.000000001   0.000000000   0.000000000
                        -0.505919264  -0.000000001  -0.360331475   0.000000000  -0.199565947  -0.002410321   0.000000031  -0.000000001

   82    7.1  0.5 -0.5   0.000000000   0.001304202   0.000000000   0.060917288  -0.000441628   0.036565190  -0.000000006  -0.000000179
                         0.000000000   0.001734866  -0.000000000   0.104392093  -0.007728863   0.639922160  -0.000000002  -0.000000053


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  1.5  1.5  -0.000000183  -0.000000000   0.000000000  -0.000000152   0.000000000   0.000000114  -0.000000000   0.000000214
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000001  -0.000000862  -0.000000195   0.000000000  -0.000000368  -0.000000000   0.000000323  -0.000000000
                        -0.000000001   0.000000444   0.000000993   0.000000000   0.000000182  -0.000000000  -0.000000722  -0.000000000

    3    3.1  1.5  1.5  -0.000000000   0.000000179  -0.000000579  -0.000000000   0.000000225   0.000000000   0.000000856   0.000000000
                        -0.000000000   0.000000348  -0.000000114  -0.000000000   0.000000457   0.000000000   0.000000383  -0.000000000

    4    4.1  1.5  1.5   0.000000230   0.000000000   0.000000000  -0.000000106   0.000000000  -0.000000187  -0.000000000  -0.000000204
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    5    5.1  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000018   0.000000000  -0.000000000   0.000000897   0.000000000  -0.000000595  -0.000000000  -0.000000919

    6    6.1  1.5  1.5  -0.000000000   0.000000269   0.000000865   0.000000000  -0.000000461  -0.000000000  -0.000000044  -0.000000000
                        -0.000000001   0.000000523   0.000000170   0.000000000  -0.000000936  -0.000000000  -0.000000020   0.000000000

    7    7.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000657   0.000000001  -0.000000000   0.000000661  -0.000000000   0.000000137   0.000000000   0.000000233

    8    8.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000005   0.000000000  -0.000000000   0.000000013   0.000000000  -0.000000017   0.000000000  -0.000000017

    9    9.1  1.5  1.5   0.000000000  -0.000000004  -0.000000014  -0.000000000   0.000000011   0.000000000   0.000000014   0.000000000
                         0.000000000  -0.000000007  -0.000000003  -0.000000000   0.000000023   0.000000000   0.000000006  -0.000000000

   10   10.1  1.5  1.5  -0.000000000   0.000000060   0.000000012   0.000000000   0.000000021   0.000000000  -0.000000020   0.000000000
                         0.000000000  -0.000000031  -0.000000063  -0.000000000  -0.000000010  -0.000000000   0.000000045   0.000000000

   11   11.1  1.5  1.5   0.000000000  -0.000000012  -0.000000018  -0.000000000  -0.000000000  -0.000000000  -0.000000014  -0.000000000
                         0.000000000  -0.000000024  -0.000000004  -0.000000000  -0.000000001   0.000000000  -0.000000006   0.000000000

   12   12.1  1.5  1.5  -0.000000017  -0.000000000   0.000000000  -0.000000049  -0.000000000   0.000000009   0.000000000   0.000000020
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   13   13.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000013  -0.000000000   0.000000000  -0.000000006   0.000000000  -0.000000016   0.000000000  -0.000000025

   14   14.1  1.5  1.5   0.000000061   0.000000000  -0.000000000   0.000000034   0.000000000  -0.000000041   0.000000000  -0.000000055
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   15   15.1  1.5  1.5  -0.000262407   0.226663779   0.340857216   0.000000049   0.286500371   0.000000059  -0.387452056  -0.000000152
                        -0.000509002   0.440202861   0.066891817   0.000000017   0.581112884   0.000000194  -0.173529474   0.000000255

   16   16.1  1.5  1.5   0.249399765   0.000288454   0.000000002  -0.016137786  -0.000000076   0.245089373  -0.000000031   0.374064687
                        -0.000000272   0.000000141  -0.000000001  -0.000000017   0.000000013   0.000000442  -0.000000259   0.000000547

   17   17.1  1.5  1.5   0.000000450  -0.000000242  -0.000000007  -0.000000121   0.000000013   0.000000442  -0.000000259   0.000000547
                         0.427255103   0.000494158  -0.000000050   0.343008663   0.000000076  -0.245091482   0.000000031  -0.374067905

   18    1.1  1.5  0.5   0.000000000  -0.000000117  -0.000000084  -0.000000000  -0.000000008  -0.000000000   0.000000154   0.000000000
                         0.000000000  -0.000000227  -0.000000016   0.000000000  -0.000000017   0.000000000   0.000000069   0.000000000

   19    2.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000482  -0.000000001  -0.000000000   0.000000604  -0.000000000   0.000000814  -0.000000000   0.000000402

   20    3.1  1.5  0.5   0.000000368   0.000000000   0.000000000  -0.000000965   0.000000000  -0.000000858  -0.000000000   0.000000606
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   21    4.1  1.5  0.5  -0.000000000   0.000000287  -0.000000063  -0.000000000   0.000000045   0.000000000  -0.000000464  -0.000000000
                        -0.000000001   0.000000557  -0.000000012  -0.000000000   0.000000092  -0.000000000  -0.000000208   0.000000000

   22    5.1  1.5  0.5  -0.000000000   0.000000116  -0.000000284   0.000000000  -0.000001053  -0.000000000   0.000000249  -0.000000000
                         0.000000000  -0.000000060   0.000001447   0.000000000   0.000000519   0.000000000  -0.000000556  -0.000000000

   23    6.1  1.5  0.5   0.000000319   0.000000000  -0.000000000   0.000001594  -0.000000000   0.000000695  -0.000000000  -0.000000126
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   24    7.1  1.5  0.5   0.000000000  -0.000000325  -0.000000212  -0.000000000  -0.000000776  -0.000000000  -0.000000046   0.000000000
                        -0.000000000   0.000000167   0.000001078   0.000000000   0.000000383   0.000000000   0.000000104   0.000000000

   25    8.1  1.5  0.5   0.000000000  -0.000000003  -0.000000005   0.000000000  -0.000000030  -0.000000000   0.000000006  -0.000000000
                        -0.000000000   0.000000001   0.000000028   0.000000000   0.000000015   0.000000000  -0.000000013  -0.000000000

   26    9.1  1.5  0.5  -0.000000001  -0.000000000   0.000000000  -0.000000023   0.000000000  -0.000000028  -0.000000000   0.000000010
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   27   10.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000024   0.000000000   0.000000000  -0.000000039   0.000000000  -0.000000050   0.000000000  -0.000000026

   28   11.1  1.5  0.5  -0.000000010  -0.000000000   0.000000000  -0.000000018  -0.000000000   0.000000010   0.000000000  -0.000000015
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   29   12.1  1.5  0.5  -0.000000000   0.000000036  -0.000000029  -0.000000000   0.000000018   0.000000000  -0.000000053  -0.000000000
                        -0.000000000   0.000000069  -0.000000006   0.000000000   0.000000036   0.000000000  -0.000000024   0.000000000

   30   13.1  1.5  0.5  -0.000000000   0.000000014   0.000000004  -0.000000000   0.000000010   0.000000000   0.000000004  -0.000000000
                         0.000000000  -0.000000007  -0.000000022  -0.000000000  -0.000000005  -0.000000000  -0.000000008  -0.000000000

   31   14.1  1.5  0.5  -0.000000000   0.000000021   0.000000020   0.000000000  -0.000000009   0.000000000  -0.000000025  -0.000000000
                        -0.000000000   0.000000042   0.000000004   0.000000000  -0.000000018  -0.000000000  -0.000000011   0.000000000

   32   15.1  1.5  0.5   0.308060177   0.000356297  -0.000000091   0.622057793   0.000000044  -0.141527536   0.000000018  -0.215966197
                        -0.000000309   0.000000176   0.000000013   0.000000238  -0.000000007  -0.000000255   0.000000149  -0.000000316

   33   16.1  1.5  0.5  -0.000308888   0.266813347  -0.010015577  -0.000000002  -0.040253936  -0.000000008   0.617889946   0.000000242
                        -0.000599162   0.518177205  -0.001965536  -0.000000001  -0.081647612  -0.000000026   0.276736503  -0.000000405

   34   17.1  1.5  0.5   0.000282467  -0.244287575  -0.117826548  -0.000000030   0.589357236   0.000000198   0.076366041  -0.000000111
                        -0.000145621   0.125785529   0.600402618   0.000000086  -0.290564986  -0.000000060  -0.170508038  -0.000000067

   35    1.1  1.5 -0.5  -0.000000256  -0.000000000  -0.000000000   0.000000086  -0.000000000  -0.000000019  -0.000000000   0.000000169
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   36    2.1  1.5 -0.5  -0.000000000   0.000000428   0.000000116  -0.000000000  -0.000000730  -0.000000000  -0.000000165   0.000000000
                         0.000000000  -0.000000220  -0.000000593  -0.000000000   0.000000360   0.000000000   0.000000367   0.000000000

   37    3.1  1.5 -0.5   0.000000000  -0.000000169  -0.000000947  -0.000000000   0.000000380   0.000000000  -0.000000553  -0.000000000
                         0.000000000  -0.000000327  -0.000000186  -0.000000000   0.000000770   0.000000000  -0.000000248   0.000000000

   38    4.1  1.5 -0.5   0.000000626   0.000000001  -0.000000000   0.000000064   0.000000000   0.000000103   0.000000000  -0.000000508
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   39    5.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000131   0.000000000  -0.000000000   0.000001474   0.000000000  -0.000001175  -0.000000000   0.000000609

   40    6.1  1.5 -0.5   0.000000000  -0.000000146   0.000001564   0.000000000  -0.000000307  -0.000000000   0.000000115   0.000000000
                         0.000000000  -0.000000284   0.000000307   0.000000000  -0.000000623  -0.000000000   0.000000052  -0.000000000

   41    7.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000365  -0.000000000  -0.000000000   0.000001098   0.000000000  -0.000000866   0.000000000  -0.000000114

   42    8.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000003  -0.000000000  -0.000000000   0.000000028   0.000000000  -0.000000033  -0.000000000   0.000000015

   43    9.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000023  -0.000000000   0.000000012   0.000000000  -0.000000009  -0.000000000
                        -0.000000000   0.000000001  -0.000000004   0.000000000   0.000000025   0.000000000  -0.000000004   0.000000000

   44   10.1  1.5 -0.5   0.000000000  -0.000000021  -0.000000007  -0.000000000   0.000000045   0.000000000   0.000000010  -0.000000000
                        -0.000000000   0.000000011   0.000000038   0.000000000  -0.000000022  -0.000000000  -0.000000023  -0.000000000

   45   11.1  1.5 -0.5  -0.000000000   0.000000005  -0.000000018  -0.000000000  -0.000000005  -0.000000000   0.000000014   0.000000000
                        -0.000000000   0.000000009  -0.000000004  -0.000000000  -0.000000009  -0.000000000   0.000000006  -0.000000000

   46   12.1  1.5 -0.5   0.000000078   0.000000000  -0.000000000   0.000000030  -0.000000000   0.000000040   0.000000000  -0.000000058
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   47   13.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000015   0.000000000   0.000000000  -0.000000023  -0.000000000   0.000000011   0.000000000   0.000000009

   48   14.1  1.5 -0.5   0.000000047   0.000000000   0.000000000  -0.000000020   0.000000000  -0.000000020   0.000000000  -0.000000027
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   49   15.1  1.5 -0.5   0.000163264  -0.141025364   0.610414552   0.000000087   0.062583232   0.000000013   0.197100762   0.000000077
                         0.000316689  -0.273884865   0.119791369   0.000000031   0.126938499   0.000000043   0.088276203  -0.000000129

   50   16.1  1.5 -0.5   0.582835292   0.000674097  -0.000000002   0.010206622   0.000000027  -0.091031379  -0.000000056   0.677031075
                        -0.000000557   0.000000332   0.000000001  -0.000000015  -0.000000004  -0.000000184  -0.000000469   0.000001003

   51   17.1  1.5 -0.5  -0.000000248   0.000000156  -0.000000013  -0.000000253  -0.000000034  -0.000001204   0.000000128  -0.000000260
                        -0.274769756  -0.000317794  -0.000000090   0.611854884  -0.000000204   0.657092050  -0.000000016   0.186828166

   52    1.1  1.5 -1.5   0.000000000  -0.000000084   0.000000149  -0.000000000   0.000000050  -0.000000000   0.000000195   0.000000000
                         0.000000000  -0.000000162   0.000000029  -0.000000000   0.000000102  -0.000000000   0.000000087   0.000000000

   53    2.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000970   0.000000001   0.000000000  -0.000001012  -0.000000000   0.000000411   0.000000000  -0.000000791

   54    3.1  1.5 -1.5  -0.000000392  -0.000000000   0.000000000  -0.000000590   0.000000000  -0.000000509   0.000000000  -0.000000938
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   55    4.1  1.5 -1.5  -0.000000000   0.000000105   0.000000104   0.000000000  -0.000000083  -0.000000000  -0.000000186  -0.000000000
                        -0.000000000   0.000000205   0.000000020   0.000000000  -0.000000168   0.000000000  -0.000000083   0.000000000

   56    5.1  1.5 -1.5  -0.000000000   0.000000016  -0.000000173   0.000000000  -0.000000534  -0.000000000  -0.000000376   0.000000000
                         0.000000000  -0.000000008   0.000000880   0.000000000   0.000000263   0.000000000   0.000000839   0.000000000

   57    6.1  1.5 -1.5  -0.000000588  -0.000000001  -0.000000000   0.000000881  -0.000000000   0.000001043   0.000000000   0.000000048
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   58    7.1  1.5 -1.5  -0.000000001   0.000000584  -0.000000127  -0.000000000   0.000000123   0.000000000   0.000000095  -0.000000000
                         0.000000000  -0.000000301   0.000000649   0.000000000  -0.000000060  -0.000000000  -0.000000213   0.000000000

   59    8.1  1.5 -1.5  -0.000000000   0.000000004  -0.000000003   0.000000000  -0.000000016  -0.000000000  -0.000000007   0.000000000
                         0.000000000  -0.000000002   0.000000013   0.000000000   0.000000008   0.000000000   0.000000016   0.000000000

   60    9.1  1.5 -1.5   0.000000008   0.000000000   0.000000000  -0.000000015   0.000000000  -0.000000026   0.000000000  -0.000000015
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   61   10.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000067  -0.000000000  -0.000000000   0.000000064   0.000000000  -0.000000023  -0.000000000   0.000000049

   62   11.1  1.5 -1.5   0.000000026   0.000000000   0.000000000  -0.000000018   0.000000000   0.000000001   0.000000000   0.000000015
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   63   12.1  1.5 -1.5   0.000000000  -0.000000008   0.000000048   0.000000000   0.000000004   0.000000000   0.000000018   0.000000000
                         0.000000000  -0.000000015   0.000000009  -0.000000000   0.000000008  -0.000000000   0.000000008  -0.000000000

   64   13.1  1.5 -1.5   0.000000000  -0.000000012   0.000000001  -0.000000000  -0.000000014  -0.000000000  -0.000000010   0.000000000
                        -0.000000000   0.000000006  -0.000000005  -0.000000000   0.000000007   0.000000000   0.000000022   0.000000000

   65   14.1  1.5 -1.5  -0.000000000   0.000000028  -0.000000034  -0.000000000  -0.000000018  -0.000000000  -0.000000050  -0.000000000
                        -0.000000000   0.000000055  -0.000000007  -0.000000000  -0.000000037  -0.000000000  -0.000000022   0.000000000

   66   15.1  1.5 -1.5  -0.495131324  -0.000572661  -0.000000051   0.347358830   0.000000200  -0.647900183  -0.000000035   0.424536893
                         0.000000465  -0.000000282   0.000000007   0.000000155  -0.000000033  -0.000001202  -0.000000295   0.000000643

   67   16.1  1.5 -1.5  -0.000132175   0.114171481   0.015835732   0.000000002   0.108378097   0.000000022   0.341388771   0.000000134
                        -0.000256389   0.221732081   0.003107687   0.000000001   0.219824905   0.000000074   0.152898975  -0.000000223

   68   17.1  1.5 -1.5  -0.000439227   0.379856658  -0.066054126  -0.000000016  -0.219826797  -0.000000074  -0.152900291   0.000000223
                         0.000226434  -0.195591008   0.336588466   0.000000048   0.108379030   0.000000022   0.341391709   0.000000134

   69    1.1  0.5  0.5   0.000000154   0.000000000  -0.000000000   0.000000022  -0.000000000   0.000000006  -0.000000000   0.000000180
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   70    2.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000094   0.000000000  -0.000000000   0.000000245  -0.000000000   0.000000085   0.000000000  -0.000000096

   71    3.1  0.5  0.5   0.000000000  -0.000000216   0.000000002   0.000000000  -0.000000089  -0.000000000  -0.000000028   0.000000000
                        -0.000000000   0.000000111  -0.000000012   0.000000000   0.000000044   0.000000000   0.000000062  -0.000000000

   72    4.1  0.5  0.5  -0.000000000   0.000000017   0.000000090   0.000000000  -0.000000144  -0.000000000  -0.000000024  -0.000000000
                        -0.000000000   0.000000033   0.000000018   0.000000000  -0.000000293  -0.000000000  -0.000000011   0.000000000

   73    5.1  0.5  0.5  -0.000000000   0.000000067   0.000000360   0.000000000   0.000000213   0.000000000  -0.000000151  -0.000000000
                        -0.000000000   0.000000130   0.000000071   0.000000000   0.000000433   0.000000000  -0.000000067   0.000000000

   74    6.1  0.5  0.5  -0.000000000   0.000000077  -0.000000004  -0.000000000   0.000000025  -0.000000000   0.000000004  -0.000000000
                         0.000000000  -0.000000039   0.000000020   0.000000000  -0.000000012  -0.000000000  -0.000000010   0.000000000

   75    7.1  0.5  0.5  -0.000000196  -0.000000000  -0.000000000   0.000000005  -0.000000000   0.000000237   0.000000000   0.000000131
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   76    1.1  0.5 -0.5  -0.000000000   0.000000071  -0.000000022  -0.000000000   0.000000003   0.000000000   0.000000164   0.000000000
                        -0.000000000   0.000000137  -0.000000004  -0.000000000   0.000000006  -0.000000000   0.000000074  -0.000000000

   77    2.1  0.5 -0.5  -0.000000000   0.000000083  -0.000000047  -0.000000000   0.000000077   0.000000000  -0.000000039   0.000000000
                         0.000000000  -0.000000043   0.000000241   0.000000000  -0.000000038  -0.000000000   0.000000087   0.000000000

   78    3.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000242   0.000000000   0.000000000   0.000000012  -0.000000000   0.000000099   0.000000000   0.000000068

   79    4.1  0.5 -0.5  -0.000000037  -0.000000000  -0.000000000   0.000000092  -0.000000000   0.000000327  -0.000000000   0.000000026
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   80    5.1  0.5 -0.5  -0.000000146  -0.000000000  -0.000000000   0.000000367   0.000000000  -0.000000482  -0.000000000   0.000000165
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   81    6.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000086  -0.000000000   0.000000000  -0.000000020  -0.000000000  -0.000000028  -0.000000000  -0.000000011

   82    7.1  0.5 -0.5   0.000000000  -0.000000090  -0.000000005  -0.000000000   0.000000105   0.000000000   0.000000119   0.000000000
                         0.000000000  -0.000000174  -0.000000001  -0.000000000   0.000000212   0.000000000   0.000000054  -0.000000000


   Nr   State  S   Sz       81            82

    1    1.1  1.5  1.5   0.000000367   0.000000000
                         0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000002
                        -0.000000000  -0.000000253

    3    3.1  1.5  1.5  -0.000000000   0.000000590
                        -0.000000000   0.000000005

    4    4.1  1.5  1.5  -0.000000730   0.000000000
                        -0.000000000   0.000000000

    5    5.1  1.5  1.5   0.000000000  -0.000000000
                        -0.000000019  -0.000000000

    6    6.1  1.5  1.5  -0.000000000  -0.000000351
                         0.000000000  -0.000000003

    7    7.1  1.5  1.5  -0.000000000   0.000000000
                         0.000001162  -0.000000000

    8    8.1  1.5  1.5   0.000000000  -0.000000000
                        -0.000000008  -0.000000000

    9    9.1  1.5  1.5   0.000000000   0.000000020
                        -0.000000000   0.000000000

   10   10.1  1.5  1.5   0.000000000  -0.000000000
                         0.000000000   0.000000018

   11   11.1  1.5  1.5  -0.000000000  -0.000000010
                         0.000000000  -0.000000000

   12   12.1  1.5  1.5  -0.000000049   0.000000000
                        -0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.000000000  -0.000000000
                        -0.000000036   0.000000000

   14   14.1  1.5  1.5  -0.000000093   0.000000000
                        -0.000000000   0.000000000

   15   15.1  1.5  1.5   0.000000000  -0.000017289
                        -0.000000000  -0.000000161

   16   16.1  1.5  1.5   0.500012379  -0.000000050
                         0.000000471  -0.000000065

   17   17.1  1.5  1.5   0.000000471  -0.000000065
                        -0.500000188   0.000000050

   18    1.1  1.5  0.5  -0.000000000   0.000000174
                         0.000000000   0.000000002

   19    2.1  1.5  0.5  -0.000000000  -0.000000000
                         0.000000441  -0.000000000

   20    3.1  1.5  0.5  -0.000000118  -0.000000000
                        -0.000000000   0.000000000

   21    4.1  1.5  0.5  -0.000000000  -0.000000449
                         0.000000000  -0.000000004

   22    5.1  1.5  0.5   0.000000000  -0.000000007
                         0.000000000   0.000000766

   23    6.1  1.5  0.5  -0.000001447   0.000000000
                        -0.000000000   0.000000000

   24    7.1  1.5  0.5  -0.000000000  -0.000000007
                         0.000000000   0.000000796

   25    8.1  1.5  0.5   0.000000000  -0.000000000
                         0.000000000   0.000000016

   26    9.1  1.5  0.5   0.000000006  -0.000000000
                        -0.000000000  -0.000000000

   27   10.1  1.5  0.5   0.000000000  -0.000000000
                        -0.000000027   0.000000000

   28   11.1  1.5  0.5   0.000000031  -0.000000000
                         0.000000000  -0.000000000

   29   12.1  1.5  0.5  -0.000000000  -0.000000059
                         0.000000000  -0.000000001

   30   13.1  1.5  0.5   0.000000000   0.000000000
                         0.000000000  -0.000000010

   31   14.1  1.5  0.5  -0.000000000  -0.000000029
                         0.000000000  -0.000000000

   32   15.1  1.5  0.5   0.577344688  -0.000000058
                         0.000000544  -0.000000075

   33   16.1  1.5  0.5   0.000000029   0.288670890
                        -0.000000037   0.002680355

   34   17.1  1.5  0.5  -0.000000037   0.002680104
                        -0.000000029  -0.288643888

   35    1.1  1.5 -0.5  -0.000000174  -0.000000000
                        -0.000000000  -0.000000000

   36    2.1  1.5 -0.5   0.000000000   0.000000004
                        -0.000000000  -0.000000441

   37    3.1  1.5 -0.5   0.000000000  -0.000000118
                         0.000000000  -0.000000001

   38    4.1  1.5 -0.5   0.000000449  -0.000000000
                         0.000000000  -0.000000000

   39    5.1  1.5 -0.5  -0.000000000   0.000000000
                         0.000000766  -0.000000000

   40    6.1  1.5 -0.5  -0.000000000  -0.000001447
                         0.000000000  -0.000000013

   41    7.1  1.5 -0.5  -0.000000000  -0.000000000
                         0.000000796  -0.000000000

   42    8.1  1.5 -0.5  -0.000000000   0.000000000
                         0.000000016  -0.000000000

   43    9.1  1.5 -0.5   0.000000000   0.000000006
                        -0.000000000   0.000000000

   44   10.1  1.5 -0.5   0.000000000  -0.000000000
                         0.000000000   0.000000027

   45   11.1  1.5 -0.5   0.000000000   0.000000031
                        -0.000000000   0.000000000

   46   12.1  1.5 -0.5   0.000000059  -0.000000000
                        -0.000000000  -0.000000000

   47   13.1  1.5 -0.5   0.000000000   0.000000000
                        -0.000000010  -0.000000000

   48   14.1  1.5 -0.5   0.000000029  -0.000000000
                        -0.000000000  -0.000000000

   49   15.1  1.5 -0.5   0.000000059   0.577319802
                        -0.000000075   0.005360506

   50   16.1  1.5 -0.5  -0.288683333   0.000000029
                        -0.000000272   0.000000038

   51   17.1  1.5 -0.5   0.000000272  -0.000000038
                        -0.288656331   0.000000029

   52    1.1  1.5 -1.5  -0.000000000  -0.000000367
                         0.000000000  -0.000000003

   53    2.1  1.5 -1.5  -0.000000000   0.000000000
                         0.000000253  -0.000000000

   54    3.1  1.5 -1.5   0.000000590   0.000000000
                         0.000000000  -0.000000000

   55    4.1  1.5 -1.5   0.000000000   0.000000730
                        -0.000000000   0.000000007

   56    5.1  1.5 -1.5  -0.000000000   0.000000000
                         0.000000000  -0.000000019

   57    6.1  1.5 -1.5  -0.000000351   0.000000000
                        -0.000000000   0.000000000

   58    7.1  1.5 -1.5   0.000000000  -0.000000011
                         0.000000000   0.000001162

   59    8.1  1.5 -1.5  -0.000000000   0.000000000
                         0.000000000  -0.000000008

   60    9.1  1.5 -1.5   0.000000020  -0.000000000
                        -0.000000000  -0.000000000

   61   10.1  1.5 -1.5  -0.000000000  -0.000000000
                        -0.000000018   0.000000000

   62   11.1  1.5 -1.5  -0.000000010   0.000000000
                        -0.000000000   0.000000000

   63   12.1  1.5 -1.5   0.000000000   0.000000049
                        -0.000000000   0.000000000

   64   13.1  1.5 -1.5  -0.000000000   0.000000000
                        -0.000000000  -0.000000036

   65   14.1  1.5 -1.5   0.000000000   0.000000093
                        -0.000000000   0.000000001

   66   15.1  1.5 -1.5  -0.000017290  -0.000000000
                        -0.000000000  -0.000000000

   67   16.1  1.5 -1.5  -0.000000051  -0.499990826
                         0.000000065  -0.004642494

   68   17.1  1.5 -1.5  -0.000000065   0.004642381
                        -0.000000051  -0.499978636

   69    1.1  0.5  0.5   0.000000083  -0.000000000
                        -0.000000000   0.000000000

   70    2.1  0.5  0.5  -0.000000000  -0.000000000
                         0.000000001   0.000000000

   71    3.1  0.5  0.5   0.000000000  -0.000000000
                        -0.000000000   0.000000007

   72    4.1  0.5  0.5  -0.000000000  -0.000000132
                         0.000000000  -0.000000001

   73    5.1  0.5  0.5   0.000000000   0.000000208
                        -0.000000000   0.000000002

   74    6.1  0.5  0.5  -0.000000000  -0.000000000
                         0.000000000   0.000000023

   75    7.1  0.5  0.5   0.000000085  -0.000000000
                         0.000000000  -0.000000000

   76    1.1  0.5 -0.5  -0.000000000  -0.000000083
                        -0.000000000  -0.000000001

   77    2.1  0.5 -0.5  -0.000000000  -0.000000000
                        -0.000000000   0.000000001

   78    3.1  0.5 -0.5   0.000000000  -0.000000000
                        -0.000000007  -0.000000000

   79    4.1  0.5 -0.5  -0.000000132   0.000000000
                        -0.000000000   0.000000000

   80    5.1  0.5 -0.5   0.000000208  -0.000000000
                         0.000000000  -0.000000000

   81    6.1  0.5 -0.5   0.000000000   0.000000000
                        -0.000000023   0.000000000

   82    7.1  0.5 -0.5  -0.000000000  -0.000000085
                         0.000000000  -0.000000001


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5  18.780%   0.000%  19.964%   0.174%   1.158%   0.042%   0.000%   1.942%   0.000%   3.668%
    2    2.1  1.5  1.5   0.000%   1.152%   0.005%   0.610%   0.969%  26.602%   0.202%   0.000%   6.185%   0.000%
    3    3.1  1.5  1.5   0.000%   4.132%   0.021%   2.430%   0.170%   4.662%   2.114%   0.000%  10.481%   0.000%
    4    4.1  1.5  1.5   8.909%   0.000%   3.895%   0.034%   0.044%   0.002%   0.000%  18.690%   0.000%   0.127%
    5    5.1  1.5  1.5  24.713%   0.000%  15.740%   0.137%   2.635%   0.096%   0.000%   2.632%   0.000%   0.201%
    6    6.1  1.5  1.5   0.000%   0.818%   0.051%   5.870%   0.945%  25.923%   1.235%   0.000%   0.693%   0.000%
    7    7.1  1.5  1.5   0.019%   0.000%   0.047%   0.000%   0.026%   0.001%   0.000%  26.688%   0.000%   4.336%
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
   18    1.1  1.5  0.5   0.000%   6.196%   0.000%   0.051%   0.515%  14.142%   4.224%   0.000%   0.611%   0.000%
   19    2.1  1.5  0.5   4.640%   0.000%   2.777%   0.024%   0.300%   0.011%   0.000%  24.989%   0.000%   3.006%
   20    3.1  1.5  0.5  13.946%   0.000%   7.133%   0.062%   0.293%   0.011%   0.000%   1.964%   0.000%  24.073%
   21    4.1  1.5  0.5   0.000%  15.299%   0.177%  20.335%   0.005%   0.125%   2.441%   0.000%   1.385%   0.000%
   22    5.1  1.5  0.5   0.000%   0.031%   0.000%   0.012%   0.675%  18.524%   2.089%   0.000%   3.974%   0.000%
   23    6.1  1.5  0.5   1.365%   0.000%  20.268%   0.177%   2.049%   0.075%   0.000%   7.452%   0.000%   4.526%
   24    7.1  1.5  0.5   0.000%   0.001%   0.000%   0.004%   0.000%   0.001%   3.339%   0.000%  36.733%   0.000%
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
   35    1.1  1.5 -0.5   6.196%   0.000%   0.051%   0.000%  14.142%   0.515%   0.000%   4.224%   0.000%   0.611%
   36    2.1  1.5 -0.5   0.000%   4.640%   0.024%   2.777%   0.011%   0.300%  24.989%   0.000%   3.006%   0.000%
   37    3.1  1.5 -0.5   0.000%  13.946%   0.062%   7.133%   0.011%   0.293%   1.964%   0.000%  24.073%   0.000%
   38    4.1  1.5 -0.5  15.299%   0.000%  20.335%   0.177%   0.125%   0.005%   0.000%   2.441%   0.000%   1.385%
   39    5.1  1.5 -0.5   0.031%   0.000%   0.012%   0.000%  18.524%   0.675%   0.000%   2.089%   0.000%   3.974%
   40    6.1  1.5 -0.5   0.000%   1.365%   0.177%  20.268%   0.075%   2.049%   7.452%   0.000%   4.526%   0.000%
   41    7.1  1.5 -0.5   0.001%   0.000%   0.004%   0.000%   0.001%   0.000%   0.000%   3.339%   0.000%  36.733%
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
   52    1.1  1.5 -1.5   0.000%  18.780%   0.174%  19.964%   0.042%   1.158%   1.942%   0.000%   3.668%   0.000%
   53    2.1  1.5 -1.5   1.152%   0.000%   0.610%   0.005%  26.602%   0.969%   0.000%   0.202%   0.000%   6.185%
   54    3.1  1.5 -1.5   4.132%   0.000%   2.430%   0.021%   4.662%   0.170%   0.000%   2.114%   0.000%  10.481%
   55    4.1  1.5 -1.5   0.000%   8.909%   0.034%   3.895%   0.002%   0.044%  18.690%   0.000%   0.127%   0.000%
   56    5.1  1.5 -1.5   0.000%  24.713%   0.137%  15.740%   0.096%   2.635%   2.632%   0.000%   0.201%   0.000%
   57    6.1  1.5 -1.5   0.818%   0.000%   5.870%   0.051%  25.923%   0.945%   0.000%   1.235%   0.000%   0.693%
   58    7.1  1.5 -1.5   0.000%   0.019%   0.000%   0.047%   0.001%   0.026%  26.688%   0.000%   4.336%   0.000%
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

    1    1.1  1.5  1.5   2.764%   0.004%   2.870%   0.001%   6.920%   0.001%   0.002%   0.000%   0.171%   9.177%
    2    2.1  1.5  1.5   0.031%  22.789%   0.000%   0.284%   0.000%   0.521%   0.001%   4.965%   6.486%   0.121%
    3    3.1  1.5  1.5   0.000%   0.120%   0.012%  45.096%   0.000%   1.608%   0.000%   0.510%   3.662%   0.068%
    4    4.1  1.5  1.5  11.224%   0.015%   1.922%   0.000%  21.439%   0.004%   0.446%   0.000%   0.184%   9.884%
    5    5.1  1.5  1.5   0.007%   0.000%   5.988%   0.002%   0.142%   0.000%   5.730%   0.001%   0.038%   2.059%
    6    6.1  1.5  1.5   0.005%   3.539%   0.000%   0.614%   0.003%  13.713%   0.003%  11.003%   5.429%   0.101%
    7    7.1  1.5  1.5   0.008%   0.000%   0.025%   0.000%   1.861%   0.000%  33.819%   0.008%   0.000%   0.002%
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
   18    1.1  1.5  0.5   0.034%  25.405%   0.000%   0.253%   0.000%   0.940%   0.004%  17.942%   9.699%   0.180%
   19    2.1  1.5  0.5   1.281%   0.002%  24.923%   0.006%   1.716%   0.000%   0.641%   0.000%   0.127%   6.817%
   20    3.1  1.5  0.5   1.935%   0.003%   0.575%   0.000%   2.758%   0.001%   4.541%   0.001%   0.060%   3.212%
   21    4.1  1.5  0.5   0.025%  18.668%   0.000%   0.010%   0.000%   2.007%   0.000%   1.386%   6.524%   0.121%
   22    5.1  1.5  0.5   0.015%  11.445%   0.000%   1.251%   0.005%  23.766%   0.002%   8.778%  18.697%   0.348%
   23    6.1  1.5  0.5   0.667%   0.001%  16.129%   0.004%   4.755%   0.001%   6.695%   0.002%   0.307%  16.522%
   24    7.1  1.5  0.5   0.000%   0.014%   0.000%   0.034%   0.003%  17.835%   0.001%   3.517%   0.007%   0.000%
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
   35    1.1  1.5 -0.5  25.405%   0.034%   0.253%   0.000%   0.940%   0.000%  17.942%   0.004%   0.180%   9.699%
   36    2.1  1.5 -0.5   0.002%   1.281%   0.006%  24.923%   0.000%   1.716%   0.000%   0.641%   6.817%   0.127%
   37    3.1  1.5 -0.5   0.003%   1.935%   0.000%   0.575%   0.001%   2.758%   0.001%   4.541%   3.212%   0.060%
   38    4.1  1.5 -0.5  18.668%   0.025%   0.010%   0.000%   2.007%   0.000%   1.386%   0.000%   0.121%   6.524%
   39    5.1  1.5 -0.5  11.445%   0.015%   1.251%   0.000%  23.766%   0.005%   8.778%   0.002%   0.348%  18.697%
   40    6.1  1.5 -0.5   0.001%   0.667%   0.004%  16.129%   0.001%   4.755%   0.002%   6.695%  16.522%   0.307%
   41    7.1  1.5 -0.5   0.014%   0.000%   0.034%   0.000%  17.835%   0.003%   3.517%   0.001%   0.000%   0.007%
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
   52    1.1  1.5 -1.5   0.004%   2.764%   0.001%   2.870%   0.001%   6.920%   0.000%   0.002%   9.177%   0.171%
   53    2.1  1.5 -1.5  22.789%   0.031%   0.284%   0.000%   0.521%   0.000%   4.965%   0.001%   0.121%   6.486%
   54    3.1  1.5 -1.5   0.120%   0.000%  45.096%   0.012%   1.608%   0.000%   0.510%   0.000%   0.068%   3.662%
   55    4.1  1.5 -1.5   0.015%  11.224%   0.000%   1.922%   0.004%  21.439%   0.000%   0.446%   9.884%   0.184%
   56    5.1  1.5 -1.5   0.000%   0.007%   0.002%   5.988%   0.000%   0.142%   0.001%   5.730%   2.059%   0.038%
   57    6.1  1.5 -1.5   3.539%   0.005%   0.614%   0.000%  13.713%   0.003%  11.003%   0.003%   0.101%   5.429%
   58    7.1  1.5 -1.5   0.000%   0.008%   0.000%   0.025%   0.000%   1.861%   0.008%  33.819%   0.002%   0.000%
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

    1    1.1  1.5  1.5   0.000%   8.265%   0.000%   0.250%   0.000%  18.369%   0.000%   5.478%   0.000%   0.000%
    2    2.1  1.5  1.5   0.039%   0.000%  14.766%   0.000%   1.063%   0.000%  13.209%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5  21.738%   0.001%   0.140%   0.000%   2.210%   0.000%   0.826%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   6.723%   0.000%   6.040%   0.000%   8.489%   0.000%   1.929%   0.000%   0.000%
    5    5.1  1.5  1.5   0.001%  13.347%   0.000%   2.269%   0.000%  18.934%   0.000%   5.326%   0.000%   0.000%
    6    6.1  1.5  1.5   0.607%   0.000%  15.355%   0.000%   1.496%   0.000%  12.597%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   1.057%   0.000%  22.061%   0.000%   7.953%   0.000%   2.087%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.050%   4.815%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.669%   0.152%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  19.633%   0.203%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.921%   0.030%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.073%   6.999%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   1.109%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5  11.859%   0.000%   3.264%   0.000%   2.416%   0.000%   2.263%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%  10.751%   0.000%   3.691%   0.000%  13.224%   0.000%   1.073%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.037%   0.000%  13.861%   0.000%   0.868%   0.000%  24.666%   0.000%   0.000%
   21    4.1  1.5  0.5   7.104%   0.000%   6.252%   0.000%   9.345%   0.000%   8.790%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   6.124%   0.000%   0.254%   0.000%   4.010%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.047%   0.000%   4.514%   0.000%  14.264%   0.000%   0.182%   0.000%   0.000%
   24    7.1  1.5  0.5  18.422%   0.001%   1.412%   0.000%   1.114%   0.000%  17.562%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  25.767%   0.267%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.826%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.136%  13.155%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.035%   3.377%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.408%   0.015%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.559%   0.006%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.736%   0.039%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%  11.859%   0.000%   3.264%   0.000%   2.416%   0.000%   2.263%   0.000%   0.000%
   36    2.1  1.5 -0.5  10.751%   0.000%   3.691%   0.000%  13.224%   0.000%   1.073%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.037%   0.000%  13.861%   0.000%   0.868%   0.000%  24.666%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   7.104%   0.000%   6.252%   0.000%   9.345%   0.000%   8.790%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   6.124%   0.000%   0.254%   0.000%   4.010%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.047%   0.000%   4.514%   0.000%  14.264%   0.000%   0.182%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.001%  18.422%   0.000%   1.412%   0.000%   1.114%   0.000%  17.562%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.267%  25.767%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.826%   0.009%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.155%   0.136%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.377%   0.035%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   1.408%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.559%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.039%   3.736%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   8.265%   0.000%   0.250%   0.000%  18.369%   0.000%   5.478%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.039%   0.000%  14.766%   0.000%   1.063%   0.000%  13.209%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.001%  21.738%   0.000%   0.140%   0.000%   2.210%   0.000%   0.826%   0.000%   0.000%
   55    4.1  1.5 -1.5   6.723%   0.000%   6.040%   0.000%   8.489%   0.000%   1.929%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5  13.347%   0.001%   2.269%   0.000%  18.934%   0.000%   5.326%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.607%   0.000%  15.355%   0.000%   1.496%   0.000%  12.597%   0.000%   0.000%
   58    7.1  1.5 -1.5   1.057%   0.000%  22.061%   0.000%   7.953%   0.000%   2.087%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.815%   0.050%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.152%  14.669%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.203%  19.633%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.030%   2.921%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.999%   0.073%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.109%   0.011%
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

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.001%  32.213%   0.000%   0.006%   0.002%   0.000%   0.000%   5.647%   0.013%   4.480%
    9    9.1  1.5  1.5   0.966%   0.000%  19.634%   0.001%   0.000%   0.004%   0.086%   0.000%   4.994%   0.014%
   10   10.1  1.5  1.5   6.213%   0.000%   6.632%   0.000%   0.009%   2.426%   0.621%   0.000%   3.658%   0.010%
   11   11.1  1.5  1.5   0.003%   0.000%   3.756%   0.000%   0.063%  17.104%   0.189%   0.000%  22.034%   0.062%
   12   12.1  1.5  1.5   0.000%   1.668%   0.001%   8.687%   6.542%   0.024%   0.000%   2.721%   0.024%   8.414%
   13   13.1  1.5  1.5   0.000%   0.180%   0.000%   0.126%   1.126%   0.004%   0.000%  33.291%   0.001%   0.369%
   14   14.1  1.5  1.5   0.001%  19.167%   0.000%   0.098%   0.464%   0.002%   0.000%  29.659%   0.006%   2.019%
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
   25    8.1  1.5  0.5   1.870%   0.000%   0.730%   0.000%   0.001%   0.218%   0.060%   0.000%  22.506%   0.063%
   26    9.1  1.5  0.5   0.000%   4.940%   0.000%   1.423%  24.189%   0.089%   0.000%   4.508%   0.047%  16.710%
   27   10.1  1.5  0.5   0.000%   6.808%   0.000%   5.355%   0.752%   0.003%   0.000%   9.545%   0.008%   2.740%
   28   11.1  1.5  0.5   0.000%  13.897%   0.001%  20.545%   2.847%   0.011%   0.000%   6.719%   0.003%   1.009%
   29   12.1  1.5  0.5   3.808%   0.000%   2.255%   0.000%   0.124%  33.454%   3.507%   0.000%   0.251%   0.001%
   30   13.1  1.5  0.5   2.805%   0.000%  21.048%   0.001%   0.039%  10.502%   1.614%   0.000%   7.484%   0.021%
   31   14.1  1.5  0.5   5.460%   0.000%   9.700%   0.001%   0.000%   0.001%   1.834%   0.000%   1.701%   0.005%
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
   42    8.1  1.5 -0.5   0.000%   1.870%   0.000%   0.730%   0.218%   0.001%   0.000%   0.060%   0.063%  22.506%
   43    9.1  1.5 -0.5   4.940%   0.000%   1.423%   0.000%   0.089%  24.189%   4.508%   0.000%  16.710%   0.047%
   44   10.1  1.5 -0.5   6.808%   0.000%   5.355%   0.000%   0.003%   0.752%   9.545%   0.000%   2.740%   0.008%
   45   11.1  1.5 -0.5  13.897%   0.000%  20.545%   0.001%   0.011%   2.847%   6.719%   0.000%   1.009%   0.003%
   46   12.1  1.5 -0.5   0.000%   3.808%   0.000%   2.255%  33.454%   0.124%   0.000%   3.507%   0.001%   0.251%
   47   13.1  1.5 -0.5   0.000%   2.805%   0.001%  21.048%  10.502%   0.039%   0.000%   1.614%   0.021%   7.484%
   48   14.1  1.5 -0.5   0.000%   5.460%   0.001%   9.700%   0.001%   0.000%   0.000%   1.834%   0.005%   1.701%
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
   59    8.1  1.5 -1.5  32.213%   0.001%   0.006%   0.000%   0.000%   0.002%   5.647%   0.000%   4.480%   0.013%
   60    9.1  1.5 -1.5   0.000%   0.966%   0.001%  19.634%   0.004%   0.000%   0.000%   0.086%   0.014%   4.994%
   61   10.1  1.5 -1.5   0.000%   6.213%   0.000%   6.632%   2.426%   0.009%   0.000%   0.621%   0.010%   3.658%
   62   11.1  1.5 -1.5   0.000%   0.003%   0.000%   3.756%  17.104%   0.063%   0.000%   0.189%   0.062%  22.034%
   63   12.1  1.5 -1.5   1.668%   0.000%   8.687%   0.001%   0.024%   6.542%   2.721%   0.000%   8.414%   0.024%
   64   13.1  1.5 -1.5   0.180%   0.000%   0.126%   0.000%   0.004%   1.126%  33.291%   0.000%   0.369%   0.001%
   65   14.1  1.5 -1.5  19.167%   0.001%   0.098%   0.000%   0.002%   0.464%  29.659%   0.000%   2.019%   0.006%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.415%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.212%   0.001%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.359%   0.001%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.177%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.166%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%
   76    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%
   77    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.415%   0.001%
   78    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.212%
   79    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.359%
   80    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.177%
   81    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.166%
   82    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   1.977%   0.635%   0.062%   8.848%   0.000%   1.268%  14.897%   0.028%   1.011%   0.001%
    9    9.1  1.5  1.5   4.028%  12.545%   5.332%   0.038%   1.599%   0.000%   0.033%  17.586%   0.000%   0.436%
   10   10.1  1.5  1.5   0.185%   0.575%  11.059%   0.078%  12.639%   0.000%   0.030%  15.753%   0.000%   0.065%
   11   11.1  1.5  1.5   4.950%  15.417%   3.793%   0.027%   0.337%   0.000%   0.003%   1.781%   0.005%   8.672%
   12   12.1  1.5  1.5   5.402%   1.735%   0.017%   2.431%   0.000%  24.236%   9.055%   0.017%   4.540%   0.003%
   13   13.1  1.5  1.5   0.159%   0.051%   0.180%  25.651%   0.000%   3.250%   8.044%   0.015%   7.193%   0.004%
   14   14.1  1.5  1.5   1.826%   0.586%   0.002%   0.269%   0.000%   0.003%   2.162%   0.004%   5.507%   0.003%
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
   25    8.1  1.5  0.5   3.962%  12.340%   0.020%   0.000%   0.194%   0.000%   0.002%   0.886%   0.013%  22.751%
   26    9.1  1.5  0.5   6.512%   2.091%   0.001%   0.207%   0.000%   2.271%   2.633%   0.005%   5.098%   0.003%
   27   10.1  1.5  0.5  11.698%   3.756%   0.036%   5.088%   0.000%   4.821%   0.526%   0.001%  20.223%   0.012%
   28   11.1  1.5  0.5   0.417%   0.134%   0.047%   6.685%   0.000%   1.472%  14.493%   0.027%   0.006%   0.000%
   29   12.1  1.5  0.5   0.451%   1.405%  10.230%   0.072%   1.698%   0.000%   0.010%   5.377%   0.004%   6.116%
   30   13.1  1.5  0.5   0.329%   1.024%  16.349%   0.115%   1.386%   0.000%   0.005%   2.889%   0.000%   0.160%
   31   14.1  1.5  0.5   1.083%   3.373%   1.991%   0.014%  43.469%   0.000%   0.006%   2.972%   0.010%  17.403%
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
   42    8.1  1.5 -0.5  12.340%   3.962%   0.000%   0.020%   0.000%   0.194%   0.886%   0.002%  22.751%   0.013%
   43    9.1  1.5 -0.5   2.091%   6.512%   0.207%   0.001%   2.271%   0.000%   0.005%   2.633%   0.003%   5.098%
   44   10.1  1.5 -0.5   3.756%  11.698%   5.088%   0.036%   4.821%   0.000%   0.001%   0.526%   0.012%  20.223%
   45   11.1  1.5 -0.5   0.134%   0.417%   6.685%   0.047%   1.472%   0.000%   0.027%  14.493%   0.000%   0.006%
   46   12.1  1.5 -0.5   1.405%   0.451%   0.072%  10.230%   0.000%   1.698%   5.377%   0.010%   6.116%   0.004%
   47   13.1  1.5 -0.5   1.024%   0.329%   0.115%  16.349%   0.000%   1.386%   2.889%   0.005%   0.160%   0.000%
   48   14.1  1.5 -0.5   3.373%   1.083%   0.014%   1.991%   0.000%  43.469%   2.972%   0.006%  17.403%   0.010%
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
   59    8.1  1.5 -1.5   0.635%   1.977%   8.848%   0.062%   1.268%   0.000%   0.028%  14.897%   0.001%   1.011%
   60    9.1  1.5 -1.5  12.545%   4.028%   0.038%   5.332%   0.000%   1.599%  17.586%   0.033%   0.436%   0.000%
   61   10.1  1.5 -1.5   0.575%   0.185%   0.078%  11.059%   0.000%  12.639%  15.753%   0.030%   0.065%   0.000%
   62   11.1  1.5 -1.5  15.417%   4.950%   0.027%   3.793%   0.000%   0.337%   1.781%   0.003%   8.672%   0.005%
   63   12.1  1.5 -1.5   1.735%   5.402%   2.431%   0.017%  24.236%   0.000%   0.017%   9.055%   0.003%   4.540%
   64   13.1  1.5 -1.5   0.051%   0.159%  25.651%   0.180%   3.250%   0.000%   0.015%   8.044%   0.004%   7.193%
   65   14.1  1.5 -1.5   0.586%   1.826%   0.269%   0.002%   0.003%   0.000%   0.004%   2.162%   0.003%   5.507%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.083%   0.027%   0.004%   0.562%   0.000%   0.084%   0.243%   0.000%   0.001%   0.000%
   70    2.1  0.5  0.5   0.019%   0.006%   0.000%   0.055%   0.000%   0.279%   0.075%   0.000%   0.015%   0.000%
   71    3.1  0.5  0.5   0.018%   0.056%   0.050%   0.000%   0.437%   0.000%   0.000%   0.068%   0.000%   0.238%
   72    4.1  0.5  0.5   0.077%   0.240%   0.036%   0.000%   0.063%   0.000%   0.000%   0.022%   0.000%   0.225%
   73    5.1  0.5  0.5   0.107%   0.333%   0.100%   0.001%   0.057%   0.000%   0.001%   0.292%   0.000%   0.033%
   74    6.1  0.5  0.5   0.038%   0.119%   0.344%   0.002%   0.104%   0.000%   0.000%   0.046%   0.000%   0.002%
   75    7.1  0.5  0.5   0.177%   0.057%   0.001%   0.200%   0.000%   0.332%   0.013%   0.000%   0.247%   0.000%
   76    1.1  0.5 -0.5   0.027%   0.083%   0.562%   0.004%   0.084%   0.000%   0.000%   0.243%   0.000%   0.001%
   77    2.1  0.5 -0.5   0.006%   0.019%   0.055%   0.000%   0.279%   0.000%   0.000%   0.075%   0.000%   0.015%
   78    3.1  0.5 -0.5   0.056%   0.018%   0.000%   0.050%   0.000%   0.437%   0.068%   0.000%   0.238%   0.000%
   79    4.1  0.5 -0.5   0.240%   0.077%   0.000%   0.036%   0.000%   0.063%   0.022%   0.000%   0.225%   0.000%
   80    5.1  0.5 -0.5   0.333%   0.107%   0.001%   0.100%   0.000%   0.057%   0.292%   0.001%   0.033%   0.000%
   81    6.1  0.5 -0.5   0.119%   0.038%   0.002%   0.344%   0.000%   0.104%   0.046%   0.000%   0.002%   0.000%
   82    7.1  0.5 -0.5   0.057%   0.177%   0.200%   0.001%   0.332%   0.000%   0.000%   0.013%   0.000%   0.247%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   2.809%   0.027%  15.213%   0.050%   5.565%   0.001%   0.000%   0.086%   0.144%   0.000%
    9    9.1  1.5  1.5   0.031%   3.242%   0.029%   8.782%   0.001%   5.244%   0.165%   0.001%   0.000%   0.000%
   10   10.1  1.5  1.5   0.051%   5.352%   0.027%   8.047%   0.001%   6.185%   0.152%   0.001%   0.000%   0.005%
   11   11.1  1.5  1.5   0.142%  14.809%   0.002%   0.508%   0.001%   2.556%   0.003%   0.000%   0.000%   0.292%
   12   12.1  1.5  1.5  10.810%   0.104%   3.397%   0.011%   2.322%   0.001%   0.001%   0.261%   0.168%   0.000%
   13   13.1  1.5  1.5   6.278%   0.060%   0.333%   0.001%  13.105%   0.003%   0.001%   0.168%   0.058%   0.000%
   14   14.1  1.5  1.5   8.214%   0.079%  12.214%   0.040%  16.361%   0.004%   0.000%   0.000%   0.031%   0.000%
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
   25    8.1  1.5  0.5   0.000%   0.012%   0.003%   0.787%   0.002%   6.829%   0.072%   0.000%   0.000%   0.146%
   26    9.1  1.5  0.5  13.259%   0.127%   8.929%   0.030%   5.547%   0.001%   0.000%   0.002%   0.338%   0.000%
   27   10.1  1.5  0.5   0.533%   0.005%   6.183%   0.020%   8.044%   0.002%   0.000%   0.000%   0.018%   0.000%
   28   11.1  1.5  0.5   2.489%   0.024%  11.741%   0.039%  13.713%   0.003%   0.001%   0.126%   0.006%   0.000%
   29   12.1  1.5  0.5   0.062%   6.513%   0.073%  21.964%   0.000%   0.871%   0.193%   0.001%   0.000%   0.000%
   30   13.1  1.5  0.5   0.170%  17.755%   0.005%   1.567%   0.003%  13.635%   0.121%   0.001%   0.000%   0.075%
   31   14.1  1.5  0.5   0.060%   6.224%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.073%
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
   42    8.1  1.5 -0.5   0.012%   0.000%   0.787%   0.003%   6.829%   0.002%   0.000%   0.072%   0.146%   0.000%
   43    9.1  1.5 -0.5   0.127%  13.259%   0.030%   8.929%   0.001%   5.547%   0.002%   0.000%   0.000%   0.338%
   44   10.1  1.5 -0.5   0.005%   0.533%   0.020%   6.183%   0.002%   8.044%   0.000%   0.000%   0.000%   0.018%
   45   11.1  1.5 -0.5   0.024%   2.489%   0.039%  11.741%   0.003%  13.713%   0.126%   0.001%   0.000%   0.006%
   46   12.1  1.5 -0.5   6.513%   0.062%  21.964%   0.073%   0.871%   0.000%   0.001%   0.193%   0.000%   0.000%
   47   13.1  1.5 -0.5  17.755%   0.170%   1.567%   0.005%  13.635%   0.003%   0.001%   0.121%   0.075%   0.000%
   48   14.1  1.5 -0.5   6.224%   0.060%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.073%   0.000%
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
   59    8.1  1.5 -1.5   0.027%   2.809%   0.050%  15.213%   0.001%   5.565%   0.086%   0.000%   0.000%   0.144%
   60    9.1  1.5 -1.5   3.242%   0.031%   8.782%   0.029%   5.244%   0.001%   0.001%   0.165%   0.000%   0.000%
   61   10.1  1.5 -1.5   5.352%   0.051%   8.047%   0.027%   6.185%   0.001%   0.001%   0.152%   0.005%   0.000%
   62   11.1  1.5 -1.5  14.809%   0.142%   0.508%   0.002%   2.556%   0.001%   0.000%   0.003%   0.292%   0.000%
   63   12.1  1.5 -1.5   0.104%  10.810%   0.011%   3.397%   0.001%   2.322%   0.261%   0.001%   0.000%   0.168%
   64   13.1  1.5 -1.5   0.060%   6.278%   0.001%   0.333%   0.003%  13.105%   0.168%   0.001%   0.000%   0.058%
   65   14.1  1.5 -1.5   0.079%   8.214%   0.040%  12.214%   0.004%  16.361%   0.000%   0.000%   0.000%   0.031%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.081%   0.001%   0.000%   0.000%   0.000%   0.000%   0.283%  56.123%   0.000%   0.000%
   70    2.1  0.5  0.5   0.232%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  52.576%   0.000%
   71    3.1  0.5  0.5   0.000%   0.021%   0.000%   0.000%   0.000%   0.000%   1.806%   0.009%   0.000%   0.038%
   72    4.1  0.5  0.5   0.001%   0.078%   0.000%   0.000%   0.000%   0.000%   0.319%   0.002%   0.000%   6.864%
   73    5.1  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%  20.942%   0.106%   0.000%  17.866%
   74    6.1  0.5  0.5   0.003%   0.275%   0.000%   0.000%   0.000%   0.000%  18.959%   0.096%   0.000%  16.288%
   75    7.1  0.5  0.5   0.066%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.011%   0.000%
   76    1.1  0.5 -0.5   0.001%   0.081%   0.000%   0.000%   0.000%   0.000%  56.123%   0.283%   0.000%   0.000%
   77    2.1  0.5 -0.5   0.002%   0.232%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  52.576%
   78    3.1  0.5 -0.5   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   1.806%   0.038%   0.000%
   79    4.1  0.5 -0.5   0.078%   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%   0.319%   6.864%   0.000%
   80    5.1  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.106%  20.942%  17.866%   0.000%
   81    6.1  0.5 -0.5   0.275%   0.003%   0.000%   0.000%   0.000%   0.000%   0.096%  18.959%  16.288%   0.000%
   82    7.1  0.5 -0.5   0.001%   0.066%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.011%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.003%   0.000%   0.005%   0.000%   0.052%   0.000%   0.065%   0.000%   0.028%   0.000%
    9    9.1  1.5  1.5   0.009%   0.209%   0.000%   0.007%   0.000%   0.161%   0.000%   0.001%   0.000%   0.002%
   10   10.1  1.5  1.5   0.010%   0.219%   0.000%   0.000%   0.000%   0.163%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.345%   0.000%   0.002%   0.000%   0.063%   0.000%   0.130%
   12   12.1  1.5  1.5   0.006%   0.000%   0.145%   0.000%   0.144%   0.000%   0.029%   0.000%   0.014%   0.000%
   13   13.1  1.5  1.5   0.001%   0.000%   0.179%   0.000%   0.097%   0.000%   0.000%   0.000%   0.068%   0.000%
   14   14.1  1.5  1.5   0.001%   0.000%   0.033%   0.000%   0.000%   0.000%   0.041%   0.000%   0.082%   0.000%
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
   25    8.1  1.5  0.5   0.010%   0.227%   0.000%   0.081%   0.000%   0.002%   0.000%   0.033%   0.000%   0.147%
   26    9.1  1.5  0.5   0.007%   0.000%   0.035%   0.000%   0.002%   0.000%   0.155%   0.000%   0.005%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.369%   0.000%   0.000%   0.000%   0.044%   0.000%   0.119%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.129%   0.000%   0.002%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.045%   0.000%   0.088%
   30   13.1  1.5  0.5   0.005%   0.122%   0.000%   0.043%   0.000%   0.003%   0.000%   0.149%   0.000%   0.009%
   31   14.1  1.5  0.5   0.022%   0.503%   0.000%   0.111%   0.000%   0.000%   0.000%   0.136%   0.000%   0.068%
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
   42    8.1  1.5 -0.5   0.227%   0.010%   0.081%   0.000%   0.002%   0.000%   0.033%   0.000%   0.147%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.007%   0.000%   0.035%   0.000%   0.002%   0.000%   0.155%   0.000%   0.005%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.369%   0.000%   0.000%   0.000%   0.044%   0.000%   0.119%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.129%   0.000%   0.002%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.045%   0.000%   0.088%   0.000%
   47   13.1  1.5 -0.5   0.122%   0.005%   0.043%   0.000%   0.003%   0.000%   0.149%   0.000%   0.009%   0.000%
   48   14.1  1.5 -0.5   0.503%   0.022%   0.111%   0.000%   0.000%   0.000%   0.136%   0.000%   0.068%   0.000%
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
   59    8.1  1.5 -1.5   0.000%   0.003%   0.000%   0.005%   0.000%   0.052%   0.000%   0.065%   0.000%   0.028%
   60    9.1  1.5 -1.5   0.209%   0.009%   0.007%   0.000%   0.161%   0.000%   0.001%   0.000%   0.002%   0.000%
   61   10.1  1.5 -1.5   0.219%   0.010%   0.000%   0.000%   0.163%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.345%   0.000%   0.002%   0.000%   0.063%   0.000%   0.130%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.006%   0.000%   0.145%   0.000%   0.144%   0.000%   0.029%   0.000%   0.014%
   64   13.1  1.5 -1.5   0.000%   0.001%   0.000%   0.179%   0.000%   0.097%   0.000%   0.000%   0.000%   0.068%
   65   14.1  1.5 -1.5   0.000%   0.001%   0.000%   0.033%   0.000%   0.000%   0.000%   0.041%   0.000%   0.082%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.023%   0.001%   0.000%   0.000%  42.452%   0.000%   0.014%   0.000%   0.002%   0.000%
   70    2.1  0.5  0.5   1.189%   0.053%   2.569%   0.000%   0.014%   0.000%  31.131%   0.000%  11.365%   0.002%
   71    3.1  0.5  0.5   1.990%  44.624%   0.000%   7.902%   0.000%   2.270%   0.000%  20.784%   0.003%  19.473%
   72    4.1  0.5  0.5   1.881%  42.191%   0.000%   5.114%   0.000%   0.141%   0.000%  26.591%   0.002%  15.796%
   73    5.1  0.5  0.5   0.001%   0.020%   0.000%  17.402%   0.000%  28.766%   0.000%   6.274%   0.001%   7.522%
   74    6.1  0.5  0.5   0.277%   6.204%   0.000%  14.513%   0.000%  25.595%   0.000%  12.984%   0.001%   3.983%
   75    7.1  0.5  0.5   0.184%   0.008%  51.145%   0.000%   0.000%   0.000%   1.461%   0.000%  41.084%   0.006%
   76    1.1  0.5 -0.5   0.001%   0.023%   0.000%   0.000%   0.000%  42.452%   0.000%   0.014%   0.000%   0.002%
   77    2.1  0.5 -0.5   0.053%   1.189%   0.000%   2.569%   0.000%   0.014%   0.000%  31.131%   0.002%  11.365%
   78    3.1  0.5 -0.5  44.624%   1.990%   7.902%   0.000%   2.270%   0.000%  20.784%   0.000%  19.473%   0.003%
   79    4.1  0.5 -0.5  42.191%   1.881%   5.114%   0.000%   0.141%   0.000%  26.591%   0.000%  15.796%   0.002%
   80    5.1  0.5 -0.5   0.020%   0.001%  17.402%   0.000%  28.766%   0.000%   6.274%   0.000%   7.522%   0.001%
   81    6.1  0.5 -0.5   6.204%   0.277%  14.513%   0.000%  25.595%   0.000%  12.984%   0.000%   3.983%   0.001%
   82    7.1  0.5 -0.5   0.008%   0.184%   0.000%  51.145%   0.000%   0.000%   0.000%   1.461%   0.006%  41.084%

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
   15   15.1  1.5  1.5   0.004%   3.414%   0.000%  24.516%  12.066%   0.000%  41.977%   0.000%  18.023%   0.000%
   16   16.1  1.5  1.5  48.693%   0.060%   6.220%   0.000%   0.000%   0.026%   0.000%   6.007%   0.000%  13.992%
   17   17.1  1.5  1.5  24.949%   0.031%  18.255%   0.000%   0.000%  11.765%   0.000%   6.007%   0.000%  13.993%
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
   32   15.1  1.5  0.5  11.800%   0.015%   9.490%   0.000%   0.000%  38.696%   0.000%   2.003%   0.000%   4.664%
   33   16.1  1.5  0.5   0.014%  11.007%   0.000%  33.970%   0.010%   0.000%   0.829%   0.000%  45.837%   0.000%
   34   17.1  1.5  0.5   0.000%   0.014%   0.000%   7.550%  37.437%   0.000%  43.177%   0.000%   3.490%   0.000%
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
   49   15.1  1.5 -0.5   0.015%  11.800%   0.000%   9.490%  38.696%   0.000%   2.003%   0.000%   4.664%   0.000%
   50   16.1  1.5 -0.5  11.007%   0.014%  33.970%   0.000%   0.000%   0.010%   0.000%   0.829%   0.000%  45.837%
   51   17.1  1.5 -0.5   0.014%   0.000%   7.550%   0.000%   0.000%  37.437%   0.000%  43.177%   0.000%   3.490%
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
   66   15.1  1.5 -1.5   3.414%   0.004%  24.516%   0.000%   0.000%  12.066%   0.000%  41.977%   0.000%  18.023%
   67   16.1  1.5 -1.5   0.060%  48.693%   0.000%   6.220%   0.026%   0.000%   6.007%   0.000%  13.992%   0.000%
   68   17.1  1.5 -1.5   0.031%  24.949%   0.000%  18.255%  11.765%   0.000%   6.007%   0.000%  13.993%   0.000%
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
   15   15.1  1.5  1.5   0.000%   0.000%
   16   16.1  1.5  1.5  25.001%   0.000%
   17   17.1  1.5  1.5  25.000%   0.000%
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
   32   15.1  1.5  0.5  33.333%   0.000%
   33   16.1  1.5  0.5   0.000%   8.334%
   34   17.1  1.5  0.5   0.000%   8.332%
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
   49   15.1  1.5 -0.5   0.000%  33.333%
   50   16.1  1.5 -0.5   8.334%   0.000%
   51   17.1  1.5 -0.5   8.332%   0.000%
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
   66   15.1  1.5 -1.5   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%  25.001%
   68   17.1  1.5 -1.5   0.000%  25.000%
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
              1      24      163.80       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1700(1)  1380   
                                         AOSYM     SMH     OPER     JKOP   

              2       8      482.89       700     1000      520     2100     2140     2141     5101     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI     MULTI   RHF-SCF       INT
 CPU TIMES  *      5647.43   4196.37    184.06   1260.82      2.81      1.54      0.79      0.83
 REAL TIME  *      5962.95 SEC
 DISK USED  *       519.50 MB (local),        5.40 GB (total)
 SF USED    *         3.92 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-DK energy=  -1392.489539733067

              CI              CI           MULTI           MULTI         RHF-SCF
  -1392.46394475  -1392.43392557  -1391.76937084  -1391.78928727  -1391.87897316
 **********************************************************************************************************************************
 Molpro calculation terminated
