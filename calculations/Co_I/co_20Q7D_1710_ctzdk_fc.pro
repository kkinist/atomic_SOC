
 Working directory              : /wrk/irikura/molpro.mFjCUJSCeg/
 Global scratch directory       : /wrk/irikura/molpro.mFjCUJSCeg/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.mFjCUJSCeg/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   10
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.00 sec
 ***,Co atom
                                                                                 ! 4F + 4F + 4P + 4P  + 2F
 memory,2000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Co}
 
 basis=cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf,so-sci;wf,nelec=27,sym=1, spin=3}
 
                                                                                 ! weights to avoid skipping terms
 {multi
     closed,2,3
     wf,nelec=27,sym=1,spin=3; state,20;
       weight,1,1,1,1,1,1,1, 5,5,5, 5,5,5,5,5,5,5, 1,1,1
     wf,nelec=27,sym=1,spin=1; state,7;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3; state,20;save,5101.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,7;save,5102.2}
 hlsdiag(21) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ls,5101.2,5102.2;print,vls=0,hls=0}
 
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
  64 bit mpp version                                                                     DATE: 03-Feb-24          TIME: 09:53:29  
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

     16.515 MB (compressed) written to integral file ( 15.5%)

     Node minimum: 0.786 MB, node maximum: 2.621 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     701287.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     701287      RECORD LENGTH: 524288

 Memory used in sort:       1.26 MW

 SORT1 READ    12883698. AND WROTE      138706. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.09 SEC
 SORT2 READ     1353984. AND WROTE     7035726. INTEGRALS IN     30 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.03 SEC

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
 CPU TIMES  *         1.02      0.85
 REAL TIME  *         1.90 SEC
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
    1    1    0   -1391.62971459   -1391.62971459    1.20096390    1.20096390    0.00000000    0    0.41E+00      0.04
    2    1    0   -1391.61082600       0.01888859    1.38041741    1.38041741    0.00000000    0    0.26E+00      0.08
    3    1    0   -1391.66736614      -0.05654014    1.21633405    1.21633405    0.00000000    0    0.28E+00      0.12
    4    1    0   -1391.66074985       0.00661629    1.15414341    1.15414341    0.00000000    0    0.21E+00      0.15
    5    1    0   -1391.70114433      -0.04039448    0.95665811    0.95665811    0.00000000    1    0.90E-01      0.18
    6    2    0   -1391.75349463      -0.05235030    0.16608044    0.16608044    0.00000000    2    0.31E+00      0.23
    7    2    0   -1391.76551820      -0.01202358    0.10607454    0.10607454    0.00000000    2    0.36E+00      0.31
    8    2    0   -1391.79235385      -0.02683565    0.21140653    0.21140653    0.00000000    2    0.37E+00      0.35
    9    2    0   -1391.83305733      -0.04070349    0.28320509    0.28320509    0.00000000    3    0.41E+00      0.40
   10    2    0   -1391.83730606      -0.00424873    0.24465354    0.24465354    0.00000000    4    0.33E+00      0.44
   11    2    0   -1391.85973478      -0.02242872    0.21148785    0.21148785    0.00000000    5    0.32E+00      0.48
   12    2    0   -1391.87054721      -0.01081243    0.16435204    0.16435204    0.00000000    6    0.78E-01      0.52
   13    2    0   -1391.87679027      -0.00624307    0.08658643    0.08658643    0.00000000    7    0.45E-01      0.56
   14    2    0   -1391.87856019      -0.00176992    0.05076041    0.05076041    0.00000000    8    0.24E-01      0.60
   15    2    0   -1391.87895161      -0.00039142    0.01166178    0.01166178    0.00000000    9    0.37E-02      0.64
   16    2    0   -1391.87897172      -0.00002011    0.00195075    0.00195075    0.00000000   10    0.11E-02      0.68
   17    2    0   -1391.87897307      -0.00000134    0.00068808    0.00068808    0.00000000   10    0.31E-03      0.72
   18    2    0   -1391.87897316      -0.00000009    0.00018987    0.00018987    0.00000000   10    0.11E-03      0.76
   19    2    0   -1391.87897316      -0.00000001    0.00004494    0.00004494    0.00000000   10    0.68E-04      0.80
   20    2    0   -1391.87897316      -0.00000000    0.00002084    0.00002084    0.00000000   10    0.31E-04      0.84
   21    2    0   -1391.87897316      -0.00000000    0.00000591    0.00000591    0.00000000   10    0.65E-05      0.88

 CONVERGENCE REACHED!  Final gradient:     0.00000103 ( 0.10E-05)
                       Final energy:   -1391.87897316
 

 Final alpha occupancy:   9   6
 Final beta  occupancy:   6   6

 !RHF STATE 1.1 Energy              -1391.878973161692
  RHF One-electron energy           -1927.325496030394
  RHF Two-electron energy             535.446522868702
  RHF Kinetic energy                 1454.770722761317
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.956768617477

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.76981     1  1  s    0.97814
    2.1     2.00000   -35.46442     1  2  s    0.99654
    3.1     2.00000    -4.62008     1  3  s    0.98440
    4.1     2.00000    -0.61914     1  1  d2+ -0.57971    1  1  d1-  0.79113
    5.1     2.00000    -0.61914     1  1  d2- -0.57449    1  1  d1+  0.79502
    6.1     2.00000    -0.27156     1  4  s    1.01964
    7.1     1.00000    -0.71737     1  1  d0  -0.99513
    8.1     1.00000    -0.71737     1  1  d2-  0.80636    1  1  d1+  0.57290
    9.1     1.00000    -0.71737     1  1  d2+  0.80064    1  1  d1-  0.57747
    1.2     2.00000   -30.23332     1  1  pz   0.99914
    2.2     2.00000   -30.23332     1  1  px   0.99910
    3.2     2.00000   -30.23332     1  1  py   0.99866
    4.2     2.00000    -3.02535     1  2  pz   0.99280
    5.2     2.00000    -3.02535     1  2  px   0.99765
    6.2     2.00000    -3.02535     1  2  py   0.99255


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
 CPU TIMES  *         1.84      0.82      0.85
 REAL TIME  *         2.82 SEC
 DISK USED  *        30.06 MB (local),      348.98 MB (total)
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
 Number of states:            20
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 State symmetry 2

 Number of active electrons:  17    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL (state 1.1)
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.242D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.156D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.513D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.510D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.322D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.896D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.468D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.493D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 1 2 3 5 1   2 3 5 6 4 1 2 3 5 6   4 1 2 3 5 6 4 71310   812 9111415 1 2 3 5
                                        6 4 7131012 8 91114  15 2 3 5 4 6 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.442D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.447D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.625D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.114D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.503D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.125D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 6 4 5 710   8 9 3 1 2 6 4 5 710   8 9 3 1 2 6 4 5 710
                                        8 9 3 1 2

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.01493   0.01493   0.01493   0.01493   0.01493   0.01493   0.01493   0.07463
                                          0.07463   0.07463   0.07463   0.07463   0.07463   0.07463   0.07463   0.07463
                                          0.07463   0.01493   0.01493   0.01493
 Weight factors for state symmetry  2:    0.01493   0.01493   0.01493   0.01493   0.01493   0.01493   0.01493
 
 Number of orbital rotations:  689  ( 23 closed/active, 213 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3426
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0  -1391.72102125   -1391.77851527   -0.05749402    0.65167265 0.00001123 0.00000000  0.15E+00      0.46
   2    9   16    0  -1391.78082389   -1391.78102114   -0.00019726    0.03288358 0.00000370 0.00000000  0.11E-01      1.28
   3    6   12    0  -1391.78102162   -1391.78102162   -0.00000000    0.00010750 0.00000086 0.00000000  0.49E-04      1.92
   4   22   44    0  -1391.78102162   -1391.78102162   -0.00000000    0.00000077 0.00000009 0.00000000  0.50E-06      3.55

 CONVERGENCE REACHED!  Final gradient:    0.00000011 ( 0.11E-06)
                       Final energy:  -1391.78102162
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy             -1391.819317270864
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12983312
 One electron energy                         -1920.00232160
 Two electron energy                           528.18300433
 Virial ratio                                    1.95978945
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy             -1391.819317268198
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12983300
 One electron energy                         -1920.00232138
 Two electron energy                           528.18300411
 Virial ratio                                    1.95978945
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy             -1391.819317266852
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12983294
 One electron energy                         -1920.00232127
 Two electron energy                           528.18300401
 Virial ratio                                    1.95978945
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy             -1391.819317264358
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12983283
 One electron energy                         -1920.00232108
 Two electron energy                           528.18300381
 Virial ratio                                    1.95978945
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy             -1391.819317264343
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12983282
 One electron energy                         -1920.00232104
 Two electron energy                           528.18300378
 Virial ratio                                    1.95978945
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy             -1391.819317263022
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12983272
 One electron energy                         -1920.00232089
 Two electron energy                           528.18300363
 Virial ratio                                    1.95978945
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy             -1391.819317259852
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12983258
 One electron energy                         -1920.00232064
 Two electron energy                           528.18300338
 Virial ratio                                    1.95978945
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy             -1391.794383753126
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.83188437
 One electron energy                         -1936.25538682
 Two electron energy                           544.46100307
 Virial ratio                                    1.95535689
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy             -1391.794383751222
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.83188450
 One electron energy                         -1936.25538704
 Two electron energy                           544.46100329
 Virial ratio                                    1.95535689
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy            -1391.794383750122
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.83188456
 One electron energy                         -1936.25538714
 Two electron energy                           544.46100339
 Virial ratio                                    1.95535689
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy            -1391.794383748659
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.83188467
 One electron energy                         -1936.25538734
 Two electron energy                           544.46100359
 Virial ratio                                    1.95535689
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy            -1391.794383747450
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.83188468
 One electron energy                         -1936.25538737
 Two electron energy                           544.46100363
 Virial ratio                                    1.95535689
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy            -1391.794383745078
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.83188478
 One electron energy                         -1936.25538752
 Two electron energy                           544.46100378
 Virial ratio                                    1.95535689
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy            -1391.794383742962
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.83188492
 One electron energy                         -1936.25538776
 Two electron energy                           544.46100402
 Virial ratio                                    1.95535689
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy            -1391.748226773090
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12264065
 One electron energy                         -1919.98594340
 Two electron energy                           528.23771662
 Virial ratio                                    1.95974519
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy            -1391.748226771650
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12264052
 One electron energy                         -1919.98594318
 Two electron energy                           528.23771641
 Virial ratio                                    1.95974519
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy            -1391.748226769120
 Nuclear energy                                  0.00000000
 Kinetic energy                               1450.12264024
 One electron energy                         -1919.98594270
 Two electron energy                           528.23771594
 Virial ratio                                    1.95974519
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 18.1 Quartet
 ==============================
 !MCSCF STATE 18.1 Quartet Energy            -1391.723821540755
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82354911
 One electron energy                         -1936.23640099
 Two electron energy                           544.51257945
 Virial ratio                                    1.95531392
 
 !MCSCF STATE 18.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 19.1 Quartet
 ==============================
 !MCSCF STATE 19.1 Quartet Energy            -1391.723821537935
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82354924
 One electron energy                         -1936.23640121
 Two electron energy                           544.51257967
 Virial ratio                                    1.95531392
 
 !MCSCF STATE 19.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 20.1 Quartet
 ==============================
 !MCSCF STATE 20.1 Quartet Energy            -1391.723821530869
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82354951
 One electron energy                         -1936.23640168
 Two electron energy                           544.51258015
 Virial ratio                                    1.95531392
 
 !MCSCF STATE 20.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy             -1391.770704379206
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82628746
 One electron energy                         -1936.23197908
 Two electron energy                           544.46127470
 Virial ratio                                    1.95534431
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy             -1391.770704376792
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82628759
 One electron energy                         -1936.23197930
 Two electron energy                           544.46127492
 Virial ratio                                    1.95534431
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy             -1391.770704375453
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82628764
 One electron energy                         -1936.23197940
 Two electron energy                           544.46127503
 Virial ratio                                    1.95534431
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy             -1391.770704373551
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82628775
 One electron energy                         -1936.23197960
 Two electron energy                           544.46127522
 Virial ratio                                    1.95534431
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy             -1391.770704372235
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82628776
 One electron energy                         -1936.23197963
 Two electron energy                           544.46127526
 Virial ratio                                    1.95534431
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy             -1391.770704369595
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82628786
 One electron energy                         -1936.23197978
 Two electron energy                           544.46127541
 Virial ratio                                    1.95534431
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy             -1391.770704366934
 Nuclear energy                                  0.00000000
 Kinetic energy                               1456.82628800
 One electron energy                         -1936.23198002
 Two electron energy                           544.46127565
 Virial ratio                                    1.95534431
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     3.887235314793
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     7.533508370749
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     1.470804658718
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     6.112680522050
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     4.000082700757
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     2.529213448420
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     2.466428425414
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     4.424799019036
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     8.332792925062
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     1.916445514351
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     5.575303882358
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     4.000000000493
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     2.083553566096
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     1.667208323717
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     0.000000002902
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     0.999999999749
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     0.999999999941
 !MCSCF expec    <18.1 Quartet|LXLX|18.1 Quartet>     0.000000003609
 !MCSCF expec    <19.1 Quartet|LXLX|19.1 Quartet>     0.999999997040
 !MCSCF expec    <20.1 Quartet|LXLX|20.1 Quartet>     0.999999999858
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     4.327987403143
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     8.249177837146
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     1.847219241156
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     5.671854037397
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     3.999999984998
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     2.152879505477
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     1.750825338765
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     4.113619026504
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     0.184770346553
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     8.999543570584
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     5.886307151581
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     4.000074817424
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     1.000456999666
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     3.815212515698
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     3.586935657508
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.512571834611
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     8.911378729219
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     6.412967047740
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     3.999999995008
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     1.088621127168
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     3.487430211122
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     0.999999997462
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     0.000000000257
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     0.999999999980
 !MCSCF expec    <18.1 Quartet|LYLY|18.1 Quartet>     0.999999996466
 !MCSCF expec    <19.1 Quartet|LYLY|19.1 Quartet>     0.000000002961
 !MCSCF expec    <20.1 Quartet|LYLY|20.1 Quartet>     0.999999999971
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     3.679043756723
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     0.464400251179
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     8.938056358252
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     6.321108037530
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     3.999999939330
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     1.061908541497
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     3.535603026094
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     3.999145658704
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     4.281721282698
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     1.529651770699
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     0.001012326370
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     3.999842481819
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     8.470329551914
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     5.718359058888
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     3.988265323456
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     3.154635240327
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     1.172175756430
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     0.011729069902
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     4.000000004499
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     8.827825306736
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     6.845361465161
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     0.999999999636
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     0.999999999995
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     0.000000000080
 !MCSCF expec    <18.1 Quartet|LZLZ|18.1 Quartet>     0.999999999925
 !MCSCF expec    <19.1 Quartet|LZLZ|19.1 Quartet>     1.000000000000
 !MCSCF expec    <20.1 Quartet|LZLZ|20.1 Quartet>     0.000000000171
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     3.992968840134
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     3.286421911675
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     1.214724400592
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     0.007037925073
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     4.000000075672
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     8.785211953025
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     6.713571635141
 
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
 !MCSCF expec    <18.1 Quartet|L**2|18.1 Quartet>     2.000000000000
 !MCSCF expec    <19.1 Quartet|L**2|19.1 Quartet>     2.000000000000
 !MCSCF expec    <20.1 Quartet|L**2|20.1 Quartet>     2.000000000000
 !MCSCF expec      <1.1 Doublet|L**2|1.1 Doublet>    12.000000000000
 !MCSCF expec      <2.1 Doublet|L**2|2.1 Doublet>    12.000000000000
 !MCSCF expec      <3.1 Doublet|L**2|3.1 Doublet>    12.000000000000
 !MCSCF expec      <4.1 Doublet|L**2|4.1 Doublet>    12.000000000000
 !MCSCF expec      <5.1 Doublet|L**2|5.1 Doublet>    12.000000000000
 !MCSCF expec      <6.1 Doublet|L**2|6.1 Doublet>    12.000000000000
 !MCSCF expec      <7.1 Doublet|L**2|7.1 Doublet>    12.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 4 2 5 6 1 1   2 3 6 4 5 1 3 2 6 4   5 1 6 2 3 4 511 712   815141013 9 1 6 2 3
                                        5 41112 7 814151013   9 6 2 5 3 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 2 3 2 3 1 2   3 1 2 3 1 5 8 6 7 9  10 4 2 1 3 5 6 810 9   7 4 2 3 1 5 610 8 7
                                        9 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -285.63298     1  1  s    0.97814
    2.1     2.00000   -34.99380     1  2  s    0.99276
    3.1     2.00000    -4.79005     1  3  s    0.98643
    4.1     1.53457    -0.28008     1  1  d2-  1.00035
    5.1     1.53457    -0.28008     1  1  d1+  1.00035
    6.1     1.53457    -0.28008     1  1  d0  -1.00035
    7.1     1.53457    -0.28008     1  1  d2+  1.00035
    8.1     1.53456    -0.28008     1  1  d1-  1.00035
    9.1     1.32854    -0.14886     1  4  s    1.01151
    1.2     2.00000   -30.00987     1  1  py   0.99896
    2.2     2.00000   -30.00987     1  1  pz   0.99896
    3.2     2.00000   -30.00987     1  1  px   0.99896
    4.2     1.99954    -2.96074     1  2  px   0.99975
    5.2     1.99954    -2.96074     1  2  py   0.99975
    6.2     1.99954    -2.96074     1  2  pz   0.99975
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 222aa2a 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2aa22a2 222      0.00001034     -0.00000590      0.00003846     -0.00628198      0.99951663      0.00008833     -0.00003998
 22a2aa2 222      0.99942963     -0.00001065     -0.00002991      0.01460757      0.00008147     -0.00001421     -0.00000375
 2a2a22a 222     -0.00000000     -0.00000000      0.00000000      0.00000001      0.00000000     -0.00000000      0.00000000
 2a2aa22 222     -0.01306560      0.00002073      0.00002105      0.89389938      0.00561830      0.00004548     -0.00002980
 2a22a2a 222     -0.00000000      0.00000000     -0.00000000     -0.00000001     -0.00000000     -0.00000000      0.00000000
 2a2a2a2 222      0.00000327      0.03223613      0.00000643      0.00002885      0.00003611      0.00000646      0.89343112
 22aa2a2 222     -0.00653280      0.00001037      0.00001052      0.44694967      0.00280915      0.00002274     -0.00001490
 22a22aa 222     -0.00000001      0.00000000     -0.00000000     -0.00000001     -0.00000000     -0.00000000      0.00000000
 22a2a2a 222     -0.00000000     -0.00000002     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001
 22aaa22 222      0.00001023      0.87312002      0.00000103     -0.00001378      0.00001275      0.00000577      0.19214531
 2a222aa 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000002
 2aaa222 222      0.00000181     -0.00000431     -0.34717670     -0.00003334     -0.00005966      0.82384870     -0.00000330
 2222aaa 222      0.00000000      0.00000000      0.00000001     -0.00000000     -0.00000000      0.00000001     -0.00000000
 22aa22a 222     -0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 222a2aa 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000001     -0.00000000
 2a22aa2 222     -0.00000402     -0.48548453      0.00000312      0.00002461      0.00001348      0.00000040      0.40488761
 2aa2a22 222      0.00001606      0.00000107      0.61087739     -0.00000581     -0.00000917     -0.16265929     -0.00000326
 222aaa2 222      0.00002962     -0.00000245      0.71089388     -0.00004341     -0.00007554      0.54211460     -0.00000895
 2aa222a 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000
 
 Energy:      -1391.81931727  -1391.81931727  -1391.81931727  -1391.81931726  -1391.81931726  -1391.81931726  -1391.81931726

 State:                8               9              10              11              12              13              14
 222aa2a 222      0.00001542     -0.00006414      0.00003922      0.00004097      0.99999998      0.00004861      0.00000915
 2aa22a2 222     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22a2aa2 222     -0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000000
 2a2a22a 222      0.99853207      0.00000376     -0.00003610      0.05416335     -0.00001761     -0.00001754     -0.00000548
 2a2aa22 222     -0.00000001      0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000000
 2a22a2a 222     -0.02422259      0.00000639     -0.00003320      0.44655706     -0.00001792     -0.00000758     -0.00001065
 2a2a2a2 222     -0.00000000      0.00000001      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000001
 22aa2a2 222     -0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000      0.00000000      0.00000000
 22a22aa 222     -0.04844518      0.00001278     -0.00006640      0.89311426     -0.00003584     -0.00001516     -0.00002130
 22a2a2a 222      0.00000402     -0.10122232     -0.00002272      0.00002286     -0.00001462     -0.00006675      0.88868102
 22aaa22 222      0.00000000     -0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001
 2a222aa 222     -0.00000114      0.83515609      0.00027139     -0.00000435      0.00005062     -0.00001353      0.32017839
 2aaa222 222      0.00000000      0.00000000     -0.00000001     -0.00000000     -0.00000000     -0.00000001     -0.00000000
 2222aaa 222     -0.00000109      0.00013110     -0.43806130     -0.00001939     -0.00002072      0.77980908      0.00006231
 22aa22a 222     -0.00000298      0.54061836      0.00016981     -0.00001571      0.00003767      0.00003073     -0.32822523
 222a2aa 222     -0.00001850      0.00019955     -0.62561269     -0.00004594      0.00002004      0.09278351      0.00001370
 2a22aa2 222     -0.00000000      0.00000001      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000001
 2aa2a22 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000001     -0.00000000
 222aaa2 222     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000001     -0.00000000
 2aa222a 222      0.00003095     -0.00021453      0.64553149      0.00006019     -0.00005543      0.61910336      0.00003857
 
 Energy:      -1391.79438375  -1391.79438375  -1391.79438375  -1391.79438375  -1391.79438375  -1391.79438375  -1391.79438374

 State:               15              16              17              18              19              20
 222aa2a 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2aa22a2 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 22a2aa2 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2a2a22a 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001
 2a2aa22 222      0.00000853     -0.00000104     -0.44669962      0.00000000     -0.00000000     -0.00043644
 2a22a2a 222      0.00000002     -0.00000000     -0.00086456     -0.00000774      0.00000064      0.89371744
 2a2a2a2 222      0.00002250     -0.44669968      0.00000104      0.00000003     -0.00043645      0.00000000
 22aa2a2 222     -0.00001705      0.00000209      0.89339928     -0.00000001      0.00000000      0.00087289
 22a22aa 222     -0.00000001      0.00000000      0.00043228      0.00000387     -0.00000032     -0.44685865
 22a2a2a 222      0.00000002     -0.00043228      0.00000000     -0.00002656      0.44685877     -0.00000032
 22aaa22 222     -0.00002250      0.44669962     -0.00000104     -0.00000003      0.00043645     -0.00000000
 2a222aa 222     -0.00000002      0.00043229     -0.00000000      0.00002656     -0.44685871      0.00000032
 2aaa222 222      0.44669967      0.00002250      0.00000853     -0.00043646     -0.00000003     -0.00000000
 2222aaa 222     -0.00043229     -0.00000002     -0.00000001     -0.44685875     -0.00002656     -0.00000387
 22aa22a 222      0.00000004     -0.00074874      0.00000000     -0.00004601      0.77398195     -0.00000055
 222a2aa 222      0.00074875      0.00000004      0.00000001      0.77398193      0.00004601      0.00000670
 2a22aa2 222     -0.00003898      0.77370645     -0.00000181     -0.00000004      0.00075595     -0.00000000
 2aa2a22 222      0.77370643      0.00003898      0.00001477     -0.00075596     -0.00000004     -0.00000001
 222aaa2 222     -0.44669965     -0.00002250     -0.00000853      0.00043646      0.00000003      0.00000000
 2aa222a 222      0.00043229      0.00000002      0.00000001      0.44685875      0.00002656      0.00000387
 
 Energy:      -1391.74822677  -1391.74822677  -1391.74822677  -1391.72382154  -1391.72382154  -1391.72382153
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================
 
 222aa2b 222      0.00000708     -0.00005147     -0.00000769      0.00005959      0.81577153     -0.00011806     -0.00004104
 2a2a22b 222      0.81505425      0.00001476     -0.00003570      0.03420203     -0.00000957     -0.00000919      0.00000291
 22a22ab 222     -0.03059123      0.00000927     -0.00003932      0.72900671     -0.00005299     -0.00001068     -0.00001780
 22a2a2b 222     -0.00000212     -0.06922504      0.00001240      0.00001853      0.00003218      0.00003836      0.72635695
 2a222ab 222     -0.00001317      0.68598581      0.00024933     -0.00000319      0.00005580      0.00004301      0.24861613
 2222aab 222     -0.00000753      0.00009254     -0.34627550     -0.00000958      0.00008969      0.64224591     -0.00001919
 2aa222b 222      0.00002748     -0.00020574      0.53528298      0.00003729      0.00007679      0.49584133     -0.00005493
 222a2ab 222     -0.00002021      0.00017221     -0.50896812     -0.00002706      0.00000745      0.08452674      0.00002064
 22aa22b 222     -0.00000638      0.43602122      0.00013679     -0.00001254      0.00001364      0.00000269     -0.27582387
 222ba2a 222     -0.00000354      0.00002573      0.00000385     -0.00002979     -0.40788578      0.00005903      0.00002052
 222ab2a 222     -0.00000354      0.00002573      0.00000385     -0.00002979     -0.40788575      0.00005903      0.00002052
 2a2b22a 222     -0.40752713     -0.00000738      0.00001785     -0.01710102      0.00000478      0.00000460     -0.00000146
 2b2a22a 222     -0.40752712     -0.00000738      0.00001785     -0.01710101      0.00000478      0.00000460     -0.00000146
 22a22ba 222      0.01529561     -0.00000464      0.00001966     -0.36450336      0.00002649      0.00000534      0.00000890
 22b22aa 222      0.01529562     -0.00000464      0.00001966     -0.36450335      0.00002649      0.00000534      0.00000890
 2a22a2b 222     -0.01529562      0.00000464     -0.00001966      0.36450329     -0.00002649     -0.00000534     -0.00000890
 22b2a2a 222      0.00000106      0.03461252     -0.00000620     -0.00000926     -0.00001609     -0.00001918     -0.36317848
 22a2b2a 222      0.00000106      0.03461252     -0.00000620     -0.00000926     -0.00001609     -0.00001918     -0.36317847
 2a222ba 222      0.00000658     -0.34299291     -0.00012466      0.00000160     -0.00002790     -0.00002150     -0.12430807
 2b222aa 222      0.00000658     -0.34299290     -0.00012466      0.00000160     -0.00002790     -0.00002150     -0.12430807
 2222aba 222      0.00000376     -0.00004627      0.17313775      0.00000479     -0.00004485     -0.32112296      0.00000959
 2222baa 222      0.00000376     -0.00004627      0.17313775      0.00000479     -0.00004485     -0.32112294      0.00000959
 2ab222a 222     -0.00001374      0.00010287     -0.26764149     -0.00001865     -0.00003840     -0.24792066      0.00002747
 2ba222a 222     -0.00001374      0.00010287     -0.26764149     -0.00001865     -0.00003840     -0.24792067      0.00002747
 222b2aa 222      0.00001010     -0.00008611      0.25448406      0.00001353     -0.00000372     -0.04226337     -0.00001032
 222a2ba 222      0.00001010     -0.00008611      0.25448406      0.00001353     -0.00000372     -0.04226337     -0.00001032
 22ab22a 222      0.00000319     -0.21801061     -0.00006840      0.00000627     -0.00000682     -0.00000134      0.13791194
 22ba22a 222      0.00000319     -0.21801061     -0.00006840      0.00000627     -0.00000682     -0.00000134      0.13791194
 2b22a2a 222      0.00764781     -0.00000232      0.00000983     -0.18225165      0.00001325      0.00000267      0.00000445
 2a22b2a 222      0.00764781     -0.00000232      0.00000983     -0.18225164      0.00001325      0.00000267      0.00000445
 
 Energy:      -1391.77070438  -1391.77070438  -1391.77070438  -1391.77070437  -1391.77070437  -1391.77070437  -1391.77070437
 


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
 CPU TIMES  *         5.26      3.42      0.82      0.85
 REAL TIME  *         6.74 SEC
 DISK USED  *        37.30 MB (local),      421.40 MB (total)
 SF USED    *        22.53 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

          ENERGY     LL
    -1391.819317   12.0
    -1391.819317   12.0
    -1391.819317   12.0
    -1391.819317   12.0
    -1391.819317   12.0
    -1391.819317   12.0
    -1391.819317   12.0
    -1391.794384   12.0
    -1391.794384   12.0
    -1391.794384   12.0
    -1391.794384   12.0
    -1391.794384   12.0
    -1391.794384   12.0
    -1391.794384   12.0
    -1391.748227    2.0
    -1391.748227    2.0
    -1391.748227    2.0
    -1391.723822    2.0
    -1391.723822    2.0
    -1391.723822    2.0
    -1391.770704   12.0
    -1391.770704   12.0
    -1391.770704   12.0
    -1391.770704   12.0
    -1391.770704   12.0
    -1391.770704   12.0
    -1391.770704   12.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 20  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20
 Number of reference states: 20  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20

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
 Smallest eigenvalue of S: -0.4872603E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.4967375E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.2001199E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.8370944E-15. Vector removed

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1391.81931727
     2     -1391.81931727
     3     -1391.81931727
     4     -1391.81931726
     5     -1391.81931726
     6     -1391.81931726
     7     -1391.81931726
     8     -1391.79438375
     9     -1391.79438375
    10     -1391.79438375
    11     -1391.79438375
    12     -1391.79438375
    13     -1391.79438375
    14     -1391.79438374
    15     -1391.74822677
    16     -1391.74822677
    17     -1391.74822677
    18     -1391.72382154
    19     -1391.72382154
    20     -1391.72382153

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1160D-06

 Number of blocks in overlap matrix:    56   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    1872
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       3549312
 Total number of contracted configurations:      3601424
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage: 1001739 words, CPU-Time:      0.92 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  610927 words, CPU-time:      0.08 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1391.81931727     0.00000000    -0.81356152  0.88D-01  0.62D-01     6.72
    1     2     2     1.00000000     0.00000000 -1391.81931727    -0.00000000    -0.81043316  0.86D-01  0.62D-01     6.72
    1     3     3     1.00000000     0.00000000 -1391.81931727     0.00000000    -0.80986700  0.85D-01  0.62D-01     6.72
    1     4     4     1.00000000     0.00000000 -1391.81931726     0.00000000    -0.80964243  0.86D-01  0.62D-01     6.72
    1     5     5     1.00000000     0.00000000 -1391.81931726    -0.00000000    -0.81404537  0.88D-01  0.62D-01     6.72
    1     6     6     1.00000000     0.00000000 -1391.81931726     0.00000000    -0.81146172  0.87D-01  0.62D-01     6.72
    1     7     7     1.00000000     0.00000000 -1391.81931726     0.00000000    -0.81091744  0.86D-01  0.62D-01     6.72
    1     8     8     1.00000000     0.00000000 -1391.79438375     0.00000000    -0.83182601  0.48D-01  0.85D-01     6.72
    1     9     9     1.00000000     0.00000000 -1391.79438375     0.00000000    -0.82951787  0.47D-01  0.85D-01     6.72
    1    10    10     1.00000000     0.00000000 -1391.79438375     0.00000000    -0.83003007  0.47D-01  0.85D-01     6.72
    1    11    11     1.00000000     0.00000000 -1391.79438375     0.00000000    -0.82956866  0.48D-01  0.85D-01     6.72
    1    12    12     1.00000000     0.00000000 -1391.79438375     0.00000000    -0.83272725  0.48D-01  0.85D-01     6.72
    1    13    13     1.00000000     0.00000000 -1391.79438375     0.00000000    -0.83069807  0.48D-01  0.85D-01     6.72
    1    14    14     1.00000000     0.00000000 -1391.79438374     0.00000000    -0.83031668  0.48D-01  0.85D-01     6.72
    1    15    15     1.00000000     0.00000000 -1391.74822677    -0.00000000    -0.81631956  0.91D-01  0.63D-01     6.72
    1    16    16     1.00000000     0.00000000 -1391.74822677    -0.00000000    -0.81596247  0.91D-01  0.63D-01     6.72
    1    17    17     1.00000000     0.00000000 -1391.74822677    -0.00000000    -0.81517020  0.89D-01  0.63D-01     6.72
    1    18    18     1.00000000     0.00000000 -1391.72382154     0.00000000    -0.84992989  0.72D-01  0.87D-01     6.72
    1    19    19     1.00000000     0.00000000 -1391.72382154     0.00000000    -0.84925816  0.71D-01  0.86D-01     6.72
    1    20    20     1.00000000     0.00000000 -1391.72382153    -0.00000000    -0.84857665  0.70D-01  0.86D-01     6.72
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.9657689E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.2234193E-15. Vector removed
    2     1     1     1.08184545    -0.62602352 -1392.44534079    -0.62602352    -0.03813985  0.65D-02  0.28D-02   175.37
    2     2     2     1.08121359    -0.62600432 -1392.44532159    -0.62600432    -0.03748010  0.59D-02  0.28D-02   175.37
    2     3     3     1.08118540    -0.62588674 -1392.44520400    -0.62588674    -0.03751130  0.59D-02  0.28D-02   175.37
    2     4     4     1.08180033    -0.62579769 -1392.44511495    -0.62579769    -0.03820975  0.65D-02  0.28D-02   175.37
    2     5     5     1.08150959    -0.62576115 -1392.44507842    -0.62576115    -0.03784623  0.62D-02  0.28D-02   175.37
    2     6     6     1.08136194    -0.62552680 -1392.44484406    -0.62552680    -0.03775295  0.61D-02  0.28D-02   175.37
    2     7     7     1.08146386    -0.62538494 -1392.44470220    -0.62538494    -0.03796128  0.62D-02  0.28D-02   175.37
    2     8     8     1.08627459    -0.64500799 -1392.43939174    -0.64500799    -0.05820624  0.11D-01  0.42D-02   175.37
    2     9     9     1.08620476    -0.64493201 -1392.43931576    -0.64493201    -0.05818276  0.10D-01  0.42D-02   175.37
    2    10    10     1.08630454    -0.64435410 -1392.43873785    -0.64435410    -0.05843584  0.11D-01  0.42D-02   175.37
    2    11    11     1.08692860    -0.64394176 -1392.43832551    -0.64394176    -0.05975371  0.11D-01  0.42D-02   175.37
    2    12    12     1.08635347    -0.64390303 -1392.43828678    -0.64390303    -0.05870782  0.11D-01  0.42D-02   175.37
    2    13    13     1.08645214    -0.64380416 -1392.43818790    -0.64380416    -0.05890698  0.11D-01  0.42D-02   175.37
    2    14    14     1.08693833    -0.64366282 -1392.43804656    -0.64366282    -0.05979479  0.11D-01  0.42D-02   175.37
    2    15    15     1.09308493    -0.63074187 -1392.37896864    -0.63074187    -0.04554910  0.10D-01  0.29D-02   175.37
    2    16    16     1.09381188    -0.63035798 -1392.37858476    -0.63035798    -0.04647938  0.11D-01  0.29D-02   175.37
    2    17    17     1.09374389    -0.63013217 -1392.37835893    -0.63013217    -0.04646473  0.11D-01  0.29D-02   175.37
    2    18    18     1.08880760    -0.64839996 -1392.37222151    -0.64839996    -0.06136338  0.12D-01  0.42D-02   175.37
    2    19    19     1.08949408    -0.64743714 -1392.37125868    -0.64743714    -0.06259970  0.13D-01  0.42D-02   175.37
    2    20    20     1.08953656    -0.64705775 -1392.37087928    -0.64705775    -0.06284627  0.13D-01  0.42D-02   175.37
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.2261060E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.3832760E-15. Vector removed
    3     1     1     1.06985484    -0.66927158 -1392.48858885    -0.04324805    -0.00413771  0.14D-03  0.50D-03   344.96
    3     2     2     1.06980785    -0.66919242 -1392.48850969    -0.04318810    -0.00418638  0.14D-03  0.50D-03   344.96
    3     3     3     1.06978362    -0.66902502 -1392.48834229    -0.04313828    -0.00419621  0.14D-03  0.50D-03   344.96
    3     4     4     1.06963909    -0.66895130 -1392.48826857    -0.04315362    -0.00407682  0.13D-03  0.49D-03   344.96
    3     5     5     1.06959821    -0.66869873 -1392.48801600    -0.04293758    -0.00423703  0.14D-03  0.49D-03   344.96
    3     6     6     1.06951477    -0.66857633 -1392.48789359    -0.04304953    -0.00426920  0.14D-03  0.49D-03   344.96
    3     7     7     1.06946939    -0.66854618 -1392.48786344    -0.04316123    -0.00430038  0.14D-03  0.50D-03   344.96
    3     8     8     1.07115960    -0.68539541 -1392.47977916    -0.04038742    -0.00321777  0.33D-03  0.36D-03   344.96
    3     9     9     1.07110359    -0.68530596 -1392.47968972    -0.04037396    -0.00327131  0.34D-03  0.36D-03   344.96
    3    10    10     1.07093362    -0.68518000 -1392.47956375    -0.04082590    -0.00325091  0.32D-03  0.35D-03   344.96
    3    11    11     1.07096815    -0.68514973 -1392.47953348    -0.04120798    -0.00327911  0.33D-03  0.36D-03   344.96
    3    12    12     1.07088364    -0.68510028 -1392.47948403    -0.04119725    -0.00327527  0.32D-03  0.36D-03   344.96
    3    13    13     1.07085567    -0.68496411 -1392.47934786    -0.04115995    -0.00333960  0.33D-03  0.36D-03   344.96
    3    14    14     1.07086094    -0.68495184 -1392.47933558    -0.04128902    -0.00337040  0.33D-03  0.36D-03   344.96
    3    15    15     1.07214879    -0.67497295 -1392.42319972    -0.04423108    -0.00442893  0.16D-03  0.51D-03   344.96
    3    16    16     1.07221045    -0.67482677 -1392.42305354    -0.04446878    -0.00446123  0.16D-03  0.51D-03   344.96
    3    17    17     1.07217467    -0.67467866 -1392.42290543    -0.04454649    -0.00451447  0.16D-03  0.51D-03   344.96
    3    18    18     1.07747426    -0.69497322 -1392.41879476    -0.04657325    -0.00390743  0.41D-03  0.45D-03   344.96
    3    19    19     1.07728926    -0.69487068 -1392.41869222    -0.04743354    -0.00388587  0.39D-03  0.44D-03   344.96
    3    20    20     1.07737379    -0.69480179 -1392.41862333    -0.04774404    -0.00395462  0.41D-03  0.45D-03   344.96
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.9875290E-16. Vector removed
    4     1     1     1.07628013    -0.67615353 -1392.49547080    -0.00688195    -0.00111072  0.56D-04  0.11D-03   515.37
    4     2     2     1.07620038    -0.67614111 -1392.49545837    -0.00694868    -0.00110944  0.56D-04  0.11D-03   515.37
    4     3     3     1.07620333    -0.67607836 -1392.49539563    -0.00705335    -0.00114402  0.56D-04  0.11D-03   515.37
    4     4     4     1.07577013    -0.67580640 -1392.49512366    -0.00685510    -0.00121788  0.59D-04  0.12D-03   515.37
    4     5     5     1.07571300    -0.67578906 -1392.49510632    -0.00709032    -0.00122120  0.59D-04  0.12D-03   515.37
    4     6     6     1.07553774    -0.67578258 -1392.49509985    -0.00720626    -0.00119352  0.59D-04  0.12D-03   515.37
    4     7     7     1.07558958    -0.67576115 -1392.49507841    -0.00721497    -0.00121248  0.59D-04  0.12D-03   515.37
    4     8     8     1.07271547    -0.68939961 -1392.48378336    -0.00400420    -0.00075394  0.57D-04  0.84D-04   515.37
    4     9     9     1.07269440    -0.68939043 -1392.48377418    -0.00408446    -0.00076809  0.58D-04  0.86D-04   515.37
    4    10    10     1.07263728    -0.68934275 -1392.48372650    -0.00416275    -0.00078671  0.59D-04  0.85D-04   515.37
    4    11    11     1.07260075    -0.68931665 -1392.48370040    -0.00416691    -0.00079113  0.59D-04  0.86D-04   515.37
    4    12    12     1.07258048    -0.68930116 -1392.48368490    -0.00420088    -0.00079739  0.60D-04  0.86D-04   515.37
    4    13    13     1.07251535    -0.68925726 -1392.48364100    -0.00429315    -0.00082022  0.61D-04  0.88D-04   515.37
    4    14    14     1.07252722    -0.68925589 -1392.48363963    -0.00430405    -0.00081885  0.61D-04  0.87D-04   515.37
    4    15    15     1.07841977    -0.68238946 -1392.43061623    -0.00741651    -0.00132050  0.77D-04  0.13D-03   515.37
    4    16    16     1.07827289    -0.68229807 -1392.43052484    -0.00747130    -0.00134570  0.78D-04  0.13D-03   515.37
    4    17    17     1.07824330    -0.68226283 -1392.43048960    -0.00758417    -0.00136372  0.79D-04  0.13D-03   515.37
    4    18    18     1.07791087    -0.69971725 -1392.42353879    -0.00474403    -0.00088744  0.58D-04  0.10D-03   515.37
    4    19    19     1.07784594    -0.69967057 -1392.42349210    -0.00479989    -0.00090833  0.60D-04  0.10D-03   515.37
    4    20    20     1.07780652    -0.69963641 -1392.42345794    -0.00483461    -0.00091504  0.60D-04  0.11D-03   515.37
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.3244947E-15. Vector removed
    5     1     1     1.08004948    -0.67783198 -1392.49714925    -0.00167845    -0.00025759  0.15D-04  0.27D-04   686.05
    5     2     2     1.08000026    -0.67782552 -1392.49714278    -0.00168441    -0.00026080  0.15D-04  0.27D-04   686.05
    5     3     3     1.07996328    -0.67779806 -1392.49711532    -0.00171969    -0.00027994  0.16D-04  0.31D-04   686.05
    5     4     4     1.07967724    -0.67768569 -1392.49700295    -0.00187929    -0.00032568  0.18D-04  0.35D-04   686.05
    5     5     5     1.07966791    -0.67768366 -1392.49700092    -0.00189460    -0.00032387  0.18D-04  0.34D-04   686.05
    5     6     6     1.07963578    -0.67767639 -1392.49699365    -0.00189381    -0.00032096  0.19D-04  0.32D-04   686.05
    5     7     7     1.07961660    -0.67766166 -1392.49697892    -0.00190052    -0.00033571  0.19D-04  0.36D-04   686.05
    5     8     8     1.07492623    -0.69037857 -1392.48476232    -0.00097896    -0.00015242  0.53D-05  0.22D-04   686.05
    5     9     9     1.07492585    -0.69037176 -1392.48475551    -0.00098134    -0.00015140  0.53D-05  0.21D-04   686.05
    5    10    10     1.07487719    -0.69035562 -1392.48473937    -0.00101287    -0.00016001  0.56D-05  0.22D-04   686.05
    5    11    11     1.07485016    -0.69033851 -1392.48472226    -0.00102187    -0.00016326  0.56D-05  0.23D-04   686.05
    5    12    12     1.07483179    -0.69032980 -1392.48471354    -0.00102864    -0.00016567  0.57D-05  0.23D-04   686.05
    5    13    13     1.07480147    -0.69031668 -1392.48470043    -0.00105943    -0.00017073  0.58D-05  0.24D-04   686.05
    5    14    14     1.07480147    -0.69031527 -1392.48469902    -0.00105938    -0.00017178  0.58D-05  0.24D-04   686.05
    5    15    15     1.08294945    -0.68443857 -1392.43266534    -0.00204911    -0.00035634  0.22D-04  0.37D-04   686.05
    5    16    16     1.08284983    -0.68440088 -1392.43262765    -0.00210281    -0.00037150  0.24D-04  0.38D-04   686.05
    5    17    17     1.08283211    -0.68439379 -1392.43262056    -0.00213097    -0.00037439  0.24D-04  0.38D-04   686.05
    5    18    18     1.08028683    -0.70089429 -1392.42471583    -0.00117704    -0.00018370  0.60D-05  0.26D-04   686.05
    5    19    19     1.08024985    -0.70087336 -1392.42469490    -0.00120279    -0.00019026  0.60D-05  0.26D-04   686.05
    5    20    20     1.08021427    -0.70085576 -1392.42467729    -0.00121935    -0.00019465  0.62D-05  0.27D-04   686.05
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.1810674E-15. Vector removed
    6     1     1     1.07992036    -0.67814603 -1392.49746330    -0.00031405    -0.00008300  0.89D-05  0.84D-05   856.90
    6     2     2     1.07987939    -0.67814288 -1392.49746015    -0.00031737    -0.00008384  0.92D-05  0.84D-05   856.90
    6     3     3     1.07984702    -0.67812603 -1392.49744329    -0.00032797    -0.00009417  0.88D-05  0.10D-04   856.90
    6     4     4     1.07951870    -0.67807467 -1392.49739193    -0.00038898    -0.00011532  0.12D-04  0.12D-04   856.90
    6     5     5     1.07945261    -0.67807309 -1392.49739036    -0.00038944    -0.00011193  0.13D-04  0.11D-04   856.90
    6     6     6     1.07954060    -0.67807291 -1392.49739017    -0.00039652    -0.00011730  0.11D-04  0.12D-04   856.90
    6     7     7     1.07947995    -0.67805894 -1392.49737620    -0.00039728    -0.00012261  0.12D-04  0.13D-04   856.90
    6     8     8     1.07535694    -0.69057612 -1392.48495987    -0.00019755    -0.00004797  0.57D-05  0.51D-05   856.90
    6     9     9     1.07535519    -0.69056961 -1392.48495336    -0.00019784    -0.00004932  0.57D-05  0.52D-05   856.90
    6    10    10     1.07530664    -0.69056580 -1392.48494955    -0.00021018    -0.00005153  0.57D-05  0.55D-05   856.90
    6    11    11     1.07528199    -0.69055440 -1392.48493815    -0.00021588    -0.00005486  0.61D-05  0.58D-05   856.90
    6    12    12     1.07526422    -0.69054991 -1392.48493366    -0.00022012    -0.00005630  0.60D-05  0.59D-05   856.90
    6    13    13     1.07523280    -0.69054392 -1392.48492767    -0.00022724    -0.00005907  0.64D-05  0.61D-05   856.90
    6    14    14     1.07523739    -0.69054357 -1392.48492731    -0.00022830    -0.00005878  0.65D-05  0.61D-05   856.90
    6    15    15     1.08270456    -0.68486821 -1392.43309499    -0.00042964    -0.00012638  0.15D-04  0.12D-04   856.90
    6    16    16     1.08260736    -0.68485032 -1392.43307710    -0.00044944    -0.00013344  0.16D-04  0.13D-04   856.90
    6    17    17     1.08258099    -0.68484927 -1392.43307604    -0.00045547    -0.00013439  0.17D-04  0.13D-04   856.90
    6    18    18     1.08072864    -0.70113235 -1392.42495389    -0.00023806    -0.00006440  0.11D-04  0.62D-05   856.90
    6    19    19     1.08069479    -0.70112176 -1392.42494329    -0.00024840    -0.00006757  0.11D-04  0.65D-05   856.90
    6    20    20     1.08065287    -0.70111063 -1392.42493217    -0.00025488    -0.00007136  0.12D-04  0.67D-05   856.90
    7     1     1     1.08084687    -0.67824185 -1392.49755913    -0.00009582    -0.00002443  0.25D-05  0.26D-05  1027.31
    7     2     2     1.08082573    -0.67823994 -1392.49755721    -0.00009705    -0.00002502  0.26D-05  0.27D-05  1027.31
    7     3     3     1.08074258    -0.67823285 -1392.49755012    -0.00010682    -0.00002832  0.24D-05  0.32D-05  1027.31
    7     4     4     1.08054320    -0.67820832 -1392.49752558    -0.00013365    -0.00003751  0.31D-05  0.41D-05  1027.31
    7     5     5     1.08051040    -0.67820705 -1392.49752431    -0.00013396    -0.00003782  0.28D-05  0.43D-05  1027.31
    7     6     6     1.08056737    -0.67820615 -1392.49752341    -0.00013324    -0.00003779  0.37D-05  0.38D-05  1027.31
    7     7     7     1.08047775    -0.67820009 -1392.49751735    -0.00014115    -0.00004037  0.32D-05  0.45D-05  1027.31
    7     8     8     1.07586053    -0.69063343 -1392.48501718    -0.00005731    -0.00001880  0.35D-05  0.19D-05  1027.31
    7     9     9     1.07585975    -0.69062936 -1392.48501311    -0.00005975    -0.00002026  0.38D-05  0.20D-05  1027.31
    7    10    10     1.07583006    -0.69062835 -1392.48501210    -0.00006255    -0.00002074  0.37D-05  0.20D-05  1027.31
    7    11    11     1.07581677    -0.69062177 -1392.48500552    -0.00006738    -0.00002334  0.43D-05  0.22D-05  1027.31
    7    12    12     1.07580358    -0.69061949 -1392.48500324    -0.00006957    -0.00002424  0.44D-05  0.22D-05  1027.31
    7    13    13     1.07578600    -0.69061671 -1392.48500045    -0.00007279    -0.00002554  0.46D-05  0.24D-05  1027.31
    7    14    14     1.07579016    -0.69061617 -1392.48499991    -0.00007260    -0.00002568  0.47D-05  0.23D-05  1027.31
    7    15    15     1.08380286    -0.68501736 -1392.43324413    -0.00014914    -0.00004362  0.46D-05  0.43D-05  1027.31
    7    16    16     1.08375511    -0.68500904 -1392.43323581    -0.00015871    -0.00004703  0.53D-05  0.45D-05  1027.31
    7    17    17     1.08375493    -0.68500873 -1392.43323550    -0.00015946    -0.00004682  0.51D-05  0.46D-05  1027.31
    7    18    18     1.08142969    -0.70120742 -1392.42502896    -0.00007507    -0.00002647  0.48D-05  0.27D-05  1027.31
    7    19    19     1.08140905    -0.70120153 -1392.42502306    -0.00007977    -0.00002847  0.51D-05  0.28D-05  1027.31
    7    20    20     1.08138652    -0.70119504 -1392.42501657    -0.00008441    -0.00003105  0.57D-05  0.31D-05  1027.31
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.3447703E-15. Vector removed
    8     1     1     1.08118252    -0.67827446 -1392.49759173    -0.00003261    -0.00000885  0.76D-06  0.10D-05  1197.22
    8     2     2     1.08116259    -0.67827339 -1392.49759066    -0.00003346    -0.00000944  0.80D-06  0.11D-05  1197.22
    8     3     3     1.08115165    -0.67827044 -1392.49758770    -0.00003759    -0.00001082  0.10D-05  0.12D-05  1197.22
    8     4     4     1.08101765    -0.67825933 -1392.49757659    -0.00005101    -0.00001572  0.15D-05  0.17D-05  1197.22
    8     5     5     1.08102475    -0.67825859 -1392.49757586    -0.00005154    -0.00001592  0.15D-05  0.17D-05  1197.22
    8     6     6     1.08098087    -0.67825837 -1392.49757564    -0.00005223    -0.00001619  0.15D-05  0.18D-05  1197.22
    8     7     7     1.08098789    -0.67825542 -1392.49757268    -0.00005533    -0.00001740  0.17D-05  0.19D-05  1197.22
    8     8     8     1.07602165    -0.69065485 -1392.48503860    -0.00002142    -0.00000648  0.40D-06  0.10D-05  1197.22
    8     9     9     1.07601642    -0.69065258 -1392.48503633    -0.00002322    -0.00000725  0.45D-06  0.11D-05  1197.22
    8    10    10     1.07600115    -0.69065230 -1392.48503605    -0.00002395    -0.00000744  0.47D-06  0.12D-05  1197.22
    8    11    11     1.07598554    -0.69064883 -1392.48503258    -0.00002706    -0.00000869  0.54D-06  0.13D-05  1197.22
    8    12    12     1.07597588    -0.69064770 -1392.48503145    -0.00002821    -0.00000912  0.56D-06  0.14D-05  1197.22
    8    13    13     1.07596379    -0.69064646 -1392.48503021    -0.00002975    -0.00000963  0.58D-06  0.15D-05  1197.22
    8    14    14     1.07596502    -0.69064608 -1392.48502982    -0.00002991    -0.00000974  0.60D-06  0.15D-05  1197.22
    8    15    15     1.08432833    -0.68507694 -1392.43330371    -0.00005958    -0.00001859  0.18D-05  0.21D-05  1197.22
    8    16    16     1.08428064    -0.68507334 -1392.43330012    -0.00006430    -0.00002014  0.20D-05  0.22D-05  1197.22
    8    17    17     1.08428459    -0.68507290 -1392.43329967    -0.00006418    -0.00002024  0.20D-05  0.22D-05  1197.22
    8    18    18     1.08165008    -0.70123812 -1392.42505966    -0.00003070    -0.00000956  0.64D-06  0.15D-05  1197.22
    8    19    19     1.08163359    -0.70123483 -1392.42505637    -0.00003330    -0.00001062  0.68D-06  0.16D-05  1197.22
    8    20    20     1.08161737    -0.70123151 -1392.42505304    -0.00003647    -0.00001184  0.79D-06  0.18D-05  1197.22
    9     1     1     1.08126817    -0.67828495 -1392.49760222    -0.00001049    -0.00000334  0.41D-06  0.33D-06  1367.88
    9     2     2     1.08125205    -0.67828436 -1392.49760163    -0.00001097    -0.00000367  0.42D-06  0.38D-06  1367.88
    9     3     3     1.08122716    -0.67828322 -1392.49760049    -0.00001279    -0.00000421  0.49D-06  0.42D-06  1367.88
    9     4     4     1.08109835    -0.67827790 -1392.49759517    -0.00001858    -0.00000662  0.78D-06  0.63D-06  1367.88
    9     5     5     1.08109824    -0.67827769 -1392.49759495    -0.00001909    -0.00000668  0.80D-06  0.62D-06  1367.88
    9     6     6     1.08108188    -0.67827731 -1392.49759457    -0.00001894    -0.00000683  0.81D-06  0.67D-06  1367.88
    9     7     7     1.08107111    -0.67827607 -1392.49759333    -0.00002065    -0.00000746  0.84D-06  0.73D-06  1367.88
    9     8     8     1.07610290    -0.69066308 -1392.48504683    -0.00000823    -0.00000248  0.23D-06  0.31D-06  1367.88
    9     9     9     1.07609358    -0.69066185 -1392.48504561    -0.00000927    -0.00000291  0.27D-06  0.35D-06  1367.88
    9    10    10     1.07608592    -0.69066183 -1392.48504558    -0.00000953    -0.00000295  0.26D-06  0.36D-06  1367.88
    9    11    11     1.07606621    -0.69066003 -1392.48504378    -0.00001120    -0.00000361  0.32D-06  0.43D-06  1367.88
    9    12    12     1.07605815    -0.69065948 -1392.48504323    -0.00001178    -0.00000381  0.32D-06  0.45D-06  1367.88
    9    13    13     1.07604630    -0.69065893 -1392.48504267    -0.00001246    -0.00000406  0.36D-06  0.48D-06  1367.88
    9    14    14     1.07604655    -0.69065868 -1392.48504243    -0.00001260    -0.00000413  0.37D-06  0.48D-06  1367.88
    9    15    15     1.08441747    -0.68509918 -1392.43332595    -0.00002224    -0.00000807  0.10D-05  0.77D-06  1367.88
    9    16    16     1.08437627    -0.68509751 -1392.43332428    -0.00002416    -0.00000881  0.12D-05  0.81D-06  1367.88
    9    17    17     1.08437970    -0.68509721 -1392.43332398    -0.00002431    -0.00000889  0.12D-05  0.82D-06  1367.88
    9    18    18     1.08169990    -0.70125054 -1392.42507209    -0.00001243    -0.00000421  0.60D-06  0.47D-06  1367.88
    9    19    19     1.08168458    -0.70124874 -1392.42507028    -0.00001391    -0.00000481  0.65D-06  0.52D-06  1367.88
    9    20    20     1.08165935    -0.70124704 -1392.42506857    -0.00001552    -0.00000550  0.78D-06  0.59D-06  1367.88
   10     1     1     1.08147371    -0.67828867 -1392.49760594    -0.00000372    -0.00000113  0.14D-06  0.13D-06  1538.87
   10     2     2     1.08146053    -0.67828837 -1392.49760564    -0.00000401    -0.00000127  0.15D-06  0.16D-06  1538.87
   10     3     3     1.08144249    -0.67828787 -1392.49760514    -0.00000465    -0.00000154  0.15D-06  0.21D-06  1538.87
   10     4     4     1.08136907    -0.67828532 -1392.49760259    -0.00000742    -0.00000259  0.24D-06  0.34D-06  1538.87
   10     5     5     1.08136447    -0.67828519 -1392.49760245    -0.00000750    -0.00000266  0.21D-06  0.37D-06  1538.87
   10     6     6     1.08137189    -0.67828499 -1392.49760225    -0.00000768    -0.00000266  0.31D-06  0.30D-06  1538.87
   10     7     7     1.08134203    -0.67828429 -1392.49760155    -0.00000822    -0.00000307  0.25D-06  0.43D-06  1538.87
   10     8     8     1.07619870    -0.69066603 -1392.48504978    -0.00000295    -0.00000115  0.24D-06  0.11D-06  1538.87
   10     9     9     1.07618857    -0.69066540 -1392.48504915    -0.00000354    -0.00000142  0.29D-06  0.13D-06  1538.87
   10    10    10     1.07619354    -0.69066537 -1392.48504912    -0.00000354    -0.00000143  0.30D-06  0.13D-06  1538.87
   10    11    11     1.07617732    -0.69066445 -1392.48504820    -0.00000441    -0.00000183  0.38D-06  0.16D-06  1538.87
   10    12    12     1.07617131    -0.69066417 -1392.48504792    -0.00000469    -0.00000195  0.39D-06  0.17D-06  1538.87
   10    13    13     1.07616504    -0.69066391 -1392.48504765    -0.00000498    -0.00000208  0.42D-06  0.18D-06  1538.87
   10    14    14     1.07616508    -0.69066376 -1392.48504750    -0.00000507    -0.00000214  0.44D-06  0.19D-06  1538.87
   10    15    15     1.08471219    -0.68510821 -1392.43333499    -0.00000903    -0.00000332  0.39D-06  0.39D-06  1538.87
   10    16    16     1.08469464    -0.68510747 -1392.43333424    -0.00000997    -0.00000361  0.48D-06  0.39D-06  1538.87
   10    17    17     1.08469238    -0.68510724 -1392.43333400    -0.00001002    -0.00000371  0.45D-06  0.42D-06  1538.87
   10    18    18     1.08184607    -0.70125535 -1392.42507689    -0.00000481    -0.00000205  0.43D-06  0.20D-06  1538.87
   10    19    19     1.08183755    -0.70125433 -1392.42507586    -0.00000558    -0.00000243  0.50D-06  0.23D-06  1538.87
   10    20    20     1.08182302    -0.70125340 -1392.42507493    -0.00000637    -0.00000283  0.59D-06  0.26D-06  1538.87
   11     1     1     1.08151892    -0.67829005 -1392.49760732    -0.00000138    -0.00000046  0.48D-07  0.60D-07  1708.47
   11     2     2     1.08151161    -0.67828991 -1392.49760718    -0.00000154    -0.00000053  0.59D-07  0.68D-07  1708.47
   11     3     3     1.08150367    -0.67828966 -1392.49760692    -0.00000178    -0.00000066  0.70D-07  0.84D-07  1708.47
   11     4     4     1.08145714    -0.67828841 -1392.49760568    -0.00000309    -0.00000124  0.12D-06  0.15D-06  1708.47
   11     5     5     1.08144238    -0.67828836 -1392.49760563    -0.00000318    -0.00000124  0.15D-06  0.15D-06  1708.47
   11     6     6     1.08145900    -0.67828827 -1392.49760553    -0.00000328    -0.00000131  0.11D-06  0.17D-06  1708.47
   11     7     7     1.08144353    -0.67828786 -1392.49760512    -0.00000356    -0.00000147  0.16D-06  0.17D-06  1708.47
   11     8     8     1.07621429    -0.69066729 -1392.48505105    -0.00000126    -0.00000044  0.40D-07  0.69D-07  1708.47
   11     9     9     1.07620531    -0.69066697 -1392.48505072    -0.00000158    -0.00000056  0.52D-07  0.86D-07  1708.47
   11    10    10     1.07620802    -0.69066695 -1392.48505070    -0.00000158    -0.00000057  0.51D-07  0.87D-07  1708.47
   11    11    11     1.07619381    -0.69066649 -1392.48505024    -0.00000204    -0.00000075  0.68D-07  0.11D-06  1708.47
   11    12    12     1.07618901    -0.69066635 -1392.48505010    -0.00000218    -0.00000081  0.73D-07  0.12D-06  1708.47
   11    13    13     1.07618432    -0.69066623 -1392.48504998    -0.00000233    -0.00000086  0.76D-07  0.13D-06  1708.47
   11    14    14     1.07618342    -0.69066615 -1392.48504989    -0.00000239    -0.00000089  0.80D-07  0.13D-06  1708.47
   11    15    15     1.08480819    -0.68511231 -1392.43333908    -0.00000410    -0.00000158  0.20D-06  0.19D-06  1708.47
   11    16    16     1.08479023    -0.68511201 -1392.43333878    -0.00000453    -0.00000172  0.22D-06  0.20D-06  1708.47
   11    17    17     1.08479031    -0.68511182 -1392.43333859    -0.00000458    -0.00000180  0.22D-06  0.21D-06  1708.47
   11    18    18     1.08187282    -0.70125764 -1392.42507918    -0.00000229    -0.00000082  0.72D-07  0.13D-06  1708.47
   11    19    19     1.08186404    -0.70125708 -1392.42507861    -0.00000275    -0.00000101  0.86D-07  0.16D-06  1708.47
   11    20    20     1.08185285    -0.70125662 -1392.42507815    -0.00000322    -0.00000119  0.10D-06  0.18D-06  1708.47
   12     1     1     1.08154568    -0.67829058 -1392.49760785    -0.00000053    -0.00000018  0.21D-07  0.20D-07  1879.41
   12     2     2     1.08153905    -0.67829052 -1392.49760779    -0.00000061    -0.00000021  0.24D-07  0.23D-07  1879.41
   12     3     3     1.08152880    -0.67829041 -1392.49760768    -0.00000075    -0.00000027  0.31D-07  0.29D-07  1879.41
   12     4     4     1.08148086    -0.67828981 -1392.49760708    -0.00000140    -0.00000054  0.63D-07  0.55D-07  1879.41
   12     5     5     1.08147992    -0.67828981 -1392.49760707    -0.00000145    -0.00000054  0.63D-07  0.56D-07  1879.41
   12     6     6     1.08147650    -0.67828973 -1392.49760700    -0.00000146    -0.00000057  0.69D-07  0.58D-07  1879.41
   12     7     7     1.08146799    -0.67828956 -1392.49760682    -0.00000170    -0.00000066  0.75D-07  0.69D-07  1879.41
   12     8     8     1.07623844    -0.69066784 -1392.48505159    -0.00000054    -0.00000018  0.16D-07  0.24D-07  1879.41
   12     9     9     1.07623213    -0.69066768 -1392.48505143    -0.00000071    -0.00000024  0.19D-07  0.31D-07  1879.41
   12    10    10     1.07623309    -0.69066766 -1392.48505141    -0.00000071    -0.00000024  0.21D-07  0.31D-07  1879.41
   12    11    11     1.07622242    -0.69066744 -1392.48505119    -0.00000095    -0.00000033  0.27D-07  0.42D-07  1879.41
   12    12    12     1.07621894    -0.69066738 -1392.48505112    -0.00000102    -0.00000036  0.29D-07  0.45D-07  1879.41
   12    13    13     1.07621487    -0.69066732 -1392.48505107    -0.00000109    -0.00000038  0.32D-07  0.48D-07  1879.41
   12    14    14     1.07621425    -0.69066728 -1392.48505102    -0.00000113    -0.00000039  0.33D-07  0.49D-07  1879.41
   12    15    15     1.08484355    -0.68511417 -1392.43334094    -0.00000186    -0.00000073  0.89D-07  0.74D-07  1879.41
   12    16    16     1.08482953    -0.68511403 -1392.43334080    -0.00000203    -0.00000079  0.10D-06  0.74D-07  1879.41
   12    17    17     1.08482807    -0.68511393 -1392.43334070    -0.00000211    -0.00000082  0.11D-06  0.78D-07  1879.41
   12    18    18     1.08189196    -0.70125869 -1392.42508023    -0.00000104    -0.00000038  0.51D-07  0.45D-07  1879.41
   12    19    19     1.08188442    -0.70125838 -1392.42507992    -0.00000131    -0.00000049  0.62D-07  0.56D-07  1879.41
   12    20    20     1.08187253    -0.70125816 -1392.42507969    -0.00000154    -0.00000058  0.79D-07  0.66D-07  1879.41
   13     1     1     1.08159232    -0.67829078 -1392.49760805    -0.00000020    -0.00000007  0.92D-08  0.87D-08  2050.25
   13     2     2     1.08158802    -0.67829075 -1392.49760802    -0.00000023    -0.00000008  0.97D-08  0.11D-07  2050.25
   13     3     3     1.08158216    -0.67829070 -1392.49760797    -0.00000029    -0.00000011  0.12D-07  0.16D-07  2050.25
   13     4     4     1.08155742    -0.67829042 -1392.49760768    -0.00000061    -0.00000023  0.26D-07  0.33D-07  2050.25
   13     5     5     1.08155895    -0.67829041 -1392.49760768    -0.00000060    -0.00000024  0.28D-07  0.31D-07  2050.25
   13     6     6     1.08155502    -0.67829038 -1392.49760765    -0.00000065    -0.00000025  0.24D-07  0.37D-07  2050.25
   13     7     7     1.08154528    -0.67829028 -1392.49760754    -0.00000072    -0.00000031  0.22D-07  0.50D-07  2050.25
   13     8     8     1.07626534    -0.69066805 -1392.48505180    -0.00000021    -0.00000009  0.19D-07  0.78D-08  2050.25
   13     9     9     1.07626220    -0.69066797 -1392.48505172    -0.00000029    -0.00000012  0.26D-07  0.10D-07  2050.25
   13    10    10     1.07626335    -0.69066796 -1392.48505171    -0.00000029    -0.00000013  0.28D-07  0.11D-07  2050.25
   13    11    11     1.07625762    -0.69066784 -1392.48505159    -0.00000040    -0.00000018  0.38D-07  0.15D-07  2050.25
   13    12    12     1.07625541    -0.69066781 -1392.48505156    -0.00000044    -0.00000019  0.41D-07  0.16D-07  2050.25
   13    13    13     1.07625326    -0.69066779 -1392.48505153    -0.00000047    -0.00000020  0.44D-07  0.17D-07  2050.25
   13    14    14     1.07625311    -0.69066777 -1392.48505151    -0.00000049    -0.00000021  0.47D-07  0.18D-07  2050.25
   13    15    15     1.08492242    -0.68511497 -1392.43334174    -0.00000080    -0.00000034  0.36D-07  0.47D-07  2050.25
   13    16    16     1.08491958    -0.68511493 -1392.43334170    -0.00000089    -0.00000035  0.51D-07  0.41D-07  2050.25
   13    17    17     1.08491716    -0.68511486 -1392.43334163    -0.00000094    -0.00000038  0.49D-07  0.48D-07  2050.25
   13    18    18     1.08193855    -0.70125912 -1392.42508066    -0.00000043    -0.00000019  0.44D-07  0.18D-07  2050.25
   13    19    19     1.08193559    -0.70125895 -1392.42508049    -0.00000057    -0.00000026  0.58D-07  0.23D-07  2050.25
   13    20    20     1.08192938    -0.70125884 -1392.42508037    -0.00000068    -0.00000031  0.71D-07  0.28D-07  2050.25
   14     1     1     1.08159858    -0.67829086 -1392.49760813    -0.00000008    -0.00000003  0.29D-08  0.42D-08  2220.03
   14     2     2     1.08159625    -0.67829084 -1392.49760811    -0.00000009    -0.00000004  0.33D-08  0.54D-08  2220.03
   14     3     3     1.08159234    -0.67829082 -1392.49760809    -0.00000012    -0.00000005  0.50D-08  0.67D-08  2220.03
   14     4     4     1.08157134    -0.67829068 -1392.49760794    -0.00000026    -0.00000012  0.12D-07  0.16D-07  2220.03
   14     5     5     1.08157492    -0.67829067 -1392.49760794    -0.00000026    -0.00000012  0.77D-08  0.17D-07  2220.03
   14     6     6     1.08157470    -0.67829065 -1392.49760792    -0.00000027    -0.00000013  0.67D-08  0.19D-07  2220.03
   14     7     7     1.08156984    -0.67829060 -1392.49760786    -0.00000032    -0.00000015  0.13D-07  0.20D-07  2220.03
   14     8     8     1.07626656    -0.69066814 -1392.48505189    -0.00000009    -0.00000003  0.36D-08  0.53D-08  2220.03
   14     9     9     1.07626307    -0.69066810 -1392.48505185    -0.00000013    -0.00000005  0.53D-08  0.76D-08  2220.03
   14    10    10     1.07626367    -0.69066809 -1392.48505184    -0.00000014    -0.00000005  0.55D-08  0.79D-08  2220.03
   14    11    11     1.07625806    -0.69066804 -1392.48505179    -0.00000019    -0.00000007  0.80D-08  0.11D-07  2220.03
   14    12    12     1.07625614    -0.69066802 -1392.48505177    -0.00000021    -0.00000008  0.86D-08  0.12D-07  2220.03
   14    13    13     1.07625445    -0.69066801 -1392.48505176    -0.00000022    -0.00000009  0.89D-08  0.13D-07  2220.03
   14    14    14     1.07625389    -0.69066800 -1392.48505174    -0.00000024    -0.00000009  0.98D-08  0.14D-07  2220.03
   14    15    15     1.08494306    -0.68511535 -1392.43334212    -0.00000038    -0.00000017  0.19D-07  0.22D-07  2220.03
   14    16    16     1.08493677    -0.68511534 -1392.43334211    -0.00000041    -0.00000018  0.21D-07  0.23D-07  2220.03
   14    17    17     1.08493606    -0.68511529 -1392.43334206    -0.00000043    -0.00000020  0.20D-07  0.27D-07  2220.03
   14    18    18     1.08194191    -0.70125933 -1392.42508087    -0.00000021    -0.00000008  0.86D-08  0.13D-07  2220.03
   14    19    19     1.08193782    -0.70125924 -1392.42508078    -0.00000029    -0.00000011  0.12D-07  0.17D-07  2220.03
   14    20    20     1.08193299    -0.70125919 -1392.42508072    -0.00000035    -0.00000014  0.15D-07  0.21D-07  2220.03
   15     1     1     1.08159941    -0.67829087 -1392.49760814    -0.00000002    -0.00000002  0.23D-08  0.26D-08  2367.14
   15     2     2     1.08159863    -0.67829086 -1392.49760813    -0.00000002    -0.00000003  0.29D-08  0.40D-08  2367.14
   15     3     3     1.08159631    -0.67829085 -1392.49760811    -0.00000002    -0.00000004  0.33D-08  0.54D-08  2367.14
   15     4     4     1.08158021    -0.67829081 -1392.49760807    -0.00000013    -0.00000005  0.57D-08  0.65D-08  2367.14
   15     5     5     1.08158008    -0.67829080 -1392.49760807    -0.00000013    -0.00000006  0.58D-08  0.72D-08  2367.14
   15     6     6     1.08157902    -0.67829079 -1392.49760805    -0.00000014    -0.00000006  0.68D-08  0.78D-08  2367.14
   15     7     7     1.08157530    -0.67829077 -1392.49760803    -0.00000017    -0.00000007  0.77D-08  0.91D-08  2367.14
   15     8     8     1.07626985    -0.69066816 -1392.48505191    -0.00000002    -0.00000002  0.18D-08  0.29D-08  2367.14
   15     9     9     1.07626987    -0.69066816 -1392.48505191    -0.00000006    -0.00000002  0.20D-08  0.31D-08  2367.14
   15    10    10     1.07626661    -0.69066814 -1392.48505189    -0.00000005    -0.00000003  0.35D-08  0.52D-08  2367.14
   15    11    11     1.07626576    -0.69066813 -1392.48505188    -0.00000010    -0.00000003  0.29D-08  0.44D-08  2367.14
   15    12    12     1.07626445    -0.69066813 -1392.48505187    -0.00000010    -0.00000004  0.30D-08  0.49D-08  2367.14
   15    13    13     1.07626302    -0.69066812 -1392.48505187    -0.00000011    -0.00000004  0.33D-08  0.53D-08  2367.14
   15    14    14     1.07626262    -0.69066812 -1392.48505186    -0.00000012    -0.00000004  0.36D-08  0.54D-08  2367.14
   15    15    15     1.08495394    -0.68511554 -1392.43334232    -0.00000020    -0.00000008  0.98D-08  0.93D-08  2367.14
   15    16    16     1.08494941    -0.68511554 -1392.43334231    -0.00000020    -0.00000009  0.10D-07  0.94D-08  2367.14
   15    17    17     1.08494824    -0.68511552 -1392.43334228    -0.00000022    -0.00000010  0.12D-07  0.11D-07  2367.14
   15    18    18     1.08196996    -0.70125951 -1392.42508105    -0.00000018    -0.00000001  0.58D-09  0.86D-09  2367.14
   15    19    19     1.08196983    -0.70125950 -1392.42508104    -0.00000026    -0.00000001  0.11D-08  0.17D-08  2367.14
   15    20    20     1.08197052    -0.70125951 -1392.42508104    -0.00000032    -0.00000001  0.85D-09  0.13D-08  2367.14
   16     1     1     1.08162183    -0.67829090 -1392.49760817    -0.00000003    -0.00000002  0.11D-08  0.17D-08  2434.76
   16     2     2     1.08162084    -0.67829090 -1392.49760817    -0.00000004    -0.00000002  0.77D-09  0.27D-08  2434.76
   16     3     3     1.08161922    -0.67829090 -1392.49760816    -0.00000005    -0.00000002  0.13D-08  0.33D-08  2434.76
   16     4     4     1.08160090    -0.67829088 -1392.49760815    -0.00000008    -0.00000002  0.20D-08  0.24D-08  2434.76
   16     5     5     1.08160633    -0.67829087 -1392.49760814    -0.00000007    -0.00000002  0.22D-08  0.37D-08  2434.76
   16     6     6     1.08159885    -0.67829087 -1392.49760813    -0.00000007    -0.00000003  0.28D-08  0.40D-08  2434.76
   16     7     7     1.08159633    -0.67829085 -1392.49760811    -0.00000008    -0.00000004  0.33D-08  0.52D-08  2434.76
   16     8     8     1.07626987    -0.69066816 -1392.48505191    -0.00000000    -0.00000002  0.18D-08  0.29D-08  2434.76
   16     9     9     1.07626989    -0.69066816 -1392.48505191    -0.00000000    -0.00000002  0.20D-08  0.31D-08  2434.76
   16    10    10     1.07626661    -0.69066814 -1392.48505189    -0.00000000    -0.00000003  0.35D-08  0.52D-08  2434.76
   16    11    11     1.07626576    -0.69066813 -1392.48505188    -0.00000000    -0.00000003  0.29D-08  0.44D-08  2434.76
   16    12    12     1.07626445    -0.69066813 -1392.48505187    -0.00000000    -0.00000004  0.30D-08  0.49D-08  2434.76
   16    13    13     1.07626303    -0.69066812 -1392.48505187    -0.00000000    -0.00000004  0.33D-08  0.53D-08  2434.76
   16    14    14     1.07626264    -0.69066812 -1392.48505186    -0.00000000    -0.00000004  0.36D-08  0.54D-08  2434.76
   16    15    15     1.08500135    -0.68511571 -1392.43334248    -0.00000016    -0.00000002  0.82D-09  0.30D-08  2434.76
   16    16    16     1.08499984    -0.68511570 -1392.43334247    -0.00000016    -0.00000003  0.15D-08  0.44D-08  2434.76
   16    17    17     1.08499903    -0.68511570 -1392.43334247    -0.00000019    -0.00000003  0.16D-08  0.46D-08  2434.76
   16    18    18     1.08196992    -0.70125951 -1392.42508105    -0.00000000    -0.00000001  0.57D-09  0.81D-09  2434.76
   16    19    19     1.08196983    -0.70125950 -1392.42508104    -0.00000000    -0.00000001  0.11D-08  0.16D-08  2434.76
   16    20    20     1.08197051    -0.70125951 -1392.42508104    -0.00000000    -0.00000001  0.85D-09  0.13D-08  2434.76


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   3.8%  79.3%

 Initialization:   0.3%
 Other:           16.3%

 Total CPU:     2434.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222//2/222          -0.0000000   0.0000000   0.0084409   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.9638789
                      0.0000000   0.0000001  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                     -0.0000000   0.0000000
 2/2/22/222          -0.0000000  -0.0063244   0.0000000   0.0055903   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                      0.9628068   0.0000084  -0.0000000   0.0454801  -0.0000412  -0.0000000  -0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000003
 2//22/2222          -0.0000000  -0.0000000   0.9611998   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0085094
                      0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.0000000  -0.0000000
 22/22//222           0.0000000   0.0050001   0.0000000   0.0056567   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                     -0.0406785  -0.0000002  -0.0000003   0.8611620   0.0000016   0.0148242  -0.0000000  -0.0000000   0.0000000
                     -0.0000000  -0.4294596
 2/22/2/222           0.0000000   0.0025000   0.0000000   0.0028286   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                     -0.0203398  -0.0000001  -0.0000001   0.4305809   0.0000008  -0.0296483   0.0000000   0.0000000  -0.0000001
                      0.0000000   0.8589189
 22//2/2222          -0.0000000   0.2846901  -0.0000000   0.3220774   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                      0.0001796   0.0000000   0.0000000  -0.0038016  -0.0000000   0.8574716  -0.0000004  -0.0000000  -0.0000000
                      0.0000000   0.0298329
 22/2/2/222          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0064041  -0.0039985  -0.0000000  -0.2863512  -0.0000000
                      0.0000348  -0.0000000   0.0000000   0.0000001   0.8131770  -0.0000000  -0.0148241   0.0000000  -0.0000000
                      0.4294601  -0.0000000
 2///222222          -0.3545018   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.7832402  -0.0000000   0.0000000
                      0.0000001  -0.0063772  -0.0041550  -0.0000000  -0.0000000   0.0000000   0.0000000   0.4287353  -0.0149165
                      0.0000000  -0.0000000
 22//22/222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0005380   0.0053115   0.0000000   0.5785723   0.0000000
                     -0.0000082  -0.0000000   0.0000000  -0.0000000  -0.1920406  -0.0000000  -0.0256762  -0.0000000   0.0000000
                      0.7438456  -0.0000000
 222/2//222          -0.0051930   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0012381  -0.0000000   0.0000000
                     -0.0000004   0.0496765   0.6075850   0.0000002   0.0000000   0.0000000  -0.0000000   0.0256763   0.7438456
                     -0.0000000   0.0000001
 2//2/22222           0.5913436   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.1409773   0.0000000   0.0000000
                     -0.0000000   0.0004387   0.0053639   0.0000000  -0.0000000   0.0000000  -0.0000000   0.7425933  -0.0258361
                     -0.0000000  -0.0000000
 2/22//2222          -0.0000000   0.0000000  -0.0000000   0.0000000   0.0612487   0.6048286   0.0000000  -0.0051081   0.0000000
                      0.0000001  -0.0000000  -0.0000000  -0.0000000   0.0016952   0.0000004   0.7425925   0.0000000   0.0000000
                      0.0258361   0.0000000
 2/2/2/2222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.7292609   0.4553169   0.0000000  -0.0025281  -0.0000000
                      0.0000003  -0.0000000  -0.0000000   0.0000000   0.0071794  -0.0000002  -0.4287340  -0.0000000  -0.0000000
                     -0.0149166  -0.0000000
 2222///222          -0.0031131  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0068783  -0.0000000  -0.0000000
                     -0.0000063   0.7223218   0.4706426   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0148242  -0.4294593
                      0.0000000  -0.0000000
 22/2//2222          -0.0000000   0.7201823   0.0000000  -0.6365901  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                      0.0085000   0.0000001  -0.0000000   0.0004020  -0.0000004   0.0000011   0.0000000   0.0000000   0.0000000
                     -0.0000000   0.0000001
 2/222//222          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0054725   0.0052012   0.0000000   0.7157651  -0.0000000
                      0.0000205   0.0000000   0.0000000   0.0000001   0.4805542   0.0000000   0.0148243   0.0000000  -0.0000000
                     -0.4294594   0.0000000
 222///2222           0.6697343   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.5390592  -0.0000000   0.0000000
                      0.0000000  -0.0056176   0.0051358   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.4287351   0.0149163
                      0.0000000   0.0000000
 2/2//22222          -0.0000000   0.5693791   0.0000000   0.6441583   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                      0.0003591   0.0000000   0.0000000  -0.0076030  -0.0000000  -0.4287341   0.0000002   0.0000000   0.0000000
                     -0.0000000  -0.0149167
 2//222/222           0.0058814  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0047341   0.0000000  -0.0000001
                     -0.0000055   0.6362778  -0.5817243  -0.0000003   0.0000000   0.0000000  -0.0000000   0.0148241   0.4294602
                      0.0000000   0.0000000
 22///22222           0.0000000   0.0000000   0.0000000  -0.0000000   0.6231718  -0.5922764  -0.0000000   0.0063191  -0.0000000
                      0.0000002  -0.0000000  -0.0000000   0.0000000   0.0042423   0.0000002   0.4287369  -0.0000000  -0.0000000
                      0.0149165   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.961146   -0.000000   -0.000000   -0.025197   -0.000000   -0.000000   -0.000000    0.008409
             0.000000   -0.000000    0.000732   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.711010    0.000000    0.000000    0.647226   -0.000000    0.000000    0.000000   -0.006618   -0.000000   -0.000000
             0.005240    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.000000    0.000000    0.961477   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.008441    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 4          -0.647231   -0.000000    0.000000    0.711017    0.000000   -0.000000   -0.000000    0.005240    0.000000    0.000000
             0.006618    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000002    0.000000   -0.000000    0.000000
 5          -0.000000    0.538283    0.000000    0.000000   -0.000000    0.000000    0.796681    0.000000   -0.003631   -0.000000
             0.000000   -0.000000    0.000000   -0.007620    0.000000   -0.000001    0.000000    0.000000    0.000000    0.000000
 6           0.000000   -0.796684    0.000000   -0.000000    0.000000   -0.000000    0.538284   -0.000000    0.007620   -0.000000
             0.000000   -0.000000    0.000000   -0.003631    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 7          -0.000000   -0.000000    0.025198    0.000000    0.000000    0.961157    0.000000   -0.000000    0.000000   -0.000732
             0.000000    0.000000    0.008409   -0.000000    0.000001   -0.000000    0.000000    0.000000   -0.000000    0.000000
 8           0.000000    0.007923    0.000000    0.000000   -0.000000   -0.000000   -0.003116    0.000000    0.939548    0.000000
            -0.000000   -0.000000   -0.000000   -0.215204    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 9           0.000000   -0.000000    0.000000   -0.000000   -0.008513    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.963879   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 10          0.008497    0.000000    0.000000    0.000526    0.000000    0.000000    0.000000    0.963857    0.000009   -0.000001
             0.006728    0.000000   -0.000008    0.000040   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 11          0.000000    0.000000   -0.001513    0.000000   -0.000000   -0.008378   -0.000000    0.000008    0.000000    0.063171
             0.000000    0.000000    0.961808   -0.000000    0.000000   -0.000000    0.000000   -0.000001   -0.000000   -0.000000
 12         -0.000000   -0.000000    0.008378    0.000000    0.000000   -0.001513   -0.000000    0.000000    0.000000   -0.961809
            -0.000000   -0.000000    0.063171    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 13          0.000526    0.000000    0.000000   -0.008498   -0.000000    0.000000    0.000000   -0.006728    0.000000   -0.000000
             0.963858    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 14         -0.000000    0.003115    0.000000   -0.000000   -0.000000   -0.000000    0.007923   -0.000041    0.215205    0.000000
            -0.000000    0.000000    0.000000    0.939551   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 15          0.000001    0.000000    0.000000    0.000002   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.959460    0.000000   -0.000000   -0.032233
 16          0.000000    0.000001   -0.000000   -0.000000    0.000000    0.000000    0.000002   -0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000    0.959461   -0.000000   -0.000000   -0.032234    0.000000
 17          0.000000   -0.000000    0.000001    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.000000    0.959461    0.000000   -0.000000    0.032234    0.000000    0.000000
 18          0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000001   -0.000000   -0.032447    0.000000   -0.000000    0.960797    0.000000   -0.000000
 19         -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000001   -0.000000    0.032448    0.000000   -0.000000    0.960797    0.000000
 20          0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.032448    0.000000   -0.000000    0.960797

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.961513   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000004    0.000025    0.000000   -0.000000    0.000000    0.000000    0.000001   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.961513    0.000000    0.000001    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000020
             0.000000    0.000000   -0.000016   -0.000000    0.000001   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.961514   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000026    0.000000
             0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000001   -0.000000    0.961522   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000016
            -0.000000    0.000000   -0.000020    0.000000   -0.000001   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.961520   -0.000000    0.000000    0.000006    0.000000    0.000000
             0.000000    0.000000    0.000000    0.000025    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.961523    0.000000   -0.000025   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000006   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
 7           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.961524    0.000000    0.000000    0.000000
            -0.000025   -0.000004    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000    0.000006   -0.000025    0.000000    0.963916   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 9           0.000000    0.000000   -0.000026   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.963916   -0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 10          0.000000    0.000020    0.000000   -0.000016    0.000000    0.000000    0.000000    0.000000   -0.000000    0.963918
            -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 11         -0.000004    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000025   -0.000000    0.000000   -0.000000
             0.963918   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 12          0.000025    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000004   -0.000000   -0.000000    0.000000
            -0.000000    0.963919   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 13          0.000000   -0.000016    0.000000   -0.000020    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000    0.963920    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 14         -0.000000   -0.000000    0.000000    0.000000    0.000025    0.000006   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000    0.963920   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 15          0.000000    0.000001   -0.000000   -0.000001    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000    0.960001    0.000000   -0.000000   -0.000000    0.000000    0.000085
 16          0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.960002   -0.000000    0.000000    0.000085   -0.000000
 17          0.000001   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.960002   -0.000084    0.000000   -0.000000
 18         -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000084    0.961345   -0.000000   -0.000000
 19         -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000    0.000000    0.000085    0.000000   -0.000000    0.961345   -0.000000
 20         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000085   -0.000000   -0.000000   -0.000000   -0.000000    0.961345


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96114554 (fixed)   0.96152876 (relaxed)   0.96151281 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003317   -0.00000001   -0.48958653
 Singles      0.02810863   -0.14874835   -0.15514601
 Pairs        0.05351591   -0.00000000   -0.03355835
 Total        1.08165771   -0.14874836   -0.67829090
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.81931533
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.44008703
 One electron energy                -1924.80701129
 Two electron energy                  532.30940312
 Virial quotient                       -0.95741146
 Correlation energy                    -0.67829284
 !MRCI STATE 1.1 Energy             -1392.497608169764

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55299601 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55297167 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55299601 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54797773 (Pople, fixed reference)
 Cluster corrected energies         -1392.54795427 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54797773 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.71100974 (fixed)   0.96152920 (relaxed)   0.96151325 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003317   -0.00000001   -0.48958665
 Singles      0.02810812   -0.14874873   -0.15514614
 Pairs        0.05351542    0.00000002   -0.03355811
 Total        1.08165671   -0.14874872   -0.67829090
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.81931533
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.44019810
 One electron energy                -1924.80707419
 Two electron energy                  532.30946602
 Virial quotient                       -0.95741139
 Correlation energy                    -0.67829283
 !MRCI STATE 2.1 Energy             -1392.497608167950

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55299533 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55297100 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55299533 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54797707 (Pople, fixed reference)
 Cluster corrected energies         -1392.54795362 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54797707 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96147692 (fixed)   0.96152992 (relaxed)   0.96151397 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003317   -0.00000001   -0.48958765
 Singles      0.02810928   -0.14874842   -0.15514669
 Pairs        0.05351265   -0.00000000   -0.03355656
 Total        1.08165509   -0.14874843   -0.67829090
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.81931533
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.44004261
 One electron energy                -1924.80702339
 Two electron energy                  532.30941523
 Virial quotient                       -0.95741149
 Correlation energy                    -0.67829283
 !MRCI STATE 3.1 Energy             -1392.497608163916

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55299423 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55296989 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55299423 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54797601 (Pople, fixed reference)
 Cluster corrected energies         -1392.54795255 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54797601 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.71101742 (fixed)   0.96153806 (relaxed)   0.96152211 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003317   -0.00000001   -0.48959714
 Singles      0.02810645   -0.14874692   -0.15514858
 Pairs        0.05349716   -0.00000019   -0.03354516
 Total        1.08163678   -0.14874711   -0.67829088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.81931533
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.44018859
 One electron energy                -1924.80691346
 Two electron energy                  532.30930532
 Virial quotient                       -0.95741139
 Correlation energy                    -0.67829281
 !MRCI STATE 4.1 Energy             -1392.497608146219

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55298179 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55295745 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55298179 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54796402 (Pople, fixed reference)
 Cluster corrected energies         -1392.54794056 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54796402 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.79668102 (fixed)   0.96153565 (relaxed)   0.96151970 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003317   -0.00000001   -0.48958809
 Singles      0.02811371   -0.14875423   -0.15515161
 Pairs        0.05349533   -0.00000000   -0.03355117
 Total        1.08164221   -0.14875424   -0.67829087
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.81931533
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.44073992
 One electron energy                -1924.80787416
 Two electron energy                  532.31026602
 Virial quotient                       -0.95741103
 Correlation energy                    -0.67829281
 !MRCI STATE 5.1 Energy             -1392.497608138659

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55298546 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55296112 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55298546 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54796756 (Pople, fixed reference)
 Cluster corrected energies         -1392.54794410 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54796756 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.79668386 (fixed)   0.96153897 (relaxed)   0.96152302 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003318   -0.00000001   -0.48958945
 Singles      0.02811090   -0.14875642   -0.15515301
 Pairs        0.05349065   -0.00000000   -0.03354842
 Total        1.08163473   -0.14875643   -0.67829087
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.81931533
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.44151630
 One electron energy                -1924.80836096
 Two electron energy                  532.31075283
 Virial quotient                       -0.95741052
 Correlation energy                    -0.67829280
 !MRCI STATE 6.1 Energy             -1392.497608128758

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55298038 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55295604 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55298038 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54796266 (Pople, fixed reference)
 Cluster corrected energies         -1392.54793920 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54796266 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96115685 (fixed)   0.96154009 (relaxed)   0.96152414 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003318   -0.00000001   -0.48958894
 Singles      0.02811208   -0.14875819   -0.15515407
 Pairs        0.05348696   -0.00000000   -0.03354785
 Total        1.08163222   -0.14875819   -0.67829085
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.81931533
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.44173341
 One electron energy                -1924.80862383
 Two electron energy                  532.31101572
 Virial quotient                       -0.95741038
 Correlation energy                    -0.67829278
 !MRCI STATE 7.1 Energy             -1392.497608112947

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.55297866 (Davidson, fixed reference)
 Cluster corrected energies         -1392.55295432 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.55297866 (Davidson, rotated reference)

 Cluster corrected energies         -1392.54796100 (Pople, fixed reference)
 Cluster corrected energies         -1392.54793754 (Pople, relaxed reference)
 Cluster corrected energies         -1392.54796100 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.93954766 (fixed)   0.96391649 (relaxed)   0.96391647 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000004   -0.00000001   -0.56091754
 Singles      0.01722453   -0.08696952   -0.09185730
 Pairs        0.05904534    0.00000000   -0.03789332
 Total        1.07626992   -0.08696952   -0.69066816
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79438568
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.97604278
 One electron energy                -1932.80671219
 Two electron energy                  540.32166027
 Virial quotient                       -0.95639283
 Correlation energy                    -0.69066623
 !MRCI STATE 8.1 Energy             -1392.485051913123

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53772897 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53772894 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53772897 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53276722 (Pople, fixed reference)
 Cluster corrected energies         -1392.53276718 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53276722 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.96387886 (fixed)   0.96391648 (relaxed)   0.96391646 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000004   -0.00000001   -0.56091814
 Singles      0.01722425   -0.08696885   -0.09185707
 Pairs        0.05904564    0.00000000   -0.03789294
 Total        1.07626993   -0.08696886   -0.69066816
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79438568
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.97612109
 One electron energy                -1932.80681105
 Two electron energy                  540.32175914
 Virial quotient                       -0.95639278
 Correlation energy                    -0.69066623
 !MRCI STATE 9.1 Energy             -1392.485051907265

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53772897 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53772894 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53772897 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53276722 (Pople, fixed reference)
 Cluster corrected energies         -1392.53276719 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53276722 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96385685 (fixed)   0.96391795 (relaxed)   0.96391792 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000004   -0.00000001   -0.56093055
 Singles      0.01721828   -0.08695788   -0.09185699
 Pairs        0.05904834    0.00000055   -0.03788061
 Total        1.07626666   -0.08695733   -0.69066814
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79438569
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.97583973
 One electron energy                -1932.80689760
 Two electron energy                  540.32184571
 Virial quotient                       -0.95639297
 Correlation energy                    -0.69066621
 !MRCI STATE 10.1 Energy            -1392.485051892592

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53772670 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53772666 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53772670 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53276504 (Pople, fixed reference)
 Cluster corrected energies         -1392.53276501 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53276504 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.96180840 (fixed)   0.96391833 (relaxed)   0.96391831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000004   -0.00000001   -0.56091980
 Singles      0.01722395   -0.08696936   -0.09185691
 Pairs        0.05904181    0.00000000   -0.03789142
 Total        1.07626581   -0.08696936   -0.69066813
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79438568
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.97630742
 One electron energy                -1932.80704065
 Two electron energy                  540.32198877
 Virial quotient                       -0.95639266
 Correlation energy                    -0.69066620
 !MRCI STATE 11.1 Energy            -1392.485051881062

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53772610 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53772607 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53772610 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53276447 (Pople, fixed reference)
 Cluster corrected energies         -1392.53276444 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53276447 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.96180900 (fixed)   0.96391891 (relaxed)   0.96391889 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000004   -0.00000001   -0.56092003
 Singles      0.01722402   -0.08696984   -0.09185692
 Pairs        0.05904043    0.00000000   -0.03789117
 Total        1.07626450   -0.08696985   -0.69066813
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79438568
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.97634317
 One electron energy                -1932.80708186
 Two electron energy                  540.32202998
 Virial quotient                       -0.95639264
 Correlation energy                    -0.69066619
 !MRCI STATE 12.1 Energy            -1392.485051874116

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53772519 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53772515 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53772519 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53276360 (Pople, fixed reference)
 Cluster corrected energies         -1392.53276357 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53276360 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.96385845 (fixed)   0.96391955 (relaxed)   0.96391953 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000004   -0.00000001   -0.56092142
 Singles      0.01722373   -0.08696971   -0.09185683
 Pairs        0.05903930    0.00000057   -0.03788987
 Total        1.07626308   -0.08696915   -0.69066812
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79438568
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.97640901
 One electron energy                -1932.80717705
 Two electron energy                  540.32212518
 Virial quotient                       -0.95639259
 Correlation energy                    -0.69066619
 !MRCI STATE 13.1 Energy            -1392.485051867479

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53772420 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53772416 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53772420 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53276265 (Pople, fixed reference)
 Cluster corrected energies         -1392.53276262 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53276265 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.93955074 (fixed)   0.96391973 (relaxed)   0.96391971 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000004   -0.00000001   -0.56092109
 Singles      0.01722375   -0.08696971   -0.09185679
 Pairs        0.05903889   -0.00000000   -0.03789024
 Total        1.07626268   -0.08696971   -0.69066812
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.79438568
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.97644051
 One electron energy                -1932.80721056
 Two electron energy                  540.32215870
 Virial quotient                       -0.95639257
 Correlation energy                    -0.69066618
 !MRCI STATE 14.1 Energy            -1392.485051860410

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.53772392 (Davidson, fixed reference)
 Cluster corrected energies         -1392.53772388 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.53772392 (Davidson, rotated reference)

 Cluster corrected energies         -1392.53276238 (Pople, fixed reference)
 Cluster corrected energies         -1392.53276235 (Pople, relaxed reference)
 Cluster corrected energies         -1392.53276238 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.95946006 (fixed)   0.96003013 (relaxed)   0.96000135 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005995   -0.00000007   -0.51267867
 Singles      0.03035966   -0.14933733   -0.15679923
 Pairs        0.05464679    0.02047094   -0.01563781
 Total        1.08506640   -0.12886646   -0.68511571
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.74819911
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.38616270
 One electron energy                -1924.59377426
 Two electron energy                  532.16043178
 Virial quotient                       -0.95740277
 Correlation energy                    -0.68514337
 !MRCI STATE 15.1 Energy            -1392.433342479687

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.49162516 (Davidson, fixed reference)
 Cluster corrected energies         -1392.49158059 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.49162516 (Davidson, rotated reference)

 Cluster corrected energies         -1392.48647756 (Pople, fixed reference)
 Cluster corrected energies         -1392.48643439 (Pople, relaxed reference)
 Cluster corrected energies         -1392.48647756 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Coefficient of reference function:   C(0) = 0.95946072 (fixed)   0.96003079 (relaxed)   0.96000202 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005995   -0.00000007   -0.49381398
 Singles      0.03035962   -0.14933656   -0.15679927
 Pairs        0.05464531   -0.00000001   -0.03450246
 Total        1.08506488   -0.14933664   -0.68511570
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.74819911
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.38600847
 One electron energy                -1924.59364380
 Two electron energy                  532.16030133
 Virial quotient                       -0.95740287
 Correlation energy                    -0.68514336
 !MRCI STATE 16.1 Energy            -1392.433342473724

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.49162411 (Davidson, fixed reference)
 Cluster corrected energies         -1392.49157955 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.49162411 (Davidson, rotated reference)

 Cluster corrected energies         -1392.48647655 (Pople, fixed reference)
 Cluster corrected energies         -1392.48643338 (Pople, relaxed reference)
 Cluster corrected energies         -1392.48647655 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.95946108 (fixed)   0.96003115 (relaxed)   0.96000237 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005995   -0.00000007   -0.49381418
 Singles      0.03035956   -0.14933674   -0.15679939
 Pairs        0.05464457   -0.00000000   -0.03450213
 Total        1.08506408   -0.14933682   -0.68511570
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.74819911
 Nuclear energy                         0.00000000
 Kinetic energy                      1454.38602018
 One electron energy                -1924.59365421
 Two electron energy                  532.16031174
 Virial quotient                       -0.95740286
 Correlation energy                    -0.68514336
 !MRCI STATE 17.1 Energy            -1392.433342472279

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.49162356 (Davidson, fixed reference)
 Cluster corrected energies         -1392.49157899 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.49162356 (Davidson, rotated reference)

 Cluster corrected energies         -1392.48647601 (Pople, fixed reference)
 Cluster corrected energies         -1392.48643284 (Pople, relaxed reference)
 Cluster corrected energies         -1392.48647601 (Pople, rotated reference)



 RESULTS FOR STATE 18.1
 ======================

 Coefficient of reference function:   C(0) = 0.96079729 (fixed)   0.96137407 (relaxed)   0.96134503 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006042   -0.00000007   -0.56223304
 Singles      0.02200804   -0.09294593   -0.10016452
 Pairs        0.05996683    0.00000005   -0.03886195
 Total        1.08203529   -0.09294595   -0.70125951
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.72384920
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.93216040
 One electron energy                -1932.59598579
 Two electron energy                  540.17090474
 Virial quotient                       -0.95638047
 Correlation energy                    -0.70123185
 !MRCI STATE 18.1 Energy            -1392.425081048355

 Properties without orbital relaxation:

 !MRCI STATE 18.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.48260681 (Davidson, fixed reference)
 Cluster corrected energies         -1392.48256097 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.48260681 (Davidson, rotated reference)

 Cluster corrected energies         -1392.47740934 (Pople, fixed reference)
 Cluster corrected energies         -1392.47736513 (Pople, relaxed reference)
 Cluster corrected energies         -1392.47740934 (Pople, rotated reference)



 RESULTS FOR STATE 19.1
 ======================

 Coefficient of reference function:   C(0) = 0.96079733 (fixed)   0.96137412 (relaxed)   0.96134507 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006042   -0.00000007   -0.56223374
 Singles      0.02200792   -0.09294517   -0.10016451
 Pairs        0.05996686   -0.00000001   -0.03886125
 Total        1.08203520   -0.09294525   -0.70125950
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.72384920
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.93211475
 One electron energy                -1932.59594268
 Two electron energy                  540.17086164
 Virial quotient                       -0.95638050
 Correlation energy                    -0.70123184
 !MRCI STATE 19.1 Energy            -1392.425081041227

 Properties without orbital relaxation:

 !MRCI STATE 19.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.48260674 (Davidson, fixed reference)
 Cluster corrected energies         -1392.48256090 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.48260674 (Davidson, rotated reference)

 Cluster corrected energies         -1392.47740927 (Pople, fixed reference)
 Cluster corrected energies         -1392.47736506 (Pople, relaxed reference)
 Cluster corrected energies         -1392.47740927 (Pople, rotated reference)



 RESULTS FOR STATE 20.1
 ======================

 Coefficient of reference function:   C(0) = 0.96079702 (fixed)   0.96137381 (relaxed)   0.96134477 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00006042   -0.00000007   -0.00030824
 Singles      0.02200809   -0.09294562   -0.10016455
 Pairs        0.05996738   -0.60802274   -0.60078672
 Total        1.08203589   -0.70096843   -0.70125951
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.72384919
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.93212102
 One electron energy                -1932.59593654
 Two electron energy                  540.17085550
 Virial quotient                       -0.95638049
 Correlation energy                    -0.70123185
 !MRCI STATE 20.1 Energy            -1392.425081040540

 Properties without orbital relaxation:

 !MRCI STATE 20.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.48260722 (Davidson, fixed reference)
 Cluster corrected energies         -1392.48256138 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.48260722 (Davidson, rotated reference)

 Cluster corrected energies         -1392.47740974 (Pople, fixed reference)
 Cluster corrected energies         -1392.47736553 (Pople, relaxed reference)
 Cluster corrected energies         -1392.47740974 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.44       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      560.03       700     1000      520     2100     2140     5101   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2528.49   2523.22      3.42      0.82      0.85
 REAL TIME  *      2748.03 SEC
 DISK USED  *       596.54 MB (local),        5.87 GB (total)
 SF USED    *         5.41 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -1392.55299601  AU                              
 SETTING HLSDIAG(2)     =     -1392.55299533  AU                              
 SETTING HLSDIAG(3)     =     -1392.55299423  AU                              
 SETTING HLSDIAG(4)     =     -1392.55298179  AU                              
 SETTING HLSDIAG(5)     =     -1392.55298546  AU                              
 SETTING HLSDIAG(6)     =     -1392.55298038  AU                              
 SETTING HLSDIAG(7)     =     -1392.55297866  AU                              
 SETTING HLSDIAG(8)     =     -1392.53772897  AU                              
 SETTING HLSDIAG(9)     =     -1392.53772897  AU                              
 SETTING HLSDIAG(10)    =     -1392.53772670  AU                              
 SETTING HLSDIAG(11)    =     -1392.53772610  AU                              
 SETTING HLSDIAG(12)    =     -1392.53772519  AU                              
 SETTING HLSDIAG(13)    =     -1392.53772420  AU                              
 SETTING HLSDIAG(14)    =     -1392.53772392  AU                              
 SETTING HLSDIAG(15)    =     -1392.49162516  AU                              
 SETTING HLSDIAG(16)    =     -1392.49162411  AU                              
 SETTING HLSDIAG(17)    =     -1392.49162356  AU                              
 SETTING HLSDIAG(18)    =     -1392.48260681  AU                              
 SETTING HLSDIAG(19)    =     -1392.48260674  AU                              
 SETTING HLSDIAG(20)    =     -1392.48260722  AU                              


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

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  70

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -1391.77070438
     2     -1391.77070438
     3     -1391.77070438
     4     -1391.77070437
     5     -1391.77070437
     6     -1391.77070437
     7     -1391.77070437

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.16D-04
 Number of N-2 electron functions:     700
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       1329888
 Total number of contracted configurations:      1409119
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:  570570 words, CPU-Time:      0.16 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  429037 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -1391.77070438     0.00000000    -0.86308177  0.57D-01  0.96D-01     0.35
    1     2     2     1.00000000     0.00000000 -1391.77070438     0.00000000    -0.86352300  0.56D-01  0.95D-01     0.35
    1     3     3     1.00000000     0.00000000 -1391.77070438     0.00000000    -0.86311754  0.55D-01  0.94D-01     0.35
    1     4     4     1.00000000     0.00000000 -1391.77070437    -0.00000000    -0.86420509  0.56D-01  0.96D-01     0.35
    1     5     5     1.00000000     0.00000000 -1391.77070437     0.00000000    -0.86409592  0.57D-01  0.96D-01     0.35
    1     6     6     1.00000000     0.00000000 -1391.77070437     0.00000000    -0.86524649  0.56D-01  0.95D-01     0.35
    1     7     7     1.00000000     0.00000000 -1391.77070437     0.00000000    -0.86431619  0.56D-01  0.96D-01     0.35
    2     1     1     1.08790096    -0.66119897 -1392.43190335    -0.66119897    -0.03526287  0.60D-02  0.29D-02    18.20
    2     2     2     1.08808171    -0.66113578 -1392.43184016    -0.66113578    -0.03526264  0.60D-02  0.29D-02    18.20
    2     3     3     1.08853275    -0.66105205 -1392.43175643    -0.66105205    -0.03542387  0.61D-02  0.29D-02    18.20
    2     4     4     1.08849957    -0.66102366 -1392.43172803    -0.66102366    -0.03558839  0.62D-02  0.29D-02    18.20
    2     5     5     1.08876409    -0.66097670 -1392.43168107    -0.66097670    -0.03560030  0.62D-02  0.29D-02    18.20
    2     6     6     1.08954656    -0.66036402 -1392.43106839    -0.66036402    -0.03613451  0.67D-02  0.28D-02    18.20
    2     7     7     1.08948424    -0.66012525 -1392.43082962    -0.66012525    -0.03628963  0.67D-02  0.28D-02    18.20
    3     1     1     1.07696617    -0.69175938 -1392.46246376    -0.03056041    -0.00163234  0.24D-03  0.22D-03    36.04
    3     2     2     1.07700228    -0.69172881 -1392.46243319    -0.03059303    -0.00164852  0.24D-03  0.22D-03    36.04
    3     3     3     1.07674886    -0.69168999 -1392.46239436    -0.03063794    -0.00166498  0.23D-03  0.23D-03    36.04
    3     4     4     1.07700130    -0.69168304 -1392.46238742    -0.03065938    -0.00167348  0.23D-03  0.23D-03    36.04
    3     5     5     1.07687560    -0.69166165 -1392.46236603    -0.03068496    -0.00168327  0.23D-03  0.23D-03    36.04
    3     6     6     1.07711724    -0.69162186 -1392.46232623    -0.03125783    -0.00171274  0.26D-03  0.21D-03    36.04
    3     7     7     1.07703717    -0.69154361 -1392.46224797    -0.03141836    -0.00176649  0.26D-03  0.22D-03    36.04
    4     1     1     1.07702221    -0.69335588 -1392.46406026    -0.00159650    -0.00024708  0.15D-04  0.55D-04    53.95
    4     2     2     1.07700672    -0.69335500 -1392.46405937    -0.00162619    -0.00021757  0.20D-04  0.35D-04    53.95
    4     3     3     1.07704396    -0.69335349 -1392.46405787    -0.00166351    -0.00024692  0.15D-04  0.55D-04    53.95
    4     4     4     1.07695666    -0.69333703 -1392.46404140    -0.00165399    -0.00023364  0.20D-04  0.38D-04    53.95
    4     5     5     1.07697250    -0.69333093 -1392.46403530    -0.00166928    -0.00027868  0.14D-04  0.68D-04    53.95
    4     6     6     1.07702795    -0.69332177 -1392.46402614    -0.00169991    -0.00028521  0.14D-04  0.70D-04    53.95
    4     7     7     1.07698147    -0.69331790 -1392.46402227    -0.00177429    -0.00028627  0.14D-04  0.69D-04    53.95
    5     1     1     1.07783473    -0.69359814 -1392.46430252    -0.00024226    -0.00003253  0.12D-05  0.73D-05    71.85
    5     2     2     1.07780241    -0.69359203 -1392.46429640    -0.00023703    -0.00004184  0.10D-05  0.11D-04    71.85
    5     3     3     1.07771858    -0.69357540 -1392.46427977    -0.00022190    -0.00006815  0.17D-05  0.21D-04    71.85
    5     4     4     1.07770694    -0.69357506 -1392.46427943    -0.00023803    -0.00006913  0.17D-05  0.22D-04    71.85
    5     5     5     1.07765142    -0.69356167 -1392.46426605    -0.00023074    -0.00008162  0.31D-05  0.25D-04    71.85
    5     6     6     1.07764813    -0.69355871 -1392.46426308    -0.00023695    -0.00008337  0.31D-05  0.25D-04    71.85
    5     7     7     1.07765709    -0.69355813 -1392.46426250    -0.00024023    -0.00008478  0.32D-05  0.25D-04    71.85
    6     1     1     1.07806914    -0.69362593 -1392.46433031    -0.00002779    -0.00000878  0.73D-06  0.22D-05    89.78
    6     2     2     1.07803491    -0.69362350 -1392.46432787    -0.00003147    -0.00001077  0.10D-05  0.28D-05    89.78
    6     3     3     1.07800705    -0.69362211 -1392.46432648    -0.00004671    -0.00001042  0.14D-05  0.22D-05    89.78
    6     4     4     1.07800298    -0.69362201 -1392.46432638    -0.00004695    -0.00001043  0.14D-05  0.22D-05    89.78
    6     5     5     1.07798149    -0.69361980 -1392.46432417    -0.00005813    -0.00001189  0.16D-05  0.24D-05    89.78
    6     6     6     1.07798051    -0.69361879 -1392.46432316    -0.00006007    -0.00001262  0.17D-05  0.25D-05    89.78
    6     7     7     1.07797621    -0.69361873 -1392.46432310    -0.00006060    -0.00001261  0.17D-05  0.25D-05    89.78
    7     1     1     1.07819664    -0.69363291 -1392.46433729    -0.00000698    -0.00000183  0.86D-07  0.45D-06   107.75
    7     2     2     1.07817897    -0.69363245 -1392.46433683    -0.00000895    -0.00000218  0.91D-07  0.52D-06   107.75
    7     3     3     1.07817607    -0.69363206 -1392.46433644    -0.00000995    -0.00000277  0.69D-07  0.77D-06   107.75
    7     4     4     1.07817663    -0.69363205 -1392.46433643    -0.00001005    -0.00000284  0.65D-07  0.85D-06   107.75
    7     5     5     1.07816622    -0.69363122 -1392.46433559    -0.00001142    -0.00000363  0.61D-07  0.11D-05   107.75
    7     6     6     1.07816445    -0.69363098 -1392.46433535    -0.00001219    -0.00000384  0.78D-07  0.11D-05   107.75
    7     7     7     1.07816208    -0.69363091 -1392.46433527    -0.00001218    -0.00000388  0.72D-07  0.12D-05   107.75
    8     1     1     1.07826153    -0.69363465 -1392.46433903    -0.00000174    -0.00000054  0.89D-08  0.16D-06   125.71
    8     2     2     1.07825104    -0.69363448 -1392.46433886    -0.00000203    -0.00000072  0.90D-08  0.21D-06   125.71
    8     3     3     1.07823960    -0.69363424 -1392.46433862    -0.00000218    -0.00000098  0.30D-07  0.31D-06   125.71
    8     4     4     1.07823883    -0.69363424 -1392.46433861    -0.00000219    -0.00000097  0.35D-07  0.30D-06   125.71
    8     5     5     1.07823276    -0.69363394 -1392.46433831    -0.00000272    -0.00000124  0.58D-07  0.39D-06   125.71
    8     6     6     1.07823039    -0.69363386 -1392.46433823    -0.00000289    -0.00000132  0.61D-07  0.40D-06   125.71
    8     7     7     1.07822953    -0.69363384 -1392.46433820    -0.00000293    -0.00000131  0.63D-07  0.39D-06   125.71
    9     1     1     1.07828197    -0.69363504 -1392.46433942    -0.00000040    -0.00000015  0.64D-08  0.44D-07   143.61
    9     2     2     1.07827812    -0.69363500 -1392.46433938    -0.00000052    -0.00000019  0.81D-08  0.56D-07   143.61
    9     3     3     1.07827180    -0.69363497 -1392.46433934    -0.00000073    -0.00000023  0.13D-07  0.69D-07   143.61
    9     4     4     1.07827232    -0.69363496 -1392.46433934    -0.00000073    -0.00000023  0.13D-07  0.68D-07   143.61
    9     5     5     1.07826633    -0.69363487 -1392.46433924    -0.00000093    -0.00000032  0.14D-07  0.97D-07   143.61
    9     6     6     1.07826444    -0.69363485 -1392.46433922    -0.00000098    -0.00000034  0.16D-07  0.10D-06   143.61
    9     7     7     1.07826451    -0.69363484 -1392.46433921    -0.00000100    -0.00000034  0.17D-07  0.10D-06   143.61
   10     1     1     1.07829500    -0.69363518 -1392.46433956    -0.00000013    -0.00000005  0.42D-09  0.15D-07   161.60
   10     2     2     1.07829227    -0.69363516 -1392.46433954    -0.00000016    -0.00000007  0.30D-09  0.22D-07   161.60
   10     3     3     1.07828893    -0.69363514 -1392.46433951    -0.00000017    -0.00000009  0.93D-09  0.30D-07   161.60
   10     4     4     1.07828944    -0.69363514 -1392.46433951    -0.00000017    -0.00000009  0.82D-09  0.29D-07   161.60
   10     5     5     1.07828576    -0.69363510 -1392.46433947    -0.00000023    -0.00000012  0.20D-08  0.39D-07   161.60
   10     6     6     1.07828477    -0.69363509 -1392.46433946    -0.00000025    -0.00000012  0.20D-08  0.41D-07   161.60
   10     7     7     1.07828485    -0.69363509 -1392.46433946    -0.00000025    -0.00000013  0.19D-08  0.43D-07   161.60
   11     1     1     1.07830101    -0.69363521 -1392.46433959    -0.00000003    -0.00000002  0.24D-09  0.51D-08   179.49
   11     2     2     1.07829945    -0.69363521 -1392.46433959    -0.00000005    -0.00000002  0.40D-09  0.68D-08   179.49
   11     3     3     1.07829937    -0.69363520 -1392.46433958    -0.00000007    -0.00000003  0.12D-08  0.93D-08   179.49
   11     4     4     1.07829974    -0.69363520 -1392.46433958    -0.00000007    -0.00000003  0.12D-08  0.97D-08   179.49
   11     5     5     1.07829832    -0.69363519 -1392.46433956    -0.00000009    -0.00000004  0.16D-08  0.15D-07   179.49
   11     6     6     1.07829771    -0.69363519 -1392.46433956    -0.00000010    -0.00000005  0.18D-08  0.15D-07   179.49
   11     7     7     1.07829786    -0.69363519 -1392.46433956    -0.00000010    -0.00000005  0.20D-08  0.15D-07   179.49
   12     1     1     1.07830874    -0.69363523 -1392.46433960    -0.00000001    -0.00000001  0.11D-08  0.21D-08   193.51
   12     2     2     1.07830867    -0.69363523 -1392.46433960    -0.00000002    -0.00000001  0.10D-08  0.24D-08   193.51
   12     3     3     1.07830299    -0.69363522 -1392.46433960    -0.00000002    -0.00000001  0.10D-09  0.34D-08   193.51
   12     4     4     1.07830291    -0.69363523 -1392.46433960    -0.00000002    -0.00000001  0.29D-10  0.36D-08   193.51
   12     5     5     1.07830186    -0.69363522 -1392.46433959    -0.00000003    -0.00000001  0.75D-10  0.51D-08   193.51
   12     6     6     1.07830101    -0.69363522 -1392.46433959    -0.00000003    -0.00000002  0.24D-09  0.51D-08   193.51
   12     7     7     1.07829947    -0.69363522 -1392.46433959    -0.00000003    -0.00000002  0.40D-09  0.68D-08   193.51


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.4%
 P   0.4%   8.0%  71.5%

 Initialization:   0.1%
 Other:           19.4%

 Total CPU:      193.5 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 222//2\222          -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.9622714  -0.0000000
 2/2/22\222           0.1470511  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.9509697
 22/22/\222           0.8505700  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.1315274
 2222//\222           0.0000000   0.0000000   0.0000000  -0.1985611   0.8374650   0.0000000  -0.0000000
 2/222/\222          -0.0000000  -0.3723075   0.7759897   0.0000000   0.0000000  -0.0000000  -0.0000000
 2//222\222          -0.0000000   0.0000000  -0.0000000   0.7612304   0.4016208  -0.0000000   0.0000000
 22/2/2\222           0.0000000   0.6582688   0.5544815  -0.0000000  -0.0000000   0.0000000   0.0000000
 22//22\222           0.0000000  -0.5950032   0.1278856  -0.0000000  -0.0000000   0.0000000   0.0000000
 222/2/\222          -0.0000000  -0.0000000   0.0000000  -0.5541356   0.2516319  -0.0000000   0.0000000
 2/22/2\222           0.4252837   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0657620

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.107134    0.000000   -0.000000    0.957022   -0.000000   -0.000000    0.000000
 2          -0.000000   -0.687463    0.000000    0.000000   -0.000000    0.000000    0.674361
 3           0.000000    0.674364   -0.000000    0.000000    0.000000    0.000000    0.687464
 4          -0.000000    0.000000    0.930212    0.000000    0.000000    0.249156    0.000000
 5           0.000000    0.000000   -0.249157   -0.000000   -0.000000    0.930212   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.963003    0.000000    0.000000
 7           0.957026   -0.000000   -0.000000   -0.107135   -0.000000   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.963000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.963000   -0.000001    0.000000   -0.000000    0.000000    0.000000
 3           0.000000   -0.000001    0.963002    0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.963002   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.963003   -0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.963003   -0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.963004


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95702173 (fixed)   0.96300477 (relaxed)   0.96299968 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001056    0.00000000   -0.56128435
 Singles      0.01864132   -0.08839835   -0.09396269
 Pairs        0.05966824   -0.00000000   -0.03838819
 Total        1.07832012   -0.08839835   -0.69363523
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77070437
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.96563979
 One electron energy                -1932.78552864
 Two electron energy                  540.32118904
 Virial quotient                       -0.95638544
 Correlation energy                    -0.69363523
 !MRCI STATE 1.1 Energy             -1392.464339604790

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51866520 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51865730 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51866520 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51480277 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479499 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51480277 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.68746283 (fixed)   0.96300480 (relaxed)   0.96299972 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001056    0.00000000   -0.16823859
 Singles      0.01864102   -0.08839797   -0.09396252
 Pairs        0.05966847   -0.42382953   -0.43143411
 Total        1.07832005   -0.51222750   -0.69363523
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77070437
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.96569093
 One electron energy                -1932.78559802
 Two electron energy                  540.32125842
 Virial quotient                       -0.95638541
 Correlation energy                    -0.69363523
 !MRCI STATE 2.1 Energy             -1392.464339603109

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51866515 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51865725 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51866515 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51480272 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479494 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51480272 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.68746375 (fixed)   0.96300734 (relaxed)   0.96300225 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001055    0.00000000   -0.16060493
 Singles      0.01863762   -0.08839372   -0.09396134
 Pairs        0.05966619   -0.43206623   -0.43906895
 Total        1.07831437   -0.52045995   -0.69363522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77070437
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.96622189
 One electron energy                -1932.78641214
 Two electron energy                  540.32207254
 Virial quotient                       -0.95638506
 Correlation energy                    -0.69363523
 !MRCI STATE 3.1 Energy             -1392.464339600154

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51866121 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51865331 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51866121 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51479883 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479106 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51479883 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.93021208 (fixed)   0.96300737 (relaxed)   0.96300229 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001055    0.00000000   -0.56129197
 Singles      0.01863737   -0.08839339   -0.09396120
 Pairs        0.05966637   -0.00000000   -0.03838206
 Total        1.07831429   -0.08839339   -0.69363523
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77070438
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.96626139
 One electron energy                -1932.78647142
 Two electron energy                  540.32213182
 Virial quotient                       -0.95638503
 Correlation energy                    -0.69363522
 !MRCI STATE 4.1 Energy             -1392.464339599681

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51866115 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51865326 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51866115 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51479878 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479100 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51479878 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.93021249 (fixed)   0.96300784 (relaxed)   0.96300276 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001055    0.00000000   -0.56129164
 Singles      0.01863807   -0.08839434   -0.09396170
 Pairs        0.05966461   -0.00000000   -0.03838188
 Total        1.07831324   -0.08839434   -0.69363522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77070437
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.96616057
 One electron energy                -1932.78634175
 Two electron energy                  540.32200215
 Virial quotient                       -0.95638510
 Correlation energy                    -0.69363522
 !MRCI STATE 5.1 Energy             -1392.464339592805

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51866041 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51865252 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51866041 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51479805 (Pople, fixed reference)
 Cluster corrected energies         -1392.51479027 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51479805 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96300314 (fixed)   0.96300822 (relaxed)   0.96300314 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001056    0.00000000   -0.56129020
 Singles      0.01863931   -0.08839636   -0.09396231
 Pairs        0.05966253    0.00000000   -0.03838271
 Total        1.07831240   -0.08839636   -0.69363522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77070437
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.96608295
 One electron energy                -1932.78620248
 Two electron energy                  540.32186289
 Virial quotient                       -0.95638515
 Correlation energy                    -0.69363522
 !MRCI STATE 6.1 Energy             -1392.464339591324

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51865983 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51865193 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51865983 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51479747 (Pople, fixed reference)
 Cluster corrected energies         -1392.51478969 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51479747 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95702589 (fixed)   0.96300891 (relaxed)   0.96300383 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001055    0.00000000   -0.56129037
 Singles      0.01863931   -0.08839704   -0.09396219
 Pairs        0.05966099    0.00000000   -0.03838266
 Total        1.07831085   -0.08839704   -0.69363522
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -1391.77070438
 Nuclear energy                         0.00000000
 Kinetic energy                      1455.96603386
 One electron energy                -1932.78614539
 Two electron energy                  540.32180580
 Virial quotient                       -0.95638518
 Correlation energy                    -0.69363521
 !MRCI STATE 7.1 Energy             -1392.464339586476

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -1392.51865875 (Davidson, fixed reference)
 Cluster corrected energies         -1392.51865086 (Davidson, relaxed reference)
 Cluster corrected energies         -1392.51865875 (Davidson, rotated reference)

 Cluster corrected energies         -1392.51479641 (Pople, fixed reference)
 Cluster corrected energies         -1392.51478864 (Pople, relaxed reference)
 Cluster corrected energies         -1392.51479641 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       36.44       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      636.43       700     1000      520     2100     2140     5101     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2726.10    197.61   2523.22      3.42      0.82      0.85
 REAL TIME  *      2961.64 SEC
 DISK USED  *       672.93 MB (local),        6.62 GB (total)
 SF USED    *         5.41 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(21)    =     -1392.51866520  AU                              
 SETTING HLSDIAG(22)    =     -1392.51866515  AU                              
 SETTING HLSDIAG(23)    =     -1392.51866121  AU                              
 SETTING HLSDIAG(24)    =     -1392.51866115  AU                              
 SETTING HLSDIAG(25)    =     -1392.51866041  AU                              
 SETTING HLSDIAG(26)    =     -1392.51865983  AU                              
 SETTING HLSDIAG(27)    =     -1392.51865875  AU                              


         HLSDIAG
    -1392.552996
    -1392.552995
    -1392.552994
    -1392.552982
    -1392.552985
    -1392.552980
    -1392.552979
    -1392.537729
    -1392.537729
    -1392.537727
    -1392.537726
    -1392.537725
    -1392.537724
    -1392.537724
    -1392.491625
    -1392.491624
    -1392.491624
    -1392.482607
    -1392.482607
    -1392.482607
    -1392.518665
    -1392.518665
    -1392.518661
    -1392.518661
    -1392.518660
    -1392.518660
    -1392.518659
                                                  


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

 Time for Seward_LS:       4.61 sec

 CPU time:      4.61 sec, REAL time:      4.78 sec


 SORTLS1 read     8314052. and wrote     8314052. SO integrals in    50 records. CPU time:      0.07 sec, REAL time:      0.13 sec
 SORTLS2 read     8314052. and wrote     8314052. SO integrals in    30 records. CPU time:      0.02 sec, REAL time:      0.07 sec

 FILE SIZES: FILE 1:    38.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    38.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5101.2  Symmetry=1  S= 1.5  NSTATE=  20

 Original energies:  -1392.497608  -1392.497608  -1392.497608  -1392.497608  -1392.497608  -1392.497608  -1392.497608  -1392.485052
                     -1392.485052  -1392.485052  -1392.485052  -1392.485052  -1392.485052  -1392.485052  -1392.433342  -1392.433342
                     -1392.433342  -1392.425081  -1392.425081  -1392.425081
 Replaced energies:  -1392.552996  -1392.552995  -1392.552994  -1392.552982  -1392.552985  -1392.552980  -1392.552979  -1392.537729
                     -1392.537729  -1392.537727  -1392.537726  -1392.537725  -1392.537724  -1392.537724  -1392.491625  -1392.491624
                     -1392.491624  -1392.482607  -1392.482607  -1392.482607

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:  -1392.464340  -1392.464340  -1392.464340  -1392.464340  -1392.464340  -1392.464340  -1392.464340
 Replaced energies:  -1392.518665  -1392.518665  -1392.518661  -1392.518661  -1392.518660  -1392.518660  -1392.518659



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -1392.55299601

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00    -215.56    -244.88      -0.00      -0.34      -0.00       0.00

    2   2.1  1.5  1.5       0.00       0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -408.74      -0.00      -0.00      -0.00       0.00       0.00      -0.72      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     408.74      -0.00    -361.33      -0.00      -0.00      -0.00       0.00       0.00      -0.96

    4   4.1  1.5  1.5       0.00       0.00       0.00       3.12       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     361.33      -0.00       0.00      -0.00      -0.00      -0.00       0.64      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       2.31       0.00       0.00       0.00       0.00       0.00
                          215.56       0.00       0.00      -0.00      -0.00      -0.00     785.61       0.00       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       3.43       0.00       0.00       0.00       0.00
                          244.88       0.00       0.00       0.00       0.00       0.00    -143.12       0.00      -0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       3.81       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    -785.61     143.12       0.00       0.55      -0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3350.73       0.00       0.00
                            0.34      -0.00      -0.00       0.00      -0.00      -0.00      -0.55       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3350.73       0.00
                            0.00       0.72      -0.00      -0.64      -0.00       0.00       0.00      -0.00       0.00    -495.65

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3351.23
                           -0.00       0.00       0.96       0.00       0.00      -0.00      -0.00      -0.00     495.65      -0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -1.42       0.18      -0.00     252.88       0.00       0.03

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.16       0.46      -0.00     215.58      -0.00      -0.01

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.04      -0.00       0.00       0.00      -0.00       0.00      23.42      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.46       0.00      -0.00      -0.00      -0.00      -0.00      -1.29       0.00      -0.02       0.01

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.04       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.00      -0.00       0.00      -0.00       0.00       0.02       0.00      -0.00      -0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.02       0.03      -0.00       0.00       0.00       0.00

   18  18.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.02       0.00      -0.00

   19  19.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   20  20.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.02      -0.00

   21   1.1  1.5  0.5      -0.00     -33.52      -0.00    -471.22       0.00       0.00      -0.00       0.00       0.00      -0.47
                            0.00      -0.00    -197.48      -0.00      -0.00       0.00       0.00      -0.00      -0.35       0.00

   22   2.1  1.5  0.5      33.52      -0.00       0.00      -0.00       0.00       0.00    -156.58       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      99.23    -454.35      -0.00      -0.82      -0.00      -0.00

   23   3.1  1.5  0.5       0.00      -0.00      -0.00      -0.00    -217.02    -228.33      -0.00      -0.31      -0.00       0.00
                          197.48       0.00       0.00       0.00       0.00       0.00    -245.34       0.00      -0.00       0.00

   24   4.1  1.5  0.5     471.22       0.00       0.00      -0.00       0.00       0.00      19.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00    -139.58    -110.62      -0.00      -0.14      -0.00       0.00

   25   5.1  1.5  0.5      -0.00      -0.00     217.02      -0.00       0.00       0.00       0.00      -0.00       0.38       0.00
                            0.00     -99.23      -0.00     139.58       0.00       0.00       0.00       0.00       0.00       0.29

   26   6.1  1.5  0.5      -0.00      -0.00     228.33      -0.00      -0.00      -0.00       0.00      -0.00       0.40       0.00
                           -0.00     454.35      -0.00     110.62      -0.00      -0.00       0.00      -0.00       0.00      -0.50

   27   7.1  1.5  0.5       0.00     156.58       0.00     -19.00      -0.00      -0.00       0.00       0.00      -0.00      -0.24
                           -0.00       0.00     245.34       0.00      -0.00      -0.00      -0.00      -0.00       0.43      -0.00

   28   8.1  1.5  0.5      -0.00      -0.00       0.31      -0.00       0.00       0.00      -0.00      -0.00     159.69      -0.00
                            0.00       0.82      -0.00       0.14      -0.00       0.00       0.00       0.00      -0.00    -285.62

   29   9.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.38      -0.40       0.00    -159.69      -0.00       0.01
                            0.35       0.00       0.00       0.00      -0.00      -0.00      -0.43       0.00       0.00       0.00

   30  10.1  1.5  0.5       0.47      -0.00      -0.00       0.00      -0.00      -0.00       0.24       0.00      -0.01      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.29       0.50       0.00     285.62      -0.00       0.00

   31  11.1  1.5  0.5       0.00       0.26      -0.00      -0.16       0.00       0.00       0.00      -0.00       0.00    -157.58
                           -0.00      -0.00       0.37      -0.00      -0.00       0.00       0.00       0.00     193.30       0.00

   32  12.1  1.5  0.5       0.00       0.10      -0.00       0.82       0.00      -0.00       0.00      -0.00       0.00     223.27
                            0.00      -0.00       0.41      -0.00      -0.00       0.00      -0.00       0.00     211.43      -0.00

   33  13.1  1.5  0.5       0.68      -0.00       0.00       0.00      -0.00      -0.00      -0.15       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.08      -0.65      -0.00    -319.88       0.00       0.00

   34  14.1  1.5  0.5      -0.00      -0.00      -0.46      -0.00       0.00       0.00      -0.00      -0.00    -237.86      -0.00
                           -0.00      -0.00      -0.00      -0.28       0.00      -0.00       0.00      -0.01       0.00     -89.83

   35  15.1  1.5  0.5      -0.01       0.00      -0.00      -0.00       0.00       0.00       0.02       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.02      -0.01      -0.00      -0.00      -0.00       0.00

   36  16.1  1.5  0.5       0.00       0.00      -0.01       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.03      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   37  17.1  1.5  0.5      -0.00      -0.03      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.01       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   38  18.1  1.5  0.5      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.01
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   39  19.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01

   40  20.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  18.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  19.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  20.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  18.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  19.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  20.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   1.1  0.5  0.5       7.63       0.00      -0.00      -0.00       0.00       0.00      -1.26      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -1.18      -6.22       0.00     198.99       0.00      -0.00

   82   2.1  0.5  0.5       0.00      -0.00      -5.22      -0.00      -0.00      -0.00      -0.00      -0.00     178.60       0.00
                            0.00      -7.38       0.00      -2.72      -0.00       0.00       0.00      -0.00      -0.00    -138.66

   83   3.1  0.5  0.5       0.00       0.00      -2.50       0.00       0.00      -0.00      -0.00      -0.00      85.69       0.00
                           -0.00       4.30       0.00      -1.82       0.00      -0.00      -0.00       0.00      -0.00     153.74

   84   4.1  0.5  0.5       0.00      -0.06       0.00      -8.57       0.00      -0.00      -0.00      -0.00      -0.00     182.11
                            0.00      -0.00      -2.70       0.00      -0.00      -0.00      -0.00      -0.00      92.43       0.00

   85   5.1  0.5  0.5      -0.00       2.94       0.00       1.32       0.00      -0.00      -0.00       0.00       0.00      50.38
                           -0.00      -0.00       5.12      -0.00       0.00       0.00       0.00       0.00    -175.20      -0.00

   86   6.1  0.5  0.5       0.00       0.00      -0.00      -0.00      -3.99      -4.20      -0.00     110.42       0.00      -0.01
                            3.63       0.00       0.00       0.00       0.00       0.00      -4.51      -0.00      -0.00      -0.00

   87   7.1  0.5  0.5       4.16       0.00      -0.00      -0.00       0.00      -0.00       2.61      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -2.92       5.93      -0.00    -219.83       0.00      -0.00

   88   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   89   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   90   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   92   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   93   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   94   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.46       0.00      -0.03       0.00      -0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.04       0.00      -0.04       0.00      -0.00       0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.42      -0.16      -0.00       0.00       0.00       0.00       0.02      -0.00       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18      -0.46      -0.00       0.00       0.00      -0.00      -0.03       0.00      -0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       1.29       0.00      -0.02       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -252.88    -215.58      -0.00      -0.00       0.00      -0.00      -0.00       0.02      -0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -23.42       0.02       0.00       0.00      -0.00      -0.00       0.00      -0.02

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.01       0.00      -0.01       0.00       0.00      -0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5    3351.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     697.70      -0.00      -0.00       0.00      -0.00      -0.01      -0.00

   12  12.1  1.5  1.5       0.00    3351.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -135.47      -0.00      -0.00      -0.00      -0.00       0.01      -0.00

   13  13.1  1.5  1.5       0.00       0.00    3351.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00    3351.84       0.00       0.00       0.00       0.00       0.00       0.00
                         -697.70     135.47       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00   13469.35       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00   13469.57       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00     254.18       5.61      -0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   13469.70       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00    -254.18      -0.00      -0.00       5.61      -0.00

   18  18.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.64       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -5.61       0.00      -0.00     268.90      -0.00

   19  19.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.66       0.00
                            0.01      -0.01      -0.00       0.00      -0.00       0.00      -5.61    -268.90       0.00      -0.00

   20  20.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.55
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   21   1.1  1.5  0.5      -0.00      -0.00      -0.68       0.00       0.01      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   22   2.1  1.5  0.5      -0.26      -0.10       0.00       0.00      -0.00      -0.00       0.03      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   23   3.1  1.5  0.5       0.00       0.00      -0.00       0.46       0.00       0.01       0.00      -0.00       0.00       0.00
                           -0.37      -0.41      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00      -0.00

   24   4.1  1.5  0.5       0.16      -0.82      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.28       0.00       0.03      -0.00      -0.00       0.00      -0.00

   25   5.1  1.5  0.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.08      -0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00

   26   6.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.65       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00

   27   7.1  1.5  0.5      -0.00      -0.00       0.15       0.00      -0.02       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   28   8.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00     319.88       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00

   29   9.1  1.5  0.5      -0.00      -0.00       0.00     237.86      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                         -193.30    -211.43      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   30  10.1  1.5  0.5     157.58    -223.27      -0.00       0.00      -0.00      -0.00       0.00       0.01       0.00       0.00
                           -0.00       0.00      -0.00      89.83      -0.00      -0.00      -0.00      -0.00       0.01      -0.00

   31  11.1  1.5  0.5       0.00      -0.00      21.18       0.01       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  12.1  1.5  0.5       0.00      -0.00     360.65      -0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   33  13.1  1.5  0.5     -21.18    -360.65       0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00      -0.00
                           -0.00      -0.00       0.00     114.90       0.00      -0.00       0.00      -0.00       0.01      -0.00

   34  14.1  1.5  0.5      -0.01       0.01       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00    -114.90      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01

   35  15.1  1.5  0.5      -0.00       0.00       0.00      -0.00       0.00      -0.00    -146.76      -3.24      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00     146.74      -0.00      -0.00      -3.24       0.00

   36  16.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -146.74       0.00       0.00      -0.00       0.00       3.24

   37  17.1  1.5  0.5       0.00      -0.00      -0.00      -0.00     146.76      -0.00      -0.00       0.00      -0.00      -3.24
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   38  18.1  1.5  0.5      -0.00       0.00       0.01       0.00       3.24      -0.00      -0.00       0.00      -0.00    -155.26
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   39  19.1  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.00       3.24      -0.00      -0.00       0.00      -0.00    -155.24

   40  20.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       3.24     155.26      -0.00      -0.00
                           -0.00       0.00       0.00       0.01      -0.00      -3.24       0.00       0.00     155.24      -0.00

   41   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58  18.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59  19.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60  20.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  18.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  19.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  20.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   1.1  0.5  0.5       3.01     264.33       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00     -85.58       0.00       0.00      -0.00       0.00      -0.00       0.00

   82   2.1  0.5  0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00     230.90       0.01      -0.00       0.00      -0.00       0.00       0.00       0.00

   83   3.1  0.5  0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -43.77      -0.01       0.00       0.00       0.00       0.00      -0.00      -0.00

   84   4.1  0.5  0.5       0.00      -0.00     229.75      -0.01       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   85   5.1  0.5  0.5       0.00       0.00     -98.04      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   86   6.1  0.5  0.5       0.00       0.00      -0.00    -164.46       0.00       0.00      -0.00       0.00      -0.00      -0.00
                          133.66     146.19       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   87   7.1  0.5  0.5    -109.89     127.07       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00     -53.34      -0.00       0.00       0.00       0.00      -0.00       0.00

   88   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   89   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   90   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   92   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   93   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   94   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5      -0.00      33.52       0.00     471.22      -0.00      -0.00       0.00      -0.00      -0.00       0.47
                           -0.00      -0.00    -197.48      -0.00      -0.00       0.00       0.00      -0.00      -0.35       0.00

    2   2.1  1.5  1.5     -33.52      -0.00      -0.00       0.00      -0.00      -0.00     156.58      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      99.23    -454.35      -0.00      -0.82      -0.00      -0.00

    3   3.1  1.5  1.5      -0.00       0.00      -0.00       0.00     217.02     228.33       0.00       0.31       0.00      -0.00
                          197.48       0.00      -0.00       0.00       0.00       0.00    -245.34       0.00      -0.00       0.00

    4   4.1  1.5  1.5    -471.22      -0.00      -0.00      -0.00      -0.00      -0.00     -19.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00    -139.58    -110.62      -0.00      -0.14      -0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00    -217.02       0.00       0.00      -0.00      -0.00       0.00      -0.38      -0.00
                            0.00     -99.23      -0.00     139.58      -0.00       0.00       0.00       0.00       0.00       0.29

    6   6.1  1.5  1.5       0.00       0.00    -228.33       0.00       0.00      -0.00      -0.00       0.00      -0.40      -0.00
                           -0.00     454.35      -0.00     110.62      -0.00       0.00       0.00      -0.00       0.00      -0.50

    7   7.1  1.5  1.5      -0.00    -156.58      -0.00      19.00       0.00       0.00       0.00      -0.00       0.00       0.24
                           -0.00       0.00     245.34       0.00      -0.00      -0.00       0.00      -0.00       0.43      -0.00

    8   8.1  1.5  1.5       0.00       0.00      -0.31       0.00      -0.00      -0.00       0.00      -0.00    -159.69       0.00
                            0.00       0.82      -0.00       0.14      -0.00       0.00       0.00      -0.00      -0.00    -285.62

    9   9.1  1.5  1.5       0.00       0.00      -0.00      -0.00       0.38       0.40      -0.00     159.69      -0.00      -0.01
                            0.35       0.00       0.00       0.00      -0.00      -0.00      -0.43       0.00      -0.00       0.00

   10  10.1  1.5  1.5      -0.47       0.00       0.00      -0.00       0.00       0.00      -0.24      -0.00       0.01      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.29       0.50       0.00     285.62      -0.00      -0.00

   11  11.1  1.5  1.5      -0.00      -0.26       0.00       0.16      -0.00      -0.00      -0.00       0.00      -0.00     157.58
                           -0.00      -0.00       0.37      -0.00      -0.00       0.00       0.00       0.00     193.30       0.00

   12  12.1  1.5  1.5      -0.00      -0.10       0.00      -0.82      -0.00       0.00      -0.00       0.00      -0.00    -223.27
                            0.00      -0.00       0.41      -0.00      -0.00       0.00      -0.00       0.00     211.43      -0.00

   13  13.1  1.5  1.5      -0.68       0.00      -0.00      -0.00       0.00       0.00       0.15      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.08      -0.65      -0.00    -319.88       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.46       0.00      -0.00      -0.00       0.00       0.00     237.86       0.00
                           -0.00      -0.00      -0.00      -0.28       0.00      -0.00       0.00      -0.01       0.00     -89.83

   15  15.1  1.5  1.5       0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.02      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.02      -0.01      -0.00      -0.00      -0.00       0.00

   16  16.1  1.5  1.5      -0.00      -0.00       0.01      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.03      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.03       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.01       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   18  18.1  1.5  1.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.01
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   19  19.1  1.5  1.5      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01

   20  20.1  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   21   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00     -71.85     -81.63      -0.00      -0.11      -0.00       0.00

   22   2.1  1.5  0.5       0.00       0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -136.25      -0.00      -0.00      -0.00       0.00       0.00      -0.24      -0.00

   23   3.1  1.5  0.5       0.00       0.00       0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     136.25      -0.00    -120.44      -0.00      -0.00      -0.00       0.00       0.00      -0.32

   24   4.1  1.5  0.5       0.00       0.00       0.00       3.12       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     120.44      -0.00       0.00      -0.00      -0.00      -0.00       0.21      -0.00

   25   5.1  1.5  0.5       0.00       0.00       0.00       0.00       2.31       0.00       0.00       0.00       0.00       0.00
                           71.85       0.00       0.00      -0.00      -0.00      -0.00     261.87       0.00       0.00      -0.00

   26   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       3.43       0.00       0.00       0.00       0.00
                           81.63       0.00       0.00       0.00       0.00       0.00     -47.71       0.00      -0.00       0.00

   27   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       3.81       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    -261.87      47.71       0.00       0.18      -0.00       0.00

   28   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3350.73       0.00       0.00
                            0.11      -0.00      -0.00       0.00      -0.00      -0.00      -0.18       0.00       0.00       0.00

   29   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3350.73       0.00
                            0.00       0.24      -0.00      -0.21      -0.00       0.00       0.00      -0.00       0.00    -165.22

   30  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3351.23
                           -0.00       0.00       0.32       0.00       0.00      -0.00      -0.00      -0.00     165.22      -0.00

   31  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.47       0.06      -0.00      84.29       0.00       0.01

   32  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.05       0.15      -0.00      71.86      -0.00      -0.00

   33  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.01      -0.00       0.00       0.00      -0.00       0.00       7.81      -0.00

   34  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.15       0.00      -0.00      -0.00      -0.00      -0.00      -0.43       0.00      -0.01       0.00

   35  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.01       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.00       0.00      -0.00       0.00       0.01       0.00      -0.00      -0.00

   37  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.01       0.01      -0.00       0.00       0.00       0.00

   38  18.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.01       0.00      -0.00

   39  19.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   40  20.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.01      -0.00

   41   1.1  1.5 -0.5      -0.00     -38.70      -0.00    -544.12       0.00       0.00      -0.00       0.00       0.00      -0.55
                            0.00      -0.00    -228.03      -0.00      -0.00       0.00       0.00      -0.00      -0.40       0.00

   42   2.1  1.5 -0.5      38.70      -0.00       0.00      -0.00       0.00       0.00    -180.81       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     114.58    -524.64      -0.00      -0.94      -0.00      -0.00

   43   3.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00    -250.59    -263.65      -0.00      -0.36      -0.00       0.00
                          228.03       0.00       0.00       0.00       0.00       0.00    -283.30       0.00      -0.00       0.00

   44   4.1  1.5 -0.5     544.12       0.00       0.00      -0.00       0.00       0.00      21.93       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00    -161.17    -127.73      -0.00      -0.16      -0.00       0.00

   45   5.1  1.5 -0.5      -0.00      -0.00     250.59      -0.00       0.00       0.00       0.00      -0.00       0.44       0.00
                            0.00    -114.58      -0.00     161.17       0.00       0.00       0.00       0.00       0.00       0.33

   46   6.1  1.5 -0.5      -0.00      -0.00     263.65      -0.00      -0.00      -0.00       0.00      -0.00       0.46       0.00
                           -0.00     524.64      -0.00     127.73      -0.00      -0.00       0.00      -0.00       0.00      -0.58

   47   7.1  1.5 -0.5       0.00     180.81       0.00     -21.93      -0.00      -0.00       0.00       0.00      -0.00      -0.27
                           -0.00       0.00     283.30       0.00      -0.00      -0.00      -0.00      -0.00       0.50      -0.00

   48   8.1  1.5 -0.5      -0.00      -0.00       0.36      -0.00       0.00       0.00      -0.00      -0.00     184.40      -0.00
                            0.00       0.94      -0.00       0.16      -0.00       0.00       0.00       0.00      -0.00    -329.81

   49   9.1  1.5 -0.5      -0.00      -0.00       0.00       0.00      -0.44      -0.46       0.00    -184.40      -0.00       0.01
                            0.40       0.00       0.00       0.00      -0.00      -0.00      -0.50       0.00       0.00       0.00

   50  10.1  1.5 -0.5       0.55      -0.00      -0.00       0.00      -0.00      -0.00       0.27       0.00      -0.01      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.33       0.58       0.00     329.81      -0.00       0.00

   51  11.1  1.5 -0.5       0.00       0.30      -0.00      -0.18       0.00       0.00       0.00      -0.00       0.00    -181.96
                           -0.00      -0.00       0.43      -0.00      -0.00       0.00       0.00       0.00     223.20       0.00

   52  12.1  1.5 -0.5       0.00       0.12      -0.00       0.94       0.00      -0.00       0.00      -0.00       0.00     257.81
                            0.00      -0.00       0.47      -0.00      -0.00       0.00      -0.00       0.00     244.14      -0.00

   53  13.1  1.5 -0.5       0.79      -0.00       0.00       0.00      -0.00      -0.00      -0.17       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.09      -0.75      -0.00    -369.36       0.00       0.01

   54  14.1  1.5 -0.5      -0.00      -0.00      -0.53      -0.00       0.00       0.00      -0.00      -0.00    -274.66      -0.00
                           -0.00      -0.00      -0.00      -0.33       0.00      -0.00       0.00      -0.01       0.00    -103.73

   55  15.1  1.5 -0.5      -0.01       0.00      -0.00      -0.00       0.00       0.00       0.02       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.02      -0.01      -0.00      -0.00      -0.00       0.00

   56  16.1  1.5 -0.5       0.00       0.00      -0.01       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.04      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   57  17.1  1.5 -0.5      -0.00      -0.04      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.01       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   58  18.1  1.5 -0.5      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.01
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.01       0.00

   59  19.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.01      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01

   60  20.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   61   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  18.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  19.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  20.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.02      -0.00      -0.00      -0.00      -0.00      -0.00      34.95       0.00

   82   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.67       0.00      -0.00      -0.00       0.00       0.00       1.29      -0.00       0.00       0.00

   83   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.59       0.00      -0.00      -0.00      -0.00      -0.00       9.70       0.00       0.00       0.00

   84   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       4.43       2.61      -0.00     -54.14      -0.00       0.01

   85   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       8.95      -2.30       0.00     143.29      -0.00       0.01

   86   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -5.01       0.00       4.43      -0.00       0.00       0.00       0.00      -0.00    -228.48

   87   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -6.61       0.00      -0.00      -0.00      -0.00      -0.00     226.05       0.00

   88   1.1  0.5 -0.5       4.40       0.00      -0.00      -0.00       0.00       0.00      -0.73      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.68      -3.59       0.00     114.89       0.00      -0.00

   89   2.1  0.5 -0.5       0.00      -0.00      -3.01      -0.00      -0.00      -0.00      -0.00      -0.00     103.11       0.00
                            0.00      -4.26       0.00      -1.57      -0.00       0.00       0.00      -0.00      -0.00     -80.06

   90   3.1  0.5 -0.5       0.00       0.00      -1.44       0.00       0.00      -0.00      -0.00      -0.00      49.47       0.00
                           -0.00       2.48       0.00      -1.05       0.00      -0.00      -0.00       0.00      -0.00      88.76

   91   4.1  0.5 -0.5       0.00      -0.03       0.00      -4.95       0.00      -0.00      -0.00      -0.00      -0.00     105.14
                            0.00      -0.00      -1.56       0.00      -0.00      -0.00      -0.00      -0.00      53.37       0.00

   92   5.1  0.5 -0.5      -0.00       1.70       0.00       0.76       0.00      -0.00      -0.00       0.00       0.00      29.09
                           -0.00      -0.00       2.96      -0.00       0.00       0.00       0.00       0.00    -101.15      -0.00

   93   6.1  0.5 -0.5       0.00       0.00      -0.00      -0.00      -2.30      -2.42      -0.00      63.75       0.00      -0.00
                            2.10       0.00       0.00       0.00       0.00       0.00      -2.60      -0.00      -0.00      -0.00

   94   7.1  0.5 -0.5       2.40       0.00      -0.00      -0.00       0.00      -0.00       1.51      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -1.69       3.42      -0.00    -126.92       0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5       0.00       0.00       0.68      -0.00      -0.01       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.26       0.10      -0.00      -0.00       0.00       0.00      -0.03       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

    3   3.1  1.5  1.5      -0.00      -0.00       0.00      -0.46      -0.00      -0.01      -0.00       0.00      -0.00      -0.00
                           -0.37      -0.41      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00      -0.00

    4   4.1  1.5  1.5      -0.16       0.82       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.28       0.00       0.03      -0.00      -0.00       0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.08      -0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00

    6   6.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.65       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00      -0.15      -0.00       0.02      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    8   8.1  1.5  1.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00     319.88       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00      -0.00    -237.86       0.00       0.00      -0.00       0.00      -0.00       0.00
                         -193.30    -211.43      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  1.5  1.5    -157.58     223.27       0.00      -0.00       0.00       0.00      -0.00      -0.01      -0.00      -0.00
                           -0.00       0.00      -0.00      89.83      -0.00      -0.00      -0.00      -0.00       0.01      -0.00

   11  11.1  1.5  1.5       0.00       0.00     -21.18      -0.01      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      -0.00      -0.00    -360.65       0.01       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   13  13.1  1.5  1.5      21.18     360.65       0.00       0.00       0.00      -0.00      -0.00       0.01      -0.00       0.00
                           -0.00      -0.00      -0.00     114.90       0.00      -0.00       0.00      -0.00       0.01      -0.00

   14  14.1  1.5  1.5       0.01      -0.01      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00    -114.90       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01

   15  15.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00     146.76       3.24       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00     146.74      -0.00      -0.00      -3.24       0.00

   16  16.1  1.5  1.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00    -146.74      -0.00       0.00      -0.00       0.00       3.24

   17  17.1  1.5  1.5      -0.00       0.00       0.00       0.00    -146.76       0.00      -0.00      -0.00       0.00       3.24
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   18  18.1  1.5  1.5       0.00      -0.00      -0.01      -0.00      -3.24       0.00       0.00       0.00       0.00     155.26
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   19  19.1  1.5  1.5      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.01       0.00       3.24      -0.00      -0.00       0.00       0.00    -155.24

   20  20.1  1.5  1.5      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -3.24    -155.26       0.00      -0.00
                           -0.00       0.00       0.00       0.01      -0.00      -3.24       0.00       0.00     155.24       0.00

   21   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.15       0.00      -0.01       0.00      -0.00      -0.00       0.00

   22   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   23   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.01       0.00      -0.01       0.00      -0.00       0.00      -0.00      -0.00

   24   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   25   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.47      -0.05      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00      -0.00

   26   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06      -0.15      -0.00       0.00       0.00      -0.00      -0.01       0.00      -0.00      -0.00

   27   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.43       0.00      -0.01       0.00       0.00       0.00       0.00

   28   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -84.29     -71.86      -0.00      -0.00       0.00      -0.00      -0.00       0.01      -0.00       0.00

   29   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -7.81       0.01       0.00       0.00      -0.00      -0.00       0.00      -0.01

   30  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   31  11.1  1.5  0.5    3351.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     232.57      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   32  12.1  1.5  0.5       0.00    3351.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     -45.16      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   33  13.1  1.5  0.5       0.00       0.00    3351.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   34  14.1  1.5  0.5       0.00       0.00       0.00    3351.84       0.00       0.00       0.00       0.00       0.00       0.00
                         -232.57      45.16       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   35  15.1  1.5  0.5       0.00       0.00       0.00       0.00   13469.35       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   36  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00   13469.57       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00      84.73       1.87      -0.00       0.00

   37  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   13469.70       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     -84.73      -0.00      -0.00       1.87      -0.00

   38  18.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.64       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -1.87       0.00      -0.00      89.63      -0.00

   39  19.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.66       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -1.87     -89.63       0.00      -0.00

   40  20.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.55
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   41   1.1  1.5 -0.5      -0.00      -0.00      -0.79       0.00       0.01      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   42   2.1  1.5 -0.5      -0.30      -0.12       0.00       0.00      -0.00      -0.00       0.04      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   43   3.1  1.5 -0.5       0.00       0.00      -0.00       0.53       0.00       0.01       0.00      -0.00       0.00       0.00
                           -0.43      -0.47      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00      -0.00

   44   4.1  1.5 -0.5       0.18      -0.94      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.33       0.00       0.04      -0.00      -0.00       0.00      -0.00

   45   5.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.09      -0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00

   46   6.1  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.75       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00

   47   7.1  1.5 -0.5      -0.00      -0.00       0.17       0.00      -0.02       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   48   8.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00     369.36       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00

   49   9.1  1.5 -0.5      -0.00      -0.00       0.00     274.66      -0.00      -0.00       0.00      -0.00       0.01      -0.00
                         -223.20    -244.14      -0.00      -0.00       0.00      -0.00      -0.00      -0.01       0.00       0.00

   50  10.1  1.5 -0.5     181.96    -257.81      -0.00       0.00      -0.00      -0.00       0.00       0.01       0.00       0.00
                           -0.00       0.00      -0.01     103.73      -0.00      -0.00      -0.00      -0.00       0.01      -0.00

   51  11.1  1.5 -0.5       0.00      -0.00      24.46       0.01       0.00      -0.00      -0.00       0.00      -0.00      -0.01
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   52  12.1  1.5 -0.5       0.00      -0.00     416.45      -0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   53  13.1  1.5 -0.5     -24.46    -416.45       0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00      -0.00
                           -0.00      -0.00       0.00     132.67       0.00      -0.00       0.00      -0.00       0.01      -0.00

   54  14.1  1.5 -0.5      -0.01       0.01       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00    -132.67      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01

   55  15.1  1.5 -0.5      -0.00       0.00       0.00      -0.00       0.00      -0.00    -169.46      -3.74      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00     169.44      -0.00      -0.00      -3.74       0.00

   56  16.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -169.44       0.00       0.00      -0.00       0.00       3.74

   57  17.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00     169.46      -0.00      -0.00       0.00      -0.00      -3.74
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   58  18.1  1.5 -0.5      -0.00       0.00       0.01       0.00       3.74      -0.00      -0.00       0.00      -0.00    -179.28
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   59  19.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.00       3.74      -0.00      -0.00       0.00      -0.00    -179.26

   60  20.1  1.5 -0.5       0.01       0.00       0.00       0.00       0.00      -0.00       3.74     179.28      -0.00      -0.00
                           -0.00       0.00       0.00       0.01      -0.00      -3.74       0.00       0.00     179.26      -0.00

   61   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  18.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  19.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  20.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   82   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.74     117.32       0.00      -0.00       0.00      -0.00      -0.00      -0.01      -0.00       0.00

   83   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -336.28       3.38       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   84   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     167.44       0.00       0.00       0.00      -0.00      -0.00      -0.00

   85   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     281.59      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   86   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -10.79       0.01      -0.00       0.00      -0.00       0.00       0.00      -0.00

   87   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   88   1.1  0.5 -0.5       1.74     152.61       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00     -49.41       0.00       0.00      -0.00       0.00      -0.00       0.00

   89   2.1  0.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00     133.31       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   90   3.1  0.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00     -25.27      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   91   4.1  0.5 -0.5       0.00      -0.00     132.65      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   92   5.1  0.5 -0.5       0.00       0.00     -56.61      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   93   6.1  0.5 -0.5       0.00       0.00      -0.00     -94.95       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           77.17      84.40       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   94   7.1  0.5 -0.5     -63.45      73.36       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00     -30.80      -0.00       0.00       0.00       0.00      -0.00       0.00


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

   18  18.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19  19.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  20.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   1.1  1.5  0.5      -0.00      38.70       0.00     544.12      -0.00      -0.00       0.00      -0.00      -0.00       0.55
                           -0.00      -0.00    -228.03      -0.00      -0.00       0.00       0.00      -0.00      -0.40       0.00

   22   2.1  1.5  0.5     -38.70      -0.00      -0.00       0.00      -0.00      -0.00     180.81      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00     114.58    -524.64      -0.00      -0.94      -0.00      -0.00

   23   3.1  1.5  0.5      -0.00       0.00      -0.00       0.00     250.59     263.65       0.00       0.36       0.00      -0.00
                          228.03       0.00      -0.00       0.00       0.00       0.00    -283.30       0.00      -0.00       0.00

   24   4.1  1.5  0.5    -544.12      -0.00      -0.00      -0.00      -0.00      -0.00     -21.93      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00    -161.17    -127.73      -0.00      -0.16      -0.00       0.00

   25   5.1  1.5  0.5       0.00       0.00    -250.59       0.00       0.00      -0.00      -0.00       0.00      -0.44      -0.00
                            0.00    -114.58      -0.00     161.17      -0.00       0.00       0.00       0.00       0.00       0.33

   26   6.1  1.5  0.5       0.00       0.00    -263.65       0.00       0.00      -0.00      -0.00       0.00      -0.46      -0.00
                           -0.00     524.64      -0.00     127.73      -0.00       0.00       0.00      -0.00       0.00      -0.58

   27   7.1  1.5  0.5      -0.00    -180.81      -0.00      21.93       0.00       0.00       0.00      -0.00       0.00       0.27
                           -0.00       0.00     283.30       0.00      -0.00      -0.00       0.00      -0.00       0.50      -0.00

   28   8.1  1.5  0.5       0.00       0.00      -0.36       0.00      -0.00      -0.00       0.00      -0.00    -184.40       0.00
                            0.00       0.94      -0.00       0.16      -0.00       0.00       0.00      -0.00      -0.00    -329.81

   29   9.1  1.5  0.5       0.00       0.00      -0.00      -0.00       0.44       0.46      -0.00     184.40      -0.00      -0.01
                            0.40       0.00       0.00       0.00      -0.00      -0.00      -0.50       0.00      -0.00       0.00

   30  10.1  1.5  0.5      -0.55       0.00       0.00      -0.00       0.00       0.00      -0.27      -0.00       0.01      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.33       0.58       0.00     329.81      -0.00      -0.00

   31  11.1  1.5  0.5      -0.00      -0.30       0.00       0.18      -0.00      -0.00      -0.00       0.00      -0.00     181.96
                           -0.00      -0.00       0.43      -0.00      -0.00       0.00       0.00       0.00     223.20       0.00

   32  12.1  1.5  0.5      -0.00      -0.12       0.00      -0.94      -0.00       0.00      -0.00       0.00      -0.00    -257.81
                            0.00      -0.00       0.47      -0.00      -0.00       0.00      -0.00       0.00     244.14      -0.00

   33  13.1  1.5  0.5      -0.79       0.00      -0.00      -0.00       0.00       0.00       0.17      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.09      -0.75      -0.00    -369.36       0.00       0.01

   34  14.1  1.5  0.5       0.00       0.00       0.53       0.00      -0.00      -0.00       0.00       0.00     274.66       0.00
                           -0.00      -0.00      -0.00      -0.33       0.00      -0.00       0.00      -0.01       0.00    -103.73

   35  15.1  1.5  0.5       0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.02      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.02      -0.01      -0.00      -0.00      -0.00       0.00

   36  16.1  1.5  0.5      -0.00      -0.00       0.01      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.04      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   37  17.1  1.5  0.5       0.00       0.04       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.01       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   38  18.1  1.5  0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.01
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.01       0.00

   39  19.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.01       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01

   40  20.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   41   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      71.85      81.63       0.00       0.11       0.00      -0.00

   42   2.1  1.5 -0.5       0.00       0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     136.25       0.00       0.00       0.00      -0.00      -0.00       0.24       0.00

   43   3.1  1.5 -0.5       0.00       0.00       0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -136.25       0.00     120.44       0.00       0.00       0.00      -0.00      -0.00       0.32

   44   4.1  1.5 -0.5       0.00       0.00       0.00       3.12       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -120.44       0.00      -0.00       0.00       0.00       0.00      -0.21       0.00

   45   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       2.31       0.00       0.00       0.00       0.00       0.00
                          -71.85      -0.00      -0.00       0.00       0.00       0.00    -261.87      -0.00      -0.00       0.00

   46   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       3.43       0.00       0.00       0.00       0.00
                          -81.63      -0.00      -0.00      -0.00      -0.00      -0.00      47.71      -0.00       0.00      -0.00

   47   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       3.81       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     261.87     -47.71      -0.00      -0.18       0.00      -0.00

   48   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3350.73       0.00       0.00
                           -0.11       0.00       0.00      -0.00       0.00       0.00       0.18      -0.00      -0.00      -0.00

   49   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3350.73       0.00
                           -0.00      -0.24       0.00       0.21       0.00      -0.00      -0.00       0.00      -0.00     165.22

   50  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3351.23
                            0.00      -0.00      -0.32      -0.00      -0.00       0.00       0.00       0.00    -165.22       0.00

   51  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.47      -0.06       0.00     -84.29      -0.00      -0.01

   52  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.05      -0.15       0.00     -71.86       0.00       0.00

   53  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.01       0.00      -0.00      -0.00       0.00      -0.00      -7.81       0.00

   54  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.15      -0.00       0.00       0.00       0.00       0.00       0.43      -0.00       0.01      -0.00

   55  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   56  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00      -0.00       0.00      -0.00      -0.01      -0.00       0.00       0.00

   57  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.01      -0.01       0.00      -0.00      -0.00      -0.00

   58  18.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.01      -0.00       0.00

   59  19.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   60  20.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00

   61   1.1  1.5 -1.5      -0.00     -33.52      -0.00    -471.22       0.00       0.00      -0.00       0.00       0.00      -0.47
                            0.00      -0.00    -197.48      -0.00      -0.00       0.00       0.00      -0.00      -0.35       0.00

   62   2.1  1.5 -1.5      33.52      -0.00       0.00      -0.00       0.00       0.00    -156.58       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      99.23    -454.35      -0.00      -0.82      -0.00      -0.00

   63   3.1  1.5 -1.5       0.00      -0.00      -0.00      -0.00    -217.02    -228.33      -0.00      -0.31      -0.00       0.00
                          197.48       0.00       0.00       0.00       0.00       0.00    -245.34       0.00      -0.00       0.00

   64   4.1  1.5 -1.5     471.22       0.00       0.00      -0.00       0.00       0.00      19.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00    -139.58    -110.62      -0.00      -0.14      -0.00       0.00

   65   5.1  1.5 -1.5      -0.00      -0.00     217.02      -0.00       0.00       0.00       0.00      -0.00       0.38       0.00
                            0.00     -99.23      -0.00     139.58       0.00       0.00       0.00       0.00       0.00       0.29

   66   6.1  1.5 -1.5      -0.00      -0.00     228.33      -0.00      -0.00      -0.00       0.00      -0.00       0.40       0.00
                           -0.00     454.35      -0.00     110.62      -0.00      -0.00       0.00      -0.00       0.00      -0.50

   67   7.1  1.5 -1.5       0.00     156.58       0.00     -19.00      -0.00      -0.00       0.00       0.00      -0.00      -0.24
                           -0.00       0.00     245.34       0.00      -0.00      -0.00      -0.00      -0.00       0.43      -0.00

   68   8.1  1.5 -1.5      -0.00      -0.00       0.31      -0.00       0.00       0.00      -0.00      -0.00     159.69      -0.00
                            0.00       0.82      -0.00       0.14      -0.00       0.00       0.00       0.00      -0.00    -285.62

   69   9.1  1.5 -1.5      -0.00      -0.00       0.00       0.00      -0.38      -0.40       0.00    -159.69      -0.00       0.01
                            0.35       0.00       0.00       0.00      -0.00      -0.00      -0.43       0.00       0.00       0.00

   70  10.1  1.5 -1.5       0.47      -0.00      -0.00       0.00      -0.00      -0.00       0.24       0.00      -0.01      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.29       0.50       0.00     285.62      -0.00       0.00

   71  11.1  1.5 -1.5       0.00       0.26      -0.00      -0.16       0.00       0.00       0.00      -0.00       0.00    -157.58
                           -0.00      -0.00       0.37      -0.00      -0.00       0.00       0.00       0.00     193.30       0.00

   72  12.1  1.5 -1.5       0.00       0.10      -0.00       0.82       0.00      -0.00       0.00      -0.00       0.00     223.27
                            0.00      -0.00       0.41      -0.00      -0.00       0.00      -0.00       0.00     211.43      -0.00

   73  13.1  1.5 -1.5       0.68      -0.00       0.00       0.00      -0.00      -0.00      -0.15       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.08      -0.65      -0.00    -319.88       0.00       0.00

   74  14.1  1.5 -1.5      -0.00      -0.00      -0.46      -0.00       0.00       0.00      -0.00      -0.00    -237.86      -0.00
                           -0.00      -0.00      -0.00      -0.28       0.00      -0.00       0.00      -0.01       0.00     -89.83

   75  15.1  1.5 -1.5      -0.01       0.00      -0.00      -0.00       0.00       0.00       0.02       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.02      -0.01      -0.00      -0.00      -0.00       0.00

   76  16.1  1.5 -1.5       0.00       0.00      -0.01       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.03      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   77  17.1  1.5 -1.5      -0.00      -0.03      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.01       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   78  18.1  1.5 -1.5      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.01
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   79  19.1  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01

   80  20.1  1.5 -1.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   81   1.1  0.5  0.5       4.40       0.00      -0.00      -0.00       0.00       0.00      -0.73      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.68       3.59      -0.00    -114.89      -0.00       0.00

   82   2.1  0.5  0.5       0.00      -0.00      -3.01      -0.00      -0.00      -0.00      -0.00      -0.00     103.11       0.00
                           -0.00       4.26      -0.00       1.57       0.00      -0.00      -0.00       0.00       0.00      80.06

   83   3.1  0.5  0.5       0.00       0.00      -1.44       0.00       0.00      -0.00      -0.00      -0.00      49.47       0.00
                            0.00      -2.48      -0.00       1.05      -0.00       0.00       0.00      -0.00       0.00     -88.76

   84   4.1  0.5  0.5       0.00      -0.03       0.00      -4.95       0.00      -0.00      -0.00      -0.00      -0.00     105.14
                           -0.00       0.00       1.56      -0.00       0.00       0.00       0.00       0.00     -53.37      -0.00

   85   5.1  0.5  0.5      -0.00       1.70       0.00       0.76       0.00      -0.00      -0.00       0.00       0.00      29.09
                            0.00       0.00      -2.96       0.00      -0.00      -0.00      -0.00      -0.00     101.15       0.00

   86   6.1  0.5  0.5       0.00       0.00      -0.00      -0.00      -2.30      -2.42      -0.00      63.75       0.00      -0.00
                           -2.10      -0.00      -0.00      -0.00      -0.00      -0.00       2.60       0.00       0.00       0.00

   87   7.1  0.5  0.5       2.40       0.00      -0.00      -0.00       0.00      -0.00       1.51      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       1.69      -3.42       0.00     126.92      -0.00       0.00

   88   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.02      -0.00      -0.00      -0.00      -0.00      -0.00      34.95       0.00

   89   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.67       0.00      -0.00      -0.00       0.00       0.00       1.29      -0.00       0.00       0.00

   90   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.59       0.00      -0.00      -0.00      -0.00      -0.00       9.70       0.00       0.00       0.00

   91   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       4.43       2.61      -0.00     -54.14      -0.00       0.01

   92   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       8.95      -2.30       0.00     143.29      -0.00       0.01

   93   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -5.01       0.00       4.43      -0.00       0.00       0.00       0.00      -0.00    -228.48

   94   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -6.61       0.00      -0.00      -0.00      -0.00      -0.00     226.05       0.00


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

   18  18.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19  19.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  20.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   1.1  1.5  0.5       0.00       0.00       0.79      -0.00      -0.01       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   22   2.1  1.5  0.5       0.30       0.12      -0.00      -0.00       0.00       0.00      -0.04       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   23   3.1  1.5  0.5      -0.00      -0.00       0.00      -0.53      -0.00      -0.01      -0.00       0.00      -0.00      -0.00
                           -0.43      -0.47      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00      -0.00

   24   4.1  1.5  0.5      -0.18       0.94       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.33       0.00       0.04      -0.00      -0.00       0.00      -0.00

   25   5.1  1.5  0.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.09      -0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00

   26   6.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.75       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00

   27   7.1  1.5  0.5       0.00       0.00      -0.17      -0.00       0.02      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   28   8.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00     369.36       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00

   29   9.1  1.5  0.5       0.00       0.00      -0.00    -274.66       0.00       0.00      -0.00       0.00      -0.01       0.00
                         -223.20    -244.14      -0.00      -0.00       0.00      -0.00      -0.00      -0.01       0.00       0.00

   30  10.1  1.5  0.5    -181.96     257.81       0.00      -0.00       0.00       0.00      -0.00      -0.01      -0.00      -0.00
                           -0.00       0.00      -0.01     103.73      -0.00      -0.00      -0.00      -0.00       0.01      -0.00

   31  11.1  1.5  0.5       0.00       0.00     -24.46      -0.01      -0.00       0.00       0.00      -0.00       0.00       0.01
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  12.1  1.5  0.5      -0.00      -0.00    -416.45       0.01       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   33  13.1  1.5  0.5      24.46     416.45       0.00       0.00       0.00      -0.00      -0.00       0.01      -0.00       0.00
                           -0.00      -0.00      -0.00     132.67       0.00      -0.00       0.00      -0.00       0.01      -0.00

   34  14.1  1.5  0.5       0.01      -0.01      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00    -132.67       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01

   35  15.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00     169.46       3.74       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00     169.44      -0.00      -0.00      -3.74       0.00

   36  16.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00    -169.44      -0.00       0.00      -0.00       0.00       3.74

   37  17.1  1.5  0.5      -0.00       0.00       0.00       0.00    -169.46       0.00      -0.00      -0.00       0.00       3.74
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   38  18.1  1.5  0.5       0.00      -0.00      -0.01      -0.00      -3.74       0.00       0.00       0.00       0.00     179.28
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   39  19.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.01       0.00       3.74      -0.00      -0.00       0.00       0.00    -179.26

   40  20.1  1.5  0.5      -0.01      -0.00      -0.00      -0.00      -0.00       0.00      -3.74    -179.28       0.00      -0.00
                           -0.00       0.00       0.00       0.01      -0.00      -3.74       0.00       0.00     179.26       0.00

   41   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.15      -0.00       0.01      -0.00       0.00       0.00      -0.00

   42   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   43   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.01      -0.00       0.01      -0.00       0.00      -0.00       0.00       0.00

   44   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   45   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.47       0.05       0.00      -0.00      -0.00      -0.00      -0.01       0.00      -0.00       0.00

   46   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06       0.15       0.00      -0.00      -0.00       0.00       0.01      -0.00       0.00       0.00

   47   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.43      -0.00       0.01      -0.00      -0.00      -0.00      -0.00

   48   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           84.29      71.86       0.00       0.00      -0.00       0.00       0.00      -0.01       0.00      -0.00

   49   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       7.81      -0.01      -0.00      -0.00       0.00       0.00      -0.00       0.01

   50  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   51  11.1  1.5 -0.5    3351.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -232.57       0.00       0.00      -0.00       0.00       0.00       0.00

   52  12.1  1.5 -0.5       0.00    3351.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      45.16       0.00       0.00       0.00       0.00      -0.00       0.00

   53  13.1  1.5 -0.5       0.00       0.00    3351.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   54  14.1  1.5 -0.5       0.00       0.00       0.00    3351.84       0.00       0.00       0.00       0.00       0.00       0.00
                          232.57     -45.16      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   55  15.1  1.5 -0.5       0.00       0.00       0.00       0.00   13469.35       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   56  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   13469.57       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00     -84.73      -1.87       0.00      -0.00

   57  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   13469.70       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      84.73       0.00       0.00      -1.87       0.00

   58  18.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.64       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       1.87      -0.00       0.00     -89.63       0.00

   59  19.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.66       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       1.87      89.63      -0.00       0.00

   60  20.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.55
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   61   1.1  1.5 -1.5      -0.00      -0.00      -0.68       0.00       0.01      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   62   2.1  1.5 -1.5      -0.26      -0.10       0.00       0.00      -0.00      -0.00       0.03      -0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   63   3.1  1.5 -1.5       0.00       0.00      -0.00       0.46       0.00       0.01       0.00      -0.00       0.00       0.00
                           -0.37      -0.41      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00      -0.00

   64   4.1  1.5 -1.5       0.16      -0.82      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.28       0.00       0.03      -0.00      -0.00       0.00      -0.00

   65   5.1  1.5 -1.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.08      -0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00

   66   6.1  1.5 -1.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.65       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00

   67   7.1  1.5 -1.5      -0.00      -0.00       0.15       0.00      -0.02       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   68   8.1  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00     319.88       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00

   69   9.1  1.5 -1.5      -0.00      -0.00       0.00     237.86      -0.00      -0.00       0.00      -0.00       0.00      -0.00
                         -193.30    -211.43      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   70  10.1  1.5 -1.5     157.58    -223.27      -0.00       0.00      -0.00      -0.00       0.00       0.01       0.00       0.00
                           -0.00       0.00      -0.00      89.83      -0.00      -0.00      -0.00      -0.00       0.01      -0.00

   71  11.1  1.5 -1.5       0.00      -0.00      21.18       0.01       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   72  12.1  1.5 -1.5       0.00      -0.00     360.65      -0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   73  13.1  1.5 -1.5     -21.18    -360.65       0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00      -0.00
                           -0.00      -0.00       0.00     114.90       0.00      -0.00       0.00      -0.00       0.01      -0.00

   74  14.1  1.5 -1.5      -0.01       0.01       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00    -114.90      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01

   75  15.1  1.5 -1.5      -0.00       0.00       0.00      -0.00       0.00      -0.00    -146.76      -3.24      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00     146.74      -0.00      -0.00      -3.24       0.00

   76  16.1  1.5 -1.5       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -146.74       0.00       0.00      -0.00       0.00       3.24

   77  17.1  1.5 -1.5       0.00      -0.00      -0.00      -0.00     146.76      -0.00      -0.00       0.00      -0.00      -3.24
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   78  18.1  1.5 -1.5      -0.00       0.00       0.01       0.00       3.24      -0.00      -0.00       0.00      -0.00    -155.26
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   79  19.1  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01       0.00       3.24      -0.00      -0.00       0.00      -0.00    -155.24

   80  20.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       3.24     155.26      -0.00      -0.00
                           -0.00       0.00       0.00       0.01      -0.00      -3.24       0.00       0.00     155.24      -0.00

   81   1.1  0.5  0.5       1.74     152.61       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      49.41      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   82   2.1  0.5  0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00    -133.31      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   83   3.1  0.5  0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      25.27       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   84   4.1  0.5  0.5       0.00      -0.00     132.65      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   85   5.1  0.5  0.5       0.00       0.00     -56.61      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   86   6.1  0.5  0.5       0.00       0.00      -0.00     -94.95       0.00       0.00      -0.00       0.00      -0.00      -0.00
                          -77.17     -84.40      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   87   7.1  0.5  0.5     -63.45      73.36       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      30.80       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   88   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   89   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.74     117.32       0.00      -0.00       0.00      -0.00      -0.00      -0.01      -0.00       0.00

   90   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -336.28       3.38       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   91   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     167.44       0.00       0.00       0.00      -0.00      -0.00      -0.00

   92   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     281.59      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   93   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -10.79       0.01      -0.00       0.00      -0.00       0.00       0.00      -0.00

   94   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

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

   18  18.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19  19.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  20.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38  18.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39  19.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40  20.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   1.1  1.5 -0.5      -0.00      33.52       0.00     471.22      -0.00      -0.00       0.00      -0.00      -0.00       0.47
                           -0.00      -0.00    -197.48      -0.00      -0.00       0.00       0.00      -0.00      -0.35       0.00

   42   2.1  1.5 -0.5     -33.52      -0.00      -0.00       0.00      -0.00      -0.00     156.58      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      99.23    -454.35      -0.00      -0.82      -0.00      -0.00

   43   3.1  1.5 -0.5      -0.00       0.00      -0.00       0.00     217.02     228.33       0.00       0.31       0.00      -0.00
                          197.48       0.00      -0.00       0.00       0.00       0.00    -245.34       0.00      -0.00       0.00

   44   4.1  1.5 -0.5    -471.22      -0.00      -0.00      -0.00      -0.00      -0.00     -19.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00    -139.58    -110.62      -0.00      -0.14      -0.00       0.00

   45   5.1  1.5 -0.5       0.00       0.00    -217.02       0.00       0.00      -0.00      -0.00       0.00      -0.38      -0.00
                            0.00     -99.23      -0.00     139.58      -0.00       0.00       0.00       0.00       0.00       0.29

   46   6.1  1.5 -0.5       0.00       0.00    -228.33       0.00       0.00      -0.00      -0.00       0.00      -0.40      -0.00
                           -0.00     454.35      -0.00     110.62      -0.00       0.00       0.00      -0.00       0.00      -0.50

   47   7.1  1.5 -0.5      -0.00    -156.58      -0.00      19.00       0.00       0.00       0.00      -0.00       0.00       0.24
                           -0.00       0.00     245.34       0.00      -0.00      -0.00       0.00      -0.00       0.43      -0.00

   48   8.1  1.5 -0.5       0.00       0.00      -0.31       0.00      -0.00      -0.00       0.00      -0.00    -159.69       0.00
                            0.00       0.82      -0.00       0.14      -0.00       0.00       0.00      -0.00      -0.00    -285.62

   49   9.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.38       0.40      -0.00     159.69      -0.00      -0.01
                            0.35       0.00       0.00       0.00      -0.00      -0.00      -0.43       0.00      -0.00       0.00

   50  10.1  1.5 -0.5      -0.47       0.00       0.00      -0.00       0.00       0.00      -0.24      -0.00       0.01      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.29       0.50       0.00     285.62      -0.00      -0.00

   51  11.1  1.5 -0.5      -0.00      -0.26       0.00       0.16      -0.00      -0.00      -0.00       0.00      -0.00     157.58
                           -0.00      -0.00       0.37      -0.00      -0.00       0.00       0.00       0.00     193.30       0.00

   52  12.1  1.5 -0.5      -0.00      -0.10       0.00      -0.82      -0.00       0.00      -0.00       0.00      -0.00    -223.27
                            0.00      -0.00       0.41      -0.00      -0.00       0.00      -0.00       0.00     211.43      -0.00

   53  13.1  1.5 -0.5      -0.68       0.00      -0.00      -0.00       0.00       0.00       0.15      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.08      -0.65      -0.00    -319.88       0.00       0.00

   54  14.1  1.5 -0.5       0.00       0.00       0.46       0.00      -0.00      -0.00       0.00       0.00     237.86       0.00
                           -0.00      -0.00      -0.00      -0.28       0.00      -0.00       0.00      -0.01       0.00     -89.83

   55  15.1  1.5 -0.5       0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.02      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.02      -0.01      -0.00      -0.00      -0.00       0.00

   56  16.1  1.5 -0.5      -0.00      -0.00       0.01      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.03      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   57  17.1  1.5 -0.5       0.00       0.03       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.01       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   58  18.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.01
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   59  19.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01

   60  20.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   61   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     215.56     244.88       0.00       0.34       0.00      -0.00

   62   2.1  1.5 -1.5       0.00       0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     408.74       0.00       0.00       0.00      -0.00      -0.00       0.72       0.00

   63   3.1  1.5 -1.5       0.00       0.00       0.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -408.74       0.00     361.33       0.00       0.00       0.00      -0.00      -0.00       0.96

   64   4.1  1.5 -1.5       0.00       0.00       0.00       3.12       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -361.33       0.00      -0.00       0.00       0.00       0.00      -0.64       0.00

   65   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       2.31       0.00       0.00       0.00       0.00       0.00
                         -215.56      -0.00      -0.00       0.00       0.00       0.00    -785.61      -0.00      -0.00       0.00

   66   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       3.43       0.00       0.00       0.00       0.00
                         -244.88      -0.00      -0.00      -0.00      -0.00      -0.00     143.12      -0.00       0.00      -0.00

   67   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       3.81       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     785.61    -143.12      -0.00      -0.55       0.00      -0.00

   68   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3350.73       0.00       0.00
                           -0.34       0.00       0.00      -0.00       0.00       0.00       0.55      -0.00      -0.00      -0.00

   69   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3350.73       0.00
                           -0.00      -0.72       0.00       0.64       0.00      -0.00      -0.00       0.00      -0.00     495.65

   70  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    3351.23
                            0.00      -0.00      -0.96      -0.00      -0.00       0.00       0.00       0.00    -495.65       0.00

   71  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       1.42      -0.18       0.00    -252.88      -0.00      -0.03

   72  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.16      -0.46       0.00    -215.58       0.00       0.01

   73  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.04       0.00      -0.00      -0.00       0.00      -0.00     -23.42       0.00

   74  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.46      -0.00       0.00       0.00       0.00       0.00       1.29      -0.00       0.02      -0.01

   75  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   76  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00       0.00      -0.00       0.00      -0.00      -0.02      -0.00       0.00       0.00

   77  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.02      -0.03       0.00      -0.00      -0.00      -0.00

   78  18.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.02      -0.00       0.00

   79  19.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   80  20.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.02       0.00

   81   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   84   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   85   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   86   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   87   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   88   1.1  0.5 -0.5       7.63       0.00      -0.00      -0.00       0.00       0.00      -1.26      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       1.18       6.22      -0.00    -198.99      -0.00       0.00

   89   2.1  0.5 -0.5       0.00      -0.00      -5.22      -0.00      -0.00      -0.00      -0.00      -0.00     178.60       0.00
                           -0.00       7.38      -0.00       2.72       0.00      -0.00      -0.00       0.00       0.00     138.66

   90   3.1  0.5 -0.5       0.00       0.00      -2.50       0.00       0.00      -0.00      -0.00      -0.00      85.69       0.00
                            0.00      -4.30      -0.00       1.82      -0.00       0.00       0.00      -0.00       0.00    -153.74

   91   4.1  0.5 -0.5       0.00      -0.06       0.00      -8.57       0.00      -0.00      -0.00      -0.00      -0.00     182.11
                           -0.00       0.00       2.70      -0.00       0.00       0.00       0.00       0.00     -92.43      -0.00

   92   5.1  0.5 -0.5      -0.00       2.94       0.00       1.32       0.00      -0.00      -0.00       0.00       0.00      50.38
                            0.00       0.00      -5.12       0.00      -0.00      -0.00      -0.00      -0.00     175.20       0.00

   93   6.1  0.5 -0.5       0.00       0.00      -0.00      -0.00      -3.99      -4.20      -0.00     110.42       0.00      -0.01
                           -3.63      -0.00      -0.00      -0.00      -0.00      -0.00       4.51       0.00       0.00       0.00

   94   7.1  0.5 -0.5       4.16       0.00      -0.00      -0.00       0.00      -0.00       2.61      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       2.92      -5.93       0.00     219.83      -0.00       0.00


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

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

   18  18.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19  19.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  20.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38  18.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39  19.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40  20.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   1.1  1.5 -0.5       0.00       0.00       0.68      -0.00      -0.01       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   42   2.1  1.5 -0.5       0.26       0.10      -0.00      -0.00       0.00       0.00      -0.03       0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   43   3.1  1.5 -0.5      -0.00      -0.00       0.00      -0.46      -0.00      -0.01      -0.00       0.00      -0.00      -0.00
                           -0.37      -0.41      -0.00       0.00       0.00       0.00       0.01      -0.00       0.00      -0.00

   44   4.1  1.5 -0.5      -0.16       0.82       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.28       0.00       0.03      -0.00      -0.00       0.00      -0.00

   45   5.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.08      -0.00       0.02       0.00      -0.00      -0.00      -0.00       0.00

   46   6.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.65       0.00       0.01       0.00      -0.00       0.00      -0.00       0.00

   47   7.1  1.5 -0.5       0.00       0.00      -0.15      -0.00       0.02      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   48   8.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00     319.88       0.01       0.00       0.00      -0.00       0.00      -0.00       0.00

   49   9.1  1.5 -0.5       0.00       0.00      -0.00    -237.86       0.00       0.00      -0.00       0.00      -0.00       0.00
                         -193.30    -211.43      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   50  10.1  1.5 -0.5    -157.58     223.27       0.00      -0.00       0.00       0.00      -0.00      -0.01      -0.00      -0.00
                           -0.00       0.00      -0.00      89.83      -0.00      -0.00      -0.00      -0.00       0.01      -0.00

   51  11.1  1.5 -0.5       0.00       0.00     -21.18      -0.01      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   52  12.1  1.5 -0.5      -0.00      -0.00    -360.65       0.01       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   53  13.1  1.5 -0.5      21.18     360.65       0.00       0.00       0.00      -0.00      -0.00       0.01      -0.00       0.00
                           -0.00      -0.00      -0.00     114.90       0.00      -0.00       0.00      -0.00       0.01      -0.00

   54  14.1  1.5 -0.5       0.01      -0.01      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00    -114.90       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.01

   55  15.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00     146.76       3.24       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00     146.74      -0.00      -0.00      -3.24       0.00

   56  16.1  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00    -146.74      -0.00       0.00      -0.00       0.00       3.24

   57  17.1  1.5 -0.5      -0.00       0.00       0.00       0.00    -146.76       0.00      -0.00      -0.00       0.00       3.24
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   58  18.1  1.5 -0.5       0.00      -0.00      -0.01      -0.00      -3.24       0.00       0.00       0.00       0.00     155.26
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   59  19.1  1.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.01       0.00       3.24      -0.00      -0.00       0.00       0.00    -155.24

   60  20.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -3.24    -155.26       0.00      -0.00
                           -0.00       0.00       0.00       0.01      -0.00      -3.24       0.00       0.00     155.24       0.00

   61   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.46      -0.00       0.03      -0.00       0.00       0.00      -0.00

   62   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   63   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.04      -0.00       0.04      -0.00       0.00      -0.00       0.00       0.00

   64   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   65   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.42       0.16       0.00      -0.00      -0.00      -0.00      -0.02       0.00      -0.00       0.00

   66   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.18       0.46       0.00      -0.00      -0.00       0.00       0.03      -0.00       0.00       0.00

   67   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -1.29      -0.00       0.02      -0.00      -0.00      -0.00      -0.00

   68   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          252.88     215.58       0.00       0.00      -0.00       0.00       0.00      -0.02       0.00      -0.00

   69   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      23.42      -0.02      -0.00      -0.00       0.00       0.00      -0.00       0.02

   70  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.01      -0.00       0.01      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   71  11.1  1.5 -1.5    3351.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -697.70       0.00       0.00      -0.00       0.00       0.01       0.00

   72  12.1  1.5 -1.5       0.00    3351.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     135.47       0.00       0.00       0.00       0.00      -0.01       0.00

   73  13.1  1.5 -1.5       0.00       0.00    3351.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   74  14.1  1.5 -1.5       0.00       0.00       0.00    3351.84       0.00       0.00       0.00       0.00       0.00       0.00
                          697.70    -135.47      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   75  15.1  1.5 -1.5       0.00       0.00       0.00       0.00   13469.35       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   76  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   13469.57       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00    -254.18      -5.61       0.00      -0.00

   77  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   13469.70       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00     254.18       0.00       0.00      -5.61       0.00

   78  18.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.64       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       5.61      -0.00       0.00    -268.90       0.00

   79  19.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.66       0.00
                           -0.01       0.01       0.00      -0.00       0.00      -0.00       5.61     268.90      -0.00       0.00

   80  20.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   15448.55
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   81   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   84   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   85   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   86   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   87   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   88   1.1  0.5 -0.5       3.01     264.33       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      85.58      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   89   2.1  0.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00    -230.90      -0.01       0.00      -0.00       0.00      -0.00      -0.00      -0.00

   90   3.1  0.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      43.77       0.01      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   91   4.1  0.5 -0.5       0.00      -0.00     229.75      -0.01       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   92   5.1  0.5 -0.5       0.00       0.00     -98.04      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   93   6.1  0.5 -0.5       0.00       0.00      -0.00    -164.46       0.00       0.00      -0.00       0.00      -0.00      -0.00
                         -133.66    -146.19      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   94   7.1  0.5 -0.5    -109.89     127.07       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      53.34       0.00      -0.00      -0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       81         82         83         84         85         86         87         88         89         90

    1   1.1  1.5  1.5       7.63       0.00       0.00       0.00      -0.00       0.00       4.16       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -3.63      -0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00      -0.00       0.00      -0.06       2.94       0.00       0.00       0.00       0.00       0.00
                            0.00       7.38      -4.30       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00      -5.22      -2.50       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       2.70      -5.12      -0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.00       0.00      -8.57       1.32      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       2.72       1.82      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00      -3.99       0.00       0.00       0.00       0.00
                            1.18       0.00      -0.00       0.00      -0.00      -0.00       2.92       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00      -0.00      -0.00      -0.00      -0.00      -4.20      -0.00       0.00       0.00       0.00
                            6.22      -0.00       0.00       0.00      -0.00      -0.00      -5.93       0.00       0.00       0.00

    7   7.1  1.5  1.5      -1.26      -0.00      -0.00      -0.00      -0.00      -0.00       2.61       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       4.51       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5      -0.00      -0.00      -0.00      -0.00       0.00     110.42      -0.00       0.00       0.00       0.00
                         -198.99       0.00      -0.00       0.00      -0.00       0.00     219.83       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00     178.60      85.69      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -92.43     175.20       0.00      -0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00       0.00     182.11      50.38      -0.01       0.00       0.00       0.00       0.00
                            0.00     138.66    -153.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       3.01       0.00       0.00       0.00       0.00       0.00    -109.89       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00    -133.66       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5     264.33      -0.00      -0.00      -0.00       0.00       0.00     127.07       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -146.19       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00      -0.00      -0.00     229.75     -98.04      -0.00       0.00       0.00       0.00       0.00
                            0.00    -230.90      43.77       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.00       0.00       0.00      -0.01      -0.00    -164.46      -0.00       0.00       0.00       0.00
                           85.58      -0.01       0.01      -0.00       0.00      -0.00      53.34       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   18  18.1  1.5  1.5       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   19  19.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  20.1  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   21   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       4.40       0.00       0.00
                           -0.00      -3.67      -1.59       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   22   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       5.01      -0.00       0.00       4.26      -2.48

   23   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -3.01      -1.44
                            1.02       0.00       0.00      -0.00      -0.00      -0.00       6.61      -0.00      -0.00      -0.00

   24   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -4.43      -0.00      -0.00       1.57       1.05

   25   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -4.43      -8.95       0.00       0.00       0.68       0.00      -0.00

   26   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -2.61       2.30      -0.00       0.00       3.59      -0.00       0.00

   27   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.73      -0.00      -0.00
                            0.00      -1.29      -9.70       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   28   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00      54.14    -143.29      -0.00       0.00    -114.89       0.00      -0.00

   29   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     103.11      49.47
                          -34.95      -0.00      -0.00       0.00       0.00       0.00    -226.05      -0.00       0.00       0.00

   30  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.01      -0.01     228.48      -0.00       0.00      80.06     -88.76

   31  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.74       0.00       0.00
                           -0.00      62.74     336.28       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   32  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     152.61      -0.00      -0.00
                            0.00    -117.32      -3.38      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   33  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      10.79      -0.00       0.00    -133.31      25.27

   34  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00    -167.44    -281.59      -0.01      -0.00      49.41      -0.00       0.00

   35  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   36  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   38  18.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.01      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39  19.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   40  20.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   41   1.1  1.5 -0.5       4.40       0.00       0.00       0.00      -0.00       0.00       2.40       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       2.10       0.00      -0.00      -3.67      -1.59

   42   2.1  1.5 -0.5       0.00      -0.00       0.00      -0.03       1.70       0.00       0.00       0.00       0.00       0.00
                           -0.00      -4.26       2.48      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   43   3.1  1.5 -0.5      -0.00      -3.01      -1.44       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -1.56       2.96       0.00      -0.00       1.02       0.00       0.00

   44   4.1  1.5 -0.5      -0.00      -0.00       0.00      -4.95       0.76      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -1.57      -1.05       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   45   5.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00      -2.30       0.00       0.00       0.00       0.00
                           -0.68      -0.00       0.00      -0.00       0.00       0.00      -1.69       0.00      -0.00       0.00

   46   6.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00      -2.42      -0.00       0.00       0.00       0.00
                           -3.59       0.00      -0.00      -0.00       0.00       0.00       3.42       0.00      -0.00       0.00

   47   7.1  1.5 -0.5      -0.73      -0.00      -0.00      -0.00      -0.00      -0.00       1.51       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -2.60      -0.00       0.00      -1.29      -9.70

   48   8.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00      63.75      -0.00       0.00       0.00       0.00
                          114.89      -0.00       0.00      -0.00       0.00      -0.00    -126.92       0.00       0.00      -0.00

   49   9.1  1.5 -0.5       0.00     103.11      49.47      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      53.37    -101.15      -0.00       0.00     -34.95      -0.00      -0.00

   50  10.1  1.5 -0.5      -0.00       0.00       0.00     105.14      29.09      -0.00       0.00       0.00       0.00       0.00
                           -0.00     -80.06      88.76       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  11.1  1.5 -0.5       1.74       0.00       0.00       0.00       0.00       0.00     -63.45       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      77.17      -0.00      -0.00      62.74     336.28

   52  12.1  1.5 -0.5     152.61      -0.00      -0.00      -0.00       0.00       0.00      73.36       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      84.40      -0.00       0.00    -117.32      -3.38

   53  13.1  1.5 -0.5       0.00      -0.00      -0.00     132.65     -56.61      -0.00       0.00       0.00       0.00       0.00
                           -0.00     133.31     -25.27      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   54  14.1  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00     -94.95      -0.00       0.00       0.00       0.00
                          -49.41       0.00      -0.00       0.00      -0.00       0.00     -30.80      -0.00       0.00       0.00

   55  15.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   56  16.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   57  17.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   58  18.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.01      -0.00

   59  19.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   60  20.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   61   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       7.63       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   62   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -7.38       4.30

   63   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -5.22      -2.50
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   64   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.72      -1.82

   65   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.18      -0.00       0.00

   66   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -6.22       0.00      -0.00

   67   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.26      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   68   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     198.99      -0.00       0.00

   69   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     178.60      85.69
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   70  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -138.66     153.74

   71  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.01       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   72  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     264.33      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   73  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     230.90     -43.77

   74  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     -85.58       0.01      -0.01

   75  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   76  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   77  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   78  18.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   79  19.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   80  20.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   81   1.1  0.5  0.5    7534.74       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      49.86       0.00       0.00     353.97     -44.85

   82   2.1  0.5  0.5       0.00    7534.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -187.74     -27.69      -0.00       0.00    -353.97      -0.00      -0.00

   83   3.1  0.5  0.5       0.00       0.00    7535.62       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00    -166.62    -449.83       0.00      -0.00      44.85       0.00      -0.00

   84   4.1  0.5  0.5       0.00       0.00       0.00    7535.63       0.00       0.00       0.00     408.09      -0.00      -0.00
                           -0.00     187.74     166.62      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   85   5.1  0.5  0.5       0.00       0.00       0.00       0.00    7535.79       0.00       0.00    -151.78      -0.00       0.00
                            0.00      27.69     449.83      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   86   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    7535.92       0.00       0.00    -294.18    -141.14
                          -49.86       0.00      -0.00       0.00      -0.00      -0.00    -322.44      -0.00       0.00       0.00

   87   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    7536.16       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00     322.44       0.00      -0.00    -267.44     259.45

   88   1.1  0.5 -0.5      -0.00       0.00      -0.00     408.09    -151.78       0.00       0.00    7534.74       0.00       0.00
                           -0.00     353.97     -44.85      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   89   2.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.00    -294.18       0.00       0.00    7534.75       0.00
                         -353.97       0.00      -0.00       0.00      -0.00      -0.00     267.44       0.00      -0.00       0.00

   90   3.1  0.5 -0.5       0.00       0.00       0.00      -0.00       0.00    -141.14       0.00       0.00       0.00    7535.62
                           44.85       0.00       0.00       0.00      -0.00      -0.00    -259.45      -0.00      -0.00      -0.00

   91   4.1  0.5 -0.5    -408.09       0.00       0.00      -0.00       0.00       0.00    -258.15       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00    -152.25      -0.00       0.00    -187.74    -166.62

   92   5.1  0.5 -0.5     151.78       0.00      -0.00      -0.00      -0.00       0.00     -99.64       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00     288.58      -0.00      -0.00     -27.69    -449.83

   93   6.1  0.5 -0.5      -0.00     294.18     141.14      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     152.25    -288.58       0.00       0.00      49.86      -0.00       0.00

   94   7.1  0.5 -0.5      -0.00      -0.00      -0.00     258.15      99.64      -0.00      -0.00       0.00       0.00       0.00
                           -0.00    -267.44     259.45       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       91         92         93         94

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   18  18.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   19  19.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   20  20.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   21   1.1  1.5  0.5       0.00      -0.00       0.00       2.40
                           -0.00       0.00      -2.10      -0.00

   22   2.1  1.5  0.5      -0.03       1.70       0.00       0.00
                            0.00       0.00      -0.00      -0.00

   23   3.1  1.5  0.5       0.00       0.00      -0.00      -0.00
                            1.56      -2.96      -0.00       0.00

   24   4.1  1.5  0.5      -4.95       0.76      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00

   25   5.1  1.5  0.5       0.00       0.00      -2.30       0.00
                            0.00      -0.00      -0.00       1.69

   26   6.1  1.5  0.5      -0.00      -0.00      -2.42      -0.00
                            0.00      -0.00      -0.00      -3.42

   27   7.1  1.5  0.5      -0.00      -0.00      -0.00       1.51
                            0.00      -0.00       2.60       0.00

   28   8.1  1.5  0.5      -0.00       0.00      63.75      -0.00
                            0.00      -0.00       0.00     126.92

   29   9.1  1.5  0.5      -0.00       0.00       0.00       0.00
                          -53.37     101.15       0.00      -0.00

   30  10.1  1.5  0.5     105.14      29.09      -0.00       0.00
                           -0.00       0.00       0.00       0.00

   31  11.1  1.5  0.5       0.00       0.00       0.00     -63.45
                           -0.00       0.00     -77.17       0.00

   32  12.1  1.5  0.5      -0.00       0.00       0.00      73.36
                            0.00      -0.00     -84.40       0.00

   33  13.1  1.5  0.5     132.65     -56.61      -0.00       0.00
                            0.00       0.00      -0.00       0.00

   34  14.1  1.5  0.5      -0.00      -0.00     -94.95      -0.00
                           -0.00       0.00      -0.00      30.80

   35  15.1  1.5  0.5       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00

   36  16.1  1.5  0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00

   37  17.1  1.5  0.5       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00

   38  18.1  1.5  0.5      -0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00

   39  19.1  1.5  0.5       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00

   40  20.1  1.5  0.5      -0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00

   41   1.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00

   42   2.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       5.01      -0.00

   43   3.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       6.61

   44   4.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -4.43      -0.00

   45   5.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -4.43      -8.95       0.00       0.00

   46   6.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -2.61       2.30      -0.00       0.00

   47   7.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00

   48   8.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           54.14    -143.29      -0.00       0.00

   49   9.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -226.05

   50  10.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.01      -0.01     228.48      -0.00

   51  11.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

   52  12.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

   53  13.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      10.79      -0.00

   54  14.1  1.5 -0.5       0.00       0.00       0.00       0.00
                         -167.44    -281.59      -0.01      -0.00

   55  15.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00

   56  16.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

   57  17.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00

   58  18.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00

   59  19.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00

   60  20.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00

   61   1.1  1.5 -1.5       0.00      -0.00       0.00       4.16
                            0.00      -0.00       3.63       0.00

   62   2.1  1.5 -1.5      -0.06       2.94       0.00       0.00
                           -0.00      -0.00       0.00       0.00

   63   3.1  1.5 -1.5       0.00       0.00      -0.00      -0.00
                           -2.70       5.12       0.00      -0.00

   64   4.1  1.5 -1.5      -8.57       1.32      -0.00      -0.00
                            0.00      -0.00       0.00       0.00

   65   5.1  1.5 -1.5       0.00       0.00      -3.99       0.00
                           -0.00       0.00       0.00      -2.92

   66   6.1  1.5 -1.5      -0.00      -0.00      -4.20      -0.00
                           -0.00       0.00       0.00       5.93

   67   7.1  1.5 -1.5      -0.00      -0.00      -0.00       2.61
                           -0.00       0.00      -4.51      -0.00

   68   8.1  1.5 -1.5      -0.00       0.00     110.42      -0.00
                           -0.00       0.00      -0.00    -219.83

   69   9.1  1.5 -1.5      -0.00       0.00       0.00       0.00
                           92.43    -175.20      -0.00       0.00

   70  10.1  1.5 -1.5     182.11      50.38      -0.01       0.00
                            0.00      -0.00      -0.00      -0.00

   71  11.1  1.5 -1.5       0.00       0.00       0.00    -109.89
                            0.00      -0.00     133.66      -0.00

   72  12.1  1.5 -1.5      -0.00       0.00       0.00     127.07
                           -0.00       0.00     146.19      -0.00

   73  13.1  1.5 -1.5     229.75     -98.04      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00

   74  14.1  1.5 -1.5      -0.01      -0.00    -164.46      -0.00
                            0.00      -0.00       0.00     -53.34

   75  15.1  1.5 -1.5       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00

   76  16.1  1.5 -1.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

   77  17.1  1.5 -1.5       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00

   78  18.1  1.5 -1.5      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00

   79  19.1  1.5 -1.5       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00

   80  20.1  1.5 -1.5      -0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00

   81   1.1  0.5  0.5    -408.09     151.78      -0.00      -0.00
                           -0.00       0.00       0.00       0.00

   82   2.1  0.5  0.5       0.00       0.00     294.18      -0.00
                            0.00      -0.00      -0.00     267.44

   83   3.1  0.5  0.5       0.00      -0.00     141.14      -0.00
                            0.00      -0.00      -0.00    -259.45

   84   4.1  0.5  0.5      -0.00      -0.00      -0.00     258.15
                           -0.00       0.00    -152.25      -0.00

   85   5.1  0.5  0.5       0.00      -0.00      -0.00      99.64
                           -0.00      -0.00     288.58      -0.00

   86   6.1  0.5  0.5       0.00       0.00       0.00      -0.00
                          152.25    -288.58      -0.00       0.00

   87   7.1  0.5  0.5    -258.15     -99.64       0.00      -0.00
                            0.00       0.00      -0.00       0.00

   88   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00     -49.86      -0.00

   89   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                          187.74      27.69       0.00      -0.00

   90   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                          166.62     449.83      -0.00       0.00

   91   4.1  0.5 -0.5    7535.63       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00

   92   5.1  0.5 -0.5       0.00    7535.79       0.00       0.00
                            0.00      -0.00      -0.00       0.00

   93   6.1  0.5 -0.5       0.00       0.00    7535.92       0.00
                           -0.00       0.00       0.00     322.44

   94   7.1  0.5 -0.5       0.00       0.00       0.00    7536.16
                            0.00      -0.00    -322.44      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -1392.55671862    -0.00372261     -817.02      0.00000000        0.00      0.0000
     2 -1392.55671862    -0.00372261     -817.02      0.00000000        0.00      0.0000
     3 -1392.55671841    -0.00372240     -816.97      0.00000021        0.05      0.0000
     4 -1392.55671841    -0.00372240     -816.97      0.00000021        0.05      0.0000
     5 -1392.55671711    -0.00372110     -816.69      0.00000151        0.33      0.0000
     6 -1392.55671711    -0.00372110     -816.69      0.00000151        0.33      0.0000
     7 -1392.55671534    -0.00371933     -816.30      0.00000328        0.72      0.0001
     8 -1392.55671534    -0.00371933     -816.30      0.00000328        0.72      0.0001
     9 -1392.55671070    -0.00371469     -815.28      0.00000793        1.74      0.0002
    10 -1392.55671070    -0.00371469     -815.28      0.00000793        1.74      0.0002
    11 -1392.55299267     0.00000334        0.73      0.00372595      817.75      0.1014
    12 -1392.55299267     0.00000334        0.73      0.00372595      817.75      0.1014
    13 -1392.55298969     0.00000632        1.39      0.00372894      818.41      0.1015
    14 -1392.55298969     0.00000632        1.39      0.00372894      818.41      0.1015
    15 -1392.55298667     0.00000934        2.05      0.00373195      819.07      0.1016
    16 -1392.55298667     0.00000934        2.05      0.00373195      819.07      0.1016
    17 -1392.55298101     0.00001500        3.29      0.00373761      820.31      0.1017
    18 -1392.55298101     0.00001500        3.29      0.00373761      820.31      0.1017
    19 -1392.55008957     0.00290644      637.89      0.00662905     1454.91      0.1804
    20 -1392.55008957     0.00290644      637.89      0.00662905     1454.91      0.1804
    21 -1392.55008643     0.00290958      638.58      0.00663219     1455.60      0.1805
    22 -1392.55008643     0.00290958      638.58      0.00663219     1455.60      0.1805
    23 -1392.55008630     0.00290971      638.61      0.00663232     1455.63      0.1805
    24 -1392.55008630     0.00290971      638.61      0.00663232     1455.63      0.1805
    25 -1392.54801745     0.00497856     1092.67      0.00870117     1909.69      0.2368
    26 -1392.54801745     0.00497856     1092.67      0.00870117     1909.69      0.2368
    27 -1392.54801438     0.00498163     1093.34      0.00870424     1910.36      0.2369
    28 -1392.54801438     0.00498163     1093.34      0.00870424     1910.36      0.2369
    29 -1392.54111881     0.01187720     2606.74      0.01559981     3423.76      0.4245
    30 -1392.54111881     0.01187720     2606.74      0.01559981     3423.76      0.4245
    31 -1392.54111852     0.01187749     2606.81      0.01560010     3423.83      0.4245
    32 -1392.54111852     0.01187749     2606.81      0.01560010     3423.83      0.4245
    33 -1392.54111792     0.01187809     2606.94      0.01560070     3423.96      0.4245
    34 -1392.54111792     0.01187809     2606.94      0.01560070     3423.96      0.4245
    35 -1392.54111661     0.01187940     2607.23      0.01560201     3424.25      0.4246
    36 -1392.54111661     0.01187940     2607.23      0.01560201     3424.25      0.4246
    37 -1392.54111630     0.01187971     2607.29      0.01560232     3424.31      0.4246
    38 -1392.54111630     0.01187971     2607.29      0.01560232     3424.31      0.4246
    39 -1392.53794263     0.01505338     3303.83      0.01877599     4120.85      0.5109
    40 -1392.53794263     0.01505338     3303.83      0.01877599     4120.85      0.5109
    41 -1392.53794164     0.01505437     3304.05      0.01877698     4121.07      0.5109
    42 -1392.53794164     0.01505437     3304.05      0.01877698     4121.07      0.5109
    43 -1392.53794080     0.01505521     3304.24      0.01877782     4121.26      0.5110
    44 -1392.53794080     0.01505521     3304.24      0.01877782     4121.26      0.5110
    45 -1392.53794009     0.01505592     3304.39      0.01877853     4121.41      0.5110
    46 -1392.53794009     0.01505592     3304.39      0.01877853     4121.41      0.5110
    47 -1392.53522828     0.01776773     3899.57      0.02149034     4716.59      0.5848
    48 -1392.53522828     0.01776773     3899.57      0.02149034     4716.59      0.5848
    49 -1392.53522752     0.01776849     3899.73      0.02149110     4716.75      0.5848
    50 -1392.53522752     0.01776849     3899.73      0.02149110     4716.75      0.5848
    51 -1392.53522684     0.01776917     3899.88      0.02149178     4716.90      0.5848
    52 -1392.53522684     0.01776917     3899.88      0.02149178     4716.90      0.5848
    53 -1392.53320511     0.01979090     4343.60      0.02351351     5160.62      0.6398
    54 -1392.53320511     0.01979090     4343.60      0.02351351     5160.62      0.6398
    55 -1392.53320389     0.01979212     4343.87      0.02351473     5160.89      0.6399
    56 -1392.53320389     0.01979212     4343.87      0.02351473     5160.89      0.6399
    57 -1392.52067940     0.03231661     7092.68      0.03603923     7909.70      0.9807
    58 -1392.52067940     0.03231661     7092.68      0.03603923     7909.70      0.9807
    59 -1392.52067670     0.03231930     7093.27      0.03604192     7910.29      0.9808
    60 -1392.52067670     0.03231930     7093.27      0.03604192     7910.29      0.9808
    61 -1392.52067557     0.03232044     7093.52      0.03604305     7910.53      0.9808
    62 -1392.52067557     0.03232044     7093.52      0.03604305     7910.53      0.9808
    63 -1392.52067438     0.03232163     7093.78      0.03604424     7910.80      0.9808
    64 -1392.52067438     0.03232163     7093.78      0.03604424     7910.80      0.9808
    65 -1392.51555172     0.03744429     8218.07      0.04116690     9035.09      1.1202
    66 -1392.51555172     0.03744429     8218.07      0.04116690     9035.09      1.1202
    67 -1392.51554848     0.03744753     8218.78      0.04117014     9035.80      1.1203
    68 -1392.51554848     0.03744753     8218.78      0.04117014     9035.80      1.1203
    69 -1392.51554795     0.03744806     8218.90      0.04117068     9035.92      1.1203
    70 -1392.51554795     0.03744806     8218.90      0.04117068     9035.92      1.1203
    71 -1392.49278284     0.06021317    13215.26      0.06393578    14032.28      1.7398
    72 -1392.49278284     0.06021317    13215.26      0.06393578    14032.28      1.7398
    73 -1392.49278256     0.06021345    13215.33      0.06393606    14032.34      1.7398
    74 -1392.49278256     0.06021345    13215.33      0.06393606    14032.34      1.7398
    75 -1392.49278204     0.06021397    13215.44      0.06393659    14032.46      1.7398
    76 -1392.49278204     0.06021397    13215.44      0.06393659    14032.46      1.7398
    77 -1392.49085262     0.06214339    13638.90      0.06586600    14455.92      1.7923
    78 -1392.49085262     0.06214339    13638.90      0.06586600    14455.92      1.7923
    79 -1392.49085183     0.06214418    13639.07      0.06586679    14456.09      1.7923
    80 -1392.49085183     0.06214418    13639.07      0.06586679    14456.09      1.7923
    81 -1392.48969426     0.06330175    13893.13      0.06702436    14710.15      1.8238
    82 -1392.48969426     0.06330175    13893.13      0.06702436    14710.15      1.8238
    83 -1392.48383222     0.06916379    15179.70      0.07288640    15996.72      1.9833
    84 -1392.48383222     0.06916379    15179.70      0.07288640    15996.72      1.9833
    85 -1392.48383205     0.06916396    15179.74      0.07288657    15996.75      1.9833
    86 -1392.48383205     0.06916396    15179.74      0.07288657    15996.75      1.9833
    87 -1392.48383189     0.06916412    15179.77      0.07288673    15996.79      1.9833
    88 -1392.48383189     0.06916412    15179.77      0.07288673    15996.79      1.9833
    89 -1392.48179021     0.07120580    15627.87      0.07492841    16444.89      2.0389
    90 -1392.48179021     0.07120580    15627.87      0.07492841    16444.89      2.0389
    91 -1392.48178996     0.07120605    15627.92      0.07492866    16444.94      2.0389
    92 -1392.48178996     0.07120605    15627.92      0.07492866    16444.94      2.0389
    93 -1392.48056471     0.07243130    15896.83      0.07615391    16713.85      2.0723
    94 -1392.48056471     0.07243130    15896.83      0.07615391    16713.85      2.0723


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.000949287  -0.266771227  -0.010669463  -0.333907137  -0.071232975  -0.287206193   0.098944092  -0.000269379
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.094770522  -0.000337211  -0.056133051   0.001793623   0.336800754  -0.083533437   0.000129943   0.047730528
                        -0.075970796  -0.000270399  -0.377441526   0.012060580   0.059580369  -0.014777130   0.000359416   0.132017952

    3    3.1  1.5  1.5  -0.029682613  -0.000105675  -0.371980327   0.011886068   0.060104645  -0.014907156  -0.000757747  -0.278333989
                         0.037027870   0.000131742   0.055320862  -0.001767679  -0.339764417   0.084268486   0.000273971   0.100630468

    4    4.1  1.5  1.5  -0.182275574  -0.000648599  -0.003061228   0.000097803  -0.370466867   0.091883316   0.000268929   0.098779539
                        -0.146117380  -0.000520005  -0.020583849   0.000657758  -0.065535934   0.016254236   0.000743805   0.273214501

    5    5.1  1.5  1.5  -0.000000030  -0.000000000  -0.000000013   0.000000000  -0.000000004   0.000000001   0.000000000   0.000000001
                        -0.000698160   0.196195732   0.001783408   0.055813391   0.021253631   0.085693123  -0.086213779   0.000234717

    6    6.1  1.5  1.5  -0.000000057  -0.000000000  -0.000000019   0.000000001  -0.000000014   0.000000003  -0.000000000   0.000000004
                        -0.001473255   0.414011764   0.004599133   0.143933805   0.001981558   0.007989504   0.240386282  -0.000654441

    7    7.1  1.5  1.5   0.000039561  -0.011118541  -0.001583778  -0.049565251  -0.009061710  -0.036536145  -0.011737041   0.000031953
                         0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000005

    8    8.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000542   0.000152371   0.000001727   0.000054046  -0.000001123  -0.000004527   0.000106465  -0.000000290

    9    9.1  1.5  1.5  -0.000012440  -0.000000044  -0.000155963   0.000004984   0.000025195  -0.000006249  -0.000000318  -0.000116772
                         0.000015518   0.000000055   0.000023195  -0.000000741  -0.000142422   0.000035323   0.000000115   0.000042218

   10   10.1  1.5  1.5  -0.000017009  -0.000000060   0.000017546  -0.000000560  -0.000207712   0.000051517   0.000000028   0.000010360
                        -0.000013635  -0.000000054   0.000117981  -0.000003771  -0.000036745   0.000009112   0.000000079   0.000028656

   11   11.1  1.5  1.5   0.000000076  -0.000021292  -0.000001334  -0.000041742  -0.000008287  -0.000033405   0.000001541  -0.000000004
                        -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   12   12.1  1.5  1.5  -0.000000389   0.000109368   0.000004324   0.000135332   0.000028954   0.000116741  -0.000041778   0.000000114
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   13   13.1  1.5  1.5  -0.000084834  -0.000000302  -0.000015803   0.000000505  -0.000033007   0.000008187   0.000000122   0.000044807
                        -0.000068005  -0.000000242  -0.000106258   0.000003395  -0.000005839   0.000001448   0.000000337   0.000123931

   14   14.1  1.5  1.5   0.000000001  -0.000000000  -0.000000001   0.000000000   0.000000009  -0.000000002  -0.000000000  -0.000000000
                         0.000000421  -0.000118242  -0.000001150  -0.000035837  -0.000008853  -0.000035703   0.000013316  -0.000000038

   15   15.1  1.5  1.5   0.000000256   0.000000001   0.000000247  -0.000000008  -0.000001213   0.000000301   0.000000001   0.000000482
                         0.000000205   0.000000001   0.000001658  -0.000000053  -0.000000215   0.000000053   0.000000004   0.000001333

   16   16.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000062   0.000000057   0.000001790   0.000000377   0.000001518  -0.000000531   0.000000001

   17   17.1  1.5  1.5  -0.000000004   0.000001029   0.000000014   0.000000449  -0.000000123  -0.000000497   0.000001957  -0.000000005
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   18   18.1  1.5  1.5   0.000000000  -0.000000069  -0.000000002  -0.000000054  -0.000000000  -0.000000001  -0.000000092   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   19   19.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000023   0.000000004   0.000000112   0.000000022   0.000000088  -0.000000017   0.000000000

   20   20.1  1.5  1.5   0.000000019   0.000000000   0.000000012  -0.000000000  -0.000000049   0.000000012   0.000000000   0.000000023
                         0.000000015   0.000000000   0.000000082  -0.000000003  -0.000000009   0.000000002   0.000000000   0.000000063

   21    1.1  1.5  0.5  -0.294997079  -0.001049683  -0.056779244   0.001814259  -0.351072309   0.087073068   0.000075598   0.027766692
                        -0.236478203  -0.000841629  -0.381786554   0.012199464  -0.062105016   0.015403313   0.000209071   0.076799943

   22    2.1  1.5  0.5   0.001135594  -0.319123260  -0.005451799  -0.170618269   0.022844380   0.092106895  -0.519679229   0.001414808
                        -0.000000039  -0.000000000  -0.000000014   0.000000000  -0.000000016   0.000000004  -0.000000001   0.000000009

   23    3.1  1.5  0.5  -0.000000094  -0.000000000  -0.000000032   0.000000001  -0.000000015   0.000000004   0.000000000   0.000000001
                        -0.001954809   0.549335668   0.002346646   0.073441562   0.029653670   0.119561460  -0.136455595   0.000371498

   24    4.1  1.5  0.5   0.000177494  -0.049871809   0.014696459   0.459932596   0.098650987   0.397753615  -0.162732568   0.000443048
                        -0.000000081  -0.000000000  -0.000000029   0.000000001  -0.000000006   0.000000001  -0.000000000  -0.000000005

   25    5.1  1.5  0.5  -0.107093127  -0.000381080   0.312242848  -0.009977221  -0.038111422   0.009452400   0.000428080   0.157240514
                         0.133594382   0.000475390  -0.046436713   0.001483811   0.215439344  -0.053433339  -0.000154776  -0.056849638

   26    6.1  1.5  0.5  -0.063755232  -0.000226904  -0.172685780   0.005517913   0.031935142  -0.007920571   0.001537964   0.564916982
                         0.079532096   0.000282994   0.025681805  -0.000820609  -0.180525583   0.044774013  -0.000556052  -0.204243328

   27    7.1  1.5  0.5   0.188668701   0.000671340   0.032416626  -0.001035797  -0.284838728   0.070645804   0.000138849   0.050999546
                         0.151242296   0.000538254   0.217971058  -0.006964963  -0.050388240   0.012497289   0.000384024   0.141059733

   28    8.1  1.5  0.5  -0.000016558  -0.000000059  -0.000099572   0.000003182   0.000016614  -0.000004121   0.000000592   0.000217490
                         0.000020656   0.000000074   0.000014808  -0.000000473  -0.000093919   0.000023294  -0.000000214  -0.000078633

   29    9.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000820   0.000230520   0.000000980   0.000030669   0.000012467   0.000050266  -0.000057207   0.000000156

   30   10.1  1.5  0.5  -0.000000323   0.000091220   0.000005655   0.000177130   0.000018531   0.000074707   0.000127040  -0.000000351
                        -0.000000003  -0.000000000   0.000000000  -0.000000000  -0.000000003   0.000000001   0.000000000   0.000000001

   31   11.1  1.5  0.5   0.000059875   0.000000214   0.000009905  -0.000000315  -0.000140935   0.000034955   0.000000063   0.000022938
                         0.000047997   0.000000171   0.000066601  -0.000002128  -0.000024932   0.000006183   0.000000173   0.000063445

   32   12.1  1.5  0.5   0.000134354   0.000000478   0.000025660  -0.000000820   0.000127652  -0.000031660  -0.000000022  -0.000008201
                         0.000107702   0.000000383   0.000172542  -0.000005513   0.000022582  -0.000005601  -0.000000062  -0.000022684

   33   13.1  1.5  0.5   0.000000357  -0.000100396   0.000003400   0.000106416   0.000038400   0.000154825  -0.000189547   0.000000516
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   34   14.1  1.5  0.5   0.000049721   0.000000173  -0.000112507   0.000003587   0.000012705  -0.000003155  -0.000000322  -0.000116165
                        -0.000062025  -0.000000221   0.000016732  -0.000000535  -0.000071826   0.000017814   0.000000114   0.000041999

   35   15.1  1.5  0.5  -0.000000003   0.000000773  -0.000000009  -0.000000286  -0.000000004  -0.000000016  -0.000000466   0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   36   16.1  1.5  0.5   0.000000402   0.000000001  -0.000001723   0.000000055  -0.000000069   0.000000017  -0.000000004  -0.000001295
                        -0.000000501  -0.000000002   0.000000256  -0.000000008   0.000000389  -0.000000096   0.000000001   0.000000468

   37   17.1  1.5  0.5  -0.000001294  -0.000000005  -0.000000076   0.000000002   0.000000465  -0.000000115  -0.000000001  -0.000000513
                        -0.000001037  -0.000000004  -0.000000508   0.000000016   0.000000082  -0.000000020  -0.000000004  -0.000001419

   38   18.1  1.5  0.5   0.000000050   0.000000000  -0.000000000   0.000000000  -0.000000069   0.000000017   0.000000000   0.000000030
                         0.000000040   0.000000000  -0.000000001   0.000000000  -0.000000012   0.000000003   0.000000000   0.000000083

   39   19.1  1.5  0.5   0.000000020   0.000000000  -0.000000123   0.000000004  -0.000000001   0.000000000  -0.000000000  -0.000000052
                        -0.000000025  -0.000000000   0.000000018  -0.000000001   0.000000005  -0.000000001   0.000000000   0.000000019

   40   20.1  1.5  0.5  -0.000000000   0.000000038  -0.000000001  -0.000000033  -0.000000002  -0.000000007  -0.000000026   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   41    1.1  1.5 -0.5   0.001345427  -0.378080967   0.012333631   0.385985564   0.088425003   0.356523210   0.081665296  -0.000222319
                        -0.000000134  -0.000000000  -0.000000043   0.000000001  -0.000000006   0.000000002   0.000000000  -0.000000008

   42    2.1  1.5 -0.5   0.248995421   0.000886021  -0.025098286   0.000801985   0.090698668  -0.022495108   0.000481051   0.176694068
                         0.199601942   0.000710310  -0.168762169   0.005392488   0.016044675  -0.003979422   0.001330515   0.488718434

   43    3.1  1.5 -0.5  -0.343592837  -0.001222747   0.072642616  -0.002321113   0.020827165  -0.005165544   0.000349366   0.128326015
                         0.428618290   0.001525178  -0.010803398   0.000345228  -0.117733478   0.029200296  -0.000126311  -0.046395724

   44    4.1  1.5 -0.5   0.038912401   0.000138438   0.067656999  -0.002161849   0.391672341  -0.097142706   0.000150634   0.055330053
                         0.031193307   0.000111080   0.454929141  -0.014536585   0.069287199  -0.017184641   0.000416655   0.153037492

   45    5.1  1.5 -0.5  -0.000000005  -0.000000000  -0.000000000   0.000000000  -0.000000007   0.000000002  -0.000000000   0.000000005
                         0.000609276  -0.171220317  -0.010086953  -0.315676994   0.054262967   0.218784349   0.167201855  -0.000455201

   46    6.1  1.5 -0.5   0.000000038   0.000000000   0.000000014  -0.000000000  -0.000000006   0.000000001  -0.000000001   0.000000007
                         0.000362727  -0.101931761   0.005578598   0.174585033  -0.045469195  -0.183328502   0.600705030  -0.001635398

   47    7.1  1.5 -0.5  -0.000860473   0.241805936  -0.007041561  -0.220368373   0.071742678   0.289261258   0.149996007  -0.000408355
                         0.000000068   0.000000000   0.000000031  -0.000000001   0.000000019  -0.000000005   0.000000000  -0.000000006

   48    8.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000094  -0.000026473   0.000003217   0.000100667  -0.000023656  -0.000095378   0.000231268  -0.000000630

   49    9.1  1.5 -0.5  -0.000144183  -0.000000513   0.000030336  -0.000000969   0.000008756  -0.000002172   0.000000146   0.000053799
                         0.000179863   0.000000640  -0.000004512   0.000000144  -0.000049498   0.000012276  -0.000000053  -0.000019451

   50   10.1  1.5 -0.5  -0.000071174  -0.000000254   0.000026056  -0.000000832   0.000073565  -0.000018247  -0.000000118  -0.000043194
                        -0.000057055  -0.000000200   0.000175203  -0.000005593   0.000013013  -0.000003231  -0.000000331  -0.000119471

   51   11.1  1.5 -0.5  -0.000000274   0.000076738  -0.000002151  -0.000067334   0.000035498   0.000143123   0.000067464  -0.000000184
                        -0.000000001   0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001

   52   12.1  1.5 -0.5  -0.000000613   0.000172194  -0.000005574  -0.000174440  -0.000032152  -0.000129634  -0.000024121   0.000000066
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   53   13.1  1.5 -0.5   0.000078334   0.000000279   0.000015654  -0.000000500   0.000152458  -0.000037813   0.000000175   0.000064447
                         0.000062795   0.000000223   0.000105258  -0.000003363   0.000026970  -0.000006689   0.000000485   0.000178254

   54   14.1  1.5 -0.5   0.000000003   0.000000000  -0.000000001   0.000000000  -0.000000003   0.000000001   0.000000000   0.000000002
                        -0.000000280   0.000079494   0.000003627   0.000113744  -0.000018091  -0.000072941  -0.000123524   0.000000341

   55   15.1  1.5 -0.5  -0.000000603  -0.000000002  -0.000000042   0.000000001  -0.000000016   0.000000004   0.000000000   0.000000158
                        -0.000000484  -0.000000002  -0.000000283   0.000000009  -0.000000003   0.000000001   0.000000001   0.000000438

   56   16.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000002   0.000000642   0.000000056   0.000001742   0.000000098   0.000000395  -0.000001377   0.000000004

   57   17.1  1.5 -0.5   0.000000006  -0.000001659   0.000000016   0.000000513  -0.000000117  -0.000000473  -0.000001509   0.000000004
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   58   18.1  1.5 -0.5  -0.000000000   0.000000064   0.000000000   0.000000001   0.000000017   0.000000070   0.000000089  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   59   19.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000032   0.000000004   0.000000124   0.000000001   0.000000005  -0.000000055   0.000000000

   60   20.1  1.5 -0.5  -0.000000030  -0.000000000  -0.000000005   0.000000000  -0.000000007   0.000000002   0.000000000   0.000000009
                        -0.000000024  -0.000000000  -0.000000033   0.000000001  -0.000000001   0.000000000   0.000000000   0.000000024

   61    1.1  1.5 -1.5  -0.208147830  -0.000740680   0.049118403  -0.001569499   0.282815083  -0.070143890   0.000091591   0.033641587
                        -0.166857330  -0.000593750   0.330274672  -0.010553394   0.050030251  -0.012408519   0.000253331   0.093049326

   62    2.1  1.5 -1.5  -0.000432235   0.121461984  -0.012193222  -0.381592747   0.084830412   0.342030069  -0.140381420   0.000382185
                         0.000000063   0.000000000   0.000000024  -0.000000001   0.000000013  -0.000000003  -0.000000000  -0.000000002

   63    3.1  1.5 -1.5  -0.000000053  -0.000000000  -0.000000015   0.000000001  -0.000000017   0.000000004  -0.000000001   0.000000010
                        -0.000168888   0.047456513  -0.012016792  -0.376071485   0.085576872   0.345039748   0.295966722  -0.000805755

   64    4.1  1.5 -1.5  -0.000831316   0.233612229  -0.000664990  -0.020810236  -0.093309935  -0.376218896  -0.290522909   0.000790930
                         0.000000054   0.000000000   0.000000019  -0.000000001  -0.000000008   0.000000002  -0.000000001   0.000000009

   65    5.1  1.5 -1.5   0.122714493   0.000436701  -0.055206216   0.001764005  -0.014927424   0.003702299  -0.000220734  -0.081077443
                        -0.153081411  -0.000544720   0.008210260  -0.000262355   0.084382956  -0.020928684   0.000079804   0.029313204

   66    6.1  1.5 -1.5   0.258951830   0.000921521  -0.142367997   0.004549098  -0.001391745   0.000345167   0.000615450   0.226064851
                        -0.323032027  -0.001149469   0.021172948  -0.000676561   0.007867351  -0.001951265  -0.000222518  -0.081732784

   67    7.1  1.5 -1.5  -0.008675224  -0.000030868   0.007291147  -0.000232977   0.035977542  -0.008923166  -0.000010869  -0.003990665
                        -0.006954311  -0.000024743   0.049026047  -0.001566549   0.006364461  -0.001578516  -0.000030047  -0.011037786

   68    8.1  1.5 -1.5   0.000095303   0.000000339  -0.000053458   0.000001708   0.000000789  -0.000000196   0.000000273   0.000100122
                        -0.000118887  -0.000000423   0.000007950  -0.000000254  -0.000004458   0.000001106  -0.000000099  -0.000036199

   69    9.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000071   0.000019889  -0.000005038  -0.000157678   0.000035872   0.000144633   0.000124169  -0.000000338

   70   10.1  1.5 -1.5  -0.000000081   0.000021800   0.000003813   0.000119279  -0.000052317  -0.000210938  -0.000030471   0.000000084
                         0.000000004   0.000000000  -0.000000001   0.000000000  -0.000000002   0.000000000  -0.000000000  -0.000000000

   71   11.1  1.5 -1.5  -0.000016613  -0.000000059   0.000006140  -0.000000195   0.000032894  -0.000008160   0.000000001   0.000000524
                        -0.000013318  -0.000000047   0.000041288  -0.000001319   0.000005819  -0.000001443   0.000000004   0.000001449

   72   12.1  1.5 -1.5   0.000085334   0.000000304  -0.000019908   0.000000636  -0.000114956   0.000028511  -0.000000039  -0.000014205
                         0.000068406   0.000000243  -0.000133860   0.000004277  -0.000020336   0.000005044  -0.000000107  -0.000039289

   73   13.1  1.5 -1.5  -0.000000387   0.000108727  -0.000003433  -0.000107427  -0.000008314  -0.000033520  -0.000131782   0.000000359
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   74   14.1  1.5 -1.5  -0.000073957  -0.000000264   0.000035447  -0.000001138   0.000006222  -0.000001533   0.000000035   0.000012523
                         0.000092258   0.000000328  -0.000005272   0.000000168  -0.000035157   0.000008720  -0.000000012  -0.000004528

   75   15.1  1.5 -1.5   0.000000001  -0.000000328   0.000000054   0.000001677  -0.000000306  -0.000001232  -0.000001417   0.000000004
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   76   16.1  1.5 -1.5   0.000000039   0.000000000  -0.000001770   0.000000057  -0.000000264   0.000000066  -0.000000001  -0.000000500
                        -0.000000048  -0.000000000   0.000000263  -0.000000008   0.000001495  -0.000000371   0.000000000   0.000000181

   77   17.1  1.5 -1.5   0.000000803   0.000000003  -0.000000066   0.000000002   0.000000490  -0.000000121   0.000000002   0.000000666
                         0.000000643   0.000000002  -0.000000444   0.000000014   0.000000087  -0.000000021   0.000000005   0.000001841

   78   18.1  1.5 -1.5  -0.000000054  -0.000000000   0.000000008  -0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000031
                        -0.000000043  -0.000000000   0.000000053  -0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000000086

   79   19.1  1.5 -1.5   0.000000014   0.000000000  -0.000000111   0.000000004  -0.000000015   0.000000004  -0.000000000  -0.000000016
                        -0.000000018  -0.000000000   0.000000017  -0.000000001   0.000000087  -0.000000022   0.000000000   0.000000006

   80   20.1  1.5 -1.5   0.000000000  -0.000000024   0.000000003   0.000000083  -0.000000012  -0.000000050  -0.000000067   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   81    1.1  0.5  0.5  -0.000000007   0.000002033   0.000000006   0.000000176   0.000000109   0.000000438  -0.000000619   0.000000002
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   82    2.1  0.5  0.5  -0.000000497  -0.000000002  -0.000000298   0.000000010  -0.000000011   0.000000003   0.000000001   0.000000321
                         0.000000620   0.000000002   0.000000044  -0.000000001   0.000000063  -0.000000016  -0.000000000  -0.000000116

   83    3.1  0.5  0.5  -0.000000435  -0.000000002  -0.000001017   0.000000033   0.000000176  -0.000000044  -0.000000001  -0.000000346
                         0.000000543   0.000000002   0.000000151  -0.000000005  -0.000000993   0.000000246   0.000000000   0.000000125

   84    4.1  0.5  0.5  -0.000000068  -0.000000000  -0.000000036   0.000000001   0.000000271  -0.000000067   0.000000000   0.000000155
                        -0.000000055  -0.000000000  -0.000000239   0.000000008   0.000000048  -0.000000012   0.000000001   0.000000429

   85    5.1  0.5  0.5   0.000000204   0.000000001   0.000000152  -0.000000005  -0.000000578   0.000000143   0.000000000   0.000000076
                         0.000000164   0.000000001   0.000001020  -0.000000033  -0.000000102   0.000000025   0.000000001   0.000000210

   86    6.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000345   0.000000017   0.000000522   0.000000222   0.000000896  -0.000001091   0.000000003

   87    7.1  0.5  0.5   0.000000002  -0.000000552  -0.000000007  -0.000000217   0.000000077   0.000000311   0.000000120  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   88    1.1  0.5 -0.5   0.000001586   0.000000006  -0.000000026   0.000000001  -0.000000432   0.000000107  -0.000000001  -0.000000210
                         0.000001272   0.000000005  -0.000000174   0.000000006  -0.000000076   0.000000019  -0.000000002  -0.000000582

   89    2.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000003   0.000000795  -0.000000010  -0.000000301  -0.000000016  -0.000000064  -0.000000341   0.000000001

   90    3.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000002   0.000000696  -0.000000033  -0.000001028   0.000000250   0.000001008   0.000000368  -0.000000001

   91    4.1  0.5 -0.5  -0.000000000   0.000000087  -0.000000008  -0.000000242   0.000000068   0.000000275  -0.000000456   0.000000001
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   92    5.1  0.5 -0.5   0.000000001  -0.000000262   0.000000033   0.000001032  -0.000000146  -0.000000587  -0.000000223   0.000000001
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   93    6.1  0.5 -0.5  -0.000000216  -0.000000001  -0.000000516   0.000000016  -0.000000156   0.000000039  -0.000000003  -0.000001026
                         0.000000269   0.000000001   0.000000077  -0.000000002   0.000000883  -0.000000219   0.000000001   0.000000371

   94    7.1  0.5 -0.5  -0.000000431  -0.000000002   0.000000032  -0.000000001  -0.000000307   0.000000076   0.000000000   0.000000041
                        -0.000000345  -0.000000001   0.000000215  -0.000000007  -0.000000054   0.000000013   0.000000000   0.000000113


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.000000000   0.034693821   0.567622549   0.003045307   0.266412996   0.003618865  -0.110186352  -0.005285371
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.026285560  -0.000000002   0.000315078  -0.058729085  -0.004932577   0.363126267  -0.003625944   0.075591548
                         0.024080641   0.000000001   0.001905709  -0.355210319  -0.003762550   0.276990785  -0.003668947   0.076488042

    3    3.1  1.5  1.5  -0.009735524   0.000000002  -0.001371021   0.255548659  -0.001440267   0.106029129  -0.014761716   0.307743584
                        -0.010626947   0.000000003   0.000226681  -0.042251417   0.001888143  -0.139000880   0.014588700  -0.304136601

    4    4.1  1.5  1.5  -0.005496323  -0.000000010  -0.000017520   0.003266061  -0.004387222   0.322977631   0.008163305  -0.170183811
                         0.005035273   0.000000004  -0.000105980   0.019754051  -0.003346546   0.246365615   0.008260114  -0.172202150

    5    5.1  1.5  1.5   0.000000020  -0.000000000  -0.000000001  -0.000000002   0.000000001   0.000000001  -0.000000001  -0.000000000
                         0.000000005  -0.668637987  -0.060482046  -0.000324486   0.181103628   0.002460051   0.000380675   0.000018260

    6    6.1  1.5  1.5  -0.000000004   0.000000000   0.000000002   0.000000001  -0.000000004  -0.000000001   0.000000005  -0.000000003
                        -0.000000001   0.139554247   0.090883039   0.000487590  -0.115467925  -0.001568474   0.347796434   0.016682955

    7    7.1  1.5  1.5  -0.000000006   0.698939405  -0.207336745  -0.001112365   0.133730064   0.001816547  -0.009264771  -0.000444411
                         0.000000021  -0.000000000   0.000000001   0.000000004  -0.000000002   0.000000002   0.000000001  -0.000000005

    8    8.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000118996  -0.000022890  -0.000000123   0.000033582   0.000000456  -0.000074538  -0.000003575

    9    9.1  1.5  1.5  -0.000004077   0.000000000   0.000000301  -0.000056185   0.000000323  -0.000023817   0.000003265  -0.000068065
                        -0.000004451  -0.000000000  -0.000000050   0.000009289  -0.000000424   0.000031224  -0.000003227   0.000067267

   10   10.1  1.5  1.5   0.000007145  -0.000000002   0.000000056  -0.000010528  -0.000000249   0.000018368  -0.000001756   0.000036611
                        -0.000006546   0.000000011   0.000000341  -0.000063678  -0.000000189   0.000014011  -0.000001776   0.000037045

   11   11.1  1.5  1.5   0.000000000   0.000292662   0.000025870   0.000000139  -0.000037855  -0.000000514   0.000005719   0.000000275
                        -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000

   12   12.1  1.5  1.5   0.000000000   0.000030771   0.000130654   0.000000701   0.000053338   0.000000725  -0.000023913  -0.000001147
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   13   13.1  1.5  1.5  -0.000008655  -0.000000000  -0.000000041   0.000007604   0.000001431  -0.000105324  -0.000000910   0.000018963
                         0.000007929   0.000000000  -0.000000247   0.000045990   0.000001091  -0.000080340  -0.000000920   0.000019188

   14   14.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000001
                         0.000000000   0.000261280  -0.000008724  -0.000000044   0.000033475   0.000000454   0.000016573   0.000000793

   15   15.1  1.5  1.5  -0.000000072   0.000000000   0.000000001  -0.000000185   0.000000002  -0.000000118   0.000000007  -0.000000147
                         0.000000066   0.000000000   0.000000006  -0.000001121   0.000000001  -0.000000090   0.000000007  -0.000000148

   16   16.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000642  -0.000001051  -0.000000006  -0.000001719  -0.000000023   0.000000141   0.000000007

   17   17.1  1.5  1.5  -0.000000000   0.000001080   0.000001251   0.000000007  -0.000001273  -0.000000017   0.000000986   0.000000047
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   18   18.1  1.5  1.5  -0.000000000  -0.000000033  -0.000000060  -0.000000000   0.000000075   0.000000001  -0.000000061  -0.000000003
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   19   19.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000022  -0.000000089  -0.000000000  -0.000000102  -0.000000001   0.000000014   0.000000001

   20   20.1  1.5  1.5  -0.000000004  -0.000000000   0.000000000  -0.000000010   0.000000000  -0.000000014   0.000000001  -0.000000030
                         0.000000003   0.000000000   0.000000000  -0.000000060   0.000000000  -0.000000010   0.000000001  -0.000000030

   21    1.1  1.5  0.5   0.021406941   0.000000001  -0.000295996   0.055172070  -0.001398944   0.102986915  -0.005562833   0.115970651
                        -0.019611257   0.000000002  -0.001790291   0.333696464  -0.001067113   0.078557867  -0.005628805   0.117346035

   22    2.1  1.5  0.5  -0.000000001  -0.014228714  -0.378072512  -0.002028368   0.208299826   0.002829472  -0.019684706  -0.000944225
                         0.000000000   0.000000000   0.000000002   0.000000008  -0.000000003   0.000000000   0.000000002  -0.000000001

   23    3.1  1.5  0.5  -0.000000003   0.000000000  -0.000000003  -0.000000003   0.000000005   0.000000001  -0.000000004   0.000000006
                        -0.000000003   0.129370392  -0.007103383  -0.000038104   0.496666006   0.006746542  -0.196724935  -0.009436414

   24    4.1  1.5  0.5  -0.000000001   0.120117268   0.011215246   0.000060169  -0.244997688  -0.003327971  -0.097552210  -0.004679352
                         0.000000006  -0.000000000  -0.000000001  -0.000000004   0.000000001  -0.000000003   0.000000001   0.000000001

   25    5.1  1.5  0.5   0.033881085  -0.000000002   0.001460501  -0.272226838  -0.000217583   0.016017484  -0.022681651   0.472853900
                         0.036983372  -0.000000001  -0.000241469   0.045008924   0.000285233  -0.020998420   0.022415814  -0.467311704

   26    6.1  1.5  0.5   0.051092125   0.000000000   0.001429016  -0.266357590   0.000487485  -0.035887354   0.005887695  -0.122743185
                         0.055770323   0.000000004  -0.000236266   0.044038523  -0.000639077   0.047047205  -0.005818688   0.121304543

   27    7.1  1.5  0.5   0.030819701   0.000000006  -0.000121330   0.022614774  -0.003232805   0.237991920  -0.008228113   0.171534843
                        -0.028234444  -0.000000002  -0.000733836   0.136780622  -0.002465968   0.181538971  -0.008325695   0.173569204

   28    8.1  1.5  0.5   0.000017869   0.000000000  -0.000000235   0.000043866  -0.000000114   0.000008382  -0.000002345   0.000048887
                         0.000019505  -0.000000000   0.000000039  -0.000007253   0.000000149  -0.000010988   0.000002317  -0.000048314

   29    9.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000054456   0.000001328   0.000000007  -0.000109673  -0.000001490   0.000043816   0.000002102

   30   10.1  1.5  0.5  -0.000000001   0.000036294  -0.000066642  -0.000000361   0.000069481   0.000000944   0.000009999   0.000000484
                        -0.000000001  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000004

   31   11.1  1.5  0.5   0.000014182   0.000000000   0.000000036  -0.000006796   0.000000743  -0.000054624   0.000001973  -0.000041128
                        -0.000012992  -0.000000000   0.000000221  -0.000041107   0.000000566  -0.000041667   0.000001996  -0.000041616

   32   12.1  1.5  0.5  -0.000006949   0.000000000  -0.000000061   0.000011275  -0.000000196   0.000014403  -0.000000961   0.000020042
                         0.000006366   0.000000000  -0.000000366   0.000068196  -0.000000149   0.000010987  -0.000000973   0.000020280

   33   13.1  1.5  0.5  -0.000000000   0.000035582   0.000050301   0.000000270   0.000012864   0.000000175   0.000019468   0.000000934
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   34   14.1  1.5  0.5  -0.000018546  -0.000000002   0.000000384  -0.000071105  -0.000000020   0.000001229  -0.000004592   0.000095723
                        -0.000020244  -0.000000000  -0.000000063   0.000011756   0.000000022  -0.000001611   0.000004538  -0.000094601

   35   15.1  1.5  0.5  -0.000000000   0.000000158   0.000001155   0.000000006   0.000000538   0.000000007  -0.000000956  -0.000000046
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   36   16.1  1.5  0.5  -0.000000337   0.000000000  -0.000000003   0.000000493   0.000000008  -0.000000559  -0.000000024   0.000000493
                        -0.000000368   0.000000000   0.000000000  -0.000000081  -0.000000010   0.000000732   0.000000023  -0.000000487

   37   17.1  1.5  0.5  -0.000000108  -0.000000000   0.000000001  -0.000000274  -0.000000016   0.000001197  -0.000000035   0.000000731
                         0.000000099  -0.000000000   0.000000009  -0.000001656  -0.000000012   0.000000913  -0.000000035   0.000000739

   38   18.1  1.5  0.5   0.000000009  -0.000000000  -0.000000000   0.000000011   0.000000001  -0.000000047   0.000000002  -0.000000047
                        -0.000000009  -0.000000000  -0.000000000   0.000000065   0.000000000  -0.000000036   0.000000002  -0.000000047

   39   19.1  1.5  0.5  -0.000000018  -0.000000000  -0.000000000   0.000000030   0.000000000  -0.000000028  -0.000000001   0.000000027
                        -0.000000019   0.000000000   0.000000000  -0.000000005  -0.000000000   0.000000037   0.000000001  -0.000000027

   40   20.1  1.5  0.5  -0.000000000  -0.000000002   0.000000043   0.000000000   0.000000036   0.000000000  -0.000000036  -0.000000002
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   41    1.1  1.5 -0.5   0.000000000   0.029032026   0.338226680   0.001814595   0.129528542   0.001759481   0.164982677   0.007913821
                         0.000000002   0.000000000  -0.000000001  -0.000000004   0.000000001  -0.000000005  -0.000000003   0.000000001

   42    2.1  1.5 -0.5   0.010491629  -0.000000001  -0.000330863   0.061671784   0.002249687  -0.165617213  -0.000663721   0.013836895
                        -0.009611557   0.000000000  -0.002001201   0.373008599   0.001716049  -0.126331930  -0.000671592   0.014001000

   43    3.1  1.5 -0.5   0.087390249  -0.000000000  -0.000037595   0.007008240   0.004091717  -0.301223364  -0.006711766   0.139923121
                         0.095392047   0.000000004   0.000006212  -0.001158712  -0.005364111   0.394894425   0.006633107  -0.138283117

   44    4.1  1.5 -0.5  -0.088569199  -0.000000005   0.000009811  -0.001829447  -0.002646040   0.194795336  -0.003289239   0.068572008
                         0.081139724  -0.000000004   0.000059364  -0.011065029  -0.002018382   0.148588843  -0.003328249   0.069385253

   45    5.1  1.5 -0.5   0.000000001  -0.000000000   0.000000001  -0.000000004   0.000000001   0.000000007   0.000000009  -0.000000006
                        -0.000000002  -0.050156731  -0.275922552  -0.001480328   0.026410101   0.000358749   0.664809024   0.031889278

   46    6.1  1.5 -0.5   0.000000002  -0.000000000  -0.000000001  -0.000000001   0.000000002  -0.000000000  -0.000000003   0.000000000
                         0.000000003  -0.075635535  -0.269973623  -0.001448416  -0.059172136  -0.000803779  -0.172570802  -0.008277807

   47    7.1  1.5 -0.5  -0.000000005   0.041797581   0.138637536   0.000743798   0.299326831   0.004065960   0.244029652   0.011705514
                         0.000000002  -0.000000000  -0.000000000   0.000000001  -0.000000004  -0.000000001  -0.000000004   0.000000001

   48    8.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000026453   0.000044462   0.000000239   0.000013820   0.000000188   0.000068732   0.000003297

   49    9.1  1.5 -0.5   0.000036785  -0.000000000   0.000000007  -0.000001310  -0.000000904   0.000066516   0.000001495  -0.000031165
                         0.000040153  -0.000000000  -0.000000001   0.000000217   0.000001184  -0.000087200  -0.000001477   0.000030799

   50   10.1  1.5 -0.5  -0.000026762  -0.000000000  -0.000000058   0.000010871   0.000000751  -0.000055244   0.000000338  -0.000007029
                         0.000024517   0.000000001  -0.000000356   0.000065749   0.000000572  -0.000042140   0.000000347  -0.000007112

   51   11.1  1.5 -0.5  -0.000000000   0.000019233  -0.000041665  -0.000000223  -0.000068701  -0.000000934  -0.000058510  -0.000002807
                         0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000

   52   12.1  1.5 -0.5   0.000000000  -0.000009424   0.000069122   0.000000371   0.000018115   0.000000246   0.000028512   0.000001368
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   53   13.1  1.5 -0.5  -0.000026236  -0.000000000   0.000000044  -0.000008205   0.000000139  -0.000010228   0.000000656  -0.000013685
                         0.000024036   0.000000000   0.000000266  -0.000049627   0.000000106  -0.000007802   0.000000664  -0.000013847

   54   14.1  1.5 -0.5   0.000000001   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000002  -0.000000000   0.000000000
                        -0.000000001   0.000027454  -0.000072070  -0.000000389   0.000002026   0.000000029   0.000134582   0.000006456

   55   15.1  1.5 -0.5  -0.000000116  -0.000000000   0.000000001  -0.000000188   0.000000006  -0.000000428  -0.000000032   0.000000672
                         0.000000106   0.000000000   0.000000006  -0.000001140   0.000000004  -0.000000326  -0.000000033   0.000000680

   56   16.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000000499   0.000000499   0.000000003  -0.000000921  -0.000000013   0.000000692   0.000000033

   57   17.1  1.5 -0.5  -0.000000000  -0.000000147  -0.000001678  -0.000000009   0.000001505   0.000000020   0.000001039   0.000000050
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   58   18.1  1.5 -0.5   0.000000000   0.000000013   0.000000066   0.000000000  -0.000000059  -0.000000001  -0.000000067  -0.000000003
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   59   19.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000026   0.000000031   0.000000000  -0.000000046  -0.000000001   0.000000038   0.000000002

   60   20.1  1.5 -0.5   0.000000002  -0.000000000   0.000000000  -0.000000007   0.000000000  -0.000000028  -0.000000001   0.000000025
                        -0.000000001  -0.000000000   0.000000000  -0.000000042   0.000000000  -0.000000022  -0.000000001   0.000000026

   61    1.1  1.5 -1.5   0.025581700  -0.000000000  -0.000496755   0.092591488  -0.002877325   0.211822445   0.003715226  -0.077452878
                        -0.023435823   0.000000000  -0.003004518   0.560019799  -0.002194808   0.161577029   0.003759287  -0.078371448

   62    2.1  1.5 -1.5  -0.000000002   0.035648393   0.360032605   0.001931580  -0.456710610  -0.006203797  -0.107538377  -0.005158356
                         0.000000000  -0.000000000  -0.000000003  -0.000000004   0.000000006   0.000000005  -0.000000000   0.000000001

   63    3.1  1.5 -1.5  -0.000000001   0.000000000  -0.000000001   0.000000002   0.000000000  -0.000000001  -0.000000007   0.000000001
                        -0.000000003  -0.014412232  -0.259017952  -0.001389634  -0.174823971  -0.002374754  -0.432672145  -0.020754239

   64    4.1  1.5 -1.5  -0.000000010   0.007454096  -0.020022230  -0.000107418  -0.406214926  -0.005517888   0.242107641   0.011613313
                         0.000000004   0.000000000  -0.000000003   0.000000002   0.000000002  -0.000000002  -0.000000005   0.000000004

   65    5.1  1.5 -1.5   0.451667800  -0.000000012   0.000320140  -0.059671948  -0.001491999   0.109837684  -0.000012988   0.000270760
                         0.493024296   0.000000017  -0.000052929   0.009865926   0.001955962  -0.143993775   0.000012836  -0.000267587

   66    6.1  1.5 -1.5  -0.094269487   0.000000002  -0.000481059   0.089665749   0.000951266  -0.070030237  -0.011865962   0.247374651
                        -0.102901175  -0.000000003   0.000079535  -0.014824983  -0.001247078   0.091807449   0.011726889  -0.244475237

   67    7.1  1.5 -1.5   0.515367231   0.000000018   0.000181446  -0.033821096  -0.001444320   0.106327503   0.000312391  -0.006512449
                        -0.472136536   0.000000011   0.001097467  -0.204559671  -0.001101717   0.081106054   0.000316089  -0.006589687

   68    8.1  1.5 -1.5  -0.000080382   0.000000000   0.000000121  -0.000022583  -0.000000277   0.000020367   0.000002543  -0.000053016
                        -0.000087742  -0.000000000  -0.000000020   0.000003734   0.000000363  -0.000026701  -0.000002513   0.000052395

   69    9.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000006036   0.000056947   0.000000306   0.000039271   0.000000533   0.000095695   0.000004590

   70   10.1  1.5 -1.5  -0.000000009  -0.000009690   0.000064542   0.000000346  -0.000023101  -0.000000313  -0.000052084  -0.000002498
                        -0.000000007   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000001

   71   11.1  1.5 -1.5   0.000215796  -0.000000000  -0.000000022   0.000004220   0.000000409  -0.000030098  -0.000000193   0.000004020
                        -0.000197695   0.000000000  -0.000000137   0.000025523   0.000000312  -0.000022959  -0.000000195   0.000004068

   72   12.1  1.5 -1.5   0.000022689  -0.000000000  -0.000000114   0.000021313  -0.000000576   0.000042409   0.000000806  -0.000016809
                        -0.000020786   0.000000000  -0.000000692   0.000128904  -0.000000439   0.000032349   0.000000816  -0.000017009

   73   13.1  1.5 -1.5  -0.000000000   0.000011738  -0.000046614  -0.000000250   0.000132468   0.000001799  -0.000026977  -0.000001294
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   74   14.1  1.5 -1.5  -0.000176495   0.000000000   0.000000043  -0.000008607  -0.000000275   0.000020302  -0.000000563   0.000011788
                        -0.000192656  -0.000000000  -0.000000008   0.000001423   0.000000362  -0.000026615   0.000000559  -0.000011649

   75   15.1  1.5 -1.5  -0.000000000   0.000000098   0.000001136   0.000000006   0.000000148   0.000000002   0.000000209   0.000000010
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   76   16.1  1.5 -1.5   0.000000434   0.000000000   0.000000006  -0.000001037   0.000000014  -0.000001042  -0.000000005   0.000000100
                         0.000000474   0.000000000  -0.000000001   0.000000171  -0.000000019   0.000001366   0.000000005  -0.000000099

   77   17.1  1.5 -1.5   0.000000796   0.000000000  -0.000000001   0.000000204   0.000000014  -0.000001012  -0.000000033   0.000000693
                        -0.000000730  -0.000000000  -0.000000007   0.000001234   0.000000010  -0.000000772  -0.000000034   0.000000701

   78   18.1  1.5 -1.5  -0.000000025   0.000000000   0.000000000  -0.000000010  -0.000000001   0.000000060   0.000000002  -0.000000043
                         0.000000023   0.000000000   0.000000000  -0.000000059  -0.000000001   0.000000046   0.000000002  -0.000000043

   79   19.1  1.5 -1.5  -0.000000015  -0.000000000   0.000000000  -0.000000088   0.000000001  -0.000000062  -0.000000000   0.000000010
                        -0.000000016   0.000000000  -0.000000000   0.000000015  -0.000000001   0.000000081   0.000000000  -0.000000010

   80   20.1  1.5 -1.5  -0.000000000   0.000000005   0.000000061   0.000000000   0.000000017   0.000000000   0.000000042   0.000000002
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   81    1.1  0.5  0.5  -0.000000000  -0.000000056  -0.001090156  -0.000005849  -0.000344637  -0.000004681  -0.000264992  -0.000012711
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   82    2.1  0.5  0.5  -0.000000087   0.000000000  -0.000005291   0.000986138   0.000005542  -0.000407990  -0.000018900   0.000394024
                        -0.000000095  -0.000000000   0.000000875  -0.000163044  -0.000007265   0.000534862   0.000018679  -0.000389406

   83    3.1  0.5  0.5   0.000000041  -0.000000000  -0.000000003   0.000000592  -0.000005693   0.000419122  -0.000024167   0.000503815
                         0.000000045   0.000000000   0.000000001  -0.000000098   0.000007464  -0.000549456   0.000023884  -0.000497909

   84    4.1  0.5  0.5  -0.000000027   0.000000000  -0.000000341   0.000063513  -0.000009267   0.000682190   0.000015522  -0.000323604
                         0.000000024   0.000000000  -0.000002061   0.000384147  -0.000007069   0.000520371   0.000015707  -0.000327442

   85    5.1  0.5  0.5   0.000000053   0.000000000  -0.000000118   0.000021992   0.000006865  -0.000505419   0.000038978  -0.000812580
                        -0.000000048   0.000000000  -0.000000714   0.000133014   0.000005237  -0.000385531   0.000039440  -0.000822217

   86    6.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000373  -0.000820896  -0.000004404   0.000201753   0.000002741   0.000425449   0.000020408

   87    7.1  0.5  0.5   0.000000000   0.000000064  -0.000231360  -0.000001241  -0.000924612  -0.000012560   0.000685281   0.000032871
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   88    1.1  0.5 -0.5  -0.000000042   0.000000000   0.000000954  -0.000177828   0.000003722  -0.000274018   0.000008935  -0.000186270
                         0.000000038  -0.000000000   0.000005770  -0.001075555   0.000002839  -0.000209019   0.000009041  -0.000188479

   89    2.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000128  -0.000999525  -0.000005362   0.000672706   0.000009138  -0.000553979  -0.000026573

   90    3.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000061  -0.000000600  -0.000000003  -0.000691061  -0.000009387  -0.000708338  -0.000033977

   91    4.1  0.5 -0.5  -0.000000000   0.000000036  -0.000389362  -0.000002089  -0.000858002  -0.000011655   0.000460367   0.000022083
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   92    5.1  0.5 -0.5   0.000000000  -0.000000071  -0.000134819  -0.000000723   0.000635674   0.000008635   0.001155997   0.000055450
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   93    6.1  0.5 -0.5   0.000000252   0.000000000   0.000004345  -0.000809900  -0.000001662   0.000122361  -0.000014515   0.000302606
                         0.000000275  -0.000000000  -0.000000718   0.000133906   0.000002179  -0.000160412   0.000014345  -0.000299059

   94    7.1  0.5 -0.5   0.000000047   0.000000000   0.000000202  -0.000037740   0.000009986  -0.000735151  -0.000023106   0.000481702
                        -0.000000043   0.000000000   0.000001225  -0.000228261   0.000007617  -0.000560769  -0.000023380   0.000487415


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5   0.056029959   0.006965248   0.449954759   0.000517833   0.118324334  -0.013233894   0.154640121  -0.012100808
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.013350668   0.107395669  -0.000346566   0.301140513  -0.020834203  -0.186277641   0.002660063   0.033992742
                        -0.010988925   0.088397330  -0.000107771   0.093649950   0.004868424   0.043528372   0.024014693   0.306891804

    3    3.1  1.5  1.5  -0.000607460   0.004886551   0.000157040  -0.136454697   0.000198411   0.001774031  -0.004209265  -0.053791608
                         0.000738015  -0.005936766  -0.000504977   0.438783337   0.000849097   0.007591847   0.000466242   0.005958210

    4    4.1  1.5  1.5   0.039035550  -0.314010348   0.000371201  -0.322538958  -0.024946958  -0.223049811   0.002308702   0.029502606
                         0.032130120  -0.258461779   0.000115436  -0.100304528   0.005829468   0.052121110   0.020842567   0.266354209

    5    5.1  1.5  1.5   0.000000004   0.000000004  -0.000000001  -0.000000001  -0.000000053   0.000000012   0.000000051   0.000000093
                        -0.120914391  -0.015031221   0.075798371   0.000087235  -0.253528106   0.028355800   0.299125354  -0.023406964

    6    6.1  1.5  1.5   0.000000012   0.000000021  -0.000000001  -0.000000003   0.000000005   0.000000010   0.000000001   0.000000007
                        -0.526814098  -0.065489791   0.411855662   0.000473986  -0.167939227   0.018783038  -0.218436902   0.017092993

    7    7.1  1.5  1.5  -0.082717164  -0.010282817  -0.072611983  -0.000083570  -0.270436770   0.030246936   0.291940001  -0.022844700
                        -0.000000002  -0.000000008   0.000000001  -0.000000004   0.000000054  -0.000000011  -0.000000052  -0.000000091

    8    8.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000107366   0.000013347  -0.000191100  -0.000000220   0.000053271  -0.000005958   0.000138339  -0.000010825

    9    9.1  1.5  1.5   0.000000139  -0.000001121  -0.000000078   0.000067812  -0.000000099  -0.000000886   0.000002045   0.000026129
                        -0.000000169   0.000001362   0.000000251  -0.000218057  -0.000000424  -0.000003791  -0.000000226  -0.000002894

   10   10.1  1.5  1.5  -0.000007712   0.000062037  -0.000000249   0.000216550  -0.000000344  -0.000003064   0.000000318   0.000004050
                        -0.000006350   0.000051062  -0.000000074   0.000067344   0.000000074   0.000000717   0.000002866   0.000036561

   11   11.1  1.5  1.5   0.000016146   0.000002008   0.000001611   0.000000004   0.000123706  -0.000013836  -0.000154292   0.000012073
                        -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000

   12   12.1  1.5  1.5   0.000015571   0.000001936   0.000226486   0.000000261   0.000078841  -0.000008818   0.000053589  -0.000004193
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.000004850   0.000039015  -0.000000035   0.000030468   0.000016123   0.000144159  -0.000001721  -0.000021992
                        -0.000003992   0.000032113  -0.000000011   0.000009475  -0.000003768  -0.000033686  -0.000015537  -0.000198548

   14   14.1  1.5  1.5   0.000000000  -0.000000003   0.000000000  -0.000000010  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000051272  -0.000006376   0.000081099   0.000000090  -0.000140648   0.000015731   0.000121796  -0.000009532

   15   15.1  1.5  1.5  -0.000000082   0.000000656  -0.000000001   0.000001083  -0.000000002  -0.000000014   0.000000001   0.000000016
                        -0.000000067   0.000000540  -0.000000000   0.000000337   0.000000000   0.000000003   0.000000012   0.000000148

   16   16.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000793   0.000000099  -0.000000199  -0.000000000   0.000000607  -0.000000068  -0.000000965   0.000000075

   17   17.1  1.5  1.5  -0.000000823  -0.000000102   0.000000099   0.000000000   0.000000591  -0.000000066  -0.000000976   0.000000076
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   18   18.1  1.5  1.5   0.000000054   0.000000007  -0.000000050  -0.000000000  -0.000000021   0.000000002   0.000000045  -0.000000004
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   19   19.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000035   0.000000004  -0.000000049  -0.000000000   0.000000012  -0.000000001  -0.000000030   0.000000002

   20   20.1  1.5  1.5  -0.000000003   0.000000027  -0.000000000   0.000000058   0.000000000   0.000000000   0.000000000   0.000000002
                        -0.000000003   0.000000022  -0.000000000   0.000000018  -0.000000000  -0.000000000   0.000000001   0.000000016

   21    1.1  1.5  0.5   0.006632957  -0.053356929  -0.000117100   0.101745882   0.036672456   0.327887266  -0.002109649  -0.026958558
                         0.005459579  -0.043918064  -0.000036418   0.031641363  -0.008569421  -0.076618990  -0.019045295  -0.243386270

   22    2.1  1.5  0.5  -0.123752491  -0.015384031   0.257185708   0.000295985  -0.341305556   0.038173144  -0.103337121   0.008086282
                        -0.000000003  -0.000000005   0.000000002   0.000000001   0.000000024  -0.000000016  -0.000000029  -0.000000059

   23    3.1  1.5  0.5   0.000000001  -0.000000000   0.000000001  -0.000000000  -0.000000013  -0.000000005   0.000000007   0.000000005
                         0.024355814   0.003027740   0.050822649   0.000058490   0.226377258  -0.025318973   0.397902275  -0.031136415

   24    4.1  1.5  0.5   0.328064238   0.040782611   0.320823373   0.000369221   0.293005290  -0.032771041   0.026854574  -0.002101418
                         0.000000009   0.000000008  -0.000000001   0.000000006  -0.000000029   0.000000008   0.000000029   0.000000050

   25    5.1  1.5  0.5  -0.001417279   0.011400942  -0.000013111   0.011396041   0.009866424   0.088215761  -0.026125462  -0.333865603
                         0.001721885  -0.013851229   0.000042173  -0.036645071   0.042222905   0.377514845   0.002893743   0.036980548

   26    6.1  1.5  0.5  -0.015720415   0.126458472   0.000018081  -0.015714659  -0.007270945  -0.065009299  -0.024337693  -0.311019604
                         0.019099056  -0.153636909  -0.000058153   0.050532011  -0.031115689  -0.278204201   0.002695860   0.034449946

   27    7.1  1.5  0.5  -0.055103861   0.443267385   0.000077037  -0.066934428   0.037729484   0.337339263   0.003189239   0.040756606
                        -0.045355944   0.364853193   0.000023953  -0.020815553  -0.008816421  -0.078827741   0.028793118   0.367956469

   28    8.1  1.5  0.5   0.000003349  -0.000026944  -0.000000010   0.000008815   0.000004579   0.000040943   0.000008927   0.000114087
                        -0.000004069   0.000032735   0.000000033  -0.000028344   0.000019597   0.000175214  -0.000000989  -0.000012637

   29    9.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000005110  -0.000000635  -0.000025077  -0.000000029  -0.000112635   0.000012598  -0.000197916   0.000015487

   30   10.1  1.5  0.5  -0.000066731  -0.000008294   0.000000251   0.000000000  -0.000223380   0.000024987  -0.000048535   0.000003790
                        -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000001   0.000000006   0.000000000   0.000000002

   31   11.1  1.5  0.5   0.000011770  -0.000094684  -0.000000029   0.000025431  -0.000021233  -0.000189824  -0.000001401  -0.000017905
                         0.000009688  -0.000077934  -0.000000009   0.000007908   0.000004961   0.000044357  -0.000012649  -0.000161650

   32   12.1  1.5  0.5   0.000003292  -0.000026482  -0.000000063   0.000054856   0.000015225   0.000136128  -0.000001279  -0.000016342
                         0.000002710  -0.000021797  -0.000000020   0.000017059  -0.000003558  -0.000031810  -0.000011545  -0.000147535

   33   13.1  1.5  0.5  -0.000039147  -0.000004866  -0.000203906  -0.000000235  -0.000007026   0.000000786   0.000021477  -0.000001681
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   34   14.1  1.5  0.5  -0.000001079   0.000008705  -0.000000005   0.000004016   0.000004003   0.000035707  -0.000015270  -0.000195160
                         0.000001315  -0.000010575   0.000000015  -0.000012914   0.000017091   0.000152813   0.000001692   0.000021617

   35   15.1  1.5  0.5   0.000001344   0.000000167  -0.000000160  -0.000000000   0.000000317  -0.000000035  -0.000001606   0.000000126
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   36   16.1  1.5  0.5  -0.000000170   0.000001367  -0.000000001   0.000000470   0.000000002   0.000000021  -0.000000095  -0.000001211
                         0.000000207  -0.000001661   0.000000002  -0.000001512   0.000000010   0.000000089   0.000000010   0.000000134

   37   17.1  1.5  0.5   0.000000018  -0.000000143  -0.000000001   0.000001206   0.000000018   0.000000164   0.000000013   0.000000167
                         0.000000015  -0.000000118  -0.000000000   0.000000375  -0.000000004  -0.000000038   0.000000118   0.000001511

   38   18.1  1.5  0.5  -0.000000001   0.000000008   0.000000000  -0.000000048  -0.000000005  -0.000000042  -0.000000001  -0.000000008
                        -0.000000001   0.000000007   0.000000000  -0.000000015   0.000000001   0.000000010  -0.000000006  -0.000000070

   39   19.1  1.5  0.5  -0.000000008   0.000000067  -0.000000000   0.000000026   0.000000001   0.000000007  -0.000000006  -0.000000076
                         0.000000010  -0.000000081   0.000000000  -0.000000083   0.000000003   0.000000029   0.000000001   0.000000008

   40   20.1  1.5  0.5   0.000000054   0.000000007   0.000000001   0.000000000   0.000000035  -0.000000004  -0.000000047   0.000000004
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   41    1.1  1.5 -0.5  -0.069106860  -0.008590875   0.106552336   0.000122632  -0.336720253   0.037660377   0.244874744  -0.019161782
                        -0.000000002  -0.000000004   0.000000001  -0.000000001   0.000000056  -0.000000014  -0.000000056  -0.000000102

   42    2.1  1.5 -0.5  -0.011877907   0.095548441   0.000282634  -0.245584354  -0.037171772  -0.332352278  -0.000890172  -0.011376561
                        -0.009776694   0.078645880   0.000087894  -0.076372859   0.008686096   0.077662384  -0.008037136  -0.102708979

   43    3.1  1.5 -0.5   0.001924157  -0.015478352   0.000017369  -0.015092096  -0.005761204  -0.051511048   0.030947151   0.395483612
                        -0.002337698   0.018804954  -0.000055852   0.048530097  -0.024654795  -0.220438823  -0.003427858  -0.043805628

   44    4.1  1.5 -0.5   0.031487976  -0.253296127   0.000352568  -0.306351396   0.031911378   0.285319048   0.000231299   0.002956487
                         0.025917730  -0.208487929   0.000109636  -0.095270453  -0.007456882  -0.066671890   0.002088649   0.026691334

   45    5.1  1.5 -0.5   0.000000001  -0.000000003   0.000000001  -0.000000004   0.000000009  -0.000000012  -0.000000015  -0.000000036
                         0.017939844   0.002230149   0.038376177   0.000044164   0.387684767  -0.043360351   0.335907431  -0.026285233

   46    6.1  1.5 -0.5  -0.000000005  -0.000000008  -0.000000001   0.000000004  -0.000000058   0.000000012   0.000000056   0.000000101
                         0.198987550   0.024736721  -0.052919133  -0.000060899  -0.285698769   0.031953916   0.312921704  -0.024486547

   47    7.1  1.5 -0.5   0.574111337   0.071369442  -0.070096397  -0.000080675  -0.346426891   0.038745880  -0.370206785   0.028969206
                         0.000000011   0.000000018   0.000000001  -0.000000004   0.000000002  -0.000000015  -0.000000008  -0.000000022

   48    8.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000042397  -0.000005271   0.000029683   0.000000034   0.000179934  -0.000020125  -0.000114784   0.000008982

   49    9.1  1.5 -0.5  -0.000000404   0.000003248  -0.000000009   0.000007447   0.000002867   0.000025630  -0.000015393  -0.000196713
                         0.000000490  -0.000003946   0.000000028  -0.000023946   0.000012267   0.000109680   0.000001705   0.000021789

   50   10.1  1.5 -0.5  -0.000006404   0.000051523   0.000000000  -0.000000240  -0.000024330  -0.000217520  -0.000000419  -0.000005343
                        -0.000005271   0.000042408   0.000000001  -0.000000075   0.000005692   0.000050828  -0.000003766  -0.000048240

   51   11.1  1.5 -0.5  -0.000122632  -0.000015244   0.000026632   0.000000031   0.000194938  -0.000021805   0.000162639  -0.000012727
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   52   12.1  1.5 -0.5  -0.000034299  -0.000004264   0.000057448   0.000000066  -0.000139795   0.000015635   0.000148437  -0.000011616
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   53   13.1  1.5 -0.5  -0.000003757   0.000030225  -0.000000224   0.000194708  -0.000000766  -0.000006842   0.000000185   0.000002364
                        -0.000003093   0.000024878  -0.000000070   0.000060551   0.000000179   0.000001599   0.000001670   0.000021346

   54   14.1  1.5 -0.5   0.000000000  -0.000000002  -0.000000000  -0.000000000   0.000000001   0.000000009   0.000000000   0.000000000
                         0.000013697   0.000001701   0.000013525   0.000000016   0.000156929  -0.000017554   0.000196354  -0.000015363

   55   15.1  1.5 -0.5   0.000000129  -0.000001037  -0.000000000   0.000000153   0.000000035   0.000000308  -0.000000014  -0.000000177
                         0.000000106  -0.000000854  -0.000000000   0.000000047  -0.000000008  -0.000000072  -0.000000125  -0.000001596

   56   16.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000002152   0.000000267   0.000001584   0.000000002   0.000000091  -0.000000010   0.000001219  -0.000000095

   57   17.1  1.5 -0.5  -0.000000185  -0.000000023   0.000001262   0.000000001  -0.000000168   0.000000019  -0.000001520   0.000000119
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   58   18.1  1.5 -0.5   0.000000011   0.000000001  -0.000000050  -0.000000000   0.000000043  -0.000000005   0.000000071  -0.000000006
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   59   19.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000105   0.000000013   0.000000087   0.000000000   0.000000030  -0.000000003   0.000000076  -0.000000006

   60   20.1  1.5 -0.5   0.000000005  -0.000000042   0.000000000  -0.000000001   0.000000004   0.000000034  -0.000000000  -0.000000005
                         0.000000004  -0.000000035  -0.000000000  -0.000000000  -0.000000001  -0.000000008  -0.000000004  -0.000000047

   61    1.1  1.5 -1.5  -0.005377820   0.043260342  -0.000494474   0.429657811  -0.012886737  -0.115220395  -0.001332195  -0.017024554
                        -0.004426481   0.035607570  -0.000153774   0.133616803   0.003011308   0.026924122  -0.012027253  -0.153700135

   62    2.1  1.5 -1.5  -0.139096792  -0.017291525  -0.315366329  -0.000362936  -0.191295788   0.021395456   0.308768660  -0.024161569
                        -0.000000001  -0.000000003   0.000000000  -0.000000005   0.000000049  -0.000000007  -0.000000045  -0.000000082

   63    3.1  1.5 -1.5  -0.000000001  -0.000000000  -0.000000001   0.000000000   0.000000006   0.000000002  -0.000000003  -0.000000004
                        -0.007689185  -0.000955863   0.459511372   0.000528832  -0.007796366   0.000871970  -0.054120581   0.004235008

   64    4.1  1.5 -1.5   0.406700123   0.050558074   0.337775632   0.000388736  -0.229058570   0.025619005   0.267983149  -0.020970043
                         0.000000010   0.000000020   0.000000001   0.000000002   0.000000046  -0.000000011  -0.000000046  -0.000000080

   65    5.1  1.5 -1.5   0.009552481  -0.076842240  -0.000025904   0.022508787  -0.006452212  -0.057689028  -0.023264674  -0.297307115
                        -0.011605504   0.093357164   0.000083300  -0.072379193  -0.027611960  -0.246877453   0.002576999   0.032931091

   66    6.1  1.5 -1.5   0.041619367  -0.334795349  -0.000140750   0.122303043  -0.004273978  -0.038213753   0.016989094   0.217109125
                        -0.050564227   0.406749515   0.000452606  -0.393277322  -0.018290315  -0.163533767  -0.001881785  -0.024048034

   67    7.1  1.5 -1.5   0.007939297  -0.063865349   0.000079801  -0.069336539   0.029453488   0.263342561  -0.002515097  -0.032140044
                         0.006534821  -0.052567541   0.000024813  -0.021562571  -0.006882531  -0.061536509  -0.022705827  -0.290165439

   68    8.1  1.5 -1.5  -0.000008482   0.000068232   0.000000065  -0.000056748   0.000001356   0.000012122  -0.000010759  -0.000137498
                         0.000010305  -0.000082896  -0.000000210   0.000182480   0.000005802   0.000051874   0.000001192   0.000015230

   69    9.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000001764   0.000000219  -0.000228357  -0.000000263   0.000003894  -0.000000435   0.000026289  -0.000002057

   70   10.1  1.5 -1.5  -0.000080349  -0.000009990  -0.000226780  -0.000000260  -0.000003146   0.000000351   0.000036785  -0.000002884
                        -0.000000000   0.000000002   0.000000000  -0.000000003  -0.000000001  -0.000000006  -0.000000000  -0.000000001

   71   11.1  1.5 -1.5  -0.000001550   0.000012466  -0.000000004   0.000001539  -0.000013473  -0.000120461   0.000001330   0.000016986
                        -0.000001276   0.000010261  -0.000000000   0.000000479   0.000003148   0.000028149   0.000012000   0.000153354

   72   12.1  1.5 -1.5  -0.000001495   0.000012023  -0.000000249   0.000216269  -0.000008587  -0.000076773  -0.000000462  -0.000005900
                        -0.000001230   0.000009896  -0.000000078   0.000067256   0.000002006   0.000017940  -0.000004168  -0.000053264

   73   13.1  1.5 -1.5  -0.000050531  -0.000006282  -0.000031907  -0.000000037   0.000148042  -0.000016558  -0.000199762   0.000015632
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   74   14.1  1.5 -1.5   0.000004054  -0.000032583  -0.000000018   0.000024083  -0.000003579  -0.000032004  -0.000009474  -0.000121056
                        -0.000004921   0.000039587   0.000000089  -0.000077440  -0.000015318  -0.000136958   0.000001049   0.000013409

   75   15.1  1.5 -1.5  -0.000000849  -0.000000106  -0.000001134  -0.000000001  -0.000000014   0.000000002   0.000000149  -0.000000012
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   76   16.1  1.5 -1.5  -0.000000063   0.000000504   0.000000000  -0.000000059   0.000000015   0.000000138   0.000000075   0.000000959
                         0.000000076  -0.000000612  -0.000000000   0.000000190   0.000000066   0.000000591  -0.000000008  -0.000000106

   77   17.1  1.5 -1.5   0.000000079  -0.000000635  -0.000000000   0.000000094  -0.000000064  -0.000000575   0.000000008   0.000000108
                         0.000000065  -0.000000523  -0.000000000   0.000000029   0.000000015   0.000000134   0.000000076   0.000000971

   78   18.1  1.5 -1.5  -0.000000005   0.000000041   0.000000000  -0.000000047   0.000000002   0.000000020  -0.000000000  -0.000000005
                        -0.000000004   0.000000034   0.000000000  -0.000000015  -0.000000001  -0.000000005  -0.000000004  -0.000000045

   79   19.1  1.5 -1.5  -0.000000003   0.000000022   0.000000000  -0.000000015   0.000000000   0.000000003   0.000000002   0.000000030
                         0.000000003  -0.000000027  -0.000000000   0.000000047   0.000000001   0.000000012  -0.000000000  -0.000000003

   80   20.1  1.5 -1.5  -0.000000035  -0.000000004  -0.000000061  -0.000000000   0.000000000  -0.000000000   0.000000016  -0.000000001
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   81    1.1  0.5  0.5   0.000616657   0.000076658  -0.000930756  -0.000001071   0.000045309  -0.000005068  -0.000027475   0.000002150
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   82    2.1  0.5  0.5  -0.000006177   0.000049688   0.000000242  -0.000210315  -0.000011536  -0.000103142  -0.000030499  -0.000389762
                         0.000007504  -0.000060367  -0.000000778   0.000676288  -0.000049367  -0.000441393   0.000003378   0.000043172

   83    3.1  0.5  0.5  -0.000069276   0.000557268  -0.000000025   0.000021579  -0.000016979  -0.000151805   0.000049963   0.000638498
                         0.000084164  -0.000677036   0.000000080  -0.000069390  -0.000072659  -0.000649641  -0.000005534  -0.000070723

   84    4.1  0.5  0.5   0.000077404  -0.000622654   0.000000839  -0.000729140   0.000000905   0.000008097   0.000004622   0.000059061
                         0.000063711  -0.000512506   0.000000261  -0.000226751  -0.000000212  -0.000001892   0.000041724   0.000533210

   85    5.1  0.5  0.5  -0.000004806   0.000038664  -0.000000286   0.000248892   0.000088806   0.000794014   0.000003057   0.000039072
                        -0.000003956   0.000031824  -0.000000089   0.000077401  -0.000020752  -0.000185541   0.000027603   0.000352745

   86    6.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000923608  -0.000114816   0.000040830   0.000000047  -0.000804671   0.000089998   0.000458520  -0.000035880

   87    7.1  0.5  0.5  -0.000614852  -0.000076434   0.000040518   0.000000047   0.000192031  -0.000021478  -0.000907316   0.000070999
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   88    1.1  0.5 -0.5  -0.000059187   0.000476116   0.000001023  -0.000888771  -0.000004935  -0.000044120   0.000000237   0.000003025
                        -0.000048717   0.000391891   0.000000318  -0.000276394   0.000001153   0.000010310   0.000002137   0.000027308

   89    2.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000078186  -0.000009720   0.000708236   0.000000815   0.000453284  -0.000050697  -0.000392146   0.000030686

   90    3.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000876884  -0.000109008  -0.000072668  -0.000000084   0.000667142  -0.000074616   0.000642403  -0.000050269

   91    4.1  0.5 -0.5   0.000806449   0.000100252   0.000763584   0.000000879   0.000008315  -0.000000930   0.000536471  -0.000041980
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   92    5.1  0.5 -0.5  -0.000050076  -0.000006225  -0.000260649  -0.000000300   0.000815404  -0.000091198   0.000354902  -0.000027772
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   93    6.1  0.5 -0.5   0.000072967  -0.000586962  -0.000000014   0.000012125  -0.000020479  -0.000183099  -0.000035662  -0.000455733
                        -0.000088649   0.000713112   0.000000045  -0.000038988  -0.000087637  -0.000783563   0.000003950   0.000050479

   94    7.1  0.5 -0.5   0.000059014  -0.000474723  -0.000000044   0.000038690  -0.000020914  -0.000186994   0.000007817   0.000099888
                         0.000048575  -0.000390744  -0.000000014   0.000012032   0.000004887   0.000043696   0.000070567   0.000901800


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5  -0.001639449  -0.241788765   0.000136385   0.104675668   0.000132379   0.000001283   0.000000002  -0.000000029
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.226466773  -0.001535561   0.080514880  -0.000104909   0.000000467  -0.000048238  -0.000032552  -0.000007788
                        -0.152106791   0.001031355   0.107223256  -0.000139702  -0.000000199   0.000019765  -0.000218408  -0.000040716

    3    3.1  1.5  1.5   0.209761591  -0.001422285  -0.024422696   0.000031820  -0.000000313   0.000031227  -0.000152129  -0.000028363
                         0.312307098  -0.002117599   0.018339215  -0.000023899  -0.000000738   0.000076211   0.000022674   0.000005425

    4    4.1  1.5  1.5  -0.215625005   0.001462044   0.063505246  -0.000082752  -0.000000195   0.000020158   0.000007055   0.000001688
                         0.144824900  -0.000981981   0.084571189  -0.000110193   0.000000087  -0.000008260   0.000047336   0.000008829

    5    5.1  1.5  1.5  -0.000000000   0.000000001  -0.000000013   0.000000002  -0.000000000  -0.000000001   0.000000211   0.000000016
                        -0.000455453  -0.067171861   0.000688727   0.528593767   0.000038821   0.000000377  -0.000005244   0.000027919

    6    6.1  1.5  1.5  -0.000000003  -0.000000000   0.000000003  -0.000000001  -0.000000000   0.000000001  -0.000000551  -0.000000041
                        -0.001580571  -0.233105581  -0.000095176  -0.073045735  -0.000201231  -0.000001952   0.000013615  -0.000072554

    7    7.1  1.5  1.5   0.000089162   0.013149752   0.000682259   0.523628657  -0.000098498  -0.000000956   0.000000095  -0.000000455
                         0.000000001  -0.000000001   0.000000015  -0.000000002   0.000000000  -0.000000002   0.000000002  -0.000000000

    8    8.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000077  -0.000003791   0.001390415   0.000104420
                         0.000000850   0.000125311   0.000000144   0.000110584   0.487944144   0.004732301  -0.034358655   0.183079233

    9    9.1  1.5  1.5  -0.000123890   0.000000840   0.000014347  -0.000000019   0.000745355  -0.074291643   0.361928555   0.067478841
                        -0.000184456   0.000001251  -0.000010773   0.000000014   0.001755801  -0.181314874  -0.053942835  -0.012906324

   10   10.1  1.5  1.5   0.000183708  -0.000001246   0.000013729  -0.000000015   0.001159602  -0.120012698  -0.071044848  -0.016998583
                        -0.000123388   0.000000834   0.000018283  -0.000000011  -0.000501104   0.049173709  -0.476675754  -0.088868227

   11   11.1  1.5  1.5   0.000000097   0.000014072  -0.000000409  -0.000313882   0.182293605   0.001767818  -0.000109941   0.000466945
                        -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000058   0.000004346  -0.000004936  -0.000000357

   12   12.1  1.5  1.5  -0.000000967  -0.000142614   0.000000018   0.000014006   0.346008502   0.003354434  -0.000070782   0.000316912
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000035   0.000000636  -0.000002342  -0.000000081

   13   13.1  1.5  1.5   0.000014875  -0.000000101  -0.000059028   0.000000077  -0.000334541   0.034590929   0.035507002   0.008495309
                        -0.000009991   0.000000068  -0.000078608   0.000000102   0.000135908  -0.014173285   0.238236620   0.044404034

   14   14.1  1.5  1.5  -0.000000008   0.000000000  -0.000000001  -0.000000000  -0.000000023   0.000002288   0.000209742   0.000015911
                        -0.000000460  -0.000068603   0.000000384   0.000295357  -0.014717750  -0.000143427  -0.005154984   0.027523662

   15   15.1  1.5  1.5   0.000000403  -0.000000003   0.000000035  -0.000000000  -0.000000000   0.000000039   0.000000022   0.000000005
                        -0.000000270   0.000000002   0.000000047  -0.000000000   0.000000000  -0.000000016   0.000000150   0.000000028

   16   16.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000004  -0.000000535  -0.000000000  -0.000000016  -0.000000025  -0.000000000   0.000000001  -0.000000008

   17   17.1  1.5  1.5   0.000000003   0.000000443   0.000000000   0.000000091   0.000000023   0.000000000  -0.000000000   0.000000001
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   18   18.1  1.5  1.5   0.000000000   0.000000022  -0.000000000  -0.000000041  -0.000000789  -0.000000008   0.000000114  -0.000000605
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000005   0.000000000

   19   19.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000000003   0.000000000   0.000000055   0.000000221   0.000000002  -0.000000002   0.000000008

   20   20.1  1.5  1.5   0.000000018  -0.000000000   0.000000004  -0.000000000   0.000000003  -0.000000357  -0.000000084  -0.000000020
                        -0.000000012   0.000000000   0.000000005  -0.000000000  -0.000000001   0.000000146  -0.000000567  -0.000000106

   21    1.1  1.5  0.5   0.348528314  -0.002363192  -0.119190458   0.000155300   0.000000252  -0.000026045  -0.000004548  -0.000001088
                        -0.234089632   0.001587237  -0.158728285   0.000206815  -0.000000102   0.000010672  -0.000030513  -0.000005685

   22    2.1  1.5  0.5  -0.002113912  -0.311763917  -0.000402493  -0.308909312   0.000175520   0.000001702  -0.000027941   0.000148946
                         0.000000005   0.000000001  -0.000000011   0.000000002  -0.000000000   0.000000001  -0.000001132  -0.000000085

   23    3.1  1.5  0.5   0.000000003  -0.000000001   0.000000008  -0.000000002  -0.000000000   0.000000001   0.000000276   0.000000021
                         0.000207348   0.030580922  -0.000489997  -0.376068535  -0.000202581  -0.000001964  -0.000006792   0.000036251

   24    4.1  1.5  0.5  -0.002708357  -0.399434408   0.000284815   0.218596358  -0.000070247  -0.000000681   0.000000242  -0.000001275
                         0.000000004  -0.000000000   0.000000002  -0.000000000   0.000000000   0.000000000   0.000000010   0.000000001

   25    5.1  1.5  0.5   0.022094206  -0.000149810  -0.021878865   0.000028509  -0.000000094   0.000010413   0.000119731   0.000022325
                         0.032895333  -0.000223047   0.016429031  -0.000021407  -0.000000247   0.000025413  -0.000017845  -0.000004270

   26    6.1  1.5  0.5   0.218417207  -0.001480970  -0.216016249   0.000281452   0.000000084  -0.000008653  -0.000188567  -0.000035150
                         0.325194160  -0.002204982   0.162208488  -0.000211357   0.000000205  -0.000021119   0.000028104   0.000006724

   27    7.1  1.5  0.5  -0.083277403   0.000564656   0.028472104  -0.000037093  -0.000001222   0.000126111   0.000017605   0.000004212
                         0.055933409  -0.000379255   0.037916863  -0.000049404   0.000000509  -0.000051672   0.000118123   0.000022020

   28    8.1  1.5  0.5  -0.000122573   0.000000831   0.000121167  -0.000000158  -0.000242979   0.025379532   0.500002784   0.093206126
                        -0.000182494   0.000001237  -0.000090985   0.000000118  -0.000602161   0.061940534  -0.074521119  -0.017830706

   29    9.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000060  -0.000001948  -0.000656103  -0.000049588
                        -0.000000123  -0.000018164   0.000000290   0.000222201   0.482556996   0.004678400   0.016162980  -0.086272061

   30   10.1  1.5  0.5   0.000000024   0.000003324  -0.000000292  -0.000222997   0.430659968   0.004179935  -0.052152931   0.278037467
                         0.000000003  -0.000000000   0.000000001   0.000000000  -0.000000066   0.000003191  -0.002111789  -0.000158822

   31   11.1  1.5  0.5   0.000017357  -0.000000118  -0.000006083   0.000000006   0.002780741  -0.286607720  -0.039617870  -0.009475717
                        -0.000011658   0.000000079  -0.000008100   0.000000010  -0.001156675   0.117434383  -0.265813109  -0.049552178

   32   12.1  1.5  0.5   0.000211425  -0.000001433  -0.000072225   0.000000094   0.001026997  -0.105969809  -0.016992489  -0.004064940
                        -0.000142004   0.000000963  -0.000096183   0.000000125  -0.000420850   0.043420033  -0.114012410  -0.021246327

   33   13.1  1.5  0.5   0.000002026   0.000298806   0.000000018   0.000013833  -0.132115127  -0.001282408   0.041265337  -0.219999996
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000033  -0.000002378   0.001672281   0.000125924

   34   14.1  1.5  0.5   0.000040542  -0.000000275  -0.000039861   0.000000062  -0.000193809   0.019772977   0.180427325   0.033636470
                         0.000060361  -0.000000409   0.000029932  -0.000000039  -0.000468853   0.048257456  -0.026891152  -0.006434748

   35   15.1  1.5  0.5   0.000000000   0.000000046  -0.000000002  -0.000001302  -0.000000127  -0.000000001   0.000000016  -0.000000087
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000

   36   16.1  1.5  0.5   0.000000300  -0.000000002  -0.000000127   0.000000000   0.000000000  -0.000000003  -0.000000037  -0.000000007
                         0.000000447  -0.000000003   0.000000095  -0.000000000   0.000000000  -0.000000007   0.000000005   0.000000001

   37   17.1  1.5  0.5  -0.000000362   0.000000002   0.000000018  -0.000000000   0.000000000  -0.000000041  -0.000000006  -0.000000001
                         0.000000243  -0.000000002   0.000000024  -0.000000000  -0.000000000   0.000000017  -0.000000038  -0.000000007

   38   18.1  1.5  0.5  -0.000000023   0.000000000   0.000000006  -0.000000000   0.000000008  -0.000000810  -0.000000009  -0.000000002
                         0.000000015  -0.000000000   0.000000008  -0.000000000  -0.000000003   0.000000332  -0.000000059  -0.000000011

   39   19.1  1.5  0.5  -0.000000002   0.000000000   0.000000002  -0.000000000  -0.000000001   0.000000106   0.000000169   0.000000031
                        -0.000000003   0.000000000  -0.000000002   0.000000000  -0.000000003   0.000000260  -0.000000025  -0.000000006

   40   20.1  1.5  0.5  -0.000000000  -0.000000011  -0.000000000  -0.000000034   0.000000132   0.000000001   0.000000041  -0.000000221
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000002   0.000000000

   41    1.1  1.5 -0.5   0.002846752   0.419845140  -0.000258632  -0.198496936   0.000028146   0.000000272   0.000005783  -0.000030850
                        -0.000000004   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000001   0.000000235   0.000000018

   42    2.1  1.5 -0.5   0.258806265  -0.001754836   0.185489221  -0.000241692  -0.000001575   0.000162415  -0.000021957  -0.000005254
                        -0.173827665   0.001178633   0.247019659  -0.000321848   0.000000647  -0.000066548  -0.000147319  -0.000027466

   43    3.1  1.5 -0.5   0.017050756  -0.000115607   0.300723603  -0.000391822  -0.000000745   0.000076808  -0.000035855  -0.000006676
                         0.025386305  -0.000172129  -0.225815982   0.000294233  -0.000001817   0.000187456   0.000005344   0.000001278

   44    4.1  1.5 -0.5   0.331584643  -0.002248306  -0.131259457   0.000171023   0.000000630  -0.000065002   0.000000188   0.000000045
                        -0.222709387   0.001510074  -0.174800809   0.000227751  -0.000000258   0.000026634   0.000001261   0.000000238

   45    5.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000007   0.000000919   0.000000069
                        -0.000268688  -0.039626467  -0.000035651  -0.027360515   0.000027463   0.000000264  -0.000022711   0.000121054

   46    6.1  1.5 -0.5  -0.000000008  -0.000000001   0.000000010  -0.000000002  -0.000000000   0.000000000  -0.000001449  -0.000000109
                        -0.002656166  -0.391736286  -0.000351976  -0.270138138  -0.000022823  -0.000000222   0.000035758  -0.000190650

   47    7.1  1.5 -0.5  -0.000680199  -0.100317855   0.000061779   0.047416761  -0.000136286  -0.000001323  -0.000022401   0.000119428
                        -0.000000002  -0.000000000  -0.000000004  -0.000000000   0.000000000  -0.000000007  -0.000000907  -0.000000068

   48    8.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000030   0.000003470   0.003841851   0.000289228
                         0.000001491   0.000219837   0.000000197   0.000151525   0.066938408   0.000649326  -0.094818544   0.505525566

   49    9.1  1.5 -0.5  -0.000010128   0.000000069  -0.000177683   0.000000232   0.001775604  -0.182960039   0.085329587   0.015887945
                        -0.000015079   0.000000102   0.000133424  -0.000000174   0.004328355  -0.446527578  -0.012717410  -0.003040661

   50   10.1  1.5 -0.5  -0.000002760   0.000000019   0.000133902  -0.000000174  -0.003866636   0.398505371  -0.040986630  -0.009806077
                         0.000001854  -0.000000016   0.000178320  -0.000000234   0.001587763  -0.163283425  -0.274999918  -0.051266253

   51   11.1  1.5 -0.5   0.000000142   0.000020909  -0.000000012  -0.000010130   0.309733465   0.003011671   0.050408841  -0.268749253
                         0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000182   0.000016004   0.002038712   0.000153058

   52   12.1  1.5 -0.5   0.000001727   0.000254687  -0.000000157  -0.000120281   0.114520303   0.001109882   0.021613941  -0.115271722
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000010   0.000000045   0.000876177   0.000066031

   53   13.1  1.5 -0.5  -0.000248050   0.000001682  -0.000008307   0.000000011   0.001185757  -0.122250949   0.032430839   0.007760272
                         0.000166603  -0.000001130  -0.000011062   0.000000014  -0.000488422   0.050091039   0.217596541   0.040563564

   54   14.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000006   0.000000000   0.000000020  -0.000001575   0.001386413   0.000104360
                        -0.000000493  -0.000072713  -0.000000073  -0.000049847   0.052151248   0.000507329  -0.034218356   0.182420237

   55   15.1  1.5 -0.5  -0.000000038   0.000000000   0.000000782  -0.000000001   0.000000001  -0.000000117   0.000000013   0.000000003
                         0.000000026  -0.000000000   0.000001041  -0.000000001  -0.000000000   0.000000048   0.000000086   0.000000016

   56   16.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000004  -0.000000538  -0.000000000  -0.000000159  -0.000000008  -0.000000000   0.000000007  -0.000000037

   57   17.1  1.5 -0.5  -0.000000003  -0.000000436   0.000000000   0.000000029   0.000000044   0.000000000   0.000000007  -0.000000038
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   58   18.1  1.5 -0.5  -0.000000000  -0.000000027   0.000000000   0.000000010   0.000000875   0.000000008   0.000000011  -0.000000060
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   59   19.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000
                         0.000000000   0.000000003   0.000000000   0.000000003   0.000000281   0.000000003  -0.000000032   0.000000171

   60   20.1  1.5 -0.5   0.000000009  -0.000000000   0.000000020  -0.000000000  -0.000000001   0.000000122   0.000000033   0.000000008
                        -0.000000006   0.000000000   0.000000027  -0.000000000   0.000000000  -0.000000050   0.000000219   0.000000041

   61    1.1  1.5 -1.5  -0.200717413   0.001360965   0.062854072  -0.000081894   0.000001187  -0.000122495  -0.000000004  -0.000000000
                         0.134812191  -0.000914094   0.083704008  -0.000109060  -0.000000487   0.000050191  -0.000000029  -0.000000002

   62    2.1  1.5 -1.5  -0.001849768  -0.272807029  -0.000174707  -0.134087556  -0.000052131  -0.000000507  -0.000041420   0.000220820
                         0.000000006   0.000000000  -0.000000004   0.000000001   0.000000000  -0.000000007  -0.000001678  -0.000000126

   63    3.1  1.5 -1.5   0.000000003   0.000000000  -0.000000003   0.000000001  -0.000000000   0.000000010   0.000001168   0.000000088
                         0.002550906   0.376212239   0.000039796   0.030541690  -0.000082361  -0.000000802  -0.000028854   0.000153810

   64    4.1  1.5 -1.5   0.001761209   0.259746789  -0.000137806  -0.105760117   0.000021785   0.000000213   0.000008982  -0.000047859
                        -0.000000003   0.000000000  -0.000000006  -0.000000000  -0.000000000   0.000000006   0.000000363   0.000000027

   65    5.1  1.5 -1.5   0.037452468  -0.000253943   0.422690566  -0.000550733  -0.000000144   0.000014719   0.000027614   0.000005155
                         0.055761739  -0.000378088  -0.317402042   0.000413567  -0.000000348   0.000035923  -0.000004116  -0.000000985

   66    6.1  1.5 -1.5   0.129970778  -0.000881263  -0.058411100   0.000076105   0.000000741  -0.000076296  -0.000071762  -0.000013384
                         0.193509195  -0.001312090   0.043861405  -0.000057152   0.000001805  -0.000186207   0.000010696   0.000002560

   67    7.1  1.5 -1.5   0.010916076  -0.000074015   0.314420667  -0.000409684  -0.000000884   0.000091144  -0.000000067  -0.000000016
                        -0.007331799   0.000049714   0.418720211  -0.000545560   0.000000364  -0.000037345  -0.000000450  -0.000000094

   68    8.1  1.5 -1.5  -0.000069868   0.000000474   0.000088428  -0.000000115  -0.001797746   0.185002545   0.181079075   0.033774631
                        -0.000104025   0.000000705  -0.000066402   0.000000087  -0.004377533   0.451512510  -0.026988609  -0.006459467

   69    9.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000250  -0.000023997  -0.002778781  -0.000208870
                        -0.000001507  -0.000222199  -0.000000023  -0.000017942   0.195944716   0.001907305   0.068645798  -0.365926310

   70   10.1  1.5 -1.5  -0.000001499  -0.000221299  -0.000000018  -0.000022864  -0.129696189  -0.001263014  -0.090405266   0.481940939
                         0.000000002  -0.000000000  -0.000000006   0.000000000   0.000000245  -0.000024030  -0.003660807  -0.000275317

   71   11.1  1.5 -1.5   0.000011681  -0.000000081  -0.000188475   0.000000245   0.001634179  -0.168682931   0.000068745   0.000021150
                        -0.000007846   0.000000054  -0.000250996   0.000000327  -0.000674285   0.069116042   0.000461857   0.000108000

   72   12.1  1.5 -1.5  -0.000118389   0.000000802   0.000008410  -0.000000011   0.003103739  -0.320174277   0.000046816   0.000012790
                         0.000079516  -0.000000539   0.000011200  -0.000000015  -0.001272413   0.131188094   0.000313435   0.000069656

   73   13.1  1.5 -1.5  -0.000000122  -0.000017919   0.000000128   0.000098303   0.037382006   0.000361092   0.045172296  -0.240868046
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000006  -0.000001080   0.001830915   0.000137927

   74   14.1  1.5 -1.5   0.000038250  -0.000000250   0.000236183  -0.000000307   0.000056497  -0.005580171   0.027222995   0.005067192
                         0.000056950  -0.000000386  -0.000177352   0.000000231   0.000131850  -0.013618879  -0.004057188  -0.000970262

   75   15.1  1.5 -1.5  -0.000000003  -0.000000485  -0.000000000  -0.000000059   0.000000042   0.000000000   0.000000028  -0.000000151
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000

   76   16.1  1.5 -1.5   0.000000298  -0.000000002  -0.000000012   0.000000000   0.000000000  -0.000000010  -0.000000008  -0.000000001
                         0.000000444  -0.000000003   0.000000009  -0.000000000   0.000000000  -0.000000023   0.000000001   0.000000000

   77   17.1  1.5 -1.5   0.000000368  -0.000000002   0.000000054  -0.000000000   0.000000000  -0.000000021   0.000000000   0.000000000
                        -0.000000247   0.000000002   0.000000072  -0.000000000  -0.000000000   0.000000009   0.000000001   0.000000000

   78   18.1  1.5 -1.5   0.000000018  -0.000000000  -0.000000025   0.000000000  -0.000000007   0.000000730  -0.000000089  -0.000000021
                        -0.000000012   0.000000000  -0.000000033   0.000000000   0.000000003  -0.000000299  -0.000000599  -0.000000112

   79   19.1  1.5 -1.5   0.000000001  -0.000000000   0.000000044  -0.000000000  -0.000000001   0.000000084   0.000000008   0.000000002
                         0.000000002  -0.000000000  -0.000000033   0.000000000  -0.000000002   0.000000204  -0.000000001  -0.000000000

   80   20.1  1.5 -1.5  -0.000000000  -0.000000022  -0.000000000  -0.000000006  -0.000000386  -0.000000004  -0.000000107   0.000000573
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000004  -0.000000000

   81    1.1  0.5  0.5   0.000000003   0.000000382  -0.000000001  -0.000000393   0.000017889   0.000000173   0.000001336  -0.000007127
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000054   0.000000004

   82    2.1  0.5  0.5  -0.000000462   0.000000003   0.000000136  -0.000000000  -0.000000036   0.000003647  -0.000011111  -0.000002071
                        -0.000000688   0.000000005  -0.000000102   0.000000000  -0.000000086   0.000008900   0.000001656   0.000000396

   83    3.1  0.5  0.5   0.000000066  -0.000000000  -0.000000070   0.000000000  -0.000000027   0.000002732  -0.000008142  -0.000001518
                         0.000000099  -0.000000001   0.000000052  -0.000000000  -0.000000065   0.000006667   0.000001213   0.000000290

   84    4.1  0.5  0.5   0.000000595  -0.000000004  -0.000000002   0.000000000  -0.000000065   0.000006663   0.000002747   0.000000657
                        -0.000000400   0.000000003  -0.000000003  -0.000000000   0.000000026  -0.000002730   0.000018432   0.000003435

   85    5.1  0.5  0.5  -0.000000178   0.000000001   0.000000088  -0.000000000   0.000000021  -0.000002151   0.000000645   0.000000154
                         0.000000120  -0.000000001   0.000000117  -0.000000000  -0.000000008   0.000000881   0.000004331   0.000000808

   86    6.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000028  -0.000000002
                        -0.000000001  -0.000000149   0.000000002   0.000001525  -0.000005860  -0.000000057   0.000000686  -0.000003655

   87    7.1  0.5  0.5   0.000000001   0.000000076  -0.000000002  -0.000001509   0.000003733   0.000000036   0.000001062  -0.000005662
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000043   0.000000003

   88    1.1  0.5 -0.5   0.000000317  -0.000000002  -0.000000236   0.000000000   0.000000160  -0.000016553  -0.000001051  -0.000000251
                        -0.000000213   0.000000001  -0.000000314   0.000000000  -0.000000066   0.000006782  -0.000007049  -0.000001313

   89    2.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000085   0.000000006
                        -0.000000006  -0.000000829  -0.000000000  -0.000000170  -0.000009618  -0.000000093  -0.000002107   0.000011234

   90    3.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000063   0.000000005
                         0.000000001   0.000000119   0.000000000   0.000000087  -0.000007205  -0.000000070  -0.000001544   0.000008232

   91    4.1  0.5 -0.5  -0.000000005  -0.000000717  -0.000000000   0.000000003   0.000007201   0.000000070   0.000003495  -0.000018635
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000142   0.000000011

   92    5.1  0.5 -0.5   0.000000001   0.000000215  -0.000000000  -0.000000146  -0.000002325  -0.000000022   0.000000822  -0.000004379
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000033   0.000000002

   93    6.1  0.5 -0.5   0.000000083  -0.000000001   0.000001220  -0.000000002   0.000000022  -0.000002222  -0.000003615  -0.000000674
                         0.000000124  -0.000000001  -0.000000916   0.000000001   0.000000053  -0.000005423   0.000000539   0.000000129

   94    7.1  0.5 -0.5   0.000000063  -0.000000000  -0.000000906   0.000000001   0.000000033  -0.000003454  -0.000000835  -0.000000200
                        -0.000000042   0.000000000  -0.000001207   0.000000002  -0.000000014   0.000001415  -0.000005600  -0.000001044


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5  -0.000007756   0.000065907   0.000003481  -0.000161418  -0.000000368  -0.000040527  -0.000000000   0.000026978
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000003138   0.000000369   0.000014425   0.000000311  -0.000007853   0.000000071   0.000073360   0.000000000
                         0.000000337   0.000000036   0.000000252   0.000000001   0.000010907  -0.000000095  -0.000069143   0.000000002

    3    3.1  1.5  1.5   0.000018201   0.000002141   0.000000485   0.000000002   0.000028665  -0.000000252   0.000098280  -0.000000001
                        -0.000169637  -0.000019964  -0.000027810  -0.000000600   0.000020639  -0.000000187   0.000104274   0.000000000

    4    4.1  1.5  1.5  -0.000184034  -0.000021658   0.000067810   0.000001462  -0.000056741   0.000000514  -0.000008046   0.000000000
                        -0.000019746  -0.000002322   0.000001182   0.000000028   0.000078807  -0.000000704   0.000007584  -0.000000002

    5    5.1  1.5  1.5   0.000000008   0.000000001  -0.000000011  -0.000000000  -0.000000021   0.000000000  -0.000000000   0.000000000
                         0.000001000  -0.000008491  -0.000004689   0.000217470  -0.000001754  -0.000197138   0.000000000   0.000006836

    6    6.1  1.5  1.5  -0.000000007  -0.000000001  -0.000000001  -0.000000000  -0.000000003   0.000000000  -0.000000003  -0.000000000
                         0.000000062  -0.000000536   0.000000217  -0.000010046  -0.000000358  -0.000039960   0.000000003   0.000255166

    7    7.1  1.5  1.5   0.000006037  -0.000051305   0.000004435  -0.000205690   0.000001610   0.000180891   0.000000000  -0.000026057
                         0.000000008   0.000000001  -0.000000011  -0.000000000  -0.000000019   0.000000000  -0.000000000  -0.000000000

    8    8.1  1.5  1.5   0.000020879   0.000002457  -0.000003317  -0.000000078  -0.000003972   0.000000034  -0.000007550  -0.000000030
                         0.000342554  -0.002887687  -0.002952677   0.136932605  -0.000078192  -0.009330171   0.000006396   0.592222731

    9    9.1  1.5  1.5  -0.043569672  -0.005124056  -0.001151889  -0.000005954  -0.067962693   0.000598854   0.235310647  -0.000002314
                         0.406072880   0.047788969   0.066033777   0.001424395  -0.048933094   0.000442507   0.249662225   0.000000275

   10   10.1  1.5  1.5   0.279122304   0.032847674  -0.074096590  -0.001602408   0.069788977  -0.000628464  -0.149480860   0.000000268
                         0.029949513   0.003513270  -0.001292288  -0.000018288  -0.096929224   0.000850661   0.140888105  -0.000012314

   11   11.1  1.5  1.5  -0.011367516   0.096628822  -0.011670496   0.541229374  -0.003652301  -0.410756628  -0.000001142  -0.050803148
                        -0.000019258  -0.000002272   0.000025684   0.000000582   0.000043286  -0.000000297   0.000001200  -0.000000003

   12   12.1  1.5  1.5  -0.020360305   0.173010494   0.006587751  -0.305497183  -0.001446120  -0.160691784  -0.000000024  -0.072959798
                        -0.000003122  -0.000000378   0.000004064   0.000000073   0.000006511  -0.000000020   0.000000004  -0.000000004

   13   13.1  1.5  1.5   0.335273479   0.039457114  -0.146782911  -0.003165602   0.116533601  -0.001054732   0.094985251   0.000000321
                         0.035972586   0.004236219  -0.002559609  -0.000053273  -0.161852249   0.001441418  -0.089525121  -0.000000539

   14   14.1  1.5  1.5   0.000002390   0.000000280  -0.000023126  -0.000000524  -0.000051981   0.000000360   0.000008867   0.000000008
                         0.002396955  -0.020368946  -0.010808013   0.501269841  -0.004258426  -0.478856502  -0.000008271  -0.149764227

   15   15.1  1.5  1.5  -0.000000060  -0.000000007   0.000000008   0.000000000  -0.000000009   0.000000000  -0.000000037  -0.000000000
                        -0.000000006  -0.000000001   0.000000000   0.000000000   0.000000013  -0.000000000   0.000000034  -0.000000000

   16   16.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000001  -0.000000005   0.000000001  -0.000000044   0.000000001   0.000000064  -0.000000000   0.000000000

   17   17.1  1.5  1.5  -0.000000001   0.000000010  -0.000000002   0.000000081  -0.000000000  -0.000000049  -0.000000000  -0.000000050
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   18   18.1  1.5  1.5  -0.000000046   0.000000389   0.000000010  -0.000000455  -0.000000001  -0.000000071  -0.000000000  -0.000000977
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   19   19.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000016   0.000000138   0.000000024  -0.000001113  -0.000000004  -0.000000393  -0.000000000  -0.000000226

   20   20.1  1.5  1.5   0.000000794   0.000000093   0.000000227   0.000000005  -0.000000177   0.000000002   0.000000416  -0.000000000
                         0.000000085   0.000000010   0.000000004   0.000000000   0.000000246  -0.000000002  -0.000000392   0.000000000

   21    1.1  1.5  0.5  -0.000097458  -0.000011469   0.000151061   0.000003258  -0.000120007   0.000001086  -0.000078171  -0.000000000
                        -0.000010457  -0.000001228   0.000002634   0.000000053   0.000166677  -0.000001486   0.000073678  -0.000000001

   22    2.1  1.5  0.5   0.000012452  -0.000105796  -0.000000260   0.000012048   0.000000735   0.000082096   0.000000000  -0.000050821
                        -0.000000008  -0.000000001  -0.000000004  -0.000000000  -0.000000006   0.000000000  -0.000000000  -0.000000000

   23    3.1  1.5  0.5  -0.000000004  -0.000000000  -0.000000000  -0.000000000  -0.000000004   0.000000000   0.000000001   0.000000000
                         0.000015652  -0.000133000  -0.000000549   0.000025474  -0.000000379  -0.000042518  -0.000000001  -0.000100452

   24    4.1  1.5  0.5   0.000005491  -0.000046660  -0.000003759   0.000174326   0.000001742   0.000194323  -0.000000001  -0.000090093
                        -0.000000001  -0.000000000  -0.000000006  -0.000000000  -0.000000012   0.000000000  -0.000000001  -0.000000000

   25    5.1  1.5  0.5  -0.000015172  -0.000001782  -0.000000471  -0.000000005  -0.000001533   0.000000013   0.000088297  -0.000000001
                         0.000141406   0.000016641   0.000027024   0.000000583  -0.000001104   0.000000010   0.000093682   0.000000000

   26    6.1  1.5  0.5  -0.000020816  -0.000002456  -0.000000313  -0.000000005  -0.000029068   0.000000260  -0.000094493   0.000000002
                         0.000194019   0.000022833   0.000017975   0.000000388  -0.000020929   0.000000189  -0.000100256  -0.000000000

   27    7.1  1.5  0.5  -0.000066037  -0.000007772  -0.000005715  -0.000000123   0.000021687  -0.000000196   0.000061145   0.000000000
                        -0.000007085  -0.000000834  -0.000000100   0.000000003  -0.000030122   0.000000266  -0.000057630   0.000000003

   28    8.1  1.5  0.5   0.040547707   0.004787047   0.000490909   0.000007214   0.066925839  -0.000599164  -0.266806722   0.000004955
                        -0.377927755  -0.044477180  -0.028147863  -0.000607174   0.048186617  -0.000436185  -0.283079243  -0.000000318

   29    9.1  1.5  0.5   0.000008795   0.000001054   0.000001073   0.000000026   0.000009946  -0.000000067   0.000002204   0.000000012
                        -0.037443743   0.318178296   0.001336676  -0.061997175   0.000906558   0.101735464  -0.000001574  -0.240274194

   30   10.1  1.5  0.5   0.015082793  -0.128174937   0.005141448  -0.238414948  -0.001218968  -0.135581681  -0.000009766  -0.040179164
                         0.000004421   0.000000527   0.000004471   0.000000085   0.000006032  -0.000000022  -0.000008184  -0.000000002

   31   11.1  1.5  0.5   0.190510101   0.022419354  -0.040836216  -0.000882417  -0.007647043   0.000067594   0.116175100  -0.000000230
                         0.020440595   0.002405763  -0.000711843  -0.000026946   0.010620939  -0.000087552  -0.109496893   0.000007548

   32   12.1  1.5  0.5  -0.205372459  -0.024169460   0.357535943   0.007710680  -0.290251930   0.002627199   0.207149378   0.000000298
                        -0.022035966  -0.002587379   0.006234877   0.000123044   0.403127725  -0.003592477  -0.195241608   0.000003917

   33   13.1  1.5  0.5  -0.028730359   0.244110798   0.007335083  -0.340125902  -0.004315998  -0.481614804  -0.000002481  -0.244634972
                         0.000014415   0.000001682   0.000016056   0.000000330   0.000031172  -0.000000169  -0.000002999  -0.000000012

   34   14.1  1.5  0.5  -0.046040236  -0.005407844  -0.001251375  -0.000003950  -0.018424386   0.000167906  -0.157192811   0.000002332
                         0.429091425   0.050497826   0.071733813   0.001547089  -0.013265583   0.000119904  -0.166779988  -0.000000213

   35   15.1  1.5  0.5  -0.000000006   0.000000049  -0.000000001   0.000000042   0.000000000   0.000000001  -0.000000000  -0.000000014
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   36   16.1  1.5  0.5   0.000000004   0.000000001   0.000000000  -0.000000000   0.000000008  -0.000000000  -0.000000005   0.000000000
                        -0.000000042  -0.000000005  -0.000000015  -0.000000000   0.000000005  -0.000000000  -0.000000005   0.000000000

   37   17.1  1.5  0.5   0.000000031   0.000000004  -0.000000017  -0.000000000   0.000000007  -0.000000000   0.000000028   0.000000000
                         0.000000003   0.000000000  -0.000000000  -0.000000000  -0.000000010   0.000000000  -0.000000026   0.000000000

   38   18.1  1.5  0.5   0.000000380   0.000000045   0.000000166   0.000000004  -0.000000279   0.000000003  -0.000000002  -0.000000000
                         0.000000041   0.000000005   0.000000003   0.000000000   0.000000387  -0.000000003   0.000000002  -0.000000000

   39   19.1  1.5  0.5  -0.000000080  -0.000000009  -0.000000009  -0.000000000  -0.000000388   0.000000003  -0.000000142   0.000000000
                         0.000000744   0.000000088   0.000000509   0.000000011  -0.000000279   0.000000003  -0.000000151  -0.000000000

   40   20.1  1.5  0.5  -0.000000041   0.000000349  -0.000000003   0.000000138   0.000000002   0.000000170  -0.000000000  -0.000000488
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   41    1.1  1.5 -0.5  -0.000011535   0.000098017  -0.000003258   0.000151084   0.000001841   0.000205384   0.000000001   0.000107421
                        -0.000000002  -0.000000000  -0.000000004  -0.000000000  -0.000000013   0.000000000   0.000000001   0.000000000

   42    2.1  1.5 -0.5  -0.000105192  -0.000012380  -0.000012046  -0.000000260   0.000047969  -0.000000434  -0.000036983  -0.000000000
                        -0.000011286  -0.000001337  -0.000000210  -0.000000001  -0.000066624   0.000000593   0.000034857  -0.000000000

   43    3.1  1.5 -0.5  -0.000014189  -0.000001666  -0.000000444  -0.000000010   0.000034505  -0.000000305   0.000068898  -0.000000001
                         0.000132241   0.000015563   0.000025470   0.000000549   0.000024843  -0.000000225   0.000073100   0.000000000

   44    4.1  1.5 -0.5  -0.000046394  -0.000005460  -0.000174299  -0.000003759   0.000113544  -0.000001027  -0.000065562   0.000000000
                        -0.000004978  -0.000000587  -0.000003040  -0.000000060  -0.000157700   0.000001407   0.000061793  -0.000000002

   45    5.1  1.5 -0.5   0.000000003   0.000000000  -0.000000005  -0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000000
                        -0.000016737   0.000142218   0.000000583  -0.000027029  -0.000000016  -0.000001889   0.000000000   0.000128735

   46    6.1  1.5 -0.5  -0.000000006  -0.000000001  -0.000000002  -0.000000000  -0.000000002  -0.000000000   0.000000002   0.000000000
                        -0.000022965   0.000195132   0.000000388  -0.000017978  -0.000000322  -0.000035818  -0.000000001  -0.000137769

   47    7.1  1.5 -0.5  -0.000007816   0.000066416   0.000000123  -0.000005715  -0.000000330  -0.000037117  -0.000000002  -0.000084023
                         0.000000000   0.000000000   0.000000005   0.000000000   0.000000004  -0.000000000  -0.000000002  -0.000000000

   48    8.1  1.5 -0.5   0.000014820   0.000001722   0.000003373   0.000000072   0.000003884  -0.000000015   0.000003824   0.000000020
                         0.044734049  -0.380096705  -0.000607207   0.028152143   0.000741107   0.082468285  -0.000003167  -0.388998310

   49    9.1  1.5 -0.5   0.033944897   0.003985823   0.001080905   0.000024378  -0.082561843   0.000729891   0.164799611  -0.000002683
                        -0.316362406  -0.037230998  -0.061987752  -0.001336454  -0.059444484   0.000537778   0.174850726   0.000000366

   50   10.1  1.5 -0.5  -0.127443413  -0.014997190   0.238378706   0.005140745  -0.079221033   0.000717144  -0.029238912   0.000001493
                        -0.013674463  -0.001604664   0.004156890   0.000085172   0.110029179  -0.000985710   0.027558143  -0.000012654

   51   11.1  1.5 -0.5   0.022548063  -0.191603540   0.000882753  -0.040842420   0.000110547   0.013087460  -0.000005345  -0.159644053
                        -0.000000295  -0.000000025  -0.000011557  -0.000000251  -0.000003698   0.000000031  -0.000005335  -0.000000008

   52   12.1  1.5 -0.5  -0.024307556   0.206551279  -0.007711653   0.357590302   0.004450503   0.496747567  -0.000002469  -0.284657953
                        -0.000005829  -0.000000697  -0.000011412  -0.000000229  -0.000032960   0.000000182  -0.000003055  -0.000000014

   53   13.1  1.5 -0.5   0.242717888   0.028564863   0.340074196   0.007334248  -0.281409792   0.002547156  -0.178024123  -0.000000251
                         0.026040519   0.003079341   0.005930484   0.000111834   0.390846963  -0.003484366   0.167790588  -0.000003884

   54   14.1  1.5 -0.5   0.000010218   0.000001227  -0.000023024  -0.000000493   0.000000802  -0.000000013   0.000001843   0.000000012
                        -0.050786564   0.431554347   0.001546923  -0.071744727  -0.000206322  -0.022703164  -0.000001444  -0.229183647

   55   15.1  1.5 -0.5   0.000000048   0.000000006  -0.000000042  -0.000000001   0.000000001  -0.000000000  -0.000000010  -0.000000000
                         0.000000005   0.000000001  -0.000000001  -0.000000000  -0.000000001   0.000000000   0.000000009  -0.000000000

   56   16.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000005  -0.000000042  -0.000000000   0.000000015   0.000000000   0.000000009  -0.000000000  -0.000000007

   57   17.1  1.5 -0.5   0.000000004  -0.000000031   0.000000000  -0.000000017  -0.000000000  -0.000000013  -0.000000000  -0.000000038
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   58   18.1  1.5 -0.5   0.000000045  -0.000000382  -0.000000004   0.000000166   0.000000004   0.000000477   0.000000000   0.000000002
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   59   19.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000088   0.000000749   0.000000011  -0.000000509  -0.000000004  -0.000000478  -0.000000000  -0.000000207

   60   20.1  1.5 -0.5   0.000000347   0.000000041  -0.000000138  -0.000000003   0.000000099  -0.000000001  -0.000000355   0.000000000
                         0.000000037   0.000000004  -0.000000002  -0.000000000  -0.000000138   0.000000001   0.000000335  -0.000000000

   61    1.1  1.5 -1.5  -0.000065531  -0.000007712  -0.000161393  -0.000003480   0.000023680  -0.000000215  -0.000019632  -0.000000000
                        -0.000007031  -0.000000827  -0.000002814  -0.000000061  -0.000032889   0.000000298   0.000018504   0.000000000

   62    2.1  1.5 -1.5  -0.000000371   0.000003156   0.000000311  -0.000014427  -0.000000118  -0.000013440   0.000000001   0.000100808
                        -0.000000004  -0.000000000   0.000000004   0.000000000   0.000000002  -0.000000000   0.000000001   0.000000000

   63    3.1  1.5 -1.5   0.000000001   0.000000000  -0.000000008  -0.000000000  -0.000000004   0.000000000   0.000000001   0.000000000
                        -0.000020078   0.000170611   0.000000600  -0.000027815  -0.000000314  -0.000035322  -0.000000001  -0.000143289

   64    4.1  1.5 -1.5   0.000021782  -0.000185090   0.000001462  -0.000067820  -0.000000871  -0.000097108  -0.000000001  -0.000011057
                         0.000000002   0.000000000  -0.000000002  -0.000000000   0.000000005  -0.000000000  -0.000000001  -0.000000000

   65    5.1  1.5 -1.5   0.000000905   0.000000114   0.000003791   0.000000093  -0.000159984   0.000001412   0.000004689  -0.000000000
                        -0.000008442  -0.000000993  -0.000217437  -0.000004688  -0.000115188   0.000001042   0.000004975   0.000000000

   66    6.1  1.5 -1.5   0.000000058  -0.000000001  -0.000000175  -0.000000003  -0.000032429   0.000000289   0.000175014  -0.000000004
                        -0.000000533  -0.000000063   0.000010044   0.000000217  -0.000023349   0.000000211   0.000185688   0.000000000

   67    7.1  1.5 -1.5   0.000051012   0.000006003  -0.000205659  -0.000004434  -0.000105695   0.000000956   0.000018962   0.000000000
                         0.000005474   0.000000636  -0.000003586  -0.000000088   0.000146799  -0.000001295  -0.000017872   0.000000000

   68    8.1  1.5 -1.5   0.000305620   0.000057304   0.002387365   0.000054797  -0.007571772   0.000061135   0.406194582  -0.000009881
                        -0.002871469  -0.000338371  -0.136911792  -0.002952170  -0.005451638   0.000048911   0.430968357   0.000000524

   69    9.1  1.5 -1.5  -0.000003402  -0.000000423   0.000018881   0.000000404   0.000009197  -0.000000063   0.000001873   0.000000017
                         0.048062891  -0.408403599  -0.001424282   0.066043823   0.000744549   0.083745897  -0.000001386  -0.343077727

   70   10.1  1.5 -1.5  -0.033035021   0.280724480  -0.001602483   0.074107858   0.001057555   0.119439423  -0.000008641  -0.205411747
                        -0.000011030  -0.000001314  -0.000009653  -0.000000205  -0.000012975   0.000000090  -0.000008777  -0.000000010

   71   11.1  1.5 -1.5  -0.096077139  -0.011304698   0.541147115   0.011668275   0.240006903  -0.002169186   0.036970126  -0.000001654
                        -0.010310801  -0.001193559   0.009435845   0.000229158  -0.333343208   0.002938675  -0.034844936  -0.000000090

   72   12.1  1.5 -1.5  -0.172023119  -0.020244446  -0.305450745  -0.006586820   0.093892993  -0.000850259   0.053093815  -0.000000020
                        -0.018457455  -0.002168971  -0.005326468  -0.000110796  -0.130406884   0.001169772  -0.050041772   0.000000014

   73   13.1  1.5 -1.5  -0.039683868   0.337197765  -0.003166050   0.146805226   0.001786045   0.199439792  -0.000000603   0.130525649
                         0.000002686   0.000000297  -0.000001928  -0.000000035  -0.000013724   0.000000078  -0.000000172   0.000000007

   74   14.1  1.5 -1.5   0.002172718   0.000258088   0.008739201   0.000211562  -0.388608618   0.003425485  -0.102720504   0.000012126
                        -0.020252735  -0.002383022  -0.501193655  -0.010805967  -0.279797947   0.002530404  -0.108985419  -0.000000063

   75   15.1  1.5 -1.5   0.000000007  -0.000000060   0.000000000  -0.000000008  -0.000000000  -0.000000016  -0.000000000  -0.000000050
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   76   16.1  1.5 -1.5   0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000052  -0.000000000   0.000000000   0.000000000
                        -0.000000005  -0.000000001   0.000000044   0.000000001   0.000000037  -0.000000000   0.000000000   0.000000000

   77   17.1  1.5 -1.5  -0.000000010  -0.000000001   0.000000081   0.000000002   0.000000028  -0.000000000   0.000000037  -0.000000000
                        -0.000000001  -0.000000000   0.000000001   0.000000000  -0.000000040   0.000000000  -0.000000035   0.000000000

   78   18.1  1.5 -1.5  -0.000000387  -0.000000046  -0.000000455  -0.000000010   0.000000041  -0.000000000   0.000000711   0.000000000
                        -0.000000042  -0.000000005  -0.000000008  -0.000000000  -0.000000057   0.000000001  -0.000000670   0.000000000

   79   19.1  1.5 -1.5  -0.000000015  -0.000000002  -0.000000019  -0.000000000  -0.000000319   0.000000003  -0.000000155   0.000000000
                         0.000000138   0.000000016   0.000001113   0.000000024  -0.000000229   0.000000002  -0.000000164   0.000000000

   80   20.1  1.5 -1.5  -0.000000094   0.000000798   0.000000005  -0.000000227  -0.000000003  -0.000000303   0.000000000   0.000000572
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   81    1.1  0.5  0.5  -0.000002032   0.000017268  -0.000000088   0.000004093  -0.000000073  -0.000008213   0.000000575   0.058475062
                        -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000001  -0.000000000   0.000000673   0.000000003

   82    2.1  0.5  0.5   0.000000179   0.000000022   0.000000148   0.000000002   0.000010967  -0.000000097  -0.036197325   0.000000441
                        -0.000001668  -0.000000196  -0.000008513  -0.000000184   0.000007896  -0.000000071  -0.038404997  -0.000000064

   83    3.1  0.5  0.5   0.000001820   0.000000214   0.000000032   0.000000001  -0.000000933   0.000000008   0.009413769  -0.000000782
                        -0.000016962  -0.000001996  -0.000001807  -0.000000039  -0.000000672   0.000000006   0.009987914   0.000000017

   84    4.1  0.5  0.5   0.000015488   0.000001823  -0.000002840  -0.000000061  -0.000001283   0.000000012   0.008878696  -0.000000012
                         0.000001662   0.000000196  -0.000000050  -0.000000001   0.000001782  -0.000000015  -0.008368313   0.000000602

   85    5.1  0.5  0.5  -0.000045359  -0.000005338  -0.000001949  -0.000000042   0.000003058  -0.000000028  -0.028314989  -0.000000023
                        -0.000004867  -0.000000572  -0.000000034   0.000000001  -0.000004247   0.000000038   0.026687331  -0.000000239

   86    6.1  0.5  0.5  -0.000000001  -0.000000000   0.000000001   0.000000000   0.000000001  -0.000000000   0.000000594   0.000000002
                         0.000001027  -0.000008727   0.000000355  -0.000016478   0.000000031   0.000003484  -0.000000538  -0.031449856

   87    7.1  0.5  0.5  -0.000000436   0.000003703   0.000000096  -0.000004465   0.000000054   0.000006101  -0.000000581  -0.058370016
                         0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000001   0.000000000  -0.000000711  -0.000000003

   88    1.1  0.5 -0.5  -0.000017170  -0.000002021   0.000004092   0.000000088   0.000004799  -0.000000043  -0.042553080  -0.000000043
                        -0.000001842  -0.000000217   0.000000071   0.000000002  -0.000006665   0.000000059   0.040106960  -0.000000884

   89    2.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000001   0.000000000  -0.000000364  -0.000000003
                        -0.000000198   0.000001678   0.000000184  -0.000008514  -0.000000121  -0.000013513   0.000000256   0.052774900

   90    3.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000581   0.000000001
                        -0.000002008   0.000017059   0.000000039  -0.000001807   0.000000010   0.000001150  -0.000000524  -0.013725067

   91    4.1  0.5 -0.5  -0.000001833   0.000015577  -0.000000061   0.000002840  -0.000000019  -0.000002196   0.000000421   0.012200815
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000430   0.000000001

   92    5.1  0.5 -0.5   0.000005369  -0.000045620  -0.000000042   0.000001949   0.000000047   0.000005233  -0.000000147  -0.038909539
                         0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000190  -0.000000002

   93    6.1  0.5 -0.5   0.000000931   0.000000108  -0.000000287  -0.000000007   0.000002827  -0.000000024  -0.021570872   0.000000801
                        -0.000008677  -0.000001021   0.000016475   0.000000355   0.000002036  -0.000000018  -0.022886478  -0.000000015

   94    7.1  0.5 -0.5  -0.000003682  -0.000000433  -0.000004464  -0.000000096  -0.000003565   0.000000032   0.042476637   0.000000065
                        -0.000000395  -0.000000047  -0.000000078  -0.000000002   0.000004951  -0.000000044  -0.040034911   0.000000916


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5  -0.000001129   0.000164085   0.000001793  -0.000045651   0.000006034   0.000201049   0.000180137   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000030681   0.000000211   0.000051512   0.000002021   0.000162452  -0.000004875   0.000000000  -0.000105549
                         0.000103408   0.000000708   0.000094631   0.000003664   0.000060548  -0.000001826   0.000000003   0.000226427

    3    3.1  1.5  1.5   0.000159636   0.000001099  -0.000015516  -0.000000601   0.000008859  -0.000000264  -0.000000001  -0.000234454
                        -0.000047364  -0.000000326   0.000008446   0.000000331  -0.000023767   0.000000713   0.000000000  -0.000109291

    4    4.1  1.5  1.5  -0.000002254  -0.000000016   0.000121466   0.000004767  -0.000049730   0.000001492   0.000000000   0.000045519
                        -0.000007596  -0.000000056   0.000223139   0.000008671  -0.000018536   0.000000538   0.000000002  -0.000097650

    5    5.1  1.5  1.5   0.000000000   0.000000000  -0.000000016  -0.000000001  -0.000000006   0.000000000  -0.000000000  -0.000000001
                        -0.000000096   0.000014137   0.000003442  -0.000088446  -0.000000833  -0.000027686  -0.000037943   0.000000002

    6    6.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000010  -0.000000000  -0.000000005   0.000000000  -0.000000000   0.000000001
                         0.000000444  -0.000064590   0.000002080  -0.000053471  -0.000001031  -0.000034298   0.000294860  -0.000000002

    7    7.1  1.5  1.5   0.000000124  -0.000017758   0.000002879  -0.000074087  -0.000002178  -0.000072501  -0.000112382   0.000000003
                        -0.000000000  -0.000000000   0.000000015   0.000000001   0.000000006  -0.000000000  -0.000000000   0.000000001

    8    8.1  1.5  1.5  -0.000000762  -0.000000003  -0.000014406  -0.000000566  -0.000007784   0.000000236  -0.000000009   0.000001938
                         0.001084451  -0.157942666   0.003050736  -0.078445645  -0.001963089  -0.065304556   0.480257151  -0.000003439

    9    9.1  1.5  1.5   0.382082723   0.002629850  -0.035692797  -0.001383094   0.021491718  -0.000640622  -0.000001969  -0.380445971
                        -0.113363964  -0.000779952   0.019429402   0.000761936  -0.057661754   0.001730157   0.000000164  -0.177344842

   10   10.1  1.5  1.5  -0.060773293  -0.000418225   0.085829813   0.003370040  -0.377307471   0.011323995   0.000000989   0.179967250
                        -0.204830767  -0.001407364   0.157671979   0.006161773  -0.140629605   0.004213702  -0.000004136  -0.386071646

   11   11.1  1.5  1.5  -0.000117090   0.017499583   0.007474845  -0.192123006  -0.002952754  -0.098098454  -0.135252465   0.000005484
                        -0.000002440  -0.000000017   0.000036878   0.000001449   0.000012486  -0.000000378  -0.000000002  -0.000001057

   12   12.1  1.5  1.5   0.002720967  -0.395264820  -0.003191139   0.080981045  -0.015080870  -0.502468252  -0.316136684   0.000000624
                        -0.000000293  -0.000000009   0.000005295   0.000000207   0.000002007  -0.000000076  -0.000000006   0.000000347

   13   13.1  1.5  1.5   0.041866974   0.000286602   0.304084882   0.011933263   0.150988026  -0.004532380   0.000000419  -0.049847323
                         0.141108802   0.000959214   0.558618282   0.021688861   0.056274617  -0.001735368   0.000005566   0.106934111

   14   14.1  1.5  1.5   0.000002163   0.000000015   0.000037817   0.000001486   0.000032933  -0.000000991   0.000000001  -0.000005964
                         0.000004444   0.000168458  -0.009149326   0.234928636   0.002462822   0.081640011  -0.044609101   0.000013538

   15   15.1  1.5  1.5   0.000000017   0.000000000  -0.000000007  -0.000000000   0.000000014  -0.000000000   0.000000000   0.000000068
                         0.000000058   0.000000000  -0.000000012  -0.000000000   0.000000005  -0.000000000   0.000000000  -0.000000146

   16   16.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000030   0.000000000  -0.000000011   0.000000001   0.000000033   0.000000021  -0.000000000

   17   17.1  1.5  1.5  -0.000000000   0.000000017  -0.000000000   0.000000009   0.000000000   0.000000012  -0.000000040  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   18   18.1  1.5  1.5  -0.000000001   0.000000179   0.000000014  -0.000000369  -0.000000008  -0.000000273  -0.000000339   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   19   19.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000004  -0.000000590  -0.000000030   0.000000760  -0.000000013  -0.000000436   0.000000060  -0.000000000

   20   20.1  1.5  1.5  -0.000000080  -0.000000001  -0.000000069  -0.000000003   0.000000290  -0.000000009  -0.000000000  -0.000000210
                        -0.000000271  -0.000000002  -0.000000127  -0.000000005   0.000000108  -0.000000003   0.000000000   0.000000450

   21    1.1  1.5  0.5   0.000030558   0.000000210   0.000008046   0.000000316  -0.000064455   0.000001934  -0.000000000  -0.000000340
                         0.000102993   0.000000709   0.000014781   0.000000581  -0.000024023   0.000000721  -0.000000002   0.000000729

   22    2.1  1.5  0.5   0.000000261  -0.000037481   0.000004584  -0.000117953  -0.000003900  -0.000129835   0.000190051  -0.000000000
                        -0.000000000  -0.000000000   0.000000024   0.000000001   0.000000009  -0.000000000   0.000000000  -0.000000000

   23    3.1  1.5  0.5   0.000000001  -0.000000000  -0.000000027  -0.000000001  -0.000000010   0.000000000  -0.000000000  -0.000000001
                        -0.000000724   0.000105620   0.000006476  -0.000166261   0.000000536   0.000018004  -0.000112527   0.000000002

   24    4.1  1.5  0.5   0.000000099  -0.000014692  -0.000005700   0.000146432   0.000000959   0.000031828   0.000140718  -0.000000001
                         0.000000000   0.000000000  -0.000000025  -0.000000001  -0.000000010   0.000000000   0.000000000  -0.000000001

   25    5.1  1.5  0.5   0.000069623   0.000000479  -0.000054266  -0.000002124   0.000088140  -0.000002643  -0.000000001  -0.000100309
                        -0.000020657  -0.000000142   0.000029540   0.000001160  -0.000236478   0.000007097   0.000000000  -0.000046759

   26    6.1  1.5  0.5  -0.000049425  -0.000000341  -0.000028291  -0.000001104   0.000017741  -0.000000531  -0.000000003  -0.000096816
                         0.000014665   0.000000101   0.000015400   0.000000604  -0.000047600   0.000001429   0.000000000  -0.000045131

   27    7.1  1.5  0.5   0.000074602   0.000000513  -0.000045983  -0.000001804   0.000037998  -0.000001140   0.000000000  -0.000043126
                         0.000251439   0.000001730  -0.000084473  -0.000003281   0.000014163  -0.000000417   0.000000002   0.000092514

   28    8.1  1.5  0.5  -0.151481095  -0.001043331  -0.038216214  -0.001488078  -0.004397836   0.000134854  -0.000004216  -0.117780298
                         0.044944451   0.000309151   0.020803152   0.000816524   0.011799590  -0.000354084   0.000000399  -0.054903271

   29    9.1  1.5  0.5   0.000001446   0.000000006  -0.000064388  -0.000002531  -0.000024327   0.000000729   0.000000003  -0.000001722
                        -0.001738282   0.253748898   0.015486749  -0.397625683   0.001273897   0.042763579  -0.182843646   0.000003102

   30   10.1  1.5  0.5  -0.000340699   0.047264293  -0.017079653   0.439338392   0.008730084   0.290783879  -0.097912516   0.000008407
                        -0.000002432  -0.000000016  -0.000084825  -0.000003334  -0.000008303   0.000000258  -0.000000002   0.000002216

   31   11.1  1.5  0.5   0.187674167   0.001291831  -0.105762043  -0.004145427   0.066485210  -0.001991950  -0.000000691  -0.069230197
                         0.632538394   0.004351946  -0.194289514  -0.007543335   0.024780814  -0.000723785   0.000002115   0.148514888

   32   12.1  1.5  0.5  -0.045338848  -0.000311919  -0.035832407  -0.001406667   0.165935148  -0.004979933   0.000000265  -0.009981109
                        -0.152810374  -0.001052686  -0.065825156  -0.002573630   0.061847150  -0.001853293   0.000004140   0.021411803

   33   13.1  1.5  0.5   0.000577855  -0.083903434  -0.003760300   0.096296103  -0.004060175  -0.135351604   0.371105547  -0.000001518
                        -0.000000384  -0.000000004  -0.000010439  -0.000000411  -0.000004813   0.000000140   0.000000007  -0.000000893

   34   14.1  1.5  0.5  -0.137268652  -0.000945584   0.141606538   0.005522894  -0.215428631   0.006447492   0.000007402   0.193297856
                         0.040727619   0.000280019  -0.077084280  -0.003025763   0.577991753  -0.017346098  -0.000000213   0.090105772

   35   15.1  1.5  0.5  -0.000000000   0.000000013  -0.000000002   0.000000049   0.000000001   0.000000045  -0.000000023   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   36   16.1  1.5  0.5  -0.000000017  -0.000000000   0.000000009   0.000000000  -0.000000004   0.000000000  -0.000000000   0.000000022
                         0.000000005   0.000000000  -0.000000005  -0.000000000   0.000000010  -0.000000000   0.000000000   0.000000010

   37   17.1  1.5  0.5  -0.000000006  -0.000000000   0.000000017   0.000000001   0.000000017  -0.000000000   0.000000000   0.000000004
                        -0.000000021  -0.000000000   0.000000031   0.000000001   0.000000006  -0.000000000  -0.000000000  -0.000000008

   38   18.1  1.5  0.5  -0.000000082  -0.000000001  -0.000000226  -0.000000009  -0.000000874   0.000000026  -0.000000000   0.000000357
                        -0.000000275  -0.000000002  -0.000000414  -0.000000016  -0.000000326   0.000000010  -0.000000000  -0.000000765

   39   19.1  1.5  0.5   0.000000448   0.000000003  -0.000000855  -0.000000033  -0.000000005   0.000000000  -0.000000000   0.000000266
                        -0.000000133  -0.000000001   0.000000465   0.000000018   0.000000013  -0.000000000  -0.000000000   0.000000124

   40   20.1  1.5  0.5  -0.000000003   0.000000465  -0.000000003   0.000000083   0.000000017   0.000000567   0.000000208  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   41    1.1  1.5 -0.5  -0.000000740   0.000107430   0.000000662  -0.000016829   0.000002065   0.000068786   0.000000804   0.000000002
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001

   42    2.1  1.5 -0.5   0.000010661   0.000000074  -0.000056394  -0.000002213  -0.000121660   0.000003651  -0.000000000   0.000080297
                         0.000035933   0.000000250  -0.000103598  -0.000004014  -0.000045345   0.000001371  -0.000000000  -0.000172255

   43    3.1  1.5 -0.5  -0.000101257  -0.000000694  -0.000146028  -0.000005675   0.000006288  -0.000000178   0.000000002   0.000101990
                         0.000030043   0.000000206   0.000079490   0.000003120  -0.000016870   0.000000506  -0.000000000   0.000047543

   44    4.1  1.5 -0.5   0.000004179   0.000000028   0.000070010   0.000002747   0.000029824  -0.000000895  -0.000000000   0.000059453
                         0.000014085   0.000000095   0.000128612   0.000004994   0.000011116  -0.000000345  -0.000000001  -0.000127541

   45    5.1  1.5 -0.5   0.000000000  -0.000000000   0.000000003   0.000000000   0.000000002  -0.000000000   0.000000000  -0.000000001
                        -0.000000499   0.000072623  -0.000002420   0.000061786  -0.000007573  -0.000252370  -0.000110672   0.000000001

   46    6.1  1.5 -0.5   0.000000000  -0.000000000   0.000000003   0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000002
                         0.000000355  -0.000051555  -0.000001259   0.000032211  -0.000001524  -0.000050799  -0.000106818   0.000000003

   47    7.1  1.5 -0.5  -0.000001804   0.000262272  -0.000003744   0.000096178  -0.000001214  -0.000040552   0.000102072  -0.000000001
                        -0.000000000   0.000000000  -0.000000016  -0.000000001  -0.000000008   0.000000000   0.000000000  -0.000000001

   48    8.1  1.5 -0.5   0.000000389   0.000000005   0.000005685   0.000000224   0.000002699  -0.000000081   0.000000002  -0.000002143
                         0.001088170  -0.158007993  -0.001697367   0.043511494   0.000378885   0.012592509  -0.129948327   0.000003653

   49    9.1  1.5 -0.5  -0.243267197  -0.001666067  -0.349235496  -0.013571213   0.014935791  -0.000422112   0.000003540   0.165722635
                         0.072177378   0.000495831   0.190107212   0.007460946  -0.040070511   0.001202176  -0.000000250   0.077251585

   50   10.1  1.5 -0.5  -0.013444035  -0.000099242   0.210049834   0.008240481   0.272473368  -0.008177452  -0.000001543  -0.041368115
                        -0.045311933  -0.000325934   0.385872116   0.014960489   0.101555542  -0.003056748   0.000008556   0.088744238

   51   11.1  1.5 -0.5  -0.004539632   0.659792704  -0.008607281   0.221210364  -0.002119298  -0.070953308   0.163858146  -0.000002209
                        -0.000000584   0.000000007  -0.000034370  -0.000001353  -0.000017477   0.000000522   0.000000003  -0.000000267

   52   12.1  1.5 -0.5   0.001097925  -0.159394547  -0.002932961   0.074946064  -0.005313607  -0.177086260   0.023623883  -0.000003641
                        -0.000000396  -0.000000006  -0.000004992  -0.000000197  -0.000002642   0.000000074   0.000000000  -0.000001989

   53   13.1  1.5 -0.5   0.023865843   0.000164000   0.046039919   0.001807012  -0.126828492   0.003806188  -0.000000168   0.156792388
                         0.080437602   0.000554095   0.084576979   0.003297677  -0.047271453   0.001413500  -0.000001753  -0.336356171

   54   14.1  1.5 -0.5   0.000000514   0.000000006  -0.000016966  -0.000000667  -0.000016601   0.000000479  -0.000000004   0.000003320
                         0.000986174  -0.143183176   0.006297405  -0.161227782   0.018505594   0.616833820   0.213267699  -0.000006619

   55   15.1  1.5 -0.5  -0.000000004  -0.000000000   0.000000024   0.000000001   0.000000042  -0.000000001   0.000000000  -0.000000010
                        -0.000000012  -0.000000000   0.000000043   0.000000002   0.000000016  -0.000000000   0.000000000   0.000000021

   56   16.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000000017   0.000000000  -0.000000011   0.000000000   0.000000010   0.000000024   0.000000000

   57   17.1  1.5 -0.5   0.000000000  -0.000000022   0.000000001  -0.000000035  -0.000000001  -0.000000018  -0.000000009   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   58   18.1  1.5 -0.5   0.000000002  -0.000000287  -0.000000018   0.000000472   0.000000028   0.000000932  -0.000000844   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   59   19.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000003   0.000000467  -0.000000038   0.000000973   0.000000000   0.000000014   0.000000294   0.000000000

   60   20.1  1.5 -0.5  -0.000000132  -0.000000001   0.000000040   0.000000002   0.000000531  -0.000000016  -0.000000000   0.000000088
                        -0.000000446  -0.000000003   0.000000073   0.000000003   0.000000198  -0.000000006  -0.000000000  -0.000000189

   61    1.1  1.5 -1.5   0.000046673   0.000000321   0.000021826   0.000000857  -0.000188389   0.000005654   0.000000000  -0.000076108
                         0.000157307   0.000001083   0.000040095   0.000001575  -0.000070216   0.000002107  -0.000000000   0.000163270

   62    2.1  1.5 -1.5   0.000000739  -0.000107863  -0.000004185   0.000107743   0.000005206   0.000173369  -0.000249820   0.000000003
                         0.000000001   0.000000000  -0.000000023  -0.000000001  -0.000000008   0.000000000  -0.000000000   0.000000002

   63    3.1  1.5 -1.5   0.000000000   0.000000000  -0.000000003  -0.000000000  -0.000000002   0.000000000  -0.000000000   0.000000001
                         0.000001146  -0.000166514   0.000000686  -0.000017666   0.000000761   0.000025365   0.000258676  -0.000000001

   64    4.1  1.5 -1.5  -0.000000058   0.000007923  -0.000009895   0.000254057  -0.000001586  -0.000053072   0.000107738   0.000000002
                         0.000000001   0.000000000  -0.000000041  -0.000000002  -0.000000017   0.000000000   0.000000000   0.000000001

   65    5.1  1.5 -1.5   0.000013553   0.000000092   0.000077683   0.000003016   0.000009669  -0.000000297  -0.000000003  -0.000034390
                        -0.000004021  -0.000000028  -0.000042287  -0.000001659  -0.000025943   0.000000779   0.000000000  -0.000016031

   66    6.1  1.5 -1.5  -0.000061922  -0.000000425   0.000046964   0.000001822   0.000011978  -0.000000365   0.000000002   0.000267250
                         0.000018372   0.000000127  -0.000025565  -0.000001003  -0.000032139   0.000000965  -0.000000000   0.000124578

   67    7.1  1.5 -1.5  -0.000005051  -0.000000035   0.000035421   0.000001390   0.000067936  -0.000002039  -0.000000000   0.000047481
                        -0.000017024  -0.000000119   0.000065071   0.000002522   0.000025321  -0.000000766  -0.000000003  -0.000101859

   68    8.1  1.5 -1.5  -0.151418469  -0.001039438   0.068899011   0.002672571   0.022807286  -0.000692899   0.000003936   0.435287098
                         0.044925861   0.000309196  -0.037505272  -0.001471245  -0.061192424   0.001836755  -0.000000303   0.202909027

   69    9.1  1.5 -1.5   0.000000311   0.000000009  -0.000007935  -0.000000312  -0.000003972   0.000000117  -0.000000008   0.000000981
                         0.002743071  -0.398545601   0.001579061  -0.040638373   0.001844946   0.061536752   0.419750318  -0.000001716

   70   10.1  1.5 -1.5  -0.001468191   0.213656351  -0.007023135   0.179519385  -0.012082554  -0.402663151   0.425957189  -0.000004167
                        -0.000000632  -0.000000001  -0.000013888  -0.000000546  -0.000006520   0.000000183   0.000000008  -0.000000851

   71   11.1  1.5 -1.5   0.004977638   0.000035645   0.091854957   0.003606200   0.091921347  -0.002762459   0.000003275   0.057144274
                         0.016776726   0.000111560   0.168742159   0.006547518   0.034260367  -0.001042944  -0.000004524  -0.122587770

   72   12.1  1.5 -1.5  -0.112430766  -0.000773683  -0.038718156  -0.001521070   0.470827956  -0.014130530  -0.000000051   0.133568000
                        -0.378937463  -0.002608655  -0.071125481  -0.002805306   0.175486127  -0.005268850  -0.000000712  -0.286534453

   73   13.1  1.5 -1.5   0.001001113  -0.147188782  -0.024754738   0.636020440   0.004853051   0.161134157  -0.117981607   0.000004868
                         0.000001920   0.000000011  -0.000111279  -0.000004373  -0.000043166   0.000001301  -0.000000002   0.000002732

   74   14.1  1.5 -1.5   0.000161504  -0.000004876  -0.206338324  -0.008017764  -0.028511709   0.000890995  -0.000014790  -0.040432019
                        -0.000047903  -0.000000810   0.112320790   0.004407613   0.076499502  -0.002296237  -0.000000314  -0.018847380

   75   15.1  1.5 -1.5   0.000000000  -0.000000061   0.000000001  -0.000000014   0.000000000   0.000000015   0.000000161   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   76   16.1  1.5 -1.5   0.000000029   0.000000000   0.000000010   0.000000000  -0.000000012   0.000000000   0.000000000   0.000000019
                        -0.000000008  -0.000000000  -0.000000005  -0.000000000   0.000000031  -0.000000001  -0.000000000   0.000000009

   77   17.1  1.5 -1.5   0.000000005   0.000000000  -0.000000005  -0.000000000  -0.000000011   0.000000000  -0.000000000   0.000000017
                         0.000000016   0.000000000  -0.000000008  -0.000000000  -0.000000004   0.000000000  -0.000000000  -0.000000037

   78   18.1  1.5 -1.5   0.000000051   0.000000000   0.000000176   0.000000007   0.000000256  -0.000000008  -0.000000000   0.000000143
                         0.000000172   0.000000001   0.000000324   0.000000013   0.000000095  -0.000000003  -0.000000000  -0.000000307

   79   19.1  1.5 -1.5  -0.000000566  -0.000000004  -0.000000668  -0.000000026   0.000000152  -0.000000005   0.000000000   0.000000054
                         0.000000168   0.000000001   0.000000363   0.000000014  -0.000000408   0.000000012  -0.000000000   0.000000025

   80   20.1  1.5 -1.5  -0.000000002   0.000000282   0.000000006  -0.000000144   0.000000009   0.000000310  -0.000000497   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   81    1.1  0.5  0.5  -0.000213721   0.031037154   0.000994611  -0.025451877   0.001369828   0.045658046   0.046304479  -0.000000117
                         0.000000063   0.000000001   0.000002402   0.000000094   0.000001137  -0.000000033   0.000000001  -0.000000067

   82    2.1  0.5  0.5  -0.014467471  -0.000100828   0.046399881   0.001799232   0.012629752  -0.000383268   0.000000494   0.040636204
                         0.004292501   0.000029661  -0.025257814  -0.000991121  -0.033885855   0.001017059  -0.000000045   0.018942562

   83    3.1  0.5  0.5  -0.070960410  -0.000487934   0.014193646   0.000552813  -0.012023753   0.000359540  -0.000000300  -0.024693732
                         0.021053957   0.000144841  -0.007726378  -0.000303119   0.032259524  -0.000968075   0.000000018  -0.011510980

   84    4.1  0.5  0.5  -0.002737986  -0.000018725  -0.036364432  -0.001427107   0.030773564  -0.000923454  -0.000000018  -0.009377131
                        -0.009228132  -0.000062639  -0.066803034  -0.002597485   0.011470021  -0.000339148  -0.000000228   0.020116129

   85    5.1  0.5  0.5   0.014423159   0.000099166   0.005099294   0.000200108   0.050565859  -0.001517539  -0.000000001   0.012245291
                         0.048611923   0.000334022   0.009367752   0.000360950   0.018846788  -0.000566708  -0.000000106  -0.026269001

   86    6.1  0.5  0.5  -0.000000106  -0.000000001   0.000009430   0.000000371   0.000003821  -0.000000116  -0.000000000   0.000000247
                        -0.000215388   0.031194254  -0.001742653   0.044857151   0.001681903   0.055990927   0.006707760  -0.000000419

   87    7.1  0.5  0.5  -0.000317890   0.046305179   0.001120134  -0.028715118   0.000815975   0.027204684  -0.028075337   0.000000580
                        -0.000000159  -0.000000000   0.000003820   0.000000150   0.000001277  -0.000000037  -0.000000001   0.000000332

   88    1.1  0.5 -0.5   0.008828337   0.000060731   0.012168753   0.000477645  -0.042782957   0.001283967   0.000000011  -0.019563679
                         0.029755090   0.000204911   0.022354406   0.000872418  -0.015946027   0.000477345   0.000000134   0.041968646

   89    2.1  0.5 -0.5  -0.000000244  -0.000000002   0.000010267   0.000000403   0.000003927  -0.000000119   0.000000001  -0.000000250
                        -0.000105100   0.015090834  -0.002054131   0.052829027   0.001086870   0.036162989  -0.044834381   0.000000429

   90    3.1  0.5 -0.5   0.000000068  -0.000000001   0.000001923   0.000000076   0.000001199  -0.000000035  -0.000000001   0.000000143
                        -0.000508978   0.074017896  -0.000630460   0.016160337  -0.001032685  -0.034427424   0.027244872  -0.000000265

   91    4.1  0.5 -0.5  -0.000065378   0.009625746   0.002963685  -0.076059301   0.000983751   0.032841645  -0.022194351  -0.000000199
                        -0.000000134  -0.000000001   0.000011539   0.000000454   0.000004723  -0.000000141  -0.000000000  -0.000000113

   92    5.1  0.5 -0.5   0.000348432  -0.050706475  -0.000412696   0.010665719   0.001619902   0.053963946   0.028982884  -0.000000096
                         0.000000060  -0.000000000  -0.000003181  -0.000000125  -0.000001024   0.000000032   0.000000001  -0.000000045

   93    6.1  0.5 -0.5   0.029905701   0.000206521  -0.039398174  -0.001526062  -0.019554629   0.000590982   0.000000484   0.006079663
                        -0.008873024  -0.000061164   0.021446397   0.000841465   0.052465231  -0.001574660  -0.000000047   0.002834034

   94    7.1  0.5 -0.5   0.013171236   0.000090574   0.013728898   0.000538904  -0.025491598   0.000765039  -0.000000056   0.011861852
                         0.044392433   0.000304714   0.025220535   0.000981986  -0.009501226   0.000283781  -0.000000666  -0.025446434


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5  -0.000190712   0.000002712   0.000149326   0.000011467   0.000063117   0.000008807  -0.000141626   0.000011017
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000001360  -0.000095616  -0.000007207   0.000093847  -0.000017566   0.000125896  -0.000003749  -0.000048191
                        -0.000000026  -0.000001375   0.000006581  -0.000085862   0.000016032  -0.000114839  -0.000001003  -0.000012934

    3    3.1  1.5  1.5   0.000000015   0.000001107   0.000004610  -0.000060021  -0.000016397   0.000117470   0.000002740   0.000035263
                        -0.000001095  -0.000077002   0.000005038  -0.000065603  -0.000017969   0.000128780  -0.000010221  -0.000131392

    4    4.1  1.5  1.5   0.000000114   0.000007996  -0.000015829   0.000206122   0.000007240  -0.000051890   0.000011221   0.000144251
                        -0.000000008   0.000000115   0.000014468  -0.000188584  -0.000006605   0.000047334   0.000003012   0.000038714

    5    5.1  1.5  1.5  -0.000000000  -0.000000009  -0.000000001   0.000000011  -0.000000002   0.000000012   0.000000001   0.000000007
                         0.000051537  -0.000000733   0.000237435   0.000018223  -0.000179586  -0.000025068  -0.000255478   0.000019876

    6    6.1  1.5  1.5  -0.000000000  -0.000000003  -0.000000000   0.000000001   0.000000001  -0.000000004  -0.000000000  -0.000000002
                         0.000056977  -0.000000810   0.000047805   0.000003670   0.000129041   0.000018009  -0.000060673   0.000004719

    7    7.1  1.5  1.5   0.000092221  -0.000001311   0.000202572   0.000015546  -0.000212355  -0.000029641  -0.000221631   0.000017243
                         0.000000000   0.000000009   0.000000001  -0.000000011   0.000000002  -0.000000013  -0.000000001  -0.000000007

    8    8.1  1.5  1.5  -0.000000025  -0.000001669   0.000000171  -0.000002235   0.000001550  -0.000011226  -0.000000481  -0.000006192
                         0.071808476  -0.001021031  -0.008194121  -0.000627819   0.279726697   0.039040177  -0.006232880   0.000482852

    9    9.1  1.5  1.5   0.000023844   0.001789149   0.007512852  -0.097827522  -0.027794169   0.199122008   0.004651233   0.059848769
                        -0.001769122  -0.124405332   0.008211004  -0.106925796  -0.030458358   0.218293531  -0.017347335  -0.222999401

   10   10.1  1.5  1.5   0.001830582   0.128790212  -0.006941777   0.090357127   0.030933730  -0.221679091   0.016866054   0.216767066
                         0.000021277   0.001852259   0.006333405  -0.082670068  -0.028214868   0.202212059   0.004539967   0.058174747

   11   11.1  1.5  1.5   0.100845572  -0.001432845   0.361529008   0.027747643  -0.339048766  -0.047327662  -0.407568284   0.031711243
                         0.000000214   0.000014954   0.000001437  -0.000018755   0.000002670  -0.000019275  -0.000000858  -0.000011140

   12   12.1  1.5  1.5   0.328595093  -0.004672594  -0.189546884  -0.014558719  -0.160019102  -0.022330509   0.180180293  -0.014016043
                         0.000000040   0.000002362   0.000000210  -0.000002714   0.000000443  -0.000003247  -0.000000142  -0.000001782

   13   13.1  1.5  1.5  -0.001240289  -0.087253122  -0.027327158   0.355847728  -0.009127889   0.065420974   0.010811395   0.138974467
                        -0.000036542  -0.001254558   0.024971434  -0.325571258   0.008334702  -0.059674679   0.002905130   0.037297593

   14   14.1  1.5  1.5   0.000000152   0.000010559   0.000001674  -0.000021839   0.000001188  -0.000008615  -0.000001493  -0.000019313
                        -0.101585285   0.001444357  -0.393352771  -0.030186931   0.249501637   0.034819775   0.445666081  -0.034675013

   15   15.1  1.5  1.5   0.000000001   0.000000049  -0.000000001   0.000000011   0.000000017  -0.000000118   0.000000007   0.000000095
                        -0.000000000   0.000000001   0.000000001  -0.000000010  -0.000000015   0.000000108   0.000000002   0.000000025

   16   16.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000032   0.000000000  -0.000000018  -0.000000001   0.000000061   0.000000008   0.000000065  -0.000000005

   17   17.1  1.5  1.5  -0.000000026   0.000000000  -0.000000054  -0.000000004   0.000000047   0.000000007   0.000000105  -0.000000008
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   18   18.1  1.5  1.5   0.000000023  -0.000000000   0.000000458   0.000000035   0.000000146   0.000000020  -0.000000091   0.000000007
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   19   19.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000037  -0.000000001  -0.000000598  -0.000000046   0.000000175   0.000000024  -0.000000070   0.000000005

   20   20.1  1.5  1.5  -0.000000003  -0.000000177   0.000000010  -0.000000127  -0.000000017   0.000000123  -0.000000010  -0.000000123
                        -0.000000000  -0.000000003  -0.000000009   0.000000116   0.000000016  -0.000000113  -0.000000003  -0.000000033

   21    1.1  1.5  0.5   0.000001449   0.000101949   0.000013846  -0.000180306  -0.000010593   0.000075918  -0.000019045  -0.000244824
                         0.000000032   0.000001466  -0.000012651   0.000164965   0.000009662  -0.000069251  -0.000005112  -0.000065706

   22    2.1  1.5  0.5   0.000154361  -0.000002195   0.000116374   0.000008930   0.000256119   0.000035746   0.000010227  -0.000000797
                         0.000000000   0.000000008   0.000000001  -0.000000007  -0.000000001   0.000000011   0.000000000   0.000000006

   23    3.1  1.5  0.5   0.000000000   0.000000002  -0.000000000   0.000000001   0.000000001  -0.000000009  -0.000000000  -0.000000005
                        -0.000223713   0.000003181   0.000133614   0.000010260   0.000135485   0.000018912   0.000175285  -0.000013637

   24    4.1  1.5  0.5  -0.000228113   0.000003244   0.000003712   0.000000291   0.000085953   0.000011992  -0.000253862   0.000019749
                        -0.000000000  -0.000000006  -0.000000001   0.000000007   0.000000000  -0.000000001  -0.000000000  -0.000000001

   25    5.1  1.5  0.5  -0.000000066  -0.000004208  -0.000002733   0.000035511  -0.000002618   0.000018752   0.000000077   0.000000995
                         0.000004160   0.000292579  -0.000002981   0.000038814  -0.000002868   0.000020558  -0.000000288  -0.000003708

   26    6.1  1.5  0.5   0.000000029   0.000001318  -0.000011458   0.000149422  -0.000025893   0.000185472   0.000000762   0.000009870
                        -0.000001304  -0.000091687  -0.000012542   0.000163317  -0.000028370   0.000203330  -0.000002860  -0.000036773

   27    7.1  1.5  0.5   0.000004048   0.000284699  -0.000005041   0.000065639   0.000002527  -0.000018108   0.000004535   0.000058302
                         0.000000063   0.000004094   0.000004615  -0.000060053  -0.000002305   0.000016518   0.000001217   0.000015647

   28    8.1  1.5  0.5   0.000068663   0.003569260  -0.017175313   0.224015908  -0.041861549   0.299854379   0.001233224   0.015979268
                        -0.003529084  -0.248203097  -0.018802800   0.244847693  -0.045866515   0.328725511  -0.004631005  -0.059537074

   29    9.1  1.5  0.5   0.000000040   0.000002351  -0.000000093   0.000001232   0.000002028  -0.000014632  -0.000000623  -0.000008083
                        -0.362966520   0.005161313   0.216872876   0.016653969   0.229565817   0.032044003   0.297373315  -0.023135886

   30   10.1  1.5  0.5  -0.426964567   0.006067374  -0.143705859  -0.011026267  -0.247938058  -0.034612156  -0.282616922   0.021987512
                        -0.000000503  -0.000034814  -0.000000831   0.000010833   0.000002757  -0.000019862  -0.000000584  -0.000007587

   31   11.1  1.5  0.5   0.006840309   0.481315814  -0.004676156   0.060869977   0.001491412  -0.010703985   0.002693397   0.034655414
                         0.000108520   0.006921863   0.004286907  -0.055689934  -0.001362260   0.009763731   0.000723579   0.009300739

   32   12.1  1.5  0.5  -0.001329989  -0.093555791  -0.023441853   0.305255982   0.018369943  -0.131654754   0.033055623   0.424921835
                        -0.000035652  -0.001345231   0.021421332  -0.279283972  -0.016755962   0.120093240   0.008871822   0.114040198

   33   13.1  1.5  0.5  -0.131205175   0.001865683   0.123188298   0.009460902   0.385589870   0.053810235  -0.324014516   0.025204096
                         0.000000006   0.000000596  -0.000000077   0.000000997  -0.000001352   0.000009858   0.000000427   0.000005418

   34   14.1  1.5  0.5   0.000112597   0.006202871   0.008382860  -0.109031021   0.013924010  -0.099660767  -0.000398682  -0.005324152
                        -0.006133398  -0.431335388   0.009152180  -0.119171999   0.015244601  -0.109258100   0.001542741   0.019833712

   35   15.1  1.5  0.5  -0.000000054   0.000000001  -0.000000080  -0.000000006  -0.000000130  -0.000000018  -0.000000061   0.000000005
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   36   16.1  1.5  0.5   0.000000000   0.000000001   0.000000002  -0.000000022   0.000000002  -0.000000011   0.000000000   0.000000002
                        -0.000000001  -0.000000060   0.000000002  -0.000000024   0.000000002  -0.000000012  -0.000000001  -0.000000007

   37   17.1  1.5  0.5  -0.000000001  -0.000000078   0.000000001  -0.000000018   0.000000002  -0.000000012  -0.000000001  -0.000000010
                        -0.000000000  -0.000000001  -0.000000001   0.000000016  -0.000000002   0.000000011  -0.000000000  -0.000000003

   38   18.1  1.5  0.5  -0.000000002  -0.000000143   0.000000019  -0.000000251  -0.000000012   0.000000089  -0.000000017  -0.000000214
                        -0.000000000  -0.000000002  -0.000000018   0.000000230   0.000000011  -0.000000081  -0.000000004  -0.000000058

   39   19.1  1.5  0.5  -0.000000000  -0.000000006  -0.000000037   0.000000480  -0.000000023   0.000000163   0.000000001   0.000000018
                         0.000000006   0.000000450  -0.000000040   0.000000524  -0.000000025   0.000000178  -0.000000005  -0.000000068

   40   20.1  1.5  0.5  -0.000000020   0.000000000  -0.000000602  -0.000000046   0.000000260   0.000000036   0.000000324  -0.000000025
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   41    1.1  1.5 -0.5   0.000101960  -0.000001450   0.000244384   0.000018756  -0.000102758  -0.000014338   0.000253488  -0.000019719
                         0.000000000   0.000000011   0.000000001  -0.000000012  -0.000000000   0.000000000   0.000000000   0.000000000

   42    2.1  1.5 -0.5  -0.000002195  -0.000154345  -0.000006593   0.000085860  -0.000026402   0.000189222   0.000000769   0.000009877
                        -0.000000040  -0.000002220   0.000006023  -0.000078555   0.000024098  -0.000172603   0.000000212   0.000002650

   43    3.1  1.5 -0.5   0.000000047   0.000003217   0.000006925  -0.000090192   0.000012751  -0.000091306   0.000003540   0.000045435
                        -0.000003181  -0.000223690   0.000007571  -0.000098580   0.000013966  -0.000100098  -0.000013170  -0.000169294

   44    4.1  1.5 -0.5   0.000003243   0.000228090  -0.000000210   0.000002739  -0.000008861   0.000063502  -0.000019073  -0.000245186
                         0.000000053   0.000003280   0.000000201  -0.000002505   0.000008081  -0.000057926  -0.000005120  -0.000065803

   45    5.1  1.5 -0.5   0.000000000   0.000000006   0.000000000  -0.000000004   0.000000000  -0.000000001  -0.000000000  -0.000000001
                        -0.000292610   0.000004161   0.000052608   0.000004044   0.000027825   0.000003883  -0.000003839   0.000000298

   46    6.1  1.5 -0.5  -0.000000000  -0.000000010  -0.000000001   0.000000012   0.000000001  -0.000000010  -0.000000000  -0.000000006
                         0.000091696  -0.000001304   0.000221358   0.000016988   0.000275215   0.000038410  -0.000038074   0.000002960

   47    7.1  1.5 -0.5   0.000284729  -0.000004049  -0.000088965  -0.000006835   0.000024510   0.000003420  -0.000060365   0.000004696
                         0.000000000   0.000000005   0.000000000  -0.000000003   0.000000000  -0.000000000  -0.000000000  -0.000000000

   48    8.1  1.5 -0.5  -0.000000259  -0.000017908  -0.000001559   0.000020342   0.000002337  -0.000016943  -0.000000725  -0.000009312
                         0.248228759  -0.003529707   0.331863707   0.025466375   0.444941693   0.062097715  -0.061644142   0.004792386

   49    9.1  1.5 -0.5   0.000076571   0.005219403   0.011240859  -0.146393675   0.021605977  -0.154708013   0.006004780   0.077080522
                        -0.005160745  -0.362928991   0.012288115  -0.160008551   0.023664322  -0.169605115  -0.022343050  -0.287209821

   50   10.1  1.5 -0.5   0.006066246   0.426920428   0.008142483  -0.106025493   0.025558155  -0.183179060  -0.021234054  -0.272957764
                         0.000122059   0.006139229  -0.007434962   0.097004993  -0.023340576   0.167088937  -0.005706635  -0.073255605

   51   11.1  1.5 -0.5   0.481365584  -0.006841163  -0.082501654  -0.006343813   0.014488124   0.002019916  -0.035881770   0.002788899
                         0.000000154   0.000010145   0.000000490  -0.000006375  -0.000000187   0.000001345  -0.000000054  -0.000000702

   52   12.1  1.5 -0.5  -0.093565462   0.001330364  -0.413739956  -0.031755214   0.178200338   0.024863971  -0.439958785   0.034225479
                        -0.000000237  -0.000016523  -0.000001462   0.000019088   0.000000091  -0.000000571  -0.000000020  -0.000000364

   53   13.1  1.5 -0.5   0.001865499   0.131191609  -0.006979572   0.090888268  -0.039748480   0.284875585  -0.024344073  -0.312940205
                         0.000026233   0.001886731   0.006387037  -0.083154552   0.036271198  -0.259856593  -0.006527835  -0.083987111

   54   14.1  1.5 -0.5  -0.000000355  -0.000024387  -0.000000536   0.000006959  -0.000001863   0.000013415   0.000001154   0.000014832
                         0.431379986  -0.006134383  -0.161523153  -0.012411072  -0.147883741  -0.020646446   0.020535889  -0.001593354

   55   15.1  1.5 -0.5   0.000000001   0.000000054   0.000000005  -0.000000059   0.000000013  -0.000000096  -0.000000005  -0.000000059
                         0.000000000   0.000000001  -0.000000004   0.000000054  -0.000000012   0.000000087  -0.000000001  -0.000000016

   56   16.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000060  -0.000000001  -0.000000033  -0.000000003  -0.000000017  -0.000000002  -0.000000008   0.000000001

   57   17.1  1.5 -0.5  -0.000000078   0.000000001   0.000000024   0.000000002   0.000000016   0.000000002   0.000000011  -0.000000001
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   58   18.1  1.5 -0.5  -0.000000143   0.000000002   0.000000341   0.000000026  -0.000000121  -0.000000017   0.000000222  -0.000000017
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   59   19.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000450   0.000000006   0.000000711   0.000000055   0.000000241   0.000000034  -0.000000070   0.000000005

   60   20.1  1.5 -0.5   0.000000000   0.000000020   0.000000034  -0.000000444  -0.000000027   0.000000192   0.000000024   0.000000313
                         0.000000000   0.000000000  -0.000000031   0.000000406   0.000000024  -0.000000175   0.000000007   0.000000084

   61    1.1  1.5 -1.5  -0.000002712  -0.000190693   0.000008461  -0.000110173   0.000006506  -0.000046631   0.000010641   0.000136785
                        -0.000000039  -0.000002742  -0.000007741   0.000100798  -0.000005935   0.000042536   0.000002856   0.000036710

   62    2.1  1.5 -1.5   0.000095626  -0.000001360   0.000127199   0.000009760   0.000170404   0.000023782  -0.000049897   0.000003880
                         0.000000000   0.000000007   0.000000001  -0.000000009  -0.000000001   0.000000006   0.000000000   0.000000003

   63    3.1  1.5 -1.5  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000001   0.000000005   0.000000000   0.000000003
                        -0.000077010   0.000001095   0.000088917   0.000006828  -0.000174309  -0.000024326   0.000136042  -0.000010582

   64    4.1  1.5 -1.5  -0.000007997   0.000000114   0.000279375   0.000021445  -0.000070236  -0.000009800   0.000149356  -0.000011619
                         0.000000000   0.000000009   0.000000001  -0.000000010   0.000000000  -0.000000000  -0.000000000  -0.000000000

   65    5.1  1.5 -1.5   0.000000020   0.000000741  -0.000012293   0.000160274   0.000016902  -0.000121026   0.000005158   0.000066221
                        -0.000000733  -0.000051532  -0.000013453   0.000175179   0.000018512  -0.000132680  -0.000019195  -0.000246746

   66    6.1  1.5 -1.5   0.000000015   0.000000819  -0.000002476   0.000032269  -0.000012140   0.000086963   0.000001221   0.000015727
                        -0.000000810  -0.000056972  -0.000002708   0.000035270  -0.000013302   0.000095336  -0.000004558  -0.000058600

   67    7.1  1.5 -1.5   0.000001311   0.000092211   0.000011477  -0.000149457  -0.000021890   0.000156890   0.000016652   0.000214056
                         0.000000028   0.000001326  -0.000010486   0.000136741   0.000019985  -0.000143109   0.000004476   0.000057448

   68    8.1  1.5 -1.5   0.000016352   0.001032577   0.000422141  -0.005531325  -0.026318338   0.188512900   0.000119178   0.001616069
                        -0.001020902  -0.071801051   0.000464713  -0.006045500  -0.028835406   0.206663765  -0.000467954  -0.006019728

   69    9.1  1.5 -1.5  -0.000000021  -0.000001598   0.000000030  -0.000000381  -0.000001075   0.000007830   0.000000337   0.000004281
                        -0.124418197   0.001769282   0.144925325   0.011129399  -0.295468509  -0.041233813   0.230890901  -0.017960066

   70   10.1  1.5 -1.5  -0.128803531   0.001830699   0.122469387   0.009396815  -0.300052223  -0.041868537   0.224437658  -0.017466394
                         0.000000069   0.000005049   0.000001002  -0.000013060  -0.000000258   0.000001720   0.000001008   0.000013007

   71   11.1  1.5 -1.5   0.001432482   0.100835148   0.020484846  -0.266734809  -0.034952794   0.250491799   0.030624525   0.393638597
                         0.000035557   0.001449941  -0.018716387   0.244040500   0.031909405  -0.228490534   0.008230522   0.105643557

   72   12.1  1.5 -1.5   0.004672077   0.328561117  -0.010739578   0.139847663  -0.016495643   0.118222776  -0.013537463  -0.174022036
                         0.000069554   0.004725144   0.009829434  -0.127947850   0.015051426  -0.107840106  -0.003631330  -0.046704057

   73   13.1  1.5 -1.5   0.087262141  -0.001240686   0.482311361   0.037018179   0.088549258   0.012360646   0.143892365  -0.011194911
                         0.000000267   0.000018703   0.000001723  -0.000022486  -0.000000861   0.000006209   0.000000266   0.000003454

   74   14.1  1.5 -1.5  -0.000031328  -0.001460640   0.020360679  -0.265522363  -0.023472186   0.168143827  -0.009006644  -0.115518143
                         0.001444056   0.101574784   0.022286632  -0.290214192  -0.025719124   0.184333178   0.033484881   0.430434448

   75   15.1  1.5 -1.5  -0.000000049   0.000000001   0.000000015   0.000000001  -0.000000160  -0.000000022   0.000000098  -0.000000008
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   76   16.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000001  -0.000000012  -0.000000006   0.000000041  -0.000000001  -0.000000017
                         0.000000000   0.000000032   0.000000001  -0.000000013  -0.000000006   0.000000045   0.000000005   0.000000063

   77   17.1  1.5 -1.5  -0.000000000  -0.000000026  -0.000000003   0.000000040   0.000000005  -0.000000035  -0.000000008  -0.000000101
                        -0.000000000  -0.000000000   0.000000003  -0.000000037  -0.000000004   0.000000032  -0.000000002  -0.000000027

   78   18.1  1.5 -1.5   0.000000000   0.000000023   0.000000026  -0.000000338   0.000000015  -0.000000108   0.000000007   0.000000088
                         0.000000000   0.000000000  -0.000000024   0.000000309  -0.000000014   0.000000098   0.000000002   0.000000024

   79   19.1  1.5 -1.5  -0.000000000   0.000000001   0.000000031  -0.000000404  -0.000000016   0.000000118   0.000000001   0.000000018
                        -0.000000001  -0.000000037   0.000000034  -0.000000442  -0.000000018   0.000000129  -0.000000005  -0.000000067

   80   20.1  1.5 -1.5   0.000000177  -0.000000003  -0.000000172  -0.000000013   0.000000167   0.000000023  -0.000000127   0.000000010
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   81    1.1  0.5  0.5  -0.016469425   0.000234202   0.024684412   0.001895361  -0.000002409  -0.000000336  -0.000020216   0.000001573
                         0.000000005   0.000000398   0.000000018  -0.000000237   0.000000000  -0.000000000  -0.000000000  -0.000000001

   82    2.1  0.5  0.5  -0.000007074  -0.000409620   0.000742926  -0.009702643  -0.000002322   0.000016646   0.000000840   0.000010785
                         0.000405019   0.028483819   0.000814407  -0.010604832  -0.000002546   0.000018248  -0.000003126  -0.000040187

   83    3.1  0.5  0.5  -0.000010598  -0.000676513  -0.000434873   0.005651440  -0.000000451   0.000003229   0.000000139   0.000001796
                         0.000668905   0.047041720  -0.000474420   0.006177108  -0.000000494   0.000003540  -0.000000521  -0.000006693

   84    4.1  0.5  0.5  -0.000386755  -0.027196960   0.002394028  -0.031174641   0.000002452  -0.000017570   0.000001001   0.000012865
                        -0.000004858  -0.000391141  -0.002189155   0.028522105  -0.000002237   0.000016027   0.000000269   0.000003453

   85    5.1  0.5  0.5  -0.000636559  -0.044767972  -0.000763148   0.009938304   0.000000798  -0.000005716   0.000000029   0.000000374
                        -0.000010815  -0.000643804   0.000696296  -0.009092809  -0.000000729   0.000005214   0.000000007   0.000000100

   86    6.1  0.5  0.5   0.000000034   0.000002346   0.000000200  -0.000002606   0.000000000  -0.000000001  -0.000000000  -0.000000001
                        -0.030479135   0.000433398  -0.045161635  -0.003465729   0.000034337   0.000004792   0.000009388  -0.000000731

   87    7.1  0.5  0.5  -0.009527734   0.000135487   0.046129348   0.003540818  -0.000019354  -0.000002701  -0.000018959   0.000001475
                         0.000000018   0.000001307   0.000000140  -0.000001830   0.000000000  -0.000000001  -0.000000000  -0.000000001

   88    1.1  0.5 -0.5  -0.000234184  -0.016467722   0.001398556  -0.018212125  -0.000000248   0.000001779   0.000001519   0.000019525
                        -0.000002969  -0.000236835  -0.001279232   0.016662494   0.000000227  -0.000001623   0.000000409   0.000005240

   89    2.1  0.5 -0.5  -0.000000018  -0.000001249  -0.000000124   0.000001612   0.000000000  -0.000000000  -0.000000000  -0.000000001
                         0.028486764  -0.000405078   0.014373717   0.001102359  -0.000024700  -0.000003446   0.000041609  -0.000003237

   90    3.1  0.5 -0.5  -0.000000015  -0.000000978  -0.000000047   0.000000605  -0.000000000   0.000000001   0.000000000   0.000000001
                         0.047046584  -0.000668988  -0.008372302  -0.000643575  -0.000004791  -0.000000669   0.000006930  -0.000000539

   91    4.1  0.5 -0.5   0.027199772  -0.000386785  -0.042253624  -0.003244036  -0.000023782  -0.000003319   0.000013320  -0.000001036
                        -0.000000010  -0.000000705  -0.000000066   0.000000861   0.000000000  -0.000000001   0.000000000   0.000000000

   92    5.1  0.5 -0.5   0.044772601  -0.000636649   0.013470303   0.001033064  -0.000007737  -0.000001080   0.000000387  -0.000000030
                         0.000000024   0.000001660   0.000000108  -0.000001414   0.000000000  -0.000000001  -0.000000000  -0.000000001

   93    6.1  0.5 -0.5  -0.000008578  -0.000438255   0.002337515  -0.030485170  -0.000003230   0.000023140  -0.000000190  -0.000002433
                         0.000433320   0.030475984   0.002558771  -0.033320079  -0.000003540   0.000025368   0.000000705   0.000009067

   94    7.1  0.5 -0.5  -0.000135491  -0.009526749   0.002613648  -0.034034097  -0.000001995   0.000014299   0.000001425   0.000018311
                        -0.000000641  -0.000137027  -0.002388774   0.031138352   0.000001821  -0.000013043   0.000000383   0.000004914


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5  -0.000000000   0.000763624   0.000285742  -0.000001135   0.000000003   0.000094672  -0.000000000   0.000731900
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000423501  -0.000000000  -0.000001110  -0.000279577   0.000762882  -0.000000024   0.000007211   0.000000000
                        -0.000454562   0.000000000  -0.000000818  -0.000206145   0.000014416  -0.000000002   0.000063300   0.000000000

    3    3.1  1.5  1.5   0.000451668  -0.000000000   0.000000094   0.000023660   0.000012644  -0.000000002  -0.000121670   0.000000000
                         0.000420804  -0.000000000  -0.000000127  -0.000032089  -0.000669073   0.000000021   0.000013860   0.000000000

    4    4.1  1.5  1.5  -0.000023443   0.000000000  -0.000003429  -0.000863337  -0.000097193   0.000000003   0.000006450  -0.000000000
                         0.000025163   0.000000000  -0.000002528  -0.000636577  -0.000001837   0.000000001   0.000056624  -0.000000000

    5    5.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.000062044   0.000355389  -0.000001412   0.000000004   0.000133758   0.000000000  -0.000065164

    6    6.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000   0.000594821   0.000268959  -0.000001068  -0.000000001  -0.000036413   0.000000000  -0.000911071

    7    7.1  1.5  1.5  -0.000000000  -0.000307189   0.000267586  -0.000001063   0.000000004   0.000118002   0.000000000  -0.000147266
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    8    8.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000013   0.000000008   0.000000000  -0.000000000   0.000000000
                        -0.000000003  -0.038530555  -0.012006023   0.000047679   0.000000132   0.004192446  -0.000000005   0.056724728

    9    9.1  1.5  1.5  -0.029297575   0.000000004  -0.000006134  -0.001538718  -0.000820019   0.000000127   0.007879532  -0.000000004
                        -0.027295593   0.000000001   0.000008290   0.002086836   0.043393639  -0.000001377  -0.000897595   0.000000000

   10   10.1  1.5  1.5   0.022376168  -0.000000108   0.000083167   0.020893911   0.042540178  -0.000001275   0.000101509  -0.000000019
                        -0.024017337   0.000000190   0.000062330   0.015406022   0.000803891   0.000000208   0.000891092  -0.000000717

   11   11.1  1.5  1.5   0.000000192   0.012172846  -0.019963379   0.000079482   0.000000096  -0.008497956  -0.000000001   0.002213653
                        -0.000000207  -0.000000000   0.000000001   0.000000145   0.000000020  -0.000000000   0.000000007   0.000000000

   12   12.1  1.5  1.5   0.000000008   0.051953321   0.015674320  -0.000062276   0.000000164   0.004905655  -0.000000001   0.048358690
                        -0.000000005  -0.000000000  -0.000000000  -0.000000013  -0.000000000  -0.000000000   0.000000002   0.000000000

   13   13.1  1.5  1.5  -0.016033338   0.000000015   0.000218379   0.054976350  -0.026077309   0.000000828  -0.000619097   0.000000014
                         0.017209295  -0.000000008   0.000160998   0.040536550  -0.000492788   0.000000044  -0.005434737   0.000000008

   14   14.1  1.5  1.5  -0.000000953   0.000000000  -0.000000004  -0.000000894  -0.000001806   0.000000000  -0.000000004   0.000000000
                         0.000001023   0.004468507   0.026298589  -0.000105119   0.000000218   0.007954213  -0.000000033  -0.017007165

   15   15.1  1.5  1.5  -0.000000294  -0.000000000  -0.000000000  -0.000000050   0.000000073  -0.000000000  -0.000000008  -0.000000000
                         0.000000316  -0.000000000  -0.000000000  -0.000000037   0.000000001   0.000000000  -0.000000070  -0.000000000

   16   16.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000042   0.000000092  -0.000000000   0.000000000   0.000000041  -0.000000000   0.000000128

   17   17.1  1.5  1.5  -0.000000000  -0.000000281  -0.000000111   0.000000000  -0.000000000   0.000000011  -0.000000000   0.000000290
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   18   18.1  1.5  1.5   0.000000000  -0.000000302   0.000000022  -0.000000000   0.000000000   0.000000054   0.000000000   0.000000186
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   19   19.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000   0.000000019  -0.000000131   0.000000001  -0.000000000  -0.000000044   0.000000000   0.000000075

   20   20.1  1.5  1.5   0.000000015  -0.000000000  -0.000000000  -0.000000011  -0.000000009   0.000000000   0.000000000  -0.000000000
                        -0.000000016   0.000000000  -0.000000000  -0.000000008  -0.000000000   0.000000000   0.000000004   0.000000000

   21    1.1  1.5  0.5  -0.000432513   0.000000000  -0.000000413  -0.000104002   0.000240639  -0.000000008   0.000009413   0.000000000
                         0.000464235  -0.000000000  -0.000000304  -0.000076685   0.000004547  -0.000000001   0.000082631   0.000000000

   22    2.1  1.5  0.5  -0.000000000  -0.000567983   0.000415411  -0.000001650   0.000000006   0.000189834   0.000000000  -0.000258660
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   23    3.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000196670   0.000668399  -0.000002655   0.000000010   0.000314251   0.000000000   0.000510981

   24    4.1  1.5  0.5   0.000000000  -0.000158103  -0.000612334   0.000002432  -0.000000006  -0.000187680  -0.000000000   0.000307478
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   25    5.1  1.5  0.5  -0.000052411  -0.000000000   0.000000773   0.000194485   0.000016589  -0.000000003  -0.000804926   0.000000000
                        -0.000048829   0.000000000  -0.000001048  -0.000263764  -0.000877872   0.000000028   0.000091693  -0.000000000

   26    6.1  1.5  0.5  -0.000440030   0.000000000   0.000000454   0.000114241  -0.000002026   0.000000000   0.000153719   0.000000000
                        -0.000409962   0.000000000  -0.000000615  -0.000154936   0.000107229  -0.000000003  -0.000017511  -0.000000000

   27    7.1  1.5  0.5  -0.000032183  -0.000000000   0.000001365   0.000343675   0.000932347  -0.000000030   0.000074858   0.000000000
                         0.000034543  -0.000000000   0.000001007   0.000253407   0.000017619  -0.000000003   0.000657144   0.000000000

   28    8.1  1.5  0.5   0.027110616  -0.000000003  -0.000017826  -0.004491665   0.000362336  -0.000000055  -0.021088953   0.000000001
                         0.025258075  -0.000000001   0.000024196   0.006091672  -0.019174061   0.000000609   0.002402344   0.000000000

   29    9.1  1.5  0.5  -0.000000003   0.000000000  -0.000000000  -0.000000007  -0.000000018   0.000000000   0.000000000  -0.000000000
                         0.000000005   0.012729878  -0.043366257   0.000172250  -0.000000644  -0.020365999  -0.000000001  -0.033138081

   30   10.1  1.5  0.5  -0.000000466  -0.022316697   0.045871129  -0.000181416   0.000001128   0.017202359  -0.000002036  -0.025561039
                        -0.000000324   0.000000000  -0.000000003  -0.000000688  -0.000002321   0.000000000   0.000000609  -0.000000000

   31   11.1  1.5  0.5   0.006331776  -0.000000188  -0.000083029  -0.021003479  -0.062103757   0.000002119  -0.004889815  -0.000000223
                        -0.006796177   0.000000004  -0.000061534  -0.015486814  -0.001173588   0.000000182  -0.042925191  -0.000000016

   32   12.1  1.5  0.5  -0.027405244  -0.000000008  -0.000039885  -0.010040323   0.006254932  -0.000000199  -0.000133418   0.000000001
                         0.029415268  -0.000000001  -0.000029396  -0.007403185   0.000118201  -0.000000013  -0.001171208   0.000000000

   33   13.1  1.5  0.5  -0.000000008   0.031063862   0.014060869  -0.000055845   0.000000068   0.001769420  -0.000000006  -0.005045422
                         0.000000009  -0.000000000  -0.000000000  -0.000000008  -0.000000009   0.000000000   0.000000007   0.000000000

   34   14.1  1.5  0.5  -0.009541454   0.000000946   0.000053423   0.013937192   0.001021226  -0.000000906  -0.048779362   0.000001103
                        -0.008889461   0.000000001  -0.000075081  -0.018901844  -0.054041101   0.000001714   0.005556692  -0.000000001

   35   15.1  1.5  0.5   0.000000000   0.000000177  -0.000000342   0.000000001  -0.000000000  -0.000000153  -0.000000000   0.000000142
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   36   16.1  1.5  0.5   0.000000020  -0.000000000  -0.000000001  -0.000000141  -0.000000004  -0.000000000   0.000000031  -0.000000000
                         0.000000019  -0.000000000   0.000000001   0.000000191   0.000000225  -0.000000000  -0.000000004  -0.000000000

   37   17.1  1.5  0.5   0.000000095   0.000000000  -0.000000000  -0.000000049  -0.000000304   0.000000000  -0.000000006   0.000000000
                        -0.000000102  -0.000000000  -0.000000000  -0.000000036  -0.000000006   0.000000000  -0.000000050   0.000000000

   38   18.1  1.5  0.5  -0.000000083  -0.000000000   0.000000000   0.000000116  -0.000000209   0.000000000   0.000000010  -0.000000000
                         0.000000089   0.000000000   0.000000000   0.000000085  -0.000000004   0.000000000   0.000000091   0.000000000

   39   19.1  1.5  0.5   0.000000032  -0.000000000   0.000000000   0.000000028   0.000000001   0.000000000   0.000000099  -0.000000000
                         0.000000030   0.000000000  -0.000000000  -0.000000037  -0.000000064   0.000000000  -0.000000011  -0.000000000

   40   20.1  1.5  0.5   0.000000000   0.000000065  -0.000000117   0.000000000  -0.000000000  -0.000000035  -0.000000000   0.000000203
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   41    1.1  1.5 -0.5   0.000000000   0.000634494   0.000129217  -0.000000513   0.000000008   0.000240682  -0.000000000   0.000083165
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   42    2.1  1.5 -0.5  -0.000387175   0.000000000   0.000001328   0.000334349  -0.000189800   0.000000006   0.000029276   0.000000000
                         0.000415572  -0.000000000   0.000000979   0.000246530  -0.000003587   0.000000000   0.000256998   0.000000000

   43    3.1  1.5 -0.5   0.000143896  -0.000000000   0.000001575   0.000396669  -0.000005937   0.000000000  -0.000507698   0.000000000
                         0.000134063  -0.000000000  -0.000002137  -0.000537969   0.000314195  -0.000000010   0.000057834  -0.000000000

   44    4.1  1.5 -0.5  -0.000107774  -0.000000000  -0.000001958  -0.000492844   0.000187647  -0.000000006  -0.000034801  -0.000000000
                         0.000115678   0.000000000  -0.000001443  -0.000363396   0.000003546  -0.000000000  -0.000305502  -0.000000000

   45    5.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000002  -0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000071632  -0.000327713   0.000001302   0.000000028   0.000878029  -0.000000000  -0.000810131

   46    6.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000601411  -0.000192499   0.000000765  -0.000000003  -0.000107248  -0.000000000   0.000154713

   47    7.1  1.5 -0.5   0.000000000   0.000047212  -0.000426998   0.000001696   0.000000030   0.000932513  -0.000000000   0.000661394
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000002   0.000000000   0.000000000  -0.000000000

   48    8.1  1.5 -0.5  -0.000000001   0.000000000   0.000000000   0.000000013   0.000000043  -0.000000000  -0.000000000   0.000000000
                         0.000000003   0.037053419   0.007568588  -0.000030054   0.000000610   0.019177484  -0.000000001  -0.021225344

   49    9.1  1.5 -0.5  -0.009313981   0.000000006  -0.000102218  -0.025736202   0.000384792  -0.000000030   0.032925142  -0.000000001
                        -0.008677532   0.000000001   0.000138641   0.034903870  -0.020362363   0.000000644  -0.003750661   0.000000000

   50   10.1  1.5 -0.5  -0.015212545   0.000000081   0.000146423   0.036919946  -0.017199288   0.000001084   0.002893070   0.000000375
                         0.016328302  -0.000000562   0.000107109   0.027222749  -0.000325019   0.000002342   0.025396789  -0.000002092

   51   11.1  1.5 -0.5  -0.000000132  -0.009288671   0.026095737  -0.000103345  -0.000002122  -0.062114845   0.000000041  -0.043202805
                         0.000000135  -0.000000000   0.000000001   0.000000252   0.000000142  -0.000000000   0.000000220   0.000000000

   52   12.1  1.5 -0.5  -0.000000005   0.040203301   0.012474583  -0.000049547   0.000000199   0.006256048  -0.000000000  -0.001178783
                         0.000000007  -0.000000000  -0.000000000  -0.000000010  -0.000000009   0.000000000  -0.000000001  -0.000000000

   53   13.1  1.5 -0.5   0.021175194   0.000000012   0.000044952   0.011317065  -0.001769104   0.000000067   0.000571055   0.000000006
                        -0.022728279   0.000000000   0.000033135   0.008344584  -0.000033431   0.000000010   0.005013001  -0.000000007

   54   14.1  1.5 -0.5   0.000000644  -0.000000000  -0.000000006  -0.000001560   0.000000874  -0.000000000  -0.000000124   0.000000000
                        -0.000000693  -0.013040777  -0.023484570   0.000092134   0.000001731   0.054050750  -0.000001096  -0.049094836

   55   15.1  1.5 -0.5   0.000000121  -0.000000000  -0.000000001  -0.000000275   0.000000153  -0.000000000  -0.000000016  -0.000000000
                        -0.000000130  -0.000000000  -0.000000001  -0.000000203   0.000000003   0.000000000  -0.000000141  -0.000000000

   56   16.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.000000027   0.000000237  -0.000000001  -0.000000000  -0.000000225   0.000000000   0.000000031

   57   17.1  1.5 -0.5   0.000000000  -0.000000139   0.000000061  -0.000000000  -0.000000000  -0.000000304  -0.000000000  -0.000000050
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   58   18.1  1.5 -0.5  -0.000000000   0.000000122  -0.000000144   0.000000001  -0.000000000  -0.000000209  -0.000000000   0.000000091
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   59   19.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000044  -0.000000046   0.000000000   0.000000000   0.000000064  -0.000000000   0.000000100

   60   20.1  1.5 -0.5   0.000000044  -0.000000000  -0.000000000  -0.000000094   0.000000035  -0.000000000  -0.000000023   0.000000000
                        -0.000000048   0.000000000  -0.000000000  -0.000000069   0.000000001   0.000000000  -0.000000202  -0.000000000

   61    1.1  1.5 -1.5  -0.000520537  -0.000000000  -0.000000913  -0.000229983   0.000094655  -0.000000003   0.000082838   0.000000000
                         0.000558715   0.000000000  -0.000000674  -0.000169577   0.000001789  -0.000000000   0.000727197   0.000000000

   62    2.1  1.5 -1.5   0.000000000   0.000621273  -0.000347360   0.000001380  -0.000000024  -0.000763019   0.000000000  -0.000063710
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000002  -0.000000000   0.000000000   0.000000000

   63    3.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000002   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000617317   0.000039868  -0.000000159  -0.000000021  -0.000669192   0.000000000   0.000122457

   64    4.1  1.5 -1.5   0.000000000  -0.000034391  -0.001072652   0.000004261   0.000000003   0.000097211  -0.000000000  -0.000056990
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000

   65    5.1  1.5 -1.5  -0.000045396   0.000000000  -0.000000838  -0.000210910   0.000002527  -0.000000000  -0.000064745  -0.000000000
                        -0.000042294   0.000000000   0.000001136   0.000286039  -0.000133734   0.000000004   0.000007375  -0.000000000

   66    6.1  1.5 -1.5   0.000435209  -0.000000000  -0.000000634  -0.000159617  -0.000000688   0.000000000  -0.000905217  -0.000000000
                         0.000405470  -0.000000000   0.000000860   0.000216475   0.000036407  -0.000000001   0.000103118   0.000000000

   67    7.1  1.5 -1.5   0.000209401  -0.000000000  -0.000000855  -0.000215370   0.000117981  -0.000000004  -0.000016668   0.000000000
                        -0.000224759   0.000000000  -0.000000631  -0.000158802   0.000002230  -0.000000000  -0.000146320  -0.000000000

   68    8.1  1.5 -1.5  -0.028191382   0.000000002   0.000028285   0.007125112   0.000079211  -0.000000011   0.056360225   0.000000005
                        -0.026264989   0.000000002  -0.000038383  -0.009663197  -0.004191698   0.000000132  -0.006420264  -0.000000000

   69    9.1  1.5 -1.5  -0.000000002   0.000000000   0.000000000   0.000000017   0.000000101  -0.000000000  -0.000000000   0.000000000
                         0.000000003   0.040042444  -0.002592786   0.000010312   0.000001379   0.043401386  -0.000000004  -0.007930492

   70   10.1  1.5 -1.5   0.000000212   0.032825681   0.025959604  -0.000103928  -0.000001271  -0.042547773  -0.000000715  -0.000896855
                         0.000000050  -0.000000000   0.000000003   0.000000811  -0.000000232  -0.000000000   0.000000062   0.000000000

   71   11.1  1.5 -1.5  -0.008297821   0.000000282   0.000064058   0.016067773  -0.008496439  -0.000000097   0.000250548  -0.000000007
                         0.008906421   0.000000000   0.000047053   0.011847497  -0.000160559   0.000000018   0.002199429   0.000000002

   72   12.1  1.5 -1.5  -0.035414839   0.000000009  -0.000050131  -0.012615671   0.004904779  -0.000000164   0.005473373  -0.000000002
                         0.038012324  -0.000000002  -0.000036948  -0.009302105   0.000092687  -0.000000003   0.048047946   0.000000001

   73   13.1  1.5 -1.5  -0.000000016  -0.023520794   0.068305278  -0.000271311   0.000000829   0.026081965   0.000000010   0.005469886
                         0.000000006   0.000000000  -0.000000000  -0.000000018  -0.000000029   0.000000000   0.000000013  -0.000000000

   74   14.1  1.5 -1.5   0.003269441  -0.000001398  -0.000063104  -0.015607196   0.000150286   0.000001802  -0.016897880   0.000000033
                         0.003046031   0.000000000   0.000084076   0.021166748  -0.007952793   0.000000252   0.001924919  -0.000000000

   75   15.1  1.5 -1.5  -0.000000000  -0.000000431  -0.000000062   0.000000000  -0.000000000  -0.000000073  -0.000000000   0.000000071
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   76   16.1  1.5 -1.5   0.000000031   0.000000000  -0.000000000  -0.000000055   0.000000001   0.000000000   0.000000127   0.000000000
                         0.000000029  -0.000000000   0.000000000   0.000000074  -0.000000041   0.000000000  -0.000000015  -0.000000000

   77   17.1  1.5 -1.5   0.000000192  -0.000000000   0.000000000   0.000000089   0.000000011   0.000000000   0.000000033   0.000000000
                        -0.000000206  -0.000000000   0.000000000   0.000000066   0.000000000  -0.000000000   0.000000288   0.000000000

   78   18.1  1.5 -1.5   0.000000206   0.000000000  -0.000000000  -0.000000018   0.000000054  -0.000000000   0.000000021  -0.000000000
                        -0.000000221   0.000000000  -0.000000000  -0.000000013   0.000000001  -0.000000000   0.000000185  -0.000000000

   79   19.1  1.5 -1.5   0.000000014   0.000000000   0.000000000   0.000000077  -0.000000001   0.000000000   0.000000075  -0.000000000
                         0.000000013  -0.000000000  -0.000000000  -0.000000105   0.000000044  -0.000000000  -0.000000009   0.000000000

   80   20.1  1.5 -1.5   0.000000000   0.000000022  -0.000000014   0.000000000   0.000000000   0.000000009   0.000000000  -0.000000004
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   81    1.1  0.5  0.5   0.000000021   0.686415848   0.301321076  -0.001196798   0.000001488   0.046820705   0.000000039   0.019770152
                        -0.000000015  -0.000000000  -0.000000000  -0.000000101   0.000000018   0.000000000  -0.000000001   0.000000000

   82    2.1  0.5  0.5  -0.460038015   0.000000060  -0.000953084  -0.239953940   0.001113106   0.000000031   0.047908704  -0.000000062
                        -0.428602378   0.000000022   0.001292640   0.325429567  -0.058903190   0.000001853  -0.005457511  -0.000000007

   83    3.1  0.5  0.5   0.023577480   0.000000026  -0.000419180  -0.105471367  -0.013128473   0.000002029  -0.219870036  -0.000000129
                         0.021966368  -0.000000012   0.000568189   0.143042042   0.694730767  -0.000022032   0.025046454   0.000000004

   84    4.1  0.5  0.5   0.138075605  -0.000000011   0.002271126   0.571769990   0.055613676  -0.000001774  -0.014014806  -0.000000001
                        -0.148202694  -0.000000052   0.001674508   0.421591876   0.001050943  -0.000000486  -0.123028827   0.000000119

   85    5.1  0.5  0.5  -0.083980348  -0.000000002  -0.000220510  -0.055517465   0.676627665  -0.000021459  -0.033255091   0.000000004
                         0.090139847  -0.000000015  -0.000162227  -0.040935540   0.012786375  -0.000001937  -0.291929467   0.000000063

   86    6.1  0.5  0.5  -0.000000021   0.000000000  -0.000000001  -0.000000159  -0.000000146   0.000000001  -0.000000012  -0.000000000
                         0.000000026   0.210171567  -0.360547060   0.001432014  -0.000003262  -0.102925635  -0.000000076   0.615962844

   87    7.1  0.5  0.5  -0.000000028  -0.140076197   0.249504489  -0.000991057   0.000005240   0.165477527  -0.000000009   0.674381112
                        -0.000000011   0.000000000   0.000000000   0.000000009  -0.000000172   0.000000000  -0.000000002  -0.000000000

   88    1.1  0.5 -0.5  -0.467906696   0.000000026  -0.000963317  -0.242522006   0.046812348  -0.000001488   0.002237641  -0.000000003
                         0.502225090  -0.000000005  -0.000710172  -0.178822446   0.000884623  -0.000000010   0.019643112  -0.000000039

   89    2.1  0.5 -0.5  -0.000000025   0.000000000  -0.000000000  -0.000000031   0.000000066   0.000000000  -0.000000014   0.000000000
                         0.000000059   0.628756689  -0.404329440   0.001606016  -0.000001852  -0.058913707  -0.000000061  -0.048218548

   90    3.1  0.5 -0.5  -0.000000026  -0.000000000   0.000000001   0.000000184   0.000001612  -0.000000003  -0.000000010   0.000000000
                         0.000000010  -0.032224508  -0.177722354   0.000706082   0.000022066   0.694854802  -0.000000129   0.221292019

   91    4.1  0.5 -0.5  -0.000000031   0.202555946   0.710394701  -0.002821700  -0.000001783  -0.055623605   0.000000119   0.123824501
                        -0.000000043  -0.000000000  -0.000000000  -0.000000078   0.000000453  -0.000000001  -0.000000015   0.000000000

   92    5.1  0.5 -0.5  -0.000000010  -0.123198584  -0.068977586   0.000273756  -0.000021492  -0.676748468   0.000000063   0.293817485
                        -0.000000011   0.000000000   0.000000001   0.000000294   0.000001531  -0.000000003  -0.000000003   0.000000000

   93    6.1  0.5 -0.5   0.153774763  -0.000000033   0.000849718   0.213970785  -0.001944660   0.000000208   0.612004777   0.000000077
                         0.143266919  -0.000000003  -0.001152669  -0.290190775   0.102907262  -0.000003259  -0.069716409   0.000000004

   94    7.1  0.5 -0.5   0.095485253  -0.000000011  -0.000797659  -0.200816784   0.165447988  -0.000005236   0.076328353   0.000000003
                        -0.102488573   0.000000028  -0.000588161  -0.148071298   0.003126506  -0.000000271   0.670047660   0.000000009


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  1.5  1.5   0.000612678  -0.000000208  -0.000094665   0.000000000  -0.000000000   0.000272844   0.000000005   0.000000187
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000026   0.000076464   0.000000000   0.000065461  -0.000363105  -0.000000000  -0.000000328   0.000000009
                         0.000000176   0.000518879  -0.000000000   0.000062563  -0.000161173  -0.000000000  -0.000000641   0.000000017

    3    3.1  1.5  1.5  -0.000000209  -0.000615391  -0.000000000   0.000094488  -0.000010048  -0.000000000   0.000000399  -0.000000011
                         0.000000031   0.000090687  -0.000000000  -0.000098864   0.000022637   0.000000000  -0.000000204   0.000000005

    4    4.1  1.5  1.5  -0.000000017  -0.000050465   0.000000000   0.000223411  -0.000445350  -0.000000000  -0.000000570   0.000000015
                        -0.000000116  -0.000342446  -0.000000000   0.000213522  -0.000197680  -0.000000000  -0.000001114   0.000000029

    5    5.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000016118   0.000000006   0.000270549   0.000000000  -0.000000000   0.000482564   0.000000034   0.000001287

    6    6.1  1.5  1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000538292  -0.000000183   0.000385436   0.000000000   0.000000000  -0.000164606   0.000000000   0.000000009

    7    7.1  1.5  1.5  -0.000218328   0.000000074   0.000259538   0.000000000  -0.000000000   0.000445545   0.000000036   0.000001355
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    8    8.1  1.5  1.5   0.000000000   0.000000001  -0.000000000  -0.000000003  -0.000000001  -0.000000000  -0.000000000   0.000000000
                        -0.032284383   0.000010972  -0.019359398   0.000000001  -0.000000003   0.016218248   0.000000003   0.000000101

    9    9.1  1.5  1.5   0.000012768   0.037567734   0.000000003  -0.005752057   0.000616460   0.000000002  -0.000000029   0.000000001
                        -0.000001881  -0.005536166   0.000000001   0.006018458  -0.001388816  -0.000000000   0.000000015  -0.000000000

   10   10.1  1.5  1.5   0.000001826   0.005568294   0.000000127  -0.005401802  -0.000265245   0.000000255  -0.000000000   0.000000000
                         0.000013106   0.037785755   0.000000910  -0.005162696  -0.000117735   0.000001135  -0.000000000  -0.000000000

   11   11.1  1.5  1.5   0.007495837  -0.000002499  -0.014773666  -0.000000054   0.000000008  -0.029409643  -0.000000000  -0.000000000
                         0.000000000   0.000000328   0.000000000  -0.000000037  -0.000000005   0.000000000  -0.000000000   0.000000000

   12   12.1  1.5  1.5   0.038967572  -0.000013244  -0.008118542   0.000000004  -0.000000011   0.012325441   0.000000001   0.000000044
                        -0.000000000   0.000000002   0.000000000   0.000000005  -0.000000006   0.000000000  -0.000000000  -0.000000000

   13   13.1  1.5  1.5  -0.000000168  -0.000526002  -0.000000004  -0.013124899   0.035058537   0.000000011   0.000000004  -0.000000000
                        -0.000001216  -0.003569388   0.000000016  -0.012543939   0.015561601   0.000000015   0.000000009  -0.000000000

   14   14.1  1.5  1.5  -0.000000000  -0.000000238   0.000000000   0.000000244  -0.000000001   0.000000000  -0.000000000  -0.000000000
                         0.006191463  -0.000003718   0.021246385   0.000000228  -0.000000003   0.026560626  -0.000000001  -0.000000030

   15   15.1  1.5  1.5  -0.000000000  -0.000000082  -0.000000000   0.000000101   0.000000028  -0.000000000   0.050197698  -0.001323986
                        -0.000000000  -0.000000558   0.000000000   0.000000097   0.000000013   0.000000000   0.098151179  -0.002592879

   16   16.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000004553   0.000000260
                         0.000000052   0.000000000   0.000000046   0.000000000  -0.000000000   0.000000215   0.006635362   0.251259037

   17   17.1  1.5  1.5  -0.000000333   0.000000000  -0.000000156   0.000000000  -0.000000000   0.000000102   0.004976295   0.188434372
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000003412  -0.000000201

   18   18.1  1.5  1.5  -0.000000423   0.000000000   0.000000009   0.000000000  -0.000000000   0.000000379   0.000014250   0.000539607
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000010  -0.000000001

   19   19.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000013  -0.000000001
                        -0.000000088   0.000000000  -0.000000202  -0.000000000   0.000000000  -0.000000320  -0.000018934  -0.000716974

   20   20.1  1.5  1.5   0.000000000   0.000000013   0.000000000  -0.000000005   0.000000001  -0.000000000  -0.000142805   0.000003767
                         0.000000000   0.000000086  -0.000000000  -0.000000005   0.000000000   0.000000000  -0.000279226   0.000007377

   21    1.1  1.5  0.5   0.000000000   0.000001491  -0.000000000  -0.000291943   0.000399134   0.000000000   0.000000008  -0.000000000
                         0.000000003   0.000010117   0.000000000  -0.000279021   0.000177166   0.000000000   0.000000015  -0.000000000

   22    2.1  1.5  0.5   0.000266728  -0.000000091   0.000547130   0.000000000  -0.000000000   0.000000927   0.000000033   0.000001234
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   23    3.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000068785  -0.000000023  -0.000405226   0.000000000  -0.000000000   0.000487045  -0.000000026  -0.000000984

   24    4.1  1.5  0.5   0.000507303  -0.000000172  -0.000320843  -0.000000000   0.000000000   0.000029247  -0.000000049  -0.000001862
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   25    5.1  1.5  0.5   0.000000036   0.000104781  -0.000000000   0.000417852   0.000145900  -0.000000000  -0.000001185   0.000000031
                        -0.000000005  -0.000015441  -0.000000000  -0.000437205  -0.000328696  -0.000000000   0.000000606  -0.000000016

   26    6.1  1.5  0.5  -0.000000067  -0.000196487   0.000000000  -0.000192093   0.000194694   0.000000000  -0.000000249   0.000000007
                         0.000000010   0.000028955   0.000000000   0.000200989  -0.000438624  -0.000000000   0.000000127  -0.000000003

   27    7.1  1.5  0.5  -0.000000006  -0.000019125  -0.000000000  -0.000398172  -0.000386451  -0.000000000   0.000000532  -0.000000014
                        -0.000000044  -0.000129782   0.000000000  -0.000380547  -0.000171536   0.000000000   0.000001040  -0.000000027

   28    8.1  1.5  0.5   0.000004454   0.013095644  -0.000000013   0.016987407  -0.009658130  -0.000000009  -0.000000128   0.000000003
                        -0.000000656  -0.001929838  -0.000000005  -0.017774163   0.021758681   0.000000002   0.000000065  -0.000000002

   29    9.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000002  -0.000000002   0.000000000   0.000000000   0.000000000
                        -0.004221098   0.000001434   0.024730057  -0.000000002   0.000000003  -0.029731124   0.000000002   0.000000081

   30   10.1  1.5  0.5  -0.006680186   0.000002417   0.038304735   0.000000727   0.000000310  -0.001072409   0.000000001   0.000000022
                        -0.000000000  -0.000000091  -0.000000000  -0.000001234  -0.000001156  -0.000000000   0.000000000  -0.000000000

   31   11.1  1.5  0.5   0.000000325   0.001142391   0.000000338   0.026717156   0.019592073  -0.000000007  -0.000000006   0.000000000
                         0.000002635   0.007752127  -0.000000007   0.025534547   0.008696427  -0.000000006  -0.000000012   0.000000000

   32   12.1  1.5  0.5   0.000000101   0.000265175  -0.000000002  -0.013926024   0.027652495   0.000000003   0.000000022  -0.000000001
                         0.000000610   0.001799443   0.000000011  -0.013309603   0.012274245   0.000000009   0.000000042  -0.000000001

   33   13.1  1.5  0.5  -0.034327280   0.000011667  -0.005643754  -0.000000004   0.000000007  -0.001411419   0.000000001   0.000000029
                         0.000000000  -0.000000002   0.000000000  -0.000000011  -0.000000001   0.000000000   0.000000000  -0.000000000

   34   14.1  1.5  0.5   0.000001530   0.003645787  -0.000001643   0.022326198   0.011285606   0.000000044   0.000000014  -0.000000000
                        -0.000000183  -0.000537261  -0.000000005  -0.023360215  -0.025425202  -0.000000003  -0.000000007   0.000000000

   35   15.1  1.5  0.5  -0.000000053  -0.000000000   0.000000044   0.000000000   0.000000000   0.000000077   0.020118478   0.761822019
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000013729  -0.000000802

   36   16.1  1.5  0.5  -0.000000000  -0.000000244  -0.000000000  -0.000000127  -0.000000148   0.000000000  -0.423955394   0.011199689
                         0.000000000   0.000000036   0.000000000   0.000000133   0.000000333  -0.000000000   0.216824604  -0.005718454

   37   17.1  1.5  0.5  -0.000000000  -0.000000041  -0.000000000   0.000000199   0.000000332   0.000000000   0.129894295  -0.003425637
                        -0.000000000  -0.000000277  -0.000000000   0.000000190   0.000000147  -0.000000000   0.253981215  -0.006709609

   38   18.1  1.5  0.5  -0.000000000  -0.000000083   0.000000000   0.000000185   0.000000403  -0.000000000   0.000371724  -0.000009803
                        -0.000000000  -0.000000565   0.000000000   0.000000176   0.000000179   0.000000000   0.000726829  -0.000019201

   39   19.1  1.5  0.5   0.000000000   0.000000191  -0.000000000   0.000000118   0.000000052   0.000000000   0.001210428  -0.000031977
                        -0.000000000  -0.000000028   0.000000000  -0.000000123  -0.000000118  -0.000000000  -0.000619052   0.000016327

   40   20.1  1.5  0.5   0.000000091  -0.000000000  -0.000000341   0.000000000  -0.000000000  -0.000000244  -0.000057431  -0.002174706
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000040   0.000000002

   41    1.1  1.5 -0.5   0.000010227  -0.000000003   0.000403836   0.000000000  -0.000000000   0.000436687  -0.000000000  -0.000000017
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   42    2.1  1.5 -0.5  -0.000000013  -0.000038886   0.000000000   0.000395534  -0.000000847   0.000000000   0.000000562  -0.000000015
                        -0.000000090  -0.000263879  -0.000000000   0.000378026  -0.000000376  -0.000000000   0.000001099  -0.000000029

   43    3.1  1.5 -0.5  -0.000000023  -0.000068050   0.000000000  -0.000279981  -0.000197596   0.000000000  -0.000000876   0.000000023
                         0.000000003   0.000010028   0.000000000   0.000292948   0.000445162   0.000000000   0.000000448  -0.000000012

   44    4.1  1.5 -0.5  -0.000000025  -0.000073960  -0.000000000  -0.000231945  -0.000026732  -0.000000000  -0.000000848   0.000000022
                        -0.000000171  -0.000501883   0.000000000  -0.000221679  -0.000011866   0.000000000  -0.000001658   0.000000044

   45    5.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000105912  -0.000000036  -0.000604772  -0.000000000  -0.000000000   0.000359621   0.000000035   0.000001331

   46    6.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000198609   0.000000068   0.000278022   0.000000000  -0.000000000   0.000479893   0.000000007   0.000000280

   47    7.1  1.5 -0.5  -0.000131183   0.000000045   0.000550779  -0.000000000   0.000000000  -0.000422811  -0.000000031  -0.000001168
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   48    8.1  1.5 -0.5   0.000000000  -0.000000001  -0.000000000  -0.000000012   0.000000007  -0.000000000  -0.000000000  -0.000000000
                         0.013237075  -0.000004502  -0.024586436  -0.000000005   0.000000005  -0.023805875   0.000000004   0.000000143

   49    9.1  1.5 -0.5   0.000001418   0.004175998  -0.000000000   0.017086638   0.012062025  -0.000000001   0.000000072  -0.000000002
                        -0.000000209  -0.000615396  -0.000000003  -0.017877989  -0.027174387  -0.000000004  -0.000000037   0.000000001

   50   10.1  1.5 -0.5   0.000000263   0.000973907   0.000000327   0.027691471   0.000980187  -0.000000186   0.000000010  -0.000000000
                         0.000002405   0.006608811  -0.000001394   0.026465735   0.000435080   0.000001182   0.000000019  -0.000000001

   51   11.1  1.5 -0.5   0.007835849  -0.000002654  -0.036956996   0.000000239   0.000000009   0.021435419   0.000000000   0.000000014
                         0.000000000   0.000000063   0.000000000   0.000000238  -0.000000002   0.000000000  -0.000000000   0.000000000

   52   12.1  1.5 -0.5   0.001818877  -0.000000618   0.019263428   0.000000006  -0.000000006   0.030254216  -0.000000001  -0.000000047
                        -0.000000000  -0.000000011  -0.000000000  -0.000000009   0.000000007  -0.000000000   0.000000000  -0.000000000

   53   13.1  1.5 -0.5   0.000001699   0.005004587   0.000000010  -0.004080014   0.001290044   0.000000006   0.000000013  -0.000000000
                         0.000011543   0.033960510  -0.000000006  -0.003899416   0.000572618   0.000000003   0.000000026  -0.000000001

   54   14.1  1.5 -0.5  -0.000000000  -0.000000042  -0.000000000  -0.000001191  -0.000000039  -0.000000000  -0.000000000   0.000000000
                         0.003685161  -0.000001541  -0.032313446  -0.000001132  -0.000000021   0.027817365  -0.000000000  -0.000000015

   55   15.1  1.5 -0.5   0.000000000   0.000000008  -0.000000000   0.000000032  -0.000000071  -0.000000000   0.346886519  -0.009148503
                        -0.000000000   0.000000052   0.000000000   0.000000031  -0.000000031   0.000000000   0.678264353  -0.017918098

   56   16.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000008411   0.000000516
                        -0.000000246   0.000000000   0.000000184  -0.000000000  -0.000000000  -0.000000364   0.012575121   0.476183877

   57   17.1  1.5 -0.5  -0.000000280   0.000000000  -0.000000275  -0.000000000  -0.000000000   0.000000363  -0.007533513  -0.285270022
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000005239   0.000000287

   58   18.1  1.5 -0.5  -0.000000571   0.000000000  -0.000000255   0.000000000  -0.000000000   0.000000441  -0.000021559  -0.000816369
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000015   0.000000001

   59   19.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000024  -0.000000001
                         0.000000193  -0.000000000  -0.000000170  -0.000000000  -0.000000000   0.000000129  -0.000035904  -0.001359544

   60   20.1  1.5 -0.5  -0.000000000  -0.000000013  -0.000000000  -0.000000247   0.000000223  -0.000000000  -0.000990226   0.000026115
                        -0.000000000  -0.000000090  -0.000000000  -0.000000236   0.000000099   0.000000000  -0.001936181   0.000051150

   61    1.1  1.5 -1.5   0.000000030   0.000089323   0.000000000   0.000068436   0.000249381   0.000000000  -0.000000085   0.000000002
                         0.000000206   0.000606132  -0.000000000   0.000065407   0.000110694  -0.000000000  -0.000000166   0.000000004

   62    2.1  1.5 -1.5  -0.000524482   0.000000178   0.000090550   0.000000000  -0.000000000   0.000397269  -0.000000019  -0.000000720
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   63    3.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000622038  -0.000000211   0.000136755   0.000000000  -0.000000000   0.000024767   0.000000012   0.000000449

   64    4.1  1.5 -1.5   0.000346144  -0.000000118   0.000309037   0.000000000  -0.000000000   0.000487251  -0.000000033  -0.000001251
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   65    5.1  1.5 -1.5  -0.000000005  -0.000015946   0.000000000  -0.000186929   0.000195778   0.000000000  -0.000001146   0.000000030
                         0.000000001   0.000002350   0.000000000   0.000195587  -0.000441065  -0.000000000   0.000000586  -0.000000015

   66    6.1  1.5 -1.5   0.000000181   0.000532540   0.000000000  -0.000266308  -0.000066781   0.000000000  -0.000000008   0.000000000
                        -0.000000027  -0.000078478   0.000000000   0.000278642   0.000150451   0.000000000   0.000000004  -0.000000000

   67    7.1  1.5 -1.5  -0.000000011  -0.000031830  -0.000000000  -0.000187627   0.000407230   0.000000000  -0.000000617   0.000000016
                        -0.000000073  -0.000215996   0.000000000  -0.000179322   0.000180759   0.000000000  -0.000001207   0.000000032

   68    8.1  1.5 -1.5  -0.000010855  -0.031939440  -0.000000002   0.013375910   0.006579802   0.000000002  -0.000000090   0.000000002
                         0.000001599   0.004706753  -0.000000003  -0.013995403  -0.014823555  -0.000000002   0.000000046  -0.000000001

   69    9.1  1.5 -1.5  -0.000000000   0.000000001  -0.000000000  -0.000000003   0.000000002  -0.000000000  -0.000000000   0.000000000
                        -0.037973461   0.000012906  -0.008325143  -0.000000001   0.000000001  -0.001519484  -0.000000001  -0.000000032

   70   10.1  1.5 -1.5  -0.038193837   0.000013233  -0.007472141  -0.000000720   0.000000694   0.000290200  -0.000000000  -0.000000000
                        -0.000000000  -0.000000104   0.000000000   0.000000570  -0.000000934   0.000000000  -0.000000000   0.000000000

   71   11.1  1.5 -1.5   0.000000040   0.001092821  -0.000000065   0.010680260  -0.026880551  -0.000000006   0.000000000  -0.000000000
                         0.000002520   0.007415748  -0.000000011   0.010207509  -0.011931599  -0.000000007   0.000000000  -0.000000000

   72   12.1  1.5 -1.5   0.000001929   0.005681097   0.000000007   0.005869101   0.011265511   0.000000013  -0.000000020   0.000000001
                         0.000013103   0.038551223  -0.000000001   0.005609311   0.005000476  -0.000000001  -0.000000039   0.000000001

   73   13.1  1.5 -1.5   0.003607937  -0.000001227  -0.018155258  -0.000000008   0.000000016  -0.038357065   0.000000000   0.000000010
                         0.000000000   0.000000011   0.000000000   0.000000014  -0.000000009   0.000000000   0.000000000   0.000000000

   74   14.1  1.5 -1.5   0.000003713   0.006125310   0.000000334  -0.014679679   0.010775743   0.000000002   0.000000027  -0.000000001
                        -0.000000307  -0.000902656   0.000000004   0.015359554  -0.024276537  -0.000000002  -0.000000014   0.000000000

   75   15.1  1.5 -1.5   0.000000564  -0.000000000   0.000000140  -0.000000000   0.000000000  -0.000000031   0.002911350   0.110242745
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000001870  -0.000000131

   76   16.1  1.5 -1.5  -0.000000000   0.000000052   0.000000000  -0.000000032   0.000000087   0.000000000  -0.223700605   0.005909657
                        -0.000000000  -0.000000008  -0.000000000   0.000000034  -0.000000196   0.000000000   0.114407792  -0.003017285

   77   17.1  1.5 -1.5  -0.000000000  -0.000000049   0.000000000   0.000000113   0.000000093   0.000000000  -0.085801329   0.002262863
                        -0.000000000  -0.000000330  -0.000000000   0.000000108   0.000000041  -0.000000000  -0.167766637   0.004432040

   78   18.1  1.5 -1.5  -0.000000000  -0.000000062  -0.000000000  -0.000000006   0.000000346   0.000000000  -0.000245704   0.000006480
                        -0.000000000  -0.000000418   0.000000000  -0.000000006   0.000000154   0.000000000  -0.000480423   0.000012692

   79   19.1  1.5 -1.5  -0.000000000  -0.000000087  -0.000000000   0.000000140  -0.000000130   0.000000000   0.000638335  -0.000016863
                         0.000000000   0.000000013   0.000000000  -0.000000146   0.000000292   0.000000000  -0.000326466   0.000008610

   80   20.1  1.5 -1.5  -0.000000087   0.000000000  -0.000000007  -0.000000000  -0.000000000  -0.000000001  -0.000008283  -0.000313625
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000005   0.000000000

   81    1.1  0.5  0.5   0.624703357  -0.000212301   0.139790532   0.000000017  -0.000000016   0.124538141   0.000000000   0.000000018
                        -0.000000000   0.000000014  -0.000000002  -0.000000056   0.000000016  -0.000000001   0.000000000  -0.000000000

   82    2.1  0.5  0.5   0.000194755   0.573004877  -0.000000118   0.112798538  -0.101925573  -0.000000090  -0.000000141   0.000000004
                        -0.000028685  -0.084440810  -0.000000031  -0.118022693   0.229626858   0.000000022   0.000000072  -0.000000002

   83    3.1  0.5  0.5  -0.000002340  -0.006892962  -0.000000120   0.382863178   0.139557847  -0.000000052  -0.000000130   0.000000003
                         0.000000345   0.001015781  -0.000000089  -0.400595124  -0.314408147  -0.000000041   0.000000067  -0.000000002

   84    4.1  0.5  0.5   0.000023647   0.069614536  -0.000000009  -0.006244076   0.406348444   0.000000040  -0.000000016   0.000000000
                         0.000160531   0.472395622   0.000000072  -0.005967690   0.180367828   0.000000050  -0.000000031   0.000000001

   85    5.1  0.5  0.5  -0.000004484  -0.013201695   0.000000106   0.460304936   0.100057791   0.000000020  -0.000000134   0.000000004
                        -0.000030432  -0.089585065  -0.000000189   0.439929997   0.044413128  -0.000000099  -0.000000263   0.000000007

   86    6.1  0.5  0.5   0.000000000  -0.000000006  -0.000000006  -0.000000236   0.000000131  -0.000000002   0.000000000  -0.000000000
                         0.122840020  -0.000041777  -0.483861517  -0.000000104   0.000000093  -0.420086320  -0.000000005  -0.000000201

   87    7.1  0.5  0.5  -0.125990930   0.000042843  -0.008137556   0.000000077  -0.000000094   0.640212891   0.000000000   0.000000012
                        -0.000000000  -0.000000006  -0.000000002  -0.000000093   0.000000066  -0.000000000   0.000000000   0.000000000

   88    1.1  0.5 -0.5   0.000030938   0.091075743  -0.000000027  -0.101058145   0.113828444   0.000000008  -0.000000008   0.000000000
                         0.000210034   0.618028715   0.000000052  -0.096584907   0.050525577   0.000000021  -0.000000016   0.000000000

   89    2.1  0.5 -0.5  -0.000000000   0.000000015   0.000000003   0.000000106  -0.000000073   0.000000001  -0.000000000  -0.000000000
                        -0.579193266   0.000196857   0.163257056   0.000000059  -0.000000056   0.251231599  -0.000000004  -0.000000159

   90    3.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000004   0.000000148  -0.000000064   0.000000002  -0.000000000   0.000000000
                         0.006967406  -0.000002365   0.554130550   0.000000019   0.000000016  -0.343989644  -0.000000004  -0.000000146

   91    4.1  0.5 -0.5  -0.477497443   0.000162264  -0.008637234  -0.000000043   0.000000057  -0.444580265  -0.000000001  -0.000000035
                         0.000000000  -0.000000009   0.000000002   0.000000059  -0.000000029   0.000000000   0.000000000  -0.000000000

   92    5.1  0.5 -0.5   0.090552574  -0.000030761   0.636725244   0.000000053  -0.000000022  -0.109471857  -0.000000008  -0.000000295
                         0.000000000   0.000000001  -0.000000006  -0.000000210   0.000000099  -0.000000002  -0.000000000   0.000000000

   93    6.1  0.5 -0.5   0.000041332   0.121527536  -0.000000243   0.334312481  -0.170430548  -0.000000157   0.000000179  -0.000000005
                        -0.000006085  -0.017908894  -0.000000088  -0.349795843   0.383960864   0.000000032  -0.000000092   0.000000002

   94    7.1  0.5 -0.5  -0.000006241  -0.018368266  -0.000000008   0.005882849   0.585157581   0.000000060  -0.000000006   0.000000000
                        -0.000042386  -0.124644780   0.000000121   0.005622447   0.259736696   0.000000098  -0.000000011   0.000000000


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  1.5  1.5   0.000000007  -0.000000108  -0.000001586   0.000000000   0.000000008   0.000000266   0.000000030   0.000000890
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000001200   0.000000081   0.000000000   0.000000043  -0.000000752   0.000000024  -0.000001362   0.000000046
                        -0.000000803  -0.000000054   0.000000000   0.000000019   0.000000305  -0.000000010  -0.000000654   0.000000022

    3    3.1  1.5  1.5  -0.000001326  -0.000000089   0.000000000   0.000000005  -0.000000516   0.000000016   0.000000155  -0.000000005
                        -0.000001980  -0.000000134  -0.000000000  -0.000000011  -0.000001271   0.000000040  -0.000000323   0.000000011

    4    4.1  1.5  1.5  -0.000000834  -0.000000057   0.000000000   0.000000042   0.000001251  -0.000000040  -0.000001021   0.000000034
                         0.000000558   0.000000038   0.000000000   0.000000018  -0.000000507   0.000000016  -0.000000490   0.000000017

    5    5.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000016  -0.000000229   0.000000967  -0.000000000   0.000000007   0.000000226   0.000000031   0.000000931

    6    6.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000005  -0.000000078  -0.000001581   0.000000000  -0.000000005  -0.000000153  -0.000000030  -0.000000879

    7    7.1  1.5  1.5   0.000000015  -0.000000225  -0.000000692   0.000000000   0.000000006   0.000000187   0.000000028   0.000000845
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    8    8.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000001  -0.000000021  -0.000000008   0.000000000   0.000000000   0.000000008   0.000000000   0.000000011

    9    9.1  1.5  1.5   0.000000113   0.000000008   0.000000000   0.000000000   0.000000051  -0.000000002  -0.000000010   0.000000000
                         0.000000169   0.000000011  -0.000000000  -0.000000000   0.000000125  -0.000000004   0.000000020  -0.000000001

   10   10.1  1.5  1.5   0.000000007   0.000000000   0.000000000   0.000000001  -0.000000007   0.000000000   0.000000003  -0.000000000
                        -0.000000004  -0.000000000  -0.000000000   0.000000001   0.000000003  -0.000000000   0.000000002  -0.000000000

   11   11.1  1.5  1.5  -0.000000000   0.000000001  -0.000000079   0.000000000   0.000000000   0.000000012   0.000000002   0.000000055
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   12   12.1  1.5  1.5   0.000000000  -0.000000002  -0.000000022   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000030
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   13   13.1  1.5  1.5   0.000000015   0.000000001   0.000000000   0.000000000  -0.000000008   0.000000000  -0.000000024   0.000000001
                        -0.000000010  -0.000000001  -0.000000000   0.000000000   0.000000003  -0.000000000  -0.000000012   0.000000000

   14   14.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000005  -0.000000099   0.000000000  -0.000000001  -0.000000018  -0.000000002  -0.000000072

   15   15.1  1.5  1.5   0.516559163   0.035038646   0.000000085   0.002441269   0.697731443  -0.022068432   0.161435976  -0.005439904
                        -0.345760395  -0.023338786  -0.000000225   0.001077384  -0.283125173   0.008924687   0.077561744  -0.002615393

   16   16.1  1.5  1.5   0.000006999   0.000000472   0.000000139  -0.000000047   0.000003699  -0.000000104   0.000003455   0.000000009
                         0.003209909  -0.047392522  -0.696170815   0.000045937   0.003268426   0.103385002   0.014648543   0.434661538

   17   17.1  1.5  1.5   0.002049358  -0.030256609   0.716535444  -0.000047279   0.003269118   0.103411740   0.014652365   0.434773908
                        -0.000004644  -0.000000312   0.000000141  -0.000000043  -0.000004041   0.000000114  -0.000003538  -0.000000007

   18   18.1  1.5  1.5   0.000005876  -0.000086749   0.002046611  -0.000000135  -0.000006129  -0.000193890  -0.000027517  -0.000816499
                        -0.000000013  -0.000000001   0.000000000  -0.000000000   0.000000008  -0.000000000   0.000000007   0.000000000

   19   19.1  1.5  1.5  -0.000000021  -0.000000001  -0.000000000   0.000000000   0.000000008  -0.000000000   0.000000007   0.000000000
                        -0.000009165   0.000135326   0.001988314  -0.000000131   0.000006145   0.000194377   0.000027586   0.000818547

   20   20.1  1.5  1.5  -0.001474644  -0.000100026  -0.000000000  -0.000007014   0.001312797  -0.000041522   0.000305605  -0.000010298
                         0.000987057   0.000066626  -0.000000000  -0.000003095  -0.000532706   0.000016792   0.000146827  -0.000004952

   21    1.1  1.5  0.5   0.000000543   0.000000037  -0.000000000  -0.000000071  -0.000000113   0.000000004   0.000000508  -0.000000017
                        -0.000000363  -0.000000025   0.000000000  -0.000000031   0.000000046  -0.000000001   0.000000244  -0.000000008

   22    2.1  1.5  0.5   0.000000121  -0.000001792   0.000001804  -0.000000000   0.000000036   0.000001148  -0.000000022  -0.000000658
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   23    3.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000009   0.000000135  -0.000000085   0.000000000   0.000000010   0.000000330   0.000000043   0.000001263

   24    4.1  1.5  0.5   0.000000095  -0.000001406   0.000001842  -0.000000000   0.000000046   0.000001445   0.000000000   0.000000009
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   25    5.1  1.5  0.5   0.000000133   0.000000009   0.000000000   0.000000026   0.000000426  -0.000000013  -0.000000040   0.000000001
                         0.000000199   0.000000013  -0.000000000  -0.000000059   0.000001049  -0.000000033   0.000000083  -0.000000003

   26    6.1  1.5  0.5   0.000000358   0.000000024   0.000000000   0.000000037   0.000000084  -0.000000003   0.000000247  -0.000000008
                         0.000000535   0.000000036  -0.000000000  -0.000000084   0.000000207  -0.000000007  -0.000000514   0.000000017

   27    7.1  1.5  0.5  -0.000000616  -0.000000042  -0.000000000  -0.000000036  -0.000000962   0.000000030  -0.000000437   0.000000015
                         0.000000412   0.000000028  -0.000000000  -0.000000016   0.000000390  -0.000000012  -0.000000210   0.000000007

   28    8.1  1.5  0.5   0.000000042   0.000000003   0.000000000   0.000000004   0.000000044  -0.000000001   0.000000010  -0.000000000
                         0.000000063   0.000000004  -0.000000000  -0.000000009   0.000000108  -0.000000003  -0.000000022   0.000000001

   29    9.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000002  -0.000000023  -0.000000009   0.000000000  -0.000000000  -0.000000006  -0.000000002  -0.000000069

   30   10.1  1.5  0.5   0.000000000  -0.000000005   0.000000001  -0.000000000  -0.000000000  -0.000000005   0.000000000   0.000000004
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   31   11.1  1.5  0.5   0.000000042   0.000000003  -0.000000000   0.000000003  -0.000000008   0.000000000   0.000000022  -0.000000001
                        -0.000000028  -0.000000002   0.000000000   0.000000001   0.000000003  -0.000000000   0.000000011  -0.000000000

   32   12.1  1.5  0.5  -0.000000037  -0.000000003   0.000000000   0.000000005  -0.000000048   0.000000002  -0.000000021   0.000000001
                         0.000000025   0.000000002  -0.000000000   0.000000002   0.000000020  -0.000000001  -0.000000010   0.000000000

   33   13.1  1.5  0.5   0.000000000  -0.000000005   0.000000013  -0.000000000   0.000000001   0.000000032  -0.000000000  -0.000000011
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   34   14.1  1.5  0.5   0.000000015   0.000000001   0.000000000  -0.000000001  -0.000000013   0.000000000   0.000000011  -0.000000000
                         0.000000023   0.000000002  -0.000000000   0.000000001  -0.000000031   0.000000001  -0.000000023   0.000000001

   35   15.1  1.5  0.5   0.009110957  -0.134518807   0.035564458  -0.000002339   0.001891164   0.059825926   0.008459378   0.251014024
                        -0.000020425  -0.000001376   0.000000003  -0.000000003  -0.000002598   0.000000074  -0.000001858  -0.000000010

   36   16.1  1.5  0.5   0.261870692   0.017676322   0.000000352   0.006248001  -0.208503674   0.006572144  -0.172636538   0.005820623
                         0.391229640   0.026537364  -0.000001008  -0.014157496  -0.513834792   0.016251976   0.359323307  -0.012108212

   37   17.1  1.5  0.5  -0.502850899  -0.034108875  -0.000001134  -0.018378800   0.292358706  -0.009246987   0.545978016  -0.018397924
                         0.336584744   0.022719376  -0.000000579  -0.008110952  -0.118633189   0.003739793   0.262314583  -0.008844955

   38   18.1  1.5  0.5  -0.001437711  -0.000097521  -0.000000003  -0.000052674  -0.000549658   0.000017385  -0.001026446   0.000034588
                         0.000962336   0.000064958  -0.000000002  -0.000023246   0.000223040  -0.000007031  -0.000493155   0.000016628

   39   19.1  1.5  0.5  -0.000747896  -0.000050483  -0.000000001  -0.000017879  -0.000391512   0.000012341  -0.000324831   0.000010952
                        -0.001117342  -0.000075790   0.000000003   0.000040512  -0.000964838   0.000030517   0.000676100  -0.000022783

   40   20.1  1.5  0.5  -0.000026121   0.000385671  -0.000103291   0.000000007   0.000003512   0.000111099   0.000015949   0.000473258
                         0.000000059   0.000000004  -0.000000000  -0.000000000  -0.000000004   0.000000000  -0.000000004  -0.000000000

   41    1.1  1.5 -0.5   0.000000044  -0.000000653  -0.000000078   0.000000000   0.000000004   0.000000122   0.000000019   0.000000563
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   42    2.1  1.5 -0.5  -0.000001489  -0.000000101  -0.000000000  -0.000001650   0.000001064  -0.000000034   0.000000593  -0.000000020
                         0.000000997   0.000000067  -0.000000000  -0.000000728  -0.000000432   0.000000014   0.000000285  -0.000000010

   43    3.1  1.5 -0.5  -0.000000075  -0.000000005   0.000000000   0.000000034  -0.000000124   0.000000004  -0.000000547   0.000000018
                        -0.000000112  -0.000000008  -0.000000000  -0.000000078  -0.000000306   0.000000010   0.000001139  -0.000000038

   44    4.1  1.5 -0.5  -0.000001168  -0.000000079  -0.000000000  -0.000001686   0.000001339  -0.000000042  -0.000000008   0.000000000
                         0.000000782   0.000000053  -0.000000000  -0.000000744  -0.000000543   0.000000017  -0.000000004   0.000000000

   45    5.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000016   0.000000239   0.000000064  -0.000000000   0.000000036   0.000001132  -0.000000003  -0.000000092

   46    6.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000044   0.000000644   0.000000091  -0.000000000   0.000000007   0.000000223   0.000000019   0.000000570

   47    7.1  1.5 -0.5  -0.000000050   0.000000741  -0.000000040   0.000000000   0.000000033   0.000001038  -0.000000016  -0.000000484
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   48    8.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000005   0.000000076   0.000000010  -0.000000000   0.000000004   0.000000117   0.000000001   0.000000024

   49    9.1  1.5 -0.5   0.000000013   0.000000001  -0.000000000   0.000000004   0.000000002  -0.000000000   0.000000030  -0.000000001
                         0.000000019   0.000000001  -0.000000000  -0.000000008   0.000000006  -0.000000000  -0.000000062   0.000000002

   50   10.1  1.5 -0.5  -0.000000004  -0.000000000  -0.000000000  -0.000000001  -0.000000004   0.000000000  -0.000000003   0.000000000
                         0.000000003   0.000000000   0.000000000  -0.000000000   0.000000002  -0.000000000  -0.000000002   0.000000000

   51   11.1  1.5 -0.5   0.000000003  -0.000000051   0.000000003   0.000000000   0.000000000   0.000000009   0.000000001   0.000000025
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   52   12.1  1.5 -0.5  -0.000000003   0.000000045   0.000000005  -0.000000000   0.000000002   0.000000052  -0.000000001  -0.000000023
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   53   13.1  1.5 -0.5  -0.000000004  -0.000000000  -0.000000000  -0.000000012   0.000000029  -0.000000001   0.000000010  -0.000000000
                         0.000000003   0.000000000   0.000000000  -0.000000005  -0.000000012   0.000000000   0.000000005  -0.000000000

   54   14.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000002   0.000000027  -0.000000001  -0.000000000  -0.000000001  -0.000000033   0.000000001   0.000000025

   55   15.1  1.5 -0.5  -0.111787618  -0.007582786  -0.000002141  -0.032536818   0.055435806  -0.001753365  -0.226255281   0.007624183
                         0.074825383   0.005050871  -0.000000941  -0.014359184  -0.022494730   0.000708674  -0.108704131   0.003665093

   56   16.1  1.5 -0.5  -0.000071594  -0.000004764  -0.000000002   0.000000085  -0.000020901   0.000000598  -0.000002925  -0.000000019
                        -0.031885403   0.470783273   0.015474889  -0.000001064  -0.017530527  -0.554526804  -0.013434599  -0.398643467

   57   17.1  1.5 -0.5  -0.040982641   0.605101906  -0.020088998   0.000001271  -0.009974602  -0.315511405   0.020413643   0.605723480
                         0.000092243   0.000006155  -0.000000002  -0.000000072   0.000011522  -0.000000332  -0.000005129  -0.000000000

   58   18.1  1.5 -0.5  -0.000117174   0.001730059  -0.000057575   0.000000004   0.000018753   0.000593187  -0.000038378  -0.001138769
                         0.000000264   0.000000018  -0.000000000  -0.000000000  -0.000000021   0.000000001   0.000000009   0.000000000

   59   19.1  1.5 -0.5   0.000000205   0.000000014   0.000000000  -0.000000000  -0.000000039   0.000000001  -0.000000006  -0.000000000
                         0.000091064  -0.001344545  -0.000044282   0.000000003  -0.000032917  -0.001041246  -0.000025279  -0.000750084

   60   20.1  1.5 -0.5   0.000320500   0.000021740   0.000000006   0.000094498   0.000102946  -0.000003256  -0.000426578   0.000014374
                        -0.000214528  -0.000014480   0.000000003   0.000041704  -0.000041773   0.000001317  -0.000204949   0.000006911

   61    1.1  1.5 -1.5   0.000000090   0.000000006  -0.000000000  -0.000001451  -0.000000247   0.000000008   0.000000803  -0.000000027
                        -0.000000060  -0.000000004  -0.000000000  -0.000000641   0.000000100  -0.000000003   0.000000386  -0.000000013

   62    2.1  1.5 -1.5  -0.000000098   0.000001444  -0.000000047   0.000000000  -0.000000026  -0.000000812   0.000000051   0.000001511
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   63    3.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000161   0.000002383  -0.000000012   0.000000000   0.000000043   0.000001371  -0.000000012  -0.000000358

   64    4.1  1.5 -1.5   0.000000068  -0.000001004  -0.000000046   0.000000000   0.000000043   0.000001350   0.000000038   0.000001132
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   65    5.1  1.5 -1.5  -0.000000128  -0.000000009   0.000000000   0.000000390   0.000000085  -0.000000003   0.000000403  -0.000000014
                        -0.000000191  -0.000000013  -0.000000000  -0.000000885   0.000000210  -0.000000007  -0.000000839   0.000000028

   66    6.1  1.5 -1.5  -0.000000043  -0.000000003  -0.000000000  -0.000000638  -0.000000058   0.000000002  -0.000000381   0.000000013
                        -0.000000065  -0.000000004   0.000000000   0.000001447  -0.000000142   0.000000004   0.000000792  -0.000000027

   67    7.1  1.5 -1.5   0.000000187   0.000000013  -0.000000000  -0.000000633  -0.000000174   0.000000005   0.000000762  -0.000000026
                        -0.000000125  -0.000000008  -0.000000000  -0.000000279   0.000000070  -0.000000002   0.000000366  -0.000000012

   68    8.1  1.5 -1.5  -0.000000012  -0.000000001  -0.000000000  -0.000000003   0.000000003  -0.000000000   0.000000005  -0.000000000
                        -0.000000018  -0.000000001   0.000000000   0.000000007   0.000000008  -0.000000000  -0.000000010   0.000000000

   69    9.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000014  -0.000000203  -0.000000000   0.000000000  -0.000000004  -0.000000135   0.000000001   0.000000023

   70   10.1  1.5 -1.5  -0.000000001   0.000000008  -0.000000001   0.000000000  -0.000000000  -0.000000007  -0.000000000  -0.000000004
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   71   11.1  1.5 -1.5  -0.000000001  -0.000000000  -0.000000000  -0.000000072  -0.000000011   0.000000000   0.000000049  -0.000000002
                         0.000000001   0.000000000  -0.000000000  -0.000000032   0.000000004  -0.000000000   0.000000024  -0.000000001

   72   12.1  1.5 -1.5   0.000000002   0.000000000  -0.000000000  -0.000000020  -0.000000000  -0.000000000   0.000000027  -0.000000001
                        -0.000000001  -0.000000000  -0.000000000  -0.000000009   0.000000000   0.000000000   0.000000013  -0.000000000

   73   13.1  1.5 -1.5  -0.000000001   0.000000018  -0.000000000  -0.000000000  -0.000000000  -0.000000009   0.000000001   0.000000027
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   74   14.1  1.5 -1.5   0.000000003   0.000000000  -0.000000000  -0.000000040  -0.000000007   0.000000000  -0.000000031   0.000000001
                         0.000000004   0.000000000   0.000000000   0.000000091  -0.000000017   0.000000001   0.000000065  -0.000000002

   75   15.1  1.5 -1.5  -0.042099842   0.621597635  -0.002668436  -0.000000013   0.023804725   0.752986740  -0.006035962  -0.179101643
                         0.000094670   0.000006309   0.000000000   0.000000240  -0.000027988   0.000000803   0.000001620  -0.000000006

   76   16.1  1.5 -1.5  -0.026361832  -0.001779652  -0.000018504  -0.281079562   0.038873051  -0.001225507   0.188234514  -0.006346812
                        -0.039384070  -0.002671405   0.000042045   0.636905082   0.095798458  -0.003029976  -0.391788745   0.013202189

   77   17.1  1.5 -1.5   0.025143801   0.001705650   0.000043271   0.655536049  -0.095823229   0.003030746   0.391890032  -0.013205599
                        -0.016830083  -0.001136068   0.000019049   0.289301801   0.038883114  -0.001225450   0.188283175  -0.006348541

   78   18.1  1.5 -1.5   0.000072090   0.000004890   0.000000124   0.001872381   0.000179662  -0.000005683  -0.000735964   0.000024800
                        -0.000048254  -0.000003257   0.000000054   0.000826321  -0.000072903   0.000002298  -0.000353593   0.000011923

   79   19.1  1.5 -1.5   0.000075274   0.000005081   0.000000053   0.000802783   0.000073086  -0.000002304   0.000354480  -0.000011952
                         0.000112458   0.000007628  -0.000000120  -0.001819047   0.000180114  -0.000005697  -0.000737809   0.000024862

   80   20.1  1.5 -1.5   0.000120184  -0.001774501   0.000007666  -0.000000000   0.000044789   0.001416761  -0.000011427  -0.000339047
                        -0.000000270  -0.000000018  -0.000000000   0.000000000  -0.000000053   0.000000002   0.000000004  -0.000000000

   81    1.1  0.5  0.5  -0.000000011   0.000000162   0.000000409  -0.000000000  -0.000000005  -0.000000144   0.000000009   0.000000267
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   82    2.1  0.5  0.5  -0.000000180  -0.000000012   0.000000000   0.000000014  -0.000000169   0.000000005   0.000000116  -0.000000004
                        -0.000000268  -0.000000018  -0.000000000  -0.000000031  -0.000000415   0.000000013  -0.000000241   0.000000008

   83    3.1  0.5  0.5  -0.000000135  -0.000000009   0.000000000  -0.000000000   0.000000075  -0.000000002  -0.000000156   0.000000005
                        -0.000000201  -0.000000014   0.000000000   0.000000001   0.000000184  -0.000000006   0.000000324  -0.000000011

   84    4.1  0.5  0.5  -0.000000011  -0.000000001   0.000000000   0.000000031   0.000000523  -0.000000017  -0.000000158   0.000000005
                         0.000000007   0.000000000  -0.000000000   0.000000014  -0.000000212   0.000000007  -0.000000076   0.000000003

   85    5.1  0.5  0.5  -0.000000218  -0.000000015   0.000000000  -0.000000010  -0.000000069   0.000000002  -0.000000136   0.000000005
                         0.000000146   0.000000010  -0.000000000  -0.000000004   0.000000028  -0.000000001  -0.000000065   0.000000002

   86    6.1  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000007   0.000000097  -0.000000157   0.000000000  -0.000000002  -0.000000059  -0.000000001  -0.000000037

   87    7.1  0.5  0.5   0.000000002  -0.000000026  -0.000000055   0.000000000  -0.000000002  -0.000000071  -0.000000015  -0.000000455
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   88    1.1  0.5 -0.5  -0.000000134  -0.000000009   0.000000000   0.000000374   0.000000134  -0.000000004   0.000000241  -0.000000008
                         0.000000090   0.000000006   0.000000000   0.000000165  -0.000000054   0.000000002   0.000000116  -0.000000004

   89    2.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000022   0.000000323  -0.000000034   0.000000000   0.000000014   0.000000448  -0.000000009  -0.000000268

   90    3.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000016   0.000000242   0.000000001   0.000000000  -0.000000006  -0.000000199   0.000000012   0.000000360

   91    4.1  0.5 -0.5   0.000000001  -0.000000013  -0.000000034   0.000000000   0.000000018   0.000000564   0.000000006   0.000000176
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   92    5.1  0.5 -0.5   0.000000018  -0.000000263   0.000000011  -0.000000000  -0.000000002  -0.000000075   0.000000005   0.000000150
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   93    6.1  0.5 -0.5   0.000000054   0.000000004   0.000000000  -0.000000064  -0.000000022   0.000000001  -0.000000016   0.000000001
                         0.000000080   0.000000005   0.000000000   0.000000144  -0.000000054   0.000000002   0.000000034  -0.000000001

   94    7.1  0.5 -0.5   0.000000021   0.000000001  -0.000000000  -0.000000050   0.000000066  -0.000000002  -0.000000410   0.000000014
                        -0.000000014  -0.000000001  -0.000000000  -0.000000022  -0.000000027   0.000000001  -0.000000197   0.000000007


   Nr   State  S   Sz       81            82            83            84            85            86            87            88

    1    1.1  1.5  1.5  -0.000001289  -0.000000001   0.000000002  -0.000000014  -0.000000021  -0.000000001   0.000000124  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000709  -0.000000064  -0.000000010  -0.000000003   0.000000052   0.000000000  -0.000000001
                         0.000000000  -0.000000064  -0.000000017  -0.000000003   0.000000001  -0.000000022  -0.000000000  -0.000000001

    3    3.1  1.5  1.5  -0.000000000   0.000000002  -0.000000017  -0.000000003   0.000000003  -0.000000050   0.000000000   0.000000008
                        -0.000000000   0.000000017   0.000000062   0.000000010   0.000000008  -0.000000115  -0.000000000  -0.000000009

    4    4.1  1.5  1.5  -0.000000000   0.000000784   0.000000013   0.000000002   0.000000006  -0.000000095  -0.000000000  -0.000000012
                         0.000000000  -0.000000071   0.000000004   0.000000001  -0.000000003   0.000000042  -0.000000000  -0.000000010

    5    5.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000074   0.000000000  -0.000000005   0.000000031   0.000000017   0.000000001  -0.000000007   0.000000000

    6    6.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000001337   0.000000001   0.000000004  -0.000000026  -0.000000026  -0.000000002   0.000000113  -0.000000000

    7    7.1  1.5  1.5   0.000000199   0.000000000  -0.000000005   0.000000034   0.000000020   0.000000001  -0.000000011   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    8    8.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000091   0.000000000   0.000000033  -0.000000212  -0.000000213  -0.000000014   0.000000817  -0.000000003

    9    9.1  1.5  1.5   0.000000000   0.000000000  -0.000000146  -0.000000023   0.000000028  -0.000000423   0.000000000   0.000000063
                         0.000000000   0.000000005   0.000000539   0.000000085   0.000000064  -0.000000972  -0.000000000  -0.000000070

   10   10.1  1.5  1.5   0.000000000  -0.000000004   0.000000343   0.000000054   0.000000038  -0.000000579  -0.000000000  -0.000000039
                         0.000000000   0.000000000   0.000000093   0.000000015  -0.000000017   0.000000252  -0.000000000  -0.000000035

   11   11.1  1.5  1.5  -0.000000087  -0.000000000  -0.000000056   0.000000358   0.000000136   0.000000009   0.000000600  -0.000000002
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   12   12.1  1.5  1.5   0.000000014   0.000000000  -0.000000020   0.000000126   0.000000165   0.000000011  -0.000000765   0.000000003
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   13   13.1  1.5  1.5  -0.000000000   0.000000022  -0.000000508  -0.000000080   0.000000019  -0.000000293  -0.000000000  -0.000000102
                         0.000000000  -0.000000002  -0.000000138  -0.000000022  -0.000000008   0.000000128  -0.000000000  -0.000000091

   14   14.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000074   0.000000000   0.000000074  -0.000000471  -0.000000248  -0.000000016   0.000000112  -0.000000000

   15   15.1  1.5  1.5   0.000000025  -0.000058553  -0.000797327  -0.000125579  -0.000095378   0.001458729   0.000000377   0.000106878
                        -0.000000251   0.000005305  -0.000215890  -0.000033963   0.000041769  -0.000635073   0.000000341   0.000096179

   16   16.1  1.5  1.5  -0.000000035  -0.000001084   0.000000012   0.000000001  -0.000000000   0.000000007  -0.000000002   0.000000002
                        -0.500059620  -0.000284692  -0.000039715   0.000252181  -0.000055638  -0.000003641   0.002101016  -0.000007414

   17   17.1  1.5  1.5  -0.500166542  -0.000284753  -0.000134027   0.000851031   0.000615856   0.000040305  -0.001835217   0.000006476
                         0.000000035   0.000001084  -0.000000039  -0.000000002  -0.000000004   0.000000087  -0.000000002   0.000000002

   18   18.1  1.5  1.5   0.002333393   0.000001328   0.046857079  -0.297527976  -0.215348200  -0.014093617   0.642420323  -0.002266812
                        -0.000000000  -0.000000005   0.000013715   0.000000875   0.000001457  -0.000030282   0.000000568  -0.000000630

   19   19.1  1.5  1.5  -0.000000000  -0.000000005   0.000004102   0.000000271  -0.000000123   0.000002675  -0.000000646   0.000000703
                        -0.002333285  -0.000001328  -0.013933912   0.088476063  -0.019444821  -0.001272517   0.735915453  -0.002596717

   20   20.1  1.5  1.5   0.000000001  -0.000001231  -0.279017252  -0.043945375  -0.033410586   0.510987929   0.000132281   0.037472933
                         0.000000000   0.000000112  -0.075548828  -0.011884948   0.014631477  -0.222464044   0.000119012   0.033721754

   21    1.1  1.5  0.5   0.000000000  -0.000000442  -0.000000038  -0.000000006  -0.000000003   0.000000041  -0.000000000  -0.000000001
                        -0.000000000   0.000000040  -0.000000010  -0.000000002   0.000000001  -0.000000018  -0.000000000  -0.000000001

   22    2.1  1.5  0.5  -0.000001942  -0.000000001  -0.000000019   0.000000120   0.000000006   0.000000000  -0.000000040   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   23    3.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000771  -0.000000000   0.000000008  -0.000000050  -0.000000027  -0.000000002  -0.000000010   0.000000000

   24    4.1  1.5  0.5   0.000001801   0.000000001   0.000000011  -0.000000071  -0.000000096  -0.000000006  -0.000000093   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   25    5.1  1.5  0.5  -0.000000000   0.000000064  -0.000000006  -0.000000001  -0.000000001   0.000000011  -0.000000000  -0.000000005
                        -0.000000000   0.000000707   0.000000021   0.000000003  -0.000000002   0.000000025   0.000000000   0.000000006

   26    6.1  1.5  0.5  -0.000000000   0.000000046   0.000000004   0.000000001  -0.000000001   0.000000018  -0.000000000  -0.000000002
                        -0.000000000   0.000000506  -0.000000016  -0.000000002  -0.000000003   0.000000041   0.000000000   0.000000002

   27    7.1  1.5  0.5  -0.000000000   0.000000748   0.000000049   0.000000008   0.000000001  -0.000000011   0.000000000   0.000000005
                         0.000000000  -0.000000068   0.000000013   0.000000002  -0.000000000   0.000000005   0.000000000   0.000000004

   28    8.1  1.5  0.5   0.000000000   0.000000008   0.000000035   0.000000006  -0.000000008   0.000000122   0.000000000   0.000000001
                        -0.000000000   0.000000089  -0.000000130  -0.000000021  -0.000000018   0.000000281  -0.000000000  -0.000000001

   29    9.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000057   0.000000000   0.000000067  -0.000000429  -0.000000206  -0.000000013  -0.000000110   0.000000000

   30   10.1  1.5  0.5  -0.000000028  -0.000000000   0.000000128  -0.000000812  -0.000000366  -0.000000024  -0.000000133   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   31   11.1  1.5  0.5   0.000000000  -0.000000026   0.000000409   0.000000064  -0.000000007   0.000000108   0.000000000   0.000000065
                        -0.000000000   0.000000002   0.000000111   0.000000017   0.000000003  -0.000000047   0.000000000   0.000000058

   32   12.1  1.5  0.5  -0.000000000   0.000000038   0.000000289   0.000000045   0.000000017  -0.000000263   0.000000000   0.000000024
                        -0.000000000  -0.000000003   0.000000078   0.000000012  -0.000000008   0.000000114   0.000000000   0.000000022

   33   13.1  1.5  0.5  -0.000000026  -0.000000000  -0.000000093   0.000000593  -0.000000741  -0.000000049  -0.000001208   0.000000004
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   34   14.1  1.5  0.5   0.000000000   0.000000000   0.000000084   0.000000013   0.000000011  -0.000000166   0.000000000   0.000000073
                         0.000000000   0.000000002  -0.000000311  -0.000000049   0.000000025  -0.000000381  -0.000000000  -0.000000081

   35   15.1  1.5  0.5   0.577152052   0.000328564  -0.000300832   0.001910192   0.000968020   0.000063353   0.000460829  -0.000001626
                        -0.000000040  -0.000001393  -0.000000088  -0.000000006  -0.000000007   0.000000137   0.000000000  -0.000000000

   36   16.1  1.5  0.5   0.000013915  -0.026039571  -0.000062593  -0.000009848  -0.000048870   0.000743040  -0.000000840  -0.000238009
                         0.000163687  -0.287416294   0.000231171   0.000036410  -0.000111593   0.001706724   0.000000933   0.000264485

   37   17.1  1.5  0.5   0.000163751  -0.287545396   0.001613771   0.000254170   0.000053616  -0.000820018   0.000000281   0.000079537
                        -0.000014208   0.026051267   0.000436957   0.000068740  -0.000023480   0.000357004   0.000000252   0.000071575

   38   18.1  1.5  0.5  -0.000000764   0.001341978  -0.564251642  -0.088869974  -0.018758916   0.286902119  -0.000097995  -0.027755166
                         0.000000066  -0.000121582  -0.152781028  -0.024034796   0.008215017  -0.124905892  -0.000088057  -0.024976767

   39   19.1  1.5  0.5   0.000000066  -0.000121445  -0.021950091  -0.003453147  -0.017121657   0.260325239  -0.000294152  -0.083368697
                         0.000000763  -0.001340466   0.081066271   0.012767993  -0.039096714   0.597953043   0.000326943   0.092642564

   40   20.1  1.5  0.5   0.002695148   0.000001535  -0.105305788   0.668659238   0.339328366   0.022207649   0.161973519  -0.000571543
                        -0.000000000  -0.000000006  -0.000030874  -0.000001986  -0.000002312   0.000047844   0.000000135  -0.000000135

   41    1.1  1.5 -0.5   0.000000444   0.000000000  -0.000000006   0.000000040  -0.000000045  -0.000000003   0.000000001  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   42    2.1  1.5 -0.5   0.000000001  -0.000001934   0.000000116   0.000000018  -0.000000000   0.000000006  -0.000000000  -0.000000030
                        -0.000000000   0.000000175   0.000000031   0.000000005   0.000000000  -0.000000002  -0.000000000  -0.000000027

   43    3.1  1.5 -0.5  -0.000000000   0.000000070  -0.000000013  -0.000000002  -0.000000001   0.000000011  -0.000000000  -0.000000007
                        -0.000000000   0.000000768   0.000000048   0.000000008  -0.000000002   0.000000025   0.000000000   0.000000008

   44    4.1  1.5 -0.5  -0.000000001   0.000001794  -0.000000069  -0.000000011   0.000000006  -0.000000088  -0.000000000  -0.000000069
                         0.000000000  -0.000000163  -0.000000019  -0.000000003  -0.000000003   0.000000038  -0.000000000  -0.000000062

   45    5.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000710   0.000000000  -0.000000003   0.000000021   0.000000027   0.000000002   0.000000008  -0.000000000

   46    6.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000508   0.000000000   0.000000003  -0.000000016   0.000000045   0.000000003   0.000000002  -0.000000000

   47    7.1  1.5 -0.5  -0.000000751  -0.000000000   0.000000008  -0.000000051   0.000000011   0.000000001  -0.000000007   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   48    8.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000090   0.000000000   0.000000021  -0.000000135   0.000000307   0.000000020  -0.000000001   0.000000000

   49    9.1  1.5 -0.5  -0.000000000  -0.000000005  -0.000000112  -0.000000018  -0.000000005   0.000000082  -0.000000000  -0.000000074
                         0.000000000  -0.000000057   0.000000414   0.000000065  -0.000000012   0.000000189   0.000000000   0.000000082

   50   10.1  1.5 -0.5   0.000000000  -0.000000028  -0.000000783  -0.000000123   0.000000022  -0.000000336  -0.000000000  -0.000000099
                        -0.000000000   0.000000003  -0.000000212  -0.000000033  -0.000000010   0.000000146  -0.000000000  -0.000000089

   51   11.1  1.5 -0.5   0.000000026   0.000000000   0.000000067  -0.000000423  -0.000000117  -0.000000008  -0.000000087   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   52   12.1  1.5 -0.5  -0.000000038  -0.000000000   0.000000047  -0.000000299   0.000000287   0.000000019  -0.000000032   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   53   13.1  1.5 -0.5   0.000000000  -0.000000026   0.000000572   0.000000090   0.000000044  -0.000000680  -0.000000003  -0.000000898
                         0.000000000   0.000000002   0.000000155   0.000000024  -0.000000019   0.000000296  -0.000000003  -0.000000808

   54   14.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000002  -0.000000000   0.000000051  -0.000000322  -0.000000415  -0.000000027  -0.000000109   0.000000000

   55   15.1  1.5 -0.5  -0.000327350   0.574797862   0.001843799   0.000290399  -0.000058032   0.000887554   0.000001209   0.000342549
                         0.000028259  -0.052075996   0.000499241   0.000078539   0.000025415  -0.000386406   0.000001088   0.000308259

   56   16.1  1.5 -0.5  -0.000000020  -0.000000911   0.000000010   0.000000001   0.000000013  -0.000000262  -0.000000000   0.000000000
                        -0.288593460  -0.000164275  -0.000037718   0.000239495   0.001861455   0.000121825   0.000355810  -0.000001256

   57   17.1  1.5 -0.5   0.288723091   0.000164365   0.000263301  -0.001671881   0.000894361   0.000058532  -0.000107000   0.000000377
                        -0.000000020  -0.000000625   0.000000077   0.000000005  -0.000000006   0.000000126  -0.000000000   0.000000000

   58   18.1  1.5 -0.5  -0.001347474  -0.000000767  -0.092062712   0.584569891  -0.312912619  -0.020478806   0.037338828  -0.000131746
                         0.000000000   0.000000003  -0.000027048  -0.000001757   0.000002146  -0.000043983   0.000000033  -0.000000095

   59   19.1  1.5 -0.5  -0.000000000  -0.000000003   0.000003831   0.000000230   0.000004460  -0.000091841  -0.000000102   0.000000047
                        -0.001345956  -0.000000766  -0.013226709   0.083985397   0.652163379   0.042681328   0.124631394  -0.000439793

   60   20.1  1.5 -0.5  -0.000001529   0.002684154   0.645418250   0.101653762  -0.020342505   0.311122080   0.000424937   0.120400180
                         0.000000133  -0.000243181   0.174758285   0.027492226   0.008908673  -0.135450327   0.000382218   0.108347669

   61    1.1  1.5 -1.5  -0.000000001   0.000001284   0.000000014   0.000000002  -0.000000001   0.000000019  -0.000000000  -0.000000092
                         0.000000000  -0.000000116   0.000000004   0.000000001   0.000000001  -0.000000008  -0.000000000  -0.000000083

   62    2.1  1.5 -1.5   0.000000712   0.000000000   0.000000010  -0.000000066   0.000000056   0.000000004  -0.000000001  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   63    3.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000017  -0.000000000   0.000000010  -0.000000064   0.000000126   0.000000008   0.000000012  -0.000000000

   64    4.1  1.5 -1.5   0.000000787   0.000000000  -0.000000002   0.000000014  -0.000000104  -0.000000007  -0.000000016   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   65    5.1  1.5 -1.5  -0.000000000   0.000000007  -0.000000008  -0.000000001  -0.000000000   0.000000007   0.000000000   0.000000005
                        -0.000000000   0.000000073   0.000000030   0.000000005  -0.000000001   0.000000016  -0.000000000  -0.000000005

   66    6.1  1.5 -1.5  -0.000000000   0.000000121   0.000000007   0.000000001   0.000000001  -0.000000010  -0.000000000  -0.000000076
                        -0.000000001   0.000001332  -0.000000025  -0.000000004   0.000000002  -0.000000024   0.000000000   0.000000084

   67    7.1  1.5 -1.5   0.000000000  -0.000000198  -0.000000033  -0.000000005   0.000000001  -0.000000018   0.000000000   0.000000008
                        -0.000000000   0.000000018  -0.000000009  -0.000000001  -0.000000001   0.000000008   0.000000000   0.000000007

   68    8.1  1.5 -1.5   0.000000000   0.000000008   0.000000056   0.000000009   0.000000006  -0.000000085  -0.000000002  -0.000000547
                        -0.000000000   0.000000090  -0.000000205  -0.000000032   0.000000013  -0.000000195   0.000000002   0.000000607

   69    9.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000005   0.000000000   0.000000088  -0.000000558   0.000001061   0.000000069   0.000000095  -0.000000000

   70   10.1  1.5 -1.5  -0.000000004  -0.000000000  -0.000000056   0.000000355  -0.000000631  -0.000000041  -0.000000053   0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   71   11.1  1.5 -1.5  -0.000000000   0.000000086  -0.000000346  -0.000000054   0.000000008  -0.000000125  -0.000000002  -0.000000446
                         0.000000000  -0.000000008  -0.000000094  -0.000000015  -0.000000004   0.000000054  -0.000000001  -0.000000402

   72   12.1  1.5 -1.5   0.000000000  -0.000000014  -0.000000121  -0.000000019   0.000000010  -0.000000151   0.000000002   0.000000568
                        -0.000000000   0.000000001  -0.000000033  -0.000000005  -0.000000004   0.000000066   0.000000002   0.000000512

   73   13.1  1.5 -1.5   0.000000022   0.000000000   0.000000083  -0.000000527  -0.000000320  -0.000000021  -0.000000137   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   74   14.1  1.5 -1.5  -0.000000000   0.000000007   0.000000123   0.000000019   0.000000007  -0.000000099  -0.000000000  -0.000000075
                        -0.000000000   0.000000074  -0.000000454  -0.000000072   0.000000015  -0.000000228   0.000000000   0.000000083

   75   15.1  1.5 -1.5  -0.000058792  -0.000000047   0.000130091  -0.000826038   0.001590978   0.000104123   0.000143782  -0.000000508
                         0.000000000  -0.000000248   0.000000038   0.000000003  -0.000000011   0.000000224   0.000000000   0.000000001

   76   16.1  1.5 -1.5   0.000024608  -0.045120003  -0.000065909  -0.000010368   0.000001460  -0.000022209  -0.000004958  -0.001405416
                         0.000283629  -0.498019888   0.000243416   0.000038338   0.000003335  -0.000051013   0.000005512   0.001561754

   77   17.1  1.5 -1.5  -0.000283690   0.498126373  -0.000821451  -0.000129379   0.000036920  -0.000564663   0.000004815   0.001364176
                         0.000024613  -0.045129651  -0.000222422  -0.000034991  -0.000016168   0.000245832   0.000004330   0.001227617

   78   18.1  1.5 -1.5   0.000001323  -0.002323875   0.287186621   0.045232060  -0.012909975   0.197447621  -0.001685415  -0.477531924
                        -0.000000115   0.000210540   0.077760794   0.012233019   0.005653627  -0.085960946  -0.001515854  -0.429729139

   79   19.1  1.5 -1.5   0.000000115  -0.000210531  -0.023123782  -0.003637716   0.000510414  -0.007761834  -0.001736480  -0.492270099
                         0.000001323  -0.002323767   0.085400846   0.013450686   0.001165669  -0.017828489   0.001930693   0.547029893

   80   20.1  1.5 -1.5  -0.000001236  -0.000000001   0.045524145  -0.289064443   0.557314018   0.036473843   0.050412076  -0.000177938
                         0.000000000   0.000000000   0.000013409   0.000000882  -0.000003815   0.000078438   0.000000040  -0.000000020

   81    1.1  0.5  0.5  -0.000000104  -0.000000000  -0.000000008   0.000000049  -0.000000291  -0.000000019   0.000000467  -0.000000002
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   82    2.1  0.5  0.5   0.000000000   0.000000016  -0.000000063  -0.000000010   0.000000005  -0.000000080  -0.000000000  -0.000000035
                        -0.000000000   0.000000180   0.000000233   0.000000037   0.000000012  -0.000000184   0.000000000   0.000000039

   83    3.1  0.5  0.5   0.000000000  -0.000000014   0.000000077   0.000000012  -0.000000003   0.000000049   0.000000000   0.000000029
                         0.000000000  -0.000000157  -0.000000285  -0.000000045  -0.000000007   0.000000113  -0.000000000  -0.000000032

   84    4.1  0.5  0.5  -0.000000000   0.000000240  -0.000000001  -0.000000000  -0.000000007   0.000000113  -0.000000000  -0.000000016
                         0.000000000  -0.000000022  -0.000000000  -0.000000000   0.000000003  -0.000000049  -0.000000000  -0.000000014

   85    5.1  0.5  0.5   0.000000000  -0.000000007   0.000000074   0.000000012  -0.000000007   0.000000106   0.000000000   0.000000044
                        -0.000000000   0.000000001   0.000000020   0.000000003   0.000000003  -0.000000046   0.000000000   0.000000039

   86    6.1  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000042  -0.000000000   0.000000082  -0.000000520  -0.000000322  -0.000000021  -0.000000245   0.000000001

   87    7.1  0.5  0.5   0.000000161   0.000000000   0.000000001  -0.000000006   0.000000149   0.000000010  -0.000000204   0.000000001
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   88    1.1  0.5 -0.5  -0.000000000   0.000000104  -0.000000047  -0.000000007  -0.000000017   0.000000267  -0.000000001  -0.000000347
                         0.000000000  -0.000000009  -0.000000013  -0.000000002   0.000000008  -0.000000116  -0.000000001  -0.000000312

   89    2.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000181  -0.000000000   0.000000038  -0.000000241   0.000000201   0.000000013  -0.000000053   0.000000000

   90    3.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000158   0.000000000  -0.000000047   0.000000295  -0.000000123  -0.000000008   0.000000043  -0.000000000

   91    4.1  0.5 -0.5   0.000000241   0.000000000   0.000000000  -0.000000001   0.000000123   0.000000008  -0.000000022   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   92    5.1  0.5 -0.5  -0.000000007  -0.000000000  -0.000000012   0.000000077   0.000000115   0.000000008   0.000000059  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   93    6.1  0.5 -0.5   0.000000000  -0.000000004   0.000000136   0.000000021   0.000000008  -0.000000128   0.000000001   0.000000164
                         0.000000000  -0.000000042  -0.000000502  -0.000000079   0.000000019  -0.000000295  -0.000000001  -0.000000182

   94    7.1  0.5 -0.5   0.000000000  -0.000000161   0.000000006   0.000000001   0.000000009  -0.000000136   0.000000001   0.000000152
                        -0.000000000   0.000000015   0.000000002   0.000000000  -0.000000004   0.000000059   0.000000000   0.000000137


   Nr   State  S   Sz       89            90            91            92            93            94

    1    1.1  1.5  1.5   0.000000008   0.000000000  -0.000000065   0.000000000  -0.000000095  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000  -0.000000040   0.000000000   0.000000044  -0.000000000   0.000000021
                        -0.000000000  -0.000000045   0.000000000  -0.000000017   0.000000000  -0.000000003

    3    3.1  1.5  1.5   0.000000000   0.000000055   0.000000000   0.000000003  -0.000000000   0.000000000
                        -0.000000000  -0.000000049   0.000000000   0.000000008   0.000000000   0.000000000

    4    4.1  1.5  1.5   0.000000000   0.000000055  -0.000000000   0.000000034   0.000000000   0.000000023
                         0.000000000   0.000000062  -0.000000000  -0.000000014  -0.000000000  -0.000000003

    5    5.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000002  -0.000000000  -0.000000015  -0.000000000   0.000000012  -0.000000000

    6    6.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000005  -0.000000000   0.000000062   0.000000000   0.000000084   0.000000000

    7    7.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000041  -0.000000000
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    8    8.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000032   0.000000000   0.000000500  -0.000000000   0.000000687  -0.000000000

    9    9.1  1.5  1.5   0.000000000   0.000000494  -0.000000000   0.000000021   0.000000000  -0.000000001
                        -0.000000000  -0.000000439  -0.000000000   0.000000052  -0.000000000  -0.000000005

   10   10.1  1.5  1.5   0.000000000   0.000000417   0.000000000  -0.000000088   0.000000000  -0.000000018
                        -0.000000000   0.000000469   0.000000000   0.000000035  -0.000000000   0.000000002

   11   11.1  1.5  1.5   0.000000043  -0.000000000  -0.000000435   0.000000000  -0.000000123   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   12   12.1  1.5  1.5  -0.000000062   0.000000000   0.000000420  -0.000000000   0.000000706  -0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   13   13.1  1.5  1.5   0.000000000   0.000000082   0.000000000   0.000000774   0.000000000   0.000000465
                         0.000000000   0.000000093   0.000000000  -0.000000308   0.000000000  -0.000000056

   14   14.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000036  -0.000000000   0.000000290  -0.000000000  -0.000000121   0.000000000

   15   15.1  1.5  1.5  -0.000000381  -0.000962470   0.000000004   0.000135625   0.000000000   0.000000660
                        -0.000000003  -0.001083869   0.000000001  -0.000054051   0.000000001  -0.000000080

   16   16.1  1.5  1.5  -0.000000000  -0.000000016   0.000000001  -0.000000013   0.000000001  -0.000000007
                        -0.000083675   0.000000015   0.000836658  -0.000000019   0.002332458  -0.000000017

   17   17.1  1.5  1.5  -0.000083683   0.000000015   0.000836735  -0.000000019   0.002334528  -0.000000017
                         0.000000000   0.000000016  -0.000000001   0.000000013  -0.000000001   0.000000007

   18   18.1  1.5  1.5  -0.044466857   0.000007795   0.444946464  -0.000010290   0.500033734  -0.000003705
                         0.000000006   0.000008662  -0.000000539   0.000006770  -0.000000316   0.000001436

   19   19.1  1.5  1.5   0.000000006   0.000008718  -0.000000539   0.000006771  -0.000000316   0.000001436
                         0.044469426  -0.000007830  -0.444972167   0.000010297  -0.500031415   0.000003705

   20   20.1  1.5  1.5   0.000202392   0.511727315  -0.000002121  -0.071581273   0.000000041  -0.000018795
                         0.000001528   0.576273076  -0.000000404   0.028527526   0.000000007   0.000002271

   21    1.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000039   0.000000000  -0.000000035
                         0.000000000  -0.000000000   0.000000000   0.000000015   0.000000000   0.000000004

   22    2.1  1.5  0.5   0.000000037  -0.000000000   0.000000025  -0.000000000  -0.000000107   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   23    3.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000009  -0.000000000  -0.000000078   0.000000000  -0.000000042  -0.000000000

   24    4.1  1.5  0.5   0.000000046  -0.000000000  -0.000000021   0.000000000   0.000000134   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   25    5.1  1.5  0.5   0.000000000  -0.000000019   0.000000000   0.000000002  -0.000000000   0.000000002
                         0.000000000   0.000000017  -0.000000000   0.000000005  -0.000000000   0.000000018

   26    6.1  1.5  0.5   0.000000000  -0.000000001   0.000000000   0.000000014  -0.000000000   0.000000003
                         0.000000000   0.000000001   0.000000000   0.000000034  -0.000000000   0.000000028

   27    7.1  1.5  0.5  -0.000000000  -0.000000019   0.000000000   0.000000022   0.000000000   0.000000032
                        -0.000000000  -0.000000021  -0.000000000  -0.000000009   0.000000000  -0.000000004

   28    8.1  1.5  0.5   0.000000000  -0.000000010  -0.000000000   0.000000107  -0.000000000   0.000000028
                        -0.000000000   0.000000009   0.000000000   0.000000269   0.000000000   0.000000229

   29    9.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000058  -0.000000000  -0.000000655   0.000000000  -0.000000370   0.000000000

   30   10.1  1.5  0.5  -0.000000015   0.000000000  -0.000000210   0.000000000   0.000001079  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   31   11.1  1.5  0.5  -0.000000000  -0.000000263  -0.000000000   0.000000040   0.000000000   0.000000194
                        -0.000000000  -0.000000296   0.000000000  -0.000000016   0.000000000  -0.000000023

   32   12.1  1.5  0.5  -0.000000000  -0.000000041   0.000000000   0.000000300   0.000000000   0.000000298
                        -0.000000000  -0.000000046   0.000000000  -0.000000119   0.000000000  -0.000000036

   33   13.1  1.5  0.5   0.000000833  -0.000000000   0.000000068  -0.000000000   0.000000063   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   34   14.1  1.5  0.5   0.000000000   0.000000327   0.000000000  -0.000000024  -0.000000000  -0.000000036
                        -0.000000000  -0.000000291  -0.000000000  -0.000000061  -0.000000000  -0.000000299

   35   15.1  1.5  0.5  -0.000047211   0.000000008   0.000483510  -0.000000011  -0.002694430   0.000000020
                         0.000000000   0.000000010  -0.000000001   0.000000008   0.000000002  -0.000000007

   36   16.1  1.5  0.5  -0.000000002  -0.000697080  -0.000000005   0.000326601  -0.000000002   0.000161503
                         0.000000245   0.000619003   0.000000024   0.000819508   0.000000010   0.001336470

   37   17.1  1.5  0.5  -0.000000195  -0.000492180   0.000000029   0.000976146   0.000000010   0.001338404
                        -0.000000001  -0.000554260   0.000000006  -0.000389027   0.000000003  -0.000161736

   38   18.1  1.5  0.5  -0.000103342  -0.261393556   0.000015208   0.518677154   0.000002175   0.286594129
                        -0.000000794  -0.294363947   0.000003100  -0.206710207   0.000000567  -0.034632788

   39   19.1  1.5  0.5   0.000000973   0.371206169   0.000002622  -0.173773265   0.000000575  -0.034630004
                        -0.000130418  -0.329629038  -0.000012695  -0.436031776  -0.000002223  -0.286571093

   40   20.1  1.5  0.5   0.025690744  -0.000004555  -0.256914815   0.000005991   0.577282613  -0.000004253
                        -0.000000004  -0.000005052   0.000000311  -0.000003921  -0.000000365   0.000001660

   41    1.1  1.5 -0.5   0.000000001  -0.000000000  -0.000000042   0.000000000   0.000000035   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   42    2.1  1.5 -0.5   0.000000000   0.000000025  -0.000000000  -0.000000023  -0.000000000  -0.000000106
                        -0.000000000   0.000000028  -0.000000000   0.000000009  -0.000000000   0.000000013

   43    3.1  1.5 -0.5  -0.000000000   0.000000006  -0.000000000  -0.000000029   0.000000000   0.000000005
                        -0.000000000  -0.000000006  -0.000000000  -0.000000072  -0.000000000   0.000000042

   44    4.1  1.5 -0.5   0.000000000   0.000000030   0.000000000   0.000000020  -0.000000000   0.000000133
                        -0.000000000   0.000000034   0.000000000  -0.000000008  -0.000000000  -0.000000016

   45    5.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000026  -0.000000000  -0.000000006  -0.000000000   0.000000018   0.000000000

   46    6.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000002  -0.000000000  -0.000000037   0.000000000   0.000000028   0.000000000

   47    7.1  1.5 -0.5   0.000000028  -0.000000000   0.000000024  -0.000000000  -0.000000032   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   48    8.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000013   0.000000000  -0.000000290   0.000000000   0.000000231  -0.000000000

   49    9.1  1.5 -0.5   0.000000000   0.000000044   0.000000000  -0.000000242  -0.000000000   0.000000044
                        -0.000000000  -0.000000039  -0.000000000  -0.000000608   0.000000000   0.000000368

   50   10.1  1.5 -0.5  -0.000000000  -0.000000010   0.000000000   0.000000195   0.000000000   0.000001071
                        -0.000000000  -0.000000011   0.000000000  -0.000000078  -0.000000000  -0.000000129

   51   11.1  1.5 -0.5   0.000000396  -0.000000000   0.000000043   0.000000000  -0.000000196   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   52   12.1  1.5 -0.5   0.000000062  -0.000000000   0.000000323  -0.000000000  -0.000000300   0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   53   13.1  1.5 -0.5   0.000000000   0.000000553  -0.000000000  -0.000000063  -0.000000000   0.000000062
                        -0.000000000   0.000000623  -0.000000000   0.000000025  -0.000000000  -0.000000008

   54   14.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000438   0.000000000   0.000000066   0.000000000  -0.000000301   0.000000000

   55   15.1  1.5 -0.5  -0.000000012  -0.000031348  -0.000000013  -0.000449154  -0.000000021  -0.002674969
                         0.000000000  -0.000035302  -0.000000003   0.000179003  -0.000000005   0.000323250

   56   16.1  1.5 -0.5   0.000000000   0.000000182  -0.000000001   0.000000014   0.000000001  -0.000000003
                         0.000932248  -0.000000164  -0.000882191   0.000000020   0.001346192  -0.000000010

   57   17.1  1.5 -0.5   0.000741246  -0.000000130   0.001050811  -0.000000024  -0.001348141   0.000000010
                        -0.000000000  -0.000000144  -0.000000001   0.000000016   0.000000001  -0.000000004

   58   18.1  1.5 -0.5   0.393670832  -0.000069212   0.558350337  -0.000012980  -0.288679103   0.000002091
                        -0.000000096  -0.000076746  -0.000000680   0.000008510   0.000000183  -0.000000824

   59   19.1  1.5 -0.5  -0.000000110  -0.000096873   0.000000565  -0.000007136  -0.000000182   0.000000838
                        -0.496436625   0.000087324   0.469383486  -0.000010823  -0.288655900   0.000002138

   60   20.1  1.5 -0.5   0.000006802   0.017058403   0.000007016   0.238659916   0.000004422   0.573113210
                         0.000000052   0.019210029   0.000001425  -0.095113967   0.000001137  -0.069256506

   61    1.1  1.5 -1.5   0.000000000  -0.000000005   0.000000000  -0.000000060  -0.000000000   0.000000094
                        -0.000000000  -0.000000006  -0.000000000   0.000000024   0.000000000  -0.000000011

   62    2.1  1.5 -1.5  -0.000000060   0.000000000  -0.000000047  -0.000000000   0.000000021   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   63    3.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000074  -0.000000000   0.000000008  -0.000000000  -0.000000000   0.000000000

   64    4.1  1.5 -1.5   0.000000083  -0.000000000  -0.000000037   0.000000000   0.000000023  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   65    5.1  1.5 -1.5  -0.000000000  -0.000000001  -0.000000000   0.000000006   0.000000000   0.000000001
                         0.000000000   0.000000001   0.000000000   0.000000014   0.000000000   0.000000012

   66    6.1  1.5 -1.5  -0.000000000   0.000000003  -0.000000000  -0.000000023   0.000000000   0.000000010
                         0.000000000  -0.000000003   0.000000000  -0.000000058  -0.000000000   0.000000084

   67    7.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000041
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000005

   68    8.1  1.5 -1.5  -0.000000000   0.000000024   0.000000000  -0.000000185  -0.000000000   0.000000082
                        -0.000000000  -0.000000021  -0.000000000  -0.000000465   0.000000000   0.000000682

   69    9.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000661  -0.000000000   0.000000056   0.000000000   0.000000005  -0.000000000

   70   10.1  1.5 -1.5   0.000000628  -0.000000000   0.000000095  -0.000000000  -0.000000018  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   71   11.1  1.5 -1.5  -0.000000000  -0.000000029  -0.000000000  -0.000000404   0.000000000   0.000000122
                         0.000000000  -0.000000032  -0.000000000   0.000000161   0.000000000  -0.000000015

   72   12.1  1.5 -1.5   0.000000000   0.000000041   0.000000000   0.000000390  -0.000000000  -0.000000700
                         0.000000000   0.000000046   0.000000000  -0.000000156  -0.000000000   0.000000085

   73   13.1  1.5 -1.5   0.000000124  -0.000000000  -0.000000833   0.000000000   0.000000468  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   74   14.1  1.5 -1.5  -0.000000000   0.000000027  -0.000000000  -0.000000107   0.000000000  -0.000000014
                        -0.000000000  -0.000000024  -0.000000000  -0.000000269  -0.000000000  -0.000000120

   75   15.1  1.5 -1.5  -0.001449524   0.000000255  -0.000145999   0.000000003   0.000000665   0.000000000
                         0.000000000   0.000000283   0.000000000  -0.000000003   0.000000000   0.000000001

   76   16.1  1.5 -1.5   0.000000001   0.000062568   0.000000005  -0.000309744  -0.000000005   0.000279825
                        -0.000000022  -0.000055560  -0.000000023  -0.000777210   0.000000018   0.002315612

   77   17.1  1.5 -1.5   0.000000022   0.000055565   0.000000023   0.000777281  -0.000000018  -0.002317667
                         0.000000000   0.000062573   0.000000005  -0.000309773  -0.000000005   0.000280073

   78   18.1  1.5 -1.5   0.000011653   0.029525558   0.000012065   0.413331110  -0.000003851  -0.496422258
                         0.000000077   0.033249703   0.000002479  -0.164726286  -0.000000982   0.059988970

   79   19.1  1.5 -1.5  -0.000000066  -0.033251624  -0.000002478   0.164735801   0.000000982  -0.059988692
                         0.000011717   0.029527264   0.000012072   0.413354987  -0.000003851  -0.496419956

   80   20.1  1.5 -1.5   0.770685087  -0.000135529   0.077056463  -0.000001821  -0.000018932  -0.000000040
                        -0.000000178  -0.000150322  -0.000000100   0.000001160   0.000000000   0.000000012

   81    1.1  0.5  0.5   0.000000198  -0.000000000   0.000000209  -0.000000000   0.000000075   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   82    2.1  0.5  0.5  -0.000000000  -0.000000272   0.000000000  -0.000000152   0.000000000  -0.000000023
                         0.000000000   0.000000242  -0.000000000  -0.000000381  -0.000000000  -0.000000191

   83    3.1  0.5  0.5   0.000000000   0.000000130  -0.000000000   0.000000106  -0.000000000   0.000000014
                        -0.000000000  -0.000000116   0.000000000   0.000000265  -0.000000000   0.000000115

   84    4.1  0.5  0.5  -0.000000000  -0.000000147  -0.000000000  -0.000000142  -0.000000000  -0.000000086
                        -0.000000000  -0.000000165  -0.000000000   0.000000057  -0.000000000   0.000000010

   85    5.1  0.5  0.5   0.000000000   0.000000001  -0.000000000  -0.000000066  -0.000000000  -0.000000015
                        -0.000000000   0.000000001   0.000000000   0.000000026  -0.000000000   0.000000002

   86    6.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000023  -0.000000000   0.000000261  -0.000000000   0.000000024  -0.000000000

   87    7.1  0.5  0.5  -0.000000030   0.000000000  -0.000000664   0.000000000  -0.000000244   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   88    1.1  0.5 -0.5  -0.000000000  -0.000000132   0.000000000   0.000000194   0.000000000  -0.000000074
                        -0.000000000  -0.000000148   0.000000000  -0.000000077   0.000000000   0.000000009

   89    2.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000364   0.000000000  -0.000000410   0.000000000   0.000000192  -0.000000000

   90    3.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000174  -0.000000000   0.000000286  -0.000000000  -0.000000115  -0.000000000

   91    4.1  0.5 -0.5  -0.000000221   0.000000000   0.000000153  -0.000000000  -0.000000087   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   92    5.1  0.5 -0.5   0.000000001  -0.000000000   0.000000071  -0.000000000  -0.000000015  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   93    6.1  0.5 -0.5  -0.000000000  -0.000000017   0.000000000  -0.000000097  -0.000000000   0.000000003
                         0.000000000   0.000000015  -0.000000000  -0.000000242   0.000000000   0.000000024

   94    7.1  0.5 -0.5   0.000000000   0.000000020  -0.000000000  -0.000000617   0.000000000   0.000000242
                        -0.000000000   0.000000022  -0.000000000   0.000000246   0.000000000  -0.000000029


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%   7.117%   0.011%  11.149%   0.507%   8.249%   0.979%   0.000%   0.000%   0.120%
    2    2.1  1.5  1.5   1.475%   0.000%  14.561%   0.015%  11.698%   0.720%   0.000%   1.971%   0.127%   0.000%
    3    3.1  1.5  1.5   0.225%   0.000%  14.143%   0.014%  11.905%   0.732%   0.000%   8.760%   0.021%   0.000%
    4    4.1  1.5  1.5   5.457%   0.000%   0.043%   0.000%  14.154%   0.871%   0.000%   8.440%   0.006%   0.000%
    5    5.1  1.5  1.5   0.000%   3.849%   0.000%   0.312%   0.045%   0.734%   0.743%   0.000%   0.000%  44.708%
    6    6.1  1.5  1.5   0.000%  17.141%   0.002%   2.072%   0.000%   0.006%   5.779%   0.000%   0.000%   1.948%
    7    7.1  1.5  1.5   0.000%   0.012%   0.000%   0.246%   0.008%   0.133%   0.014%   0.000%   0.000%  48.852%
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
   18   18.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19   19.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   20.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5  0.5  14.295%   0.000%  14.898%   0.015%  12.711%   0.782%   0.000%   0.667%   0.084%   0.000%
   22    2.1  1.5  0.5   0.000%  10.184%   0.003%   2.911%   0.052%   0.848%  27.007%   0.000%   0.000%   0.020%
   23    3.1  1.5  0.5   0.000%  30.177%   0.001%   0.539%   0.088%   1.429%   1.862%   0.000%   0.000%   1.674%
   24    4.1  1.5  0.5   0.000%   0.249%   0.022%  21.154%   0.973%  15.821%   2.648%   0.000%   0.000%   1.443%
   25    5.1  1.5  0.5   2.932%   0.000%   9.965%   0.010%   4.787%   0.294%   0.000%   2.796%   0.252%   0.000%
   26    6.1  1.5  0.5   1.039%   0.000%   3.048%   0.003%   3.361%   0.207%   0.000%  36.085%   0.572%   0.000%
   27    7.1  1.5  0.5   5.847%   0.000%   4.856%   0.005%   8.367%   0.515%   0.000%   2.250%   0.175%   0.000%
   28    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   18.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   19.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   20.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  1.5 -0.5   0.000%  14.295%   0.015%  14.898%   0.782%  12.711%   0.667%   0.000%   0.000%   0.084%
   42    2.1  1.5 -0.5  10.184%   0.000%   2.911%   0.003%   0.848%   0.052%   0.000%  27.007%   0.020%   0.000%
   43    3.1  1.5 -0.5  30.177%   0.000%   0.539%   0.001%   1.429%   0.088%   0.000%   1.862%   1.674%   0.000%
   44    4.1  1.5 -0.5   0.249%   0.000%  21.154%   0.022%  15.821%   0.973%   0.000%   2.648%   1.443%   0.000%
   45    5.1  1.5 -0.5   0.000%   2.932%   0.010%   9.965%   0.294%   4.787%   2.796%   0.000%   0.000%   0.252%
   46    6.1  1.5 -0.5   0.000%   1.039%   0.003%   3.048%   0.207%   3.361%  36.085%   0.000%   0.000%   0.572%
   47    7.1  1.5 -0.5   0.000%   5.847%   0.005%   4.856%   0.515%   8.367%   2.250%   0.000%   0.000%   0.175%
   48    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   18.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   19.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   20.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  1.5 -1.5   7.117%   0.000%  11.149%   0.011%   8.249%   0.507%   0.000%   0.979%   0.120%   0.000%
   62    2.1  1.5 -1.5   0.000%   1.475%   0.015%  14.561%   0.720%  11.698%   1.971%   0.000%   0.000%   0.127%
   63    3.1  1.5 -1.5   0.000%   0.225%   0.014%  14.143%   0.732%  11.905%   8.760%   0.000%   0.000%   0.021%
   64    4.1  1.5 -1.5   0.000%   5.457%   0.000%   0.043%   0.871%  14.154%   8.440%   0.000%   0.000%   0.006%
   65    5.1  1.5 -1.5   3.849%   0.000%   0.312%   0.000%   0.734%   0.045%   0.000%   0.743%  44.708%   0.000%
   66    6.1  1.5 -1.5  17.141%   0.000%   2.072%   0.002%   0.006%   0.000%   0.000%   5.779%   1.948%   0.000%
   67    7.1  1.5 -1.5   0.012%   0.000%   0.246%   0.000%   0.133%   0.008%   0.000%   0.014%  48.852%   0.000%
   68    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   18.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   19.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   20.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5  32.220%   0.001%   7.098%   0.001%   1.214%   0.003%   0.314%   0.005%  20.246%   0.000%
    2    2.1  1.5  1.5   0.000%  12.962%   0.004%  20.858%   0.003%   1.156%   0.030%   1.935%   0.000%   9.946%
    3    3.1  1.5  1.5   0.000%   6.709%   0.001%   3.056%   0.043%  18.721%   0.000%   0.006%   0.000%  21.115%
    4    4.1  1.5  1.5   0.000%   0.040%   0.003%  16.501%   0.013%   5.862%   0.256%  16.540%   0.000%  11.409%
    5    5.1  1.5  1.5   0.366%   0.000%   3.280%   0.001%   0.000%   0.000%   1.462%   0.023%   0.575%   0.000%
    6    6.1  1.5  1.5   0.826%   0.000%   1.333%   0.000%  12.096%   0.028%  27.753%   0.429%  16.963%   0.000%
    7    7.1  1.5  1.5   4.299%   0.000%   1.788%   0.000%   0.009%   0.000%   0.684%   0.011%   0.527%   0.000%
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
   18   18.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19   19.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   20.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5  0.5   0.000%  11.440%   0.000%   1.678%   0.006%   2.722%   0.007%   0.478%   0.000%   1.135%
   22    2.1  1.5  0.5  14.294%   0.000%   4.339%   0.001%   0.039%   0.000%   1.531%   0.024%   6.614%   0.000%
   23    3.1  1.5  0.5   0.005%   0.000%  24.668%   0.005%   3.870%   0.009%   0.059%   0.001%   0.258%   0.000%
   24    4.1  1.5  0.5   0.013%   0.000%   6.002%   0.001%   0.952%   0.002%  10.763%   0.166%  10.293%   0.000%
   25    5.1  1.5  0.5   0.000%   7.613%   0.000%   0.070%   0.102%  44.197%   0.000%   0.032%   0.000%   0.147%
   26    6.1  1.5  0.5   0.000%   7.289%   0.000%   0.350%   0.007%   2.978%   0.061%   3.960%   0.000%   0.280%
   27    7.1  1.5  0.5   0.000%   1.922%   0.002%   8.960%   0.014%   5.955%   0.509%  32.960%   0.000%   0.491%
   28    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   18.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   19.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   20.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  1.5 -0.5  11.440%   0.000%   1.678%   0.000%   2.722%   0.006%   0.478%   0.007%   1.135%   0.000%
   42    2.1  1.5 -0.5   0.000%  14.294%   0.001%   4.339%   0.000%   0.039%   0.024%   1.531%   0.000%   6.614%
   43    3.1  1.5 -0.5   0.000%   0.005%   0.005%  24.668%   0.009%   3.870%   0.001%   0.059%   0.000%   0.258%
   44    4.1  1.5 -0.5   0.000%   0.013%   0.001%   6.002%   0.002%   0.952%   0.166%  10.763%   0.000%  10.293%
   45    5.1  1.5 -0.5   7.613%   0.000%   0.070%   0.000%  44.197%   0.102%   0.032%   0.000%   0.147%   0.000%
   46    6.1  1.5 -0.5   7.289%   0.000%   0.350%   0.000%   2.978%   0.007%   3.960%   0.061%   0.280%   0.000%
   47    7.1  1.5 -0.5   1.922%   0.000%   8.960%   0.002%   5.955%   0.014%  32.960%   0.509%   0.491%   0.000%
   48    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   18.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   19.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   20.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  1.5 -1.5   0.001%  32.220%   0.001%   7.098%   0.003%   1.214%   0.005%   0.314%   0.000%  20.246%
   62    2.1  1.5 -1.5  12.962%   0.000%  20.858%   0.004%   1.156%   0.003%   1.935%   0.030%   9.946%   0.000%
   63    3.1  1.5 -1.5   6.709%   0.000%   3.056%   0.001%  18.721%   0.043%   0.006%   0.000%  21.115%   0.000%
   64    4.1  1.5 -1.5   0.040%   0.000%  16.501%   0.003%   5.862%   0.013%  16.540%   0.256%  11.409%   0.000%
   65    5.1  1.5 -1.5   0.000%   0.366%   0.001%   3.280%   0.000%   0.000%   0.023%   1.462%   0.000%   0.575%
   66    6.1  1.5 -1.5   0.000%   0.826%   0.000%   1.333%   0.028%  12.096%   0.429%  27.753%   0.000%  16.963%
   67    7.1  1.5 -1.5   0.000%   4.299%   0.000%   1.788%   0.000%   0.009%   0.011%   0.684%   0.000%   0.527%
   68    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   18.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   19.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   20.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   1.400%   0.018%   2.391%   0.015%   0.000%   5.846%   0.000%   1.096%   0.000%   0.000%
    2    2.1  1.5  1.5   0.046%   3.659%   0.058%   9.534%   7.442%   0.000%   1.798%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.006%   0.002%   0.293%  14.154%   0.001%   0.093%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.066%   5.247%   0.044%   7.181%   6.747%   0.000%   1.119%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   6.428%   0.080%   8.948%   0.055%   0.000%   0.451%   0.000%  27.941%   0.000%   0.000%
    6    6.1  1.5  1.5   2.820%   0.035%   4.771%   0.029%   0.000%   5.434%   0.000%   0.534%   0.000%   0.000%
    7    7.1  1.5  1.5   7.314%   0.091%   8.523%   0.052%   0.000%   0.017%   0.000%  27.419%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  23.809%   0.002%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.839%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.682%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.323%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  11.972%   0.001%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.140%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18   18.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19   19.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   20.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5  0.5   0.142%  11.338%   0.037%   5.996%  17.627%   0.001%   3.940%   0.000%   0.000%   0.000%
   22    2.1  1.5  0.5  11.649%   0.146%   1.068%   0.007%   0.000%   9.720%   0.000%   9.542%   0.000%   0.000%
   23    3.1  1.5  0.5   5.125%   0.064%  15.833%   0.097%   0.000%   0.094%   0.000%  14.143%   0.000%   0.000%
   24    4.1  1.5  0.5   8.585%   0.107%   0.072%   0.000%   0.001%  15.955%   0.000%   4.778%   0.000%   0.000%
   25    5.1  1.5  0.5   0.188%  15.030%   0.069%  11.283%   0.157%   0.000%   0.075%   0.000%   0.000%   0.000%
   26    6.1  1.5  0.5   0.102%   8.162%   0.060%   9.792%  15.346%   0.001%   7.297%   0.000%   0.000%   0.000%
   27    7.1  1.5  0.5   0.150%  12.001%   0.084%  13.705%   1.006%   0.000%   0.225%   0.000%   0.000%   0.000%
   28    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.448%
   29    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  23.286%   0.002%
   30   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  18.547%   0.002%
   31   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   9.593%
   32   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.311%
   33   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.745%   0.000%
   34   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.272%
   35   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   18.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   19.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   20.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  1.5 -0.5  11.338%   0.142%   5.996%   0.037%   0.001%  17.627%   0.000%   3.940%   0.000%   0.000%
   42    2.1  1.5 -0.5   0.146%  11.649%   0.007%   1.068%   9.720%   0.000%   9.542%   0.000%   0.000%   0.000%
   43    3.1  1.5 -0.5   0.064%   5.125%   0.097%  15.833%   0.094%   0.000%  14.143%   0.000%   0.000%   0.000%
   44    4.1  1.5 -0.5   0.107%   8.585%   0.000%   0.072%  15.955%   0.001%   4.778%   0.000%   0.000%   0.000%
   45    5.1  1.5 -0.5  15.030%   0.188%  11.283%   0.069%   0.000%   0.157%   0.000%   0.075%   0.000%   0.000%
   46    6.1  1.5 -0.5   8.162%   0.102%   9.792%   0.060%   0.001%  15.346%   0.000%   7.297%   0.000%   0.000%
   47    7.1  1.5 -0.5  12.001%   0.150%  13.705%   0.084%   0.000%   1.006%   0.000%   0.225%   0.000%   0.000%
   48    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.448%   0.000%
   49    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  23.286%
   50   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  18.547%
   51   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.593%   0.001%
   52   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.311%   0.000%
   53   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.745%
   54   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.272%   0.000%
   55   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   18.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   19.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   20.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  1.5 -1.5   0.018%   1.400%   0.015%   2.391%   5.846%   0.000%   1.096%   0.000%   0.000%   0.000%
   62    2.1  1.5 -1.5   3.659%   0.046%   9.534%   0.058%   0.000%   7.442%   0.000%   1.798%   0.000%   0.000%
   63    3.1  1.5 -1.5   0.006%   0.000%   0.293%   0.002%   0.001%  14.154%   0.000%   0.093%   0.000%   0.000%
   64    4.1  1.5 -1.5   5.247%   0.066%   7.181%   0.044%   0.000%   6.747%   0.000%   1.119%   0.000%   0.000%
   65    5.1  1.5 -1.5   0.080%   6.428%   0.055%   8.948%   0.451%   0.000%  27.941%   0.000%   0.000%   0.000%
   66    6.1  1.5 -1.5   0.035%   2.820%   0.029%   4.771%   5.434%   0.000%   0.534%   0.000%   0.000%   0.000%
   67    7.1  1.5 -1.5   0.091%   7.314%   0.052%   8.523%   0.017%   0.000%  27.419%   0.000%   0.000%   0.000%
   68    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  23.809%
   69    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.839%   0.000%
   70   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.682%   0.000%
   71   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.323%
   72   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  11.972%
   73   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.140%   0.000%
   74   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%
   75   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   18.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   19.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   20.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.118%   3.352%   0.000%   0.001%   0.001%   1.875%   0.000%   0.009%   0.000%  35.073%
    9    9.1  1.5  1.5  13.390%   0.472%  16.679%   0.231%   0.436%   0.000%   0.701%   0.000%  11.770%   0.000%
   10   10.1  1.5  1.5  23.227%   0.819%   7.881%   0.109%   0.549%   0.000%   1.427%   0.000%   4.219%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.013%   0.934%   0.014%  29.293%   0.001%  16.872%   0.000%   0.258%
   12   12.1  1.5  1.5   0.000%   0.000%   0.041%   2.993%   0.004%   9.333%   0.000%   2.582%   0.000%   0.532%
   13   13.1  1.5  1.5   5.802%   0.204%  11.370%   0.157%   2.155%   0.001%   3.978%   0.000%   1.704%   0.000%
   14   14.1  1.5  1.5   0.003%   0.076%   0.001%   0.041%   0.012%  25.127%   0.002%  22.930%   0.000%   2.243%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18   18.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19   19.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   20.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.1  1.5  0.5  25.556%   0.901%  14.447%   0.200%   0.079%   0.000%   0.680%   0.000%  15.132%   0.000%
   29    9.1  1.5  0.5   0.026%   0.744%   0.140%  10.124%   0.000%   0.384%   0.000%   1.035%   0.000%   5.773%
   30   10.1  1.5  0.5   0.272%   7.730%   0.023%   1.643%   0.003%   5.684%   0.000%   1.838%   0.000%   0.161%
   31   11.1  1.5  0.5   7.223%   0.255%   3.671%   0.051%   0.167%   0.000%   0.017%   0.000%   2.549%   0.000%
   32   12.1  1.5  0.5   1.329%   0.047%   4.266%   0.059%  12.787%   0.006%  24.676%   0.002%   8.103%   0.000%
   33   13.1  1.5  0.5   0.171%   4.840%   0.083%   5.959%   0.005%  11.569%   0.002%  23.195%   0.000%   5.985%
   34   14.1  1.5  0.5   3.328%   0.117%  18.624%   0.258%   0.515%   0.000%   0.052%   0.000%   5.253%   0.000%
   35   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   18.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   19.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   20.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.1  1.5 -0.5   0.901%  25.556%   0.200%  14.447%   0.000%   0.079%   0.000%   0.680%   0.000%  15.132%
   49    9.1  1.5 -0.5   0.744%   0.026%  10.124%   0.140%   0.384%   0.000%   1.035%   0.000%   5.773%   0.000%
   50   10.1  1.5 -0.5   7.730%   0.272%   1.643%   0.023%   5.684%   0.003%   1.838%   0.000%   0.161%   0.000%
   51   11.1  1.5 -0.5   0.255%   7.223%   0.051%   3.671%   0.000%   0.167%   0.000%   0.017%   0.000%   2.549%
   52   12.1  1.5 -0.5   0.047%   1.329%   0.059%   4.266%   0.006%  12.787%   0.002%  24.676%   0.000%   8.103%
   53   13.1  1.5 -0.5   4.840%   0.171%   5.959%   0.083%  11.569%   0.005%  23.195%   0.002%   5.985%   0.000%
   54   14.1  1.5 -0.5   0.117%   3.328%   0.258%  18.624%   0.000%   0.515%   0.000%   0.052%   0.000%   5.253%
   55   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   18.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   19.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   20.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  1.5 -1.5   3.352%   0.118%   0.001%   0.000%   1.875%   0.001%   0.009%   0.000%  35.073%   0.000%
   69    9.1  1.5 -1.5   0.472%  13.390%   0.231%  16.679%   0.000%   0.436%   0.000%   0.701%   0.000%  11.770%
   70   10.1  1.5 -1.5   0.819%  23.227%   0.109%   7.881%   0.000%   0.549%   0.000%   1.427%   0.000%   4.219%
   71   11.1  1.5 -1.5   0.000%   0.000%   0.934%   0.013%  29.293%   0.014%  16.872%   0.001%   0.258%   0.000%
   72   12.1  1.5 -1.5   0.000%   0.000%   2.993%   0.041%   9.333%   0.004%   2.582%   0.000%   0.532%   0.000%
   73   13.1  1.5 -1.5   0.204%   5.802%   0.157%  11.370%   0.001%   2.155%   0.000%   3.978%   0.000%   1.704%
   74   14.1  1.5 -1.5   0.076%   0.003%   0.041%   0.001%  25.127%   0.012%  22.930%   0.002%   2.243%   0.000%
   75   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   18.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   19.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   20.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.342%
   82    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.279%   0.000%
   83    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.000%
   84    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%
   85    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.151%   0.000%
   86    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.099%
   87    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.341%
   88    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.342%   0.000%
   89    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.279%
   90    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%
   91    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%
   92    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.151%
   93    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.099%   0.000%
   94    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.341%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   2.495%   0.001%   0.615%   0.000%   0.426%  23.065%   0.000%   0.516%   0.000%
    9    9.1  1.5  1.5  15.884%   0.001%   0.165%   0.000%   0.379%   0.000%   0.000%  17.619%   0.000%   1.548%
   10   10.1  1.5  1.5   4.565%   0.000%   3.223%   0.005%  16.214%   0.015%   0.000%  18.144%   0.000%   1.659%
   11   11.1  1.5  1.5   0.000%   0.031%   0.006%   3.691%   0.001%   0.962%   1.829%   0.000%   1.017%   0.000%
   12   12.1  1.5  1.5   0.001%  15.623%   0.001%   0.656%   0.023%  25.247%   9.994%   0.000%  10.797%   0.002%
   13   13.1  1.5  1.5   2.166%   0.000%  40.452%   0.061%   2.596%   0.002%   0.000%   1.392%   0.000%   0.761%
   14   14.1  1.5  1.5   0.000%   0.000%   0.008%   5.519%   0.001%   0.667%   0.199%   0.000%   1.032%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18   18.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19   19.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   20.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.1  1.5  0.5   2.497%   0.000%   0.189%   0.000%   0.016%   0.000%   0.000%   1.689%   0.001%   6.162%
   29    9.1  1.5  0.5   0.000%   6.439%   0.024%  15.811%   0.000%   0.183%   3.343%   0.000%  13.174%   0.003%
   30   10.1  1.5  0.5   0.000%   0.223%   0.029%  19.302%   0.008%   8.456%   0.959%   0.000%  18.230%   0.004%
   31   11.1  1.5  0.5  43.533%   0.002%   4.893%   0.007%   0.503%   0.000%   0.000%   2.685%   0.005%  23.171%
   32   12.1  1.5  0.5   2.541%   0.000%   0.562%   0.001%   3.136%   0.003%   0.000%   0.056%   0.000%   0.875%
   33   13.1  1.5  0.5   0.000%   0.704%   0.001%   0.927%   0.002%   1.832%  13.772%   0.000%   1.721%   0.000%
   34   14.1  1.5  0.5   2.050%   0.000%   2.599%   0.004%  38.048%   0.034%   0.000%   4.548%   0.004%  18.609%
   35   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   18.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   19.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   20.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.1  1.5 -0.5   0.000%   2.497%   0.000%   0.189%   0.000%   0.016%   1.689%   0.000%   6.162%   0.001%
   49    9.1  1.5 -0.5   6.439%   0.000%  15.811%   0.024%   0.183%   0.000%   0.000%   3.343%   0.003%  13.174%
   50   10.1  1.5 -0.5   0.223%   0.000%  19.302%   0.029%   8.456%   0.008%   0.000%   0.959%   0.004%  18.230%
   51   11.1  1.5 -0.5   0.002%  43.533%   0.007%   4.893%   0.000%   0.503%   2.685%   0.000%  23.171%   0.005%
   52   12.1  1.5 -0.5   0.000%   2.541%   0.001%   0.562%   0.003%   3.136%   0.056%   0.000%   0.875%   0.000%
   53   13.1  1.5 -0.5   0.704%   0.000%   0.927%   0.001%   1.832%   0.002%   0.000%  13.772%   0.000%   1.721%
   54   14.1  1.5 -0.5   0.000%   2.050%   0.004%   2.599%   0.034%  38.048%   4.548%   0.000%  18.609%   0.004%
   55   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   18.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   19.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   20.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  1.5 -1.5   2.495%   0.000%   0.615%   0.001%   0.426%   0.000%   0.000%  23.065%   0.000%   0.516%
   69    9.1  1.5 -1.5   0.001%  15.884%   0.000%   0.165%   0.000%   0.379%  17.619%   0.000%   1.548%   0.000%
   70   10.1  1.5 -1.5   0.000%   4.565%   0.005%   3.223%   0.015%  16.214%  18.144%   0.000%   1.659%   0.000%
   71   11.1  1.5 -1.5   0.031%   0.000%   3.691%   0.006%   0.962%   0.001%   0.000%   1.829%   0.000%   1.017%
   72   12.1  1.5 -1.5  15.623%   0.001%   0.656%   0.001%  25.247%   0.023%   0.000%   9.994%   0.002%  10.797%
   73   13.1  1.5 -1.5   0.000%   2.166%   0.061%  40.452%   0.002%   2.596%   1.392%   0.000%   0.761%   0.000%
   74   14.1  1.5 -1.5   0.000%   0.000%   5.519%   0.008%   0.667%   0.001%   0.000%   0.199%   0.000%   1.032%
   75   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   18.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   19.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   20.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5  0.5   0.000%   0.096%   0.000%   0.065%   0.000%   0.208%   0.214%   0.000%   0.027%   0.000%
   82    2.1  0.5  0.5   0.023%   0.000%   0.279%   0.000%   0.131%   0.000%   0.000%   0.201%   0.000%   0.081%
   83    3.1  0.5  0.5   0.548%   0.000%   0.026%   0.000%   0.119%   0.000%   0.000%   0.074%   0.000%   0.221%
   84    4.1  0.5  0.5   0.009%   0.000%   0.579%   0.001%   0.108%   0.000%   0.000%   0.049%   0.000%   0.074%
   85    5.1  0.5  0.5   0.257%   0.000%   0.011%   0.000%   0.291%   0.000%   0.000%   0.084%   0.000%   0.200%
   86    6.1  0.5  0.5   0.000%   0.097%   0.000%   0.201%   0.000%   0.313%   0.004%   0.000%   0.093%   0.000%
   87    7.1  0.5  0.5   0.000%   0.214%   0.000%   0.082%   0.000%   0.074%   0.079%   0.000%   0.009%   0.000%
   88    1.1  0.5 -0.5   0.096%   0.000%   0.065%   0.000%   0.208%   0.000%   0.000%   0.214%   0.000%   0.027%
   89    2.1  0.5 -0.5   0.000%   0.023%   0.000%   0.279%   0.000%   0.131%   0.201%   0.000%   0.081%   0.000%
   90    3.1  0.5 -0.5   0.000%   0.548%   0.000%   0.026%   0.000%   0.119%   0.074%   0.000%   0.221%   0.000%
   91    4.1  0.5 -0.5   0.000%   0.009%   0.001%   0.579%   0.000%   0.108%   0.049%   0.000%   0.074%   0.000%
   92    5.1  0.5 -0.5   0.000%   0.257%   0.000%   0.011%   0.000%   0.291%   0.084%   0.000%   0.200%   0.000%
   93    6.1  0.5 -0.5   0.097%   0.000%   0.201%   0.000%   0.313%   0.000%   0.000%   0.004%   0.000%   0.093%
   94    7.1  0.5 -0.5   0.214%   0.000%   0.082%   0.000%   0.074%   0.000%   0.000%   0.079%   0.000%   0.009%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.007%   0.000%   7.825%   0.152%   0.004%   0.000%   0.000%   0.148%   0.014%   0.000%
    9    9.1  1.5  1.5   0.012%   2.100%   0.170%   8.730%   0.032%   5.331%   0.160%   0.000%   0.000%   0.001%
   10   10.1  1.5  1.5   0.009%   1.500%   0.175%   9.003%   0.031%   5.037%   0.108%   0.000%   0.000%   0.067%
   11   11.1  1.5  1.5  13.070%   0.077%  11.495%   0.224%  16.611%   0.101%   0.000%   0.015%   0.040%   0.000%
   12   12.1  1.5  1.5   3.593%   0.021%   2.561%   0.050%   3.246%   0.020%   0.000%   0.270%   0.025%   0.000%
   13   13.1  1.5  1.5   0.137%  23.262%   0.015%   0.784%   0.013%   2.071%   0.055%   0.000%   0.000%   0.467%
   14   14.1  1.5  1.5  15.473%   0.091%   6.225%   0.121%  19.862%   0.120%   0.000%   0.002%   0.069%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18   18.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19   19.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   20.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.1  1.5  0.5   0.065%  11.013%   0.386%  19.797%   0.002%   0.380%   0.137%   0.000%   0.000%   0.006%
   29    9.1  1.5  0.5   4.703%   0.028%   5.270%   0.103%   8.843%   0.054%   0.000%   0.016%   0.188%   0.000%
   30   10.1  1.5  0.5   2.065%   0.012%   6.147%   0.120%   7.987%   0.048%   0.000%   0.050%   0.210%   0.000%
   31   11.1  1.5  0.5   0.004%   0.681%   0.000%   0.021%   0.001%   0.129%   0.009%   0.000%   0.000%   0.068%
   32   12.1  1.5  0.5   0.101%  17.118%   0.062%   3.176%   0.117%  19.356%   0.162%   0.000%   0.000%   0.016%
   33   13.1  1.5  0.5   1.518%   0.009%  14.868%   0.290%  10.499%   0.064%   0.000%   0.096%   0.020%   0.000%
   34   14.1  1.5  0.5   0.015%   2.609%   0.043%   2.187%   0.000%   0.042%   0.017%   0.000%   0.000%   0.055%
   35   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   18.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   19.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   20.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.1  1.5 -0.5  11.013%   0.065%  19.797%   0.386%   0.380%   0.002%   0.000%   0.137%   0.006%   0.000%
   49    9.1  1.5 -0.5   0.028%   4.703%   0.103%   5.270%   0.054%   8.843%   0.016%   0.000%   0.000%   0.188%
   50   10.1  1.5 -0.5   0.012%   2.065%   0.120%   6.147%   0.048%   7.987%   0.050%   0.000%   0.000%   0.210%
   51   11.1  1.5 -0.5   0.681%   0.004%   0.021%   0.000%   0.129%   0.001%   0.000%   0.009%   0.068%   0.000%
   52   12.1  1.5 -0.5  17.118%   0.101%   3.176%   0.062%  19.356%   0.117%   0.000%   0.162%   0.016%   0.000%
   53   13.1  1.5 -0.5   0.009%   1.518%   0.290%  14.868%   0.064%  10.499%   0.096%   0.000%   0.000%   0.020%
   54   14.1  1.5 -0.5   2.609%   0.015%   2.187%   0.043%   0.042%   0.000%   0.000%   0.017%   0.055%   0.000%
   55   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   18.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   19.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   20.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  1.5 -1.5   0.000%   0.007%   0.152%   7.825%   0.000%   0.004%   0.148%   0.000%   0.000%   0.014%
   69    9.1  1.5 -1.5   2.100%   0.012%   8.730%   0.170%   5.331%   0.032%   0.000%   0.160%   0.001%   0.000%
   70   10.1  1.5 -1.5   1.500%   0.009%   9.003%   0.175%   5.037%   0.031%   0.000%   0.108%   0.067%   0.000%
   71   11.1  1.5 -1.5   0.077%  13.070%   0.224%  11.495%   0.101%  16.611%   0.015%   0.000%   0.000%   0.040%
   72   12.1  1.5 -1.5   0.021%   3.593%   0.050%   2.561%   0.020%   3.246%   0.270%   0.000%   0.000%   0.025%
   73   13.1  1.5 -1.5  23.262%   0.137%   0.784%   0.015%   2.071%   0.013%   0.000%   0.055%   0.467%   0.000%
   74   14.1  1.5 -1.5   0.091%  15.473%   0.121%   6.225%   0.120%  19.862%   0.002%   0.000%   0.000%   0.069%
   75   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   18.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   19.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   20.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5  0.5   0.061%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  47.117%   9.079%   0.000%
   82    2.1  0.5  0.5   0.000%   0.021%   0.000%   0.000%   0.000%   0.000%  39.533%   0.000%   0.000%  16.348%
   83    3.1  0.5  0.5   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.104%   0.000%   0.000%   3.159%
   84    4.1  0.5  0.5   0.001%   0.179%   0.000%   0.000%   0.000%   0.000%   4.103%   0.000%   0.001%  50.466%
   85    5.1  0.5  0.5   0.000%   0.018%   0.000%   0.000%   0.000%   0.000%   1.518%   0.000%   0.000%   0.476%
   86    6.1  0.5  0.5   0.204%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   4.417%  12.999%   0.000%
   87    7.1  0.5  0.5   0.213%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   1.962%   6.225%   0.000%
   88    1.1  0.5 -0.5   0.000%   0.061%   0.000%   0.000%   0.000%   0.000%  47.117%   0.000%   0.000%   9.079%
   89    2.1  0.5 -0.5   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  39.533%  16.348%   0.000%
   90    3.1  0.5 -0.5   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.104%   3.159%   0.000%
   91    4.1  0.5 -0.5   0.179%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   4.103%  50.466%   0.001%
   92    5.1  0.5 -0.5   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.518%   0.476%   0.000%
   93    6.1  0.5 -0.5   0.001%   0.204%   0.000%   0.000%   0.000%   0.000%   4.417%   0.000%   0.000%  12.999%
   94    7.1  0.5 -0.5   0.001%   0.213%   0.000%   0.000%   0.000%   0.000%   1.962%   0.000%   0.000%   6.225%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.002%   0.000%   0.322%   0.104%   0.000%   0.037%   0.000%   0.000%   0.026%
    9    9.1  1.5  1.5   0.188%   0.000%   0.006%   0.000%   0.000%   0.144%   0.000%   0.007%   0.000%   0.000%
   10   10.1  1.5  1.5   0.181%   0.000%   0.000%   0.000%   0.000%   0.146%   0.000%   0.006%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.007%   0.000%   0.000%   0.006%   0.000%   0.022%   0.000%   0.000%   0.086%
   12   12.1  1.5  1.5   0.000%   0.002%   0.000%   0.234%   0.152%   0.000%   0.007%   0.000%   0.000%   0.015%
   13   13.1  1.5  1.5   0.068%   0.000%   0.003%   0.000%   0.000%   0.001%   0.000%   0.033%   0.147%   0.000%
   14   14.1  1.5  1.5   0.000%   0.006%   0.000%   0.029%   0.004%   0.000%   0.045%   0.000%   0.000%   0.071%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18   18.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19   19.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   20.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.1  1.5  0.5   0.037%   0.000%   0.045%   0.000%   0.000%   0.018%   0.000%   0.060%   0.057%   0.000%
   29    9.1  1.5  0.5   0.000%   0.041%   0.000%   0.110%   0.002%   0.000%   0.061%   0.000%   0.000%   0.088%
   30   10.1  1.5  0.5   0.000%   0.030%   0.000%   0.065%   0.004%   0.000%   0.147%   0.000%   0.000%   0.000%
   31   11.1  1.5  0.5   0.386%   0.000%   0.187%   0.000%   0.000%   0.006%   0.000%   0.137%   0.046%   0.000%
   32   12.1  1.5  0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.037%   0.092%   0.000%
   33   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.003%   0.118%   0.000%   0.003%   0.000%   0.000%   0.000%
   34   14.1  1.5  0.5   0.292%   0.000%   0.241%   0.000%   0.000%   0.001%   0.000%   0.104%   0.077%   0.000%
   35   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   18.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   19.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   20.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.1  1.5 -0.5   0.000%   0.037%   0.000%   0.045%   0.018%   0.000%   0.060%   0.000%   0.000%   0.057%
   49    9.1  1.5 -0.5   0.041%   0.000%   0.110%   0.000%   0.000%   0.002%   0.000%   0.061%   0.088%   0.000%
   50   10.1  1.5 -0.5   0.030%   0.000%   0.065%   0.000%   0.000%   0.004%   0.000%   0.147%   0.000%   0.000%
   51   11.1  1.5 -0.5   0.000%   0.386%   0.000%   0.187%   0.006%   0.000%   0.137%   0.000%   0.000%   0.046%
   52   12.1  1.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.037%   0.000%   0.000%   0.092%
   53   13.1  1.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.118%   0.000%   0.003%   0.000%   0.000%
   54   14.1  1.5 -0.5   0.000%   0.292%   0.000%   0.241%   0.001%   0.000%   0.104%   0.000%   0.000%   0.077%
   55   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   18.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   19.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   20.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  1.5 -1.5   0.002%   0.000%   0.322%   0.000%   0.000%   0.104%   0.000%   0.037%   0.026%   0.000%
   69    9.1  1.5 -1.5   0.000%   0.188%   0.000%   0.006%   0.144%   0.000%   0.007%   0.000%   0.000%   0.000%
   70   10.1  1.5 -1.5   0.000%   0.181%   0.000%   0.000%   0.146%   0.000%   0.006%   0.000%   0.000%   0.000%
   71   11.1  1.5 -1.5   0.007%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.022%   0.086%   0.000%
   72   12.1  1.5 -1.5   0.002%   0.000%   0.234%   0.000%   0.000%   0.152%   0.000%   0.007%   0.015%   0.000%
   73   13.1  1.5 -1.5   0.000%   0.068%   0.000%   0.003%   0.001%   0.000%   0.033%   0.000%   0.000%   0.147%
   74   14.1  1.5 -1.5   0.006%   0.000%   0.029%   0.000%   0.000%   0.004%   0.000%   0.045%   0.071%   0.000%
   75   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   18.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   19.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   20.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5  0.5   0.000%   0.219%   0.000%   0.039%  39.025%   0.000%   1.954%   0.000%   0.000%   1.551%
   82    2.1  0.5  0.5   0.347%   0.000%   0.233%   0.000%   0.000%  33.546%   0.000%   2.665%   6.312%   0.000%
   83    3.1  0.5  0.5  48.282%   0.000%   4.897%   0.000%   0.000%   0.005%   0.000%  30.706%  11.833%   0.000%
   84    4.1  0.5  0.5   0.309%   0.000%   1.533%   0.000%   0.000%  22.800%   0.000%   0.007%  19.765%   0.000%
   85    5.1  0.5  0.5  45.799%   0.000%   8.633%   0.000%   0.000%   0.820%   0.000%  40.542%   1.198%   0.000%
   86    6.1  0.5  0.5   0.000%   1.059%   0.000%  37.941%   1.509%   0.000%  23.412%   0.000%   0.000%  17.647%
   87    7.1  0.5  0.5   0.000%   2.738%   0.000%  45.479%   1.587%   0.000%   0.007%   0.000%   0.000%  40.987%
   88    1.1  0.5 -0.5   0.219%   0.000%   0.039%   0.000%   0.000%  39.025%   0.000%   1.954%   1.551%   0.000%
   89    2.1  0.5 -0.5   0.000%   0.347%   0.000%   0.233%  33.546%   0.000%   2.665%   0.000%   0.000%   6.312%
   90    3.1  0.5 -0.5   0.000%  48.282%   0.000%   4.897%   0.005%   0.000%  30.706%   0.000%   0.000%  11.833%
   91    4.1  0.5 -0.5   0.000%   0.309%   0.000%   1.533%  22.800%   0.000%   0.007%   0.000%   0.000%  19.765%
   92    5.1  0.5 -0.5   0.000%  45.799%   0.000%   8.633%   0.820%   0.000%  40.542%   0.000%   0.000%   1.198%
   93    6.1  0.5 -0.5   1.059%   0.000%  37.941%   0.000%   0.000%   1.509%   0.000%  23.412%  17.647%   0.000%
   94    7.1  0.5 -0.5   2.738%   0.000%  45.479%   0.000%   0.000%   1.587%   0.000%   0.007%  40.987%   0.000%

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
   15   15.1  1.5  1.5   1.215%   0.001%  38.638%   0.177%   0.000%   0.001%  56.699%   0.057%   3.208%   0.004%
   16   16.1  1.5  1.5   0.004%   6.313%   0.001%   0.225%  48.465%   0.000%   0.001%   1.069%   0.021%  18.893%
   17   17.1  1.5  1.5   0.002%   3.551%   0.000%   0.092%  51.342%   0.000%   0.001%   1.069%   0.021%  18.903%
   18   18.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19   19.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   20.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35   15.1  1.5  0.5   0.040%  58.037%   0.008%   1.810%   0.126%   0.000%   0.000%   0.358%   0.007%   6.301%
   36   16.1  1.5  0.5  22.675%   0.016%  22.164%   0.102%   0.000%   0.024%  30.750%   0.031%  15.892%   0.018%
   37   17.1  1.5  0.5   8.138%   0.006%  36.615%   0.168%   0.000%   0.040%   9.955%   0.010%  36.690%   0.042%
   38   18.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   19.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   20.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55   15.1  1.5 -0.5  58.037%   0.040%   1.810%   0.008%   0.000%   0.126%   0.358%   0.000%   6.301%   0.007%
   56   16.1  1.5 -0.5   0.016%  22.675%   0.102%  22.164%   0.024%   0.000%   0.031%  30.750%   0.018%  15.892%
   57   17.1  1.5 -0.5   0.006%   8.138%   0.168%  36.615%   0.040%   0.000%   0.010%   9.955%   0.042%  36.690%
   58   18.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59   19.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60   20.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  1.5 -1.5   0.001%   1.215%   0.177%  38.638%   0.001%   0.000%   0.057%  56.699%   0.004%   3.208%
   76   16.1  1.5 -1.5   6.313%   0.004%   0.225%   0.001%   0.000%  48.465%   1.069%   0.001%  18.893%   0.021%
   77   17.1  1.5 -1.5   3.551%   0.002%   0.092%   0.000%   0.000%  51.342%   1.069%   0.001%  18.903%   0.021%
   78   18.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   19.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   20.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      81       82       83       84       85       86       87       88       89       90

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
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5  25.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5  25.017%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18   18.1  1.5  1.5   0.001%   0.000%   0.220%   8.852%   4.637%   0.020%  41.270%   0.001%   0.198%   0.000%
   19   19.1  1.5  1.5   0.001%   0.000%   0.019%   0.783%   0.038%   0.000%  54.157%   0.001%   0.198%   0.000%
   20   20.1  1.5  1.5   0.000%   0.000%   8.356%   0.207%   0.133%  31.060%   0.000%   0.254%   0.000%  59.396%
   21    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35   15.1  1.5  0.5  33.310%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36   16.1  1.5  0.5   0.000%   8.329%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37   17.1  1.5  0.5   0.000%   8.336%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   18.1  1.5  0.5   0.000%   0.000%  34.172%   0.848%   0.042%   9.791%   0.000%   0.139%   0.000%  15.498%
   39   19.1  1.5  0.5   0.000%   0.000%   0.705%   0.017%   0.182%  42.532%   0.000%   1.553%   0.000%  24.645%
   40   20.1  1.5  0.5   0.001%   0.000%   1.109%  44.711%  11.514%   0.049%   2.624%   0.000%   0.066%   0.000%
   41    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55   15.1  1.5 -0.5   0.000%  33.310%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56   16.1  1.5 -0.5   8.329%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57   17.1  1.5 -0.5   8.336%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58   18.1  1.5 -0.5   0.000%   0.000%   0.848%  34.172%   9.791%   0.042%   0.139%   0.000%  15.498%   0.000%
   59   19.1  1.5 -0.5   0.000%   0.000%   0.017%   0.705%  42.532%   0.182%   1.553%   0.000%  24.645%   0.000%
   60   20.1  1.5 -0.5   0.000%   0.001%  44.711%   1.109%   0.049%  11.514%   0.000%   2.624%   0.000%   0.066%
   61    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76   16.1  1.5 -1.5   0.000%  25.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77   17.1  1.5 -1.5   0.000%  25.017%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   18.1  1.5 -1.5   0.000%   0.001%   8.852%   0.220%   0.020%   4.637%   0.001%  41.270%   0.000%   0.198%
   79   19.1  1.5 -1.5   0.000%   0.001%   0.783%   0.019%   0.000%   0.038%   0.001%  54.157%   0.000%   0.198%
   80   20.1  1.5 -1.5   0.000%   0.000%   0.207%   8.356%  31.060%   0.133%   0.254%   0.000%  59.396%   0.000%
   81    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      91       92       93       94

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%
   18   18.1  1.5  1.5  19.798%   0.000%  25.003%   0.000%
   19   19.1  1.5  1.5  19.800%   0.000%  25.003%   0.000%
   20   20.1  1.5  1.5   0.000%   0.594%   0.000%   0.000%
   21    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   22    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   23    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   24    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   25    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   26    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   27    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   28    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   30   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   31   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   32   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   33   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   34   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   35   15.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%
   36   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   37   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   38   18.1  1.5  0.5   0.000%  31.176%   0.000%   8.334%
   39   19.1  1.5  0.5   0.000%  22.032%   0.000%   8.332%
   40   20.1  1.5  0.5   6.601%   0.000%  33.326%   0.000%
   41    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   42    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   43    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   44    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   45    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   46    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   47    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   48    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   49    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   50   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   51   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   52   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   53   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   54   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   55   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%
   56   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   57   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   58   18.1  1.5 -0.5  31.176%   0.000%   8.334%   0.000%
   59   19.1  1.5 -0.5  22.032%   0.000%   8.332%   0.000%
   60   20.1  1.5 -0.5   0.000%   6.601%   0.000%  33.326%
   61    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   62    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   63    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   64    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   65    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   66    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   67    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   68    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   69    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   70   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   71   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   72   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   73   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   74   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   75   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%
   76   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%
   77   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%
   78   18.1  1.5 -1.5   0.000%  19.798%   0.000%  25.003%
   79   19.1  1.5 -1.5   0.000%  19.800%   0.000%  25.003%
   80   20.1  1.5 -1.5   0.594%   0.000%   0.000%   0.000%
   81    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   88    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   89    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   90    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   91    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   92    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   93    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   94    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%


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
              1      24       36.51       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      636.43       700     1000      520     2100     2140     5101     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     11630.88   8904.78    197.61   2523.22      3.42      0.82      0.85
 REAL TIME  *     12217.20 SEC
 DISK USED  *       673.00 MB (local),        6.90 GB (total)
 SF USED    *         5.41 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-DK energy=  -1392.480564714220

              CI              CI           MULTI         RHF-SCF
  -1392.46433959  -1392.42508104  -1391.77070437  -1391.87897316
 **********************************************************************************************************************************
 Molpro calculation terminated
