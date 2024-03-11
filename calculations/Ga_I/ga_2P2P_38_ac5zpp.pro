
 Working directory              : /wrk/irikura/molpro.ODawll38ai/
 Global scratch directory       : /wrk/irikura/molpro.ODawll38ai/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.ODawll38ai/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Ga SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Ga};
 
 basis=aug-cc-pwCV5Z-PP
 
                                                                                 ! cation orbitals
                                                                                 !{rhf;wf,nelec=20,sym=1,spin=0}
 rhf
 
 {multi
     closed,6,3
     occ,8,9
     wf,nelec=21,sym=2,spin=1;state,6;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=2,spin=1;state,6; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2;print,vls=0,hls=0}                                        !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Ga SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 08-Mar-24          TIME: 08:26:37  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Ga   ECP ECP10MDF                 selected for group  1
 Library entry GA     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GA     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GA     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GA     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GA     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GA     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry GA     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  GA     21.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   21
 NUMBER OF PRIMITIVE AOS:         465
 NUMBER OF SYMMETRY AOS:          332
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.197E-05 0.374E-03 0.128E-02 0.151E-02 0.151E-02 0.151E-02 0.151E-02 0.151E-02
         2 0.414E-04 0.414E-04 0.414E-04 0.137E-02 0.137E-02 0.137E-02 0.772E-02 0.772E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     537.657 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 30.409 MB, node maximum: 54.526 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   26065404.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15978249      RECORD LENGTH: 524288

 Memory used in sort:      16.54 MW

 SORT1 READ   511790813. AND WROTE     4289525. INTEGRALS IN     13 RECORDS. CPU TIME:     2.16 SEC, REAL TIME:     2.23 SEC
 SORT2 READ    53561830. AND WROTE   312900871. INTEGRALS IN   2004 RECORDS. CPU TIME:     0.53 SEC, REAL TIME:     0.57 SEC

 Node minimum:    26062456.  Node maximum:    26096463. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         8.58      8.24
 REAL TIME  *         9.76 SEC
 DISK USED  *        30.87 MB (local),        1.42 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   2   6

 NELEC=   21   SYM=1   MS2= 5   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -178.70799455    -178.70799455     0.00D+00     0.83D-01     0     0       0.14      0.25    start
   2     -235.29608088     -56.58808633     0.22D+00     0.13D+00     1     0       0.15      0.40    diag2
   3     -250.20176829     -14.90568741     0.24D+00     0.55D-01     2     0       0.15      0.55    diag2
   4     -256.86882515      -6.66705685     0.11D+00     0.42D-01     3     0       0.16      0.71    diag2
   5     -257.28472207      -0.41589693     0.24D-01     0.13D-01     4     0       0.15      0.86    diag2
   6     -257.34733277      -0.06261070     0.59D-02     0.14D-01     5     0       0.15      1.01    diag2
   7     -257.34953694      -0.00220417     0.12D-02     0.25D-02     6     0       0.15      1.16    diag2
   8     -257.35027429      -0.00073734     0.57D-03     0.53D-03     7     0       0.15      1.31    fixocc
   9     -257.35095006      -0.00067577     0.28D-03     0.44D-03     8     0       0.15      1.46    diag2
  10     -257.35153376      -0.00058369     0.15D-03     0.18D-03     9     0       0.16      1.62    diag2/orth
  11     -257.35454283      -0.00300908     0.14D-03     0.12D-02     9     0       0.15      1.77    diag2
  12     -257.35475922      -0.00021639     0.13D-03     0.11D-03     9     0       0.15      1.92    diag2
  13     -257.35599249      -0.00123327     0.10D-03     0.11D-02     9     0       0.16      2.08    diag2
  14     -257.35598148       0.00001102     0.11D-03     0.18D-03     9     0       0.15      2.23    diag2
  15     -257.35613001      -0.00014854     0.58D-04     0.41D-03     9     0       0.15      2.38    diag2
  16     -257.35615855      -0.00002854     0.38D-04     0.15D-03     9     0       0.15      2.53    diag2
  17     -257.35618223      -0.00002368     0.32D-04     0.11D-03     9     0       0.16      2.69    diag2
  18     -257.35622427      -0.00004204     0.52D-04     0.13D-03     9     0       0.15      2.84    diag2
  19     -257.35627709      -0.00005281     0.38D-04     0.18D-03     9     0       0.15      2.99    diag2
  20     -257.35631722      -0.00004013     0.21D-04     0.16D-03     9     0       0.15      3.14    diag2/orth
  21     -257.35635034      -0.00003312     0.17D-04     0.19D-03     9     0       0.15      3.29    diag2
  22     -257.35636135      -0.00001101     0.15D-04     0.87D-04     9     0       0.15      3.44    diag2
  23     -257.35636760      -0.00000625     0.10D-04     0.68D-04     9     0       0.15      3.59    diag2
  24     -257.35637920      -0.00001159     0.91D-05     0.98D-04     9     0       0.16      3.75    diag2
  25     -257.35638160      -0.00000241     0.85D-05     0.43D-04     9     0       0.15      3.90    diag2
  26     -257.35638384      -0.00000223     0.47D-05     0.55D-04     9     0       0.15      4.05    diag2
  27     -257.35638418      -0.00000034     0.22D-05     0.17D-04     9     0       0.15      4.20    diag2
  28     -257.35638434      -0.00000017     0.15D-05     0.13D-04     9     0       0.14      4.34    diag2
  29     -257.35638437      -0.00000002     0.53D-06     0.35D-05     9     0       0.16      4.50    diag2
  30     -257.35638437      -0.00000001     0.30D-06     0.39D-05     9     0       0.15      4.65    diag2/orth
  31     -257.35638438      -0.00000000     0.18D-06     0.13D-05     9     0       0.16      4.81    diag2
  32     -257.35638438      -0.00000000     0.91D-07     0.18D-06     0     0       0.14      4.95    diag

 Final alpha occupancy:   8   5
 Final beta  occupancy:   5   3

 !RHF STATE 1.1 Energy               -257.356384376507
  RHF One-electron energy            -451.955168919210
  RHF Two-electron energy             194.598784542703
  RHF Kinetic energy                  175.407516900065
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.467191309271

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -7.16768     1  1  s    1.00962
    2.1     2.00000    -1.77471     1  1  d0   0.31362    1  1  d2-  0.84353    1  1  d1+ -0.38186    1  1  d1- -0.33454
    3.1     2.00000    -1.72839     1  1  d0  -0.53750    1  1  d2-  0.48033    1  1  d1+  0.65138    1  1  d2+  0.31743
    4.1     2.00000    -1.72836     1  1  d0   0.67479    1  1  d1+  0.30775    1  1  d2+  0.51105    1  1  d1- -0.48276
    5.1     2.00000    -1.71291     1  1  d0   0.48648    1  1  d2-  0.29166    1  1  d1+  0.46929    1  1  d1-  0.72184
    6.1     1.00000    -1.85848     1  1  d1+ -0.44960    1  1  d2+  0.82724    1  1  d1-  0.42416
    7.1     1.00000    -0.84199     1  1  s   -0.33522    1  4  s    0.28932    1  5  s    0.69623    1  6  s    0.26962
    8.1     1.00000    -0.11412     1  5  s   -0.27796    1  6  s   -0.37602    1  7  s    0.29681    1 12  s    0.98215
    1.2     2.00000    -5.13127     1  1  px   0.94530    1  1  pz  -0.37234
    2.2     2.00000    -5.13126     1  1  py   0.87974    1  1  pz  -0.47646
    3.2     2.00000    -5.13066     1  1  px   0.32649    1  1  py   0.50643    1  1  pz   0.81363
    4.2     1.00000    -0.46627     1  1  px  -0.25087    1  4  px   0.37520    1  5  px   0.49395
    5.2     1.00000    -0.46626     1  4  py   0.35237    1  5  py   0.46391


 HOMO      8.1    -0.114116 =      -3.1052eV
 LUMO      6.2    -0.139777 =      -3.8035eV
 LUMO-HOMO        -0.025661 =      -0.6983eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        1.51       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *        13.55      4.97      8.24
 REAL TIME  *        15.00 SEC
 DISK USED  *        36.95 MB (local),        1.49 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     248 (  121  127)

 State symmetry 1

 Number of active electrons:   3    Spin symmetry=Doublet   Space symmetry=2
 Number of states:             6
 Number of CSFs:              94   (120 determinants, 224 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.232D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.588D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.703D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.691D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.663D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.574D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.897D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.744D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 4 2 6 5 1 1 6 4   2 5 3 1 5 3 2 6 4 1   5 3 4 2 6 8 712 914  10131510 1 5 6 4 2 3
                                        9 4 2 7 1 8131514 8  12 7 91410131510 5 6   3 2 3 114 912 713 8  1511 7 5 3 4 6 62119
                                       27231828252024222617  16 1 5 4 2 2 6101312   8 9111514 7 1 5 3 4   2 6101312 8 9141115
                                       11 5 3 412 1 11111
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.297D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.432D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.508D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.316D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.440D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.512D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.319D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.416D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.514D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 5 610 4 7 8 9 1   2 3 5 610 4 7 8 9 1   2 3 5 610 4 7 9 821
                                       12161119171520181314   510 6 4 7 9 8 1 2 3  21161211191715201813  14 710 4 5 6 8 9 1 2
                                        3171214111816202115  1913 7 9 4 6 810 5 1   2 3 7 9 4 6 810 517  15182019121121141613
                                        1 2 3 7 9 4 6 810 5   1 2 3 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.16667   0.16667   0.16667   0.16667   0.16667   0.16667
 
 Number of orbital rotations:  2141  ( 30 closed/active, 1107 closed/virtual, 0 active/active, 1004 active/virtual )
 Total number of variables:    2861
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    4    0   -258.05526446    -258.24820675   -0.19294229    1.63356773 0.00109489 0.00000000  0.73E+00      2.12
   2    7    6    0   -258.25442221    -258.25501466   -0.00059246    0.07166936 0.00015688 0.00000000  0.94E-01      4.33
   3    6    6    0   -258.25501690    -258.25501698   -0.00000008    0.00031509 0.00000009 0.00000000  0.36E-02      6.09
   4    2    2    0   -258.25501698    -258.25501698    0.00000000    0.00000003 0.00000000 0.00000000  0.68E-06      7.63

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.11E-08)
                       Final energy:   -258.25501698
 
 Results for state 1.2
 =====================
 !MCSCF STATE 1.2 Energy                      -258.317867140656
 Nuclear energy                                  0.00000000
 Kinetic energy                                179.13987801
 One electron energy                          -463.45047583
 Two electron energy                           205.13260869
 Virial ratio                                    2.44198975
 
 !MCSCF STATE 1.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.2
 =====================
 !MCSCF STATE 2.2 Energy                      -258.317867140650
 Nuclear energy                                  0.00000000
 Kinetic energy                                179.13987801
 One electron energy                          -463.45047583
 Two electron energy                           205.13260869
 Virial ratio                                    2.44198975
 
 !MCSCF STATE 2.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.2
 =====================
 !MCSCF STATE 3.2 Energy                      -258.317867140625
 Nuclear energy                                  0.00000000
 Kinetic energy                                179.13987801
 One electron energy                          -463.45047583
 Two electron energy                           205.13260869
 Virial ratio                                    2.44198975
 
 !MCSCF STATE 3.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.2
 =====================
 !MCSCF STATE 4.2 Energy                      -258.192166812200
 Nuclear energy                                  0.00000000
 Kinetic energy                                178.88237013
 One electron energy                          -459.41673706
 Two electron energy                           201.22457025
 Virial ratio                                    2.44336285
 
 !MCSCF STATE 4.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.2
 =====================
 !MCSCF STATE 5.2 Energy                      -258.192166812145
 Nuclear energy                                  0.00000000
 Kinetic energy                                178.88237013
 One electron energy                          -459.41673707
 Two electron energy                           201.22457026
 Virial ratio                                    2.44336285
 
 !MCSCF STATE 5.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.2
 =====================
 !MCSCF STATE 6.2 Energy                      -258.192166812085
 Nuclear energy                                  0.00000000
 Kinetic energy                                178.88237013
 One electron energy                          -459.41673708
 Two electron energy                           201.22457027
 Virial ratio                                    2.44336285
 
 !MCSCF STATE 6.2 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.2|LXLX|1.2>     0.000000007028
 !MCSCF expec                      <2.2|LXLX|2.2>     0.999999999456
 !MCSCF expec                      <3.2|LXLX|3.2>     0.999999999845
 !MCSCF expec                      <4.2|LXLX|4.2>     0.000000000020
 !MCSCF expec                      <5.2|LXLX|5.2>     0.999999999993
 !MCSCF expec                      <6.2|LXLX|6.2>     0.999999999997
 
 !MCSCF expec                      <1.2|LYLY|1.2>     0.999999999878
 !MCSCF expec                      <2.2|LYLY|2.2>     0.999999993366
 !MCSCF expec                      <3.2|LYLY|3.2>     0.000000004067
 !MCSCF expec                      <4.2|LYLY|4.2>     0.999999999999
 !MCSCF expec                      <5.2|LYLY|5.2>     0.999999999995
 !MCSCF expec                      <6.2|LYLY|6.2>     0.000000000065
 
 !MCSCF expec                      <1.2|LZLZ|1.2>     0.999999993093
 !MCSCF expec                      <2.2|LZLZ|2.2>     0.000000007179
 !MCSCF expec                      <3.2|LZLZ|3.2>     0.999999996087
 !MCSCF expec                      <4.2|LZLZ|4.2>     0.999999999980
 !MCSCF expec                      <5.2|LZLZ|5.2>     0.000000000013
 !MCSCF expec                      <6.2|LZLZ|6.2>     0.999999999938
 
 !MCSCF expec                      <1.2|L**2|1.2>     2.000000000000
 !MCSCF expec                      <2.2|L**2|2.2>     2.000000000000
 !MCSCF expec                      <3.2|L**2|3.2>     2.000000000000
 !MCSCF expec                      <4.2|L**2|4.2>     2.000000000000
 !MCSCF expec                      <5.2|L**2|5.2>     2.000000000000
 !MCSCF expec                      <6.2|L**2|6.2>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 1 4   5 3 6 2 5 3 2 4 6 1  13101415 9 812 711 2   5 3 4 6 113101415 9
                                        812 711 2 3 5 4 613  101514 812 9 711 2 4   5 3 6 113101415 9 8  12 711 2 4 5 3 62216
                                       28201824192326172125  27 1 2 4 3 5 61310 9  1514 812 711 1 2 4 3   5 6 913101514 812 7
                                       11 2 4 3 6 5 1 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 3 2 1 3 2 1 2   3 1 4 9 7 810 5 6 2   3 110 8 7 9 4 5 6 2   1 3 9 710 8 4 6 520
                                       18151711141621131912   9 7 810 4 6 5 1 2 3  18201115171416211319  12 9 7 810 4 6 5 1 3
                                        2201811151714161921  1312 810 4 7 9 6 5 1   3 2 810 9 7 4 6 520  18111517141621131912
                                        1 3 2 810 4 6 5 9 7   3 2 1 3 1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -6.67998     1  1  s    1.00028
    2.1     2.00000    -1.25393     1  1  d1+  1.00024
    3.1     2.00000    -1.25393     1  1  d2-  1.00024
    4.1     2.00000    -1.25393     1  1  d2+  1.00024
    5.1     2.00000    -1.25393     1  1  d0   1.00024
    6.1     2.00000    -1.25393     1  1  d1-  1.00024
    7.1     1.91992    -0.49223     1  1  s   -0.27833    1  5  s    0.52717    1  6  s    0.48178
    8.1     0.00559     0.26390     1  1  s    0.31018    1  3  s    0.29681    1  4  s   -0.67758    1  5  s   -1.35453
                                    1  6  s    1.00392    1  7  s    0.67443
    1.2     2.00000    -4.66094     1  1  px   0.99987
    2.2     2.00000    -4.66094     1  1  pz   0.99987
    3.2     2.00000    -4.66094     1  1  py   0.99987
    4.2     0.19162    -0.01766     1  5  pz   0.51119    1  6  pz   0.38489
    5.2     0.19162    -0.01766     1  5  py   0.51119    1  6  py   0.38489
    6.2     0.19162    -0.01766     1  5  px   0.51119    1  6  px   0.38489
    7.2     0.16654     0.01607     1  7  pz   0.35346    1 12  pz   0.82787
    8.2     0.16654     0.01607     1  7  py   0.35346    1 12  py   0.82787
    9.2     0.16654     0.01607     1  7  px   0.35346    1 12  px   0.82787
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 2
 =============================
 
 20 0a0000     -0.00001048      0.00007738      0.94998118     -0.00000018     -0.00000056     -0.24360840
 20 a00000     -0.00007895      0.94998118     -0.00007738     -0.00000108     -0.24360840      0.00000056
 20 00a000      0.94998118      0.00007895      0.00001048     -0.24360841      0.00000108      0.00000018
 20 000a00     -0.00002025      0.24364022     -0.00001984      0.00000418      0.94600749     -0.00000218
 20 0000a0     -0.00000269      0.00001984      0.24364023      0.00000071      0.00000218      0.94600749
 20 00000a      0.24364024      0.00002025      0.00000269      0.94600749     -0.00000418     -0.00000071
 00 2a0000      0.00000138     -0.00001019     -0.12508984      0.00000003      0.00000008      0.03398346
 00 0a2000      0.00000138     -0.00001019     -0.12508984      0.00000003      0.00000008      0.03398346
 00 a20000      0.00001040     -0.12508984      0.00001019      0.00000015      0.03398346     -0.00000008
 00 02a000     -0.12508984     -0.00001040     -0.00000138      0.03398347     -0.00000015     -0.00000003
 00 20a000     -0.12508984     -0.00001040     -0.00000138      0.03398347     -0.00000015     -0.00000003
 00 a02000      0.00001040     -0.12508984      0.00001019      0.00000015      0.03398346     -0.00000008
 00 020a00      0.00000243     -0.02919404      0.00000238     -0.00000050     -0.11353136      0.00000026
 00 002a00      0.00000243     -0.02919404      0.00000238     -0.00000050     -0.11353136      0.00000026
 00 2000a0      0.00000032     -0.00000238     -0.02919404     -0.00000009     -0.00000026     -0.11353136
 00 0020a0      0.00000032     -0.00000238     -0.02919404     -0.00000009     -0.00000026     -0.11353136
 00 02000a     -0.02919405     -0.00000243     -0.00000032     -0.11353136      0.00000050      0.00000009
 00 20000a     -0.02919405     -0.00000243     -0.00000032     -0.11353136      0.00000050      0.00000009
 00 0200a0      0.00000032     -0.00000235     -0.02885160     -0.00000008     -0.00000026     -0.11201376
 00 200a00      0.00000240     -0.02885160      0.00000235     -0.00000050     -0.11201376      0.00000026
 00 00200a     -0.02885160     -0.00000240     -0.00000032     -0.11201376      0.00000050      0.00000008
 
 Energy:     -258.31786714   -258.31786714   -258.31786714   -258.19216681   -258.19216681   -258.19216681
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.83       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.40      7.85      4.97      8.24
 REAL TIME  *        24.19 SEC
 DISK USED  *        96.73 MB (local),        2.19 GB (total)
 SF USED    *       169.87 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -258.3178671   2.0
    -258.3178671   2.0
    -258.3178671   2.0
    -258.1921668   2.0
    -258.1921668   2.0
    -258.1921668   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   2   Doublet 
 Number of electrons:                 21
 Maximum number of shells:             5
 Maximum number of spin couplings:    42

 Reference space:       68 conf       94 CSFs
 N elec internal:    25186 conf   106386 CSFs
 N-1 el internal:    12969 conf    77473 CSFs
 N-2 el internal:     3392 conf    24010 CSFs

 Number of electrons in valence space:                     21
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  9


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     248 ( 121 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   8

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -258.31786714
     2      -258.31786714
     3      -258.31786714
     4      -258.19216681
     5      -258.19216681
     6      -258.19216681

 Number of blocks in overlap matrix:   526   Smallest eigenvalue:  0.29D-05
 Number of N-2 electron functions:    1330
 Number of N-1 electron functions:   77473

 Number of internal configurations:                53272
 Number of singly external configurations:       9607051
 Number of doubly external configurations:      20456146
 Total number of contracted configurations:     30116469
 Total number of uncontracted configurations:  378484749

 Diagonal Coupling coefficients finished.               Storage:  22139508 words, CPU-Time:     26.34 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3646625 words, CPU-time:      3.55 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -258.31786714    -0.00000000    -1.09799504  0.37D-01  0.74D-01    44.94
    1     2     2     1.00000000     0.00000000  -258.31786714     0.00000000    -1.09792628  0.37D-01  0.74D-01    44.94
    1     3     3     1.00000000     0.00000000  -258.31786714     0.00000000    -1.09801514  0.37D-01  0.74D-01    44.94
    1     4     4     1.00000000     0.00000000  -258.19216681     0.00000000    -1.07192083  0.20D-01  0.69D-01    44.94
    1     5     5     1.00000000     0.00000000  -258.19216681    -0.00000000    -1.07194407  0.20D-01  0.69D-01    44.94
    1     6     6     1.00000000     0.00000000  -258.19216681     0.00000000    -1.07190052  0.20D-01  0.69D-01    44.94
    2     1     1     1.07369261    -0.89685024  -259.21471738    -0.89685024    -0.03181825  0.41D-02  0.17D-02  1133.41
    2     2     2     1.07376369    -0.89678927  -259.21465641    -0.89678927    -0.03187678  0.41D-02  0.17D-02  1133.41
    2     3     3     1.07377155    -0.89678329  -259.21465044    -0.89678329    -0.03188354  0.41D-02  0.17D-02  1133.41
    2     4     4     1.06083707    -0.88850148  -259.08066829    -0.88850148    -0.02819825  0.23D-02  0.16D-02  1133.41
    2     5     5     1.06084517    -0.88849713  -259.08066394    -0.88849713    -0.02820177  0.23D-02  0.16D-02  1133.41
    2     6     6     1.06084810    -0.88849673  -259.08066354    -0.88849673    -0.02820123  0.23D-02  0.16D-02  1133.41
    3     1     1     1.06162796    -0.92520008  -259.24306722    -0.02834984    -0.00082834  0.16D-03  0.48D-04  2219.75
    3     2     2     1.06162588    -0.92519932  -259.24306646    -0.02841006    -0.00082918  0.16D-03  0.48D-04  2219.75
    3     3     3     1.06162600    -0.92519929  -259.24306643    -0.02841599    -0.00082920  0.16D-03  0.48D-04  2219.75
    3     4     4     1.05483797    -0.91285383  -259.10502064    -0.02435235    -0.00065181  0.82D-04  0.34D-04  2219.75
    3     5     5     1.05483798    -0.91285378  -259.10502059    -0.02435665    -0.00065190  0.82D-04  0.35D-04  2219.75
    3     6     6     1.05483866    -0.91285371  -259.10502053    -0.02435699    -0.00065196  0.82D-04  0.35D-04  2219.75
    4     1     1     1.06039108    -0.92596720  -259.24383434    -0.00076711    -0.00004228  0.76D-05  0.27D-05  3306.86
    4     2     2     1.06038958    -0.92596715  -259.24383429    -0.00076783    -0.00004233  0.76D-05  0.28D-05  3306.86
    4     3     3     1.06038961    -0.92596715  -259.24383429    -0.00076786    -0.00004234  0.76D-05  0.28D-05  3306.86
    4     4     4     1.05464008    -0.91344478  -259.10561159    -0.00059095    -0.00002881  0.44D-05  0.14D-05  3306.86
    4     5     5     1.05463977    -0.91344478  -259.10561159    -0.00059100    -0.00002881  0.44D-05  0.14D-05  3306.86
    4     6     6     1.05463964    -0.91344478  -259.10561159    -0.00059106    -0.00002882  0.44D-05  0.14D-05  3306.86
    5     1     1     1.06039412    -0.92600830  -259.24387545    -0.00004111    -0.00000172  0.19D-06  0.13D-06  4389.00
    5     2     2     1.06039409    -0.92600830  -259.24387544    -0.00004115    -0.00000172  0.19D-06  0.13D-06  4389.00
    5     3     3     1.06039404    -0.92600830  -259.24387544    -0.00004116    -0.00000172  0.19D-06  0.13D-06  4389.00
    5     4     4     1.05472986    -0.91347317  -259.10563998    -0.00002839    -0.00000115  0.10D-06  0.71D-07  4389.00
    5     5     5     1.05472991    -0.91347317  -259.10563998    -0.00002839    -0.00000115  0.10D-06  0.71D-07  4389.00
    5     6     6     1.05472996    -0.91347317  -259.10563998    -0.00002839    -0.00000115  0.10D-06  0.71D-07  4389.00
    6     1     1     1.06040923    -0.92600999  -259.24387713    -0.00000169    -0.00000007  0.73D-08  0.67D-08  5475.18
    6     2     2     1.06040919    -0.92600999  -259.24387713    -0.00000169    -0.00000007  0.74D-08  0.67D-08  5475.18
    6     3     3     1.06040920    -0.92600999  -259.24387713    -0.00000169    -0.00000007  0.74D-08  0.67D-08  5475.18
    6     4     4     1.05476009    -0.91347433  -259.10564114    -0.00000116    -0.00000005  0.41D-08  0.39D-08  5475.18
    6     5     5     1.05476009    -0.91347433  -259.10564114    -0.00000116    -0.00000005  0.41D-08  0.39D-08  5475.18
    6     6     6     1.05476007    -0.91347433  -259.10564114    -0.00000116    -0.00000005  0.41D-08  0.39D-08  5475.18
    7     1     1     1.06041064    -0.92601007  -259.24387721    -0.00000007    -0.00000000  0.86D-09  0.25D-09  6557.31
    7     2     2     1.06041063    -0.92601007  -259.24387721    -0.00000007    -0.00000000  0.86D-09  0.25D-09  6557.31
    7     3     3     1.06041063    -0.92601007  -259.24387721    -0.00000007    -0.00000000  0.86D-09  0.25D-09  6557.31
    7     4     4     1.05476377    -0.91347437  -259.10564118    -0.00000005    -0.00000000  0.63D-09  0.13D-09  6557.31
    7     5     5     1.05476377    -0.91347437  -259.10564118    -0.00000005    -0.00000000  0.63D-09  0.13D-09  6557.31
    7     6     6     1.05476377    -0.91347437  -259.10564118    -0.00000005    -0.00000000  0.63D-09  0.13D-09  6557.31


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.4%  53.6%
 P   0.2%  17.2%  18.7%

 Initialization:   0.5%
 Other:            8.8%

 Total CPU:     6557.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222022200/000           0.0041027   0.0001618   0.9329587  -0.2027072  -0.0000004  -0.0036143
 22222220222000/00           0.1974849  -0.0479406  -0.0008601  -0.0000018   0.9301515   0.0000020
 2222222022200000/           0.0008937   0.0000352   0.2032204   0.9300037   0.0000017   0.0165823
 222222202220000/0           0.0479400   0.1974868  -0.0002451  -0.0165823  -0.0000020   0.9300037
 222222202220/0000           0.2200863   0.9066364  -0.0011250   0.0036143   0.0000004  -0.2027072
 22222220222/00000           0.9066278  -0.2200891  -0.0039487   0.0000004  -0.2027394  -0.0000004
 2222220022202/000          -0.0005049  -0.0000199  -0.1148246   0.0267399   0.0000000   0.0004768
 2222220022220/000          -0.0005049  -0.0000199  -0.1148246   0.0267399   0.0000000   0.0004768
 222222002220/2000          -0.0270873  -0.1115849   0.0001385  -0.0004768  -0.0000001   0.0267399
 222222002222/0000          -0.0270873  -0.1115849   0.0001385  -0.0004768  -0.0000001   0.0267399
 22222200222/20000          -0.1115839   0.0270876   0.0004860  -0.0000001   0.0267442   0.0000001
 22222200222/02000          -0.1115839   0.0270876   0.0004860  -0.0000001   0.0267442   0.0000001
 22222200222020/00          -0.0221429   0.0053753   0.0000964   0.0000002  -0.1044844  -0.0000002
 22222200222002/00          -0.0221429   0.0053753   0.0000964   0.0000002  -0.1044844  -0.0000002
 2222220022220000/          -0.0001002  -0.0000040  -0.0227860  -0.1044678  -0.0000002  -0.0018627
 222222002222000/0          -0.0053753  -0.0221431   0.0000275   0.0018627   0.0000002  -0.1044678
 2222220022202000/          -0.0001002  -0.0000040  -0.0227860  -0.1044678  -0.0000002  -0.0018627
 222222002220020/0          -0.0053753  -0.0221431   0.0000275   0.0018627   0.0000002  -0.1044678
 22222200222200/00          -0.0217151   0.0052715   0.0000946   0.0000002  -0.1029486  -0.0000002
 222222002220200/0          -0.0052714  -0.0217154   0.0000269   0.0018353   0.0000002  -0.1029322
 2222220022200200/          -0.0000983  -0.0000039  -0.0223458  -0.1029322  -0.0000002  -0.0018353
 222222/\222000/00          -0.0182022   0.0044187   0.0000793   0.0000001  -0.0733057  -0.0000002
 222222/\22200000/          -0.0000824  -0.0000032  -0.0187308  -0.0732940  -0.0000001  -0.0013069
 222222/\2220000/0          -0.0044186  -0.0182024   0.0000226   0.0013069   0.0000002  -0.0732940

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.004265    0.942407    0.228772   -0.000154   -0.034046   -0.008265
 2           0.000168   -0.228775    0.942416   -0.000006    0.008265   -0.034047
 3           0.969777   -0.004105   -0.001169   -0.035035    0.000148    0.000042
 4           0.036690   -0.000000   -0.000654    0.972010   -0.000002   -0.017331
 5           0.000000    0.036696   -0.000000    0.000002    0.972165   -0.000002
 6           0.000654    0.000000    0.036690    0.017331    0.000002    0.972010

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970419    0.000000    0.000000    0.000000    0.000764    0.000185
 2           0.000000    0.970419   -0.000000   -0.000013   -0.000185    0.000764
 3           0.000000   -0.000000    0.970419    0.000786   -0.000003    0.000013
 4           0.000000   -0.000013    0.000786    0.972857   -0.000000   -0.000000
 5           0.000764   -0.000185   -0.000003   -0.000000    0.972857   -0.000000
 6           0.000185    0.000764    0.000013   -0.000000   -0.000000    0.972857


 RESULTS FOR STATE 1.2
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94240696 (fixed)   0.97066438 (relaxed)   0.97041870 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140005   -0.00228059   -0.82726460
 Singles      0.01291501   -0.05707853   -0.06501445
 Pairs        0.04758020    0.00824036   -0.03373102
 Total        1.06189527   -0.05111875   -0.92601007
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.31769587
 Nuclear energy                         0.00000000
 Kinetic energy                       179.53780028
 One electron energy                 -462.38113762
 Two electron energy                  203.13726041
 Virial quotient                       -1.44395151
 Correlation energy                    -0.92618134
 !MRCI STATE 1.2 Energy              -259.243877206512

 Properties without orbital relaxation:

 !MRCI STATE 1.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.30120345 (Davidson, fixed reference)
 Cluster corrected energies          -259.30070565 (Davidson, relaxed reference)
 Cluster corrected energies          -259.30120345 (Davidson, rotated reference)

 Cluster corrected energies          -259.29813793 (Pople, fixed reference)
 Cluster corrected energies          -259.29764280 (Pople, relaxed reference)
 Cluster corrected energies          -259.29813793 (Pople, rotated reference)



 RESULTS FOR STATE 2.2
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94241589 (fixed)   0.97066439 (relaxed)   0.97041871 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140005   -0.00228059   -0.85147179
 Singles      0.01291501   -0.05707852   -0.06501444
 Pairs        0.04758020    0.03394584   -0.00952384
 Total        1.06189526   -0.02541326   -0.92601007
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.31769587
 Nuclear energy                         0.00000000
 Kinetic energy                       179.53779921
 One electron energy                 -462.38113688
 Two electron energy                  203.13725967
 Virial quotient                       -1.44395152
 Correlation energy                    -0.92618134
 !MRCI STATE 2.2 Energy              -259.243877206497

 Properties without orbital relaxation:

 !MRCI STATE 2.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.30120344 (Davidson, fixed reference)
 Cluster corrected energies          -259.30070564 (Davidson, relaxed reference)
 Cluster corrected energies          -259.30120344 (Davidson, rotated reference)

 Cluster corrected energies          -259.29813792 (Pople, fixed reference)
 Cluster corrected energies          -259.29764279 (Pople, relaxed reference)
 Cluster corrected energies          -259.29813792 (Pople, rotated reference)



 RESULTS FOR STATE 3.2
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96977697 (fixed)   0.97066439 (relaxed)   0.97041871 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00140005   -0.00228059   -0.81946489
 Singles      0.01291501   -0.05707852   -0.06501444
 Pairs        0.04758020   -0.00004212   -0.04153073
 Total        1.06189526   -0.05940123   -0.92601007
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.31769587
 Nuclear energy                         0.00000000
 Kinetic energy                       179.53779926
 One electron energy                 -462.38113700
 Two electron energy                  203.13725980
 Virial quotient                       -1.44395151
 Correlation energy                    -0.92618134
 !MRCI STATE 3.2 Energy              -259.243877205684

 Properties without orbital relaxation:

 !MRCI STATE 3.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.30120344 (Davidson, fixed reference)
 Cluster corrected energies          -259.30070564 (Davidson, relaxed reference)
 Cluster corrected energies          -259.30120344 (Davidson, rotated reference)

 Cluster corrected energies          -259.29813792 (Pople, fixed reference)
 Cluster corrected energies          -259.29764279 (Pople, relaxed reference)
 Cluster corrected energies          -259.29813792 (Pople, rotated reference)



 RESULTS FOR STATE 4.2
 =====================

 Coefficient of reference function:   C(0) = 0.97201049 (fixed)   0.97313330 (relaxed)   0.97285701 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00172098   -0.00284258   -0.83066680
 Singles      0.00936015   -0.05266535   -0.05793770
 Pairs        0.04549787    0.01528399   -0.02486988
 Total        1.05657900   -0.04022393   -0.91347437
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.19233809
 Nuclear energy                         0.00000000
 Kinetic energy                       179.40039587
 One electron energy                 -458.34872061
 Two electron energy                  199.24307943
 Virial quotient                       -1.44428690
 Correlation energy                    -0.91330310
 !MRCI STATE 4.2 Energy              -259.105641183832

 Properties without orbital relaxation:

 !MRCI STATE 4.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.15731496 (Davidson, fixed reference)
 Cluster corrected energies          -259.15676710 (Davidson, relaxed reference)
 Cluster corrected energies          -259.15731496 (Davidson, rotated reference)

 Cluster corrected energies          -259.15433702 (Pople, fixed reference)
 Cluster corrected energies          -259.15379686 (Pople, relaxed reference)
 Cluster corrected energies          -259.15433702 (Pople, rotated reference)



 RESULTS FOR STATE 5.2
 =====================

 Coefficient of reference function:   C(0) = 0.97216499 (fixed)   0.97313330 (relaxed)   0.97285701 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00172098   -0.00284258   -0.81620299
 Singles      0.00936015   -0.05266535   -0.05793770
 Pairs        0.04549787    0.00000184   -0.03933369
 Total        1.05657900   -0.05550609   -0.91347437
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.19233809
 Nuclear energy                         0.00000000
 Kinetic energy                       179.40039576
 One electron energy                 -458.34872064
 Two electron energy                  199.24307946
 Virial quotient                       -1.44428690
 Correlation energy                    -0.91330310
 !MRCI STATE 5.2 Energy              -259.105641183302

 Properties without orbital relaxation:

 !MRCI STATE 5.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.15731496 (Davidson, fixed reference)
 Cluster corrected energies          -259.15676709 (Davidson, relaxed reference)
 Cluster corrected energies          -259.15731496 (Davidson, rotated reference)

 Cluster corrected energies          -259.15433702 (Pople, fixed reference)
 Cluster corrected energies          -259.15379686 (Pople, relaxed reference)
 Cluster corrected energies          -259.15433702 (Pople, rotated reference)



 RESULTS FOR STATE 6.2
 =====================

 Coefficient of reference function:   C(0) = 0.97201049 (fixed)   0.97313330 (relaxed)   0.97285701 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00172098   -0.00284258   -0.00491506
 Singles      0.00936014   -0.05266534   -0.05793770
 Pairs        0.04549787   -0.85718796   -0.85062162
 Total        1.05657900   -0.91269588   -0.91347437
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -258.19233808
 Nuclear energy                         0.00000000
 Kinetic energy                       179.40039614
 One electron energy                 -458.34872068
 Two electron energy                  199.24307949
 Virial quotient                       -1.44428690
 Correlation energy                    -0.91330310
 !MRCI STATE 6.2 Energy              -259.105641183277

 Properties without orbital relaxation:

 !MRCI STATE 6.2 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -259.15731496 (Davidson, fixed reference)
 Cluster corrected energies          -259.15676710 (Davidson, relaxed reference)
 Cluster corrected energies          -259.15731496 (Davidson, rotated reference)

 Cluster corrected energies          -259.15433702 (Pople, fixed reference)
 Cluster corrected energies          -259.15379686 (Pople, relaxed reference)
 Cluster corrected energies          -259.15433702 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1391.50       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      6799.21   6777.81      7.85      4.97      8.24
 REAL TIME  *      6924.68 SEC
 DISK USED  *         1.45 GB (local),       18.47 GB (total)
 SF USED    *        13.73 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -259.30120345  AU                              
 SETTING HLSDIAG(2)     =      -259.30120344  AU                              
 SETTING HLSDIAG(3)     =      -259.30120344  AU                              
 SETTING HLSDIAG(4)     =      -259.15731496  AU                              
 SETTING HLSDIAG(5)     =      -259.15731496  AU                              
 SETTING HLSDIAG(6)     =      -259.15731496  AU                              


         HLSDIAG
    -259.3012034
    -259.3012034
    -259.3012034
    -259.1573150
    -259.1573150
    -259.1573150
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=2  S= 0.5  NSTATE=   6

 Original energies:   -259.243877   -259.243877   -259.243877   -259.105641   -259.105641   -259.105641
 Replaced energies:   -259.301203   -259.301203   -259.301203   -259.157315   -259.157315   -259.157315



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -259.30120345

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.37    -298.46     112.74
                           -0.00      -1.30      72.45     -27.38      -0.00       0.02       0.00     307.13      -0.05       2.01

    2   2.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.37       0.00      72.45     -27.37
                            1.30       0.00     298.46    -112.74      -0.00      -1.99    -307.13      -0.00       1.35      -0.49

    3   3.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     298.46     -72.45      -0.00      -0.49
                          -72.45    -298.46       0.00      -1.93      -0.00     116.01       0.05      -1.35      -0.00      -0.01

    4   4.2  0.5  0.5       0.00       0.00       0.00   31579.87       0.00       0.00    -112.74      27.37       0.49       0.00
                           27.38     112.74       1.93      -0.00       0.00     -43.74      -2.01       0.49       0.01       0.00

    5   5.2  0.5  0.5       0.00       0.00       0.00       0.00   31579.87       0.00       0.51       0.02     116.03     -43.73
                            0.00       0.00       0.00      -0.00       0.00      -0.00     -27.37    -112.76       0.14      -0.78

    6   6.2  0.5  0.5       0.00       0.00       0.00       0.00       0.00   31579.87      -2.01       0.49       0.01      -0.00
                           -0.02       1.99    -116.01      43.74       0.00      -0.00     112.74     -27.37      -0.49       0.00

    7   1.2  0.5 -0.5      -0.00       0.37     298.46    -112.74       0.51      -2.01       0.00       0.00       0.00       0.00
                           -0.00     307.13      -0.05       2.01      27.37    -112.74       0.00       1.30     -72.45      27.38

    8   2.2  0.5 -0.5      -0.37       0.00     -72.45      27.37       0.02       0.49       0.00       0.00       0.00       0.00
                         -307.13       0.00       1.35      -0.49     112.76      27.37      -1.30      -0.00    -298.46     112.74

    9   3.2  0.5 -0.5    -298.46      72.45      -0.00       0.49     116.03       0.01       0.00       0.00       0.00       0.00
                            0.05      -1.35       0.00      -0.01      -0.14       0.49      72.45     298.46      -0.00       1.93

   10   4.2  0.5 -0.5     112.74     -27.37      -0.49       0.00     -43.73      -0.00       0.00       0.00       0.00   31579.87
                           -2.01       0.49       0.01      -0.00       0.78      -0.00     -27.38    -112.74      -1.93       0.00

   11   5.2  0.5 -0.5      -0.51      -0.02    -116.03      43.73      -0.00       0.78       0.00       0.00       0.00       0.00
                          -27.37    -112.76       0.14      -0.78      -0.00      43.73      -0.00      -0.00      -0.00       0.00

   12   6.2  0.5 -0.5       2.01      -0.49      -0.01       0.00      -0.78       0.00       0.00       0.00       0.00       0.00
                          112.74     -27.37      -0.49       0.00     -43.73      -0.00       0.02      -1.99     116.01     -43.74


   Nr   State  S   Sz       11         12

    1   1.2  0.5  0.5      -0.51       2.01
                           27.37    -112.74

    2   2.2  0.5  0.5      -0.02      -0.49
                          112.76      27.37

    3   3.2  0.5  0.5    -116.03      -0.01
                           -0.14       0.49

    4   4.2  0.5  0.5      43.73       0.00
                            0.78      -0.00

    5   5.2  0.5  0.5      -0.00      -0.78
                            0.00      43.73

    6   6.2  0.5  0.5       0.78       0.00
                          -43.73       0.00

    7   1.2  0.5 -0.5       0.00       0.00
                            0.00      -0.02

    8   2.2  0.5 -0.5       0.00       0.00
                            0.00       1.99

    9   3.2  0.5 -0.5       0.00       0.00
                            0.00    -116.01

   10   4.2  0.5 -0.5       0.00       0.00
                           -0.00      43.74

   11   5.2  0.5 -0.5   31579.87       0.00
                           -0.00       0.00

   12   6.2  0.5 -0.5       0.00   31579.87
                           -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -259.30400985    -0.00280640     -615.93      0.00000000        0.00      0.0000
     2  -259.30400985    -0.00280640     -615.93      0.00000000        0.00      0.0000
     3  -259.29980602     0.00139743      306.70      0.00420382      922.63      0.1144
     4  -259.29980602     0.00139743      306.70      0.00420382      922.63      0.1144
     5  -259.29980602     0.00139743      306.70      0.00420383      922.63      0.1144
     6  -259.29980602     0.00139743      306.70      0.00420383      922.63      0.1144
     7  -259.15770587     0.14349758    31494.08      0.14630397    32110.01      3.9811
     8  -259.15770587     0.14349758    31494.08      0.14630397    32110.01      3.9811
     9  -259.15711373     0.14408972    31624.04      0.14689612    32239.97      3.9972
    10  -259.15711373     0.14408972    31624.04      0.14689612    32239.97      3.9972
    11  -259.15711372     0.14408972    31624.04      0.14689612    32239.97      3.9972
    12  -259.15711372     0.14408972    31624.04      0.14689612    32239.97      3.9972


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.2  0.5  0.5   0.089366714   0.570377526   0.187065641   0.794597563  -0.016385569  -0.003029653  -0.001823072   0.003753307
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.2  0.5  0.5  -0.122067387   0.019125507   0.088278396  -0.019104844   0.010425144   0.383663982  -0.000407111  -0.000197749
                         0.556777691  -0.089709248  -0.372758038   0.089401785  -0.115779658   0.592323468  -0.003723405  -0.001828181

    3    3.2  0.5  0.5  -0.541557723   0.084851230   0.388702157  -0.091581400  -0.104451590   0.545923799   0.003625438   0.001760963
                        -0.096985216   0.153051711   0.067999134  -0.120032186  -0.174244212  -0.385805493  -0.000829416   0.000691434

    4    4.2  0.5  0.5   0.003898228  -0.000611574   0.001434454  -0.000337488  -0.000387613   0.001997981   0.502470561   0.244183688
                         0.000769863  -0.001117124   0.000275586  -0.000450335  -0.000638127  -0.001466846  -0.105907841   0.099993009

    5    5.2  0.5  0.5  -0.000852333  -0.003970747   0.000590266   0.002879024  -0.000066470  -0.000354799  -0.233955768   0.510075897
                         0.000946327  -0.000148272   0.000324734  -0.000076258   0.000103926  -0.000511661   0.122017827   0.059267308

    6    6.2  0.5  0.5   0.000769863  -0.001117131   0.000505256   0.000620200   0.000016773   0.001412120  -0.105907985   0.099994085
                        -0.003898224   0.000611581  -0.001337695   0.000314443  -0.000427525   0.002108540  -0.502469305  -0.244184254

    7    1.2  0.5 -0.5   0.557309015  -0.087319141   0.773627532  -0.182128837   0.002566905  -0.013882848  -0.003730668  -0.001812076
                         0.121396805  -0.019020444   0.181344227  -0.042692396  -0.001609283   0.008703642   0.000411617   0.000199932

    8    2.2  0.5 -0.5  -0.000406045   0.000768302   0.001802755  -0.000877273  -0.010434619   0.070332343  -0.000003937   0.000003682
                         0.091724420   0.570001100  -0.091402539  -0.383067697   0.705645988   0.092557952  -0.001838841   0.003745593

    9    3.2  0.5 -0.5   0.115482011   0.549791467  -0.116558421  -0.393962876  -0.667470895   0.004056847  -0.001674513   0.003694531
                        -0.131485598   0.020499829   0.095963604  -0.022505594  -0.036895487   0.203112584   0.000880384   0.000426820

   10    4.2  0.5 -0.5  -0.000835326  -0.003972766  -0.000431358  -0.001459492  -0.002471966   0.000010550  -0.231744839   0.511054484
                         0.000961363  -0.000077459   0.000361429  -0.000059060  -0.000181519   0.000746551   0.126168954   0.050164227

   11    5.2  0.5 -0.5  -0.003911327   0.000631392   0.002785640  -0.000648800   0.000028824  -0.000111521  -0.500499562  -0.245926036
                        -0.000700242   0.001106052   0.000731301   0.000181453  -0.000621972  -0.000052745   0.114848696  -0.095624453

   12    6.2  0.5 -0.5  -0.000961369   0.000077458   0.000675596  -0.000186632  -0.000076425   0.000241303  -0.126170085  -0.050164508
                        -0.000835334  -0.003972762  -0.000164602  -0.001417702   0.002536570   0.000353316  -0.231745283   0.511053252


   Nr   State  S   Sz        9            10            11            12

    1    1.2  0.5  0.5   0.000077950   0.000628066   0.000496453  -0.002916208
                         0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.2  0.5  0.5  -0.000658656   0.002324568   0.000950692   0.000644877
                         0.000152237   0.000026941   0.001383234   0.000238711

    3    3.2  0.5  0.5   0.000163706   0.000019249  -0.001009233  -0.000163290
                         0.000681607  -0.002640710   0.000799429  -0.000044279

    4    4.2  0.5  0.5  -0.047231194   0.005533676   0.276728168   0.047199768
                        -0.183236459   0.712756939  -0.209331925   0.013054265

    5    5.2  0.5  0.5  -0.062196587  -0.016701127  -0.070832389   0.805751748
                         0.010471628  -0.001299990   0.088985816   0.015148638

    6    6.2  0.5  0.5   0.167031471  -0.649690951  -0.276399636   0.017325381
                        -0.042981508   0.004781901  -0.366330089  -0.062401794

    7    1.2  0.5 -0.5   0.000122654  -0.000015223  -0.002328685  -0.000396434
                         0.000615973  -0.000076449   0.001755418   0.000298841

    8    2.2  0.5 -0.5   0.000480384  -0.000020678   0.000371262   0.000073483
                         0.002274549   0.000675705  -0.000578804   0.001676828

    9    3.2  0.5 -0.5  -0.002586106  -0.000700453  -0.000103738   0.001287123
                         0.000534580  -0.000027443   0.000133651   0.000030859

   10    4.2  0.5 -0.5   0.700113994   0.188932112   0.029832482  -0.346984161
                        -0.133766434   0.010537737  -0.038836250  -0.000581062

   11    5.2  0.5 -0.5  -0.004536498   0.001876300   0.634299786   0.110127152
                        -0.016125681   0.063044052  -0.497120851   0.028420296

   12    6.2  0.5 -0.5  -0.122187649   0.009534524   0.051397789   0.000200681
                        -0.638115501  -0.172209216   0.039400771  -0.458905697


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.2  0.5  0.5   0.799%  32.533%   3.499%  63.139%   0.027%   0.001%   0.000%   0.001%   0.000%   0.000%
    2    2.2  0.5  0.5  32.490%   0.841%  14.674%   0.836%   1.351%  49.805%   0.001%   0.000%   0.000%   0.001%
    3    3.2  0.5  0.5  30.269%   3.062%  15.571%   2.279%   4.127%  44.688%   0.001%   0.000%   0.000%   0.001%
    4    4.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%  26.369%   6.962%   3.581%  50.805%
    5    5.2  0.5  0.5   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   6.962%  26.369%   0.398%   0.028%
    6    6.2  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%  26.369%   6.962%   2.975%  42.212%
    7    1.2  0.5 -0.5  32.533%   0.799%  63.139%   3.499%   0.001%   0.027%   0.001%   0.000%   0.000%   0.000%
    8    2.2  0.5 -0.5   0.841%  32.490%   0.836%  14.674%  49.805%   1.351%   0.000%   0.001%   0.001%   0.000%
    9    3.2  0.5 -0.5   3.062%  30.269%   2.279%  15.571%  44.688%   4.127%   0.000%   0.001%   0.001%   0.000%
   10    4.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   6.962%  26.369%  50.805%   3.581%
   11    5.2  0.5 -0.5   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%  26.369%   6.962%   0.028%   0.398%
   12    6.2  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   6.962%  26.369%  42.212%   2.975%

   Nr   State  S   Sz      11       12

    1    1.2  0.5  0.5   0.000%   0.001%
    2    2.2  0.5  0.5   0.000%   0.000%
    3    3.2  0.5  0.5   0.000%   0.000%
    4    4.2  0.5  0.5  12.040%   0.240%
    5    5.2  0.5  0.5   1.294%  64.947%
    6    6.2  0.5  0.5  21.059%   0.419%
    7    1.2  0.5 -0.5   0.001%   0.000%
    8    2.2  0.5 -0.5   0.000%   0.000%
    9    3.2  0.5 -0.5   0.000%   0.000%
   10    4.2  0.5 -0.5   0.240%  12.040%
   11    5.2  0.5 -0.5  64.947%   1.294%
   12    6.2  0.5 -0.5   0.419%  21.059%


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
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     1391.50       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     15526.05   8726.81   6777.81      7.85      4.97      8.24
 REAL TIME  *     15800.97 SEC
 DISK USED  *         1.45 GB (local),       18.47 GB (total)
 SF USED    *        13.73 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -259.157113724399

              CI           MULTI         RHF-SCF
   -259.10564118   -258.19216681   -257.35638438
 **********************************************************************************************************************************
 Molpro calculation terminated
