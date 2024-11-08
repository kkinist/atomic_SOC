
 Working directory              : /wrk/irikura/molpro.1FbFfT55vy/
 Global scratch directory       : /wrk/irikura/molpro.1FbFfT55vy/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.1FbFfT55vy/

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
     wf,sym=1,spin=0;state,10;
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
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 11-Oct-24          TIME: 13:03:29  
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

     29.622 MB (compressed) written to integral file ( 17.2%)

     Node minimum: 1.311 MB, node maximum: 3.408 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     726474.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     726474      RECORD LENGTH: 524288

 Memory used in sort:       1.28 MW

 SORT1 READ    21109381. AND WROTE      145840. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.12 SEC
 SORT2 READ     2032599. AND WROTE    10190541. INTEGRALS IN     70 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      724878.  Node maximum:      731457. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.22      1.03
 REAL TIME  *         2.82 SEC
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
   1     -462.19811952    -462.19811952     0.00D+00     0.13D+00     0     0       0.01      0.02    start
   2     -462.19812133      -0.00000180     0.43D-04     0.11D-03     1     0       0.00      0.02    diag
   3     -462.19812140      -0.00000008     0.65D-05     0.11D-04     2     0       0.01      0.03    diag
   4     -462.19812140      -0.00000000     0.22D-05     0.19D-05     3     0       0.01      0.04    diag
   5     -462.19812140      -0.00000000     0.55D-06     0.76D-06     0     0       0.00      0.04    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -462.198121404738
  RHF One-electron energy            -808.814604726100
  RHF Two-electron energy             346.616483321362
  RHF Kinetic energy                  329.241872831707
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.403825453395

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.80704     1  1  s    0.99160
    2.1     2.00000    -3.75365     1  1  d0   1.00003
    3.1     2.00000    -3.75365     1  1  d2-  0.87162    1  1  d1+ -0.46146
    4.1     2.00000    -3.75365     1  1  d2-  0.48473    1  1  d1+  0.76617    1  1  d2+ -0.41375
    5.1     2.00000    -3.75365     1  1  d1-  0.94603
    6.1     2.00000    -3.75365     1  1  d1+  0.38827    1  1  d2+  0.86562    1  1  d1- -0.30785
    7.1     2.00000    -1.18794     1  2  s    0.94691
    1.2     2.00000    -8.48578     1  1  py   0.99867
    2.2     2.00000    -8.48578     1  1  px   1.00005
    3.2     2.00000    -8.48578     1  1  pz   0.99867
    4.2     2.00000    -0.52339     1  2  py   0.99879
    5.2     2.00000    -0.52339     1  2  px   0.99879
    6.2     2.00000    -0.52339     1  2  pz   0.99879


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
 CPU TIMES  *         1.26      0.04      1.03
 REAL TIME  *         2.88 SEC
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
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.775D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.436D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.562D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.332D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.470D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 4 6 5 1 1 3 5   4 6 2 1 3 5 4 6 2 1   3 5 6 4 2 1 2 3 5 4   6 1 2 3 5 6 4 812 7
                                        91115141310 4 6 5 3   2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.500D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.500D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.281D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.280D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.878D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.878D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 1 2 3   2 1 4 5 810 7 9 6 2   1 3 4 5 6 810 7 9 2   1 3 5 410 8 6 7 910
                                        8 5 4 6 9 7 2 1 310   8 5 4 9 7 6 2 3 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263
 
 Number of orbital rotations:  796  ( 24 closed/active, 426 closed/virtual, 0 active/active, 346 active/virtual )
 Total number of variables:    10151
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    9   25    0   -461.77416741    -461.83279885   -0.05863144    0.30310336 0.00057339 0.00105042  0.68E+00      3.41
   2    9   28    0   -461.81038703    -461.81734282   -0.00695578    0.30129576 0.00001379 0.00000822  0.52E-01      7.16
   3    7   18    0   -461.81739159    -461.81739271   -0.00000112    0.00280726 0.00000006 0.00000008  0.23E-02      9.50
   4    7   14    0   -461.81739271    -461.81739271   -0.00000000    0.00000057 0.00000001 0.00000000  0.78E-06     11.97

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.38E-07)
                       Final energy:   -461.81739271
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -462.170849818667
 Nuclear energy                                  0.00000000
 Kinetic energy                                330.42243232
 One electron energy                          -811.65489911
 Two electron energy                           349.48404929
 Virial ratio                                    2.39872722
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -461.798799910695
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90758990
 One electron energy                          -801.28825540
 Two electron energy                           339.48945549
 Virial ratio                                    2.40403814
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -461.798799910678
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90758990
 One electron energy                          -801.28825540
 Two electron energy                           339.48945549
 Virial ratio                                    2.40403814
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -461.798799910641
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90758990
 One electron energy                          -801.28825539
 Two electron energy                           339.48945548
 Virial ratio                                    2.40403814
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -461.798799910551
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90758990
 One electron energy                          -801.28825538
 Two electron energy                           339.48945546
 Virial ratio                                    2.40403814
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -461.798799910544
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90758990
 One electron energy                          -801.28825538
 Two electron energy                           339.48945546
 Virial ratio                                    2.40403814
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -461.795842600683
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90442148
 One electron energy                          -801.27891950
 Two electron energy                           339.48307690
 Virial ratio                                    2.40404267
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -461.795842600654
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90442148
 One electron energy                          -801.27891950
 Two electron energy                           339.48307690
 Virial ratio                                    2.40404267
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -461.795842600590
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90442148
 One electron energy                          -801.27891948
 Two electron energy                           339.48307688
 Virial ratio                                    2.40404267
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -461.781784782079
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.15472244
 One electron energy                          -802.21767997
 Two electron energy                           340.43589518
 Virial ratio                                    2.40293228
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -461.806964783749
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.89122834
 One electron energy                          -801.23583187
 Two electron energy                           339.42886708
 Virial ratio                                    2.40413281
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -461.800270412994
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.89941242
 One electron energy                          -801.26274077
 Two electron energy                           339.46247036
 Virial ratio                                    2.40407752
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -461.800270412960
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.89941242
 One electron energy                          -801.26274077
 Two electron energy                           339.46247035
 Virial ratio                                    2.40407752
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -461.800270412908
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.89941242
 One electron energy                          -801.26274076
 Two electron energy                           339.46247035
 Virial ratio                                    2.40407752
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -461.800270412766
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.89941242
 One electron energy                          -801.26274075
 Two electron energy                           339.46247034
 Virial ratio                                    2.40407752
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -461.800270412763
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.89941242
 One electron energy                          -801.26274075
 Two electron energy                           339.46247034
 Virial ratio                                    2.40407752
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -461.795994208121
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90283613
 One electron energy                          -801.27304586
 Two electron energy                           339.47705166
 Virial ratio                                    2.40404990
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -461.795994208090
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90283613
 One electron energy                          -801.27304586
 Two electron energy                           339.47705165
 Virial ratio                                    2.40404990
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -461.795994208021
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.90283613
 One electron energy                          -801.27304584
 Two electron energy                           339.47705164
 Virial ratio                                    2.40404990
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.439607104602
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999742597
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000240429
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000020417
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.560392891955
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.000000173822
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.999999845961
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999980217
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.409679288081
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     3.999999940864
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000019252
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000061210
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.590364234680
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.000000501661
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.999999677257
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999699296
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     2.482547696398
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000238596
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999759950
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     1.000000001907
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.517452303149
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999999845971
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.000000161164
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999992865
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     2.523819474090
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000001511
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999666491
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000317271
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.476121314403
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999756548
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.000000608477
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999657091
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     0.077845199000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000018807
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999999622
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.999999977676
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.922154804896
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999999980207
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999992874
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000000026918
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.066501237829
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000057624
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000314257
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999999621518
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.933514450917
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999741791
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999714266
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000643612
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 6 3   5 2 4 1 3 5 6 4 2 1   6 3 5 2 4 1 6 3 5 2   4 1 6 3 5 2 4111310
                                       1415 812 7 9 6 3 5 2   4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 2 3 1 3   1 2 4 6 810 7 9 5 2   3 1 5 7 9 810 6 4 2   3 1 5 9 710 8 6 4 5
                                        7 9 810 6 4 2 3 1 5   7 9 810 6 4 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.08366     1  1  s    0.99246
    2.1     2.00000    -4.03044     1  1  d1-  1.00044
    3.1     2.00000    -4.03044     1  1  d2-  1.00044
    4.1     2.00000    -4.03044     1  1  d2+  1.00044
    5.1     2.00000    -4.03044     1  1  d0   1.00044
    6.1     2.00000    -4.03044     1  1  d1+  1.00044
    7.1     1.99995    -1.41260     1  2  s    0.97515
    1.2     2.00000    -8.76204     1  1  py   0.99988
    2.2     2.00000    -8.76204     1  1  pz   0.99988
    3.2     2.00000    -8.76204     1  1  px   0.99988
    4.2     1.68417    -0.68391     1  2  px   1.10226
    5.2     1.68417    -0.68391     1  2  pz   1.10226
    6.2     1.68417    -0.68391     1  2  py   1.10226
    7.2     0.31585     0.00684     1  7  py   0.28549    1  8  py   0.82742
    8.2     0.31585     0.00684     1  7  pz   0.28549    1  8  pz   0.82742
    9.2     0.31585     0.00684     1  7  px   0.28549    1  8  px   0.82742
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 222000       0.98849570      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000001     -0.00000000
 2 2a20b0       0.06161965      0.57164252     -0.00002316     -0.00002766      0.00000060     -0.08053377     -0.00000000
 2 2b20a0      -0.06161965     -0.57164252      0.00002316      0.00002766     -0.00000060      0.08053377      0.00000000
 2 a2200b       0.06161964     -0.21607697      0.00001085      0.00001304     -0.00000003      0.53532384      0.00000000
 2 b2200a      -0.06161964      0.21607697     -0.00001085     -0.00001304      0.00000003     -0.53532384     -0.00000000
 2 b22a00       0.00000000      0.00000055      0.00004124      0.00001262     -0.49994564      0.00000019      0.00007034
 2 a22b00      -0.00000000     -0.00000055     -0.00004124     -0.00001262      0.49994564     -0.00000019     -0.00007034
 2 22b00a      -0.00000000      0.00000055      0.00004124      0.00001262     -0.49994565      0.00000019     -0.00007034
 2 22a00b       0.00000000     -0.00000055     -0.00004124     -0.00001262      0.49994565     -0.00000019      0.00007034
 2 b220a0      -0.00000000     -0.00002383      0.00014010     -0.49994561     -0.00001260      0.00000256      0.00019622
 2 a220b0       0.00000000      0.00002383     -0.00014010      0.49994561      0.00001260     -0.00000256     -0.00019622
 2 22a0b0       0.00000000      0.00001997      0.49994561      0.00014010      0.00004124     -0.00000208      0.49997716
 2 22b0a0      -0.00000000     -0.00001997     -0.49994561     -0.00014010     -0.00004124      0.00000208     -0.49997716
 2 2a2b00      -0.00000000      0.00001997      0.49994564      0.00014010      0.00004124     -0.00000208     -0.49997713
 2 2b2a00       0.00000000     -0.00001997     -0.49994564     -0.00014010     -0.00004124      0.00000208      0.49997713
 2 2a200b      -0.00000000      0.00002383     -0.00014010      0.49994564      0.00001260     -0.00000256      0.00019622
 2 2b200a       0.00000000     -0.00002383      0.00014010     -0.49994564     -0.00001260      0.00000256     -0.00019622
 2 22ab00       0.06161965     -0.35556557      0.00001231      0.00001462     -0.00000057     -0.45479006      0.00000000
 2 22ba00      -0.06161965      0.35556557     -0.00001231     -0.00001462      0.00000057      0.45479006     -0.00000000
 
 Energy:     -462.17084982   -461.79879991   -461.79879991   -461.79879991   -461.79879991   -461.79879991   -461.79584260

 State:              8               9              10
 2 222000       0.00000000     -0.00000000     -0.15094007
 2 2a20b0       0.00000000      0.00000000      0.40348109
 2 2b20a0      -0.00000000     -0.00000000     -0.40348109
 2 a2200b       0.00000000     -0.00000000      0.40348107
 2 b2200a      -0.00000000      0.00000000     -0.40348107
 2 b22a00       0.00004221      0.49997719     -0.00000000
 2 a22b00      -0.00004221     -0.49997719      0.00000000
 2 22b00a      -0.00004221     -0.49997718      0.00000000
 2 22a00b       0.00004221      0.49997718     -0.00000000
 2 b220a0       0.49997717     -0.00004223     -0.00000000
 2 a220b0      -0.49997717      0.00004223      0.00000000
 2 22a0b0      -0.00019623     -0.00007032     -0.00000000
 2 22b0a0       0.00019623      0.00007032      0.00000000
 2 2a2b00       0.00019623      0.00007032      0.00000000
 2 2b2a00      -0.00019623     -0.00007032     -0.00000000
 2 2a200b       0.49997713     -0.00004223     -0.00000000
 2 2b200a      -0.49997713      0.00004223      0.00000000
 2 22ab00       0.00000000     -0.00000000      0.40348108
 2 22ba00      -0.00000000      0.00000000     -0.40348108
 
 Energy:     -461.79584260   -461.79584260   -461.78178478
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a20a0       0.57731845      0.80965387      0.00000003      0.00000018      0.00000095     -0.10527487     -0.00000000
 2 a2200a       0.57731840     -0.31365624     -0.00000015     -0.00000004     -0.00000686      0.75381828      0.00000000
 2 2a2a00       0.00000000     -0.00000001      0.70708321     -0.00001580     -0.00009801      0.00000014      0.70704770
 2 22a0a0       0.00000000     -0.00000001      0.70708320     -0.00001580     -0.00009801      0.00000014     -0.70704771
 2 2a200a      -0.00000000     -0.00000016      0.00001583      0.70708318      0.00022886     -0.00000002     -0.00034886
 2 22a00a       0.00000000      0.00000001      0.00009800     -0.00022886      0.70708317      0.00000643      0.00035928
 2 a22a00      -0.00000000      0.00000001      0.00009800     -0.00022886      0.70708316      0.00000643     -0.00035928
 2 a220a0       0.00000000     -0.00000016      0.00001583      0.70708316      0.00022886     -0.00000002      0.00034886
 2 22aa00       0.57731841     -0.49599768      0.00000012     -0.00000013      0.00000591     -0.64854339      0.00000000
 
 Energy:     -461.80696478   -461.80027041   -461.80027041   -461.80027041   -461.80027041   -461.80027041   -461.79599421

 State:              8               9
 2 2a20a0      -0.00000000     -0.00000000
 2 a2200a      -0.00000000     -0.00000000
 2 2a2a00      -0.00034906      0.00035909
 2 22a0a0       0.00034906     -0.00035909
 2 2a200a      -0.70704769     -0.00037815
 2 22a00a       0.00037797     -0.70704769
 2 a22a00      -0.00037797      0.70704770
 2 a220a0       0.70704771      0.00037815
 2 22aa00      -0.00000000      0.00000000
 
 Energy:     -461.79599421   -461.79599421
 


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
 CPU TIMES  *         8.05      6.77      0.04      1.03
 REAL TIME  *        15.35 SEC
 DISK USED  *        39.97 MB (local),      629.81 MB (total)
 SF USED    *        26.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -462.1708498  -0.0
    -461.7987999   6.0
    -461.7987999   6.0
    -461.7987999   6.0
    -461.7987999   6.0
    -461.7987999   6.0
    -461.7958426   2.0
    -461.7958426   2.0
    -461.7958426   2.0
    -461.7817848  -0.0
    -461.8069648  -0.0
    -461.8002704   6.0
    -461.8002704   6.0
    -461.8002704   6.0
    -461.8002704   6.0
    -461.8002704   6.0
    -461.7959942   2.0
    -461.7959942   2.0
    -461.7959942   2.0
                                                  


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
     1      -462.17084982
     2      -461.79879991
     3      -461.79879991
     4      -461.79879991
     5      -461.79879991
     6      -461.79879991
     7      -461.79584260
     8      -461.79584260
     9      -461.79584260
    10      -461.78178478

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1310D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.8219D-07

 Number of blocks in overlap matrix:   994   Smallest eigenvalue:  0.82D-07
 Number of N-2 electron functions:    2430
 Number of N-1 electron functions:   58240

 Number of internal configurations:                10822
 Number of singly external configurations:       2796472
 Number of doubly external configurations:       5603592
 Total number of contracted configurations:      8410886
 Total number of uncontracted configurations:  181216110

 Diagonal Coupling coefficients finished.               Storage:  15178577 words, CPU-Time:     29.92 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1310923 words, CPU-time:      0.38 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -462.17084982     0.00000000    -1.01279210  0.40D-01  0.64D-01    34.74
    1     2     2     1.00000000     0.00000000  -461.79879991     0.00000000    -0.98254643  0.16D-01  0.67D-01    34.74
    1     3     3     1.00000000     0.00000000  -461.79879991     0.00000000    -0.97392435  0.16D-01  0.62D-01    34.74
    1     4     4     1.00000000     0.00000000  -461.79879991     0.00000000    -0.97398540  0.16D-01  0.62D-01    34.74
    1     5     5     1.00000000     0.00000000  -461.79879991    -0.00000000    -0.97385124  0.16D-01  0.62D-01    34.74
    1     6     6     1.00000000     0.00000000  -461.79879991    -0.00000000    -0.98239565  0.16D-01  0.67D-01    34.74
    1     7     7     1.00000000     0.00000000  -461.79584260     0.00000000    -0.97484730  0.16D-01  0.62D-01    34.74
    1     8     8     1.00000000     0.00000000  -461.79584260    -0.00000000    -0.97487101  0.16D-01  0.62D-01    34.74
    1     9     9     1.00000000     0.00000000  -461.79584260    -0.00000000    -0.97489223  0.16D-01  0.62D-01    34.74
    1    10    10     1.00000000     0.00000000  -461.78178478    -0.00000000    -0.99111098  0.38D-01  0.64D-01    34.74
    2     1     1     1.07632692    -0.87020316  -463.04105297    -0.87020316    -0.02637902  0.65D-02  0.14D-02   293.57
    2     2     2     1.05945252    -0.84999104  -462.64879095    -0.84999104    -0.01413028  0.12D-02  0.87D-03   293.57
    2     3     3     1.05941178    -0.84996377  -462.64876368    -0.84996377    -0.01414114  0.12D-02  0.87D-03   293.57
    2     4     4     1.05943374    -0.84996357  -462.64876348    -0.84996357    -0.01414429  0.12D-02  0.87D-03   293.57
    2     5     5     1.06205562    -0.84967140  -462.64847131    -0.84967140    -0.01450195  0.12D-02  0.98D-03   293.57
    2     6     6     1.06212790    -0.84950205  -462.64830196    -0.84950205    -0.01459146  0.12D-02  0.10D-02   293.57
    2     7     7     1.05961041    -0.85036481  -462.64620741    -0.85036481    -0.01407949  0.11D-02  0.88D-03   293.57
    2     8     8     1.05960409    -0.85032801  -462.64617061    -0.85032801    -0.01410309  0.11D-02  0.89D-03   293.57
    2     9     9     1.05960551    -0.85030410  -462.64614670    -0.85030410    -0.01411898  0.11D-02  0.89D-03   293.57
    2    10    10     1.07270688    -0.84654702  -462.62833180    -0.84654702    -0.02258927  0.72D-02  0.95D-03   293.57
    3     1     1     1.06632842    -0.89776705  -463.06861687    -0.02756389    -0.00103863  0.32D-04  0.12D-03   552.72
    3     2     2     1.05976407    -0.86391163  -462.66271154    -0.01392059    -0.00053830  0.14D-04  0.73D-04   552.72
    3     3     3     1.05975229    -0.86390548  -462.66270539    -0.01394171    -0.00054215  0.14D-04  0.73D-04   552.72
    3     4     4     1.05975069    -0.86390411  -462.66270402    -0.01394053    -0.00054326  0.14D-04  0.73D-04   552.72
    3     5     5     1.06010256    -0.86390048  -462.66270039    -0.01422908    -0.00053921  0.14D-04  0.77D-04   552.72
    3     6     6     1.06004532    -0.86386735  -462.66266726    -0.01436530    -0.00055776  0.14D-04  0.80D-04   552.72
    3     7     7     1.05993510    -0.86427461  -462.66011721    -0.01390980    -0.00056514  0.15D-04  0.77D-04   552.72
    3     8     8     1.05992240    -0.86426794  -462.66011054    -0.01393993    -0.00056949  0.15D-04  0.77D-04   552.72
    3     9     9     1.05991493    -0.86426505  -462.66010766    -0.01396095    -0.00057204  0.15D-04  0.78D-04   552.72
    3    10    10     1.06150247    -0.86873389  -462.65051868    -0.02218688    -0.00085421  0.73D-04  0.95D-04   552.72
    4     1     1     1.06985416    -0.89901301  -463.06986283    -0.00124596    -0.00007414  0.33D-05  0.72D-05   812.37
    4     2     2     1.06163520    -0.86459608  -462.66339599    -0.00068445    -0.00005722  0.21D-05  0.66D-05   812.37
    4     3     3     1.06155869    -0.86459551  -462.66339542    -0.00069004    -0.00005952  0.20D-05  0.69D-05   812.37
    4     4     4     1.06163312    -0.86459551  -462.66339542    -0.00069141    -0.00005772  0.21D-05  0.66D-05   812.37
    4     5     5     1.06163299    -0.86459546  -462.66339537    -0.00069498    -0.00005769  0.21D-05  0.66D-05   812.37
    4     6     6     1.06153142    -0.86459056  -462.66339047    -0.00072321    -0.00006267  0.21D-05  0.72D-05   812.37
    4     7     7     1.06182750    -0.86500393  -462.66084653    -0.00072932    -0.00006246  0.22D-05  0.70D-05   812.37
    4     8     8     1.06182496    -0.86500365  -462.66084625    -0.00073571    -0.00006286  0.22D-05  0.70D-05   812.37
    4     9     9     1.06182624    -0.86500347  -462.66084607    -0.00073842    -0.00006289  0.22D-05  0.70D-05   812.37
    4    10    10     1.06290321    -0.86974129  -462.65152607    -0.00100739    -0.00008072  0.37D-05  0.96D-05   812.37
    5     1     1     1.07062362    -0.89910330  -463.06995311    -0.00009029    -0.00000627  0.18D-06  0.62D-06  1071.78
    5     2     2     1.06207648    -0.86467143  -462.66347134    -0.00007535    -0.00000595  0.27D-06  0.65D-06  1071.78
    5     3     3     1.06207654    -0.86467064  -462.66347055    -0.00007512    -0.00000639  0.29D-06  0.71D-06  1071.78
    5     4     4     1.06209525    -0.86467011  -462.66347002    -0.00007460    -0.00000656  0.30D-06  0.74D-06  1071.78
    5     5     5     1.06209444    -0.86467004  -462.66346996    -0.00007459    -0.00000657  0.30D-06  0.74D-06  1071.78
    5     6     6     1.06209482    -0.86467004  -462.66346995    -0.00007947    -0.00000659  0.30D-06  0.74D-06  1071.78
    5     7     7     1.06230021    -0.86508412  -462.66092672    -0.00008019    -0.00000681  0.30D-06  0.75D-06  1071.78
    5     8     8     1.06229995    -0.86508411  -462.66092671    -0.00008046    -0.00000679  0.30D-06  0.75D-06  1071.78
    5     9     9     1.06229987    -0.86508409  -462.66092670    -0.00008062    -0.00000682  0.30D-06  0.75D-06  1071.78
    5    10    10     1.06344973    -0.86984453  -462.65162931    -0.00010324    -0.00001010  0.54D-06  0.11D-05  1071.78
    6     1     1     1.07062888    -0.89911070  -463.06996052    -0.00000740    -0.00000062  0.14D-07  0.63D-07  1331.72
    6     2     2     1.06207786    -0.86467872  -462.66347863    -0.00000730    -0.00000080  0.27D-07  0.10D-06  1331.72
    6     3     3     1.06207670    -0.86467855  -462.66347846    -0.00000791    -0.00000090  0.31D-07  0.12D-06  1331.72
    6     4     4     1.06207535    -0.86467849  -462.66347840    -0.00000838    -0.00000098  0.31D-07  0.12D-06  1331.72
    6     5     5     1.06207518    -0.86467845  -462.66347836    -0.00000841    -0.00000099  0.32D-07  0.12D-06  1331.72
    6     6     6     1.06207527    -0.86467845  -462.66347836    -0.00000841    -0.00000099  0.32D-07  0.12D-06  1331.72
    6     7     7     1.06228497    -0.86509266  -462.66093526    -0.00000854    -0.00000097  0.31D-07  0.12D-06  1331.72
    6     8     8     1.06228483    -0.86509264  -462.66093524    -0.00000853    -0.00000097  0.31D-07  0.12D-06  1331.72
    6     9     9     1.06228521    -0.86509263  -462.66093523    -0.00000853    -0.00000097  0.31D-07  0.12D-06  1331.72
    6    10    10     1.06345520    -0.86985739  -462.65164217    -0.00001286    -0.00000149  0.55D-07  0.18D-06  1331.72
    7     1     1     1.07063542    -0.89911145  -463.06996127    -0.00000075    -0.00000006  0.15D-08  0.65D-08  1591.60
    7     2     2     1.06208915    -0.86467984  -462.66347975    -0.00000112    -0.00000015  0.59D-08  0.17D-07  1591.60
    7     3     3     1.06208658    -0.86467983  -462.66347974    -0.00000128    -0.00000018  0.63D-08  0.19D-07  1591.60
    7     4     4     1.06208661    -0.86467981  -462.66347972    -0.00000132    -0.00000018  0.64D-08  0.20D-07  1591.60
    7     5     5     1.06208651    -0.86467980  -462.66347971    -0.00000135    -0.00000018  0.63D-08  0.20D-07  1591.60
    7     6     6     1.06208864    -0.86467978  -462.66347969    -0.00000133    -0.00000016  0.61D-08  0.17D-07  1591.60
    7     7     7     1.06229781    -0.86509397  -462.66093657    -0.00000132    -0.00000018  0.59D-08  0.19D-07  1591.60
    7     8     8     1.06229782    -0.86509396  -462.66093656    -0.00000132    -0.00000018  0.59D-08  0.19D-07  1591.60
    7     9     9     1.06229796    -0.86509395  -462.66093655    -0.00000132    -0.00000018  0.59D-08  0.20D-07  1591.60
    7    10    10     1.06347193    -0.86985938  -462.65164416    -0.00000199    -0.00000029  0.15D-07  0.31D-07  1591.60
    8     1     1     1.07063619    -0.89911145  -463.06996127    -0.00000000    -0.00000006  0.15D-08  0.64D-08  1833.62
    8     2     2     1.06209301    -0.86468006  -462.66347997    -0.00000021    -0.00000003  0.19D-08  0.30D-08  1833.62
    8     3     3     1.06209308    -0.86468004  -462.66347995    -0.00000020    -0.00000003  0.20D-08  0.31D-08  1833.62
    8     4     4     1.06209359    -0.86468003  -462.66347995    -0.00000023    -0.00000003  0.15D-08  0.25D-08  1833.62
    8     5     5     1.06209313    -0.86468003  -462.66347994    -0.00000023    -0.00000003  0.19D-08  0.29D-08  1833.62
    8     6     6     1.06209372    -0.86467997  -462.66347988    -0.00000019    -0.00000003  0.14D-08  0.24D-08  1833.62
    8     7     7     1.06230468    -0.86509419  -462.66093679    -0.00000022    -0.00000003  0.18D-08  0.28D-08  1833.62
    8     8     8     1.06230471    -0.86509418  -462.66093678    -0.00000022    -0.00000003  0.18D-08  0.28D-08  1833.62
    8     9     9     1.06230481    -0.86509417  -462.66093677    -0.00000022    -0.00000003  0.19D-08  0.29D-08  1833.62
    8    10    10     1.06347365    -0.86985979  -462.65164457    -0.00000041    -0.00000003  0.12D-08  0.34D-08  1833.62


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.5%
 S   0.4%   6.1%
 P   0.3%  47.6%  35.8%

 Initialization:   1.7%
 Other:            7.6%

 Total CPU:     1833.6 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222222000           0.9599827   0.0000000  -0.0000000  -0.0000001  -0.0000001   0.0000005  -0.0000000  -0.0000000
                            0.0000000  -0.1085324
 222222222222/\00           0.0642354   0.0031994  -0.0115685  -0.1873237  -0.0942890   0.7638101  -0.0000001   0.0000003
                           -0.0000001   0.5562187
 2222222222/2200\           0.0642355  -0.0087291   0.0320056   0.6870601   0.3381935  -0.2000243  -0.0000001   0.0000003
                            0.0000000   0.5562133
 2222222222/220\0          -0.0000000   0.6852393  -0.0313715   0.0054265   0.0091041  -0.0008908  -0.6855967   0.0212748
                            0.0115191   0.0000001
 22222222222/200\          -0.0000000   0.6852419  -0.0313717   0.0054267   0.0091043  -0.0008906   0.6855942  -0.0212747
                           -0.0115182   0.0000000
 222222222222/00\           0.0000000   0.0315791   0.6846029  -0.0311985   0.0010106   0.0027100   0.0134354   0.0631906
                            0.6829675  -0.0000000
 2222222222/22\00           0.0000000   0.0315794   0.6845910  -0.0311981   0.0010110   0.0027098  -0.0134356  -0.0631922
                           -0.6829793  -0.0000000
 22222222222/2\00           0.0000000  -0.0064457  -0.0143815  -0.3020051   0.6157751   0.0017573   0.0201195   0.6827848
                           -0.0635695  -0.0000002
 222222222222/0\0           0.0000000  -0.0064460  -0.0143824  -0.3020138   0.6157942   0.0017579  -0.0201189  -0.6827636
                            0.0635680  -0.0000001
 22222222222/20\0           0.0642356   0.0055296  -0.0204370  -0.4997364  -0.2439041  -0.5637953   0.0000002  -0.0000004
                            0.0000001   0.5562118

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.965817    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.034918
 2          -0.000000    0.005531   -0.009117    0.969192    0.044665   -0.009297    0.000000    0.000002   -0.000000   -0.000000
 3          -0.000000   -0.020494   -0.020342   -0.044371    0.968282    0.034003    0.000001   -0.000000    0.000008    0.000000
 4          -0.000000   -0.519966   -0.427157    0.007675   -0.044126    0.697635    0.000006    0.000000   -0.000000    0.000000
 5          -0.000000   -0.253213    0.870955    0.012877    0.001430    0.344501   -0.000014    0.000000   -0.000000    0.000000
 6          -0.000000   -0.778843    0.002486   -0.001260    0.003833   -0.578714   -0.000000    0.000000    0.000000   -0.000005
 7           0.000000    0.000000    0.000000   -0.000002   -0.000000   -0.000000    0.028454    0.969625    0.019002    0.000000
 8           0.000000   -0.000001    0.000015    0.000000   -0.000001    0.000000    0.965635   -0.030088    0.089370    0.000000
 9          -0.000000    0.000000   -0.000001    0.000001   -0.000008    0.000000   -0.089904   -0.016291    0.965917   -0.000000
 10          0.038190   -0.000004   -0.000000    0.000000   -0.000000   -0.000003   -0.000000   -0.000000   -0.000000    0.968938

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.966447    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.001576
 2           0.000000    0.970324   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.970324   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000    0.000000   -0.000000    0.970324   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000    0.000000   -0.000000   -0.000000    0.970324    0.000000    0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.970324   -0.000000    0.000000   -0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970228   -0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.970228   -0.000000   -0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.970228   -0.000000
 10          0.001576    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.969689


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96581741 (fixed)   0.96644866 (relaxed)   0.96644712 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000435   -0.00002837   -0.86385618
 Singles      0.00855287   -0.02326357   -0.02890906
 Pairs        0.06208363    0.04902793   -0.00634621
 Total        1.07064084    0.02573599   -0.89911145
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -462.17029509
 Nuclear energy                         0.00000000
 Kinetic energy                       329.71771191
 One electron energy                 -809.21058408
 Two electron energy                  346.14062281
 Virial quotient                       -1.40444369
 Correlation energy                    -0.89966618
 !MRCI STATE 1.1 Energy              -463.069961268851

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -463.13351445 (Davidson, fixed reference)
 Cluster corrected energies          -463.13351138 (Davidson, relaxed reference)
 Cluster corrected energies          -463.13351445 (Davidson, rotated reference)

 Cluster corrected energies          -463.13233023 (Pople, fixed reference)
 Cluster corrected energies          -463.13232703 (Pople, relaxed reference)
 Cluster corrected energies          -463.13233023 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96919242 (fixed)   0.97032624 (relaxed)   0.97032421 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000856   -0.00001396   -0.78407643
 Singles      0.00832115   -0.03191830   -0.03682368
 Pairs        0.05377238    0.00000006   -0.04377995
 Total        1.06210209   -0.03193220   -0.86468006
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79879991
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07549304
 One electron energy                 -800.57968694
 Two electron energy                  337.91620697
 Virial quotient                       -1.40594936
 Correlation energy                    -0.86468006
 !MRCI STATE 2.1 Energy              -462.663479967294

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71717841 (Davidson, fixed reference)
 Cluster corrected energies          -462.71717456 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71717841 (Davidson, rotated reference)

 Cluster corrected energies          -462.71578096 (Pople, fixed reference)
 Cluster corrected energies          -462.71577701 (Pople, relaxed reference)
 Cluster corrected energies          -462.71578096 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96828207 (fixed)   0.97032621 (relaxed)   0.97032418 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000856   -0.00001396   -0.78407628
 Singles      0.00832114   -0.03191827   -0.03682360
 Pairs        0.05377248   -0.00000004   -0.04378015
 Total        1.06210217   -0.03193228   -0.86468004
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79879991
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07543641
 One electron energy                 -800.57966382
 Two electron energy                  337.91618388
 Virial quotient                       -1.40594961
 Correlation energy                    -0.86468004
 !MRCI STATE 3.1 Energy              -462.663479947484

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71717845 (Davidson, fixed reference)
 Cluster corrected energies          -462.71717461 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71717845 (Davidson, rotated reference)

 Cluster corrected energies          -462.71578100 (Pople, fixed reference)
 Cluster corrected energies          -462.71577705 (Pople, relaxed reference)
 Cluster corrected energies          -462.71578100 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.69763511 (fixed)   0.97032598 (relaxed)   0.97032395 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000855   -0.00001396   -0.78407629
 Singles      0.00832079   -0.03191785   -0.03682347
 Pairs        0.05377333   -0.00000006   -0.04378027
 Total        1.06210267   -0.03193187   -0.86468003
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79879991
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07578683
 One electron energy                 -800.57979396
 Two electron energy                  337.91631401
 Virial quotient                       -1.40594811
 Correlation energy                    -0.86468003
 !MRCI STATE 4.1 Energy              -462.663479945324

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71717889 (Davidson, fixed reference)
 Cluster corrected energies          -462.71717504 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71717889 (Davidson, rotated reference)

 Cluster corrected energies          -462.71578145 (Pople, fixed reference)
 Cluster corrected energies          -462.71577750 (Pople, relaxed reference)
 Cluster corrected energies          -462.71578145 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.87095516 (fixed)   0.97032618 (relaxed)   0.97032415 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000856   -0.00001396   -0.78407615
 Singles      0.00832105   -0.03191816   -0.03682358
 Pairs        0.05377262   -0.00000024   -0.04378030
 Total        1.06210222   -0.03193237   -0.86468003
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79879991
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07554647
 One electron energy                 -800.57970640
 Two electron energy                  337.91622646
 Virial quotient                       -1.40594914
 Correlation energy                    -0.86468003
 !MRCI STATE 5.1 Energy              -462.663479939109

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71717849 (Davidson, fixed reference)
 Cluster corrected energies          -462.71717464 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71717849 (Davidson, rotated reference)

 Cluster corrected energies          -462.71578104 (Pople, fixed reference)
 Cluster corrected energies          -462.71577709 (Pople, relaxed reference)
 Cluster corrected energies          -462.71578104 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.77884301 (fixed)   0.97032591 (relaxed)   0.97032389 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000855   -0.00001396   -0.78408076
 Singles      0.00832064   -0.03191766   -0.03682333
 Pairs        0.05377361    0.00000467   -0.04377587
 Total        1.06210281   -0.03192695   -0.86467997
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79879991
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07588264
 One electron energy                 -800.57982725
 Two electron energy                  337.91634737
 Virial quotient                       -1.40594770
 Correlation energy                    -0.86467997
 !MRCI STATE 6.1 Energy              -462.663479883322

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71717894 (Davidson, fixed reference)
 Cluster corrected energies          -462.71717509 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71717894 (Davidson, rotated reference)

 Cluster corrected energies          -462.71578150 (Pople, fixed reference)
 Cluster corrected energies          -462.71577755 (Pople, relaxed reference)
 Cluster corrected energies          -462.71578150 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96962487 (fixed)   0.97022952 (relaxed)   0.97022837 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000683   -0.00001380   -0.78385052
 Singles      0.00853252   -0.03240631   -0.03745123
 Pairs        0.05377258   -0.00000002   -0.04379243
 Total        1.06231193   -0.03242014   -0.86509419
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79584260
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07491485
 One electron energy                 -800.57312770
 Two electron energy                  337.91219091
 Virial quotient                       -1.40594411
 Correlation energy                    -0.86509419
 !MRCI STATE 7.1 Energy              -462.660936792513

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71484248 (Davidson, fixed reference)
 Cluster corrected energies          -462.71484030 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71484248 (Davidson, rotated reference)

 Cluster corrected energies          -462.71344936 (Pople, fixed reference)
 Cluster corrected energies          -462.71344712 (Pople, relaxed reference)
 Cluster corrected energies          -462.71344936 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.96563486 (fixed)   0.97022951 (relaxed)   0.97022836 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000683   -0.00001380   -0.78385047
 Singles      0.00853251   -0.03240629   -0.03745120
 Pairs        0.05377263   -0.00000006   -0.04379251
 Total        1.06231196   -0.03242016   -0.86509418
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79584260
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07490149
 One electron energy                 -800.57312346
 Two electron energy                  337.91218668
 Virial quotient                       -1.40594416
 Correlation energy                    -0.86509418
 !MRCI STATE 8.1 Energy              -462.660936776635

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71484249 (Davidson, fixed reference)
 Cluster corrected energies          -462.71484031 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71484249 (Davidson, rotated reference)

 Cluster corrected energies          -462.71344937 (Pople, fixed reference)
 Cluster corrected energies          -462.71344713 (Pople, relaxed reference)
 Cluster corrected energies          -462.71344937 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96591658 (fixed)   0.97022946 (relaxed)   0.97022831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000683   -0.00001380   -0.78385047
 Singles      0.00853250   -0.03240626   -0.03745115
 Pairs        0.05377274    0.00000000   -0.04379255
 Total        1.06231206   -0.03242007   -0.86509417
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79584260
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07486824
 One electron energy                 -800.57311118
 Two electron energy                  337.91217441
 Virial quotient                       -1.40594430
 Correlation energy                    -0.86509417
 !MRCI STATE 9.1 Energy              -462.660936770634

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71484257 (Davidson, fixed reference)
 Cluster corrected energies          -462.71484039 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71484257 (Davidson, rotated reference)

 Cluster corrected energies          -462.71344946 (Pople, fixed reference)
 Cluster corrected energies          -462.71344722 (Pople, relaxed reference)
 Cluster corrected energies          -462.71344946 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96893794 (fixed)   0.96969628 (relaxed)   0.96968899 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001919   -0.00004148   -0.00052283
 Singles      0.00938032   -0.03352846   -0.03919881
 Pairs        0.05409455   -0.83579199   -0.83013815
 Total        1.06349406   -0.86936194   -0.86985979
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.78233951
 Nuclear energy                         0.00000000
 Kinetic energy                       329.15238465
 One electron energy                 -800.93308749
 Two electron energy                  338.28144292
 Virial quotient                       -1.40558497
 Correlation energy                    -0.86930506
 !MRCI STATE 10.1 Energy             -462.651644573334

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.70684028 (Davidson, fixed reference)
 Cluster corrected energies          -462.70682639 (Davidson, relaxed reference)
 Cluster corrected energies          -462.70684028 (Davidson, rotated reference)

 Cluster corrected energies          -462.70546999 (Pople, fixed reference)
 Cluster corrected energies          -462.70545568 (Pople, relaxed reference)
 Cluster corrected energies          -462.70546999 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      654.09       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2139.15   2131.09      6.77      0.04      1.03
 REAL TIME  *      2218.98 SEC
 DISK USED  *       693.23 MB (local),        9.55 GB (total)
 SF USED    *         6.73 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -463.13351445  AU                              
 SETTING HLSDIAG(2)     =      -462.71717841  AU                              
 SETTING HLSDIAG(3)     =      -462.71717845  AU                              
 SETTING HLSDIAG(4)     =      -462.71717889  AU                              
 SETTING HLSDIAG(5)     =      -462.71717849  AU                              
 SETTING HLSDIAG(6)     =      -462.71717894  AU                              
 SETTING HLSDIAG(7)     =      -462.71484248  AU                              
 SETTING HLSDIAG(8)     =      -462.71484249  AU                              
 SETTING HLSDIAG(9)     =      -462.71484257  AU                              
 SETTING HLSDIAG(10)    =      -462.70684028  AU                              


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
     1      -461.80696478
     2      -461.80027041
     3      -461.80027041
     4      -461.80027041
     5      -461.80027041
     6      -461.80027041
     7      -461.79599421
     8      -461.79599421
     9      -461.79599421

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1114D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1339D-06

 Number of blocks in overlap matrix:   913   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    2224
 Number of N-1 electron functions:   99969

 Number of internal configurations:                16224
 Number of singly external configurations:       4799574
 Number of doubly external configurations:       5127952
 Total number of contracted configurations:      9943750
 Total number of uncontracted configurations:  322964154

 Diagonal Coupling coefficients finished.               Storage:  18349624 words, CPU-Time:     46.55 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1344406 words, CPU-time:      0.35 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -461.80696478     0.00000000    -0.98620172  0.19D-01  0.68D-01    51.19
    1     2     2     1.00000000     0.00000000  -461.80027041     0.00000000    -0.98389491  0.17D-01  0.68D-01    51.19
    1     3     3     1.00000000     0.00000000  -461.80027041    -0.00000000    -0.98249100  0.17D-01  0.67D-01    51.19
    1     4     4     1.00000000     0.00000000  -461.80027041    -0.00000000    -0.98248312  0.17D-01  0.67D-01    51.19
    1     5     5     1.00000000     0.00000000  -461.80027041    -0.00000000    -0.98268708  0.17D-01  0.67D-01    51.19
    1     6     6     1.00000000     0.00000000  -461.80027041    -0.00000000    -0.98372030  0.17D-01  0.67D-01    51.19
    1     7     7     1.00000000     0.00000000  -461.79599421     0.00000000    -0.98153888  0.16D-01  0.66D-01    51.19
    1     8     8     1.00000000     0.00000000  -461.79599421    -0.00000000    -0.98156923  0.16D-01  0.66D-01    51.19
    1     9     9     1.00000000     0.00000000  -461.79599421    -0.00000000    -0.98169945  0.16D-01  0.66D-01    51.19
    2     1     1     1.06483228    -0.84889018  -462.65585496    -0.84889018    -0.01514990  0.17D-02  0.99D-03   372.13
    2     2     2     1.06246443    -0.85019501  -462.65046543    -0.85019501    -0.01423286  0.12D-02  0.91D-03   372.13
    2     3     3     1.06241986    -0.85008842  -462.65035883    -0.85008842    -0.01429254  0.12D-02  0.92D-03   372.13
    2     4     4     1.06242537    -0.85005923  -462.65032964    -0.85005923    -0.01431023  0.12D-02  0.92D-03   372.13
    2     5     5     1.06275950    -0.84950745  -462.64977786    -0.84950745    -0.01471062  0.12D-02  0.10D-02   372.13
    2     6     6     1.06280180    -0.84941526  -462.64968567    -0.84941526    -0.01476287  0.12D-02  0.10D-02   372.13
    2     7     7     1.06196758    -0.85055538  -462.64654959    -0.85055538    -0.01403348  0.12D-02  0.91D-03   372.13
    2     8     8     1.06193564    -0.85051258  -462.64650679    -0.85051258    -0.01405606  0.12D-02  0.91D-03   372.13
    2     9     9     1.06192299    -0.85050651  -462.64650072    -0.85050651    -0.01405846  0.12D-02  0.91D-03   372.13
    3     1     1     1.06072848    -0.86364572  -462.67061050    -0.01475554    -0.00047180  0.24D-04  0.64D-04   693.98
    3     2     2     1.06046518    -0.86403064  -462.66430106    -0.01383563    -0.00047082  0.13D-04  0.66D-04   693.98
    3     3     3     1.06041535    -0.86400773  -462.66427815    -0.01391931    -0.00048400  0.13D-04  0.68D-04   693.98
    3     4     4     1.06040661    -0.86400182  -462.66427224    -0.01394260    -0.00048752  0.13D-04  0.69D-04   693.98
    3     5     5     1.06026788    -0.86391488  -462.66418529    -0.01440743    -0.00053948  0.14D-04  0.78D-04   693.98
    3     6     6     1.06023609    -0.86389699  -462.66416740    -0.01448173    -0.00054943  0.14D-04  0.80D-04   693.98
    3     7     7     1.06043649    -0.86423628  -462.66023049    -0.01368090    -0.00047926  0.14D-04  0.68D-04   693.98
    3     8     8     1.06041475    -0.86422725  -462.66022146    -0.01371467    -0.00048433  0.14D-04  0.68D-04   693.98
    3     9     9     1.06040872    -0.86422527  -462.66021948    -0.01371876    -0.00048539  0.14D-04  0.69D-04   693.98
    4     1     1     1.06165188    -0.86421159  -462.67117638    -0.00056588    -0.00004154  0.16D-05  0.54D-05  1016.35
    4     2     2     1.06167897    -0.86461168  -462.66488210    -0.00058104    -0.00004637  0.16D-05  0.58D-05  1016.35
    4     3     3     1.06166768    -0.86460882  -462.66487923    -0.00060109    -0.00004843  0.17D-05  0.60D-05  1016.35
    4     4     4     1.06166492    -0.86460814  -462.66487855    -0.00060631    -0.00004897  0.17D-05  0.60D-05  1016.35
    4     5     5     1.06160796    -0.86459903  -462.66486944    -0.00068415    -0.00005643  0.20D-05  0.67D-05  1016.35
    4     6     6     1.06159424    -0.86459662  -462.66486703    -0.00069963    -0.00005812  0.20D-05  0.69D-05  1016.35
    4     7     7     1.06172770    -0.86483157  -462.66082578    -0.00059529    -0.00004807  0.15D-05  0.59D-05  1016.35
    4     8     8     1.06172302    -0.86483020  -462.66082441    -0.00060295    -0.00004892  0.15D-05  0.60D-05  1016.35
    4     9     9     1.06172209    -0.86482989  -462.66082410    -0.00060462    -0.00004912  0.16D-05  0.60D-05  1016.35
    5     1     1     1.06210004    -0.86426408  -462.67122886    -0.00005248    -0.00000378  0.26D-06  0.40D-06  1339.01
    5     2     2     1.06213202    -0.86467019  -462.66494061    -0.00005851    -0.00000423  0.22D-06  0.46D-06  1339.01
    5     3     3     1.06213208    -0.86466993  -462.66494034    -0.00006111    -0.00000441  0.23D-06  0.47D-06  1339.01
    5     4     4     1.06213178    -0.86466990  -462.66494031    -0.00006176    -0.00000445  0.23D-06  0.48D-06  1339.01
    5     5     5     1.06212866    -0.86466959  -462.66494001    -0.00007056    -0.00000481  0.25D-06  0.50D-06  1339.01
    5     6     6     1.06212881    -0.86466930  -462.66493972    -0.00007269    -0.00000499  0.25D-06  0.52D-06  1339.01
    5     7     7     1.06218793    -0.86489222  -462.66088643    -0.00006064    -0.00000448  0.21D-06  0.49D-06  1339.01
    5     8     8     1.06218847    -0.86489200  -462.66088620    -0.00006180    -0.00000460  0.22D-06  0.51D-06  1339.01
    5     9     9     1.06218843    -0.86489194  -462.66088614    -0.00006205    -0.00000463  0.22D-06  0.51D-06  1339.01
    6     1     1     1.06212344    -0.86426850  -462.67123328    -0.00000442    -0.00000038  0.17D-07  0.53D-07  1662.90
    6     2     2     1.06214368    -0.86467517  -462.66494558    -0.00000497    -0.00000050  0.19D-07  0.68D-07  1662.90
    6     3     3     1.06214734    -0.86467516  -462.66494557    -0.00000523    -0.00000046  0.17D-07  0.65D-07  1662.90
    6     4     4     1.06214643    -0.86467512  -462.66494554    -0.00000522    -0.00000049  0.18D-07  0.68D-07  1662.90
    6     5     5     1.06214634    -0.86467512  -462.66494554    -0.00000553    -0.00000049  0.18D-07  0.68D-07  1662.90
    6     6     6     1.06214349    -0.86467510  -462.66494551    -0.00000579    -0.00000053  0.20D-07  0.72D-07  1662.90
    6     7     7     1.06220027    -0.86489756  -462.66089176    -0.00000534    -0.00000052  0.18D-07  0.72D-07  1662.90
    6     8     8     1.06219996    -0.86489751  -462.66089171    -0.00000551    -0.00000055  0.19D-07  0.76D-07  1662.90
    6     9     9     1.06219984    -0.86489749  -462.66089170    -0.00000555    -0.00000056  0.20D-07  0.77D-07  1662.90
    7     1     1     1.06213109    -0.86426900  -462.67123378    -0.00000050    -0.00000006  0.27D-08  0.78D-08  1985.95
    7     2     2     1.06215490    -0.86467583  -462.66494624    -0.00000066    -0.00000008  0.32D-08  0.11D-07  1985.95
    7     3     3     1.06215474    -0.86467579  -462.66494621    -0.00000063    -0.00000009  0.33D-08  0.11D-07  1985.95
    7     4     4     1.06215592    -0.86467578  -462.66494619    -0.00000066    -0.00000009  0.33D-08  0.11D-07  1985.95
    7     5     5     1.06215578    -0.86467578  -462.66494619    -0.00000065    -0.00000009  0.32D-08  0.11D-07  1985.95
    7     6     6     1.06215619    -0.86467577  -462.66494619    -0.00000068    -0.00000008  0.30D-08  0.10D-07  1985.95
    7     7     7     1.06220849    -0.86489826  -462.66089247    -0.00000071    -0.00000009  0.35D-08  0.11D-07  1985.95
    7     8     8     1.06220823    -0.86489826  -462.66089246    -0.00000075    -0.00000010  0.39D-08  0.12D-07  1985.95
    7     9     9     1.06220820    -0.86489825  -462.66089246    -0.00000077    -0.00000010  0.40D-08  0.13D-07  1985.95
    8     1     1     1.06213191    -0.86426907  -462.67123385    -0.00000008    -0.00000001  0.54D-09  0.96D-09  2309.24
    8     2     2     1.06215867    -0.86467594  -462.66494635    -0.00000011    -0.00000001  0.76D-09  0.15D-08  2309.24
    8     3     3     1.06215863    -0.86467590  -462.66494632    -0.00000011    -0.00000001  0.76D-09  0.15D-08  2309.24
    8     4     4     1.06215881    -0.86467589  -462.66494630    -0.00000011    -0.00000002  0.81D-09  0.16D-08  2309.24
    8     5     5     1.06215877    -0.86467588  -462.66494630    -0.00000011    -0.00000002  0.79D-09  0.16D-08  2309.24
    8     6     6     1.06215890    -0.86467587  -462.66494629    -0.00000010    -0.00000001  0.73D-09  0.15D-08  2309.24
    8     7     7     1.06221162    -0.86489839  -462.66089259    -0.00000012    -0.00000002  0.10D-08  0.18D-08  2309.24
    8     8     8     1.06221162    -0.86489838  -462.66089259    -0.00000013    -0.00000002  0.97D-09  0.17D-08  2309.24
    8     9     9     1.06221170    -0.86489838  -462.66089259    -0.00000012    -0.00000002  0.87D-09  0.16D-08  2309.24


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.4%   7.3%
 P   0.3%  57.7%  26.5%

 Initialization:   2.1%
 Other:            5.3%

 Total CPU:     2309.2 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222//00           0.5601836   0.7839450  -0.1137825  -0.0067891  -0.0068887   0.0014405   0.0000000  -0.0000000
                            0.0000000
 2222222222/2200/           0.5601833  -0.2932362   0.7354607   0.0248529   0.0098160  -0.0028935   0.0000000  -0.0000000
                            0.0000000
 222222222222/00/          -0.0000000  -0.0008283   0.0023548  -0.0059978   0.0161746   0.6858603   0.0513309  -0.0351306
                            0.6831986
 2222222222/22/00           0.0000000  -0.0008283   0.0023549  -0.0059978   0.0161746   0.6858601  -0.0513309   0.0351306
                           -0.6831989
 2222222222/220/0          -0.0000001   0.0049720  -0.0069289  -0.0090403   0.6857814  -0.0162220  -0.0353382  -0.6843366
                           -0.0325340
 22222222222/200/          -0.0000001   0.0049720  -0.0069287  -0.0090401   0.6857731  -0.0162218   0.0353387   0.6843450
                            0.0325344
 222222222222/0/0           0.0000000   0.0027901  -0.0221529   0.6856370   0.0089330   0.0058646  -0.6831860   0.0327584
                            0.0530144
 22222222222/2/00           0.0000000   0.0027901  -0.0221528   0.6856330   0.0089330   0.0058646   0.6831901  -0.0327587
                           -0.0530147
 22222222222/20/0           0.5601868  -0.4907062  -0.6216742  -0.0180637  -0.0029271   0.0014529  -0.0000000   0.0000000
                           -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970308    0.000003    0.000000   -0.000000    0.000000   -0.000001   -0.000000   -0.000000   -0.000000
 2           0.000001   -0.693849    0.003946    0.007032   -0.001171   -0.678218   -0.000000   -0.000000   -0.000000
 3           0.000002   -0.677995   -0.031330   -0.009799    0.003330    0.693331    0.000000    0.000000   -0.000000
 4           0.000000   -0.019068    0.969663   -0.012785   -0.008482    0.025031   -0.000003    0.000000   -0.000000
 5           0.000000   -0.002039    0.012634    0.969865    0.022875    0.012175   -0.000000   -0.000006    0.000000
 6          -0.000000    0.001371    0.008294   -0.022942    0.969982   -0.003268   -0.000000    0.000000    0.000000
 7           0.000000   -0.000000    0.000003    0.000000   -0.000000    0.000000    0.966258    0.049980    0.072599
 8           0.000000    0.000000   -0.000000    0.000006   -0.000000   -0.000000   -0.046332    0.967889   -0.049687
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.074980    0.046014    0.966273

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970308   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.970295    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.970295    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.970295   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.970295   -0.000000    0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970295   -0.000000    0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.970270    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.970270    0.000000
 9           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970270


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97030782 (fixed)   0.97030916 (relaxed)   0.97030782 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000571   -0.00000474   -0.78314410
 Singles      0.00869257   -0.03246692   -0.03763979
 Pairs        0.05343970    0.00000001   -0.04348517
 Total        1.06213797   -0.03247165   -0.86426907
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.80696478
 Nuclear energy                         0.00000000
 Kinetic energy                       329.06760748
 One electron energy                 -800.56505255
 Two electron energy                  337.89381870
 Virial quotient                       -1.40600662
 Correlation energy                    -0.86426907
 !MRCI STATE 1.1 Energy              -462.671233854432

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.72493778 (Davidson, fixed reference)
 Cluster corrected energies          -462.72493525 (Davidson, relaxed reference)
 Cluster corrected energies          -462.72493778 (Davidson, rotated reference)

 Cluster corrected energies          -462.72313378 (Pople, fixed reference)
 Cluster corrected energies          -462.72313120 (Pople, relaxed reference)
 Cluster corrected energies          -462.72313378 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.69384891 (fixed)   0.97029649 (relaxed)   0.97029517 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000658   -0.00001032   -0.78365134
 Singles      0.00849870   -0.03231410   -0.03734029
 Pairs        0.05366038    0.00000001   -0.04368431
 Total        1.06216566   -0.03232441   -0.86467594
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.80027041
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07257145
 One electron energy                 -800.57012897
 Two electron energy                  337.90518262
 Virial quotient                       -1.40596630
 Correlation energy                    -0.86467594
 !MRCI STATE 2.1 Energy              -462.664946350276

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71869950 (Davidson, fixed reference)
 Cluster corrected energies          -462.71869702 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71869950 (Davidson, rotated reference)

 Cluster corrected energies          -462.71689509 (Pople, fixed reference)
 Cluster corrected energies          -462.71689257 (Pople, relaxed reference)
 Cluster corrected energies          -462.71689509 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.69333053 (fixed)   0.97029651 (relaxed)   0.97029519 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000658   -0.00001032   -0.78365139
 Singles      0.00849868   -0.03231409   -0.03734024
 Pairs        0.05366035    0.00000006   -0.04368428
 Total        1.06216562   -0.03232435   -0.86467590
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.80027041
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07257726
 One electron energy                 -800.57012954
 Two electron energy                  337.90518323
 Virial quotient                       -1.40596628
 Correlation energy                    -0.86467590
 !MRCI STATE 3.1 Energy              -462.664946315588

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71869943 (Davidson, fixed reference)
 Cluster corrected energies          -462.71869694 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71869943 (Davidson, rotated reference)

 Cluster corrected energies          -462.71689502 (Pople, fixed reference)
 Cluster corrected energies          -462.71689249 (Pople, relaxed reference)
 Cluster corrected energies          -462.71689502 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96966339 (fixed)   0.97029642 (relaxed)   0.97029511 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000658   -0.00001032   -0.78365101
 Singles      0.00849885   -0.03231434   -0.03734037
 Pairs        0.05366037    0.00000005   -0.04368451
 Total        1.06216580   -0.03232460   -0.86467589
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.80027041
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07251477
 One electron energy                 -800.57009692
 Two electron energy                  337.90515061
 Virial quotient                       -1.40596654
 Correlation energy                    -0.86467589
 !MRCI STATE 4.1 Energy              -462.664946304110

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71869957 (Davidson, fixed reference)
 Cluster corrected energies          -462.71869709 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71869957 (Davidson, rotated reference)

 Cluster corrected energies          -462.71689516 (Pople, fixed reference)
 Cluster corrected energies          -462.71689264 (Pople, relaxed reference)
 Cluster corrected energies          -462.71689516 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96986462 (fixed)   0.97029644 (relaxed)   0.97029513 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000658   -0.00001032   -0.78365082
 Singles      0.00849889   -0.03231445   -0.03734045
 Pairs        0.05366029   -0.00000006   -0.04368462
 Total        1.06216576   -0.03232482   -0.86467588
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.80027041
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07253754
 One electron energy                 -800.57010218
 Two electron energy                  337.90515588
 Virial quotient                       -1.40596645
 Correlation energy                    -0.86467588
 !MRCI STATE 5.1 Energy              -462.664946297136

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71869953 (Davidson, fixed reference)
 Cluster corrected energies          -462.71869705 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71869953 (Davidson, rotated reference)

 Cluster corrected energies          -462.71689513 (Pople, fixed reference)
 Cluster corrected energies          -462.71689260 (Pople, relaxed reference)
 Cluster corrected energies          -462.71689513 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96998188 (fixed)   0.97029638 (relaxed)   0.97029507 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000658   -0.00001032   -0.78365064
 Singles      0.00849893   -0.03231451   -0.03734053
 Pairs        0.05366038   -0.00000008   -0.04368470
 Total        1.06216589   -0.03232490   -0.86467587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.80027041
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07261264
 One electron energy                 -800.57013420
 Two electron energy                  337.90518791
 Virial quotient                       -1.40596613
 Correlation energy                    -0.86467587
 !MRCI STATE 6.1 Energy              -462.664946286893

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71869963 (Davidson, fixed reference)
 Cluster corrected energies          -462.71869715 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71869963 (Davidson, rotated reference)

 Cluster corrected energies          -462.71689522 (Pople, fixed reference)
 Cluster corrected energies          -462.71689270 (Pople, relaxed reference)
 Cluster corrected energies          -462.71689522 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96625833 (fixed)   0.97027225 (relaxed)   0.97026999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000863   -0.00001136   -0.72531085
 Singles      0.00842825   -0.03215769   -0.03713511
 Pairs        0.05378391   -0.06230790   -0.10245243
 Total        1.06222080   -0.09447696   -0.86489839
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79599421
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07480888
 One electron energy                 -800.56948141
 Two electron energy                  337.90858881
 Virial quotient                       -1.40594442
 Correlation energy                    -0.86489839
 !MRCI STATE 7.1 Energy              -462.660892594173

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71470726 (Davidson, fixed reference)
 Cluster corrected energies          -462.71470299 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71470726 (Davidson, rotated reference)

 Cluster corrected energies          -462.71290328 (Pople, fixed reference)
 Cluster corrected energies          -462.71289892 (Pople, relaxed reference)
 Cluster corrected energies          -462.71290328 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96788868 (fixed)   0.97027225 (relaxed)   0.97027000 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000863   -0.00001136   -0.82411437
 Singles      0.00842823   -0.03215765   -0.03713511
 Pairs        0.05378392    0.04264321   -0.00364890
 Total        1.06222079    0.01047420   -0.86489838
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79599421
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07485040
 One electron energy                 -800.56950091
 Two electron energy                  337.90860832
 Virial quotient                       -1.40594425
 Correlation energy                    -0.86489838
 !MRCI STATE 8.1 Energy              -462.660892592319

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71470725 (Davidson, fixed reference)
 Cluster corrected energies          -462.71470298 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71470725 (Davidson, rotated reference)

 Cluster corrected energies          -462.71290327 (Pople, fixed reference)
 Cluster corrected energies          -462.71289891 (Pople, relaxed reference)
 Cluster corrected energies          -462.71290327 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96627346 (fixed)   0.97027221 (relaxed)   0.97026996 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000863   -0.00001136   -0.00324679
 Singles      0.00842827   -0.03215773   -0.03713524
 Pairs        0.05378397   -0.82929930   -0.82451635
 Total        1.06222087   -0.86146840   -0.86489838
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79599421
 Nuclear energy                         0.00000000
 Kinetic energy                       329.07496065
 One electron energy                 -800.56954574
 Two electron energy                  337.90865316
 Virial quotient                       -1.40594378
 Correlation energy                    -0.86489838
 !MRCI STATE 9.1 Energy              -462.660892586939

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.71470732 (Davidson, fixed reference)
 Cluster corrected energies          -462.71470305 (Davidson, relaxed reference)
 Cluster corrected energies          -462.71470732 (Davidson, rotated reference)

 Cluster corrected energies          -462.71290334 (Pople, fixed reference)
 Cluster corrected energies          -462.71289898 (Pople, relaxed reference)
 Cluster corrected energies          -462.71290334 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       39.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     1346.92       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4830.70   2691.54   2131.09      6.77      0.04      1.03
 REAL TIME  *      4980.65 SEC
 DISK USED  *         1.35 GB (local),       19.02 GB (total)
 SF USED    *         7.22 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -462.72493525  AU                              
 SETTING HLSDIAG(12)    =      -462.71869702  AU                              
 SETTING HLSDIAG(13)    =      -462.71869694  AU                              
 SETTING HLSDIAG(14)    =      -462.71869709  AU                              
 SETTING HLSDIAG(15)    =      -462.71869705  AU                              
 SETTING HLSDIAG(16)    =      -462.71869715  AU                              
 SETTING HLSDIAG(17)    =      -462.71470299  AU                              
 SETTING HLSDIAG(18)    =      -462.71470298  AU                              
 SETTING HLSDIAG(19)    =      -462.71470305  AU                              


         HLSDIAG
    -463.1335144
    -462.7171784
    -462.7171785
    -462.7171789
    -462.7171785
    -462.7171789
    -462.7148425
    -462.7148425
    -462.7148426
    -462.7068403
    -462.7249352
    -462.7186970
    -462.7186969
    -462.7186971
    -462.7186970
    -462.7186971
    -462.7147030
    -462.7147030
    -462.7147030
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -463.069961   -462.663480   -462.663480   -462.663480   -462.663480   -462.663480   -462.660937   -462.660937
                      -462.660937   -462.651645
 Replaced energies:   -463.133514   -462.717178   -462.717178   -462.717179   -462.717178   -462.717179   -462.714842   -462.714842
                      -462.714843   -462.706840

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:   -462.671234   -462.664946   -462.664946   -462.664946   -462.664946   -462.664946   -462.660893   -462.660893
                      -462.660893
 Replaced energies:   -462.724935   -462.718697   -462.718697   -462.718697   -462.718697   -462.718697   -462.714703   -462.714703
                      -462.714703



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -463.13351445

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   91375.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   91375.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   91375.09       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   91375.18       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   91375.08       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   91887.88       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91887.87       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91887.86       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   93644.16
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00      -0.00      -0.00       0.00       0.00       0.00     994.51     -30.86     -16.71       0.00
                           -0.00      -0.00      -0.00      -0.01       0.02       0.00     -29.18    -990.42      92.21       0.00

   12   2.1  1.0  1.0       0.00     185.15     -11.43      -6.15      -2.20      -2.73    -693.91      21.03      14.19       0.00
                           -0.00      12.23      29.74     527.77   -1073.49       2.02      -6.80    -258.14      28.44       0.00

   13   3.1  1.0  1.0      -0.00    1273.38     -37.06      19.41      24.44       1.88     100.40      -2.86     -21.42      -0.00
                            0.00       2.04       3.34     200.71    -432.56     -41.49      16.90     647.83     -66.44      -0.00

   14   4.1  1.0  1.0      -0.00      10.49    -643.38      46.75       1.73       1.89      17.75      50.47     604.99      -0.00
                           -0.00       3.15      -0.18     298.21     130.94    1245.54       5.80      21.01     -10.10       0.00

   15   5.1  1.0  1.0       0.00      24.80     -58.45   -1119.93    -532.48    -341.39       6.67      14.80       6.45       0.00
                           -0.00      14.40     643.17     -27.22       5.91      18.80      -2.17      65.05     604.15      -0.00

   16   6.1  1.0  1.0      -0.00     -10.70     -17.64    -256.88     590.79       9.71      16.64     605.15     -51.10      -0.00
                            0.00    -643.85      14.32      -1.90      -7.36      11.43    -607.48      14.97      -3.87       0.00

   17   7.1  1.0  1.0     -25.78     -27.24    -602.61      38.93     -45.94      32.30      11.12      11.09     641.46     -49.27
                          498.47     -36.22       5.08    -606.98    -298.46     176.37     -47.40       4.54      33.76     952.53

   18   8.1  1.0  1.0    -499.31       3.86      18.06    -180.29     -55.27     674.15       0.36      29.92     -33.59    -954.14
                          -23.90      58.53     603.99       1.74      15.59      -6.10      45.43      58.02     637.52     -45.67

   19   9.1  1.0  1.0     -23.74       7.97      58.98     256.04    -546.31      30.68     -19.74    -641.40       9.86     -45.36
                          -38.68    -602.88      58.54      40.87      15.14     -12.77    -638.85      22.65      41.08     -73.92

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.01      -0.00      -0.00       0.00      27.56     129.63    1401.06       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -69.61   -1427.01      63.50       4.46      -7.17      15.35      50.31     612.48       0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      81.42    1123.78     -50.98      -8.18       8.78     -12.23      81.23     774.92       0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -907.31      84.30       6.32     -17.77      -9.87     859.10     -13.28       7.06      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -19.01       2.22    -429.29     803.59      32.61     -13.94    -854.96      83.06      -0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       7.99     -62.77   -1150.89    -593.48    1279.23       7.90      19.83      -3.82       0.01

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -52.97     854.55     -40.07     -20.55     -51.17     -53.99    -902.93      74.64      10.86    -101.21

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           36.25     -33.24      21.13     408.55    -753.32      33.97      69.94     900.74     -84.72      69.27

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -704.95     -58.97     -21.57    -605.15    -341.25    -702.35      71.44      40.71      -5.17   -1347.11

   29   1.1  1.0 -1.0       0.00      -0.00      -0.00       0.00       0.00       0.00     994.51     -30.86     -16.71       0.00
                            0.00       0.00       0.00       0.01      -0.02      -0.00      29.18     990.42     -92.21      -0.00

   30   2.1  1.0 -1.0       0.00     185.15     -11.43      -6.15      -2.20      -2.73    -693.91      21.03      14.19       0.00
                            0.00     -12.23     -29.74    -527.77    1073.49      -2.02       6.80     258.14     -28.44      -0.00

   31   3.1  1.0 -1.0      -0.00    1273.38     -37.06      19.41      24.44       1.88     100.40      -2.86     -21.42      -0.00
                           -0.00      -2.04      -3.34    -200.71     432.56      41.49     -16.90    -647.83      66.44       0.00

   32   4.1  1.0 -1.0      -0.00      10.49    -643.38      46.75       1.73       1.89      17.75      50.47     604.99      -0.00
                            0.00      -3.15       0.18    -298.21    -130.94   -1245.54      -5.80     -21.01      10.10      -0.00

   33   5.1  1.0 -1.0       0.00      24.80     -58.45   -1119.93    -532.48    -341.39       6.67      14.80       6.45       0.00
                            0.00     -14.40    -643.17      27.22      -5.91     -18.80       2.17     -65.05    -604.15       0.00

   34   6.1  1.0 -1.0      -0.00     -10.70     -17.64    -256.88     590.79       9.71      16.64     605.15     -51.10      -0.00
                           -0.00     643.85     -14.32       1.90       7.36     -11.43     607.48     -14.97       3.87      -0.00

   35   7.1  1.0 -1.0     -25.78     -27.24    -602.61      38.93     -45.94      32.30      11.12      11.09     641.46     -49.27
                         -498.47      36.22      -5.08     606.98     298.46    -176.37      47.40      -4.54     -33.76    -952.53

   36   8.1  1.0 -1.0    -499.31       3.86      18.06    -180.29     -55.27     674.15       0.36      29.92     -33.59    -954.14
                           23.90     -58.53    -603.99      -1.74     -15.59       6.10     -45.43     -58.02    -637.52      45.67

   37   9.1  1.0 -1.0     -23.74       7.97      58.98     256.04    -546.31      30.68     -19.74    -641.40       9.86     -45.36
                           38.68     602.88     -58.54     -40.87     -15.14      12.77     638.85     -22.65     -41.08      73.92


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00     -25.78    -499.31     -23.74       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00    -498.47      23.90      38.68      -0.00

    2   2.1  0.0  0.0      -0.00     185.15    1273.38      10.49      24.80     -10.70     -27.24       3.86       7.97       0.00
                            0.00     -12.23      -2.04      -3.15     -14.40     643.85      36.22     -58.53     602.88       0.00

    3   3.1  0.0  0.0      -0.00     -11.43     -37.06    -643.38     -58.45     -17.64    -602.61      18.06      58.98       0.00
                            0.00     -29.74      -3.34       0.18    -643.17     -14.32      -5.08    -603.99     -58.54      -0.01

    4   4.1  0.0  0.0       0.00      -6.15      19.41      46.75   -1119.93    -256.88      38.93    -180.29     256.04       0.00
                            0.01    -527.77    -200.71    -298.21      27.22       1.90     606.98      -1.74     -40.87       0.00

    5   5.1  0.0  0.0       0.00      -2.20      24.44       1.73    -532.48     590.79     -45.94     -55.27    -546.31       0.00
                           -0.02    1073.49     432.56    -130.94      -5.91       7.36     298.46     -15.59     -15.14       0.00

    6   6.1  0.0  0.0       0.00      -2.73       1.88       1.89    -341.39       9.71      32.30     674.15      30.68       0.00
                           -0.00      -2.02      41.49   -1245.54     -18.80     -11.43    -176.37       6.10      12.77      -0.00

    7   7.1  0.0  0.0     994.51    -693.91     100.40      17.75       6.67      16.64      11.12       0.36     -19.74       0.00
                           29.18       6.80     -16.90      -5.80       2.17     607.48      47.40     -45.43     638.85     -27.56

    8   8.1  0.0  0.0     -30.86      21.03      -2.86      50.47      14.80     605.15      11.09      29.92    -641.40       0.00
                          990.42     258.14    -647.83     -21.01     -65.05     -14.97      -4.54     -58.02     -22.65    -129.63

    9   9.1  0.0  0.0     -16.71      14.19     -21.42     604.99       6.45     -51.10     641.46     -33.59       9.86       0.00
                          -92.21     -28.44      66.44      10.10    -604.15       3.87     -33.76    -637.52     -41.08   -1401.06

   10  10.1  0.0  0.0       0.00       0.00      -0.00      -0.00       0.00      -0.00     -49.27    -954.14     -45.36       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00    -952.53      45.67      73.92      -0.00

   11   1.1  1.0  1.0   89672.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00     111.15     -76.07    1479.31      -0.00

   12   2.1  1.0  1.0       0.00   91041.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -3.52      18.16     -35.28   -1351.81      42.27     -29.29     648.11       0.00

   13   3.1  1.0  1.0       0.00       0.00   91041.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       3.52      -0.00     -18.52      52.75    1065.15      69.26     -71.89     818.13      -0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   91041.89       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -18.16      18.52      -0.00    -859.46      59.92      60.51     904.32      65.99       0.01

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   91041.90       0.00       0.00       0.00       0.00      -0.01
                           -0.00      35.28     -52.75     859.46      -0.00      28.72    -903.89      54.99      74.63       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   91041.87       0.00       0.00       0.00       0.00
                            0.00    1351.81   -1065.15     -59.92     -28.72      -0.00      21.66       6.82      -3.21      -0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   91918.49       0.00       0.00      54.11
                         -111.15     -42.27     -69.26     -60.51     903.89     -21.66       0.00    -855.05     -43.97   -1046.01

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91918.49       0.00    1047.78
                           76.07      29.29      71.89    -904.32     -54.99      -6.82     855.05       0.00     -64.24      50.16

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91918.48      49.81
                        -1479.31    -648.11    -818.13     -65.99     -74.63       3.21      43.97      64.24      -0.00      81.17

   20   1.1  1.0  0.0      -0.00      -0.00       0.00       0.00      -0.01       0.00      54.11    1047.78      49.81   89672.77
                            0.00      -0.00       0.00      -0.01      -0.00       0.00    1046.01     -50.16     -81.17       0.00

   21   2.1  1.0  0.0       0.00      -0.00     -10.49      -3.30     175.08      -6.60     -38.41    -732.69     -32.17       0.00
                            0.00       0.00     -38.38    1130.85      13.91       5.28     273.18     -13.65     -25.90      -0.00

   22   3.1  1.0  0.0      -0.00      10.49      -0.00     -13.57    1204.88      -8.85       6.14     107.30     -15.78       0.00
                           -0.00      38.38       0.00     450.84       7.99       9.95    -685.53      34.77      59.81      -0.00

   23   4.1  1.0  0.0      -0.00       3.30      13.57       0.00      23.81    -609.48      42.79     -26.28     640.39       0.00
                            0.01   -1130.85    -450.84      -0.00      -1.49       8.25     -22.84      -4.93       9.97      -0.00

   24   5.1  1.0  0.0       0.01    -175.08   -1204.88     -23.81      -0.00      -4.22      16.05       5.29       7.47       0.00
                            0.00     -13.91      -7.99       1.49       0.00    -608.97     -56.45      48.45    -638.36      -0.00

   25   6.1  1.0  0.0      -0.00       6.60       8.85     609.48       4.22       0.00     640.20     -32.31     -44.24       0.00
                           -0.00      -5.28      -9.95      -8.25     608.97      -0.00      36.93     640.03      45.40      -0.00

   26   7.1  1.0  0.0     -54.11      38.41      -6.14     -42.79     -16.05    -640.20      -0.00     -28.79     605.63       0.00
                        -1046.01    -273.18     685.53      22.84      56.45     -36.93      -0.00      46.92     -28.99      -0.00

   27   8.1  1.0  0.0   -1047.78     732.69    -107.30      26.28      -5.29      32.31      28.79      -0.00     -31.27       0.00
                           50.16      13.65     -34.77       4.93     -48.45    -640.03     -46.92      -0.00    -604.61      -0.00

   28   9.1  1.0  0.0     -49.81      32.17      15.78    -640.39      -7.47      44.24    -605.63      31.27       0.00       0.00
                           81.17      25.90     -59.81      -9.97     638.36     -45.40      28.99     604.61       0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -54.11
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1046.01

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1047.78
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      50.16

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -49.81
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      81.17


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      52.97     -36.25     704.95      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     185.15
                           69.61     -81.42     907.31      19.01      -7.99    -854.55      33.24      58.97      -0.00      12.23

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -11.43
                         1427.01   -1123.78     -84.30      -2.22      62.77      40.07     -21.13      21.57      -0.00      29.74

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -6.15
                          -63.50      50.98      -6.32     429.29    1150.89      20.55    -408.55     605.15      -0.01     527.77

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.20
                           -4.46       8.18      17.77    -803.59     593.48      51.17     753.32     341.25       0.02   -1073.49

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.73
                            7.17      -8.78       9.87     -32.61   -1279.23      53.99     -33.97     702.35       0.00       2.02

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     994.51    -693.91
                          -15.35      12.23    -859.10      13.94      -7.90     902.93     -69.94     -71.44     -29.18      -6.80

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -30.86      21.03
                          -50.31     -81.23      13.28     854.96     -19.83     -74.64    -900.74     -40.71    -990.42    -258.14

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -16.71      14.19
                         -612.48    -774.92      -7.06     -83.06       3.82     -10.86      84.72       5.17      92.21      28.44

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.01     101.21     -69.27    1347.11       0.00       0.00

   11   1.1  1.0  1.0       0.00      -0.00      -0.00       0.01      -0.00     -54.11   -1047.78     -49.81       0.00       0.00
                           -0.00       0.00      -0.01      -0.00       0.00    1046.01     -50.16     -81.17       0.00       0.00

   12   2.1  1.0  1.0      -0.00      10.49       3.30    -175.08       6.60      38.41     732.69      32.17       0.00       0.00
                           -0.00     -38.38    1130.85      13.91       5.28     273.18     -13.65     -25.90       0.00       0.00

   13   3.1  1.0  1.0     -10.49      -0.00      13.57   -1204.88       8.85      -6.14    -107.30      15.78       0.00       0.00
                           38.38      -0.00     450.84       7.99       9.95    -685.53      34.77      59.81       0.00       0.00

   14   4.1  1.0  1.0      -3.30     -13.57       0.00     -23.81     609.48     -42.79      26.28    -640.39       0.00       0.00
                        -1130.85    -450.84       0.00      -1.49       8.25     -22.84      -4.93       9.97       0.00       0.00

   15   5.1  1.0  1.0     175.08    1204.88      23.81      -0.00       4.22     -16.05      -5.29      -7.47       0.00       0.00
                          -13.91      -7.99       1.49      -0.00    -608.97     -56.45      48.45    -638.36       0.00       0.00

   16   6.1  1.0  1.0      -6.60      -8.85    -609.48      -4.22       0.00    -640.20      32.31      44.24       0.00       0.00
                           -5.28      -9.95      -8.25     608.97       0.00      36.93     640.03      45.40       0.00       0.00

   17   7.1  1.0  1.0     -38.41       6.14      42.79      16.05     640.20      -0.00      28.79    -605.63       0.00       0.00
                         -273.18     685.53      22.84      56.45     -36.93       0.00      46.92     -28.99       0.00       0.00

   18   8.1  1.0  1.0    -732.69     107.30     -26.28       5.29     -32.31     -28.79      -0.00      31.27       0.00       0.00
                           13.65     -34.77       4.93     -48.45    -640.03     -46.92       0.00    -604.61       0.00       0.00

   19   9.1  1.0  1.0     -32.17     -15.78     640.39       7.47     -44.24     605.63     -31.27       0.00       0.00       0.00
                           25.90     -59.81      -9.97     638.36     -45.40      28.99     604.61      -0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   21   2.1  1.0  0.0   91041.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   22   3.1  1.0  0.0       0.00   91041.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -10.49
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      38.38

   23   4.1  1.0  0.0       0.00       0.00   91041.89       0.00       0.00       0.00       0.00       0.00       0.00      -3.30
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01   -1130.85

   24   5.1  1.0  0.0       0.00       0.00       0.00   91041.90       0.00       0.00       0.00       0.00      -0.01     175.08
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.91

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   91041.87       0.00       0.00       0.00       0.00      -6.60
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -5.28

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   91918.49       0.00       0.00      54.11     -38.41
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00   -1046.01    -273.18

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   91918.49       0.00    1047.78    -732.69
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      50.16      13.65

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   91918.48      49.81     -32.17
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      81.17      25.90

   29   1.1  1.0 -1.0      -0.00       0.00       0.00      -0.01       0.00      54.11    1047.78      49.81   89672.77       0.00
                           -0.00       0.00      -0.01      -0.00       0.00    1046.01     -50.16     -81.17      -0.00      -0.00

   30   2.1  1.0 -1.0      -0.00     -10.49      -3.30     175.08      -6.60     -38.41    -732.69     -32.17       0.00   91041.90
                            0.00     -38.38    1130.85      13.91       5.28     273.18     -13.65     -25.90       0.00       0.00

   31   3.1  1.0 -1.0      10.49      -0.00     -13.57    1204.88      -8.85       6.14     107.30     -15.78       0.00       0.00
                           38.38       0.00     450.84       7.99       9.95    -685.53      34.77      59.81      -0.00      -3.52

   32   4.1  1.0 -1.0       3.30      13.57       0.00      23.81    -609.48      42.79     -26.28     640.39       0.00       0.00
                        -1130.85    -450.84      -0.00      -1.49       8.25     -22.84      -4.93       9.97      -0.00      18.16

   33   5.1  1.0 -1.0    -175.08   -1204.88     -23.81      -0.00      -4.22      16.05       5.29       7.47       0.00       0.00
                          -13.91      -7.99       1.49       0.00    -608.97     -56.45      48.45    -638.36       0.00     -35.28

   34   6.1  1.0 -1.0       6.60       8.85     609.48       4.22       0.00     640.20     -32.31     -44.24       0.00       0.00
                           -5.28      -9.95      -8.25     608.97      -0.00      36.93     640.03      45.40      -0.00   -1351.81

   35   7.1  1.0 -1.0      38.41      -6.14     -42.79     -16.05    -640.20      -0.00     -28.79     605.63       0.00       0.00
                         -273.18     685.53      22.84      56.45     -36.93      -0.00      46.92     -28.99     111.15      42.27

   36   8.1  1.0 -1.0     732.69    -107.30      26.28      -5.29      32.31      28.79      -0.00     -31.27       0.00       0.00
                           13.65     -34.77       4.93     -48.45    -640.03     -46.92      -0.00    -604.61     -76.07     -29.29

   37   9.1  1.0 -1.0      32.17      15.78    -640.39      -7.47      44.24    -605.63      31.27       0.00       0.00       0.00
                           25.90     -59.81      -9.97     638.36     -45.40      28.99     604.61       0.00    1479.31     648.11


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0      -0.00      -0.00       0.00      -0.00     -25.78    -499.31     -23.74
                            0.00      -0.00      -0.00       0.00     498.47     -23.90     -38.68

    2   2.1  0.0  0.0    1273.38      10.49      24.80     -10.70     -27.24       3.86       7.97
                            2.04       3.15      14.40    -643.85     -36.22      58.53    -602.88

    3   3.1  0.0  0.0     -37.06    -643.38     -58.45     -17.64    -602.61      18.06      58.98
                            3.34      -0.18     643.17      14.32       5.08     603.99      58.54

    4   4.1  0.0  0.0      19.41      46.75   -1119.93    -256.88      38.93    -180.29     256.04
                          200.71     298.21     -27.22      -1.90    -606.98       1.74      40.87

    5   5.1  0.0  0.0      24.44       1.73    -532.48     590.79     -45.94     -55.27    -546.31
                         -432.56     130.94       5.91      -7.36    -298.46      15.59      15.14

    6   6.1  0.0  0.0       1.88       1.89    -341.39       9.71      32.30     674.15      30.68
                          -41.49    1245.54      18.80      11.43     176.37      -6.10     -12.77

    7   7.1  0.0  0.0     100.40      17.75       6.67      16.64      11.12       0.36     -19.74
                           16.90       5.80      -2.17    -607.48     -47.40      45.43    -638.85

    8   8.1  0.0  0.0      -2.86      50.47      14.80     605.15      11.09      29.92    -641.40
                          647.83      21.01      65.05      14.97       4.54      58.02      22.65

    9   9.1  0.0  0.0     -21.42     604.99       6.45     -51.10     641.46     -33.59       9.86
                          -66.44     -10.10     604.15      -3.87      33.76     637.52      41.08

   10  10.1  0.0  0.0      -0.00      -0.00       0.00      -0.00     -49.27    -954.14     -45.36
                           -0.00       0.00      -0.00       0.00     952.53     -45.67     -73.92

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

   20   1.1  1.0  0.0      -0.00      -0.00       0.01      -0.00     -54.11   -1047.78     -49.81
                            0.00      -0.01      -0.00       0.00    1046.01     -50.16     -81.17

   21   2.1  1.0  0.0      10.49       3.30    -175.08       6.60      38.41     732.69      32.17
                          -38.38    1130.85      13.91       5.28     273.18     -13.65     -25.90

   22   3.1  1.0  0.0      -0.00      13.57   -1204.88       8.85      -6.14    -107.30      15.78
                           -0.00     450.84       7.99       9.95    -685.53      34.77      59.81

   23   4.1  1.0  0.0     -13.57       0.00     -23.81     609.48     -42.79      26.28    -640.39
                         -450.84       0.00      -1.49       8.25     -22.84      -4.93       9.97

   24   5.1  1.0  0.0    1204.88      23.81      -0.00       4.22     -16.05      -5.29      -7.47
                           -7.99       1.49      -0.00    -608.97     -56.45      48.45    -638.36

   25   6.1  1.0  0.0      -8.85    -609.48      -4.22       0.00    -640.20      32.31      44.24
                           -9.95      -8.25     608.97       0.00      36.93     640.03      45.40

   26   7.1  1.0  0.0       6.14      42.79      16.05     640.20      -0.00      28.79    -605.63
                          685.53      22.84      56.45     -36.93       0.00      46.92     -28.99

   27   8.1  1.0  0.0     107.30     -26.28       5.29     -32.31     -28.79      -0.00      31.27
                          -34.77       4.93     -48.45    -640.03     -46.92       0.00    -604.61

   28   9.1  1.0  0.0     -15.78     640.39       7.47     -44.24     605.63     -31.27       0.00
                          -59.81      -9.97     638.36     -45.40      28.99     604.61      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    -111.15      76.07   -1479.31

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.52     -18.16      35.28    1351.81     -42.27      29.29    -648.11

   31   3.1  1.0 -1.0   91041.92       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      18.52     -52.75   -1065.15     -69.26      71.89    -818.13

   32   4.1  1.0 -1.0       0.00   91041.89       0.00       0.00       0.00       0.00       0.00
                          -18.52       0.00     859.46     -59.92     -60.51    -904.32     -65.99

   33   5.1  1.0 -1.0       0.00       0.00   91041.90       0.00       0.00       0.00       0.00
                           52.75    -859.46       0.00     -28.72     903.89     -54.99     -74.63

   34   6.1  1.0 -1.0       0.00       0.00       0.00   91041.87       0.00       0.00       0.00
                         1065.15      59.92      28.72       0.00     -21.66      -6.82       3.21

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   91918.49       0.00       0.00
                           69.26      60.51    -903.89      21.66      -0.00     855.05      43.97

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   91918.49       0.00
                          -71.89     904.32      54.99       6.82    -855.05      -0.00      64.24

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   91918.48
                          818.13      65.99      74.63      -3.21     -43.97     -64.24       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by   -463.13351445 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   91375.199       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   91375.189       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   91375.094       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   91375.181       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   91375.083       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   91887.876       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   91887.873
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000      -0.001      -0.000       0.000       0.000       0.000    1406.446     -43.643
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000     261.840     -16.167      -8.693      -3.114      -3.858    -981.343      29.743
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000    1800.834     -52.407      27.452      34.566       2.663     141.983      -4.040
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.000      14.835    -909.879      66.115       2.451       2.674      25.099      71.371
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.005      35.074     -82.657   -1583.823    -753.042    -482.794       9.437      20.927
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.000     -15.125     -24.948    -363.286     835.505      13.729      23.537     855.811
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            -36.463     -38.530    -852.214      55.060     -64.970      45.677      15.728      15.685
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -706.129       5.466      25.535    -254.967     -78.157     953.389       0.515      42.314
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -33.570      11.272      83.407     362.092    -772.594      43.385     -27.913    -907.079
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.012      -0.000      -0.001       0.000      27.562     129.632

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -69.612   -1427.007      63.502       4.462      -7.172      15.349      50.314

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      81.418    1123.784     -50.977      -8.177       8.785     -12.227      81.229

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -907.315      84.304       6.322     -17.771      -9.870     859.096     -13.280

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -19.007       2.222    -429.289     803.587      32.606     -13.938    -854.962

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       7.993     -62.770   -1150.889    -593.478    1279.231       7.902      19.828

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -52.965     854.551     -40.066     -20.553     -51.167     -53.992    -902.931      74.644

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               36.249     -33.241      21.130     408.547    -753.321      33.974      69.943     900.740

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -704.951     -58.969     -21.574    -605.153    -341.254    -702.353      71.437      40.708

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.001      -0.010       0.023       0.001     -41.273   -1400.658

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      17.290      42.061     746.376   -1518.151       2.858      -9.614    -365.065

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       2.889       4.720     283.848    -611.730     -58.676      23.900     916.176

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.004       4.450      -0.260     421.730     185.172    1761.456       8.199      29.708

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      20.371     909.584     -38.489       8.364      26.589      -3.064      91.992

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -910.540      20.248      -2.685     -10.403      16.164    -859.100      21.164

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              704.939     -51.228       7.179    -858.406    -422.083     249.428     -67.027       6.419

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -33.802      82.779     854.174       2.456      22.045      -8.623      64.252      82.047

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -54.702    -852.607      82.788      57.805      21.410     -18.065    -903.473      32.031

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.005      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000      -0.001     261.840    1800.834      14.835      35.074     -15.125
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.000     -16.167     -52.407    -909.879     -82.657     -24.948
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000      -8.693      27.452      66.115   -1583.823    -363.286
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000      -3.114      34.566       2.451    -753.042     835.505
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000      -3.858       2.663       2.674    -482.794      13.729
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000    1406.446    -981.343     141.983      25.099       9.437      23.537
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000     -43.643      29.743      -4.040      71.371      20.927     855.811
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           91887.855       0.000     -23.630      20.064     -30.292     855.592       9.118     -72.267
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   93644.156       0.000       0.000      -0.000      -0.000       0.007      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            -23.630       0.000   89672.770       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             20.064       0.000       0.000   91041.902       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+            -30.292      -0.000       0.000       0.000   91041.919       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+            855.592      -0.000       0.000       0.000       0.000   91041.887       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              9.118       0.007       0.000       0.000       0.000       0.000   91041.895       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            -72.267      -0.000       0.000       0.000       0.000       0.000       0.000   91041.875
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            907.156     -69.679       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            -47.507   -1349.355       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             13.944     -64.149       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000
                             1401.062       0.000       0.000      -0.000       0.000      -0.008      -0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                              612.476       0.000       0.000       0.000     -54.276    1599.267      19.670       7.464

    3    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000      -0.000
                              774.925       0.000      -0.000      54.276       0.000     637.578      11.302      14.076

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000       0.000      -0.000
                                7.056      -0.000       0.008   -1599.267    -637.578       0.000      -2.105      11.661

    5    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                               83.062      -0.000       0.000     -19.670     -11.302       2.105       0.000    -861.219

    6    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                               -3.818       0.007      -0.000      -7.464     -14.076     -11.661     861.219       0.000

    7    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                               10.857    -101.213   -1479.287    -386.341     969.479      32.303      79.827     -52.232

    8    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                              -84.716      69.270      70.931      19.309     -49.169       6.968     -68.523    -905.142

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.172   -1347.109     114.791      36.634     -84.586     -14.095     902.772     -64.199

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              130.406       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               40.222       0.000      -0.000      -0.000      -3.521      18.155     -35.278   -1351.812

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -93.956      -0.000       0.000       3.521      -0.000     -18.517      52.752    1065.150

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -14.285       0.004       0.000     -18.155      18.517      -0.000    -859.455      59.921

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              854.398      -0.000      -0.000      35.278     -52.752     859.455      -0.000      28.719

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.469       0.000       0.000    1351.812   -1065.150     -59.921     -28.719      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               47.738    1347.087    -111.145     -42.274     -69.256     -60.509     903.887     -21.659

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              901.583     -64.592      76.067      29.289      71.892    -904.323     -54.991      -6.823

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               58.092    -104.532   -1479.306    -648.115    -818.126     -65.985     -74.634       3.209

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>             -36.463    -706.129     -33.570       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000

    2    1  |0 0>             -38.530       5.466      11.272       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      69.612     -81.418     907.315      19.007

    3    1  |0 0>            -852.214      25.535      83.407       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.012    1427.007   -1123.784     -84.304      -2.222

    4    1  |0 0>              55.060    -254.967     362.092       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -63.502      50.977      -6.322     429.289

    5    1  |0 0>             -64.970     -78.157    -772.594       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.001      -4.462       8.177      17.771    -803.587

    6    1  |0 0>              45.677     953.389      43.385       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       7.172      -8.785       9.870     -32.606

    7    1  |0 0>              15.728       0.515     -27.913       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -27.562     -15.349      12.227    -859.096      13.938

    8    1  |0 0>              15.685      42.314    -907.079       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -129.632     -50.314     -81.229      13.280     854.962

    9    1  |0 0>             907.156     -47.507      13.944       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1401.062    -612.476    -774.925      -7.056     -83.062

   10    1  |0 0>             -69.679   -1349.355     -64.149       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.008      -0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000     -54.276    1599.267      19.670

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000      54.276       0.000     637.578      11.302

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.008   -1599.267    -637.578       0.000      -2.105

    5    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000     -19.670     -11.302       2.105       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000      -7.464     -14.076     -11.661     861.219

    7    1  |1 1>+          91918.491       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000   -1479.287    -386.341     969.479      32.303      79.827

    8    1  |1 1>+              0.000   91918.493       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      70.931      19.309     -49.169       6.968     -68.523

    9    1  |1 1>+              0.000       0.000   91918.478       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     114.791      36.634     -84.586     -14.095     902.772

    1    1  |1 0>               0.000       0.000       0.000   89672.770       0.000       0.000       0.000       0.000
                             1479.287     -70.931    -114.791       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000   91041.902       0.000       0.000       0.000
                              386.341     -19.309     -36.634      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000   91041.919       0.000       0.000
                             -969.479      49.169      84.586      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000   91041.887       0.000
                              -32.303      -6.968      14.095      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000   91041.895
                              -79.827      68.523    -902.772      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               52.232     905.142      64.199      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      66.351     -40.999      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -66.351       0.000    -855.050      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               40.999     855.050       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.013
                              111.145     -76.067    1479.306      -0.000       0.000      -0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      14.830       4.666    -247.604
                               42.274     -29.289     648.115       0.000      -0.000      -0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000     -14.830       0.000      19.195   -1703.955
                               69.256     -71.892     818.126      -0.000      -0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -4.666     -19.195       0.000     -33.676
                               60.509     904.323      65.985       0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000      -0.013     247.604    1703.955      33.676       0.000
                             -903.887      54.991      74.634       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000       0.000      -9.333     -12.513    -861.931      -5.962
                               21.659       6.823      -3.209      -0.000      -0.000      -0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000      76.517     -54.316       8.677      60.516      22.696
                                0.000    -855.049     -43.967      -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000    1481.783   -1036.179     151.743     -37.163       7.475
                              855.049       0.000     -64.243      -0.000       0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000      70.446     -45.488     -22.319     905.649      10.563
                               43.967      64.243      -0.000      -0.000      -0.000       0.000      -0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      52.965     -36.249     704.951       0.000       0.000      -0.000       0.004

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -7.993    -854.551      33.241      58.969       0.000     -17.290      -2.889      -4.450

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               62.770      40.066     -21.130      21.574       0.001     -42.061      -4.720       0.260

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1150.889      20.553    -408.547     605.153       0.010    -746.376    -283.848    -421.730

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              593.478      51.167     753.321     341.254      -0.023    1518.151     611.730    -185.172

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                            -1279.231      53.992     -33.974     702.353      -0.001      -2.858      58.676   -1761.456

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -7.902     902.931     -69.943     -71.437      41.273       9.614     -23.900      -8.199

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -19.828     -74.644    -900.740     -40.708    1400.658     365.065    -916.176     -29.708

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.818     -10.857      84.716       5.172    -130.406     -40.222      93.956      14.285

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.007     101.213     -69.270    1347.109      -0.000      -0.000       0.000      -0.004

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1479.287     -70.931    -114.791       0.000       0.000      -0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.464     386.341     -19.309     -36.634      -0.000      -0.000      -3.521      18.155

    3    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               14.076    -969.479      49.169      84.586       0.000       3.521      -0.000     -18.517

    4    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               11.661     -32.303      -6.968      14.095       0.000     -18.155      18.517      -0.000

    5    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -861.219     -79.827      68.523    -902.772      -0.000      35.278     -52.752     859.455

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      52.232     905.142      64.199       0.000    1351.812   -1065.150     -59.921

    7    1  |1 1>+              0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -52.232       0.000      66.351     -40.999    -111.145     -42.274     -69.256     -60.509

    8    1  |1 1>+              0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                             -905.142     -66.351       0.000    -855.050      76.067      29.289      71.892    -904.323

    9    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              -64.199      40.999     855.050       0.000   -1479.306    -648.115    -818.126     -65.985

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000     -14.830      -4.666
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      14.830       0.000     -19.195
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       4.666      19.195       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.013    -247.604   -1703.955     -33.676
                                0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>           91041.875       0.000       0.000       0.000      -0.000       9.333      12.513     861.931
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    7    1  |1 0>               0.000   91918.491       0.000       0.000     -76.517      54.316      -8.677     -60.516
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000   91918.493       0.000   -1481.783    1036.179    -151.743      37.163
                               -0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000   91918.478     -70.446      45.488      22.319    -905.649
                               -0.000      -0.000      -0.000       0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>-             -0.000     -76.517   -1481.783     -70.446   89672.770       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              9.333      54.316    1036.179      45.488       0.000   91041.902       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             12.513      -8.677    -151.743      22.319       0.000       0.000   91041.919       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-            861.931     -60.516      37.163    -905.649       0.000       0.000       0.000   91041.887
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              5.962     -22.696      -7.475     -10.563       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000    -905.379      45.691      62.572       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-            905.379       0.000      40.718    -856.490       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-            -45.691     -40.718       0.000      44.228       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-            -62.572     856.490     -44.228       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -704.939      33.802      54.702

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -20.371     910.540      51.228     -82.779     852.607

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -909.584     -20.248      -7.179    -854.174     -82.788

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               38.489       2.685     858.406      -2.456     -57.805

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -8.364      10.403     422.083     -22.045     -21.410

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -26.589     -16.164    -249.428       8.623      18.065

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                3.064     859.100      67.027     -64.252     903.473

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -91.992     -21.164      -6.419     -82.047     -32.031

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -854.398       5.469     -47.738    -901.583     -58.092

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000   -1347.087      64.592     104.532

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000     111.145     -76.067    1479.306

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -35.278   -1351.812      42.274     -29.289     648.115

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               52.752    1065.150      69.256     -71.892     818.126

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -859.455      59.921      60.509     904.323      65.985

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000      28.719    -903.887      54.991      74.634

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -28.719      -0.000      21.659       6.823      -3.209

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              903.887     -21.659       0.000    -855.049     -43.967

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -54.991      -6.823     855.049       0.000     -64.243

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -74.634       3.209      43.967      64.243      -0.000

    1    1  |1 0>              -0.013       0.000      76.517    1481.783      70.446
                               -0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>             247.604      -9.333     -54.316   -1036.179     -45.488
                                0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>            1703.955     -12.513       8.677     151.743     -22.319
                                0.000       0.000       0.000      -0.000      -0.000

    4    1  |1 0>              33.676    -861.931      60.516     -37.163     905.649
                                0.000      -0.000       0.000       0.000       0.000

    5    1  |1 0>               0.000      -5.962      22.696       7.475      10.563
                                0.000      -0.000       0.000       0.000       0.000

    6    1  |1 0>               5.962       0.000     905.379     -45.691     -62.572
                               -0.000      -0.000      -0.000       0.000      -0.000

    7    1  |1 0>             -22.696    -905.379       0.000     -40.718     856.490
                                0.000      -0.000      -0.000       0.000      -0.000

    8    1  |1 0>              -7.475      45.691      40.718       0.000     -44.228
                                0.000       0.000       0.000      -0.000       0.000

    9    1  |1 0>             -10.563      62.572    -856.490      44.228       0.000
                                0.000      -0.000      -0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          91041.895       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   91041.875       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   91918.491       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   91918.493       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   91918.478
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -463.13358763    -0.00007318      -16.06      0.00000000        0.00      0.0000
    2  -462.73050512     0.40300932    88450.32      0.40308250    88466.38     10.9684
    3  -462.73050512     0.40300932    88450.32      0.40308250    88466.38     10.9684
    4  -462.73050512     0.40300932    88450.32      0.40308250    88466.38     10.9684
    5  -462.72654640     0.40696805    89319.16      0.40704123    89335.22     11.0762
    6  -462.72654639     0.40696806    89319.16      0.40704124    89335.23     11.0762
    7  -462.72654637     0.40696808    89319.17      0.40704126    89335.23     11.0762
    8  -462.72654637     0.40696808    89319.17      0.40704126    89335.23     11.0762
    9  -462.72654636     0.40696809    89319.17      0.40704127    89335.23     11.0762
   10  -462.72654630     0.40696814    89319.18      0.40704132    89335.24     11.0762
   11  -462.72654630     0.40696815    89319.18      0.40704133    89335.25     11.0762
   12  -462.72631930     0.40719515    89369.01      0.40726833    89385.07     11.0823
   13  -462.72631925     0.40719520    89369.02      0.40726838    89385.08     11.0823
   14  -462.72631906     0.40719539    89369.06      0.40726857    89385.12     11.0823
   15  -462.72631905     0.40719540    89369.06      0.40726858    89385.12     11.0823
   16  -462.72631900     0.40719544    89369.07      0.40726862    89385.13     11.0823
   17  -462.72373311     0.40978134    89936.61      0.40985452    89952.67     11.1527
   18  -462.72373309     0.40978136    89936.61      0.40985454    89952.67     11.1527
   19  -462.72373309     0.40978136    89936.61      0.40985454    89952.67     11.1527
   20  -462.72316792     0.41034653    90060.65      0.41041971    90076.71     11.1681
   21  -462.72316789     0.41034655    90060.66      0.41041973    90076.72     11.1681
   22  -462.72316782     0.41034662    90060.67      0.41041980    90076.74     11.1681
   23  -462.72316781     0.41034664    90060.68      0.41041982    90076.74     11.1681
   24  -462.72316779     0.41034666    90060.68      0.41041984    90076.74     11.1681
   25  -462.71749718     0.41601727    91305.24      0.41609045    91321.30     11.3224
   26  -462.70223459     0.43127986    94654.99      0.43135304    94671.05     11.7377
   27  -462.70223457     0.43127987    94654.99      0.43135306    94671.05     11.7377
   28  -462.70223456     0.43127988    94654.99      0.43135306    94671.05     11.7377
   29  -462.70107923     0.43243522    94908.56      0.43250840    94924.62     11.7692
   30  -462.70107920     0.43243525    94908.57      0.43250843    94924.63     11.7692
   31  -462.70107906     0.43243539    94908.60      0.43250857    94924.66     11.7692
   32  -462.70107901     0.43243544    94908.61      0.43250862    94924.67     11.7692
   33  -462.70107900     0.43243544    94908.61      0.43250863    94924.67     11.7692
   34  -462.70101902     0.43249543    94921.77      0.43256861    94937.84     11.7708
   35  -462.70101902     0.43249543    94921.78      0.43256861    94937.84     11.7708
   36  -462.70101901     0.43249544    94921.78      0.43256862    94937.84     11.7708
   37  -462.69614883     0.43736561    95990.66      0.43743879    96006.72     11.9033

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99991415 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000021  0.00000002 -0.00000006  0.00000070 -0.00000361  0.00014635 -0.00003034
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000173  0.00000086 -0.00000204 -0.00000339  0.00000060  0.00000270  0.00003818
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000  0.00000098  0.00000160 -0.00000018 -0.00007084  0.00002751  0.00000157 -0.00000361
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000 -0.00000147 -0.00000406  0.00000053 -0.00003278 -0.00005984  0.00000014 -0.00000194
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000015 -0.00000028 -0.00000011  0.00002697  0.00000060  0.00000049 -0.00000072
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.14072343 -0.07224401 -0.15087799 -0.00000014 -0.00000023  0.00000457 -0.00000144
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.06898220  0.20468141 -0.03366700  0.00000025 -0.00000542 -0.00000046 -0.00000038
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.15239816  0.02593858 -0.15456150  0.00000017  0.00000051 -0.00000077 -0.00000271
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00032767 -0.00000000 -0.00000001 -0.00000000  0.00000006  0.00000000 -0.00000000 -0.00000001
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000 -0.58059428  0.32509605  0.60565857  0.00000025 -0.00000018  0.00000017 -0.00000019
                          -0.00000000 -0.00000001  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.00780191  0.00434690  0.00807448  0.01195273 -0.00559931 -0.33501962  0.12394139
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.00136370 -0.00066550 -0.00093105 -0.00324070 -0.01260496  0.52291720 -0.12393844
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

   4    1  |1 1>+          0.00000000 -0.00683739  0.00196211 -0.00776220 -0.01762178 -0.01990473  0.17307094  0.70331436
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000002

   5    1  |1 1>+         -0.00000006  0.00007764  0.00021513 -0.00019847  0.57614687  0.02865828  0.01246898  0.01468088
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000000  0.00411432  0.00962403 -0.00118865 -0.03140622  0.70926404  0.01782844  0.01690807
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00038956 -0.18119245  0.03437743 -0.19214670  0.00000024  0.00000083 -0.00000147 -0.00000566
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00754402  0.01373685  0.00992377  0.00784165  0.00001043 -0.00000021  0.00000022  0.00000024
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00035865 -0.09213934 -0.24608447  0.04376313  0.00000034  0.00000885  0.00000039  0.00000045
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000001  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.58699066 -0.17806939  0.65828028  0.00000009  0.00000013 -0.00000013 -0.00000033

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                          -0.00000000 -0.00491949  0.00140646 -0.00553470  0.01060980  0.01390023 -0.13437089 -0.62170204

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00640590  0.00210965 -0.00676785  0.00403844 -0.00262742 -0.00586053 -0.01680485

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00667083 -0.00362408 -0.00730762  0.01284132 -0.02175255  0.23938639 -0.00318447

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00412942 -0.00964118  0.00101258 -0.01083666  0.34068786  0.00770049  0.00638829

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00017180  0.00019016 -0.00007102 -0.57692648 -0.02043018 -0.00028388 -0.00803405

   7    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00056586 -0.16591047  0.10847504  0.17728618  0.00000070 -0.00000012  0.00003127 -0.00000690

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00038727  0.11397713  0.23780774 -0.03730515 -0.00000082  0.00001697 -0.00000116  0.00000040

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00753143  0.01832629  0.00407827 -0.01523843  0.00000835  0.00000111 -0.00000250  0.00000105

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.35770349  0.81988006 -0.09718210 -0.00000007  0.00000022 -0.00000028 -0.00000009

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000 -0.00183201 -0.00409308  0.00042204 -0.01116614  0.60640122  0.01399785  0.00701715

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00453621  0.01028380 -0.00111803 -0.00501676 -0.10215115 -0.00506571 -0.00253665

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000004  0.00030190  0.00028723 -0.00000185  0.57719636  0.00659276 -0.00368909  0.01165021

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.00000000 -0.00696849  0.00231048 -0.00755124  0.00519673 -0.00106709 -0.04334040 -0.25144713

   6    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001
                          -0.00000000 -0.00665160  0.00371602  0.00727694  0.00408282 -0.01326560  0.71156436 -0.15426243

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00753130 -0.02183793  0.00992841  0.00338131  0.00001720  0.00000049 -0.00000170  0.00000142

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00036112 -0.16473970  0.04771444 -0.20382224 -0.00000084 -0.00000037  0.00000387  0.00000979

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00058442 -0.17962606  0.09846226  0.16952051 -0.00000128  0.00000071 -0.00002525  0.00000588

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000004  0.00000004  0.00000001  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00005667  0.00000224 -0.00000012  0.00126318 -0.00076488 -0.00666683  0.00315015  0.68660477
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000468  0.00006080  0.00000010 -0.00281329 -0.00090294  0.00472740  0.68661781 -0.00310005
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

   4    1  |0 0>           0.00000188 -0.00000228  0.00001564 -0.23905829  0.64356362 -0.01372736 -0.00003422  0.00102371
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000148 -0.00000178 -0.00003180 -0.02783349  0.00428130  0.68602118 -0.00480130  0.00673922
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.00000037 -0.00000057 -0.00000443  0.64310277  0.23941561  0.02462528  0.00277729 -0.00069011
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>          -0.00000490 -0.00000013  0.00000008  0.00000003  0.00000001  0.00000021  0.00000003 -0.00000120
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000004  0.00000045  0.00000907  0.00000113 -0.00000254  0.00000676 -0.00000081  0.00000001
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |0 0>           0.00000021  0.00000311 -0.00000098 -0.00000030  0.00000060 -0.00000055 -0.00000540  0.00000008
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000001 -0.00000003  0.00000004  0.00000041 -0.00000051 -0.00000035 -0.00000003 -0.00000001
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000096  0.00000013  0.00000018 -0.00000002  0.00000006  0.00000010 -0.00000016  0.00000130
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+          0.68290311 -0.01782031  0.00350278 -0.00002836  0.00310365  0.00181641  0.00474578 -0.08304271
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.22320655 -0.00824865  0.00471173  0.00156629 -0.00791193 -0.00515073  0.01408273 -0.57154137
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.04669807 -0.07484630  0.00617774  0.00534777 -0.02032776  0.00164414  0.28855940 -0.00604864
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

   5    1  |1 1>+         -0.00983800 -0.00588411 -0.01272647 -0.04133468  0.52576939  0.23441981  0.02509367 -0.00830544
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.01319624 -0.00268800 -0.16862476 -0.03347091  0.10479019 -0.26718904  0.00976362  0.00233702
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00000030 -0.00001699  0.00000067  0.00405998  0.00934608 -0.00956397 -0.11659245 -0.00482955
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.00000002  0.00000079 -0.00000144  0.13477092  0.01271796 -0.00529429  0.00410314  0.00044433
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00000013  0.00000181  0.00000740 -0.00744953  0.04784191 -0.10637975  0.01218557  0.00052145
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000016  0.00000154  0.00000018  0.00000018 -0.00000015 -0.00000013  0.00000119 -0.00000008

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                           0.05071668  0.16789352 -0.00028346  0.00738658 -0.01871640  0.00197282  0.45278581  0.01998650

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00031884  0.70510941 -0.01431148 -0.00693187  0.01470017 -0.00003474 -0.35666974 -0.02416488

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.68946038 -0.00031249 -0.00157284  0.00403993 -0.00103878  0.00280394 -0.02544372  0.28785130

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00977062  0.01276746  0.64551590 -0.04673413  0.12239478 -0.25776318  0.00105407  0.00374379

   6    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01270112  0.00235665 -0.00634629 -0.51480342  0.20177559  0.16636975  0.01692104  0.00017316

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00001029 -0.00000005  0.00000021 -0.00541970 -0.00537962 -0.00837980 -0.00492856  0.11693481

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000041  0.00000019  0.00000509 -0.01095154  0.05338418 -0.10391178  0.00360836 -0.00549667

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000121  0.00000021  0.00000108 -0.05930269 -0.11141895 -0.04840463 -0.00304804 -0.00854406

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000018  0.00000182  0.00000023  0.00000035 -0.00000012 -0.00000008 -0.00000005

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01057270 -0.00570712 -0.03973313  0.06210517 -0.21920460  0.48584631 -0.01672685 -0.00104946

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00742887  0.01513335  0.74322606  0.04092371 -0.07669188  0.19635617 -0.00277956  0.00084322

   4    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00660086  0.00444229  0.01514104 -0.47438306 -0.32050296 -0.07600552 -0.00176503 -0.00162463

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000
                          -0.00456586 -0.68411011  0.01405131 -0.01087129  0.00886809 -0.00512204 -0.28848331 -0.00515768

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.05435501  0.01210154  0.00150853 -0.00467529 -0.00128360  0.00024760 -0.00513771  0.28872497

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000121  0.00000058 -0.00000021  0.07519896 -0.09856279 -0.05407880  0.00149840 -0.00779311

   8    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000715 -0.00000015 -0.00180307 -0.00024363  0.00366106  0.11694563  0.01083442

   9    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00001088  0.00000023  0.00000015 -0.00544986  0.00668650  0.00389269  0.01076586 -0.11671693

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000002 -0.00000002 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000171 -0.00000117  0.00001148  0.00536053 -0.00644930 -0.00581746  0.43197156 -0.05831703
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00001210  0.00000225 -0.00000050  0.00432376  0.00672068 -0.01854595 -0.05846972 -0.43159813
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000169  0.00000566 -0.00000035  0.21794618  0.37735550 -0.01032209  0.00386730  0.00797887
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000305 -0.00001278 -0.00000189  0.02390538 -0.00153884  0.43492808  0.00298897 -0.01887850
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000040 -0.00000157 -0.00000041  0.37677643 -0.21816745 -0.02132563 -0.00790081  0.00236420
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.02746795 -0.06937546  0.72720779  0.00000087  0.00000128  0.00000114 -0.00001830  0.00000056
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.06651698  0.72493649  0.06664632 -0.00000036 -0.00000637  0.00001382  0.00000012  0.00000015
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.72747657  0.06366560  0.03355176  0.00000007  0.00000091 -0.00000189  0.00000386  0.00001277
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000  0.00000001  0.00000098  0.00000063  0.00000060  0.00000021 -0.00000007
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00204629  0.00505450 -0.03940519  0.00000009  0.00000007  0.00000004 -0.00000045  0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.01615536 -0.03711764  0.29025691 -0.00046794 -0.00094782 -0.00053887  0.02555248 -0.00186274
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.01047805  0.00600414 -0.04162499  0.00386435 -0.00050190  0.00116334  0.17509540 -0.01856547
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |1 1>+         -0.25186813 -0.04264686 -0.02111139  0.00260533  0.00406928  0.00383652  0.01341440  0.08793423
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.00203405 -0.00616291 -0.00349562 -0.12224264 -0.11029283 -0.06714212  0.00345675  0.00763506
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.04496311 -0.25071699 -0.02928069 -0.01215676 -0.03170847  0.08234874 -0.00091693 -0.00156653
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.34677655 -0.03583066 -0.02260453 -0.03921779 -0.00896673  0.02272313 -0.05419419 -0.61355150
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.01969073 -0.01454124 -0.00084281 -0.49820927  0.50156048  0.08612509  0.01301024  0.01591459
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.03752122  0.34482277  0.04228166 -0.12741918 -0.21262675  0.56482420  0.00207731  0.03147992
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.03904462 -0.00700847 -0.00292644  0.00000001  0.00000003 -0.00000008 -0.00000015 -0.00000090

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.18035659 -0.03037426 -0.01431451  0.00105423  0.00367251  0.00634534  0.01203242  0.13905132

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.22807259 -0.04452698 -0.00919464 -0.00060563 -0.00316453 -0.00549869 -0.00691143 -0.10983811

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00717747  0.02807752 -0.25477510 -0.00162873  0.00246172 -0.00086757 -0.08893338  0.00378484

   5    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.04803926  0.25046381  0.02626112 -0.01393567 -0.03815870  0.07919255 -0.00176129 -0.00411798

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00176092 -0.00554517 -0.00283285  0.04859405 -0.15983545 -0.06105910 -0.00206481  0.00709864

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.01460385 -0.06185309  0.34299194  0.03570691  0.00276957  0.04144635 -0.61329507  0.05258394

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.06502765 -0.33851825 -0.05690766 -0.13819619 -0.24466491  0.54909689  0.02728382 -0.01712867

   9    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00444175 -0.01276106 -0.02869808  0.66846191  0.12271122  0.20865115  0.03633886 -0.02096040

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00731441  0.03883077  0.00460093 -0.00000051 -0.00000105  0.00000256 -0.00000005  0.00000001

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.02196662  0.10672322  0.01223606  0.02863774  0.06356593 -0.14994181  0.00074772  0.00346582

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.05305163 -0.26802992 -0.03073625  0.00564213  0.02709782 -0.06003657  0.00015835  0.00257135

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00514090 -0.00818915 -0.00304689  0.17039568 -0.05055066  0.00864889 -0.00219602  0.00087150

   5    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.25127188 -0.04951680 -0.01329621  0.00131618 -0.00321861 -0.00302986 -0.01002434 -0.08835214

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00743390 -0.03045126  0.25453373  0.00010459  0.00033294  0.00001815 -0.08846711  0.00999071

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01903517 -0.00650070  0.02460179  0.17069293  0.62261738  0.29679161  0.04801688 -0.00263581

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.34163514 -0.05920953 -0.04341998 -0.00321824 -0.01316967  0.01085106  0.02316750  0.61694416

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.03420846 -0.04719003  0.34389099 -0.00345095 -0.05243389 -0.02066653  0.61498081 -0.02310887

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.00948661 -0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000001  0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000020 -0.00000367  0.00000024 -0.00000012 -0.00125983 -0.00200411 -0.00399544  0.44464223
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

   3    1  |0 0>           0.00000001 -0.00000050 -0.00000221 -0.00000004  0.00059719  0.00855398  0.00334637 -0.37500281
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

   4    1  |0 0>           0.00000004  0.00000068 -0.00000024  0.00000169  0.08490693  0.57402554 -0.04022092  0.00679116
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000005  0.00000007  0.00000014 -0.00000345  0.00753819  0.03947636  0.58031377  0.00569531
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000109  0.00000016  0.00000003  0.00000166  0.57544430 -0.08522787 -0.00167946  0.00028598
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.46910539 -0.07984231  0.02585057 -0.00000901 -0.00001141 -0.00001181  0.00003036
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000002  0.02574399  0.00281235  0.47585164 -0.00000973  0.00001234 -0.00004719 -0.00000403
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000001 -0.07987653  0.46981095  0.00154280 -0.00000470 -0.00000527  0.00001017 -0.00001668
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.70767714  0.00000002  0.00000008 -0.00000007  0.00000227 -0.00000024  0.00000024  0.00000018
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000001 -0.08143296 -0.01526336  0.00192179 -0.00000847 -0.00001171 -0.00001029  0.00003101
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000003  0.53255461  0.10182751 -0.01296218 -0.00172188 -0.00282366 -0.00132370  0.06338294
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000015 -0.07451114 -0.02964448  0.00197123  0.00094449  0.00664727  0.00599560  0.42491894
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

   4    1  |1 1>+          0.00000001 -0.09071963  0.46376207  0.04164213  0.00342272  0.01553681 -0.00225078  0.18030370
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

   5    1  |1 1>+         -0.00000075 -0.00535102  0.00415968  0.01183988 -0.21644382 -0.46517945 -0.19305666  0.01626084
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00000005  0.01942640 -0.03873456  0.47253016 -0.00861598 -0.09159187  0.25856966  0.00255066
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+          0.02101069  0.01591641 -0.08514620 -0.00185829  0.01947507  0.01163641 -0.02770254  0.19633155
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

   8    1  |1 1>+          0.40687952 -0.00093017  0.00445610 -0.00402113  0.34171849 -0.14962665 -0.02378751 -0.00587378
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.01934322  0.00227772 -0.00124698  0.08662415  0.03241784  0.11316305 -0.30033476 -0.01829884
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.01501421  0.08111320  0.00797702 -0.00000549 -0.00000448  0.00000518 -0.00001687

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                          -0.00000001 -0.06354048  0.33222243  0.02930262  0.00027711  0.01303318 -0.00230459  0.26125644

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000001 -0.06266705  0.42333003  0.04581677  0.00063964 -0.01081110  0.00037492 -0.19963408

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000011 -0.46810577 -0.07569478  0.01842696 -0.00211205  0.00326897 -0.00343686 -0.22526763

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000009 -0.02561942  0.04372762 -0.47176627 -0.00600795 -0.11256045  0.25036708 -0.00394251

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000147 -0.00335128 -0.00274528  0.01116589  0.32817635 -0.41088694 -0.15557375  0.00841939

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                           0.03051939 -0.08509036 -0.01550938 -0.00244360 -0.02225656 -0.00730112 -0.02097338  0.25608327

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.02088738  0.00057292  0.00858526 -0.08622493  0.03154897  0.13123345 -0.29442577 -0.01571672

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.40620124  0.00642209  0.00160683 -0.00425108 -0.29736051 -0.19543360 -0.11188750 -0.01582604

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00335089  0.00749216 -0.08246957  0.00000802 -0.00001520  0.00005540  0.00000189

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00938763  0.02159832 -0.20152977  0.02773750  0.19082887 -0.47162098 -0.00603782

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000008  0.02303879 -0.05038237  0.50581017 -0.00739087  0.07445636 -0.18962938 -0.00106486

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000191 -0.00224877 -0.00843957  0.01660512  0.54403165  0.05138769  0.04530994  0.00336429

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                          -0.00000006 -0.07468447  0.46579079  0.05216928  0.00653109 -0.00843254  0.00482386 -0.17200531

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000005  0.46820150  0.07658528 -0.01407618  0.00525514 -0.00069252 -0.00116746 -0.21356258

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.40619757 -0.00557001 -0.00556968 -0.00027952  0.04384320 -0.34438695 -0.13671439 -0.02183680

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                           0.01947700  0.02004602 -0.08388862 -0.00843588 -0.00272218  0.00658636  0.00989694 -0.18396921

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                           0.03152023 -0.08416066 -0.01994112  0.00160804 -0.00271756  0.02467247  0.00898083 -0.26596293

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000  0.00903821
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.37507940  0.00001183  0.00005147  0.00000705 -0.00000014
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.44463467 -0.00002694 -0.00000020  0.00000590 -0.00000004
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00512683  0.00000454 -0.00001722 -0.00002119 -0.00000013
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00033370 -0.00000641 -0.00001451  0.00006687 -0.00000021
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00112057  0.00000548 -0.00001015  0.00001273 -0.00000128
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00002102 -0.06025266 -0.43241789  0.00981901  0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000553  0.05672084  0.00192846  0.43299876  0.00000004
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00001463  0.42878804 -0.06101700 -0.05589555 -0.00000003
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000021 -0.00000001  0.00000000 -0.00000001  0.70653588
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00002201 -0.06756655 -0.42116264 -0.00261463  0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+          0.04715325 -0.01736887 -0.10588117 -0.00053026 -0.00000002
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |1 1>+          0.33755039  0.00546016  0.01494874 -0.00032744 -0.00000014
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.20674325 -0.09242215  0.01574388  0.00417042 -0.00000005
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+         -0.00816246 -0.00113426  0.00117334 -0.00217530  0.00000215
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00785056 -0.00403978  0.00102649 -0.09375645 -0.00000014
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.25548174  0.53594131 -0.08560500 -0.06030870 -0.02104483
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.01025891 -0.02480340  0.00379761  0.02892124 -0.40754129
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.02581934 -0.06033587  0.01305239 -0.54270788 -0.01937472
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00001591  0.42091713 -0.06743289 -0.01520950 -0.00000000

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.34217929 -0.06617474  0.01098457  0.00307312  0.00000002

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.27463770 -0.08450084  0.01047217  0.00207292 -0.00000004

   4    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.15680531  0.01237664  0.09303982 -0.00057670  0.00000007

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00216123  0.00300746  0.00016996  0.09386312 -0.00000012

   6    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00899771  0.00025122  0.00079532 -0.00222083  0.00000104

   7    1  |1 0>          -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                           0.19651681  0.08722445  0.53733822  0.03148648 -0.03056890

   8    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00317329  0.01454207 -0.03215816  0.54488405  0.02092128

   9    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01900613 -0.00580825 -0.04201067  0.02564184 -0.40686123

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000589 -0.01460418  0.00498937 -0.42627605  0.00000001

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01132181  0.00072616 -0.00024459  0.04007074  0.00000019

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00096733 -0.00255841  0.00071151 -0.10066906  0.00000009

   4    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00067485  0.00124014  0.00064051 -0.00342527 -0.00000006

   5    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.21344927 -0.09304369  0.01267035  0.00199576 -0.00000007

   6    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.17212412 -0.01267198 -0.09307060 -0.00026262  0.00000004

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00727233  0.03427354  0.03595258 -0.00075825  0.40685579

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.26670263  0.53377986 -0.11387037 -0.01961614 -0.01950858

   9    1  |1 1>-          0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                          -0.18394017  0.11183353  0.53351554  0.00240965 -0.03157138


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -463.13358763     -0.00007318      -16.06      0.00000000        0.00      0.0000
     2   1   -462.73050512      0.40300932    88450.32      0.40308250    88466.38     10.9684
     3   1   -462.73050512      0.40300932    88450.32      0.40308250    88466.38     10.9684
     4   1   -462.73050512      0.40300932    88450.32      0.40308250    88466.38     10.9684
     5   1   -462.72654640      0.40696805    89319.16      0.40704123    89335.22     11.0762
     6   1   -462.72654639      0.40696806    89319.16      0.40704124    89335.23     11.0762
     7   1   -462.72654637      0.40696808    89319.17      0.40704126    89335.23     11.0762
     8   1   -462.72654637      0.40696808    89319.17      0.40704126    89335.23     11.0762
     9   1   -462.72654636      0.40696809    89319.17      0.40704127    89335.23     11.0762
    10   1   -462.72654630      0.40696814    89319.18      0.40704132    89335.24     11.0762
    11   1   -462.72654630      0.40696815    89319.18      0.40704133    89335.25     11.0762
    12   1   -462.72631930      0.40719515    89369.01      0.40726833    89385.07     11.0823
    13   1   -462.72631925      0.40719520    89369.02      0.40726838    89385.08     11.0823
    14   1   -462.72631906      0.40719539    89369.06      0.40726857    89385.12     11.0823
    15   1   -462.72631905      0.40719540    89369.06      0.40726858    89385.12     11.0823
    16   1   -462.72631900      0.40719544    89369.07      0.40726862    89385.13     11.0823
    17   1   -462.72373311      0.40978134    89936.61      0.40985452    89952.67     11.1527
    18   1   -462.72373309      0.40978136    89936.61      0.40985454    89952.67     11.1527
    19   1   -462.72373309      0.40978136    89936.61      0.40985454    89952.67     11.1527
    20   1   -462.72316792      0.41034653    90060.65      0.41041971    90076.71     11.1681
    21   1   -462.72316789      0.41034655    90060.66      0.41041973    90076.72     11.1681
    22   1   -462.72316782      0.41034662    90060.67      0.41041980    90076.74     11.1681
    23   1   -462.72316781      0.41034664    90060.68      0.41041982    90076.74     11.1681
    24   1   -462.72316779      0.41034666    90060.68      0.41041984    90076.74     11.1681
    25   1   -462.71749718      0.41601727    91305.24      0.41609045    91321.30     11.3224
    26   1   -462.70223459      0.43127986    94654.99      0.43135304    94671.05     11.7377
    27   1   -462.70223457      0.43127987    94654.99      0.43135306    94671.05     11.7377
    28   1   -462.70223456      0.43127988    94654.99      0.43135306    94671.05     11.7377
    29   1   -462.70107923      0.43243522    94908.56      0.43250840    94924.62     11.7692
    30   1   -462.70107920      0.43243525    94908.57      0.43250843    94924.63     11.7692
    31   1   -462.70107906      0.43243539    94908.60      0.43250857    94924.66     11.7692
    32   1   -462.70107901      0.43243544    94908.61      0.43250862    94924.67     11.7692
    33   1   -462.70107900      0.43243544    94908.61      0.43250863    94924.67     11.7692
    34   1   -462.70101902      0.43249543    94921.77      0.43256861    94937.84     11.7708
    35   1   -462.70101902      0.43249543    94921.78      0.43256861    94937.84     11.7708
    36   1   -462.70101901      0.43249544    94921.78      0.43256862    94937.84     11.7708
    37   1   -462.69614883      0.43736561    95990.66      0.43743879    96006.72     11.9033

 E0 =   -463.13351445 is the energy of the lowest zeroth-order state
 E1 =   -463.13358763 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99991415 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000  0.00000021  0.00000002 -0.00000006  0.00000070 -0.00000361  0.00014635 -0.00003034
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000173  0.00000086 -0.00000204 -0.00000339  0.00000060  0.00000270  0.00003818
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000  0.00000098  0.00000160 -0.00000018 -0.00007084  0.00002751  0.00000157 -0.00000361
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000147 -0.00000406  0.00000053 -0.00003278 -0.00005984  0.00000014 -0.00000194
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000 -0.00000015 -0.00000028 -0.00000011  0.00002697  0.00000060  0.00000049 -0.00000072
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.14072343 -0.07224401 -0.15087799 -0.00000014 -0.00000023  0.00000457 -0.00000144
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.06898220  0.20468141 -0.03366700  0.00000025 -0.00000542 -0.00000046 -0.00000038
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.15239816  0.02593858 -0.15456150  0.00000017  0.00000051 -0.00000077 -0.00000271
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00032767 -0.00000000 -0.00000001 -0.00000000  0.00000006  0.00000000 -0.00000000 -0.00000001
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000 -0.58059428  0.32509605  0.60565857  0.00000025 -0.00000018  0.00000017 -0.00000019
                               -0.00000000 -0.00000001  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00000000 -0.00780191  0.00434690  0.00807448  0.01195273 -0.00559931 -0.33501962  0.12394139
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.00000000  0.00136370 -0.00066550 -0.00093105 -0.00324070 -0.01260496  0.52291720 -0.12393844
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

 14  1     4    1  |1 1>+       0.00000000 -0.00683739  0.00196211 -0.00776220 -0.01762178 -0.01990473  0.17307094  0.70331436
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000002

 15  1     5    1  |1 1>+      -0.00000006  0.00007764  0.00021513 -0.00019847  0.57614687  0.02865828  0.01246898  0.01468088
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.00000000  0.00411432  0.00962403 -0.00118865 -0.03140622  0.70926404  0.01782844  0.01690807
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.00038956 -0.18119245  0.03437743 -0.19214670  0.00000024  0.00000083 -0.00000147 -0.00000566
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.00754402  0.01373685  0.00992377  0.00784165  0.00001043 -0.00000021  0.00000022  0.00000024
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.00035865 -0.09213934 -0.24608447  0.04376313  0.00000034  0.00000885  0.00000039  0.00000045
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000001  0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.58699066 -0.17806939  0.65828028  0.00000009  0.00000013 -0.00000013 -0.00000033

 21  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                               -0.00000000 -0.00491949  0.00140646 -0.00553470  0.01060980  0.01390023 -0.13437089 -0.62170204

 22  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00640590  0.00210965 -0.00676785  0.00403844 -0.00262742 -0.00586053 -0.01680485

 23  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00667083 -0.00362408 -0.00730762  0.01284132 -0.02175255  0.23938639 -0.00318447

 24  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00412942 -0.00964118  0.00101258 -0.01083666  0.34068786  0.00770049  0.00638829

 25  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00017180  0.00019016 -0.00007102 -0.57692648 -0.02043018 -0.00028388 -0.00803405

 26  1     7    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00056586 -0.16591047  0.10847504  0.17728618  0.00000070 -0.00000012  0.00003127 -0.00000690

 27  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00038727  0.11397713  0.23780774 -0.03730515 -0.00000082  0.00001697 -0.00000116  0.00000040

 28  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00753143  0.01832629  0.00407827 -0.01523843  0.00000835  0.00000111 -0.00000250  0.00000105

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.35770349  0.81988006 -0.09718210 -0.00000007  0.00000022 -0.00000028 -0.00000009

 30  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000 -0.00183201 -0.00409308  0.00042204 -0.01116614  0.60640122  0.01399785  0.00701715

 31  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00453621  0.01028380 -0.00111803 -0.00501676 -0.10215115 -0.00506571 -0.00253665

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000004  0.00030190  0.00028723 -0.00000185  0.57719636  0.00659276 -0.00368909  0.01165021

 33  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.00000000 -0.00696849  0.00231048 -0.00755124  0.00519673 -0.00106709 -0.04334040 -0.25144713

 34  1     6    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001
                               -0.00000000 -0.00665160  0.00371602  0.00727694  0.00408282 -0.01326560  0.71156436 -0.15426243

 35  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00753130 -0.02183793  0.00992841  0.00338131  0.00001720  0.00000049 -0.00000170  0.00000142

 36  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00036112 -0.16473970  0.04771444 -0.20382224 -0.00000084 -0.00000037  0.00000387  0.00000979

 37  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00058442 -0.17962606  0.09846226  0.16952051 -0.00000128  0.00000071 -0.00002525  0.00000588


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000004  0.00000004  0.00000001  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00005667  0.00000224 -0.00000012  0.00126318 -0.00076488 -0.00666683  0.00315015  0.68660477
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000468  0.00006080  0.00000010 -0.00281329 -0.00090294  0.00472740  0.68661781 -0.00310005
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000002  0.00000000

  4  1     4    1  |0 0>        0.00000188 -0.00000228  0.00001564 -0.23905829  0.64356362 -0.01372736 -0.00003422  0.00102371
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000148 -0.00000178 -0.00003180 -0.02783349  0.00428130  0.68602118 -0.00480130  0.00673922
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000037 -0.00000057 -0.00000443  0.64310277  0.23941561  0.02462528  0.00277729 -0.00069011
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000490 -0.00000013  0.00000008  0.00000003  0.00000001  0.00000021  0.00000003 -0.00000120
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000004  0.00000045  0.00000907  0.00000113 -0.00000254  0.00000676 -0.00000081  0.00000001
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000021  0.00000311 -0.00000098 -0.00000030  0.00000060 -0.00000055 -0.00000540  0.00000008
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000001 -0.00000003  0.00000004  0.00000041 -0.00000051 -0.00000035 -0.00000003 -0.00000001
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000096  0.00000013  0.00000018 -0.00000002  0.00000006  0.00000010 -0.00000016  0.00000130
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.68290311 -0.01782031  0.00350278 -0.00002836  0.00310365  0.00181641  0.00474578 -0.08304271
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.22320655 -0.00824865  0.00471173  0.00156629 -0.00791193 -0.00515073  0.01408273 -0.57154137
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+      -0.04669807 -0.07484630  0.00617774  0.00534777 -0.02032776  0.00164414  0.28855940 -0.00604864
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000

 15  1     5    1  |1 1>+      -0.00983800 -0.00588411 -0.01272647 -0.04133468  0.52576939  0.23441981  0.02509367 -0.00830544
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.01319624 -0.00268800 -0.16862476 -0.03347091  0.10479019 -0.26718904  0.00976362  0.00233702
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.00000030 -0.00001699  0.00000067  0.00405998  0.00934608 -0.00956397 -0.11659245 -0.00482955
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.00000002  0.00000079 -0.00000144  0.13477092  0.01271796 -0.00529429  0.00410314  0.00044433
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00000013  0.00000181  0.00000740 -0.00744953  0.04784191 -0.10637975  0.01218557  0.00052145
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000016  0.00000154  0.00000018  0.00000018 -0.00000015 -0.00000013  0.00000119 -0.00000008

 21  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000
                                0.05071668  0.16789352 -0.00028346  0.00738658 -0.01871640  0.00197282  0.45278581  0.01998650

 22  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00031884  0.70510941 -0.01431148 -0.00693187  0.01470017 -0.00003474 -0.35666974 -0.02416488

 23  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.68946038 -0.00031249 -0.00157284  0.00403993 -0.00103878  0.00280394 -0.02544372  0.28785130

 24  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00977062  0.01276746  0.64551590 -0.04673413  0.12239478 -0.25776318  0.00105407  0.00374379

 25  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01270112  0.00235665 -0.00634629 -0.51480342  0.20177559  0.16636975  0.01692104  0.00017316

 26  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00001029 -0.00000005  0.00000021 -0.00541970 -0.00537962 -0.00837980 -0.00492856  0.11693481

 27  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000041  0.00000019  0.00000509 -0.01095154  0.05338418 -0.10391178  0.00360836 -0.00549667

 28  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000121  0.00000021  0.00000108 -0.05930269 -0.11141895 -0.04840463 -0.00304804 -0.00854406

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000018  0.00000182  0.00000023  0.00000035 -0.00000012 -0.00000008 -0.00000005

 30  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01057270 -0.00570712 -0.03973313  0.06210517 -0.21920460  0.48584631 -0.01672685 -0.00104946

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00742887  0.01513335  0.74322606  0.04092371 -0.07669188  0.19635617 -0.00277956  0.00084322

 32  1     4    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00660086  0.00444229  0.01514104 -0.47438306 -0.32050296 -0.07600552 -0.00176503 -0.00162463

 33  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000001  0.00000000
                               -0.00456586 -0.68411011  0.01405131 -0.01087129  0.00886809 -0.00512204 -0.28848331 -0.00515768

 34  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.05435501  0.01210154  0.00150853 -0.00467529 -0.00128360  0.00024760 -0.00513771  0.28872497

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000121  0.00000058 -0.00000021  0.07519896 -0.09856279 -0.05407880  0.00149840 -0.00779311

 36  1     8    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000715 -0.00000015 -0.00180307 -0.00024363  0.00366106  0.11694563  0.01083442

 37  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00001088  0.00000023  0.00000015 -0.00544986  0.00668650  0.00389269  0.01076586 -0.11671693


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000002 -0.00000002 -0.00000002 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000171 -0.00000117  0.00001148  0.00536053 -0.00644930 -0.00581746  0.43197156 -0.05831703
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00001210  0.00000225 -0.00000050  0.00432376  0.00672068 -0.01854595 -0.05846972 -0.43159813
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000169  0.00000566 -0.00000035  0.21794618  0.37735550 -0.01032209  0.00386730  0.00797887
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000305 -0.00001278 -0.00000189  0.02390538 -0.00153884  0.43492808  0.00298897 -0.01887850
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000040 -0.00000157 -0.00000041  0.37677643 -0.21816745 -0.02132563 -0.00790081  0.00236420
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.02746795 -0.06937546  0.72720779  0.00000087  0.00000128  0.00000114 -0.00001830  0.00000056
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.06651698  0.72493649  0.06664632 -0.00000036 -0.00000637  0.00001382  0.00000012  0.00000015
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.72747657  0.06366560  0.03355176  0.00000007  0.00000091 -0.00000189  0.00000386  0.00001277
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000  0.00000001  0.00000098  0.00000063  0.00000060  0.00000021 -0.00000007
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00204629  0.00505450 -0.03940519  0.00000009  0.00000007  0.00000004 -0.00000045  0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.01615536 -0.03711764  0.29025691 -0.00046794 -0.00094782 -0.00053887  0.02555248 -0.00186274
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.01047805  0.00600414 -0.04162499  0.00386435 -0.00050190  0.00116334  0.17509540 -0.01856547
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     4    1  |1 1>+      -0.25186813 -0.04264686 -0.02111139  0.00260533  0.00406928  0.00383652  0.01341440  0.08793423
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.00203405 -0.00616291 -0.00349562 -0.12224264 -0.11029283 -0.06714212  0.00345675  0.00763506
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.04496311 -0.25071699 -0.02928069 -0.01215676 -0.03170847  0.08234874 -0.00091693 -0.00156653
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.34677655 -0.03583066 -0.02260453 -0.03921779 -0.00896673  0.02272313 -0.05419419 -0.61355150
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.01969073 -0.01454124 -0.00084281 -0.49820927  0.50156048  0.08612509  0.01301024  0.01591459
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.03752122  0.34482277  0.04228166 -0.12741918 -0.21262675  0.56482420  0.00207731  0.03147992
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.03904462 -0.00700847 -0.00292644  0.00000001  0.00000003 -0.00000008 -0.00000015 -0.00000090

 21  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.18035659 -0.03037426 -0.01431451  0.00105423  0.00367251  0.00634534  0.01203242  0.13905132

 22  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.22807259 -0.04452698 -0.00919464 -0.00060563 -0.00316453 -0.00549869 -0.00691143 -0.10983811

 23  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00717747  0.02807752 -0.25477510 -0.00162873  0.00246172 -0.00086757 -0.08893338  0.00378484

 24  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.04803926  0.25046381  0.02626112 -0.01393567 -0.03815870  0.07919255 -0.00176129 -0.00411798

 25  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00176092 -0.00554517 -0.00283285  0.04859405 -0.15983545 -0.06105910 -0.00206481  0.00709864

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.01460385 -0.06185309  0.34299194  0.03570691  0.00276957  0.04144635 -0.61329507  0.05258394

 27  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.06502765 -0.33851825 -0.05690766 -0.13819619 -0.24466491  0.54909689  0.02728382 -0.01712867

 28  1     9    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00444175 -0.01276106 -0.02869808  0.66846191  0.12271122  0.20865115  0.03633886 -0.02096040

 29  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00731441  0.03883077  0.00460093 -0.00000051 -0.00000105  0.00000256 -0.00000005  0.00000001

 30  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.02196662  0.10672322  0.01223606  0.02863774  0.06356593 -0.14994181  0.00074772  0.00346582

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.05305163 -0.26802992 -0.03073625  0.00564213  0.02709782 -0.06003657  0.00015835  0.00257135

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00514090 -0.00818915 -0.00304689  0.17039568 -0.05055066  0.00864889 -0.00219602  0.00087150

 33  1     5    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.25127188 -0.04951680 -0.01329621  0.00131618 -0.00321861 -0.00302986 -0.01002434 -0.08835214

 34  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00743390 -0.03045126  0.25453373  0.00010459  0.00033294  0.00001815 -0.08846711  0.00999071

 35  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01903517 -0.00650070  0.02460179  0.17069293  0.62261738  0.29679161  0.04801688 -0.00263581

 36  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.34163514 -0.05920953 -0.04341998 -0.00321824 -0.01316967  0.01085106  0.02316750  0.61694416

 37  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.03420846 -0.04719003  0.34389099 -0.00345095 -0.05243389 -0.02066653  0.61498081 -0.02310887


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.00948661 -0.00000000 -0.00000000  0.00000000 -0.00000005  0.00000001  0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000020 -0.00000367  0.00000024 -0.00000012 -0.00125983 -0.00200411 -0.00399544  0.44464223
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

  3  1     3    1  |0 0>        0.00000001 -0.00000050 -0.00000221 -0.00000004  0.00059719  0.00855398  0.00334637 -0.37500281
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001

  4  1     4    1  |0 0>        0.00000004  0.00000068 -0.00000024  0.00000169  0.08490693  0.57402554 -0.04022092  0.00679116
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000005  0.00000007  0.00000014 -0.00000345  0.00753819  0.03947636  0.58031377  0.00569531
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000109  0.00000016  0.00000003  0.00000166  0.57544430 -0.08522787 -0.00167946  0.00028598
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.46910539 -0.07984231  0.02585057 -0.00000901 -0.00001141 -0.00001181  0.00003036
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000002  0.02574399  0.00281235  0.47585164 -0.00000973  0.00001234 -0.00004719 -0.00000403
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000001 -0.07987653  0.46981095  0.00154280 -0.00000470 -0.00000527  0.00001017 -0.00001668
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.70767714  0.00000002  0.00000008 -0.00000007  0.00000227 -0.00000024  0.00000024  0.00000018
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000001 -0.08143296 -0.01526336  0.00192179 -0.00000847 -0.00001171 -0.00001029  0.00003101
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00000003  0.53255461  0.10182751 -0.01296218 -0.00172188 -0.00282366 -0.00132370  0.06338294
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.00000015 -0.07451114 -0.02964448  0.00197123  0.00094449  0.00664727  0.00599560  0.42491894
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001

 14  1     4    1  |1 1>+       0.00000001 -0.09071963  0.46376207  0.04164213  0.00342272  0.01553681 -0.00225078  0.18030370
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 15  1     5    1  |1 1>+      -0.00000075 -0.00535102  0.00415968  0.01183988 -0.21644382 -0.46517945 -0.19305666  0.01626084
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00000005  0.01942640 -0.03873456  0.47253016 -0.00861598 -0.09159187  0.25856966  0.00255066
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.02101069  0.01591641 -0.08514620 -0.00185829  0.01947507  0.01163641 -0.02770254  0.19633155
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001

 18  1     8    1  |1 1>+       0.40687952 -0.00093017  0.00445610 -0.00402113  0.34171849 -0.14962665 -0.02378751 -0.00587378
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.01934322  0.00227772 -0.00124698  0.08662415  0.03241784  0.11316305 -0.30033476 -0.01829884
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.01501421  0.08111320  0.00797702 -0.00000549 -0.00000448  0.00000518 -0.00001687

 21  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001
                               -0.00000001 -0.06354048  0.33222243  0.02930262  0.00027711  0.01303318 -0.00230459  0.26125644

 22  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000001 -0.06266705  0.42333003  0.04581677  0.00063964 -0.01081110  0.00037492 -0.19963408

 23  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000011 -0.46810577 -0.07569478  0.01842696 -0.00211205  0.00326897 -0.00343686 -0.22526763

 24  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000009 -0.02561942  0.04372762 -0.47176627 -0.00600795 -0.11256045  0.25036708 -0.00394251

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000147 -0.00335128 -0.00274528  0.01116589  0.32817635 -0.41088694 -0.15557375  0.00841939

 26  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000001
                                0.03051939 -0.08509036 -0.01550938 -0.00244360 -0.02225656 -0.00730112 -0.02097338  0.25608327

 27  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.02088738  0.00057292  0.00858526 -0.08622493  0.03154897  0.13123345 -0.29442577 -0.01571672

 28  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.40620124  0.00642209  0.00160683 -0.00425108 -0.29736051 -0.19543360 -0.11188750 -0.01582604

 29  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00335089  0.00749216 -0.08246957  0.00000802 -0.00001520  0.00005540  0.00000189

 30  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00938763  0.02159832 -0.20152977  0.02773750  0.19082887 -0.47162098 -0.00603782

 31  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000008  0.02303879 -0.05038237  0.50581017 -0.00739087  0.07445636 -0.18962938 -0.00106486

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000191 -0.00224877 -0.00843957  0.01660512  0.54403165  0.05138769  0.04530994  0.00336429

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                               -0.00000006 -0.07468447  0.46579079  0.05216928  0.00653109 -0.00843254  0.00482386 -0.17200531

 34  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000005  0.46820150  0.07658528 -0.01407618  0.00525514 -0.00069252 -0.00116746 -0.21356258

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.40619757 -0.00557001 -0.00556968 -0.00027952  0.04384320 -0.34438695 -0.13671439 -0.02183680

 36  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000001
                                0.01947700  0.02004602 -0.08388862 -0.00843588 -0.00272218  0.00658636  0.00989694 -0.18396921

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000001
                                0.03152023 -0.08416066 -0.01994112  0.00160804 -0.00271756  0.02467247  0.00898083 -0.26596293


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000  0.00903821
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.37507940  0.00001183  0.00005147  0.00000705 -0.00000014
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.44463467 -0.00002694 -0.00000020  0.00000590 -0.00000004
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00512683  0.00000454 -0.00001722 -0.00002119 -0.00000013
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00033370 -0.00000641 -0.00001451  0.00006687 -0.00000021
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00112057  0.00000548 -0.00001015  0.00001273 -0.00000128
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00002102 -0.06025266 -0.43241789  0.00981901  0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000553  0.05672084  0.00192846  0.43299876  0.00000004
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00001463  0.42878804 -0.06101700 -0.05589555 -0.00000003
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000021 -0.00000001  0.00000000 -0.00000001  0.70653588
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00002201 -0.06756655 -0.42116264 -0.00261463  0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+       0.04715325 -0.01736887 -0.10588117 -0.00053026 -0.00000002
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.33755039  0.00546016  0.01494874 -0.00032744 -0.00000014
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.20674325 -0.09242215  0.01574388  0.00417042 -0.00000005
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.00816246 -0.00113426  0.00117334 -0.00217530  0.00000215
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.00785056 -0.00403978  0.00102649 -0.09375645 -0.00000014
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.25548174  0.53594131 -0.08560500 -0.06030870 -0.02104483
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.01025891 -0.02480340  0.00379761  0.02892124 -0.40754129
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.02581934 -0.06033587  0.01305239 -0.54270788 -0.01937472
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00001591  0.42091713 -0.06743289 -0.01520950 -0.00000000

 21  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.34217929 -0.06617474  0.01098457  0.00307312  0.00000002

 22  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.27463770 -0.08450084  0.01047217  0.00207292 -0.00000004

 23  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.15680531  0.01237664  0.09303982 -0.00057670  0.00000007

 24  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00216123  0.00300746  0.00016996  0.09386312 -0.00000012

 25  1     6    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00899771  0.00025122  0.00079532 -0.00222083  0.00000104

 26  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                                0.19651681  0.08722445  0.53733822  0.03148648 -0.03056890

 27  1     8    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00317329  0.01454207 -0.03215816  0.54488405  0.02092128

 28  1     9    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01900613 -0.00580825 -0.04201067  0.02564184 -0.40686123

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000589 -0.01460418  0.00498937 -0.42627605  0.00000001

 30  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01132181  0.00072616 -0.00024459  0.04007074  0.00000019

 31  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00096733 -0.00255841  0.00071151 -0.10066906  0.00000009

 32  1     4    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00067485  0.00124014  0.00064051 -0.00342527 -0.00000006

 33  1     5    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.21344927 -0.09304369  0.01267035  0.00199576 -0.00000007

 34  1     6    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.17212412 -0.01267198 -0.09307060 -0.00026262  0.00000004

 35  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00727233  0.03427354  0.03595258 -0.00075825  0.40685579

 36  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.26670263  0.53377986 -0.11387037 -0.01961614 -0.01950858

 37  1     9    1  |1 1>-       0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000
                               -0.18394017  0.11183353  0.53351554  0.00240965 -0.03157138



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    1.98%    0.52%    2.28%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.48%    4.19%    0.11%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    2.32%    0.07%    2.39%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%   33.71%   10.57%   36.68%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.01%    0.00%    0.01%    0.01%    0.00%   11.22%    1.54%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.02%   27.34%    1.54%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.03%    0.04%    3.00%   49.47%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.19%    0.08%    0.02%    0.02%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.10%   50.31%    0.03%    0.03%
 17  1     7    1  |1 1>+         0.00%    3.28%    0.12%    3.69%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.01%    0.02%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.85%    6.06%    0.19%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%   34.46%    3.17%   43.33%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.02%    1.81%   38.65%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.03%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.02%    0.05%    5.73%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.01%    0.00%    0.01%   11.61%    0.01%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.28%    0.04%    0.00%    0.01%
 26  1     7    1  |1 0>          0.00%    2.75%    1.18%    3.14%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    1.30%    5.66%    0.14%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.01%    0.03%    0.00%    0.02%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%   12.80%   67.22%    0.94%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%   36.77%    0.02%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    1.04%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.32%    0.00%    0.00%    0.01%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.19%    6.32%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.02%   50.63%    2.38%
 35  1     7    1  |1 1>-         0.01%    0.05%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    2.71%    0.23%    4.15%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    3.23%    0.97%    2.87%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   47.14%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   47.14%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    5.71%   41.42%    0.02%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.08%    0.00%   47.06%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   41.36%    5.73%    0.06%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+        46.64%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.69%
 13  1     3    1  |1 1>+         4.98%    0.01%    0.00%    0.00%    0.01%    0.00%    0.02%   32.67%
 14  1     4    1  |1 1>+         0.22%    0.56%    0.00%    0.00%    0.04%    0.00%    8.33%    0.00%
 15  1     5    1  |1 1>+         0.01%    0.00%    0.02%    0.17%   27.64%    5.50%    0.06%    0.01%
 16  1     6    1  |1 1>+         0.02%    0.00%    2.84%    0.11%    1.10%    7.14%    0.01%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%    0.01%    1.36%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    1.82%    0.02%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.23%    1.13%    0.01%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.26%    2.82%    0.00%    0.01%    0.04%    0.00%   20.50%    0.04%
 22  1     3    1  |1 0>          0.00%   49.72%    0.02%    0.00%    0.02%    0.00%   12.72%    0.06%
 23  1     4    1  |1 0>         47.54%    0.00%    0.00%    0.00%    0.00%    0.00%    0.06%    8.29%
 24  1     5    1  |1 0>          0.01%    0.02%   41.67%    0.22%    1.50%    6.64%    0.00%    0.00%
 25  1     6    1  |1 0>          0.02%    0.00%    0.00%   26.50%    4.07%    2.77%    0.03%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    1.37%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.28%    1.08%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.35%    1.24%    0.23%    0.00%    0.01%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.01%    0.00%    0.16%    0.39%    4.81%   23.60%    0.03%    0.00%
 31  1     3    1  |1 1>-         0.01%    0.02%   55.24%    0.17%    0.59%    3.86%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.02%   22.50%   10.27%    0.58%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%   46.80%    0.02%    0.01%    0.01%    0.00%    8.32%    0.00%
 34  1     6    1  |1 1>-         0.30%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    8.34%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.57%    0.97%    0.29%    0.00%    0.01%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.37%    0.01%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    1.36%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   18.66%    0.34%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.03%    0.34%   18.63%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    4.75%   14.24%    0.01%    0.00%    0.01%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.06%    0.00%   18.92%    0.00%    0.04%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%   14.20%    4.76%    0.05%    0.01%    0.00%
  7  1     7    1  |0 0>          0.08%    0.48%   52.88%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.44%   52.55%    0.44%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>         52.92%    0.41%    0.11%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.16%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.03%    0.14%    8.42%    0.00%    0.00%    0.00%    0.07%    0.00%
 13  1     3    1  |1 1>+         0.01%    0.00%    0.17%    0.00%    0.00%    0.00%    3.07%    0.03%
 14  1     4    1  |1 1>+         6.34%    0.18%    0.04%    0.00%    0.00%    0.00%    0.02%    0.77%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%    1.49%    1.22%    0.45%    0.00%    0.01%
 16  1     6    1  |1 1>+         0.20%    6.29%    0.09%    0.01%    0.10%    0.68%    0.00%    0.00%
 17  1     7    1  |1 1>+        12.03%    0.13%    0.05%    0.15%    0.01%    0.05%    0.29%   37.64%
 18  1     8    1  |1 1>+         0.04%    0.02%    0.00%   24.82%   25.16%    0.74%    0.02%    0.03%
 19  1     9    1  |1 1>+         0.14%   11.89%    0.18%    1.62%    4.52%   31.90%    0.00%    0.10%
 20  1     1    1  |1 0>          0.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          3.25%    0.09%    0.02%    0.00%    0.00%    0.00%    0.01%    1.93%
 22  1     3    1  |1 0>          5.20%    0.20%    0.01%    0.00%    0.00%    0.00%    0.00%    1.21%
 23  1     4    1  |1 0>          0.01%    0.08%    6.49%    0.00%    0.00%    0.00%    0.79%    0.00%
 24  1     5    1  |1 0>          0.23%    6.27%    0.07%    0.02%    0.15%    0.63%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.24%    2.55%    0.37%    0.00%    0.01%
 26  1     7    1  |1 0>          0.02%    0.38%   11.76%    0.13%    0.00%    0.17%   37.61%    0.28%
 27  1     8    1  |1 0>          0.42%   11.46%    0.32%    1.91%    5.99%   30.15%    0.07%    0.03%
 28  1     9    1  |1 0>          0.00%    0.02%    0.08%   44.68%    1.51%    4.35%    0.13%    0.04%
 29  1     1    1  |1 1>-         0.01%    0.15%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.05%    1.14%    0.01%    0.08%    0.40%    2.25%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.28%    7.18%    0.09%    0.00%    0.07%    0.36%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.01%    0.00%    2.90%    0.26%    0.01%    0.00%    0.00%
 33  1     5    1  |1 1>-         6.31%    0.25%    0.02%    0.00%    0.00%    0.00%    0.01%    0.78%
 34  1     6    1  |1 1>-         0.01%    0.09%    6.48%    0.00%    0.00%    0.00%    0.78%    0.01%
 35  1     7    1  |1 1>-         0.04%    0.00%    0.06%    2.91%   38.77%    8.81%    0.23%    0.00%
 36  1     8    1  |1 1>-        11.67%    0.35%    0.19%    0.00%    0.02%    0.01%    0.05%   38.06%
 37  1     9    1  |1 1>-         0.12%    0.22%   11.83%    0.00%    0.27%    0.04%   37.82%    0.05%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   19.77%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%   14.06%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.72%   32.95%    0.16%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.16%   33.68%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%   33.11%    0.73%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%   22.01%    0.64%    0.07%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.07%    0.00%   22.64%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.64%   22.07%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         50.08%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.66%    0.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%   28.36%    1.04%    0.02%    0.00%    0.00%    0.00%    0.40%
 13  1     3    1  |1 1>+         0.00%    0.56%    0.09%    0.00%    0.00%    0.00%    0.00%   18.06%
 14  1     4    1  |1 1>+         0.00%    0.82%   21.51%    0.17%    0.00%    0.02%    0.00%    3.25%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    4.68%   21.64%    3.73%    0.03%
 16  1     6    1  |1 1>+         0.00%    0.04%    0.15%   22.33%    0.01%    0.84%    6.69%    0.00%
 17  1     7    1  |1 1>+         0.04%    0.03%    0.72%    0.00%    0.04%    0.01%    0.08%    3.85%
 18  1     8    1  |1 1>+        16.56%    0.00%    0.00%    0.00%   11.68%    2.24%    0.06%    0.00%
 19  1     9    1  |1 1>+         0.04%    0.00%    0.00%    0.75%    0.11%    1.28%    9.02%    0.03%
 20  1     1    1  |1 0>          0.00%    0.02%    0.66%    0.01%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.40%   11.04%    0.09%    0.00%    0.02%    0.00%    6.83%
 22  1     3    1  |1 0>          0.00%    0.39%   17.92%    0.21%    0.00%    0.01%    0.00%    3.99%
 23  1     4    1  |1 0>          0.00%   21.91%    0.57%    0.03%    0.00%    0.00%    0.00%    5.07%
 24  1     5    1  |1 0>          0.00%    0.07%    0.19%   22.26%    0.00%    1.27%    6.27%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.00%    0.01%   10.77%   16.88%    2.42%    0.01%
 26  1     7    1  |1 0>          0.09%    0.72%    0.02%    0.00%    0.05%    0.01%    0.04%    6.56%
 27  1     8    1  |1 0>          0.04%    0.00%    0.01%    0.74%    0.10%    1.72%    8.67%    0.02%
 28  1     9    1  |1 0>         16.50%    0.00%    0.00%    0.00%    8.84%    3.82%    1.25%    0.03%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.01%    0.68%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.01%    0.05%    4.06%    0.08%    3.64%   22.24%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.05%    0.25%   25.58%    0.01%    0.55%    3.60%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.01%    0.03%   29.60%    0.26%    0.21%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.56%   21.70%    0.27%    0.00%    0.01%    0.00%    2.96%
 34  1     6    1  |1 1>-         0.00%   21.92%    0.59%    0.02%    0.00%    0.00%    0.00%    4.56%
 35  1     7    1  |1 1>-        16.50%    0.00%    0.00%    0.00%    0.19%   11.86%    1.87%    0.05%
 36  1     8    1  |1 1>-         0.04%    0.04%    0.70%    0.01%    0.00%    0.00%    0.01%    3.38%
 37  1     9    1  |1 1>-         0.10%    0.71%    0.04%    0.00%    0.00%    0.06%    0.01%    7.07%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>         14.07%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         19.77%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.36%   18.70%    0.01%    0.00%
  8  1     8    1  |0 0>          0.00%    0.32%    0.00%   18.75%    0.00%
  9  1     9    1  |0 0>          0.00%   18.39%    0.37%    0.31%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   49.92%
 11  1     1    1  |1 1>+         0.00%    0.46%   17.74%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.22%    0.03%    1.12%    0.00%    0.00%
 13  1     3    1  |1 1>+        11.39%    0.00%    0.02%    0.00%    0.00%
 14  1     4    1  |1 1>+         4.27%    0.85%    0.02%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.01%    0.00%    0.00%    0.88%    0.00%
 17  1     7    1  |1 1>+         6.53%   28.72%    0.73%    0.36%    0.04%
 18  1     8    1  |1 1>+         0.01%    0.06%    0.00%    0.08%   16.61%
 19  1     9    1  |1 1>+         0.07%    0.36%    0.02%   29.45%    0.04%
 20  1     1    1  |1 0>          0.00%   17.72%    0.45%    0.02%    0.00%
 21  1     2    1  |1 0>         11.71%    0.44%    0.01%    0.00%    0.00%
 22  1     3    1  |1 0>          7.54%    0.71%    0.01%    0.00%    0.00%
 23  1     4    1  |1 0>          2.46%    0.02%    0.87%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.88%    0.00%
 25  1     6    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          3.86%    0.76%   28.87%    0.10%    0.09%
 27  1     8    1  |1 0>          0.00%    0.02%    0.10%   29.69%    0.04%
 28  1     9    1  |1 0>          0.04%    0.00%    0.18%    0.07%   16.55%
 29  1     1    1  |1 1>-         0.00%    0.02%    0.00%   18.17%    0.00%
 30  1     2    1  |1 1>-         0.01%    0.00%    0.00%    0.16%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    1.01%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         4.56%    0.87%    0.02%    0.00%    0.00%
 34  1     6    1  |1 1>-         2.96%    0.02%    0.87%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.01%    0.12%    0.13%    0.00%   16.55%
 36  1     8    1  |1 1>-         7.11%   28.49%    1.30%    0.04%    0.04%
 37  1     9    1  |1 1>-         3.38%    1.25%   28.46%    0.00%    0.10%


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

              2       7     1346.92       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     78106.50  73275.77   2691.54   2131.09      6.77      0.04      1.03
 REAL TIME  *     78769.16 SEC
 DISK USED  *         1.35 GB (local),       19.02 GB (total)
 SF USED    *         7.22 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=   -462.696148834253

              CI              CI           MULTI         RHF-SCF
   -462.66089259   -462.65164457   -461.79599421   -462.19812140
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
