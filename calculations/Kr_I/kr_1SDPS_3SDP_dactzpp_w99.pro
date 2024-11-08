
 Working directory              : /wrk/irikura/molpro.0TzuJX2GvD/
 Global scratch directory       : /wrk/irikura/molpro.0TzuJX2GvD/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.0TzuJX2GvD/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Kr SO-CI
                                                                                 ! active space (8/7)
 memory,4000,M;
 
 gprint,orbitals,civector,basis
 
 symmetry,xyz
 geometry={Kr};
 
                                                                                 !basis=aug-cc-pwCVTZ-PP
 basis={
 ecp,kr,ECP10MDF;
 spdfg,kr,aug-cc-pwCVTZ-PP;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 rhf
 
 {multi,wmk
     occ,7,9
     wf,sym=1,spin=0;state,10; weight,99,1,1,1,1,1,1,1,1,1
     wf,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5202.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 14-Oct-24          TIME: 10:15:40  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  56000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Kr   ECP ECP10MDF                 selected for group  1
 Library entry KR     S AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Kr S diffuse               selected for group 1    nprim= 1    centre=  0.017    ratio= 3.000    dratio= 1.000
 Library entry KR     P AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Kr P diffuse               selected for group 1    nprim= 1    centre=  0.015    ratio= 3.000    dratio= 1.000
 Library entry KR     D AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Kr D diffuse               selected for group 1    nprim= 1    centre=  0.040    ratio= 3.000    dratio= 1.000
 Library entry KR     F AUG-CC-PWCVTZ-PP     selected for orbital group  1
 Even tempered Kr F diffuse               selected for group 1    nprim= 1    centre=  0.102    ratio= 3.000    dratio= 1.000
 Library entry KR     G AUG-CC-PWCVTZ-PP     selected for orbital group  1


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

   1  KR     26.00    0.000000000    0.000000000    0.000000000


          KR  CORE POTENTIAL

          g POTENTIAL

 POWERS             2
 EXPONENTIALS   1.000000    
 COEFFICIENTS   0.000000    

          s - g POTENTIAL

 POWERS             2              2              2
 EXPONENTIALS   70.03441       31.89597       7.353728    
 COEFFICIENTS   49.95383       369.9782       10.05454    

          p - g POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   47.26518       46.66427       23.00813       22.10098    
 COEFFICIENTS   99.10183       198.2325       28.20467       56.51679    

          d - g POTENTIAL

 POWERS             2              2              2              2              2              2
 EXPONENTIALS   50.76817       50.78223       15.47950       15.55938       2.877154       1.991196    
 COEFFICIENTS  -18.58888      -27.87540     -0.2934110     -0.4693990      6.8881000E-02  0.1322700    

          f - g POTENTIAL

 POWERS             2              2
 EXPONENTIALS   15.43757       22.05574    
 COEFFICIENTS  -1.223389      -2.991233    


          KR  SPIN-ORBIT POTENTIAL

          p POTENTIAL

 POWERS             2              2              2              2
 EXPONENTIALS   47.26518       46.66427       23.00813       22.10098    
 COEFFICIENTS  -198.2037       198.2325      -56.40934       56.51679    

          d POTENTIAL

 POWERS             2              2              2              2              2              2
 EXPONENTIALS   50.76817       50.78223       15.47950       15.55938       2.877154       1.991196    
 COEFFICIENTS   18.58888      -18.58360      0.2934110     -0.3129330     -6.8881000E-02  8.8180000E-02

          f POTENTIAL

 POWERS             2              2
 EXPONENTIALS   15.43757       22.05574    
 COEFFICIENTS  0.8155930      -1.495617    


 BASIS DATA

   Nr Sym  Nuc  Type         Exponents   Contraction coefficients

    1.1 Ag    1  1s        9707.440000     0.000597   -0.000265    0.000000    0.000000    0.000000
    2.1 Ag                 1463.500000     0.004129   -0.001768    0.000000    0.000000    0.000000
    3.1 Ag                  327.679000     0.013457   -0.006201    0.000000    0.000000    0.000000
    4.1 Ag                   52.425600     0.075074   -0.028399    0.000000    0.000000    0.000000
    5.1 Ag                   18.852200    -0.391898    0.156879    0.000000    0.000000    0.000000
                              4.169280     0.667352   -0.364809    0.000000    0.000000    0.000000
                              1.992660     0.506268   -0.433044    0.000000    0.000000    0.000000
                              0.683695     0.039872    0.362601    1.000000    0.000000    0.000000
                              0.324338    -0.007247    0.678226    0.000000    1.000000    0.000000
                              0.138209     0.001864    0.238603    0.000000    0.000000    1.000000
    6.1 Ag    1  1s           7.661700     1.000000
    7.1 Ag    1  1s           1.646000     1.000000
    8.1 Ag    1  1s           0.050600     1.000000
    9.1 Ag    1  1s           0.016867     1.000000
   10.1 Ag    1  3d0        377.821000     0.001434
                            114.897000     0.014629
                             46.944000     0.071096
                             20.553600     0.183558
                              9.371370     0.322931
                              4.282900     0.377030
                              1.917840     0.256887
                              0.776390     0.065292
   11.1 Ag    1  3d2-       377.821000     0.001434
                            114.897000     0.014629
                             46.944000     0.071096
                             20.553600     0.183558
                              9.371370     0.322931
                              4.282900     0.377030
                              1.917840     0.256887
                              0.776390     0.065292
   12.1 Ag    1  3d1+       377.821000     0.001434
                            114.897000     0.014629
                             46.944000     0.071096
                             20.553600     0.183558
                              9.371370     0.322931
                              4.282900     0.377030
                              1.917840     0.256887
                              0.776390     0.065292
   13.1 Ag    1  3d2+       377.821000     0.001434
                            114.897000     0.014629
                             46.944000     0.071096
                             20.553600     0.183558
                              9.371370     0.322931
                              4.282900     0.377030
                              1.917840     0.256887
                              0.776390     0.065292
   14.1 Ag    1  3d1-       377.821000     0.001434
                            114.897000     0.014629
                             46.944000     0.071096
                             20.553600     0.183558
                              9.371370     0.322931
                              4.282900     0.377030
                              1.917840     0.256887
                              0.776390     0.065292
   15.1 Ag    1  3d0        377.821000     0.000000
                            114.897000     0.000000
                             46.944000     0.000000
                             20.553600     0.000000
                              9.371370     0.000000
                              4.282900     0.000000
                              1.917840     0.000000
                              0.776390     1.000000
   16.1 Ag    1  3d2-       377.821000     0.000000
                            114.897000     0.000000
                             46.944000     0.000000
                             20.553600     0.000000
                              9.371370     0.000000
                              4.282900     0.000000
                              1.917840     0.000000
                              0.776390     1.000000
   17.1 Ag    1  3d1+       377.821000     0.000000
                            114.897000     0.000000
                             46.944000     0.000000
                             20.553600     0.000000
                              9.371370     0.000000
                              4.282900     0.000000
                              1.917840     0.000000
                              0.776390     1.000000
   18.1 Ag    1  3d2+       377.821000     0.000000
                            114.897000     0.000000
                             46.944000     0.000000
                             20.553600     0.000000
                              9.371370     0.000000
                              4.282900     0.000000
                              1.917840     0.000000
                              0.776390     1.000000
   19.1 Ag    1  3d1-       377.821000     0.000000
                            114.897000     0.000000
                             46.944000     0.000000
                             20.553600     0.000000
                              9.371370     0.000000
                              4.282900     0.000000
                              1.917840     0.000000
                              0.776390     1.000000
   20.1 Ag    1  3d0          0.295600     1.000000
   21.1 Ag    1  3d2-         0.295600     1.000000
   22.1 Ag    1  3d1+         0.295600     1.000000
   23.1 Ag    1  3d2+         0.295600     1.000000
   24.1 Ag    1  3d1-         0.295600     1.000000
   25.1 Ag    1  3d0          4.692000     1.000000
   26.1 Ag    1  3d2-         4.692000     1.000000
   27.1 Ag    1  3d1+         4.692000     1.000000
   28.1 Ag    1  3d2+         4.692000     1.000000
   29.1 Ag    1  3d1-         4.692000     1.000000
   30.1 Ag    1  3d0          2.092000     1.000000
   31.1 Ag    1  3d2-         2.092000     1.000000
   32.1 Ag    1  3d1+         2.092000     1.000000
   33.1 Ag    1  3d2+         2.092000     1.000000
   34.1 Ag    1  3d1-         2.092000     1.000000
   35.1 Ag    1  3d0          0.119900     1.000000
   36.1 Ag    1  3d2-         0.119900     1.000000
   37.1 Ag    1  3d1+         0.119900     1.000000
   38.1 Ag    1  3d2+         0.119900     1.000000
   39.1 Ag    1  3d1-         0.119900     1.000000
   40.1 Ag    1  3d0          0.039967     1.000000
   41.1 Ag    1  3d2-         0.039967     1.000000
   42.1 Ag    1  3d1+         0.039967     1.000000
   43.1 Ag    1  3d2+         0.039967     1.000000
   44.1 Ag    1  3d1-         0.039967     1.000000
   45.1 Ag    1  5g0          2.873500     1.000000
   46.1 Ag    1  5g2-         2.873500     1.000000
   47.1 Ag    1  5g1+         2.873500     1.000000
   48.1 Ag    1  5g4+         2.873500     1.000000
   49.1 Ag    1  5g1-         2.873500     1.000000
   50.1 Ag    1  5g2+         2.873500     1.000000
   51.1 Ag    1  5g4-         2.873500     1.000000
   52.1 Ag    1  5g3+         2.873500     1.000000
   53.1 Ag    1  5g3-         2.873500     1.000000
    1.2 Au    1  2px        489.457000     0.000603
                             93.639500     0.006479
                             28.592100    -0.089274
                              7.898610     0.339484
                              3.815660     0.515078
                              1.810830     0.246876
                              0.741758     0.021833
                              0.295727    -0.000614
                              0.110453     0.000281
    2.2 Au    1  2py        489.457000     0.000603
                             93.639500     0.006479
                             28.592100    -0.089274
                              7.898610     0.339484
                              3.815660     0.515078
                              1.810830     0.246876
                              0.741758     0.021833
                              0.295727    -0.000614
                              0.110453     0.000281
    3.2 Au    1  2pz        489.457000     0.000603
                             93.639500     0.006479
                             28.592100    -0.089274
                              7.898610     0.339484
                              3.815660     0.515078
                              1.810830     0.246876
                              0.741758     0.021833
                              0.295727    -0.000614
                              0.110453     0.000281
    4.2 Au    1  2px        489.457000    -0.000211
                             93.639500    -0.001687
                             28.592100     0.026344
                              7.898610    -0.118687
                              3.815660    -0.193579
                              1.810830    -0.074446
                              0.741758     0.364702
                              0.295727     0.556406
                              0.110453     0.255736
    5.2 Au    1  2py        489.457000    -0.000211
                             93.639500    -0.001687
                             28.592100     0.026344
                              7.898610    -0.118687
                              3.815660    -0.193579
                              1.810830    -0.074446
                              0.741758     0.364702
                              0.295727     0.556406
                              0.110453     0.255736
    6.2 Au    1  2pz        489.457000    -0.000211
                             93.639500    -0.001687
                             28.592100     0.026344
                              7.898610    -0.118687
                              3.815660    -0.193579
                              1.810830    -0.074446
                              0.741758     0.364702
                              0.295727     0.556406
                              0.110453     0.255736
    7.2 Au    1  2px          0.909400     1.000000
    8.2 Au    1  2py          0.909400     1.000000
    9.2 Au    1  2pz          0.909400     1.000000
   10.2 Au    1  2px          0.141600     1.000000
   11.2 Au    1  2py          0.141600     1.000000
   12.2 Au    1  2pz          0.141600     1.000000
   13.2 Au    1  2px         11.291000     1.000000
   14.2 Au    1  2py         11.291000     1.000000
   15.2 Au    1  2pz         11.291000     1.000000
   16.2 Au    1  2px          2.438500     1.000000
   17.2 Au    1  2py          2.438500     1.000000
   18.2 Au    1  2pz          2.438500     1.000000
   19.2 Au    1  2px          0.046500     1.000000
   20.2 Au    1  2py          0.046500     1.000000
   21.2 Au    1  2pz          0.046500     1.000000
   22.2 Au    1  2px          0.015500     1.000000
   23.2 Au    1  2py          0.015500     1.000000
   24.2 Au    1  2pz          0.015500     1.000000
   25.2 Au    1  4f1+         0.674600     1.000000
   26.2 Au    1  4f1-         0.674600     1.000000
   27.2 Au    1  4f0          0.674600     1.000000
   28.2 Au    1  4f3+         0.674600     1.000000
   29.2 Au    1  4f2-         0.674600     1.000000
   30.2 Au    1  4f3-         0.674600     1.000000
   31.2 Au    1  4f2+         0.674600     1.000000
   32.2 Au    1  4f1+         9.353200     1.000000
   33.2 Au    1  4f1-         9.353200     1.000000
   34.2 Au    1  4f0          9.353200     1.000000
   35.2 Au    1  4f3+         9.353200     1.000000
   36.2 Au    1  4f2-         9.353200     1.000000
   37.2 Au    1  4f3-         9.353200     1.000000
   38.2 Au    1  4f2+         9.353200     1.000000
   39.2 Au    1  4f1+         2.509400     1.000000
   40.2 Au    1  4f1-         2.509400     1.000000
   41.2 Au    1  4f0          2.509400     1.000000
   42.2 Au    1  4f3+         2.509400     1.000000
   43.2 Au    1  4f2-         2.509400     1.000000
   44.2 Au    1  4f3-         2.509400     1.000000
   45.2 Au    1  4f2+         2.509400     1.000000
   46.2 Au    1  4f1+         0.306600     1.000000
   47.2 Au    1  4f1-         0.306600     1.000000
   48.2 Au    1  4f0          0.306600     1.000000
   49.2 Au    1  4f3+         0.306600     1.000000
   50.2 Au    1  4f2-         0.306600     1.000000
   51.2 Au    1  4f3-         0.306600     1.000000
   52.2 Au    1  4f2+         0.306600     1.000000
   53.2 Au    1  4f1+         0.102200     1.000000
   54.2 Au    1  4f1-         0.102200     1.000000
   55.2 Au    1  4f0          0.102200     1.000000
   56.2 Au    1  4f3+         0.102200     1.000000
   57.2 Au    1  4f2-         0.102200     1.000000
   58.2 Au    1  4f3-         0.102200     1.000000
   59.2 Au    1  4f2+         0.102200     1.000000

 NUCLEAR CHARGE:                   26
 NUMBER OF PRIMITIVE AOS:         202
 NUMBER OF SYMMETRY AOS:          168
 NUMBER OF CONTRACTIONS:          112   (   53Ag  +   59Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2   3 4 5 6 2 3 4 5 6 2
                                        3 4 5 6 7 8 9101112  131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.234E-04 0.260E-02 0.134E-01 0.411E-01 0.411E-01 0.411E-01 0.411E-01 0.411E-01
         2 0.777E-02 0.777E-02 0.777E-02 0.144E-01 0.144E-01 0.144E-01 0.118E+00 0.118E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     29.098 MB (compressed) written to integral file ( 17.5%)

     Node minimum: 1.311 MB, node maximum: 3.670 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     726474.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     726474      RECORD LENGTH: 524288

 Memory used in sort:       1.28 MW

 SORT1 READ    21109381. AND WROTE      145840. INTEGRALS IN      1 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.12 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN     98 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      724878.  Node maximum:      731457. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.28      1.03
 REAL TIME  *         2.94 SEC
 DISK USED  *        29.28 MB (local),      480.20 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock


   Atom=KR basis=cc-pVTZ-PP        lmin=0  lmax=2

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -462.19811952    -462.19811952     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -462.19812133      -0.00000180     0.43D-04     0.11D-03     1     0       0.01      0.02    diag
   3     -462.19812140      -0.00000008     0.65D-05     0.11D-04     2     0       0.01      0.03    diag
   4     -462.19812140      -0.00000000     0.22D-05     0.19D-05     3     0       0.00      0.03    diag
   5     -462.19812140      -0.00000000     0.55D-06     0.76D-06     0     0       0.01      0.04    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -462.198121404738
  RHF One-electron energy            -808.814604726112
  RHF Two-electron energy             346.616483321374
  RHF Kinetic energy                  329.241872831709
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.403825453395

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.80704     1  1  s    0.99160
    2.1     2.00000    -3.75365     1  1  d0   1.00003
    3.1     2.00000    -3.75365     1  1  d2- -0.68550    1  1  d2+  0.68754
    4.1     2.00000    -3.75365     1  1  d2-  0.70298    1  1  d1+ -0.41883    1  1  d2+  0.54303
    5.1     2.00000    -3.75365     1  1  d1+ -0.37845    1  1  d1-  0.92497
    6.1     2.00000    -3.75365     1  1  d1+  0.79224    1  1  d2+  0.48197    1  1  d1-  0.32444
    7.1     2.00000    -1.18794     1  2  s    0.94691
    1.2     2.00000    -8.48578     1  1  py   0.99870
    2.2     2.00000    -8.48578     1  1  px   1.00005
    3.2     2.00000    -8.48578     1  1  pz   0.99870
    4.2     2.00000    -0.52339     1  2  py   0.99878
    5.2     2.00000    -0.52339     1  2  px   0.99879
    6.2     2.00000    -0.52339     1  2  pz   0.99878


 HOMO      6.2    -0.523392 =     -14.2422eV
 LUMO      8.1     0.026695 =       0.7264eV
 LUMO-HOMO         0.550087 =      14.9686eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.48       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.33      0.05      1.03
 REAL TIME  *         3.00 SEC
 DISK USED  *        29.80 MB (local),      487.51 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      96 (   46   50)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             280   (625 determinants, 1225 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:             294   (345 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.953D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.587D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.621D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.315D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.556D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 5 3 6 4 1 1 3 5   4 6 2 1 3 5 6 4 2 1   3 5 4 6 2 1 2 3 5 4   6 1 2 3 5 6 4 812 7
                                       11 914151310 6 4 3 5   2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.494D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.494D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.168D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.168D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 3   2 1 4 5 810 7 9 6 1   2 3 4 5 610 8 7 9 2   1 3 5 410 8 6 7 910
                                        8 5 4 6 9 7 2 1 3 8  10 5 4 9 7 6 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.84615   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855
                                          0.00855   0.00855
 Weight factors for state symmetry  2:    0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855
                                          0.00855
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    10151
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   31    0   -462.12927972    -462.13436222   -0.00508250    0.04925144 0.00003603 0.00126934  0.10E+01      3.81
   2    8   25    0   -462.13355069    -462.13377720   -0.00022651    0.05132913 0.00010783 0.00008094  0.19E-01      7.57
   3    6   20    0   -462.13377768    -462.13377771   -0.00000003    0.00014661 0.00000001 0.00000042  0.26E-02     10.88
   4    2    5    0   -462.13377771    -462.13377771   -0.00000000    0.00000003 0.00000001 0.00000003  0.52E-06     11.39

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.12E-07)
                       Final energy:   -462.13377771
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -462.199049021296
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.37142781
 One electron energy                          -809.06918886
 Two electron energy                           346.87013984
 Virial ratio                                    2.40327609
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -461.776067473391
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.25276691
 One electron energy                          -800.36823342
 Two electron energy                           338.59216595
 Virial ratio                                    2.40676976
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -461.776067473132
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.25276691
 One electron energy                          -800.36823344
 Two electron energy                           338.59216597
 Virial ratio                                    2.40676976
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -461.776067473067
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.25276691
 One electron energy                          -800.36823344
 Two electron energy                           338.59216597
 Virial ratio                                    2.40676976
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -461.776067472219
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.25276692
 One electron energy                          -800.36823349
 Two electron energy                           338.59216602
 Virial ratio                                    2.40676976
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -461.776067472215
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.25276692
 One electron energy                          -800.36823349
 Two electron energy                           338.59216602
 Virial ratio                                    2.40676976
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -461.771800471257
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.24541168
 One electron energy                          -800.34860332
 Two electron energy                           338.57680285
 Virial ratio                                    2.40678829
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -461.771800471188
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.24541168
 One electron energy                          -800.34860332
 Two electron energy                           338.57680285
 Virial ratio                                    2.40678829
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -461.771800470282
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.24541169
 One electron energy                          -800.34860337
 Two electron energy                           338.57680290
 Virial ratio                                    2.40678829
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -461.742393124087
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.64504169
 One electron energy                          -801.66589392
 Two electron energy                           339.92350080
 Virial ratio                                    2.40498816
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -461.792202755205
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.21608491
 One electron energy                          -800.26196246
 Two electron energy                           338.46975971
 Virial ratio                                    2.40697615
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -461.779907618159
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.23425279
 One electron energy                          -800.31610286
 Two electron energy                           338.53619524
 Virial ratio                                    2.40686081
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -461.779907617940
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.23425279
 One electron energy                          -800.31610287
 Two electron energy                           338.53619525
 Virial ratio                                    2.40686081
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -461.779907617886
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.23425279
 One electron energy                          -800.31610287
 Two electron energy                           338.53619526
 Virial ratio                                    2.40686081
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -461.779907617178
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.23425279
 One electron energy                          -800.31610292
 Two electron energy                           338.53619530
 Virial ratio                                    2.40686081
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -461.779907617177
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.23425279
 One electron energy                          -800.31610292
 Two electron energy                           338.53619530
 Virial ratio                                    2.40686081
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -461.772088849515
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.24217138
 One electron energy                          -800.33775977
 Two electron energy                           338.56567092
 Virial ratio                                    2.40680305
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -461.772088849446
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.24217138
 One electron energy                          -800.33775977
 Two electron energy                           338.56567093
 Virial ratio                                    2.40680305
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -461.772088848551
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.24217139
 One electron energy                          -800.33775982
 Two electron energy                           338.56567097
 Virial ratio                                    2.40680305
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.004028630318
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     0.999999999777
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     0.999999999870
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.999999999104
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.995971370931
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999999999983
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999999978
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.000000000039
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.004058705527
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000002003
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000000020
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999997924
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.995941436177
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999999879
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999999790
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.000000000265
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.107866151766
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999999911527
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000088355
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.999999979474
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.892133868878
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.000000001493
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999998524
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999999983
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     3.108260092616
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.999997850305
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000002142487
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000068
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.891741759895
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.000000020741
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999980812
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999999868
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     2.888105217916
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000088695
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999911775
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000021422
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.111894760192
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999998524
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.000000001498
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999999978
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     2.887681201857
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000002147692
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     3.999997857493
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000002008
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     1.112316803927
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999979381
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.000000019398
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999866
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 4 2   6 3 5 1 3 5 4 6 2 1   4 2 3 5 6 1 2 4 6 3   5 1 2 4 6 3 5 9 7 8
                                       121114151310 4 2 6 3   5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 1 2 2   3 1 9 7 4 810 5 6 2   3 1 4 6 5 810 9 7 3   2 1 4 6 510 8 9 7 4
                                        6 5 810 9 7 3 1 2 4   6 5 810 7 9 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.84889     1  1  s    0.99193
    2.1     2.00000    -3.79671     1  1  d0   1.00011
    3.1     2.00000    -3.79671     1  1  d1+  1.00011
    4.1     2.00000    -3.79671     1  1  d1-  1.00011
    5.1     2.00000    -3.79671     1  1  d2-  1.00011
    6.1     2.00000    -3.79671     1  1  d2+  1.00011
    7.1     1.99997    -1.22295     1  2  s    0.95192
    1.2     2.00000    -8.52875     1  1  pz   1.00002
    2.2     2.00000    -8.52875     1  1  px   1.00002
    3.2     2.00000    -8.52875     1  1  py   1.00002
    4.2     1.94709    -0.54622     1  2  py   1.01313
    5.2     1.94709    -0.54622     1  2  px   1.01313
    6.2     1.94709    -0.54622     1  2  pz   1.01313
    7.2     0.05292     0.08517     1  2  pz  -0.44591    1  7  pz   0.59297    1  8  pz   0.54270
    8.2     0.05292     0.08517     1  2  px  -0.44591    1  7  px   0.59297    1  8  px   0.54270
    9.2     0.05292     0.08517     1  2  py  -0.44591    1  7  py   0.59297    1  8  py   0.54270
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 222000       0.99911843     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2 2b20a0      -0.00809473     -0.57265873      0.00000931      0.00000918     -0.00000801      0.01818291      0.00000000
 2 2a20b0       0.00809473      0.57265873     -0.00000931     -0.00000918      0.00000801     -0.01818291     -0.00000000
 2 b2200a      -0.00809473      0.27058248     -0.00000647     -0.00000567      0.00021827     -0.50502840     -0.00000000
 2 a2200b       0.00809473     -0.27058248      0.00000647      0.00000567     -0.00021827      0.50502840      0.00000000
 2 2a200b      -0.00000000      0.00000792      0.00008496      0.49618682      0.00000304     -0.00000133     -0.00001907
 2 2b200a       0.00000000     -0.00000792     -0.00008496     -0.49618682     -0.00000304      0.00000133      0.00001907
 2 2a2b00      -0.00000000      0.00000800      0.49618682     -0.00008496     -0.00000026     -0.00000207     -0.49647152
 2 2b2a00       0.00000000     -0.00000800     -0.49618682      0.00008496      0.00000026      0.00000207      0.49647152
 2 22b00a      -0.00000000      0.00000014     -0.00000026      0.00000304     -0.49618687     -0.00021438      0.00000207
 2 22a00b       0.00000000     -0.00000014      0.00000026     -0.00000304      0.49618687      0.00021438     -0.00000207
 2 b22a00      -0.00000000      0.00000014     -0.00000026      0.00000304     -0.49618689     -0.00021438     -0.00000207
 2 a22b00       0.00000000     -0.00000014      0.00000026     -0.00000304      0.49618689      0.00021438      0.00000207
 2 22a0b0      -0.00000000      0.00000800      0.49618702     -0.00008496     -0.00000026     -0.00000207      0.49647133
 2 22b0a0       0.00000000     -0.00000800     -0.49618702      0.00008496      0.00000026      0.00000207     -0.49647133
 2 a220b0       0.00000000      0.00000792      0.00008496      0.49618703      0.00000304     -0.00000133      0.00001907
 2 b220a0      -0.00000000     -0.00000792     -0.00008496     -0.49618703     -0.00000304      0.00000133     -0.00001907
 2 22ab00       0.00809473     -0.30207620      0.00000284      0.00000351      0.00021026     -0.48684550      0.00000000
 2 22ba00      -0.00809473      0.30207620     -0.00000284     -0.00000351     -0.00021026      0.48684550     -0.00000000
 2 202020      -0.01170550     -0.07781942      0.00000126      0.00000125     -0.00000109      0.00247090      0.00000000
 2 022002      -0.01170550      0.03676984     -0.00000088     -0.00000077      0.00002966     -0.06862904     -0.00000000
 2 220200      -0.01170550      0.04104957     -0.00000039     -0.00000048     -0.00002857      0.06615814     -0.00000000
 
 Energy:     -462.19904902   -461.77606747   -461.77606747   -461.77606747   -461.77606747   -461.77606747   -461.77180047

 State:              8               9              10
 2 222000       0.00000000      0.00000000     -0.02594843
 2 2b20a0       0.00000000      0.00000000     -0.40178080
 2 2a20b0      -0.00000000     -0.00000000      0.40178080
 2 b2200a      -0.00000000     -0.00000000     -0.40178084
 2 a2200b       0.00000000      0.00000000      0.40178084
 2 2a200b       0.49647153      0.00000232     -0.00000000
 2 2b200a      -0.49647153     -0.00000232      0.00000000
 2 2a2b00      -0.00001907     -0.00000207     -0.00000000
 2 2b2a00       0.00001907      0.00000207      0.00000000
 2 22b00a       0.00000232     -0.49647143     -0.00000000
 2 22a00b      -0.00000232      0.49647143      0.00000000
 2 b22a00      -0.00000232      0.49647142     -0.00000000
 2 a22b00       0.00000232     -0.49647142      0.00000000
 2 22a0b0       0.00001907      0.00000207     -0.00000000
 2 22b0a0      -0.00001907     -0.00000207      0.00000000
 2 a220b0      -0.49647132     -0.00000232     -0.00000000
 2 b220a0       0.49647132      0.00000232      0.00000000
 2 22ab00      -0.00000000     -0.00000000      0.40178083
 2 22ba00       0.00000000      0.00000000     -0.40178083
 2 202020       0.00000000      0.00000000     -0.05337199
 2 022002      -0.00000000     -0.00000000     -0.05337199
 2 220200       0.00000000      0.00000000     -0.05337199
 
 Energy:     -461.77180047   -461.77180047   -461.74239312
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a20a0       0.57424061      0.81087883     -0.00000001     -0.00000000      0.00000351     -0.02584283     -0.00000000
 2 a2200a       0.57424056     -0.38305890      0.00000026      0.00000017     -0.00009642      0.71516310      0.00000000
 2 a22a00       0.00000000     -0.00000002     -0.00001815      0.00000181      0.70259823      0.00009471     -0.00000774
 2 22a00a       0.00000000     -0.00000002     -0.00001815      0.00000181      0.70259822      0.00009471      0.00000774
 2 a220a0       0.00000000     -0.00000001     -0.00059447      0.70259805     -0.00000183     -0.00000017     -0.00010083
 2 22a0a0      -0.00000000      0.00000000      0.70259805      0.00059447      0.00001815     -0.00000025     -0.70220024
 2 2a2a00       0.00000000      0.00000000      0.70259791      0.00059447      0.00001815     -0.00000025      0.70220038
 2 2a200a      -0.00000000     -0.00000001     -0.00059447      0.70259791     -0.00000183     -0.00000017      0.00010083
 2 22aa00       0.57424056     -0.42782001     -0.00000025     -0.00000017      0.00009291     -0.68932026      0.00000000
 
 Energy:     -461.79220276   -461.77990762   -461.77990762   -461.77990762   -461.77990762   -461.77990762   -461.77208885

 State:              8               9
 2 2a20a0       0.00000000      0.00000000
 2 a2200a       0.00000000     -0.00000000
 2 a22a00       0.00001017      0.70220031
 2 22a00a      -0.00001017     -0.70220032
 2 a220a0       0.70220024     -0.00001017
 2 22a0a0      -0.00010083     -0.00000774
 2 2a2a00       0.00010083      0.00000774
 2 2a200a      -0.70220038      0.00001017
 2 22aa00      -0.00000000      0.00000000
 
 Energy:     -461.77208885   -461.77208885
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.54      5.21      0.05      1.03
 REAL TIME  *        14.84 SEC
 DISK USED  *        39.97 MB (local),      629.81 MB (total)
 SF USED    *        26.54 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -462.1990490  -0.0
    -461.7760675   6.0
    -461.7760675   6.0
    -461.7760675   6.0
    -461.7760675   6.0
    -461.7760675   6.0
    -461.7718005   2.0
    -461.7718005   2.0
    -461.7718005   2.0
    -461.7423931  -0.0
    -461.7922028  -0.0
    -461.7799076   6.0
    -461.7799076   6.0
    -461.7799076   6.0
    -461.7799076   6.0
    -461.7799076   6.0
    -461.7720888   2.0
    -461.7720888   2.0
    -461.7720888   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 26
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      231 conf      280 CSFs
 N elec internal:     9996 conf    21280 CSFs
 N-1 el internal:    15576 conf    58240 CSFs
 N-2 el internal:    14289 conf    77596 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -462.19904902
     2      -461.77606747
     3      -461.77606747
     4      -461.77606747
     5      -461.77606747
     6      -461.77606747
     7      -461.77180047
     8      -461.77180047
     9      -461.77180047
    10      -461.74239312

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.5986D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1252D-06

 Number of blocks in overlap matrix:   994   Smallest eigenvalue:  0.60D-07
 Number of N-2 electron functions:    2444
 Number of N-1 electron functions:   58240

 Number of internal configurations:                10822
 Number of singly external configurations:       2796472
 Number of doubly external configurations:       5636048
 Total number of contracted configurations:      8443342
 Total number of uncontracted configurations:  181216110

 Diagonal Coupling coefficients finished.               Storage:  15183431 words, CPU-Time:     30.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1314325 words, CPU-time:      0.38 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -462.19904902    -0.00000000    -0.96823702  0.72D-02  0.61D-01    35.19
    1     2     2     1.00000000     0.00000000  -461.77606747     0.00000000    -0.99446773  0.35D-01  0.66D-01    35.19
    1     3     3     1.00000000     0.00000000  -461.77606747    -0.00000000    -0.98594810  0.35D-01  0.61D-01    35.19
    1     4     4     1.00000000     0.00000000  -461.77606747     0.00000000    -0.98609257  0.35D-01  0.61D-01    35.19
    1     5     5     1.00000000     0.00000000  -461.77606747     0.00000000    -0.98602785  0.35D-01  0.61D-01    35.19
    1     6     6     1.00000000     0.00000000  -461.77606747    -0.00000000    -0.98976037  0.35D-01  0.63D-01    35.19
    1     7     7     1.00000000     0.00000000  -461.77180047    -0.00000000    -0.98841105  0.37D-01  0.61D-01    35.19
    1     8     8     1.00000000     0.00000000  -461.77180047    -0.00000000    -0.98843327  0.37D-01  0.61D-01    35.19
    1     9     9     1.00000000     0.00000000  -461.77180047     0.00000000    -0.98894720  0.37D-01  0.62D-01    35.19
    1    10    10     1.00000000     0.00000000  -461.74239312    -0.00000000    -1.01235258  0.84D-01  0.62D-01    35.19
    2     1     1     1.05451888    -0.86388784  -463.06293686    -0.86388784    -0.01604750  0.10D-02  0.13D-02   298.87
    2     2     2     1.07363636    -0.85768159  -462.63374906    -0.85768159    -0.01685118  0.28D-02  0.93D-03   298.87
    2     3     3     1.07276272    -0.85734425  -462.63341172    -0.85734425    -0.01719401  0.30D-02  0.94D-03   298.87
    2     4     4     1.07272683    -0.85733390  -462.63340137    -0.85733390    -0.01720940  0.30D-02  0.95D-03   298.87
    2     5     5     1.07274362    -0.85731115  -462.63337862    -0.85731115    -0.01721994  0.30D-02  0.95D-03   298.87
    2     6     6     1.07502566    -0.85684177  -462.63290924    -0.85684177    -0.01753068  0.28D-02  0.11D-02   298.87
    2     7     7     1.07410632    -0.85843384  -462.63023431    -0.85843384    -0.01698449  0.30D-02  0.92D-03   298.87
    2     8     8     1.07398569    -0.85841033  -462.63021080    -0.85841033    -0.01700980  0.31D-02  0.92D-03   298.87
    2     9     9     1.07398680    -0.85839671  -462.63019718    -0.85839671    -0.01702163  0.31D-02  0.92D-03   298.87
    2    10    10     1.10239360    -0.85025077  -462.59264390    -0.85025077    -0.03439965  0.14D-01  0.13D-02   298.87
    3     1     1     1.06064874    -0.88066513  -463.07971415    -0.01677729    -0.00081962  0.14D-04  0.98D-04   561.42
    3     2     2     1.06696958    -0.87439662  -462.65046410    -0.01671503    -0.00073894  0.56D-04  0.86D-04   561.42
    3     3     3     1.06697583    -0.87439248  -462.65045995    -0.01704823    -0.00073996  0.56D-04  0.86D-04   561.42
    3     4     4     1.06696178    -0.87438889  -462.65045636    -0.01705499    -0.00074275  0.56D-04  0.87D-04   561.42
    3     5     5     1.06718552    -0.87438714  -462.65045461    -0.01707599    -0.00073313  0.54D-04  0.88D-04   561.42
    3     6     6     1.06707367    -0.87431257  -462.65038004    -0.01747080    -0.00078317  0.53D-04  0.99D-04   561.42
    3     7     7     1.06769834    -0.87531400  -462.64711447    -0.01688015    -0.00073417  0.63D-04  0.84D-04   561.42
    3     8     8     1.06767890    -0.87531221  -462.64711269    -0.01690189    -0.00073555  0.63D-04  0.84D-04   561.42
    3     9     9     1.06767501    -0.87531198  -462.64711245    -0.01691527    -0.00073625  0.63D-04  0.84D-04   561.42
    3    10    10     1.07218919    -0.88430703  -462.62670016    -0.03405626    -0.00126088  0.14D-03  0.13D-03   561.42
    4     1     1     1.06432193    -0.88170250  -463.08075152    -0.00103737    -0.00006530  0.20D-05  0.64D-05   824.98
    4     2     2     1.06831865    -0.87530378  -462.65137125    -0.00090716    -0.00008170  0.32D-05  0.99D-05   824.98
    4     3     3     1.06831514    -0.87530244  -462.65136991    -0.00090996    -0.00008248  0.32D-05  0.10D-04   824.98
    4     4     4     1.06831356    -0.87530222  -462.65136970    -0.00091334    -0.00008268  0.32D-05  0.10D-04   824.98
    4     5     5     1.06826066    -0.87529944  -462.65136691    -0.00091230    -0.00008598  0.35D-05  0.10D-04   824.98
    4     6     6     1.06814993    -0.87529271  -462.65136018    -0.00098014    -0.00009223  0.37D-05  0.11D-04   824.98
    4     7     7     1.06877819    -0.87621388  -462.64801435    -0.00089988    -0.00008266  0.32D-05  0.10D-04   824.98
    4     8     8     1.06877830    -0.87621359  -462.64801406    -0.00090137    -0.00008275  0.32D-05  0.10D-04   824.98
    4     9     9     1.06877254    -0.87621351  -462.64801398    -0.00090153    -0.00008277  0.32D-05  0.10D-04   824.98
    4    10    10     1.07295843    -0.88576878  -462.62816191    -0.00146175    -0.00011068  0.45D-05  0.15D-04   824.98
    5     1     1     1.06476886    -0.88178226  -463.08083128    -0.00007976    -0.00000482  0.20D-06  0.49D-06  1088.47
    5     2     2     1.06890079    -0.87541198  -462.65147945    -0.00010820    -0.00000915  0.38D-06  0.10D-05  1088.47
    5     3     3     1.06890396    -0.87541173  -462.65147920    -0.00010929    -0.00000934  0.41D-06  0.11D-05  1088.47
    5     4     4     1.06891950    -0.87541117  -462.65147864    -0.00010895    -0.00000944  0.38D-06  0.11D-05  1088.47
    5     5     5     1.06891874    -0.87541100  -462.65147847    -0.00011156    -0.00000956  0.38D-06  0.11D-05  1088.47
    5     6     6     1.06891909    -0.87541099  -462.65147847    -0.00011828    -0.00000956  0.38D-06  0.11D-05  1088.47
    5     7     7     1.06937177    -0.87632256  -462.64812304    -0.00010869    -0.00000937  0.36D-06  0.11D-05  1088.47
    5     8     8     1.06937170    -0.87632249  -462.64812296    -0.00010890    -0.00000943  0.36D-06  0.11D-05  1088.47
    5     9     9     1.06937145    -0.87632245  -462.64812292    -0.00010894    -0.00000940  0.36D-06  0.11D-05  1088.47
    5    10    10     1.07366200    -0.88591888  -462.62831201    -0.00015010    -0.00001409  0.78D-06  0.17D-05  1088.47
    6     1     1     1.06474679    -0.88178820  -463.08083722    -0.00000594    -0.00000048  0.15D-07  0.52D-07  1351.74
    6     2     2     1.06889018    -0.87542373  -462.65149120    -0.00001175    -0.00000124  0.41D-07  0.16D-06  1351.74
    6     3     3     1.06889038    -0.87542360  -462.65149107    -0.00001187    -0.00000135  0.47D-07  0.17D-06  1351.74
    6     4     4     1.06888988    -0.87542359  -462.65149106    -0.00001242    -0.00000138  0.47D-07  0.17D-06  1351.74
    6     5     5     1.06888977    -0.87542358  -462.65149105    -0.00001258    -0.00000137  0.47D-07  0.17D-06  1351.74
    6     6     6     1.06889067    -0.87542356  -462.65149103    -0.00001256    -0.00000121  0.41D-07  0.16D-06  1351.74
    6     7     7     1.06935355    -0.87633475  -462.64813522    -0.00001219    -0.00000128  0.41D-07  0.16D-06  1351.74
    6     8     8     1.06935308    -0.87633474  -462.64813521    -0.00001224    -0.00000127  0.41D-07  0.16D-06  1351.74
    6     9     9     1.06935290    -0.87633467  -462.64813514    -0.00001222    -0.00000128  0.41D-07  0.16D-06  1351.74
    6    10    10     1.07360490    -0.88593777  -462.62833089    -0.00001888    -0.00000215  0.11D-06  0.27D-06  1351.74
    7     1     1     1.06476273    -0.88178879  -463.08083781    -0.00000059    -0.00000006  0.24D-08  0.55D-08  1615.32
    7     2     2     1.06890685    -0.87542542  -462.65149289    -0.00000169    -0.00000026  0.13D-07  0.27D-07  1615.32
    7     3     3     1.06890805    -0.87542540  -462.65149288    -0.00000181    -0.00000024  0.12D-07  0.25D-07  1615.32
    7     4     4     1.06890677    -0.87542539  -462.65149287    -0.00000180    -0.00000026  0.13D-07  0.27D-07  1615.32
    7     5     5     1.06890697    -0.87542539  -462.65149286    -0.00000181    -0.00000026  0.13D-07  0.27D-07  1615.32
    7     6     6     1.06890789    -0.87542519  -462.65149266    -0.00000163    -0.00000023  0.12D-07  0.24D-07  1615.32
    7     7     7     1.06936608    -0.87633644  -462.64813691    -0.00000169    -0.00000024  0.12D-07  0.25D-07  1615.32
    7     8     8     1.06936625    -0.87633641  -462.64813688    -0.00000167    -0.00000024  0.11D-07  0.25D-07  1615.32
    7     9     9     1.06936615    -0.87633635  -462.64813682    -0.00000169    -0.00000024  0.12D-07  0.25D-07  1615.32
    7    10    10     1.07365732    -0.88594056  -462.62833369    -0.00000280    -0.00000046  0.32D-07  0.45D-07  1615.32
    8     1     1     1.06476393    -0.88178881  -463.08083783    -0.00000003    -0.00000004  0.63D-09  0.37D-08  1861.21
    8     2     2     1.06891369    -0.87542574  -462.65149321    -0.00000032    -0.00000005  0.30D-08  0.46D-08  1861.21
    8     3     3     1.06891367    -0.87542571  -462.65149318    -0.00000031    -0.00000005  0.29D-08  0.46D-08  1861.21
    8     4     4     1.06891374    -0.87542570  -462.65149317    -0.00000031    -0.00000005  0.29D-08  0.45D-08  1861.21
    8     5     5     1.06891449    -0.87542569  -462.65149317    -0.00000031    -0.00000004  0.25D-08  0.39D-08  1861.21
    8     6     6     1.06891448    -0.87542546  -462.65149294    -0.00000028    -0.00000004  0.24D-08  0.37D-08  1861.21
    8     7     7     1.06937245    -0.87633673  -462.64813720    -0.00000029    -0.00000004  0.25D-08  0.40D-08  1861.21
    8     8     8     1.06937256    -0.87633670  -462.64813717    -0.00000029    -0.00000004  0.25D-08  0.40D-08  1861.21
    8     9     9     1.06937246    -0.87633664  -462.64813711    -0.00000029    -0.00000004  0.25D-08  0.40D-08  1861.21
    8    10    10     1.07365231    -0.88594119  -462.62833431    -0.00000062    -0.00000004  0.23D-08  0.48D-08  1861.21


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   6.0%
 P   0.3%  47.3%  36.0%

 Initialization:   1.7%
 Other:            7.8%

 Total CPU:     1861.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222222000           0.9686294   0.0000000  -0.0000000   0.0000000   0.0000001  -0.0000001  -0.0000000  -0.0000000
                           -0.0000000  -0.0066859
 2222222222/2200\           0.0005558   0.0032572  -0.0110248   0.0281923   0.7797221  -0.0737101  -0.0000001  -0.0000001
                           -0.0000000   0.5484531
 222222222222/\00           0.0005557  -0.0014415   0.0038738  -0.0116348  -0.3260912   0.7126273   0.0000001   0.0000000
                            0.0000000   0.5484537
 222222222222/00\          -0.0000000  -0.0068943   0.6784747  -0.0159225   0.0102673   0.0007363  -0.6790810  -0.0014496
                           -0.0011590  -0.0000000
 2222222222/220\0          -0.0000000   0.6787176   0.0070499   0.0046654  -0.0028962   0.0000855  -0.0011582  -0.0003935
                            0.6790807  -0.0000000
 222222222222/0\0          -0.0000000  -0.0049336   0.0162319   0.6781318  -0.0242820  -0.0001378  -0.0014503   0.6790780
                            0.0003911  -0.0000000
 22222222222/2\00          -0.0000000  -0.0049336   0.0162321   0.6781392  -0.0242823  -0.0001378   0.0014502  -0.6790706
                           -0.0003910  -0.0000000
 22222222222/200\          -0.0000000   0.6787292   0.0070500   0.0046655  -0.0028963   0.0000855   0.0011581   0.0003935
                           -0.6790691  -0.0000000
 2222222222/22\00          -0.0000000  -0.0068943   0.6784899  -0.0159228   0.0102676   0.0007361   0.6790660   0.0014496
                            0.0011589  -0.0000000
 22222222222/20\0           0.0005558  -0.0018156   0.0071511  -0.0165574  -0.4536310  -0.6389193  -0.0000001   0.0000000
                            0.0000000   0.5484522
 2222222222022002          -0.0098612  -0.0003121   0.0010565  -0.0027017  -0.0747218   0.0070641   0.0000000   0.0000000
                            0.0000000  -0.0521058
 2222222222220200          -0.0098611   0.0001381  -0.0003712   0.0011150   0.0312493  -0.0682912  -0.0000000  -0.0000000
                           -0.0000000  -0.0521049
 2222222222/2/\0\          -0.0111078  -0.0001129   0.0004448  -0.0010298  -0.0282136  -0.0397395  -0.0000000   0.0000000
                            0.0000000  -0.0669319
 22222222222//\\0          -0.0111079   0.0002026  -0.0006857   0.0017534   0.0484951  -0.0045858  -0.0000000  -0.0000000
                           -0.0000000  -0.0669312
 2222222222//20\\          -0.0111079  -0.0000897   0.0002409  -0.0007236  -0.0202813   0.0443231   0.0000000   0.0000000
                            0.0000000  -0.0669307
 2222222222202020          -0.0098611   0.0001740  -0.0006853   0.0015867   0.0434719   0.0612285   0.0000000  -0.0000000
                           -0.0000000  -0.0521053

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968922    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.018912
 2           0.000000   -0.002133   -0.007030    0.967138   -0.009824    0.003417    0.000000   -0.000008   -0.000000    0.000000
 3          -0.000000    0.008484    0.023130    0.010046    0.966795   -0.010889   -0.000000   -0.000000    0.000011    0.000000
 4           0.000000   -0.019524    0.966301    0.006648   -0.022689    0.029008   -0.000005   -0.000000   -0.000000    0.000000
 5           0.000000   -0.534570   -0.034601   -0.004127    0.014630    0.805186    0.000000    0.000000    0.000000   -0.000000
 6          -0.000000   -0.805788   -0.000196    0.000122    0.001049   -0.534997   -0.000000    0.000000   -0.000000   -0.000001
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000011   -0.000000   -0.002065   -0.001649    0.967011    0.000000
 8          -0.000000    0.000000    0.000005   -0.000000   -0.000000   -0.000000    0.967013   -0.000560    0.002064   -0.000000
 9           0.000000    0.000000    0.000000    0.000008   -0.000000   -0.000000    0.000557    0.967013    0.001650    0.000000
 10          0.018376   -0.000001   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.964911

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969106    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000229
 2           0.000000    0.967222    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 3          -0.000000    0.000000    0.967222   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.967222   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.967222   -0.000000    0.000000    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.967222    0.000000    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.967015    0.000000    0.000000    0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.967015   -0.000000    0.000000
 9           0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.967015   -0.000000
 10         -0.000229    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.965086


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96892169 (fixed)   0.96910902 (relaxed)   0.96910622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000900   -0.00001147   -0.85479670
 Singles      0.00332195   -0.01438762   -0.01626492
 Pairs        0.06144256    0.04275576   -0.01072719
 Total        1.06477351    0.02835667   -0.88178881
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -462.19887930
 Nuclear energy                         0.00000000
 Kinetic energy                       329.41924978
 One electron energy                 -808.16075768
 Two electron energy                  345.07991984
 Virial quotient                       -1.40574917
 Correlation energy                    -0.88195854
 !MRCI STATE 1.1 Energy              -463.080837833800

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -463.13796538 (Davidson, fixed reference)
 Cluster corrected energies          -463.13795997 (Davidson, relaxed reference)
 Cluster corrected energies          -463.13796538 (Davidson, rotated reference)

 Cluster corrected energies          -463.13661017 (Pople, fixed reference)
 Cluster corrected energies          -463.13660458 (Pople, relaxed reference)
 Cluster corrected energies          -463.13661017 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96713844 (fixed)   0.96722365 (relaxed)   0.96722227 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001102   -0.00003705   -0.77548789
 Singles      0.01527269   -0.04649661   -0.05600317
 Pairs        0.05364176   -0.00000002   -0.04393467
 Total        1.06892547   -0.04653368   -0.87542574
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77606747
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93435551
 One electron energy                 -800.67220665
 Two electron energy                  338.02071344
 Virial quotient                       -1.40651618
 Correlation energy                    -0.87542574
 !MRCI STATE 2.1 Energy              -462.651493210515

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71183234 (Davidson, fixed reference)
 Cluster corrected energies          -462.71182967 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71183234 (Davidson, rotated reference)

 Cluster corrected energies          -462.71061794 (Pople, fixed reference)
 Cluster corrected energies          -462.71061517 (Pople, relaxed reference)
 Cluster corrected energies          -462.71061794 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96679496 (fixed)   0.96722366 (relaxed)   0.96722228 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001102   -0.00003705   -0.77548793
 Singles      0.01527266   -0.04649656   -0.05600313
 Pairs        0.05364177   -0.00000001   -0.04393465
 Total        1.06892545   -0.04653362   -0.87542571
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77606747
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93436764
 One electron energy                 -800.67221334
 Two electron energy                  338.02072016
 Virial quotient                       -1.40651613
 Correlation energy                    -0.87542571
 !MRCI STATE 3.1 Energy              -462.651493181233

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71183230 (Davidson, fixed reference)
 Cluster corrected energies          -462.71182963 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71183230 (Davidson, rotated reference)

 Cluster corrected energies          -462.71061790 (Pople, fixed reference)
 Cluster corrected energies          -462.71061512 (Pople, relaxed reference)
 Cluster corrected energies          -462.71061790 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96630080 (fixed)   0.96722363 (relaxed)   0.96722225 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001102   -0.00003705   -0.77548793
 Singles      0.01527260   -0.04649651   -0.05600306
 Pairs        0.05364190   -0.00000000   -0.04393471
 Total        1.06892552   -0.04653356   -0.87542570
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77606747
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93439133
 One electron energy                 -800.67222313
 Two electron energy                  338.02072996
 Virial quotient                       -1.40651603
 Correlation energy                    -0.87542570
 !MRCI STATE 4.1 Energy              -462.651493170941

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71183234 (Davidson, fixed reference)
 Cluster corrected energies          -462.71182968 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71183234 (Davidson, rotated reference)

 Cluster corrected energies          -462.71061795 (Pople, fixed reference)
 Cluster corrected energies          -462.71061517 (Pople, relaxed reference)
 Cluster corrected energies          -462.71061795 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.80518597 (fixed)   0.96722329 (relaxed)   0.96722192 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001101   -0.00003705   -0.77548752
 Singles      0.01527233   -0.04649639   -0.05600293
 Pairs        0.05364292    0.00000003   -0.04393524
 Total        1.06892625   -0.04653341   -0.87542569
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77606747
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93462531
 One electron energy                 -800.67230173
 Two electron energy                  338.02080856
 Virial quotient                       -1.40651503
 Correlation energy                    -0.87542569
 !MRCI STATE 5.1 Energy              -462.651493165928

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71183298 (Davidson, fixed reference)
 Cluster corrected energies          -462.71183033 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71183298 (Davidson, rotated reference)

 Cluster corrected energies          -462.71061861 (Pople, fixed reference)
 Cluster corrected energies          -462.71061585 (Pople, relaxed reference)
 Cluster corrected energies          -462.71061861 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.80578840 (fixed)   0.96722329 (relaxed)   0.96722191 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001102   -0.00003705   -0.77548848
 Singles      0.01527204   -0.04649606   -0.05600247
 Pairs        0.05364319    0.00000095   -0.04393451
 Total        1.06892625   -0.04653216   -0.87542546
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77606747
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93472906
 One electron energy                 -800.67233766
 Two electron energy                  338.02084472
 Virial quotient                       -1.40651458
 Correlation energy                    -0.87542546
 !MRCI STATE 6.1 Energy              -462.651492937017

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71183274 (Davidson, fixed reference)
 Cluster corrected energies          -462.71183007 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71183274 (Davidson, rotated reference)

 Cluster corrected energies          -462.71061837 (Pople, fixed reference)
 Cluster corrected energies          -462.71061560 (Pople, relaxed reference)
 Cluster corrected energies          -462.71061837 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96701137 (fixed)   0.96701612 (relaxed)   0.96701499 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001059   -0.00003548   -0.77484598
 Singles      0.01581303   -0.04773828   -0.05759637
 Pairs        0.05356015   -0.00000000   -0.04389438
 Total        1.06938378   -0.04777376   -0.87633673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77180047
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93261318
 One electron energy                 -800.66116173
 Two electron energy                  338.01302453
 Virial quotient                       -1.40651343
 Correlation energy                    -0.87633673
 !MRCI STATE 7.1 Energy              -462.648137200246

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.70894075 (Davidson, fixed reference)
 Cluster corrected energies          -462.70893854 (Davidson, relaxed reference)
 Cluster corrected energies          -462.70894075 (Davidson, rotated reference)

 Cluster corrected energies          -462.70774123 (Pople, fixed reference)
 Cluster corrected energies          -462.70773894 (Pople, relaxed reference)
 Cluster corrected energies          -462.70774123 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96701257 (fixed)   0.96701608 (relaxed)   0.96701494 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001059   -0.00003548   -0.77484591
 Singles      0.01581303   -0.04773825   -0.05759631
 Pairs        0.05356026    0.00000000   -0.04389447
 Total        1.06938388   -0.04777373   -0.87633670
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77180047
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93262043
 One electron energy                 -800.66116897
 Two electron energy                  338.01303180
 Virial quotient                       -1.40651340
 Correlation energy                    -0.87633670
 !MRCI STATE 8.1 Energy              -462.648137166884

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.70894081 (Davidson, fixed reference)
 Cluster corrected energies          -462.70893860 (Davidson, relaxed reference)
 Cluster corrected energies          -462.70894081 (Davidson, rotated reference)

 Cluster corrected energies          -462.70774129 (Pople, fixed reference)
 Cluster corrected energies          -462.70773899 (Pople, relaxed reference)
 Cluster corrected energies          -462.70774129 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96701342 (fixed)   0.96701612 (relaxed)   0.96701498 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001059   -0.00003548   -0.77484597
 Singles      0.01581300   -0.04773820   -0.05759623
 Pairs        0.05356019   -0.00000001   -0.04389444
 Total        1.06938378   -0.04777368   -0.87633664
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77180047
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93261261
 One electron energy                 -800.66116457
 Two electron energy                  338.01302746
 Virial quotient                       -1.40651343
 Correlation energy                    -0.87633664
 !MRCI STATE 9.1 Energy              -462.648137111072

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.70894066 (Davidson, fixed reference)
 Cluster corrected energies          -462.70893845 (Davidson, relaxed reference)
 Cluster corrected energies          -462.70894066 (Davidson, rotated reference)

 Cluster corrected energies          -462.70774114 (Pople, fixed reference)
 Cluster corrected energies          -462.70773885 (Pople, relaxed reference)
 Cluster corrected energies          -462.70774114 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96491126 (fixed)   0.96508707 (relaxed)   0.96508620 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000950   -0.00004604    0.00014850
 Singles      0.01911918   -0.05105367   -0.06332868
 Pairs        0.05453382   -0.83505536   -0.82276100
 Total        1.07366250   -0.88615508   -0.88594119
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.74256285
 Nuclear energy                         0.00000000
 Kinetic energy                       329.06988234
 One electron energy                 -801.20130943
 Two electron energy                  338.57297512
 Virial quotient                       -1.40586653
 Correlation energy                    -0.88577146
 !MRCI STATE 10.1 Energy             -462.628334309718

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.69358245 (Davidson, fixed reference)
 Cluster corrected energies          -462.69358074 (Davidson, relaxed reference)
 Cluster corrected energies          -462.69358245 (Davidson, rotated reference)

 Cluster corrected energies          -462.69253885 (Pople, fixed reference)
 Cluster corrected energies          -462.69253706 (Pople, relaxed reference)
 Cluster corrected energies          -462.69253885 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      656.63       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2169.14   2162.59      5.21      0.05      1.03
 REAL TIME  *      2251.28 SEC
 DISK USED  *       695.77 MB (local),        9.58 GB (total)
 SF USED    *         6.75 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -463.13796538  AU                              
 SETTING HLSDIAG(2)     =      -462.71183234  AU                              
 SETTING HLSDIAG(3)     =      -462.71183230  AU                              
 SETTING HLSDIAG(4)     =      -462.71183234  AU                              
 SETTING HLSDIAG(5)     =      -462.71183298  AU                              
 SETTING HLSDIAG(6)     =      -462.71183274  AU                              
 SETTING HLSDIAG(7)     =      -462.70894075  AU                              
 SETTING HLSDIAG(8)     =      -462.70894081  AU                              
 SETTING HLSDIAG(9)     =      -462.70894066  AU                              
 SETTING HLSDIAG(10)    =      -462.69358245  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 26
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:      196 conf      294 CSFs
 N elec internal:     9772 conf    32340 CSFs
 N-1 el internal:    14901 conf    99969 CSFs
 N-2 el internal:    12534 conf   138597 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      96 (  46  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -461.79220276
     2      -461.77990762
     3      -461.77990762
     4      -461.77990762
     5      -461.77990762
     6      -461.77990762
     7      -461.77208885
     8      -461.77208885
     9      -461.77208885

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1146D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1730D-06

 Number of blocks in overlap matrix:   953   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    2228
 Number of N-1 electron functions:   99969

 Number of internal configurations:                16224
 Number of singly external configurations:       4799574
 Number of doubly external configurations:       5137088
 Total number of contracted configurations:      9952886
 Total number of uncontracted configurations:  322964154

 Diagonal Coupling coefficients finished.               Storage:  18314272 words, CPU-Time:     46.40 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1345378 words, CPU-time:      0.34 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -461.79220276     0.00000000    -0.99422772  0.31D-01  0.67D-01    51.36
    1     2     2     1.00000000     0.00000000  -461.77990762     0.00000000    -0.99476454  0.33D-01  0.66D-01    51.36
    1     3     3     1.00000000     0.00000000  -461.77990762     0.00000000    -0.99251360  0.33D-01  0.65D-01    51.36
    1     4     4     1.00000000     0.00000000  -461.77990762     0.00000000    -0.99314439  0.33D-01  0.65D-01    51.36
    1     5     5     1.00000000     0.00000000  -461.77990762     0.00000000    -0.99271152  0.33D-01  0.65D-01    51.36
    1     6     6     1.00000000     0.00000000  -461.77990762     0.00000000    -0.99091254  0.33D-01  0.64D-01    51.36
    1     7     7     1.00000000     0.00000000  -461.77208885     0.00000000    -0.99419063  0.37D-01  0.65D-01    51.36
    1     8     8     1.00000000     0.00000000  -461.77208885     0.00000000    -0.99413303  0.37D-01  0.65D-01    51.36
    1     9     9     1.00000000     0.00000000  -461.77208885     0.00000000    -0.99407683  0.37D-01  0.65D-01    51.36
    2     1     1     1.07221582    -0.85570930  -462.64791205    -0.85570930    -0.01675646  0.20D-02  0.11D-02   370.10
    2     2     2     1.07339102    -0.85842629  -462.63833391    -0.85842629    -0.01594154  0.23D-02  0.87D-03   370.10
    2     3     3     1.07325842    -0.85822750  -462.63813512    -0.85822750    -0.01606161  0.23D-02  0.89D-03   370.10
    2     4     4     1.07321463    -0.85821076  -462.63811838    -0.85821076    -0.01607094  0.23D-02  0.89D-03   370.10
    2     5     5     1.07295897    -0.85737246  -462.63728008    -0.85737246    -0.01658535  0.25D-02  0.96D-03   370.10
    2     6     6     1.07402188    -0.85675291  -462.63666052    -0.85675291    -0.01712857  0.24D-02  0.11D-02   370.10
    2     7     7     1.07589661    -0.85829448  -462.63038333    -0.85829448    -0.01681150  0.31D-02  0.90D-03   370.10
    2     8     8     1.07592159    -0.85829039  -462.63037924    -0.85829039    -0.01681483  0.31D-02  0.90D-03   370.10
    2     9     9     1.07588691    -0.85820823  -462.63029708    -0.85820823    -0.01686055  0.31D-02  0.91D-03   370.10
    3     1     1     1.06569244    -0.87200753  -462.66421029    -0.01629824    -0.00063760  0.26D-04  0.84D-04   689.14
    3     2     2     1.06720537    -0.87395458  -462.65386219    -0.01552829    -0.00058734  0.55D-04  0.67D-04   689.14
    3     3     3     1.06709695    -0.87391745  -462.65382507    -0.01568995    -0.00061033  0.55D-04  0.71D-04   689.14
    3     4     4     1.06708511    -0.87391265  -462.65382027    -0.01570189    -0.00061350  0.55D-04  0.72D-04   689.14
    3     5     5     1.06672015    -0.87374277  -462.65365039    -0.01637031    -0.00071415  0.55D-04  0.87D-04   689.14
    3     6     6     1.06665751    -0.87369819  -462.65360581    -0.01694528    -0.00074482  0.55D-04  0.94D-04   689.14
    3     7     7     1.06792965    -0.87495762  -462.64704646    -0.01666313    -0.00067846  0.78D-04  0.75D-04   689.14
    3     8     8     1.06793153    -0.87495702  -462.64704587    -0.01666662    -0.00067845  0.79D-04  0.75D-04   689.14
    3     9     9     1.06789038    -0.87493972  -462.64702857    -0.01673149    -0.00068807  0.78D-04  0.77D-04   689.14
    4     1     1     1.06680787    -0.87278562  -462.66498837    -0.00077808    -0.00006994  0.26D-05  0.83D-05  1008.48
    4     2     2     1.06790573    -0.87464582  -462.65455344    -0.00069124    -0.00005951  0.22D-05  0.78D-05  1008.48
    4     3     3     1.06787714    -0.87464151  -462.65454913    -0.00072406    -0.00006290  0.24D-05  0.81D-05  1008.48
    4     4     4     1.06787606    -0.87464107  -462.65454869    -0.00072842    -0.00006334  0.24D-05  0.81D-05  1008.48
    4     5     5     1.06777231    -0.87461915  -462.65452677    -0.00087638    -0.00008061  0.36D-05  0.95D-05  1008.48
    4     6     6     1.06769914    -0.87461500  -462.65452262    -0.00091681    -0.00008453  0.38D-05  0.10D-04  1008.48
    4     7     7     1.06851594    -0.87575497  -462.64784382    -0.00079736    -0.00006752  0.28D-05  0.88D-05  1008.48
    4     8     8     1.06851471    -0.87575440  -462.64784325    -0.00079738    -0.00006769  0.28D-05  0.88D-05  1008.48
    4     9     9     1.06850153    -0.87575164  -462.64784049    -0.00081192    -0.00006967  0.29D-05  0.90D-05  1008.48
    5     1     1     1.06745730    -0.87287380  -462.66507655    -0.00008818    -0.00000576  0.32D-06  0.61D-06  1328.54
    5     2     2     1.06843167    -0.87472408  -462.65463169    -0.00007826    -0.00000640  0.35D-06  0.74D-06  1328.54
    5     3     3     1.06843088    -0.87472381  -462.65463143    -0.00008230    -0.00000661  0.36D-06  0.76D-06  1328.54
    5     4     4     1.06843144    -0.87472377  -462.65463139    -0.00008270    -0.00000660  0.36D-06  0.76D-06  1328.54
    5     5     5     1.06842701    -0.87472287  -462.65463049    -0.00010372    -0.00000766  0.44D-06  0.83D-06  1328.54
    5     6     6     1.06842926    -0.87472272  -462.65463034    -0.00010772    -0.00000773  0.44D-06  0.84D-06  1328.54
    5     7     7     1.06910135    -0.87584291  -462.64793176    -0.00008794    -0.00000702  0.38D-06  0.82D-06  1328.54
    5     8     8     1.06910196    -0.87584273  -462.64793158    -0.00008833    -0.00000711  0.38D-06  0.83D-06  1328.54
    5     9     9     1.06910322    -0.87584256  -462.64793141    -0.00009092    -0.00000728  0.39D-06  0.84D-06  1328.54
    6     1     1     1.06743845    -0.87288064  -462.66508340    -0.00000685    -0.00000055  0.22D-07  0.76D-07  1648.17
    6     2     2     1.06843113    -0.87473229  -462.65463991    -0.00000822    -0.00000089  0.35D-07  0.12D-06  1648.17
    6     3     3     1.06844119    -0.87473228  -462.65463989    -0.00000846    -0.00000083  0.33D-07  0.11D-06  1648.17
    6     4     4     1.06843946    -0.87473223  -462.65463985    -0.00000846    -0.00000085  0.34D-07  0.11D-06  1648.17
    6     5     5     1.06843126    -0.87473222  -462.65463984    -0.00000935    -0.00000090  0.35D-07  0.12D-06  1648.17
    6     6     6     1.06843964    -0.87473219  -462.65463980    -0.00000946    -0.00000085  0.34D-07  0.11D-06  1648.17
    6     7     7     1.06912787    -0.87585190  -462.64794075    -0.00000898    -0.00000092  0.39D-07  0.12D-06  1648.17
    6     8     8     1.06912715    -0.87585185  -462.64794070    -0.00000912    -0.00000095  0.40D-07  0.13D-06  1648.17
    6     9     9     1.06912790    -0.87585185  -462.64794070    -0.00000929    -0.00000095  0.40D-07  0.13D-06  1648.17
    7     1     1     1.06745089    -0.87288135  -462.66508411    -0.00000071    -0.00000009  0.47D-08  0.10D-07  1967.70
    7     2     2     1.06844755    -0.87473350  -462.65464112    -0.00000121    -0.00000018  0.93D-08  0.20D-07  1967.70
    7     3     3     1.06844772    -0.87473344  -462.65464106    -0.00000117    -0.00000018  0.94D-08  0.20D-07  1967.70
    7     4     4     1.06845036    -0.87473340  -462.65464101    -0.00000117    -0.00000017  0.88D-08  0.18D-07  1967.70
    7     5     5     1.06844993    -0.87473339  -462.65464101    -0.00000117    -0.00000017  0.92D-08  0.19D-07  1967.70
    7     6     6     1.06844990    -0.87473335  -462.65464096    -0.00000116    -0.00000017  0.92D-08  0.19D-07  1967.70
    7     7     7     1.06913760    -0.87585317  -462.64794202    -0.00000127    -0.00000020  0.10D-07  0.22D-07  1967.70
    7     8     8     1.06913699    -0.87585316  -462.64794201    -0.00000131    -0.00000020  0.11D-07  0.22D-07  1967.70
    7     9     9     1.06913742    -0.87585315  -462.64794200    -0.00000131    -0.00000021  0.11D-07  0.22D-07  1967.70
    8     1     1     1.06745386    -0.87288146  -462.66508422    -0.00000011    -0.00000001  0.91D-09  0.13D-08  2287.76
    8     2     2     1.06845268    -0.87473373  -462.65464135    -0.00000023    -0.00000004  0.22D-08  0.33D-08  2287.76
    8     3     3     1.06845242    -0.87473367  -462.65464129    -0.00000023    -0.00000004  0.23D-08  0.33D-08  2287.76
    8     4     4     1.06845227    -0.87473360  -462.65464122    -0.00000021    -0.00000003  0.21D-08  0.31D-08  2287.76
    8     5     5     1.06845221    -0.87473360  -462.65464122    -0.00000021    -0.00000003  0.20D-08  0.30D-08  2287.76
    8     6     6     1.06845220    -0.87473356  -462.65464118    -0.00000021    -0.00000003  0.21D-08  0.31D-08  2287.76
    8     7     7     1.06914026    -0.87585341  -462.64794226    -0.00000024    -0.00000004  0.25D-08  0.36D-08  2287.76
    8     8     8     1.06914010    -0.87585341  -462.64794226    -0.00000025    -0.00000004  0.26D-08  0.38D-08  2287.76
    8     9     9     1.06914014    -0.87585341  -462.64794226    -0.00000025    -0.00000004  0.26D-08  0.38D-08  2287.76


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   7.4%
 P   0.3%  58.5%  25.5%

 Initialization:   2.1%
 Other:            5.4%

 Total CPU:     2287.8 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222//00           0.5558851  -0.1912172   0.7613441  -0.0002368  -0.0001785   0.0001638  -0.0000000  -0.0000000
                           -0.0000000
 22222222222/20/0           0.5558899   0.7549485  -0.2150726  -0.0000587   0.0000513   0.0000795  -0.0000000  -0.0000000
                           -0.0000000
 2222222222/220/0           0.0000000  -0.0000008   0.0001594   0.0000002   0.6798220  -0.0006388   0.6789440   0.0171356
                            0.0011583
 222222222222/0/0           0.0000000   0.0001218   0.0002420   0.6798216  -0.0000001   0.0002254  -0.0011586  -0.0000006
                            0.6791609
 222222222222/00/          -0.0000000  -0.0001220  -0.0001768  -0.0002253   0.0006389   0.6798214   0.0171356  -0.6789456
                            0.0000286
 22222222222/2/00          -0.0000000   0.0001218   0.0002420   0.6798176  -0.0000001   0.0002254   0.0011586   0.0000006
                           -0.6791648
 2222222222/22/00           0.0000000  -0.0001220  -0.0001768  -0.0002253   0.0006389   0.6798173  -0.0171357   0.6789497
                           -0.0000286
 22222222222/200/          -0.0000000  -0.0000008   0.0001593   0.0000002   0.6798168  -0.0006388  -0.6789493  -0.0171358
                           -0.0011583
 2222222222/2200/           0.5558870  -0.5637359  -0.5462677   0.0002956   0.0001272  -0.0002433   0.0000000  -0.0000000
                            0.0000000
 2222222222/\20//          -0.0000001  -0.0570425  -0.0143266   0.0000153   0.0000033  -0.0000140   0.0000000   0.0000000
                            0.0000000
 2222222222/2\/0/           0.0000002  -0.0161141  -0.0565637   0.0000230   0.0000132  -0.0000176  -0.0000000  -0.0000000
                            0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.967885    0.000003   -0.000000    0.000000    0.000000    0.000001    0.000000    0.000000    0.000000
 2          -0.000003    0.921522    0.000173   -0.000001   -0.000174   -0.294485    0.000000    0.000000    0.000000
 3           0.000002   -0.294485    0.000344    0.000227   -0.000252   -0.921522    0.000000    0.000000    0.000000
 4          -0.000000   -0.000060    0.967432    0.000000   -0.000321    0.000381    0.000003    0.000000    0.000000
 5          -0.000000    0.000070   -0.000000    0.967432    0.000909    0.000215   -0.000000    0.000004   -0.000000
 6          -0.000000    0.000089    0.000321   -0.000909    0.967432   -0.000293    0.000000    0.000000   -0.000003
 7          -0.000000   -0.000000    0.000000   -0.000004   -0.000000    0.000000   -0.001650    0.966811   -0.024401
 8          -0.000000   -0.000000   -0.000000   -0.000000    0.000003    0.000000   -0.000001    0.024401    0.966812
 9          -0.000000   -0.000000   -0.000003   -0.000000   -0.000000    0.000000    0.967119    0.001649   -0.000041

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967885   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.967432    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.967432   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.967432   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.967432   -0.000000    0.000000    0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.967432    0.000000   -0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.967120   -0.000000   -0.000000
 8          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.967120   -0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.967120


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96788531 (fixed)   0.96788656 (relaxed)   0.96788531 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000711   -0.00001239   -0.77459691
 Singles      0.01452800   -0.04603532   -0.05500382
 Pairs        0.05292634   -0.00000000   -0.04328072
 Total        1.06746145   -0.04604771   -0.87288146
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79220276
 Nuclear energy                         0.00000000
 Kinetic energy                       328.92062436
 One electron energy                 -800.65033702
 Two electron energy                  337.98525280
 Virial quotient                       -1.40661622
 Correlation energy                    -0.87288146
 !MRCI STATE 1.1 Energy              -462.665084216426

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.72397006 (Davidson, fixed reference)
 Cluster corrected energies          -462.72396766 (Davidson, relaxed reference)
 Cluster corrected energies          -462.72397006 (Davidson, rotated reference)

 Cluster corrected energies          -462.72225593 (Pople, fixed reference)
 Cluster corrected energies          -462.72225346 (Pople, relaxed reference)
 Cluster corrected energies          -462.72225593 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.92152198 (fixed)   0.96743294 (relaxed)   0.96743188 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000903   -0.00002674   -0.77494662
 Singles      0.01509468   -0.04674035   -0.05610070
 Pairs        0.05335862   -0.00000000   -0.04368641
 Total        1.06846233   -0.04676710   -0.87473373
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77990762
 Nuclear energy                         0.00000000
 Kinetic energy                       328.92793868
 One electron energy                 -800.65954670
 Two electron energy                  338.00490535
 Virial quotient                       -1.40655319
 Correlation energy                    -0.87473373
 !MRCI STATE 2.1 Energy              -462.654641346719

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71452765 (Davidson, fixed reference)
 Cluster corrected energies          -462.71452561 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71452765 (Davidson, rotated reference)

 Cluster corrected energies          -462.71283511 (Pople, fixed reference)
 Cluster corrected energies          -462.71283300 (Pople, relaxed reference)
 Cluster corrected energies          -462.71283511 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92152198 (fixed)   0.96743305 (relaxed)   0.96743199 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000903   -0.00002674   -0.77494683
 Singles      0.01509468   -0.04674027   -0.05610064
 Pairs        0.05335836   -0.00000000   -0.04368620
 Total        1.06846207   -0.04676701   -0.87473367
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77990762
 Nuclear energy                         0.00000000
 Kinetic energy                       328.92785593
 One electron energy                 -800.65952430
 Two electron energy                  338.00488301
 Virial quotient                       -1.40655354
 Correlation energy                    -0.87473367
 !MRCI STATE 3.1 Energy              -462.654641287614

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71452737 (Davidson, fixed reference)
 Cluster corrected energies          -462.71452532 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71452737 (Davidson, rotated reference)

 Cluster corrected energies          -462.71283482 (Pople, fixed reference)
 Cluster corrected energies          -462.71283271 (Pople, relaxed reference)
 Cluster corrected energies          -462.71283482 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96743193 (fixed)   0.96743312 (relaxed)   0.96743206 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000903   -0.00002673   -0.77494705
 Singles      0.01509455   -0.04674009   -0.05610056
 Pairs        0.05335834   -0.00000000   -0.04368600
 Total        1.06846192   -0.04676682   -0.87473360
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77990762
 Nuclear energy                         0.00000000
 Kinetic energy                       328.92795877
 One electron energy                 -800.65957249
 Two electron energy                  338.00493127
 Virial quotient                       -1.40655310
 Correlation energy                    -0.87473360
 !MRCI STATE 4.1 Energy              -462.654641220667

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71452716 (Davidson, fixed reference)
 Cluster corrected energies          -462.71452511 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71452716 (Davidson, rotated reference)

 Cluster corrected energies          -462.71283460 (Pople, fixed reference)
 Cluster corrected energies          -462.71283250 (Pople, relaxed reference)
 Cluster corrected energies          -462.71283460 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96743164 (fixed)   0.96743315 (relaxed)   0.96743209 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000903   -0.00002673   -0.77494715
 Singles      0.01509450   -0.04674004   -0.05610058
 Pairs        0.05335832    0.00000001   -0.04368587
 Total        1.06846185   -0.04676675   -0.87473360
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77990762
 Nuclear energy                         0.00000000
 Kinetic energy                       328.92804946
 One electron energy                 -800.65960905
 Two electron energy                  338.00496784
 Virial quotient                       -1.40655272
 Correlation energy                    -0.87473360
 !MRCI STATE 5.1 Energy              -462.654641215726

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71452710 (Davidson, fixed reference)
 Cluster corrected energies          -462.71452505 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71452710 (Davidson, rotated reference)

 Cluster corrected energies          -462.71283454 (Pople, fixed reference)
 Cluster corrected energies          -462.71283243 (Pople, relaxed reference)
 Cluster corrected energies          -462.71283454 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96743156 (fixed)   0.96743315 (relaxed)   0.96743209 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000903   -0.00002673   -0.77494947
 Singles      0.01509453   -0.04674003   -0.05610048
 Pairs        0.05335829    0.00000252   -0.04368360
 Total        1.06846185   -0.04676424   -0.87473356
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77990762
 Nuclear energy                         0.00000000
 Kinetic energy                       328.92796369
 One electron energy                 -800.65957686
 Two electron energy                  338.00493569
 Virial quotient                       -1.40655308
 Correlation energy                    -0.87473356
 !MRCI STATE 6.1 Energy              -462.654641175623

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71452705 (Davidson, fixed reference)
 Cluster corrected energies          -462.71452501 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71452705 (Davidson, rotated reference)

 Cluster corrected energies          -462.71283449 (Pople, fixed reference)
 Cluster corrected energies          -462.71283239 (Pople, relaxed reference)
 Cluster corrected energies          -462.71283449 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96681093 (fixed)   0.96712164 (relaxed)   0.96712021 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001012   -0.00003019   -0.79472998
 Singles      0.01554466   -0.04708537   -0.05677207
 Pairs        0.05359630    0.02090951   -0.02435136
 Total        1.06915108   -0.02620605   -0.87585341
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77208885
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93153917
 One electron energy                 -800.65883903
 Two electron energy                  338.01089677
 Virial quotient                       -1.40651743
 Correlation energy                    -0.87585341
 !MRCI STATE 7.1 Energy              -462.647942261305

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.70850847 (Davidson, fixed reference)
 Cluster corrected energies          -462.70850571 (Davidson, relaxed reference)
 Cluster corrected energies          -462.70850847 (Davidson, rotated reference)

 Cluster corrected energies          -462.70683205 (Pople, fixed reference)
 Cluster corrected energies          -462.70682920 (Pople, relaxed reference)
 Cluster corrected energies          -462.70683205 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96681241 (fixed)   0.96712171 (relaxed)   0.96712028 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001012   -0.00003019   -0.00028328
 Singles      0.01554470   -0.04708542   -0.05677205
 Pairs        0.05359611   -0.82847398   -0.81879808
 Total        1.06915092   -0.87558959   -0.87585341
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77208885
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93146064
 One electron energy                 -800.65881000
 Two electron energy                  338.01086774
 Virial quotient                       -1.40651776
 Correlation energy                    -0.87585341
 !MRCI STATE 8.1 Energy              -462.647942259884

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.70850833 (Davidson, fixed reference)
 Cluster corrected energies          -462.70850557 (Davidson, relaxed reference)
 Cluster corrected energies          -462.70850833 (Davidson, rotated reference)

 Cluster corrected energies          -462.70683190 (Pople, fixed reference)
 Cluster corrected energies          -462.70682905 (Pople, relaxed reference)
 Cluster corrected energies          -462.70683190 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96711886 (fixed)   0.96712170 (relaxed)   0.96712027 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001012   -0.00003019   -0.77520556
 Singles      0.01554468   -0.04708540   -0.05677204
 Pairs        0.05359616    0.00003490   -0.04387580
 Total        1.06915096   -0.04708068   -0.87585341
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77208885
 Nuclear energy                         0.00000000
 Kinetic energy                       328.93146900
 One electron energy                 -800.65881295
 Two electron energy                  338.01087069
 Virial quotient                       -1.40651773
 Correlation energy                    -0.87585341
 !MRCI STATE 9.1 Energy              -462.647942255772

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.70850836 (Davidson, fixed reference)
 Cluster corrected energies          -462.70850559 (Davidson, relaxed reference)
 Cluster corrected energies          -462.70850836 (Davidson, rotated reference)

 Cluster corrected energies          -462.70683193 (Pople, fixed reference)
 Cluster corrected energies          -462.70682908 (Pople, relaxed reference)
 Cluster corrected energies          -462.70683193 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1349.82       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4845.45   2676.29   2162.59      5.21      0.05      1.03
 REAL TIME  *      4998.27 SEC
 DISK USED  *         1.36 GB (local),       19.06 GB (total)
 SF USED    *         7.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -462.72396766  AU                              
 SETTING HLSDIAG(12)    =      -462.71452561  AU                              
 SETTING HLSDIAG(13)    =      -462.71452532  AU                              
 SETTING HLSDIAG(14)    =      -462.71452511  AU                              
 SETTING HLSDIAG(15)    =      -462.71452505  AU                              
 SETTING HLSDIAG(16)    =      -462.71452501  AU                              
 SETTING HLSDIAG(17)    =      -462.70850571  AU                              
 SETTING HLSDIAG(18)    =      -462.70850557  AU                              
 SETTING HLSDIAG(19)    =      -462.70850559  AU                              


         HLSDIAG
    -463.1379654
    -462.7118323
    -462.7118323
    -462.7118323
    -462.7118330
    -462.7118327
    -462.7089408
    -462.7089408
    -462.7089407
    -462.6935825
    -462.7239677
    -462.7145256
    -462.7145253
    -462.7145251
    -462.7145251
    -462.7145250
    -462.7085057
    -462.7085056
    -462.7085056
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -463.080838   -462.651493   -462.651493   -462.651493   -462.651493   -462.651493   -462.648137   -462.648137
                      -462.648137   -462.628334
 Replaced energies:   -463.137965   -462.711832   -462.711832   -462.711832   -462.711833   -462.711833   -462.708941   -462.708941
                      -462.708941   -462.693582

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:   -462.665084   -462.654641   -462.654641   -462.654641   -462.654641   -462.654641   -462.647942   -462.647942
                      -462.647942
 Replaced energies:   -462.723968   -462.714526   -462.714525   -462.714525   -462.714525   -462.714525   -462.708506   -462.708506
                      -462.708506



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -463.13796538

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   93525.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   93525.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   93525.39       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   93525.25       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   93525.31       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   94160.02       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94160.01       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94160.04       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   97530.78
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -1.99     932.42       0.54      -0.00
                           -0.00       0.00       0.01      -0.00       0.00      -0.00     932.42       1.99       1.59      -0.00

   12   2.1  1.0  1.0      -0.00      -6.49      21.72     907.51     -32.47       0.05      -1.01     471.33       0.17      -0.00
                            0.00      -3.52     357.48      -8.39       5.22       0.52    -631.21      -1.35      -0.98      -0.00

   13   3.1  1.0  1.0      -0.00       6.98     -22.26    -936.53      33.58       0.65      -1.11     456.72       0.11       0.00
                            0.00     -12.52    1254.84     -29.61      18.72       1.56     179.81       0.25       0.51      -0.00

   14   4.1  1.0  1.0      -0.00       0.57      -3.14       4.91     122.63    1299.55       0.00      -0.25      -0.19      -0.00
                            0.00     652.61       6.27       4.48      -3.14       0.33      -0.92      -0.33     568.40      -0.00

   15   5.1  1.0  1.0      -0.00      -7.24     652.37     -15.09       9.87       0.71    -568.39      -1.32      -0.44      -0.00
                           -0.00       4.75     -15.91    -652.00      24.34      -0.58       1.17    -568.40      -0.33       0.00

   16   6.1  1.0  1.0      -0.00    -652.61      -7.39      -4.55       2.82       0.35      -0.44      -0.12     568.39      -0.00
                            0.00       4.73     -13.92      38.90    1063.26    -756.09      -0.07       0.53       0.19       0.00

   17   7.1  1.0  1.0       1.23      -8.55    -566.50      13.15      -9.62      -0.51     650.09       1.38      17.52       1.48
                           18.21       3.19     -13.71    -565.73      29.83      13.58       1.39    -650.11      -1.48      21.83

   18   8.1  1.0  1.0       0.00     566.72      -8.41       4.23      -2.63       0.06      17.52       0.41    -650.07       0.00
                         -721.35      -1.41       5.63     -28.11    -378.16    -533.34       0.03     -16.41      -0.01    -864.81

   19   9.1  1.0  1.0    -721.58       2.71     -10.17      23.56     651.07     -61.55       1.11       0.00       0.03    -865.09
                            0.03     566.75       5.86       2.93      -2.37       0.09      -1.11      -1.49     650.32       0.04

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01      -0.00      -0.00       0.00       0.00      -2.25      -0.76    1318.65      -0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1790.26      18.76      12.47      -7.64       0.22      -0.24      -0.28     226.10      -0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     449.64       5.00       3.34      -1.53       0.24       1.82       0.31    -900.21      -0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -9.86     922.62     -21.35      13.95       1.00     803.81       1.45       1.65      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       6.80     -24.74      59.98    1677.16     768.58      -0.00       0.76       0.21      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       7.14     -21.74    -922.20      31.45      -0.53      -1.45     803.82       0.27       0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1020.14      -1.86       6.42       6.44    -385.67     841.27       1.62     -23.20      -0.01   -1223.03

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -25.75       5.78     -19.05    -800.91      18.95      21.40      -1.96     919.39       0.53     -30.87

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.74       8.14    -801.22      18.81     -12.78       0.57    -919.67      -2.00      -1.57      -2.09

   29   1.1  1.0 -1.0      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -1.99     932.42       0.54      -0.00
                            0.00      -0.00      -0.01       0.00      -0.00       0.00    -932.42      -1.99      -1.59       0.00

   30   2.1  1.0 -1.0      -0.00      -6.49      21.72     907.51     -32.47       0.05      -1.01     471.33       0.17      -0.00
                           -0.00       3.52    -357.48       8.39      -5.22      -0.52     631.21       1.35       0.98       0.00

   31   3.1  1.0 -1.0      -0.00       6.98     -22.26    -936.53      33.58       0.65      -1.11     456.72       0.11       0.00
                           -0.00      12.52   -1254.84      29.61     -18.72      -1.56    -179.81      -0.25      -0.51       0.00

   32   4.1  1.0 -1.0      -0.00       0.57      -3.14       4.91     122.63    1299.55       0.00      -0.25      -0.19      -0.00
                           -0.00    -652.61      -6.27      -4.48       3.14      -0.33       0.92       0.33    -568.40       0.00

   33   5.1  1.0 -1.0      -0.00      -7.24     652.37     -15.09       9.87       0.71    -568.39      -1.32      -0.44      -0.00
                            0.00      -4.75      15.91     652.00     -24.34       0.58      -1.17     568.40       0.33      -0.00

   34   6.1  1.0 -1.0      -0.00    -652.61      -7.39      -4.55       2.82       0.35      -0.44      -0.12     568.39      -0.00
                           -0.00      -4.73      13.92     -38.90   -1063.26     756.09       0.07      -0.53      -0.19      -0.00

   35   7.1  1.0 -1.0       1.23      -8.55    -566.50      13.15      -9.62      -0.51     650.09       1.38      17.52       1.48
                          -18.21      -3.19      13.71     565.73     -29.83     -13.58      -1.39     650.11       1.48     -21.83

   36   8.1  1.0 -1.0       0.00     566.72      -8.41       4.23      -2.63       0.06      17.52       0.41    -650.07       0.00
                          721.35       1.41      -5.63      28.11     378.16     533.34      -0.03      16.41       0.01     864.81

   37   9.1  1.0 -1.0    -721.58       2.71     -10.17      23.56     651.07     -61.55       1.11       0.00       0.03    -865.09
                           -0.03    -566.75      -5.86      -2.93       2.37      -0.09       1.11       1.49    -650.32      -0.04


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.23       0.00    -721.58       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00     -18.21     721.35      -0.03       0.00

    2   2.1  0.0  0.0       0.00      -6.49       6.98       0.57      -7.24    -652.61      -8.55     566.72       2.71       0.00
                           -0.00       3.52      12.52    -652.61      -4.75      -4.73      -3.19       1.41    -566.75       0.01

    3   3.1  0.0  0.0      -0.00      21.72     -22.26      -3.14     652.37      -7.39    -566.50      -8.41     -10.17       0.00
                           -0.01    -357.48   -1254.84      -6.27      15.91      13.92      13.71      -5.63      -5.86       0.00

    4   4.1  0.0  0.0      -0.00     907.51    -936.53       4.91     -15.09      -4.55      13.15       4.23      23.56       0.00
                            0.00       8.39      29.61      -4.48     652.00     -38.90     565.73      28.11      -2.93       0.00

    5   5.1  0.0  0.0       0.00     -32.47      33.58     122.63       9.87       2.82      -9.62      -2.63     651.07       0.00
                           -0.00      -5.22     -18.72       3.14     -24.34   -1063.26     -29.83     378.16       2.37      -0.00

    6   6.1  0.0  0.0      -0.00       0.05       0.65    1299.55       0.71       0.35      -0.51       0.06     -61.55       0.00
                            0.00      -0.52      -1.56      -0.33       0.58     756.09     -13.58     533.34      -0.09      -0.00

    7   7.1  0.0  0.0      -1.99      -1.01      -1.11       0.00    -568.39      -0.44     650.09      17.52       1.11       0.00
                         -932.42     631.21    -179.81       0.92      -1.17       0.07      -1.39      -0.03       1.11       2.25

    8   8.1  0.0  0.0     932.42     471.33     456.72      -0.25      -1.32      -0.12       1.38       0.41       0.00       0.00
                           -1.99       1.35      -0.25       0.33     568.40      -0.53     650.11      16.41       1.49       0.76

    9   9.1  0.0  0.0       0.54       0.17       0.11      -0.19      -0.44     568.39      17.52    -650.07       0.03       0.00
                           -1.59       0.98      -0.51    -568.40       0.33      -0.19       1.48       0.01    -650.32   -1318.65

   10  10.1  0.0  0.0      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       1.48       0.00    -865.09       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00     -21.83     864.81      -0.04       0.00

   11   1.1  1.0  1.0   90862.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.01       0.00    1503.32      37.94       2.56      -0.00

   12   2.1  1.0  1.0       0.00   92934.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.37       0.15    1565.26      -1.33     258.72       6.69       0.28       0.00

   13   3.1  1.0  1.0       0.00       0.00   92934.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.37       0.00       0.21     393.12      -0.08   -1030.19     -25.67      -2.00      -0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   92934.40       0.00       0.00       0.00       0.00       0.00       0.01
                           -0.00      -0.15      -0.21      -0.00       0.34     806.93     -22.90     919.89      -0.34       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   92934.41       0.00       0.00       0.00       0.00      -0.00
                           -0.01   -1565.26    -393.12      -0.34      -0.00      -0.38       0.24       0.01       0.87      -0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   92934.42       0.00       0.00       0.00       0.00
                           -0.00       1.33       0.08    -806.93       0.38       0.00      -1.80       0.30     920.17      -0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   94255.50       0.00       0.00      -1.81
                        -1503.32    -258.72    1030.19      22.90      -0.24       1.80      -0.00       1.37     -20.26     -26.83

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94255.53       0.00      -0.00
                          -37.94      -6.69      25.67    -919.89      -0.01      -0.30      -1.37       0.00     802.74    1063.00

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94255.53    1063.34
                           -2.56      -0.28       2.00       0.34      -0.87    -920.17      20.26    -802.74      -0.00      -0.04

   20   1.1  1.0  0.0      -0.00       0.00       0.00       0.01      -0.00       0.00      -1.81      -0.00    1063.34   90862.00
                            0.00      -0.00       0.00      -0.00       0.00       0.00      26.83   -1063.00       0.04       0.00

   21   2.1  1.0  0.0      -0.00       0.00       0.43     794.14       0.10       0.26      -1.04      -0.00     539.55       0.00
                            0.00      -0.00      -0.12       0.10      -0.40    -312.67     -18.35     722.33      -0.03      -0.00

   22   3.1  1.0  0.0      -0.00      -0.43      -0.00    -819.53       0.15      -0.14      -1.06      -0.16     522.84       0.00
                           -0.00       0.12      -0.00       0.50      -1.23   -1097.51       4.96    -205.79       0.16      -0.00

   23   4.1  1.0  0.0      -0.01    -794.14     819.53      -0.00      -0.00       0.07      -0.22      -0.01      -0.28       0.00
                            0.00      -0.10      -0.50       0.00    -570.60       0.98    -650.45     -16.47      -1.11      -0.00

   24   5.1  1.0  0.0       0.00      -0.10      -0.15       0.00      -0.00     570.59      17.03    -650.43      -0.09       0.00
                           -0.00       0.40       1.23     570.60      -0.00       0.45      -1.11       0.05     650.66      -0.00

   25   6.1  1.0  0.0      -0.00      -0.26       0.14      -0.07    -570.59       0.00     650.44      17.03       1.34       0.00
                           -0.00     312.67    1097.51      -0.98      -0.45       0.00      -0.22       0.07      -0.61      -0.00

   26   7.1  1.0  0.0       1.81       1.04       1.06       0.22     -17.03    -650.44       0.00     567.80       0.00       0.00
                          -26.83      18.35      -4.96     650.45       1.11       0.22      -0.00       0.02     567.62      -0.00

   27   8.1  1.0  0.0       0.00       0.00       0.16       0.01     650.43     -17.03    -567.80      -0.00      -0.97       0.00
                         1063.00    -722.33     205.79      16.47      -0.05      -0.07      -0.02      -0.00      14.33      -0.00

   28   9.1  1.0  0.0   -1063.34    -539.55    -522.84       0.28       0.09      -1.34      -0.00       0.97       0.00       0.00
                           -0.04       0.03      -0.16       1.11    -650.66       0.61    -567.62     -14.33       0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.81
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -26.83

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    1063.00

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1063.34
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.04


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00    1020.14      25.75       1.74      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -6.49
                        -1790.26    -449.64       9.86      -6.80      -7.14       1.86      -5.78      -8.14       0.00      -3.52

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      21.72
                          -18.76      -5.00    -922.62      24.74      21.74      -6.42      19.05     801.22       0.01     357.48

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     907.51
                          -12.47      -3.34      21.35     -59.98     922.20      -6.44     800.91     -18.81      -0.00      -8.39

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -32.47
                            7.64       1.53     -13.95   -1677.16     -31.45     385.67     -18.95      12.78       0.00       5.22

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.05
                           -0.22      -0.24      -1.00    -768.58       0.53    -841.27     -21.40      -0.57      -0.00       0.52

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.99      -1.01
                            0.24      -1.82    -803.81       0.00       1.45      -1.62       1.96     919.67     932.42    -631.21

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     932.42     471.33
                            0.28      -0.31      -1.45      -0.76    -803.82      23.20    -919.39       2.00       1.99      -1.35

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.54       0.17
                         -226.10     900.21      -1.65      -0.21      -0.27       0.01      -0.53       1.57       1.59      -0.98

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00    1223.03      30.87       2.09      -0.00      -0.00

   11   1.1  1.0  1.0      -0.00      -0.00      -0.01       0.00      -0.00       1.81       0.00   -1063.34       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      26.83   -1063.00       0.04       0.00       0.00

   12   2.1  1.0  1.0       0.00      -0.43    -794.14      -0.10      -0.26       1.04       0.00    -539.55       0.00       0.00
                            0.00      -0.12       0.10      -0.40    -312.67     -18.35     722.33      -0.03       0.00       0.00

   13   3.1  1.0  1.0       0.43      -0.00     819.53      -0.15       0.14       1.06       0.16    -522.84       0.00       0.00
                            0.12       0.00       0.50      -1.23   -1097.51       4.96    -205.79       0.16       0.00       0.00

   14   4.1  1.0  1.0     794.14    -819.53      -0.00       0.00      -0.07       0.22       0.01       0.28       0.00       0.00
                           -0.10      -0.50      -0.00    -570.60       0.98    -650.45     -16.47      -1.11       0.00       0.00

   15   5.1  1.0  1.0       0.10       0.15      -0.00      -0.00    -570.59     -17.03     650.43       0.09       0.00       0.00
                            0.40       1.23     570.60       0.00       0.45      -1.11       0.05     650.66       0.00       0.00

   16   6.1  1.0  1.0       0.26      -0.14       0.07     570.59       0.00    -650.44     -17.03      -1.34       0.00       0.00
                          312.67    1097.51      -0.98      -0.45      -0.00      -0.22       0.07      -0.61       0.00       0.00

   17   7.1  1.0  1.0      -1.04      -1.06      -0.22      17.03     650.44       0.00    -567.80      -0.00       0.00       0.00
                           18.35      -4.96     650.45       1.11       0.22       0.00       0.02     567.62       0.00       0.00

   18   8.1  1.0  1.0      -0.00      -0.16      -0.01    -650.43      17.03     567.80      -0.00       0.97       0.00       0.00
                         -722.33     205.79      16.47      -0.05      -0.07      -0.02       0.00      14.33       0.00       0.00

   19   9.1  1.0  1.0     539.55     522.84      -0.28      -0.09       1.34       0.00      -0.97       0.00       0.00       0.00
                            0.03      -0.16       1.11    -650.66       0.61    -567.62     -14.33      -0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   21   2.1  1.0  0.0   92934.29       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   3.1  1.0  0.0       0.00   92934.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.43
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.12

   23   4.1  1.0  0.0       0.00       0.00   92934.40       0.00       0.00       0.00       0.00       0.00       0.01     794.14
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.10

   24   5.1  1.0  0.0       0.00       0.00       0.00   92934.41       0.00       0.00       0.00       0.00      -0.00       0.10
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.40

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   92934.42       0.00       0.00       0.00       0.00       0.26
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     312.67

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   94255.50       0.00       0.00      -1.81      -1.04
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -26.83      18.35

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   94255.53       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    1063.00    -722.33

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94255.53    1063.34     539.55
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.04       0.03

   29   1.1  1.0 -1.0       0.00       0.00       0.01      -0.00       0.00      -1.81      -0.00    1063.34   90862.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00      26.83   -1063.00       0.04       0.00      -0.00

   30   2.1  1.0 -1.0       0.00       0.43     794.14       0.10       0.26      -1.04      -0.00     539.55       0.00   92934.29
                           -0.00      -0.12       0.10      -0.40    -312.67     -18.35     722.33      -0.03       0.00       0.00

   31   3.1  1.0 -1.0      -0.43      -0.00    -819.53       0.15      -0.14      -1.06      -0.16     522.84       0.00       0.00
                            0.12      -0.00       0.50      -1.23   -1097.51       4.96    -205.79       0.16       0.00       0.37

   32   4.1  1.0 -1.0    -794.14     819.53      -0.00      -0.00       0.07      -0.22      -0.01      -0.28       0.00       0.00
                           -0.10      -0.50       0.00    -570.60       0.98    -650.45     -16.47      -1.11       0.00       0.15

   33   5.1  1.0 -1.0      -0.10      -0.15       0.00      -0.00     570.59      17.03    -650.43      -0.09       0.00       0.00
                            0.40       1.23     570.60      -0.00       0.45      -1.11       0.05     650.66       0.01    1565.26

   34   6.1  1.0 -1.0      -0.26       0.14      -0.07    -570.59       0.00     650.44      17.03       1.34       0.00       0.00
                          312.67    1097.51      -0.98      -0.45       0.00      -0.22       0.07      -0.61       0.00      -1.33

   35   7.1  1.0 -1.0       1.04       1.06       0.22     -17.03    -650.44       0.00     567.80       0.00       0.00       0.00
                           18.35      -4.96     650.45       1.11       0.22      -0.00       0.02     567.62    1503.32     258.72

   36   8.1  1.0 -1.0       0.00       0.16       0.01     650.43     -17.03    -567.80      -0.00      -0.97       0.00       0.00
                         -722.33     205.79      16.47      -0.05      -0.07      -0.02      -0.00      14.33      37.94       6.69

   37   9.1  1.0 -1.0    -539.55    -522.84       0.28       0.09      -1.34      -0.00       0.97       0.00       0.00       0.00
                            0.03      -0.16       1.11    -650.66       0.61    -567.62     -14.33       0.00       2.56       0.28


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0      -0.00      -0.00      -0.00      -0.00       1.23       0.00    -721.58
                            0.00       0.00      -0.00       0.00      18.21    -721.35       0.03

    2   2.1  0.0  0.0       6.98       0.57      -7.24    -652.61      -8.55     566.72       2.71
                          -12.52     652.61       4.75       4.73       3.19      -1.41     566.75

    3   3.1  0.0  0.0     -22.26      -3.14     652.37      -7.39    -566.50      -8.41     -10.17
                         1254.84       6.27     -15.91     -13.92     -13.71       5.63       5.86

    4   4.1  0.0  0.0    -936.53       4.91     -15.09      -4.55      13.15       4.23      23.56
                          -29.61       4.48    -652.00      38.90    -565.73     -28.11       2.93

    5   5.1  0.0  0.0      33.58     122.63       9.87       2.82      -9.62      -2.63     651.07
                           18.72      -3.14      24.34    1063.26      29.83    -378.16      -2.37

    6   6.1  0.0  0.0       0.65    1299.55       0.71       0.35      -0.51       0.06     -61.55
                            1.56       0.33      -0.58    -756.09      13.58    -533.34       0.09

    7   7.1  0.0  0.0      -1.11       0.00    -568.39      -0.44     650.09      17.52       1.11
                          179.81      -0.92       1.17      -0.07       1.39       0.03      -1.11

    8   8.1  0.0  0.0     456.72      -0.25      -1.32      -0.12       1.38       0.41       0.00
                            0.25      -0.33    -568.40       0.53    -650.11     -16.41      -1.49

    9   9.1  0.0  0.0       0.11      -0.19      -0.44     568.39      17.52    -650.07       0.03
                            0.51     568.40      -0.33       0.19      -1.48      -0.01     650.32

   10  10.1  0.0  0.0       0.00      -0.00      -0.00      -0.00       1.48       0.00    -865.09
                           -0.00      -0.00       0.00       0.00      21.83    -864.81       0.04

   11   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   1.1  1.0  0.0      -0.00      -0.01       0.00      -0.00       1.81       0.00   -1063.34
                            0.00      -0.00       0.00       0.00      26.83   -1063.00       0.04

   21   2.1  1.0  0.0      -0.43    -794.14      -0.10      -0.26       1.04       0.00    -539.55
                           -0.12       0.10      -0.40    -312.67     -18.35     722.33      -0.03

   22   3.1  1.0  0.0      -0.00     819.53      -0.15       0.14       1.06       0.16    -522.84
                            0.00       0.50      -1.23   -1097.51       4.96    -205.79       0.16

   23   4.1  1.0  0.0    -819.53      -0.00       0.00      -0.07       0.22       0.01       0.28
                           -0.50      -0.00    -570.60       0.98    -650.45     -16.47      -1.11

   24   5.1  1.0  0.0       0.15      -0.00      -0.00    -570.59     -17.03     650.43       0.09
                            1.23     570.60       0.00       0.45      -1.11       0.05     650.66

   25   6.1  1.0  0.0      -0.14       0.07     570.59       0.00    -650.44     -17.03      -1.34
                         1097.51      -0.98      -0.45      -0.00      -0.22       0.07      -0.61

   26   7.1  1.0  0.0      -1.06      -0.22      17.03     650.44       0.00    -567.80      -0.00
                           -4.96     650.45       1.11       0.22       0.00       0.02     567.62

   27   8.1  1.0  0.0      -0.16      -0.01    -650.43      17.03     567.80      -0.00       0.97
                          205.79      16.47      -0.05      -0.07      -0.02       0.00      14.33

   28   9.1  1.0  0.0     522.84      -0.28      -0.09       1.34       0.00      -0.97       0.00
                           -0.16       1.11    -650.66       0.61    -567.62     -14.33      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.01      -0.00   -1503.32     -37.94      -2.56

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.37      -0.15   -1565.26       1.33    -258.72      -6.69      -0.28

   31   3.1  1.0 -1.0   92934.35       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.21    -393.12       0.08    1030.19      25.67       2.00

   32   4.1  1.0 -1.0       0.00   92934.40       0.00       0.00       0.00       0.00       0.00
                            0.21       0.00      -0.34    -806.93      22.90    -919.89       0.34

   33   5.1  1.0 -1.0       0.00       0.00   92934.41       0.00       0.00       0.00       0.00
                          393.12       0.34       0.00       0.38      -0.24      -0.01      -0.87

   34   6.1  1.0 -1.0       0.00       0.00       0.00   92934.42       0.00       0.00       0.00
                           -0.08     806.93      -0.38      -0.00       1.80      -0.30    -920.17

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   94255.50       0.00       0.00
                        -1030.19     -22.90       0.24      -1.80       0.00      -1.37      20.26

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   94255.53       0.00
                          -25.67     919.89       0.01       0.30       1.37      -0.00    -802.74

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   94255.53
                           -2.00      -0.34       0.87     920.17     -20.26     802.74       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by   -463.13796538 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   93525.392       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   93525.402       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   93525.392       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   93525.252       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   93525.306       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   94160.022       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   94160.011
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000      -0.000      -0.001       0.000      -0.000      -2.816    1318.647
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      -9.171      30.720    1283.416     -45.925       0.069      -1.422     666.563
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       9.874     -31.485   -1324.457      47.489       0.924      -1.567     645.905
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.003       0.813      -4.447       6.937     173.421    1837.845       0.001      -0.349
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000     -10.245     922.592     -21.346      13.954       1.001    -803.830      -1.867
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000    -922.933     -10.458      -6.436       3.987       0.492      -0.616      -0.177
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              1.741     -12.090    -801.146      18.601     -13.605      -0.723     919.360       1.949
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+              0.001     801.461     -11.892       5.982      -3.726       0.079      24.772       0.582
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+          -1020.466       3.827     -14.386      33.324     920.756     -87.049       1.568       0.003
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.007      -0.000      -0.000       0.000       0.000      -2.249      -0.764

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1790.263      18.765      12.468      -7.645       0.225      -0.241      -0.275

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     449.641       4.999       3.337      -1.529       0.237       1.822       0.313

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -9.858     922.615     -21.350      13.954       1.001     803.810       1.449

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.005       6.801     -24.738      59.984    1677.157     768.579      -0.002       0.755

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       7.137     -21.739    -922.199      31.446      -0.535      -1.450     803.817

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1020.142      -1.863       6.424       6.437    -385.670     841.273       1.619     -23.201

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -25.747       5.781     -19.046    -800.910      18.950      21.395      -1.963     919.387

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.740       8.138    -801.224      18.814     -12.783       0.566    -919.674      -2.002

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.012      -0.000       0.000      -0.000    1318.642       2.815

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -4.973     505.552     -11.872       7.380       0.741    -892.662      -1.905

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -17.704    1774.608     -41.874      26.470       2.204     254.286       0.354

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     922.934       8.871       6.343      -4.447       0.470      -1.302      -0.466

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       6.719     -22.506    -922.072      34.426      -0.818       1.656    -803.833

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.002       6.683     -19.683      55.013    1503.673   -1069.266      -0.096       0.755

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               25.747       4.511     -19.389    -800.064      42.187      19.199       1.966    -919.389

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1020.143      -1.997       7.958     -39.751    -534.795    -754.258       0.049     -23.204

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.043     801.505       8.292       4.144      -3.349       0.133      -1.565      -2.101

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.003      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000      -9.171       9.874       0.813     -10.245    -922.933
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.000      30.720     -31.485      -4.447     922.592     -10.458
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000      -0.001    1283.416   -1324.457       6.937     -21.346      -6.436
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000     -45.925      47.489     173.421      13.954       3.987
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000      -0.000       0.069       0.924    1837.845       1.001       0.492
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -2.816      -1.422      -1.567       0.001    -803.830      -0.616
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000    1318.647     666.563     645.905      -0.349      -1.867      -0.177
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           94160.043       0.000       0.759       0.240       0.163      -0.267      -0.617     803.821
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   97530.780      -0.000      -0.000       0.000      -0.002      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+              0.759      -0.000   90861.998       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.240      -0.000       0.000   92934.288       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.163       0.000       0.000       0.000   92934.351       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.267      -0.002       0.000       0.000       0.000   92934.397       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.617      -0.000       0.000       0.000       0.000       0.000   92934.410       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            803.821      -0.000       0.000       0.000       0.000       0.000       0.000   92934.420
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             24.773       2.087       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -919.342       0.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+              0.041   -1223.419       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                             1318.650      -0.000       0.000      -0.000       0.000      -0.000       0.000       0.007

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                              226.104      -0.000       0.000       0.000      -0.164       0.146      -0.560    -442.176

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                             -900.207      -0.000      -0.000       0.164       0.000       0.704      -1.746   -1552.112

    4    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                                1.652      -0.000       0.000      -0.146      -0.704       0.000    -806.945       1.390

    5    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.211      -0.005      -0.000       0.560       1.746     806.945       0.000       0.631

    6    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.270       0.000      -0.007     442.176    1552.112      -1.390      -0.631       0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.011   -1223.030     -37.942      25.947      -7.017     919.874       1.571       0.306

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.529     -30.868    1503.314   -1021.534     291.036      23.296      -0.069      -0.100

    9    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -1.570      -2.086      -0.063       0.044      -0.227       1.569    -920.170       0.865

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.250      -0.000      -0.000       0.000       0.000       0.000       0.009       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.379      -0.000      -0.000      -0.000       0.367       0.145    1565.258      -1.326

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.720      -0.000      -0.000      -0.367       0.000       0.210     393.120      -0.082

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              803.835      -0.000      -0.000      -0.145      -0.210      -0.000       0.338     806.933

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.463       0.000      -0.009   -1565.258    -393.120      -0.338      -0.000      -0.383

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.267       0.003      -0.000       1.326       0.082    -806.933       0.383       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.098      30.868   -1503.318    -258.723    1030.189      22.895      -0.240       1.799

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.014   -1223.033     -37.942      -6.695      25.673    -919.885      -0.006      -0.298

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              919.685       0.052      -2.565      -0.276       1.997       0.343      -0.865    -920.168

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>               1.741       0.001   -1020.466       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.005

    2    1  |0 0>             -12.090     801.461       3.827       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.007   -1790.263    -449.641       9.858      -6.801

    3    1  |0 0>            -801.146     -11.892     -14.386       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -18.765      -4.999    -922.615      24.738

    4    1  |0 0>              18.601       5.982      33.324       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -12.468      -3.337      21.350     -59.984

    5    1  |0 0>             -13.605      -3.726     920.756       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       7.645       1.529     -13.954   -1677.157

    6    1  |0 0>              -0.723       0.079     -87.049       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.225      -0.237      -1.001    -768.579

    7    1  |0 0>             919.360      24.772       1.568       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       2.249       0.241      -1.822    -803.810       0.002

    8    1  |0 0>               1.949       0.582       0.003       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.764       0.275      -0.313      -1.449      -0.755

    9    1  |0 0>              24.773    -919.342       0.041       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1318.650    -226.104     900.207      -1.652      -0.211

   10    1  |0 0>               2.087       0.001   -1223.419       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.005

    1    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000      -0.164       0.146      -0.560

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.164       0.000       0.704      -1.746

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.146      -0.704       0.000    -806.945

    5    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.560       1.746     806.945       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.007     442.176    1552.112      -1.390      -0.631

    7    1  |1 1>+          94255.504       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000     -37.942      25.947      -7.017     919.874       1.571

    8    1  |1 1>+              0.000   94255.535       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000    1503.314   -1021.534     291.036      23.296      -0.069

    9    1  |1 1>+              0.000       0.000   94255.529      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.063       0.044      -0.227       1.569    -920.170

    1    1  |1 0>              -0.000       0.000      -0.000   90861.998       0.000       0.000       0.000       0.000
                               37.942   -1503.314       0.063       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000   92934.288       0.000       0.000       0.000
                              -25.947    1021.534      -0.044      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000   92934.351       0.000       0.000
                                7.017    -291.036       0.227      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000   92934.397       0.000
                             -919.874     -23.296      -1.569      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000   92934.410
                               -1.571       0.069     920.170      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.306       0.100      -0.865      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.034     802.730      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.034       0.000      20.260      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -802.730     -20.260       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.010       0.000
                             1503.318      37.942       2.565      -0.000       0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.608   -1123.086      -0.145
                              258.723       6.695       0.276       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.608       0.000    1158.990      -0.210
                            -1030.189     -25.673      -1.997       0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.010    1123.086   -1158.990       0.000       0.005
                              -22.895     919.885      -0.343       0.000       0.000      -0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000      -0.000       0.145       0.210      -0.005       0.000
                                0.240       0.006       0.865      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.371      -0.195       0.100     806.938
                               -1.799       0.298     920.168       0.000      -0.000       0.000       0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000      -2.565      -1.467      -1.495      -0.304      24.081
                               -0.000       1.369     -20.260       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000      -0.001      -0.004      -0.222      -0.008    -919.850
                               -1.369       0.000     802.741       0.000       0.000      -0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000    1503.794     763.033     739.406      -0.401      -0.132
                               20.260    -802.741      -0.000       0.000      -0.000      -0.000      -0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1020.142      25.747       1.740       0.000      -0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -7.137       1.863      -5.781      -8.138      -0.000       4.973      17.704    -922.934

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               21.739      -6.424      19.046     801.224      -0.012    -505.552   -1774.608      -8.871

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              922.199      -6.437     800.910     -18.814       0.000      11.872      41.874      -6.343

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -31.446     385.670     -18.950      12.783      -0.000      -7.380     -26.470       4.447

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.535    -841.273     -21.395      -0.566       0.000      -0.741      -2.204      -0.470

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.450      -1.619       1.963     919.674   -1318.642     892.662    -254.286       1.302

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -803.817      23.201    -919.387       2.002      -2.815       1.905      -0.354       0.466

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.270       0.011      -0.529       1.570      -2.250       1.379      -0.720    -803.835

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1223.030      30.868       2.086       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.007      37.942   -1503.314       0.063      -0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -442.176     -25.947    1021.534      -0.044      -0.000      -0.000       0.367       0.145

    3    1  |1 1>+             -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                            -1552.112       7.017    -291.036       0.227      -0.000      -0.367       0.000       0.210

    4    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                1.390    -919.874     -23.296      -1.569      -0.000      -0.145      -0.210      -0.000

    5    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.631      -1.571       0.069     920.170      -0.009   -1565.258    -393.120      -0.338

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000      -0.306       0.100      -0.865      -0.000       1.326       0.082    -806.933

    7    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.306       0.000       0.034     802.730   -1503.318    -258.723    1030.189      22.895

    8    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.100      -0.034       0.000      20.260     -37.942      -6.695      25.673    -919.885

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.865    -802.730     -20.260       0.000      -2.565      -0.276       1.997       0.343

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.010
                                0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.608    1123.086
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.608       0.000   -1158.990
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.010   -1123.086    1158.990       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.145      -0.210       0.005
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 0>           92934.420       0.000       0.000       0.000      -0.000      -0.371       0.195      -0.100
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    7    1  |1 0>               0.000   94255.504       0.000       0.000       2.565       1.467       1.495       0.304
                               -0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000       0.000   94255.535       0.000       0.001       0.004       0.222       0.008
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000   94255.529   -1503.794    -763.033    -739.406       0.401
                               -0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-             -0.000       2.565       0.001   -1503.794   90861.998       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.371       1.467       0.004    -763.033       0.000   92934.288       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.195       1.495       0.222    -739.406       0.000       0.000   92934.351       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-             -0.100       0.304       0.008       0.401       0.000       0.000       0.000   92934.397
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-           -806.938     -24.081     919.850       0.132       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000    -919.859     -24.081      -1.899       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-            919.859       0.000    -802.992      -0.001       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             24.081     802.992       0.000       1.370       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              1.899       0.001      -1.370       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000      -0.002     -25.747    1020.143      -0.043

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -6.719      -6.683      -4.511       1.997    -801.505

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               22.506      19.683      19.389      -7.958      -8.292

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              922.072     -55.013     800.064      39.751      -4.144

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -34.426   -1503.673     -42.187     534.795       3.349

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.818    1069.266     -19.199     754.258      -0.133

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -1.656       0.096      -1.966      -0.049       1.565

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              803.833      -0.755     919.389      23.204       2.101

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.463      -0.267       2.098       0.014    -919.685

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.003     -30.868    1223.033      -0.052

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.009       0.000    1503.318      37.942       2.565

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             1565.258      -1.326     258.723       6.695       0.276

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              393.120      -0.082   -1030.189     -25.673      -1.997

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.338     806.933     -22.895     919.885      -0.343

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.383       0.240       0.006       0.865

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.383       0.000      -1.799       0.298     920.168

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.240       1.799      -0.000       1.369     -20.260

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.006      -0.298      -1.369       0.000     802.741

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.865    -920.168      20.260    -802.741      -0.000

    1    1  |1 0>              -0.000       0.000      -2.565      -0.001    1503.794
                                0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.145       0.371      -1.467      -0.004     763.033
                                0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 0>               0.210      -0.195      -1.495      -0.222     739.406
                                0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>              -0.005       0.100      -0.304      -0.008      -0.401
                               -0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000     806.938      24.081    -919.850      -0.132
                               -0.000       0.000      -0.000      -0.000      -0.000

    6    1  |1 0>            -806.938       0.000     919.859      24.081       1.899
                                0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>             -24.081    -919.859       0.000     802.992       0.001
                               -0.000       0.000      -0.000      -0.000       0.000

    8    1  |1 0>             919.850     -24.081    -802.992       0.000      -1.370
                               -0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.132      -1.899      -0.001       1.370       0.000
                               -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          92934.410       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   92934.420       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   94255.504       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   94255.535       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   94255.529
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -463.13811389    -0.00014851      -32.59      0.00000000        0.00      0.0000
    2  -462.72864161     0.40932377    89836.18      0.40947228    89868.78     11.1423
    3  -462.72864161     0.40932377    89836.18      0.40947228    89868.78     11.1423
    4  -462.72864160     0.40932378    89836.19      0.40947229    89868.78     11.1423
    5  -462.72192219     0.41604319    91310.93      0.41619170    91343.52     11.3252
    6  -462.72192213     0.41604325    91310.94      0.41619176    91343.53     11.3252
    7  -462.72192211     0.41604327    91310.94      0.41619178    91343.54     11.3252
    8  -462.72192209     0.41604330    91310.95      0.41619180    91343.54     11.3252
    9  -462.72192203     0.41604336    91310.96      0.41619187    91343.56     11.3252
   10  -462.72187871     0.41608667    91320.47      0.41623518    91353.06     11.3263
   11  -462.72187866     0.41608672    91320.48      0.41623523    91353.07     11.3263
   12  -462.72187863     0.41608675    91320.49      0.41623526    91353.08     11.3263
   13  -462.72187852     0.41608686    91320.51      0.41623537    91353.10     11.3263
   14  -462.72187851     0.41608687    91320.51      0.41623538    91353.11     11.3263
   15  -462.72187848     0.41608690    91320.52      0.41623541    91353.11     11.3263
   16  -462.72187843     0.41608695    91320.53      0.41623546    91353.12     11.3263
   17  -462.71813856     0.41982682    92141.34      0.41997533    92173.93     11.4281
   18  -462.71813855     0.41982684    92141.34      0.41997535    92173.93     11.4281
   19  -462.71813847     0.41982691    92141.36      0.41997542    92173.95     11.4281
   20  -462.71677317     0.42119221    92441.01      0.42134072    92473.60     11.4653
   21  -462.71677310     0.42119228    92441.02      0.42134079    92473.61     11.4653
   22  -462.71677302     0.42119236    92441.04      0.42134087    92473.63     11.4653
   23  -462.71677302     0.42119237    92441.04      0.42134088    92473.63     11.4653
   24  -462.71677298     0.42119240    92441.05      0.42134091    92473.64     11.4653
   25  -462.70765954     0.43030584    94441.22      0.43045435    94473.81     11.7133
   26  -462.69859548     0.43936991    96430.55      0.43951842    96463.14     11.9599
   27  -462.69859543     0.43936995    96430.56      0.43951846    96463.15     11.9599
   28  -462.69859537     0.43937001    96430.57      0.43951852    96463.17     11.9599
   29  -462.69615029     0.44181509    96967.20      0.44196360    96999.80     12.0264
   30  -462.69615027     0.44181512    96967.21      0.44196362    96999.80     12.0264
   31  -462.69615025     0.44181514    96967.21      0.44196365    96999.81     12.0264
   32  -462.69615023     0.44181515    96967.22      0.44196366    96999.81     12.0264
   33  -462.69615019     0.44181519    96967.23      0.44196370    96999.82     12.0264
   34  -462.69587500     0.44209038    97027.62      0.44223889    97060.22     12.0339
   35  -462.69587499     0.44209039    97027.63      0.44223890    97060.22     12.0339
   36  -462.69587492     0.44209046    97027.64      0.44223897    97060.24     12.0339
   37  -462.68696262     0.45100276    98983.66      0.45115127    99016.26     12.2765

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99982993 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000  0.00000001 -0.00000000  0.00000109 -0.00896116  0.64553382 -0.00145758 -0.00426298
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000217  0.00000006  0.00000003  0.00627808  0.00646317  0.00083444  0.01217788
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000006  0.00000050  0.00000002 -0.03768678  0.00362896  0.00531685  0.64440371
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000005 -0.00000003 -0.00000002  0.64432978  0.00909261 -0.01400927  0.03761825
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>          -0.00000000  0.00000003 -0.00000001 -0.00000000  0.01426707  0.00161690  0.64549360 -0.00451712
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000 -0.16987100  0.00397133  0.00278550 -0.00000014 -0.00000001  0.00000004 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000000 -0.00396678 -0.16989469  0.00031150 -0.00000052 -0.00000001  0.00000012  0.00000534
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.00279198 -0.00024635 -0.16991717 -0.00000012  0.00000533 -0.00000001  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00040045  0.00000000  0.00000000  0.00000000 -0.00000022 -0.00000001  0.00000003 -0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.01961142  0.92412895 -0.00112976  0.00000003 -0.00000000 -0.00000005 -0.00000037
                           0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000000 -0.00027075 -0.01275936  0.00001836  0.03933100  0.00075172 -0.00382228 -0.41809036
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00025873 -0.01236461  0.00001907 -0.04047617 -0.00090949  0.00360632  0.42986676
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00000003  0.00000022  0.00000667  0.00000509 -0.06907995 -0.00254877 -0.59686181 -0.00129817
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.01538209 -0.00032385 -0.00024049 -0.00787090  0.00029996 -0.00056382  0.00098043
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000 -0.00024099 -0.00001921 -0.01538936 -0.00551300  0.29794345 -0.00078288  0.00009738
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00001816 -0.24069334  0.00510478 -0.00253861 -0.00404372 -0.00366251 -0.00023256  0.00049806
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000001 -0.00253180  0.00034804  0.24074519 -0.00277525  0.14528409 -0.00029295  0.00004294
                           0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000001 -0.00000000  0.00000000

   9    1  |1 1>+          0.01064489 -0.00041061  0.00000871 -0.00000411  0.16585369  0.00301296 -0.01935533  0.01581375
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000018 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.01359793  0.00084132  0.92423758  0.00000001 -0.00000044  0.00000000 -0.00000001

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000
                          -0.00000000 -0.00006639 -0.00000112 -0.00432839  0.01078374 -0.58468819  0.00115174 -0.00017332

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                           0.00000000  0.00024817  0.00001981  0.01723377  0.00257717 -0.14657389  0.00023222 -0.00011666

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.01538219  0.00033180  0.00022063 -0.00789177  0.00017427 -0.00056600  0.00098565

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000005 -0.00000037 -0.00001447 -0.00000402 -0.54894738 -0.01055394 -0.23782773 -0.04937258

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00033153 -0.01538434  0.00002259 -0.02749997 -0.00070208  0.00287107  0.29774197

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01064152 -0.00028171  0.00608187 -0.00000139 -0.06645864 -0.00092216  0.15402776 -0.00395152

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00026858 -0.00510669 -0.24062694  0.00029418  0.01194380  0.00025543  0.00260095 -0.14485352

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001815  0.24067834 -0.00510174 -0.00353637 -0.00394292  0.00000789 -0.00001016  0.00051908

   1    1  |1 1>-          0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.92402959 -0.01962591 -0.01357702 -0.00000000 -0.00000002 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.01708639 -0.00036293 -0.00025382 -0.00427342 -0.00004302 -0.00037507  0.00060689

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00486780  0.00010699  0.00006603 -0.01511421 -0.00006463 -0.00117625  0.00217444

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00022778 -0.00001397 -0.01539041  0.00565234 -0.29763697  0.00046722 -0.00004424

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00032771  0.01538777 -0.00001882 -0.02834328 -0.00057637  0.00297170  0.29637824

   6    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000002  0.00000142 -0.00001449 -0.00000511 -0.47899546 -0.00822160  0.35778117 -0.04862337

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00026858  0.00511257  0.24063002  0.00011651  0.01613293  0.00008367  0.00211312 -0.14445239

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.01064152  0.00012888  0.00607311 -0.00000720 -0.09934215 -0.00209607 -0.13467576 -0.01185712

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000001  0.00000000 -0.00000000
                          -0.00000045 -0.00353309  0.00019137 -0.24073362 -0.00265188  0.14532897 -0.00028269 -0.00021673

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00629451 -0.00000652 -0.00001494 -0.00220828  0.00001836  0.00155290 -0.00001239 -0.00000104
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.64546827  0.00072249  0.00004417 -0.00002120 -0.00103655  0.00002086  0.00003176  0.00000338
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.01183461 -0.00001709  0.00179746 -0.00001718  0.00002259  0.00000879  0.00139166 -0.00001060
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00704990  0.00001075 -0.00006325  0.00000949 -0.00001411 -0.00000556 -0.00004806 -0.00031548
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00090422  0.00000106 -0.00000022  0.00000031  0.00000096 -0.00000064 -0.00000221  0.00045982
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000463  0.00001896  0.00000002 -0.00000000 -0.00000241 -0.00000002 -0.00000002 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000002  0.00000005 -0.00001289 -0.00000003 -0.00000002 -0.00000002  0.00000632  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000001  0.00000005 -0.00000002  0.00000327  0.00000006  0.00000609  0.00000001  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000023
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.00000000  0.00000192 -0.00000001  0.00000000  0.00000000 -0.00000182 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00254344 -0.00018898  0.67892838 -0.00028601 -0.00006650  0.00005969  0.09048238 -0.00005508
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00254547 -0.00021703  0.28048275 -0.00013160  0.00095320  0.00045315 -0.61913600 -0.00032123
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00293802 -0.00008200 -0.00003302 -0.00002775  0.00022454 -0.00058208 -0.00019999  0.57695376
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+         -0.29872578 -0.49660672 -0.00024684 -0.00019375  0.53622812 -0.00195162  0.00085953 -0.00028194
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00044819  0.00040119 -0.00015806 -0.15769136  0.00291376  0.71399795  0.00047927  0.00059648
                          -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000001 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.14525398 -0.00016725 -0.00000026  0.00001196  0.00023369 -0.00000994  0.00000035  0.00000030
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00358537 -0.00000402 -0.00000043 -0.00049007  0.00000769  0.00035163 -0.00000052  0.00000008
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+         -0.00452610 -0.00000034  0.00000028 -0.00000001  0.00000076  0.00000025  0.00000051 -0.00009219
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000002  0.00000000 -0.00000000 -0.00000008  0.00000000 -0.00000046  0.00000000  0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000012  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00037744 -0.00018317 -0.00032046 -0.54881119  0.00086895  0.21256124  0.00009228  0.00005242

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000008  0.00000000  0.00000001  0.00000000  0.00000000
                          -0.00018567  0.00031949 -0.00005180  0.37393729  0.00367569  0.66652106  0.00036604  0.00031452

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.29959391  0.39432295  0.00010478 -0.00053352  0.61493838 -0.00329176  0.00054627 -0.00018826

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01473552  0.00008171 -0.00030299 -0.00000879 -0.00023177  0.00018904  0.00108211 -0.57726085

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00169810  0.00018983 -0.12063852  0.00010071 -0.00074349 -0.00045572  0.72076050  0.00108849

   7    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00169622  0.00000035  0.00000986  0.00000013 -0.00000007 -0.00000031  0.00000723  0.00014227

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00084392  0.00000003 -0.00039428  0.00000046  0.00000043  0.00000041 -0.00031247  0.00000344

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.14530182 -0.00015499 -0.00000025 -0.00000040  0.00023068 -0.00000107  0.00000034  0.00000039

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000011 -0.00000415 -0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.16545838  0.75581742  0.00022011 -0.00017255 -0.09174967  0.00043762 -0.00014554  0.00003978

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.57804237 -0.16318738  0.00015279  0.00062696 -0.57084710  0.00278911 -0.00066587  0.00005420

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000017  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00006438  0.00026000  0.00035633  0.73082438  0.00045985 -0.02735219 -0.00006727 -0.00010730

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00194864 -0.00013972  0.66770337 -0.00029742 -0.00020343  0.00000281  0.29829876  0.00053459

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.01159761  0.00001205 -0.00043940  0.00016334  0.00006322 -0.00035535 -0.00068859  0.57783368

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00095213  0.00000003 -0.00040954  0.00000129  0.00000043 -0.00000017 -0.00031131  0.00000108

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00282859 -0.00000003 -0.00001053 -0.00000011 -0.00000068  0.00000005 -0.00000772 -0.00004869

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00007914  0.00000018 -0.00000111 -0.00049735  0.00000172  0.00034332 -0.00000107  0.00000007

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000007  0.00000007 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000007 -0.00000034 -0.00001083 -0.00035905 -0.00021907  0.01264584  0.00141790 -0.48920379
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000001  0.00000475 -0.00000044 -0.00042781  0.00562638  0.48636662  0.05232059  0.01272191
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000102 -0.00000010 -0.00000007  0.00407569 -0.01222871 -0.05218164  0.48640762  0.00006341
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00000004  0.00000010  0.00000009 -0.41194040  0.26391042 -0.00445131  0.00960862  0.00009700
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000058 -0.00000009  0.00000000  0.26409766  0.41186399 -0.00533357  0.00756952 -0.00049419
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00116090  0.71536286 -0.00410222  0.00000010  0.00000005 -0.00000127 -0.00000010 -0.00000042
                          -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.71537563 -0.00116207 -0.00019944  0.00000008  0.00000107  0.00000071 -0.00000870  0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00020610  0.00410187  0.71536301  0.00000005 -0.00000004  0.00000074  0.00000013 -0.00000830
                          -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000144 -0.00000124  0.00000000 -0.00000009 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.06062505  0.00022775 -0.00001876 -0.00000003  0.00000011  0.00000011 -0.00000132 -0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.22894302  0.00085998 -0.00002124  0.00418901 -0.00478801 -0.00900575  0.10843589  0.00085897
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.22185733  0.00089846  0.00000294 -0.00428444  0.00501612  0.00931172 -0.11189717 -0.00092079
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.00011992 -0.00000004  0.00009154  0.07178319  0.13918043 -0.00226971  0.00324641 -0.00023326
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+          0.00108940  0.27612360 -0.00137184 -0.00103399  0.00165592  0.07796374  0.00659153  0.00290390
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |1 1>+         -0.00001858 -0.00137166 -0.27611602 -0.00020862  0.00025612 -0.00285111 -0.00085733  0.07826418
                           0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00127266 -0.33936312 -0.00719767 -0.00895086  0.01322052  0.59916200  0.05064002  0.00655970
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00013207 -0.00719652  0.33936465 -0.00198972  0.00194199 -0.00621805 -0.00519656  0.60148338
                           0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000219 -0.00057895 -0.00001198  0.61672809 -0.31693694  0.01889610 -0.03626930  0.00294522
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001784 -0.00024433 -0.06062688 -0.00000001  0.00000001 -0.00000001 -0.00000002  0.00000086

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00007222 -0.00036261 -0.07766103  0.00045238 -0.00040993  0.00540027  0.00164932 -0.15180301

   3    1  |1 0>           0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00001949  0.00114739  0.30920993  0.00009410 -0.00007233  0.00137838  0.00043510 -0.03812777

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00094610 -0.27611634  0.00101608 -0.00103387  0.00165575  0.07795887  0.00659085  0.00287124

   5    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00025950  0.00000070 -0.00007257 -0.08457713  0.13150532 -0.00461952  0.00863999 -0.00066848

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.27611999  0.00094603 -0.00001851 -0.00292150  0.00333446  0.00650206 -0.07791516 -0.00066291

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00856238 -0.00061118  0.00000499 -0.58440974 -0.37521479  0.00000860 -0.00939618 -0.00082840

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.33931783  0.00127441 -0.00010495  0.00830244 -0.03603688 -0.04969210  0.59839849  0.00479996

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000
                           0.00128985  0.33942989 -0.00136771 -0.00894338  0.01208474  0.59884842  0.05041562  0.02173674

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00022782 -0.06062520  0.00024418 -0.00000004  0.00000004  0.00000195  0.00000017  0.00000005

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00115188  0.30659800 -0.00128460 -0.00053887  0.00090921  0.04272258  0.00359698  0.00153668

   3    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                          -0.00026350 -0.08734856  0.00025358 -0.00195020  0.00318944  0.14996301  0.01260921  0.00541581

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00008126 -0.00113648 -0.27611604  0.00028562 -0.00020985  0.00271718  0.00083552 -0.07826714

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.27612090 -0.00101645  0.00008536 -0.00314731  0.00345063  0.00643411 -0.07791751 -0.00062904

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00025926  0.00003295 -0.00009173 -0.15635668 -0.00768342 -0.00231480  0.00556502 -0.00049279

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.33933707 -0.00127245  0.00068402  0.02386638 -0.04403555 -0.04920344  0.59748336  0.00384849

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00856378 -0.00003221  0.00000299 -0.03212817  0.69204509 -0.01889834  0.04565359 -0.00214179

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00067868 -0.00136956 -0.33943174 -0.00174857  0.00154670 -0.02141861 -0.00545182  0.60113853

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.01543217  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000007 -0.00000009 -0.00000360 -0.01639788  0.58589386 -0.00791720  0.00136793
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000002  0.00000492  0.00000024 -0.00000013  0.00933144  0.00728852 -0.00638040  0.01408508
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000013 -0.00000009  0.00000996 -0.00000001 -0.05736291 -0.00186728  0.09093341  0.57615137
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000054  0.00000013 -0.00000030 -0.00000002  0.56233997  0.01344815 -0.14456178  0.07858669
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000371 -0.00000009  0.00000006 -0.00000000  0.15416678  0.01212594  0.56069103 -0.07299608
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.51652500 -0.00118239  0.00068781 -0.00000087 -0.00000111  0.00000048 -0.00000017
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00118254  0.51653095 -0.00011745 -0.00000461 -0.00000038  0.00000264  0.00002861
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.00068745 -0.00011903 -0.51653189  0.00000022 -0.00000742  0.00000012  0.00000005
                           0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.56554630 -0.00000000 -0.00000000  0.00000000 -0.00000021 -0.00000005 -0.00000325  0.00000039
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.00001149  0.07432592 -0.00005991 -0.00000439 -0.00000038  0.00000296  0.00002837
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.00000009  0.00005978  0.38321756 -0.00022594 -0.04853836 -0.00400214  0.06043363  0.36097666
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000008 -0.00005088  0.37133401 -0.00017909  0.05019367  0.00425534 -0.06210578 -0.37257819
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |1 1>+          0.00000320 -0.00000015 -0.00020073  0.00015330  0.18652296  0.01228203  0.49329089 -0.05716773
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00000000 -0.46213600 -0.00001524 -0.00026066  0.00882716  0.00047143 -0.00451221  0.00083650
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000  0.00026063 -0.00020714 -0.46212933  0.00869026 -0.26513990  0.00318123 -0.00237340
                           0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000

   7    1  |1 1>+         -0.00081214 -0.08883268  0.00001557  0.00227550 -0.01172637 -0.00957359  0.00615908 -0.00116489
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.00000044 -0.00227533 -0.00007126 -0.08883390 -0.01141437  0.34173141 -0.00374364  0.00296774
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

   9    1  |1 1>+          0.47606719 -0.00015153  0.00000003  0.00000380  0.36563103  0.00975630 -0.13017896  0.07113524
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00002797 -0.00005991 -0.07432498  0.00000022 -0.00000627  0.00000009  0.00000001

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000
                           0.00000001  0.00003403 -0.00018776 -0.12998863 -0.01674938  0.51429317 -0.00584870  0.00454969

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000
                          -0.00000000  0.00035897  0.00029692  0.51754166 -0.00408990  0.12917667 -0.00143874  0.00121145

   4    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001  0.46213453 -0.00022484 -0.00033448  0.00882424  0.00058280 -0.00451375  0.00083574

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000153 -0.00000002  0.00043425 -0.00012171  0.51869156  0.01743956  0.09514326  0.05389678

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000005  0.00022466  0.46212814 -0.00026123  0.03441345  0.00302142 -0.04345520 -0.25944880

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.47591210 -0.00015128  0.00224202 -0.00000174 -0.06366946  0.00288142  0.38437626 -0.06400589

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01201148 -0.00001381 -0.08883204  0.00007160  0.04339799  0.00382720 -0.04621853 -0.33611267

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00081190  0.08886313 -0.00001003 -0.00003338 -0.01149409 -0.00092445  0.00649577 -0.00107773

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.07431829 -0.00001150 -0.00002789 -0.00000054 -0.00000083  0.00000021 -0.00000004

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.51319584  0.00007993  0.00010995  0.00477765  0.00044187 -0.00241107  0.00039222

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001  0.14620344 -0.00013110 -0.00021941  0.01690481  0.00148204 -0.00862037  0.00135554

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000
                           0.00000001 -0.00013367 -0.00037265 -0.46213406 -0.00874914  0.26513368 -0.00288329  0.00228389

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000006 -0.00010633 -0.46213840  0.00037257  0.03520579  0.00291590 -0.04373067 -0.25926425

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000261 -0.00005401  0.00043415 -0.00015353  0.33209418  0.00535709 -0.39806230  0.11162285

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01201136  0.00001366  0.08882010 -0.00022318  0.05265580  0.00349174 -0.04950556 -0.33440879

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.47591708  0.00000036  0.00224167 -0.00000188 -0.30184616 -0.01264943 -0.25424244 -0.00710875

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                          -0.00002003  0.00003340  0.00022313  0.08885381 -0.01104010  0.34185256 -0.00397681  0.00242275

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.01009707
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00714636 -0.00000105  0.00000038 -0.00000661  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.58589762 -0.00002796 -0.00000118 -0.00000080  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.01192364  0.00000072 -0.00004668  0.00000006  0.00000002
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.01258698 -0.00000047  0.00000188  0.00000008 -0.00000024
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00525453 -0.00000010  0.00000288  0.00000001  0.00000081
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00002552 -0.43876097 -0.00158810  0.00666686  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000008 -0.00158075  0.43880280  0.00049502  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000096 -0.00666866  0.00047096 -0.43875827  0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000005  0.00000000 -0.00000000  0.00000000  0.82471645
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000013 -0.00054504  0.36932325  0.00019201  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00163742  0.00012207 -0.08279461 -0.00006090  0.00000002
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00162702  0.00009456 -0.08017119 -0.00006739 -0.00000002
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00234373 -0.00000066  0.00004601 -0.00003303  0.00000032
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.26511449 -0.09980566 -0.00012938  0.00143975 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00024408  0.00144079 -0.00008550  0.09980122 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.34170229 -0.56467352 -0.00082987 -0.00663138  0.00055694
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00925884 -0.00663196 -0.00030334  0.56468664  0.00000030
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.01521503 -0.00096333 -0.00000147 -0.00001073 -0.32646632
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000070 -0.00498207  0.00018464 -0.36928924 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00090742  0.00039539  0.00000394  0.02806298 -0.00000001

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00014911 -0.00147263  0.00008190 -0.11176954 -0.00000000

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.26512264  0.09978514  0.00018100 -0.00131186 -0.00000001

   5    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01585194  0.00000042 -0.00009256  0.00002623 -0.00000082

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00107405  0.00018002 -0.09979108 -0.00007642 -0.00000002

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00944544 -0.00094238 -0.01424878  0.00000558 -0.32636023

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00129324 -0.00083373  0.56457852  0.00029347 -0.00823694

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.34179125  0.56469208  0.00081355 -0.00761716 -0.00055676

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00001581 -0.36929114 -0.00054758  0.00498179 -0.00000000

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.14527169 -0.11082528 -0.00016445  0.00151270 -0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.50994830  0.03155020  0.00007015 -0.00039104 -0.00000000

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00069387  0.00135437 -0.00004983  0.09979319 -0.00000000

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00131278 -0.00015487  0.09982867  0.00005195 -0.00000001

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.01803476 -0.00001104 -0.00009522  0.00003324 -0.00000001

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00166203  0.00084610 -0.56452277  0.00066977  0.00823690

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00576502  0.00002111 -0.01424952 -0.00000692 -0.32636368

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00063881 -0.00761742 -0.00068071 -0.56468431  0.00001375


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -463.13811389     -0.00014851      -32.59      0.00000000        0.00      0.0000
     2   1   -462.72864161      0.40932377    89836.18      0.40947228    89868.78     11.1423
     3   1   -462.72864161      0.40932377    89836.18      0.40947228    89868.78     11.1423
     4   1   -462.72864160      0.40932378    89836.19      0.40947229    89868.78     11.1423
     5   1   -462.72192219      0.41604319    91310.93      0.41619170    91343.52     11.3252
     6   1   -462.72192213      0.41604325    91310.94      0.41619176    91343.53     11.3252
     7   1   -462.72192211      0.41604327    91310.94      0.41619178    91343.54     11.3252
     8   1   -462.72192209      0.41604330    91310.95      0.41619180    91343.54     11.3252
     9   1   -462.72192203      0.41604336    91310.96      0.41619187    91343.56     11.3252
    10   1   -462.72187871      0.41608667    91320.47      0.41623518    91353.06     11.3263
    11   1   -462.72187866      0.41608672    91320.48      0.41623523    91353.07     11.3263
    12   1   -462.72187863      0.41608675    91320.49      0.41623526    91353.08     11.3263
    13   1   -462.72187852      0.41608686    91320.51      0.41623537    91353.10     11.3263
    14   1   -462.72187851      0.41608687    91320.51      0.41623538    91353.11     11.3263
    15   1   -462.72187848      0.41608690    91320.52      0.41623541    91353.11     11.3263
    16   1   -462.72187843      0.41608695    91320.53      0.41623546    91353.12     11.3263
    17   1   -462.71813856      0.41982682    92141.34      0.41997533    92173.93     11.4281
    18   1   -462.71813855      0.41982684    92141.34      0.41997535    92173.93     11.4281
    19   1   -462.71813847      0.41982691    92141.36      0.41997542    92173.95     11.4281
    20   1   -462.71677317      0.42119221    92441.01      0.42134072    92473.60     11.4653
    21   1   -462.71677310      0.42119228    92441.02      0.42134079    92473.61     11.4653
    22   1   -462.71677302      0.42119236    92441.04      0.42134087    92473.63     11.4653
    23   1   -462.71677302      0.42119237    92441.04      0.42134088    92473.63     11.4653
    24   1   -462.71677298      0.42119240    92441.05      0.42134091    92473.64     11.4653
    25   1   -462.70765954      0.43030584    94441.22      0.43045435    94473.81     11.7133
    26   1   -462.69859548      0.43936991    96430.55      0.43951842    96463.14     11.9599
    27   1   -462.69859543      0.43936995    96430.56      0.43951846    96463.15     11.9599
    28   1   -462.69859537      0.43937001    96430.57      0.43951852    96463.17     11.9599
    29   1   -462.69615029      0.44181509    96967.20      0.44196360    96999.80     12.0264
    30   1   -462.69615027      0.44181512    96967.21      0.44196362    96999.80     12.0264
    31   1   -462.69615025      0.44181514    96967.21      0.44196365    96999.81     12.0264
    32   1   -462.69615023      0.44181515    96967.22      0.44196366    96999.81     12.0264
    33   1   -462.69615019      0.44181519    96967.23      0.44196370    96999.82     12.0264
    34   1   -462.69587500      0.44209038    97027.62      0.44223889    97060.22     12.0339
    35   1   -462.69587499      0.44209039    97027.63      0.44223890    97060.22     12.0339
    36   1   -462.69587492      0.44209046    97027.64      0.44223897    97060.24     12.0339
    37   1   -462.68696262      0.45100276    98983.66      0.45115127    99016.26     12.2765

 E0 =   -463.13796538 is the energy of the lowest zeroth-order state
 E1 =   -463.13811389 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99982993 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000001 -0.00000000  0.00000109 -0.00896116  0.64553382 -0.00145758 -0.00426298
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000217  0.00000006  0.00000003  0.00627808  0.00646317  0.00083444  0.01217788
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000006  0.00000050  0.00000002 -0.03768678  0.00362896  0.00531685  0.64440371
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000005 -0.00000003 -0.00000002  0.64432978  0.00909261 -0.01400927  0.03761825
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000003 -0.00000001 -0.00000000  0.01426707  0.00161690  0.64549360 -0.00451712
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000 -0.16987100  0.00397133  0.00278550 -0.00000014 -0.00000001  0.00000004 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000000 -0.00396678 -0.16989469  0.00031150 -0.00000052 -0.00000001  0.00000012  0.00000534
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.00279198 -0.00024635 -0.16991717 -0.00000012  0.00000533 -0.00000001  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000003 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00040045  0.00000000  0.00000000  0.00000000 -0.00000022 -0.00000001  0.00000003 -0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000  0.01961142  0.92412895 -0.00112976  0.00000003 -0.00000000 -0.00000005 -0.00000037
                                0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.00000000 -0.00027075 -0.01275936  0.00001836  0.03933100  0.00075172 -0.00382228 -0.41809036
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.00000000 -0.00025873 -0.01236461  0.00001907 -0.04047617 -0.00090949  0.00360632  0.42986676
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00000003  0.00000022  0.00000667  0.00000509 -0.06907995 -0.00254877 -0.59686181 -0.00129817
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00000000  0.01538209 -0.00032385 -0.00024049 -0.00787090  0.00029996 -0.00056382  0.00098043
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00000000 -0.00024099 -0.00001921 -0.01538936 -0.00551300  0.29794345 -0.00078288  0.00009738
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00001816 -0.24069334  0.00510478 -0.00253861 -0.00404372 -0.00366251 -0.00023256  0.00049806
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00000001 -0.00253180  0.00034804  0.24074519 -0.00277525  0.14528409 -0.00029295  0.00004294
                                0.00000000 -0.00000000  0.00000000 -0.00000005 -0.00000000  0.00000001 -0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.01064489 -0.00041061  0.00000871 -0.00000411  0.16585369  0.00301296 -0.01935533  0.01581375
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000018 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.01359793  0.00084132  0.92423758  0.00000001 -0.00000044  0.00000000 -0.00000001

 21  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000003 -0.00000000  0.00000000
                               -0.00000000 -0.00006639 -0.00000112 -0.00432839  0.01078374 -0.58468819  0.00115174 -0.00017332

 22  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                                0.00000000  0.00024817  0.00001981  0.01723377  0.00257717 -0.14657389  0.00023222 -0.00011666

 23  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.01538219  0.00033180  0.00022063 -0.00789177  0.00017427 -0.00056600  0.00098565

 24  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000005 -0.00000037 -0.00001447 -0.00000402 -0.54894738 -0.01055394 -0.23782773 -0.04937258

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00033153 -0.01538434  0.00002259 -0.02749997 -0.00070208  0.00287107  0.29774197

 26  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01064152 -0.00028171  0.00608187 -0.00000139 -0.06645864 -0.00092216  0.15402776 -0.00395152

 27  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00026858 -0.00510669 -0.24062694  0.00029418  0.01194380  0.00025543  0.00260095 -0.14485352

 28  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001815  0.24067834 -0.00510174 -0.00353637 -0.00394292  0.00000789 -0.00001016  0.00051908

 29  1     1    1  |1 1>-       0.00000000 -0.00000001  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.92402959 -0.01962591 -0.01357702 -0.00000000 -0.00000002 -0.00000000  0.00000000

 30  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.01708639 -0.00036293 -0.00025382 -0.00427342 -0.00004302 -0.00037507  0.00060689

 31  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00486780  0.00010699  0.00006603 -0.01511421 -0.00006463 -0.00117625  0.00217444

 32  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00022778 -0.00001397 -0.01539041  0.00565234 -0.29763697  0.00046722 -0.00004424

 33  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00032771  0.01538777 -0.00001882 -0.02834328 -0.00057637  0.00297170  0.29637824

 34  1     6    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000002  0.00000142 -0.00001449 -0.00000511 -0.47899546 -0.00822160  0.35778117 -0.04862337

 35  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00026858  0.00511257  0.24063002  0.00011651  0.01613293  0.00008367  0.00211312 -0.14445239

 36  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.01064152  0.00012888  0.00607311 -0.00000720 -0.09934215 -0.00209607 -0.13467576 -0.01185712

 37  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000005  0.00000000 -0.00000001  0.00000000 -0.00000000
                               -0.00000045 -0.00353309  0.00019137 -0.24073362 -0.00265188  0.14532897 -0.00028269 -0.00021673


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00629451 -0.00000652 -0.00001494 -0.00220828  0.00001836  0.00155290 -0.00001239 -0.00000104
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.64546827  0.00072249  0.00004417 -0.00002120 -0.00103655  0.00002086  0.00003176  0.00000338
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.01183461 -0.00001709  0.00179746 -0.00001718  0.00002259  0.00000879  0.00139166 -0.00001060
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00704990  0.00001075 -0.00006325  0.00000949 -0.00001411 -0.00000556 -0.00004806 -0.00031548
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00090422  0.00000106 -0.00000022  0.00000031  0.00000096 -0.00000064 -0.00000221  0.00045982
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000463  0.00001896  0.00000002 -0.00000000 -0.00000241 -0.00000002 -0.00000002 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000002  0.00000005 -0.00001289 -0.00000003 -0.00000002 -0.00000002  0.00000632  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000001  0.00000005 -0.00000002  0.00000327  0.00000006  0.00000609  0.00000001  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000023
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000000 -0.00000000  0.00000192 -0.00000001  0.00000000  0.00000000 -0.00000182 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00254344 -0.00018898  0.67892838 -0.00028601 -0.00006650  0.00005969  0.09048238 -0.00005508
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00254547 -0.00021703  0.28048275 -0.00013160  0.00095320  0.00045315 -0.61913600 -0.00032123
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00293802 -0.00008200 -0.00003302 -0.00002775  0.00022454 -0.00058208 -0.00019999  0.57695376
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.29872578 -0.49660672 -0.00024684 -0.00019375  0.53622812 -0.00195162  0.00085953 -0.00028194
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.00044819  0.00040119 -0.00015806 -0.15769136  0.00291376  0.71399795  0.00047927  0.00059648
                               -0.00000000 -0.00000000 -0.00000000 -0.00000004 -0.00000000 -0.00000001 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.14525398 -0.00016725 -0.00000026  0.00001196  0.00023369 -0.00000994  0.00000035  0.00000030
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+      -0.00358537 -0.00000402 -0.00000043 -0.00049007  0.00000769  0.00035163 -0.00000052  0.00000008
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00452610 -0.00000034  0.00000028 -0.00000001  0.00000076  0.00000025  0.00000051 -0.00009219
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000002  0.00000000 -0.00000000 -0.00000008  0.00000000 -0.00000046  0.00000000  0.00000000

 21  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000012  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00037744 -0.00018317 -0.00032046 -0.54881119  0.00086895  0.21256124  0.00009228  0.00005242

 22  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000008  0.00000000  0.00000001  0.00000000  0.00000000
                               -0.00018567  0.00031949 -0.00005180  0.37393729  0.00367569  0.66652106  0.00036604  0.00031452

 23  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.29959391  0.39432295  0.00010478 -0.00053352  0.61493838 -0.00329176  0.00054627 -0.00018826

 24  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01473552  0.00008171 -0.00030299 -0.00000879 -0.00023177  0.00018904  0.00108211 -0.57726085

 25  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00169810  0.00018983 -0.12063852  0.00010071 -0.00074349 -0.00045572  0.72076050  0.00108849

 26  1     7    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00169622  0.00000035  0.00000986  0.00000013 -0.00000007 -0.00000031  0.00000723  0.00014227

 27  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00084392  0.00000003 -0.00039428  0.00000046  0.00000043  0.00000041 -0.00031247  0.00000344

 28  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.14530182 -0.00015499 -0.00000025 -0.00000040  0.00023068 -0.00000107  0.00000034  0.00000039

 29  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000011 -0.00000415 -0.00000000  0.00000000  0.00000004 -0.00000000 -0.00000000  0.00000000

 30  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.16545838  0.75581742  0.00022011 -0.00017255 -0.09174967  0.00043762 -0.00014554  0.00003978

 31  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.57804237 -0.16318738  0.00015279  0.00062696 -0.57084710  0.00278911 -0.00066587  0.00005420

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000017  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00006438  0.00026000  0.00035633  0.73082438  0.00045985 -0.02735219 -0.00006727 -0.00010730

 33  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00194864 -0.00013972  0.66770337 -0.00029742 -0.00020343  0.00000281  0.29829876  0.00053459

 34  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.01159761  0.00001205 -0.00043940  0.00016334  0.00006322 -0.00035535 -0.00068859  0.57783368

 35  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00095213  0.00000003 -0.00040954  0.00000129  0.00000043 -0.00000017 -0.00031131  0.00000108

 36  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00282859 -0.00000003 -0.00001053 -0.00000011 -0.00000068  0.00000005 -0.00000772 -0.00004869

 37  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00007914  0.00000018 -0.00000111 -0.00049735  0.00000172  0.00034332 -0.00000107  0.00000007


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000007  0.00000007 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000007 -0.00000034 -0.00001083 -0.00035905 -0.00021907  0.01264584  0.00141790 -0.48920379
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000001  0.00000475 -0.00000044 -0.00042781  0.00562638  0.48636662  0.05232059  0.01272191
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000102 -0.00000010 -0.00000007  0.00407569 -0.01222871 -0.05218164  0.48640762  0.00006341
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000004  0.00000010  0.00000009 -0.41194040  0.26391042 -0.00445131  0.00960862  0.00009700
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000058 -0.00000009  0.00000000  0.26409766  0.41186399 -0.00533357  0.00756952 -0.00049419
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00116090  0.71536286 -0.00410222  0.00000010  0.00000005 -0.00000127 -0.00000010 -0.00000042
                               -0.00000000  0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.71537563 -0.00116207 -0.00019944  0.00000008  0.00000107  0.00000071 -0.00000870  0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00020610  0.00410187  0.71536301  0.00000005 -0.00000004  0.00000074  0.00000013 -0.00000830
                               -0.00000000  0.00000000 -0.00000003  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000144 -0.00000124  0.00000000 -0.00000009 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.06062505  0.00022775 -0.00001876 -0.00000003  0.00000011  0.00000011 -0.00000132 -0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.22894302  0.00085998 -0.00002124  0.00418901 -0.00478801 -0.00900575  0.10843589  0.00085897
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.22185733  0.00089846  0.00000294 -0.00428444  0.00501612  0.00931172 -0.11189717 -0.00092079
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00011992 -0.00000004  0.00009154  0.07178319  0.13918043 -0.00226971  0.00324641 -0.00023326
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00108940  0.27612360 -0.00137184 -0.00103399  0.00165592  0.07796374  0.00659153  0.00290390
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 16  1     6    1  |1 1>+      -0.00001858 -0.00137166 -0.27611602 -0.00020862  0.00025612 -0.00285111 -0.00085733  0.07826418
                                0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00127266 -0.33936312 -0.00719767 -0.00895086  0.01322052  0.59916200  0.05064002  0.00655970
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000

 18  1     8    1  |1 1>+      -0.00013207 -0.00719652  0.33936465 -0.00198972  0.00194199 -0.00621805 -0.00519656  0.60148338
                                0.00000000 -0.00000000 -0.00000002 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00000219 -0.00057895 -0.00001198  0.61672809 -0.31693694  0.01889610 -0.03626930  0.00294522
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001784 -0.00024433 -0.06062688 -0.00000001  0.00000001 -0.00000001 -0.00000002  0.00000086

 21  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00007222 -0.00036261 -0.07766103  0.00045238 -0.00040993  0.00540027  0.00164932 -0.15180301

 22  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00001949  0.00114739  0.30920993  0.00009410 -0.00007233  0.00137838  0.00043510 -0.03812777

 23  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00094610 -0.27611634  0.00101608 -0.00103387  0.00165575  0.07795887  0.00659085  0.00287124

 24  1     5    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00025950  0.00000070 -0.00007257 -0.08457713  0.13150532 -0.00461952  0.00863999 -0.00066848

 25  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.27611999  0.00094603 -0.00001851 -0.00292150  0.00333446  0.00650206 -0.07791516 -0.00066291

 26  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00856238 -0.00061118  0.00000499 -0.58440974 -0.37521479  0.00000860 -0.00939618 -0.00082840

 27  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.33931783  0.00127441 -0.00010495  0.00830244 -0.03603688 -0.04969210  0.59839849  0.00479996

 28  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000002  0.00000000 -0.00000000
                                0.00128985  0.33942989 -0.00136771 -0.00894338  0.01208474  0.59884842  0.05041562  0.02173674

 29  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00022782 -0.06062520  0.00024418 -0.00000004  0.00000004  0.00000195  0.00000017  0.00000005

 30  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00115188  0.30659800 -0.00128460 -0.00053887  0.00090921  0.04272258  0.00359698  0.00153668

 31  1     3    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                               -0.00026350 -0.08734856  0.00025358 -0.00195020  0.00318944  0.14996301  0.01260921  0.00541581

 32  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00008126 -0.00113648 -0.27611604  0.00028562 -0.00020985  0.00271718  0.00083552 -0.07826714

 33  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.27612090 -0.00101645  0.00008536 -0.00314731  0.00345063  0.00643411 -0.07791751 -0.00062904

 34  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00025926  0.00003295 -0.00009173 -0.15635668 -0.00768342 -0.00231480  0.00556502 -0.00049279

 35  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.33933707 -0.00127245  0.00068402  0.02386638 -0.04403555 -0.04920344  0.59748336  0.00384849

 36  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00856378 -0.00003221  0.00000299 -0.03212817  0.69204509 -0.01889834  0.04565359 -0.00214179

 37  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000002  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00067868 -0.00136956 -0.33943174 -0.00174857  0.00154670 -0.02141861 -0.00545182  0.60113853


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.01543217  0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000007 -0.00000009 -0.00000360 -0.01639788  0.58589386 -0.00791720  0.00136793
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000002 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000002  0.00000492  0.00000024 -0.00000013  0.00933144  0.00728852 -0.00638040  0.01408508
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000013 -0.00000009  0.00000996 -0.00000001 -0.05736291 -0.00186728  0.09093341  0.57615137
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000054  0.00000013 -0.00000030 -0.00000002  0.56233997  0.01344815 -0.14456178  0.07858669
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000371 -0.00000009  0.00000006 -0.00000000  0.15416678  0.01212594  0.56069103 -0.07299608
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.51652500 -0.00118239  0.00068781 -0.00000087 -0.00000111  0.00000048 -0.00000017
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00118254  0.51653095 -0.00011745 -0.00000461 -0.00000038  0.00000264  0.00002861
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.00068745 -0.00011903 -0.51653189  0.00000022 -0.00000742  0.00000012  0.00000005
                                0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.56554630 -0.00000000 -0.00000000  0.00000000 -0.00000021 -0.00000005 -0.00000325  0.00000039
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.00001149  0.07432592 -0.00005991 -0.00000439 -0.00000038  0.00000296  0.00002837
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.00000009  0.00005978  0.38321756 -0.00022594 -0.04853836 -0.00400214  0.06043363  0.36097666
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.00000008 -0.00005088  0.37133401 -0.00017909  0.05019367  0.00425534 -0.06210578 -0.37257819
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00000320 -0.00000015 -0.00020073  0.00015330  0.18652296  0.01228203  0.49329089 -0.05716773
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+       0.00000000 -0.46213600 -0.00001524 -0.00026066  0.00882716  0.00047143 -0.00451221  0.00083650
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.00000000  0.00026063 -0.00020714 -0.46212933  0.00869026 -0.26513990  0.00318123 -0.00237340
                                0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00081214 -0.08883268  0.00001557  0.00227550 -0.01172637 -0.00957359  0.00615908 -0.00116489
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+      -0.00000044 -0.00227533 -0.00007126 -0.08883390 -0.01141437  0.34173141 -0.00374364  0.00296774
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.47606719 -0.00015153  0.00000003  0.00000380  0.36563103  0.00975630 -0.13017896  0.07113524
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00002797 -0.00005991 -0.07432498  0.00000022 -0.00000627  0.00000009  0.00000001

 21  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000002  0.00000000  0.00000000
                                0.00000001  0.00003403 -0.00018776 -0.12998863 -0.01674938  0.51429317 -0.00584870  0.00454969

 22  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000
                               -0.00000000  0.00035897  0.00029692  0.51754166 -0.00408990  0.12917667 -0.00143874  0.00121145

 23  1     4    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001  0.46213453 -0.00022484 -0.00033448  0.00882424  0.00058280 -0.00451375  0.00083574

 24  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000153 -0.00000002  0.00043425 -0.00012171  0.51869156  0.01743956  0.09514326  0.05389678

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000005  0.00022466  0.46212814 -0.00026123  0.03441345  0.00302142 -0.04345520 -0.25944880

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.47591210 -0.00015128  0.00224202 -0.00000174 -0.06366946  0.00288142  0.38437626 -0.06400589

 27  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01201148 -0.00001381 -0.08883204  0.00007160  0.04339799  0.00382720 -0.04621853 -0.33611267

 28  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00081190  0.08886313 -0.00001003 -0.00003338 -0.01149409 -0.00092445  0.00649577 -0.00107773

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.07431829 -0.00001150 -0.00002789 -0.00000054 -0.00000083  0.00000021 -0.00000004

 30  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.51319584  0.00007993  0.00010995  0.00477765  0.00044187 -0.00241107  0.00039222

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001  0.14620344 -0.00013110 -0.00021941  0.01690481  0.00148204 -0.00862037  0.00135554

 32  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000001 -0.00000000 -0.00000001  0.00000000  0.00000000
                                0.00000001 -0.00013367 -0.00037265 -0.46213406 -0.00874914  0.26513368 -0.00288329  0.00228389

 33  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000006 -0.00010633 -0.46213840  0.00037257  0.03520579  0.00291590 -0.04373067 -0.25926425

 34  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000261 -0.00005401  0.00043415 -0.00015353  0.33209418  0.00535709 -0.39806230  0.11162285

 35  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01201136  0.00001366  0.08882010 -0.00022318  0.05265580  0.00349174 -0.04950556 -0.33440879

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.47591708  0.00000036  0.00224167 -0.00000188 -0.30184616 -0.01264943 -0.25424244 -0.00710875

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000000  0.00000000
                               -0.00002003  0.00003340  0.00022313  0.08885381 -0.01104010  0.34185256 -0.00397681  0.00242275


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.01009707
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00714636 -0.00000105  0.00000038 -0.00000661  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.58589762 -0.00002796 -0.00000118 -0.00000080  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.01192364  0.00000072 -0.00004668  0.00000006  0.00000002
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.01258698 -0.00000047  0.00000188  0.00000008 -0.00000024
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00525453 -0.00000010  0.00000288  0.00000001  0.00000081
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00002552 -0.43876097 -0.00158810  0.00666686  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000008 -0.00158075  0.43880280  0.00049502  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000096 -0.00666866  0.00047096 -0.43875827  0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000005  0.00000000 -0.00000000  0.00000000  0.82471645
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000013 -0.00054504  0.36932325  0.00019201  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.00163742  0.00012207 -0.08279461 -0.00006090  0.00000002
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.00162702  0.00009456 -0.08017119 -0.00006739 -0.00000002
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00234373 -0.00000066  0.00004601 -0.00003303  0.00000032
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.26511449 -0.09980566 -0.00012938  0.00143975 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00024408  0.00144079 -0.00008550  0.09980122 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.34170229 -0.56467352 -0.00082987 -0.00663138  0.00055694
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00925884 -0.00663196 -0.00030334  0.56468664  0.00000030
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.01521503 -0.00096333 -0.00000147 -0.00001073 -0.32646632
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000070 -0.00498207  0.00018464 -0.36928924 -0.00000000

 21  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00090742  0.00039539  0.00000394  0.02806298 -0.00000001

 22  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00014911 -0.00147263  0.00008190 -0.11176954 -0.00000000

 23  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.26512264  0.09978514  0.00018100 -0.00131186 -0.00000001

 24  1     5    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01585194  0.00000042 -0.00009256  0.00002623 -0.00000082

 25  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00107405  0.00018002 -0.09979108 -0.00007642 -0.00000002

 26  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00944544 -0.00094238 -0.01424878  0.00000558 -0.32636023

 27  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00129324 -0.00083373  0.56457852  0.00029347 -0.00823694

 28  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.34179125  0.56469208  0.00081355 -0.00761716 -0.00055676

 29  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00001581 -0.36929114 -0.00054758  0.00498179 -0.00000000

 30  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.14527169 -0.11082528 -0.00016445  0.00151270 -0.00000000

 31  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.50994830  0.03155020  0.00007015 -0.00039104 -0.00000000

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00069387  0.00135437 -0.00004983  0.09979319 -0.00000000

 33  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00131278 -0.00015487  0.09982867  0.00005195 -0.00000001

 34  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.01803476 -0.00001104 -0.00009522  0.00003324 -0.00000001

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00166203  0.00084610 -0.56452277  0.00066977  0.00823690

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00576502  0.00002111 -0.01424952 -0.00000692 -0.32636368

 37  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00063881 -0.00761742 -0.00068071 -0.56468431  0.00001375



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%   41.67%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.14%    0.00%    0.00%   41.53%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   41.52%    0.01%    0.02%    0.14%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.00%   41.67%    0.00%
  7  1     7    1  |0 0>          0.00%    2.89%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    2.89%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    2.89%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.04%   85.40%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.15%    0.00%    0.00%   17.48%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.02%    0.00%    0.16%    0.00%    0.00%   18.48%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.48%    0.00%   35.62%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.02%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.02%    0.00%    8.88%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    5.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    5.80%    0.00%    2.11%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    2.75%    0.00%    0.04%    0.03%
 20  1     1    1  |1 0>          0.00%    0.02%    0.00%   85.42%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%   34.19%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    2.15%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.02%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%   30.13%    0.01%    5.66%    0.24%
 25  1     6    1  |1 0>          0.00%    0.00%    0.02%    0.00%    0.08%    0.00%    0.00%    8.87%
 26  1     7    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.44%    0.00%    2.37%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    5.79%    0.00%    0.01%    0.00%    0.00%    2.10%
 28  1     9    1  |1 0>          0.00%    5.79%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%   85.38%    0.04%    0.02%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.02%    0.00%    8.86%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.02%    0.00%    0.08%    0.00%    0.00%    8.78%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   22.94%    0.01%   12.80%    0.24%
 35  1     7    1  |1 1>-         0.00%    0.00%    5.79%    0.00%    0.03%    0.00%    0.00%    2.09%
 36  1     8    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.99%    0.00%    1.81%    0.01%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    5.80%    0.00%    2.11%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         41.66%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%   46.09%    0.00%    0.00%    0.00%    0.82%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    7.87%    0.00%    0.00%    0.00%   38.33%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.29%
 15  1     5    1  |1 1>+         8.92%   24.66%    0.00%    0.00%   28.75%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    2.49%    0.00%   50.98%    0.00%    0.00%
 17  1     7    1  |1 1>+         2.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%   30.12%    0.00%    4.52%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%   13.98%    0.00%   44.43%    0.00%    0.00%
 23  1     4    1  |1 0>          8.98%   15.55%    0.00%    0.00%   37.81%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.32%
 25  1     6    1  |1 0>          0.00%    0.00%    1.46%    0.00%    0.00%    0.00%   51.95%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          2.11%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         2.74%   57.13%    0.00%    0.00%    0.84%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-        33.41%    2.66%    0.00%    0.00%   32.59%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%   53.41%    0.00%    0.07%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%   44.58%    0.00%    0.00%    0.00%    8.90%    0.00%
 34  1     6    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.39%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.02%    0.00%   23.93%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   23.66%    0.27%    0.02%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.27%   23.66%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   16.97%    6.96%    0.00%    0.01%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    6.97%   16.96%    0.00%    0.01%    0.00%
  7  1     7    1  |0 0>          0.00%   51.17%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         51.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%   51.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         5.24%    0.00%    0.00%    0.00%    0.00%    0.01%    1.18%    0.00%
 13  1     3    1  |1 1>+         4.92%    0.00%    0.00%    0.00%    0.00%    0.01%    1.25%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.52%    1.94%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    7.62%    0.00%    0.00%    0.00%    0.61%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    7.62%    0.00%    0.00%    0.00%    0.00%    0.61%
 17  1     7    1  |1 1>+         0.00%   11.52%    0.01%    0.01%    0.02%   35.90%    0.26%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.01%   11.52%    0.00%    0.00%    0.00%    0.00%   36.18%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%   38.04%   10.04%    0.04%    0.13%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.37%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.60%    0.00%    0.00%    0.00%    0.00%    2.30%
 22  1     3    1  |1 0>          0.00%    0.00%    9.56%    0.00%    0.00%    0.00%    0.00%    0.15%
 23  1     4    1  |1 0>          0.00%    7.62%    0.00%    0.00%    0.00%    0.61%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.72%    1.73%    0.00%    0.01%    0.00%
 25  1     6    1  |1 0>          7.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.61%    0.00%
 26  1     7    1  |1 0>          0.01%    0.00%    0.00%   34.15%   14.08%    0.00%    0.01%    0.00%
 27  1     8    1  |1 0>         11.51%    0.00%    0.00%    0.01%    0.13%    0.25%   35.81%    0.00%
 28  1     9    1  |1 0>          0.00%   11.52%    0.00%    0.01%    0.01%   35.86%    0.25%    0.05%
 29  1     1    1  |1 1>-         0.00%    0.37%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    9.40%    0.00%    0.00%    0.00%    0.18%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.76%    0.00%    0.00%    0.00%    2.25%    0.02%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    7.62%    0.00%    0.00%    0.00%    0.00%    0.61%
 33  1     5    1  |1 1>-         7.62%    0.00%    0.00%    0.00%    0.00%    0.00%    0.61%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    2.44%    0.01%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-        11.51%    0.00%    0.00%    0.06%    0.19%    0.24%   35.70%    0.00%
 36  1     8    1  |1 1>-         0.01%    0.00%    0.00%    0.10%   47.89%    0.04%    0.21%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%   11.52%    0.00%    0.00%    0.05%    0.00%   36.14%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%   34.33%    0.01%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    0.00%    0.02%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.33%    0.00%    0.83%   33.20%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   31.62%    0.02%    2.09%    0.62%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.38%    0.01%   31.44%    0.53%
  7  1     7    1  |0 0>          0.00%   26.68%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   26.68%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%   26.68%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         31.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.55%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%   14.69%    0.00%    0.24%    0.00%    0.37%   13.03%
 13  1     3    1  |1 1>+         0.00%    0.00%   13.79%    0.00%    0.25%    0.00%    0.39%   13.88%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    3.48%    0.02%   24.33%    0.33%
 15  1     5    1  |1 1>+         0.00%   21.36%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%   21.36%    0.01%    7.03%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.79%    0.00%    0.00%    0.01%    0.01%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.79%    0.01%   11.68%    0.00%    0.00%
 19  1     9    1  |1 1>+        22.66%    0.00%    0.00%    0.00%   13.37%    0.01%    1.69%    0.51%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.55%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    1.69%    0.03%   26.45%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%   26.78%    0.00%    1.67%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%   21.36%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%   26.90%    0.03%    0.91%    0.29%
 25  1     6    1  |1 0>          0.00%    0.00%   21.36%    0.00%    0.12%    0.00%    0.19%    6.73%
 26  1     7    1  |1 0>         22.65%    0.00%    0.00%    0.00%    0.41%    0.00%   14.77%    0.41%
 27  1     8    1  |1 0>          0.01%    0.00%    0.79%    0.00%    0.19%    0.00%    0.21%   11.30%
 28  1     9    1  |1 0>          0.00%    0.79%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.55%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%   26.34%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    2.14%    0.00%    0.00%    0.03%    0.00%    0.01%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%   21.36%    0.01%    7.03%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%   21.36%    0.00%    0.12%    0.00%    0.19%    6.72%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   11.03%    0.00%   15.85%    1.25%
 35  1     7    1  |1 1>-         0.01%    0.00%    0.79%    0.00%    0.28%    0.00%    0.25%   11.18%
 36  1     8    1  |1 1>-        22.65%    0.00%    0.00%    0.00%    9.11%    0.02%    6.46%    0.01%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.79%    0.01%   11.69%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         34.33%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%   19.25%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   19.25%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%   19.25%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   68.02%
 11  1     1    1  |1 1>+         0.00%    0.00%   13.64%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.69%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.64%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         7.03%    1.00%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    1.00%    0.00%
 17  1     7    1  |1 1>+        11.68%   31.89%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.01%    0.00%    0.00%   31.89%    0.00%
 19  1     9    1  |1 1>+         0.02%    0.00%    0.00%    0.00%   10.66%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%   13.64%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.08%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    1.25%    0.00%
 23  1     4    1  |1 0>          7.03%    1.00%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.03%    0.00%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    1.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.01%    0.00%    0.02%    0.00%   10.65%
 27  1     8    1  |1 0>          0.00%    0.00%   31.87%    0.00%    0.01%
 28  1     9    1  |1 0>         11.68%   31.89%    0.00%    0.01%    0.00%
 29  1     1    1  |1 1>-         0.00%   13.64%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         2.11%    1.23%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-        26.00%    0.10%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    1.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    1.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.03%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%   31.87%    0.00%    0.01%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.02%    0.00%   10.65%
 37  1     9    1  |1 1>-         0.00%    0.01%    0.00%   31.89%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1349.82       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     72738.63  67893.16   2676.29   2162.59      5.21      0.05      1.03
 REAL TIME  *     73381.71 SEC
 DISK USED  *         1.36 GB (local),       19.06 GB (total)
 SF USED    *         7.23 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -462.686962620698

              CI              CI           MULTI         RHF-SCF
   -462.64794226   -462.62833431   -461.77208885   -462.19812140
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
