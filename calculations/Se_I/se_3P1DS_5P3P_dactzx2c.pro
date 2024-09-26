
 Working directory              : /wrk/irikura/molpro.R3vopBA1I8/
 Global scratch directory       : /wrk/irikura/molpro.R3vopBA1I8/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.R3vopBA1I8/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Se SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector,basis;
 
 symmetry,xyz
 geometry={Se};
 
                                                                                 !basis=AWCVTZ-X2C
 basis={
 spdfg,se,AWCVTZ-X2C;C; spdf,1,even,nprim=1,ratio=3.0;
 }
 
 set,dkho=101
 
 NT=6
 NS=6
 NQ=3
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,8,6
     occ,9,12
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     wf,charge=0,sym=PAR,spin=4;state,NQ;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=PAR,spin=2;state,NT; save,5302.2}
 hlsdiag = energd4
 {ci;wf,sym=PAR,spin=0;state,NS; save,5102.2}
 hlsdiag(NT+1) = energd4
 {ci;wf,sym=PAR,spin=4;state,NQ; save,5502.2}
 hlsdiag(NT+NS+1) = energd4
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5302.2,5102.2,5502.2;print,vls=0,hls=0}                           !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.20 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Se SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Sep-24          TIME: 12:09:35  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING DKHO           =       101.00000000                                  
 SETTING NT             =         6.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING NQ             =         3.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry SE     S AWCVTZ-X2C           selected for orbital group  1
 Even tempered Se S diffuse               selected for group 1    nprim= 1    centre=  0.013    ratio= 3.000    dratio= 1.000
 Library entry SE     P AWCVTZ-X2C           selected for orbital group  1
 Even tempered Se P diffuse               selected for group 1    nprim= 1    centre=  0.010    ratio= 3.000    dratio= 1.000
 Library entry SE     D AWCVTZ-X2C           selected for orbital group  1
 Even tempered Se D diffuse               selected for group 1    nprim= 1    centre=  0.028    ratio= 3.000    dratio= 1.000
 Library entry SE     F AWCVTZ-X2C           selected for orbital group  1
 Even tempered Se F diffuse               selected for group 1    nprim= 1    centre=  0.063    ratio= 3.000    dratio= 1.000
 Library entry SE     G AWCVTZ-X2C           selected for orbital group  1


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

   1  SE     34.00    0.000000000    0.000000000    0.000000000


 BASIS DATA

   Nr Sym  Nuc  Type         Exponents   Contraction coefficients

    1.1 Ag    1  1s     9563600.000000     0.000159   -0.000051    0.000020   -0.000006    0.000000    0.000000
    2.1 Ag              1432100.000000     0.000429   -0.000139    0.000055   -0.000016    0.000000    0.000000
    3.1 Ag               325910.000000     0.001148   -0.000372    0.000147   -0.000043    0.000000    0.000000
    4.1 Ag                92312.000000     0.002903   -0.000942    0.000373   -0.000109    0.000000    0.000000
    5.1 Ag                30116.000000     0.007344   -0.002399    0.000950   -0.000279    0.000000    0.000000
    6.1 Ag                10872.000000     0.018393   -0.006057    0.002398   -0.000704    0.000000    0.000000
                           4240.100000     0.044997   -0.015170    0.006030   -0.001769    0.000000    0.000000
                           1758.400000     0.103527   -0.036260    0.014467   -0.004257    0.000000    0.000000
                            766.590000     0.208801   -0.080419    0.032547   -0.009567    0.000000    0.000000
                            348.430000     0.325713   -0.148693    0.061469   -0.018213    0.000000    0.000000
                            164.030000     0.312194   -0.198637    0.086551   -0.025636    0.000000    0.000000
                             79.142000     0.127556   -0.056097    0.024766   -0.007726    0.000000    0.000000
                             35.524000     0.010856    0.406897   -0.241840    0.076382    0.000000    0.000000
                             17.305000    -0.000316    0.569830   -0.507087    0.166520    0.000000    0.000000
                              8.378400     0.000151    0.181145   -0.070368    0.023148    0.000000    0.000000
                              3.740500    -0.000112    0.008208    0.712523   -0.317879    0.000000    0.000000
                              1.689000     0.000019    0.001375    0.524238   -0.410614    0.000000    0.000000
                              0.509270    -0.000011   -0.000268    0.034366    0.301317    1.000000    0.000000
                              0.255200     0.000008    0.000150   -0.009087    0.658712    0.000000    0.000000
                              0.106510    -0.000002   -0.000047    0.001909    0.278478    0.000000    1.000000
    7.1 Ag    1  1s           2.686400     1.000000
    8.1 Ag    1  1s           4.288800     1.000000
    9.1 Ag    1  1s           0.039201     1.000000
   10.1 Ag    1  1s           0.013067     1.000000
   11.1 Ag    1  3d0        361.850000     0.001708
                            108.550000     0.013624
                             41.433000     0.060307
                             17.579000     0.173271
                              7.862700     0.318215
                              3.518000     0.379882
                              1.534800     0.277302
                              0.608130     0.079195
                              0.222000     0.002306
   12.1 Ag    1  3d2-       361.850000     0.001708
                            108.550000     0.013624
                             41.433000     0.060307
                             17.579000     0.173271
                              7.862700     0.318215
                              3.518000     0.379882
                              1.534800     0.277302
                              0.608130     0.079195
                              0.222000     0.002306
   13.1 Ag    1  3d1+       361.850000     0.001708
                            108.550000     0.013624
                             41.433000     0.060307
                             17.579000     0.173271
                              7.862700     0.318215
                              3.518000     0.379882
                              1.534800     0.277302
                              0.608130     0.079195
                              0.222000     0.002306
   14.1 Ag    1  3d2+       361.850000     0.001708
                            108.550000     0.013624
                             41.433000     0.060307
                             17.579000     0.173271
                              7.862700     0.318215
                              3.518000     0.379882
                              1.534800     0.277302
                              0.608130     0.079195
                              0.222000     0.002306
   15.1 Ag    1  3d1-       361.850000     0.001708
                            108.550000     0.013624
                             41.433000     0.060307
                             17.579000     0.173271
                              7.862700     0.318215
                              3.518000     0.379882
                              1.534800     0.277302
                              0.608130     0.079195
                              0.222000     0.002306
   16.1 Ag    1  3d0        361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     1.000000
                              0.222000     0.000000
   17.1 Ag    1  3d2-       361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     1.000000
                              0.222000     0.000000
   18.1 Ag    1  3d1+       361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     1.000000
                              0.222000     0.000000
   19.1 Ag    1  3d2+       361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     1.000000
                              0.222000     0.000000
   20.1 Ag    1  3d1-       361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     1.000000
                              0.222000     0.000000
   21.1 Ag    1  3d0        361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     0.000000
                              0.222000     1.000000
   22.1 Ag    1  3d2-       361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     0.000000
                              0.222000     1.000000
   23.1 Ag    1  3d1+       361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     0.000000
                              0.222000     1.000000
   24.1 Ag    1  3d2+       361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     0.000000
                              0.222000     1.000000
   25.1 Ag    1  3d1-       361.850000     0.000000
                            108.550000     0.000000
                             41.433000     0.000000
                             17.579000     0.000000
                              7.862700     0.000000
                              3.518000     0.000000
                              1.534800     0.000000
                              0.608130     0.000000
                              0.222000     1.000000
   26.1 Ag    1  3d0          1.693100     1.000000
   27.1 Ag    1  3d2-         1.693100     1.000000
   28.1 Ag    1  3d1+         1.693100     1.000000
   29.1 Ag    1  3d2+         1.693100     1.000000
   30.1 Ag    1  3d1-         1.693100     1.000000
   31.1 Ag    1  3d0          4.454400     1.000000
   32.1 Ag    1  3d2-         4.454400     1.000000
   33.1 Ag    1  3d1+         4.454400     1.000000
   34.1 Ag    1  3d2+         4.454400     1.000000
   35.1 Ag    1  3d1-         4.454400     1.000000
   36.1 Ag    1  3d0          0.083700     1.000000
   37.1 Ag    1  3d2-         0.083700     1.000000
   38.1 Ag    1  3d1+         0.083700     1.000000
   39.1 Ag    1  3d2+         0.083700     1.000000
   40.1 Ag    1  3d1-         0.083700     1.000000
   41.1 Ag    1  3d0          0.027900     1.000000
   42.1 Ag    1  3d2-         0.027900     1.000000
   43.1 Ag    1  3d1+         0.027900     1.000000
   44.1 Ag    1  3d2+         0.027900     1.000000
   45.1 Ag    1  3d1-         0.027900     1.000000
   46.1 Ag    1  5g0          2.195200     1.000000
   47.1 Ag    1  5g2-         2.195200     1.000000
   48.1 Ag    1  5g1+         2.195200     1.000000
   49.1 Ag    1  5g4+         2.195200     1.000000
   50.1 Ag    1  5g1-         2.195200     1.000000
   51.1 Ag    1  5g2+         2.195200     1.000000
   52.1 Ag    1  5g4-         2.195200     1.000000
   53.1 Ag    1  5g3+         2.195200     1.000000
   54.1 Ag    1  5g3-         2.195200     1.000000
    1.2 Au    1  2px       8004.300000     0.000918
                           1896.900000     0.005104
                            614.710000     0.023877
                            233.500000     0.085882
                             97.856000     0.226523
                             43.514000     0.390772
                             20.063000     0.350322
                              9.112700     0.104018
                              4.106300     0.003584
                              1.794900     0.001723
                              0.624320    -0.000423
                              0.246150     0.000207
                              0.088917    -0.000068
    2.2 Au    1  2py       8004.300000     0.000918
                           1896.900000     0.005104
                            614.710000     0.023877
                            233.500000     0.085882
                             97.856000     0.226523
                             43.514000     0.390772
                             20.063000     0.350322
                              9.112700     0.104018
                              4.106300     0.003584
                              1.794900     0.001723
                              0.624320    -0.000423
                              0.246150     0.000207
                              0.088917    -0.000068
    3.2 Au    1  2pz       8004.300000     0.000918
                           1896.900000     0.005104
                            614.710000     0.023877
                            233.500000     0.085882
                             97.856000     0.226523
                             43.514000     0.390772
                             20.063000     0.350322
                              9.112700     0.104018
                              4.106300     0.003584
                              1.794900     0.001723
                              0.624320    -0.000423
                              0.246150     0.000207
                              0.088917    -0.000068
    4.2 Au    1  2px       8004.300000    -0.000366
                           1896.900000    -0.002048
                            614.710000    -0.009662
                            233.500000    -0.035766
                             97.856000    -0.098322
                             43.514000    -0.181762
                             20.063000    -0.144687
                              9.112700     0.203270
                              4.106300     0.542051
                              1.794900     0.376196
                              0.624320     0.042642
                              0.246150    -0.004662
                              0.088917     0.001591
    5.2 Au    1  2py       8004.300000    -0.000366
                           1896.900000    -0.002048
                            614.710000    -0.009662
                            233.500000    -0.035766
                             97.856000    -0.098322
                             43.514000    -0.181762
                             20.063000    -0.144687
                              9.112700     0.203270
                              4.106300     0.542051
                              1.794900     0.376196
                              0.624320     0.042642
                              0.246150    -0.004662
                              0.088917     0.001591
    6.2 Au    1  2pz       8004.300000    -0.000366
                           1896.900000    -0.002048
                            614.710000    -0.009662
                            233.500000    -0.035766
                             97.856000    -0.098322
                             43.514000    -0.181762
                             20.063000    -0.144687
                              9.112700     0.203270
                              4.106300     0.542051
                              1.794900     0.376196
                              0.624320     0.042642
                              0.246150    -0.004662
                              0.088917     0.001591
    7.2 Au    1  2px       8004.300000     0.000088
                           1896.900000     0.000496
                            614.710000     0.002331
                            233.500000     0.008703
                             97.856000     0.023901
                             43.514000     0.045026
                             20.063000     0.034063
                              9.112700    -0.060831
                              4.106300    -0.171599
                              1.794900    -0.124361
                              0.624320     0.269402
                              0.246150     0.574345
                              0.088917     0.326319
    8.2 Au    1  2py       8004.300000     0.000088
                           1896.900000     0.000496
                            614.710000     0.002331
                            233.500000     0.008703
                             97.856000     0.023901
                             43.514000     0.045026
                             20.063000     0.034063
                              9.112700    -0.060831
                              4.106300    -0.171599
                              1.794900    -0.124361
                              0.624320     0.269402
                              0.246150     0.574345
                              0.088917     0.326319
    9.2 Au    1  2pz       8004.300000     0.000088
                           1896.900000     0.000496
                            614.710000     0.002331
                            233.500000     0.008703
                             97.856000     0.023901
                             43.514000     0.045026
                             20.063000     0.034063
                              9.112700    -0.060831
                              4.106300    -0.171599
                              1.794900    -0.124361
                              0.624320     0.269402
                              0.246150     0.574345
                              0.088917     0.326319
   10.2 Au    1  2px       8004.300000     0.000000
                           1896.900000     0.000000
                            614.710000     0.000000
                            233.500000     0.000000
                             97.856000     0.000000
                             43.514000     0.000000
                             20.063000     0.000000
                              9.112700     0.000000
                              4.106300     0.000000
                              1.794900     0.000000
                              0.624320     1.000000
                              0.246150     0.000000
                              0.088917     0.000000
   11.2 Au    1  2py       8004.300000     0.000000
                           1896.900000     0.000000
                            614.710000     0.000000
                            233.500000     0.000000
                             97.856000     0.000000
                             43.514000     0.000000
                             20.063000     0.000000
                              9.112700     0.000000
                              4.106300     0.000000
                              1.794900     0.000000
                              0.624320     1.000000
                              0.246150     0.000000
                              0.088917     0.000000
   12.2 Au    1  2pz       8004.300000     0.000000
                           1896.900000     0.000000
                            614.710000     0.000000
                            233.500000     0.000000
                             97.856000     0.000000
                             43.514000     0.000000
                             20.063000     0.000000
                              9.112700     0.000000
                              4.106300     0.000000
                              1.794900     0.000000
                              0.624320     1.000000
                              0.246150     0.000000
                              0.088917     0.000000
   13.2 Au    1  2px       8004.300000     0.000000
                           1896.900000     0.000000
                            614.710000     0.000000
                            233.500000     0.000000
                             97.856000     0.000000
                             43.514000     0.000000
                             20.063000     0.000000
                              9.112700     0.000000
                              4.106300     0.000000
                              1.794900     0.000000
                              0.624320     0.000000
                              0.246150     0.000000
                              0.088917     1.000000
   14.2 Au    1  2py       8004.300000     0.000000
                           1896.900000     0.000000
                            614.710000     0.000000
                            233.500000     0.000000
                             97.856000     0.000000
                             43.514000     0.000000
                             20.063000     0.000000
                              9.112700     0.000000
                              4.106300     0.000000
                              1.794900     0.000000
                              0.624320     0.000000
                              0.246150     0.000000
                              0.088917     1.000000
   15.2 Au    1  2pz       8004.300000     0.000000
                           1896.900000     0.000000
                            614.710000     0.000000
                            233.500000     0.000000
                             97.856000     0.000000
                             43.514000     0.000000
                             20.063000     0.000000
                              9.112700     0.000000
                              4.106300     0.000000
                              1.794900     0.000000
                              0.624320     0.000000
                              0.246150     0.000000
                              0.088917     1.000000
   16.2 Au    1  2px          1.711500     1.000000
   17.2 Au    1  2py          1.711500     1.000000
   18.2 Au    1  2pz          1.711500     1.000000
   19.2 Au    1  2px          3.777200     1.000000
   20.2 Au    1  2py          3.777200     1.000000
   21.2 Au    1  2pz          3.777200     1.000000
   22.2 Au    1  2px          0.030251     1.000000
   23.2 Au    1  2py          0.030251     1.000000
   24.2 Au    1  2pz          0.030251     1.000000
   25.2 Au    1  2px          0.010084     1.000000
   26.2 Au    1  2py          0.010084     1.000000
   27.2 Au    1  2pz          0.010084     1.000000
   28.2 Au    1  4f1+         0.462000     1.000000
   29.2 Au    1  4f1-         0.462000     1.000000
   30.2 Au    1  4f0          0.462000     1.000000
   31.2 Au    1  4f3+         0.462000     1.000000
   32.2 Au    1  4f2-         0.462000     1.000000
   33.2 Au    1  4f3-         0.462000     1.000000
   34.2 Au    1  4f2+         0.462000     1.000000
   35.2 Au    1  4f1+         1.808400     1.000000
   36.2 Au    1  4f1-         1.808400     1.000000
   37.2 Au    1  4f0          1.808400     1.000000
   38.2 Au    1  4f3+         1.808400     1.000000
   39.2 Au    1  4f2-         1.808400     1.000000
   40.2 Au    1  4f3-         1.808400     1.000000
   41.2 Au    1  4f2+         1.808400     1.000000
   42.2 Au    1  4f1+         6.755200     1.000000
   43.2 Au    1  4f1-         6.755200     1.000000
   44.2 Au    1  4f0          6.755200     1.000000
   45.2 Au    1  4f3+         6.755200     1.000000
   46.2 Au    1  4f2-         6.755200     1.000000
   47.2 Au    1  4f3-         6.755200     1.000000
   48.2 Au    1  4f2+         6.755200     1.000000
   49.2 Au    1  4f1+         0.188000     1.000000
   50.2 Au    1  4f1-         0.188000     1.000000
   51.2 Au    1  4f0          0.188000     1.000000
   52.2 Au    1  4f3+         0.188000     1.000000
   53.2 Au    1  4f2-         0.188000     1.000000
   54.2 Au    1  4f3-         0.188000     1.000000
   55.2 Au    1  4f2+         0.188000     1.000000
   56.2 Au    1  4f1+         0.062667     1.000000
   57.2 Au    1  4f1-         0.062667     1.000000
   58.2 Au    1  4f0          0.062667     1.000000
   59.2 Au    1  4f3+         0.062667     1.000000
   60.2 Au    1  4f2-         0.062667     1.000000
   61.2 Au    1  4f3-         0.062667     1.000000
   62.2 Au    1  4f2+         0.062667     1.000000

 NUCLEAR CHARGE:                   34
 NUMBER OF PRIMITIVE AOS:         218
 NUMBER OF SYMMETRY AOS:          184
 NUMBER OF CONTRACTIONS:          116   (   54Ag  +   62Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     27.787 MB (compressed) written to integral file ( 14.5%)

     Node minimum: 1.573 MB, node maximum: 3.670 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     971658.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     971658      RECORD LENGTH: 524288

 Memory used in sort:       1.53 MW

 SORT1 READ    23841670. AND WROTE      189023. INTEGRALS IN      1 RECORDS. CPU TIME:     0.13 SEC, REAL TIME:     0.13 SEC
 SORT2 READ     2334302. AND WROTE    11712051. INTEGRALS IN    108 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.04 SEC

 Node minimum:      971088.  Node maximum:      978696. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 7 8 91011  12131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.118E-03 0.212E-02 0.146E-01 0.437E-01 0.437E-01 0.437E-01 0.437E-01 0.437E-01
         2 0.409E-02 0.409E-02 0.409E-02 0.130E-01 0.130E-01 0.130E-01 0.701E-01 0.701E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.56      1.20
 REAL TIME  *         2.38 SEC
 DISK USED  *        29.56 MB (local),      415.95 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock


   Atom=SE basis=MINAO             lmin=0  lmax=2

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   9   6

 NELEC=   33   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2427.78623588   -2427.78623588     0.00D+00     0.14D+00     0     0       0.01      0.02    start
   2    -2427.84027257      -0.05403669     0.90D-02     0.12D-01     1     0       0.00      0.02    diag2
   3    -2427.84257785      -0.00230528     0.34D-02     0.26D-02     2     0       0.01      0.03    diag2
   4    -2427.84297946      -0.00040161     0.71D-03     0.17D-02     3     0       0.01      0.04    diag2
   5    -2427.84300574      -0.00002628     0.25D-03     0.38D-03     4     0       0.01      0.05    diag2
   6    -2427.84300619      -0.00000044     0.19D-04     0.51D-04     5     0       0.00      0.05    diag2
   7    -2427.84300620      -0.00000001     0.33D-05     0.10D-04     6     0       0.01      0.06    diag2
   8    -2427.84300620      -0.00000000     0.19D-06     0.84D-06     7     0       0.01      0.07    fixocc
   9    -2427.84300620      -0.00000000     0.26D-07     0.59D-07     0     0       0.01      0.08    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2427.843006202486
  RHF One-electron energy           -3366.801857926372
  RHF Two-electron energy             938.958851723886
  RHF Kinetic energy                 2588.160433244912
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.938057384317

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -468.48510     1  1  s    0.99999
    2.1     2.00000   -62.72198     1  2  s    0.99982
    3.1     2.00000    -9.59421     1  3  s    0.99883
    4.1     2.00000    -2.97354     1  1  d1-  0.99945
    5.1     2.00000    -2.97354     1  1  d1+  0.99940
    6.1     2.00000    -2.97354     1  1  d2-  1.00020
    7.1     2.00000    -2.97354     1  1  d2+  1.00026
    8.1     2.00000    -2.97354     1  1  d0   1.00047
    9.1     2.00000    -1.19172     1  4  s    1.07872
    1.2     2.00000   -55.03338     1  1  py   0.99651
    2.2     2.00000   -55.03338     1  1  pz   0.99651
    3.2     2.00000   -55.03338     1  1  px   0.99994
    4.2     2.00000    -7.10048     1  2  pz   0.99940
    5.2     2.00000    -7.10048     1  2  py   0.99940
    6.2     2.00000    -7.10048     1  2  px   0.99940
    7.2     1.00000    -0.78651     1  3  pz   1.14477
    8.2     1.00000    -0.78651     1  3  py   1.14477
    9.2     1.00000    -0.78651     1  3  px   1.14477


 HOMO      9.2    -0.786510 =     -21.4020eV
 LUMO     10.1    -0.126471 =      -3.4415eV
 LUMO-HOMO         0.660039 =      17.9606eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.60       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         1.71      0.16      1.20
 REAL TIME  *         3.40 SEC
 DISK USED  *        30.74 MB (local),      430.10 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:      95 (   45   50)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             294   (345 determinants, 735 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:             280   (625 determinants, 1225 intermediate states)

 State symmetry 3

 Number of active electrons:   6    Spin symmetry=Quintet   Space symmetry=1
 Number of states:             3
 Number of CSFs:              50   (51 determinants, 147 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.595D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.615D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.339D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.294D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.426D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 3 5 2 1 1   3 5 4 6 2 1 2 3 5 4   6 1 2 3 5 6 4 2 3 5   6 4 1 2 3 5 6 411 9
                                        712 814151013 1 6 4   5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.767D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.767D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.428D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.428D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.181D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.230D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.691D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.818D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.818D-04 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 3 2 1 3   2 1 3 2 1 7 910 8 6   5 4 3 2 1 6 4 5 9 7  10 8 3 2 1 9 7 5 4 8
                                       10 6 6 4 5 9 7 810 3   2 1 6 4 5 7 9 810 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.06667   0.06667   0.06667   0.06667   0.06667   0.06667
 Weight factors for state symmetry  2:    0.06667   0.06667   0.06667   0.06667   0.06667   0.06667
 Weight factors for state symmetry  3:    0.06667   0.06667   0.06667
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    7022
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   19    0  -2428.01868613   -2428.03082510   -0.01213898    0.13960975 0.00012853 0.00009336  0.19E+00      1.17
   2    7   25    0  -2428.03098592   -2428.03099237   -0.00000644    0.00349388 0.00000212 0.00000139  0.37E-02      2.82
   3    8   27    0  -2428.03099237   -2428.03099237   -0.00000000    0.00000289 0.00000001 0.00000002  0.15E-04      4.95

 CONVERGENCE REACHED!  Final gradient:    0.00000001 ( 0.95E-08)
                       Final energy:  -2428.03099237
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2428.149454852548
 Nuclear energy                                  0.00000000
 Kinetic energy                               2589.00455037
 One electron energy                         -3380.58198437
 Two electron energy                           952.43252951
 Virial ratio                                    1.93786991
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2428.149454852397
 Nuclear energy                                  0.00000000
 Kinetic energy                               2589.00455039
 One electron energy                         -3380.58198441
 Two electron energy                           952.43252956
 Virial ratio                                    1.93786991
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2428.149454852172
 Nuclear energy                                  0.00000000
 Kinetic energy                               2589.00455040
 One electron energy                         -3380.58198446
 Two electron energy                           952.43252960
 Virial ratio                                    1.93786991
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -2427.904677864161
 Nuclear energy                                  0.00000000
 Kinetic energy                               2587.50847946
 One electron energy                         -3370.14890860
 Two electron energy                           942.24423074
 Virial ratio                                    1.93831757
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -2427.904677862404
 Nuclear energy                                  0.00000000
 Kinetic energy                               2587.50847950
 One electron energy                         -3370.14890881
 Two electron energy                           942.24423095
 Virial ratio                                    1.93831757
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -2427.904677860623
 Nuclear energy                                  0.00000000
 Kinetic energy                               2587.50847953
 One electron energy                         -3370.14890901
 Two electron energy                           942.24423115
 Virial ratio                                    1.93831757
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2428.099484103206
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.94671154
 One electron energy                         -3380.37092780
 Two electron energy                           952.27144370
 Virial ratio                                    1.93787156
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2428.099484103180
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.94671154
 One electron energy                         -3380.37092780
 Two electron energy                           952.27144370
 Virial ratio                                    1.93787156
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2428.099484103117
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.94671154
 One electron energy                         -3380.37092783
 Two electron energy                           952.27144373
 Virial ratio                                    1.93787156
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2428.099484102976
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.94671155
 One electron energy                         -3380.37092786
 Two electron energy                           952.27144375
 Virial ratio                                    1.93787156
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2428.099484102964
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.94671155
 One electron energy                         -3380.37092786
 Two electron energy                           952.27144376
 Virial ratio                                    1.93787156
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2428.054941754478
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.81998250
 One electron energy                         -3379.91763779
 Two electron energy                           951.86269603
 Virial ratio                                    1.93790026
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Quintet
 =============================
 !MCSCF STATE 1.1 Quintet Energy             -2427.916708384068
 Nuclear energy                                  0.00000000
 Kinetic energy                               2587.35082291
 One electron energy                         -3369.57391169
 Two electron energy                           941.65720331
 Virial ratio                                    1.93837940
 
 !MCSCF STATE 1.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quintet
 =============================
 !MCSCF STATE 2.1 Quintet Energy             -2427.916708383592
 Nuclear energy                                  0.00000000
 Kinetic energy                               2587.35082293
 One electron energy                         -3369.57391185
 Two electron energy                           941.65720347
 Virial ratio                                    1.93837940
 
 !MCSCF STATE 2.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quintet
 =============================
 !MCSCF STATE 3.1 Quintet Energy             -2427.916708383078
 Nuclear energy                                  0.00000000
 Kinetic energy                               2587.35082295
 One electron energy                         -3369.57391201
 Two electron energy                           941.65720363
 Virial ratio                                    1.93837940
 
 !MCSCF STATE 3.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999997
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999999997321
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000000002690
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.000000000002
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.999999999999
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.091778221475
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000016004
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000046117
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999935072
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.908221781333
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Quintet|LXLX|1.1 Quintet>     0.000000000000
 !MCSCF expec      <2.1 Quintet|LXLX|2.1 Quintet>     1.000000000000
 !MCSCF expec      <3.1 Quintet|LXLX|3.1 Quintet>     0.999999999990
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000031429
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999964325
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999999999989
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000000
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999999978
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.000000000020
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.472779592367
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     3.999999877006
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000104394
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     0.999999980829
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.527220445405
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Quintet|LYLY|1.1 Quintet>     1.000000000000
 !MCSCF expec      <2.1 Quintet|LYLY|2.1 Quintet>     0.999999999950
 !MCSCF expec      <3.1 Quintet|LYLY|3.1 Quintet>     0.000000000051
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.999999968574
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000038354
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999997321
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999999999998
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.000000000023
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.999999999980
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     2.435442186159
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000106991
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999849489
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000084099
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.564557773263
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Quintet|LZLZ|1.1 Quintet>     1.000000000000
 !MCSCF expec      <2.1 Quintet|LZLZ|2.1 Quintet>     0.000000000050
 !MCSCF expec      <3.1 Quintet|LZLZ|3.1 Quintet>     0.999999999959
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     2.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     2.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Quintet|L**2|1.1 Quintet>     2.000000000000
 !MCSCF expec      <2.1 Quintet|L**2|2.1 Quintet>     2.000000000000
 !MCSCF expec      <3.1 Quintet|L**2|3.1 Quintet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 6 3 5 2 1 1   4 6 5 3 2 1 2 5 3 4   6 1 2 5 3 4 6 2 5 3   4 6 1 2 4 3 5 6 911
                                        712 814151013 1 4 6   3 5 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 2   3 1 2 3 1 7 9 6 410   8 5 2 3 1 4 6 9 7 5   810 3 2 1 9 7 4 510
                                        8 6 4 6 5 9 7 810 3   1 2 6 4 5 7 9 810 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -468.20277     1  1  s    0.99999
    2.1     2.00000   -62.44075     1  2  s    0.99981
    3.1     2.00000    -9.31343     1  3  s    0.99870
    4.1     2.00000    -2.69346     1  1  d1+  1.00018
    5.1     2.00000    -2.69346     1  1  d1-  1.00018
    6.1     2.00000    -2.69346     1  1  d2-  1.00018
    7.1     2.00000    -2.69346     1  1  d2+  1.00018
    8.1     2.00000    -2.69346     1  1  d0   1.00018
    9.1     1.99524    -0.93729     1  4  s    1.03337
    1.2     2.00000   -54.75241     1  1  pz   0.99994
    2.2     2.00000   -54.75241     1  1  py   0.99994
    3.2     2.00000   -54.75241     1  1  px   0.99994
    4.2     2.00000    -6.82067     1  2  pz   0.99949
    5.2     2.00000    -6.82067     1  2  py   0.99949
    6.2     2.00000    -6.82067     1  2  px   0.99949
    7.2     1.19898    -0.31440     1  3  px   1.04548
    8.2     1.19898    -0.31440     1  3  py   1.04548
    9.2     1.19898    -0.31440     1  3  pz   1.04548
   10.2     0.13594     0.04512     1  3  py  -0.40056    1  8  py   0.66295    1  9  py   0.47540
   11.2     0.13594     0.04512     1  3  pz  -0.40056    1  8  pz   0.66295    1  9  pz   0.47540
   12.2     0.13594     0.04512     1  3  px  -0.40056    1  8  px   0.66295    1  9  px   0.47540
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa000       0.00000186     -0.00005159      0.99681697     -0.06984858     -0.00000011     -0.00000000
 2 a2a000       0.99681695      0.00017671     -0.00000185     -0.00000000     -0.00000033      0.06984858
 2 aa2000      -0.00017671      0.99681695      0.00005159      0.00000011     -0.06984858     -0.00000033
 2 aaa00b       0.00000011     -0.00000316      0.06096043      0.84775726      0.00000131      0.00000003
 2 aaa0b0      -0.00001081      0.06096043      0.00000316     -0.00000131      0.84775726      0.00000396
 2 aaab00      -0.06096044     -0.00001081      0.00000011     -0.00000003     -0.00000396      0.84775726
 2 aaba00       0.01691545      0.00000300     -0.00000003      0.00000001      0.00000149     -0.31936777
 2 baaa00       0.01691545      0.00000300     -0.00000003      0.00000001      0.00000149     -0.31936777
 2 aba0a0       0.00000300     -0.01691545     -0.00000088      0.00000049     -0.31936776     -0.00000149
 2 baa0a0       0.00000300     -0.01691545     -0.00000088      0.00000049     -0.31936776     -0.00000149
 2 aba00a      -0.00000003      0.00000088     -0.01691545     -0.31936776     -0.00000049     -0.00000001
 2 aab00a      -0.00000003      0.00000088     -0.01691545     -0.31936776     -0.00000049     -0.00000001
 2 baa00a      -0.00000005      0.00000140     -0.02712954     -0.20902175     -0.00000032     -0.00000001
 2 aab0a0       0.00000481     -0.02712954     -0.00000140      0.00000032     -0.20902174     -0.00000098
 2 abaa00       0.02712954      0.00000481     -0.00000005      0.00000001      0.00000098     -0.20902173
 2 a200a0       0.00343511      0.00000061     -0.00000001     -0.00000000     -0.00000041      0.08780925
 2 a02a00      -0.00000061      0.00343511      0.00000018      0.00000014     -0.08780925     -0.00000041
 2 02a00a      -0.00343511     -0.00000061      0.00000001      0.00000000      0.00000041     -0.08780925
 2 20aa00      -0.00000001      0.00000018     -0.00343511      0.08780925      0.00000014      0.00000000
 2 0a200a       0.00000061     -0.00343511     -0.00000018     -0.00000014      0.08780924      0.00000041
 2 2a00a0       0.00000001     -0.00000018      0.00343511     -0.08780924     -0.00000014     -0.00000000
 2 a0a200      -0.01607417     -0.00000285      0.00000003     -0.00000000     -0.00000033      0.07056457
 2 aa0020       0.00000285     -0.01607417     -0.00000083      0.00000011     -0.07056457     -0.00000033
 2 0aa002      -0.00000003      0.00000083     -0.01607417     -0.07056456     -0.00000011     -0.00000000
 
 Energy:    -2428.14945485  -2428.14945485  -2428.14945485  -2427.90467786  -2427.90467786  -2427.90467786
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 022000       0.80441049      0.00001510     -0.00003855      0.00002971     -0.12327015      0.56561298
 2 202000      -0.29545016     -0.00000383      0.00004816     -0.00022722      0.75827496      0.56561298
 2 a2b000      -0.00001348      0.70477216      0.00013287      0.00005191     -0.00000169      0.00000000
 2 b2a000       0.00001348     -0.70477216     -0.00013287     -0.00005191      0.00000169     -0.00000000
 2 ba2000      -0.00002863      0.00013288     -0.70477216     -0.00008469      0.00003359      0.00000000
 2 ab2000       0.00002863     -0.00013288      0.70477216      0.00008469     -0.00003359     -0.00000000
 2 2ba000      -0.00000673      0.00005189      0.00008469     -0.70477214     -0.00021381     -0.00000000
 2 2ab000       0.00000673     -0.00005189     -0.00008469      0.70477214      0.00021381      0.00000000
 2 220000      -0.50896033     -0.00001127     -0.00000961      0.00019751     -0.63500481      0.56561298
 0 222000      -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.17352906
 
 Energy:    -2428.09948410  -2428.09948410  -2428.09948410  -2428.09948410  -2428.09948410  -2428.05494175
 
 
 CI Coefficients of symmetry 1 (Quintet)
 =======================================
 
 2 aaaa00       0.00000000     -0.00000703      0.99590207
 2 aaa0a0      -0.00000000      0.99590207      0.00000703
 2 aaa00a       0.99590207      0.00000000     -0.00000000
 2 a0aa0a       0.06337676      0.00000000      0.00000000
 2 a0aaa0      -0.00000000      0.06337676      0.00000045
 2 aa00aa      -0.06337675     -0.00000000      0.00000000
 2 aa0aa0       0.00000000     -0.00000045      0.06337675
 2 0aa0aa       0.00000000      0.06337675      0.00000045
 2 0aaa0a      -0.00000000     -0.00000045      0.06337675
 
 Energy:    -2427.91670838  -2427.91670838  -2427.91670838
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.93       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         6.04      4.32      0.16      1.20
 REAL TIME  *         8.99 SEC
 DISK USED  *        48.34 MB (local),      641.37 MB (total)
 SF USED    *        45.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2428.149455   2.0
    -2428.149455   2.0
    -2428.149455   2.0
    -2427.904678   2.0
    -2427.904678   2.0
    -2427.904678   2.0
    -2428.099484   6.0
    -2428.099484   6.0
    -2428.099484   6.0
    -2428.099484   6.0
    -2428.099484   6.0
    -2428.054942   0.0
    -2427.916708   2.0
    -2427.916708   2.0
    -2427.916708   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 34
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      196 conf      294 CSFs
 N elec internal:    19609 conf    81480 CSFs
 N-1 el internal:    20264 conf   153948 CSFs
 N-2 el internal:    11240 conf   124860 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      95 (  45  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.09 sec, npass=  1  Memory used:   1.17 MW


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.14945485
     2     -2428.14945485
     3     -2428.14945485
     4     -2427.90467786
     5     -2427.90467786
     6     -2427.90467786

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1446D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2032D-06

 Number of blocks in overlap matrix:   562   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    1496
 Number of N-1 electron functions:  153948

 Number of internal configurations:                40740
 Number of singly external configurations:       7312890
 Number of doubly external configurations:       3378195
 Total number of contracted configurations:     10731825
 Total number of uncontracted configurations:  288034650

 Diagonal Coupling coefficients finished.               Storage:  25198712 words, CPU-Time:     52.29 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2646434 words, CPU-time:      0.15 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.14945485     0.00000000    -0.93386560  0.39D-01  0.61D-01    59.96
    1     2     2     1.00000000     0.00000000 -2428.14945485     0.00000000    -0.93420465  0.39D-01  0.61D-01    59.96
    1     3     3     1.00000000     0.00000000 -2428.14945485     0.00000000    -0.93382543  0.38D-01  0.61D-01    59.96
    1     4     4     1.00000000     0.00000000 -2427.90467786    -0.00000000    -0.91637725  0.48D-01  0.57D-01    59.96
    1     5     5     1.00000000     0.00000000 -2427.90467786     0.00000000    -0.91640276  0.48D-01  0.57D-01    59.96
    1     6     6     1.00000000     0.00000000 -2427.90467786    -0.00000000    -0.91644258  0.48D-01  0.57D-01    59.96
    2     1     1     1.06776014    -0.77149114 -2428.92094599    -0.77149114    -0.01870988  0.29D-02  0.11D-02   330.91
    2     2     2     1.06784867    -0.77136424 -2428.92081910    -0.77136424    -0.01881672  0.29D-02  0.11D-02   330.91
    2     3     3     1.06806540    -0.77126318 -2428.92071803    -0.77126318    -0.01893049  0.30D-02  0.11D-02   330.91
    2     4     4     1.07119567    -0.75488783 -2428.65956570    -0.75488783    -0.01694728  0.33D-02  0.73D-03   330.91
    2     5     5     1.07119754    -0.75488311 -2428.65956097    -0.75488311    -0.01695291  0.33D-02  0.73D-03   330.91
    2     6     6     1.07122146    -0.75487252 -2428.65955038    -0.75487252    -0.01696312  0.33D-02  0.73D-03   330.91
    3     1     1     1.06186535    -0.78990920 -2428.93936405    -0.01841806    -0.00070857  0.36D-04  0.10D-03   602.39
    3     2     2     1.06183297    -0.78990148 -2428.93935634    -0.01853724    -0.00071425  0.37D-04  0.10D-03   602.39
    3     3     3     1.06182891    -0.78989895 -2428.93935380    -0.01863577    -0.00071573  0.36D-04  0.10D-03   602.39
    3     4     4     1.06120492    -0.77096693 -2428.67564479    -0.01607909    -0.00053626  0.67D-04  0.49D-04   602.39
    3     5     5     1.06120243    -0.77096685 -2428.67564471    -0.01608374    -0.00053609  0.67D-04  0.49D-04   602.39
    3     6     6     1.06120176    -0.77096683 -2428.67564469    -0.01609431    -0.00053601  0.67D-04  0.49D-04   602.39
    4     1     1     1.06312284    -0.79079135 -2428.94024620    -0.00088215    -0.00007554  0.42D-05  0.10D-04   872.94
    4     2     2     1.06311635    -0.79079130 -2428.94024615    -0.00088982    -0.00007565  0.42D-05  0.10D-04   872.94
    4     3     3     1.06311479    -0.79079109 -2428.94024594    -0.00089214    -0.00007602  0.42D-05  0.10D-04   872.94
    4     4     4     1.06048163    -0.77154800 -2428.67622587    -0.00058108    -0.00005286  0.31D-05  0.86D-05   872.94
    4     5     5     1.06048107    -0.77154779 -2428.67622565    -0.00058094    -0.00005290  0.31D-05  0.86D-05   872.94
    4     6     6     1.06048027    -0.77154763 -2428.67622549    -0.00058080    -0.00005290  0.31D-05  0.86D-05   872.94
    5     1     1     1.06393389    -0.79089026 -2428.94034512    -0.00009891    -0.00000930  0.65D-06  0.98D-06  1142.91
    5     2     2     1.06393578    -0.79089021 -2428.94034506    -0.00009890    -0.00000932  0.65D-06  0.98D-06  1142.91
    5     3     3     1.06393456    -0.79089015 -2428.94034501    -0.00009906    -0.00000933  0.64D-06  0.98D-06  1142.91
    5     4     4     1.06079392    -0.77162650 -2428.67630437    -0.00007850    -0.00001085  0.59D-06  0.13D-05  1142.91
    5     5     5     1.06079391    -0.77162635 -2428.67630421    -0.00007856    -0.00001086  0.59D-06  0.13D-05  1142.91
    5     6     6     1.06079397    -0.77162619 -2428.67630405    -0.00007857    -0.00001086  0.59D-06  0.13D-05  1142.91
    6     1     1     1.06394918    -0.79090104 -2428.94035589    -0.00001078    -0.00000101  0.43D-07  0.12D-06  1413.60
    6     2     2     1.06394940    -0.79090101 -2428.94035587    -0.00001081    -0.00000101  0.44D-07  0.12D-06  1413.60
    6     3     3     1.06394977    -0.79090099 -2428.94035584    -0.00001083    -0.00000102  0.43D-07  0.13D-06  1413.60
    6     4     4     1.06087852    -0.77164109 -2428.67631896    -0.00001459    -0.00000157  0.90D-07  0.20D-06  1413.60
    6     5     5     1.06087829    -0.77164095 -2428.67631881    -0.00001460    -0.00000157  0.90D-07  0.20D-06  1413.60
    6     6     6     1.06087806    -0.77164080 -2428.67631866    -0.00001460    -0.00000157  0.90D-07  0.20D-06  1413.60
    7     1     1     1.06395642    -0.79090225 -2428.94035710    -0.00000121    -0.00000015  0.69D-08  0.18D-07  1685.41
    7     2     2     1.06395658    -0.79090222 -2428.94035707    -0.00000121    -0.00000015  0.69D-08  0.18D-07  1685.41
    7     3     3     1.06395635    -0.79090220 -2428.94035705    -0.00000121    -0.00000015  0.69D-08  0.18D-07  1685.41
    7     4     4     1.06087320    -0.77164291 -2428.67632078    -0.00000182    -0.00000029  0.18D-07  0.39D-07  1685.41
    7     5     5     1.06087299    -0.77164276 -2428.67632063    -0.00000182    -0.00000029  0.18D-07  0.39D-07  1685.41
    7     6     6     1.06087280    -0.77164261 -2428.67632047    -0.00000182    -0.00000029  0.19D-07  0.39D-07  1685.41
    8     1     1     1.06396700    -0.79090243 -2428.94035728    -0.00000018    -0.00000002  0.15D-08  0.25D-08  1957.47
    8     2     2     1.06396691    -0.79090240 -2428.94035725    -0.00000018    -0.00000002  0.15D-08  0.25D-08  1957.47
    8     3     3     1.06396688    -0.79090238 -2428.94035723    -0.00000018    -0.00000002  0.15D-08  0.26D-08  1957.47
    8     4     4     1.06088132    -0.77164329 -2428.67632115    -0.00000038    -0.00000008  0.49D-08  0.83D-08  1957.47
    8     5     5     1.06088115    -0.77164314 -2428.67632100    -0.00000038    -0.00000008  0.49D-08  0.83D-08  1957.47
    8     6     6     1.06088097    -0.77164299 -2428.67632085    -0.00000038    -0.00000008  0.49D-08  0.83D-08  1957.47
    9     1     1     1.06396783    -0.79090243 -2428.94035729    -0.00000001    -0.00000002  0.11D-08  0.22D-08  2165.75
    9     2     2     1.06396772    -0.79090241 -2428.94035726    -0.00000001    -0.00000002  0.11D-08  0.22D-08  2165.75
    9     3     3     1.06396772    -0.79090238 -2428.94035723    -0.00000001    -0.00000002  0.11D-08  0.22D-08  2165.75
    9     4     4     1.06089151    -0.77164340 -2428.67632126    -0.00000011    -0.00000001  0.47D-09  0.86D-09  2165.75
    9     5     5     1.06089133    -0.77164325 -2428.67632111    -0.00000011    -0.00000001  0.47D-09  0.86D-09  2165.75
    9     6     6     1.06089113    -0.77164310 -2428.67632096    -0.00000011    -0.00000001  0.47D-09  0.86D-09  2165.75


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.0%
 S   0.8%  13.1%
 P   0.4%  61.2%  17.2%

 Initialization:   2.4%
 Other:            4.0%

 Total CPU:     2165.8 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222//000           0.0008677   0.0019797   0.9679746  -0.0421135  -0.0003775  -0.0000652
 2222222222/2/000           0.9679699  -0.0036048  -0.0008603  -0.0000624  -0.0003105   0.0421141
 2222222222//2000           0.0036030   0.9679683  -0.0019829   0.0003780  -0.0421124  -0.0003099
 2222222222///\00          -0.0429272   0.0001599   0.0000381  -0.0014103  -0.0070168   0.9518275
 2222222222///00\           0.0000385   0.0000878   0.0429273   0.9518146   0.0085330   0.0014732
 2222222222///0\0           0.0001598   0.0429271  -0.0000879  -0.0085436   0.9517901   0.0070039
 2222222222//\0/0          -0.0000232  -0.0062296   0.0000128  -0.0007758   0.0864293   0.0006360
 2222222222/200/0           0.0003519  -0.0000013  -0.0000003  -0.0001241  -0.0006173   0.0837306
 222222222202/00/          -0.0003519   0.0000013   0.0000003   0.0001241   0.0006173  -0.0837305
 222222222220//00          -0.0000003  -0.0000007  -0.0003517   0.0837298   0.0007506   0.0001296
 22222222222/00/0           0.0000003   0.0000007   0.0003517  -0.0837297  -0.0007506  -0.0001296
 2222222222/02/00           0.0000013   0.0003517  -0.0000007   0.0007516  -0.0837276  -0.0006161
 22222222220/200/          -0.0000013  -0.0003519   0.0000007  -0.0007516   0.0837273   0.0006161
 2222222222/\//00           0.0053950  -0.0000201  -0.0000048  -0.0001109  -0.0005518   0.0748526
 2222222222/\/00/           0.0000048   0.0000110   0.0053950  -0.0748522  -0.0006710  -0.0001159
 2222222222/0/200          -0.0133919   0.0000499   0.0000119  -0.0001047  -0.0005209   0.0706663
 22222222220//002          -0.0000120  -0.0000274  -0.0133920  -0.0706647  -0.0006335  -0.0001094
 2222222222//0020          -0.0000498  -0.0133919   0.0000274   0.0006343  -0.0706632  -0.0005200
 2222222222//00/\          -0.0000106  -0.0000241  -0.0118060  -0.0580379  -0.0005203  -0.0000898
 2222222222/0//0\           0.0000106   0.0000241   0.0118060   0.0580379   0.0005203   0.0000898
 2222222222/0//\0           0.0000439   0.0118060  -0.0000242  -0.0005210   0.0580372   0.0004271
 2222222222//0\/0          -0.0117775   0.0000439   0.0000105  -0.0000786  -0.0003910   0.0530431
 22222222220//\0/          -0.0117776   0.0000439   0.0000105  -0.0000786  -0.0003910   0.0530431
 22222222220//0\/           0.0000438   0.0117775  -0.0000241  -0.0004761   0.0530400   0.0003903

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969100    0.003607    0.000869   -0.000022   -0.000092    0.024589
 2          -0.003609    0.969099    0.001982   -0.000050   -0.024589   -0.000092
 3          -0.000861   -0.001985    0.969105   -0.024589    0.000050   -0.000022
 4           0.000038   -0.000232    0.025861    0.970471   -0.008711   -0.001438
 5           0.000191    0.025860    0.000232    0.008700    0.970446   -0.007154
 6          -0.025861    0.000190    0.000040    0.001502    0.007141    0.970484

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969419    0.000000    0.000000    0.000001    0.000007   -0.000618
 2           0.000000    0.969419   -0.000000   -0.000004    0.000618    0.000007
 3           0.000000   -0.000000    0.969419    0.000618    0.000004    0.000001
 4           0.000001   -0.000004    0.000618    0.970856    0.000000    0.000000
 5           0.000007    0.000618    0.000004    0.000000    0.970856    0.000000
 6          -0.000618    0.000007    0.000001    0.000000    0.000000    0.970856


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96910029 (fixed)   0.96945977 (relaxed)   0.96941910 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011135   -0.00014153   -0.67000470
 Singles      0.01455979   -0.05054346   -0.05831686
 Pairs        0.04941516   -0.02750422   -0.06258088
 Total        1.06408631   -0.07818920   -0.79090243
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.14928936
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.97554531
 One electron energy                -3378.81229592
 Two electron energy                  949.87193864
 Virial quotient                       -0.93818590
 Correlation energy                    -0.79106793
 !MRCI STATE 1.1 Energy             -2428.940357287041

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.99105391 (Davidson, fixed reference)
 Cluster corrected energies         -2428.99098328 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.99105391 (Davidson, rotated reference)

 Cluster corrected energies         -2428.98897706 (Pople, fixed reference)
 Cluster corrected energies         -2428.98890563 (Pople, relaxed reference)
 Cluster corrected energies         -2428.98897706 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96909869 (fixed)   0.96945982 (relaxed)   0.96941915 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011136   -0.00014153   -0.69594882
 Singles      0.01455974   -0.05054337   -0.05831679
 Pairs        0.04941511    0.00010243   -0.03663679
 Total        1.06408620   -0.05058247   -0.79090241
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.14928935
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.97554940
 One electron energy                -3378.81230303
 Two electron energy                  949.87194577
 Virial quotient                       -0.93818590
 Correlation energy                    -0.79106791
 !MRCI STATE 2.1 Energy             -2428.940357260670

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.99105380 (Davidson, fixed reference)
 Cluster corrected energies         -2428.99098317 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.99105380 (Davidson, rotated reference)

 Cluster corrected energies         -2428.98897695 (Pople, fixed reference)
 Cluster corrected energies         -2428.98890552 (Pople, relaxed reference)
 Cluster corrected energies         -2428.98897695 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96910502 (fixed)   0.96945982 (relaxed)   0.96941915 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011136   -0.00014153   -0.69587543
 Singles      0.01455978   -0.05054345   -0.05831681
 Pairs        0.04941507    0.00002445   -0.03671014
 Total        1.06408621   -0.05066053   -0.79090238
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.14928935
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.97553853
 One electron energy                -3378.81229219
 Two electron energy                  949.87193496
 Virial quotient                       -0.93818590
 Correlation energy                    -0.79106788
 !MRCI STATE 3.1 Energy             -2428.940357234044

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.99105377 (Davidson, fixed reference)
 Cluster corrected energies         -2428.99098314 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.99105377 (Davidson, rotated reference)

 Cluster corrected energies         -2428.98897692 (Pople, fixed reference)
 Cluster corrected energies         -2428.98890549 (Pople, relaxed reference)
 Cluster corrected energies         -2428.98897692 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97047133 (fixed)   0.97086417 (relaxed)   0.97085582 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004502   -0.00015860   -0.66971208
 Singles      0.01956778   -0.06220496   -0.07286238
 Pairs        0.04132648    0.00105067   -0.02906894
 Total        1.06093927   -0.06131289   -0.77164340
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.90484336
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.30504539
 One electron energy                -3369.93729819
 Two electron energy                  941.26097693
 Virial quotient                       -0.93832693
 Correlation energy                    -0.77147790
 !MRCI STATE 4.1 Energy             -2428.676321262066

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.72333456 (Davidson, fixed reference)
 Cluster corrected energies         -2428.72332049 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.72333456 (Davidson, rotated reference)

 Cluster corrected energies         -2428.72128813 (Pople, fixed reference)
 Cluster corrected energies         -2428.72127397 (Pople, relaxed reference)
 Cluster corrected energies         -2428.72128813 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.97044620 (fixed)   0.97086425 (relaxed)   0.97085590 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004502   -0.00015860   -0.67364895
 Singles      0.01956764   -0.06220480   -0.07286213
 Pairs        0.04132644    0.00522732   -0.02513217
 Total        1.06093910   -0.05713608   -0.77164325
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.90484336
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.30504598
 One electron energy                -3369.93729718
 Two electron energy                  941.26097607
 Virial quotient                       -0.93832693
 Correlation energy                    -0.77147775
 !MRCI STATE 5.1 Energy             -2428.676321112750

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.72333427 (Davidson, fixed reference)
 Cluster corrected energies         -2428.72332019 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.72333427 (Davidson, rotated reference)

 Cluster corrected energies         -2428.72128784 (Pople, fixed reference)
 Cluster corrected energies         -2428.72127367 (Pople, relaxed reference)
 Cluster corrected energies         -2428.72128784 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97048422 (fixed)   0.97086434 (relaxed)   0.97085598 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00004503   -0.00015860   -0.00036776
 Singles      0.01956749   -0.06220462   -0.07286187
 Pairs        0.04132639   -0.70908306   -0.69841347
 Total        1.06093891   -0.77144628   -0.77164310
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.90484336
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.30504300
 One electron energy                -3369.93729582
 Two electron energy                  941.26097486
 Virial quotient                       -0.93832693
 Correlation energy                    -0.77147760
 !MRCI STATE 6.1 Energy             -2428.676320961997

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.72333397 (Davidson, fixed reference)
 Cluster corrected energies         -2428.72331988 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.72333397 (Davidson, rotated reference)

 Cluster corrected energies         -2428.72128753 (Pople, fixed reference)
 Cluster corrected energies         -2428.72127336 (Pople, relaxed reference)
 Cluster corrected energies         -2428.72128753 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      499.96       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2381.45   2375.39      4.32      0.16      1.20
 REAL TIME  *      2430.88 SEC
 DISK USED  *       547.37 MB (local),        6.47 GB (total)
 SF USED    *         5.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2428.99105391  AU                              
 SETTING HLSDIAG(2)     =     -2428.99105380  AU                              
 SETTING HLSDIAG(3)     =     -2428.99105377  AU                              
 SETTING HLSDIAG(4)     =     -2428.72333456  AU                              
 SETTING HLSDIAG(5)     =     -2428.72333427  AU                              
 SETTING HLSDIAG(6)     =     -2428.72333397  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 34
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      231 conf      280 CSFs
 N elec internal:    19959 conf    50764 CSFs
 N-1 el internal:    21164 conf    87808 CSFs
 N-2 el internal:    12950 conf    70120 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      95 (  45  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  30

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.09948410
     2     -2428.09948410
     3     -2428.09948410
     4     -2428.09948410
     5     -2428.09948410
     6     -2428.05494175

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1756D-06

 Number of blocks in overlap matrix:   616   Smallest eigenvalue:  0.16D-06
 Number of N-2 electron functions:    1432
 Number of N-1 electron functions:   87808

 Number of internal configurations:                25648
 Number of singly external configurations:       4171790
 Number of doubly external configurations:       3234120
 Total number of contracted configurations:      7431558
 Total number of uncontracted configurations:  162087348

 Diagonal Coupling coefficients finished.               Storage:  18006183 words, CPU-Time:     22.89 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1445005 words, CPU-time:      0.14 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.09948410    -0.00000000    -0.94342520  0.41D-01  0.63D-01    28.60
    1     2     2     1.00000000     0.00000000 -2428.09948410    -0.00000000    -0.94345034  0.42D-01  0.63D-01    28.60
    1     3     3     1.00000000     0.00000000 -2428.09948410     0.00000000    -0.94356712  0.42D-01  0.63D-01    28.60
    1     4     4     1.00000000     0.00000000 -2428.09948410    -0.00000000    -0.94356243  0.42D-01  0.63D-01    28.60
    1     5     5     1.00000000     0.00000000 -2428.09948410    -0.00000000    -0.94395305  0.42D-01  0.64D-01    28.60
    1     6     6     1.00000000     0.00000000 -2428.05494175    -0.00000000    -0.91737644  0.18D-01  0.69D-01    28.60
    2     1     1     1.07134155    -0.77902204 -2428.87850614    -0.77902204    -0.01863969  0.27D-02  0.11D-02   197.31
    2     2     2     1.07155332    -0.77892891 -2428.87841301    -0.77892891    -0.01878923  0.28D-02  0.11D-02   197.31
    2     3     3     1.07126746    -0.77844126 -2428.87792536    -0.77844126    -0.01913163  0.29D-02  0.12D-02   197.31
    2     4     4     1.07134491    -0.77826339 -2428.87774750    -0.77826339    -0.01929659  0.29D-02  0.12D-02   197.31
    2     5     5     1.07143764    -0.77818160 -2428.87766570    -0.77818160    -0.01939852  0.30D-02  0.12D-02   197.31
    2     6     6     1.06070752    -0.77047534 -2428.82541710    -0.77047534    -0.01707042  0.25D-02  0.11D-02   197.31
    3     1     1     1.06574433    -0.79681410 -2428.89629820    -0.01779206    -0.00057325  0.43D-04  0.75D-04   364.82
    3     2     2     1.06571623    -0.79681121 -2428.89629532    -0.01788231    -0.00057462  0.42D-04  0.76D-04   364.82
    3     3     3     1.06546841    -0.79674037 -2428.89622448    -0.01829911    -0.00061938  0.42D-04  0.84D-04   364.82
    3     4     4     1.06541436    -0.79673120 -2428.89621530    -0.01846780    -0.00062800  0.43D-04  0.86D-04   364.82
    3     5     5     1.06542055    -0.79672923 -2428.89621334    -0.01854763    -0.00062759  0.42D-04  0.86D-04   364.82
    3     6     6     1.06045556    -0.78695155 -2428.84189330    -0.01647620    -0.00059988  0.25D-04  0.88D-04   364.82
    4     1     1     1.06662259    -0.79747628 -2428.89696039    -0.00066219    -0.00004295  0.21D-05  0.64D-05   533.25
    4     2     2     1.06663301    -0.79747622 -2428.89696032    -0.00066500    -0.00004287  0.21D-05  0.64D-05   533.25
    4     3     3     1.06653172    -0.79746568 -2428.89694979    -0.00072531    -0.00005031  0.26D-05  0.73D-05   533.25
    4     4     4     1.06653541    -0.79746555 -2428.89694965    -0.00073435    -0.00005034  0.26D-05  0.73D-05   533.25
    4     5     5     1.06652816    -0.79746486 -2428.89694897    -0.00073563    -0.00005087  0.26D-05  0.74D-05   533.25
    4     6     6     1.06251031    -0.78766515 -2428.84260691    -0.00071361    -0.00005165  0.32D-05  0.72D-05   533.25
    5     1     1     1.06708688    -0.79752909 -2428.89701319    -0.00005281    -0.00000424  0.26D-06  0.48D-06   699.94
    5     2     2     1.06708696    -0.79752906 -2428.89701316    -0.00005284    -0.00000425  0.26D-06  0.48D-06   699.94
    5     3     3     1.06708530    -0.79752788 -2428.89701199    -0.00006220    -0.00000520  0.32D-06  0.59D-06   699.94
    5     4     4     1.06708598    -0.79752780 -2428.89701190    -0.00006225    -0.00000528  0.33D-06  0.59D-06   699.94
    5     5     5     1.06708553    -0.79752779 -2428.89701190    -0.00006293    -0.00000529  0.33D-06  0.59D-06   699.94
    5     6     6     1.06318928    -0.78772919 -2428.84267095    -0.00006404    -0.00000517  0.36D-06  0.57D-06   699.94
    6     1     1     1.06713421    -0.79753396 -2428.89701807    -0.00000487    -0.00000040  0.22D-07  0.51D-07   867.71
    6     2     2     1.06713432    -0.79753394 -2428.89701805    -0.00000488    -0.00000041  0.22D-07  0.51D-07   867.71
    6     3     3     1.06713236    -0.79753384 -2428.89701794    -0.00000595    -0.00000054  0.30D-07  0.67D-07   867.71
    6     4     4     1.06713273    -0.79753383 -2428.89701794    -0.00000603    -0.00000053  0.29D-07  0.67D-07   867.71
    6     5     5     1.06713268    -0.79753383 -2428.89701794    -0.00000604    -0.00000053  0.29D-07  0.67D-07   867.71
    6     6     6     1.06322738    -0.78773511 -2428.84267686    -0.00000592    -0.00000051  0.22D-07  0.65D-07   867.71
    7     1     1     1.06715021    -0.79753446 -2428.89701856    -0.00000050    -0.00000006  0.32D-08  0.85D-08  1035.10
    7     2     2     1.06715019    -0.79753446 -2428.89701856    -0.00000051    -0.00000006  0.32D-08  0.85D-08  1035.10
    7     3     3     1.06715049    -0.79753444 -2428.89701855    -0.00000061    -0.00000006  0.32D-08  0.83D-08  1035.10
    7     4     4     1.06715141    -0.79753443 -2428.89701854    -0.00000060    -0.00000004  0.23D-08  0.61D-08  1035.10
    7     5     5     1.06715155    -0.79753441 -2428.89701852    -0.00000058    -0.00000004  0.24D-08  0.61D-08  1035.10
    7     6     6     1.06323819    -0.78773571 -2428.84267746    -0.00000060    -0.00000006  0.24D-08  0.79D-08  1035.10
    8     1     1     1.06715439    -0.79753454 -2428.89701864    -0.00000008    -0.00000000  0.22D-09  0.64D-09  1172.00
    8     2     2     1.06715349    -0.79753453 -2428.89701863    -0.00000007    -0.00000001  0.52D-09  0.99D-09  1172.00
    8     3     3     1.06715341    -0.79753451 -2428.89701862    -0.00000007    -0.00000001  0.49D-09  0.97D-09  1172.00
    8     4     4     1.06715141    -0.79753443 -2428.89701854    -0.00000000    -0.00000004  0.23D-08  0.61D-08  1172.00
    8     5     5     1.06715155    -0.79753441 -2428.89701852    -0.00000000    -0.00000004  0.23D-08  0.61D-08  1172.00
    8     6     6     1.06324639    -0.78773578 -2428.84267754    -0.00000007    -0.00000000  0.20D-09  0.54D-09  1172.00


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.3%
 S   0.9%  14.2%
 P   0.5%  56.5%  19.0%

 Initialization:   2.0%
 Other:            5.6%

 Total CPU:     1172.0 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2\000           0.9654958  -0.0135889   0.0083605   0.0029183   0.0092407  -0.0000000
 22222222222/\000          -0.0076871   0.0448719   0.9645920  -0.0040129  -0.0022896  -0.0000000
 2222222222/\2000           0.0140676   0.9644392  -0.0448172  -0.0112392  -0.0074652   0.0000000
 2222222222022000          -0.0003126   0.0074597   0.0023506   0.7628041  -0.1993945   0.5499106
 2222222222202000          -0.0066013   0.0035812   0.0007167  -0.2088067   0.7602840   0.5499111
 2222222222220000           0.0069140  -0.0110409  -0.0030674  -0.5539969  -0.5608898   0.5499110
 2222220222222000          -0.0000000   0.0000000   0.0000000  -0.0000004  -0.0000000  -0.1605058

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.001830    0.967702    0.014100   -0.007705   -0.009410    0.000000
 2           0.010621   -0.013620    0.966643    0.044974    0.008857   -0.000000
 3           0.003258    0.008380   -0.044920    0.966796    0.002214    0.000000
 4           0.962625    0.002925   -0.011265   -0.004022    0.100006    0.000000
 5          -0.100131    0.009262   -0.007482   -0.002295    0.962614   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.969669

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967883    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.967883    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.967883   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.967884   -0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000   -0.000000    0.967884   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.969669


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96770174 (fixed)   0.96796957 (relaxed)   0.96788260 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00029335   -0.00045235   -0.69499992
 Singles      0.01713700   -0.05587868   -0.06515173
 Pairs        0.05003708   -0.00000003   -0.03738289
 Total        1.06746744   -0.05633107   -0.79753454
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.09948410
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.92653418
 One electron energy                -3378.53158375
 Two electron energy                  949.63456511
 Virial quotient                       -0.93818692
 Correlation energy                    -0.79753454
 !MRCI STATE 1.1 Energy             -2428.897018643408

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95082625 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95067327 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95082625 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94926022 (Pople, fixed reference)
 Cluster corrected energies         -2428.94910299 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94926022 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96664265 (fixed)   0.96796998 (relaxed)   0.96788298 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00029340   -0.00045236   -0.69499960
 Singles      0.01713728   -0.05587968   -0.06515088
 Pairs        0.05003592    0.00000001   -0.03738405
 Total        1.06746660   -0.05633203   -0.79753453
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.09948410
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.92537374
 One electron energy                -3378.53067914
 Two electron energy                  949.63366050
 Virial quotient                       -0.93818734
 Correlation energy                    -0.79753453
 !MRCI STATE 2.1 Energy             -2428.897018634856

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95082558 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95067255 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95082558 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94925952 (Pople, fixed reference)
 Cluster corrected energies         -2428.94910225 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94925952 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96679576 (fixed)   0.96797002 (relaxed)   0.96788302 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00029340   -0.00045236   -0.69499981
 Singles      0.01713713   -0.05587948   -0.06515082
 Pairs        0.05003599   -0.00000001   -0.03738388
 Total        1.06746651   -0.05633185   -0.79753451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.09948410
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.92543256
 One electron energy                -3378.53073364
 Two electron energy                  949.63371503
 Virial quotient                       -0.93818732
 Correlation energy                    -0.79753451
 !MRCI STATE 3.1 Energy             -2428.897018617769

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95082549 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95067247 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95082549 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94925943 (Pople, fixed reference)
 Cluster corrected energies         -2428.94910216 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94925943 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96262467 (fixed)   0.96797093 (relaxed)   0.96788387 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00029351   -0.00045234   -0.69499664
 Singles      0.01713925   -0.05588398   -0.06515440
 Pairs        0.05003187   -0.00000021   -0.03738340
 Total        1.06746463   -0.05633652   -0.79753443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.09948410
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.92670820
 One electron energy                -3378.53192750
 Two electron energy                  949.63490897
 Virial quotient                       -0.93818686
 Correlation energy                    -0.79753443
 !MRCI STATE 4.1 Energy             -2428.897018536000

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95082390 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95067078 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95082390 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94925780 (Pople, fixed reference)
 Cluster corrected energies         -2428.94910043 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94925780 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.96261407 (fixed)   0.96797086 (relaxed)   0.96788381 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00029351   -0.00045234   -0.69499669
 Singles      0.01713941   -0.05588419   -0.06515446
 Pairs        0.05003186    0.00000017   -0.03738327
 Total        1.06746477   -0.05633635   -0.79753441
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.09948410
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.92668096
 One electron energy                -3378.53190135
 Two electron energy                  949.63488283
 Virial quotient                       -0.93818687
 Correlation energy                    -0.79753441
 !MRCI STATE 5.1 Energy             -2428.897018516046

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95082399 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95067087 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95082399 (Davidson, rotated reference)

 Cluster corrected energies         -2428.94925790 (Pople, fixed reference)
 Cluster corrected energies         -2428.94910052 (Pople, relaxed reference)
 Cluster corrected energies         -2428.94925790 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96966873 (fixed)   0.96977080 (relaxed)   0.96966873 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00027475   -0.00031898   -0.00050342
 Singles      0.00665952   -0.03084322   -0.03393357
 Pairs        0.05660424   -0.75657359   -0.75329879
 Total        1.06353852   -0.78773578   -0.78773578
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.05494175
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.85626016
 One electron energy                -3378.15222084
 Two electron energy                  949.30954330
 Virial quotient                       -0.93819140
 Correlation energy                    -0.78773578
 !MRCI STATE 6.1 Energy             -2428.842677537619

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.89272910 (Davidson, fixed reference)
 Cluster corrected energies         -2428.89255275 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.89272910 (Davidson, rotated reference)

 Cluster corrected energies         -2428.89110663 (Pople, fixed reference)
 Cluster corrected energies         -2428.89092662 (Pople, relaxed reference)
 Cluster corrected energies         -2428.89110663 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      845.80       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3670.49   1289.03   2375.39      4.32      0.16      1.20
 REAL TIME  *      3752.45 SEC
 DISK USED  *       893.21 MB (local),       10.53 GB (total)
 SF USED    *         5.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =     -2428.95082625  AU                              
 SETTING HLSDIAG(8)     =     -2428.95082558  AU                              
 SETTING HLSDIAG(9)     =     -2428.95082549  AU                              
 SETTING HLSDIAG(10)    =     -2428.95082390  AU                              
 SETTING HLSDIAG(11)    =     -2428.95082399  AU                              
 SETTING HLSDIAG(12)    =     -2428.89272910  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Quintet 
 Number of electrons:                 34
 Maximum number of shells:             5
 Maximum number of spin couplings:   275

 Reference space:       46 conf       50 CSFs
 N elec internal:    12829 conf    34700 CSFs
 N-1 el internal:     9854 conf    65270 CSFs
 N-2 el internal:     3089 conf    44935 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 12


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:      95 (  45  50 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2427.91670838
     2     -2427.91670838
     3     -2427.91670838

 Number of blocks in overlap matrix:   391   Smallest eigenvalue:  0.38D-05
 Number of N-2 electron functions:     714
 Number of N-1 electron functions:   65270

 Number of internal configurations:                17270
 Number of singly external configurations:       3100675
 Number of doubly external configurations:       1610700
 Total number of contracted configurations:      4728645
 Total number of uncontracted configurations:  103944645

 Diagonal Coupling coefficients finished.               Storage:   8822205 words, CPU-Time:      2.68 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2096228 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2427.91670838    -0.00000000    -0.90958365  0.42D-01  0.55D-01     4.50
    1     2     2     1.00000000     0.00000000 -2427.91670838    -0.00000000    -0.90955559  0.42D-01  0.55D-01     4.50
    1     3     3     1.00000000     0.00000000 -2427.91670838    -0.00000000    -0.90954867  0.42D-01  0.55D-01     4.50
    2     1     1     1.06669552    -0.75446909 -2428.67117748    -0.75446909    -0.01468987  0.20D-02  0.56D-03    48.23
    2     2     2     1.06670057    -0.75446359 -2428.67117197    -0.75446359    -0.01469480  0.20D-02  0.56D-03    48.23
    2     3     3     1.06672566    -0.75446165 -2428.67117003    -0.75446165    -0.01469112  0.20D-02  0.56D-03    48.23
    3     1     1     1.06003091    -0.76830238 -2428.68501076    -0.01383328    -0.00042282  0.59D-04  0.28D-04    91.44
    3     2     2     1.06003174    -0.76830228 -2428.68501066    -0.01383869    -0.00042278  0.59D-04  0.28D-04    91.44
    3     3     3     1.06003299    -0.76830153 -2428.68500991    -0.01383988    -0.00042365  0.59D-04  0.28D-04    91.44
    4     1     1     1.05938762    -0.76872235 -2428.68543074    -0.00041998    -0.00002298  0.18D-05  0.32D-05   135.21
    4     2     2     1.05938594    -0.76872231 -2428.68543070    -0.00042003    -0.00002301  0.18D-05  0.32D-05   135.21
    4     3     3     1.05938757    -0.76872227 -2428.68543066    -0.00042074    -0.00002302  0.18D-05  0.32D-05   135.21
    5     1     1     1.05953253    -0.76874896 -2428.68545734    -0.00002661    -0.00000204  0.68D-07  0.35D-06   178.93
    5     2     2     1.05953278    -0.76874896 -2428.68545734    -0.00002664    -0.00000203  0.69D-07  0.35D-06   178.93
    5     3     3     1.05953261    -0.76874895 -2428.68545733    -0.00002667    -0.00000204  0.69D-07  0.35D-06   178.93
    6     1     1     1.05959530    -0.76875152 -2428.68545990    -0.00000256    -0.00000018  0.87D-08  0.26D-07   222.32
    6     2     2     1.05959513    -0.76875151 -2428.68545990    -0.00000256    -0.00000018  0.87D-08  0.26D-07   222.32
    6     3     3     1.05959512    -0.76875151 -2428.68545989    -0.00000256    -0.00000018  0.87D-08  0.25D-07   222.32
    7     1     1     1.05958972    -0.76875172 -2428.68546011    -0.00000020    -0.00000002  0.11D-08  0.24D-08   265.60
    7     2     2     1.05958972    -0.76875172 -2428.68546010    -0.00000020    -0.00000002  0.11D-08  0.24D-08   265.60
    7     3     3     1.05958972    -0.76875171 -2428.68546010    -0.00000020    -0.00000002  0.11D-08  0.24D-08   265.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.7%
 S   1.3%  22.4%
 P   0.5%  58.8%   8.9%

 Initialization:   1.1%
 Other:            5.3%

 Total CPU:      265.6 seconds
 =====================================



 Wavefunction saved on  5502.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222////00           0.0000000  -0.0000000   0.9672812
 2222222222///0/0           0.0000000   0.9672812   0.0000000
 2222222222///00/           0.9672812  -0.0000000  -0.0000000
 2222222222//00//          -0.0632051   0.0000000   0.0000000
 22222222220///0/          -0.0000000  -0.0000000   0.0632050
 22222222220//0//           0.0000000   0.0632049  -0.0000000
 2222222222/0//0/           0.0632049  -0.0000000   0.0000000
 2222222222/0///0           0.0000000   0.0632049   0.0000000
 2222222222//0//0           0.0000000  -0.0000000   0.0632048

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.971461    0.000000    0.000000
 2          -0.000000    0.971461   -0.000000
 3          -0.000000    0.000000    0.971461

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.971461    0.000000   -0.000000
 2           0.000000    0.971461    0.000000
 3          -0.000000    0.000000    0.971461


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97146108 (fixed)   0.97146418 (relaxed)   0.97146108 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002636   -0.00012136   -0.66724292
 Singles      0.01897088   -0.06174961   -0.07204261
 Pairs        0.04062042    0.00000000   -0.02946619
 Total        1.05961766   -0.06187098   -0.76875172
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.91670838
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.25493745
 One electron energy                -3369.71094372
 Two electron energy                  941.02548361
 Virial quotient                       -0.93834862
 Correlation energy                    -0.76875172
 !MRCI STATE 1.1 Energy             -2428.685460106086

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.73129128 (Davidson, fixed reference)
 Cluster corrected energies         -2428.73128609 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.73129128 (Davidson, rotated reference)

 Cluster corrected energies         -2428.72875872 (Pople, fixed reference)
 Cluster corrected energies         -2428.72875356 (Pople, relaxed reference)
 Cluster corrected energies         -2428.72875872 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.97146108 (fixed)   0.97146418 (relaxed)   0.97146108 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002636   -0.00012136   -0.66724289
 Singles      0.01897089   -0.06174964   -0.07204263
 Pairs        0.04062040    0.00000000   -0.02946620
 Total        1.05961765   -0.06187100   -0.76875172
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.91670838
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.25494390
 One electron energy                -3369.71095052
 Two electron energy                  941.02549042
 Virial quotient                       -0.93834862
 Correlation energy                    -0.76875172
 !MRCI STATE 2.1 Energy             -2428.685460101449

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.73129128 (Davidson, fixed reference)
 Cluster corrected energies         -2428.73128608 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.73129128 (Davidson, rotated reference)

 Cluster corrected energies         -2428.72875871 (Pople, fixed reference)
 Cluster corrected energies         -2428.72875356 (Pople, relaxed reference)
 Cluster corrected energies         -2428.72875871 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.97146108 (fixed)   0.97146418 (relaxed)   0.97146108 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002636   -0.00012136   -0.00013366
 Singles      0.01897088   -0.06174963   -0.07204261
 Pairs        0.04062041   -0.70688072   -0.69657544
 Total        1.05961765   -0.76875171   -0.76875171
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.91670838
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.25493644
 One electron energy                -3369.71094415
 Two electron energy                  941.02548405
 Virial quotient                       -0.93834862
 Correlation energy                    -0.76875171
 !MRCI STATE 3.1 Energy             -2428.685460096881

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.73129127 (Davidson, fixed reference)
 Cluster corrected energies         -2428.73128607 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.73129127 (Davidson, rotated reference)

 Cluster corrected energies         -2428.72875870 (Pople, fixed reference)
 Cluster corrected energies         -2428.72875355 (Pople, relaxed reference)
 Cluster corrected energies         -2428.72875870 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       8      955.70       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3946.39    275.90   1289.03   2375.39      4.32      0.16      1.20
 REAL TIME  *      4035.87 SEC
 DISK USED  *      1003.12 MB (local),       11.82 GB (total)
 SF USED    *         5.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =     -2428.73129128  AU                              
 SETTING HLSDIAG(14)    =     -2428.73129128  AU                              
 SETTING HLSDIAG(15)    =     -2428.73129127  AU                              


         HLSDIAG
    -2428.991054
    -2428.991054
    -2428.991054
    -2428.723335
    -2428.723334
    -2428.723334
    -2428.950826
    -2428.950826
    -2428.950825
    -2428.950824
    -2428.950824
    -2428.892729
    -2428.731291
    -2428.731291
    -2428.731291
                                                  

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

 Time for Seward_LS:       7.18 sec

       14212637. SPIN-ORBIT INTEGRALS WRITTEN OUT IN     3485 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      7.18 sec, REAL time:      7.40 sec


 SORTLS1 read    14251857. and wrote    14251857. SO integrals in    72 records. CPU time:      0.12 sec, REAL time:      0.20 sec
 SORTLS2 read    14251857. and wrote    69083406. SO integrals in    36 records. CPU time:      0.08 sec, REAL time:      0.10 sec

 FILE SIZES: FILE 1:   278.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   278.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      265.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       8      955.70       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3954.47      8.02    275.90   1289.03   2375.39      4.32      0.16      1.20
 REAL TIME  *      4044.33 SEC
 DISK USED  *      1003.19 MB (local),       12.57 GB (total)
 SF USED    *         5.28 GB
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

 Total X Y Z Fock matrices evaluated:     4    4    4
  
 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   6

 Original energies:  -2428.940357  -2428.940357  -2428.940357  -2428.676321  -2428.676321  -2428.676321
 Replaced energies:  -2428.991054  -2428.991054  -2428.991054  -2428.723335  -2428.723334  -2428.723334

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2428.897019  -2428.897019  -2428.897019  -2428.897019  -2428.897019  -2428.842678
 Replaced energies:  -2428.950826  -2428.950826  -2428.950825  -2428.950824  -2428.950824  -2428.892729

 Wavefunction restored from record  5502.2  Symmetry=1  S= 2.0  NSTATE=   3

 Original energies:  -2428.685460  -2428.685460  -2428.685460
 Replaced energies:  -2428.731291  -2428.731291  -2428.731291

 >>> Fock matrix approximation error in all internal so: 
   46.105121974894530       (exact)    46.165276092281729       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.17169878948375492       (exact)  -0.17192260652379435       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.0975422570420604E-002  (exact)   -4.1028536707799948E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.2909945443872032E-002  (exact)   -1.7571987796935841E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.16373163697440396       (exact)   -8.7424436828264715E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.210386140674803       (exact)    11.859414370204044       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.17161475660048503       (exact)   0.17187306473534963       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   46.105045161230365       (exact)    46.174425702636299       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.4449085574868488E-002  (exact)   -9.4591213016759101E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.19935913443248127       (exact)   0.10797622417779135       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -22.209483958690232       (exact)   -12.029126021141028       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.16343340198084710       (exact)   -8.8520047945122582E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.17161441930901494       (exact)   0.17187307262263635       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   46.105056058184203       (exact)    46.174483476250479       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.4448694439221687E-002  (exact)   -9.4590873229195876E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.19936030042931024       (exact)   0.10797575793032094       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -22.209562185163602       (exact)   -12.029037252028699       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.16343363015544654       (exact)   -8.8518948231432554E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.1326830855404853E-002  (exact)   -4.1378209022071198E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -9.4294963382354033E-002  (exact)   -9.4412264922568975E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -46.105349479865829       (exact)   -46.162703730038459       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.210102493531302       (exact)    11.862547830687589       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.19911304614467962       (exact)   0.10634761025247508       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.4377961732151831E-002  (exact)    1.8361877659656283E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   46.105132130583918       (exact)    46.165282734415328       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.17169917074901622       (exact)  -0.17192298447587884       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.0975405169993026E-002  (exact)   -4.1028759875666551E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.2911202202185415E-002  (exact)   -1.7573758962201490E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.16373171279788340       (exact)   -8.7424897472542618E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   22.210380660622405       (exact)    11.859407915088582       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   4.1326699692059890E-002  (exact)    4.1378055689710140E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   9.4295708344628415E-002  (exact)    9.4412952165206815E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   46.105349730612971       (exact)    46.162705828672301       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -22.210111953751685       (exact)   -11.862555435355675       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.19911392849668802       (exact)  -0.10634860145840162       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.4376714895803677E-002  (exact)   -1.8360647049388217E-002  (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2428.99105391

 Wigner-Eckart theorem used for 40 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.60       2.51      -0.47
                            0.00       1.96     954.55    -177.78      -1.59      -0.43      -0.00    -674.97       1.38      -1.13

    2   2.1  1.0  1.0       0.00       0.02       0.00       0.00       0.00       0.00       0.60       0.00     674.97    -125.71
                           -1.96      -0.00      -3.55       0.66       0.01      -0.36     674.97      -0.00      -0.61      -0.18

    3   3.1  1.0  1.0       0.00       0.00       0.03       0.00       0.00       0.00      -2.51    -674.97       0.00      -0.87
                         -954.55       3.55      -0.00       0.42       1.31    -177.78      -1.38       0.61      -0.00       0.00

    4   4.1  1.0  1.0       0.00       0.00       0.00   58757.60       0.00       0.00       0.47     125.71       0.87       0.00
                          177.78      -0.66      -0.42      -0.00       0.09     -12.39       1.13       0.18      -0.00       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   58757.67       0.00      -0.11       0.87    -125.71      -8.76
                            1.59      -0.01      -1.31      -0.09       0.00      -0.11    -125.70       1.39       0.11      -0.01

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   58757.74      -0.00       0.19      -0.93      -0.06
                            0.43       0.36     177.78      12.39       0.11       0.00      -1.39    -125.71       0.26       0.08

    7   1.1  1.0  0.0      -0.00       0.60      -2.51       0.47      -0.11      -0.00       0.00       0.00       0.00       0.00
                            0.00    -674.97       1.38      -1.13     125.70       1.39       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0      -0.60       0.00    -674.97     125.71       0.87       0.19       0.00       0.02       0.00       0.00
                          674.97       0.00      -0.61      -0.18      -1.39     125.71      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0       2.51     674.97       0.00       0.87    -125.71      -0.93       0.00       0.00       0.03       0.00
                           -1.38       0.61       0.00       0.00      -0.11      -0.26      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0      -0.47    -125.71      -0.87       0.00      -8.76      -0.06       0.00       0.00       0.00   58757.60
                            1.13       0.18      -0.00      -0.00       0.01      -0.08      -0.00      -0.00      -0.00       0.00

   11   5.1  1.0  0.0       0.11      -0.87     125.71       8.76       0.00       0.01       0.00       0.00       0.00       0.00
                         -125.70       1.39       0.11      -0.01       0.00       8.76      -0.00      -0.00      -0.00      -0.00

   12   6.1  1.0  0.0       0.00      -0.19       0.93       0.06      -0.01       0.00       0.00       0.00       0.00       0.00
                           -1.39    -125.71       0.26       0.08      -8.76      -0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.60      -2.51       0.47
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -674.97       1.38      -1.13

   14   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.60       0.00    -674.97     125.71
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     674.97       0.00      -0.61      -0.18

   15   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       2.51     674.97       0.00       0.87
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.38       0.61       0.00       0.00

   16   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.47    -125.71      -0.87       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       1.13       0.18      -0.00      -0.00

   17   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.11      -0.87     125.71       8.76
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -125.70       1.39       0.11      -0.01

   18   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.19       0.93       0.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.39    -125.71       0.26       0.08

   19   1.1  0.0  0.0      -6.60      -5.38       9.94       0.33      -0.18       0.22       0.00       0.00       0.00       0.00
                            7.39    -681.25       1.07       0.19     -22.61      -0.50       8.50      -7.81     963.40      31.99

   20   2.1  0.0  0.0       4.30      33.04     680.41      22.58       1.25      -0.08       0.00       0.00       0.00       0.00
                          680.51       7.07       6.82       0.28       0.49     -22.59     -44.73      15.72     -13.55      -0.46

   21   3.1  0.0  0.0       3.22     680.51     -33.02      -1.25      22.59       0.14       0.00       0.00       0.00       0.00
                          -31.64      -5.78       2.39       0.08      -0.20       1.05    -962.46       7.93       9.19       0.23

   22   4.1  0.0  0.0    -208.37      -2.07      -7.74      -0.27      -0.15       6.92       0.00       0.00       0.00       0.00
                           -7.26      -0.47     761.14      25.27       0.16       0.30       6.92     781.74       1.31      -0.14

   23   5.1  0.0  0.0     758.60      -4.45      -5.94      -0.14       0.13     -25.19       0.00       0.00       0.00       0.00
                           -5.47      -6.91    -198.94      -6.60      -0.28       0.16       5.24     791.48       7.60       0.07

   24   6.1  0.0  0.0   -1111.78       4.14       0.99      -0.06      -0.30      41.25       0.00       0.00       0.00       0.00
                           -1.00      -2.27   -1111.78     -41.25      -0.37      -0.06       5.85    1572.28      -3.22      -0.52

   25   1.1  2.0  2.0      -1.10    -296.28       0.61      -1.27     141.57       1.04       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0       0.27       0.61     296.41    -140.45      -1.26      -0.22       0.00       0.00       0.00       0.00
                          296.22      -1.10      -0.26      -0.21      -1.05     142.51      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.10     296.31      -0.61       1.27    -141.75      -1.04      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.78    -209.50       0.43      -0.90
                          296.14      -1.10      -0.26      -0.21      -1.05     142.63       0.00       0.00      -0.00      -0.00

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.19       0.43     209.59     -99.31
                           -0.00       0.00      -0.00      -0.00       0.00       0.00     209.46      -0.78      -0.19      -0.15

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.27       0.61     296.45    -140.34      -1.26      -0.22       0.78     209.52      -0.43       0.90

   31   1.1  2.0  0.0      -0.45    -120.96       0.25      -0.52      57.80       0.43       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00     341.95      -1.27      -0.30      -0.24

   32   2.1  2.0  0.0       0.11       0.25     121.01     -57.34      -0.52      -0.09       0.00       0.00       0.00       0.00
                         -120.93       0.45       0.11       0.09       0.43     -58.18      -0.00       0.00      -0.00      -0.00

   33   3.1  2.0  0.0       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.45    -120.97       0.25      -0.52      57.87       0.43       0.31       0.70     342.31    -162.05

   34   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.78    -209.50       0.43      -0.90
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   35   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.19       0.43     209.59     -99.31
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -209.46       0.78       0.19       0.15

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.78    -209.52       0.43      -0.90

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0       0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -6.60       4.30
                          125.70       1.39       0.00       0.00       0.00       0.00       0.00       0.00      -7.39    -680.51

    2   2.1  1.0  1.0      -0.87      -0.19       0.00       0.00       0.00       0.00       0.00       0.00      -5.38      33.04
                           -1.39     125.71       0.00       0.00       0.00       0.00       0.00       0.00     681.25      -7.07

    3   3.1  1.0  1.0     125.71       0.93       0.00       0.00       0.00       0.00       0.00       0.00       9.94     680.41
                           -0.11      -0.26       0.00       0.00       0.00       0.00       0.00       0.00      -1.07      -6.82

    4   4.1  1.0  1.0       8.76       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.33      22.58
                            0.01      -0.08       0.00       0.00       0.00       0.00       0.00       0.00      -0.19      -0.28

    5   5.1  1.0  1.0       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00      -0.18       1.25
                           -0.00       8.76       0.00       0.00       0.00       0.00       0.00       0.00      22.61      -0.49

    6   6.1  1.0  1.0       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.22      -0.08
                           -8.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.50      22.59

    7   1.1  1.0  0.0       0.00       0.00      -0.00      -0.60       2.51      -0.47       0.11       0.00       0.00       0.00
                            0.00       0.00      -0.00    -674.97       1.38      -1.13     125.70       1.39      -8.50      44.73

    8   2.1  1.0  0.0       0.00       0.00       0.60       0.00     674.97    -125.71      -0.87      -0.19       0.00       0.00
                            0.00       0.00     674.97      -0.00      -0.61      -0.18      -1.39     125.71       7.81     -15.72

    9   3.1  1.0  0.0       0.00       0.00      -2.51    -674.97       0.00      -0.87     125.71       0.93       0.00       0.00
                            0.00       0.00      -1.38       0.61      -0.00       0.00      -0.11      -0.26    -963.40      13.55

   10   4.1  1.0  0.0       0.00       0.00       0.47     125.71       0.87       0.00       8.76       0.06       0.00       0.00
                            0.00       0.00       1.13       0.18      -0.00       0.00       0.01      -0.08     -31.99       0.46

   11   5.1  1.0  0.0   58757.67       0.00      -0.11       0.87    -125.71      -8.76       0.00      -0.01       0.00       0.00
                            0.00       0.00    -125.70       1.39       0.11      -0.01      -0.00       8.76       0.04      -0.50

   12   6.1  1.0  0.0       0.00   58757.74      -0.00       0.19      -0.93      -0.06       0.01       0.00       0.00       0.00
                           -0.00       0.00      -1.39    -125.71       0.26       0.08      -8.76       0.00       0.21      -1.49

   13   1.1  1.0 -1.0      -0.11      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -6.60       4.30
                          125.70       1.39      -0.00      -1.96    -954.55     177.78       1.59       0.43       7.39     680.51

   14   2.1  1.0 -1.0       0.87       0.19       0.00       0.02       0.00       0.00       0.00       0.00      -5.38      33.04
                           -1.39     125.71       1.96       0.00       3.55      -0.66      -0.01       0.36    -681.25       7.07

   15   3.1  1.0 -1.0    -125.71      -0.93       0.00       0.00       0.03       0.00       0.00       0.00       9.94     680.41
                           -0.11      -0.26     954.55      -3.55       0.00      -0.42      -1.31     177.78       1.07       6.82

   16   4.1  1.0 -1.0      -8.76      -0.06       0.00       0.00       0.00   58757.60       0.00       0.00       0.33      22.58
                            0.01      -0.08    -177.78       0.66       0.42       0.00      -0.09      12.39       0.19       0.28

   17   5.1  1.0 -1.0       0.00       0.01       0.00       0.00       0.00       0.00   58757.67       0.00      -0.18       1.25
                            0.00       8.76      -1.59       0.01       1.31       0.09      -0.00       0.11     -22.61       0.49

   18   6.1  1.0 -1.0      -0.01       0.00       0.00       0.00       0.00       0.00       0.00   58757.74       0.22      -0.08
                           -8.76      -0.00      -0.43      -0.36    -177.78     -12.39      -0.11      -0.00      -0.50     -22.59

   19   1.1  0.0  0.0       0.00       0.00      -6.60      -5.38       9.94       0.33      -0.18       0.22    8828.95       0.00
                           -0.04      -0.21      -7.39     681.25      -1.07      -0.19      22.61       0.50       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00       4.30      33.04     680.41      22.58       1.25      -0.08       0.00    8829.10
                            0.50       1.49    -680.51      -7.07      -6.82      -0.28      -0.49      22.59      -0.00       0.00

   21   3.1  0.0  0.0       0.00       0.00       3.22     680.51     -33.02      -1.25      22.59       0.14       0.00       0.00
                           -0.09      31.96      31.64       5.78      -2.39      -0.08       0.20      -1.05      -0.00      -0.00

   22   4.1  0.0  0.0       0.00       0.00    -208.37      -2.07      -7.74      -0.27      -0.15       6.92       0.00       0.00
                           25.96       0.06       7.26       0.47    -761.14     -25.27      -0.16      -0.30      -0.00      -0.00

   23   5.1  0.0  0.0       0.00       0.00     758.60      -4.45      -5.94      -0.14       0.13     -25.19       0.00       0.00
                           26.28       0.12       5.47       6.91     198.94       6.60       0.28      -0.16      -0.00      -0.00

   24   6.1  0.0  0.0       0.00       0.00   -1111.78       4.14       0.99      -0.06      -0.30      41.25       0.00       0.00
                           58.34       0.43       1.00       2.27    1111.78      41.25       0.37       0.06      -0.00      -0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0     100.10       0.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   2.1  2.0  1.0      -0.89      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.74     100.77      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -100.23      -0.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00      -0.45    -120.96       0.25      -0.52      57.80       0.43       0.00       0.00
                           -1.22     164.69       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   32   2.1  2.0  0.0       0.00       0.00       0.11       0.25     121.01     -57.34      -0.52      -0.09       0.00       0.00
                            0.00       0.00     120.93      -0.45      -0.11      -0.09      -0.43      58.18      -0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -1.46      -0.25       0.45     120.97      -0.25       0.52     -57.87      -0.43      -0.00      -0.00

   34   1.1  2.0 -1.0     100.10       0.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     296.14      -1.10      -0.26      -0.21      -1.05     142.63      -0.00      -0.00

   35   2.1  2.0 -1.0      -0.89      -0.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.74    -100.77      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          100.23       0.74       0.27       0.61     296.45    -140.34      -1.26      -0.22      -0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00      -1.10    -296.28       0.61      -1.27     141.57       1.04       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.27       0.61     296.41    -140.45      -1.26      -0.22       0.00       0.00
                           -0.00      -0.00    -296.22       1.10       0.26       0.21       1.05    -142.51      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -1.10    -296.31       0.61      -1.27     141.75       1.04      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0       3.22    -208.37     758.60   -1111.78      -1.10       0.27       0.00       0.00       0.00       0.00
                           31.64       7.26       5.47       1.00      -0.00    -296.22      -1.10    -296.14       0.00      -0.27

    2   2.1  1.0  1.0     680.51      -2.07      -4.45       4.14    -296.28       0.61      -0.00       0.00       0.00       0.00
                            5.78       0.47       6.91       2.27      -0.00       1.10    -296.31       1.10      -0.00      -0.61

    3   3.1  1.0  1.0     -33.02      -7.74      -5.94       0.99       0.61     296.41      -0.00       0.00       0.00       0.00
                           -2.39    -761.14     198.94    1111.78       0.00       0.26       0.61       0.26       0.00    -296.45

    4   4.1  1.0  1.0      -1.25      -0.27      -0.14      -0.06      -1.27    -140.45       0.00       0.00       0.00       0.00
                           -0.08     -25.27       6.60      41.25       0.00       0.21      -1.27       0.21       0.00     140.34

    5   5.1  1.0  1.0      22.59      -0.15       0.13      -0.30     141.57      -1.26       0.00       0.00       0.00       0.00
                            0.20      -0.16       0.28       0.37       0.00       1.05     141.75       1.05      -0.00       1.26

    6   6.1  1.0  1.0       0.14       6.92     -25.19      41.25       1.04      -0.22       0.00       0.00       0.00       0.00
                           -1.05      -0.30      -0.16       0.06      -0.00    -142.51       1.04    -142.63      -0.00       0.22

    7   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.78       0.19       0.00
                          962.46      -6.92      -5.24      -5.85       0.00       0.00       0.00      -0.00    -209.46      -0.78

    8   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -209.50       0.43      -0.00
                           -7.93    -781.74    -791.48   -1572.28       0.00       0.00       0.00      -0.00       0.78    -209.52

    9   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.43     209.59      -0.00
                           -9.19      -1.31      -7.60       3.22       0.00       0.00       0.00       0.00       0.19       0.43

   10   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.90     -99.31       0.00
                           -0.23       0.14      -0.07       0.52       0.00       0.00       0.00       0.00       0.15      -0.90

   11   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     100.10      -0.89       0.00
                            0.09     -25.96     -26.28     -58.34       0.00       0.00       0.00       0.00       0.74     100.23

   12   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.74      -0.15       0.00
                          -31.96      -0.06      -0.12      -0.43       0.00       0.00       0.00      -0.00    -100.77       0.74

   13   1.1  1.0 -1.0       3.22    -208.37     758.60   -1111.78       0.00       0.00       0.00       0.00       0.00       0.00
                          -31.64      -7.26      -5.47      -1.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0 -1.0     680.51      -2.07      -4.45       4.14       0.00       0.00       0.00       0.00       0.00       0.00
                           -5.78      -0.47      -6.91      -2.27       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0 -1.0     -33.02      -7.74      -5.94       0.99       0.00       0.00       0.00       0.00       0.00       0.00
                            2.39     761.14    -198.94   -1111.78       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0 -1.0      -1.25      -0.27      -0.14      -0.06       0.00       0.00       0.00       0.00       0.00       0.00
                            0.08      25.27      -6.60     -41.25       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0 -1.0      22.59      -0.15       0.13      -0.30       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.20       0.16      -0.28      -0.37       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0 -1.0       0.14       6.92     -25.19      41.25       0.00       0.00       0.00       0.00       0.00       0.00
                            1.05       0.30       0.16      -0.06       0.00       0.00       0.00       0.00       0.00       0.00

   19   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   3.1  0.0  0.0    8829.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   4.1  0.0  0.0       0.00    8829.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   5.1  0.0  0.0       0.00       0.00    8829.45       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   6.1  0.0  0.0       0.00       0.00       0.00   21579.80       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00   57011.31       0.00       0.00      -0.00      30.23       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00     -60.47      -0.00      -0.00       0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00   57011.31       0.00     -30.23       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      30.23

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00   57011.31      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      60.47      -0.00      -0.00      -0.00     -30.23      -0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00      -0.00     -30.23      -0.00   57011.31       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     -30.23

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00      30.23       0.00      -0.00       0.00   57011.31       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      30.23      -0.00       0.00       0.00

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00   57011.31
                           -0.00      -0.00      -0.00      -0.00      -0.00     -30.23       0.00      30.23      -0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -37.03      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      37.03       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      37.03

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -37.03       0.00

   34   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39

    1   1.1  1.0  1.0      -0.45       0.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     120.93       0.45       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0    -120.96       0.25      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.45     120.97       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.25     121.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.11      -0.25       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      -0.52     -57.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.09       0.52       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0      57.80      -0.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.43     -57.87       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0       0.43      -0.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      58.18      -0.43       0.00       0.00       0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0       0.00       0.00       0.00      -0.78       0.19       0.00       0.00       0.00       0.00
                         -341.95       0.00      -0.31       0.00     209.46       0.78       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00       0.00    -209.50       0.43      -0.00       0.00       0.00       0.00
                            1.27      -0.00      -0.70       0.00      -0.78     209.52       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00       0.00       0.43     209.59      -0.00       0.00       0.00       0.00
                            0.30       0.00    -342.31      -0.00      -0.19      -0.43       0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00       0.00      -0.90     -99.31       0.00       0.00       0.00       0.00
                            0.24       0.00     162.05      -0.00      -0.15       0.90       0.00       0.00       0.00

   11   5.1  1.0  0.0       0.00       0.00       0.00     100.10      -0.89       0.00       0.00       0.00       0.00
                            1.22      -0.00       1.46      -0.00      -0.74    -100.23       0.00       0.00       0.00

   12   6.1  1.0  0.0       0.00       0.00       0.00       0.74      -0.15       0.00       0.00       0.00       0.00
                         -164.69      -0.00       0.25       0.00     100.77      -0.74       0.00       0.00       0.00

   13   1.1  1.0 -1.0      -0.45       0.11       0.00       0.00       0.00       0.00      -1.10       0.27       0.00
                           -0.00    -120.93      -0.45    -296.14       0.00      -0.27       0.00     296.22       1.10

   14   2.1  1.0 -1.0    -120.96       0.25      -0.00       0.00       0.00       0.00    -296.28       0.61      -0.00
                           -0.00       0.45    -120.97       1.10      -0.00      -0.61       0.00      -1.10     296.31

   15   3.1  1.0 -1.0       0.25     121.01      -0.00       0.00       0.00       0.00       0.61     296.41      -0.00
                            0.00       0.11       0.25       0.26       0.00    -296.45      -0.00      -0.26      -0.61

   16   4.1  1.0 -1.0      -0.52     -57.34       0.00       0.00       0.00       0.00      -1.27    -140.45       0.00
                            0.00       0.09      -0.52       0.21       0.00     140.34      -0.00      -0.21       1.27

   17   5.1  1.0 -1.0      57.80      -0.52       0.00       0.00       0.00       0.00     141.57      -1.26       0.00
                            0.00       0.43      57.87       1.05      -0.00       1.26      -0.00      -1.05    -141.75

   18   6.1  1.0 -1.0       0.43      -0.09       0.00       0.00       0.00       0.00       1.04      -0.22       0.00
                           -0.00     -58.18       0.43    -142.63      -0.00       0.22       0.00     142.51      -1.04

   19   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   1.1  2.0  1.0      -0.00      37.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   2.1  2.0  1.0     -37.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      37.03       0.00       0.00       0.00       0.00       0.00       0.00

   30   3.1  2.0  1.0      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -37.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  2.0  0.0   57011.31       0.00       0.00      -0.00      37.03       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   32   2.1  2.0  0.0       0.00   57011.31       0.00     -37.03       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      37.03       0.00       0.00       0.00

   33   3.1  2.0  0.0       0.00       0.00   57011.31      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -37.03      -0.00       0.00       0.00       0.00

   34   1.1  2.0 -1.0      -0.00     -37.03      -0.00   57011.31       0.00       0.00      -0.00      30.23       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      30.23      -0.00      -0.00       0.00

   35   2.1  2.0 -1.0      37.03       0.00      -0.00       0.00   57011.31       0.00     -30.23       0.00       0.00
                            0.00       0.00      37.03       0.00      -0.00      -0.00       0.00      -0.00      30.23

   36   3.1  2.0 -1.0       0.00       0.00      -0.00       0.00       0.00   57011.31      -0.00      -0.00      -0.00
                           -0.00     -37.03       0.00     -30.23       0.00       0.00      -0.00     -30.23      -0.00

   37   1.1  2.0 -2.0       0.00       0.00       0.00      -0.00     -30.23      -0.00   57011.31       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      60.47

   38   2.1  2.0 -2.0       0.00       0.00       0.00      30.23       0.00      -0.00       0.00   57011.31       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      30.23       0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00   57011.31
                           -0.00      -0.00      -0.00      -0.00     -30.23       0.00     -60.47       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2428.99627430    -0.00522039    -1145.74      0.00000000        0.00      0.0000
     2 -2428.99627430    -0.00522039    -1145.74      0.00000000        0.00      0.0000
     3 -2428.99627427    -0.00522036    -1145.74      0.00000003        0.01      0.0000
     4 -2428.99627425    -0.00522034    -1145.73      0.00000004        0.01      0.0000
     5 -2428.99627420    -0.00522029    -1145.72      0.00000010        0.02      0.0000
     6 -2428.98671893     0.00433498      951.42      0.00955537     2097.16      0.2600
     7 -2428.98671892     0.00433499      951.42      0.00955537     2097.16      0.2600
     8 -2428.98671887     0.00433504      951.43      0.00955543     2097.17      0.2600
     9 -2428.98405205     0.00700186     1536.73      0.01222224     2682.47      0.3326
    10 -2428.94997850     0.04107541     9015.01      0.04629579    10160.75      1.2598
    11 -2428.94997783     0.04107608     9015.16      0.04629647    10160.90      1.2598
    12 -2428.94997774     0.04107617     9015.18      0.04629655    10160.92      1.2598
    13 -2428.94997629     0.04107762     9015.49      0.04629800    10161.24      1.2598
    14 -2428.94997620     0.04107771     9015.51      0.04629809    10161.26      1.2598
    15 -2428.89104331     0.10001060    21949.79      0.10523099    23095.53      2.8635
    16 -2428.73177705     0.25927686    56904.69      0.26449725    58050.44      7.1973
    17 -2428.73177631     0.25927760    56904.85      0.26449798    58050.60      7.1974
    18 -2428.73177577     0.25927814    56904.97      0.26449853    58050.72      7.1974
    19 -2428.73155833     0.25949558    56952.70      0.26471597    58098.44      7.2033
    20 -2428.73155821     0.25949570    56952.72      0.26471609    58098.47      7.2033
    21 -2428.73155688     0.25949703    56953.02      0.26471742    58098.76      7.2033
    22 -2428.73155595     0.25949796    56953.22      0.26471835    58098.96      7.2034
    23 -2428.73155571     0.25949820    56953.27      0.26471859    58099.01      7.2034
    24 -2428.73101577     0.26003814    57071.77      0.26525852    58217.52      7.2181
    25 -2428.73101577     0.26003814    57071.77      0.26525853    58217.52      7.2181
    26 -2428.73101577     0.26003814    57071.78      0.26525853    58217.52      7.2181
    27 -2428.73101577     0.26003814    57071.78      0.26525853    58217.52      7.2181
    28 -2428.73101577     0.26003814    57071.78      0.26525853    58217.52      7.2181
    29 -2428.73101576     0.26003815    57071.78      0.26525853    58217.52      7.2181
    30 -2428.73101576     0.26003815    57071.78      0.26525853    58217.52      7.2181
    31 -2428.72343616     0.26761774    58735.31      0.27283813    59881.05      7.4243
    32 -2428.72330528     0.26774863    58764.03      0.27296902    59909.78      7.4279
    33 -2428.72330460     0.26774931    58764.18      0.27296969    59909.92      7.4279
    34 -2428.72330370     0.26775021    58764.38      0.27297060    59910.12      7.4279
    35 -2428.72312787     0.26792604    58802.97      0.27314643    59948.71      7.4327
    36 -2428.72312760     0.26792631    58803.03      0.27314670    59948.77      7.4327
    37 -2428.72312651     0.26792740    58803.27      0.27314779    59949.01      7.4327
    38 -2428.72312508     0.26792883    58803.58      0.27314922    59949.32      7.4328
    39 -2428.72312494     0.26792897    58803.61      0.27314935    59949.35      7.4328


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.0  1.0  -0.096560601   0.485801345   0.571605380  -0.022822545   0.004795005  -0.002035845  -0.499982576  -0.000322216
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.0  1.0  -0.028492859  -0.010819760  -0.004806417  -0.216533972   0.001254378  -0.457000872  -0.000322431   0.499983621
                        -0.485237798  -0.095330991  -0.017245459  -0.445101912  -0.001218381   0.202817463   0.000198987  -0.000905219

    3    3.1  1.0  1.0  -0.004465275   0.004872930  -0.002186697   0.002075535  -0.312935549   0.000181256   0.000003739  -0.001020854
                        -0.095300424   0.485983766   0.282578076  -0.014276325   0.386390271  -0.000080683   0.499983879   0.002185129

    4    4.1  1.0  1.0   0.000013032  -0.000017652   0.000002358  -0.000010220   0.000907484   0.000010221  -0.000003563  -0.000013714
                         0.000266606  -0.001411253  -0.000819823   0.000032447  -0.001120529  -0.000004543   0.001527286   0.000006694

    5    5.1  1.0  1.0   0.000085830   0.000015638  -0.000004423   0.000628659   0.000002479  -0.001395886  -0.000017940   0.001527099
                         0.001409135   0.000266728   0.000044350   0.001291117  -0.000004209   0.000619465   0.000011161  -0.000002719

    6    6.1  1.0  1.0  -0.000279108   0.001409288   0.001658005  -0.000059245   0.000016061  -0.000009255   0.001527092   0.000017906
                         0.000016270  -0.000000348  -0.000001430   0.000014411  -0.000002677   0.000006867   0.000003705  -0.000000014

    7    1.1  1.0  0.0   0.686015312   0.136354725  -0.000033126  -0.001230477  -0.001833077   0.286071825  -0.001167072  -0.000190005
                        -0.039405943  -0.001066817  -0.005117787  -0.002560667   0.002231281   0.646623737  -0.000001039   0.000000124

    8    2.1  1.0  0.0  -0.006396265   0.006883326  -0.002645676   0.005267854  -0.443026945  -0.001064689  -0.000001979   0.001449189
                         0.000367413  -0.000053853  -0.408742726   0.010962583   0.539266739  -0.002406574  -0.000000002  -0.000000948

    9    3.1  1.0  0.0   0.000781540   0.011555385   0.000168751   0.303177061  -0.001576777   0.000076991  -0.003087942   0.707079207
                        -0.000044894  -0.000090407   0.026071180   0.630922017   0.001919306   0.000174026  -0.000002749  -0.000462689

   10    4.1  1.0  0.0  -0.000007060  -0.000034299  -0.000000542  -0.000879078  -0.000004328   0.000002307  -0.000009441   0.002159887
                         0.000000406   0.000000268  -0.000083793  -0.001829392   0.000005268   0.000005214  -0.000000008  -0.000001413

   11    5.1  1.0  0.0  -0.000003556  -0.000024584   0.000007670  -0.000021313   0.001284909   0.000006451  -0.000000111   0.000019344
                         0.000000204   0.000000192   0.001185027  -0.000044352  -0.001564033   0.000014581  -0.000000000  -0.000000013

   12    6.1  1.0  0.0   0.001989867   0.000395171  -0.000000012  -0.000005867   0.000008939  -0.000873787   0.000003542   0.000005859
                        -0.000114302  -0.000003092  -0.000001885  -0.000012210  -0.000010880  -0.001975068   0.000000003  -0.000000004

   13    1.1  1.0 -1.0   0.095925483  -0.485741876   0.571557485  -0.014259872   0.000930644  -0.001369361   0.499981784   0.000322215
                        -0.011056730   0.007601121  -0.007399369   0.017819220   0.004703826   0.001506492   0.000890176  -0.000000422

   14    2.1  1.0 -1.0  -0.027257067   0.009326819  -0.004582774   0.212229711  -0.000951754  -0.457471799   0.000322076  -0.499984377
                        -0.485308786  -0.095488613   0.017306233   0.447170238   0.001466998   0.201753002   0.000199561  -0.000250874

   15    3.1  1.0 -1.0  -0.006476527   0.002731642  -0.005844456   0.012443388   0.318306430   0.000181621  -0.000893917   0.001023712
                        -0.095184894   0.486000519  -0.282526092   0.007299544  -0.381977900  -0.000079858   0.499983080   0.002183792

   16    4.1  1.0 -1.0   0.000017581  -0.000004431   0.000012970  -0.000031719  -0.000923092   0.000010237   0.000000843   0.000013723
                         0.000266345  -0.001411356   0.000819724  -0.000012294   0.001107707  -0.000004508   0.001527290   0.000006676

   17    5.1  1.0 -1.0   0.000076089  -0.000011463  -0.000004996  -0.000615273  -0.000003648  -0.001397302   0.000017920  -0.001527101
                         0.001409695   0.000266940  -0.000044290  -0.001297549   0.000003248   0.000616265   0.000011193  -0.000000720

   18    6.1  1.0 -1.0   0.000279135  -0.001409121   0.001657885  -0.000048269   0.000000491  -0.000011306  -0.001527096  -0.000017906
                        -0.000015796   0.000021703  -0.000020033   0.000037253   0.000016275   0.000002230   0.000000986   0.000000009

   19    1.1  0.0  0.0  -0.000054435  -0.000034340   0.006018674   0.121798361   0.000026093  -0.000000013   0.000000000   0.000000000
                        -0.000947648  -0.004389151  -0.000038957  -0.058527786   0.000021436   0.000000006  -0.000000018   0.000000221

   20    2.1  0.0  0.0   0.001862750  -0.001027358   0.000296008  -0.003650869   0.000669773   0.000000070   0.000000001  -0.000000000
                         0.032428522  -0.131312644  -0.000001916   0.001754353   0.000550243  -0.000000031  -0.000001366  -0.000000007

   21    3.1  0.0  0.0   0.007534010   0.000253805   0.000569458   0.001758558   0.000410676   0.000001453  -0.000000000   0.000000000
                         0.131159056   0.032440097  -0.000003686  -0.000845040   0.000337385  -0.000000643   0.000000067   0.000000002

   22    4.1  0.0  0.0  -0.000048725   0.000006102   0.034950615  -0.001415147   0.101010145  -0.000000008  -0.000000000   0.000000000
                        -0.000848253   0.000779949  -0.000226225   0.000680020   0.082983453   0.000000004   0.000000014   0.000000001

   23    5.1  0.0  0.0   0.000021522  -0.000001171  -0.130597920   0.005233206   0.027036717  -0.000000010  -0.000000000   0.000000000
                         0.000374670  -0.000149677   0.000845323  -0.002514713   0.022211631   0.000000005   0.000000013   0.000000002

   24    6.1  0.0  0.0  -0.000000001   0.000000000   0.000000787  -0.000000026  -0.000000085   0.000000000   0.000000000   0.000000000
                        -0.000000009   0.000000006  -0.000000005   0.000000012  -0.000000070  -0.000000000  -0.000000001   0.000000000

   25    1.1  2.0  2.0  -0.000147225  -0.000046034  -0.000013634  -0.001105694   0.000009767  -0.002415716  -0.000011557   0.002642884
                        -0.002475765  -0.000491675  -0.000090982  -0.002271750  -0.000010261   0.001072080  -0.000004363  -0.000004809

   26    2.1  2.0  2.0   0.000033201  -0.000027379   0.000007648   0.000000298   0.001596198  -0.000000000   0.000000012  -0.000000000
                         0.000983903  -0.004959893  -0.004359836   0.000189906  -0.001998889  -0.000000009  -0.000001793   0.000000000

   27    3.1  2.0  2.0  -0.002476031  -0.000491730  -0.000090994  -0.002271995  -0.000010263   0.001072191  -0.000004361  -0.000004809
                         0.000147235   0.000046063   0.000013663   0.001105811  -0.000009766   0.002415968   0.000011537  -0.002643159

   28    1.1  2.0  1.0  -0.000004215   0.000026200  -0.000010505   0.000025270  -0.001600728  -0.000003981  -0.000002351   0.000000006
                         0.000492867  -0.002478855  -0.004391830   0.000147200   0.001920497   0.000001783   0.002641557   0.000011530

   29    2.1  2.0  1.0  -0.000147198  -0.000046067  -0.000013644  -0.001106131   0.000009763   0.002415124   0.000011545  -0.002644030
                        -0.002475252  -0.000491567  -0.000091013  -0.002272681  -0.000010270  -0.001071820   0.000004358   0.000004799

   30    3.1  2.0  1.0  -0.000490976   0.002480771  -0.000032689  -0.000042682   0.003919889   0.000001754   0.002644444   0.000011550
                         0.000037429  -0.000053587   0.000018154  -0.000024991   0.003197334   0.000003987   0.000002353   0.000000003

   31    1.1  2.0  0.0  -0.000348280  -0.000009426  -0.000031974  -0.000027947   0.000001963   0.001971437  -0.000000003   0.000000002
                        -0.006063180  -0.001204780   0.000000207   0.000013429   0.000001613  -0.000872180   0.000003547   0.000002512

   32    2.1  2.0  0.0   0.000000014  -0.000000010   0.000000001  -0.000000026  -0.000000010   0.000006515   0.000003842  -0.000000012
                         0.000000252  -0.000001244  -0.000000000   0.000000013  -0.000000008  -0.000002882  -0.004316236  -0.000018851

   33    3.1  2.0  0.0  -0.000000703  -0.000000809   0.000223157   0.005580336   0.000026738   0.000002285  -0.000000008  -0.000001414
                        -0.000012232  -0.000103411  -0.000001444  -0.002681520   0.000021966  -0.000001011   0.000009446  -0.002160214

   34    1.1  2.0 -1.0  -0.000060624   0.000064982  -0.000046348   0.000099140  -0.001573299   0.000003997   0.000002352  -0.000000009
                        -0.000489142   0.002478141  -0.004391598   0.000111703   0.001943031  -0.000001746  -0.002641557  -0.000011530

   35    2.1  2.0 -1.0   0.000137201  -0.000038370   0.000012465  -0.001083320   0.000008180  -0.002417601   0.000011553  -0.002644034
                         0.002475826   0.000492227  -0.000091182  -0.002283643  -0.000011570   0.001066219  -0.000004337  -0.000001339

   36    3.1  2.0 -1.0  -0.000492032   0.002481306   0.000032922   0.000007156  -0.003897331   0.000001770   0.002644444   0.000011550
                         0.000019037   0.000014765   0.000017730  -0.000048940  -0.003224793   0.000003980   0.000002356  -0.000000018

   37    1.1  2.0 -2.0  -0.000137232   0.000038335  -0.000012455   0.001082866  -0.000008170  -0.002418193   0.000011565  -0.002642888
                        -0.002476339  -0.000492335   0.000091151   0.002282720   0.000011572   0.001066482  -0.000004342  -0.000001351

   38    2.1  2.0 -2.0   0.000079680  -0.000050229   0.000064085  -0.000148087  -0.001651079   0.000000006  -0.000000009   0.000000000
                         0.000981234  -0.004959714   0.004359372  -0.000118889   0.001953802   0.000000006  -0.000001793   0.000000000

   39    3.1  2.0 -2.0   0.002476605   0.000492391  -0.000091163  -0.002282964  -0.000011572  -0.001066594   0.000004341   0.000001350
                        -0.000137253   0.000038363  -0.000012484   0.001082984  -0.000008172  -0.002418444   0.000011544  -0.002643163


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.0  1.0   0.404515832  -0.000923607   0.067580818  -0.003190299   0.074810498  -0.022525354  -0.054980824   0.000013052
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.0  1.0  -0.001505720   0.047347186   0.000640706  -0.007345490  -0.000442438  -0.000195886   0.000204652   0.002968765
                        -0.000828678   0.048330223   0.003308172   0.067180977   0.000689330   0.000024245   0.000112630  -0.001265648

    3    3.1  1.0  1.0   0.000003083   0.000567022   0.001108112   0.000567646  -0.000475655   0.001640397  -0.000000419  -0.000001425
                        -0.404521882  -0.000713184   0.067564028  -0.003270332   0.017919258  -0.076028305   0.054981019   0.000000593

    4    4.1  1.0  1.0   0.000006211  -0.000002431  -0.000012979  -0.000006285   0.000003056  -0.000016340   0.000001380  -0.000338165
                        -0.002611801   0.000010781  -0.000694552   0.000038422  -0.000184223   0.000781873  -0.000579845   0.000144150

    5    5.1  1.0  1.0   0.000019275  -0.000486804  -0.000014384   0.000075860  -0.000003958   0.000004470   0.000004279   0.045575304
                        -0.000023398  -0.000496928  -0.000038820  -0.000690609  -0.000008361   0.000005154  -0.000005195  -0.019428410

    6    6.1  1.0  1.0  -0.002611851  -0.000014909   0.000694880  -0.000031985   0.000769456  -0.000231681  -0.000579860   0.000304776
                        -0.000006384  -0.000005491  -0.000002059  -0.000007577  -0.000000525   0.000001890  -0.000001417  -0.000215813

    7    1.1  1.0  0.0  -0.000001909  -0.000586897  -0.004485702  -0.095094005  -0.000004045   0.000021249   0.000000259  -0.001806863
                         0.002129395  -0.000589838   0.000028414  -0.009598261  -0.000537739  -0.000673795  -0.000289421  -0.004236487

    8    2.1  1.0  0.0  -0.000512782   0.000547946   0.001566466   0.000783575  -0.000605269   0.002386126   0.000069696   0.000006734
                         0.572075667   0.000550692  -0.000009922   0.000079090  -0.080456781  -0.075661603  -0.077754092   0.000015790

    9    3.1  1.0  0.0   0.000001050  -0.067483965  -0.001229359   0.000891368  -0.000005688   0.000003518  -0.000000143   0.000001882
                        -0.001171926  -0.067822168   0.000007787   0.000089970  -0.000756117  -0.000111557   0.000159284   0.000004412

   10    4.1  1.0  0.0   0.000000030   0.000694013   0.000012863  -0.000006818   0.000000015   0.000000134   0.000000007  -0.000036967
                        -0.000033155   0.000697491  -0.000000081  -0.000000688   0.000002049  -0.000004234  -0.000007359  -0.000086675

   11    5.1  1.0  0.0  -0.000003311  -0.000000772  -0.000015508   0.000002736   0.000006225  -0.000024540  -0.000000735  -0.000205424
                         0.003693552  -0.000000776   0.000000098   0.000000276   0.000827487   0.000778146   0.000819971  -0.000481651

   12    6.1  1.0  0.0  -0.000000024  -0.000004417  -0.000046278  -0.000978020   0.000000028  -0.000000054  -0.000000005   0.027887151
                         0.000027180  -0.000004440   0.000000293  -0.000098716   0.000003661   0.000001699   0.000006034   0.065385999

   13    1.1  1.0 -1.0   0.404515182  -0.000004617  -0.067575395   0.003125951   0.074802031  -0.022480592  -0.054980735   0.000009034
                         0.000725177   0.000923595   0.000856112   0.000637527  -0.001125521  -0.001419344  -0.000098565  -0.000009420

   14    2.1  1.0 -1.0  -0.001507204  -0.048092929  -0.000598747  -0.006227648  -0.000452759  -0.000193969   0.000204854   0.002968382
                         0.000825977  -0.047588199   0.003316023   0.067293806  -0.000682595  -0.000036540  -0.000112263  -0.001266547

   15    3.1  1.0 -1.0  -0.000722106   0.000716010  -0.000252124   0.000097324  -0.000745196  -0.003153479   0.000098147  -0.000001415
                         0.404521237  -0.000563450   0.067572644  -0.003317803  -0.017910074   0.075980587  -0.054980932   0.000000618

   16    4.1  1.0 -1.0   0.000001529  -0.000010793   0.000004180  -0.000001520   0.000005827   0.000032959   0.000000340  -0.000338109
                         0.002611808   0.000002377  -0.000694660   0.000038903   0.000184156  -0.000781349   0.000579847   0.000144281

   17    5.1  1.0 -1.0   0.000019233   0.000494488   0.000013891   0.000063677  -0.000003832   0.000004786   0.000004270   0.045568468
                         0.000023432   0.000489282  -0.000038999  -0.000691839   0.000008420  -0.000004862   0.000005202  -0.019444439

   18    6.1  1.0 -1.0  -0.002611859   0.000005417  -0.000694850   0.000032854   0.000769377  -0.000231101  -0.000579862   0.000366718
                         0.000001701   0.000014936   0.000006744  -0.000001033  -0.000011052  -0.000016485   0.000000377  -0.000070580

   19    1.1  0.0  0.0   0.000000008   0.702348991   0.000007601   0.000017945  -0.000012952   0.000001233   0.000000001   0.000000012
                         0.000000000  -0.698846650   0.001199927  -0.000177787   0.000000097   0.000000039   0.000000000  -0.000000005

   20    2.1  0.0  0.0   0.000000002  -0.000850684   0.006275826   0.000046873  -0.000033726  -0.000043137  -0.000000001  -0.000000067
                         0.000000000   0.000846442   0.990778238  -0.000464393   0.000000254  -0.000001360  -0.000000000   0.000000029

   21    3.1  0.0  0.0   0.000000010   0.000126270   0.000002958  -0.099500181  -0.000008873   0.000000811   0.000000000  -0.000001385
                         0.000000000  -0.000125640   0.000466960   0.985790100   0.000000067   0.000000026   0.000000000   0.000000591

   22    4.1  0.0  0.0  -0.000000372  -0.000000689   0.000000278   0.000000062   0.024049040   0.990015686  -0.000000019   0.000000006
                        -0.000000000   0.000000686   0.000043964  -0.000000613  -0.000180919   0.031221945  -0.000000000  -0.000000003

   23    5.1  0.0  0.0   0.000000537   0.000009173   0.000000207  -0.000000891   0.990479833  -0.024037730  -0.000000042   0.000000002
                         0.000000000  -0.000009128   0.000032690   0.000008828  -0.007451289  -0.000758074  -0.000000000  -0.000000001

   24    6.1  0.0  0.0   0.134663964  -0.000000002   0.000000000   0.000000000   0.000000078   0.000000054   0.990888321  -0.000000000
                         0.000120706   0.000000002   0.000000001  -0.000000001  -0.000000001   0.000000002   0.000888196   0.000000000

   25    1.1  2.0  2.0   0.000000013   0.000293868   0.000005527  -0.000045676  -0.000001009  -0.000001758  -0.000000003  -0.353616657
                         0.000000000   0.000300007   0.000019675   0.000417053   0.000004051   0.000001118  -0.000000000   0.150752053

   26    2.1  2.0  2.0  -0.000000010  -0.000005231  -0.000007714  -0.000004950   0.000002428  -0.000009641   0.000000002  -0.000002883
                         0.000001516   0.000010645  -0.000838984   0.000039087  -0.000575579   0.000611914  -0.000000266  -0.000000313

   27    3.1  2.0  2.0  -0.000000001   0.000300041   0.000019677   0.000417099   0.000004051   0.000001118   0.000000000   0.150770135
                         0.000000005  -0.000293900  -0.000005523   0.000045682   0.000001014   0.000001757  -0.000000001   0.353659588

   28    1.1  2.0  1.0  -0.000000001   0.000001890   0.000006364   0.000000342  -0.000002772   0.000010892   0.000000000  -0.000557852
                         0.000001121   0.000009844  -0.000419328   0.000019817  -0.000817325  -0.000192343  -0.000000206   0.000237016

   29    2.1  2.0  1.0  -0.000000005   0.000293978   0.000005526  -0.000045668  -0.000001011  -0.000001756   0.000000001   0.355311512
                         0.000000003   0.000300119   0.000019672   0.000416966   0.000004053   0.000001118  -0.000000000  -0.151475674

   30    3.1  2.0  1.0  -0.000001076  -0.000000799   0.000419611  -0.000019268  -0.000241887  -0.000804327   0.000000195   0.000236494
                         0.000000001  -0.000007120  -0.000014080  -0.000005294   0.000005200  -0.000020535  -0.000000000   0.000554887

   31    1.1  2.0  0.0   0.000000017  -0.000005714   0.000000306  -0.000103168  -0.000002551  -0.000004214  -0.000000004   0.291537702
                         0.000000000   0.000005685   0.000048264   0.001022127   0.000000019  -0.000000133  -0.000000000  -0.124340928

   32    2.1  2.0  0.0   0.000000006  -0.000000001  -0.000000001  -0.000000001   0.000000001   0.000000003  -0.000000001   0.000909127
                         0.000000000   0.000000001  -0.000000199   0.000000008  -0.000000000   0.000000000  -0.000000000  -0.000387743

   33    3.1  2.0  0.0  -0.000000015  -0.000729458   0.000000084   0.000000877  -0.000009906  -0.000002869   0.000000003  -0.000045300
                        -0.000000000   0.000725820   0.000013230  -0.000008688   0.000000075  -0.000000090   0.000000000   0.000019320

   34    1.1  2.0 -1.0  -0.000000001   0.000009835   0.000011676   0.000004295  -0.000009525   0.000001249   0.000000000   0.000557196
                         0.000001121   0.000001939   0.000419213  -0.000019349  -0.000817274  -0.000192647  -0.000000206  -0.000238553

   35    2.1  2.0 -1.0   0.000000005   0.000298645   0.000005276   0.000038576   0.000001071   0.000001682  -0.000000001  -0.355264741
                         0.000000003   0.000295475  -0.000019740  -0.000417682   0.000004038   0.000001226  -0.000000000   0.151585337

   36    3.1  2.0 -1.0   0.000001076  -0.000007116   0.000419756  -0.000019938   0.000241938   0.000804023  -0.000000195   0.000236774
                         0.000000002  -0.000000834   0.000008763   0.000001336   0.000001561   0.000030187  -0.000000001   0.000554767

   37    1.1  2.0 -2.0   0.000000013  -0.000298534  -0.000005277  -0.000038586  -0.000001070  -0.000001684  -0.000000003  -0.353569333
                        -0.000000000  -0.000295364   0.000019744   0.000417768  -0.000004035  -0.000001226   0.000000000   0.150863010

   38    2.1  2.0 -2.0  -0.000000007  -0.000010671  -0.000002915  -0.000002961   0.000011087   0.000028935   0.000000002  -0.000001770
                        -0.000001516   0.000005178  -0.000839014   0.000039288   0.000575477  -0.000611305   0.000000266   0.000002297

   39    3.1  2.0 -2.0  -0.000000001   0.000295396  -0.000019745  -0.000417815   0.000004035   0.000001226   0.000000000  -0.150881478
                        -0.000000005  -0.000298568  -0.000005274  -0.000038590  -0.000001074  -0.000001683   0.000000001  -0.353612100


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.0  1.0  -0.003278195   0.000012815   0.005054239  -0.000023694   0.004571374  -0.000019770  -0.001622868   0.000000009
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.0  1.0   0.000012870   0.003265340  -0.000024054  -0.004384767  -0.000019721  -0.004583810   0.000004918   0.000000052
                         0.000001536  -0.000002788   0.000006809  -0.001430077   0.000002069  -0.000000771   0.000003398   0.000000155

    3    3.1  1.0  1.0   0.000000133  -0.000006626  -0.000005192   0.000001965   0.000000135  -0.000005349  -0.000016227  -0.000000000
                         0.003208637  -0.000000654   0.001122905   0.000000648   0.004628882  -0.000002722  -0.005195647  -0.000000000

    4    4.1  1.0  1.0  -0.000117030  -0.000448162   0.000099089   0.000467451   0.000158511   0.000383617  -0.000287551  -0.000000054
                         0.048820995  -0.000009648   0.016059275   0.000152798   0.066261920  -0.000038944  -0.074348798   0.000000201

    5    5.1  1.0  1.0  -0.000362937   0.050037483   0.000466449  -0.063317510   0.000451338  -0.066257059  -0.000191839  -0.000001971
                         0.000361296  -0.000042500   0.000209702  -0.020649416   0.000488504  -0.000011392  -0.000465085  -0.000005487

    6    6.1  1.0  1.0   0.050561165   0.000358273  -0.073523131  -0.000359316  -0.066481069  -0.000448866   0.023622849   0.000000384
                         0.000119155  -0.000000389   0.000039988  -0.000229452   0.000161680   0.000000099  -0.000180804  -0.000000091

    7    1.1  1.0  0.0  -0.000007293   0.000004790  -0.000000012   0.002010235   0.000010350   0.000007042  -0.000000075  -0.000001505
                        -0.000000006  -0.000000005  -0.000028134  -0.006167883  -0.000000013  -0.000000000  -0.000020381   0.000000534

    8    2.1  1.0  0.0   0.000000023   0.000009407  -0.000002471  -0.000009833  -0.000000048  -0.000007500  -0.000018441   0.000000010
                         0.000000000  -0.000000010  -0.005568771   0.000030171   0.000000000   0.000000000  -0.005041451  -0.000000003

    9    3.1  1.0  0.0   0.000000926   0.004559642   0.000000002  -0.000002176   0.000003845   0.006530472  -0.000000035  -0.000000008
                         0.000000001  -0.000004614   0.000005041   0.000006676  -0.000000005  -0.000000191  -0.000009522   0.000000003

   10    4.1  1.0  0.0   0.000013859   0.069343099   0.000000279   0.000037845   0.000055401   0.093476146   0.000001355   0.000000008
                         0.000000012  -0.000070166   0.000629729  -0.000116117  -0.000000072  -0.000002735   0.000370527  -0.000000003

   11    5.1  1.0  0.0  -0.000001299   0.000624918  -0.000035656   0.000181653   0.000001471   0.000539186  -0.000266790   0.000001089
                        -0.000000001  -0.000000632  -0.080368953  -0.000557355  -0.000000002  -0.000000016  -0.072935060  -0.000000386

   12    6.1  1.0  0.0   0.000112323   0.000096472  -0.000000215  -0.029236216  -0.000150712   0.000124386  -0.000001880  -0.000032713
                         0.000000097  -0.000000098  -0.000484439   0.089703718   0.000000195  -0.000000004  -0.000513955   0.000011596

   13    1.1  1.0 -1.0   0.003278190  -0.000012815   0.005054237  -0.000019144  -0.004571358   0.000019770  -0.001622824  -0.000000007
                         0.000005684   0.000000026  -0.000004485  -0.000013962   0.000011845  -0.000000001   0.000011872   0.000000006

   14    2.1  1.0 -1.0  -0.000012872  -0.003265339  -0.000024060  -0.004385353   0.000019726   0.004583810   0.000004893   0.000000057
                         0.000001514   0.000003820  -0.000006788  -0.001428279   0.000002018  -0.000001040  -0.000003434   0.000000154

   15    3.1  1.0 -1.0  -0.000005696   0.000006624  -0.000006188   0.000001970   0.000011859   0.000005349   0.000021784  -0.000000000
                         0.003208632  -0.000000667  -0.001122900   0.000000634   0.004628866  -0.000002723   0.005195627  -0.000000000

   16    4.1  1.0 -1.0   0.000032387   0.000448141   0.000084840   0.000467714   0.000013182  -0.000383620   0.000256372   0.000000168
                         0.048821125  -0.000010555  -0.016059357   0.000151991   0.066262109  -0.000038922   0.074348912   0.000000122

   17    5.1  1.0 -1.0   0.000362310  -0.050037466   0.000466263  -0.063325162  -0.000450071   0.066257058  -0.000188432  -0.000001925
                         0.000361925   0.000058763  -0.000210116  -0.020625936   0.000489672  -0.000015269   0.000466476  -0.000005503

   18    6.1  1.0 -1.0  -0.050561295  -0.000358273  -0.073523137  -0.000425514   0.066481265   0.000448866   0.023623539  -0.000000356
                         0.000031495   0.000000336   0.000025250  -0.000026340  -0.000010580   0.000000073   0.000007981   0.000000171

   19    1.1  0.0  0.0   0.000000000  -0.000000002  -0.000003320   0.000002843   0.000000008   0.000000011   0.000000221  -0.000000000
                        -0.000000053  -0.000002114   0.000000001   0.000000927   0.000005844   0.000384921  -0.000000001  -0.000000000

   20    2.1  0.0  0.0   0.000000003   0.000000000   0.000003140  -0.000017636   0.000000499  -0.000000000   0.000004520   0.000000000
                        -0.000003603   0.000000030  -0.000000001  -0.000005748   0.000384798  -0.000005664  -0.000000017   0.000000000

   21    3.1  0.0  0.0  -0.000000000  -0.000000000   0.000000372  -0.000366406  -0.000000024   0.000000000   0.000001257   0.000000003
                         0.000000174  -0.000000017  -0.000000000  -0.000119419  -0.000018497   0.000003264  -0.000000005   0.000000008

   22    4.1  0.0  0.0  -0.000000000  -0.000000000   0.000016523   0.000001423  -0.000000006  -0.000000000   0.000384522   0.000000000
                         0.000000042  -0.000000000  -0.000000007   0.000000464  -0.000004590  -0.000000022  -0.000001407   0.000000000

   23    5.1  0.0  0.0  -0.000000000  -0.000000000   0.000385505   0.000000461  -0.000000004   0.000000000  -0.000016514   0.000000000
                         0.000000027  -0.000000017  -0.000000171   0.000000150  -0.000002869   0.000003359   0.000000060   0.000000001

   24    6.1  0.0  0.0   0.000000000   0.000000000  -0.000001079   0.000000002  -0.000000000  -0.000000000   0.000001479   0.000000001
                        -0.000000000   0.000000002   0.000000000   0.000000001  -0.000000001  -0.000000001  -0.000000005   0.000000002

   25    1.1  2.0  2.0  -0.000078954  -0.386636059   0.000325364   0.273151340   0.000167092   0.284301365   0.000068432  -0.111340453
                         0.000600783   0.000330351  -0.000280122   0.089085472   0.000462809   0.000047493  -0.000872513  -0.314111235

   26    2.1  2.0  2.0   0.000004912   0.000004193   0.000019615  -0.000768947   0.000517064  -0.000917202  -0.001385121   0.000005580
                        -0.004341409  -0.000000546   0.384222688  -0.000598984   0.572194386  -0.000336737  -0.424024019   0.000168567

   27    3.1  2.0  2.0   0.000601549   0.000330187  -0.000280509   0.089114705   0.000463355   0.000047889  -0.000873593   0.094818076
                         0.000078847   0.386683213  -0.000325365  -0.273239748  -0.000167136  -0.284394423  -0.000068374  -0.033609505

   28    1.1  2.0  1.0   0.000337423  -0.000004224   0.000172244  -0.000226976   0.000255358   0.000916452   0.000524389  -0.000045121
                        -0.387570837   0.000078219   0.559274416  -0.000774452   0.283112958  -0.000167847   0.120763532  -0.000282699

   29    2.1  2.0  1.0   0.000078083   0.384120191   0.000323567   0.270740566   0.000170784   0.287917156   0.000066642  -0.155454885
                        -0.000608546  -0.000329098  -0.000280545   0.088298000   0.000453535   0.000047287  -0.000873938  -0.438566755

   30    3.1  2.0  1.0  -0.383152113   0.000077885   0.175065082  -0.000174391  -0.289090046   0.000170288   0.544812628   0.000053161
                        -0.000331840   0.000007437  -0.000153513  -0.000540115   0.000260643  -0.001833606  -0.001908940   0.000034532

   31    1.1  2.0  0.0   0.000000436   0.000000048   0.000796602   0.665302617   0.000001448   0.000000004   0.000174325   0.190367205
                        -0.000502619   0.000047626  -0.000000353   0.216835281   0.001117833   0.000136449  -0.000000638   0.537010918

   32    2.1  2.0  0.0  -0.000545512  -0.000000128   0.000000654  -0.000002837   0.000006471  -0.000000000   0.000000442  -0.000099795
                         0.629287827  -0.000126772  -0.000000000  -0.000000925   0.004994571  -0.000003316  -0.000000002  -0.000281414

   33    3.1  2.0  0.0  -0.000000054   0.000315179   0.000686051  -0.000131695   0.000000536   0.000020545   0.002137973  -0.000005582
                         0.000062655   0.311481486  -0.000000304  -0.000042922   0.000413786   0.702266647  -0.000007821  -0.000015701

   34    1.1  2.0 -1.0  -0.000334526  -0.000004383   0.000324008   0.000639730  -0.000478223   0.000916462   0.000359097   0.000143069
                         0.387570840  -0.000078210   0.559274349  -0.000491976  -0.283112669   0.000167793   0.120764137   0.000247979

   35    2.1  2.0 -1.0   0.000077028   0.384120071  -0.000323815  -0.270774916   0.000169608   0.287917152  -0.000073034   0.155480540
                         0.000608681  -0.000448261  -0.000280258  -0.088192606  -0.000453976  -0.000064133  -0.000873427   0.438557634

   36    3.1  2.0 -1.0  -0.383152112   0.000077870  -0.175065149   0.000459161  -0.289089751   0.000170395  -0.544812014   0.000019541
                        -0.000332447  -0.000007595   0.000001824  -0.000333628   0.000488425   0.001833596   0.002076808  -0.000060315

   37    1.1  2.0 -2.0   0.000077912   0.386635936   0.000325612   0.273186723  -0.000165892  -0.284301362   0.000074814  -0.111358448
                         0.000600919  -0.000452100   0.000279833   0.088976908   0.000463240   0.000064128   0.000871989  -0.314104856

   38    2.1  2.0 -2.0   0.000002615  -0.000004194  -0.000321312  -0.000974223   0.000965562   0.000917182   0.001716958   0.000101872
                        -0.004341411  -0.000000537  -0.384222555   0.000030851   0.572193805  -0.000336791   0.424022805   0.000134434

   39    3.1  2.0 -2.0  -0.000601684   0.000452359  -0.000280220  -0.089005383  -0.000463787  -0.000064528  -0.000873070  -0.094816235
                         0.000077804   0.386683089   0.000325614   0.273275378  -0.000165935  -0.284394419   0.000074763   0.033614740


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.0  1.0  -0.000001204  -0.000000026  -0.000000753   0.000000026   0.000000068  -0.000000006  -0.002516966  -0.000010133
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.0  1.0   0.000000008  -0.000000316   0.000000005   0.000000317  -0.000000001  -0.000000158   0.000009374  -0.001866614
                         0.000000001  -0.000000053  -0.000000002   0.000000003   0.000000001   0.000000004   0.000005152  -0.000004909

    3    3.1  1.0  1.0  -0.000000007   0.000000004  -0.000000008  -0.000000006   0.000000046   0.000000004   0.000000015   0.000003795
                         0.000000006   0.000000001   0.000000460   0.000000001  -0.000000850  -0.000000004   0.002502300   0.000003163

    4    4.1  1.0  1.0   0.000000004  -0.000000835   0.000000094   0.000000790  -0.000001192  -0.000000077   0.000968002  -0.004451469
                        -0.000006588  -0.000000182  -0.000027908   0.000000012   0.000025672  -0.000000026  -0.410255270  -0.000865195

    5    5.1  1.0  1.0   0.000000900   0.000045760   0.000000771  -0.000046661  -0.000000173   0.000006837   0.003001850   0.494140494
                        -0.000000078   0.000007582  -0.000000646  -0.000000666   0.000000687  -0.000000287  -0.003672285   0.001292339

    6    6.1  1.0  1.0  -0.000028437   0.000000284  -0.000029884  -0.000000385   0.000006716   0.000000049  -0.406355859   0.002793507
                         0.000000046   0.000000398   0.000000212  -0.000000075  -0.000000134  -0.000000160  -0.000994414   0.000007329

    7    1.1  1.0  0.0  -0.000000012  -0.000000003   0.000000000   0.000000010  -0.000000000   0.000000005   0.000000012  -0.000003284
                        -0.000000000  -0.000000000  -0.000000031  -0.000000571  -0.000000000  -0.000000000  -0.000013209  -0.000000007

    8    2.1  1.0  0.0   0.000000004   0.000000004   0.000000001  -0.000000000   0.000000003  -0.000000001   0.000003163  -0.000005411
                         0.000000000   0.000000001  -0.000000138   0.000000004   0.000000000   0.000000000  -0.003550708  -0.000000012

    9    3.1  1.0  0.0  -0.000000000  -0.000000362  -0.000000000   0.000000000  -0.000000006   0.000001141  -0.000000006  -0.002614912
                        -0.000000000  -0.000000060   0.000000005  -0.000000003  -0.000000000  -0.000000007   0.000007260  -0.000005941

   10    4.1  1.0  0.0   0.000000153   0.000022432   0.000000004  -0.000000001  -0.000000044  -0.000030779   0.000004626   0.708323899
                         0.000000000   0.000003746  -0.000001021   0.000000044  -0.000000002   0.000000195  -0.005192928   0.001609201

   11    5.1  1.0  0.0   0.000000028   0.000000610  -0.000000252  -0.000000011  -0.000000340  -0.000000865  -0.000514016   0.006334249
                         0.000000000   0.000000102   0.000060542   0.000000607  -0.000000017   0.000000005   0.577056244   0.000014390

   12    6.1  1.0  0.0  -0.000000496  -0.000000252  -0.000000002   0.000000431  -0.000000250   0.000000590  -0.000003779   0.000839313
                        -0.000000000  -0.000000042   0.000000545  -0.000024103  -0.000000012  -0.000000004   0.004242149   0.000001907

   13    1.1  1.0 -1.0   0.000001204   0.000000024  -0.000000753   0.000000026  -0.000000067   0.000000006  -0.002516962   0.000010133
                         0.000000001   0.000000008  -0.000000006   0.000000001  -0.000000007  -0.000000000  -0.000004484   0.000000046

   14    2.1  1.0 -1.0  -0.000000008   0.000000316   0.000000005   0.000000317   0.000000001   0.000000158   0.000009384   0.001866617
                         0.000000001   0.000000053   0.000000002   0.000000008   0.000000001   0.000000002  -0.000005136   0.000003573

   15    3.1  1.0 -1.0   0.000000007  -0.000000004  -0.000000005  -0.000000006   0.000000039  -0.000000004   0.000004472  -0.000003809
                         0.000000006  -0.000000000  -0.000000460  -0.000000001  -0.000000850  -0.000000004  -0.002502296   0.000003145

   16    4.1  1.0 -1.0  -0.000000001   0.000000849  -0.000000139   0.000000790  -0.000001346   0.000000076   0.000237126   0.004455354
                        -0.000006588   0.000000099   0.000027908   0.000000016   0.000025664  -0.000000027   0.410256344  -0.000844960

   17    5.1  1.0 -1.0  -0.000000900  -0.000045741   0.000000766  -0.000046655   0.000000105  -0.000006840   0.002995303  -0.494141266
                        -0.000000078  -0.000007697   0.000000653  -0.000001002   0.000000701  -0.000000201   0.003677627  -0.000952882

   18    6.1  1.0 -1.0   0.000028437  -0.000000398  -0.000029882  -0.000000388  -0.000006670  -0.000000051  -0.406356986  -0.002793511
                         0.000000058   0.000000285  -0.000000461   0.000000061  -0.000000796  -0.000000160   0.000270485  -0.000005364

   19    1.1  0.0  0.0   0.000000000   0.000000004   0.000000000   0.000000000   0.000000000   0.000000000   0.000000027  -0.000000015
                        -0.000000001  -0.000000026   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000006572

   20    2.1  0.0  0.0   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000019   0.000000000
                        -0.000000013  -0.000000000  -0.000000000  -0.000000000  -0.000000004  -0.000000000   0.000000000  -0.000000103

   21    3.1  0.0  0.0  -0.000000000   0.000000000  -0.000000000  -0.000000030  -0.000000000   0.000000000   0.000000012  -0.000000000
                         0.000000001  -0.000000000  -0.000000000  -0.000000001   0.000000001   0.000000000   0.000000000   0.000000053

   22    4.1  0.0  0.0   0.000000000   0.000000000  -0.000000018  -0.000000000   0.000000000  -0.000000000   0.000003032   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000003  -0.000000010

   23    5.1  0.0  0.0  -0.000000000   0.000000000  -0.000000027   0.000000001  -0.000000000  -0.000000000  -0.000002518  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000002   0.000000058

   24    6.1  0.0  0.0  -0.000000000  -0.000000000  -0.000000152  -0.000000002   0.000000000  -0.000000000  -0.002269024  -0.000000000
                         0.000000001   0.000000002  -0.000000001  -0.000000000  -0.000000002  -0.000000002  -0.000002021   0.000000015

   25    1.1  2.0  2.0   0.000089220   0.498182529   0.000047776  -0.394462644  -0.000007124   0.107732206   0.000000102   0.038247587
                        -0.000172224   0.083216441  -0.000066898  -0.007088687  -0.000019326  -0.000656216  -0.000000225   0.000100435

   26    2.1  2.0  2.0   0.000073256  -0.000056572   0.001732809  -0.000022851  -0.014314893  -0.000016781  -0.000000180   0.000000093
                        -0.288053106   0.000034608  -0.408249363  -0.000092041   0.288947819   0.000053933  -0.000165324   0.000000326

   27    3.1  2.0  2.0   0.000040888  -0.064216634   0.000061594   0.009100280   0.000030255   0.002102982   0.000000348   0.000100779
                         0.000069004   0.384384423   0.000100685  -0.506372565  -0.000050522   0.338733327  -0.000000156  -0.038301425

   28    1.1  2.0  1.0  -0.000120061   0.000063824  -0.001724383   0.000016392   0.003302042   0.000016945   0.000000189  -0.000000623
                         0.512090929  -0.000077977   0.408254349   0.000092430  -0.066161166  -0.000015292  -0.000109613  -0.000066101

   29    2.1  2.0  1.0   0.000037228   0.227402967  -0.000108372   0.224016993   0.000087321  -0.462027634  -0.000000154  -0.038464231
                        -0.000262580   0.037967614  -0.000008787   0.004025895   0.000019747   0.002894868  -0.000000524  -0.000101206

   30    3.1  2.0  1.0  -0.063891196  -0.000008811  -0.408230092  -0.000091686   0.511838449   0.000092541   0.000156322  -0.000065440
                        -0.000026642   0.000049697  -0.001742792   0.000027875   0.025334948   0.000017463   0.000000399   0.000001712

   31    1.1  2.0  0.0  -0.000000102  -0.000000478   0.000133705  -0.274375951   0.000000922   0.000000186   0.000000997   0.000000026
                         0.000320140   0.000002975   0.000000560  -0.004903633  -0.000018583   0.000032474   0.000000001  -0.000011517

   32    2.1  2.0  0.0  -0.000114318   0.000017707   0.000023504  -0.000014901  -0.026981297   0.000000668  -0.000000404  -0.000000242
                         0.549010025  -0.000106054   0.000000090  -0.000000262   0.545768359   0.000094662  -0.000000000   0.000106722

   33    3.1  2.0  0.0   0.000000009   0.046501695  -0.000010760   0.000026996   0.000005411   0.003577356  -0.000000453   0.000071534
                        -0.000044591  -0.278493051  -0.000000041   0.000000455  -0.000107957   0.565975796  -0.000000000  -0.031487373

   34    1.1  2.0 -1.0   0.000093199   0.000035021  -0.001679863  -0.000019673  -0.003239765   0.000017153   0.000000006  -0.000000923
                        -0.512090941   0.000094491   0.408254523   0.000091787   0.066164264   0.000015075  -0.000109614   0.000066097

   35    2.1  2.0 -1.0   0.000037061   0.227401939   0.000108435  -0.224017744   0.000088843  -0.462027344   0.000000155  -0.038464294
                         0.000262595   0.037973954  -0.000007879  -0.003981359  -0.000010918   0.002945794  -0.000000524  -0.000073564

   36    3.1  2.0 -1.0  -0.063891208   0.000007821   0.408230407   0.000090640   0.511841531   0.000092311  -0.000156323  -0.000065431
                         0.000000035  -0.000049854   0.001661252   0.000031122   0.025272993  -0.000018762   0.000000120  -0.000002010

   37    1.1  2.0 -2.0  -0.000089107  -0.498192833   0.000047227  -0.394464088   0.000009000  -0.107731892   0.000000102  -0.038247649
                        -0.000172257  -0.083154473   0.000067307  -0.007010971  -0.000018508   0.000705665   0.000000225  -0.000073350

   38    2.1  2.0 -2.0   0.000046703   0.000042252  -0.001671395  -0.000026114  -0.014254836   0.000017535  -0.000000474  -0.000000095
                        -0.288053118   0.000051118   0.408249601   0.000091171   0.288950807   0.000053716   0.000165323   0.000000326

   39    3.1  2.0 -2.0  -0.000040913  -0.064151235   0.000062446  -0.008999482  -0.000025043   0.002179070   0.000000348   0.000073251
                         0.000068975   0.384395284  -0.000100176   0.506374399  -0.000053264   0.338732860   0.000000157  -0.038301488


   Nr   State  S   Sz       33            34            35            36            37            38            39

    1    1.1  1.0  1.0   0.001873406  -0.000008501   0.000309983  -0.000004837  -0.000891516  -0.000006793  -0.000999254
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.0  1.0  -0.000010170  -0.001502265  -0.000000511  -0.000903038   0.000004776  -0.000874749   0.000006655
                         0.000001152   0.001085664  -0.000002049   0.000000619   0.000000324  -0.000293718  -0.000001795

    3    3.1  1.0  1.0  -0.000000065  -0.000000932   0.000003986  -0.000002525  -0.000000118  -0.000000297   0.000001198
                        -0.001843838   0.000000686   0.001041058  -0.000001517  -0.000938258  -0.000000108  -0.000235009

    4    4.1  1.0  1.0  -0.001177280  -0.002555161   0.002535162   0.002103581  -0.001211352   0.003073729  -0.000652071
                         0.503235524   0.001849794   0.557358509  -0.000804576  -0.489846805   0.001029430  -0.123342660

    5    5.1  1.0  1.0  -0.002788625   0.405266386   0.001634829  -0.498882581  -0.002879005  -0.467370622  -0.002439594
                         0.003166866  -0.292862045   0.002727974   0.000337965  -0.003216781  -0.156914328  -0.001820704

    6    6.1  1.0  1.0   0.491720806   0.002202373  -0.172832034  -0.002859453   0.501205662  -0.001514309   0.546817142
                         0.001192545  -0.003223436   0.001363734   0.000004486  -0.001232909  -0.001767959  -0.000316973

    7    1.1  1.0  0.0   0.000007064   0.001546916   0.000000021   0.000001641  -0.000003012   0.000405737   0.000000006
                         0.000000006   0.002138953   0.000004646  -0.000000002   0.000000005  -0.001209956   0.000008250

    8    2.1  1.0  0.0  -0.000000029  -0.000005772   0.000004597  -0.000003519   0.000000014  -0.000002858   0.000000766
                        -0.000000000  -0.000007981   0.001002351   0.000000004  -0.000000000   0.000008522   0.001105654

    9    3.1  1.0  0.0  -0.000004456  -0.000001923   0.000000018   0.001315479  -0.000002165  -0.000000513  -0.000000000
                        -0.000000004  -0.000002659   0.000003860  -0.000001399   0.000000004   0.000001530  -0.000000405

   10    4.1  1.0  0.0   0.001210563  -0.000461214  -0.000007913   0.696178758  -0.001131654   0.000251839  -0.000003000
                         0.000001054  -0.000637730  -0.001725590  -0.000740602   0.000001939  -0.000751013  -0.004327950

   11    5.1  1.0  0.0  -0.000003543  -0.003028013   0.002517580   0.002885419  -0.000019308   0.000918179   0.000412204
                        -0.000000003  -0.004186897   0.548999134  -0.000003069   0.000000033  -0.002738120   0.594739106

   12    6.1  1.0  0.0   0.001859291   0.410184173   0.000016259   0.000792474   0.001700927  -0.223924755   0.000001474
                         0.000001619   0.567170217   0.003545444  -0.000000843  -0.000002914   0.667770143   0.002126398

   13    1.1  1.0 -1.0  -0.001873403  -0.000002662   0.000309970   0.000004837   0.000891510  -0.000005419  -0.000999253
                        -0.000003264   0.000008074  -0.000002843  -0.000000010  -0.000003054  -0.000004095   0.000001385

   14    2.1  1.0 -1.0   0.000010167  -0.001501513  -0.000000492   0.000903037  -0.000004775  -0.000874982   0.000006657
                         0.000001170   0.001086704   0.000002054  -0.000001303   0.000000340  -0.000293023   0.000001786

   15    3.1  1.0 -1.0   0.000003277  -0.000000943  -0.000005562   0.000002522  -0.000003096  -0.000000302   0.000001523
                        -0.001843835   0.000000670  -0.001041050  -0.000001523  -0.000938253  -0.000000093   0.000235007

   16    4.1  1.0 -1.0   0.000300621  -0.002556939  -0.002576665  -0.002105288  -0.000466954   0.003072951  -0.000481097
                         0.503236812   0.001847336  -0.557358319  -0.000800099  -0.489848080   0.001031749   0.123343445

   17    5.1  1.0 -1.0   0.002783104   0.405046651   0.001609741   0.498882171   0.002867967  -0.467485145  -0.002437068
                         0.003171719  -0.293165876  -0.002742853  -0.000723467  -0.003226626  -0.156572806   0.001824084

   18    6.1  1.0 -1.0  -0.491722137   0.003751002  -0.172837273   0.002859456  -0.501206945  -0.002274026   0.546817056
                         0.000335945  -0.001082115   0.000221424  -0.000001598   0.000484315   0.000497609  -0.000441006

   19    1.1  0.0  0.0  -0.000000000  -0.000000032  -0.000001935   0.000001008  -0.000000026   0.000006800   0.000007686
                         0.000000183   0.000000023   0.000000009   0.000947168  -0.000015356   0.000002280  -0.000000005

   20    2.1  0.0  0.0  -0.000000010   0.000000196  -0.000011385  -0.000000016  -0.000001620  -0.000043897  -0.000007297
                         0.000011238  -0.000000142   0.000000052  -0.000014956  -0.000945827  -0.000014720   0.000000005

   21    3.1  0.0  0.0   0.000000000   0.000004035  -0.000002669   0.000000008   0.000000079  -0.000896778   0.000001055
                        -0.000000550  -0.000002918   0.000000012   0.000007903   0.000046214  -0.000300718  -0.000000001

   22    4.1  0.0  0.0   0.000000000  -0.000000016  -0.000946718  -0.000000002   0.000000020   0.000003016  -0.000034568
                        -0.000000136   0.000000011   0.000004341  -0.000001490   0.000011525   0.000001011   0.000000024

   23    5.1  0.0  0.0   0.000000000   0.000000001   0.000034686   0.000000008   0.000000012  -0.000000716  -0.000946364
                        -0.000000081  -0.000000001  -0.000000159   0.000007872   0.000006800  -0.000000240   0.000000656

   24    6.1  0.0  0.0   0.000000000   0.000000000  -0.000006824   0.000000000   0.000000000  -0.000000001   0.000005436
                        -0.000000005  -0.000000000   0.000000031   0.000000006   0.000000001  -0.000000000  -0.000000004

   25    1.1  2.0  2.0   0.000065177   0.031361930   0.000026313  -0.038605227   0.000063553  -0.036173453   0.000123180
                        -0.000103293  -0.022664566  -0.000175076   0.000026892   0.000090638  -0.012145341  -0.000055199

   26    2.1  2.0  2.0   0.000000987  -0.000000696  -0.000215830   0.000183278   0.000073448   0.000134953  -0.000003544
                        -0.000335033   0.000000183  -0.056267597   0.000124621   0.076659440   0.000179241   0.052064238

   27    3.1  2.0  2.0  -0.000104126  -0.022696301  -0.000175732   0.000026731   0.000090967  -0.012162220  -0.000055417
                        -0.000065203  -0.031406192  -0.000026284   0.038658310  -0.000063691   0.036223106  -0.000123355

   28    1.1  2.0  1.0  -0.000033235   0.000082555   0.000097376  -0.000183758   0.000037997   0.000007319   0.000032162
                         0.038341467  -0.000061391   0.016570347   0.000064077   0.039064588   0.000269980   0.075174115

   29    2.1  2.0  1.0  -0.000065961  -0.031246822   0.000026365  -0.037811264   0.000061477  -0.036769196   0.000123584
                         0.000102432   0.022581873  -0.000175052   0.000025814   0.000093853  -0.012345433  -0.000055649

   30    3.1  2.0  1.0   0.038610134  -0.000060625   0.072856840  -0.000061293  -0.037599325   0.000090273   0.023124390
                         0.000033559  -0.000083334  -0.000312971   0.000367049   0.000034910   0.000126694  -0.000036168

   31    1.1  2.0  0.0  -0.000000072  -0.025459071   0.000067499  -0.000000037   0.000000389  -0.089644085   0.000303779
                         0.000082413   0.018412300  -0.000000310  -0.000035047   0.000226947  -0.030060538  -0.000000211

   32    2.1  2.0  0.0   0.000054725  -0.000137026  -0.000000518  -0.000000001  -0.000001959  -0.000001022   0.000000161
                        -0.062828263   0.000099099   0.000000002  -0.000001061  -0.001143402  -0.000000343  -0.000000000

   33    3.1  2.0  0.0   0.000000047   0.000009287   0.000428019  -0.000099211   0.000000260   0.000034684   0.000135482
                        -0.000054274  -0.000006716  -0.000001963  -0.093260300   0.000151881   0.000011631  -0.000000094

   34    1.1  2.0 -1.0   0.000033557  -0.000084157   0.000054600  -0.000183893  -0.000095846  -0.000168603   0.000072042
                        -0.038341467   0.000059177   0.016570543  -0.000063686  -0.039064489   0.000210988   0.075174087

   35    2.1  2.0 -1.0  -0.000065782   0.031231440  -0.000027970  -0.037811234   0.000061155   0.036778566  -0.000123661
                        -0.000102547  -0.022603142  -0.000174802   0.000054634  -0.000094063   0.012317491  -0.000055478

   36    3.1  2.0 -1.0   0.038610134  -0.000060156  -0.072856646  -0.000062074  -0.037599224  -0.000148403  -0.023124418
                         0.000033702  -0.000083673   0.000355237  -0.000366918   0.000093912   0.000046658  -0.000004114

   37    1.1  2.0 -2.0  -0.000064997   0.031346022   0.000027918   0.038605196  -0.000063242  -0.036182630   0.000123257
                        -0.000103406  -0.022686563   0.000174828  -0.000055245   0.000090856  -0.012117975   0.000055028

   38    2.1  2.0 -2.0  -0.000000403  -0.000000392   0.000300228  -0.000183013   0.000189201   0.000215730  -0.000075713
                        -0.000335035   0.000000604   0.056267210   0.000125011   0.076659242  -0.000061646  -0.052064184

   39    3.1  2.0 -2.0   0.000104239   0.022718660  -0.000175483   0.000055520  -0.000091185   0.012134443  -0.000055246
                        -0.000065021   0.031390022   0.000027895   0.038658280  -0.000063379  -0.036232421   0.000123432


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.0  1.0   0.932%  23.600%  32.673%   0.052%   0.002%   0.000%  24.998%   0.000%  16.363%   0.000%
    2    2.1  1.0  1.0  23.627%   0.921%   0.032%  24.500%   0.000%  24.998%   0.000%  24.998%   0.000%   0.458%
    3    3.1  1.0  1.0   0.910%  23.620%   7.986%   0.021%  24.723%   0.000%  24.998%   0.001%  16.364%   0.000%
    4    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    5    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    7    1.1  1.0  0.0  47.217%   1.859%   0.003%   0.001%   0.001%  49.996%   0.000%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   0.004%   0.005%  16.708%   0.015%  48.708%   0.001%   0.000%   0.000%  32.727%   0.000%
    9    3.1  1.0  0.0   0.000%   0.013%   0.068%  48.998%   0.001%   0.000%   0.001%  49.996%   0.000%   0.915%
   10    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   12    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0   0.932%  23.600%  32.673%   0.052%   0.002%   0.000%  24.998%   0.000%  16.363%   0.000%
   14    2.1  1.0 -1.0  23.627%   0.921%   0.032%  24.500%   0.000%  24.998%   0.000%  24.998%   0.000%   0.458%
   15    3.1  1.0 -1.0   0.910%  23.620%   7.986%   0.021%  24.723%   0.000%  24.998%   0.001%  16.364%   0.000%
   16    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   17    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   19    1.1  0.0  0.0   0.000%   0.002%   0.004%   1.826%   0.000%   0.000%   0.000%   0.000%   0.000%  98.168%
   20    2.1  0.0  0.0   0.106%   1.724%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   1.726%   0.105%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.122%   0.000%   1.709%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   1.706%   0.003%   0.122%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.813%   0.000%
   25    1.1  2.0  2.0   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   26    2.1  2.0  2.0   0.000%   0.002%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   27    3.1  2.0  2.0   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   28    1.1  2.0  1.0   0.000%   0.001%   0.002%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
   29    2.1  2.0  1.0   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   30    3.1  2.0  1.0   0.000%   0.001%   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.001%   0.002%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
   35    2.1  2.0 -1.0   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   36    3.1  2.0 -1.0   0.000%   0.001%   0.000%   0.000%   0.003%   0.000%   0.001%   0.000%   0.000%   0.000%
   37    1.1  2.0 -2.0   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   38    2.1  2.0 -2.0   0.000%   0.002%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    3.1  2.0 -2.0   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.0  1.0   0.457%   0.001%   0.560%   0.051%   0.302%   0.000%   0.001%   0.000%   0.003%   0.000%
    2    2.1  1.0  1.0   0.001%   0.457%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.002%
    3    3.1  1.0  1.0   0.457%   0.001%   0.032%   0.578%   0.302%   0.000%   0.001%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.238%   0.000%   0.026%   0.000%
    5    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.245%   0.000%   0.250%   0.000%   0.444%
    6    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.256%   0.000%   0.541%   0.000%
    7    1.1  1.0  0.0   0.002%   0.913%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.004%
    8    2.1  1.0  0.0   0.000%   0.000%   0.647%   0.573%   0.605%   0.000%   0.000%   0.000%   0.003%   0.000%
    9    3.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   10    4.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.481%   0.000%   0.000%
   11    5.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.646%   0.000%
   12    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.505%   0.000%   0.000%   0.000%   0.890%
   13    1.1  1.0 -1.0   0.457%   0.001%   0.560%   0.051%   0.302%   0.000%   0.001%   0.000%   0.003%   0.000%
   14    2.1  1.0 -1.0   0.001%   0.457%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.002%
   15    3.1  1.0 -1.0   0.457%   0.001%   0.032%   0.578%   0.302%   0.000%   0.001%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.238%   0.000%   0.026%   0.000%
   17    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.245%   0.000%   0.250%   0.000%   0.444%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.256%   0.000%   0.541%   0.000%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0  98.168%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%  98.168%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.058%  98.111%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%  98.111%   0.058%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%  98.186%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.777%   0.000%  14.949%   0.000%   8.255%
   26    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%  14.763%   0.000%
   27    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.781%   0.000%  14.952%   0.000%   8.260%
   28    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.021%   0.000%  31.279%   0.000%
   29    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.919%   0.000%  14.755%   0.000%   8.110%
   30    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.681%   0.000%   3.065%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  10.045%   0.000%   0.000%   0.000%  48.965%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  39.600%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.702%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.021%   0.000%  31.279%   0.000%
   35    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.919%   0.000%  14.755%   0.000%   8.110%
   36    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.681%   0.000%   3.065%   0.000%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.777%   0.000%  14.949%   0.000%   8.255%
   38    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%  14.763%   0.000%
   39    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.781%   0.000%  14.952%   0.000%   8.260%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.0  1.0   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.0  1.0   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.0  1.0   0.002%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0   0.439%   0.000%   0.553%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.0  1.0   0.000%   0.439%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.0  1.0   0.442%   0.000%   0.056%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0   0.000%   0.874%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0   0.000%   0.000%   0.532%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.1  1.0 -1.0   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.002%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0   0.439%   0.000%   0.553%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    5.1  1.0 -1.0   0.000%   0.439%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    6.1  1.0 -1.0   0.442%   0.000%   0.056%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   8.083%   0.000%  11.106%   0.000%  25.511%   0.000%  15.565%   0.000%   1.161%
   26    2.1  2.0  2.0  32.741%   0.000%  17.980%   0.000%   8.297%   0.000%  16.667%   0.000%   8.370%   0.000%
   27    3.1  2.0  2.0   0.000%   8.088%   0.000%   1.012%   0.000%  15.188%   0.000%  25.650%   0.000%  11.474%
   28    1.1  2.0  1.0   8.015%   0.000%   1.458%   0.000%  26.224%   0.000%  16.667%   0.000%   0.439%   0.000%
   29    2.1  2.0  1.0   0.000%   8.290%   0.000%  21.651%   0.000%   5.315%   0.000%   5.020%   0.000%  21.348%
   30    3.1  2.0  1.0   8.357%   0.000%  29.682%   0.000%   0.408%   0.000%  16.665%   0.000%  26.262%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%  32.462%   0.000%   0.000%   0.000%   7.531%   0.000%   0.000%
   32    2.1  2.0  0.0   0.002%   0.000%   0.000%   0.000%  30.141%   0.000%   0.000%   0.000%  29.859%   0.000%
   33    3.1  2.0  0.0   0.000%  49.318%   0.000%   0.000%   0.000%   7.972%   0.000%   0.000%   0.000%  32.034%
   34    1.1  2.0 -1.0   8.015%   0.000%   1.458%   0.000%  26.224%   0.000%  16.667%   0.000%   0.439%   0.000%
   35    2.1  2.0 -1.0   0.000%   8.290%   0.000%  21.651%   0.000%   5.315%   0.000%   5.020%   0.000%  21.348%
   36    3.1  2.0 -1.0   8.357%   0.000%  29.682%   0.000%   0.408%   0.000%  16.665%   0.000%  26.262%   0.000%
   37    1.1  2.0 -2.0   0.000%   8.083%   0.000%  11.106%   0.000%  25.511%   0.000%  15.565%   0.000%   1.161%
   38    2.1  2.0 -2.0  32.741%   0.000%  17.980%   0.000%   8.297%   0.000%  16.667%   0.000%   8.370%   0.000%
   39    3.1  2.0 -2.0   0.000%   8.088%   0.000%   1.012%   0.000%  15.188%   0.000%  25.650%   0.000%  11.474%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39

    1    1.1  1.0  1.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.0  1.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0  16.831%   0.002%  25.325%   0.001%  31.065%   0.001%  23.995%   0.001%   1.521%
    5    5.1  1.0  1.0   0.002%  24.418%   0.002%  25.001%   0.001%  24.888%   0.002%  24.306%   0.001%
    6    6.1  1.0  1.0  16.513%   0.001%  24.179%   0.002%   2.987%   0.001%  25.121%   0.001%  29.901%
    7    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0   0.003%  50.173%   0.000%   0.000%   0.000%  48.467%   0.000%   0.000%   0.002%
   11    5.1  1.0  0.0  33.299%   0.004%   0.000%   0.003%  30.141%   0.001%   0.000%   0.001%  35.371%
   12    6.1  1.0  0.0   0.002%   0.000%   0.000%  48.993%   0.001%   0.000%   0.000%  49.606%   0.000%
   13    1.1  1.0 -1.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0  16.831%   0.002%  25.325%   0.001%  31.065%   0.001%  23.995%   0.001%   1.521%
   17    5.1  1.0 -1.0   0.002%  24.418%   0.002%  25.001%   0.001%  24.888%   0.002%  24.306%   0.001%
   18    6.1  1.0 -1.0  16.513%   0.001%  24.179%   0.002%   2.987%   0.001%  25.121%   0.001%  29.901%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.146%   0.000%   0.150%   0.000%   0.149%   0.000%   0.146%   0.000%
   26    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.317%   0.000%   0.588%   0.000%   0.271%
   27    3.1  2.0  2.0   0.000%   0.147%   0.000%   0.150%   0.000%   0.149%   0.000%   0.146%   0.000%
   28    1.1  2.0  1.0   0.000%   0.000%   0.147%   0.000%   0.027%   0.000%   0.153%   0.000%   0.565%
   29    2.1  2.0  1.0   0.000%   0.148%   0.000%   0.149%   0.000%   0.143%   0.000%   0.150%   0.000%
   30    3.1  2.0  1.0   0.000%   0.000%   0.149%   0.000%   0.531%   0.000%   0.141%   0.000%   0.053%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.099%   0.000%   0.000%   0.000%   0.894%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.395%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.099%   0.000%   0.000%   0.000%   0.870%   0.000%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.000%   0.147%   0.000%   0.027%   0.000%   0.153%   0.000%   0.565%
   35    2.1  2.0 -1.0   0.000%   0.148%   0.000%   0.149%   0.000%   0.143%   0.000%   0.150%   0.000%
   36    3.1  2.0 -1.0   0.000%   0.000%   0.149%   0.000%   0.531%   0.000%   0.141%   0.000%   0.053%
   37    1.1  2.0 -2.0   0.000%   0.146%   0.000%   0.150%   0.000%   0.149%   0.000%   0.146%   0.000%
   38    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.317%   0.000%   0.588%   0.000%   0.271%
   39    3.1  2.0 -2.0   0.000%   0.147%   0.000%   0.150%   0.000%   0.149%   0.000%   0.146%   0.000%


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
              1      24      265.21       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       8      955.70       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     35012.72  31058.25      8.02    275.90   1289.03   2375.39      4.32      0.16      1.20
 REAL TIME  *     35423.96 SEC
 DISK USED  *      1003.19 MB (local),       12.57 GB (total)
 SF USED    *         5.28 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2428.723124943472

              CI              CI              CI           MULTI         RHF-SCF
  -2428.68546010  -2428.84267754  -2428.67632096  -2427.91670838  -2427.84300620
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
