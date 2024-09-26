
 Working directory              : /wrk/irikura/molpro.kAbR7I0dvt/
 Global scratch directory       : /wrk/irikura/molpro.kAbR7I0dvt/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.kAbR7I0dvt/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   16
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
     wf,charge=0,sym=PAR,spin=2;state,NT; weight,3[99],(NT-3)[1]
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
  (32 PROC) 64 bit mpp version                                                           DATE: 07-Sep-24          TIME: 12:14:08  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  24000 MW

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

     28.049 MB (compressed) written to integral file ( 14.9%)

     Node minimum: 0.524 MB, node maximum: 3.146 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     732006.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     732006      RECORD LENGTH: 524288

 Memory used in sort:       1.29 MW

 SORT1 READ    23841670. AND WROTE      148830. INTEGRALS IN      1 RECORDS. CPU TIME:     0.13 SEC, REAL TIME:     0.14 SEC
 SORT2 READ     2334302. AND WROTE    11712051. INTEGRALS IN    192 RECORDS. CPU TIME:     0.03 SEC, REAL TIME:     0.03 SEC

 Node minimum:      730484.  Node maximum:      736677. integrals

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
 CPU TIMES  *         1.75      1.37
 REAL TIME  *         2.72 SEC
 DISK USED  *        29.56 MB (local),      550.82 MB (total)
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
   1    -2427.78623588   -2427.78623588     0.00D+00     0.14D+00     0     0       0.00      0.01    start
   2    -2427.84027257      -0.05403669     0.90D-02     0.12D-01     1     0       0.01      0.02    diag2
   3    -2427.84257785      -0.00230528     0.34D-02     0.26D-02     2     0       0.01      0.03    diag2
   4    -2427.84297946      -0.00040161     0.71D-03     0.17D-02     3     0       0.00      0.03    diag2
   5    -2427.84300574      -0.00002628     0.25D-03     0.38D-03     4     0       0.01      0.04    diag2
   6    -2427.84300619      -0.00000044     0.19D-04     0.51D-04     5     0       0.00      0.04    diag2
   7    -2427.84300620      -0.00000001     0.33D-05     0.10D-04     6     0       0.01      0.05    diag2
   8    -2427.84300620      -0.00000000     0.19D-06     0.84D-06     7     0       0.01      0.06    fixocc
   9    -2427.84300620      -0.00000000     0.26D-07     0.59D-07     0     0       0.00      0.06    diag

 Final alpha occupancy:   9   9
 Final beta  occupancy:   9   6

 !RHF STATE 1.2 Energy              -2427.843006202485
  RHF One-electron energy           -3366.801857926368
  RHF Two-electron energy             938.958851723883
  RHF Kinetic energy                 2588.160433244911
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
    4.1     2.00000    -2.97354     1  1  d1-  0.97510
    5.1     2.00000    -2.97354     1  1  d1+  0.97460
    6.1     2.00000    -2.97354     1  1  d2-  0.99982
    7.1     2.00000    -2.97354     1  1  d2+  1.00026
    8.1     2.00000    -2.97354     1  1  d0   1.00047
    9.1     2.00000    -1.19172     1  4  s    1.07872
    1.2     2.00000   -55.03338     1  1  py   0.99938
    2.2     2.00000   -55.03338     1  1  pz   0.99938
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
 CPU TIMES  *         1.96      0.21      1.37
 REAL TIME  *         4.04 SEC
 DISK USED  *        30.74 MB (local),      569.69 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.199D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.216D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.460D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.315D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.426D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 4 3 5 2 1 1   3 5 4 6 2 1 2 3 5 4   6 1 2 3 5 6 4 2 3 5   6 4 1 2 3 5 6 411 9
                                        712 814151013 1 6 4   3 5 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.325D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.325D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.382D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.382D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.157D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.204D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.647D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.121D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.121D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 3 2 1 3   2 1 3 2 1 7 910 8 6   5 4 3 2 1 6 4 5 9 7  10 8 3 2 1 9 7 5 4 8
                                       10 6 6 4 5 9 7 810 3   2 1 6 4 5 7 9 810 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32039   0.32039   0.32039   0.00324   0.00324   0.00324
 Weight factors for state symmetry  2:    0.00324   0.00324   0.00324   0.00324   0.00324   0.00324
 Weight factors for state symmetry  3:    0.00324   0.00324   0.00324
 
 Number of orbital rotations:  1049  ( 44 closed/active, 660 closed/virtual, 0 active/active, 345 active/virtual )
 Total number of variables:    7022
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   31    0  -2428.11854639   -2428.15337753   -0.03483114    0.21909858 0.00081063 0.00025077  0.14E+01      2.34
   2    6   23    0  -2428.15306007   -2428.15310379   -0.00004372    0.00637683 0.00000967 0.00000420  0.55E-01      4.14
   3    9   31    0  -2428.15310384   -2428.15310384   -0.00000000    0.00000882 0.00000001 0.00000000  0.15E-03      6.88
   4    4   12    0  -2428.15310384   -2428.15310384   -0.00000000    0.00000001 0.00000001 0.00000000  0.21E-07      8.30

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.37E-08)
                       Final energy:  -2428.15310384
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2428.162359092833
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.45567248
 One electron energy                         -3379.19603455
 Two electron energy                           951.03367546
 Virial ratio                                    1.93807377
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2428.162359092820
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.45567248
 One electron energy                         -3379.19603456
 Two electron energy                           951.03367546
 Virial ratio                                    1.93807377
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2428.162359092811
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.45567248
 One electron energy                         -3379.19603455
 Two electron energy                           951.03367546
 Virial ratio                                    1.93807377
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -2427.723444083193
 Nuclear energy                                  0.00000000
 Kinetic energy                               2589.12953531
 One electron energy                         -3376.26838112
 Two electron energy                           948.54493704
 Virial ratio                                    1.93766009
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -2427.723444081159
 Nuclear energy                                  0.00000000
 Kinetic energy                               2589.12953532
 One electron energy                         -3376.26838113
 Two electron energy                           948.54493705
 Virial ratio                                    1.93766009
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -2427.723444079079
 Nuclear energy                                  0.00000000
 Kinetic energy                               2589.12953533
 One electron energy                         -3376.26838115
 Two electron energy                           948.54493707
 Virial ratio                                    1.93766009
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2428.114202767172
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.31763520
 One electron energy                         -3378.79282929
 Two electron energy                           950.67862652
 Virial ratio                                    1.93810519
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2428.114202767170
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.31763520
 One electron energy                         -3378.79282929
 Two electron energy                           950.67862652
 Virial ratio                                    1.93810519
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2428.114202767159
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.31763520
 One electron energy                         -3378.79282929
 Two electron energy                           950.67862652
 Virial ratio                                    1.93810519
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2428.114202767146
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.31763520
 One electron energy                         -3378.79282929
 Two electron energy                           950.67862652
 Virial ratio                                    1.93810519
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2428.114202767139
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.31763520
 One electron energy                         -3378.79282929
 Two electron energy                           950.67862652
 Virial ratio                                    1.93810519
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2428.071277681947
 Nuclear energy                                  0.00000000
 Kinetic energy                               2588.20983682
 One electron energy                         -3378.42410969
 Two electron energy                           950.35283201
 Virial ratio                                    1.93812768
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Quintet
 =============================
 !MCSCF STATE 1.1 Quintet Energy             -2427.758603804612
 Nuclear energy                                  0.00000000
 Kinetic energy                               2589.11105609
 One electron energy                         -3376.20742336
 Two electron energy                           948.44881956
 Virial ratio                                    1.93768037
 
 !MCSCF STATE 1.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quintet
 =============================
 !MCSCF STATE 2.1 Quintet Energy             -2427.758603801910
 Nuclear energy                                  0.00000000
 Kinetic energy                               2589.11105611
 One electron energy                         -3376.20742341
 Two electron energy                           948.44881961
 Virial ratio                                    1.93768037
 
 !MCSCF STATE 2.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quintet
 =============================
 !MCSCF STATE 3.1 Quintet Energy             -2427.758603799120
 Nuclear energy                                  0.00000000
 Kinetic energy                               2589.11105613
 One electron energy                         -3376.20742346
 Two electron energy                           948.44881966
 Virial ratio                                    1.93768037
 
 !MCSCF STATE 3.1 Quintet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999971978
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.999998312976
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.000001587960
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     0.999999999979
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     0.000000000138
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.999999999888
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.999999856895
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.290546703628
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000002497582
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999997468358
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.709453473537
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Quintet|LXLX|1.1 Quintet>     1.000000000000
 !MCSCF expec      <2.1 Quintet|LXLX|2.1 Quintet>     0.000000000001
 !MCSCF expec      <3.1 Quintet|LXLX|3.1 Quintet>     0.999999999997
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.999998306762
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.000003197525
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.999998441386
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     0.999999999990
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     0.999999999888
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     0.000000000122
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000450216
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.955656812028
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.999997310601
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000002398252
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     2.044343028903
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Quintet|LYLY|1.1 Quintet>     0.999999999990
 !MCSCF expec      <2.1 Quintet|LYLY|2.1 Quintet>     0.999999999999
 !MCSCF expec      <3.1 Quintet|LYLY|3.1 Quintet>     0.000000000012
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000001721260
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999998489499
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999970654
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.000000000031
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     0.999999999974
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.999999999990
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     3.999999692888
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.753796484343
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000191818
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000133390
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.246203497561
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Quintet|LZLZ|1.1 Quintet>     0.000000000010
 !MCSCF expec      <2.1 Quintet|LZLZ|2.1 Quintet>     1.000000000000
 !MCSCF expec      <3.1 Quintet|LZLZ|3.1 Quintet>     0.999999999990
 
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
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Quintet|L**2|1.1 Quintet>     2.000000000000
 !MCSCF expec      <2.1 Quintet|L**2|2.1 Quintet>     2.000000000000
 !MCSCF expec      <3.1 Quintet|L**2|3.1 Quintet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 4 3 5 1 1   2 6 4 5 3 1 2 6 4 5   3 1 2 6 4 5 3 2 6 4   5 3 1 2 6 4 3 511 7
                                        912 814151013 1 6 2   4 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 1 2 3 1   2 3 2 3 1 6 5 410 8   7 9 2 1 3 6 5 4 810   9 7 3 2 1 5 6 410 8
                                        9 7 6 5 4 810 9 7 3   2 1 6 5 4 810 7 9 2   1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -468.11193     1  1  s    0.99999
    2.1     2.00000   -62.35091     1  2  s    0.99981
    3.1     2.00000    -9.22387     1  3  s    0.99862
    4.1     2.00000    -2.60466     1  1  d0   0.99994
    5.1     2.00000    -2.60466     1  1  d1-  0.99994
    6.1     2.00000    -2.60466     1  1  d1+  0.99994
    7.1     2.00000    -2.60466     1  1  d2-  0.99994
    8.1     2.00000    -2.60466     1  1  d2+  0.99994
    9.1     1.99601    -0.86705     1  4  s    1.00607
    1.2     2.00000   -54.66272     1  1  pz   0.99995
    2.2     2.00000   -54.66272     1  1  py   0.99995
    3.2     2.00000   -54.66272     1  1  px   0.99995
    4.2     2.00000    -6.73206     1  2  pz   0.99951
    5.2     2.00000    -6.73206     1  2  py   0.99951
    6.2     2.00000    -6.73206     1  2  px   0.99951
    7.2     1.32207    -0.26767     1  3  px   0.98651
    8.2     1.32207    -0.26767     1  3  py   0.98651
    9.2     1.32207    -0.26767     1  3  pz   0.98651
   10.2     0.01260     0.37163     1  3  px  -0.97961    1  4  px  -0.29668    1  5  px   1.28713
   11.2     0.01260     0.37163     1  3  py  -0.97961    1  4  py  -0.29668    1  5  py   1.28713
   12.2     0.01260     0.37163     1  3  pz  -0.97961    1  4  pz  -0.29668    1  5  pz   1.28713
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa000       0.00016647     -0.00129163      0.99444894      0.00000022     -0.04826368      0.00000051
 2 aa2000       0.99444894      0.00129424     -0.00016479     -0.04826369     -0.00000022     -0.00000015
 2 a2a000      -0.00129402      0.99444811      0.00129185     -0.00000015      0.00000051      0.04826369
 2 aaa00b       0.03513738      0.00004573     -0.00000582      0.71371391      0.00000327      0.00000228
 2 aaab00       0.00000588     -0.00004564      0.03513738     -0.00000327      0.71371391     -0.00000756
 2 aaa0b0       0.00004572     -0.03513735     -0.00004565     -0.00000228      0.00000756      0.71371390
 2 baa00a      -0.01532049     -0.00001994      0.00000254     -0.36444702     -0.00000167     -0.00000116
 2 aaba00      -0.00000256      0.00001990     -0.01532049      0.00000167     -0.36444701      0.00000386
 2 aba00a      -0.01532049     -0.00001994      0.00000254     -0.36444701     -0.00000167     -0.00000116
 2 aab0a0      -0.00001994      0.01532048      0.00001990      0.00000116     -0.00000386     -0.36444701
 2 abaa00      -0.00000256      0.00001990     -0.01532049      0.00000167     -0.36444701      0.00000386
 2 baa0a0      -0.00001994      0.01532048      0.00001990      0.00000116     -0.00000386     -0.36444700
 2 a2000a       0.00002159     -0.01659030     -0.00002155     -0.00000101      0.00000336      0.31727385
 2 2a000a      -0.00000278      0.00002155     -0.01659031      0.00000145     -0.31727384      0.00000336
 2 02aa00      -0.00002159      0.01659030      0.00002155      0.00000101     -0.00000336     -0.31727383
 2 0a2a00       0.01659032      0.00002159     -0.00000275      0.31727382      0.00000145      0.00000101
 2 20a0a0       0.00000278     -0.00002155      0.01659032     -0.00000145      0.31727381     -0.00000336
 2 a020a0      -0.01659032     -0.00002159      0.00000275     -0.31727381     -0.00000145     -0.00000101
 2 a0200a       0.00000750     -0.00576621     -0.00000749      0.00000020     -0.00000066     -0.06235330
 2 0a200a      -0.00000097      0.00000749     -0.00576622     -0.00000029      0.06235330     -0.00000066
 2 20aa00      -0.00000750      0.00576621      0.00000749     -0.00000020      0.00000066      0.06235329
 2 2a0a00       0.00576622      0.00000750     -0.00000096     -0.06235329     -0.00000029     -0.00000020
 2 02a0a0       0.00000097     -0.00000749      0.00576622      0.00000029     -0.06235329      0.00000066
 2 a200a0      -0.00576622     -0.00000750      0.00000096      0.06235328      0.00000029      0.00000020
 2 0aa200      -0.00000793      0.00006155     -0.04738910      0.00000024     -0.05195923      0.00000055
 2 a0a020       0.00006166     -0.04738906     -0.00006156     -0.00000017      0.00000055      0.05195922
 2 aa0002      -0.04738910     -0.00006168      0.00000785     -0.05195922     -0.00000024     -0.00000017
 
 Energy:    -2428.16235909  -2428.16235909  -2428.16235909  -2427.72344408  -2427.72344408  -2427.72344408
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 220000      -0.00014816     -0.20149796      0.00003252     -0.00016065      0.78679026      0.56553868
 2 022000       0.00031270      0.78212929      0.00004695     -0.00008599     -0.21889278      0.56553868
 2 ba2000      -0.70337059      0.00026300     -0.00016704     -0.00002810     -0.00006509      0.00000000
 2 ab2000       0.70337059     -0.00026300      0.00016704      0.00002810      0.00006509     -0.00000000
 2 b2a000       0.00016708      0.00005407     -0.70337035     -0.00063977      0.00004282     -0.00000000
 2 a2b000      -0.00016708     -0.00005407      0.70337035      0.00063977     -0.00004282      0.00000000
 2 2ba000       0.00002791     -0.00012666      0.00063976     -0.70337034     -0.00017607     -0.00000000
 2 2ab000      -0.00002791      0.00012666     -0.00063976      0.70337034      0.00017607      0.00000000
 2 202000      -0.00016454     -0.58063133     -0.00007947      0.00024664     -0.56789748      0.56553868
 0 222000      -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.16819561
 
 Energy:    -2428.11420277  -2428.11420277  -2428.11420277  -2428.11420277  -2428.11420277  -2428.07127768
 
 
 CI Coefficients of symmetry 1 (Quintet)
 =======================================
 
 2 aaaa00      -0.00000003      0.99417769     -0.00000096
 2 aaa0a0      -0.00000309      0.00000096      0.99417769
 2 aaa00a       0.99417768      0.00000003      0.00000309
 2 0aaa0a      -0.07019971     -0.00000000     -0.00000022
 2 0aaaa0       0.00000022     -0.00000007     -0.07019971
 2 a0a0aa       0.07019971      0.00000000      0.00000022
 2 a0aaa0       0.00000000     -0.07019970      0.00000007
 2 aa0a0a      -0.00000000      0.07019970     -0.00000007
 2 aa00aa      -0.00000022      0.00000007      0.07019970
 
 Energy:    -2427.75860380  -2427.75860380  -2427.75860380
 


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
 CPU TIMES  *         9.11      7.13      0.21      1.37
 REAL TIME  *        13.16 SEC
 DISK USED  *        48.34 MB (local),      851.37 MB (total)
 SF USED    *        45.81 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2428.162359   2.0
    -2428.162359   2.0
    -2428.162359   2.0
    -2427.723444   2.0
    -2427.723444   2.0
    -2427.723444   2.0
    -2428.114203   6.0
    -2428.114203   6.0
    -2428.114203   6.0
    -2428.114203   6.0
    -2428.114203   6.0
    -2428.071278  -0.0
    -2427.758604   2.0
    -2427.758604   2.0
    -2427.758604   2.0
                                                  


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

 Integral transformation finished. Total CPU:   0.10 sec, npass=  1  Memory used:   1.17 MW


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.16235909
     2     -2428.16235909
     3     -2428.16235909
     4     -2427.72344408
     5     -2427.72344408
     6     -2427.72344408

 Number of blocks in overlap matrix:   562   Smallest eigenvalue:  0.64D-06
 Number of N-2 electron functions:    1511
 Number of N-1 electron functions:  153948

 Number of internal configurations:                40740
 Number of singly external configurations:       7312890
 Number of doubly external configurations:       3412560
 Total number of contracted configurations:     10766190
 Total number of uncontracted configurations:  288034650

 Diagonal Coupling coefficients finished.               Storage:  25203887 words, CPU-Time:     64.73 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2650064 words, CPU-time:      0.17 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.16235909     0.00000000    -0.91811514  0.39D-01  0.52D-01    75.75
    1     2     2     1.00000000     0.00000000 -2428.16235909     0.00000000    -0.91785513  0.38D-01  0.52D-01    75.75
    1     3     3     1.00000000     0.00000000 -2428.16235909     0.00000000    -0.91758166  0.38D-01  0.52D-01    75.75
    1     4     4     1.00000000     0.00000000 -2427.72344408    -0.00000000    -0.98982855  0.13D+00  0.55D-01    75.75
    1     5     5     1.00000000     0.00000000 -2427.72344408    -0.00000000    -0.99056184  0.13D+00  0.55D-01    75.75
    1     6     6     1.00000000     0.00000000 -2427.72344408     0.00000000    -0.99057668  0.13D+00  0.55D-01    75.75
    2     1     1     1.06202582    -0.76356190 -2428.92592100    -0.76356190    -0.01781448  0.20D-02  0.11D-02   311.16
    2     2     2     1.06220074    -0.76346198 -2428.92582107    -0.76346198    -0.01791314  0.20D-02  0.11D-02   311.16
    2     3     3     1.06238514    -0.76335493 -2428.92571402    -0.76335493    -0.01801937  0.21D-02  0.11D-02   311.16
    2     4     4     1.11826411    -0.79648425 -2428.51992833    -0.79648425    -0.02933029  0.11D-01  0.14D-02   311.16
    2     5     5     1.12076397    -0.79513896 -2428.51858304    -0.79513896    -0.03042923  0.12D-01  0.14D-02   311.16
    2     6     6     1.12074824    -0.79513857 -2428.51858265    -0.79513857    -0.03043847  0.12D-01  0.14D-02   311.16
    3     1     1     1.05878256    -0.78077823 -2428.94313732    -0.01721632    -0.00080552  0.40D-04  0.11D-03   546.35
    3     2     2     1.05877810    -0.78077694 -2428.94313604    -0.01731496    -0.00080640  0.40D-04  0.11D-03   546.35
    3     3     3     1.05877226    -0.78077530 -2428.94313439    -0.01742037    -0.00080758  0.40D-04  0.11D-03   546.35
    3     4     4     1.10045973    -0.82641068 -2428.54985476    -0.02992643    -0.00149324  0.35D-03  0.16D-03   546.35
    3     5     5     1.10072574    -0.82632857 -2428.54977265    -0.03118961    -0.00156355  0.37D-03  0.16D-03   546.35
    3     6     6     1.10072566    -0.82632749 -2428.54977157    -0.03118891    -0.00156423  0.37D-03  0.16D-03   546.35
    4     1     1     1.06035561    -0.78180460 -2428.94416369    -0.00102637    -0.00011206  0.63D-05  0.13D-04   782.73
    4     2     2     1.06035108    -0.78180455 -2428.94416364    -0.00102760    -0.00011208  0.64D-05  0.13D-04   782.73
    4     3     3     1.06035913    -0.78180452 -2428.94416361    -0.00102922    -0.00011214  0.63D-05  0.13D-04   782.73
    4     4     4     1.10375187    -0.82827500 -2428.55171908    -0.00186432    -0.00016313  0.22D-04  0.22D-04   782.73
    4     5     5     1.10373442    -0.82826951 -2428.55171359    -0.00194094    -0.00016650  0.22D-04  0.23D-04   782.73
    4     6     6     1.10373138    -0.82826929 -2428.55171337    -0.00194180    -0.00016669  0.22D-04  0.23D-04   782.73
    5     1     1     1.06127466    -0.78194681 -2428.94430590    -0.00014221    -0.00001374  0.95D-06  0.14D-05  1019.56
    5     2     2     1.06127605    -0.78194680 -2428.94430590    -0.00014226    -0.00001375  0.96D-06  0.14D-05  1019.56
    5     3     3     1.06127745    -0.78194677 -2428.94430587    -0.00014225    -0.00001378  0.97D-06  0.14D-05  1019.56
    5     4     4     1.10599372    -0.82848392 -2428.55192800    -0.00020892    -0.00002450  0.22D-05  0.36D-05  1019.56
    5     5     5     1.10596618    -0.82848313 -2428.55192721    -0.00021362    -0.00002496  0.22D-05  0.37D-05  1019.56
    5     6     6     1.10596557    -0.82848307 -2428.55192715    -0.00021378    -0.00002500  0.22D-05  0.37D-05  1019.56
    6     1     1     1.06128032    -0.78196338 -2428.94432248    -0.00001657    -0.00000166  0.67D-07  0.20D-06  1254.64
    6     2     2     1.06128074    -0.78196338 -2428.94432247    -0.00001658    -0.00000166  0.66D-07  0.20D-06  1254.64
    6     3     3     1.06127997    -0.78196338 -2428.94432247    -0.00001661    -0.00000166  0.67D-07  0.20D-06  1254.64
    6     4     4     1.10604180    -0.82851778 -2428.55196186    -0.00003386    -0.00000507  0.40D-06  0.70D-06  1254.64
    6     5     5     1.10603744    -0.82851764 -2428.55196173    -0.00003452    -0.00000514  0.42D-06  0.71D-06  1254.64
    6     6     6     1.10603773    -0.82851764 -2428.55196171    -0.00003457    -0.00000515  0.42D-06  0.71D-06  1254.64
    7     1     1     1.06129679    -0.78196542 -2428.94432451    -0.00000204    -0.00000027  0.19D-07  0.29D-07  1489.91
    7     2     2     1.06129691    -0.78196542 -2428.94432451    -0.00000204    -0.00000027  0.19D-07  0.29D-07  1489.91
    7     3     3     1.06129662    -0.78196542 -2428.94432451    -0.00000204    -0.00000027  0.19D-07  0.29D-07  1489.91
    7     4     4     1.10607551    -0.82852466 -2428.55196874    -0.00000688    -0.00000120  0.13D-06  0.15D-06  1489.91
    7     5     5     1.10607889    -0.82852461 -2428.55196869    -0.00000696    -0.00000121  0.13D-06  0.15D-06  1489.91
    7     6     6     1.10607872    -0.82852461 -2428.55196869    -0.00000697    -0.00000122  0.13D-06  0.15D-06  1489.91
    8     1     1     1.06131297    -0.78196574 -2428.94432483    -0.00000032    -0.00000005  0.37D-08  0.46D-08  1725.16
    8     2     2     1.06131301    -0.78196573 -2428.94432483    -0.00000032    -0.00000005  0.37D-08  0.46D-08  1725.16
    8     3     3     1.06131290    -0.78196573 -2428.94432483    -0.00000032    -0.00000005  0.37D-08  0.46D-08  1725.16
    8     4     4     1.10608492    -0.82852610 -2428.55197019    -0.00000145    -0.00000028  0.27D-07  0.35D-07  1725.16
    8     5     5     1.10608541    -0.82852608 -2428.55197016    -0.00000148    -0.00000028  0.28D-07  0.35D-07  1725.16
    8     6     6     1.10608542    -0.82852608 -2428.55197016    -0.00000148    -0.00000028  0.28D-07  0.35D-07  1725.16
    9     1     1     1.06131354    -0.78196574 -2428.94432484    -0.00000001    -0.00000004  0.33D-08  0.40D-08  1908.13
    9     2     2     1.06131356    -0.78196574 -2428.94432484    -0.00000001    -0.00000004  0.33D-08  0.40D-08  1908.13
    9     3     3     1.06131348    -0.78196574 -2428.94432484    -0.00000001    -0.00000004  0.33D-08  0.40D-08  1908.13
    9     4     4     1.10608070    -0.82852653 -2428.55197062    -0.00000043    -0.00000003  0.36D-08  0.46D-08  1908.13
    9     5     5     1.10608026    -0.82852652 -2428.55197060    -0.00000044    -0.00000003  0.37D-08  0.47D-08  1908.13
    9     6     6     1.10608026    -0.82852652 -2428.55197060    -0.00000044    -0.00000003  0.37D-08  0.47D-08  1908.13


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.3%
 S   0.9%  11.8%
 P   0.4%  57.9%  19.9%

 Initialization:   3.4%
 Other:            4.5%

 Total CPU:     1908.1 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222//000          -0.0250713   0.0437445   0.9645535  -0.0003639  -0.0458918   0.0006036
 2222222222/2/000           0.8361649   0.4834601  -0.0001918   0.0003193   0.0006011   0.0458922
 2222222222//2000          -0.4828096   0.8350199  -0.0504194  -0.0458946   0.0003680   0.0003145
 2222222222///00\          -0.0151331   0.0261727  -0.0015803   0.7899289  -0.0063344  -0.0054129
 2222222222///0\0          -0.0262086  -0.0151535   0.0000060   0.0054955   0.0103455   0.7898858
 2222222222///\00          -0.0007858   0.0013711   0.0302328   0.0062628   0.7898795  -0.0103890
 22222222220/2/00          -0.0118889   0.0205619  -0.0012415   0.2930618  -0.0023500  -0.0020082
 2222222222/020/0           0.0118889  -0.0205619   0.0012415  -0.2930600   0.0023500   0.0020081
 2222222222/2000/          -0.0205902  -0.0119050   0.0000047   0.0020388   0.0038382   0.2930484
 222222222202//00           0.0205902   0.0119050  -0.0000047  -0.0020388  -0.0038382  -0.2930483
 22222222222/000/           0.0006174  -0.0010772  -0.0237517  -0.0023235  -0.2930461   0.0038543
 222222222220/0/0          -0.0006174   0.0010772   0.0237517   0.0023235   0.2930459  -0.0038543
 2222222222//\00/          -0.0068852   0.0119079  -0.0007190   0.2888325  -0.0023161  -0.0019792
 2222222222/\/0/0          -0.0103267  -0.0059708   0.0000024   0.0017402   0.0032759   0.2501176
 2222222222/\//00           0.0003096  -0.0005402  -0.0119123  -0.0019831  -0.2501158   0.0032897
 2222222222//\0/0           0.0059621   0.0034472  -0.0000014  -0.0010047  -0.0018913  -0.1444056
 2222222222//\/00           0.0001788  -0.0003119  -0.0068775  -0.0011450  -0.1444045   0.0018993
 22222222222/0/00          -0.0034563   0.0059778  -0.0003609  -0.0606744   0.0004865   0.0004158
 2222222222/200/0           0.0034564  -0.0059778   0.0003609   0.0606739  -0.0004865  -0.0004158
 222222222220//00           0.0059859   0.0034610  -0.0000014   0.0004221   0.0007946   0.0606713
 2222222222/0200/          -0.0059860  -0.0034610   0.0000014  -0.0004221  -0.0007946  -0.0606713
 222222222202/0/0          -0.0001795   0.0003132   0.0069050  -0.0004810  -0.0606709   0.0007980
 22222222220/200/           0.0001795  -0.0003132  -0.0069050   0.0004810   0.0606708  -0.0007980
 2222222222//0002           0.0212928  -0.0368259   0.0022236  -0.0603440   0.0004839   0.0004135
 2222222222/0/020          -0.0368764  -0.0213215   0.0000085   0.0004198   0.0007903   0.0603409
 22222222220//200           0.0011057  -0.0019292  -0.0425386  -0.0004784  -0.0603404   0.0007936

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2222222222//\000  25.2     0.0013799  -0.0023865   0.0001441  -0.1416535   0.0011359   0.0009707
 2222222222//\000  23.2     0.0023894   0.0013815  -0.0000005  -0.0009855  -0.0018552  -0.1416442
 2222222222//\000  24.2     0.0000716  -0.0001250  -0.0027562  -0.0011231  -0.1416429   0.0018630
 2222222222//\000  33.2    -0.0037461   0.0064788  -0.0003912   0.0927131  -0.0007435  -0.0006353
 2222222222//\000  34.2    -0.0064875  -0.0037510   0.0000015   0.0006450   0.0012142   0.0927073
 2222222222//\000  35.2    -0.0001945   0.0003394   0.0074837   0.0007350   0.0927066  -0.0012193

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.485092    0.840117   -0.025190    0.000614    0.000032    0.001063
 2           0.838967    0.485745    0.043951   -0.001062   -0.000056    0.000615
 3          -0.050658   -0.000193    0.969113    0.000064   -0.001226   -0.000000
 4           0.000849   -0.000006    0.000007    0.950351    0.007535    0.006612
 5          -0.000007   -0.000011    0.000849   -0.007621    0.950292    0.012446
 6          -0.000006   -0.000849   -0.000011   -0.006512   -0.012499    0.950299

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970437    0.000000   -0.000000    0.000090    0.000006    0.000154
 2           0.000000    0.970437    0.000000   -0.000154   -0.000006    0.000091
 3          -0.000000    0.000000    0.970437    0.000008   -0.000178    0.000002
 4           0.000090   -0.000154    0.000008    0.950404    0.000000    0.000000
 5           0.000006   -0.000006   -0.000178    0.000000    0.950404    0.000000
 6           0.000154    0.000091    0.000002    0.000000    0.000000    0.950404

 Energy contributions of internal configurations for state 4
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2574       0.00007181     1.05206477       2222222222012100                
  2591       0.00007181     1.05206389       2222222222102010                
  7738       0.00007776    -1.45545516       2222222222111001                

 Energy contributions of internal configurations for state 5
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2605       0.00007180     1.05193939       2222222222201010                
  2607       0.00007180     1.05192615       2222222222210001                
  7740       0.00007774    -1.45527659       2222222222111100                

 Energy contributions of internal configurations for state 6
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

  2580       0.00007180     1.05194780       2222222222021100                
  2597       0.00007180     1.05194396       2222222222120001                
  7739       0.00007774    -1.45529488       2222222222111010                


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.84011731 (fixed)   0.97059321 (relaxed)   0.97043655 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00051131   -0.00125778   -0.65746254
 Singles      0.01752945   -0.08172123   -0.08986316
 Pairs        0.04381544   -0.00251367   -0.03464005
 Total        1.06185620   -0.08549268   -0.78196574
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.16235858
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.78130784
 One electron energy                -3378.15278252
 Two electron energy                  949.20845768
 Virial quotient                       -0.93825783
 Correlation energy                    -0.78196626
 !MRCI STATE 1.1 Energy             -2428.944324837100

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.99269430 (Davidson, fixed reference)
 Cluster corrected energies         -2428.99242628 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.99269430 (Davidson, rotated reference)

 Cluster corrected energies         -2428.99062488 (Pople, fixed reference)
 Cluster corrected energies         -2428.99035492 (Pople, relaxed reference)
 Cluster corrected energies         -2428.99062488 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.83896685 (fixed)   0.97059320 (relaxed)   0.97043654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00051131   -0.00125778   -0.65846103
 Singles      0.01752947   -0.08172126   -0.08986317
 Pairs        0.04381545   -0.00145337   -0.03364155
 Total        1.06185622   -0.08443241   -0.78196574
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.16235858
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.78131012
 One electron energy                -3378.15278369
 Two electron energy                  949.20845885
 Virial quotient                       -0.93825783
 Correlation energy                    -0.78196626
 !MRCI STATE 2.1 Energy             -2428.944324837079

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.99269431 (Davidson, fixed reference)
 Cluster corrected energies         -2428.99242629 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.99269431 (Davidson, rotated reference)

 Cluster corrected energies         -2428.99062490 (Pople, fixed reference)
 Cluster corrected energies         -2428.99035494 (Pople, relaxed reference)
 Cluster corrected energies         -2428.99062490 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96911271 (fixed)   0.97059324 (relaxed)   0.97043658 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00051131   -0.00125778   -0.65983043
 Singles      0.01752938   -0.08172115   -0.08986314
 Pairs        0.04381544    0.00000058   -0.03227217
 Total        1.06185614   -0.08297835   -0.78196574
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.16235858
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.78130693
 One electron energy                -3378.15278547
 Two electron energy                  949.20846063
 Virial quotient                       -0.93825783
 Correlation energy                    -0.78196626
 !MRCI STATE 3.1 Energy             -2428.944324836818

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.99269425 (Davidson, fixed reference)
 Cluster corrected energies         -2428.99242623 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.99269425 (Davidson, rotated reference)

 Cluster corrected energies         -2428.99062484 (Pople, fixed reference)
 Cluster corrected energies         -2428.99035487 (Pople, relaxed reference)
 Cluster corrected energies         -2428.99062484 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95035055 (fixed)   0.95073987 (relaxed)   0.95040378 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00091425   -0.00126305   -0.61968345
 Singles      0.06464531   -0.13844563   -0.17343380
 Pairs        0.04153238   -0.00479183   -0.03540928
 Total        1.10709194   -0.14450052   -0.82852653
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.72344460
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.94243813
 One electron energy                -3373.77978669
 Two electron energy                  945.22781607
 Virial quotient                       -0.93804788
 Correlation energy                    -0.82852602
 !MRCI STATE 4.1 Energy             -2428.551970617225

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.64069908 (Davidson, fixed reference)
 Cluster corrected energies         -2428.64005070 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.64069908 (Davidson, rotated reference)

 Cluster corrected energies         -2428.64027884 (Pople, fixed reference)
 Cluster corrected energies         -2428.63957364 (Pople, relaxed reference)
 Cluster corrected energies         -2428.64027884 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95029156 (fixed)   0.95074005 (relaxed)   0.95040398 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00091423   -0.00126305   -0.61586395
 Singles      0.06464496   -0.13844550   -0.17343364
 Pairs        0.04153229   -0.00902075   -0.03922893
 Total        1.10709147   -0.14872930   -0.82852652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.72344459
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.94244637
 One electron energy                -3373.77980558
 Two electron energy                  945.22783498
 Virial quotient                       -0.93804788
 Correlation energy                    -0.82852601
 !MRCI STATE 5.1 Energy             -2428.551970600269

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.64069867 (Davidson, fixed reference)
 Cluster corrected energies         -2428.64005032 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.64069867 (Davidson, rotated reference)

 Cluster corrected energies         -2428.64027841 (Pople, fixed reference)
 Cluster corrected energies         -2428.63957323 (Pople, relaxed reference)
 Cluster corrected energies         -2428.64027841 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95029912 (fixed)   0.95074006 (relaxed)   0.95040398 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00091423   -0.00126305   -0.00189142
 Singles      0.06464495   -0.13844545   -0.17343362
 Pairs        0.04153229   -0.68874456   -0.65320148
 Total        1.10709147   -0.82845306   -0.82852652
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.72344459
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.94244290
 One electron energy                -3373.77980058
 Two electron energy                  945.22782998
 Virial quotient                       -0.93804788
 Correlation energy                    -0.82852601
 !MRCI STATE 6.1 Energy             -2428.551970598740

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.64069867 (Davidson, fixed reference)
 Cluster corrected energies         -2428.64005031 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.64069867 (Davidson, rotated reference)

 Cluster corrected energies         -2428.64027840 (Pople, fixed reference)
 Cluster corrected energies         -2428.63957323 (Pople, relaxed reference)
 Cluster corrected energies         -2428.64027840 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      501.57       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      2131.36   2122.24      7.13      0.21      1.37
 REAL TIME  *      2189.33 SEC
 DISK USED  *       548.98 MB (local),        8.65 GB (total)
 SF USED    *         5.30 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2428.99269430  AU                              
 SETTING HLSDIAG(2)     =     -2428.99269431  AU                              
 SETTING HLSDIAG(3)     =     -2428.99269425  AU                              
 SETTING HLSDIAG(4)     =     -2428.64069908  AU                              
 SETTING HLSDIAG(5)     =     -2428.64069867  AU                              
 SETTING HLSDIAG(6)     =     -2428.64069867  AU                              


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


 Number of p-space configurations:  21

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2428.11420277
     2     -2428.11420277
     3     -2428.11420277
     4     -2428.11420277
     5     -2428.11420277
     6     -2428.07127768

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1253D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2273D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3772D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.3772D-06

 Number of blocks in overlap matrix:   616   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    1481
 Number of N-1 electron functions:   87808

 Number of internal configurations:                25648
 Number of singly external configurations:       4171790
 Number of doubly external configurations:       3344955
 Total number of contracted configurations:      7542393
 Total number of uncontracted configurations:  162087348

 Diagonal Coupling coefficients finished.               Storage:  18020642 words, CPU-Time:     21.77 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1456863 words, CPU-time:      0.17 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2428.11420277     0.00000000    -0.92384216  0.40D-01  0.52D-01    27.79
    1     2     2     1.00000000     0.00000000 -2428.11420277     0.00000000    -0.92366807  0.40D-01  0.53D-01    27.79
    1     3     3     1.00000000     0.00000000 -2428.11420277     0.00000000    -0.92449387  0.40D-01  0.53D-01    27.79
    1     4     4     1.00000000     0.00000000 -2428.11420277     0.00000000    -0.92422958  0.41D-01  0.53D-01    27.79
    1     5     5     1.00000000     0.00000000 -2428.11420277     0.00000000    -0.92386770  0.40D-01  0.53D-01    27.79
    1     6     6     1.00000000     0.00000000 -2428.07127768     0.00000000    -0.89476590  0.16D-01  0.55D-01    27.79
    2     1     1     1.06407850    -0.76905203 -2428.88325480    -0.76905203    -0.01843307  0.19D-02  0.12D-02   175.59
    2     2     2     1.06405379    -0.76895091 -2428.88315368    -0.76895091    -0.01852747  0.20D-02  0.12D-02   175.59
    2     3     3     1.06408939    -0.76852030 -2428.88272307    -0.76852030    -0.01882892  0.20D-02  0.13D-02   175.59
    2     4     4     1.06387126    -0.76850031 -2428.88270308    -0.76850031    -0.01877325  0.19D-02  0.13D-02   175.59
    2     5     5     1.06408688    -0.76839141 -2428.88259417    -0.76839141    -0.01892151  0.20D-02  0.13D-02   175.59
    2     6     6     1.05082661    -0.75920400 -2428.83048168    -0.75920400    -0.01713754  0.11D-02  0.13D-02   175.59
    3     1     1     1.06150752    -0.78652613 -2428.90072890    -0.01747410    -0.00075483  0.31D-04  0.11D-03   322.98
    3     2     2     1.06145474    -0.78649287 -2428.90069563    -0.01754196    -0.00077245  0.32D-04  0.11D-03   322.98
    3     3     3     1.06128247    -0.78639341 -2428.90059618    -0.01787311    -0.00083029  0.34D-04  0.12D-03   322.98
    3     4     4     1.06123225    -0.78636792 -2428.90057069    -0.01786761    -0.00084272  0.35D-04  0.12D-03   322.98
    3     5     5     1.06122533    -0.78636193 -2428.90056470    -0.01797052    -0.00084578  0.35D-04  0.12D-03   322.98
    3     6     6     1.05477018    -0.77586943 -2428.84714711    -0.01666544    -0.00096644  0.24D-04  0.15D-03   322.98
    4     1     1     1.06348718    -0.78747350 -2428.90167627    -0.00094737    -0.00009059  0.41D-05  0.11D-04   470.14
    4     2     2     1.06346787    -0.78746857 -2428.90167133    -0.00097570    -0.00009418  0.43D-05  0.11D-04   470.14
    4     3     3     1.06337936    -0.78744994 -2428.90165271    -0.00105653    -0.00010748  0.51D-05  0.13D-04   470.14
    4     4     4     1.06337273    -0.78744550 -2428.90164827    -0.00107758    -0.00011047  0.53D-05  0.13D-04   470.14
    4     5     5     1.06336857    -0.78744481 -2428.90164758    -0.00108288    -0.00011132  0.53D-05  0.13D-04   470.14
    4     6     6     1.05880091    -0.77713334 -2428.84841102    -0.00126390    -0.00012322  0.66D-05  0.13D-04   470.14
    5     1     1     1.06422578    -0.78758545 -2428.90178821    -0.00011195    -0.00000867  0.52D-06  0.89D-06   617.23
    5     2     2     1.06422256    -0.78758491 -2428.90178767    -0.00011634    -0.00000906  0.53D-06  0.94D-06   617.23
    5     3     3     1.06421909    -0.78758233 -2428.90178510    -0.00013239    -0.00001091  0.65D-06  0.11D-05   617.23
    5     4     4     1.06421891    -0.78758176 -2428.90178453    -0.00013626    -0.00001129  0.68D-06  0.12D-05   617.23
    5     5     5     1.06421762    -0.78758175 -2428.90178451    -0.00013693    -0.00001131  0.68D-06  0.12D-05   617.23
    5     6     6     1.05967543    -0.77727966 -2428.84855734    -0.00014632    -0.00001192  0.64D-06  0.13D-05   617.23
    6     1     1     1.06422565    -0.78759545 -2428.90179822    -0.00001000    -0.00000090  0.39D-07  0.12D-06   764.78
    6     2     2     1.06422340    -0.78759537 -2428.90179814    -0.00001046    -0.00000096  0.41D-07  0.13D-06   764.78
    6     3     3     1.06421648    -0.78759499 -2428.90179776    -0.00001266    -0.00000124  0.55D-07  0.17D-06   764.78
    6     4     4     1.06421377    -0.78759487 -2428.90179764    -0.00001311    -0.00000129  0.56D-07  0.17D-06   764.78
    6     5     5     1.06421393    -0.78759487 -2428.90179764    -0.00001312    -0.00000129  0.58D-07  0.17D-06   764.78
    6     6     6     1.05968458    -0.77729367 -2428.84857135    -0.00001400    -0.00000141  0.35D-07  0.19D-06   764.78
    7     1     1     1.06425180    -0.78759657 -2428.90179933    -0.00000112    -0.00000014  0.11D-07  0.16D-07   911.44
    7     2     2     1.06425079    -0.78759656 -2428.90179933    -0.00000119    -0.00000015  0.11D-07  0.17D-07   911.44
    7     3     3     1.06424730    -0.78759653 -2428.90179930    -0.00000154    -0.00000020  0.15D-07  0.22D-07   911.44
    7     4     4     1.06424657    -0.78759649 -2428.90179925    -0.00000161    -0.00000021  0.16D-07  0.23D-07   911.44
    7     5     5     1.06424597    -0.78759648 -2428.90179925    -0.00000161    -0.00000021  0.16D-07  0.23D-07   911.44
    7     6     6     1.05971743    -0.77729544 -2428.84857313    -0.00000178    -0.00000023  0.15D-07  0.23D-07   911.44
    8     1     1     1.06425765    -0.78759676 -2428.90179953    -0.00000020    -0.00000003  0.23D-08  0.31D-08  1059.08
    8     2     2     1.06425895    -0.78759673 -2428.90179950    -0.00000017    -0.00000002  0.17D-08  0.24D-08  1059.08
    8     3     3     1.06425758    -0.78759673 -2428.90179950    -0.00000020    -0.00000003  0.23D-08  0.31D-08  1059.08
    8     4     4     1.06425935    -0.78759673 -2428.90179949    -0.00000024    -0.00000002  0.15D-08  0.21D-08  1059.08
    8     5     5     1.06425745    -0.78759672 -2428.90179949    -0.00000024    -0.00000003  0.24D-08  0.32D-08  1059.08
    8     6     6     1.05973632    -0.77729570 -2428.84857338    -0.00000025    -0.00000004  0.25D-08  0.35D-08  1059.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.5%
 S   1.0%  13.1%
 P   0.4%  54.5%  20.6%

 Initialization:   2.1%
 Other:            6.8%

 Total CPU:     1059.1 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2\000           0.9617871  -0.0118476  -0.0524939  -0.0577248  -0.0096650   0.0000000
 2222222222/\2000           0.0007953  -0.1230366   0.0543743  -0.1684458   0.9406844   0.0000000
 22222222222/\000           0.0611216   0.3255451   0.8963699   0.1339617   0.0147033  -0.0000003
 2222222222202000           0.0413404  -0.0685185  -0.0946925   0.7665792   0.1337459   0.5505217
 2222222222022000          -0.0239498   0.6679215  -0.1858004  -0.3724263   0.0314312   0.5505201
 2222222222220000          -0.0173908  -0.5994023   0.2804934  -0.3941545  -0.1651775   0.5505203
 2222220222222000           0.0000000  -0.0000001  -0.0000000   0.0000001   0.0000000  -0.1562470

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000799   -0.039727    0.965750    0.061373   -0.032065   -0.000000
 2          -0.123543    0.687145   -0.011896    0.326886   -0.587042    0.000000
 3           0.054598   -0.147009   -0.052710    0.900063    0.318688    0.000000
 4          -0.169140   -0.665773   -0.057963    0.134514   -0.667629   -0.000001
 5           0.944560   -0.020812   -0.009705    0.014764   -0.214727   -0.000000
 6           0.000000   -0.000001    0.000000   -0.000000   -0.000001    0.971190

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969044    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.969043    0.000000    0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.969044    0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.969043   -0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.969044    0.000000
 6           0.000000    0.000000   -0.000000    0.000000    0.000000    0.971190


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96574975 (fixed)   0.96920594 (relaxed)   0.96904402 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00061315   -0.00159533   -0.65861772
 Singles      0.01994889   -0.08671099   -0.09617503
 Pairs        0.04434815    0.00000003   -0.03280402
 Total        1.06491020   -0.08830628   -0.78759676
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.11420277
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.71824259
 One electron energy                -3377.86772872
 Two electron energy                  948.96592919
 Virial quotient                       -0.93826426
 Correlation energy                    -0.78759676
 !MRCI STATE 1.1 Energy             -2428.901799530156

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95292259 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95264237 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95292259 (Davidson, rotated reference)

 Cluster corrected energies         -2428.95132438 (Pople, fixed reference)
 Cluster corrected energies         -2428.95103769 (Pople, relaxed reference)
 Cluster corrected energies         -2428.95132438 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.68714475 (fixed)   0.96920535 (relaxed)   0.96904344 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00061313   -0.00159532   -0.65861724
 Singles      0.01994854   -0.08671027   -0.09617497
 Pairs        0.04434981   -0.00000031   -0.03280452
 Total        1.06491148   -0.08830590   -0.78759673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.11420277
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.71868876
 One electron energy                -3377.86807094
 Two electron energy                  948.96627143
 Virial quotient                       -0.93826410
 Correlation energy                    -0.78759673
 !MRCI STATE 2.1 Energy             -2428.901799501617

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95292357 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95264337 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95292357 (Davidson, rotated reference)

 Cluster corrected energies         -2428.95132538 (Pople, fixed reference)
 Cluster corrected energies         -2428.95103871 (Pople, relaxed reference)
 Cluster corrected energies         -2428.95132538 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.90006296 (fixed)   0.96920597 (relaxed)   0.96904405 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00061315   -0.00159533   -0.65861746
 Singles      0.01994887   -0.08671100   -0.09617501
 Pairs        0.04434811   -0.00000024   -0.03280426
 Total        1.06491013   -0.08830657   -0.78759673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.11420277
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.71822719
 One electron energy                -3377.86771160
 Two electron energy                  948.96591210
 Virial quotient                       -0.93826426
 Correlation energy                    -0.78759673
 !MRCI STATE 3.1 Energy             -2428.901799497758

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95292250 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95264229 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95292250 (Davidson, rotated reference)

 Cluster corrected energies         -2428.95132429 (Pople, fixed reference)
 Cluster corrected energies         -2428.95103760 (Pople, relaxed reference)
 Cluster corrected energies         -2428.95132429 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.66762938 (fixed)   0.96920517 (relaxed)   0.96904326 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00061313   -0.00159532   -0.65861809
 Singles      0.01994849   -0.08671013   -0.09617498
 Pairs        0.04435026    0.00000074   -0.03280365
 Total        1.06491188   -0.08830471   -0.78759673
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.11420277
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.71882437
 One electron energy                -3377.86817461
 Two electron energy                  948.96637512
 Virial quotient                       -0.93826405
 Correlation energy                    -0.78759673
 !MRCI STATE 4.1 Energy             -2428.901799493400

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95292388 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95264368 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95292388 (Davidson, rotated reference)

 Cluster corrected energies         -2428.95132570 (Pople, fixed reference)
 Cluster corrected energies         -2428.95103903 (Pople, relaxed reference)
 Cluster corrected energies         -2428.95132570 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.94456005 (fixed)   0.96920603 (relaxed)   0.96904411 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00061316   -0.00159533   -0.65861768
 Singles      0.01994903   -0.08671122   -0.09617511
 Pairs        0.04434782    0.00000014   -0.03280394
 Total        1.06491001   -0.08830641   -0.78759672
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.11420277
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.71817885
 One electron energy                -3377.86767468
 Two electron energy                  948.96587519
 Virial quotient                       -0.93826428
 Correlation energy                    -0.78759672
 !MRCI STATE 5.1 Energy             -2428.901799491508

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.95292240 (Davidson, fixed reference)
 Cluster corrected energies         -2428.95264218 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.95292240 (Davidson, rotated reference)

 Cluster corrected energies         -2428.95132419 (Pople, fixed reference)
 Cluster corrected energies         -2428.95103750 (Pople, relaxed reference)
 Cluster corrected energies         -2428.95132419 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.97118986 (fixed)   0.97129331 (relaxed)   0.97118986 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00044658   -0.00146489   -0.00170909
 Singles      0.00923751   -0.06205089   -0.06529520
 Pairs        0.05052548   -0.71377993   -0.71029140
 Total        1.06020958   -0.77729571   -0.77729570
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2428.07127768
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.65310482
 One electron energy                -3377.52927873
 Two electron energy                  948.68070535
 Virial quotient                       -0.93826731
 Correlation energy                    -0.77729570
 !MRCI STATE 6.1 Energy             -2428.848573378435

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.89537402 (Davidson, fixed reference)
 Cluster corrected energies         -2428.89519849 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.89537402 (Davidson, rotated reference)

 Cluster corrected energies         -2428.89372634 (Pople, fixed reference)
 Cluster corrected energies         -2428.89354819 (Pople, relaxed reference)
 Cluster corrected energies         -2428.89372634 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7      852.65       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3301.60   1170.24   2122.24      7.13      0.21      1.37
 REAL TIME  *      3396.68 SEC
 DISK USED  *       900.06 MB (local),       14.14 GB (total)
 SF USED    *         5.30 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(7)     =     -2428.95292259  AU                              
 SETTING HLSDIAG(8)     =     -2428.95292357  AU                              
 SETTING HLSDIAG(9)     =     -2428.95292250  AU                              
 SETTING HLSDIAG(10)    =     -2428.95292388  AU                              
 SETTING HLSDIAG(11)    =     -2428.95292240  AU                              
 SETTING HLSDIAG(12)    =     -2428.89537402  AU                              


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
     1     -2427.75860380
     2     -2427.75860380
     3     -2427.75860380

 Number of blocks in overlap matrix:   391   Smallest eigenvalue:  0.27D-04
 Number of N-2 electron functions:     717
 Number of N-1 electron functions:   65270

 Number of internal configurations:                17270
 Number of singly external configurations:       3100675
 Number of doubly external configurations:       1617345
 Total number of contracted configurations:      4735290
 Total number of uncontracted configurations:  103944645

 Diagonal Coupling coefficients finished.               Storage:   8822712 words, CPU-Time:      2.18 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2096954 words, CPU-time:      0.08 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2427.75860380    -0.00000000    -0.96774294  0.86D-01  0.54D-01     3.91
    1     2     2     1.00000000     0.00000000 -2427.75860380    -0.00000000    -0.96787001  0.86D-01  0.54D-01     3.91
    1     3     3     1.00000000     0.00000000 -2427.75860380     0.00000000    -0.96778936  0.86D-01  0.54D-01     3.91
    2     1     1     1.09347924    -0.79300368 -2428.55160749    -0.79300368    -0.02380279  0.87D-02  0.73D-03    40.70
    2     2     2     1.09352290    -0.79296366 -2428.55156746    -0.79296366    -0.02384343  0.87D-02  0.73D-03    40.70
    2     3     3     1.09358953    -0.79295001 -2428.55155381    -0.79295001    -0.02383836  0.87D-02  0.73D-03    40.70
    3     1     1     1.09219677    -0.81689845 -2428.57550226    -0.02389477    -0.00094013  0.21D-03  0.75D-04    77.56
    3     2     2     1.09218948    -0.81689784 -2428.57550164    -0.02393418    -0.00094065  0.21D-03  0.75D-04    77.56
    3     3     3     1.09219578    -0.81689778 -2428.57550158    -0.02394777    -0.00094064  0.21D-03  0.75D-04    77.56
    4     1     1     1.09521956    -0.81793548 -2428.57653929    -0.00103703    -0.00007003  0.79D-05  0.99D-05   114.41
    4     2     2     1.09521523    -0.81793548 -2428.57653928    -0.00103765    -0.00007003  0.79D-05  0.99D-05   114.41
    4     3     3     1.09521962    -0.81793534 -2428.57653914    -0.00103756    -0.00007010  0.79D-05  0.99D-05   114.41
    5     1     1     1.09637661    -0.81801832 -2428.57662213    -0.00008284    -0.00000815  0.73D-06  0.13D-05   150.97
    5     2     2     1.09637594    -0.81801830 -2428.57662211    -0.00008282    -0.00000817  0.74D-06  0.13D-05   150.97
    5     3     3     1.09637583    -0.81801827 -2428.57662207    -0.00008293    -0.00000819  0.74D-06  0.13D-05   150.97
    6     1     1     1.09632254    -0.81802911 -2428.57663292    -0.00001079    -0.00000099  0.89D-07  0.13D-06   187.58
    6     2     2     1.09632235    -0.81802911 -2428.57663291    -0.00001081    -0.00000099  0.91D-07  0.13D-06   187.58
    6     3     3     1.09632270    -0.81802911 -2428.57663291    -0.00001084    -0.00000099  0.91D-07  0.13D-06   187.58
    7     1     1     1.09629339    -0.81803026 -2428.57663407    -0.00000115    -0.00000013  0.16D-07  0.20D-07   224.14
    7     2     2     1.09629328    -0.81803027 -2428.57663407    -0.00000116    -0.00000013  0.16D-07  0.20D-07   224.14
    7     3     3     1.09629345    -0.81803027 -2428.57663407    -0.00000116    -0.00000013  0.16D-07  0.20D-07   224.14
    8     1     1     1.09631605    -0.81803042 -2428.57663422    -0.00000015    -0.00000002  0.21D-08  0.31D-08   260.80
    8     2     2     1.09631611    -0.81803042 -2428.57663422    -0.00000015    -0.00000002  0.21D-08  0.31D-08   260.80
    8     3     3     1.09631608    -0.81803042 -2428.57663422    -0.00000015    -0.00000002  0.21D-08  0.31D-08   260.80


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   1.4%  21.0%
 P   0.5%  58.9%   8.8%

 Initialization:   0.9%
 Other:            6.5%

 Total CPU:      260.8 seconds
 =====================================



 Wavefunction saved on  5502.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222///00/           0.9478934  -0.0000000   0.0000000
 2222222222///0/0          -0.0000000   0.0033839   0.9478873
 2222222222////00           0.0000000   0.9478873  -0.0033839
 2222222222/0/0//           0.0787150   0.0000000   0.0000000
 22222222220///0/          -0.0787149   0.0000000   0.0000000
 2222222222//00//           0.0000000   0.0002810   0.0787145
 2222222222//0/0/          -0.0000000   0.0787145  -0.0002810
 2222222222/0///0          -0.0000000  -0.0787144   0.0002810
 22222222220////0           0.0000000  -0.0002810  -0.0787144

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2222222222///000  25.2    -0.1442936   0.0000000  -0.0000000
 2222222222///000  24.2     0.0000000  -0.1442928   0.0005151
 2222222222///000  23.2    -0.0000000  -0.0005151  -0.1442927
 2222222222///000  33.2     0.1018355  -0.0000000   0.0000000
 2222222222///000  34.2     0.0000000   0.0003635   0.1018349
 2222222222///000  35.2     0.0000000   0.1018349  -0.0003635

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.954823    0.000000   -0.000000
 2          -0.000000    0.954817    0.003409
 3           0.000000   -0.003409    0.954817

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.954823   -0.000000    0.000000
 2          -0.000000    0.954823    0.000000
 3           0.000000    0.000000    0.954823


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95482285 (fixed)   0.95499252 (relaxed)   0.95482285 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050353   -0.00100602   -0.62691569
 Singles      0.05702695   -0.13079851   -0.16177095
 Pairs        0.03933760    0.00000000   -0.02934377
 Total        1.09686808   -0.13180453   -0.81803042
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.75860380
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.96154659
 One electron energy                -3373.82805838
 Two electron energy                  945.25142416
 Virial quotient                       -0.93805048
 Correlation energy                    -0.81803042
 !MRCI STATE 1.1 Energy             -2428.576634222313

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.65587525 (Davidson, fixed reference)
 Cluster corrected energies         -2428.65555645 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.65587525 (Davidson, rotated reference)

 Cluster corrected energies         -2428.65386552 (Pople, fixed reference)
 Cluster corrected energies         -2428.65352947 (Pople, relaxed reference)
 Cluster corrected energies         -2428.65386552 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95481674 (fixed)   0.95499249 (relaxed)   0.95482282 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050352   -0.00100602   -0.62468221
 Singles      0.05702698   -0.13079854   -0.16177097
 Pairs        0.03933763   -0.00244976   -0.03157724
 Total        1.09686814   -0.13425432   -0.81803042
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.75860380
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.96156143
 One electron energy                -3373.82807194
 Two electron energy                  945.25143772
 Virial quotient                       -0.93805048
 Correlation energy                    -0.81803042
 !MRCI STATE 2.1 Energy             -2428.576634220837

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.65587530 (Davidson, fixed reference)
 Cluster corrected energies         -2428.65555650 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.65587530 (Davidson, rotated reference)

 Cluster corrected energies         -2428.65386557 (Pople, fixed reference)
 Cluster corrected energies         -2428.65352953 (Pople, relaxed reference)
 Cluster corrected energies         -2428.65386557 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95481675 (fixed)   0.95499250 (relaxed)   0.95482283 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00050352   -0.00100602   -0.00129668
 Singles      0.05702696   -0.13079851   -0.16177096
 Pairs        0.03933762   -0.68622152   -0.65496278
 Total        1.09686810   -0.81802605   -0.81803042
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2427.75860380
 Nuclear energy                         0.00000000
 Kinetic energy                      2588.96155496
 One electron energy                -3373.82806480
 Two electron energy                  945.25143058
 Virial quotient                       -0.93805048
 Correlation energy                    -0.81803042
 !MRCI STATE 3.1 Energy             -2428.576634218946

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2428.65587527 (Davidson, fixed reference)
 Cluster corrected energies         -2428.65555647 (Davidson, relaxed reference)
 Cluster corrected energies         -2428.65587527 (Davidson, rotated reference)

 Cluster corrected energies         -2428.65386554 (Pople, fixed reference)
 Cluster corrected energies         -2428.65352949 (Pople, relaxed reference)
 Cluster corrected energies         -2428.65386554 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.32       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       8      962.71       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3572.12    270.52   1170.24   2122.24      7.13      0.21      1.37
 REAL TIME  *      3676.07 SEC
 DISK USED  *      1010.12 MB (local),       15.86 GB (total)
 SF USED    *         5.30 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(13)    =     -2428.65587525  AU                              
 SETTING HLSDIAG(14)    =     -2428.65587530  AU                              
 SETTING HLSDIAG(15)    =     -2428.65587527  AU                              


         HLSDIAG
    -2428.992694
    -2428.992694
    -2428.992694
    -2428.640699
    -2428.640699
    -2428.640699
    -2428.952923
    -2428.952924
    -2428.952923
    -2428.952924
    -2428.952922
    -2428.895374
    -2428.655875
    -2428.655875
    -2428.655875
                                                  

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

 Time for Seward_LS:       7.23 sec

 CPU time:      7.23 sec, REAL time:      7.78 sec


 SORTLS1 read    14251857. and wrote    14251857. SO integrals in    93 records. CPU time:      0.14 sec, REAL time:      0.23 sec
 SORTLS2 read    14251857. and wrote    69083406. SO integrals in    48 records. CPU time:      0.05 sec, REAL time:      0.09 sec

 FILE SIZES: FILE 1:    49.7 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    49.7 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       47.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       8      962.71       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      3580.56      8.39    270.52   1170.24   2122.24      7.13      0.21      1.37
 REAL TIME  *      3685.25 SEC
 DISK USED  *      1010.20 MB (local),       16.68 GB (total)
 SF USED    *         5.30 GB
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

 Original energies:  -2428.944325  -2428.944325  -2428.944325  -2428.551971  -2428.551971  -2428.551971
 Replaced energies:  -2428.992694  -2428.992694  -2428.992694  -2428.640699  -2428.640699  -2428.640699

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:  -2428.901800  -2428.901800  -2428.901799  -2428.901799  -2428.901799  -2428.848573
 Replaced energies:  -2428.952923  -2428.952924  -2428.952923  -2428.952924  -2428.952922  -2428.895374

 Wavefunction restored from record  5502.2  Symmetry=1  S= 2.0  NSTATE=   3

 Original energies:  -2428.576634  -2428.576634  -2428.576634
 Replaced energies:  -2428.655875  -2428.655875  -2428.655875

 >>> Fock matrix approximation error in all internal so: 
   121.21321945206427       (exact)    120.82138110425537       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   70.083966656164108       (exact)    69.857410703775557       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.7810102050538899E-002  (exact)   -2.7720052530134525E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.93878165546131431       (exact)   0.26051484408324427       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.7672791438404707       (exact)   0.49042547168920692       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   134.93339398239596       (exact)    37.444457291171730       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.24985634792064365       (exact)  -0.24886388765643627       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.43212689781343205       (exact)   0.43041044368127213       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -2.6092290717631129E-002  (exact)   -2.5988656150826198E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.48172304400355720       (exact)  -0.14142684749560427       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.8629111425130687E-003  (exact)    1.1340918315557366E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.3009774680897953E-003  (exact)    9.6912395654572578E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -69.989236155004178       (exact)   -69.711233524267584       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   121.04647889750343       (exact)    120.56567284855349       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.3089163966877111       (exact)   -7.2798846594519651       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -134.93925882579606       (exact)   -39.616198459501696       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0820627507393137       (exact)   0.31767722707003354       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.92464991783402473       (exact)   0.27146352235244819       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   3.6344109415013168       (exact)    3.6236923088742903       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -6.3413529900415826       (exact)   -6.3226508444629275       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -139.82484856167139       (exact)   -139.41247577647363       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0698460643334284       (exact)   0.29622351046025153       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   134.93230058804855       (exact)    37.360714456319961       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.7747080418693217       (exact)  -0.49138952305029848       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -69.989234380282696       (exact)   -69.711222240290240       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   121.04647578052131       (exact)    120.56565330780977       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -7.3089162271062751       (exact)   -7.2798834928000149       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -134.93947932283700       (exact)   -39.616342858232180       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.0820646377210246       (exact)   0.31767850798722103       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.92465145735891419       (exact)   0.27146460459049354       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.24985636726763391       (exact)   0.24886389362723937       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
 -0.43212687035841174       (exact)  -0.43041034713954612       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   2.6092299510695575E-002  (exact)    2.5988637557854244E-002  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.48172382827308424       (exact)   0.14142736376915135       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.8628910068194034E-003  (exact)   -1.1340826524673844E-003  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -3.3008540401187735E-003  (exact)   -9.6901135081214570E-004  (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   121.19947336907775       (exact)    120.80766728135764       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   70.106158567052191       (exact)    69.879532387130595       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.47135112882595459       (exact)   0.46996915374489967       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  0.93495618483664800       (exact)   0.25945368240691224       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2855721619669687       (exact)   0.35704486418655607       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   134.93881594405721       (exact)    37.445675054619905       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -4.0671072029504174       (exact)   -4.0549903099549294       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   6.0911198415223931       (exact)    6.0732274477857144       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   139.82405981311146       (exact)    139.41170872709665       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -1.0731901375722785       (exact)  -0.29715021663932006       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
  -134.93769841941736       (exact)   -37.362067355993624       (Fock matrix)
 >>> Fock matrix approximation error in all internal so: 
   1.2929971420561743       (exact)   0.35771224625572845       (Fock matrix)


   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2428.99269431

 Wigner-Eckart theorem used for 40 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.13    -324.53      -4.13
                           -0.00      47.86     792.70      -1.77    -229.62       9.91       0.00    -647.47      29.36     161.79

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.13       0.00     561.29       7.21
                          -47.86       0.00     458.34      -1.14    -132.98     -10.27     647.47      -0.00      16.83      95.05

    3   3.1  1.0  1.0       0.00       0.00       0.01       0.00       0.00       0.00     324.53    -561.29      -0.00     187.46
                         -792.70    -458.34      -0.00      -1.84      -3.42    -264.99     -29.36     -16.83      -0.00      -0.11

    4   4.1  1.0  1.0       0.00       0.00       0.00   77254.03       0.00       0.00       4.13      -7.21    -187.46      -0.00
                            1.77       1.14       1.84      -0.00      -1.06       1.24    -161.79     -95.05       0.11       0.00

    5   5.1  1.0  1.0       0.00       0.00       0.00       0.00   77254.11       0.00     -93.83     162.28      -8.29    -109.13
                          229.62     132.98       3.42       1.06       0.00     154.35       2.53      -1.37       0.13       1.44

    6   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   77254.12       1.20      -2.08       1.41       1.43
                           -9.91      10.27     264.99      -1.24    -154.35       0.00      94.90    -161.57       9.79     109.13

    7   1.1  1.0  0.0      -0.00       0.13     324.53       4.13     -93.83       1.20       0.00       0.00       0.00       0.00
                           -0.00    -647.47      29.36     161.79      -2.53     -94.90       0.00       0.00       0.00       0.00

    8   2.1  1.0  0.0      -0.13       0.00    -561.29      -7.21     162.28      -2.08       0.00       0.00       0.00       0.00
                          647.47       0.00      16.83      95.05       1.37     161.57      -0.00       0.00       0.00       0.00

    9   3.1  1.0  0.0    -324.53     561.29      -0.00    -187.46      -8.29       1.41       0.00       0.00       0.01       0.00
                          -29.36     -16.83       0.00      -0.11      -0.13      -9.79      -0.00      -0.00       0.00       0.00

   10   4.1  1.0  0.0      -4.13       7.21     187.46      -0.00    -109.13       1.43       0.00       0.00       0.00   77254.03
                         -161.79     -95.05       0.11      -0.00      -1.44    -109.13      -0.00      -0.00      -0.00       0.00

   11   5.1  1.0  0.0      93.83    -162.28       8.29     109.13       0.00      -0.76       0.00       0.00       0.00       0.00
                            2.53      -1.37       0.13       1.44      -0.00       0.87      -0.00      -0.00      -0.00      -0.00

   12   6.1  1.0  0.0      -1.20       2.08      -1.41      -1.43       0.76      -0.00       0.00       0.00       0.00       0.00
                           94.90    -161.57       9.79     109.13      -0.87       0.00      -0.00      -0.00      -0.00      -0.00

   13   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.13     324.53       4.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -647.47      29.36     161.79

   14   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.13       0.00    -561.29      -7.21
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     647.47       0.00      16.83      95.05

   15   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00    -324.53     561.29      -0.00    -187.46
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -29.36     -16.83       0.00      -0.11

   16   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -4.13       7.21     187.46      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -161.79     -95.05       0.11      -0.00

   17   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      93.83    -162.28       8.29     109.13
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.53      -1.37       0.13       1.44

   18   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -1.20       2.08      -1.41      -1.43
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      94.90    -161.57       9.79     109.13

   19   1.1  0.0  0.0      13.85      56.75      -1.66      12.46      -0.09     -12.09       0.00       0.00       0.00       0.00
                          333.26    -575.29      11.32    -197.43      -5.37       1.28     -88.11      33.44     937.26       9.47

   20   2.1  0.0  0.0    -168.19     157.10     -96.62      66.75     -25.52      19.76       0.00       0.00       0.00       0.00
                          -94.63      -5.92     651.34       4.14     194.14      22.68    -689.11     556.33     -54.73     246.64

   21   3.1  0.0  0.0    -390.66     490.82       5.21     184.23      10.04      26.07       0.00       0.00       0.00       0.00
                           19.11      41.94    -183.20      10.27     -54.15     -10.52    -563.16    -775.82     -30.82    -113.43

   22   4.1  0.0  0.0     605.21     449.68    -121.21      25.67     -37.70    -222.19       0.00       0.00       0.00       0.00
                         -111.25     -40.26    -365.47      11.23    -107.72      35.91    -384.11     402.80     -84.73     161.91

   23   5.1  0.0  0.0      91.19     103.63     648.51       4.28     192.50     -41.37       0.00       0.00       0.00       0.00
                          558.53     332.49      30.19       0.71       6.58    -193.17    -126.29     189.71     -21.34      67.80

   24   6.1  0.0  0.0    -945.75    -546.82       0.22       1.20       2.27     173.06       0.00       0.00       0.00       0.00
                           28.36     -49.48   -1090.96      -1.37    -173.06       2.28    -772.28    1335.65     -80.65     244.75

   25   1.1  2.0  2.0     -18.93      33.04     728.41      -5.21    -656.43       8.63       0.00       0.00       0.00       0.00
                          631.37     365.05      -0.15       4.57       8.60     656.54      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0     364.56    -630.51      38.07     655.66      -5.25      -4.49       0.00       0.00       0.00       0.00
                           -1.30       2.25      -0.14      -2.34       0.01       0.01      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0      -1.30       2.25      -0.14      -2.34       0.02       0.02       0.00       0.00       0.00       0.00
                         -364.66     630.67     -38.08    -654.67       5.25       4.48      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     -13.39      23.36     515.06      -3.68
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00     446.45     258.13      -0.10       3.23

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00     257.79    -445.84      26.92     463.62
                          631.99     365.56       2.46       4.59       6.31     662.32      -0.92       1.59      -0.10      -1.65

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.92       1.59      -0.10      -1.66
                          -21.21      31.77     729.28      -5.28    -662.86       6.36    -257.85     445.95     -26.93    -462.92

   31   1.1  2.0  0.0      -7.73      13.49     297.37      -2.13    -267.99       3.52       0.00       0.00       0.00       0.00
                         -257.76    -149.03       0.06      -1.86      -3.51    -268.03      -0.00      -0.00       0.00      -0.00

   32   2.1  2.0  0.0     148.83    -257.41      15.54     267.67      -2.15      -1.83       0.00       0.00       0.00       0.00
                            0.53      -0.92       0.06       0.95      -0.01      -0.01     729.76     422.12       2.84       5.30

   33   3.1  2.0  0.0      -0.53       0.92      -0.06      -0.96       0.01       0.01       0.00       0.00       0.00       0.00
                          148.87    -257.47      15.55     267.27      -2.14      -1.83     -24.49      36.69     842.10      -6.09

   34   1.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     -13.39      23.36     515.06      -3.68
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -446.45    -258.13       0.10      -3.23

   35   2.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00     257.79    -445.84      26.92     463.62
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.92      -1.59       0.10       1.65

   36   3.1  2.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.92       1.59      -0.10      -1.66
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     257.85    -445.95      26.93     462.92

   37   1.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.0  1.0      93.83      -1.20       0.00       0.00       0.00       0.00       0.00       0.00      13.85    -168.19
                           -2.53     -94.90       0.00       0.00       0.00       0.00       0.00       0.00    -333.26      94.63

    2   2.1  1.0  1.0    -162.28       2.08       0.00       0.00       0.00       0.00       0.00       0.00      56.75     157.10
                            1.37     161.57       0.00       0.00       0.00       0.00       0.00       0.00     575.29       5.92

    3   3.1  1.0  1.0       8.29      -1.41       0.00       0.00       0.00       0.00       0.00       0.00      -1.66     -96.62
                           -0.13      -9.79       0.00       0.00       0.00       0.00       0.00       0.00     -11.32    -651.34

    4   4.1  1.0  1.0     109.13      -1.43       0.00       0.00       0.00       0.00       0.00       0.00      12.46      66.75
                           -1.44    -109.13       0.00       0.00       0.00       0.00       0.00       0.00     197.43      -4.14

    5   5.1  1.0  1.0       0.00       0.76       0.00       0.00       0.00       0.00       0.00       0.00      -0.09     -25.52
                            0.00       0.87       0.00       0.00       0.00       0.00       0.00       0.00       5.37    -194.14

    6   6.1  1.0  1.0      -0.76      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     -12.09      19.76
                           -0.87      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.28     -22.68

    7   1.1  1.0  0.0       0.00       0.00      -0.00      -0.13    -324.53      -4.13      93.83      -1.20       0.00       0.00
                            0.00       0.00       0.00    -647.47      29.36     161.79      -2.53     -94.90      88.11     689.11

    8   2.1  1.0  0.0       0.00       0.00       0.13       0.00     561.29       7.21    -162.28       2.08       0.00       0.00
                            0.00       0.00     647.47      -0.00      16.83      95.05       1.37     161.57     -33.44    -556.33

    9   3.1  1.0  0.0       0.00       0.00     324.53    -561.29      -0.00     187.46       8.29      -1.41       0.00       0.00
                            0.00       0.00     -29.36     -16.83      -0.00      -0.11      -0.13      -9.79    -937.26      54.73

   10   4.1  1.0  0.0       0.00       0.00       4.13      -7.21    -187.46      -0.00     109.13      -1.43       0.00       0.00
                            0.00       0.00    -161.79     -95.05       0.11       0.00      -1.44    -109.13      -9.47    -246.64

   11   5.1  1.0  0.0   77254.11       0.00     -93.83     162.28      -8.29    -109.13       0.00       0.76       0.00       0.00
                            0.00       0.00       2.53      -1.37       0.13       1.44       0.00       0.87    -279.29       4.17

   12   6.1  1.0  0.0       0.00   77254.12       1.20      -2.08       1.41       1.43      -0.76      -0.00       0.00       0.00
                           -0.00       0.00      94.90    -161.57       9.79     109.13      -0.87      -0.00     -14.02     -92.83

   13   1.1  1.0 -1.0     -93.83       1.20       0.00       0.00       0.00       0.00       0.00       0.00      13.85    -168.19
                           -2.53     -94.90       0.00     -47.86    -792.70       1.77     229.62      -9.91     333.26     -94.63

   14   2.1  1.0 -1.0     162.28      -2.08       0.00       0.00       0.00       0.00       0.00       0.00      56.75     157.10
                            1.37     161.57      47.86      -0.00    -458.34       1.14     132.98      10.27    -575.29      -5.92

   15   3.1  1.0 -1.0      -8.29       1.41       0.00       0.00       0.01       0.00       0.00       0.00      -1.66     -96.62
                           -0.13      -9.79     792.70     458.34       0.00       1.84       3.42     264.99      11.32     651.34

   16   4.1  1.0 -1.0    -109.13       1.43       0.00       0.00       0.00   77254.03       0.00       0.00      12.46      66.75
                           -1.44    -109.13      -1.77      -1.14      -1.84       0.00       1.06      -1.24    -197.43       4.14

   17   5.1  1.0 -1.0       0.00      -0.76       0.00       0.00       0.00       0.00   77254.11       0.00      -0.09     -25.52
                           -0.00       0.87    -229.62    -132.98      -3.42      -1.06      -0.00    -154.35      -5.37     194.14

   18   6.1  1.0 -1.0       0.76      -0.00       0.00       0.00       0.00       0.00       0.00   77254.12     -12.09      19.76
                           -0.87       0.00       9.91     -10.27    -264.99       1.24     154.35      -0.00       1.28      22.68

   19   1.1  0.0  0.0       0.00       0.00      13.85      56.75      -1.66      12.46      -0.09     -12.09    8728.88       0.00
                          279.29      14.02    -333.26     575.29     -11.32     197.43       5.37      -1.28       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00    -168.19     157.10     -96.62      66.75     -25.52      19.76       0.00    8728.67
                           -4.17      92.83      94.63       5.92    -651.34      -4.14    -194.14     -22.68      -0.00       0.00

   21   3.1  0.0  0.0       0.00       0.00    -390.66     490.82       5.21     184.23      10.04      26.07       0.00       0.00
                          -10.90     261.12     -19.11     -41.94     183.20     -10.27      54.15      10.52      -0.00      -0.00

   22   4.1  0.0  0.0       0.00       0.00     605.21     449.68    -121.21      25.67     -37.70    -222.19       0.00       0.00
                          -17.54      37.99     111.25      40.26     365.47     -11.23     107.72     -35.91      -0.00      -0.00

   23   5.1  0.0  0.0       0.00       0.00      91.19     103.63     648.51       4.28     192.50     -41.37       0.00       0.00
                           -3.29       3.84    -558.53    -332.49     -30.19      -0.71      -6.58     193.17      -0.00      -0.00

   24   6.1  0.0  0.0       0.00       0.00    -945.75    -546.82       0.22       1.20       2.27     173.06       0.00       0.00
                           -1.96      -1.68     -28.36      49.48    1090.96       1.37     173.06      -2.28      -0.00      -0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   1.1  2.0  1.0    -464.16       6.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.08     464.25      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   2.1  2.0  1.0      -3.72      -3.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   3.1  2.0  1.0       0.01       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.71       3.17      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.1  2.0  0.0       0.00       0.00      -7.73      13.49     297.37      -2.13    -267.99       3.52       0.00       0.00
                           -0.00      -0.00     257.76     149.03      -0.06       1.86       3.51     268.03      -0.00      -0.00

   32   2.1  2.0  0.0       0.00       0.00     148.83    -257.41      15.54     267.67      -2.15      -1.83       0.00       0.00
                            7.29     764.78      -0.53       0.92      -0.06      -0.95       0.01       0.01      -0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00      -0.53       0.92      -0.06      -0.96       0.01       0.01       0.00       0.00
                         -765.41       7.34    -148.87     257.47     -15.55    -267.27       2.14       1.83      -0.00      -0.00

   34   1.1  2.0 -1.0    -464.16       6.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.08    -464.25      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   2.1  2.0 -1.0      -3.72      -3.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.01     631.99     365.56       2.46       4.59       6.31     662.32      -0.00      -0.00

   36   3.1  2.0 -1.0       0.01       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.71      -3.17     -21.21      31.77     729.28      -5.28    -662.86       6.36      -0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00     -18.93      33.04     728.41      -5.21    -656.43       8.63       0.00       0.00
                           -0.00      -0.00    -631.37    -365.05       0.15      -4.57      -8.60    -656.54      -0.00      -0.00

   38   2.1  2.0 -2.0       0.00       0.00     364.56    -630.51      38.07     655.66      -5.25      -4.49       0.00       0.00
                           -0.00      -0.00       1.30      -2.25       0.14       2.34      -0.01      -0.01      -0.00      -0.00

   39   3.1  2.0 -2.0       0.00       0.00      -1.30       2.25      -0.14      -2.34       0.02       0.02       0.00       0.00
                           -0.00      -0.00     364.66    -630.67      38.08     654.67      -5.25      -4.48      -0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.0  1.0    -390.66     605.21      91.19    -945.75     -18.93     364.56      -1.30       0.00       0.00       0.00
                          -19.11     111.25    -558.53     -28.36    -631.37       1.30     364.66       0.00    -631.99      21.21

    2   2.1  1.0  1.0     490.82     449.68     103.63    -546.82      33.04    -630.51       2.25       0.00       0.00       0.00
                          -41.94      40.26    -332.49      49.48    -365.05      -2.25    -630.67       0.00    -365.56     -31.77

    3   3.1  1.0  1.0       5.21    -121.21     648.51       0.22     728.41      38.07      -0.14       0.00       0.00       0.00
                          183.20     365.47     -30.19    1090.96       0.15       0.14      38.08      -0.00      -2.46    -729.28

    4   4.1  1.0  1.0     184.23      25.67       4.28       1.20      -5.21     655.66      -2.34       0.00       0.00       0.00
                          -10.27     -11.23      -0.71       1.37      -4.57       2.34     654.67       0.00      -4.59       5.28

    5   5.1  1.0  1.0      10.04     -37.70     192.50       2.27    -656.43      -5.25       0.02       0.00       0.00       0.00
                           54.15     107.72      -6.58     173.06      -8.60      -0.01      -5.25       0.00      -6.31     662.86

    6   6.1  1.0  1.0      26.07    -222.19     -41.37     173.06       8.63      -4.49       0.02       0.00       0.00       0.00
                           10.52     -35.91     193.17      -2.28    -656.54      -0.01      -4.48       0.00    -662.32      -6.36

    7   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -13.39     257.79      -0.92
                          563.16     384.11     126.29     772.28       0.00       0.00       0.00    -446.45       0.92     257.85

    8   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      23.36    -445.84       1.59
                          775.82    -402.80    -189.71   -1335.65       0.00       0.00       0.00    -258.13      -1.59    -445.95

    9   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00     515.06      26.92      -0.10
                           30.82      84.73      21.34      80.65       0.00       0.00       0.00       0.10       0.10      26.93

   10   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -3.68     463.62      -1.66
                          113.43    -161.91     -67.80    -244.75       0.00       0.00       0.00      -3.23       1.65     462.92

   11   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -464.16      -3.72       0.01
                           10.90      17.54       3.29       1.96       0.00       0.00       0.00      -6.08      -0.01      -3.71

   12   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       6.11      -3.18       0.01
                         -261.12     -37.99      -3.84       1.68       0.00       0.00       0.00    -464.25      -0.01      -3.17

   13   1.1  1.0 -1.0    -390.66     605.21      91.19    -945.75       0.00       0.00       0.00       0.00       0.00       0.00
                           19.11    -111.25     558.53      28.36       0.00       0.00       0.00       0.00       0.00       0.00

   14   2.1  1.0 -1.0     490.82     449.68     103.63    -546.82       0.00       0.00       0.00       0.00       0.00       0.00
                           41.94     -40.26     332.49     -49.48       0.00       0.00       0.00       0.00       0.00       0.00

   15   3.1  1.0 -1.0       5.21    -121.21     648.51       0.22       0.00       0.00       0.00       0.00       0.00       0.00
                         -183.20    -365.47      30.19   -1090.96       0.00       0.00       0.00       0.00       0.00       0.00

   16   4.1  1.0 -1.0     184.23      25.67       4.28       1.20       0.00       0.00       0.00       0.00       0.00       0.00
                           10.27      11.23       0.71      -1.37       0.00       0.00       0.00       0.00       0.00       0.00

   17   5.1  1.0 -1.0      10.04     -37.70     192.50       2.27       0.00       0.00       0.00       0.00       0.00       0.00
                          -54.15    -107.72       6.58    -173.06       0.00       0.00       0.00       0.00       0.00       0.00

   18   6.1  1.0 -1.0      26.07    -222.19     -41.37     173.06       0.00       0.00       0.00       0.00       0.00       0.00
                          -10.52      35.91    -193.17       2.28       0.00       0.00       0.00       0.00       0.00       0.00

   19   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   3.1  0.0  0.0    8728.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   4.1  0.0  0.0       0.00    8728.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   5.1  0.0  0.0       0.00       0.00    8728.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   6.1  0.0  0.0       0.00       0.00       0.00   21359.33       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   1.1  2.0  2.0       0.00       0.00       0.00       0.00   73923.24       0.00       0.00      -0.00    -250.79       0.90
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.90     250.79

   26   2.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00   73923.23       0.00     250.79      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -501.59      -0.90      -0.00      -0.00

   27   3.1  2.0  2.0       0.00       0.00       0.00       0.00       0.00       0.00   73923.23      -0.90      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     501.59      -0.00    -250.79       0.00      -0.00

   28   1.1  2.0  1.0       0.00       0.00       0.00       0.00      -0.00     250.79      -0.90   73923.24       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.90     250.79       0.00       0.00      -0.00

   29   2.1  2.0  1.0       0.00       0.00       0.00       0.00    -250.79      -0.00      -0.00       0.00   73923.23       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.90       0.00      -0.00      -0.00       0.00    -250.80

   30   3.1  2.0  1.0       0.00       0.00       0.00       0.00       0.90       0.00       0.00       0.00       0.00   73923.23
                           -0.00      -0.00      -0.00      -0.00    -250.79       0.00       0.00       0.00     250.80      -0.00

   31   1.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     307.16      -1.10
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.10     307.16

   32   2.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -307.16      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.10       0.00      -0.00

   33   3.1  2.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.10       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -307.16       0.00       0.00

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

    1   1.1  1.0  1.0      -7.73     148.83      -0.53       0.00       0.00       0.00       0.00       0.00       0.00
                          257.76      -0.53    -148.87       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.0  1.0      13.49    -257.41       0.92       0.00       0.00       0.00       0.00       0.00       0.00
                          149.03       0.92     257.47       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0     297.37      15.54      -0.06       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06      -0.06     -15.55       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.0  1.0      -2.13     267.67      -0.96       0.00       0.00       0.00       0.00       0.00       0.00
                            1.86      -0.95    -267.27       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.0  1.0    -267.99      -2.15       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            3.51       0.01       2.14       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.0  1.0       3.52      -1.83       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          268.03       0.01       1.83       0.00       0.00       0.00       0.00       0.00       0.00

    7   1.1  1.0  0.0       0.00       0.00       0.00     -13.39     257.79      -0.92       0.00       0.00       0.00
                            0.00    -729.76      24.49     446.45      -0.92    -257.85       0.00       0.00       0.00

    8   2.1  1.0  0.0       0.00       0.00       0.00      23.36    -445.84       1.59       0.00       0.00       0.00
                            0.00    -422.12     -36.69     258.13       1.59     445.95       0.00       0.00       0.00

    9   3.1  1.0  0.0       0.00       0.00       0.00     515.06      26.92      -0.10       0.00       0.00       0.00
                           -0.00      -2.84    -842.10      -0.10      -0.10     -26.93       0.00       0.00       0.00

   10   4.1  1.0  0.0       0.00       0.00       0.00      -3.68     463.62      -1.66       0.00       0.00       0.00
                            0.00      -5.30       6.09       3.23      -1.65    -462.92       0.00       0.00       0.00

   11   5.1  1.0  0.0       0.00       0.00       0.00    -464.16      -3.72       0.01       0.00       0.00       0.00
                            0.00      -7.29     765.41       6.08       0.01       3.71       0.00       0.00       0.00

   12   6.1  1.0  0.0       0.00       0.00       0.00       6.11      -3.18       0.01       0.00       0.00       0.00
                            0.00    -764.78      -7.34     464.25       0.01       3.17       0.00       0.00       0.00

   13   1.1  1.0 -1.0      -7.73     148.83      -0.53       0.00       0.00       0.00     -18.93     364.56      -1.30
                         -257.76       0.53     148.87       0.00    -631.99      21.21     631.37      -1.30    -364.66

   14   2.1  1.0 -1.0      13.49    -257.41       0.92       0.00       0.00       0.00      33.04    -630.51       2.25
                         -149.03      -0.92    -257.47       0.00    -365.56     -31.77     365.05       2.25     630.67

   15   3.1  1.0 -1.0     297.37      15.54      -0.06       0.00       0.00       0.00     728.41      38.07      -0.14
                            0.06       0.06      15.55      -0.00      -2.46    -729.28      -0.15      -0.14     -38.08

   16   4.1  1.0 -1.0      -2.13     267.67      -0.96       0.00       0.00       0.00      -5.21     655.66      -2.34
                           -1.86       0.95     267.27       0.00      -4.59       5.28       4.57      -2.34    -654.67

   17   5.1  1.0 -1.0    -267.99      -2.15       0.01       0.00       0.00       0.00    -656.43      -5.25       0.02
                           -3.51      -0.01      -2.14       0.00      -6.31     662.86       8.60       0.01       5.25

   18   6.1  1.0 -1.0       3.52      -1.83       0.01       0.00       0.00       0.00       8.63      -4.49       0.02
                         -268.03      -0.01      -1.83       0.00    -662.32      -6.36     656.54       0.01       4.48

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

   28   1.1  2.0  1.0      -0.00    -307.16       1.10       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.10     307.16       0.00       0.00       0.00       0.00       0.00       0.00

   29   2.1  2.0  1.0     307.16      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.10      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30   3.1  2.0  1.0      -1.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -307.16       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  2.0  0.0   73923.24       0.00       0.00      -0.00    -307.16       1.10       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       1.10     307.16       0.00       0.00       0.00

   32   2.1  2.0  0.0       0.00   73923.23       0.00     307.16      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -1.10      -0.00      -0.00       0.00       0.00       0.00

   33   3.1  2.0  0.0       0.00       0.00   73923.23      -1.10      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -307.16       0.00      -0.00       0.00       0.00       0.00

   34   1.1  2.0 -1.0      -0.00     307.16      -1.10   73923.24       0.00       0.00      -0.00    -250.79       0.90
                            0.00       1.10     307.16      -0.00      -0.00       0.00      -0.00       0.90     250.79

   35   2.1  2.0 -1.0    -307.16      -0.00      -0.00       0.00   73923.23       0.00     250.79      -0.00       0.00
                           -1.10       0.00      -0.00       0.00      -0.00     250.80      -0.90      -0.00      -0.00

   36   3.1  2.0 -1.0       1.10       0.00       0.00       0.00       0.00   73923.23      -0.90      -0.00       0.00
                         -307.16       0.00       0.00      -0.00    -250.80       0.00    -250.79       0.00      -0.00

   37   1.1  2.0 -2.0       0.00       0.00       0.00      -0.00     250.79      -0.90   73923.24       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.90     250.79      -0.00      -0.00       0.00

   38   2.1  2.0 -2.0       0.00       0.00       0.00    -250.79      -0.00      -0.00       0.00   73923.23       0.00
                           -0.00      -0.00      -0.00      -0.90       0.00      -0.00       0.00      -0.00     501.59

   39   3.1  2.0 -2.0       0.00       0.00       0.00       0.90       0.00       0.00       0.00       0.00   73923.23
                           -0.00      -0.00      -0.00    -250.79       0.00       0.00      -0.00    -501.59       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2428.99779529    -0.00510097    -1119.53      0.00000000        0.00      0.0000
     2 -2428.99779527    -0.00510096    -1119.53      0.00000001        0.00      0.0000
     3 -2428.99779527    -0.00510096    -1119.53      0.00000002        0.00      0.0000
     4 -2428.99779526    -0.00510095    -1119.53      0.00000003        0.01      0.0000
     5 -2428.99779525    -0.00510093    -1119.53      0.00000004        0.01      0.0000
     6 -2428.98857633     0.00411798      903.79      0.00921895     2023.33      0.2509
     7 -2428.98857631     0.00411800      903.80      0.00921897     2023.33      0.2509
     8 -2428.98857629     0.00411802      903.80      0.00921899     2023.34      0.2509
     9 -2428.98599978     0.00669453     1469.28      0.01179550     2588.81      0.3210
    10 -2428.95211370     0.04058061     8906.42      0.04568159    10025.95      1.2431
    11 -2428.95211340     0.04058091     8906.48      0.04568189    10026.02      1.2431
    12 -2428.95211243     0.04058188     8906.69      0.04568286    10026.23      1.2431
    13 -2428.95211234     0.04058197     8906.71      0.04568294    10026.25      1.2431
    14 -2428.95211224     0.04058207     8906.73      0.04568304    10026.27      1.2431
    15 -2428.89374327     0.09895105    21717.24      0.10405202    22836.78      2.8314
    16 -2428.66000691     0.33268741    73016.45      0.33778838    74135.98      9.1917
    17 -2428.66000034     0.33269398    73017.89      0.33779495    74137.42      9.1919
    18 -2428.65999995     0.33269436    73017.97      0.33779533    74137.51      9.1919
    19 -2428.65848678     0.33420754    73350.08      0.33930851    74469.61      9.2331
    20 -2428.65848678     0.33420754    73350.08      0.33930851    74469.61      9.2331
    21 -2428.65848384     0.33421047    73350.72      0.33931144    74470.25      9.2331
    22 -2428.65848380     0.33421052    73350.73      0.33931149    74470.26      9.2331
    23 -2428.65848289     0.33421143    73350.93      0.33931240    74470.46      9.2332
    24 -2428.65358989     0.33910442    74424.82      0.34420540    75544.35      9.3663
    25 -2428.65358989     0.33910443    74424.82      0.34420540    75544.35      9.3663
    26 -2428.65358988     0.33910443    74424.82      0.34420540    75544.35      9.3663
    27 -2428.65358988     0.33910444    74424.82      0.34420541    75544.36      9.3663
    28 -2428.65358987     0.33910444    74424.82      0.34420542    75544.36      9.3663
    29 -2428.65358987     0.33910444    74424.82      0.34420542    75544.36      9.3663
    30 -2428.65358987     0.33910444    74424.82      0.34420542    75544.36      9.3663
    31 -2428.63982444     0.35286987    77445.99      0.35797085    78565.52      9.7409
    32 -2428.63982338     0.35287093    77446.22      0.35797190    78565.75      9.7409
    33 -2428.63982336     0.35287095    77446.22      0.35797193    78565.76      9.7409
    34 -2428.63982009     0.35287423    77446.94      0.35797520    78566.47      9.7410
    35 -2428.63982009     0.35287423    77446.94      0.35797520    78566.48      9.7410
    36 -2428.63926179     0.35343252    77569.47      0.35853349    78689.01      9.7562
    37 -2428.63923915     0.35345516    77574.44      0.35855614    78693.98      9.7568
    38 -2428.63923874     0.35345557    77574.53      0.35855655    78694.07      9.7568
    39 -2428.63923203     0.35346229    77576.01      0.35856326    78695.54      9.7570


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.0  1.0   0.201079429   0.202651866  -0.197970744   0.469896682   0.459068004  -0.407629762   0.249523049  -0.289807095
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.0  1.0   0.284033430  -0.429795916   0.421450152   0.128471530   0.192583869  -0.283425562  -0.423775859   0.406513720
                        -0.041035393   0.112823898  -0.004490831  -0.007747436   0.020676767   0.078148123   0.074137480  -0.001064817

    3    3.1  1.0  1.0  -0.110499785   0.025499569   0.075413341   0.012746555   0.051968097   0.041330856   0.062866316  -0.026512440
                        -0.206333398  -0.099887713   0.173121769   0.486417642   0.481583564   0.491896982  -0.007251428   0.047518927

    4    4.1  1.0  1.0  -0.000436467   0.001399577  -0.001358174   0.000377176   0.000203013  -0.000131917  -0.001642919   0.001655888
                         0.000077413  -0.000300043   0.000034091   0.000083310   0.000010376   0.000151399   0.000213410  -0.000010047

    5    5.1  1.0  1.0   0.000319338  -0.000014994  -0.000281739  -0.000003484  -0.000126383   0.000152376   0.000136351  -0.000013009
                         0.000613280   0.000284273  -0.000510670  -0.001434990  -0.001423374   0.001641548  -0.000016242   0.000157670

    6    6.1  1.0  1.0   0.000933778  -0.000126809   0.000129925   0.001389487   0.001459435   0.001643713  -0.000003265   0.000146245
                        -0.000069231   0.000165340  -0.000000226   0.000006472   0.000048912  -0.000152267  -0.000124643  -0.000000192

    7    1.1  1.0  0.0   0.129891352   0.173174263   0.210290231  -0.025570802  -0.019750386   0.048498959   0.063464060  -0.029400089
                         0.552633021  -0.166249913   0.287860915  -0.153967972   0.004000604  -0.003824796   0.606412916  -0.000336396

    8    2.1  1.0  0.0  -0.126090661   0.218913795   0.267137271  -0.010181122   0.090020968   0.024081388   0.036806463   0.025432487
                        -0.536462677  -0.210160569   0.365677382  -0.061302989  -0.018234493  -0.001899142   0.351693775   0.000291000

    9    3.1  1.0  0.0   0.005706641   0.416733016  -0.224304627   0.011873679   0.082768149  -0.065595622   0.001847071   0.702735229
                         0.024279378  -0.400069758  -0.307045081   0.071494266  -0.016765373   0.005173099   0.017649176   0.008040726

   10    4.1  1.0  0.0   0.000515660  -0.000243574  -0.000394590  -0.000010752  -0.000247724  -0.000002981  -0.000001647   0.000018842
                         0.002193916   0.000233835  -0.000540144  -0.000064740   0.000050179   0.000000235  -0.000015740   0.000000216

   11    5.1  1.0  0.0   0.000007782  -0.001233908   0.000657818  -0.000036614  -0.000254769  -0.000220639   0.000003002   0.002339486
                         0.000033109   0.001184570   0.000900471  -0.000220464   0.000051605   0.000017400   0.000028687   0.000026768

   12    6.1  1.0  0.0   0.000142125   0.000784597   0.000927562  -0.000079945   0.000087654  -0.000176794  -0.000243936   0.000011987
                         0.000604680  -0.000753225   0.001269716  -0.000481366  -0.000017755   0.000013943  -0.002330864   0.000000137

   13    1.1  1.0 -1.0   0.180025585  -0.008264946  -0.060195331   0.444670953  -0.422881733   0.402590638   0.244116392   0.289731222
                        -0.089575260   0.202483200   0.188597354  -0.151890211   0.178646211  -0.063896805  -0.051661767   0.006631101

   14    2.1  1.0 -1.0   0.272574069   0.130258806   0.132425108   0.124079022  -0.169356988   0.292171730  -0.429943077  -0.406382929
                        -0.089790124  -0.424836785  -0.400130106  -0.034195833   0.093990879   0.032754514   0.015208357  -0.010366015

   15    3.1  1.0 -1.0  -0.007014247  -0.100844526  -0.141994576  -0.145168200   0.139536450   0.036285941   0.063005482   0.025418214
                         0.233954000   0.021404568  -0.124482396  -0.464425231   0.463845868   0.492294841  -0.005921669   0.048113119

   16    4.1  1.0 -1.0  -0.000425252  -0.000356874  -0.000445446   0.000329998  -0.000182973   0.000154018  -0.001651505  -0.001655225
                         0.000125126   0.001386175   0.001283502  -0.000200756   0.000088561   0.000128849   0.000131367  -0.000047933

   17    5.1  1.0 -1.0   0.000012703   0.000284648   0.000400825   0.000460552  -0.000437485   0.000106824   0.000136759   0.000009398
                        -0.000691323  -0.000003388   0.000423675   0.001359081  -0.001360358   0.001645141  -0.000012340   0.000157926

   18    6.1  1.0 -1.0   0.000866848   0.000170374   0.000039720   0.001312803  -0.001325360  -0.001647262   0.000022612  -0.000146203
                        -0.000353990  -0.000119960  -0.000123705  -0.000455265   0.000612996   0.000107270   0.000122618  -0.000003538

   19    1.1  0.0  0.0  -0.008533936  -0.074193157  -0.062490542   0.009888756  -0.003584719  -0.000000002   0.000000056  -0.000000008
                         0.002005825  -0.077283369   0.045651011  -0.001642312  -0.017697223  -0.000000027  -0.000000006   0.000000733

   20    2.1  0.0  0.0  -0.102552247   0.002941276   0.009572493   0.078546898   0.003839859   0.000000003   0.000000425  -0.000000001
                         0.024103970   0.003063786  -0.006992963  -0.013044967   0.018956812   0.000000037  -0.000000045   0.000000048

   21    3.1  0.0  0.0   0.006589040   0.054098245  -0.086256962   0.019874044   0.000447619  -0.000000008   0.000001272   0.000000000
                        -0.001548694   0.056351450   0.063013058  -0.003300656   0.002209829  -0.000000104  -0.000000133  -0.000000041

   22    4.1  0.0  0.0  -0.078790327   0.006719527  -0.014392187  -0.103501396  -0.000025529   0.000000009   0.000000119   0.000000000
                         0.018518948   0.006999396   0.010513884   0.017189378  -0.000126031   0.000000114  -0.000000012  -0.000000041

   23    5.1  0.0  0.0  -0.013732185   0.011550508   0.008530571   0.010645429  -0.026085315  -0.000000046  -0.000000076   0.000000000
                         0.003227625   0.012031598  -0.006231810  -0.001767978  -0.128779316  -0.000000580   0.000000008  -0.000000009

   24    6.1  0.0  0.0   0.000000515  -0.000000006  -0.000000014   0.000000328   0.000000021   0.000000000   0.000000003   0.000000000
                        -0.000000121  -0.000000007   0.000000010  -0.000000055   0.000000106   0.000000003  -0.000000000  -0.000000004

   25    1.1  2.0  2.0   0.000803866   0.000545125  -0.000995641  -0.000100974  -0.000376006  -0.000000053  -0.000000045  -0.000000005
                        -0.001059168   0.001313591  -0.002075290  -0.009352474  -0.009539883  -0.000000681   0.000000007  -0.000000068

   26    2.1  2.0  2.0   0.001473618  -0.004632744   0.004490955  -0.001218237  -0.000642549  -0.000435417  -0.004971993   0.005007550
                        -0.000246808   0.001021190  -0.000142358  -0.000309400  -0.000068727   0.000422974   0.000666468  -0.000052103

   27    3.1  2.0  2.0  -0.000246868   0.001021430  -0.000142379  -0.000309467  -0.000068734   0.000423086   0.000666627  -0.000052105
                        -0.001473979   0.004633883  -0.004492058   0.001218544   0.000642714   0.000435531   0.004973255  -0.005008820

   28    1.1  2.0  1.0   0.001474483  -0.004636755   0.004491639  -0.001217138  -0.000642384   0.000436989   0.004974241  -0.005008290
                        -0.000241521   0.001005021  -0.000126054  -0.000313806  -0.000070997  -0.000421433  -0.000648729   0.000034225

   29    2.1  2.0  1.0  -0.001430785   0.001107281   0.000939214   0.000001790   0.000693214   0.000410796   0.000373643  -0.000003767
                        -0.008212679  -0.000150652   0.000907614  -0.004471438  -0.004953807   0.004981993  -0.000040465   0.000477505

   30    3.1  2.0  1.0  -0.007156706  -0.001467847   0.002989218   0.004892160   0.004598320   0.004983173  -0.000040470   0.000477619
                         0.002239710  -0.000566401  -0.001928859  -0.000069454  -0.001035723  -0.000410882  -0.000373719   0.000003750

   31    1.1  2.0  0.0   0.000000047   0.000000050   0.000000003   0.000000082  -0.000000102  -0.000641155  -0.000609804   0.000008913
                        -0.000000011   0.000000052  -0.000000002  -0.000000014  -0.000000505  -0.008129931   0.000063819  -0.000778969

   32    2.1  2.0  0.0   0.003556161  -0.004244918   0.007308168  -0.002774735  -0.000096997  -0.000024707   0.004081093  -0.000000689
                        -0.000835843  -0.004421720  -0.005338816   0.000460824  -0.000478860  -0.000313292  -0.000427106   0.000060251

   33    3.1  2.0  0.0  -0.000256718  -0.006845458  -0.005069681   0.001240847  -0.000299219   0.000030246   0.000089157   0.000046883
                         0.000060339  -0.007130578   0.003703537  -0.000206078  -0.001477199   0.000383519  -0.000009331  -0.004097474

   34    1.1  2.0 -1.0  -0.001427690  -0.001193290  -0.001485821   0.001050363  -0.000564119   0.000497648  -0.005000773  -0.005006196
                         0.000440608   0.004591907   0.004240643  -0.000690389   0.000315384   0.000347725   0.000395204  -0.000148811

   35    2.1  2.0 -1.0  -0.002377543   0.000195686   0.000579062  -0.001447049   0.002566344  -0.000375220  -0.000373925   0.000007160
                        -0.007990153  -0.001100216   0.001170714  -0.004230816   0.004293557  -0.004984799   0.000037771  -0.000477467

   36    3.1  2.0 -1.0   0.007405098   0.000506066  -0.002746439  -0.004651982   0.004638907   0.004985978  -0.000037782   0.000477580
                        -0.001182909   0.001489725   0.002261194   0.001515625  -0.000835354  -0.000375320  -0.000374000   0.000007179

   37    1.1  2.0 -2.0   0.001191527   0.001290265   0.001674294   0.002927556  -0.003366076  -0.000000054  -0.000000046   0.000000006
                         0.000590169   0.000598244   0.001579516   0.008883039  -0.008934220  -0.000000680   0.000000002  -0.000000067

   38    2.1  2.0 -2.0   0.001429270   0.001209282   0.001501145  -0.001052827   0.000565155   0.000496336  -0.005002247  -0.005005046
                        -0.000435489  -0.004587240  -0.004235034   0.000686575  -0.000313357   0.000349493   0.000377384  -0.000166667

   39    3.1  2.0 -2.0   0.000435596   0.004588368   0.004236079  -0.000686738   0.000313428  -0.000349586  -0.000377490   0.000166699
                         0.001429620   0.001209568   0.001501501  -0.001053095   0.000565304   0.000496466  -0.005003515  -0.005006317


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.0  1.0   0.350407502   0.061849477  -0.019279243   0.033499589  -0.039361252   0.056856902  -0.047218006  -0.005248353
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.0  1.0   0.201869836   0.045160915   0.013319906  -0.057524304   0.049164829   0.034694272  -0.027202341  -0.003022183
                        -0.024384596  -0.004166177   0.008079819   0.008116042  -0.005587483   0.005490712   0.003285857   0.000368116

    3    3.1  1.0  1.0  -0.012189207  -0.005331367   0.023648497   0.001191573   0.000578702   0.012829432   0.001642500   0.000184090
                        -0.403846907   0.038200513  -0.061900845  -0.000239660   0.018224013   0.063983918   0.054418681   0.006052502

    4    4.1  1.0  1.0  -0.000022476  -0.000369707  -0.000952305   0.003140428  -0.002936927  -0.000025594  -0.000018362   0.000705174
                        -0.000024117   0.000249135  -0.000457710  -0.000330364   0.000265171  -0.000089477  -0.000019700   0.000774251

    5    5.1  1.0  1.0  -0.000134577   0.000280675  -0.001164984   0.000082755  -0.000162867  -0.000567515  -0.000109934   0.004140162
                        -0.003122576  -0.001794308   0.002905672  -0.000000882  -0.000850668  -0.003024229  -0.002550793   0.095553598

    6    6.1  1.0  1.0  -0.003122617   0.003592459  -0.000451274  -0.000013150  -0.000424203   0.003149931  -0.002550859   0.095461251
                         0.000134751  -0.000076997   0.000156600   0.000194027  -0.000122860   0.000169341   0.000110077  -0.004144186

    7    1.1  1.0  0.0  -0.008571767   0.006946163  -0.033703110  -0.008677051   0.002123508  -0.012883692   0.001155043   0.000002757
                        -0.285881572   0.038021147   0.060226228   0.000386059   0.056741677   0.002009771   0.038522564  -0.000000083

    8    2.1  1.0  0.0   0.014824862  -0.007304525   0.027424564   0.003572313   0.002912385   0.018013047  -0.001997649   0.000001684
                         0.494431897  -0.039982715  -0.049006696  -0.000158939   0.077821044  -0.002809916  -0.066624836  -0.000000051

    9    3.1  1.0  0.0  -0.000895146   0.001528402  -0.002680928   0.094096272   0.000106013  -0.002097244   0.000120620   0.000001459
                        -0.029854508   0.008366001   0.004790721  -0.004186533   0.002832732   0.000327156   0.004022880  -0.000000044

   10    4.1  1.0  0.0   0.000132471   0.000465923  -0.001924945  -0.000155794  -0.000067439  -0.001044130   0.000108211   0.000000030
                         0.004418124   0.002550319   0.003439806   0.000006932  -0.001802016   0.000162877   0.003608998  -0.000000001

   11    5.1  1.0  0.0  -0.000001062  -0.000050175   0.000032289  -0.004454564  -0.000006032   0.000051595  -0.000000868   0.000022339
                        -0.000035428  -0.000274643  -0.000057699   0.000198193  -0.000161185  -0.000008049  -0.000028939  -0.000000675

   12    6.1  1.0  0.0  -0.000000908   0.000108640  -0.000716133  -0.000211580   0.000156104  -0.000094257  -0.000000741  -0.000051057
                        -0.000030275   0.000594663   0.001279704   0.000009414   0.004171224   0.000014703  -0.000024728   0.000001543

   13    1.1  1.0 -1.0   0.349778022   0.057854200  -0.010083848  -0.033367223  -0.039251151  -0.054155532  -0.047133183   0.005238773
                        -0.020994102  -0.021868914  -0.016431836   0.002975039   0.002942001   0.017317207   0.002828983  -0.000316963

   14    2.1  1.0 -1.0   0.202968156   0.043716754   0.013853353   0.058017782   0.049444933  -0.031373551  -0.027350341   0.003038898
                         0.012246085  -0.012071069   0.007126568   0.002975341   0.001897098   0.015796856  -0.001650174   0.000184926

   15    3.1  1.0 -1.0   0.012028528  -0.018494023  -0.040389379  -0.001208149  -0.000785045   0.007268037  -0.001620849   0.000181774
                         0.403851725  -0.033847803   0.052532504  -0.000132892  -0.018216291   0.064851459  -0.054419330   0.006052572

   16    4.1  1.0 -1.0  -0.000020991  -0.000433915  -0.000888205  -0.003157359  -0.002948531  -0.000002875  -0.000017149  -0.000657127
                         0.000025420  -0.000102320  -0.000572254  -0.000050163  -0.000044913  -0.000093021   0.000020765   0.000815425

   17    5.1  1.0 -1.0   0.000052749   0.000896980   0.001867189  -0.000082506  -0.000098829  -0.000380554   0.000043089   0.001638152
                         0.003125029   0.001579160  -0.002512712   0.000006471   0.000860461  -0.003053393   0.002552797   0.095629219

   18    6.1  1.0 -1.0  -0.003125081   0.003387622  -0.000102564   0.000030329  -0.000413834  -0.002948696  -0.002552871  -0.095537284
                         0.000052578  -0.001198208  -0.000466532   0.000192093   0.000154223   0.001120686   0.000042951   0.001628559

   19    1.1  0.0  0.0  -0.000000030   0.000174071  -0.000075165   0.044045912   0.002840818   0.000048988  -0.000000003  -0.000000000
                         0.000000001  -0.000031801  -0.000042063   0.989973346  -0.000106315   0.000314038   0.000000000  -0.000000002

   20    2.1  0.0  0.0   0.000000319   0.001232409   0.864752586   0.000003390   0.003531745  -0.000238111   0.000000007  -0.000000002
                        -0.000000010  -0.000225151   0.483922907   0.000076190  -0.000132173  -0.001526414  -0.000000000  -0.000000079

   21    3.1  0.0  0.0   0.000000095  -0.000913655  -0.003070869  -0.000126484   0.990213636   0.001359789   0.000000014   0.000000001
                        -0.000000003   0.000166918  -0.001718485  -0.002842838  -0.037057886   0.008716962  -0.000000000   0.000000043

   22    4.1  0.0  0.0   0.000000065   0.974819892  -0.001097851  -0.000007971   0.000934245  -0.000191964  -0.000000053  -0.000000003
                        -0.000000002  -0.178091876  -0.000614367  -0.000179161  -0.000034963  -0.001230594   0.000000002  -0.000000114

   23    5.1  0.0  0.0   0.000000037   0.001235288   0.001374205  -0.000013006  -0.008810385   0.152729206  -0.000000010   0.000000020
                        -0.000000001  -0.000225677   0.000769017  -0.000292332   0.000329721   0.979074784   0.000000000   0.000000649

   24    6.1  0.0  0.0   0.133432167   0.000000121  -0.000000018   0.000000000  -0.000000040   0.000000004   0.990578398  -0.000000000
                        -0.004000780  -0.000000022  -0.000000010   0.000000008   0.000000001   0.000000023  -0.029701049  -0.000000004

   25    1.1  2.0  2.0   0.000000017   0.000032771  -0.000242604   0.000074518  -0.000077799  -0.000119430  -0.000000003   0.000002750
                         0.000000571  -0.001339598   0.000839180  -0.000003939  -0.000099571  -0.001534760  -0.000000095   0.000087437

   26    2.1  2.0  2.0  -0.000000007   0.000098420   0.000234235  -0.000780775   0.000729304   0.000010663   0.000000001  -0.000071029
                         0.000000009  -0.000066039   0.000119092   0.000085299  -0.000070475   0.000016476  -0.000000001  -0.000142705

   27    3.1  2.0  2.0   0.000000004  -0.000066050   0.000119113   0.000085313  -0.000070487   0.000016481  -0.000000001  -0.000142668
                         0.000000005  -0.000098436  -0.000234278   0.000780914  -0.000729434  -0.000010663  -0.000000001   0.000071040

   28    1.1  2.0  1.0   0.000000002   0.000098658   0.000233817  -0.000781208   0.000729579   0.000010605  -0.000000001   0.000069438
                         0.000000001  -0.000065694   0.000119930   0.000082520  -0.000067880   0.000016516   0.000000000   0.000141898

   29    2.1  2.0  1.0  -0.000000132  -0.000106510   0.000380749   0.000068623  -0.000018976   0.000218374   0.000000038  -0.012843772
                        -0.000004062  -0.001342958  -0.000487994  -0.000003345   0.000432861  -0.000812574   0.000001151  -0.380006239

   30    3.1  2.0  1.0  -0.000003962  -0.000001647  -0.001327674   0.000000335   0.000532933   0.000724831   0.000001214  -0.380136675
                         0.000000129   0.000144138  -0.000626791   0.000006011  -0.000058583  -0.000332535  -0.000000040   0.012847304

   31    1.1  2.0  0.0  -0.000000017   0.000000014   0.000000008  -0.000000000  -0.000000006  -0.000000013   0.000000003   0.018740525
                         0.000000001  -0.000000003   0.000000005  -0.000000002   0.000000000  -0.000000081  -0.000000000   0.620053902

   32    2.1  2.0  0.0  -0.000000007   0.000262947   0.000561924   0.000004895   0.001792784   0.000006794   0.000000000   0.000003529
                         0.000000000  -0.000048038   0.000314457   0.000110011  -0.000067093   0.000043555  -0.000000000   0.000116760

   33    3.1  2.0  0.0   0.000000018   0.000112177   0.000018376  -0.000085474   0.000092954   0.000002974  -0.000000004   0.000001576
                        -0.000000001  -0.000020494   0.000010284  -0.001921117  -0.000003479   0.000019063   0.000000000   0.000052155

   34    1.1  2.0 -1.0  -0.000000002  -0.000115513  -0.000224514  -0.000785449  -0.000732612   0.000005071   0.000000001   0.000060741
                         0.000000001  -0.000026567  -0.000136555  -0.000012816  -0.000013159  -0.000018961   0.000000000  -0.000145832

   35    2.1  2.0 -1.0  -0.000000112  -0.000375217   0.000216773   0.000068649   0.000051276   0.000455488   0.000000031   0.010129345
                        -0.000004062  -0.001293868  -0.000579757  -0.000002762   0.000430232   0.000707456   0.000001152   0.380088280

   36    3.1  2.0 -1.0   0.000003962   0.000052505   0.001228647  -0.000000200  -0.000535821   0.000791675  -0.000001214  -0.380218691
                        -0.000000109   0.000134245   0.000803748  -0.000006017  -0.000018586   0.000095970   0.000000033   0.010133696

   37    1.1  2.0 -2.0  -0.000000017   0.000504313   0.000588347  -0.000074573  -0.000070139  -0.000353694   0.000000003   0.000002536
                        -0.000000571   0.001241477  -0.000645699   0.000002695   0.000105107  -0.001498216   0.000000095   0.000087444

   38    2.1  2.0 -2.0  -0.000000007   0.000115413   0.000224018   0.000785265   0.000732531  -0.000005138   0.000000001   0.000062281
                        -0.000000008   0.000026974   0.000137350   0.000015623   0.000015768   0.000018941   0.000000001  -0.000146734

   39    3.1  2.0 -2.0   0.000000004  -0.000026978  -0.000137376  -0.000015625  -0.000015769  -0.000018945  -0.000000000   0.000146698
                        -0.000000005   0.000115432   0.000224058   0.000785405   0.000732662  -0.000005137   0.000000001   0.000062295


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.0  1.0  -0.003007544  -0.003009829  -0.007549473   0.007519817   0.004343152   0.004347722   0.004290704   0.000007072
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.0  1.0   0.005203640   0.005205475  -0.004342486   0.004325196  -0.007529787  -0.007528762   0.002458573   0.000004078
                         0.000000014  -0.000004643  -0.000547848   0.000550269  -0.000047413   0.000002234  -0.000355186   0.000000419

    3    3.1  1.0  1.0  -0.000314127  -0.000316604   0.000271250  -0.000274368   0.000478129   0.000503064  -0.000182259  -0.000000165
                        -0.000001046   0.000000227  -0.008626252   0.008660829   0.000002345  -0.000004625  -0.005059817   0.000006891

    4    4.1  1.0  1.0   0.094302466   0.094312544   0.001136671  -0.001132407  -0.144667540  -0.144627667  -0.000764326   0.000004450
                         0.000000860  -0.000062873  -0.001499457   0.001508932  -0.000680850   0.000035447  -0.001367460  -0.000003141

    5    5.1  1.0  1.0  -0.000755412  -0.000792184   0.006410960  -0.006455660   0.001557328   0.001973129  -0.004141122   0.000015945
                        -0.000016424   0.000001424  -0.144094113   0.144673180   0.000014231  -0.000076356  -0.085039757  -0.000415381

    6    6.1  1.0  1.0  -0.000662615  -0.000645359   0.145269804  -0.144695288   0.001139446   0.001058467  -0.082930254   0.000644958
                        -0.000000057   0.000037036   0.006446005  -0.006473759   0.000400933  -0.000020142   0.004090337   0.000023667

    7    1.1  1.0  0.0  -0.000227736  -0.000001350   0.000001495  -0.000029372   0.000086631  -0.000389155   0.000253271   0.000000012
                        -0.000000114  -0.007468669  -0.000044811  -0.000000987  -0.010596796  -0.000001244   0.007068746   0.000000000

    8    2.1  1.0  0.0   0.000388934  -0.000000781  -0.000003020  -0.000015978   0.000049985   0.000593713  -0.000438862  -0.000000047
                         0.000000194  -0.004318508   0.000090485  -0.000000537  -0.006114208   0.000001898  -0.012248557  -0.000000002

    9    3.1  1.0  0.0   0.008620324  -0.000000000  -0.000000927   0.000006386   0.000000330   0.012213492   0.000028669   0.000000041
                         0.000004303  -0.000002472   0.000027781   0.000000215  -0.000040405   0.000039039   0.000800145   0.000000002

   10    4.1  1.0  0.0   0.001080176   0.000000171  -0.000058969   0.000013440  -0.000013398   0.002795700  -0.008430376   0.000002186
                         0.000000539   0.000945048   0.001767093   0.000000452   0.001638827   0.000008936  -0.235290359   0.000000088

   11    5.1  1.0  0.0   0.135914659   0.000000310  -0.000017925   0.000115016  -0.000016132   0.204737716   0.000104149  -0.000004007
                         0.000067851   0.001713278   0.000537143   0.000003867   0.001973219   0.000654415   0.002906773  -0.000000161

   12    6.1  1.0  0.0  -0.001721783   0.000024556   0.000004286   0.000558046  -0.001673397  -0.001996080   0.000064232  -0.000001083
                        -0.000000860   0.135835772  -0.000128428   0.000018762   0.204692722  -0.000006380   0.001792703  -0.000000043

   13    1.1  1.0 -1.0   0.003007542  -0.003009828  -0.007532680  -0.007502834   0.004342571  -0.004347633   0.004279701  -0.000007050
                         0.000003003   0.000001088  -0.000503301  -0.000505063   0.000071007  -0.000027793  -0.000307075  -0.000000566

   14    2.1  1.0 -1.0  -0.005203637   0.005205476  -0.004369350  -0.004352386  -0.007529556   0.007528594   0.002477688  -0.000004098
                        -0.000005182   0.000002761   0.000257128   0.000258528  -0.000075700   0.000050363   0.000178322   0.000000091

   15    3.1  1.0 -1.0   0.000314128  -0.000316604  -0.000304440  -0.000307949   0.000478103  -0.000503024   0.000180327  -0.000000387
                        -0.000000733  -0.000000112   0.008625148   0.008659697   0.000005473  -0.000007841   0.005059886   0.000006882

   16    4.1  1.0 -1.0  -0.094302420   0.094312561   0.001034178   0.001028503  -0.144659336   0.144624485  -0.000664500  -0.000004184
                        -0.000093295   0.000028774   0.001571900   0.001581582  -0.001684445   0.000960000   0.001418654  -0.000003488

   17    5.1  1.0 -1.0   0.000755428  -0.000792184  -0.003209629  -0.003275782   0.001557352  -0.001972600   0.001955576   0.000017358
                        -0.000015670  -0.000001137   0.144200996   0.144780037   0.000011232  -0.000088968   0.085118064  -0.000415325

   18    6.1  1.0 -1.0   0.000662614  -0.000645372   0.145376407   0.144803310   0.001145848  -0.001058317  -0.083010336  -0.000644783
                         0.000000605  -0.000036802   0.003253042   0.003259209  -0.000382250  -0.000026908   0.001855260  -0.000028038

   19    1.1  0.0  0.0  -0.000000006  -0.000000781  -0.000108028  -0.000000102  -0.000127810  -0.000006794   0.000035592   0.000000001
                         0.000012868   0.000000000  -0.000003605   0.000003032  -0.000001045   0.002125538  -0.000001275  -0.000000016

   20    2.1  0.0  0.0   0.000000000  -0.000004180   0.001139938   0.000008992  -0.000721008   0.000000040   0.001628451  -0.000000029
                        -0.000000141   0.000000001   0.000038040  -0.000267469  -0.000005894  -0.000012371  -0.000058347   0.000000726

   21    3.1  0.0  0.0   0.000000000  -0.000011493  -0.000135731  -0.000004209  -0.001979945   0.000000362  -0.000760719   0.000000014
                        -0.000000705   0.000000002  -0.000004529   0.000125184  -0.000016186  -0.000113382   0.000027256  -0.000000341

   22    4.1  0.0  0.0   0.000000000  -0.000001721  -0.001786170   0.000012613  -0.000299396   0.000000402   0.001053101  -0.000000046
                        -0.000000768   0.000000000  -0.000059606  -0.000375162  -0.000002448  -0.000125902  -0.000037732   0.000001146

   23    5.1  0.0  0.0   0.000000000  -0.000000185  -0.000167377  -0.000069879  -0.000027389   0.000000066   0.000445409   0.000000237
                        -0.000000126   0.000000000  -0.000005585   0.002078479  -0.000000224  -0.000020588  -0.000015959  -0.000005924

   24    6.1  0.0  0.0  -0.000000000   0.000000004  -0.000000487   0.000000000   0.000000006   0.000000000  -0.000011144  -0.000000001
                         0.000000002  -0.000000000  -0.000000016  -0.000000001   0.000000000  -0.000000051   0.000000399   0.000000019

   25    1.1  2.0  2.0   0.000001250   0.000001219   0.017256046  -0.017393827   0.001509008   0.001508326  -0.000166893  -0.009468500
                         0.000000297   0.000000315  -0.551675396   0.551685307  -0.000285973  -0.000293754  -0.003929940   0.392666013

   26    2.1  2.0  2.0  -0.378995180  -0.379064822  -0.000169452   0.000168182   0.278001871   0.278107950   0.000316816   0.001403587
                         0.001348477   0.001606449   0.000745279  -0.000754413   0.000320780  -0.001061740   0.001368862   0.000440624

   27    3.1  2.0  2.0   0.001348673   0.001606598   0.000743892  -0.000753021   0.000319727  -0.001062109   0.001368165  -0.000561492
                         0.378925767   0.378995397   0.000170665  -0.000169395  -0.277864363  -0.277970472  -0.000316681   0.000722521

   28    1.1  2.0  1.0   0.381211962   0.381180294  -0.000169676   0.000168344   0.274063088   0.273938959   0.000310100   0.001363242
                         0.000004635  -0.000254519   0.000734686  -0.000744364   0.001295190  -0.000068832   0.001353562  -0.000236926

   29    2.1  2.0  1.0  -0.000001835   0.000145023   0.009741590  -0.009729632   0.000757759  -0.001614388   0.018766153   0.014068042
                         0.000065857  -0.000001524  -0.280003262   0.276681924  -0.000587242  -0.000143807   0.476222328  -0.479848326

   30    3.1  2.0  1.0   0.000065544  -0.000001887   0.273235890  -0.276565839  -0.000307031   0.000144159   0.480056779   0.302573463
                         0.000002759  -0.000144136   0.009540012  -0.009690166   0.000756382   0.003127326  -0.018915846   0.007593498

   31    1.1  2.0  0.0   0.000000053  -0.000235833   0.000000273   0.000005585   0.000001838  -0.000000008   0.000000066   0.008712942
                        -0.000106972   0.000000043   0.000000009  -0.000166129   0.000000015   0.000002569  -0.000000002  -0.217338577

   32    2.1  2.0  0.0  -0.000000483   0.313595912  -0.000365433   0.000062014   0.675772873  -0.000000264   0.000628209  -0.000014002
                         0.000967428  -0.000056692  -0.000012195  -0.001844558   0.005524556   0.000083226  -0.000022509   0.000348943

   33    3.1  2.0  0.0  -0.000156670  -0.000966579  -0.001821358  -0.000012142  -0.000080532  -0.002159783  -0.003360677   0.000066168
                         0.313832171   0.000000175  -0.000060780   0.000361156  -0.000000660   0.675701762   0.000120412  -0.001650561

   34    1.1  2.0 -1.0   0.381211776  -0.381180361   0.000120319   0.000117969  -0.274047634   0.273932920  -0.000212434   0.001339880
                         0.000375980  -0.000116699   0.000744363   0.000753989  -0.003185707   0.001820026   0.001372284   0.000345289

   35    2.1  2.0 -1.0  -0.000001769  -0.000145023   0.008947071   0.008875469  -0.000748057  -0.001615275   0.015363991  -0.024388896
                        -0.000065859  -0.000001472  -0.280029875  -0.276710540  -0.000599552   0.000133484   0.476344226   0.479434694

   36    3.1  2.0 -1.0   0.000065547   0.000001834  -0.273264120  -0.276592070   0.000294624   0.000164148  -0.480179558   0.302210445
                        -0.000002693  -0.000144137  -0.008697039  -0.008907050   0.000761301  -0.003126341   0.015489103   0.016651835

   37    1.1  2.0 -2.0  -0.000001250   0.000001219  -0.019560908  -0.019698972   0.001504131  -0.001506417   0.000114791  -0.021994746
                         0.000000296  -0.000000315   0.551598678   0.551607610   0.000310606  -0.000303391   0.003931807   0.392163969

   38    2.1  2.0 -2.0   0.378993645  -0.379065378  -0.000119390  -0.000117132   0.277969960  -0.278095479   0.000218037  -0.001434336
                         0.001726877  -0.001469394  -0.000754918  -0.000764005   0.004224383  -0.002839565  -0.001388025   0.000326856

   39    3.1  2.0 -2.0  -0.001727004   0.001469568   0.000753615   0.000762698  -0.004223187   0.002839054   0.001387320   0.000501853
                         0.378924232  -0.378995953  -0.000120692  -0.000118436   0.277832453  -0.277958001   0.000217953   0.000765142


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.0  1.0   0.000007038  -0.000000821   0.000000389   0.000002196  -0.000000464  -0.000001874   0.000298023  -0.000352712
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.0  1.0   0.000004045   0.000001511  -0.000000635  -0.000003805  -0.000000106   0.000003268   0.000171458   0.000610123
                         0.000000469  -0.000000005  -0.000000010   0.000000005   0.000000260  -0.000000016  -0.000023681   0.000000237

    3    3.1  1.0  1.0  -0.000000221  -0.000000092   0.000000028   0.000000183   0.000001785  -0.000000193  -0.000011985  -0.000039366
                         0.000007774   0.000000035   0.000000014   0.000000004   0.000005320  -0.000000087  -0.000345696  -0.000000013

    4    4.1  1.0  1.0   0.000003467   0.000093427   0.000174524   0.000096980  -0.000004291  -0.000019999   0.002031984  -0.485804021
                        -0.000004691  -0.000001614   0.000001639  -0.000000330  -0.000003719   0.000000936   0.003770336  -0.000126499

    5    5.1  1.0  1.0   0.000024677  -0.000000885  -0.000001253   0.000003782  -0.000228592   0.000000601   0.012880957   0.005789117
                        -0.000610615  -0.000002813  -0.000000783  -0.000000238  -0.000669155   0.000010916   0.271194235  -0.000007818

    6    6.1  1.0  1.0   0.000507765   0.000002312   0.000000542  -0.000000891  -0.000327370   0.000005956   0.268849011   0.003335782
                         0.000021368   0.000000518  -0.000000001  -0.000002656   0.000116920   0.000000130  -0.012807811   0.000015555

    7    1.1  1.0  0.0  -0.000000073   0.000000023   0.000000261   0.000000036   0.000000024   0.000000222   0.000019640   0.000031364
                         0.000001679   0.000008003   0.000000004  -0.000003828  -0.000000008   0.000000002   0.000570837   0.000000265

    8    2.1  1.0  0.0   0.000000131   0.000000013  -0.000000348   0.000000021  -0.000000019  -0.000000311  -0.000033972  -0.000039968
                        -0.000003029   0.000004601  -0.000000006  -0.000002215   0.000000006  -0.000000003  -0.000987392  -0.000000338

    9    3.1  1.0  0.0  -0.000000007   0.000000000  -0.000008357   0.000000000  -0.000000121  -0.000007464   0.000002158  -0.000886155
                         0.000000157   0.000000068  -0.000000135  -0.000000023   0.000000040  -0.000000078   0.000062728  -0.000007488

   10    4.1  1.0  0.0  -0.000006838   0.000000024   0.000007346   0.000000026   0.000000961   0.000005492   0.027158000   0.008063478
                         0.000158177   0.000008378   0.000000118  -0.000002811  -0.000000318   0.000000057   0.789338912   0.000068139

   11    5.1  1.0  0.0   0.000000013   0.000000013   0.000935069   0.000000029   0.000011565   0.000731553  -0.000297716   0.666323593
                        -0.000000303   0.000004618   0.000015056  -0.000003094  -0.000003832   0.000007613  -0.008653032   0.005630631

   12    6.1  1.0  0.0   0.000000314   0.000002858  -0.000005801   0.000003604   0.000002503  -0.000006103  -0.000186576  -0.003310420
                        -0.000007254   0.000982017  -0.000000093  -0.000386372  -0.000000829  -0.000000063  -0.005422760  -0.000027970

   13    1.1  1.0 -1.0   0.000007012  -0.000000821  -0.000000389   0.000002196   0.000000372   0.000001874   0.000297318   0.000352662
                         0.000000607   0.000000005  -0.000000013   0.000000041  -0.000000277   0.000000039  -0.000020483   0.000005961

   14    2.1  1.0 -1.0   0.000004070   0.000001511   0.000000635  -0.000003804   0.000000240  -0.000003267   0.000172680  -0.000610040
                        -0.000000119  -0.000000004   0.000000010  -0.000000076   0.000000146  -0.000000084   0.000011840  -0.000010074

   15    3.1  1.0 -1.0   0.000000451  -0.000000092  -0.000000028   0.000000183   0.000001744   0.000000195   0.000011803   0.000039361
                        -0.000007764  -0.000000035   0.000000014  -0.000000000   0.000005333  -0.000000083   0.000345702   0.000000652

   16    4.1  1.0 -1.0   0.000003049   0.000093435  -0.000174486   0.000096957   0.000001221   0.000019975   0.001768041   0.485736778
                         0.000004973   0.000001070  -0.000003981   0.000002139  -0.000005545   0.000001352  -0.003901080   0.008083307

   17    5.1  1.0 -1.0  -0.000028108  -0.000000868   0.000001277   0.000003777  -0.000216172  -0.000000828  -0.005788860  -0.005788158
                         0.000610466   0.000002818  -0.000000742   0.000000309  -0.000673271   0.000010901  -0.271438245  -0.000105649

   18    6.1  1.0 -1.0   0.000507715   0.000002309  -0.000000541  -0.000000940   0.000332420  -0.000005957   0.269093540  -0.003335568
                         0.000022529  -0.000000532  -0.000000019   0.000002639  -0.000101677   0.000000006  -0.005700644  -0.000040820

   19    1.1  0.0  0.0  -0.000000317  -0.000000195  -0.000000045   0.000000117   0.000000016  -0.000000032  -0.000101425  -0.000046263
                        -0.000000014   0.000000001   0.000002821   0.000000001   0.000000049   0.000003047   0.000003490   0.005474748

   20    2.1  0.0  0.0   0.000003211  -0.000001154   0.000000000   0.000000702   0.000000081   0.000000000  -0.004181989   0.000000268
                         0.000000139   0.000000003  -0.000000026   0.000000007   0.000000246  -0.000000033   0.000143886  -0.000031763

   21    3.1  0.0  0.0  -0.000000284  -0.000003211   0.000000002   0.000001932  -0.000000033   0.000000002   0.001953693   0.000002234
                        -0.000000012   0.000000009  -0.000000136   0.000000018  -0.000000099  -0.000000146  -0.000067219  -0.000264375

   22    4.1  0.0  0.0  -0.000005517  -0.000000513   0.000000003   0.000000288   0.000000118   0.000000002  -0.002734890   0.000002718
                        -0.000000238   0.000000001  -0.000000164   0.000000003   0.000000357  -0.000000189   0.000094097  -0.000321705

   23    5.1  0.0  0.0  -0.000000651  -0.000000055   0.000000001   0.000000042  -0.000000632   0.000000000  -0.001149263   0.000000435
                        -0.000000028   0.000000000  -0.000000042   0.000000000  -0.000001908  -0.000000002   0.000039542  -0.000051442

   24    6.1  0.0  0.0  -0.000001313  -0.000000006   0.000000000  -0.000000002   0.000000003   0.000000000  -0.000105456  -0.000000003
                        -0.000000057   0.000000000  -0.000000001  -0.000000000   0.000000008  -0.000000003   0.000003628   0.000000360

   25    1.1  2.0  2.0  -0.011311624   0.000023342   0.000153934  -0.000321447   0.037306706  -0.000450610  -0.000022912  -0.000331585
                         0.409081144   0.002420408   0.001326007   0.000331261   0.108668541  -0.001814436  -0.000410889   0.000007459

   26    2.1  2.0  2.0   0.002158020  -0.310944081  -0.414897812  -0.412172148   0.003721471   0.307283099   0.000016342  -0.084420960
                         0.000564706   0.004467250  -0.002284728  -0.000280913  -0.003989662   0.000789704   0.000292608   0.000279035

   27    3.1  2.0  2.0  -0.000625485  -0.001084743   0.001405243   0.000349056   0.005496246  -0.000929269   0.000292042   0.000279556
                         0.000823772  -0.072382809  -0.214213597  -0.511399438   0.005919273   0.469922254  -0.000016341   0.084260784

   28    1.1  2.0  1.0   0.002669445  -0.477384249  -0.401821343   0.198180897  -0.004405570  -0.325207181   0.000015903  -0.082116544
                        -0.000112175   0.005065858  -0.003196164   0.000845545   0.002995039  -0.001442553   0.000285258  -0.000019215

   29    2.1  2.0  1.0   0.012287208   0.000084968  -0.000145429  -0.001740925   0.059615759   0.000475812   0.005481560   0.000335174
                        -0.407502988  -0.002412325  -0.001638631  -0.000342157   0.179116637  -0.002954104   0.144422429   0.000004980

   30    3.1  2.0  1.0   0.407580894   0.002413167   0.001007758   0.000317970   0.395809931  -0.006572561   0.144713087   0.000000127
                         0.013162084  -0.000115201  -0.000153333   0.002381050  -0.133146175   0.000410833  -0.005499240  -0.000669797

   31    1.1  2.0  0.0  -0.001066168   0.000245832   0.000012458  -0.005056077   0.233928374   0.000121658   0.000000844   0.000000015
                        -0.000046128  -0.000000736  -0.000773677  -0.000047028   0.706063368  -0.011685544  -0.000000029  -0.000001777

   32    2.1  2.0  0.0  -0.003249036   0.583282876   0.000036317  -0.242005523  -0.000552706   0.000009983   0.000009425  -0.000008013
                        -0.000140451  -0.001697278  -0.002247309  -0.002257198  -0.001668403  -0.000953824  -0.000000324   0.000948171

   33    3.1  2.0  0.0  -0.000265035   0.002409520  -0.007902780  -0.000359860   0.001969587  -0.004132949  -0.000710684   0.001728235
                        -0.000011466  -0.000007118   0.490825083  -0.000003249   0.005944708   0.397124011   0.000024452  -0.204517706

   34    1.1  2.0 -1.0  -0.002649792   0.477405821  -0.401715738  -0.198162366  -0.005322246  -0.325166672   0.000003741  -0.082105141
                        -0.000342118   0.002287543  -0.009741594  -0.002851169   0.000227960  -0.005326017   0.000285676  -0.001368506

   35    2.1  2.0 -1.0   0.022924047  -0.000099008  -0.000198109   0.001747005  -0.059125592   0.000414205   0.004457651   0.000335211
                        -0.407043029  -0.002411758   0.001633078  -0.000309687  -0.179279043   0.002963374   0.144457658   0.000000685

   36    3.1  2.0 -1.0  -0.407196206  -0.002413798   0.001002277  -0.000362177   0.397009454  -0.006562579  -0.144748843  -0.000011192
                        -0.022059161  -0.000101153   0.000185697   0.002374707  -0.129525646  -0.000547582   0.004459990   0.000669704

   37    1.1  2.0 -2.0   0.024032179   0.000009253  -0.000196544  -0.000315213   0.034957849   0.000488288   0.000005383   0.000331411
                        -0.408531142  -0.002420488   0.001320342  -0.000337155   0.109446742  -0.001804657   0.000411492   0.000013062

   38    2.1  2.0 -2.0   0.002198674  -0.310964997   0.414756183  -0.412105816  -0.005367310  -0.307232776  -0.000003808   0.084404188
                        -0.000376372  -0.002657580   0.011073535  -0.007407175  -0.000978388  -0.005605678  -0.000293039   0.001705658

   39    3.1  2.0 -2.0  -0.000552065  -0.000663482   0.005491803  -0.009189880  -0.000874655  -0.008851012   0.000292474  -0.001703471
                        -0.000874656   0.072387993  -0.214147788   0.511317201   0.008029848   0.469839562  -0.000003770   0.084244026


   Nr   State  S   Sz       33            34            35            36            37            38            39

    1    1.1  1.0  1.0  -0.000350895   0.000581198  -0.000579949  -0.002396815   0.001425410   0.001424509   0.002488311
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.0  1.0   0.000606937   0.000334692  -0.000333969  -0.001381031  -0.002464842  -0.002463413   0.001433634
                         0.000002616   0.000041761  -0.000041848   0.000167037   0.000000853   0.000000162  -0.000173734

    3    3.1  1.0  1.0  -0.000037989  -0.000020751   0.000020786   0.000083573   0.000149247   0.000148813  -0.000086886
                        -0.000000107   0.000664943  -0.000666382   0.002764572  -0.000000256  -0.000000159  -0.002868981

    4    4.1  1.0  1.0  -0.485223029   0.003505621  -0.003500111  -0.002925602   0.484408168   0.483831110   0.003509232
                        -0.001577463  -0.004641714   0.004651154  -0.003198310  -0.000126649  -0.000024852   0.003862934

    5    5.1  1.0  1.0   0.004848784   0.021076081  -0.021088172  -0.017771237  -0.003954076  -0.003886921   0.021180381
                         0.000016414  -0.477086416   0.477825387  -0.412041446   0.000036293   0.000027699   0.490521413

    6    6.1  1.0  1.0   0.003339373   0.479043887  -0.478304873  -0.411356756  -0.003289745  -0.003293399   0.490080186
                         0.000962922   0.021129657  -0.021174179   0.017781650   0.000074435   0.000011210  -0.021199894

    7    1.1  1.0  0.0  -0.000008858   0.000000013   0.000001580   0.000057875  -0.000000326   0.000107324  -0.000000622
                         0.000772029  -0.000000603   0.000000033   0.001930860   0.003532086   0.000000033   0.000000019

    8    2.1  1.0  0.0  -0.000005126  -0.000000020   0.000000859  -0.000100076  -0.000000188  -0.000184324  -0.000000099
                         0.000446772   0.000000976   0.000000018  -0.003338819   0.002042612  -0.000000056   0.000000003

    9    3.1  1.0  0.0  -0.000000082   0.000000038  -0.000000031   0.000006046  -0.000000000  -0.004077833   0.000000208
                         0.000007104  -0.000001841  -0.000000001   0.000201716   0.000000633  -0.000001239  -0.000000006

   10    4.1  1.0  0.0  -0.000053069  -0.000032032   0.000066485   0.016962559  -0.000000448   0.005605353  -0.000032939
                         0.004625058   0.001543908   0.000001384   0.565916753   0.004850128   0.000001703   0.000000989

   11    5.1  1.0  0.0  -0.000037553  -0.000027217   0.000054976  -0.000136562  -0.000000826   0.703814715  -0.000040756
                         0.003272497   0.001311835   0.000001144  -0.004556070   0.008956651   0.000213805   0.000001224

   12    6.1  1.0  0.0  -0.007655430   0.000001384   0.001332401  -0.000114671  -0.000064872  -0.009005460  -0.000098038
                         0.667189566  -0.000066750   0.000027722  -0.003825744   0.703041143  -0.000002736   0.000002944

   13    1.1  1.0 -1.0  -0.000350802   0.000580698   0.000579447  -0.002392512   0.001425410  -0.001424508  -0.002483826
                        -0.000008051   0.000024106   0.000024123   0.000143553   0.000000263  -0.000000865   0.000149333

   14    2.1  1.0 -1.0   0.000606838   0.000336136   0.000335420  -0.001388556  -0.002464842   0.002463412  -0.001441476
                         0.000011311  -0.000027844  -0.000027920  -0.000084023  -0.000001308   0.000001659  -0.000087383

   15    3.1  1.0 -1.0  -0.000037981   0.000006846   0.000006949  -0.000082157   0.000149247  -0.000148813  -0.000085448
                        -0.000000764  -0.000665231  -0.000666671  -0.002764615   0.000000284  -0.000000250  -0.002869024

   16    4.1  1.0 -1.0  -0.485131481   0.003310081   0.003303621  -0.002728792   0.484408136  -0.483831006  -0.003271078
                        -0.009556526   0.004783117   0.004792718   0.003367792   0.000216045  -0.000318809   0.004066573

   17    5.1  1.0 -1.0   0.004847884   0.001270161   0.001194951   0.006939221  -0.003954069   0.003886903   0.008295766
                         0.000094847   0.477549753   0.478289299   0.412366121  -0.000037023   0.000030061   0.490908388

   18    6.1  1.0 -1.0   0.003360588   0.479507761   0.478771949  -0.411683283  -0.003289731   0.003293391  -0.490469127
                        -0.000886046  -0.001242502  -0.001260939   0.006887818  -0.000075042   0.000013211   0.008249808

   19    1.1  0.0  0.0  -0.000302881  -0.000273695  -0.000000172   0.000001505  -0.000004568  -0.000000024  -0.000000001
                        -0.000003475  -0.000005678   0.000008261  -0.000000045  -0.000000000   0.000078784  -0.000000034

   20    2.1  0.0  0.0  -0.001854054   0.002944768   0.000015110   0.000060774  -0.000024548   0.000000000  -0.000000010
                        -0.000021274   0.000061096  -0.000726178  -0.000001822  -0.000000002  -0.000000916  -0.000000320

   21    3.1  0.0  0.0  -0.005101570  -0.000357497  -0.000006721  -0.000027721  -0.000067480   0.000000001   0.000000005
                        -0.000058536  -0.000007417   0.000323046   0.000000831  -0.000000006  -0.000004285   0.000000171

   22    4.1  0.0  0.0  -0.000767129  -0.004597209   0.000018923   0.000035296  -0.000010074   0.000000001  -0.000000013
                        -0.000008802  -0.000095378  -0.000909545  -0.000001058  -0.000000001  -0.000004725  -0.000000443

   23    5.1  0.0  0.0  -0.000073492  -0.000359492  -0.000111425   0.000015868  -0.000001087   0.000000000   0.000000074
                        -0.000000843  -0.000007460   0.005355356  -0.000000476  -0.000000000  -0.000000750   0.000002450

   24    6.1  0.0  0.0  -0.000000008   0.000005152   0.000000001  -0.007216403   0.000000535  -0.000000000  -0.000000011
                        -0.000000000   0.000000107  -0.000000052   0.000216302   0.000000000   0.000000208  -0.000000376

   25    1.1  2.0  2.0  -0.000331902  -0.005161112   0.005170955   0.000002871  -0.000001311  -0.000001308  -0.000001777
                         0.000006602   0.166533787  -0.166533901   0.000090797  -0.000001205  -0.000001180  -0.000054565

   26    2.1  2.0  2.0  -0.084331981   0.000007955  -0.000007859   0.000005038   0.072500695   0.072404250  -0.000002344
                         0.000025203  -0.000167756   0.000168446  -0.000002625  -0.000277432  -0.000261777   0.000011429

   27    3.1  2.0  2.0   0.000026203  -0.000166260   0.000166947  -0.000002607  -0.000277846  -0.000262223   0.000011391
                         0.084172001  -0.000009477   0.000009380  -0.000004984  -0.072347589  -0.072251331   0.000002287

   28    1.1  2.0  1.0  -0.082225703   0.000007865  -0.000007787  -0.000005549  -0.074638462  -0.074695107   0.000004293
                        -0.000269673  -0.000163173   0.000164245   0.000001687   0.000019670   0.000003939  -0.000010664

   29    2.1  2.0  1.0  -0.000167411  -0.002916365   0.002926664  -0.000092140  -0.000011015   0.000001318   0.002496464
                         0.000006920   0.084544065  -0.084218897  -0.002611212   0.000000427   0.000003040   0.074286912

   30    3.1  2.0  1.0   0.000002986  -0.083894752   0.084219803  -0.002916475   0.000001761   0.000004288   0.074445083
                        -0.000167971  -0.002905121   0.002904782   0.000100356   0.000010438  -0.000001888  -0.002500709

   31    1.1  2.0  0.0  -0.000000085   0.000000867  -0.000001749   0.000006461   0.000017289   0.000000002  -0.003601252
                        -0.000000001   0.000000018   0.000084068  -0.000000194   0.000000002  -0.000006351  -0.119906313

   32    2.1  2.0  0.0  -0.204582165   0.000014616  -0.000008494  -0.000004670  -0.064169948   0.000000063  -0.000000227
                        -0.002347406   0.000000303   0.000408231   0.000000140  -0.000005921  -0.000206887  -0.000007546

   33    3.1  2.0  0.0  -0.000947484   0.000405968   0.000000300  -0.000001011   0.000205159   0.000019636   0.000000153
                        -0.000010870   0.000008423  -0.000014395   0.000000030   0.000000019  -0.064637983   0.000005078

   34    1.1  2.0 -1.0   0.082210244  -0.000001091  -0.000000948   0.000005640   0.074638457  -0.074695091   0.000004925
                         0.001617089  -0.000163359  -0.000164427   0.000001352   0.000033444  -0.000049321   0.000010387

   35    2.1  2.0 -1.0   0.000167209  -0.000592720  -0.000578923  -0.000064419   0.000011015   0.000001320  -0.001966263
                         0.000010759   0.084592224   0.084267795  -0.002612043   0.000000429  -0.000003039  -0.074302836

   36    3.1  2.0 -1.0   0.000000869   0.083943003   0.084267790   0.002917250  -0.000001763   0.000004287   0.074460977
                        -0.000167995   0.000577023   0.000600824  -0.000074501   0.000010437   0.000001890  -0.001971518

   37    1.1  2.0 -2.0  -0.000331663   0.001750534   0.001760438  -0.000002572  -0.000001311   0.000001309  -0.000001501
                        -0.000014216  -0.166604448  -0.166604960  -0.000090806   0.000001204  -0.000001180  -0.000054574

   38    2.1  2.0 -2.0  -0.084309201   0.000000990   0.000000846   0.000005186   0.072500643  -0.072404078   0.000003025
                        -0.001960216   0.000167942   0.000168627   0.000002318   0.000290812  -0.000305767   0.000011268

   39    3.1  2.0 -2.0   0.001957546  -0.000166509  -0.000167193  -0.000002304  -0.000291198   0.000306120  -0.000011233
                        -0.084149240   0.000002573   0.000002428   0.000005132   0.072347537  -0.072251158   0.000002966


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.0  1.0   4.043%   4.107%   3.919%  22.080%  21.074%  16.616%   6.226%   8.399%  12.279%   0.383%
    2    2.1  1.0  1.0   8.236%  19.745%  17.764%   1.656%   3.752%   8.644%  18.508%  16.525%   4.135%   0.206%
    3    3.1  1.0  1.0   5.478%   1.063%   3.566%  23.676%  23.462%  24.367%   0.400%   0.296%  16.324%   0.149%
    4    4.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    6    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%
    7    1.1  1.0  0.0  32.228%   5.763%  12.709%   2.436%   0.041%   0.237%  37.176%   0.086%   8.180%   0.149%
    8    2.1  1.0  0.0  30.369%   9.209%  20.508%   0.386%   0.844%   0.058%  12.504%   0.065%  24.468%   0.165%
    9    3.1  1.0  0.0   0.062%  33.372%  14.459%   0.525%   0.713%   0.433%   0.031%  49.390%   0.089%   0.007%
   10    4.1  1.0  0.0   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%
   11    5.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   12    6.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0   4.043%   4.107%   3.919%  22.080%  21.074%  16.616%   6.226%   8.399%  12.279%   0.383%
   14    2.1  1.0 -1.0   8.236%  19.745%  17.764%   1.656%   3.752%   8.644%  18.508%  16.525%   4.135%   0.206%
   15    3.1  1.0 -1.0   5.478%   1.063%   3.566%  23.676%  23.462%  24.367%   0.400%   0.296%  16.324%   0.149%
   16    4.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    5.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%
   19    1.1  0.0  0.0   0.008%   1.148%   0.599%   0.010%   0.033%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   1.110%   0.002%   0.014%   0.634%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.005%   0.610%   1.141%   0.041%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.655%   0.009%   0.032%   1.101%   0.000%   0.000%   0.000%   0.000%   0.000%  98.199%
   23    5.1  0.0  0.0   0.020%   0.028%   0.011%   0.012%   1.726%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.782%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.001%   0.009%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    2.1  2.0  2.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%
   27    3.1  2.0  2.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%
   28    1.1  2.0  1.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%
   29    2.1  2.0  1.0   0.007%   0.000%   0.000%   0.002%   0.003%   0.002%   0.000%   0.000%   0.000%   0.000%
   30    3.1  2.0  1.0   0.006%   0.000%   0.001%   0.002%   0.002%   0.003%   0.000%   0.000%   0.000%   0.000%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.001%   0.004%   0.008%   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.010%   0.004%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%
   35    2.1  2.0 -1.0   0.007%   0.000%   0.000%   0.002%   0.003%   0.002%   0.000%   0.000%   0.000%   0.000%
   36    3.1  2.0 -1.0   0.006%   0.000%   0.001%   0.002%   0.002%   0.003%   0.000%   0.000%   0.000%   0.000%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.001%   0.009%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    2.1  2.0 -2.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%
   39    3.1  2.0 -2.0   0.000%   0.002%   0.002%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.0  1.0   0.037%   0.112%   0.155%   0.323%   0.223%   0.003%   0.001%   0.001%   0.006%   0.006%
    2    2.1  1.0  1.0   0.024%   0.337%   0.245%   0.123%   0.075%   0.001%   0.003%   0.003%   0.002%   0.002%
    3    3.1  1.0  1.0   0.439%   0.000%   0.033%   0.426%   0.296%   0.004%   0.000%   0.000%   0.007%   0.008%
    4    4.1  1.0  1.0   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.889%   0.889%   0.000%   0.000%
    5    5.1  1.0  1.0   0.001%   0.000%   0.000%   0.001%   0.001%   0.915%   0.000%   0.000%   2.080%   2.097%
    6    6.1  1.0  1.0   0.000%   0.000%   0.000%   0.001%   0.001%   0.913%   0.000%   0.000%   2.114%   2.098%
    7    1.1  1.0  0.0   0.476%   0.008%   0.322%   0.017%   0.149%   0.000%   0.000%   0.006%   0.000%   0.000%
    8    2.1  1.0  0.0   0.315%   0.001%   0.606%   0.033%   0.444%   0.000%   0.000%   0.002%   0.000%   0.000%
    9    3.1  1.0  0.0   0.003%   0.887%   0.001%   0.000%   0.002%   0.000%   0.007%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   1.847%   0.000%   0.000%   0.000%
   12    6.1  1.0  0.0   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   1.845%   0.000%   0.000%
   13    1.1  1.0 -1.0   0.037%   0.112%   0.155%   0.323%   0.223%   0.003%   0.001%   0.001%   0.006%   0.006%
   14    2.1  1.0 -1.0   0.024%   0.337%   0.245%   0.123%   0.075%   0.001%   0.003%   0.003%   0.002%   0.002%
   15    3.1  1.0 -1.0   0.439%   0.000%   0.033%   0.426%   0.296%   0.004%   0.000%   0.000%   0.007%   0.008%
   16    4.1  1.0 -1.0   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.889%   0.889%   0.000%   0.000%
   17    5.1  1.0 -1.0   0.001%   0.000%   0.000%   0.001%   0.001%   0.915%   0.000%   0.000%   2.080%   2.097%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.000%   0.001%   0.001%   0.913%   0.000%   0.000%   2.114%   2.098%
   19    1.1  0.0  0.0   0.000%  98.199%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0  98.198%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.001%   0.001%  98.190%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.008%  98.191%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%  98.213%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  30.464%  30.466%
   26    2.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.364%  14.369%   0.000%   0.000%
   27    3.1  2.0  2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.359%  14.364%   0.000%   0.000%
   28    1.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.532%  14.530%   0.000%   0.000%
   29    2.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.457%   0.000%   0.000%   7.850%   7.665%
   30    3.1  2.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.467%   0.000%   0.000%   7.475%   7.658%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%  38.482%   0.000%   0.000%   0.000%   0.000%
   32    2.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.834%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.849%   0.000%   0.000%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.532%  14.530%   0.000%   0.000%
   35    2.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.457%   0.000%   0.000%   7.850%   7.665%
   36    3.1  2.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%  14.467%   0.000%   0.000%   7.475%   7.658%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  30.464%  30.466%
   38    2.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.364%  14.369%   0.000%   0.000%
   39    3.1  2.0 -2.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.359%  14.364%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.0  1.0   0.002%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.0  1.0   0.006%   0.006%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.0  1.0   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.0  1.0   2.093%   2.092%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.0  1.0   0.000%   0.000%   0.725%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.0  1.0   0.000%   0.000%   0.689%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    1.1  1.0  0.0   0.011%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    2.1  1.0  0.0   0.004%   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10    4.1  1.0  0.0   0.000%   0.001%   5.543%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    5.1  1.0  0.0   0.000%   4.192%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12    6.1  1.0  0.0   4.190%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13    1.1  1.0 -1.0   0.002%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14    2.1  1.0 -1.0   0.006%   0.006%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    3.1  1.0 -1.0   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16    4.1  1.0 -1.0   2.093%   2.092%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17    5.1  1.0 -1.0   0.000%   0.000%   0.725%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    6.1  1.0 -1.0   0.000%   0.000%   0.689%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    1.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.002%  15.428%  16.748%   0.001%   0.000%   0.000%   1.320%   0.000%
   26    2.1  2.0  2.0   7.729%   7.735%   0.000%   0.000%   0.000%   9.671%  17.215%  16.989%   0.003%   9.442%
   27    3.1  2.0  2.0   7.721%   7.727%   0.000%   0.000%   0.000%   0.524%   4.589%  26.153%   0.007%  22.083%
   28    1.1  2.0  1.0   7.511%   7.504%   0.000%   0.000%   0.001%  22.792%  16.147%   3.928%   0.003%  10.576%
   29    2.1  2.0  1.0   0.000%   0.000%  22.714%  23.045%  16.621%   0.001%   0.000%   0.000%   3.564%   0.001%
   30    3.1  2.0  1.0   0.000%   0.001%  23.081%   9.161%  16.630%   0.001%   0.000%   0.001%  17.439%   0.004%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   4.731%   0.000%   0.000%   0.000%   0.003%  55.325%   0.014%
   32    2.1  2.0  0.0  45.670%   0.000%   0.000%   0.000%   0.001%  34.022%   0.001%   5.857%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%  45.658%   0.001%   0.000%   0.000%   0.001%  24.097%   0.000%   0.004%  15.772%
   34    1.1  2.0 -1.0   7.511%   7.504%   0.000%   0.000%   0.001%  22.792%  16.147%   3.928%   0.003%  10.576%
   35    2.1  2.0 -1.0   0.000%   0.000%  22.714%  23.045%  16.621%   0.001%   0.000%   0.000%   3.564%   0.001%
   36    3.1  2.0 -1.0   0.000%   0.001%  23.081%   9.161%  16.630%   0.001%   0.000%   0.001%  17.439%   0.004%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.002%  15.428%  16.748%   0.001%   0.000%   0.000%   1.320%   0.000%
   38    2.1  2.0 -2.0   7.729%   7.735%   0.000%   0.000%   0.000%   9.671%  17.215%  16.989%   0.003%   9.442%
   39    3.1  2.0 -2.0   7.721%   7.727%   0.000%   0.000%   0.000%   0.524%   4.589%  26.153%   0.007%  22.083%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39

    1    1.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%
    2    2.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%
    3    3.1  1.0  1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%
    4    4.1  1.0  1.0   0.002%  23.601%  23.544%   0.003%   0.003%   0.002%  23.465%  23.409%   0.003%
    5    5.1  1.0  1.0   7.371%   0.003%   0.002%  22.806%  22.876%  17.009%   0.002%   0.002%  24.106%
    6    6.1  1.0  1.0   7.244%   0.001%   0.001%  22.993%  22.922%  16.953%   0.001%   0.001%  24.063%
    7    1.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
    8    2.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    9    3.1  1.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   10    4.1  1.0  0.0  62.379%   0.007%   0.002%   0.000%   0.000%  32.055%   0.002%   0.003%   0.000%
   11    5.1  1.0  0.0   0.007%  44.402%   0.001%   0.000%   0.000%   0.002%   0.008%  49.536%   0.000%
   12    6.1  1.0  0.0   0.003%   0.001%  44.520%   0.000%   0.000%   0.001%  49.427%   0.008%   0.000%
   13    1.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%
   14    2.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%
   15    3.1  1.0 -1.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%
   16    4.1  1.0 -1.0   0.002%  23.601%  23.544%   0.003%   0.003%   0.002%  23.465%  23.409%   0.003%
   17    5.1  1.0 -1.0   7.371%   0.003%   0.002%  22.806%  22.876%  17.009%   0.002%   0.002%  24.106%
   18    6.1  1.0 -1.0   7.244%   0.001%   0.001%  22.993%  22.922%  16.953%   0.001%   0.001%  24.063%
   19    1.1  0.0  0.0   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    2.1  0.0  0.0   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    3.1  0.0  0.0   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    4.1  0.0  0.0   0.001%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    5.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%
   24    6.1  0.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%
   25    1.1  2.0  2.0   0.000%   0.000%   0.000%   2.776%   2.776%   0.000%   0.000%   0.000%   0.000%
   26    2.1  2.0  2.0   0.000%   0.713%   0.711%   0.000%   0.000%   0.000%   0.526%   0.524%   0.000%
   27    3.1  2.0  2.0   0.000%   0.710%   0.708%   0.000%   0.000%   0.000%   0.523%   0.522%   0.000%
   28    1.1  2.0  1.0   0.000%   0.674%   0.676%   0.000%   0.000%   0.000%   0.557%   0.558%   0.000%
   29    2.1  2.0  1.0   2.089%   0.000%   0.000%   0.716%   0.710%   0.001%   0.000%   0.000%   0.552%
   30    3.1  2.0  1.0   2.097%   0.000%   0.000%   0.705%   0.710%   0.001%   0.000%   0.000%   0.555%
   31    1.1  2.0  0.0   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.439%
   32    2.1  2.0  0.0   0.000%   0.000%   4.186%   0.000%   0.000%   0.000%   0.412%   0.000%   0.000%
   33    3.1  2.0  0.0   0.000%   4.183%   0.000%   0.000%   0.000%   0.000%   0.000%   0.418%   0.000%
   34    1.1  2.0 -1.0   0.000%   0.674%   0.676%   0.000%   0.000%   0.000%   0.557%   0.558%   0.000%
   35    2.1  2.0 -1.0   2.089%   0.000%   0.000%   0.716%   0.710%   0.001%   0.000%   0.000%   0.552%
   36    3.1  2.0 -1.0   2.097%   0.000%   0.000%   0.705%   0.710%   0.001%   0.000%   0.000%   0.555%
   37    1.1  2.0 -2.0   0.000%   0.000%   0.000%   2.776%   2.776%   0.000%   0.000%   0.000%   0.000%
   38    2.1  2.0 -2.0   0.000%   0.713%   0.711%   0.000%   0.000%   0.000%   0.526%   0.524%   0.000%
   39    3.1  2.0 -2.0   0.000%   0.710%   0.708%   0.000%   0.000%   0.000%   0.523%   0.522%   0.000%


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
              1      24       47.40       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       8      962.71       700     1000      520     2100     2140     5302     5102     5502   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     42987.98  39407.41      8.39    270.52   1170.24   2122.24      7.13      0.21      1.37
 REAL TIME  *     43482.21 SEC
 DISK USED  *      1010.20 MB (local),       16.68 GB (total)
 SF USED    *         5.30 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2428.639232026015

              CI              CI              CI           MULTI         RHF-SCF
  -2428.57663422  -2428.84857338  -2428.55197060  -2427.75860380  -2427.84300620
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
